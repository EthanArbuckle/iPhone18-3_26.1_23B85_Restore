uint64_t sub_100205E10@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v7 = 0xED0000656D756C6FLL;
  v8 = 0x56726F4674696177;
  v9 = 0xE400000000000000;
  v10 = 1953460082;
  v11 = 0xEA00000000007468;
  if (a1 != 4)
  {
    v11 = 0xEF6C6C6568537468;
  }

  if (a1 != 3)
  {
    v10 = 0x67696C6674736F70;
    v9 = v11;
  }

  v12 = 0xE900000000000074;
  if (a1 != 1)
  {
    v12 = 0xEE006C6C65685374;
  }

  if (a1)
  {
    v8 = 0x6867696C66657270;
    v7 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (v6 <= 2)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  if (*(a2 + 16))
  {
    v17 = sub_100013364(v13, v14);
    v19 = v18;

    if (v19)
    {
      v21 = *(*(a2 + 56) + 8 * v17);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.Root.VersionOneKeys;
      *(inited + 64) = sub_1002203B0();
      *(inited + 32) = a1;

      result = sub_10034A3A8(inited);
      *a4 = v21;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

unint64_t sub_100205FE8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(result + 16) && (v5 = result, result = sub_100013364(0xD000000000000014, 0x800000010043D450), (v6 & 1) != 0))
  {
    v7 = *(*(v5 + 56) + 8 * result);
    sub_1000039E8(&qword_1004AAA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.CARoots.VersionOneKeys;
    *(inited + 64) = sub_10021E5E4();

    result = sub_10034A3A8(inited);
    *a3 = v7;
    a3[1] = a2;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1002060D0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, void *a7@<X8>)
{
  v13 = a4();
  if (*(a2 + 16))
  {
    v21 = a6;
    v15 = sub_100013364(v13, v14);
    v17 = v16;

    if (v17)
    {
      v19 = *(*(a2 + 56) + 8 * v15);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = a5;
      *(inited + 64) = v21();
      *(inited + 32) = a1;

      result = sub_10034A3A8(inited);
      *a7 = v19;
      a7[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a7 = 0;
  a7[1] = 0;
  return result;
}

uint64_t sub_1002061E8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0x800000010043D480;
  }

  else
  {
    v5 = 0xEE0064695F657669;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x686372615F616561;
    }

    v10 = sub_100013364(v9, v5);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.Cryptex.Cryptex.AeaDecryptionParams.VersionOneKeys;
      *(inited + 64) = sub_10021E698();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

unint64_t sub_100206330@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(result + 16) && (v5 = result, result = sub_100013364(7107189, 0xE300000000000000), (v6 & 1) != 0))
  {
    v7 = *(*(v5 + 56) + 8 * result);
    sub_1000039E8(&qword_1004AAA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.Package.VersionOneKeys;
    *(inited + 64) = sub_10021E794();

    result = sub_10034A3A8(inited);
    *a3 = v7;
    a3[1] = a2;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_10020640C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0x800000010043D6C0;
  }

  else
  {
    v5 = 0xEF7265626D756E5FLL;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x7373616C63627573;
    }

    v10 = sub_100013364(v9, v5);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.Tailspin.ClassConfig.SubclassConfig.VersionOneKeys;
      *(inited + 64) = sub_1002201B8();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206554@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v7 = 0xEF7465735F657A69;
  v8 = 0x735F726566667562;
  if (a1 != 2)
  {
    v8 = 0x6F635F7373616C63;
    v7 = 0xED0000736769666ELL;
  }

  v9 = 0xD000000000000018;
  v10 = 0x800000010043D610;
  if (a1)
  {
    v9 = 0xD00000000000001ALL;
    v10 = 0x800000010043D630;
  }

  if (a1 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v6 <= 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (*(a2 + 16))
  {
    v15 = sub_100013364(v11, v12);
    v17 = v16;

    if (v17)
    {
      v19 = *(*(a2 + 56) + 8 * v15);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.Tailspin.VersionOneKeys;
      *(inited + 64) = sub_100220260();
      *(inited + 32) = a1;

      result = sub_10034A3A8(inited);
      *a4 = v19;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_1002066E4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  if (!a1)
  {
    v10 = 0xEC0000007265626DLL;
    v9 = 0x756E5F7373616C63;
    if (*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v9 = 0x6E655F7373616C63;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (v8 == 1)
  {
    v10 = 0xED000064656C6261;
  }

  else
  {
    v10 = 0x800000010043D690;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v11 = sub_100013364(v9, v10);
  v13 = v12;

  if (v13)
  {
    v15 = *(*(a2 + 56) + 8 * v11);
    sub_1000039E8(&qword_1004AAA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.Tailspin.ClassConfig.VersionOneKeys;
    *(inited + 64) = sub_10022020C();
    *(inited + 32) = a1;

    result = sub_10034A3A8(inited);
    *a4 = v15;
    a4[1] = a3;
    return result;
  }

LABEL_13:
  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206850@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  if (!a1)
  {
    v10 = 0xE300000000000000;
    v9 = 7107189;
    if (*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v9 = 0x6F635F656C707061;
  }

  if (v8 == 1)
  {
    v10 = 0x800000010043D4A0;
  }

  else
  {
    v10 = 0xED00007463656E6ELL;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v11 = sub_100013364(v9, v10);
  v13 = v12;

  if (v13)
  {
    v15 = *(*(a2 + 56) + 8 * v11);
    sub_1000039E8(&qword_1004AAA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.Diavlo.VersionOneKeys;
    *(inited + 64) = sub_10021E740();
    *(inited + 32) = a1;

    result = sub_10034A3A8(inited);
    *a4 = v15;
    a4[1] = a3;
    return result;
  }

LABEL_13:
  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_1002069AC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  if (a1 > 3u)
  {
    v9 = 0x800000010043D5B0;
    v10 = 0x800000010043D5D0;
    v11 = 0xD000000000000015;
    if (a1 != 7)
    {
      v11 = 0xD000000000000014;
      v10 = 0x800000010043D5F0;
    }

    if (a1 == 6)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v9 = v10;
    }

    v12 = 0xE700000000000000;
    if (a1 == 4)
    {
      v13 = 0x6E696D64417369;
    }

    else
    {
      v13 = 0xD000000000000012;
    }

    if (a1 != 4)
    {
      v12 = 0x800000010043D590;
    }

    if (a1 <= 5u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    if (v8 <= 5)
    {
      v15 = v12;
    }

    else
    {
      v15 = v9;
    }

    if (*(a2 + 16))
    {
      goto LABEL_19;
    }

LABEL_32:

    goto LABEL_33;
  }

  v22 = 0xE400000000000000;
  v23 = 1701667182;
  v24 = 0xE300000000000000;
  v25 = 6580583;
  if (a1 != 2)
  {
    v25 = 0x64726F7773736170;
    v24 = 0xE800000000000000;
  }

  if (a1)
  {
    v23 = 6580597;
    v22 = 0xE300000000000000;
  }

  if (a1 <= 1u)
  {
    v14 = v23;
  }

  else
  {
    v14 = v25;
  }

  if (v8 <= 1)
  {
    v15 = v22;
  }

  else
  {
    v15 = v24;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_32;
  }

LABEL_19:
  v16 = sub_100013364(v14, v15);
  v18 = v17;

  if (v18)
  {
    v20 = *(*(a2 + 56) + 8 * v16);
    sub_1000039E8(&qword_1004AAA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.User.VersionOneKeys;
    *(inited + 64) = sub_10022035C();
    *(inited + 32) = a1;

    result = sub_10034A3A8(inited);
    *a4 = v20;
    a4[1] = a3;
    return result;
  }

LABEL_33:
  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206BB0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  if (!a1)
  {
    v10 = 0xE500000000000000;
    v9 = 0x7372657375;
    if (*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v9 = 0x7370756F7267;
  }

  else
  {
    v9 = 0x7265732D7061646CLL;
  }

  if (v8 == 1)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xEB00000000726576;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v11 = sub_100013364(v9, v10);
  v13 = v12;

  if (v13)
  {
    v15 = *(*(a2 + 56) + 8 * v11);
    sub_1000039E8(&qword_1004AAA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.User.Authentication.Memento.VersionOneKeys;
    *(inited + 64) = sub_1002202B4();
    *(inited + 32) = a1;

    result = sub_10034A3A8(inited);
    *a4 = v15;
    a4[1] = a3;
    return result;
  }

LABEL_13:
  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206D04@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEA0000000000736CLL;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0x7370756F7267;
    }

    else
    {
      v9 = 0x617069636E697270;
    }

    v10 = sub_100013364(v9, v5);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.User.Authentication.ESC.VersionOneKeys;
      *(inited + 64) = sub_100220308();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206E3C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = "system-log-privacy-level";
  if (a1)
  {
    v5 = "system-logging-enabled";
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0xD000000000000016;
    }

    else
    {
      v9 = 0xD000000000000018;
    }

    v10 = sub_100013364(v9, (v5 - 32) | 0x8000000000000000);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.Log.VersionOneKeys;
      *(inited + 64) = sub_100220404();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100206F6C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v7 = 0xE600000000000000;
  v8 = 0x6E69616D6F64;
  v9 = 0xEE00656D616E5F65;
  v10 = 0x7475626972747461;
  v11 = 0xEF65756C61765F65;
  v12 = 0x7475626972747461;
  if (a1 != 4)
  {
    v12 = 0x5F65727574616566;
    v11 = 0xED00006573616870;
  }

  if (a1 != 3)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = 0xE700000000000000;
  v14 = 0x65727574616566;
  if (a1 != 1)
  {
    v14 = 0x656C62616E65;
    v13 = 0xE600000000000000;
  }

  if (a1)
  {
    v8 = v14;
    v7 = v13;
  }

  if (a1 <= 2u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  if (v6 <= 2)
  {
    v16 = v7;
  }

  else
  {
    v16 = v9;
  }

  if (*(a2 + 16))
  {
    v19 = sub_100013364(v15, v16);
    v21 = v20;

    if (v21)
    {
      v23 = *(*(a2 + 56) + 8 * v19);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.FeatureFlag.VersionOneKeys;
      *(inited + 64) = sub_1002204AC();
      *(inited + 32) = a1;

      result = sub_10034A3A8(inited);
      *a4 = v23;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_10020713C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = "configuration_options";
  if (a1)
  {
    v5 = "tailspin_enabled";
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0xD000000000000015;
    }

    v10 = sub_100013364(v9, (v5 - 32) | 0x8000000000000000);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.TailspinVersionOneKeys;
      *(inited + 64) = sub_1002205A8();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100207270@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0x736E6F6974706FLL;
    }

    else
    {
      v9 = 0x797469746E656469;
    }

    v10 = sub_100013364(v9, v5);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.NarrativeVersionOneKeys;
      *(inited + 64) = sub_100220554();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_1002073A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v9 = 0x65756C6176;
    }

    else
    {
      v9 = 0x6361667265746E69;
    }

    v10 = sub_100013364(v9, v5);
    v12 = v11;

    if (v12)
    {
      v14 = *(*(a2 + 56) + 8 * v10);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.NetworkVersionOneKeys;
      *(inited + 64) = sub_100219A88();
      *(inited + 32) = a1 & 1;

      result = sub_10034A3A8(inited);
      *a4 = v14;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_1002074E0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v7 = 0xE300000000000000;
  v8 = 7955819;
  v9 = 0xEE0064695F6E6F69;
  v10 = 0x746163696C707061;
  v11 = 0x656D616E72657375;
  if (a1 != 3)
  {
    v11 = 0x656D616E74736F68;
  }

  if (a1 != 2)
  {
    v10 = v11;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v8 = 0x65756C6176;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 <= 1)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  if (*(a2 + 16))
  {
    v16 = sub_100013364(v12, v13);
    v18 = v17;

    if (v18)
    {
      v20 = *(*(a2 + 56) + 8 * v16);
      sub_1000039E8(&qword_1004AAA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100376A40;
      *(inited + 56) = &type metadata for Config.PrefsVersionOneKeys;
      *(inited + 64) = sub_100219B3C();
      *(inited + 32) = a1;

      result = sub_10034A3A8(inited);
      *a4 = v20;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_100207674@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1;
  v6 = 0xE300000000000000;
  v7 = 0x746163696C707061;
  v8 = 0xEE0064695F6E6F69;
  v9 = 0x656D616E72657375;
  if (a1 != 3)
  {
    v9 = 0x656D616E74736F68;
  }

  if (a1 != 2)
  {
    v7 = v9;
    v8 = 0xE800000000000000;
  }

  v10 = 0x65756C6176;
  if (a1)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v10 = 7955819;
  }

  if (a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v5 <= 1)
  {
    v12 = v6;
  }

  else
  {
    v12 = v8;
  }

  if (*(a2 + 16))
  {
    v14 = sub_100013364(v11, v12);
    v16 = v15;

    if (v16)
    {
      *a3 = *(*(a2 + 56) + 8 * v14);
    }
  }

  else
  {
  }

  v23 = &type metadata for Config.PrefsVersionOneKeys;
  v24 = sub_100219B3C();
  v22[0] = a1;
  v18 = type metadata accessor for DecodingError();
  swift_allocError();
  v20 = v19;
  sub_100003B20(v22, v19);
  sub_1000039E8(&qword_1004A7170);

  v21._countAndFlagsBits = 0x756F6620746F6E20;
  v21._object = 0xEA0000000000646ELL;
  String.append(_:)(v21);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v18 - 8) + 104))(v20, enum case for DecodingError.keyNotFound(_:), v18);
  sub_100003C3C(v22);
  return swift_willThrow();
}

__n128 sub_10020791C@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1002060D0(a1, a2, a3, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, v28);
  if (!v4)
  {
    v7 = *(&v28[0] + 1);
    if (*(&v28[0] + 1))
    {
      v8 = *&v28[0];

      v9 = sub_100201504(v8);
      v11 = v10;
      v12 = sub_10020C530(0, v9, v10);
      v24 = v13;
      v15 = v14;
      v26 = v12;
      v16 = sub_10020C530(1, v9, v11);
      v31 = 0;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      sub_100212994(v26, v24, v15, v17, v19, v21, v28);

      v25 = v28[1];
      v27 = v28[0];
      v22 = v29;
      v23 = v30;

      sub_100200D34(v8, v7);
      result = v25;
      *(a4 + 8) = v27;
      *(a4 + 24) = v25;
      *(a4 + 40) = v22;
      *(a4 + 48) = v23;
      *a4 = v7;
    }

    else
    {
      result.n128_u64[0] = 0;
      *(a4 + 40) = 0u;
      *(a4 + 24) = 0u;
      *(a4 + 8) = 0u;
      *a4 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_100207B58(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, &v12);
  if (!v4)
  {
    v3 = v13;
    if (v13)
    {
      v6 = v12;
      if (v12 >> 61 == 3)
      {
        v7 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v14._countAndFlagsBits = v7;
        v14._object = v8;
        _s10DarwinInit25DInitAuthorizationServiceO8rawValueACSgSS_tcfC_0(v14);
        swift_bridgeObjectRelease_n();

        sub_100200D34(v6, v3);
      }

      else
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        sub_1000039E8(&qword_1004A7168);
        *v11 = &type metadata for String;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
        swift_willThrow();

        sub_100200D34(v6, v3);
      }
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100207D74(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, &v10);
  if (!v4)
  {
    v3 = v11;
    if (v11)
    {
      v6 = v10;
      if (v10 >> 61 == 3)
      {
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        _s10DarwinInit17DInitSHA256DigestV8argumentACSgSS_tcfC_0();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v7 = type metadata accessor for DecodingError();
        swift_allocError();
        v9 = v8;
        sub_1000039E8(&qword_1004A7168);
        *v9 = &type metadata for String;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.typeMismatch(_:), v7);
        swift_willThrow();
        swift_bridgeObjectRelease_n();
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100207F94(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v12);
  if (!v4)
  {
    v3 = v13;
    if (v13)
    {
      v6 = v12;
      if (v12 >> 61 == 3)
      {
        v7 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v14._countAndFlagsBits = v7;
        v14._object = v8;
        _s10DarwinInit8DInitUSRO8rawValueACSgSS_tcfC_0(v14);
        swift_bridgeObjectRelease_n();

        sub_100200D34(v6, v3);
      }

      else
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        sub_1000039E8(&qword_1004A7168);
        *v11 = &type metadata for String;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
        swift_willThrow();

        sub_100200D34(v6, v3);
      }
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_1002081B0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_100013364(0x416572756C696166, 0xED00006E6F697463);
  if ((v5 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(*(a1 + 56) + 8 * v4);
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Finish.ResultConfigVersionOneKeys;
  *(inited + 64) = sub_100220458();

  sub_10034A3A8(inited);
  if (v6 >> 61 == 3)
  {
    sub_1002205FC();
    sub_1001FAF14();
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    RawRepresentable<>.init(argument:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v9;
    sub_1000039E8(&qword_1004A7168);
    *v10 = &type metadata for String;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.typeMismatch(_:), v8);
    swift_willThrow();
    swift_bridgeObjectRelease_n();
  }

  return a2;
}

uint64_t sub_100208450@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for DecodingError.Context();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100206850(a1, a2, a3, &v28);
  if (!v4)
  {
    v14 = v29;
    if (v29)
    {
      v15 = v28;
      if (v28 >> 61 != 3)
      {
        v23 = type metadata accessor for DecodingError();
        swift_allocError();
        v25 = v24;
        sub_1000039E8(&qword_1004A7168);
        *v25 = &type metadata for String;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
        swift_willThrow();

        sub_100200D34(v15, v14);
      }

      v27 = v10;
      v30 = 0;
      swift_bridgeObjectRetain_n();

      swift_retain_n();
      v16 = Data.init(base64Encoded:options:)();
      v18 = v17;

      if (v18 >> 60 == 15)
      {

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        v19 = type metadata accessor for DecodingError();
        swift_allocError();
        v21 = v20;
        v22 = v27;
        (*(v27 + 16))(v20, v12, v9);
        (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.dataCorrupted(_:), v19);
        swift_willThrow();

        sub_100200D34(v15, v14);
        (*(v22 + 8))(v12, v9);
      }

      swift_bridgeObjectRelease_n();

      result = sub_100200D34(v15, v14);
    }

    else
    {
      v16 = 0;
      v14 = _swiftEmptyArrayStorage;
      v18 = 0xF000000000000000;
    }

    a4[1] = v16;
    a4[2] = v18;
    *a4 = v14;
  }

  return result;
}

uint64_t sub_100208810@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_1002069AC(a1, a2, a3, &v16);
  if (!v4)
  {
    v7 = v17;
    if (v17)
    {
      v8 = v16;
      v18 = &type metadata for JSONConverter;
      v19 = &protocol witness table for JSONConverter;

      v9 = sub_10021E2C4(&v16);
      v11 = v10;
      v13 = v12;
      v15 = v14;

      result = sub_100200D34(v8, v7);
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v13 = 0;
      v15 = 0;
      v7 = _swiftEmptyArrayStorage;
    }

    *a4 = v7;
    a4[1] = v9;
    a4[2] = v11;
    a4[3] = v13;
    a4[4] = v15;
  }

  return result;
}

double sub_100208904@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1002069AC(a1, a2, a3, v17);
  if (!v4)
  {
    v7 = *(&v17[0] + 1);
    if (*(&v17[0] + 1))
    {
      v8 = *&v17[0];
      v11 = &type metadata for JSONConverter;
      v12 = &protocol witness table for JSONConverter;
      v10 = v17[0];

      sub_10021DFE0(&v10, v17);
      v13 = v17[0];
      v14 = v17[1];
      v15 = v17[2];
      v16 = v18;

      sub_100200D34(v8, v7);
      v9 = v14;
      *(a4 + 8) = v13;
      *(a4 + 24) = v9;
      result = *&v15;
      *(a4 + 40) = v15;
      *(a4 + 56) = v16;
      *a4 = v7;
    }

    else
    {
      *(a4 + 56) = 0;
      result = 0.0;
      *(a4 + 40) = 0u;
      *(a4 + 24) = 0u;
      *(a4 + 8) = 0u;
      *a4 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_100208A18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr), void (*a5)(uint64_t *))
{
  a4(&v10);
  if (!v6)
  {
    v5 = v11;
    if (v11)
    {
      v9 = v10;
      v12 = &type metadata for JSONConverter;
      v13 = &protocol witness table for JSONConverter;

      a5(&v10);

      sub_100200D34(v9, v5);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v5;
}

void *sub_100208AEC(char a1, uint64_t a2, uint64_t a3)
{
  sub_100206D04(a1 & 1, a2, a3, &v7);
  if (!v4)
  {
    v3 = v8;
    if (v8)
    {
      v6 = v7;
      v9 = &type metadata for JSONConverter;
      v10 = &protocol witness table for JSONConverter;

      sub_10020E888(&v7);

      sub_100200D34(v6, v3);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100208BB8(char a1, uint64_t a2, uint64_t a3)
{
  sub_100206E3C(a1 & 1, a2, a3, &v13);
  if (!v4)
  {
    v3 = v14;
    if (v14)
    {
      v6 = v13;
      if (v13 >> 61 == 3)
      {
        v7 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v9._countAndFlagsBits = v7;
        v9._object = v8;
        _findStringSwitchCase(cases:string:)(&off_100485318, v9);

        swift_bridgeObjectRelease_n();

        sub_100200D34(v6, v3);
      }

      else
      {
        v10 = type metadata accessor for DecodingError();
        swift_allocError();
        v12 = v11;
        sub_1000039E8(&qword_1004A7168);
        *v12 = &type metadata for String;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.typeMismatch(_:), v10);
        swift_willThrow();

        sub_100200D34(v6, v3);
      }
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100208DC4(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_100206F6C(a1, a2, a3, &v12);
  if (!v4)
  {
    v3 = v13;
    if (v13)
    {
      v6 = v12;
      if (v12 >> 61 == 3)
      {
        v7 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v14._countAndFlagsBits = v7;
        v14._object = v8;
        _s10DarwinInit6ConfigV11FeatureFlagV0D5PhaseO8rawValueAGSgSS_tcfC_0(v14);
        swift_bridgeObjectRelease_n();

        sub_100200D34(v6, v3);
      }

      else
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        sub_1000039E8(&qword_1004A7168);
        *v11 = &type metadata for String;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
        swift_willThrow();

        sub_100200D34(v6, v3);
      }
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100208FB0(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v9);
  if (!v4)
  {
    v3 = v10;
    if (v10)
    {
      v6 = v9;

      v7 = sub_100201504(v6);
      sub_100209F00(v7, v8);

      sub_100200D34(v6, v3);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_100209124@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, __dst);
  if (!v4)
  {
    v7 = __dst[1];
    if (__dst[1])
    {
      v8 = __dst[0];
      v10[3] = &type metadata for JSONConverter;
      v10[4] = &protocol witness table for JSONConverter;
      v10[0] = __dst[0];
      v10[1] = __dst[1];

      sub_10021C8EC(v10, __src);
      memcpy(__dst, __src, 0x101uLL);
      DInitData.init(rawValue:)(__dst);

      sub_100200D34(v8, v7);
      result = memcpy(a4 + 1, __dst, 0x101uLL);
      *a4 = v7;
    }

    else
    {
      sub_100218CA0(__src);
      result = memcpy(a4 + 1, __src, 0x101uLL);
      *a4 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_10020926C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_1000039E8(&qword_1004AD1B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  result = sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v19);
  if (!v4)
  {
    v13 = v20;
    if (v20)
    {
      v14 = v19;
      v21 = &type metadata for JSONConverter;
      v22 = &protocol witness table for JSONConverter;

      Config.Diavlo.init(from:)(&v19, v11);
      v17 = sub_1000039E8(&qword_1004ACDA0);
      sub_10003E154(v11, a4 + *(v17 + 44), &qword_1004AD1B8);

      result = sub_100200D34(v14, v13);
      *a4 = v13;
    }

    else
    {
      v15 = *(sub_1000039E8(&qword_1004ACDA0) + 44);
      v16 = type metadata accessor for Config.Diavlo(0);
      result = (*(*(v16 - 8) + 56))(a4 + v15, 1, 1, v16);
      *a4 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_10020946C(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v9);
  if (!v5)
  {
    v4 = v10;
    if (v10)
    {
      v8 = v9;
      v11 = &type metadata for JSONConverter;
      v12 = &protocol witness table for JSONConverter;

      a4(&v9);

      sub_100200D34(v8, v4);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

uint64_t sub_10020956C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v16);
  if (!v4)
  {
    v7 = v17;
    if (v17)
    {
      v8 = v16;
      v18 = &type metadata for JSONConverter;
      v19 = &protocol witness table for JSONConverter;

      v9 = sub_10021A7C4(&v16);
      v11 = v10;
      v13 = v12;
      v15 = v14;

      result = sub_100200D34(v8, v7);
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v13 = 0;
      v15 = 0;
      v7 = _swiftEmptyArrayStorage;
    }

    *a4 = v7;
    *(a4 + 8) = v9;
    *(a4 + 16) = v11;
    *(a4 + 24) = v13;
    *(a4 + 32) = v15;
  }

  return result;
}

uint64_t sub_100209690(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v7);
  if (!v4)
  {
    v3 = v8;
    if (v8)
    {
      v6 = v7;
      v9 = &type metadata for JSONConverter;
      v10 = &protocol witness table for JSONConverter;

      if (sub_10020E888(&v7))
      {

        sub_100200D34(v6, v3);
      }

      else
      {
        sub_100200D34(v6, v3);
        return 0;
      }
    }
  }

  return v3;
}

void sub_1002097A0(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v29);
  if (!v4)
  {
    v6 = v30;
    if (v30)
    {
      v7 = v29;
      v31 = &type metadata for JSONConverter;
      v32 = &protocol witness table for JSONConverter;

      sub_10021D87C(&v29, &v33);
      v61 = v45;
      v62 = v46;
      v63 = v47;
      v57 = v41;
      v58 = v42;
      v59 = v43;
      v60 = v44;
      v53 = v37;
      v54 = v38;
      v55 = v39;
      v56 = v40;
      v49 = v33;
      v50 = v34;
      v51 = v35;
      v52 = v36;
      v64[12] = v45;
      v64[13] = v46;
      v64[14] = v47;
      v64[8] = v41;
      v64[9] = v42;
      v64[10] = v43;
      v64[11] = v44;
      v64[4] = v37;
      v64[5] = v38;
      v64[6] = v39;
      v64[7] = v40;
      v64[0] = v33;
      v64[1] = v34;
      v64[2] = v35;
      v64[3] = v36;
      if (sub_100218DC8(v64) == 1)
      {
        sub_100200D34(v7, v6);
        sub_100220A84(&v33);
        v15 = v46;
        *(a4 + 192) = v45;
        *(a4 + 208) = v15;
        *(a4 + 224) = v47;
        *(a4 + 240) = v48;
        v16 = v42;
        *(a4 + 128) = v41;
        *(a4 + 144) = v16;
        v17 = v44;
        *(a4 + 160) = v43;
        *(a4 + 176) = v17;
        v18 = v38;
        *(a4 + 64) = v37;
        *(a4 + 80) = v18;
        v19 = v40;
        *(a4 + 96) = v39;
        *(a4 + 112) = v19;
        v20 = v34;
        *a4 = v33;
        *(a4 + 16) = v20;
        v21 = v36;
        *(a4 + 32) = v35;
        *(a4 + 48) = v21;
      }

      else
      {

        sub_100200D34(v7, v6);
        v22 = v59;
        *(a4 + 184) = v60;
        v23 = v62;
        *(a4 + 200) = v61;
        *(a4 + 216) = v23;
        *(a4 + 232) = v63;
        v24 = v55;
        *(a4 + 120) = v56;
        v25 = v58;
        *(a4 + 136) = v57;
        *(a4 + 152) = v25;
        *(a4 + 168) = v22;
        v26 = v51;
        *(a4 + 56) = v52;
        v27 = v54;
        *(a4 + 72) = v53;
        *(a4 + 88) = v27;
        *(a4 + 104) = v24;
        v28 = v50;
        *(a4 + 8) = v49;
        *(a4 + 24) = v28;
        *(a4 + 40) = v26;
        *a4 = v6;
        DInitData.init(rawValue:)(a4);
      }
    }

    else
    {
      sub_100220A84(&v33);
      v8 = v46;
      *(a4 + 192) = v45;
      *(a4 + 208) = v8;
      *(a4 + 224) = v47;
      *(a4 + 240) = v48;
      v9 = v42;
      *(a4 + 128) = v41;
      *(a4 + 144) = v9;
      v10 = v44;
      *(a4 + 160) = v43;
      *(a4 + 176) = v10;
      v11 = v38;
      *(a4 + 64) = v37;
      *(a4 + 80) = v11;
      v12 = v40;
      *(a4 + 96) = v39;
      *(a4 + 112) = v12;
      v13 = v34;
      *a4 = v33;
      *(a4 + 16) = v13;
      v14 = v36;
      *(a4 + 32) = v35;
      *(a4 + 48) = v14;
    }
  }
}

uint64_t sub_100209A60@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_10020713C(a1 & 1, a2, a3, &v16);
  if (!v4)
  {
    v7 = v17;
    if (v17)
    {
      v8 = v16;
      v15[3] = &type metadata for JSONConverter;
      v15[4] = &protocol witness table for JSONConverter;
      v15[0] = v16;
      v15[1] = v17;

      sub_10021C178(v15, &v16);
      v9 = v16;
      v12 = v19;
      v13 = v20;
      v14 = v21;
      v10 = v17;
      v11 = v18;
      if (v16)
      {

        result = sub_100200D34(v8, v7);
        *(a4 + 48) = v12;
        *(a4 + 64) = v13;
        *(a4 + 80) = v14;
        *(a4 + 16) = v10;
        *(a4 + 32) = v11;
        *a4 = v7;
        *(a4 + 8) = v9;
      }

      else
      {
        result = sub_100200D34(v8, v7);
        *(a4 + 64) = 0u;
        *(a4 + 80) = 0u;
        *(a4 + 32) = 0u;
        *(a4 + 48) = 0u;
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }
    }

    else
    {
      *(a4 + 64) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_100209BA0(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v11);
  if (!v3)
  {
    v6 = v12;
    if (v12)
    {
      v7 = v11;
      if (v11 >> 61 == 4)
      {
        v4 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      else
      {
        v4 = sub_1000039E8(&qword_1004ACCF8);
        v8 = type metadata accessor for DecodingError();
        swift_allocError();
        v10 = v9;
        sub_1000039E8(&qword_1004A7168);
        *v10 = v4;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.typeMismatch(_:), v8);
        swift_willThrow();
      }

      sub_100200D34(v7, v6);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_100209D50(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v11);
  if (!v3)
  {
    v6 = v12;
    if (v12)
    {
      v7 = v11;
      if (v11 >> 61 == 5)
      {
        v4 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      else
      {
        v4 = sub_1000039E8(&qword_1004ACCF0);
        v8 = type metadata accessor for DecodingError();
        swift_allocError();
        v10 = v9;
        sub_1000039E8(&qword_1004A7168);
        *v10 = v4;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.typeMismatch(_:), v8);
        swift_willThrow();
      }

      sub_100200D34(v7, v6);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void *sub_100209F00(unint64_t a1, uint64_t a2)
{
  sub_100205FE8(a1, a2, &v9);
  if (!v3)
  {
    v2 = v10;
    if (v10)
    {
      v5 = v9;
      if (v9 >> 61)
      {
        v6 = type metadata accessor for DecodingError();
        swift_allocError();
        v8 = v7;
        sub_1000039E8(&qword_1004A7168);
        *v8 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.typeMismatch(_:), v6);
        swift_willThrow();
      }

      else
      {
      }

      sub_100200D34(v5, v2);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void *sub_10020A068(char a1, uint64_t a2, uint64_t a3)
{
  sub_100206E3C(a1 & 1, a2, a3, &v10);
  if (!v4)
  {
    v3 = v11;
    if (v11)
    {
      v6 = v10;
      if (v10 >> 61)
      {
        v7 = type metadata accessor for DecodingError();
        swift_allocError();
        v9 = v8;
        sub_1000039E8(&qword_1004A7168);
        *v9 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.typeMismatch(_:), v7);
        swift_willThrow();
      }

      else
      {
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_10020A1D4(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_100206F6C(a1, a2, a3, &v10);
  if (!v4)
  {
    v3 = v11;
    if (v11)
    {
      v6 = v10;
      if (v10 >> 61)
      {
        v7 = type metadata accessor for DecodingError();
        swift_allocError();
        v9 = v8;
        sub_1000039E8(&qword_1004A7168);
        *v9 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.typeMismatch(_:), v7);
        swift_willThrow();
      }

      else
      {
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_10020A33C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  sub_1002060D0(a1, a2, a3, a4, a5, a6, &v13);
  if (!v7)
  {
    v6 = v14;
    if (v14)
    {
      v9 = v13;
      if (v13 >> 61)
      {
        v10 = type metadata accessor for DecodingError();
        swift_allocError();
        v12 = v11;
        sub_1000039E8(&qword_1004A7168);
        *v12 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.typeMismatch(_:), v10);
        swift_willThrow();
      }

      else
      {
      }

      sub_100200D34(v9, v6);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v6;
}

uint64_t sub_10020A4A4(char a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 & 1;
  sub_10020640C(a1 & 1, a2, a3, &v14);
  if (!v4)
  {
    v3 = v15;
    if (v15)
    {
      v6 = v14;
      if (v14 >> 61)
      {
        v10 = type metadata accessor for DecodingError();
        swift_allocError();
        v12 = v11;
        sub_1000039E8(&qword_1004A7168);
        *v12 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.typeMismatch(_:), v10);
        swift_willThrow();
      }

      else
      {
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      v16 = &type metadata for Config.Tailspin.ClassConfig.SubclassConfig.VersionOneKeys;
      v17 = sub_1002201B8();
      LOBYTE(v14) = v5;
      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      sub_100003B20(&v14, v7);
      sub_1000039E8(&qword_1004A7170);

      v9._countAndFlagsBits = 0x756F6620746F6E20;
      v9._object = 0xEA0000000000646ELL;
      String.append(_:)(v9);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v8, enum case for DecodingError.keyNotFound(_:), v3);
      sub_100003C3C(&v14);
      swift_willThrow();
    }
  }

  return v3;
}

void *sub_10020A744(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_1002066E4(a1, a2, a3, &v18);
  if (!v4)
  {
    v3 = v19;
    if (v19)
    {
      v6 = v18;
      if (v18 >> 61)
      {
        v12 = type metadata accessor for DecodingError();
        swift_allocError();
        v14 = v13;
        sub_1000039E8(&qword_1004A7168);
        *v14 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v12 - 8) + 104))(v14, enum case for DecodingError.typeMismatch(_:), v12);
        swift_willThrow();
      }

      else
      {
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      v20 = &type metadata for Config.Tailspin.ClassConfig.VersionOneKeys;
      v21 = sub_10022020C();
      LOBYTE(v18) = a1;
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      sub_100003B20(&v18, v8);
      if (a1)
      {
        if (a1 == 1)
        {
          v10 = 0xED000064656C6261;
          v11 = 0x6E655F7373616C63;
        }

        else
        {
          v10 = 0x800000010043D690;
          v11 = 0xD000000000000010;
        }
      }

      else
      {
        v10 = 0xEC0000007265626DLL;
        v11 = 0x756E5F7373616C63;
      }

      sub_1000039E8(&qword_1004A7170);
      v17[0] = v11;
      v17[1] = v10;

      v15._countAndFlagsBits = 0x756F6620746F6E20;
      v3 = v17;
      v15._object = 0xEA0000000000646ELL;
      String.append(_:)(v15);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.keyNotFound(_:), v7);
      sub_100003C3C(&v18);
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_10020AA04(char a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 & 1;
  sub_10020713C(a1 & 1, a2, a3, &v14);
  if (!v4)
  {
    v3 = v15;
    if (v15)
    {
      v6 = v14;
      if (v14 >> 61)
      {
        v10 = type metadata accessor for DecodingError();
        swift_allocError();
        v12 = v11;
        sub_1000039E8(&qword_1004A7168);
        *v12 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.typeMismatch(_:), v10);
        swift_willThrow();
      }

      else
      {
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      v16 = &type metadata for Config.TailspinVersionOneKeys;
      v17 = sub_1002205A8();
      LOBYTE(v14) = v5;
      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      sub_100003B20(&v14, v7);
      sub_1000039E8(&qword_1004A7170);

      v9._countAndFlagsBits = 0x756F6620746F6E20;
      v9._object = 0xEA0000000000646ELL;
      String.append(_:)(v9);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v8, enum case for DecodingError.keyNotFound(_:), v3);
      sub_100003C3C(&v14);
      swift_willThrow();
    }
  }

  return v3;
}

void *sub_10020AC98(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v16);
  if (!v4)
  {
    v3 = v17;
    if (v17)
    {
      v6 = v16;
      v7 = v16 >> 61;
      if (v16 >> 61)
      {
        v8 = type metadata accessor for DecodingError();
        swift_allocError();
        v10 = v9;
        v18 = sub_1000039E8(&qword_1004A7168);
        *v10 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        v11 = enum case for DecodingError.typeMismatch(_:);
        v12 = *(*(v8 - 8) + 104);
        v12(v10, enum case for DecodingError.typeMismatch(_:), v8);
        swift_willThrow();
        if (v7 == 3)
        {

          v13 = String._bridgeToObjectiveC()();

          [v13 BOOLValue];
        }

        else
        {
          swift_allocError();
          v15 = v14;
          *v14 = &type metadata for String;

          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          v12(v15, v11, v8);
          swift_willThrow();

          swift_willThrow();
        }

        sub_100200D34(v6, v3);
      }

      else
      {

        sub_100200D34(v6, v3);
      }
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_10020AF58(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_1002069AC(a1, a2, a3, &v16);
  if (!v4)
  {
    v3 = v17;
    if (v17)
    {
      v6 = v16;
      v7 = v16 >> 61;
      if (v16 >> 61)
      {
        v8 = type metadata accessor for DecodingError();
        swift_allocError();
        v10 = v9;
        v18 = sub_1000039E8(&qword_1004A7168);
        *v10 = &type metadata for Bool;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        v11 = enum case for DecodingError.typeMismatch(_:);
        v12 = *(*(v8 - 8) + 104);
        v12(v10, enum case for DecodingError.typeMismatch(_:), v8);
        swift_willThrow();
        if (v7 == 3)
        {

          v13 = String._bridgeToObjectiveC()();

          [v13 BOOLValue];
        }

        else
        {
          swift_allocError();
          v15 = v14;
          *v14 = &type metadata for String;

          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          v12(v15, v11, v8);
          swift_willThrow();

          swift_willThrow();
        }

        sub_100200D34(v6, v3);
      }

      else
      {

        sub_100200D34(v6, v3);
      }
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_10020B1E8(char a1, uint64_t a2, uint64_t a3)
{
  v81 = a2;
  v82 = a3;
  v4 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v63 - v5;
  v7 = type metadata accessor for URL();
  v80 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000039E8(&qword_1004AD1A0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = (&v63 - v16);
  __chkstk_darwin(v15);
  v19 = &v63 - v18;
  v20 = v87;
  sub_1002060D0(a1, v81, v82, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v83);
  if (v20)
  {
    return v7;
  }

  v76 = v7;
  v77 = v9;
  v22 = v80;
  v75 = v6;
  v87 = v19;
  v78 = v14;
  v79 = v17;
  v81 = v11;
  v23 = v84;
  if (!v84)
  {
    return _swiftEmptyArrayStorage;
  }

  v82 = v10;
  v24 = v83;

  v25 = sub_100187218(_swiftEmptyArrayStorage);
  v26 = type metadata accessor for JSEnumDecoder();
  v27 = swift_allocObject();
  v27[3] = v25;
  v27[4] = v24;
  v27[2] = v23;
  v85 = v26;
  v86 = sub_1001FA940();
  v83 = v27;
  sub_1001B5418();
  v28 = Dictionary<>.init(from:)();
  v29 = __chkstk_darwin(v28);
  *(&v63 - 2) = v24;
  *(&v63 - 1) = v23;
  v30 = sub_10021BDE8(v29, sub_100220AB0, (&v63 - 4));
  v66 = 0;
  v31 = v30;
  v65 = v23;
  v64 = v24;

  v32 = sub_1001877F8(_swiftEmptyArrayStorage);
  v74 = v31[2];
  if (!v74)
  {
LABEL_29:

    v7 = v65;

    sub_100200D34(v64, v7);
    return v7;
  }

  v33 = 0;
  v34 = v81;
  v73 = v31 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v71 = (v22 + 32);
  v72 = (v22 + 48);
  v67 = v22 + 40;
  v68 = (v22 + 56);
  v35 = v79;
  v36 = v76;
  v70 = v31;
  while (v33 < v31[2])
  {
    v39 = &v73[*(v34 + 72) * v33];
    v40 = v87;
    sub_100013E54(v39, v87, &qword_1004AD1A0);
    sub_100013E54(v40, v35, &qword_1004AD1A0);
    v42 = *v35;
    v41 = v35[1];
    v43 = v40;
    v44 = v78;
    sub_100013E54(v43, v78, &qword_1004AD1A0);

    v45 = *(v82 + 48);
    if ((*v72)(v44 + v45, 1, v36) == 1)
    {
      sub_100013F2C(v44 + v45, &qword_1004A6D30);
      v46 = sub_100013364(v42, v41);
      v48 = v47;

      if (v48)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v32;
        v35 = v79;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100184720();
          v32 = v83;
        }

        v38 = v75;
        (*(v80 + 32))(v75, v32[7] + *(v80 + 72) * v46, v36);
        sub_10033DDC8(v46, v32);
        sub_100013F2C(v87, &qword_1004AD1A0);
        v37 = 0;
      }

      else
      {
        sub_100013F2C(v87, &qword_1004AD1A0);
        v37 = 1;
        v38 = v75;
        v35 = v79;
      }

      (*v68)(v38, v37, 1, v36);
      sub_100013F2C(v38, &qword_1004A6D30);
      v34 = v81;
      v31 = v70;
      goto LABEL_10;
    }

    v69 = *v71;
    v69(v77, v44 + v45, v36);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v32;
    v52 = sub_100013364(v42, v41);
    v53 = v32[2];
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_31;
    }

    v56 = v51;
    if (v32[3] >= v55)
    {
      if (v50)
      {
        v31 = v70;
        if ((v51 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_100184720();
        v31 = v70;
        if ((v56 & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_100182BD4(v55, v50);
      v57 = sub_100013364(v42, v41);
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_33;
      }

      v52 = v57;
      v31 = v70;
      if ((v56 & 1) == 0)
      {
LABEL_26:
        v32 = v83;
        v83[(v52 >> 6) + 8] |= 1 << v52;
        v59 = (v32[6] + 16 * v52);
        *v59 = v42;
        v59[1] = v41;
        v69((v32[7] + *(v80 + 72) * v52), v77, v76);
        sub_100013F2C(v87, &qword_1004AD1A0);
        v60 = v32[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_32;
        }

        v32[2] = v62;
        v36 = v76;
        goto LABEL_28;
      }
    }

    v32 = v83;
    v36 = v76;
    (*(v80 + 40))(v83[7] + *(v80 + 72) * v52, v77, v76);
    sub_100013F2C(v87, &qword_1004AD1A0);
LABEL_28:
    v34 = v81;
    v35 = v79;
LABEL_10:
    ++v33;
    sub_100013F2C(v35 + *(v82 + 48), &qword_1004A6D30);
    if (v74 == v33)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10020B9E0(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v10);
  if (!v4)
  {
    v3 = v11;
    if (v11)
    {
      v6 = v10;
      if (v10 >> 61 == 3)
      {
      }

      else
      {
        v7 = type metadata accessor for DecodingError();
        swift_allocError();
        v9 = v8;
        sub_1000039E8(&qword_1004A7168);
        *v9 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.typeMismatch(_:), v7);
        swift_willThrow();
      }

      sub_100200D34(v6, v3);
    }
  }

  return v3;
}

uint64_t sub_10020BB88(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_100013364(0x73656C7572, 0xE500000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a1 + 56) + 8 * v4);
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.FirewallVersionOneKeys;
  *(inited + 64) = sub_100220500();

  sub_10034A3A8(inited);
  if (v6 >> 61 == 3)
  {

    return a2;
  }

  else
  {
    v9 = type metadata accessor for DecodingError();
    swift_allocError();
    v11 = v10;
    sub_1000039E8(&qword_1004A7168);
    *v11 = &type metadata for String;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v9);
    swift_willThrow();
  }
}

uint64_t sub_10020BD90(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_100205E10(a1, a2, a3, &v10);
  if (!v4)
  {
    v3 = v11;
    if (v11)
    {
      v6 = v10;
      if (v10 >> 61 == 3)
      {
      }

      else
      {
        v7 = type metadata accessor for DecodingError();
        swift_allocError();
        v9 = v8;
        sub_1000039E8(&qword_1004A7168);
        *v9 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.typeMismatch(_:), v7);
        swift_willThrow();
      }

      sub_100200D34(v6, v3);
    }
  }

  return v3;
}

void *sub_10020BF08(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  sub_1002060D0(a1, a2, a3, a4, a5, a6, &v13);
  if (!v7)
  {
    v6 = v14;
    if (v14)
    {
      v9 = v13;
      if (v13 >> 61 == 3)
      {
      }

      else
      {
        v10 = type metadata accessor for DecodingError();
        swift_allocError();
        v12 = v11;
        sub_1000039E8(&qword_1004A7168);
        *v12 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.typeMismatch(_:), v10);
        swift_willThrow();
      }

      sub_100200D34(v9, v6);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v6;
}

void *sub_10020C088(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t *__return_ptr))
{
  a4(&v11);
  if (!v5)
  {
    v4 = v12;
    if (v12)
    {
      v7 = v11;
      if (v11 >> 61 == 3)
      {
      }

      else
      {
        v8 = type metadata accessor for DecodingError();
        swift_allocError();
        v10 = v9;
        sub_1000039E8(&qword_1004A7168);
        *v10 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.typeMismatch(_:), v8);
        swift_willThrow();
      }

      sub_100200D34(v7, v4);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

void *sub_10020C20C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_100205E10(a1, a2, a3, &v18);
  if (!v4)
  {
    v3 = v19;
    if (v19)
    {
      v6 = v18;
      if (v18 >> 61 == 3)
      {
      }

      else
      {
        v11 = type metadata accessor for DecodingError();
        swift_allocError();
        v13 = v12;
        sub_1000039E8(&qword_1004A7168);
        *v13 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v11 - 8) + 104))(v13, enum case for DecodingError.typeMismatch(_:), v11);
        swift_willThrow();
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      v20 = &type metadata for Config.Root.VersionOneKeys;
      v21 = sub_1002203B0();
      LOBYTE(v18) = a1;
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      sub_100003B20(&v18, v8);
      if (a1 > 2u)
      {
        if (a1 == 3)
        {
          v10 = 0xE400000000000000;
          v14 = 1953460082;
        }

        else
        {
          if (a1 == 4)
          {
            v10 = 0xEA00000000007468;
          }

          else
          {
            v10 = 0xEF6C6C6568537468;
          }

          v14 = 0x67696C6674736F70;
        }
      }

      else if (a1)
      {
        if (a1 == 1)
        {
          v10 = 0xE900000000000074;
        }

        else
        {
          v10 = 0xEE006C6C65685374;
        }

        v14 = 0x6867696C66657270;
      }

      else
      {
        v10 = 0xED0000656D756C6FLL;
        v14 = 0x56726F4674696177;
      }

      sub_1000039E8(&qword_1004A7170);
      v17[0] = v14;
      v17[1] = v10;

      v15._countAndFlagsBits = 0x756F6620746F6E20;
      v3 = v17;
      v15._object = 0xEA0000000000646ELL;
      String.append(_:)(v15);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.keyNotFound(_:), v7);
      sub_100003C3C(&v18);
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_10020C530(char a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 & 1;
  sub_1002061E8(a1 & 1, a2, a3, &v14);
  if (!v4)
  {
    v3 = v15;
    if (v15)
    {
      v6 = v14;
      if (v14 >> 61 == 3)
      {
      }

      else
      {
        v10 = type metadata accessor for DecodingError();
        swift_allocError();
        v12 = v11;
        sub_1000039E8(&qword_1004A7168);
        *v12 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.typeMismatch(_:), v10);
        swift_willThrow();
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      v16 = &type metadata for Config.Cryptex.Cryptex.AeaDecryptionParams.VersionOneKeys;
      v17 = sub_10021E698();
      LOBYTE(v14) = v5;
      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      sub_100003B20(&v14, v7);
      sub_1000039E8(&qword_1004A7170);

      v9._countAndFlagsBits = 0x756F6620746F6E20;
      v9._object = 0xEA0000000000646ELL;
      String.append(_:)(v9);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v8, enum case for DecodingError.keyNotFound(_:), v3);
      sub_100003C3C(&v14);
      swift_willThrow();
    }
  }

  return v3;
}

void *sub_10020C7E4(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_1002074E0(a1, a2, a3, &v19);
  if (!v4)
  {
    v3 = v20;
    if (v20)
    {
      v6 = v19;
      if (v19 >> 61 == 3)
      {
      }

      else
      {
        v12 = type metadata accessor for DecodingError();
        swift_allocError();
        v14 = v13;
        sub_1000039E8(&qword_1004A7168);
        *v14 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v12 - 8) + 104))(v14, enum case for DecodingError.typeMismatch(_:), v12);
        swift_willThrow();
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      v21 = &type metadata for Config.PrefsVersionOneKeys;
      v22 = sub_100219B3C();
      LOBYTE(v19) = a1;
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      sub_100003B20(&v19, v8);
      if (a1 <= 1u)
      {
        if (a1)
        {
          v10 = 0xE500000000000000;
          v15 = 0x65756C6176;
        }

        else
        {
          v10 = 0xE300000000000000;
          v15 = 7955819;
        }
      }

      else if (a1 == 2)
      {
        v10 = 0xEE0064695F6E6F69;
        v15 = 0x746163696C707061;
      }

      else
      {
        v10 = 0xE800000000000000;
        if (a1 == 3)
        {
          v11 = 1919251317;
        }

        else
        {
          v11 = 1953722216;
        }

        v15 = v11 | 0x656D616E00000000;
      }

      sub_1000039E8(&qword_1004A7170);
      v18[0] = v15;
      v18[1] = v10;

      v16._countAndFlagsBits = 0x756F6620746F6E20;
      v3 = v18;
      v16._object = 0xEA0000000000646ELL;
      String.append(_:)(v16);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.keyNotFound(_:), v7);
      sub_100003C3C(&v19);
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_10020CAD4(char a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 & 1;
  sub_1002073A8(a1 & 1, a2, a3, &v14);
  if (!v4)
  {
    v3 = v15;
    if (v15)
    {
      v6 = v14;
      if (v14 >> 61 == 3)
      {
      }

      else
      {
        v10 = type metadata accessor for DecodingError();
        swift_allocError();
        v12 = v11;
        sub_1000039E8(&qword_1004A7168);
        *v12 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.typeMismatch(_:), v10);
        swift_willThrow();
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      v16 = &type metadata for Config.NetworkVersionOneKeys;
      v17 = sub_100219A88();
      LOBYTE(v14) = v5;
      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      sub_100003B20(&v14, v7);
      sub_1000039E8(&qword_1004A7170);

      v9._countAndFlagsBits = 0x756F6620746F6E20;
      v9._object = 0xEA0000000000646ELL;
      String.append(_:)(v9);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v8, enum case for DecodingError.keyNotFound(_:), v3);
      sub_100003C3C(&v14);
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_10020CD78(char a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 & 1;
  sub_100207270(a1 & 1, a2, a3, &v14);
  if (!v4)
  {
    v3 = v15;
    if (v15)
    {
      v6 = v14;
      if (v14 >> 61 == 3)
      {
      }

      else
      {
        v10 = type metadata accessor for DecodingError();
        swift_allocError();
        v12 = v11;
        sub_1000039E8(&qword_1004A7168);
        *v12 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.typeMismatch(_:), v10);
        swift_willThrow();
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      v16 = &type metadata for Config.NarrativeVersionOneKeys;
      v17 = sub_100220554();
      LOBYTE(v14) = v5;
      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      sub_100003B20(&v14, v7);
      sub_1000039E8(&qword_1004A7170);

      v9._countAndFlagsBits = 0x756F6620746F6E20;
      v9._object = 0xEA0000000000646ELL;
      String.append(_:)(v9);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v8, enum case for DecodingError.keyNotFound(_:), v3);
      sub_100003C3C(&v14);
      swift_willThrow();
    }
  }

  return v3;
}

void *sub_10020D01C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_1002069AC(a1, a2, a3, &v18);
  if (!v4)
  {
    v3 = v19;
    if (v19)
    {
      v6 = v18;
      if (v18 >> 61 == 3)
      {
      }

      else
      {
        v12 = type metadata accessor for DecodingError();
        swift_allocError();
        v14 = v13;
        sub_1000039E8(&qword_1004A7168);
        *v14 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v12 - 8) + 104))(v14, enum case for DecodingError.typeMismatch(_:), v12);
        swift_willThrow();
      }

      sub_100200D34(v6, v3);
    }

    else
    {
      v20 = &type metadata for Config.User.VersionOneKeys;
      v21 = sub_10022035C();
      LOBYTE(v18) = a1;
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      sub_100003B20(&v18, v8);
      if (a1 <= 3u)
      {
        if (a1 > 1u)
        {
          if (a1 == 2)
          {
            v10 = 0xE300000000000000;
            v11 = 6580583;
          }

          else
          {
            v10 = 0xE800000000000000;
            v11 = 0x64726F7773736170;
          }
        }

        else if (a1)
        {
          v11 = 6580597;
          v10 = 0xE300000000000000;
        }

        else
        {
          v10 = 0xE400000000000000;
          v11 = 1701667182;
        }
      }

      else if (a1 <= 5u)
      {
        if (a1 == 4)
        {
          v10 = 0xE700000000000000;
          v11 = 0x6E696D64417369;
        }

        else
        {
          v10 = 0x800000010043D590;
          v11 = 0xD000000000000012;
        }
      }

      else if (a1 == 6)
      {
        v11 = 0xD000000000000011;
        v10 = 0x800000010043D5B0;
      }

      else if (a1 == 7)
      {
        v10 = 0x800000010043D5D0;
        v11 = 0xD000000000000015;
      }

      else
      {
        v10 = 0x800000010043D5F0;
        v11 = 0xD000000000000014;
      }

      sub_1000039E8(&qword_1004A7170);
      v17[0] = v11;
      v17[1] = v10;

      v15._countAndFlagsBits = 0x756F6620746F6E20;
      v3 = v17;
      v15._object = 0xEA0000000000646ELL;
      String.append(_:)(v15);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.keyNotFound(_:), v7);
      sub_100003C3C(&v18);
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_10020D3A0(char a1, uint64_t a2, uint64_t a3)
{
  sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v7);
  if (!v4)
  {
    v3 = v8;
    if (v8)
    {
      v5 = v7;
      sub_10021830C(v7, v8, &type metadata for UInt);

      sub_100200D34(v5, v3);
    }
  }

  return v3;
}

void *sub_10020D470(char a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002060D0(a1, a2, a3, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v7);
  if (!v3)
  {
    v5 = v8;
    if (v8)
    {
      v6 = v7;
      sub_10021830C(v7, v8, &type metadata for UInt);

      sub_100200D34(v6, v5);
      return v5;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_10020D554(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_1002069AC(a1, a2, a3, &v15);
  if (!v4)
  {
    v3 = v16;
    if (v16)
    {
      v7 = v15;
      sub_10021830C(v15, v16, &type metadata for UInt);

      sub_100200D34(v7, v3);
    }

    else
    {
      v17 = &type metadata for Config.User.VersionOneKeys;
      v18 = sub_10022035C();
      LOBYTE(v15) = a1;
      v8 = type metadata accessor for DecodingError();
      swift_allocError();
      v10 = v9;
      sub_100003B20(&v15, v9);
      if (a1 <= 3u)
      {
        if (a1 > 1u)
        {
          if (a1 == 2)
          {
            v11 = 0xE300000000000000;
            v12 = 6580583;
          }

          else
          {
            v11 = 0xE800000000000000;
            v12 = 0x64726F7773736170;
          }
        }

        else if (a1)
        {
          v12 = 6580597;
          v11 = 0xE300000000000000;
        }

        else
        {
          v11 = 0xE400000000000000;
          v12 = 1701667182;
        }
      }

      else if (a1 <= 5u)
      {
        if (a1 == 4)
        {
          v11 = 0xE700000000000000;
          v12 = 0x6E696D64417369;
        }

        else
        {
          v11 = 0x800000010043D590;
          v12 = 0xD000000000000012;
        }
      }

      else if (a1 == 6)
      {
        v12 = 0xD000000000000011;
        v11 = 0x800000010043D5B0;
      }

      else if (a1 == 7)
      {
        v11 = 0x800000010043D5D0;
        v12 = 0xD000000000000015;
      }

      else
      {
        v11 = 0x800000010043D5F0;
        v12 = 0xD000000000000014;
      }

      sub_1000039E8(&qword_1004A7170);
      v14[0] = v12;
      v14[1] = v11;

      v13._countAndFlagsBits = 0x756F6620746F6E20;
      v3 = v14;
      v13._object = 0xEA0000000000646ELL;
      String.append(_:)(v13);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.keyNotFound(_:), v8);
      sub_100003C3C(&v15);
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_10020D818(char a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 & 1;
  sub_10020640C(a1 & 1, a2, a3, &v11);
  if (!v3)
  {
    v4 = v12;
    if (v12)
    {
      v7 = v11;
      sub_1002181C0(v11);

      sub_100200D34(v7, v4);
    }

    else
    {
      v13 = &type metadata for Config.Tailspin.ClassConfig.SubclassConfig.VersionOneKeys;
      v14 = sub_1002201B8();
      LOBYTE(v11) = v5;
      v4 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      sub_100003B20(&v11, v8);
      sub_1000039E8(&qword_1004A7170);

      v10._countAndFlagsBits = 0x756F6620746F6E20;
      v10._object = 0xEA0000000000646ELL;
      String.append(_:)(v10);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v4 - 8) + 104))(v9, enum case for DecodingError.keyNotFound(_:), v4);
      sub_100003C3C(&v11);
      swift_willThrow();
    }
  }

  return v4;
}

void *sub_10020DA04(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_1002066E4(a1, a2, a3, &v15);
  if (!v4)
  {
    v3 = v16;
    if (v16)
    {
      v7 = v15;
      sub_1002181C0(v15);

      sub_100200D34(v7, v3);
    }

    else
    {
      v17 = &type metadata for Config.Tailspin.ClassConfig.VersionOneKeys;
      v18 = sub_10022020C();
      LOBYTE(v15) = a1;
      v8 = type metadata accessor for DecodingError();
      swift_allocError();
      v10 = v9;
      sub_100003B20(&v15, v9);
      if (a1)
      {
        if (a1 == 1)
        {
          v11 = 0xED000064656C6261;
          v12 = 0x6E655F7373616C63;
        }

        else
        {
          v11 = 0x800000010043D690;
          v12 = 0xD000000000000010;
        }
      }

      else
      {
        v11 = 0xEC0000007265626DLL;
        v12 = 0x756E5F7373616C63;
      }

      sub_1000039E8(&qword_1004A7170);
      v14[0] = v12;
      v14[1] = v11;

      v13._countAndFlagsBits = 0x756F6620746F6E20;
      v3 = v14;
      v13._object = 0xEA0000000000646ELL;
      String.append(_:)(v13);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.keyNotFound(_:), v8);
      sub_100003C3C(&v15);
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_10020DC10@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100206330(a1, a2, &v19);
  if (!v3)
  {
    v12 = v20;
    if (v20)
    {
      v13 = v19;
      sub_1001FC9DC(v19, v10);
      v17 = sub_1000039E8(&qword_1004ACD08);
      (*(v8 + 32))(a3 + *(v17 + 44), v10, v7);

      result = sub_100200D34(v13, v12);
      *a3 = v12;
    }

    else
    {
      v21 = &type metadata for Config.Package.VersionOneKeys;
      v22 = sub_10021E794();
      v14 = type metadata accessor for DecodingError();
      swift_allocError();
      v16 = v15;
      sub_1000039E8(&qword_1004A7170);
      sub_100003B20(&v19, v16);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.keyNotFound(_:), v14);
      sub_100003C3C(&v19);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10020DE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1002060D0(a1, a2, a3, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, &v23);
  if (!v4)
  {
    v14 = v24;
    if (v24)
    {
      v15 = v23;
      sub_1001FC9DC(v23, v12);
      v21 = sub_1000039E8(&qword_1004ACD08);
      (*(v10 + 32))(a4 + *(v21 + 44), v12, v9);

      result = sub_100200D34(v15, v14);
      *a4 = v14;
    }

    else
    {
      v25 = &type metadata for Config.Cryptex.VersionOneKeys;
      v26 = sub_10021E4D4();
      LOBYTE(v23) = a1;
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      sub_1000039E8(&qword_1004A7170);
      sub_100003B20(&v23, v18);
      v22[1] = Config.Cryptex.VersionOneKeys.stringValue.getter(a1);
      v22[2] = v19;

      v20._countAndFlagsBits = 0x756F6620746F6E20;
      v20._object = 0xEA0000000000646ELL;
      String.append(_:)(v20);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.keyNotFound(_:), v16);
      sub_100003C3C(&v23);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10020E104@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100206850(a1, a2, a3, &v24);
  if (!v4)
  {
    v14 = v25;
    if (v25)
    {
      v15 = v24;
      sub_1001FC9DC(v24, v12);
      v21 = sub_1000039E8(&qword_1004ACD08);
      (*(v10 + 32))(a4 + *(v21 + 44), v12, v9);

      result = sub_100200D34(v15, v14);
      *a4 = v14;
    }

    else
    {
      v26 = &type metadata for Config.Diavlo.VersionOneKeys;
      v27 = sub_10021E740();
      LOBYTE(v24) = a1;
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      sub_100003B20(&v24, v17);
      if (a1)
      {
        if (a1 == 1)
        {
          v19 = 0x800000010043D4A0;
          v20 = 0xD000000000000010;
        }

        else
        {
          v19 = 0xED00007463656E6ELL;
          v20 = 0x6F635F656C707061;
        }
      }

      else
      {
        v19 = 0xE300000000000000;
        v20 = 7107189;
      }

      sub_1000039E8(&qword_1004A7170);
      v23[1] = v20;
      v23[2] = v19;

      v22._countAndFlagsBits = 0x756F6620746F6E20;
      v22._object = 0xEA0000000000646ELL;
      String.append(_:)(v22);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.keyNotFound(_:), v16);
      sub_100003C3C(&v24);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10020E3C4(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10000E2A8(a1, v3);
  (*(v4 + 24))(v32, v3, v4);
  if (v1)
  {
    sub_100003C3C(a1);
    return v5;
  }

  v6 = v33;
  v7 = v34;
  sub_10000E2A8(v32, v33);
  result = (*(v7 + 16))(v6, v7);
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = result;
    if (result)
    {
      v10 = 0;
      v5 = _swiftEmptyArrayStorage;
      do
      {
        v35 = v5;
        v11 = v10;
        while (1)
        {
          if (v11 >= v9)
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_22;
          }

          v13 = v33;
          v12 = v34;
          sub_10000E2A8(v32, v33);
          result = (*(v12 + 24))(&v26, &type metadata for Config.Tailspin.ClassConfig, v11, &type metadata for Config.Tailspin.ClassConfig, &protocol witness table for Config.Tailspin.ClassConfig, v13, v12);
          v14 = v26;
          if (v26)
          {
            break;
          }

          ++v11;
          if (v10 == v9)
          {
            v5 = v35;
            goto LABEL_19;
          }
        }

        v16 = v30;
        v15 = v31;
        v23 = v28;
        v24 = v29;
        v22 = v27;
        v17 = v35;
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v16;
        if ((result & 1) == 0)
        {
          result = sub_10018CB8C(0, *(v17 + 16) + 1, 1, v17);
          v17 = result;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        v20 = v17;
        if (v19 >= v18 >> 1)
        {
          result = sub_10018CB8C((v18 > 1), v19 + 1, 1, v17);
          v20 = result;
        }

        v20[2] = v19 + 1;
        v21 = &v20[6 * v19];
        v5 = v20;
        v21[4] = v14;
        *(v21 + 40) = v22;
        v21[6] = v23;
        *(v21 + 56) = v24 & 1;
        v21[8] = v25;
        v21[9] = v15;
      }

      while (v10 != v9);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

LABEL_19:
    sub_100003C3C(v32);
    sub_100003C3C(a1);
    return v5;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10020E62C(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10000E2A8(a1, v3);
  (*(v4 + 24))(v28, v3, v4);
  if (v1)
  {
    sub_100003C3C(a1);
    return v5;
  }

  v6 = v29;
  v7 = v30;
  sub_10000E2A8(v28, v29);
  result = (*(v7 + 16))(v6, v7);
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = result;
    if (result)
    {
      v10 = 0;
      v5 = _swiftEmptyArrayStorage;
      do
      {
        v31 = v5;
        v11 = v10;
        while (1)
        {
          if (v11 >= v9)
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_22;
          }

          v13 = v29;
          v12 = v30;
          sub_10000E2A8(v28, v29);
          result = (*(v12 + 24))(&v24, &type metadata for Config.Tailspin.ClassConfig.SubclassConfig, v11, &type metadata for Config.Tailspin.ClassConfig.SubclassConfig, &protocol witness table for Config.Tailspin.ClassConfig.SubclassConfig, v13, v12);
          v14 = v24;
          if (v24)
          {
            break;
          }

          ++v11;
          if (v10 == v9)
          {
            v5 = v31;
            goto LABEL_19;
          }
        }

        v15 = v27;
        v16 = v26;
        v17 = v25;
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v16;
        v22 = v17;
        if ((result & 1) == 0)
        {
          result = sub_10018CCAC(0, *(v31 + 2) + 1, 1, v31);
          v31 = result;
        }

        v19 = *(v31 + 2);
        v18 = *(v31 + 3);
        if (v19 >= v18 >> 1)
        {
          result = sub_10018CCAC((v18 > 1), v19 + 1, 1, v31);
          v31 = result;
        }

        v20 = v31;
        *(v31 + 2) = v19 + 1;
        v21 = &v20[32 * v19];
        *(v21 + 4) = v14;
        v21[40] = v22;
        v5 = v20;
        *(v21 + 6) = v23;
        v21[56] = v15 & 1;
      }

      while (v10 != v9);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

LABEL_19:
    sub_100003C3C(v28);
    sub_100003C3C(a1);
    return v5;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10020E888(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10000E2A8(a1, v3);
  (*(v4 + 24))(v22, v3, v4);
  if (v1)
  {
    sub_100003C3C(a1);
    return v5;
  }

  v6 = v23;
  v7 = v24;
  sub_10000E2A8(v22, v23);
  result = (*(v7 + 16))(v6, v7);
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = result;
    if (result)
    {
      v10 = 0;
      v5 = _swiftEmptyArrayStorage;
      do
      {
        v25 = v5;
        v11 = v10;
        while (1)
        {
          if (v11 >= v9)
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_22;
          }

          v13 = v23;
          v12 = v24;
          sub_10000E2A8(v22, v23);
          result = (*(v12 + 24))(&v20, &type metadata for String, v11, &type metadata for String, &protocol witness table for String, v13, v12);
          v14 = v21;
          if (v21)
          {
            break;
          }

          ++v11;
          if (v10 == v9)
          {
            v5 = v25;
            goto LABEL_19;
          }
        }

        v15 = v20;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100011A4C(0, *(v25 + 2) + 1, 1, v25);
          v25 = result;
        }

        v17 = *(v25 + 2);
        v16 = *(v25 + 3);
        if (v17 >= v16 >> 1)
        {
          result = sub_100011A4C((v16 > 1), v17 + 1, 1, v25);
          v25 = result;
        }

        v18 = v25;
        *(v25 + 2) = v17 + 1;
        v19 = &v18[16 * v17];
        *(v19 + 4) = v15;
        *(v19 + 5) = v14;
        v5 = v18;
      }

      while (v10 != v9);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

LABEL_19:
    sub_100003C3C(v22);
    sub_100003C3C(a1);
    return v5;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10020EABC(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AD1A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for Config.Package(0);
  v32 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = a1[3];
  v13 = a1[4];
  sub_10000E2A8(a1, v12);
  (*(v13 + 24))(v33, v12, v13);
  if (v1)
  {
    return sub_100003C3C(a1);
  }

  v29 = v11;
  v30 = v9;
  v15 = v34;
  v16 = v35;
  sub_10000E2A8(v33, v34);
  result = (*(v16 + 16))(v15, v16);
  if (result < 0)
  {
    goto LABEL_21;
  }

  v17 = result;
  if (result)
  {
    v36 = (v32 + 48);
    v31 = _swiftEmptyArrayStorage;
    v28 = a1;
    v18 = 0;
    while (v18 < v17)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_20;
      }

      v21 = v34;
      v20 = v35;
      sub_10000E2A8(v33, v34);
      (*(v20 + 24))(v6, v18, v6, &protocol witness table for Config.Package, v21, v20);
      if ((*v36)(v5, 1, v6) == 1)
      {
        result = sub_100013F2C(v5, &qword_1004AD1A8);
        ++v18;
        if (v19 == v17)
        {
          a1 = v28;
          goto LABEL_18;
        }
      }

      else
      {
        v22 = v29;
        sub_100220AD8(v5, v29, type metadata accessor for Config.Package);
        sub_100220B40(v22, v30, type metadata accessor for Config.Package);
        v23 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10018CDB8(0, v23[2] + 1, 1, v23);
        }

        v25 = v23[2];
        v24 = v23[3];
        v31 = v23;
        if (v25 >= v24 >> 1)
        {
          v31 = sub_10018CDB8(v24 > 1, v25 + 1, 1, v31);
        }

        sub_100220BA8(v29, type metadata accessor for Config.Package);
        v27 = v31;
        v26 = v32;
        v31[2] = v25 + 1;
        result = sub_100220AD8(v30, v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, type metadata accessor for Config.Package);
        a1 = v28;
        if (v19 == v17)
        {
          goto LABEL_18;
        }

        v18 = v19;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_18:
  sub_100003C3C(v33);
  sub_100003C3C(a1);
  return v31;
}

uint64_t sub_10020EEA4(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10000E2A8(a1, v3);
  (*(v4 + 24))(v40, v3, v4);
  if (v1)
  {
    sub_100003C3C(a1);
    return v5;
  }

  v6 = v41;
  v7 = v42;
  sub_10000E2A8(v40, v41);
  result = (*(v7 + 16))(v6, v7);
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = result;
    v43 = a1;
    if (result)
    {
      v10 = 0;
      v5 = _swiftEmptyArrayStorage;
      do
      {
        v11 = v10;
        while (1)
        {
          if (v11 >= v9)
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_22;
          }

          v12 = v41;
          v13 = v42;
          sub_10000E2A8(v40, v41);
          (*(v13 + 24))(&v33, &type metadata for Config.FeatureFlag, v11, &type metadata for Config.FeatureFlag, &protocol witness table for Config.FeatureFlag, v12, v13);
          v31[4] = v37;
          v31[5] = v38;
          v32[0] = v39[0];
          *(v32 + 9) = *(v39 + 9);
          v31[0] = v33;
          v31[1] = v34;
          v31[2] = v35;
          v31[3] = v36;
          if (sub_100218DC8(v31) != 1)
          {
            break;
          }

          v28 = v37;
          v29 = v38;
          v30[0] = v39[0];
          *(v30 + 9) = *(v39 + 9);
          v24 = v33;
          v25 = v34;
          v26 = v35;
          v27 = v36;
          result = sub_100013F2C(&v24, &qword_1004AD1B0);
          ++v11;
          if (v10 == v9)
          {
            goto LABEL_19;
          }
        }

        v28 = v37;
        v29 = v38;
        v30[0] = v39[0];
        *(v30 + 9) = *(v39 + 9);
        v24 = v33;
        v25 = v34;
        v26 = v35;
        v27 = v36;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10018CDE0(0, *(v5 + 2) + 1, 1, v5);
          v5 = result;
        }

        v15 = *(v5 + 2);
        v14 = *(v5 + 3);
        v16 = v5;
        if (v15 >= v14 >> 1)
        {
          result = sub_10018CDE0((v14 > 1), v15 + 1, 1, v5);
          v16 = result;
        }

        *(v16 + 2) = v15 + 1;
        v17 = &v16[128 * v15];
        v5 = v16;
        v18 = v24;
        v19 = v25;
        v20 = v27;
        *(v17 + 4) = v26;
        *(v17 + 5) = v20;
        *(v17 + 2) = v18;
        *(v17 + 3) = v19;
        v21 = v28;
        v22 = v29;
        v23 = v30[0];
        *(v17 + 137) = *(v30 + 9);
        *(v17 + 7) = v22;
        *(v17 + 8) = v23;
        *(v17 + 6) = v21;
      }

      while (v10 != v9);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

LABEL_19:
    sub_100003C3C(v40);
    sub_100003C3C(v43);
    return v5;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t Config.VersionOneKeys.rawValue.getter(char a1)
{
  result = 0x73746F6F722D6163;
  switch(a1)
  {
    case 1:
      result = 0x78657470797263;
      break;
    case 2:
      result = 0x6F6C76616964;
      break;
    case 3:
      result = 0x6C6C617765726966;
      break;
    case 4:
      result = 0x6C6C6174736E69;
      break;
    case 5:
      result = 0x6567616B636170;
      break;
    case 6:
      result = 0x6E65726566657270;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x746C75736572;
      break;
    case 9:
      result = 1919251317;
      break;
    case 10:
      result = 6778732;
      break;
    case 11:
      result = 0x6B726F7774656ELL;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6E6970736C696174;
      break;
    case 14:
      result = 0x5F65727574616566;
      break;
    case 15:
      result = 0x74786574676F6CLL;
      break;
    case 16:
      v3 = 1886220131;
      goto LABEL_25;
    case 17:
      v3 = 1953722216;
LABEL_25:
      result = v3 | 0x656D616E00000000;
      break;
    case 18:
      result = 1852076390;
      break;
    case 19:
      result = 0x72657475706D6F63;
      break;
    case 20:
      result = 0x6D616E2D74736F68;
      break;
    case 21:
      result = 0x6F682D6C61636F6CLL;
      break;
    case 22:
      result = 0x6174616466726570;
      break;
    case 23:
      result = 6845299;
      break;
    case 24:
      result = 0x756177705F687373;
      break;
    case 25:
      result = 0x7972632D6B636F6CLL;
      break;
    case 26:
      result = 0x746F6F626572;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0x74696E692D657270;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    case 30:
      result = 0x63642D6575737369;
      break;
    case 31:
      result = 0x632D657275636573;
      break;
    case 32:
      result = 0x616C2D6567617375;
      break;
    case 33:
      result = 0xD00000000000002BLL;
      break;
    case 34:
      result = 0xD00000000000001CLL;
      break;
    case 35:
      result = 0xD000000000000016;
      break;
    case 36:
      result = 0xD00000000000001ELL;
      break;
    case 37:
      result = 0xD00000000000001ELL;
      break;
    case 38:
      result = 0x69742D796C707061;
      break;
    case 39:
      result = 0xD000000000000020;
      break;
    case 40:
      result = 0x2D78657470797263;
      break;
    case 41:
      result = 0x73656D756C6F76;
      break;
    case 42:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10020F788@<X0>(_BYTE *a1@<X8>)
{
  result = _s10DarwinInit6ConfigV14VersionOneKeysO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_10020F7B8@<X0>(uint64_t *a1@<X8>)
{
  result = Config.VersionOneKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10020F7EC@<X0>(_BYTE *a1@<X8>)
{
  result = _s10DarwinInit6ConfigV14VersionOneKeysO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_10020F824(uint64_t a1)
{
  v2 = sub_100218CCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020F860(uint64_t a1)
{
  v2 = sub_100218CCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.NetworkVersionOneKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6361667265746E69;
  }
}

uint64_t sub_10020F8E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 0x6361667265746E69;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 0x6361667265746E69;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10020F988()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020FA0C()
{
  String.hash(into:)();
}

Swift::Int sub_10020FA7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10020FB08(uint64_t *a1@<X8>)
{
  v2 = 0x6361667265746E69;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10020FB48()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6361667265746E69;
  }
}

uint64_t sub_10020FB90(uint64_t a1)
{
  v2 = sub_100219A88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020FBCC(uint64_t a1)
{
  v2 = sub_100219A88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10020FC2C(uint64_t a1)
{
  v2 = sub_1002205A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020FC68(uint64_t a1)
{
  v2 = sub_1002205A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10020FCC8(uint64_t a1)
{
  v2 = sub_100220554();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020FD04(uint64_t a1)
{
  v2 = sub_100220554();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL Config.FirewallVersionOneKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486420, v2);

  return v3 != 0;
}

BOOL Config.FirewallVersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486458, v2);

  return v3 != 0;
}

uint64_t sub_10020FE30@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1004864C8, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10020FE88(uint64_t a1)
{
  v2 = sub_100220500();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020FEC4(uint64_t a1)
{
  v2 = sub_100220500();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*sub_10020FF00(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1002194AC(v6, a2, a3);
  return sub_10019B5FC;
}

uint64_t (*sub_10020FF88(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1002193FC(v6, a2, a3);
  return sub_100197120;
}

unint64_t Config.PrefsVersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486500, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002100A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Config.PrefsVersionOneKeys.init(stringValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1002100D0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = Config.PrefsVersionOneKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002100F8(uint64_t a1)
{
  v2 = sub_100219B3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100210134(uint64_t a1)
{
  v2 = sub_100219B3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Authentication.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_100218CCC();
  v9 = v7(&type metadata for Config.VersionOneKeys, &type metadata for Config.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v107 = 0;
    v108 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v113 = 0;
    v15 = 2;
    v16 = _swiftEmptyArrayStorage;
    v112 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage;
    v139 = _swiftEmptyArrayStorage;
LABEL_3:
    sub_100003C3C(v3);
    v123 = v16;
    LOBYTE(v124) = v15;
    *(&v124 + 1) = v138[0];
    HIDWORD(v124) = *(v138 + 3);
    v125 = v112;
    v126 = v109;
    v127 = v111;
    v128 = v17;
    v129 = v108;
    v130 = v110;
    v131 = v11;
    v132 = v107;
    v133 = v12;
    v134 = v13;
    v135 = v139;
    v136 = v14;
    v137 = v113;
    return sub_10021E480(&v123);
  }

  v19 = sub_100209BA0(1, v9, v10);
  v21 = v20;

  v96 = a2;
  if (!v19)
  {
    v110 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v99 = 0;
    v100 = 0;
    v64 = _swiftEmptyArrayStorage;
    v65 = _swiftEmptyArrayStorage;
    v66 = _swiftEmptyArrayStorage;
    v139 = _swiftEmptyArrayStorage;
    goto LABEL_55;
  }

  v103 = v21;
  v94 = v3;
  v22 = *(v19 + 16);
  if (!v22)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v107 = 0;
    v108 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v24 = 0;
    v95 = 2;
    v26 = _swiftEmptyArrayStorage;
    v28 = _swiftEmptyArrayStorage;
    v27 = _swiftEmptyArrayStorage;
    v139 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  v23 = 0;
  v24 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  v107 = 0;
  v108 = 0;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  v95 = 2;
  v25 = _swiftEmptyArrayStorage;
  v26 = _swiftEmptyArrayStorage;
  v27 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage;
  v104 = v19;
  v101 = *(v19 + 16);
  while (2)
  {
    v102 = v25;
    while (1)
    {
      if (v23 >= v22)
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (__OFADD__(v23, 1))
      {
        goto LABEL_65;
      }

      v112 = v28;
      v113 = v24;
      v106 = v27;
      v29 = *(v19 + 16);
      v139 = v26;
      if (v23 >= v29)
      {
        v67 = type metadata accessor for DecodingError();
        swift_allocError();
        v69 = v68;
        sub_1000039E8(&qword_1004A7168);
        *v69 = &type metadata for Any + 8;

        _StringGuts.grow(_:)(20);

        v123 = 0xD000000000000012;
        v124 = 0x8000000100440060;
        *&v115 = v23;
        v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v70);

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v67 - 8) + 104))(v69, enum case for DecodingError.valueNotFound(_:), v67);
        swift_willThrow();

LABEL_61:
        v3 = v94;
        v11 = v98;
        v14 = v99;
        v12 = v97;
        v13 = v100;
        v15 = v95;
        v17 = v106;
        v16 = v102;
        goto LABEL_3;
      }

      sub_1000039E8(&qword_1004AAA00);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100376A40;
      *(v30 + 56) = &type metadata for JSEnumDecoder.IndexKey;
      *(v30 + 64) = sub_10020115C();
      *(v30 + 32) = v23;
      *(v30 + 40) = 0;
      v123 = v103;

      sub_10034A3A8(v30);
      v31 = *(v19 + 8 * v23 + 32);
      if (v31 >> 61 != 5)
      {

        v71 = sub_1000039E8(&qword_1004ACCF0);
        v72 = type metadata accessor for DecodingError();
        swift_allocError();
        v74 = v73;
        sub_1000039E8(&qword_1004A7168);
        *v74 = v71;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v72 - 8) + 104))(v74, enum case for DecodingError.typeMismatch(_:), v72);
        swift_willThrow();
        goto LABEL_59;
      }

      v105 = (v23 + 1);
      v32 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      swift_bridgeObjectRetain_n();

      if (!*(v32 + 16))
      {
        v37 = 0;
LABEL_26:
        sub_1002191A8(v37);
        goto LABEL_27;
      }

      v33 = sub_100013364(0x6E656B6F745F6777, 0xE800000000000000);
      if (v34)
      {
        v35 = *(*(v32 + 56) + 8 * v33);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_100376A40;
        *(v36 + 56) = &type metadata for Config.Cryptex.VersionOneKeys;
        *(v36 + 64) = sub_10021E4D4();
        *(v36 + 32) = 8;
        v123 = v103;

        sub_10034A3A8(v36);
        v37 = v103;
        if (v35 >> 61 != 3)
        {
          v79 = type metadata accessor for DecodingError();
          swift_allocError();
          v81 = v80;
          sub_1000039E8(&qword_1004A7168);
          *v81 = &type metadata for String;
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v79 - 8) + 104))(v81, enum case for DecodingError.typeMismatch(_:), v79);
          swift_willThrow();

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          goto LABEL_61;
        }

        v38 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v39 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

        v24 = v113;
        if (!*(v32 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        if (!*(v32 + 16))
        {
          goto LABEL_26;
        }
      }

      v40 = sub_100013364(0x6E726573755F6777, 0xEB00000000656D61);
      if ((v41 & 1) == 0)
      {
        goto LABEL_26;
      }

      v42 = *(*(v32 + 56) + 8 * v40);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_100376A40;
      *(v43 + 56) = &type metadata for Config.Cryptex.VersionOneKeys;
      *(v43 + 64) = sub_10021E4D4();
      *(v43 + 32) = 7;
      v123 = v103;

      sub_10034A3A8(v43);
      if (v42 >> 61 != 3)
      {

        sub_1002191A8(v37);

        v85 = type metadata accessor for DecodingError();
        swift_allocError();
        v87 = v86;
        sub_1000039E8(&qword_1004A7168);
        *v87 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v85 - 8) + 104))(v87, enum case for DecodingError.typeMismatch(_:), v85);
        swift_willThrow();

        goto LABEL_60;
      }

      v45 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      if (v37)
      {
        swift_bridgeObjectRetain_n();

        sub_1002191A8(v46);

        swift_bridgeObjectRelease_n();
        sub_10021E638(v108);

        sub_10021E528(v37);
        swift_bridgeObjectRelease_n();
        sub_10021E638(v37);
        v106 = v103;
        v107 = v103;
        v108 = v37;
        v110 = v38;
        v97 = v45;
        v98 = v39;
        v100 = v44;
      }

      else
      {
      }

      v24 = v113;
LABEL_27:
      v26 = v139;
      v19 = v104;
      if (*(v32 + 16))
      {
        break;
      }

      v28 = v112;
LABEL_10:

      swift_bridgeObjectRelease_n();
      ++v23;
      v22 = v101;
      v27 = v106;
      if (v105 == v101)
      {
        v139 = v102;
        goto LABEL_50;
      }
    }

    v47 = sub_100013364(0x656B6F745F776164, 0xE90000000000006ELL);
    if (v48)
    {
      v49 = *(*(v32 + 56) + 8 * v47);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_100376A40;
      *(v50 + 56) = &type metadata for Config.Cryptex.VersionOneKeys;
      *(v50 + 64) = sub_10021E4D4();
      *(v50 + 32) = 5;
      v123 = v103;

      sub_10034A3A8(v50);
      v22 = v103;
      if (v49 >> 61 == 3)
      {
        v51 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v109 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v111 = v51;
        v24 = v113;
        if (!*(v32 + 16))
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      swift_bridgeObjectRelease_n();
      v82 = type metadata accessor for DecodingError();
      swift_allocError();
      v84 = v83;
      sub_1000039E8(&qword_1004A7168);
      *v84 = &type metadata for String;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v82 - 8) + 104))(v84, enum case for DecodingError.typeMismatch(_:), v82);
      swift_willThrow();
LABEL_59:

LABEL_60:

      goto LABEL_61;
    }

    v22 = v112;
    if (!*(v32 + 16))
    {
      goto LABEL_39;
    }

LABEL_33:
    v52 = sub_100013364(0x6B6F745F6364696FLL, 0xEA00000000006E65);
    if (v53)
    {
      v54 = *(*(v32 + 56) + 8 * v52);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_100376A40;
      *(v55 + 56) = &type metadata for Config.Cryptex.VersionOneKeys;
      *(v55 + 64) = sub_10021E4D4();
      *(v55 + 32) = 6;
      v123 = v103;
      v56 = v54 & 0x1FFFFFFFFFFFFFFFLL;

      sub_10034A3A8(v55);
      v26 = v103;
      if (v54 >> 61 != 3)
      {

        swift_bridgeObjectRelease_n();
        v88 = type metadata accessor for DecodingError();
        swift_allocError();
        v90 = v89;
        sub_1000039E8(&qword_1004A7168);
        *v90 = &type metadata for String;

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v88 - 8) + 104))(v90, enum case for DecodingError.typeMismatch(_:), v88);
        swift_willThrow();

        v112 = v22;
        goto LABEL_61;
      }

      v24 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v99 = *(v56 + 16);
    }

    if (!*(v32 + 16))
    {
LABEL_39:
      v28 = v22;
      v19 = v104;
      goto LABEL_10;
    }

    v57 = sub_100013364(0x6F635F656C707061, 0xED00007463656E6ELL);
    v19 = v104;
    if ((v58 & 1) == 0)
    {
      v28 = v22;
      goto LABEL_10;
    }

    v113 = v24;
    v59 = *(*(v32 + 56) + 8 * v57);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_100376A40;
    *(v60 + 56) = &type metadata for Config.Cryptex.VersionOneKeys;
    *(v60 + 64) = sub_10021E4D4();
    *(v60 + 32) = 12;
    v123 = v103;

    sub_10034A3A8(v60);

    v139 = v103;
    if (v59 >> 61)
    {
LABEL_66:

      v91 = type metadata accessor for DecodingError();
      swift_allocError();
      v93 = v92;
      sub_1000039E8(&qword_1004A7168);
      *v93 = &type metadata for Bool;

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v91 - 8) + 104))(v93, enum case for DecodingError.typeMismatch(_:), v91);
      swift_willThrow();

      v112 = v22;
      v139 = v26;
      goto LABEL_61;
    }

    v95 = *(v59 + 16);

    v25 = v139;
    ++v23;
    v28 = v22;
    v22 = v101;
    v24 = v113;
    v27 = v106;
    if (v105 != v101)
    {
      continue;
    }

    break;
  }

LABEL_50:
  v114 = v26;
  v65 = v28;

  if (v95 != 2 || v111 || v108 || v24)
  {
    *&v115 = v139;
    BYTE8(v115) = v95;
    HIDWORD(v115) = *(v138 + 3);
    *(&v115 + 9) = v138[0];
    *&v116 = v28;
    *(&v116 + 1) = v109;
    *&v117 = v111;
    *(&v117 + 1) = v27;
    *&v118 = v108;
    *(&v118 + 1) = v110;
    *&v119 = v98;
    *(&v119 + 1) = v107;
    *&v120 = v97;
    *(&v120 + 1) = v100;
    *&v121 = v26;
    *(&v121 + 1) = v99;
    v122 = v24;
    *(v96 + 112) = v24;
    v75 = v120;
    *(v96 + 64) = v119;
    *(v96 + 80) = v75;
    *(v96 + 96) = v121;
    v76 = v115;
    v77 = v116;
    v78 = v118;
    *(v96 + 32) = v117;
    *(v96 + 48) = v78;
    *v96 = v76;
    *(v96 + 16) = v77;
    sub_10021E588(&v115, &v123);
    sub_100003C3C(v94);
    v123 = v139;
    LOBYTE(v124) = v95;
    *(&v124 + 1) = v138[0];
    HIDWORD(v124) = *(v138 + 3);
    v125 = v28;
    v126 = v109;
    v127 = v111;
    v128 = v27;
    v129 = v108;
    v130 = v110;
    v131 = v98;
    v132 = v107;
    v133 = v97;
    v134 = v100;
    v135 = v26;
    v136 = v99;
    v137 = v24;
    return sub_10021E480(&v123);
  }

  v3 = v94;
  v19 = v109;
  v66 = v27;
  v63 = v97;
  v61 = v98;
  v62 = v107;
  v64 = v114;
LABEL_55:
  sub_100003C3C(v3);
  v123 = v139;
  LOBYTE(v124) = 2;
  *(&v124 + 1) = v138[0];
  HIDWORD(v124) = *(v138 + 3);
  v125 = v65;
  v126 = v19;
  v127 = 0;
  v128 = v66;
  v129 = 0;
  v130 = v110;
  v131 = v61;
  v132 = v62;
  v133 = v63;
  v134 = v100;
  v135 = v64;
  v136 = v99;
  v137 = 0;
  result = sub_10021E480(&v123);
  *v96 = 0u;
  *(v96 + 16) = 0u;
  *(v96 + 32) = 0u;
  *(v96 + 48) = 0u;
  *(v96 + 64) = 0u;
  *(v96 + 80) = 0u;
  *(v96 + 96) = 0u;
  *(v96 + 112) = 0;
  return result;
}

{
  v43 = a2;
  v4 = sub_1000039E8(&qword_1004AD340);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = a1[3];
  v46 = a1;
  sub_10000E2A8(a1, v8);
  v9 = sub_100259FD8();
  v44 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v47 = v2;
    v48 = 0;
    v45 = 0;
    v79 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    sub_100003C3C(v46);
    v63 = _swiftEmptyArrayStorage;
    LOBYTE(v64) = 2;
    *(&v64 + 1) = v78[0];
    HIDWORD(v64) = *(v78 + 3);
    v65 = _swiftEmptyArrayStorage;
    v66 = 0;
    v67 = 0;
    v68 = _swiftEmptyArrayStorage;
    v69 = v48;
    v70 = v45;
    v71 = v79;
    v72 = v51;
    v73 = v50;
    v74 = v49;
    v76 = 0;
    v77 = 0;
    v75 = _swiftEmptyArrayStorage;
  }

  else
  {
    v42 = v5;
    v40 = sub_1002252D8(0, &qword_1004AD340, &unk_1003FC3B0, &type metadata for Config.Authentication.CodingKeys, sub_100259FD8);
    v41 = v11;
    LOBYTE(v52) = 1;
    v12 = v4;
    v13 = KeyedDecodingContainer.codingPath.getter();
    v47 = sub_1000039E8(&qword_1004AAA00);
    inited = swift_initStackObject();
    v39 = xmmword_100376A40;
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.Authentication.CodingKeys;
    *(inited + 64) = v9;
    *(inited + 32) = 1;
    v63 = v13;
    sub_10034A3A8(inited);
    v15 = v63;
    sub_1001BBB14();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v63;
    v38 = v15;
    v36 = v64;

    LOBYTE(v52) = 2;
    v16 = KeyedDecodingContainer.codingPath.getter();
    v17 = swift_initStackObject();
    *(v17 + 16) = v39;
    *(v17 + 56) = &type metadata for Config.Authentication.CodingKeys;
    *(v17 + 64) = v9;
    *(v17 + 32) = 2;
    v63 = v16;
    sub_10034A3A8(v17);
    v18 = v63;
    sub_10025A080();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v42;
    v35 = v18;
    v48 = v63;
    v45 = v64;
    v79 = v65;
    v50 = v67;
    v51 = v66;
    v49 = v68;

    sub_10021E638(0);
    v62 = 3;
    v20 = KeyedDecodingContainer.codingPath.getter();
    v21 = swift_initStackObject();
    *(v21 + 16) = v39;
    *(v21 + 56) = &type metadata for Config.Authentication.CodingKeys;
    *(v21 + 64) = v9;
    *(v21 + 32) = 3;
    v63 = v20;
    sub_10034A3A8(v21);
    v22 = v63;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = 0;
    (*(v19 + 8))(v44, v12);
    v23 = v60;
    v42 = v60;
    v44 = v61;

    v24 = v40;
    *&v52 = v40;
    v25 = v41;
    BYTE8(v52) = v41;
    v26 = v37;
    *&v53 = v38;
    *(&v53 + 1) = v37;
    v27 = v35;
    v28 = v36;
    *&v54 = v36;
    *(&v54 + 1) = v35;
    v29 = v45;
    *&v55 = v48;
    *(&v55 + 1) = v45;
    *&v56 = v79;
    *(&v56 + 1) = v51;
    *&v57 = v50;
    *(&v57 + 1) = v49;
    *&v58 = v22;
    *(&v58 + 1) = v23;
    v30 = v43;
    v59 = v44;
    *(v43 + 112) = v44;
    v31 = v57;
    v30[4] = v56;
    v30[5] = v31;
    v30[6] = v58;
    v32 = v52;
    v33 = v53;
    v34 = v55;
    v30[2] = v54;
    v30[3] = v34;
    *v30 = v32;
    v30[1] = v33;
    sub_10021E588(&v52, &v63);
    sub_100003C3C(v46);
    v63 = v24;
    LOBYTE(v64) = v25;
    v65 = v38;
    v66 = v26;
    v67 = v28;
    v68 = v27;
    v69 = v48;
    v70 = v29;
    v71 = v79;
    v72 = v51;
    v73 = v50;
    v74 = v49;
    v75 = v22;
    v76 = v42;
    v77 = v44;
  }

  return sub_10021E480(&v63);
}

uint64_t Config.Authentication.Westgate.init(token:username:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];

  *a5 = v9;
  a5[1] = v10;
  a5[2] = v11;

  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

BOOL Config.CARoots.VersionOneKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486598, v2);

  return v3 != 0;
}

BOOL Config.CARoots.VersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004865D0, v2);

  return v3 != 0;
}

Swift::Int sub_1002114E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100211554()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002115D4@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100486640, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10021162C(uint64_t a1)
{
  v2 = sub_10021E5E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100211668(uint64_t a1)
{
  v2 = sub_10021E5E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *Config.CARoots.init(from:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000E2A8(a1, v4);
  v6 = *(v5 + 16);
  v7 = sub_10021E5E4();
  v8 = v6(&type metadata for Config.CARoots.VersionOneKeys, &type metadata for Config.CARoots.VersionOneKeys, v7, v4, v5);
  if (!v1)
  {
    v2 = sub_100209F00(v8, v9);
  }

  sub_100003C3C(a1);
  return v2;
}

uint64_t sub_10021178C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_10021E5E4();
  v9 = v7(&type metadata for Config.CARoots.VersionOneKeys, &type metadata for Config.CARoots.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v11 = sub_100209F00(v9, v10);
  v13 = v12;

  result = sub_100003C3C(a1);
  *a2 = v11;
  *(a2 + 8) = v13;
  return result;
}

__n128 Config.Cryptex.Network.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10021B0FC(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

{
  sub_10025767C(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t Config.Cryptex.Cryptex.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v96 = sub_1000039E8(&qword_1004ACD10);
  __chkstk_darwin(v96);
  v92 = (v84 - v3);
  v4 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v4 - 8);
  v99 = v84 - v5;
  v6 = type metadata accessor for URL();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = __chkstk_darwin(v6);
  v91 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v98 = v84 - v9;
  v100 = sub_1000039E8(&qword_1004ACD08);
  v10 = __chkstk_darwin(v100);
  v93 = (v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v13 = (v84 - v12);
  v14 = type metadata accessor for Config.Cryptex.Cryptex(0);
  __chkstk_darwin(v14);
  v16 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1;
  sub_10000E2A8(a1, v17);
  v20 = *(v18 + 16);
  v21 = sub_10021E4D4();
  v22 = v106;
  v23 = v20(&type metadata for Config.Cryptex.VersionOneKeys, &type metadata for Config.Cryptex.VersionOneKeys, v21, v17, v18);
  if (v22)
  {
    v106 = v22;
    v25 = a1;
    return sub_100003C3C(v25);
  }

  v26 = v23;
  v27 = v24;
  v29 = v99;
  v28 = v100;
  v30 = v98;
  v97 = v16;
  v89 = v19;
  sub_10020DE60(0, v23, v24, v13);
  v106 = 0;
  v32 = *(v28 + 44);
  v33 = v94;
  v86 = v26;
  v85 = *(v94 + 16);
  v34 = v95;
  v85(v30, v13 + v32, v95);
  v35 = *(v33 + 56);
  v87 = v13;
  v88 = v27;
  v36 = v29;
  v84[1] = v33 + 56;
  v84[0] = v35;
  v35(v29, 1, 1, v34);
  v37 = v97;
  *v97 = _swiftEmptyArrayStorage;
  *(v37 + 40) = 0u;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 56) = _swiftEmptyArrayStorage;
  *(v37 + 64) = 2;
  *(v37 + 72) = _swiftEmptyArrayStorage;
  *(v37 + 80) = 0;
  *(v37 + 88) = _swiftEmptyArrayStorage;
  *(v37 + 96) = 4;
  *(v37 + 104) = _swiftEmptyArrayStorage;
  *(v37 + 112) = 0;
  *(v37 + 120) = 0;
  *(v37 + 128) = _swiftEmptyArrayStorage;
  *(v37 + 136) = 0;
  *(v37 + 144) = 1;
  v38 = (v37 + v14[10]);
  v85(&v38[*(v100 + 11)], v30, v34);
  (*(v33 + 8))(v30, v34);
  *v38 = _swiftEmptyArrayStorage;
  v39 = (v37 + v14[11]);
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
  *v39 = _swiftEmptyArrayStorage;
  v40 = (v37 + v14[12]);
  sub_100013E54(v36, v40 + *(v96 + 44), &qword_1004A6D30);
  v41 = v36;
  v42 = v87;
  sub_100013F2C(v41, &qword_1004A6D30);
  v100 = v40;
  *v40 = _swiftEmptyArrayStorage;
  v43 = v37 + v14[13];
  *v43 = _swiftEmptyArrayStorage;
  *(v43 + 8) = 2;
  v44 = *v42;
  v45 = v93;
  sub_100013E54(v38, v93, &qword_1004ACD08);

  *v45 = v44;
  sub_100013F2C(v38, &qword_1004ACD08);
  v46 = v45;
  v47 = v88;
  v48 = v86;
  sub_10003E154(v46, v38, &qword_1004ACD08);
  v49 = v106;
  sub_10020791C(15, v48, v47, &v101);
  v106 = v49;
  if (v49)
  {
    sub_100013F2C(v42, &qword_1004ACD08);

LABEL_9:

    v60 = v89;
    goto LABEL_10;
  }

  v99 = v39;
  v50 = v101;
  v52 = v104;
  v51 = v105;
  v53 = *(v97 + 1);

  v54 = v86;
  v55 = v88;
  sub_10021E638(v53);
  *v97 = v50;
  v56 = v102;
  *(v97 + 24) = v103;
  *(v97 + 8) = v56;
  *(v97 + 5) = v52;
  v37 = v97;
  *(v97 + 6) = v51;
  v57 = v106;
  v58 = sub_10020A33C(13, v54, v55, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4);
  if (v57)
  {
    v106 = v57;
    sub_100013F2C(v87, &qword_1004ACD08);

    goto LABEL_9;
  }

  *(v37 + 56) = v58;
  *(v37 + 64) = v59;
  v61 = sub_100207B58(4, v54, v55);
  v62 = v89;
  v63 = v87;
  *(v37 + 88) = v61;
  *(v37 + 96) = v64;
  *(v37 + 104) = sub_100207D74(3, v54, v55);
  *(v37 + 112) = v65;
  *(v37 + 120) = v66;
  sub_1002060D0(2, v54, v55, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, &v101);
  v67 = v102;
  if (v102)
  {
    v68 = v101;
    v69 = sub_10021830C(v101, v102, &type metadata for UInt);
    v106 = 0;
    v70 = v99;
    v71 = v69;

    sub_100200D34(v68, v67);
    v72 = v67;
    v57 = v106;
    v55 = v88;
  }

  else
  {
    v71 = 0;
    v72 = _swiftEmptyArrayStorage;
    v70 = v99;
  }

  *(v37 + 128) = v72;
  *(v37 + 136) = v71;
  *(v37 + 144) = v67 == 0;
  v73 = sub_10020BF08(1, v54, v55, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4);
  if (!v57)
  {
    *v70 = v73;
    v70[1] = v74;
    v70[2] = v75;
    sub_1002060D0(18, v54, v55, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, &v101);
    v106 = 0;

    v76 = v102;
    if (v102)
    {
      v77 = v101;
      v78 = v106;
      sub_1001FC9DC(v101, v91);
      sub_100013F2C(v63, &qword_1004ACD08);
      v106 = v78;
      if (v78)
      {
        sub_100200D34(v77, v76);
        v60 = v89;
        v37 = v97;
        goto LABEL_10;
      }

      v79 = v95;
      v80 = *(v96 + 44);
      v81 = v92;
      (*(v94 + 32))(v92 + v80, v91, v95);
      (v84[0])(v81 + v80, 0, 1, v79);

      sub_100200D34(v77, v76);
    }

    else
    {
      (v84[0])(v92 + *(v96 + 44), 1, 1, v95);
      sub_100013F2C(v63, &qword_1004ACD08);
      v76 = _swiftEmptyArrayStorage;
    }

    v82 = v92;
    *v92 = v76;
    v83 = v100;
    sub_100013F2C(v100, &qword_1004ACD10);
    sub_10003E154(v82, v83, &qword_1004ACD10);
    sub_100220AD8(v97, v90, type metadata accessor for Config.Cryptex.Cryptex);
    v25 = v89;
    return sub_100003C3C(v25);
  }

  v106 = v57;
  sub_100013F2C(v63, &qword_1004ACD08);

  v60 = v62;
LABEL_10:
  sub_100003C3C(v60);
  return sub_100220BA8(v37, type metadata accessor for Config.Cryptex.Cryptex);
}

uint64_t sub_100212354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v12(v9);
  if (!v4)
  {
    sub_100220AD8(v11, a4, a3);
    return (*(v8 + 56))(a4, 0, 1, a2);
  }

  return result;
}

uint64_t Config.Cryptex.Cryptex.AeaDecryptionParams.VersionOneKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x686372615F616561;
  }
}

uint64_t sub_100212498(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x686372615F616561;
  }

  if (v2)
  {
    v4 = 0xEE0064695F657669;
  }

  else
  {
    v4 = 0x800000010043D480;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x686372615F616561;
  }

  if (*a2)
  {
    v6 = 0x800000010043D480;
  }

  else
  {
    v6 = 0xEE0064695F657669;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100212550()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002125E4()
{
  String.hash(into:)();
}

Swift::Int sub_100212664()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100212700(unint64_t *a1@<X8>)
{
  v2 = 0x800000010043D480;
  v3 = 0x686372615F616561;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xEE0064695F657669;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_100212750()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x686372615F616561;
  }
}

uint64_t sub_1002127A8(uint64_t a1)
{
  v2 = sub_10021E698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002127E4(uint64_t a1)
{
  v2 = sub_10021E698();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Cryptex.Cryptex.AeaDecryptionParams.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_10021E698();
  v9 = v7(&type metadata for Config.Cryptex.Cryptex.AeaDecryptionParams.VersionOneKeys, &type metadata for Config.Cryptex.Cryptex.AeaDecryptionParams.VersionOneKeys, v8, v5, v6);
  if (!v2)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_10020C530(0, v9, v10);
    v32 = v14;
    v16 = v15;
    v17 = v13;
    v19 = sub_10020C530(1, v11, v12);
    v21 = v20;
    v23 = v22;

    sub_100212994(v17, v32, v16, v19, v21, v23, v28);
    v24 = v28[1];
    v25 = v30;
    v26 = v31;
    v27 = v29;
    *a2 = v28[0];
    *(a2 + 8) = v24;
    *(a2 + 16) = v27;
    *(a2 + 32) = v25;
    *(a2 + 40) = v26;
  }

  return sub_100003C3C(a1);
}

uint64_t sub_100212994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;

  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double sub_100212A1C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  Config.Cryptex.Cryptex.AeaDecryptionParams.init(from:)(a1, v8);
  if (!v2)
  {
    v5 = v8[1];
    v6 = v10;
    v7 = v11;
    *a2 = v8[0];
    *(a2 + 8) = v5;
    result = *&v9;
    *(a2 + 16) = v9;
    *(a2 + 32) = v6;
    *(a2 + 40) = v7;
  }

  return result;
}

unint64_t sub_100212A70(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x746E6169726176;
      break;
    case 2:
      result = 1702521203;
      break;
    case 3:
      result = 0x363532616873;
      break;
    case 4:
      result = 1752462689;
      break;
    case 5:
      result = 0x656B6F745F776164;
      break;
    case 6:
      result = 0x6B6F745F6364696FLL;
      break;
    case 7:
      result = 0x6E726573755F6777;
      break;
    case 8:
      result = 0x6E656B6F745F6777;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x6F635F656C707061;
      break;
    case 13:
      result = 0x6C62616568636163;
      break;
    case 14:
      result = 0x696669746E656469;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x69735F6B6E756863;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100212D08(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_100212DB4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100212E38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_100212EA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100212F10@<X0>(_BYTE *a1@<X8>)
{
  result = _s10DarwinInit6ConfigV7CryptexV14VersionOneKeysO8rawValueAGSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_100212F40@<X0>(uint64_t *a1@<X8>)
{
  result = Config.Cryptex.VersionOneKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100212F74@<X0>(_BYTE *a1@<X8>)
{
  result = _s10DarwinInit6ConfigV7CryptexV14VersionOneKeysO8rawValueAGSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_100212F9C(uint64_t a1)
{
  v2 = sub_10021E4D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100212FD8(uint64_t a1)
{
  v2 = sub_10021E4D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *Config.Cryptex.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10021C8EC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x101uLL);
  }

  return result;
}

{
  result = sub_100257C74(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x101uLL);
  }

  return result;
}

void *sub_100213060@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10021C8EC(a1, __src);
  if (!v2)
  {
    memcpy(v5, __src, 0x101uLL);
    DInitData.init(rawValue:)(v5);
    return memcpy(a2, v5, 0x101uLL);
  }

  return result;
}

unint64_t Config.Diavlo.VersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004868B0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Diavlo.VersionOneKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6F635F656C707061;
}

uint64_t sub_10021317C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000010043D4A0;
  if (v2 == 1)
  {
    v5 = 0x800000010043D4A0;
  }

  else
  {
    v3 = 0x6F635F656C707061;
    v5 = 0xED00007463656E6ELL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 7107189;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x6F635F656C707061;
    v4 = 0xED00007463656E6ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7107189;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100213288()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100213334()
{
  String.hash(into:)();
}

Swift::Int sub_1002133CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100213474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Config.Diavlo.VersionOneKeys.init(stringValue:)(*a1);
  *a2 = result;
  return result;
}

void sub_1002134A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x800000010043D4A0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x6F635F656C707061;
    v4 = 0xED00007463656E6ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7107189;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10021350C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6F635F656C707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

unint64_t sub_100213570@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = Config.Diavlo.VersionOneKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100213598(uint64_t a1)
{
  v2 = sub_10021E740();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002135D4(uint64_t a1)
{
  v2 = sub_10021E740();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Diavlo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = sub_1000039E8(&qword_1004ACD10);
  __chkstk_darwin(v45);
  v46 = (&v42 - v3);
  v4 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v4 - 8);
  v47 = &v42 - v5;
  v6 = sub_1000039E8(&qword_1004ACD08);
  __chkstk_darwin(v6);
  *&v48 = &v42 - v7;
  v8 = type metadata accessor for Config.Diavlo(0);
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v11 = a1[4];
  sub_10000E2A8(a1, v12);
  v13 = *(v11 + 16);
  v14 = sub_10021E740();
  v15 = v51;
  v16 = v13(&type metadata for Config.Diavlo.VersionOneKeys, &type metadata for Config.Diavlo.VersionOneKeys, v14, v12, v11);
  if (v15)
  {
    v41 = a1;
  }

  else
  {
    v18 = v16;
    v19 = v17;
    v20 = v6;
    v21 = v47;
    v51 = a1;
    sub_10020E104(0, v16, v17, v48);
    v23 = *(v20 + 44);
    v24 = type metadata accessor for URL();
    v42 = v18;
    v25 = v24;
    v26 = *(v24 - 8);
    v27 = v48;
    (*(v26 + 16))(v21, v48 + v23, v24);
    (*(v26 + 56))(v21, 0, 1, v25);
    v28 = v10;
    sub_100013E54(v21, v10 + *(v45 + 44), &qword_1004A6D30);
    sub_100013F2C(v21, &qword_1004A6D30);
    *v10 = _swiftEmptyArrayStorage;
    v29 = v8;
    v30 = (v10 + *(v8 + 20));
    *v30 = _swiftEmptyArrayStorage;
    *(v30 + 1) = xmmword_100376D40;
    v31 = *v27;
    v32 = v10;
    v33 = v46;
    sub_100013E54(v32, v46, &qword_1004ACD10);

    *v33 = v31;
    sub_100013F2C(v28, &qword_1004ACD10);
    v34 = v33;
    v35 = v42;
    sub_10003E154(v34, v28, &qword_1004ACD10);
    sub_100208450(1u, v35, v19, &v49);
    sub_100013F2C(v48, &qword_1004ACD08);

    v48 = v49;
    v36 = v28;
    v37 = v50;
    v38 = v30[1];
    v39 = v30[2];

    sub_100031914(v38, v39);
    *v30 = v48;
    v30[2] = v37;
    v40 = v44;
    sub_100220AD8(v36, v44, type metadata accessor for Config.Diavlo);
    (*(v43 + 56))(v40, 0, 1, v29);
    v41 = v51;
  }

  return sub_100003C3C(v41);
}

{
  v42 = a2;
  v3 = sub_1000039E8(&qword_1004ACD10);
  __chkstk_darwin(v3);
  v43 = &v37 - v4;
  v47 = sub_1000039E8(&qword_1004AD450);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = &v37 - v5;
  v7 = sub_1000039E8(&qword_1004A6D30);
  v8 = __chkstk_darwin(v7 - 8);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Config.Diavlo(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v44 = v3;
  sub_100013E54(v11, v15 + *(v3 + 44), &qword_1004A6D30);
  sub_100013F2C(v11, &qword_1004A6D30);
  *v15 = _swiftEmptyArrayStorage;
  v17 = v15 + *(v13 + 28);
  *v17 = _swiftEmptyArrayStorage;
  *(v17 + 8) = xmmword_100376D40;
  sub_10000E2A8(a1, a1[3]);
  v18 = v6;
  v19 = sub_10025A9E4();
  v20 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v36 = a1;
  }

  else
  {
    v38 = v17;
    v21 = v44;
    v48 = a1;
    v51 = 0;
    v22 = v18;
    v23 = KeyedDecodingContainer.codingPath.getter();
    v40 = sub_1000039E8(&qword_1004AAA00);
    inited = swift_initStackObject();
    v39 = xmmword_100376A40;
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.Diavlo.CodingKeys;
    *(inited + 64) = v19;
    *(inited + 32) = 0;
    v49 = v23;
    sub_10034A3A8(inited);
    v41 = v49;
    sub_1002599A0(&qword_1004A90E0, &type metadata accessor for URL);
    v25 = v45;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v43;
    sub_10003E154(v25, &v43[*(v21 + 44)], &qword_1004A6D30);
    *v26 = v41;
    sub_10001F8D8(v26, v15, &qword_1004ACD10);
    v51 = 1;
    v27 = KeyedDecodingContainer.codingPath.getter();
    v28 = swift_initStackObject();
    *(v28 + 16) = v39;
    *(v28 + 56) = &type metadata for Config.Diavlo.CodingKeys;
    *(v28 + 64) = v19;
    *(v28 + 32) = 1;
    v49 = v27;
    sub_10034A3A8(v28);
    v29 = v49;
    sub_10025AA8C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v46 + 8))(v22, v47);
    v31 = v49;
    v32 = v50;
    v33 = v38;
    v34 = v38[1];
    v35 = v38[2];

    sub_100031914(v34, v35);
    *v33 = v29;
    v33[1] = v31;
    v33[2] = v32;
    sub_100259EBC(v15, v42, type metadata accessor for Config.Diavlo);
    v36 = v48;
  }

  sub_100003C3C(v36);
  return sub_100259F24(v15, type metadata accessor for Config.Diavlo);
}

unint64_t Config.FeatureFlag.VersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486918, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.FeatureFlag.VersionOneKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E69616D6F64;
  v2 = 0x7475626972747461;
  v3 = 0x7475626972747461;
  if (a1 != 4)
  {
    v3 = 0x5F65727574616566;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x65727574616566;
  if (a1 != 1)
  {
    v4 = 0x656C62616E65;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100213C38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = *a2;
  v5 = 0x7475626972747461;
  v6 = 0xEE00656D616E5F65;
  v7 = 0x7475626972747461;
  v8 = 0xEF65756C61765F65;
  if (v2 != 4)
  {
    v7 = 0x5F65727574616566;
    v8 = 0xED00006573616870;
  }

  if (v2 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x65727574616566;
  if (v2 != 1)
  {
    v10 = 0x656C62616E65;
    v9 = 0xE600000000000000;
  }

  if (*a1)
  {
    v3 = v9;
  }

  else
  {
    v10 = 0x6E69616D6F64;
  }

  if (*a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (*a2 > 2u)
  {
    if (v4 == 3)
    {
      v13 = 0xEE00656D616E5F65;
      if (v11 != 0x7475626972747461)
      {
        goto LABEL_34;
      }
    }

    else if (v4 == 4)
    {
      v13 = 0xEF65756C61765F65;
      if (v11 != 0x7475626972747461)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xED00006573616870;
      if (v11 != 0x5F65727574616566)
      {
LABEL_34:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (*a2)
  {
    if (v4 == 1)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x65727574616566)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656C62616E65)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x6E69616D6F64)
    {
      goto LABEL_34;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

Swift::Int sub_100213E5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100213F7C()
{
  String.hash(into:)();
}

Swift::Int sub_100214088()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002141A4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Config.FeatureFlag.VersionOneKeys.init(stringValue:)(*a1);
  *a2 = result;
  return result;
}

void sub_1002141D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E69616D6F64;
  v5 = 0xEE00656D616E5F65;
  v6 = 0x7475626972747461;
  v7 = 0xEF65756C61765F65;
  v8 = 0x7475626972747461;
  if (v2 != 4)
  {
    v8 = 0x5F65727574616566;
    v7 = 0xED00006573616870;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x65727574616566;
  if (v2 != 1)
  {
    v10 = 0x656C62616E65;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1002142B0()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0x7475626972747461;
  v4 = 0x7475626972747461;
  if (v1 != 4)
  {
    v4 = 0x5F65727574616566;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65727574616566;
  if (v1 != 1)
  {
    v5 = 0x656C62616E65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100214388@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = Config.FeatureFlag.VersionOneKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002143B0(uint64_t a1)
{
  v2 = sub_1002204AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002143EC(uint64_t a1)
{
  v2 = sub_1002204AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double Config.FeatureFlag.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100219D2C(a1, v8);
  if (!v2)
  {
    v5 = v12;
    a2[4] = v11;
    a2[5] = v5;
    a2[6] = v13[0];
    *(a2 + 105) = *(v13 + 9);
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    result = *&v9;
    v7 = v10;
    a2[2] = v9;
    a2[3] = v7;
  }

  return result;
}

{
  sub_1002543F0(a1, v8);
  if (!v2)
  {
    v5 = v12;
    a2[4] = v11;
    a2[5] = v5;
    a2[6] = v13[0];
    *(a2 + 105) = *(v13 + 9);
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    result = *&v9;
    v7 = v10;
    a2[2] = v9;
    a2[3] = v7;
  }

  return result;
}

BOOL Config.Finish.ResultConfigVersionOneKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004869C8, v2);

  return v3 != 0;
}

BOOL Config.Finish.ResultConfigVersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486A00, v2);

  return v3 != 0;
}

uint64_t sub_1002145CC@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100486A98, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100214634(uint64_t a1)
{
  v2 = sub_100220458();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100214670(uint64_t a1)
{
  v2 = sub_100220458();

  return CodingKey.debugDescription.getter(a1, v2);
}

double Config.Finish.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10021AD10(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

{
  sub_100256E00(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

BOOL Config.Package.VersionOneKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486AF8, v2);

  return v3 != 0;
}

BOOL Config.Package.VersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486B30, v2);

  return v3 != 0;
}

Swift::Int sub_100214874()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1002148E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10021493C@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1002149A0@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100486BC8, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100214A08(uint64_t a1)
{
  v2 = sub_10021E794();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100214A44(uint64_t a1)
{
  v2 = sub_10021E794();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Package.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for URL();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004ACD08);
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = (&v30 - v10);
  v11 = a1[3];
  v12 = a1[4];
  sub_10000E2A8(a1, v11);
  v13 = *(v12 + 16);
  v14 = sub_10021E794();
  v15 = v13(&type metadata for Config.Package.VersionOneKeys, &type metadata for Config.Package.VersionOneKeys, v14, v11, v12);
  if (v2)
  {
    v29 = a1;
  }

  else
  {
    v18 = v33;
    v17 = v34;
    v30 = v9;
    v31 = a1;
    v19 = v35;
    sub_10020DC10(v15, v16, v36);

    v21 = v17;
    v22 = *(v17 + 16);
    v23 = v36;
    v24 = v18;
    v22(v18, v36 + *(v6 + 44), v19);
    v25 = v32;
    v22(v32 + *(v6 + 44), v24, v19);
    (*(v21 + 8))(v24, v19);
    *v25 = _swiftEmptyArrayStorage;
    v26 = *v23;

    sub_100013F2C(v23, &qword_1004ACD08);
    v27 = v30;
    sub_100013E54(v25, v30, &qword_1004ACD08);

    *v27 = v26;
    sub_100013F2C(v25, &qword_1004ACD08);
    sub_10003E154(v27, v25, &qword_1004ACD08);
    v28 = type metadata accessor for Config.Package(0);
    (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
    v29 = v31;
  }

  return sub_100003C3C(v29);
}

unint64_t Config.Log.VersionOneKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_100214E00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000018;
  }

  if (v2)
  {
    v4 = "value";
  }

  else
  {
    v4 = "system-log-privacy-level";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (*a2)
  {
    v7 = "system-log-privacy-level";
  }

  else
  {
    v7 = "value";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100214EAC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100214F2C()
{
  String.hash(into:)();
}

Swift::Int sub_100214F98()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100215020(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (*v1)
  {
    v3 = "system-log-privacy-level";
  }

  else
  {
    v3 = "value";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_100215060()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1002150B8(uint64_t a1)
{
  v2 = sub_100220404();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002150F4(uint64_t a1)
{
  v2 = sub_100220404();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Log.init(from:)(uint64_t a1)
{
  return sub_100217938(a1, sub_10021A7C4);
}

{
  return sub_100247324(a1, sub_100255050);
}

uint64_t Config.Log.PrivacyLevel.init(from:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10000E2A8(a1, v3);
  (*(v4 + 32))(v14, v3, v4);
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    v6 = v15;
    v7 = v16;
    sub_10000E2A8(v14, v15);
    v8 = (*(v7 + 48))(v6, v7);
    v11 = v10;
    v12._countAndFlagsBits = v8;
    v12._object = v11;
    v13 = _findStringSwitchCase(cases:string:)(&off_100485318, v12);

    if (v13 >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = v13;
    }

    sub_100003C3C(v14);
    sub_100003C3C(a1);
  }

  return v5;
}

double Config.Analytics.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10021BA2C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

{
  sub_100258F1C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t Config.Root.VersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486CC8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Root.VersionOneKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x56726F4674696177;
  v2 = 1953460082;
  if (a1 != 3)
  {
    v2 = 0x67696C6674736F70;
  }

  if (a1)
  {
    v1 = 0x6867696C66657270;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100215440(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED0000656D756C6FLL;
  v3 = 0x56726F4674696177;
  v4 = *a1;
  v5 = *a2;
  v6 = 0xE400000000000000;
  v7 = 1953460082;
  v8 = 0xEA00000000007468;
  if (v4 != 4)
  {
    v8 = 0xEF6C6C6568537468;
  }

  if (v4 != 3)
  {
    v7 = 0x67696C6674736F70;
    v6 = v8;
  }

  v9 = 0x6867696C66657270;
  v10 = 0xE900000000000074;
  if (v4 != 1)
  {
    v9 = 0x6867696C66657270;
    v10 = 0xEE006C6C65685374;
  }

  if (!*a1)
  {
    v9 = 0x56726F4674696177;
    v10 = 0xED0000656D756C6FLL;
  }

  if (*a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (*a2 > 2u)
  {
    if (v5 == 3)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1953460082)
      {
        goto LABEL_31;
      }
    }

    else if (v5 == 4)
    {
      v2 = 0xEA00000000007468;
      if (v11 != 0x67696C6674736F70)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEF6C6C6568537468;
      if (v11 != 0x67696C6674736F70)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (*a2)
    {
      v3 = 0x6867696C66657270;
      if (v5 == 1)
      {
        v2 = 0xE900000000000074;
        if (v11 != 0x6867696C66657270)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xEE006C6C65685374;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

Swift::Int sub_100215630()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100215758()
{
  String.hash(into:)();
}

Swift::Int sub_10021586C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100215990@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Config.Root.VersionOneKeys.init(stringValue:)(*a1);
  *a2 = result;
  return result;
}

void sub_1002159C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656D756C6FLL;
  v4 = 0x56726F4674696177;
  v5 = 0xE400000000000000;
  v6 = 1953460082;
  v7 = 0xEA00000000007468;
  if (v2 != 4)
  {
    v7 = 0xEF6C6C6568537468;
  }

  if (v2 != 3)
  {
    v6 = 0x67696C6674736F70;
    v5 = v7;
  }

  v8 = 0xE900000000000074;
  if (v2 != 1)
  {
    v8 = 0xEE006C6C65685374;
  }

  if (*v1)
  {
    v4 = 0x6867696C66657270;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100215AA4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = Config.Root.VersionOneKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100215ACC(uint64_t a1)
{
  v2 = sub_1002203B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100215B08(uint64_t a1)
{
  v2 = sub_1002203B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100215B70@<D0>(void (*a1)(_OWORD *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  a1(v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

double sub_100215BEC@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

double Config.SecurityPolicy.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10021A56C(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

{
  sub_100254E50(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t Config.SSH.init(from:)(uint64_t a1)
{
  return sub_100217938(a1, sub_10021A928);
}

{
  return sub_100247324(a1, sub_100255234);
}

unint64_t sub_100215D4C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 1701667182;
    v5 = 6580583;
    if (a1 != 2)
    {
      v5 = 0x64726F7773736170;
    }

    if (a1)
    {
      v4 = 6580597;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    if (a1 != 7)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 4)
    {
      v2 = 0x6E696D64417369;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_100215EB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV4UserV14VersionOneKeysO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100215EE4@<X0>(uint64_t *a1@<X8>)
{
  result = Config.User.VersionOneKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100215F18@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV4UserV14VersionOneKeysO8rawValueAGSgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100215F5C(uint64_t a1)
{
  v2 = sub_10022035C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100215F98(uint64_t a1)
{
  v2 = sub_10022035C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 Config.User.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10021D87C(a1, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v5;
    *(a2 + 224) = v11[14];
    v6 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v6;
    v7 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v7;
    v8 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v8;
    v9 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v9;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
    result = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = result;
  }

  return result;
}

{
  sub_1002562EC(a1, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v5;
    *(a2 + 224) = v11[14];
    v6 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v6;
    v7 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v7;
    v8 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v8;
    v9 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v9;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
    result = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = result;
  }

  return result;
}

__n128 Config.User.Authentication.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10021DCA8(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

{
  sub_100255F2C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t Config.User.Authentication.ESC.VersionOneKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7370756F7267;
  }

  else
  {
    return 0x617069636E697270;
  }
}

uint64_t sub_1002160EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7370756F7267;
  }

  else
  {
    v3 = 0x617069636E697270;
  }

  if (v2)
  {
    v4 = 0xEA0000000000736CLL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7370756F7267;
  }

  else
  {
    v5 = 0x617069636E697270;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA0000000000736CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100216194()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100216218()
{
  String.hash(into:)();
}

Swift::Int sub_100216288()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100216314(uint64_t *a1@<X8>)
{
  v2 = 0x617069636E697270;
  if (*v1)
  {
    v2 = 0x7370756F7267;
  }

  v3 = 0xEA0000000000736CLL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100216354()
{
  if (*v0)
  {
    return 0x7370756F7267;
  }

  else
  {
    return 0x617069636E697270;
  }
}

uint64_t sub_10021639C(uint64_t a1)
{
  v2 = sub_100220308();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002163D8(uint64_t a1)
{
  v2 = sub_100220308();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *Config.User.Authentication.ESC.init(from:)(void *a1)
{
  result = sub_10021E2C4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_100216440@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10021E2C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t Config.User.Authentication.Memento.VersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486EF0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002164C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Config.User.Authentication.Memento.VersionOneKeys.init(stringValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1002164F0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = Config.User.Authentication.Memento.VersionOneKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100216518(uint64_t a1)
{
  v2 = sub_1002202B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100216554(uint64_t a1)
{
  v2 = sub_1002202B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double Config.User.Authentication.Memento.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10021DFE0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

{
  sub_100255C40(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

void *String.init(from:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10000E2A8(a1, v3);
  (*(v4 + 32))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    sub_10000E2A8(v9, v10);
    v5 = (*(v7 + 48))(v6, v7);
    sub_100003C3C(v9);
  }

  sub_100003C3C(a1);
  return v5;
}

uint64_t sub_1002166CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  (*(v6 + 32))(v13, v5, v6);
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v7 = v14;
  v8 = v15;
  sub_10000E2A8(v13, v14);
  v9 = (*(v8 + 48))(v7, v8);
  v11 = v10;
  sub_100003C3C(v13);
  result = sub_100003C3C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

unint64_t Config.Tailspin.VersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486F58, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t Config.Tailspin.VersionOneKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x735F726566667562;
  if (a1 != 2)
  {
    v1 = 0x6F635F7373616C63;
  }

  v2 = 0xD000000000000018;
  if (a1)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002168A0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF7465735F657A69;
  v3 = 0x735F726566667562;
  v4 = *a1;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 0x735F726566667562;
    }

    else
    {
      v5 = 0x6F635F7373616C63;
    }

    if (v4 == 2)
    {
      v6 = 0xEF7465735F657A69;
    }

    else
    {
      v6 = 0xED0000736769666ELL;
    }
  }

  else
  {
    if (*a1)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (v4)
    {
      v6 = 0x800000010043D630;
    }

    else
    {
      v6 = 0x800000010043D610;
    }
  }

  if (*a2 != 2)
  {
    v3 = 0x6F635F7373616C63;
    v2 = 0xED0000736769666ELL;
  }

  v7 = 0xD000000000000018;
  v8 = 0x800000010043D630;
  if (*a2)
  {
    v7 = 0xD00000000000001ALL;
  }

  else
  {
    v8 = 0x800000010043D610;
  }

  if (*a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  if (*a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1002169FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100216ADC()
{
  String.hash(into:)();
}

Swift::Int sub_100216BA8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100216C84@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Config.Tailspin.VersionOneKeys.init(stringValue:)(*a1);
  *a2 = result;
  return result;
}

void sub_100216CB4(unint64_t *a1@<X8>)
{
  v2 = 0xEF7465735F657A69;
  v3 = 0x735F726566667562;
  if (*v1 != 2)
  {
    v3 = 0x6F635F7373616C63;
    v2 = 0xED0000736769666ELL;
  }

  v4 = 0xD000000000000018;
  v5 = 0x800000010043D610;
  if (*v1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x800000010043D630;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100216D50@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = Config.Tailspin.VersionOneKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100216D78(uint64_t a1)
{
  v2 = sub_100220260();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100216DB4(uint64_t a1)
{
  v2 = sub_100220260();

  return CodingKey.debugDescription.getter(a1, v2);
}

double Config.Tailspin.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10021C178(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

{
  sub_100258B68(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t Config.Tailspin.ClassConfig.VersionOneKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486FD8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Tailspin.ClassConfig.VersionOneKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x756E5F7373616C63;
  }

  if (a1 == 1)
  {
    return 0x6E655F7373616C63;
  }

  return 0xD000000000000010;
}

uint64_t sub_100216F0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E655F7373616C63;
  v4 = 0xED000064656C6261;
  v5 = 0x800000010043D690;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000010043D690;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x756E5F7373616C63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC0000007265626DLL;
  }

  v8 = 0x6E655F7373616C63;
  if (*a2 == 1)
  {
    v5 = 0xED000064656C6261;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x756E5F7373616C63;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC0000007265626DLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100217024()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002170E0()
{
  String.hash(into:)();
}

Swift::Int sub_100217188()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100217240@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Config.Tailspin.ClassConfig.VersionOneKeys.init(stringValue:)(*a1);
  *a2 = result;
  return result;
}

void sub_100217270(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007265626DLL;
  v4 = 0xED000064656C6261;
  v5 = 0x6E655F7373616C63;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000010043D690;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x756E5F7373616C63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1002172E8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = Config.Tailspin.ClassConfig.VersionOneKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100217310(uint64_t a1)
{
  v2 = sub_10022020C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021734C(uint64_t a1)
{
  v2 = sub_10022020C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1002173B4@<D0>(void (*a1)(_OWORD *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

double sub_100217428@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_10021747C(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t Config.Tailspin.ClassConfig.SubclassConfig.VersionOneKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7373616C63627573;
  }
}

uint64_t sub_100217514(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7373616C63627573;
  }

  if (v2)
  {
    v4 = 0xEF7265626D756E5FLL;
  }

  else
  {
    v4 = 0x800000010043D6C0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7373616C63627573;
  }

  if (*a2)
  {
    v6 = 0x800000010043D6C0;
  }

  else
  {
    v6 = 0xEF7265626D756E5FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002175CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100217660()
{
  String.hash(into:)();
}

Swift::Int sub_1002176E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10021777C@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1002177D8(unint64_t *a1@<X8>)
{
  v2 = 0x800000010043D6C0;
  v3 = 0x7373616C63627573;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEF7265626D756E5FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_100217834@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100217894(uint64_t a1)
{
  v2 = sub_1002201B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002178D0(uint64_t a1)
{
  v2 = sub_1002201B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100217938(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_100217998@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t CredentialString.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  (*(v6 + 32))(v13, v5, v6);
  if (!v2)
  {
    v7 = v14;
    v8 = v15;
    sub_10000E2A8(v13, v14);
    v9 = (*(v8 + 48))(v7, v8);
    v11 = v10;
    sub_100003C3C(v13);
    *a2 = v9;
    a2[1] = v11;
  }

  return sub_100003C3C(a1);
}

{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    sub_10000E2A8(v9, v9[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;
    sub_100003C3C(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return sub_100003C3C(a1);
}

void *sub_100217AE0(void *a1, uint64_t (*a2)(uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_10000E2A8(a1, v5);
  (*(v6 + 32))(v12, v5, v6);
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    sub_10000E2A8(v12, v13);
    v10 = (*(v9 + 48))(v8, v9);
    v7 = a2(v10);
    sub_100003C3C(v12);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t sub_100217BFC@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, _BYTE *a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_10000E2A8(a1, v7);
  (*(v8 + 32))(v14, v7, v8);
  if (v3)
  {
    return sub_100003C3C(a1);
  }

  v9 = v15;
  v10 = v16;
  sub_10000E2A8(v14, v15);
  v11 = (*(v10 + 48))(v9, v10);
  v12 = a2(v11);
  sub_100003C3C(v14);
  result = sub_100003C3C(a1);
  *a3 = v12;
  return result;
}

uint64_t DInitData.init(from:)(void *a1)
{
  return sub_10021BB60(a1);
}

{
  return sub_10029DF2C(a1);
}

uint64_t sub_100217D10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10021BB60(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_100217D54@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100219C08(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DInitSHA256Digest.init(from:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10000E2A8(a1, v3);
  (*(v4 + 32))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    sub_10000E2A8(v9, v10);
    (*(v7 + 48))(v6, v7);
    v5 = _s10DarwinInit17DInitSHA256DigestV8argumentACSgSS_tcfC_0();
    sub_100003C3C(v9);
  }

  sub_100003C3C(a1);
  return v5;
}

uint64_t sub_100217E70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  (*(v6 + 32))(v13, v5, v6);
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v7 = v14;
  v8 = v15;
  sub_10000E2A8(v13, v14);
  (*(v8 + 48))(v7, v8);
  v9 = _s10DarwinInit17DInitSHA256DigestV8argumentACSgSS_tcfC_0();
  v11 = v10;
  sub_100003C3C(v13);
  result = sub_100003C3C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t URL.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-1] - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_10000E2A8(a1, v8);
  (*(v9 + 32))(v16, v8, v9);
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v10 = v17;
  v11 = v18;
  sub_10000E2A8(v16, v17);
  (*(v11 + 48))(v10, v11);
  URL.init(string:)();

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v7, 1, v13))
  {
    (*(v14 + 32))(a2, v7, v13);
    sub_100003C3C(v16);
    (*(v14 + 56))(a2, 0, 1, v13);
    return sub_100003C3C(a1);
  }

  sub_100013F2C(v7, &qword_1004A6D30);
  sub_100003C3C(v16);
  sub_100003C3C(a1);
  return (*(v14 + 56))(a2, 1, 1, v13);
}

unint64_t sub_1002181C0(unint64_t result)
{
  if (result >> 61 != 1)
  {
    v1 = type metadata accessor for DecodingError();
    swift_allocError();
    v3 = v2;
    sub_1000039E8(&qword_1004A7168);
    *v3 = &type metadata for UInt8;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v1 - 8) + 104))(v3, enum case for DecodingError.typeMismatch(_:), v1);
    return swift_willThrow();
  }

  if ((*((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (result > 0xFF)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_10021830C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 61 == 1)
  {
    v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v3 < 0)
    {
      __break(1u);
    }

    else if (!v3)
    {
      return *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    }

    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for DecodingError();
    swift_allocError();
    v7 = v6;
    sub_1000039E8(&qword_1004A7168);
    *v7 = a3;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v5 - 8) + 104))(v7, enum case for DecodingError.typeMismatch(_:), v5);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_100218450(unint64_t a1)
{
  if (a1 >> 61 != 1)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    sub_1000039E8(&qword_1004A7168);
    *v5 = &type metadata for Int8;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, enum case for DecodingError.typeMismatch(_:), v3);
    return swift_willThrow();
  }

  v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  result = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (__PAIR128__(*(v1 + 24), result) < __PAIR128__(-1, -128))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7F)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_100218584(unint64_t a1)
{
  if (a1 >> 61 != 1)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    sub_1000039E8(&qword_1004A7168);
    *v5 = &type metadata for Int16;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, enum case for DecodingError.typeMismatch(_:), v3);
    return swift_willThrow();
  }

  v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  result = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (__PAIR128__(*(v1 + 24), result) < __PAIR128__(-1, -32768))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7FFF)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1002186B8(unint64_t a1)
{
  if (a1 >> 61 != 1)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    sub_1000039E8(&qword_1004A7168);
    *v5 = &type metadata for Int32;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, enum case for DecodingError.typeMismatch(_:), v3);
    return swift_willThrow();
  }

  v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  result = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (__PAIR128__(*(v1 + 24), result) < __PAIR128__(-1, 0xFFFFFFFF80000000))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_100218810(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 61 != 1)
  {
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    sub_1000039E8(&qword_1004A7168);
    *v8 = a3;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.typeMismatch(_:), v6);
    return swift_willThrow();
  }

  v3 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  result = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (__PAIR128__(*(v3 + 24), result) < __PAIR128__(-1, 0x8000000000000000))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_10021894C(unint64_t a1)
{
  if (a1 >> 61 == 1)
  {
    return *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v2 = type metadata accessor for DecodingError();
  swift_allocError();
  v4 = v3;
  sub_1000039E8(&qword_1004A7168);
  *v4 = &type metadata for Int128;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
  return swift_willThrow();
}

unint64_t sub_100218A58(unint64_t result)
{
  if (result >> 61 != 1)
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168);
    *v4 = &type metadata for UInt16;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    return swift_willThrow();
  }

  v1 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (v1 | (result >> 16))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_100218B7C(unint64_t result)
{
  if (result >> 61 != 1)
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    sub_1000039E8(&qword_1004A7168);
    *v4 = &type metadata for UInt32;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, enum case for DecodingError.typeMismatch(_:), v2);
    return swift_willThrow();
  }

  v1 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (v1 | HIDWORD(result))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

double sub_100218CA0(uint64_t a1)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100218CCC()
{
  result = qword_1004ACDA8;
  if (!qword_1004ACDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACDA8);
  }

  return result;
}

unint64_t sub_100218D20()
{
  result = qword_1004ACDB0;
  if (!qword_1004ACDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACDB0);
  }

  return result;
}

unint64_t sub_100218D74()
{
  result = qword_1004ACDB8;
  if (!qword_1004ACDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACDB8);
  }

  return result;
}

uint64_t sub_100218DC8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100218DE0()
{
  result = qword_1004ACDD0;
  if (!qword_1004ACDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACDD0);
  }

  return result;
}