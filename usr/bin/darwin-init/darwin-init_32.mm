uint64_t sub_100252110(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2 == 5 && a1 == 5;
  if (a1 != 5 && a2 != 5)
  {
    v3 = a1;
    v4 = 0xE300000000000000;
    v5 = 0xE400000000000000;
    v6 = 1701736302;
    v7 = 0xE000000000000000;
    v8 = 0x746C7561666564;
    if (a1 == 3)
    {
      v8 = 0;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x7665642D6D6572;
    if (a1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v9 = 7169394;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }

    if (a2 <= 1u)
    {
      if (a2)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x7665642D6D6572)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v10 != 7169394)
        {
          goto LABEL_35;
        }
      }
    }

    else if (a2 == 2)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701736302)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 3)
    {
      v12 = 0xE000000000000000;
      if (v10)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x746C7561666564)
      {
        goto LABEL_35;
      }
    }

    if (v11 == v12)
    {
      v2 = 1;
LABEL_36:

      return v2 & 1;
    }

LABEL_35:
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_36;
  }

  return v2 & 1;
}

uint64_t _s10DarwinInit6ConfigV6FinishV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (v9 == 3)
  {
    if (v10 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == 3)
    {
      return 0;
    }

    v11 = 0xE800000000000000;
    v12 = 0x6E776F6474756873;
    if (v9 != 1)
    {
      v12 = 1953069157;
      v11 = 0xE400000000000000;
    }

    v13 = v9 == 0;
    if (*(a1 + 32))
    {
      v14 = v12;
    }

    else
    {
      v14 = 0x746F6F626572;
    }

    if (v13)
    {
      v15 = 0xE600000000000000;
    }

    else
    {
      v15 = v11;
    }

    v16 = 0xE800000000000000;
    v17 = 0x6E776F6474756873;
    if (v10 != 1)
    {
      v17 = 1953069157;
      v16 = 0xE400000000000000;
    }

    if (*(a2 + 32))
    {
      v18 = v17;
    }

    else
    {
      v18 = 0x746F6F626572;
    }

    if (*(a2 + 32))
    {
      v19 = v16;
    }

    else
    {
      v19 = 0xE600000000000000;
    }

    v20 = a2;
    v21 = a1;
    if (v14 == v18 && v15 == v19)
    {

      a1 = v21;
      a2 = v20;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a1 = v21;
      a2 = v20;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v23 = *(a1 + 48);
  v24 = *(a2 + 48);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
  {
    return 0;
  }

  v25 = *(a2 + 64);
  if (!*(a1 + 64))
  {
    if (!v25)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if (!v25)
  {
    return 0;
  }

  v26 = a1;
  v27 = a2;
  v28 = sub_10024DC98(*(a1 + 64), *(a2 + 64));
  a2 = v27;
  v29 = v28;
  a1 = v26;
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v30 = *(a2 + 80);
  v31 = *(a1 + 80);

  return sub_100252110(v31, v30);
}

uint64_t _s10DarwinInit6ConfigV7CryptexV7NetworkV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (v9 != 2)
  {
    if (v10 != 2)
    {
      v11 = a2;
      v12 = a1;
      if (v9)
      {
        v13 = 0x756F72676B636162;
      }

      else
      {
        v13 = 0x746C7561666564;
      }

      if (v9)
      {
        v14 = 0xEA0000000000646ELL;
      }

      else
      {
        v14 = 0xE700000000000000;
      }

      if (v10)
      {
        v15 = 0x756F72676B636162;
      }

      else
      {
        v15 = 0x746C7561666564;
      }

      if (v10)
      {
        v16 = 0xEA0000000000646ELL;
      }

      else
      {
        v16 = 0xE700000000000000;
      }

      if (v13 == v15 && v14 == v16)
      {

        a1 = v12;
        a2 = v11;
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a1 = v12;
        a2 = v11;
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_33;
    }

    return 0;
  }

  if (v10 != 2)
  {
    return 0;
  }

LABEL_33:
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = 0;
    if ((*(a2 + 56) & 1) != 0 || *(a1 + 48) != *(a2 + 48))
    {
      return v19;
    }
  }

  if (*(a1 + 80))
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = 0;
    if ((*(a2 + 80) & 1) != 0 || *(a1 + 72) != *(a2 + 72))
    {
      return v19;
    }
  }

  if (*(a1 + 104))
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = 0;
    if ((*(a2 + 104) & 1) != 0 || *(a1 + 96) != *(a2 + 96))
    {
      return v19;
    }
  }

  if (*(a1 + 128))
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 128) & 1) != 0 || *(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  return 1;
}

BOOL _s10DarwinInit6ConfigV7CryptexVADV19AeaDecryptionParamsV2eeoiySbAH_AHtFZ_0(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  result = 0;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = v2 == v4 && v3 == v5;
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s10DarwinInit6ConfigV7NetworkV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!v4 || (sub_10024DC98(*(a1 + 16), *(a2 + 16)) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6 || (sub_10024FCD8(v5, v6) & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    if (*(a1 + 56))
    {
      if ((*(a2 + 56) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 56) & 1) != 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }

    return 1;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  return 0;
}

BOOL _s10DarwinInit6ConfigV8TailspinV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 16) & 1) != 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 1) != 0 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  if (v2)
  {
    return v3 && (sub_10024DD28(v2, v3) & 1) != 0;
  }

  return !v3;
}

BOOL sub_1002528B8(int a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else if (a4 == 2 || ((a1 ^ a4) & 1) != 0)
  {
    return 0;
  }

  if (a3 == -1)
  {
    return a6 == -1;
  }

  if (a6 == -1)
  {
    return 0;
  }

  if (a3)
  {
    if ((a6 & 1) == 0 || (sub_10024DC98(a2, a5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6 & 1) != 0 || ((a2 ^ a5))
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100252954(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *a1;
  v11 = *(a1 + 16);
  if (*a1)
  {
    if (v6)
    {
      if (v11)
      {
        if (!v7)
        {
          goto LABEL_19;
        }

        if (*(a1 + 8) != *(a2 + 8) || v11 != v7)
        {
          v12 = *(a1 + 32);
          v13 = *(a2 + 32);
          v14 = *(a1 + 40);
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v5 = v14;
          v8 = v13;
          v4 = v12;
          if ((v15 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else if (v7)
      {
LABEL_19:
        v16 = 0;
        goto LABEL_20;
      }

      if (v5)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if ((v9 & 1) != 0 || v4 != v8)
      {
        goto LABEL_19;
      }

      v16 = 1;
LABEL_20:
      sub_100013E54(a2, v19, &qword_1004AD1C8);
      sub_100013E54(a1, v19, &qword_1004AD1C8);

      sub_100013F2C(a1, &qword_1004AD1C8);
      return v16;
    }
  }

  else if (!v6)
  {
    return 1;
  }

  v18 = *a2;
  sub_100013E54(a2, v19, &qword_1004AD1C8);
  sub_100013E54(a1, v19, &qword_1004AD1C8);
  sub_1001FA5D8(v10);
  sub_1001FA5D8(v18);
  return 0;
}

void sub_100252B3C(uint64_t a1, char a2, char a3)
{
  if (a2 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (a3 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = a3 & 1;
  }

  Hasher._combine(_:)(v4);
}

void DInitAppleConnectSSHConfig.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v5 = *(a2 + 16);
    Hasher._combine(_:)(v5);
    if (v5)
    {
      v6 = a2 + 40;
      do
      {

        String.hash(into:)();

        v6 += 16;
        --v5;
      }

      while (v5);
    }

    if (a3)
    {
      goto LABEL_6;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v7 = *(a3 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = a3 + 40;
    do
    {

      String.hash(into:)();

      v8 += 16;
      --v7;
    }

    while (v7);
  }
}

void sub_100252D08(uint64_t a1, char a2, char a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v6 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = a2 & 1;
  }

  Hasher._combine(_:)(v6);
  if (a3 == 2)
  {
    Hasher._combine(_:)(0);
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(a3 & 1);
  if (!a4)
  {
    goto LABEL_11;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v8 = *(a4 + 16);
  Hasher._combine(_:)(v8);
  if (v8)
  {
    v9 = a4 + 40;
    do
    {

      String.hash(into:)();

      v9 += 16;
      --v8;
    }

    while (v8);
  }
}

void sub_100252DEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

void sub_100252E64(int a1, Swift::UInt8 a2, char a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3 & 1);
  if (a4)
  {
    Hasher._combine(_:)(1u);
    v6 = *(a4 + 16);
    Hasher._combine(_:)(v6);
    if (v6)
    {
      v7 = (a4 + 56);
      do
      {
        v8 = *v7;
        Hasher._combine(_:)(*(v7 - 16));
        Hasher._combine(_:)(v8);
        v7 += 32;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_100252EF0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (a1)
  {
    if (a5)
    {
      if (a2 == 2)
      {
        if (a6 != 2)
        {
          goto LABEL_16;
        }
      }

      else if (a6 == 2 || ((a2 ^ a6) & 1) != 0)
      {
        goto LABEL_16;
      }

      if (a4 == 2)
      {
        if (a8 == 2)
        {
LABEL_19:
          v10 = 1;
          goto LABEL_17;
        }
      }

      else if (a8 != 2 && ((a4 ^ a8) & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_16:
      v10 = 0;
LABEL_17:
      sub_100259414(a5);
      sub_100259414(a1);

      sub_1002191A8(a1);
      return v10;
    }
  }

  else if (!a5)
  {
    return 1;
  }

  sub_100259414(a5);
  sub_100259414(a1);
  sub_1002191A8(a1);
  sub_1002191A8(a5);
  return 0;
}

BOOL _s10DarwinInit6ConfigV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v137[3] = a1[3];
  v137[2] = v6;
  v137[1] = v5;
  v137[0] = v4;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v137[7] = a1[7];
  v137[6] = v9;
  v137[5] = v8;
  v137[4] = v7;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  v138[2] = a2[2];
  v138[3] = v12;
  v138[0] = v10;
  v138[1] = v11;
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[7];
  v138[6] = a2[6];
  v138[7] = v15;
  v138[4] = v13;
  v138[5] = v14;
  if ((sub_100220C58(v137, v138) & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 17);
  v17 = *(a2 + 17);
  if (v16 && v17)
  {
    v18 = *(a1 + 144);
    v19 = *(a2 + 144);
    if (v18 == 2)
    {
      if (v19 != 2)
      {
        return 0;
      }
    }

    else if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v16 | v17)
  {
    return 0;
  }

  v20 = a1[11];
  v133 = a1[10];
  v134[0] = v20;
  *(v134 + 9) = *(a1 + 185);
  v21 = a2[11];
  v135 = a2[10];
  v136[0] = v21;
  *(v136 + 9) = *(a2 + 185);
  if ((sub_100252954(&v133, &v135) & 1) == 0)
  {
    return 0;
  }

  memcpy(__dst, a1 + 13, 0x109uLL);
  memcpy(v132, a2 + 13, 0x109uLL);
  if (!sub_100221054(__dst, v132))
  {
    return 0;
  }

  v22 = *(a1 + 61);
  v23 = *(a2 + 61);
  if (v22)
  {
    if (!v23 || (sub_10024DAE8(v22, v23) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v24 = type metadata accessor for Config(0);
  if ((sub_1002212A8(a1 + v24[9], a2 + v24[9]) & 1) == 0)
  {
    return 0;
  }

  v25 = v24[10];
  v26 = *(a1 + v25 + 8);
  v27 = *(a2 + v25 + 8);
  if (v26)
  {
    if (!v27 || (sub_10024D708(v26, v27) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v28 = (a1 + v24[11]);
  v29 = v28[3];
  v127[2] = v28[2];
  v127[3] = v29;
  v128[0] = v28[4];
  *(v128 + 9) = *(v28 + 73);
  v30 = v28[1];
  v127[0] = *v28;
  v127[1] = v30;
  v31 = (a2 + v24[11]);
  v32 = v31[1];
  v129[0] = *v31;
  v129[1] = v32;
  *(v130 + 9) = *(v31 + 73);
  v33 = v31[3];
  v130[0] = v31[4];
  v34 = v31[2];
  v129[3] = v33;
  v129[2] = v34;
  if ((sub_1002215DC(v127, v129) & 1) == 0)
  {
    return 0;
  }

  v35 = a1 + v24[12];
  v36 = *(v35 + 80);
  v123[4] = *(v35 + 64);
  v123[5] = v36;
  v124 = *(v35 + 96);
  v37 = *(v35 + 16);
  v123[0] = *v35;
  v123[1] = v37;
  v38 = *(v35 + 48);
  v123[2] = *(v35 + 32);
  v123[3] = v38;
  v39 = (a2 + v24[12]);
  v126 = *(v39 + 12);
  v40 = v39[5];
  v125[4] = v39[4];
  v125[5] = v40;
  v41 = *v39;
  v42 = v39[1];
  v43 = v39[3];
  v125[2] = v39[2];
  v125[3] = v43;
  v125[0] = v41;
  v125[1] = v42;
  if ((sub_100221878(v123, v125) & 1) == 0)
  {
    return 0;
  }

  v44 = v24[13];
  v45 = *(a1 + v44 + 8);
  v46 = *(a1 + v44 + 16);
  v47 = *(a1 + v44 + 32);
  v48 = a2 + v44;
  v49 = *(v48 + 8);
  v50 = *(v48 + 16);
  v51 = *(v48 + 32);
  if (!v45)
  {
    if (!v49)
    {
      goto LABEL_32;
    }

LABEL_31:
    sub_100259414(*(v48 + 8));
    sub_100259414(v45);
    sub_1002191A8(v45);
    sub_1002191A8(v49);
    return 0;
  }

  if (!v49)
  {
    goto LABEL_31;
  }

  sub_100259414(*(v48 + 8));
  sub_100259414(v45);
  v52 = sub_1002514B8(v46, v47, v50, v51);

  sub_1002191A8(v45);
  if (!v52)
  {
    return 0;
  }

LABEL_32:
  v53 = v24[14];
  v54 = *(a1 + v53 + 16);
  v119[0] = *(a1 + v53);
  v119[1] = v54;
  v119[2] = *(a1 + v53 + 32);
  v120 = *(a1 + v53 + 48);
  v55 = a2 + v53;
  v56 = *(v55 + 16);
  v121[0] = *v55;
  v121[1] = v56;
  v121[2] = *(v55 + 32);
  v122 = *(v55 + 48);
  if ((sub_100221B50(v119, v121) & 1) == 0)
  {
    return 0;
  }

  v57 = v24[15];
  v58 = *(a1 + v57 + 8);
  v59 = *(a2 + v57 + 8);
  if (v58)
  {
    if (!v59 || (sub_10024FCD8(v58, v59) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v60 = a1 + v24[16];
  v116 = *(v60 + 64);
  v61 = *(v60 + 48);
  v115[2] = *(v60 + 32);
  v115[3] = v61;
  v62 = *(v60 + 16);
  v115[0] = *v60;
  v115[1] = v62;
  v63 = a2 + v24[16];
  v118 = *(v63 + 64);
  v64 = *(v63 + 48);
  v117[2] = *(v63 + 32);
  v117[3] = v64;
  v65 = *(v63 + 16);
  v117[0] = *v63;
  v117[1] = v65;
  if ((sub_100221DB0(v115, v117) & 1) == 0)
  {
    return 0;
  }

  v66 = v24[17];
  v67 = *(a1 + v66 + 8);
  v68 = *(a1 + v66 + 32);
  v105 = *(a1 + v66 + 24);
  v106 = *(a1 + v66 + 16);
  v104 = *(a1 + v66 + 40);
  v69 = a2 + v66;
  v70 = *(v69 + 8);
  v71 = *(v69 + 16);
  v72 = *(v69 + 24);
  v73 = *(v69 + 32);
  v74 = *(v69 + 40);
  if (v67)
  {
    if (v70)
    {
      v102 = sub_1002528B8(v106, v68, v104, v71, v73, v74);
      sub_100259394(v70, v71, v72, v73, v74);
      sub_100259394(v67, v106, v105, v68, v104);

      sub_100218EE4(v73, v74);
      sub_100218E88(v67, v106, v105, v68, v104);
      if (!v102)
      {
        return 0;
      }

      goto LABEL_47;
    }

LABEL_44:
    v103 = *(v69 + 24);
    sub_100259394(*(v69 + 8), *(v69 + 16), v72, v73, v74);
    sub_100259394(v67, v106, v105, v68, v104);
    sub_100218E88(v67, v106, v105, v68, v104);
    sub_100218E88(v70, v71, v103, v73, v74);
    return 0;
  }

  if (v70)
  {
    goto LABEL_44;
  }

LABEL_47:
  v76 = v24[18];
  v77 = *(a1 + v76 + 8);
  v78 = *(a2 + v76 + 8);
  if (v77)
  {
    if (!v78 || (sub_10024D4E4(v77, v78) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v78)
  {
    return 0;
  }

  v79 = v24[19];
  v80 = *(a1 + v79 + 8);
  v81 = *(a2 + v79 + 8);
  if (v80)
  {
    if (!v81 || (sub_10024FB5C(v80, v81, sub_10024FB44) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v81)
  {
    return 0;
  }

  if ((sub_100222028(*(a1 + v24[20]), *(a1 + v24[20] + 8), *(a2 + v24[20]), *(a2 + v24[20] + 8)) & 1) == 0)
  {
    return 0;
  }

  v82 = v24[21];
  if ((sub_100252EF0(*(a1 + v82 + 8), *(a1 + v82 + 16), *(a1 + v82 + 24), *(a1 + v82 + 32), *(a2 + v82 + 8), *(a2 + v82 + 16), *(a2 + v82 + 24), *(a2 + v82 + 32)) & 1) == 0)
  {
    return 0;
  }

  v83 = v24[22];
  v84 = *(a1 + v83 + 16);
  v111[0] = *(a1 + v83);
  v111[1] = v84;
  v111[2] = *(a1 + v83 + 32);
  v112 = *(a1 + v83 + 48);
  v85 = a2 + v83;
  v86 = *(v85 + 16);
  v113[0] = *v85;
  v113[1] = v86;
  v113[2] = *(v85 + 32);
  v114 = *(v85 + 48);
  if ((sub_100222118(v111, v113) & 1) == 0)
  {
    return 0;
  }

  v87 = a1 + v24[23];
  v108 = *(v87 + 96);
  v88 = *(v87 + 80);
  v107[4] = *(v87 + 64);
  v107[5] = v88;
  v89 = *(v87 + 16);
  v107[0] = *v87;
  v107[1] = v89;
  v90 = *(v87 + 48);
  v107[2] = *(v87 + 32);
  v107[3] = v90;
  v91 = a2 + v24[23];
  v110 = *(v91 + 96);
  v92 = *(v91 + 16);
  v109[0] = *v91;
  v109[1] = v92;
  v93 = *(v91 + 32);
  v94 = *(v91 + 48);
  v95 = *(v91 + 80);
  v109[4] = *(v91 + 64);
  v109[5] = v95;
  v109[2] = v93;
  v109[3] = v94;
  if ((sub_10022245C(v107, v109) & 1) == 0)
  {
    return 0;
  }

  v96 = v24[24];
  v97 = *(a1 + v96 + 8);
  v98 = *(a2 + v96 + 8);
  if (v97)
  {
    if (!v98 || (sub_10024F698(v97, v98) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v98)
  {
    return 0;
  }

  v99 = v24[25];
  v100 = *(a1 + v99 + 8);
  v101 = *(a2 + v99 + 8);
  if (v100)
  {
    return v101 && (sub_10024F188(v100, v101) & 1) != 0;
  }

  return !v101;
}

BOOL _s10DarwinInit6ConfigV7CryptexV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  v5 = *(a1 + 120);
  v82[6] = *(a1 + 104);
  v82[7] = v5;
  v83 = *(a1 + 136);
  v6 = *(a1 + 24);
  v7 = *(a1 + 56);
  v82[2] = *(a1 + 40);
  v82[3] = v7;
  v8 = *(a1 + 72);
  v82[5] = v4;
  v82[4] = v8;
  v9 = *(a1 + 8);
  v82[1] = v6;
  v82[0] = v9;
  v10 = *(a2 + 88);
  v11 = *(a2 + 120);
  v80[6] = *(a2 + 104);
  v80[7] = v11;
  v81 = *(a2 + 136);
  v12 = *(a2 + 24);
  v13 = *(a2 + 56);
  v80[2] = *(a2 + 40);
  v80[3] = v13;
  v14 = *(a2 + 72);
  v80[5] = v10;
  v80[4] = v14;
  v80[0] = *(a2 + 8);
  v80[1] = v12;
  v15 = *(a1 + 88);
  v16 = *(a1 + 120);
  __src[6] = *(a1 + 104);
  __src[7] = v16;
  LOBYTE(__src[8]) = *(a1 + 136);
  v17 = *(a1 + 24);
  v18 = *(a1 + 56);
  __src[2] = *(a1 + 40);
  __src[3] = v18;
  __src[4] = *(a1 + 72);
  __src[5] = v15;
  __src[0] = *(a1 + 8);
  __src[1] = v17;
  *(&__src[13] + 8) = *(a2 + 88);
  *(&__src[14] + 8) = *(a2 + 104);
  *(&__src[15] + 8) = *(a2 + 120);
  BYTE8(__src[16]) = *(a2 + 136);
  *(&__src[9] + 8) = *(a2 + 24);
  *(&__src[10] + 8) = *(a2 + 40);
  *(&__src[11] + 8) = *(a2 + 56);
  *(&__src[12] + 8) = *(a2 + 72);
  *(&__src[8] + 8) = *(a2 + 8);
  v19 = *(a1 + 88);
  v20 = *(a1 + 120);
  v93[6] = *(a1 + 104);
  v93[7] = v20;
  v94 = *(a1 + 136);
  v21 = *(a1 + 24);
  v22 = *(a1 + 56);
  v93[2] = *(a1 + 40);
  v93[3] = v22;
  v93[4] = *(a1 + 72);
  v93[5] = v19;
  v93[0] = *(a1 + 8);
  v93[1] = v21;
  if (sub_100218DC8(v93) == 1)
  {
    v23 = *(a2 + 88);
    v24 = *(a2 + 120);
    __dst[6] = *(a2 + 104);
    __dst[7] = v24;
    LOBYTE(__dst[8]) = *(a2 + 136);
    v25 = *(a2 + 24);
    v26 = *(a2 + 56);
    __dst[2] = *(a2 + 40);
    __dst[3] = v26;
    __dst[4] = *(a2 + 72);
    __dst[5] = v23;
    __dst[0] = *(a2 + 8);
    __dst[1] = v25;
    if (sub_100218DC8(__dst) == 1)
    {
      v27 = *(a1 + 88);
      v28 = *(a1 + 120);
      v90 = *(a1 + 104);
      v91 = v28;
      v92 = *(a1 + 136);
      v29 = *(a1 + 24);
      v30 = *(a1 + 56);
      v86 = *(a1 + 40);
      v87 = v30;
      v31 = *(a1 + 72);
      v89 = v27;
      v88 = v31;
      v32 = *(a1 + 8);
      v85 = v29;
      v84 = v32;
      sub_100013E54(v82, &v69, &qword_1004ACE98);
      sub_100013E54(v80, &v69, &qword_1004ACE98);
      sub_100013F2C(&v84, &qword_1004ACE98);
      goto LABEL_7;
    }

LABEL_5:
    memcpy(__dst, __src, 0x109uLL);
    sub_100013E54(v82, &v84, &qword_1004ACE98);
    sub_100013E54(v80, &v84, &qword_1004ACE98);
    sub_100013F2C(__dst, &qword_1004AE408);
    return 0;
  }

  v33 = *(a2 + 88);
  v34 = *(a2 + 120);
  v75 = *(a2 + 104);
  v76 = v34;
  v77 = *(a2 + 136);
  v35 = *(a2 + 24);
  v36 = *(a2 + 56);
  v71 = *(a2 + 40);
  v72 = v36;
  v73 = *(a2 + 72);
  v74 = v33;
  v69 = *(a2 + 8);
  v70 = v35;
  if (sub_100218DC8(&v69) == 1)
  {
    goto LABEL_5;
  }

  v37 = *(a2 + 88);
  v38 = *(a2 + 120);
  v65[6] = *(a2 + 104);
  v65[7] = v38;
  v66 = *(a2 + 136);
  v39 = *(a2 + 24);
  v40 = *(a2 + 56);
  v65[2] = *(a2 + 40);
  v65[3] = v40;
  v65[4] = *(a2 + 72);
  v65[5] = v37;
  v65[0] = *(a2 + 8);
  v65[1] = v39;
  v41 = *(a2 + 88);
  v42 = *(a2 + 120);
  __dst[6] = *(a2 + 104);
  __dst[7] = v42;
  LOBYTE(__dst[8]) = *(a2 + 136);
  v43 = *(a2 + 24);
  v44 = *(a2 + 56);
  __dst[2] = *(a2 + 40);
  __dst[3] = v44;
  __dst[4] = *(a2 + 72);
  __dst[5] = v41;
  __dst[0] = *(a2 + 8);
  __dst[1] = v43;
  v45 = *(a1 + 88);
  v46 = *(a1 + 120);
  v90 = *(a1 + 104);
  v91 = v46;
  v92 = *(a1 + 136);
  v47 = *(a1 + 24);
  v48 = *(a1 + 56);
  v86 = *(a1 + 40);
  v87 = v48;
  v49 = *(a1 + 72);
  v89 = v45;
  v88 = v49;
  v50 = *(a1 + 8);
  v85 = v47;
  v84 = v50;
  sub_100013E54(v82, v67, &qword_1004ACE98);
  sub_100013E54(v80, v67, &qword_1004ACE98);
  v51 = _s10DarwinInit6ConfigV7CryptexV7NetworkV2eeoiySbAG_AGtFZ_0(&v84, __dst);
  sub_100013F2C(v65, &qword_1004ACE98);
  v52 = *(a1 + 88);
  v53 = *(a1 + 120);
  v67[6] = *(a1 + 104);
  v67[7] = v53;
  v68 = *(a1 + 136);
  v54 = *(a1 + 24);
  v55 = *(a1 + 56);
  v67[2] = *(a1 + 40);
  v67[3] = v55;
  v67[4] = *(a1 + 72);
  v67[5] = v52;
  v67[0] = *(a1 + 8);
  v67[1] = v54;
  sub_100013F2C(v67, &qword_1004ACE98);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v56 = *(a1 + 192);
  __src[2] = *(a1 + 176);
  __src[3] = v56;
  __src[4] = *(a1 + 208);
  *&__src[5] = *(a1 + 224);
  v57 = *(a1 + 160);
  __src[0] = *(a1 + 144);
  __src[1] = v57;
  v58 = *(a2 + 192);
  v71 = *(a2 + 176);
  v72 = v58;
  v73 = *(a2 + 208);
  *&v74 = *(a2 + 224);
  v59 = *(a2 + 160);
  v69 = *(a2 + 144);
  v70 = v59;
  if (!sub_100222BC4(__src, &v69))
  {
    return 0;
  }

  v60 = *(a1 + 240);
  v61 = *(a2 + 240);
  if (v60)
  {
    if (!v61 || (sub_10024FE60(v60, v61) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v62 = *(a1 + 256);
  v63 = *(a2 + 256);
  if (v62 != 2)
  {
    return v63 != 2 && ((v62 ^ v63) & 1) == 0;
  }

  return v63 == 2;
}

BOOL _s10DarwinInit6ConfigV7CryptexVADV2eeoiySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v4;
  v25[2] = *(a1 + 32);
  v26 = *(a1 + 48);
  v5 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v5;
  v27[2] = *(a2 + 32);
  v28 = *(a2 + 48);
  if ((sub_10022316C(v25, v27, &qword_1004ADF98) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 64);
  v7 = *(a2 + 64);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  v9 = *(a2 + 80);
  if (v8)
  {
    if (!v9 || (sub_10024DC98(v8, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 96);
  v11 = *(a2 + 96);
  if (v10 == 4)
  {
    if (v11 != 4)
    {
      return 0;
    }
  }

  else if (v11 == 4 || (sub_1001DDEA4(v10, v11) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 120);
  v13 = *(a2 + 120);
  if (v12)
  {
    if (!v13 || (*(a1 + 112) != *(a2 + 112) || v12 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = *(a2 + 144);
  if (*(a1 + 144))
  {
    if (!*(a2 + 144))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 136) != *(a2 + 136))
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = type metadata accessor for Config.Cryptex.Cryptex(0);
  type metadata accessor for URL();
  sub_1000039E8(&qword_1004ACD08);
  sub_1002599A0(qword_1004AB4A8, &type metadata accessor for URL);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v16 = v15[11];
  v17 = a1 + v16;
  v18 = *(a1 + v16 + 16);
  v19 = a2 + v16;
  v20 = *(v19 + 16);
  if (v18)
  {
    if (!v20 || (*(v17 + 8) != *(v19 + 8) || v18 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if ((sub_100222770(a1 + v15[12], a2 + v15[12]) & 1) == 0)
  {
    return 0;
  }

  v21 = v15[13];
  v22 = *(a1 + v21 + 8);
  v23 = *(a2 + v21 + 8);
  if (v22 == 2)
  {
    return v23 == 2;
  }

  return v23 != 2 && ((v22 ^ v23) & 1) == 0;
}

BOOL _s10DarwinInit6ConfigV7CryptexV5CacheV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if ((*(a2 + 16) & 1) != 0 || *(a1 + 8) != *(a2 + 8))
    {
      return v2;
    }
  }

  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else if (v4 == 2 || ((v3 ^ v4) & 1) != 0)
  {
    return 0;
  }

  v2 = *(a2 + 48);
  if (!*(a1 + 48))
  {
    if (v2)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v2)
  {
    v5 = a1;
    v6 = a2;
    v7 = sub_10024FE60(*(a1 + 48), *(a2 + 48));
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }

LABEL_16:
    v9 = *(a1 + 72);
    v10 = *(a2 + 72);
    if (v9)
    {
      return v10 && (*(a1 + 64) == *(a2 + 64) && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v10;
  }

  return v2;
}

uint64_t _s10DarwinInit6ConfigV6DiavloV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_1000039E8(&qword_1004AB4A0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = *(sub_1000039E8(&qword_1004ACD10) + 44);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_100013E54(a1 + v14, v13, &qword_1004A6D30);
  v26 = a2;
  sub_100013E54(a2 + v14, &v13[v15], &qword_1004A6D30);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100013F2C(v13, &qword_1004A6D30);
LABEL_9:
      v21 = *(type metadata accessor for Config.Diavlo(0) + 20);
      v17 = sub_100222AB4(*(v25 + v21), *(v25 + v21 + 8), *(v25 + v21 + 16), *(v26 + v21), *(v26 + v21 + 8), *(v26 + v21 + 16));
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_100013E54(v13, v9, &qword_1004A6D30);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    sub_100013F2C(v13, &qword_1004AB4A0);
    goto LABEL_7;
  }

  v18 = v24;
  (*(v5 + 32))(v24, &v13[v15], v4);
  sub_1002599A0(qword_1004AB4A8, &type metadata accessor for URL);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v9, v4);
  sub_100013F2C(v13, &qword_1004A6D30);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1002543F0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE3C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = a1[3];
  v44 = a1;
  sub_10000E2A8(a1, v9);
  sub_10025AAE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v46 = v2;
    v47 = 0uLL;
    v42 = 0;
    v43 = 0;
    v71 = 0;
    v45 = 0;
    v48 = 2;
    sub_100003C3C(v44);
    v56 = _swiftEmptyArrayStorage;
    v57 = 0;
    v58 = 0;
    v59 = _swiftEmptyArrayStorage;
    v60 = v45;
    v61 = v71;
    v62 = _swiftEmptyArrayStorage;
    v63 = v48;
    v64 = _swiftEmptyArrayStorage;
    v65 = v42;
    v66 = v43;
    v67 = _swiftEmptyArrayStorage;
    v68 = v47;
    v69 = _swiftEmptyArrayStorage;
    v70 = 4;
    return sub_1001D88D4(&v56);
  }

  else
  {
    v11 = sub_1002250B0(0, &qword_1004AE3C8, &unk_100401718, &type metadata for Config.FeatureFlag.CodingKeys, sub_10025AAE0);
    v40 = v12;
    v41 = v13;
    v14 = sub_1002250B0(1, &qword_1004AE3C8, &unk_100401718, &type metadata for Config.FeatureFlag.CodingKeys, sub_10025AAE0);
    v45 = v15;
    v71 = v16;
    v39 = sub_1002252D8(2, &qword_1004AE3C8, &unk_100401718, &type metadata for Config.FeatureFlag.CodingKeys, sub_10025AAE0);
    v48 = v17;
    v38 = sub_1002250B0(3, &qword_1004AE3C8, &unk_100401718, &type metadata for Config.FeatureFlag.CodingKeys, sub_10025AAE0);
    v42 = v18;
    v43 = v19;
    v20 = sub_1002250B0(4, &qword_1004AE3C8, &unk_100401718, &type metadata for Config.FeatureFlag.CodingKeys, sub_10025AAE0);
    *&v47 = v21;
    *(&v47 + 1) = v22;
    v23 = sub_100223D88(5);
    v46 = 0;
    v24 = *(v6 + 8);
    v25 = v23;
    HIDWORD(v35) = v26;
    v24(v8, v5);
    v27 = v40;
    *&v49 = v11;
    *(&v49 + 1) = v40;
    *&v50 = v41;
    *(&v50 + 1) = v14;
    v37 = v11;
    v28 = v45;
    *&v51 = v45;
    *(&v51 + 1) = v71;
    *&v52 = v39;
    v36 = v14;
    BYTE8(v52) = v48;
    v29 = v42;
    v30 = v43;
    *&v53 = v38;
    *(&v53 + 1) = v42;
    *&v54 = v43;
    *(&v54 + 1) = v20;
    v55[0] = v47;
    *&v55[1] = v25;
    v31 = BYTE4(v35);
    BYTE8(v55[1]) = BYTE4(v35);
    sub_1001D8878(&v49, &v56);
    sub_100003C3C(v44);
    v56 = v37;
    v57 = v27;
    v58 = v41;
    v59 = v36;
    v60 = v28;
    v61 = v71;
    v62 = v39;
    v63 = v48;
    v64 = v38;
    v65 = v29;
    v66 = v30;
    v67 = v20;
    v68 = v47;
    v69 = v25;
    v70 = v31;
    result = sub_1001D88D4(&v56);
    v32 = v54;
    a2[4] = v53;
    a2[5] = v32;
    a2[6] = v55[0];
    *(a2 + 105) = *(v55 + 9);
    v33 = v50;
    *a2 = v49;
    a2[1] = v33;
    v34 = v52;
    a2[2] = v51;
    a2[3] = v34;
  }

  return result;
}

uint64_t sub_100254958@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE3B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025ABDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v45 = a1;
  if (v2)
  {
    v65 = v2;
    v46 = 0;
    sub_100003C3C(v45);
    v53 = _swiftEmptyArrayStorage;
    v54 = 0;
    v55 = 0;
    v56 = _swiftEmptyArrayStorage;
    v57 = 0;
    v58 = 0;
    v59 = _swiftEmptyArrayStorage;
    v60 = 0;
    v61 = v46;
    v62 = _swiftEmptyArrayStorage;
    v63 = 0;
    v64 = 0;
    return sub_1002207C4(&v53);
  }

  else
  {
    v9 = sub_1002250B0(0, &qword_1004AE3B8, &unk_100401708, &type metadata for Config.Identification.CodingKeys, sub_10025ABDC);
    v42 = v6;
    v10 = v9;
    v39 = a2;
    v43 = v11;
    v44 = v12;
    v13 = sub_1002250B0(1, &qword_1004AE3B8, &unk_100401708, &type metadata for Config.Identification.CodingKeys, sub_10025ABDC);
    v15 = v14;
    v41 = v16;
    v17 = sub_1002250B0(2, &qword_1004AE3B8, &unk_100401708, &type metadata for Config.Identification.CodingKeys, sub_10025ABDC);
    v40 = v15;
    v19 = v18;
    v46 = v20;
    v21 = v17;
    v22 = sub_1002250B0(3, &qword_1004AE3B8, &unk_100401708, &type metadata for Config.Identification.CodingKeys, sub_10025ABDC);
    v65 = 0;
    v24 = *(v42 + 8);
    v25 = v22;
    v38 = v22;
    v42 = v26;
    v37 = v27;
    v24(v8, v5);
    *&v47 = v10;
    *(&v47 + 1) = v43;
    *&v48 = v44;
    *(&v48 + 1) = v13;
    *&v49 = v15;
    v28 = v41;
    *(&v49 + 1) = v41;
    *&v50 = v21;
    v29 = v46;
    *(&v50 + 1) = v19;
    *&v51 = v46;
    v30 = v42;
    *(&v51 + 1) = v25;
    *&v52 = v42;
    v31 = v37;
    *(&v52 + 1) = v37;
    sub_100269664(&v47, &v53);
    sub_100003C3C(a1);
    v53 = v10;
    v54 = v43;
    v55 = v44;
    v56 = v13;
    v57 = v40;
    v58 = v28;
    v59 = v21;
    v60 = v19;
    v61 = v29;
    v62 = v38;
    v63 = v30;
    v64 = v31;
    result = sub_1002207C4(&v53);
    v32 = v50;
    v33 = v39;
    v39[2] = v49;
    v33[3] = v32;
    v34 = v52;
    v33[4] = v51;
    v33[5] = v34;
    v35 = v48;
    *v33 = v47;
    v33[1] = v35;
  }

  return result;
}

uint64_t sub_100254E50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE430);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_100268E88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v9 = sub_1002240A4(0, &qword_1004AE430, &unk_100401768, &type metadata for Config.SecurityPolicy.CodingKeys, sub_100268E88);
  v11 = v10;
  v24 = v12;
  v13 = v9;
  v14 = sub_100223E90(1);
  v15 = v8;
  v17 = v16;
  v18 = v5;
  v20 = v19;
  (*(v6 + 8))(v15, v18);
  result = sub_100003C3C(a1);
  v22 = v24;
  *a2 = v13;
  *(a2 + 8) = v22;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  *(a2 + 40) = v20 & 1;
  return result;
}

uint64_t sub_100255050(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AE398);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_10000E2A8(a1, v7);
  sub_100268D8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = sub_100223F9C(0);
    sub_100225A5C(1, &qword_1004AE398, &unk_1004016F8, &type metadata for Config.Log.CodingKeys, sub_100268D8C);
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t sub_100255234(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AE338);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_10000E2A8(a1, v7);
  sub_100268C90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = sub_100225A5C(0, &qword_1004AE338, &unk_1004016B0, &type metadata for Config.SSH.CodingKeys, sub_100268C90);
    sub_100225A5C(1, &qword_1004AE338, &unk_1004016B0, &type metadata for Config.SSH.CodingKeys, sub_100268C90);
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t sub_100255444@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE388);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_100268D38();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v9 = sub_1002240A4(0, &qword_1004AE388, &unk_1004016E8, &type metadata for Config.Meta.CodingKeys, sub_100268D38);
  v11 = v10;
  v24 = v12;
  v13 = v9;
  v14 = sub_1002240A4(1, &qword_1004AE388, &unk_1004016E8, &type metadata for Config.Meta.CodingKeys, sub_100268D38);
  v15 = v8;
  v17 = v16;
  v18 = v5;
  v20 = v19;
  (*(v6 + 8))(v15, v18);
  result = sub_100003C3C(a1);
  v22 = v24;
  *a2 = v13;
  a2[1] = v22;
  a2[2] = v11;
  a2[3] = v14;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_10025565C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE3D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025A990();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
  }

  else
  {
    v9 = sub_1002250B0(0, &qword_1004AE3D8, &unk_100401728, &type metadata for Config.Root.CodingKeys, sub_10025A990);
    v11 = v10;
    v13 = v12;
    v14 = sub_100223644(1);
    *&v39 = v15;
    v37 = v13;
    *(&v39 + 1) = v16;
    v54 = v14;
    v38 = a2;
    v17 = sub_1002250B0(2, &qword_1004AE3D8, &unk_100401728, &type metadata for Config.Root.CodingKeys, sub_10025A990);
    v19 = v18;
    v36 = v20;
    v21 = sub_1002250B0(3, &qword_1004AE3D8, &unk_100401728, &type metadata for Config.Root.CodingKeys, sub_10025A990);
    v22 = *(v6 + 8);
    v35 = v21;
    v23 = v8;
    v25 = v24;
    v34 = v26;
    v22(v23, v5);
    *&v40 = v9;
    v27 = v37;
    *(&v40 + 1) = v37;
    *&v41 = v11;
    *(&v41 + 1) = v54;
    v42 = v39;
    *&v43 = v17;
    *(&v43 + 1) = v36;
    *&v44 = v19;
    *(&v44 + 1) = v35;
    *&v45 = v25;
    v28 = v34;
    *(&v45 + 1) = v34;
    sub_1002193A0(&v40, v46);
    sub_100003C3C(a1);
    v46[0] = v9;
    v46[1] = v27;
    v46[2] = v11;
    v46[3] = v54;
    v47 = v39;
    v48 = v17;
    v49 = v36;
    v50 = v19;
    v51 = v35;
    v52 = v25;
    v53 = v28;
    result = sub_10021934C(v46);
    v30 = v43;
    v31 = v38;
    v38[2] = v42;
    v31[3] = v30;
    v32 = v45;
    v31[4] = v44;
    v31[5] = v32;
    v33 = v41;
    *v31 = v40;
    v31[1] = v33;
  }

  return result;
}

uint64_t sub_100255A8C(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AE278);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000E2A8(a1, a1[3]);
  sub_100268B40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = sub_1002241B0(0);
    sub_1002241B0(1);
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t sub_100255C40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE270);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025C424();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
  }

  else
  {
    v9 = sub_1002242CC(0);
    v11 = v10;
    v28 = a2;
    v12 = sub_1002242CC(1);
    v14 = v13;
    v15 = sub_1002250B0(2, &qword_1004AE270, &unk_100401640, &type metadata for Config.User.Authentication.Memento.CodingKeys, sub_10025C424);
    v16 = *(v6 + 8);
    v27 = v15;
    v17 = v8;
    v19 = v18;
    v20 = v5;
    v22 = v21;
    v16(v17, v20);

    v23 = v27;

    sub_100003C3C(a1);

    v25 = v28;
    *v28 = v9;
    v25[1] = v11;
    v25[2] = v12;
    v25[3] = v14;
    v25[4] = v23;
    v25[5] = v19;
    v25[6] = v22;
  }

  return result;
}

uint64_t sub_100255F2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_1000039E8(&qword_1004AE288);
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = a1[3];
  v36 = a1;
  sub_10000E2A8(a1, v7);
  v8 = sub_10025C164();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(v36);
    v56 = _swiftEmptyArrayStorage;
    v57 = 0;
    v58 = 0uLL;
    v59 = 0;
    v60 = _swiftEmptyArrayStorage;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    return sub_1002206A4(&v56);
  }

  else
  {
    sub_1002243E8(0, v65);
    v9 = v65[0];
    v32 = v65[1];
    v33 = v66;
    v10 = v67;
    v68 = 1;
    v11 = KeyedDecodingContainer.codingPath.getter();
    sub_1000039E8(&qword_1004AAA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.User.Authentication.CodingKeys;
    *(inited + 64) = v8;
    *(inited + 32) = 1;
    v56 = v11;
    sub_10034A3A8(inited);
    v13 = v56;
    sub_100268F44();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v35 + 8))(v6, v4);
    v15 = v49;
    v28 = v49;
    v29 = v50;
    v17 = v51;
    v16 = v52;
    v35 = v53;
    v30 = v55;
    v31 = v54;
    v37 = _swiftEmptyArrayStorage;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    sub_100013F2C(&v37, &qword_1004AD188);
    v18 = v13;
    v27 = v13;
    v19 = v32;
    v20 = v33;
    *&v42 = v9;
    *(&v42 + 1) = v32;
    v43 = v33;
    *&v44 = v10;
    *(&v44 + 1) = v18;
    *&v45 = v15;
    v21 = v29;
    *(&v45 + 1) = v29;
    *&v46 = v17;
    *(&v46 + 1) = v16;
    *&v47 = v35;
    *(&v47 + 1) = v31;
    v48 = v30;
    sub_1002206F8(&v42, &v56);
    sub_100003C3C(v36);
    v56 = v9;
    v57 = v19;
    v58 = __PAIR128__(*(&v33 + 1), v20);
    v59 = v10;
    v60 = v27;
    *&v61 = v28;
    *(&v61 + 1) = v21;
    *&v62 = v17;
    *(&v62 + 1) = v16;
    *&v63 = v35;
    *(&v63 + 1) = v31;
    v64 = v30;
    result = sub_1002206A4(&v56);
    v22 = v47;
    v23 = v34;
    *(v34 + 64) = v46;
    *(v23 + 80) = v22;
    *(v23 + 96) = v48;
    v24 = v43;
    *v23 = v42;
    *(v23 + 16) = v24;
    v25 = v45;
    *(v23 + 32) = v44;
    *(v23 + 48) = v25;
  }

  return result;
}

uint64_t sub_1002562EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v69 = a2;
  v4 = sub_1000039E8(&qword_1004AE2A8);
  v70 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v54 - v5;
  v7 = a1[3];
  v78 = a1;
  sub_10000E2A8(a1, v7);
  v8 = sub_10025BFC0();
  v71 = v6;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v76 = v2;
    v152 = 0;
    v72 = 0;
    v73 = 0;
    v77 = 0;
    v83 = 0;
    v84 = 0;
    v75 = 0;
    LODWORD(v71) = 0;
    LODWORD(v70) = 0;
    v81 = 0;
    v82 = 0;
    v79 = _swiftEmptyArrayStorage;
    v80 = _swiftEmptyArrayStorage;
    v74 = _swiftEmptyArrayStorage;
    sub_100003C3C(v78);
    v100 = _swiftEmptyArrayStorage;
    v101 = v152;
    v102 = v73;
    v103 = v72;
    v104 = v77;
    v105 = v84;
    v106 = v83;
    v107 = v75;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    sub_100013F2C(&v100, &qword_1004AD500);

    if (v71)
    {
    }

    if (v70)
    {
    }
  }

  else
  {
    v9 = v70;
    v151 = 0;
    v10 = KeyedDecodingContainer.codingPath.getter();
    sub_1000039E8(&qword_1004AAA00);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100376A40;
    *(v11 + 56) = &type metadata for Config.User.CodingKeys;
    *(v11 + 64) = v8;
    *(v11 + 32) = 0;
    v100 = v10;
    sub_10034A3A8(v11);
    v12 = v100;
    sub_100268FEC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v4;
    v61 = v12;
    v14 = v139;
    v152 = v138;
    v15 = v140;
    v16 = v141;
    v83 = v143;
    v84 = v142;
    v75 = v144;
    v65 = v146;
    v66 = v145;
    v64 = v147;
    v17 = v148;
    v62 = v150;
    v63 = v149;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v130 = _swiftEmptyArrayStorage;
    v137 = 0;
    sub_100013F2C(&v130, &qword_1004AD500);
    v18 = sub_1002252D8(1, &qword_1004AE2A8, &unk_100401668, &type metadata for Config.User.CodingKeys, sub_10025BFC0);
    v77 = v16;
    v72 = v15;
    v73 = v14;
    v20 = v19;
    v60 = v18;
    v21 = sub_10022374C(2);
    v59 = v22;
    v68 = v21;
    v23 = sub_10022374C(3);
    v58 = v24;
    v67 = v23;
    LOBYTE(v16) = v20;
    v79 = sub_100224504(4);
    v82 = v25;
    v26 = v14;
    v27 = sub_1002252D8(5, &qword_1004AE2A8, &unk_100401668, &type metadata for Config.User.CodingKeys, sub_10025BFC0);
    LODWORD(v14) = v28;
    v74 = v27;
    v29 = sub_1002250B0(6, &qword_1004AE2A8, &unk_100401668, &type metadata for Config.User.CodingKeys, sub_10025BFC0);
    v56 = v30;
    v57 = v17;
    v80 = v29;
    v81 = v31;
    v32 = sub_1002250B0(7, &qword_1004AE2A8, &unk_100401668, &type metadata for Config.User.CodingKeys, sub_10025BFC0);
    v76 = 0;
    v33 = *(v9 + 8);
    v34 = v32;
    v54 = v32;
    v35 = v71;
    v70 = v37;
    v71 = v36;
    v33(v35, v13);
    *&v85 = v61;
    *(&v85 + 1) = v152;
    v38 = v14;
    v55 = v14;
    v39 = v26;
    *&v86 = v26;
    *(&v86 + 1) = v15;
    v40 = v77;
    *&v87 = v77;
    *(&v87 + 1) = v84;
    v41 = v75;
    *&v88 = v83;
    *(&v88 + 1) = v75;
    *&v89 = v66;
    *(&v89 + 1) = v65;
    *&v90 = v64;
    *(&v90 + 1) = v57;
    *&v91 = v63;
    *(&v91 + 1) = v62;
    *&v92 = v60;
    BYTE8(v92) = v16;
    *&v93 = v68;
    *(&v93 + 1) = v59;
    *&v94 = v67;
    *(&v94 + 1) = v58;
    *&v95 = v79;
    *(&v95 + 1) = v82;
    v42 = v74;
    *&v96 = v74;
    BYTE8(v96) = v38;
    *&v97 = v80;
    *(&v97 + 1) = v56;
    *&v98 = v81;
    *(&v98 + 1) = v34;
    v43 = v70;
    v44 = v71;
    *&v99 = v71;
    *(&v99 + 1) = v70;
    sub_100189980(&v85, &v100);
    sub_100003C3C(v78);
    v100 = v61;
    v101 = v152;
    v102 = v39;
    v103 = v15;
    v104 = v40;
    v105 = v84;
    v106 = v83;
    v107 = v41;
    v108 = v66;
    v109 = v65;
    v110 = v64;
    v111 = v57;
    v112 = v63;
    v113 = v62;
    v114 = v60;
    v115 = v16;
    v116 = v68;
    v117 = v59;
    v118 = v67;
    v119 = v58;
    v120 = v79;
    v121 = v82;
    v122 = v42;
    v123 = v55;
    v124 = v80;
    v125 = v56;
    v126 = v81;
    v127 = v54;
    v128 = v44;
    v129 = v43;
    result = sub_1001D87FC(&v100);
    v46 = v98;
    v47 = v69;
    v69[12] = v97;
    v47[13] = v46;
    v47[14] = v99;
    v48 = v94;
    v47[8] = v93;
    v47[9] = v48;
    v49 = v96;
    v47[10] = v95;
    v47[11] = v49;
    v50 = v90;
    v47[4] = v89;
    v47[5] = v50;
    v51 = v92;
    v47[6] = v91;
    v47[7] = v51;
    v52 = v86;
    *v47 = v85;
    v47[1] = v52;
    v53 = v88;
    v47[2] = v87;
    v47[3] = v53;
  }

  return result;
}

uint64_t sub_100256BC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE328);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_100268C3C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v9 = sub_1002252D8(0, &qword_1004AE328, &unk_1004016A0, &type metadata for Config.Start.CodingKeys, sub_100268C3C);
  v22 = v10;
  v11 = v9;
  v12 = sub_1002252D8(1, &qword_1004AE328, &unk_1004016A0, &type metadata for Config.Start.CodingKeys, sub_100268C3C);
  v21 = v13;
  v14 = sub_100224620(2);
  v15 = v8;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  result = sub_100003C3C(a1);
  *a2 = v11;
  v19 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v12;
  *(a2 + 24) = v19;
  *(a2 + 32) = v14;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_100256E00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE3C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v35 = a1;
  sub_10000E2A8(a1, v9);
  sub_10025AB88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v54 = v2;
    v36 = 0;
    sub_100003C3C(v35);
    v43 = _swiftEmptyArrayStorage;
    v44 = 0;
    v45 = 0;
    v46 = _swiftEmptyArrayStorage;
    v47 = 3;
    v48 = _swiftEmptyArrayStorage;
    v49 = 2;
    v50 = _swiftEmptyArrayStorage;
    v51 = v36;
    v52 = _swiftEmptyArrayStorage;
    v53 = 5;
    return sub_100220818(&v43);
  }

  else
  {
    v32 = v6;
    v10 = sub_1002250B0(0, &qword_1004AE3C0, &unk_100401710, &type metadata for Config.Finish.CodingKeys, sub_10025AB88);
    v34 = v11;
    v33 = v12;
    v13 = sub_10022473C(1);
    v14 = a2;
    v31 = v15;
    v16 = sub_1002252D8(2, &qword_1004AE3C0, &unk_100401710, &type metadata for Config.Finish.CodingKeys, sub_10025AB88);
    v30 = v17;
    v18 = sub_100224844(3);
    v36 = v19;
    v20 = sub_100224960(4);
    v54 = 0;
    v22 = v20;
    v24 = v23;
    (*(v32 + 8))(v8, v5);
    *&v37 = v10;
    v25 = v33;
    *(&v37 + 1) = v34;
    *&v38 = v33;
    *(&v38 + 1) = v13;
    v32 = v13;
    LOBYTE(v13) = v31;
    LOBYTE(v39) = v31;
    *(&v39 + 1) = v16;
    v29 = v16;
    LOBYTE(v16) = v30;
    LOBYTE(v40) = v30;
    v26 = v36;
    *(&v40 + 1) = v18;
    *&v41 = v36;
    *(&v41 + 1) = v22;
    v42 = v24;
    sub_10022086C(&v37, &v43);
    sub_100003C3C(v35);
    v43 = v10;
    v44 = v34;
    v45 = v25;
    v46 = v32;
    v47 = v13;
    v48 = v29;
    v49 = v16;
    v50 = v18;
    v51 = v26;
    v52 = v22;
    v53 = v24;
    result = sub_100220818(&v43);
    v27 = v40;
    *(v14 + 32) = v39;
    *(v14 + 48) = v27;
    *(v14 + 64) = v41;
    *(v14 + 80) = v42;
    v28 = v38;
    *v14 = v37;
    *(v14 + 16) = v28;
  }

  return result;
}

uint64_t sub_1002572B8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE3E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v48 = 1;
  sub_10000E2A8(a1, a1[3]);
  sub_10025A7A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    v38 = _swiftEmptyArrayStorage;
    v39 = 0;
    v40 = v48;
    v41 = _swiftEmptyArrayStorage;
    v42 = 2;
    v43 = _swiftEmptyArrayStorage;
    v44 = 0;
    v46 = 0;
    v47 = 0;
    v45 = _swiftEmptyArrayStorage;
    return sub_1002696F0(&v38);
  }

  else
  {
    v31 = v6;
    v9 = sub_100225608(0, &qword_1004AE3E0, &unk_100401740, &type metadata for Config.Cryptex.Cache.CodingKeys, sub_10025A7A0);
    v32 = v10;
    v48 = v11 & 1;
    v12 = sub_1002252D8(1, &qword_1004AE3E0, &unk_100401740, &type metadata for Config.Cryptex.Cache.CodingKeys, sub_10025A7A0);
    v14 = v13;
    v30 = a2;
    v15 = sub_100224B60(2);
    v17 = v16;
    v18 = sub_1002250B0(3, &qword_1004AE3E0, &unk_100401740, &type metadata for Config.Cryptex.Cache.CodingKeys, sub_10025A7A0);
    v20 = v31[1];
    v31 = v18;
    v21 = v8;
    v23 = v22;
    v24 = v5;
    v26 = v25;
    v20(v21, v24);
    *&v33 = v9;
    *(&v33 + 1) = v32;
    v49 = v48;
    LOBYTE(v34) = v48;
    *(&v34 + 1) = v12;
    LOBYTE(v35) = v14;
    *(&v35 + 1) = v15;
    *&v36 = v17;
    *(&v36 + 1) = v31;
    *&v37 = v23;
    *(&v37 + 1) = v26;
    sub_100269720(&v33, &v38);
    sub_100003C3C(a1);
    v38 = v9;
    v39 = v32;
    v40 = v49;
    v41 = v12;
    v42 = v14;
    v43 = v15;
    v44 = v17;
    v45 = v31;
    v46 = v23;
    v47 = v26;
    result = sub_1002696F0(&v38);
    v27 = v36;
    v28 = v30;
    v30[2] = v35;
    v28[3] = v27;
    v28[4] = v37;
    v29 = v34;
    *v28 = v33;
    v28[1] = v29;
  }

  return result;
}

uint64_t sub_10025767C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE3F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v91 = 1;
  v89 = 1;
  v87 = 1;
  v85 = 1;
  v9 = a1[3];
  v53 = a1;
  sub_10000E2A8(a1, v9);
  sub_10025A6F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v54 = v2;
    v51 = 0;
    v52 = 0;
    v93 = 0;
    v50 = _swiftEmptyArrayStorage;
    sub_100003C3C(v53);
    v64 = _swiftEmptyArrayStorage;
    v65 = 0;
    v66 = 0;
    v67 = _swiftEmptyArrayStorage;
    v68 = 2;
    *v69 = v92[0];
    *&v69[3] = *(v92 + 3);
    v70 = _swiftEmptyArrayStorage;
    v71 = v93;
    v72 = v91;
    *v73 = *v90;
    *&v73[3] = *&v90[3];
    v74 = v50;
    v75 = v52;
    v76 = v89;
    *v77 = *v88;
    *&v77[3] = *&v88[3];
    v78 = _swiftEmptyArrayStorage;
    v79 = v51;
    v80 = v87;
    *v81 = *v86;
    *&v81[3] = *&v86[3];
    v82 = _swiftEmptyArrayStorage;
    v83 = 0;
    v84 = v85;
    return sub_100220980(&v64);
  }

  else
  {
    v11 = sub_1002250B0(0, &qword_1004AE3F8, &unk_100401748, &type metadata for Config.Cryptex.Network.CodingKeys, sub_10025A6F8);
    v48 = v12;
    v49 = v13;
    v14 = sub_100224C7C(1);
    v47 = v15;
    v46 = sub_100225608(2, &qword_1004AE3F8, &unk_100401748, &type metadata for Config.Cryptex.Network.CodingKeys, sub_10025A6F8);
    v93 = v16;
    v91 = v17 & 1;
    v50 = sub_100225608(3, &qword_1004AE3F8, &unk_100401748, &type metadata for Config.Cryptex.Network.CodingKeys, sub_10025A6F8);
    v52 = v18;
    v45 = a2;
    v89 = v19 & 1;
    v20 = sub_100225608(4, &qword_1004AE3F8, &unk_100401748, &type metadata for Config.Cryptex.Network.CodingKeys, sub_10025A6F8);
    v51 = v21;
    v87 = v22 & 1;
    v23 = sub_100225608(5, &qword_1004AE3F8, &unk_100401748, &type metadata for Config.Cryptex.Network.CodingKeys, sub_10025A6F8);
    v54 = 0;
    v25 = v24;
    v26 = *(v6 + 8);
    v27 = v23;
    v40 = v28;
    v26(v8, v5);
    v85 = v25 & 1;
    *&v55 = v11;
    *(&v55 + 1) = v48;
    *&v56 = v49;
    *(&v56 + 1) = v14;
    v42 = v11;
    v43 = v14;
    LOBYTE(v57) = v47;
    *(&v57 + 1) = v46;
    *&v58 = v93;
    v44 = v91;
    BYTE8(v58) = v91;
    v30 = v50;
    v29 = v51;
    v31 = v52;
    *&v59 = v50;
    *(&v59 + 1) = v52;
    v41 = v89;
    LOBYTE(v60) = v89;
    *(&v60 + 1) = v20;
    *&v61 = v51;
    v32 = v87;
    BYTE8(v61) = v87;
    v33 = v40;
    *&v62 = v27;
    *(&v62 + 1) = v40;
    v34 = v85;
    v63 = v85;
    sub_1002209D4(&v55, &v64);
    sub_100003C3C(v53);
    v64 = v42;
    v65 = v48;
    v66 = v49;
    v67 = v43;
    v68 = v47;
    v70 = v46;
    v71 = v93;
    v72 = v44;
    v74 = v30;
    v75 = v31;
    v76 = v41;
    v78 = v20;
    v79 = v29;
    v80 = v32;
    v82 = v27;
    v83 = v33;
    v84 = v34;
    result = sub_100220980(&v64);
    v35 = v62;
    v36 = v45;
    *(v45 + 96) = v61;
    *(v36 + 112) = v35;
    *(v36 + 128) = v63;
    v37 = v58;
    *(v36 + 32) = v57;
    *(v36 + 48) = v37;
    v38 = v60;
    *(v36 + 64) = v59;
    *(v36 + 80) = v38;
    v39 = v56;
    *v36 = v55;
    *(v36 + 16) = v39;
  }

  return result;
}

void *sub_100257C74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v4 = sub_1000039E8(&qword_1004AE418);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  sub_100219B90(v127);
  v123 = v127[5];
  v124 = v127[6];
  v125 = v127[7];
  v119 = v127[1];
  v120 = v127[2];
  v121 = v127[3];
  v122 = v127[4];
  v126 = v128;
  v118 = v127[0];
  v8 = a1[3];
  v41 = a1;
  sub_10000E2A8(a1, v8);
  v9 = sub_10025A540();
  v38 = v7;
  v10 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v39 = v2;
    v40 = 0;
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v42 = 0;
    *&v43 = 0;
    v129 = 0;
    sub_100003C3C(v41);
    v91 = _swiftEmptyArrayStorage;
    v97 = v123;
    v98 = v124;
    v99 = v125;
    v100 = v126;
    v93 = v119;
    v94 = v120;
    v95 = v121;
    v96 = v122;
    v92 = v118;
    *v101 = *v117;
    *&v101[3] = *&v117[3];
    v102 = _swiftEmptyArrayStorage;
    v103 = v40;
    v104 = v38;
    v105 = v37;
    v106 = v36;
    v107 = v43;
    v108 = v35;
    v109 = v129;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = _swiftEmptyArrayStorage;
    v114 = v42;
    v115 = _swiftEmptyArrayStorage;
    v116 = 2;
    return sub_1002208C8(&v91);
  }

  else
  {
    v36 = v5;
    v90 = 0;
    v11 = KeyedDecodingContainer.codingPath.getter();
    sub_1000039E8(&qword_1004AAA00);
    v12 = swift_allocObject();
    v43 = xmmword_100376A40;
    *(v12 + 16) = xmmword_100376A40;
    *(v12 + 56) = &type metadata for Config.Cryptex.CodingKeys;
    *(v12 + 64) = v10;
    *(v12 + 32) = 0;
    v91 = v11;
    sub_10034A3A8(v12);
    v13 = v91;
    sub_100269868();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = v13;
    v68 = v87;
    v69 = v88;
    v70 = v89;
    v64 = v83;
    v65 = v84;
    v66 = v85;
    v67 = v86;
    v62 = v81;
    v63 = v82;
    v71 = _swiftEmptyArrayStorage;
    v77 = v123;
    v78 = v124;
    v79 = v125;
    v80 = v126;
    v73 = v119;
    v74 = v120;
    v75 = v121;
    v76 = v122;
    v72 = v118;
    sub_100013F2C(&v71, &qword_1004AD378);
    v123 = v67;
    v124 = v68;
    v125 = v69;
    v119 = v63;
    v120 = v64;
    v121 = v65;
    v122 = v66;
    v126 = v70;
    v118 = v62;
    v61 = 1;
    v14 = KeyedDecodingContainer.codingPath.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = v43;
    *(v15 + 56) = &type metadata for Config.Cryptex.CodingKeys;
    *(v15 + 64) = v10;
    *(v15 + 32) = 1;
    v91 = v14;
    sub_10034A3A8(v15);
    v16 = v91;
    sub_1002698BC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v16;
    v17 = v52;
    v40 = v51;
    v19 = v53;
    v18 = v54;
    *&v43 = v55;
    v20 = v56;
    v129 = v57;
    v32 = v59;
    v33 = v58;
    v31 = v60;
    v45 = _swiftEmptyArrayStorage;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    sub_100013F2C(&v45, &qword_1004AD380);
    v29 = sub_1002251BC(2);
    v42 = v21;
    v22 = v20;
    v23 = sub_1002252D8(3, &qword_1004AE418, &unk_100401760, &type metadata for Config.Cryptex.CodingKeys, sub_10025A540);
    v39 = 0;
    v25 = v23;
    v27 = v26;
    (*(v36 + 8))(v38, v4);
    *&v44[11] = v67;
    *&v44[13] = v68;
    *&v44[15] = v69;
    *&v44[3] = v63;
    *&v44[5] = v64;
    *&v44[7] = v65;
    *&v44[9] = v66;
    v44[0] = v34;
    LOBYTE(v44[17]) = v70;
    *&v44[1] = v62;
    v28 = v40;
    v44[18] = v30;
    v44[19] = v40;
    v44[20] = v17;
    v44[21] = v19;
    v44[22] = v18;
    v44[23] = v43;
    v44[24] = v22;
    v44[25] = v129;
    v44[26] = v33;
    v44[27] = v32;
    v44[28] = v31;
    v44[29] = v29;
    v44[30] = v42;
    v44[31] = v25;
    LOBYTE(v44[32]) = v27;
    sub_100219BAC(v44, &v91);
    sub_100003C3C(v41);
    v97 = v67;
    v98 = v68;
    v99 = v69;
    v93 = v63;
    v94 = v64;
    v95 = v65;
    v96 = v66;
    v91 = v34;
    v100 = v70;
    v92 = v62;
    v102 = v30;
    v103 = v28;
    v104 = v17;
    v105 = v19;
    v106 = v18;
    v107 = v43;
    v108 = v22;
    v109 = v129;
    v110 = v33;
    v111 = v32;
    v112 = v31;
    v113 = v29;
    v114 = v42;
    v115 = v25;
    v116 = v27;
    sub_1002208C8(&v91);
    return memcpy(v37, v44, 0x101uLL);
  }
}

uint64_t sub_100258488@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE378);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v41 = 1;
  sub_10000E2A8(a1, a1[3]);
  sub_10025B090();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    v33 = _swiftEmptyArrayStorage;
    v34 = 0;
    v35 = 0;
    v36 = _swiftEmptyArrayStorage;
    v37 = 0;
    v38 = _swiftEmptyArrayStorage;
    v39 = 0;
    v40 = v41;
    return sub_100269500(&v33);
  }

  else
  {
    v29 = v6;
    v9 = sub_1002253E4(0);
    v11 = v10;
    v13 = v12;
    v28 = a2;
    v14 = sub_1002254EC(1);
    v16 = v15;
    v17 = sub_100225608(2, &qword_1004AE378, &unk_1004016E0, &type metadata for Config.Network.CodingKeys, sub_10025B090);
    v18 = v29[1];
    v29 = v17;
    v19 = v8;
    v21 = v20;
    v22 = v5;
    v24 = v23;
    v18(v19, v22);
    v24 &= 1u;
    v41 = v24;
    *&v30 = v9;
    *(&v30 + 1) = v11;
    *&v31 = v13;
    *(&v31 + 1) = v14;
    *v32 = v16;
    *&v32[8] = v29;
    *&v32[16] = v21;
    v32[24] = v24;
    sub_100269530(&v30, &v33);
    sub_100003C3C(a1);
    v33 = v9;
    v34 = v11;
    v35 = v13;
    v36 = v14;
    v37 = v16;
    v38 = v29;
    v39 = v21;
    v40 = v24;
    result = sub_100269500(&v33);
    v26 = v31;
    v27 = v28;
    *v28 = v30;
    v27[1] = v26;
    v27[2] = *v32;
    *(v27 + 41) = *&v32[9];
  }

  return result;
}

uint64_t sub_100258764(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AE2C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_10000E2A8(a1, v7);
  sub_100268B94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = sub_100223960(0);
    sub_100223A68(1);
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t sub_100258934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE2D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_100268BE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v9 = sub_100223B74(0);
  v11 = v10;
  v12 = v9;
  v13 = sub_100223C7C(1);
  v21 = v14;
  v22 = v13;
  v15 = sub_100225718(2);
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100003C3C(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v22;
  *(a2 + 24) = v21 & 1;
  *(a2 + 32) = v15;
  *(a2 + 40) = v18;
  return result;
}

uint64_t sub_100258B68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE310);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v55 = 1;
  v54 = 1;
  v53 = 1;
  sub_10000E2A8(a1, a1[3]);
  sub_10025BAAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    v42 = _swiftEmptyArrayStorage;
    v43 = 0;
    v44 = v55;
    v45 = _swiftEmptyArrayStorage;
    v46 = 0;
    v47 = v54;
    v48 = _swiftEmptyArrayStorage;
    v49 = 0;
    v50 = v53;
    v51 = _swiftEmptyArrayStorage;
    v52 = 0;
    return sub_100220650(&v42);
  }

  else
  {
    v9 = sub_100225834(0);
    v34 = v6;
    v10 = v9;
    v12 = v11;
    v55 = v13 & 1;
    v14 = sub_100225834(1);
    v35 = v15;
    v33 = a2;
    v54 = v16 & 1;
    v17 = sub_100225834(2);
    v19 = v18;
    v53 = v20 & 1;
    v21 = sub_100225940(3);
    v23 = *(v34 + 8);
    v31 = v21;
    v24 = v8;
    v26 = v25;
    v23(v24, v5);
    *&v36 = v10;
    *(&v36 + 1) = v12;
    LODWORD(v34) = v55;
    LOBYTE(v37) = v55;
    *(&v37 + 1) = v14;
    *&v38 = v35;
    v56 = v54;
    BYTE8(v38) = v54;
    *&v39 = v17;
    *(&v39 + 1) = v19;
    v32 = v53;
    LOBYTE(v40) = v53;
    v27 = v31;
    *(&v40 + 1) = v31;
    v41 = v26;
    sub_1002192F0(&v36, &v42);
    sub_100003C3C(a1);
    v42 = v10;
    v43 = v12;
    v44 = v34;
    v45 = v14;
    v46 = v35;
    v47 = v56;
    v48 = v17;
    v49 = v19;
    v50 = v32;
    v51 = v27;
    v52 = v26;
    result = sub_100220650(&v42);
    v28 = v39;
    v29 = v33;
    *(v33 + 32) = v38;
    *(v29 + 48) = v28;
    *(v29 + 64) = v40;
    *(v29 + 80) = v41;
    v30 = v37;
    *v29 = v36;
    *(v29 + 16) = v30;
  }

  return result;
}

uint64_t sub_100258F1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE348);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_100268CE4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v9 = sub_100225A5C(0, &qword_1004AE348, &unk_1004016C0, &type metadata for Config.Analytics.CodingKeys, sub_100268CE4);
  v20 = v10;
  v11 = v9;
  v12 = sub_100225B68(1);
  v14 = v13;
  v15 = v5;
  v17 = v16;
  (*(v6 + 8))(v8, v15);
  result = sub_100003C3C(a1);
  *a2 = v11;
  *(a2 + 8) = v20;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  return result;
}

unint64_t _s10DarwinInit6ConfigV11FeatureFlagV0D5PhaseO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100485298, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t _s10DarwinInit6ConfigV3LogV12PrivacyLevelO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100485318, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100259198(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002591F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10025925C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002592E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100259330(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100259394(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result)
  {

    return sub_1002593F0(a4, a5);
  }

  return result;
}

uint64_t sub_1002593F0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100259408(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100259408(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100259414(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100259454(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1002594B8()
{
  result = qword_1004AD218;
  if (!qword_1004AD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD218);
  }

  return result;
}

unint64_t sub_10025950C()
{
  result = qword_1004AD220;
  if (!qword_1004AD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD220);
  }

  return result;
}

unint64_t sub_100259560()
{
  result = qword_1004AD228;
  if (!qword_1004AD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD228);
  }

  return result;
}

unint64_t sub_1002595B4()
{
  result = qword_1004AD238;
  if (!qword_1004AD238)
  {
    sub_100003A94(&qword_1004AD230);
    sub_100259638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD238);
  }

  return result;
}

unint64_t sub_100259638()
{
  result = qword_1004AD240;
  if (!qword_1004AD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD240);
  }

  return result;
}

unint64_t sub_10025968C()
{
  result = qword_1004AD258;
  if (!qword_1004AD258)
  {
    sub_100003A94(&qword_1004AD250);
    sub_100259710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD258);
  }

  return result;
}

unint64_t sub_100259710()
{
  result = qword_1004AD260;
  if (!qword_1004AD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD260);
  }

  return result;
}

unint64_t sub_100259764()
{
  result = qword_1004AD268;
  if (!qword_1004AD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD268);
  }

  return result;
}

unint64_t sub_1002597B8()
{
  result = qword_1004AD270;
  if (!qword_1004AD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD270);
  }

  return result;
}

unint64_t sub_10025980C()
{
  result = qword_1004AD278;
  if (!qword_1004AD278)
  {
    sub_100003A94(&qword_1004ACCF0);
    sub_1001B54D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD278);
  }

  return result;
}

unint64_t sub_100259898()
{
  result = qword_1004AD280;
  if (!qword_1004AD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD280);
  }

  return result;
}

unint64_t sub_1002598EC()
{
  result = qword_1004AD290;
  if (!qword_1004AD290)
  {
    sub_100003A94(&qword_1004AD288);
    sub_1002599A0(&qword_1004AD298, type metadata accessor for Config.Package);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD290);
  }

  return result;
}

uint64_t sub_1002599A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100259A08()
{
  result = qword_1004AD2A8;
  if (!qword_1004AD2A8)
  {
    sub_100003A94(&qword_1004AD2A0);
    sub_100259A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD2A8);
  }

  return result;
}

unint64_t sub_100259A94()
{
  result = qword_1004AD2B0;
  if (!qword_1004AD2B0)
  {
    sub_100003A94(&qword_1004AD2B8);
    sub_10025980C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD2B0);
  }

  return result;
}

unint64_t sub_100259B20()
{
  result = qword_1004AD2C8;
  if (!qword_1004AD2C8)
  {
    sub_100003A94(&qword_1004AD2C0);
    sub_100259BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD2C8);
  }

  return result;
}

unint64_t sub_100259BAC()
{
  result = qword_1004AD2D0;
  if (!qword_1004AD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD2D0);
  }

  return result;
}

unint64_t sub_100259C00()
{
  result = qword_1004AD2E0;
  if (!qword_1004AD2E0)
  {
    sub_100003A94(&qword_1004AD2D8);
    sub_100259C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD2E0);
  }

  return result;
}

unint64_t sub_100259C8C()
{
  result = qword_1004AD2E8;
  if (!qword_1004AD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD2E8);
  }

  return result;
}

unint64_t sub_100259CE0()
{
  result = qword_1004AD2F8;
  if (!qword_1004AD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD2F8);
  }

  return result;
}

unint64_t sub_100259D34()
{
  result = qword_1004AD308;
  if (!qword_1004AD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD308);
  }

  return result;
}

unint64_t sub_100259D88()
{
  result = qword_1004AD310;
  if (!qword_1004AD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD310);
  }

  return result;
}

unint64_t sub_100259DDC()
{
  result = qword_1004AD318;
  if (!qword_1004AD318)
  {
    sub_100003A94(&qword_1004AD2C0);
    sub_100259E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD318);
  }

  return result;
}

unint64_t sub_100259E68()
{
  result = qword_1004AD320;
  if (!qword_1004AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD320);
  }

  return result;
}

uint64_t sub_100259EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100259F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10DarwinInit6ConfigV10CodingKeysO8rawValueAESgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100259FD8()
{
  result = qword_1004AD330;
  if (!qword_1004AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD330);
  }

  return result;
}

unint64_t sub_10025A02C()
{
  result = qword_1004AD338;
  if (!qword_1004AD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD338);
  }

  return result;
}

unint64_t sub_10025A080()
{
  result = qword_1004AD348;
  if (!qword_1004AD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD348);
  }

  return result;
}

unint64_t sub_10025A0D4()
{
  result = qword_1004AD358;
  if (!qword_1004AD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD358);
  }

  return result;
}

uint64_t sub_10025A128(void *a1, char a2)
{
  v4 = sub_1000039E8(&qword_1004AE440);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_10000E2A8(a1, a1[3]);
  sub_10025A270();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_10025A270()
{
  result = qword_1004AD370;
  if (!qword_1004AD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD370);
  }

  return result;
}

uint64_t sub_10025A2C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = a5;
  v15 = a4;
  v9 = sub_1000039E8(&qword_1004AE438);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10000E2A8(a1, a1[3]);
  sub_100268E88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v19 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v16 = v15;
    LOBYTE(v17) = v18 & 1;
    v19 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

Swift::Int sub_10025A490(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  Hasher.init(_seed:)();
  if (!a2)
  {
    Hasher._combine(_:)(0);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a3);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if ((a4 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_10025A540()
{
  result = qword_1004AD390;
  if (!qword_1004AD390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD390);
  }

  return result;
}

unint64_t sub_10025A594()
{
  result = qword_1004AD398;
  if (!qword_1004AD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD398);
  }

  return result;
}

unint64_t sub_10025A5E8()
{
  result = qword_1004AD3A0;
  if (!qword_1004AD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3A0);
  }

  return result;
}

unint64_t sub_10025A63C()
{
  result = qword_1004AD3B0;
  if (!qword_1004AD3B0)
  {
    sub_100003A94(&qword_1004AD3A8);
    sub_1002599A0(&qword_1004AD3B8, type metadata accessor for Config.Cryptex.Cryptex);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3B0);
  }

  return result;
}

unint64_t sub_10025A6F8()
{
  result = qword_1004AD3C8;
  if (!qword_1004AD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3C8);
  }

  return result;
}

unint64_t sub_10025A74C()
{
  result = qword_1004AD3D0;
  if (!qword_1004AD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3D0);
  }

  return result;
}

unint64_t sub_10025A7A0()
{
  result = qword_1004AD3E0;
  if (!qword_1004AD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3E0);
  }

  return result;
}

unint64_t sub_10025A7F4()
{
  result = qword_1004AD3F0;
  if (!qword_1004AD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3F0);
  }

  return result;
}

unint64_t sub_10025A848()
{
  result = qword_1004AD3F8;
  if (!qword_1004AD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3F8);
  }

  return result;
}

unint64_t sub_10025A89C()
{
  result = qword_1004AD408;
  if (!qword_1004AD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD408);
  }

  return result;
}

unint64_t _s10DarwinInit6ConfigV7CryptexVADV10CodingKeysO8rawValueAHSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100487B58, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10025A93C()
{
  result = qword_1004AD418;
  if (!qword_1004AD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD418);
  }

  return result;
}

unint64_t sub_10025A990()
{
  result = qword_1004AD430;
  if (!qword_1004AD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD430);
  }

  return result;
}

unint64_t sub_10025A9E4()
{
  result = qword_1004AD440;
  if (!qword_1004AD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD440);
  }

  return result;
}

unint64_t sub_10025AA38()
{
  result = qword_1004AD448;
  if (!qword_1004AD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD448);
  }

  return result;
}

unint64_t sub_10025AA8C()
{
  result = qword_1004AD458;
  if (!qword_1004AD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD458);
  }

  return result;
}

unint64_t sub_10025AAE0()
{
  result = qword_1004AD468;
  if (!qword_1004AD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD468);
  }

  return result;
}

unint64_t sub_10025AB34()
{
  result = qword_1004AD470;
  if (!qword_1004AD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD470);
  }

  return result;
}

unint64_t sub_10025AB88()
{
  result = qword_1004AD480;
  if (!qword_1004AD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD480);
  }

  return result;
}

unint64_t sub_10025ABDC()
{
  result = qword_1004AD490;
  if (!qword_1004AD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD490);
  }

  return result;
}

uint64_t sub_10025AC30(void *a1, char a2, char a3)
{
  v7 = sub_1000039E8(&qword_1004AE3A8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000E2A8(a1, a1[3]);
  sub_100268D8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_100269610();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10025ADE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v9 = sub_1000039E8(&qword_1004AE390);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10000E2A8(a1, a1[3]);
  sub_100268D38();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

Swift::Int sub_10025AF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (!a2)
  {
    Hasher._combine(_:)(0);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10025B050(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10025B090()
{
  result = qword_1004AD4A0;
  if (!qword_1004AD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD4A0);
  }

  return result;
}

unint64_t sub_10025B0E4()
{
  result = qword_1004AD4A8;
  if (!qword_1004AD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD4A8);
  }

  return result;
}

uint64_t sub_10025B138(void *a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AE370);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000E2A8(a1, a1[3]);
  sub_10025B294();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000039E8(&qword_1004A6B48);
  sub_1000BD1B8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_10025B294()
{
  result = qword_1004AD4B8;
  if (!qword_1004AD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD4B8);
  }

  return result;
}

Swift::Int sub_10025B2E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = a1 + 40;
    do
    {

      String.hash(into:)();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t sub_10025B374(void *a1, char a2, uint64_t a3, int a4)
{
  v15 = a4;
  v8 = sub_1000039E8(&qword_1004AE360);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000E2A8(a1, a1[3]);
  sub_100268CE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v17 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v13 = a3;
    v14 = v15;
    v16 = 1;
    sub_1000039E8(&qword_1004AE350);
    sub_100269474();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

Swift::Int sub_10025B52C(unsigned __int8 a1, uint64_t a2, char a3)
{
  v6 = a1;
  Hasher.init(_seed:)();
  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = a1 & 1;
  }

  Hasher._combine(_:)(v7);
  if (a3 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100250308(v9, a2, a3 & 1);
  }

  return Hasher._finalize()();
}

unint64_t sub_10025B5D8()
{
  result = qword_1004AD4C8;
  if (!qword_1004AD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD4C8);
  }

  return result;
}

uint64_t sub_10025B62C(void *a1, char a2, char a3)
{
  v7 = sub_1000039E8(&qword_1004AE340);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000E2A8(a1, a1[3]);
  sub_100268C90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

Swift::Int sub_10025B7DC(unsigned __int8 a1, char a2)
{
  v4 = a1;
  Hasher.init(_seed:)();
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = a1 & 1;
  }

  Hasher._combine(_:)(v5);
  if (a2 == 2)
  {
    v6 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = a2 & 1;
  }

  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t sub_10025B87C(void *a1, char a2, int a3, uint64_t a4)
{
  HIDWORD(v13) = a3;
  v8 = sub_1000039E8(&qword_1004AE330);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000E2A8(a1, a1[3]);
  sub_100268C3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v18 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v17 = BYTE4(v13);
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = a4;
    v15 = 2;
    sub_1000039E8(&qword_1004A6B48);
    sub_1000BD1B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_10025BAAC()
{
  result = qword_1004AD4E0;
  if (!qword_1004AD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD4E0);
  }

  return result;
}

unint64_t sub_10025BB00()
{
  result = qword_1004AD4F0;
  if (!qword_1004AD4F0)
  {
    sub_100003A94(&qword_1004AD4E8);
    sub_10025BB84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD4F0);
  }

  return result;
}

unint64_t sub_10025BB84()
{
  result = qword_1004AD4F8;
  if (!qword_1004AD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD4F8);
  }

  return result;
}

uint64_t sub_10025BBD8(void *a1, char a2, int a3, uint64_t a4)
{
  HIDWORD(v13) = a3;
  v8 = sub_1000039E8(&qword_1004AE2F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000E2A8(a1, a1[3]);
  sub_100268BE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v18 = 0;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = BYTE4(v13) & 1;
    v16 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = a4;
    v15 = 2;
    sub_1000039E8(&qword_1004AE2E0);
    sub_100269238();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10025BE0C(void *a1, char a2, char a3)
{
  v7 = sub_1000039E8(&qword_1004AE2D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000E2A8(a1, a1[3]);
  sub_100268B94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3 & 1;
    v13 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_10025BFC0()
{
  result = qword_1004AD510;
  if (!qword_1004AD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD510);
  }

  return result;
}

unint64_t sub_10025C014()
{
  result = qword_1004AD518;
  if (!qword_1004AD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD518);
  }

  return result;
}

unint64_t sub_10025C068()
{
  result = qword_1004AD528;
  if (!qword_1004AD528)
  {
    sub_100003A94(&qword_1004AD520);
    sub_1002690F0(&qword_1004AD530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD528);
  }

  return result;
}

unint64_t _s10DarwinInit6ConfigV4UserV10CodingKeysO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488A50, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10025C164()
{
  result = qword_1004AD550;
  if (!qword_1004AD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD550);
  }

  return result;
}

unint64_t sub_10025C1B8()
{
  result = qword_1004AD558;
  if (!qword_1004AD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD558);
  }

  return result;
}

unint64_t sub_10025C20C()
{
  result = qword_1004AD560;
  if (!qword_1004AD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD560);
  }

  return result;
}

uint64_t sub_10025C260(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000039E8(&qword_1004AE280);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000E2A8(a1, a1[3]);
  sub_100268B40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_1000039E8(&qword_1004A6B48);
  sub_1000BD1B8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_10025C424()
{
  result = qword_1004AD570;
  if (!qword_1004AD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD570);
  }

  return result;
}

unint64_t sub_10025C4C4()
{
  result = qword_1004AD580;
  if (!qword_1004AD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD580);
  }

  return result;
}

unint64_t sub_10025C51C()
{
  result = qword_1004AD588;
  if (!qword_1004AD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD588);
  }

  return result;
}

unint64_t sub_10025C574()
{
  result = qword_1004AD590;
  if (!qword_1004AD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD590);
  }

  return result;
}

unint64_t sub_10025C5FC()
{
  result = qword_1004AD5A8;
  if (!qword_1004AD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD5A8);
  }

  return result;
}

unint64_t sub_10025C654()
{
  result = qword_1004AD5B0;
  if (!qword_1004AD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD5B0);
  }

  return result;
}

unint64_t sub_10025C6AC()
{
  result = qword_1004AD5B8;
  if (!qword_1004AD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD5B8);
  }

  return result;
}

unint64_t sub_10025C704()
{
  result = qword_1004AD5C0;
  if (!qword_1004AD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD5C0);
  }

  return result;
}

unint64_t sub_10025C78C()
{
  result = qword_1004AD5D8;
  if (!qword_1004AD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD5D8);
  }

  return result;
}

unint64_t sub_10025C7E4()
{
  result = qword_1004AD5E0;
  if (!qword_1004AD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD5E0);
  }

  return result;
}

unint64_t sub_10025C83C()
{
  result = qword_1004AD5E8;
  if (!qword_1004AD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD5E8);
  }

  return result;
}

unint64_t sub_10025C894()
{
  result = qword_1004AD5F0;
  if (!qword_1004AD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD5F0);
  }

  return result;
}

unint64_t sub_10025C91C()
{
  result = qword_1004AD608;
  if (!qword_1004AD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD608);
  }

  return result;
}

unint64_t sub_10025C974()
{
  result = qword_1004AD610;
  if (!qword_1004AD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD610);
  }

  return result;
}

unint64_t sub_10025C9CC()
{
  result = qword_1004AD618;
  if (!qword_1004AD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD618);
  }

  return result;
}

unint64_t sub_10025CA24()
{
  result = qword_1004AD620;
  if (!qword_1004AD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD620);
  }

  return result;
}

unint64_t sub_10025CAAC()
{
  result = qword_1004AD638;
  if (!qword_1004AD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD638);
  }

  return result;
}

unint64_t sub_10025CB04()
{
  result = qword_1004AD640;
  if (!qword_1004AD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD640);
  }

  return result;
}

unint64_t sub_10025CB5C()
{
  result = qword_1004AD648;
  if (!qword_1004AD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD648);
  }

  return result;
}

unint64_t sub_10025CBB4()
{
  result = qword_1004AD650;
  if (!qword_1004AD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD650);
  }

  return result;
}

unint64_t sub_10025CC3C()
{
  result = qword_1004AD668;
  if (!qword_1004AD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD668);
  }

  return result;
}

unint64_t sub_10025CC94()
{
  result = qword_1004AD670;
  if (!qword_1004AD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD670);
  }

  return result;
}

unint64_t sub_10025CCEC()
{
  result = qword_1004AD678;
  if (!qword_1004AD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD678);
  }

  return result;
}

unint64_t sub_10025CD44()
{
  result = qword_1004AD680;
  if (!qword_1004AD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD680);
  }

  return result;
}

unint64_t sub_10025CDCC()
{
  result = qword_1004AD698;
  if (!qword_1004AD698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD698);
  }

  return result;
}

unint64_t sub_10025CE24()
{
  result = qword_1004AD6A0;
  if (!qword_1004AD6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD6A0);
  }

  return result;
}

unint64_t sub_10025CE7C()
{
  result = qword_1004AD6A8;
  if (!qword_1004AD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD6A8);
  }

  return result;
}

unint64_t sub_10025CED4()
{
  result = qword_1004AD6B0;
  if (!qword_1004AD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD6B0);
  }

  return result;
}

unint64_t sub_10025CF5C()
{
  result = qword_1004AD6C8;
  if (!qword_1004AD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD6C8);
  }

  return result;
}

unint64_t sub_10025CFE4()
{
  result = qword_1004AD6E0;
  if (!qword_1004AD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD6E0);
  }

  return result;
}

unint64_t sub_10025D03C()
{
  result = qword_1004AD6E8;
  if (!qword_1004AD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD6E8);
  }

  return result;
}

unint64_t sub_10025D094()
{
  result = qword_1004AD6F0;
  if (!qword_1004AD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD6F0);
  }

  return result;
}

unint64_t sub_10025D0EC()
{
  result = qword_1004AD6F8;
  if (!qword_1004AD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD6F8);
  }

  return result;
}

unint64_t sub_10025D1BC()
{
  result = qword_1004AD718;
  if (!qword_1004AD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD718);
  }

  return result;
}

unint64_t sub_10025D214()
{
  result = qword_1004AD720;
  if (!qword_1004AD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD720);
  }

  return result;
}

unint64_t sub_10025D26C()
{
  result = qword_1004AD728;
  if (!qword_1004AD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD728);
  }

  return result;
}

unint64_t sub_10025D2F4()
{
  result = qword_1004AD740;
  if (!qword_1004AD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD740);
  }

  return result;
}

unint64_t sub_10025D34C()
{
  result = qword_1004AD748;
  if (!qword_1004AD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD748);
  }

  return result;
}

unint64_t sub_10025D3A4()
{
  result = qword_1004AD750;
  if (!qword_1004AD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD750);
  }

  return result;
}

unint64_t sub_10025D3FC()
{
  result = qword_1004AD758;
  if (!qword_1004AD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD758);
  }

  return result;
}

unint64_t sub_10025D484()
{
  result = qword_1004AD770;
  if (!qword_1004AD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD770);
  }

  return result;
}

unint64_t sub_10025D4DC()
{
  result = qword_1004AD778;
  if (!qword_1004AD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD778);
  }

  return result;
}

unint64_t sub_10025D534()
{
  result = qword_1004AD780;
  if (!qword_1004AD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD780);
  }

  return result;
}

unint64_t sub_10025D58C()
{
  result = qword_1004AD788;
  if (!qword_1004AD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD788);
  }

  return result;
}

unint64_t sub_10025D65C()
{
  result = qword_1004AD7A8;
  if (!qword_1004AD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD7A8);
  }

  return result;
}

unint64_t sub_10025D6B4()
{
  result = qword_1004AD7B0;
  if (!qword_1004AD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD7B0);
  }

  return result;
}

unint64_t sub_10025D70C()
{
  result = qword_1004AD7B8;
  if (!qword_1004AD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD7B8);
  }

  return result;
}

unint64_t sub_10025D794()
{
  result = qword_1004AD7D0;
  if (!qword_1004AD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD7D0);
  }

  return result;
}

unint64_t sub_10025D7EC()
{
  result = qword_1004AD7D8;
  if (!qword_1004AD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD7D8);
  }

  return result;
}

unint64_t sub_10025D844()
{
  result = qword_1004AD7E0;
  if (!qword_1004AD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD7E0);
  }

  return result;
}

unint64_t sub_10025D89C()
{
  result = qword_1004AD7E8;
  if (!qword_1004AD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD7E8);
  }

  return result;
}

unint64_t sub_10025D924()
{
  result = qword_1004AD800;
  if (!qword_1004AD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD800);
  }

  return result;
}

unint64_t sub_10025D9AC()
{
  result = qword_1004AD818;
  if (!qword_1004AD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD818);
  }

  return result;
}

unint64_t sub_10025DA04()
{
  result = qword_1004AD820;
  if (!qword_1004AD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD820);
  }

  return result;
}

unint64_t sub_10025DA5C()
{
  result = qword_1004AD828;
  if (!qword_1004AD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD828);
  }

  return result;
}

unint64_t sub_10025DAB4()
{
  result = qword_1004AD830;
  if (!qword_1004AD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD830);
  }

  return result;
}

unint64_t sub_10025DB3C()
{
  result = qword_1004AD848;
  if (!qword_1004AD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD848);
  }

  return result;
}

unint64_t sub_10025DB94()
{
  result = qword_1004AD850;
  if (!qword_1004AD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD850);
  }

  return result;
}

unint64_t sub_10025DBEC()
{
  result = qword_1004AD858;
  if (!qword_1004AD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD858);
  }

  return result;
}

unint64_t sub_10025DC44()
{
  result = qword_1004AD860;
  if (!qword_1004AD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD860);
  }

  return result;
}

unint64_t sub_10025DCCC()
{
  result = qword_1004AD878;
  if (!qword_1004AD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD878);
  }

  return result;
}

unint64_t sub_10025DD24()
{
  result = qword_1004AD880;
  if (!qword_1004AD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD880);
  }

  return result;
}

unint64_t sub_10025DD7C()
{
  result = qword_1004AD888;
  if (!qword_1004AD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD888);
  }

  return result;
}

unint64_t sub_10025DDD4()
{
  result = qword_1004AD890;
  if (!qword_1004AD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD890);
  }

  return result;
}

unint64_t sub_10025DE5C()
{
  result = qword_1004AD8A8;
  if (!qword_1004AD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD8A8);
  }

  return result;
}

unint64_t sub_10025DEE4()
{
  result = qword_1004AD8C0;
  if (!qword_1004AD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD8C0);
  }

  return result;
}

unint64_t sub_10025DF3C()
{
  result = qword_1004AD8C8;
  if (!qword_1004AD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD8C8);
  }

  return result;
}

unint64_t sub_10025DF94()
{
  result = qword_1004AD8D0;
  if (!qword_1004AD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD8D0);
  }

  return result;
}

unint64_t sub_10025DFEC()
{
  result = qword_1004AD8D8;
  if (!qword_1004AD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD8D8);
  }

  return result;
}

unint64_t sub_10025E074()
{
  result = qword_1004AD8F0;
  if (!qword_1004AD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD8F0);
  }

  return result;
}

unint64_t sub_10025E0CC()
{
  result = qword_1004AD8F8;
  if (!qword_1004AD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD8F8);
  }

  return result;
}

unint64_t sub_10025E124()
{
  result = qword_1004AD900;
  if (!qword_1004AD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD900);
  }

  return result;
}

unint64_t sub_10025E17C()
{
  result = qword_1004AD908;
  if (!qword_1004AD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD908);
  }

  return result;
}

unint64_t sub_10025E204()
{
  result = qword_1004AD920;
  if (!qword_1004AD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD920);
  }

  return result;
}

unint64_t sub_10025E25C()
{
  result = qword_1004AD928;
  if (!qword_1004AD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD928);
  }

  return result;
}

unint64_t sub_10025E2B4()
{
  result = qword_1004AD930;
  if (!qword_1004AD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD930);
  }

  return result;
}

unint64_t sub_10025E30C()
{
  result = qword_1004AD938;
  if (!qword_1004AD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD938);
  }

  return result;
}

unint64_t sub_10025E394()
{
  result = qword_1004AD950;
  if (!qword_1004AD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD950);
  }

  return result;
}

unint64_t sub_10025E3EC()
{
  result = qword_1004AD958;
  if (!qword_1004AD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD958);
  }

  return result;
}

unint64_t sub_10025E444()
{
  result = qword_1004AD960;
  if (!qword_1004AD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD960);
  }

  return result;
}

unint64_t sub_10025E49C()
{
  result = qword_1004AD968;
  if (!qword_1004AD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD968);
  }

  return result;
}

unint64_t sub_10025E56C()
{
  result = qword_1004AD988;
  if (!qword_1004AD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD988);
  }

  return result;
}

unint64_t sub_10025E5C4()
{
  result = qword_1004AD990;
  if (!qword_1004AD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD990);
  }

  return result;
}

unint64_t sub_10025E61C()
{
  result = qword_1004AD998;
  if (!qword_1004AD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD998);
  }

  return result;
}

unint64_t sub_10025E6A4()
{
  result = qword_1004AD9B0;
  if (!qword_1004AD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD9B0);
  }

  return result;
}

unint64_t sub_10025E6FC()
{
  result = qword_1004AD9B8;
  if (!qword_1004AD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD9B8);
  }

  return result;
}

unint64_t sub_10025E754()
{
  result = qword_1004AD9C0;
  if (!qword_1004AD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD9C0);
  }

  return result;
}

unint64_t sub_10025E7AC()
{
  result = qword_1004AD9C8;
  if (!qword_1004AD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD9C8);
  }

  return result;
}

unint64_t sub_10025E834()
{
  result = qword_1004AD9E0;
  if (!qword_1004AD9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD9E0);
  }

  return result;
}

unint64_t sub_10025E88C()
{
  result = qword_1004AD9E8;
  if (!qword_1004AD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD9E8);
  }

  return result;
}

unint64_t sub_10025E8E4()
{
  result = qword_1004AD9F0;
  if (!qword_1004AD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD9F0);
  }

  return result;
}

unint64_t sub_10025E93C()
{
  result = qword_1004AD9F8;
  if (!qword_1004AD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD9F8);
  }

  return result;
}

unint64_t sub_10025E9C4()
{
  result = qword_1004ADA10;
  if (!qword_1004ADA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA10);
  }

  return result;
}

unint64_t sub_10025EA1C()
{
  result = qword_1004ADA18;
  if (!qword_1004ADA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA18);
  }

  return result;
}

unint64_t sub_10025EA74()
{
  result = qword_1004ADA20;
  if (!qword_1004ADA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA20);
  }

  return result;
}

unint64_t sub_10025EACC()
{
  result = qword_1004ADA28;
  if (!qword_1004ADA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA28);
  }

  return result;
}

unint64_t sub_10025EB54()
{
  result = qword_1004ADA40;
  if (!qword_1004ADA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA40);
  }

  return result;
}

unint64_t sub_10025EBAC()
{
  result = qword_1004ADA48;
  if (!qword_1004ADA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA48);
  }

  return result;
}

unint64_t sub_10025EC04()
{
  result = qword_1004ADA50;
  if (!qword_1004ADA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA50);
  }

  return result;
}

unint64_t sub_10025EC5C()
{
  result = qword_1004ADA58;
  if (!qword_1004ADA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA58);
  }

  return result;
}

unint64_t sub_10025ECE4()
{
  result = qword_1004ADA70;
  if (!qword_1004ADA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA70);
  }

  return result;
}

unint64_t sub_10025ED3C()
{
  result = qword_1004ADA78;
  if (!qword_1004ADA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA78);
  }

  return result;
}

unint64_t sub_10025ED94()
{
  result = qword_1004ADA80;
  if (!qword_1004ADA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA80);
  }

  return result;
}

unint64_t sub_10025EDEC()
{
  result = qword_1004ADA88;
  if (!qword_1004ADA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADA88);
  }

  return result;
}

unint64_t sub_10025EE74()
{
  result = qword_1004ADAA0;
  if (!qword_1004ADAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADAA0);
  }

  return result;
}

unint64_t sub_10025EECC()
{
  result = qword_1004ADAA8;
  if (!qword_1004ADAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADAA8);
  }

  return result;
}

unint64_t sub_10025EF24()
{
  result = qword_1004ADAB0;
  if (!qword_1004ADAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADAB0);
  }

  return result;
}

unint64_t sub_10025EF7C()
{
  result = qword_1004ADAB8;
  if (!qword_1004ADAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADAB8);
  }

  return result;
}

unint64_t sub_10025F004()
{
  result = qword_1004ADAD0;
  if (!qword_1004ADAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADAD0);
  }

  return result;
}

unint64_t sub_10025F05C()
{
  result = qword_1004ADAD8;
  if (!qword_1004ADAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADAD8);
  }

  return result;
}

unint64_t sub_10025F0B4()
{
  result = qword_1004ADAE0;
  if (!qword_1004ADAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADAE0);
  }

  return result;
}

unint64_t sub_10025F10C()
{
  result = qword_1004ADAE8;
  if (!qword_1004ADAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADAE8);
  }

  return result;
}

unint64_t sub_10025F194()
{
  result = qword_1004ADB00;
  if (!qword_1004ADB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADB00);
  }

  return result;
}

unint64_t sub_10025F1EC()
{
  result = qword_1004ADB08;
  if (!qword_1004ADB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADB08);
  }

  return result;
}

unint64_t sub_10025F244()
{
  result = qword_1004ADB10;
  if (!qword_1004ADB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADB10);
  }

  return result;
}

unint64_t sub_10025F29C()
{
  result = qword_1004ADB18;
  if (!qword_1004ADB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADB18);
  }

  return result;
}

unint64_t sub_10025F324()
{
  result = qword_1004ADB30;
  if (!qword_1004ADB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADB30);
  }

  return result;
}

unint64_t sub_10025F37C()
{
  result = qword_1004ADB38;
  if (!qword_1004ADB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADB38);
  }

  return result;
}

unint64_t sub_10025F3D4()
{
  result = qword_1004ADB40;
  if (!qword_1004ADB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADB40);
  }

  return result;
}

unint64_t sub_10025F42C()
{
  result = qword_1004ADB48;
  if (!qword_1004ADB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADB48);
  }

  return result;
}

uint64_t sub_10025F4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72);
  v4 = *(a1 + 104);
  v16 = *(a1 + 88);
  v3 = v16;
  v17 = v4;
  v18 = *(a1 + 120);
  v5 = v18;
  v11 = *(a1 + 8);
  v7 = *(a1 + 40);
  v12 = *(a1 + 24);
  v6 = v12;
  v13 = v7;
  v14 = *(a1 + 56);
  v8 = v14;
  v15 = v2;
  *a2 = v11;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  *(a2 + 112) = v5;
  return sub_100013E54(&v11, v10, &qword_1004AD1E0);
}

double sub_10025F53C(__int128 *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v24 = a1[5];
  v25 = v4;
  v26 = *(a1 + 14);
  v5 = a1[1];
  v19 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v3;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 56);
  v27[2] = *(a2 + 40);
  v27[3] = v10;
  v27[0] = v8;
  v27[1] = v9;
  v11 = *(a2 + 72);
  v12 = *(a2 + 88);
  v13 = *(a2 + 104);
  v28 = *(a2 + 120);
  v27[5] = v12;
  v27[6] = v13;
  v27[4] = v11;
  sub_100013E54(&v19, v18, &qword_1004AD1E0);
  sub_100013F2C(v27, &qword_1004AD1E0);
  v14 = v22;
  *(a2 + 72) = v23;
  v15 = v25;
  *(a2 + 88) = v24;
  *(a2 + 104) = v15;
  *(a2 + 8) = v19;
  result = *&v20;
  v17 = v21;
  *(a2 + 24) = v20;
  *(a2 + 40) = v17;
  *(a2 + 120) = v26;
  *(a2 + 56) = v14;
  return result;
}

uint64_t sub_10025F63C@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v14 = a1[4];
  v2 = v14;
  v15 = v3;
  v5 = a1[7];
  v16 = a1[6];
  v4 = v16;
  v17 = v5;
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v8 = a1[3];
  v12 = a1[2];
  v7 = v12;
  v13 = v8;
  *a2 = v11[0];
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v2;
  a2[5] = v3;
  a2[6] = v4;
  a2[7] = v5;
  return sub_100013E54(v11, &v10, &qword_1004ACDC0);
}

double sub_10025F6AC(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v23 = a1[4];
  v24 = v3;
  v4 = a1[7];
  v25 = a1[6];
  v26 = v4;
  v5 = a1[1];
  v19 = *a1;
  v20 = v5;
  v6 = a1[3];
  v21 = a1[2];
  v22 = v6;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  v27[2] = a2[2];
  v27[3] = v9;
  v27[0] = v7;
  v27[1] = v8;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  v27[6] = a2[6];
  v27[7] = v12;
  v27[4] = v10;
  v27[5] = v11;
  sub_100013E54(&v19, &v18, &qword_1004ACDC0);
  sub_100013F2C(v27, &qword_1004ACDC0);
  v13 = v24;
  a2[4] = v23;
  a2[5] = v13;
  v14 = v26;
  a2[6] = v25;
  a2[7] = v14;
  v15 = v20;
  *a2 = v19;
  a2[1] = v15;
  result = *&v21;
  v17 = v22;
  a2[2] = v21;
  a2[3] = v17;
  return result;
}

uint64_t sub_10025F770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *a2 = *(a1 + 136);
  *(a2 + 8) = v2;
}

uint64_t sub_10025F788(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 136) = v3;
  *(a2 + 144) = v4;
  return result;
}

uint64_t sub_10025F7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  *a2 = *(a1 + 128);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_10025F838@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (a1 + 208), 0x109uLL);
  memcpy(a2, (a1 + 208), 0x109uLL);
  return sub_100013E54(__dst, &v5, &qword_1004ACDC8);
}

void *sub_10025F8A8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v6, (a2 + 208), 0x109uLL);
  sub_100013E54(__dst, &v4, &qword_1004ACDC8);
  sub_100013F2C(v6, &qword_1004ACDC8);
  return memcpy((a2 + 208), __dst, 0x109uLL);
}

uint64_t sub_10025F948(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 488) = v3;
  return result;
}

uint64_t sub_10025F98C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 480);
  v2 = *(a1 + 488);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_10025FA24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Config(0) + 40) + 8);
}

uint64_t sub_10025FA84@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config(0) + 44));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  v5 = v14[0];
  *(v14 + 9) = *(v3 + 73);
  v6 = *(v14 + 9);
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a2[2] = v12;
  a2[3] = v4;
  a2[4] = v5;
  *(a2 + 73) = v6;
  *a2 = v7;
  a2[1] = v8;
  return sub_100013E54(v11, &v10, &qword_1004ACE00);
}

uint64_t sub_10025FB10@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 48);
  v4 = *(v3 + 56);
  v6 = *(v3 + 88);
  v14 = *(v3 + 72);
  v5 = v14;
  v15 = v6;
  v12 = *(v3 + 40);
  v13 = v4;
  v8 = *(v3 + 24);
  v11[0] = *(v3 + 8);
  v7 = v11[0];
  v11[1] = v8;
  a2[2] = v12;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  *a2 = v7;
  a2[1] = v8;
  return sub_100013E54(v11, &v10, &qword_1004AD1F0);
}

uint64_t sub_10025FB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 48);
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a2 = v12[0];
  *(a2 + 16) = v7;
  *(a2 + 64) = v4;
  *(a2 + 80) = v5;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  *(a2 + 96) = v6;
  return sub_100013E54(v12, v11, &qword_1004ACE18);
}

uint64_t sub_10025FC54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Config(0) + 60) + 8);
}

uint64_t sub_10025FCAC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 64);
  v4 = *(v3 + 24);
  v9[0] = *(v3 + 8);
  v9[1] = v4;
  v10[0] = *(v3 + 40);
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 49);
  v6 = *(v10 + 9);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 41) = v6;
  return sub_100013E54(v9, &v8, &qword_1004ACE78);
}

uint64_t sub_10025FD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 64);
  v13 = *(v3 + 64);
  v4 = v13;
  v5 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v5;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a2 + 32) = v11;
  *(a2 + 48) = v5;
  *(a2 + 64) = v4;
  *a2 = v7;
  *(a2 + 16) = v6;
  return sub_100013E54(v10, v9, &qword_1004AD200);
}

uint64_t sub_10025FDC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Config(0) + 72) + 8);
}

uint64_t sub_10025FE18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Config(0) + 76) + 8);
}

uint64_t sub_10025FEA0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 92);
  v4 = *(v3 + 56);
  v12 = *(v3 + 40);
  v13 = v4;
  v14[0] = *(v3 + 72);
  v5 = v14[0];
  *(v14 + 9) = *(v3 + 81);
  v6 = *(v14 + 9);
  v8 = *(v3 + 24);
  v11[0] = *(v3 + 8);
  v7 = v11[0];
  v11[1] = v8;
  a2[2] = v12;
  a2[3] = v4;
  a2[4] = v5;
  *(a2 + 73) = v6;
  *a2 = v7;
  a2[1] = v8;
  return sub_100013E54(v11, &v10, &qword_1004ACE40);
}

uint64_t sub_10025FF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 92);
  v17 = *(v3 + 96);
  v4 = v17;
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v6 = v15;
  v16 = v5;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a2 = v12[0];
  *(a2 + 16) = v7;
  *(a2 + 64) = v6;
  *(a2 + 80) = v5;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  *(a2 + 96) = v4;
  return sub_100013E54(v12, v11, &qword_1004ACE48);
}

uint64_t sub_10025FFCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Config(0) + 96) + 8);
}

uint64_t sub_100260024@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Config(0) + 100) + 8);
}

uint64_t sub_10026009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_1002600B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_100260100@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_10026010C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_100260150@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100260198@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  v6 = a1[10];
  v7 = a1[11];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  return sub_10021E528(v3);
}

uint64_t sub_1002601D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1002601E4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 104) = v4;
  *(a2 + 112) = v3;
  return result;
}

uint64_t sub_100260228@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[12];
  v2 = a1[13];
  v4 = a1[14];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100260294@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1002602A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[4];
  v3 = a1[5];
  *a2 = a1[3];
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_100260308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_100260320(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_100260374@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_1002603BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1002603D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 32) = *result;
  *(a2 + 40) = v2;
  return result;
}

uint64_t sub_1002603E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_1002603FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_100260450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 120);
  v12[6] = *(a1 + 104);
  v12[7] = v3;
  v13 = *(a1 + 136);
  v4 = *(a1 + 24);
  v5 = *(a1 + 56);
  v12[2] = *(a1 + 40);
  v12[3] = v5;
  v12[4] = *(a1 + 72);
  v12[5] = v2;
  v12[0] = *(a1 + 8);
  v12[1] = v4;
  v6 = *(a1 + 88);
  v7 = *(a1 + 120);
  *(a2 + 96) = *(a1 + 104);
  *(a2 + 112) = v7;
  *(a2 + 128) = *(a1 + 136);
  v8 = *(a1 + 24);
  v9 = *(a1 + 56);
  *(a2 + 32) = *(a1 + 40);
  *(a2 + 48) = v9;
  *(a2 + 64) = *(a1 + 72);
  *(a2 + 80) = v6;
  *a2 = *(a1 + 8);
  *(a2 + 16) = v8;
  return sub_100013E54(v12, v11, &qword_1004ACE98);
}

double sub_100260504(__int128 *a1, uint64_t a2)
{
  v3 = a1[7];
  v23 = a1[6];
  v24 = v3;
  v25 = *(a1 + 128);
  v4 = a1[3];
  v19 = a1[2];
  v20 = v4;
  v5 = a1[5];
  v21 = a1[4];
  v22 = v5;
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  v7 = *(a2 + 88);
  v8 = *(a2 + 120);
  v26[6] = *(a2 + 104);
  v26[7] = v8;
  v27 = *(a2 + 136);
  v9 = *(a2 + 24);
  v10 = *(a2 + 56);
  v26[2] = *(a2 + 40);
  v26[3] = v10;
  v26[4] = *(a2 + 72);
  v26[5] = v7;
  v26[0] = *(a2 + 8);
  v26[1] = v9;
  sub_100013E54(&v17, v16, &qword_1004ACE98);
  sub_100013F2C(v26, &qword_1004ACE98);
  v11 = v21;
  *(a2 + 88) = v22;
  v12 = v24;
  *(a2 + 104) = v23;
  *(a2 + 120) = v12;
  v13 = v17;
  *(a2 + 24) = v18;
  result = *&v19;
  v15 = v20;
  *(a2 + 40) = v19;
  *(a2 + 56) = v15;
  *(a2 + 72) = v11;
  *(a2 + 136) = v25;
  *(a2 + 8) = v13;
  return result;
}

uint64_t sub_10026060C@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[5];
  v3 = a1[7];
  v20 = a1[6];
  v21[0] = v3;
  *(v21 + 9) = *(a1 + 121);
  v4 = a1[1];
  v5 = a1[3];
  v16 = a1[2];
  v6 = v16;
  v17 = v5;
  v7 = a1[3];
  v8 = a1[5];
  v18 = a1[4];
  v9 = v18;
  v19 = v8;
  v10 = a1[1];
  v15[0] = *a1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = a1[7];
  a2[6] = v20;
  a2[7] = v12;
  *(a2 + 121) = *(a1 + 121);
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v9;
  a2[5] = v2;
  *a2 = v11;
  a2[1] = v4;
  return sub_100013E54(v15, &v14, &qword_1004AD378);
}

__n128 sub_1002606A4(_OWORD *a1, __n128 *a2)
{
  v3 = *(a1 + 7);
  v22 = *(a1 + 6);
  v23[0] = v3;
  *(v23 + 9) = *(a1 + 121);
  v4 = *(a1 + 3);
  v18 = *(a1 + 2);
  v19 = v4;
  v5 = *(a1 + 5);
  v20 = *(a1 + 4);
  v21 = v5;
  v6 = *(a1 + 1);
  v16 = *a1;
  v17 = v6;
  v7 = a2[7];
  v24[6] = a2[6];
  v25[0] = v7;
  *(v25 + 9) = *(a2 + 121);
  v8 = a2[3];
  v24[2] = a2[2];
  v24[3] = v8;
  v9 = a2[5];
  v24[4] = a2[4];
  v24[5] = v9;
  v10 = a2[1];
  v24[0] = *a2;
  v24[1] = v10;
  sub_100013E54(&v16, &v15, &qword_1004AD378);
  sub_100013F2C(v24, &qword_1004AD378);
  v11 = v23[0];
  a2[6] = v22;
  a2[7] = v11;
  *(a2 + 121) = *(v23 + 9);
  v12 = v19;
  a2[2] = v18;
  a2[3] = v12;
  v13 = v21;
  a2[4] = v20;
  a2[5] = v13;
  result = v17;
  *a2 = v16;
  a2[1] = result;
  return result;
}

uint64_t sub_100260794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  v4 = *(a1 + 208);
  v10 = *(a1 + 192);
  v3 = v10;
  v11 = v4;
  v12 = *(a1 + 224);
  v6 = *(a1 + 160);
  v9[0] = *(a1 + 144);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a2 + 80) = v12;
  *(a2 + 32) = v2;
  *(a2 + 48) = v3;
  *(a2 + 64) = v4;
  *a2 = v5;
  *(a2 + 16) = v6;
  return sub_100013E54(v9, v8, &qword_1004AD380);
}

double sub_100260800(__int128 *a1, uint64_t a2)
{
  v3 = a1[2];
  v4 = a1[4];
  v16 = a1[3];
  v17 = v4;
  v18 = *(a1 + 10);
  v5 = a1[1];
  v13 = *a1;
  v14 = v5;
  v15 = v3;
  v6 = *(a2 + 192);
  v19[2] = *(a2 + 176);
  v19[3] = v6;
  v19[4] = *(a2 + 208);
  v20 = *(a2 + 224);
  v7 = *(a2 + 160);
  v19[0] = *(a2 + 144);
  v19[1] = v7;
  sub_100013E54(&v13, v12, &qword_1004AD380);
  sub_100013F2C(v19, &qword_1004AD380);
  v8 = v16;
  v9 = v17;
  *(a2 + 176) = v15;
  *(a2 + 192) = v8;
  *(a2 + 208) = v9;
  *(a2 + 224) = v18;
  result = *&v13;
  v11 = v14;
  *(a2 + 144) = v13;
  *(a2 + 160) = v11;
  return result;
}

uint64_t sub_1002608DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 240) = v3;
  return result;
}

uint64_t sub_100260920@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 232);
  v2 = *(a1 + 240);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100260968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 256);
  *a2 = *(a1 + 248);
  *(a2 + 8) = v2;
}

uint64_t sub_100260980(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 248) = v3;
  *(a2 + 256) = v4;
  return result;
}

uint64_t sub_1002609CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1002609D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_100260A1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100260A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v2;
}

uint64_t sub_100260A94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_100260AE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100260AF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 48) = *result;
  *(a2 + 56) = v2;
  return result;
}

uint64_t sub_100260B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_100260B20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  return result;
}

uint64_t sub_100260B74@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 80);
  *a2 = *(result + 72);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100260B88(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 72) = *result;
  *(a2 + 80) = v2;
  return result;
}

uint64_t sub_100260B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  *a2 = *(a1 + 64);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_100260BB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 64) = v3;
  *(a2 + 72) = v4;
  *(a2 + 80) = v5;
  return result;
}

uint64_t sub_100260C08@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 104);
  *a2 = *(result + 96);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100260C1C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 96) = *result;
  *(a2 + 104) = v2;
  return result;
}

uint64_t sub_100260C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  *a2 = *(a1 + 88);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_100260C48(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 88) = v3;
  *(a2 + 96) = v4;
  *(a2 + 104) = v5;
  return result;
}

uint64_t sub_100260C9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 128);
  *a2 = *(result + 120);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100260CB0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 120) = *result;
  *(a2 + 128) = v2;
  return result;
}

uint64_t sub_100260CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  *a2 = *(a1 + 112);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_100260CDC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 112) = v3;
  *(a2 + 120) = v4;
  *(a2 + 128) = v5;
  return result;
}

uint64_t sub_100260D30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100260D44(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 8) = *result;
  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_100260D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_100260D70(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_100260DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v2;
}

uint64_t sub_100260DE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_100260E3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_100260E80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100260EC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[7];
  v2 = a1[8];
  v4 = a1[9];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100260F10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  return sub_10021E528(v3);
}

uint64_t sub_100260F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
}

uint64_t sub_100260F80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 56) = v3;
  *(a2 + 64) = v4;
  return result;
}

uint64_t sub_100260FD8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_10026101C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 72);
  v2 = *(a1 + 80);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100261074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 96);
  *a2 = *(a1 + 88);
  *(a2 + 8) = v2;
}

uint64_t sub_10026108C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 88) = v3;
  *(a2 + 96) = v4;
  return result;
}

uint64_t sub_1002610D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1002610E4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  return result;
}

uint64_t sub_100261128@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[13];
  v2 = a1[14];
  v4 = a1[15];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100261170@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 144);
  *a2 = *(result + 136);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100261184(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 136) = *result;
  *(a2 + 144) = v2;
  return result;
}

uint64_t sub_100261198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  *a2 = *(a1 + 128);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_1002611B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 128) = v3;
  *(a2 + 136) = v4;
  *(a2 + 144) = v5;
  return result;
}

uint64_t sub_10026125C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 44);
  v4 = *(v3 + 16);
  *a2 = *(v3 + 8);
  a2[1] = v4;
}

uint64_t sub_10026130C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Config.Cryptex.Cryptex(0);
  *a2 = *(a1 + *(result + 52) + 8);
  return result;
}

uint64_t sub_100261348(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Config.Cryptex.Cryptex(0);
  *(a2 + *(result + 52) + 8) = v3;
  return result;
}

uint64_t sub_100261380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 52));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_1002613D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1002613E4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_100261428@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_100261470@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_10026147C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1002614C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[4];
  v3 = a1[5];
  *a2 = a1[3];
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_100261530@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_10026153C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_100261580@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[4];
  v3 = a1[5];
  *a2 = a1[3];
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_100261718@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config.Diavlo(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a2 = v4;
  a2[1] = v5;

  return sub_100031994(v4, v5);
}

uint64_t sub_100261770@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_10026177C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1002617C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100261808@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100261814(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_100261858@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v2 = a1[4];
  v4 = a1[5];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_1002618B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
}

uint64_t sub_1002618D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 48) = v3;
  *(a2 + 56) = v4;
  return result;
}

uint64_t sub_10026191C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100261928(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 72) = v4;
  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_10026196C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[8];
  v2 = a1[9];
  v4 = a1[10];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_1002619B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1002619C0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  return result;
}

uint64_t sub_100261A04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[11];
  v2 = a1[12];
  v4 = a1[13];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100261A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 120);
  *a2 = *(a1 + 112);
  *(a2 + 8) = v2;
}

uint64_t sub_100261A7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 112) = v3;
  *(a2 + 120) = v4;
  return result;
}

uint64_t sub_100261AC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100261AD4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_100261B18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100261B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v2;
}

uint64_t sub_100261B90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_100261BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
}

uint64_t sub_100261BFC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_100261C54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_100261C98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100261CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *a2 = *(a1 + 72);
  *(a2 + 8) = v2;
}

uint64_t sub_100261CF8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 72) = v3;
  *(a2 + 80) = v4;
  return result;
}

uint64_t sub_100261D44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100261D88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100261D94(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_100261DD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v2 = a1[4];
  v4 = a1[5];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100261E20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100261E2C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_100261E70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = a1[8];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100261EB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100261EC0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  return result;
}

uint64_t sub_100261F04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[9];
  v2 = a1[10];
  v4 = a1[11];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100261F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_100261F9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100261FA8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_100261FEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100262034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100262040(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_100262084@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v2 = a1[4];
  v4 = a1[5];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_1002620CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = v3;
  a2[1] = v2;
  return sub_10025B050(v3);
}

uint64_t sub_1002620DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 8);
  sub_10025B050(*a1);
  result = sub_100219A48(v5);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_100262130@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return sub_10025B050(v2);
}

uint64_t sub_10026218C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1002621D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100262210@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100262224(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 48) = *result;
  *(a2 + 56) = v2;
  return result;
}

uint64_t sub_100262238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_100262250(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  return result;
}

uint64_t sub_1002622B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1002622F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_100262350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_100262368(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1002623B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  v3 = *(a1 + 32);
  *(a2 + 8) = v3;
  return sub_1002593F0(v2, v3);
}

uint64_t sub_1002623CC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a2 + 32);
  sub_1002593F0(*a1, v5);
  result = sub_100218EE4(v4, v6);
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_10026242C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 16) = v3;

  return sub_1002593F0(v2, v3);
}

uint64_t sub_1002624D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
}

uint64_t sub_1002624F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_100262554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_100262588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
}

uint64_t sub_1002625A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_100262618@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_10026262C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 8) = *result;
  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_100262640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_100262658(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1002626AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1002626C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 32) = *result;
  *(a2 + 40) = v2;
  return result;
}

uint64_t sub_1002626D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_1002626EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_100262740@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 64);
  *a2 = *(result + 56);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100262754(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 56) = *result;
  *(a2 + 64) = v2;
  return result;
}

uint64_t sub_100262768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_100262780(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 48) = v3;
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  return result;
}

uint64_t sub_1002627E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_100262824@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 72);
  v2 = *(a1 + 80);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100262870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_100262888(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1002628EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
}

uint64_t sub_100262904(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_100262950(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_100262994@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1002629DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_100262A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
}

uint64_t sub_100262A24(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_100262A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 88);
  v13 = *(a1 + 72);
  v3 = v13;
  v14 = v4;
  v15 = *(a1 + 104);
  v5 = v15;
  v6 = *(a1 + 24);
  v10[0] = *(a1 + 8);
  v10[1] = v6;
  v11 = *(a1 + 40);
  v7 = v11;
  v12 = v2;
  *a2 = v10[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *(a2 + 80) = v4;
  *(a2 + 96) = v5;
  return sub_100013E54(v10, v9, &qword_1004AD190);
}

double sub_100262AE8(__int128 *a1, uint64_t a2)
{
  v3 = a1[5];
  v20 = a1[4];
  v21 = v3;
  v22 = *(a1 + 12);
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v5 = a1[3];
  v18 = a1[2];
  v19 = v5;
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v23[0] = *(a2 + 8);
  v23[1] = v6;
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  v10 = *(a2 + 88);
  v24 = *(a2 + 104);
  v23[4] = v9;
  v23[5] = v10;
  v23[2] = v7;
  v23[3] = v8;
  sub_100013E54(&v16, v15, &qword_1004AD190);
  sub_100013F2C(v23, &qword_1004AD190);
  v11 = v18;
  *(a2 + 56) = v19;
  v12 = v21;
  *(a2 + 72) = v20;
  *(a2 + 88) = v12;
  *(a2 + 104) = v22;
  result = *&v16;
  v14 = v17;
  *(a2 + 8) = v16;
  *(a2 + 24) = v14;
  *(a2 + 40) = v11;
  return result;
}

uint64_t sub_100262BD0@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v13 = a1[4];
  v2 = v13;
  v14 = v3;
  v15 = a1[6];
  v4 = v15;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v11 = a1[2];
  v7 = v11;
  v12 = v6;
  *a2 = v10[0];
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;
  a2[4] = v2;
  a2[5] = v3;
  a2[6] = v4;
  return sub_100013E54(v10, &v9, &qword_1004AD500);
}

__n128 sub_100262C38(__n128 *a1, __n128 *a2)
{
  v3 = a1[5];
  v19 = a1[4];
  v20 = v3;
  v21 = a1[6];
  v4 = a1[1];
  v15 = *a1;
  v16 = v4;
  v5 = a1[3];
  v17 = a1[2];
  v18 = v5;
  v6 = a2[1];
  v22[0] = *a2;
  v22[1] = v6;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[6];
  v22[5] = a2[5];
  v22[6] = v9;
  v10 = a2[4];
  v22[3] = v8;
  v22[4] = v10;
  v22[2] = v7;
  sub_100013E54(&v15, &v14, &qword_1004AD500);
  sub_100013F2C(v22, &qword_1004AD500);
  v11 = v20;
  a2[4] = v19;
  a2[5] = v11;
  a2[6] = v21;
  v12 = v16;
  *a2 = v15;
  a2[1] = v12;
  result = v18;
  a2[2] = v17;
  a2[3] = result;
  return result;
}

uint64_t sub_100262D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 120);
  *a2 = *(a1 + 112);
  *(a2 + 8) = v2;
}

uint64_t sub_100262D2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 112) = v3;
  *(a2 + 120) = v4;
  return result;
}

uint64_t sub_100262D90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 136);
  *a2 = *(a1 + 128);
  a2[1] = v2;
}

uint64_t sub_100262DA0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 128) = v3;
  *(a2 + 136) = v4;
  return result;
}

uint64_t sub_100262DFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 152);
  *a2 = *(a1 + 144);
  a2[1] = v2;
}

uint64_t sub_100262E0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 144) = v3;
  *(a2 + 152) = v4;
  return result;
}

uint64_t sub_100262E5C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 168) = v3;
  return result;
}

uint64_t sub_100262EA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 160);
  v2 = *(a1 + 168);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100262EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 184);
  *a2 = *(a1 + 176);
  *(a2 + 8) = v2;
}

uint64_t sub_100262F10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 176) = v3;
  *(a2 + 184) = v4;
  return result;
}

uint64_t sub_100262F5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 208);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100262F68(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 200) = v4;
  *(a2 + 208) = v3;
  return result;
}

uint64_t sub_100262FAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[24];
  v2 = a1[25];
  v4 = a1[26];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_100262FF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 224);
  v3 = *(a1 + 232);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100263000(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 224) = v4;
  *(a2 + 232) = v3;
  return result;
}

uint64_t sub_100263044@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[27];
  v2 = a1[28];
  v4 = a1[29];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_10026308C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  return sub_1002591F8(v3);
}

uint64_t sub_1002630B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v2;
  v4 = *(a1 + 88);
  v8 = *(a1 + 72);
  v3 = v8;
  v9 = v4;
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  return sub_100013E54(v7, &v6, &qword_1004AD188);
}

double sub_100263110(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v11 = *a1;
  v12 = v3;
  v4 = a1[3];
  v13 = a1[2];
  v14 = v4;
  v5 = *(a2 + 56);
  v15[0] = *(a2 + 40);
  v15[1] = v5;
  v6 = *(a2 + 88);
  v15[2] = *(a2 + 72);
  v15[3] = v6;
  sub_100013E54(&v11, &v10, &qword_1004AD188);
  sub_100013F2C(v15, &qword_1004AD188);
  v7 = v12;
  *(a2 + 40) = v11;
  *(a2 + 56) = v7;
  result = *&v13;
  v9 = v14;
  *(a2 + 72) = v13;
  *(a2 + 88) = v9;
  return result;
}

uint64_t sub_1002631C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100263204@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100263250(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_100263294@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1002632E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100263324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100263370(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1002633B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1002633F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100263400(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_100263444@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_1002634A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000039E8(&qword_1004ACDA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_100263570(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000039E8(&qword_1004ACDA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100263620()
{
  sub_1002638A0();
  if (v0 <= 0x3F)
  {
    sub_100263A2C();
    if (v1 <= 0x3F)
    {
      sub_100263C0C();
      if (v2 <= 0x3F)
      {
        sub_100263D98();
        if (v3 <= 0x3F)
        {
          sub_100263F24();
          if (v4 <= 0x3F)
          {
            sub_100264188();
            if (v5 <= 0x3F)
            {
              sub_100264374();
              if (v6 <= 0x3F)
              {
                sub_1002645D8();
                if (v7 <= 0x3F)
                {
                  sub_100264764();
                  if (v8 <= 0x3F)
                  {
                    sub_1002648F0();
                    if (v9 <= 0x3F)
                    {
                      sub_100264AD0();
                      if (v10 <= 0x3F)
                      {
                        sub_100264C5C();
                        if (v11 <= 0x3F)
                        {
                          sub_100264E74();
                          if (v12 <= 0x3F)
                          {
                            sub_100265000();
                            if (v13 <= 0x3F)
                            {
                              sub_10026518C();
                              if (v14 <= 0x3F)
                              {
                                sub_1002653CC();
                                if (v15 <= 0x3F)
                                {
                                  sub_100265670();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_100265778();
                                    if (v17 <= 0x3F)
                                    {
                                      sub_100265904();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_100265A90();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_100265C1C();
                                          if (v20 <= 0x3F)
                                          {
                                            sub_100265E88();
                                            if (v21 <= 0x3F)
                                            {
                                              sub_100266014();
                                              if (v22 <= 0x3F)
                                              {
                                                swift_cvw_initStructMetadataWithLayoutString();
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
        }
      }
    }
  }
}

void sub_1002638A0()
{
  if (!qword_1004ADBC8)
  {
    sub_100003A94(&qword_1004AD1E0);
    sub_100263924();
    sub_1002639A8();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADBC8);
    }
  }
}

unint64_t sub_100263924()
{
  result = qword_1004ADBD0;
  if (!qword_1004ADBD0)
  {
    sub_100003A94(&qword_1004AD1E0);
    sub_100218D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADBD0);
  }

  return result;
}

unint64_t sub_1002639A8()
{
  result = qword_1004ADBD8;
  if (!qword_1004ADBD8)
  {
    sub_100003A94(&qword_1004AD1E0);
    sub_100218D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADBD8);
  }

  return result;
}

void sub_100263A2C()
{
  if (!qword_1004ADBE0)
  {
    sub_100003A94(&qword_1004ADBE8);
    sub_100263AB0();
    sub_100263B88();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADBE0);
    }
  }
}

unint64_t sub_100263AB0()
{
  result = qword_1004ADBF0;
  if (!qword_1004ADBF0)
  {
    sub_100003A94(&qword_1004ADBE8);
    sub_100263B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADBF0);
  }

  return result;
}

unint64_t sub_100263B34()
{
  result = qword_1004ADBF8;
  if (!qword_1004ADBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADBF8);
  }

  return result;
}

unint64_t sub_100263B88()
{
  result = qword_1004ADC00;
  if (!qword_1004ADC00)
  {
    sub_100003A94(&qword_1004ADBE8);
    sub_10025950C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC00);
  }

  return result;
}

void sub_100263C0C()
{
  if (!qword_1004ADC08)
  {
    sub_100003A94(&qword_1004AD1C8);
    sub_100263C90();
    sub_100263D14();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADC08);
    }
  }
}

unint64_t sub_100263C90()
{
  result = qword_1004ADC10;
  if (!qword_1004ADC10)
  {
    sub_100003A94(&qword_1004AD1C8);
    sub_100218F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC10);
  }

  return result;
}

unint64_t sub_100263D14()
{
  result = qword_1004ADC18;
  if (!qword_1004ADC18)
  {
    sub_100003A94(&qword_1004AD1C8);
    sub_100218F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC18);
  }

  return result;
}

void sub_100263D98()
{
  if (!qword_1004ADC20)
  {
    sub_100003A94(&qword_1004ACE90);
    sub_100263E1C();
    sub_100263EA0();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADC20);
    }
  }
}

unint64_t sub_100263E1C()
{
  result = qword_1004ADC28;
  if (!qword_1004ADC28)
  {
    sub_100003A94(&qword_1004ACE90);
    sub_100259CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC28);
  }

  return result;
}

unint64_t sub_100263EA0()
{
  result = qword_1004ADC30;
  if (!qword_1004ADC30)
  {
    sub_100003A94(&qword_1004ACE90);
    sub_100259560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC30);
  }

  return result;
}

void sub_100263F24()
{
  if (!qword_1004ADC38)
  {
    sub_100003A94(&qword_1004ADC40);
    sub_100263FA8();
    sub_100264104();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADC38);
    }
  }
}

unint64_t sub_100263FA8()
{
  result = qword_1004ADC48;
  if (!qword_1004ADC48)
  {
    sub_100003A94(&qword_1004ADC40);
    sub_10026402C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC48);
  }

  return result;
}

unint64_t sub_10026402C()
{
  result = qword_1004ADC50;
  if (!qword_1004ADC50)
  {
    sub_100003A94(&qword_1004AD230);
    sub_1002640B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC50);
  }

  return result;
}

unint64_t sub_1002640B0()
{
  result = qword_1004ADC58;
  if (!qword_1004ADC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC58);
  }

  return result;
}

unint64_t sub_100264104()
{
  result = qword_1004ADC60;
  if (!qword_1004ADC60)
  {
    sub_100003A94(&qword_1004ADC40);
    sub_1002595B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC60);
  }

  return result;
}

void sub_100264188()
{
  if (!qword_1004ADC68)
  {
    sub_100003A94(&qword_1004AD1B8);
    sub_10026420C();
    sub_1002642C0();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADC68);
    }
  }
}

unint64_t sub_10026420C()
{
  result = qword_1004ADC70;
  if (!qword_1004ADC70)
  {
    sub_100003A94(&qword_1004AD1B8);
    sub_1002599A0(&qword_1004AD300, type metadata accessor for Config.Diavlo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC70);
  }

  return result;
}

unint64_t sub_1002642C0()
{
  result = qword_1004ADC78;
  if (!qword_1004ADC78)
  {
    sub_100003A94(&qword_1004AD1B8);
    sub_1002599A0(&qword_1004AD248, type metadata accessor for Config.Diavlo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC78);
  }

  return result;
}

void sub_100264374()
{
  if (!qword_1004ADC80)
  {
    sub_100003A94(&qword_1004ADC88);
    sub_1002643F8();
    sub_100264554();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADC80);
    }
  }
}

unint64_t sub_1002643F8()
{
  result = qword_1004ADC90;
  if (!qword_1004ADC90)
  {
    sub_100003A94(&qword_1004ADC88);
    sub_10026447C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC90);
  }

  return result;
}

unint64_t sub_10026447C()
{
  result = qword_1004ADC98;
  if (!qword_1004ADC98)
  {
    sub_100003A94(&qword_1004AD250);
    sub_100264500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADC98);
  }

  return result;
}

unint64_t sub_100264500()
{
  result = qword_1004ADCA0;
  if (!qword_1004ADCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADCA0);
  }

  return result;
}

unint64_t sub_100264554()
{
  result = qword_1004ADCA8;
  if (!qword_1004ADCA8)
  {
    sub_100003A94(&qword_1004ADC88);
    sub_10025968C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADCA8);
  }

  return result;
}

void sub_1002645D8()
{
  if (!qword_1004ADCB0)
  {
    sub_100003A94(&qword_1004AD1E8);
    sub_10026465C();
    sub_1002646E0();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADCB0);
    }
  }
}

unint64_t sub_10026465C()
{
  result = qword_1004ADCB8;
  if (!qword_1004ADCB8)
  {
    sub_100003A94(&qword_1004AD1E8);
    sub_100218FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADCB8);
  }

  return result;
}

unint64_t sub_1002646E0()
{
  result = qword_1004ADCC0;
  if (!qword_1004ADCC0)
  {
    sub_100003A94(&qword_1004AD1E8);
    sub_100219004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADCC0);
  }

  return result;
}

void sub_100264764()
{
  if (!qword_1004ADCC8)
  {
    sub_100003A94(&qword_1004AD1F0);
    sub_1002647E8();
    sub_10026486C();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADCC8);
    }
  }
}

unint64_t sub_1002647E8()
{
  result = qword_1004ADCD0;
  if (!qword_1004ADCD0)
  {
    sub_100003A94(&qword_1004AD1F0);
    sub_100219058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADCD0);
  }

  return result;
}

unint64_t sub_10026486C()
{
  result = qword_1004ADCD8;
  if (!qword_1004ADCD8)
  {
    sub_100003A94(&qword_1004AD1F0);
    sub_1002190AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADCD8);
  }

  return result;
}

void sub_1002648F0()
{
  if (!qword_1004ADCE0)
  {
    sub_100003A94(&qword_1004ADCE8);
    sub_100264974();
    sub_100264A4C();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADCE0);
    }
  }
}

unint64_t sub_100264974()
{
  result = qword_1004ADCF0;
  if (!qword_1004ADCF0)
  {
    sub_100003A94(&qword_1004ADCE8);
    sub_1002649F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADCF0);
  }

  return result;
}

unint64_t sub_1002649F8()
{
  result = qword_1004ADCF8;
  if (!qword_1004ADCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADCF8);
  }

  return result;
}

unint64_t sub_100264A4C()
{
  result = qword_1004ADD00;
  if (!qword_1004ADD00)
  {
    sub_100003A94(&qword_1004ADCE8);
    sub_100259764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD00);
  }

  return result;
}

void sub_100264AD0()
{
  if (!qword_1004ADD08)
  {
    sub_100003A94(&qword_1004AD1C0);
    sub_100264B54();
    sub_100264BD8();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADD08);
    }
  }
}

unint64_t sub_100264B54()
{
  result = qword_1004ADD10;
  if (!qword_1004ADD10)
  {
    sub_100003A94(&qword_1004AD1C0);
    sub_100259D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD10);
  }

  return result;
}

unint64_t sub_100264BD8()
{
  result = qword_1004ADD18;
  if (!qword_1004ADD18)
  {
    sub_100003A94(&qword_1004AD1C0);
    sub_1002597B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD18);
  }

  return result;
}

void sub_100264C5C()
{
  if (!qword_1004ADD20)
  {
    sub_100003A94(&qword_1004ADD28);
    sub_100264CE0();
    sub_100264DF0();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADD20);
    }
  }
}

unint64_t sub_100264CE0()
{
  result = qword_1004ADD30;
  if (!qword_1004ADD30)
  {
    sub_100003A94(&qword_1004ADD28);
    sub_100264D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD30);
  }

  return result;
}

unint64_t sub_100264D64()
{
  result = qword_1004ADD38;
  if (!qword_1004ADD38)
  {
    sub_100003A94(&qword_1004ACCF0);
    sub_1001B5418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD38);
  }

  return result;
}

unint64_t sub_100264DF0()
{
  result = qword_1004ADD40;
  if (!qword_1004ADD40)
  {
    sub_100003A94(&qword_1004ADD28);
    sub_10025980C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD40);
  }

  return result;
}

void sub_100264E74()
{
  if (!qword_1004ADD48)
  {
    sub_100003A94(&qword_1004ACE78);
    sub_100264EF8();
    sub_100264F7C();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADD48);
    }
  }
}

unint64_t sub_100264EF8()
{
  result = qword_1004ADD50;
  if (!qword_1004ADD50)
  {
    sub_100003A94(&qword_1004ACE78);
    sub_100259D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD50);
  }

  return result;
}

unint64_t sub_100264F7C()
{
  result = qword_1004ADD58;
  if (!qword_1004ADD58)
  {
    sub_100003A94(&qword_1004ACE78);
    sub_100259898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD58);
  }

  return result;
}

void sub_100265000()
{
  if (!qword_1004ADD60)
  {
    sub_100003A94(&qword_1004AD208);
    sub_100265084();
    sub_100265108();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADD60);
    }
  }
}

unint64_t sub_100265084()
{
  result = qword_1004ADD68;
  if (!qword_1004ADD68)
  {
    sub_100003A94(&qword_1004AD208);
    sub_100218DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD68);
  }

  return result;
}

unint64_t sub_100265108()
{
  result = qword_1004ADD70;
  if (!qword_1004ADD70)
  {
    sub_100003A94(&qword_1004AD208);
    sub_100218E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD70);
  }

  return result;
}

void sub_10026518C()
{
  if (!qword_1004ADD78)
  {
    sub_100003A94(&qword_1004ADD80);
    sub_100265210();
    sub_100265348();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADD78);
    }
  }
}

unint64_t sub_100265210()
{
  result = qword_1004ADD88;
  if (!qword_1004ADD88)
  {
    sub_100003A94(&qword_1004ADD80);
    sub_100265294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD88);
  }

  return result;
}

unint64_t sub_100265294()
{
  result = qword_1004ADD90;
  if (!qword_1004ADD90)
  {
    sub_100003A94(&qword_1004AD288);
    sub_1002599A0(&qword_1004ADD98, type metadata accessor for Config.Package);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADD90);
  }

  return result;
}

unint64_t sub_100265348()
{
  result = qword_1004ADDA0;
  if (!qword_1004ADDA0)
  {
    sub_100003A94(&qword_1004ADD80);
    sub_1002598EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ADDA0);
  }

  return result;
}

void sub_1002653CC()
{
  if (!qword_1004ADDA8)
  {
    sub_100003A94(&qword_1004ADDB0);
    sub_100265450();
    sub_1002655EC();
    v0 = type metadata accessor for PathCoded();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ADDA8);
    }
  }
}