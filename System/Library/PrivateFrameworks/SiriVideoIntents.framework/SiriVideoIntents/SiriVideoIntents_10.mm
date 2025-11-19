uint64_t OUTLINED_FUNCTION_88_0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);

  return sub_269852CA4();
}

void OUTLINED_FUNCTION_93_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  *(v12 + 14) = v11;
  *(v12 + 22) = 1024;
  *(v12 + 24) = a11;
}

uint64_t OUTLINED_FUNCTION_94_1()
{
  v2 = v0[135];
  v3 = v0[122];
  v4 = v0[107] + 352;

  return sub_26976FC28(v4, (v0 + 22));
}

uint64_t *OUTLINED_FUNCTION_95_1(void *a1, uint64_t a2)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a2);
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_96_1()
{
  v3 = v0[120];
  v4 = v0[116];
  v5 = v0[115];
  v6 = v0[107];
  v7 = v0[104];
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return sub_2698535C4();
}

uint64_t OUTLINED_FUNCTION_99_0()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_100_0()
{
  v1 = *(v0 + 560);
  *(v0 + 400) = *(v0 + 544);
  *(v0 + 416) = v1;
  result = *(v0 + 576);
  *(v0 + 432) = result;
  return result;
}

void OUTLINED_FUNCTION_110_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_113_0()
{

  return sub_2698551B4();
}

void *OUTLINED_FUNCTION_114_0()
{
  v1 = v0[83];
  v0[163] = v1;
  v0[164] = v0[84];
  result = __swift_project_boxed_opaque_existential_1(v0 + 80, v1);
  v0[165] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_116_0()
{
  v1 = v0[78];
  __swift_project_boxed_opaque_existential_1(v0 + 74, v0[77]);

  return sub_269854604();
}

uint64_t sub_269770590()
{
  v0 = sub_269854A94();
  v2 = v1;
  if (v0 == sub_269854A94() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_44_5();
  }

  return v5 & 1;
}

uint64_t sub_269770608(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x496C656E6E616863;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 7107189;
    }

    if (v4 == 1)
    {
      v6 = 0x800000026987A7D0;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0x496C656E6E616863;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 7107189;
    }

    if (a2 == 1)
    {
      v2 = 0x800000026987A7D0;
    }

    else
    {
      v2 = 0xE300000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_112_0();
  }

  return v8 & 1;
}

uint64_t sub_2697706EC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656C626179616C70;
  }

  else
  {
    v3 = 0x736C656E6E616863;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (a2)
  {
    v5 = 0x656C626179616C70;
  }

  else
  {
    v5 = 0x736C656E6E616863;
  }

  if (a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5();
  }

  return v8 & 1;
}

uint64_t sub_269770784(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656B6F547478656ELL;
  }

  else
  {
    v3 = 0x736D657469;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE90000000000006ELL;
  }

  if (a2)
  {
    v5 = 0x656B6F547478656ELL;
  }

  else
  {
    v5 = 0x736D657469;
  }

  if (a2)
  {
    v6 = 0xE90000000000006ELL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5();
  }

  return v8 & 1;
}

uint64_t sub_269770818(char a1, char a2)
{
  v2 = 0x656369766544;
  if (a1)
  {
    OUTLINED_FUNCTION_157();
    if (v3)
    {
      v5 = 1836019538;
    }

    else
    {
      v5 = 0x797469746E45;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x656369766544;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_157();
    if (v7)
    {
      v2 = 1836019538;
    }

    else
    {
      v2 = 0x797469746E45;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_44_5();
  }

  return v11 & 1;
}

uint64_t sub_2697708E4(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E65746E49707061;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x4974694B69726973;
    }

    else
    {
      v5 = 0x726F707075736E75;
    }

    if (v4 == 1)
    {
      v6 = 0xED0000746E65746ELL;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  else
  {
    v5 = 0x6E65746E49707061;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x4974694B69726973;
    }

    else
    {
      v3 = 0x726F707075736E75;
    }

    if (a2 == 1)
    {
      v2 = 0xED0000746E65746ELL;
    }

    else
    {
      v2 = 0xEB00000000646574;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_112_0();
  }

  return v8 & 1;
}

uint64_t sub_269770A18(char a1, char a2)
{
  v2 = 5522759;
  if (a1)
  {
    OUTLINED_FUNCTION_157();
    if (v3)
    {
      v5 = 1414745936;
    }

    else
    {
      v5 = 0x4554454C4544;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 5522759;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_157();
    if (v7)
    {
      v2 = 1414745936;
    }

    else
    {
      v2 = 0x4554454C4544;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_44_5();
  }

  return v11 & 1;
}

uint64_t sub_269770AFC(unsigned __int8 a1, char a2)
{
  v2 = 1684957542;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1684957542;
  switch(v4)
  {
    case 1:
      v5 = 2036427888;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 6579297;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x65766F6D6572;
      break;
    case 4:
      v5 = 0x6170206863746566;
      v3 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 2036427888;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 6579297;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x65766F6D6572;
      break;
    case 4:
      v2 = 0x6170206863746566;
      v6 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5();
  }

  return v8 & 1;
}

uint64_t sub_269770C40(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000747365;
  v3 = 0x42656D69546C6C41;
  v4 = a1;
  v5 = 0x42656D69546C6C41;
  v6 = 0xEB00000000747365;
  switch(v4)
  {
    case 1:
      v5 = 0x57656D69546C6C41;
      v6 = 0xEC0000007473726FLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1953719650;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x7473726F77;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x72616C75706F70;
      break;
    case 5:
      v5 = 0x6E656D6D6F636572;
      v6 = 0xEB00000000646564;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v7 = 1702323566;
      goto LABEL_9;
    case 7:
      v6 = 0xE600000000000000;
      v7 = 1701080175;
LABEL_9:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x747300000000;
      break;
    case 8:
      v6 = 0xE800000000000000;
      v5 = 0x676E6973736F7267;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x57656D69546C6C41;
      v2 = 0xEC0000007473726FLL;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1953719650;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x7473726F77;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x72616C75706F70;
      break;
    case 5:
      v3 = 0x6E656D6D6F636572;
      v2 = 0xEB00000000646564;
      break;
    case 6:
      v2 = 0xE600000000000000;
      v8 = 1702323566;
      goto LABEL_19;
    case 7:
      v2 = 0xE600000000000000;
      v8 = 1701080175;
LABEL_19:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x747300000000;
      break;
    case 8:
      v2 = 0xE800000000000000;
      v3 = 0x676E6973736F7267;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_112_0();
  }

  return v10 & 1;
}

uint64_t sub_269770E68(unsigned __int8 a1, char a2)
{
  v2 = 0x736472617761;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x736472617761;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x776F68735F7674;
      break;
    case 2:
      v5 = 0x6F736165735F7674;
      v3 = 0xE90000000000006ELL;
      break;
    case 3:
      v5 = 0x6F736970655F7674;
      v3 = 0xEA00000000006564;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x6569766F6DLL;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x6C656E6E616863;
      break;
    case 6:
      v5 = 0x656D6974776F6873;
      v3 = 0xE900000000000073;
      break;
    case 7:
      v5 = 0x73676E696874;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x72656C69617274;
      break;
    case 9:
      v3 = 0xE700000000000000;
      v5 = 0x7374656B636974;
      break;
    case 10:
      v3 = 0xE800000000000000;
      v5 = 0x7372657461656874;
      break;
    case 11:
      v5 = 0x736F65646976;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x776F68735F7674;
      break;
    case 2:
      v2 = 0x6F736165735F7674;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v2 = 0x6F736970655F7674;
      v6 = 0xEA00000000006564;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x6569766F6DLL;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x6C656E6E616863;
      break;
    case 6:
      v2 = 0x656D6974776F6873;
      v6 = 0xE900000000000073;
      break;
    case 7:
      v2 = 0x73676E696874;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x72656C69617274;
      break;
    case 9:
      v6 = 0xE700000000000000;
      v2 = 0x7374656B636974;
      break;
    case 10:
      v6 = 0xE800000000000000;
      v2 = 0x7372657461656874;
      break;
    case 11:
      v2 = 0x736F65646976;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5();
  }

  return v8 & 1;
}

uint64_t sub_26977111C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x657469726F766166;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x7473696C68736977;
    }

    else
    {
      v5 = 0x73696C6863746177;
    }

    if (v4 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else
  {
    v5 = 0x657469726F766166;
    v6 = 0xE900000000000073;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x7473696C68736977;
    }

    else
    {
      v3 = 0x73696C6863746177;
    }

    if (a2 == 1)
    {
      v2 = 0xE800000000000000;
    }

    else
    {
      v2 = 0xE900000000000074;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_112_0();
  }

  return v8 & 1;
}

uint64_t sub_269771208()
{
  OUTLINED_FUNCTION_149();
  v3 = 7105633;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_153();
      break;
    case 2:
      v0 = 0xE400000000000000;
      v3 = 1953718636;
      break;
    case 3:
      v0 = 0xE400000000000000;
      v3 = 1954047342;
      break;
    case 4:
      v0 = 0xE800000000000000;
      v3 = 0x73756F6976657270;
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_156();
      break;
    case 2:
      v5 = 0xE400000000000000;
      v2 = 1953718636;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v2 = 1954047342;
      break;
    case 4:
      v5 = 0xE800000000000000;
      v2 = 0x73756F6976657270;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_44_5();
  }

  return v7 & 1;
}

uint64_t sub_269771328()
{
  OUTLINED_FUNCTION_149();
  v3 = 7105633;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_153();
      break;
    case 2:
      v0 = 0xE400000000000000;
      v3 = 1953718636;
      break;
    case 3:
      v0 = 0xE700000000000000;
      v3 = 0x746E6572727563;
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_156();
      break;
    case 2:
      v5 = 0xE400000000000000;
      v2 = 1953718636;
      break;
    case 3:
      v5 = 0xE700000000000000;
      v2 = 0x746E6572727563;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_44_5();
  }

  return v7 & 1;
}

uint64_t sub_269771428(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x65674178616DLL;
  }

  else
  {
    v2 = 0x6567416E696DLL;
  }

  if (a2)
  {
    v3 = 0x65674178616DLL;
  }

  else
  {
    v3 = 0x6567416E696DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_269855584();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2697714B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_44_5();
  }

  return v10 & 1;
}

uint64_t sub_26977153C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x69736976656C6574;
  }

  else
  {
    v3 = 0x76745F656C707061;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v5 = 0x69736976656C6574;
  }

  else
  {
    v5 = 0x76745F656C707061;
  }

  if (a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5();
  }

  return v8 & 1;
}

uint64_t sub_2697715D4(unsigned __int8 a1, char a2)
{
  v2 = 0x726F746361;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x726F746361;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x726F7461657263;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x726F746365726964;
      break;
    case 3:
      v5 = 0x6174537473657567;
      goto LABEL_11;
    case 4:
      v5 = 0xD000000000000014;
      v3 = 0x800000026987A760;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x72656375646F7270;
      break;
    case 6:
      v5 = 0x72656B616DLL;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x726574697277;
      break;
    case 8:
      v5 = 0x6574636172616863;
LABEL_11:
      v3 = 0xE900000000000072;
      break;
    case 9:
      v5 = 0x6669636570736E75;
      v3 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x726F7461657263;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x726F746365726964;
      break;
    case 3:
      v2 = 0x6174537473657567;
      goto LABEL_22;
    case 4:
      v2 = 0xD000000000000014;
      v6 = 0x800000026987A760;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x72656375646F7270;
      break;
    case 6:
      v2 = 0x72656B616DLL;
      break;
    case 7:
      v6 = 0xE600000000000000;
      v2 = 0x726574697277;
      break;
    case 8:
      v2 = 0x6574636172616863;
LABEL_22:
      v6 = 0xE900000000000072;
      break;
    case 9:
      v2 = 0x6669636570736E75;
      v6 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5();
  }

  return v8 & 1;
}

uint64_t sub_269771828(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C65636E6163;
      break;
    case 3:
      v5 = 0x206D7269666E6F63;
      v3 = 0xEF746361746E6F63;
      break;
    case 4:
      v5 = 0x63207463656A6572;
      v3 = 0xEE00746361746E6FLL;
      break;
    case 5:
      v5 = 0x726F6D20776F6873;
      v3 = 0xE900000000000065;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x6B636162206F67;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C65636E6163;
      break;
    case 3:
      v2 = 0x206D7269666E6F63;
      v6 = 0xEF746361746E6F63;
      break;
    case 4:
      v2 = 0x63207463656A6572;
      v6 = 0xEE00746361746E6FLL;
      break;
    case 5:
      v2 = 0x726F6D20776F6873;
      v6 = 0xE900000000000065;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x6B636162206F67;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5();
  }

  return v8 & 1;
}

uint64_t sub_269771A0C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(a2 + 16);
  result = sub_26977DF3C(v2, result, 0);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  if (v2 < v4)
  {
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_12_11();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_269771A6C(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_2698550B4();
    if (v5)
    {
      v6 = a3;
    }

    else
    {
      v6 = result;
    }

    if (v6 >> 14 >= a2 >> 14)
    {
      sub_2698550D4();
      OUTLINED_FUNCTION_68_1();

      return OUTLINED_FUNCTION_25_2();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269771B1C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v15 = sub_269855384();

    return v15;
  }

  sub_26975004C(a2);
  v5 = OUTLINED_FUNCTION_72_0();
  v6 = sub_26977DE98(v5, a1, v2);
  if (v7)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (v8 < 0)
  {
    goto LABEL_16;
  }

  v9 = OUTLINED_FUNCTION_159();
  sub_26977DEE4(v9, v10);
  v11 = OUTLINED_FUNCTION_7_16();
  sub_26977DEE4(v11, v12);
  if ((a2 & 0xC000000000000001) != 0 && v8)
  {
    type metadata accessor for Content();

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_269855214();
      v13 = v14;
    }

    while (v8 != v14);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_269771C48(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_26977DE98(0, result, v2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = OUTLINED_FUNCTION_160();
      sub_26977DE2C(v5, v6, v7);
      OUTLINED_FUNCTION_68_1();

      return OUTLINED_FUNCTION_25_2();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269771CE8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_161(a1);
  v5 = _s13MediaNLPersonVMa(v4);
  v6 = v5;
  if (v3)
  {
    v7 = *(*(v5 - 8) + 80);
    OUTLINED_FUNCTION_18_5();
    sub_26977E360(v2 + v8, v1, _s13MediaNLPersonVMa);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v9, 1, v6);
}

id sub_269771DC0(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_269855324();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v3 = OUTLINED_FUNCTION_160();
  sub_269750050(v3);
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 32);
  }

  v4 = OUTLINED_FUNCTION_159();
  return MEMORY[0x26D646120](v4);
}

uint64_t sub_269771E4C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_161(a1);
  v6 = v5(v4);
  v7 = v6;
  if (v3)
  {
    (*(*(v6 - 8) + 16))(v1, v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v8, 1, v7);
}

void sub_269771EEC(id *a1@<X0>, void *a2@<X8>)
{
  v5 = [*a1 umcId];
  if (v5)
  {
    v6 = v5;
    sub_269854A94();
    OUTLINED_FUNCTION_68_1();
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  *a2 = v2;
  a2[1] = v3;
}

id PlayVideoIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void PlayVideoIntentHandler.init()()
{
  OUTLINED_FUNCTION_19_1();
  sub_2698538C4();
  v147[3] = &type metadata for UTSProvider;
  v147[4] = &off_287A43FA8;
  OUTLINED_FUNCTION_129();
  v2 = swift_allocObject();
  v147[0] = v2;
  v145 = &type metadata for CoreAnalyticsService;
  v146 = &xmmword_287A41610;
  v2[5] = &type metadata for UTSNetworkProvider;
  v2[6] = &off_287A43DC0;
  v3 = swift_allocObject();
  v2[2] = v3;
  sub_2697D24B0(&v144, (v3 + 16));
  v2[10] = &type metadata for CoreAnalyticsService;
  v2[11] = &xmmword_287A41610;
  if (qword_2803226B0 != -1)
  {
    OUTLINED_FUNCTION_2_15();
  }

  v4 = qword_28033D8E0;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v95 = sub_2697B9550();
  v5 = qword_280322688;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_75_2();
  }

  v6 = qword_28033D8B8;
  v7 = type metadata accessor for SiriSignalsRecorder();
  v145 = v7;
  v146 = &off_287A44CA0;
  *&v144 = v4;
  v97 = v4;
  v8 = type metadata accessor for TrialSignalCollectConfigProvider();
  v142 = v8;
  v143 = &off_287A44AE0;
  v141[0] = v6;
  v96 = type metadata accessor for ContentWith3pAppsProvider();
  OUTLINED_FUNCTION_129();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v144, v7);
  OUTLINED_FUNCTION_3_20();
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v14 = OUTLINED_FUNCTION_10_14(v13);
  v15(v14);
  __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
  OUTLINED_FUNCTION_3_20();
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v20 = OUTLINED_FUNCTION_11_17(v19);
  v21(v20);
  v22 = *v0;
  v23 = *v1;
  v9[5] = v7;
  v9[6] = &off_287A44CA0;
  v9[2] = v22;
  v9[10] = v8;
  v9[11] = &off_287A44AE0;
  v9[7] = v23;

  __swift_destroy_boxed_opaque_existential_0(v141);
  __swift_destroy_boxed_opaque_existential_0(&v144);
  sub_2696A73F8(v148, &v144);
  if (qword_280322650 != -1)
  {
    swift_once();
  }

  v24 = qword_28033D888;
  v142 = &type metadata for LSApplicationRecordProvider;
  v143 = &xmmword_287A41430;
  v92 = type metadata accessor for CarPlaySupportProvider();
  OUTLINED_FUNCTION_25_3();
  v25 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v141, &type metadata for LSApplicationRecordProvider);
  *(v25 + 40) = &type metadata for LSApplicationRecordProvider;
  *(v25 + 48) = &xmmword_287A41430;
  v26 = v25;
  __swift_destroy_boxed_opaque_existential_0(v141);
  locked = type metadata accessor for DeviceLockedProvider();
  v27 = swift_allocObject();
  v142 = &type metadata for ContentResolver;
  v143 = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v141[0] = swift_allocObject();
  sub_2696B2824(v147, v141[0] + 16);
  v139 = &type metadata for CoreAnalyticsService;
  v140 = &xmmword_287A41610;
  v137 = &off_287A44CA0;
  v136 = v7;
  v135[0] = v97;
  v134 = &off_287A40130;
  v133 = v96;
  v132[0] = v9;
  v130 = &type metadata for DefaultTipDonationService;
  v131 = &off_287A41DF8;
  v127 = &type metadata for LSApplicationRecordProvider;
  v128 = &xmmword_287A41430;
  v93 = type metadata accessor for CarSessionProvider();
  v125 = &off_287A41458;
  v124 = v93;
  v123[0] = v24;
  v122 = &off_287A41448;
  v121 = v92;
  v120[0] = v26;
  v119 = &off_287A41B20;
  v118 = locked;
  v117[0] = v27;
  v115 = &type metadata for TvProfileSelector;
  v116 = &off_287A41E28;
  v94 = type metadata accessor for PlayVideoIntentHandler();
  v28 = objc_allocWithZone(v94);
  v29 = v142;
  __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_1();
  v34 = OUTLINED_FUNCTION_124_0(v33);
  v35(v34);
  __swift_mutable_project_boxed_opaque_existential_1(v138, v139);
  v36 = v136;
  __swift_mutable_project_boxed_opaque_existential_1(v135, v136);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_1();
  v41 = OUTLINED_FUNCTION_20_8(v40);
  v42(v41);
  v43 = v133;
  __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_1();
  v48 = OUTLINED_FUNCTION_12_16(v47);
  v49(v48);
  __swift_mutable_project_boxed_opaque_existential_1(v129, v130);
  __swift_mutable_project_boxed_opaque_existential_1(v126, v127);
  __swift_mutable_project_boxed_opaque_existential_1(v123, v124);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3_1();
  v54 = OUTLINED_FUNCTION_11_17(v53);
  v55(v54);
  __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_3_1();
  v61 = (v60 - v59);
  (*(v62 + 16))(v60 - v59);
  __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_3_1();
  v67 = OUTLINED_FUNCTION_37_5(v66);
  v68(v67);
  __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
  Kind = v29->Kind;
  v70 = *v36;
  v71 = *v43;
  v72 = *v61;
  v73 = *v9;
  v113[3] = &type metadata for ContentResolver;
  v113[4] = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v74 = swift_allocObject();
  v113[0] = v74;
  v75 = *(v26 + 16);
  *(v74 + 16) = *v26;
  *(v74 + 32) = v75;
  *(v74 + 48) = *(v26 + 32);
  v112[3] = &type metadata for CoreAnalyticsService;
  v112[4] = &xmmword_287A41610;
  v111[4] = &off_287A44CA0;
  v111[3] = v7;
  v111[0] = Kind;
  v110[4] = &off_287A40130;
  v110[3] = v96;
  v110[0] = v70;
  v109[3] = &type metadata for DefaultTipDonationService;
  v109[4] = &off_287A41DF8;
  v108[3] = &type metadata for LSApplicationRecordProvider;
  v108[4] = &xmmword_287A41430;
  v107[3] = v93;
  v107[4] = &off_287A41458;
  v107[0] = v71;
  v106[3] = v92;
  v106[4] = &off_287A41448;
  v106[0] = v72;
  v105[3] = locked;
  v105[4] = &off_287A41B20;
  v105[0] = v73;
  v104[3] = &type metadata for TvProfileSelector;
  v104[4] = &off_287A41E28;
  v76 = OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver;
  sub_2696A73F8(v113, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver]);
  sub_2696A73F8(v112, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService]);
  sub_2696A73F8(&v28[v76], v103);
  __swift_mutable_project_boxed_opaque_existential_1(v103, v103[3]);
  OUTLINED_FUNCTION_3_20();
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_3_1();
  v81 = OUTLINED_FUNCTION_20_8(v80);
  v82(v81);
  v102[3] = &type metadata for ContentResolver;
  v102[4] = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v102[0] = swift_allocObject();
  OUTLINED_FUNCTION_140(v102[0]);
  v83 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v102, &type metadata for ContentResolver);
  OUTLINED_FUNCTION_3_20();
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_3_1();
  v88 = OUTLINED_FUNCTION_37_5(v87);
  v89(v88);
  v100 = &type metadata for ContentResolver;
  v101 = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  *&v99 = swift_allocObject();
  OUTLINED_FUNCTION_139(v99);

  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  *(v83 + 152) = sub_269854A04();
  sub_26968E5D4(&v99, v83 + 112);
  __swift_destroy_boxed_opaque_existential_0(v102);
  __swift_destroy_boxed_opaque_existential_0(v103);
  *&v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch] = v83;
  sub_2696A73F8(v111, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder]);
  v90 = &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_userDefaultsProvider];
  *v90 = v95;
  v90[1] = &off_287A41E38;
  sub_2696A73F8(v110, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentWith3pAppsProviding]);
  sub_2696A73F8(&v144, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState]);
  sub_2696A73F8(v109, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_tipService]);
  sub_2696A73F8(v108, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_appProvider]);
  sub_2696A73F8(v107, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carSessionProvider]);
  sub_2696A73F8(v106, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carPlaySupportProvider]);
  sub_2696A73F8(v105, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceLockedProvider]);
  sub_2696A73F8(v104, &v28[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_tvProfileSelector]);
  v98.receiver = v28;
  v98.super_class = v94;
  objc_msgSendSuper2(&v98, sel_init);

  __swift_destroy_boxed_opaque_existential_0(&v144);
  __swift_destroy_boxed_opaque_existential_0(v148);
  __swift_destroy_boxed_opaque_existential_0(v104);
  __swift_destroy_boxed_opaque_existential_0(v105);
  __swift_destroy_boxed_opaque_existential_0(v106);
  __swift_destroy_boxed_opaque_existential_0(v107);
  __swift_destroy_boxed_opaque_existential_0(v108);
  __swift_destroy_boxed_opaque_existential_0(v109);
  __swift_destroy_boxed_opaque_existential_0(v110);
  __swift_destroy_boxed_opaque_existential_0(v111);
  __swift_destroy_boxed_opaque_existential_0(v112);
  __swift_destroy_boxed_opaque_existential_0(v113);
  __swift_destroy_boxed_opaque_existential_0(v114);
  __swift_destroy_boxed_opaque_existential_0(v117);
  __swift_destroy_boxed_opaque_existential_0(v120);
  __swift_destroy_boxed_opaque_existential_0(v123);
  __swift_destroy_boxed_opaque_existential_0(v126);
  __swift_destroy_boxed_opaque_existential_0(v129);
  __swift_destroy_boxed_opaque_existential_0(v132);
  __swift_destroy_boxed_opaque_existential_0(v135);
  __swift_destroy_boxed_opaque_existential_0(v138);
  __swift_destroy_boxed_opaque_existential_0(v141);
  sub_2696B28D4(v147);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_21_0();
}

void static PlayVideoIntentHandler.handlerForIntentExtension()()
{
  OUTLINED_FUNCTION_19_1();
  v0 = type metadata accessor for IntentExtensionExecutionDeviceState();
  v1 = OUTLINED_FUNCTION_4_3(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v147 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v135 - v6;
  v8 = *MEMORY[0x277D61C58];
  v9 = sub_269854304();
  OUTLINED_FUNCTION_4_3(v9);
  (*(v10 + 104))(v7, v8);
  v11 = v0[5];
  v12 = *MEMORY[0x277D61D98];
  v13 = sub_269854334();
  OUTLINED_FUNCTION_4_3(v13);
  (*(v14 + 104))(&v7[v11], v12);
  v15 = v0[6];
  v152 = v7;
  sub_26977F188(&v7[v15]);
  v16 = [objc_opt_self() sharedPreferences];
  v151 = sub_26977DCB4(v16, &selRef_languageCode);
  v18 = v17;
  v19 = AFIsHorseman();
  v20 = AFIsNano();
  v21 = AFIsMac();
  v22 = AFIsATV();
  v23 = AFCurrentUserInterfaceIdiom();
  v24 = sub_269854A94();
  v26 = v25;

  v27 = *MEMORY[0x277D48D90];
  if (v24 == sub_269854A94() && v26 == v28)
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_269855584();
  }

  v31 = AFIsPad();
  v32 = AFIsIPod();
  v33 = v152;
  v34 = &v152[v0[7]];
  *v34 = v151;
  v34[1] = v18;
  *(v33 + v0[8]) = v19;
  *(v33 + v0[9]) = v20;
  *(v33 + v0[10]) = v21;
  *(v33 + v0[11]) = v22;
  *(v33 + v0[12]) = v30 & 1;
  *(v33 + v0[13]) = v31;
  *(v33 + v0[14]) = v32;
  v202[3] = &type metadata for UTSProvider;
  v202[4] = &off_287A43FA8;
  OUTLINED_FUNCTION_129();
  v35 = swift_allocObject();
  v202[0] = v35;
  v200 = &type metadata for CoreAnalyticsService;
  v201 = &xmmword_287A41610;
  v35[5] = &type metadata for UTSNetworkProvider;
  v35[6] = &off_287A43DC0;
  v36 = swift_allocObject();
  v35[2] = v36;
  sub_2697D24B0(&v199, (v36 + 16));
  v35[10] = &type metadata for CoreAnalyticsService;
  v35[11] = &xmmword_287A41610;
  if (qword_2803226B0 != -1)
  {
    OUTLINED_FUNCTION_2_15();
  }

  v37 = qword_28033D8E0;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v148 = sub_2697B9550();
  v38 = qword_280322688;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_75_2();
  }

  v39 = qword_28033D8B8;
  v40 = type metadata accessor for SiriSignalsRecorder();
  v200 = v40;
  v201 = &off_287A44CA0;
  *&v199 = v37;
  v41 = type metadata accessor for TrialSignalCollectConfigProvider();
  v197 = v41;
  v198 = &off_287A44AE0;
  v196[0] = v39;
  v149 = type metadata accessor for ContentWith3pAppsProvider();
  OUTLINED_FUNCTION_129();
  v42 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v199, v40);
  OUTLINED_FUNCTION_8_19();
  v146 = v43;
  OUTLINED_FUNCTION_3_20();
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_1();
  v151 = v37;
  v48 = OUTLINED_FUNCTION_20_8(v47);
  v49(v48);
  __swift_mutable_project_boxed_opaque_existential_1(v196, v197);
  OUTLINED_FUNCTION_3_20();
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3_1();
  v54 = OUTLINED_FUNCTION_162(v53);
  v55(v54);
  v56 = *v37;
  v57 = *v20;
  v150 = v42;
  v42[5] = v40;
  v138 = v40;
  v42[6] = &off_287A44CA0;
  v42[2] = v56;
  v42[10] = v41;
  v42[11] = &off_287A44AE0;
  v42[7] = v57;

  __swift_destroy_boxed_opaque_existential_0(v196);
  __swift_destroy_boxed_opaque_existential_0(&v199);
  v200 = v0;
  v201 = sub_26977E150(&qword_280324208, type metadata accessor for IntentExtensionExecutionDeviceState);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v199);
  v59 = v152;
  sub_26977E360(v152, boxed_opaque_existential_1, type metadata accessor for IntentExtensionExecutionDeviceState);
  v60 = type metadata accessor for CarSessionProvider();
  v137 = v60;
  v61 = swift_allocObject();
  v62 = v59;
  v63 = v147;
  sub_26977E360(v62, v147, type metadata accessor for IntentExtensionExecutionDeviceState);
  v64 = sub_26977DF94(v63, v61);
  v141 = v64;
  v197 = &type metadata for LSApplicationRecordProvider;
  v198 = &xmmword_287A41430;
  v65 = type metadata accessor for CarPlaySupportProvider();
  v136 = v65;
  OUTLINED_FUNCTION_25_3();
  v66 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v196, &type metadata for LSApplicationRecordProvider);
  *(v66 + 40) = &type metadata for LSApplicationRecordProvider;
  *(v66 + 48) = &xmmword_287A41430;
  v67 = v66;
  v140 = v66;
  __swift_destroy_boxed_opaque_existential_0(v196);
  locked = type metadata accessor for DeviceLockedProvider();
  v135 = locked;
  v69 = swift_allocObject();
  v197 = &type metadata for ContentResolver;
  v198 = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v196[0] = swift_allocObject();
  sub_2696B2824(v202, v196[0] + 16);
  v194 = &type metadata for CoreAnalyticsService;
  v195 = &xmmword_287A41610;
  v192 = &off_287A44CA0;
  v191 = v40;
  v190[0] = v151;
  v189 = &off_287A40130;
  v188 = v149;
  v187[0] = v150;
  v185 = &type metadata for DefaultTipDonationService;
  v186 = &off_287A41DF8;
  v182 = &type metadata for LSApplicationRecordProvider;
  v183 = &xmmword_287A41430;
  v180 = &off_287A41458;
  v179 = v60;
  v178[0] = v64;
  v177 = &off_287A41448;
  v176 = v65;
  v175[0] = v67;
  v174 = &off_287A41B20;
  v173 = locked;
  v172[0] = v69;
  v170 = &type metadata for TvProfileSelector;
  v171 = &off_287A41E28;
  v144 = type metadata accessor for PlayVideoIntentHandler();
  v70 = objc_allocWithZone(v144);
  __swift_mutable_project_boxed_opaque_existential_1(v196, v197);
  OUTLINED_FUNCTION_8_19();
  v147 = v71;
  OUTLINED_FUNCTION_3_20();
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_3_1();
  v76 = OUTLINED_FUNCTION_162(v75);
  v77(v76);
  __swift_mutable_project_boxed_opaque_existential_1(v193, v194);
  __swift_mutable_project_boxed_opaque_existential_1(v190, v191);
  OUTLINED_FUNCTION_8_19();
  v146 = v78;
  OUTLINED_FUNCTION_3_20();
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_3_1();
  v83 = OUTLINED_FUNCTION_11_17(v82);
  v84(v83);
  __swift_mutable_project_boxed_opaque_existential_1(v187, v188);
  OUTLINED_FUNCTION_8_19();
  v145 = v85;
  OUTLINED_FUNCTION_3_20();
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_3_1();
  v90 = OUTLINED_FUNCTION_10_14(v89);
  v91(v90);
  __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
  __swift_mutable_project_boxed_opaque_existential_1(v181, v182);
  __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
  OUTLINED_FUNCTION_8_19();
  v143 = v92;
  OUTLINED_FUNCTION_3_20();
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_3_1();
  v97 = OUTLINED_FUNCTION_124_0(v96);
  v98(v97);
  __swift_mutable_project_boxed_opaque_existential_1(v175, v176);
  OUTLINED_FUNCTION_8_19();
  v142 = v99;
  OUTLINED_FUNCTION_3_20();
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_3_1();
  v104 = OUTLINED_FUNCTION_12_16(v103);
  v105(v104);
  __swift_mutable_project_boxed_opaque_existential_1(v172, v173);
  OUTLINED_FUNCTION_8_19();
  v139 = v106;
  OUTLINED_FUNCTION_3_20();
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_3_1();
  v111 = OUTLINED_FUNCTION_37_5(v110);
  v112(v111);
  __swift_mutable_project_boxed_opaque_existential_1(v169, v170);
  v113 = *v60;
  v114 = *locked;
  v115 = *v67;
  Kind = type metadata for LSApplicationRecordProvider.Kind;
  v117 = *v64;
  v168[3] = &type metadata for ContentResolver;
  v168[4] = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v118 = swift_allocObject();
  v168[0] = v118;
  v119 = unk_287A41440;
  *(v118 + 16) = xmmword_287A41430;
  *(v118 + 32) = v119;
  *(v118 + 48) = qword_287A41450;
  v167[3] = &type metadata for CoreAnalyticsService;
  v167[4] = &xmmword_287A41610;
  v166[4] = &off_287A44CA0;
  v166[3] = v138;
  v166[0] = v113;
  v165[4] = &off_287A40130;
  v165[3] = v149;
  v165[0] = v114;
  v164[3] = &type metadata for DefaultTipDonationService;
  v164[4] = &off_287A41DF8;
  v163[3] = &type metadata for LSApplicationRecordProvider;
  v163[4] = &xmmword_287A41430;
  v162[3] = v137;
  v162[4] = &off_287A41458;
  v162[0] = v115;
  v161[3] = v136;
  v161[4] = &off_287A41448;
  v161[0] = Kind;
  v160[3] = v135;
  v160[4] = &off_287A41B20;
  v160[0] = v117;
  v159[3] = &type metadata for TvProfileSelector;
  v159[4] = &off_287A41E28;
  v120 = OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver;
  sub_2696A73F8(v168, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver]);
  sub_2696A73F8(v167, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService]);
  sub_2696A73F8(&v70[v120], v158);
  __swift_mutable_project_boxed_opaque_existential_1(v158, v158[3]);
  OUTLINED_FUNCTION_3_20();
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_3_1();
  v125 = OUTLINED_FUNCTION_20_8(v124);
  v126(v125);
  v157[3] = &type metadata for ContentResolver;
  v157[4] = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v157[0] = swift_allocObject();
  OUTLINED_FUNCTION_140(v157[0]);
  v127 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v157, &type metadata for ContentResolver);
  OUTLINED_FUNCTION_3_20();
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_3_1();
  v132 = OUTLINED_FUNCTION_37_5(v131);
  v133(v132);
  v155 = &type metadata for ContentResolver;
  v156 = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  *&v154 = swift_allocObject();
  OUTLINED_FUNCTION_139(v154);

  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  *(v127 + 152) = sub_269854A04();
  sub_26968E5D4(&v154, v127 + 112);
  __swift_destroy_boxed_opaque_existential_0(v157);
  __swift_destroy_boxed_opaque_existential_0(v158);
  *&v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch] = v127;
  sub_2696A73F8(v166, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder]);
  v134 = &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_userDefaultsProvider];
  *v134 = v148;
  v134[1] = &off_287A41E38;
  sub_2696A73F8(v165, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentWith3pAppsProviding]);
  sub_2696A73F8(&v199, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState]);
  sub_2696A73F8(v164, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_tipService]);
  sub_2696A73F8(v163, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_appProvider]);
  sub_2696A73F8(v162, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carSessionProvider]);
  sub_2696A73F8(v161, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carPlaySupportProvider]);
  sub_2696A73F8(v160, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceLockedProvider]);
  sub_2696A73F8(v159, &v70[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_tvProfileSelector]);
  v153.receiver = v70;
  v153.super_class = v144;
  objc_msgSendSuper2(&v153, sel_init);

  sub_26977E088(v152, type metadata accessor for IntentExtensionExecutionDeviceState);
  __swift_destroy_boxed_opaque_existential_0(&v199);
  __swift_destroy_boxed_opaque_existential_0(v159);
  __swift_destroy_boxed_opaque_existential_0(v160);
  __swift_destroy_boxed_opaque_existential_0(v161);
  __swift_destroy_boxed_opaque_existential_0(v162);
  __swift_destroy_boxed_opaque_existential_0(v163);
  __swift_destroy_boxed_opaque_existential_0(v164);
  __swift_destroy_boxed_opaque_existential_0(v165);
  __swift_destroy_boxed_opaque_existential_0(v166);
  __swift_destroy_boxed_opaque_existential_0(v167);
  __swift_destroy_boxed_opaque_existential_0(v168);
  __swift_destroy_boxed_opaque_existential_0(v169);
  __swift_destroy_boxed_opaque_existential_0(v172);
  __swift_destroy_boxed_opaque_existential_0(v175);
  __swift_destroy_boxed_opaque_existential_0(v178);
  __swift_destroy_boxed_opaque_existential_0(v181);
  __swift_destroy_boxed_opaque_existential_0(v184);
  __swift_destroy_boxed_opaque_existential_0(v187);
  __swift_destroy_boxed_opaque_existential_0(v190);
  __swift_destroy_boxed_opaque_existential_0(v193);
  __swift_destroy_boxed_opaque_existential_0(v196);
  sub_2696B28D4(v202);
  OUTLINED_FUNCTION_21_0();
}

uint64_t PlayVideoIntentHandler.resolveContent(for:)()
{
  OUTLINED_FUNCTION_2_7();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v6 = type metadata accessor for SignalRecordingContext();
  v1[8] = v6;
  OUTLINED_FUNCTION_8_9(v6);
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_4_7();
  v9 = sub_269854824();
  v1[10] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_37_0();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v13 = sub_2698548D4();
  v1[15] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_37_0();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_269773E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v21 = *(v20 + 224);
  v22 = *(v20 + 128);
  *(v20 + 232) = __swift_project_value_buffer(*(v20 + 120), qword_28033D928);
  v23 = *(v22 + 16);
  *(v20 + 240) = v23;
  *(v20 + 248) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24 = OUTLINED_FUNCTION_7_16();
  v23(v24);
  v25 = sub_2698548B4();
  v26 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v26))
  {
    v27 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v27);
    OUTLINED_FUNCTION_97_1(&dword_269684000, v28, v26, "Resolve step");
    OUTLINED_FUNCTION_12_1();
  }

  v29 = *(v20 + 224);
  v30 = *(v20 + 120);
  v31 = *(v20 + 128);
  v32 = *(v20 + 40);

  v33 = *(v31 + 8);
  *(v20 + 256) = v33;
  v34 = OUTLINED_FUNCTION_34_0();
  v33(v34);
  v35 = [v32 isRemoteExecution];
  OUTLINED_FUNCTION_72_0();
  sub_269694CBC();
  v36 = sub_269855034();
  v37 = v36;
  if (v29)
  {
    OUTLINED_FUNCTION_34_0();
    v38 = sub_269855064();

    if (v38)
    {
      v39 = *(v20 + 40);
      OUTLINED_FUNCTION_108(*(v20 + 48));
      sub_26974FAB0(v39, &selRef_crossDeviceRequestInitiator);
      sub_2697B8974();
    }
  }

  else
  {
  }

  v40 = (*(v20 + 48) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState);
  v41 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  OUTLINED_FUNCTION_34_0();
  if (sub_269852D14())
  {
    v42 = *(v20 + 216);
    v43 = *(v20 + 120);
    v44 = OUTLINED_FUNCTION_7_16();
    v23(v44);
    v45 = sub_2698548B4();
    v46 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v46))
    {
      v47 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v47);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v48, v49, "No devices nearby HomePod eligible for handling intent, returning failure");
      OUTLINED_FUNCTION_18_7();
    }

    v50 = *(v20 + 216);
    v51 = *(v20 + 120);
    v52 = *(v20 + 128);

    v53 = OUTLINED_FUNCTION_22_3();
    v33(v53);
    type metadata accessor for PlayVideoContentResolutionResult();
    v54 = 6;
    goto LABEL_13;
  }

  v64 = [*(v20 + 40) content];
  if (v64 || (v64 = [*(v20 + 40) contentSearch]) != 0)
  {
  }

  else
  {
    if (!OUTLINED_FUNCTION_79_1(*(v20 + 40), &selRef_utsSearchParams))
    {
      v188 = *(v20 + 208);
      v189 = *(v20 + 120);
      v190 = OUTLINED_FUNCTION_7_16();
      v23(v190);
      v149 = sub_2698548B4();
      v191 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_5(v191))
      {
        v192 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v192);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v193, v194, "Unexpectedly missing a content and search in the intent, returning failure");
        OUTLINED_FUNCTION_18_7();
      }

      v195 = *(v20 + 208);
      goto LABEL_70;
    }
  }

  v65 = [*(v20 + 40) content];
  if (v65)
  {
    v66 = v65;
    sub_26974FAB0(v65, &selRef_appBundleIdentifier);
    if (v67)
    {
      v68 = *(v20 + 40);

      v69 = [v68 contentSearch];
      if (v69)
      {
        sub_26977DCB4(v69, &selRef_name);
        if (v70)
        {
          v71 = *(v20 + 200);
          v72 = *(v20 + 120);

          v73 = OUTLINED_FUNCTION_7_16();
          v23(v73);
          v74 = sub_2698548B4();
          v75 = sub_269854F24();
          if (OUTLINED_FUNCTION_19_5(v75))
          {
            v76 = OUTLINED_FUNCTION_16_2();
            OUTLINED_FUNCTION_24(v76);
            OUTLINED_FUNCTION_11_19();
            _os_log_impl(v77, v78, v79, v80, v72, 2u);
            OUTLINED_FUNCTION_12_1();
          }

          v81 = *(v20 + 200);
          v82 = *(v20 + 120);
          v83 = *(v20 + 128);

          (v33)(v81, v82);
          type metadata accessor for PlayVideoContentResolutionResult();
          v202 = static ContentResolutionResult.success(with:)(v66);

          goto LABEL_14;
        }
      }
    }
  }

  v84 = [*(v20 + 40) content];
  *(v20 + 264) = v84;
  if (v84)
  {
    v85 = v84;
    v86 = sub_26974FAB0(v84, &selRef_umcId);
    if (v87)
    {
      v88 = v86;
      v89 = v87;
      sub_26974FAB0(v85, &selRef_name);
      if (v90)
      {
        v91 = *(v20 + 192);
        v92 = *(v20 + 120);

        v93 = OUTLINED_FUNCTION_7_16();
        v23(v93);
        v94 = sub_2698548B4();
        v95 = sub_269854F14();
        if (OUTLINED_FUNCTION_19_5(v95))
        {
          v96 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_64_1(v96);
          OUTLINED_FUNCTION_11_19();
          _os_log_impl(v97, v98, v99, v100, v92, 2u);
          OUTLINED_FUNCTION_31_6();
        }

        v101 = *(v20 + 192);
        v102 = *(v20 + 120);
        v103 = *(v20 + 128);
        v104 = *(v20 + 40);
        v105 = *(v20 + 48);

        (v33)(v101, v102);
        *(v20 + 272) = *(v105 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
        v106 = OUTLINED_FUNCTION_146();
        *(v20 + 280) = v106;
        *(v106 + 16) = xmmword_269857710;
        *(v106 + 32) = v88;
        *(v106 + 40) = v89;
        *(v20 + 288) = sub_26977DD18(v104, &selRef_channelIds);
        OUTLINED_FUNCTION_84();

        return MEMORY[0x2822009F8](v107, v108, v109);
      }
    }
  }

  if (OUTLINED_FUNCTION_20_13(*(v20 + 40), &selRef_suggestedContent))
  {

    v111 = swift_task_alloc();
    *(v20 + 296) = v111;
    *v111 = v20;
    v111[1] = sub_269774B04;
    v112 = *(v20 + 40);
    v113 = *(v20 + 48);
    OUTLINED_FUNCTION_84();

    return sub_269778F54();
  }

  v115 = [*(v20 + 40) contentSearch];
  *(v20 + 304) = v115;
  if (!v115)
  {
    v146 = *(v20 + 144);
    v147 = *(v20 + 120);
    v148 = OUTLINED_FUNCTION_7_16();
    v23(v148);
    v149 = sub_2698548B4();
    v150 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v150))
    {
      v151 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v151);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v152, v153, "Missing required search from intent, returning failure");
      OUTLINED_FUNCTION_18_7();
    }

    v154 = *(v20 + 144);
LABEL_70:
    v196 = *(v20 + 120);
    v197 = *(v20 + 128);

    v198 = OUTLINED_FUNCTION_22_3();
    v33(v198);
    type metadata accessor for PlayVideoContentResolutionResult();
    v54 = 3;
LABEL_13:
    v202 = static PlayVideoContentResolutionResult.unsupported(forReason:)(v54);
LABEL_14:
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_9_21();

    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_84();

    return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, v202, a18, a19, a20);
  }

  *(v20 + 312) = sub_26974FAB0(v115, &selRef_umcId);
  *(v20 + 320) = v116;
  if (v116)
  {
    if (qword_280322710 != -1)
    {
      OUTLINED_FUNCTION_2_18();
    }

    v117 = *(v20 + 112);
    v118 = sub_269854854();
    __swift_project_value_buffer(v118, qword_28033D958);
    sub_269854814();
    v119 = sub_269854844();
    v120 = sub_269854FF4();
    if (sub_269855074())
    {
      v121 = *(v20 + 112);
      v122 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v122);
      v123 = sub_269854804();
      _os_signpost_emit_with_name_impl(&dword_269684000, v119, v120, v123, "playSingleItemResolve", "enableTelemetry=YES", &off_279C6F000, 2u);
      OUTLINED_FUNCTION_31_6();
    }

    v124 = *(v20 + 112);
    v199 = *(v20 + 184);
    v200 = *(v20 + 120);
    v125 = *(v20 + 104);
    v127 = *(v20 + 80);
    v126 = *(v20 + 88);

    v128 = OUTLINED_FUNCTION_148(v126);
    v129(v128, v124, v127);
    v130 = sub_269854894();
    v131 = *(v130 + 48);
    v132 = *(v130 + 52);
    swift_allocObject();
    *(v20 + 328) = OUTLINED_FUNCTION_24_9();
    (*(v126 + 8))(v124, v127);
    v133 = OUTLINED_FUNCTION_7_16();
    v23(v133);
    v134 = sub_2698548B4();
    v135 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v135))
    {
      v136 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v136);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v137, v138, "Content was not populated enough to skip the ID based lookup");
      OUTLINED_FUNCTION_18_7();
    }

    v139 = *(v20 + 184);
    v140 = *(v20 + 120);
    v141 = *(v20 + 128);
    v142 = *(v20 + 48);

    v143 = OUTLINED_FUNCTION_22_3();
    v33(v143);
    __swift_project_boxed_opaque_existential_1((v142 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver), *(v142 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver + 24));
    v144 = swift_task_alloc();
    *(v20 + 336) = v144;
    *v144 = v20;
    OUTLINED_FUNCTION_123(v144);
    OUTLINED_FUNCTION_84();

    return sub_2697BC73C();
  }

  else
  {
    if (qword_280322710 != -1)
    {
      OUTLINED_FUNCTION_2_18();
    }

    v155 = *(v20 + 96);
    v156 = sub_269854854();
    __swift_project_value_buffer(v156, qword_28033D958);
    sub_269854814();
    v157 = sub_269854844();
    v158 = sub_269854FF4();
    if (sub_269855074())
    {
      v159 = *(v20 + 96);
      v160 = OUTLINED_FUNCTION_16_2();
      *v160 = 0;
      v161 = sub_269854804();
      _os_signpost_emit_with_name_impl(&dword_269684000, v157, v158, v161, "playDisambiguateResolve", "enableTelemetry=YES", v160, 2u);
      OUTLINED_FUNCTION_10();
    }

    v201 = *(v20 + 168);
    v203 = *(v20 + 120);
    v163 = *(v20 + 96);
    v162 = *(v20 + 104);
    v164 = v157;
    v166 = *(v20 + 80);
    v165 = *(v20 + 88);

    v167 = OUTLINED_FUNCTION_148(v165);
    v168(v167, v163, v166);
    v169 = sub_269854894();
    v170 = *(v169 + 48);
    v171 = *(v169 + 52);
    swift_allocObject();
    *(v20 + 392) = OUTLINED_FUNCTION_24_9();
    v173 = *(v165 + 8);
    v172 = (v165 + 8);
    v173(v163, v166);
    v174 = OUTLINED_FUNCTION_7_16();
    v23(v174);
    v175 = sub_2698548B4();
    v176 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v176))
    {
      v177 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v177);
      OUTLINED_FUNCTION_11_19();
      _os_log_impl(v178, v179, v180, v181, v172, 2u);
      OUTLINED_FUNCTION_12_1();
    }

    v182 = *(v20 + 168);
    v183 = *(v20 + 120);
    v184 = *(v20 + 128);
    v185 = *(v20 + 48);

    (v33)(v182, v183);
    __swift_project_boxed_opaque_existential_1((v185 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver), *(v185 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver + 24));
    v186 = swift_task_alloc();
    *(v20 + 400) = v186;
    *v186 = v20;
    OUTLINED_FUNCTION_123(v186);
    OUTLINED_FUNCTION_84();

    return sub_2697BB34C();
  }
}

uint64_t sub_269774978()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[35];
  v2 = v0[34];
  if (v0[36])
  {
    v3 = v0[36];
  }

  v4 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v4, v5);

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269774A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v21 = *(v20 + 264);
  type metadata accessor for PlayVideoContentResolutionResult();
  v22 = OUTLINED_FUNCTION_11_16();
  v32 = static ContentResolutionResult.success(with:)(v22);

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_9_21();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, v32, a18, a19, a20);
}

uint64_t sub_269774B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v62 = v21;
  v22 = *v20;
  v23 = *(*v20 + 296);
  v24 = *v20;
  OUTLINED_FUNCTION_1_6();
  *v25 = v24;

  OUTLINED_FUNCTION_74_0();
  v27 = *(v26 + 224);
  v28 = v22[27];
  v29 = v22[26];
  v30 = v22[25];
  v31 = v22[24];
  v32 = v22[23];
  v33 = v22[22];
  v34 = v22[21];
  v54 = v22[20];
  OUTLINED_FUNCTION_74_0();
  v55 = *(v35 + 152);
  OUTLINED_FUNCTION_74_0();
  v56 = *(v36 + 144);
  OUTLINED_FUNCTION_74_0();
  v57 = *(v37 + 136);
  OUTLINED_FUNCTION_74_0();
  v58 = *(v38 + 112);
  OUTLINED_FUNCTION_74_0();
  v59 = *(v39 + 104);
  OUTLINED_FUNCTION_74_0();
  v60 = *(v40 + 96);
  OUTLINED_FUNCTION_74_0();
  v61 = *(v41 + 72);
  OUTLINED_FUNCTION_74_0();
  v43 = *(v42 + 56);

  v44 = *(v24 + 8);
  OUTLINED_FUNCTION_84();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, v57, v58, v59, v60, v61, v62, a18, a19, a20);
}

uint64_t sub_269774DD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_6();
  v7 = v6;
  OUTLINED_FUNCTION_6_13();
  *v8 = v7;
  v10 = *(v9 + 336);
  v11 = *v3;
  OUTLINED_FUNCTION_1_6();
  *v12 = v11;
  v7[43] = v2;

  if (!v2)
  {
    v7[44] = a2;
    v7[45] = a1;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_269774EF4()
{
  v1 = v0[44];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService), *(v5 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService + 24));
  sub_2697B2608();
  v6 = *(v5 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
  v0[46] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v7 = OUTLINED_FUNCTION_146();
  v0[47] = v7;
  *(v7 + 16) = xmmword_269857710;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  v0[48] = sub_26977DD18(v4, &selRef_channelIds);

  return MEMORY[0x2822009F8](sub_269774FDC, v6, 0);
}

uint64_t sub_269774FDC()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[47];
  v2 = v0[46];
  if (v0[48])
  {
    v3 = v0[48];
  }

  v4 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v4, v5);

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269775068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v21 = v20[45];
  v22 = v20[41];
  v23 = v20[38];
  type metadata accessor for PlayVideoContentResolutionResult();
  v24 = v21;
  v34 = static ContentResolutionResult.success(with:)(v24);

  sub_269778C38();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_9_21();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_269775198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_103();
  a26 = v28;
  v31 = v28[43];
  v33 = v28[40];
  v32 = v28[41];
  v35 = v28[30];
  v34 = v28[31];
  v36 = v28[29];
  v37 = v28[22];
  v38 = v28[15];
  sub_269778C38();

  v35(v37, v36, v38);

  v39 = v31;
  v40 = sub_2698548B4();
  LOBYTE(v36) = sub_269854F24();

  if (os_log_type_enabled(v40, v36))
  {
    v41 = v28[43];
    v43 = v28[39];
    v42 = v28[40];
    a15 = v28[22];
    v74 = v28[32];
    v45 = v28[15];
    v44 = v28[16];
    v46 = swift_slowAlloc();
    a17 = swift_slowAlloc();
    *v46 = 136315394;
    v47 = sub_26974F520(v43, v42, &a17);

    *(v46 + 4) = v47;
    *(v46 + 12) = 2080;
    v28[4] = v41;
    v48 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v49 = sub_269854AE4();
    v51 = sub_26974F520(v49, v50, &a17);

    *(v46 + 14) = v51;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_31_6();

    v74(a15, v45);
  }

  else
  {
    v57 = v28[40];
    v58 = v28[32];
    v59 = v28[22];
    v60 = v28[15];
    v61 = v28[16];

    v62 = OUTLINED_FUNCTION_34_0();
    v58(v62);
  }

  v63 = v28[43];
  v64 = v28[38];
  type metadata accessor for PlayVideoContentResolutionResult();
  v75 = static PlayVideoContentResolutionResult.unsupported(forReason:)(1);

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, v75, a17, a18, a19, a20);
}

uint64_t sub_269775478()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 400);
  *v3 = *v1;
  v2[51] = v6;
  v2[52] = v7;
  v2[53] = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_269775580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_103();
  a26 = v28;
  v31 = *(v28 + 408);
  v32 = *(v28 + 248);
  (*(v28 + 240))(*(v28 + 160), *(v28 + 232), *(v28 + 120));

  v33 = sub_2698548B4();
  v34 = sub_269854F44();
  v35 = OUTLINED_FUNCTION_19_5(v34);
  v36 = *(v28 + 408);
  if (v35)
  {
    v37 = OUTLINED_FUNCTION_27_2();
    *v37 = 134217984;
    *(v37 + 4) = sub_26975004C(v36);

    OUTLINED_FUNCTION_11_19();
    _os_log_impl(v38, v39, v40, v41, v37, 0xCu);
    OUTLINED_FUNCTION_12_1();
  }

  else
  {
    v42 = *(v28 + 408);
  }

  v43 = *(v28 + 408);
  v44 = *(v28 + 416);
  v45 = *(v28 + 304);
  v47 = *(v28 + 232);
  v46 = *(v28 + 240);
  v48 = *(v28 + 152);
  v49 = *(v28 + 120);
  v50 = *(v28 + 48);
  v115 = *(v28 + 248);
  v117 = *(v28 + 128) + 8;
  (*(v28 + 256))(*(v28 + 160), v49);

  sub_26977AAB0();
  v52 = v51;

  __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService), *(v50 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService + 24));
  sub_26975004C(v43);
  v118 = v52;
  v53 = sub_26975004C(v52);
  sub_2697B1F68();
  v46(v48, v47, v49);
  v54 = v45;
  v55 = sub_2698548B4();
  sub_269854F44();

  if (OUTLINED_FUNCTION_168())
  {
    v56 = *(v28 + 304);
    v57 = *(v28 + 256);
    v115 = *(v28 + 152);
    v58 = *(v28 + 120);
    OUTLINED_FUNCTION_27_2();
    v59 = OUTLINED_FUNCTION_40_2();
    a17 = v59;
    *v49 = 136315138;
    v60 = sub_26974FAB0(v56, &selRef_name);
    if (v61)
    {
      v62 = v61;
    }

    else
    {
      v60 = 0x6372616573206F6ELL;
      v62 = 0xEE006D7265742068;
    }

    v63 = sub_26974F520(v60, v62, &a17);

    *(v49 + 4) = v63;
    OUTLINED_FUNCTION_87_0();
    _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_68_3();

    v69 = v115;
  }

  else
  {
    v57 = *(v28 + 256);
    v70 = *(v28 + 152);
    v58 = *(v28 + 120);

    v69 = v70;
  }

  v57(v69, v58);
  if (v53 >= 2)
  {
    v78 = *(v28 + 408);
    v79 = *(v28 + 304);
    v80 = *(v28 + 48);

    v81 = [v79 itemLimit];
    v82 = sub_2696D18D0(v81, v118);
    *(v28 + 432) = v82;

    *(v28 + 440) = *(v80 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);

    isUniquelyReferenced_nonNull_native = sub_269771B1C(5, v82);
    v83 = v72;
    v84 = v73;
    v86 = v85 >> 1;
    v87 = MEMORY[0x277D84F90];
    v88 = v73;
LABEL_16:
    *(v28 + 448) = v87;
    for (i = v88; v86 != i; ++i)
    {
      if (v88 < v84 || i >= v86)
      {
        __break(1u);
        goto LABEL_37;
      }

      v91 = *(v83 + 8 * i);
      v92 = [v91 umcId];
      if (v92)
      {
        v93 = v92;
        v94 = sub_269854A94();
        v116 = v95;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v100 = *(v87 + 16);
          OUTLINED_FUNCTION_3_5();
          sub_26977BCE4();
          v87 = isUniquelyReferenced_nonNull_native;
        }

        v96 = *(v87 + 16);
        v97 = v96 + 1;
        v98 = v94;
        if (v96 >= *(v87 + 24) >> 1)
        {
          sub_26977BCE4();
          v97 = v96 + 1;
          v87 = isUniquelyReferenced_nonNull_native;
        }

        v88 = i + 1;
        *(v87 + 16) = v97;
        v99 = v87 + 16 * v96;
        *(v99 + 32) = v98;
        *(v99 + 40) = v116;
        goto LABEL_16;
      }
    }

    v101 = *(v28 + 40);
    swift_unknownObjectRelease();
    *(v28 + 456) = sub_26977DD18(v101, &selRef_channelIds);
    goto LABEL_31;
  }

  if (v53 == 1)
  {
    isUniquelyReferenced_nonNull_native = sub_269771DC0(v118);
    *(v28 + 464) = isUniquelyReferenced_nonNull_native;
    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = sub_26974FAB0(isUniquelyReferenced_nonNull_native, &selRef_umcId);
      if (v72)
      {
        OUTLINED_FUNCTION_68_1();
        v74 = *(v28 + 408);
        v76 = *(v28 + 40);
        v75 = *(v28 + 48);

        *(v28 + 472) = *(v75 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
        v77 = OUTLINED_FUNCTION_146();
        *(v28 + 480) = v77;
        *(v77 + 16) = xmmword_269857710;
        *(v77 + 32) = v55;
        *(v77 + 40) = 1;
        *(v28 + 488) = sub_26977DD18(v76, &selRef_channelIds);
        OUTLINED_FUNCTION_126();
LABEL_31:
        OUTLINED_FUNCTION_84();

        return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v72, v73);
      }
    }

    else
    {
LABEL_37:
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v72, v73);
  }

  v103 = *(v28 + 408);
  v104 = *(v28 + 392);
  v105 = *(v28 + 304);

  type metadata accessor for PlayVideoContentResolutionResult();
  v119 = static PlayVideoContentResolutionResult.unsupported(forReason:)(1);
  sub_269778C38();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v108(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12, a13, v115, v117, v119, a17, a18, a19, a20);
}

uint64_t sub_269775B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_103();
  a26 = v28;
  v31 = *(v28 + 424);
  v32 = *(v28 + 392);
  sub_269778C38();

  *(v28 + 16) = v31;
  v33 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  v34 = swift_dynamicCast();
  v35 = *(v28 + 424);
  if (v34)
  {
    v36 = *(v28 + 496) == 3;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    v57 = *(v28 + 304);

    type metadata accessor for PlayVideoContentResolutionResult();
    v76 = static PlayVideoContentResolutionResult.unsupported(forReason:)(5);
  }

  else
  {
    v38 = *(v28 + 240);
    v37 = *(v28 + 248);
    v39 = *(v28 + 232);
    v40 = *(v28 + 136);
    v41 = *(v28 + 120);

    v38(v40, v39, v41);
    v42 = v35;
    v43 = sub_2698548B4();
    sub_269854F14();

    if (OUTLINED_FUNCTION_168())
    {
      v44 = *(v28 + 424);
      v45 = *(v28 + 128);
      a15 = *(v28 + 136);
      v75 = *(v28 + 256);
      v46 = *(v28 + 120);
      OUTLINED_FUNCTION_27_2();
      v47 = OUTLINED_FUNCTION_40_2();
      a17 = v47;
      *v37 = 136315138;
      *(v28 + 24) = v44;
      v48 = v44;
      v49 = sub_269854AE4();
      v51 = sub_26974F520(v49, v50, &a17);

      *(v37 + 4) = v51;
      OUTLINED_FUNCTION_87_0();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_68_3();

      v75(a15, v46);
    }

    else
    {
      v58 = *(v28 + 256);
      v60 = *(v28 + 128);
      v59 = *(v28 + 136);
      v61 = *(v28 + 120);

      v62 = OUTLINED_FUNCTION_22_3();
      v58(v62);
    }

    v63 = *(v28 + 424);
    v64 = *(v28 + 304);
    type metadata accessor for PlayVideoContentResolutionResult();
    v65 = OUTLINED_FUNCTION_38_5();
    v76 = static PlayVideoContentResolutionResult.unsupported(forReason:)(v65);
  }

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, v76, a17, a18, a19, a20);
}

uint64_t sub_269775E7C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[56];
  v2 = v0[55];
  if (v0[57])
  {
    v3 = v0[57];
  }

  v4 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v4, v5);

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_269775F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v24 = v20[54];
  v25 = v20[5];
  v26 = *OUTLINED_FUNCTION_108(v20[6]);
  v27 = OUTLINED_FUNCTION_22_3();
  v29 = sub_26975EE38(v27, v28);
  v30 = v20[54];
  if (v29)
  {
    a16 = v29;
    sub_26975004C(v30);
    OUTLINED_FUNCTION_134();
    v65 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v24 == v21)
      {
        v44 = v20[54];
        v45 = v20[49];
        v46 = v20[38];
        v48 = v20[8];
        v47 = v20[9];
        v50 = v20[6];
        v49 = v20[7];
        v51 = v20[5];

        sub_26977DC54(v65, v51);
        __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder), *(v50 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder + 24));
        OUTLINED_FUNCTION_141();
        v52 = *v51;
        sub_2697F99B8();
        OUTLINED_FUNCTION_12_24();
        sub_26977E088(v47, v53);
        v54 = *(v50 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_userDefaultsProvider);
        sub_269851D24();
        v55 = sub_269851D34();
        __swift_storeEnumTagSinglePayload(v49, 0, 1, v55);
        sub_2697B8B5C(v49);
        type metadata accessor for PlayVideoContentResolutionResult();
        v66 = static ContentResolutionResult.disambiguation(with:)(a16);
        goto LABEL_18;
      }

      if (v22)
      {
        v31 = MEMORY[0x26D646120](v21, v20[54]);
      }

      else
      {
        if (v21 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v31 = *(v25 + 8 * v21);
      }

      v32 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v33 = v31;
      v34 = [v33 umcId];
      if (v34)
      {
        v35 = v34;
        v36 = sub_269854A94();
        a15 = v37;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = *(v65 + 16);
          OUTLINED_FUNCTION_3_5();
          sub_26977BCE4();
          v65 = v42;
        }

        v39 = *(v65 + 16);
        v38 = *(v65 + 24);
        if (v39 >= v38 >> 1)
        {
          OUTLINED_FUNCTION_85_2(v38);
          sub_26977BCE4();
          v65 = v43;
        }

        *(v65 + 16) = v39 + 1;
        v40 = v65 + 16 * v39;
        *(v40 + 32) = v36;
        *(v40 + 40) = a15;
        v21 = v32;
      }

      else
      {

        ++v21;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v56 = v20[49];
    v46 = v20[38];
    type metadata accessor for PlayVideoContentResolutionResult();
    v66 = static ContentResolutionResult.disambiguation(with:)(v30);
LABEL_18:

    sub_269778C38();

    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_9_21();

    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_84();

    v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, v66, a18, a19, a20);
  }
}

uint64_t sub_26977621C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[60];
  v2 = v0[59];
  if (v0[61])
  {
    v3 = v0[61];
  }

  v4 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v4, v5);

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2697762A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v21 = v20[58];
  v22 = v20[49];
  v23 = v20[38];
  type metadata accessor for PlayVideoContentResolutionResult();
  v24 = OUTLINED_FUNCTION_11_16();
  v34 = static ContentResolutionResult.success(with:)(v24);

  sub_269778C38();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_9_21();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_2697763EC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2697764B0;

  return PlayVideoIntentHandler.resolveContent(for:)();
}

uint64_t sub_2697764B0()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;

  v10 = v5[2];
  v11 = OUTLINED_FUNCTION_50_0();
  v12(v11);
  _Block_release(v5);

  v13 = *(v8 + 8);

  return v13();
}

uint64_t PlayVideoIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_2_7();
  v1 = sub_2698548D4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_12(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2697766A0()
{
  OUTLINED_FUNCTION_8_5();
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v2 = v0[3];
  v1 = v0[4];
  __swift_project_value_buffer(v0[2], qword_28033D928);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F04();
  if (OUTLINED_FUNCTION_19_5(v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v7);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v8, v9, "Confirm step: success");
    OUTLINED_FUNCTION_18_7();
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_22_3();
  v15(v14);
  objc_allocWithZone(type metadata accessor for PlayVideoIntentResponse());
  PlayVideoIntentResponse.init(code:userActivity:)(1, 0);
  OUTLINED_FUNCTION_11_16();

  v16 = OUTLINED_FUNCTION_8_23();

  return v17(v16);
}

uint64_t sub_2697767D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26977E464;

  return PlayVideoIntentHandler.confirm(intent:)();
}

uint64_t PlayVideoIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_2_7();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_269851C74();
  v1[14] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_37_0();
  v1[17] = swift_task_alloc();
  v7 = type metadata accessor for SignalRecordingContext();
  v1[18] = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v9 = *(v8 + 64);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324210, &qword_26985F1D0);
  OUTLINED_FUNCTION_8_9(v10);
  v12 = *(v11 + 64);
  v1[20] = OUTLINED_FUNCTION_37_0();
  v1[21] = swift_task_alloc();
  v13 = sub_269854824();
  v1[22] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[23] = v14;
  v16 = *(v15 + 64);
  v1[24] = OUTLINED_FUNCTION_37_0();
  v1[25] = swift_task_alloc();
  v17 = sub_2698548D4();
  v1[26] = v17;
  OUTLINED_FUNCTION_5_12(v17);
  v1[27] = v18;
  v20 = *(v19 + 64);
  v1[28] = OUTLINED_FUNCTION_37_0();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_269776AE8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_t log, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_0();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_150();
  a32 = v34;
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v37 = *(v34 + 336);
  v38 = *(v34 + 208);
  v39 = *(v34 + 216);
  v40 = __swift_project_value_buffer(v38, qword_28033D928);
  *(v34 + 344) = v40;
  v41 = *(v39 + 16);
  *(v34 + 352) = v41;
  *(v34 + 360) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v37, v40, v38);
  v42 = sub_2698548B4();
  v43 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v43))
  {
    v44 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v44);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v45, v46, "Handle step");
    OUTLINED_FUNCTION_18_7();
  }

  v47 = *(v34 + 336);
  v48 = *(v34 + 208);
  v49 = *(v34 + 216);
  v50 = *(v34 + 96);

  *(v34 + 368) = *(v49 + 8);
  v51 = OUTLINED_FUNCTION_22_3();
  v168 = v52;
  (v52)(v51);
  v53 = [v50 content];
  *(v34 + 376) = v53;
  if (v53)
  {
    v54 = v53;
    v55 = sub_26974FAB0(v53, &selRef_name);
    if (v56)
    {
      v57 = v55;
      v58 = v56;
      v59 = sub_26974FAB0(v54, &selRef_umcId);
      *(v34 + 384) = v59;
      *(v34 + 392) = v60;
      if (v60)
      {
        v166 = v59;
        v167 = v60;
        v61 = [*(v34 + 96) isRemoteExecution];
        *(v34 + 400) = sub_269694CBC();
        v62 = sub_269855034();
        v63 = v62;
        if (v61)
        {
          OUTLINED_FUNCTION_22_3();
          v64 = sub_269855064();

          if (v64)
          {
            OUTLINED_FUNCTION_108(*(v34 + 104));
            sub_2697B85E4();
          }
        }

        else
        {
        }

        v41(*(v34 + 328), v40, *(v34 + 208));

        v104 = v167;

        v105 = sub_2698548B4();
        v106 = sub_269854F04();

        v107 = os_log_type_enabled(v105, v106);
        v108 = *(v34 + 328);
        v161 = *(v34 + 216);
        v163 = *(v34 + 208);
        if (v107)
        {
          v160 = *(v34 + 328);
          v109 = swift_slowAlloc();
          a23 = swift_slowAlloc();
          *v109 = 136315394;
          v110 = sub_26974F520(v57, v58, &a23);

          *(v109 + 4) = v110;
          *(v109 + 12) = 2080;
          *(v109 + 14) = sub_26974F520(v166, v167, &a23);
          v104 = v105;
          _os_log_impl(&dword_269684000, v105, v106, "Handling content, title: '%s', umcId: %s)", v109, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_4_16();

          v111 = v160;
        }

        else
        {

          v111 = v108;
        }

        v168(v111, v163);
        if (qword_280322710 != -1)
        {
          OUTLINED_FUNCTION_2_18();
        }

        v112 = *(v34 + 200);
        v113 = sub_269854854();
        __swift_project_value_buffer(v113, qword_28033D958);
        sub_269854814();
        v114 = sub_269854844();
        v115 = sub_269854FF4();
        if (sub_269855074())
        {
          v116 = *(v34 + 200);
          v117 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_30_2(v117);
          v118 = sub_269854804();
          _os_signpost_emit_with_name_impl(&dword_269684000, v114, v115, v118, "PlayableWaitTime", "enableTelemetry=YES", v104, 2u);
          OUTLINED_FUNCTION_18_7();
        }

        v119 = *(v34 + 320);
        v120 = *(v34 + 200);
        v122 = *(v34 + 184);
        v121 = *(v34 + 192);
        v123 = *(v34 + 176);
        v162 = *(v34 + 208);
        v164 = *(v34 + 96);

        v124 = OUTLINED_FUNCTION_148(v122);
        v125(v124, v120, v123);
        v126 = sub_269854894();
        v127 = *(v126 + 48);
        v128 = *(v126 + 52);
        swift_allocObject();
        *(v34 + 408) = OUTLINED_FUNCTION_24_9();
        v129 = *(v122 + 8);
        v130 = OUTLINED_FUNCTION_128();
        v131(v130);
        v41(v119, v40, v162);
        v132 = v164;
        v133 = sub_2698548B4();
        sub_269854F14();

        v134 = OUTLINED_FUNCTION_168();
        v135 = *(v34 + 320);
        v137 = *(v34 + 208);
        v136 = *(v34 + 216);
        if (v134)
        {
          v138 = *(v34 + 96);
          OUTLINED_FUNCTION_27_2();
          v165 = v135;
          v139 = OUTLINED_FUNCTION_40_2();
          a23 = v139;
          *v123 = 136315138;
          v140 = sub_26977DD18(v138, &selRef_channelIds);
          if (v140)
          {
            v141 = v140;
          }

          else
          {
            v141 = &unk_287A39D08;
          }

          v142 = MEMORY[0x26D645BC0](v141, MEMORY[0x277D837D0]);
          v144 = v143;

          v145 = sub_26974F520(v142, v144, &a23);

          *(v123 + 4) = v145;
          OUTLINED_FUNCTION_87_0();
          _os_log_impl(v146, v147, v148, v149, v150, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v139);
          OUTLINED_FUNCTION_4_16();
          OUTLINED_FUNCTION_68_3();

          v151 = v165;
        }

        else
        {

          v151 = v135;
        }

        v168(v151, v137);
        v152 = *(v34 + 104);
        v153 = sub_26977DD18(*(v34 + 96), &selRef_channelIds);
        if (v153)
        {
          v154 = v153;
        }

        else
        {
          v154 = MEMORY[0x277D84F90];
        }

        *(v34 + 416) = *(v152 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
        if (v154[2])
        {
          v155 = v154[4];
          v156 = v154[5];
        }

        else
        {
          v156 = 0;
        }

        *(v34 + 424) = v156;

        v157 = swift_task_alloc();
        *(v34 + 432) = v157;
        *v157 = v34;
        v157[1] = sub_26977739C;
        v158 = *(v34 + 168);
        OUTLINED_FUNCTION_69_3();

        return sub_2697C0978();
      }
    }

    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v78 = *(v34 + 264);
    OUTLINED_FUNCTION_33_0(*(v34 + 208), qword_281571B38);
    v79 = OUTLINED_FUNCTION_12_11();
    (v41)(v79);
    v80 = sub_2698548B4();
    v81 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v81))
    {
      v82 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v82);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v83, v84, "Missing requried information in handle step");
      OUTLINED_FUNCTION_18_7();
    }

    v85 = *(v34 + 264);
    v86 = *(v34 + 208);
    v87 = *(v34 + 216);
    v75 = *(v34 + 104);

    v88 = OUTLINED_FUNCTION_22_3();
    (v168)(v88);
    v89 = objc_allocWithZone(type metadata accessor for PlayVideoIntentResponse());
    v169 = OUTLINED_FUNCTION_144();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v65 = *(v34 + 256);
    OUTLINED_FUNCTION_33_0(*(v34 + 208), qword_281571B38);
    v66 = OUTLINED_FUNCTION_12_11();
    (v41)(v66);
    v67 = sub_2698548B4();
    v68 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v68))
    {
      v69 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v69);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v70, v71, "Missing content in handle step");
      OUTLINED_FUNCTION_18_7();
    }

    v72 = *(v34 + 256);
    v73 = *(v34 + 208);
    v74 = *(v34 + 216);
    v75 = *(v34 + 104);

    v76 = OUTLINED_FUNCTION_22_3();
    (v168)(v76);
    v77 = objc_allocWithZone(type metadata accessor for PlayVideoIntentResponse());
    v169 = OUTLINED_FUNCTION_144();
  }

  v90 = *(v75 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
  sub_2697C2F08();

  v92 = *(v34 + 328);
  v91 = *(v34 + 336);
  OUTLINED_FUNCTION_80_0();
  v94 = *(v34 + 264);
  v93 = *(v34 + 272);
  OUTLINED_FUNCTION_15_17();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_69_3();

  return v97(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, a13, a14, a15, log, a17, a18, a19, a20, a21, v169, a23, a24, a25, a26);
}

uint64_t sub_26977739C()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  v5 = *(v2 + 432);
  *v4 = *v1;
  *(v3 + 440) = v0;

  v6 = *(v2 + 424);
  if (!v0)
  {
    v7 = *(v3 + 392);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2697774D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t, uint64_t, uint64_t), void (*a21)(uint64_t, uint64_t), uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_0();
  a33 = v36;
  a34 = v37;
  OUTLINED_FUNCTION_150();
  a32 = v34;
  v38 = *(v34 + 360);
  v40 = *(v34 + 160);
  v39 = *(v34 + 168);
  (*(v34 + 352))(*(v34 + 312), *(v34 + 344), *(v34 + 208));
  v41 = OUTLINED_FUNCTION_22_3();
  sub_26977E0E0(v41, v42);
  v43 = sub_2698548B4();
  v44 = sub_269854F14();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v34 + 368);
  v47 = *(v34 + 312);
  v49 = *(v34 + 208);
  v48 = *(v34 + 216);
  v50 = *(v34 + 160);
  if (v45)
  {
    v51 = *(v34 + 112);
    OUTLINED_FUNCTION_27_2();
    v35 = OUTLINED_FUNCTION_16_8();
    a23 = v35;
    *v47 = 136315138;
    a21 = v46;
    v52 = *(_s8PlayableVMa() + 24);
    sub_26977E150(&qword_280322EB0, MEMORY[0x277CC9260]);
    v53 = sub_269855544();
    v55 = v54;
    sub_26969B0C0(v50, &unk_280324210, &qword_26985F1D0);
    v56 = sub_26974F520(v53, v55, &a23);

    *(v47 + 4) = v56;
    _os_log_impl(&dword_269684000, v43, v44, "Setting punchout URL on PlayVideo response from Playable response: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_68_3();
    OUTLINED_FUNCTION_10();

    a21(v47, v49);
  }

  else
  {

    sub_26969B0C0(v50, &unk_280324210, &qword_26985F1D0);
    v46(v47, v49);
  }

  v57 = *(v34 + 168);
  v58 = type metadata accessor for PlayVideoIntentResponse();
  v59 = objc_allocWithZone(v58);
  v60 = OUTLINED_FUNCTION_38_5();
  v61 = PlayVideoIntentResponse.init(code:userActivity:)(v60, 0);
  v62 = *(_s8PlayableVMa() + 24);
  v63 = v61;
  v64 = sub_269851C24();
  [v63 setUrlToLaunch_];

  v65 = *(v57 + 16);
  v66 = sub_269854D24();
  [v63 setIsEntitled_];

  sub_2697CF838();
  if (v67)
  {
    v68 = sub_269854A64();
  }

  else
  {
    v68 = 0;
  }

  v69 = *(v34 + 400);
  v70 = *(v34 + 376);
  [v63 setAppBundleIdentifier_];

  v71 = [v70 appDisambiguation];
  v72 = sub_269855034();
  v73 = v72;
  if (!v71)
  {

LABEL_13:
    v78 = *(v34 + 168);
    goto LABEL_14;
  }

  v74 = *(v34 + 400);
  LOBYTE(v74) = sub_269855064();

  if ((v74 & 1) == 0)
  {
    goto LABEL_13;
  }

  v75 = [v63 appBundleIdentifier];
  if (!v75)
  {
    goto LABEL_13;
  }

  v76 = *(v34 + 96);

  v77 = sub_26977DD18(v76, &selRef_allUmcIds);
  v78 = *(v34 + 168);
  if (v77)
  {
    v47 = *(v34 + 144);
    v79 = *(v34 + 152);
    OUTLINED_FUNCTION_108(*(v34 + 104));
    OUTLINED_FUNCTION_141();
    v80 = *v35;
    sub_2697F9BE8();
    OUTLINED_FUNCTION_12_24();
    sub_26977E088(v79, v81);
  }

LABEL_14:
  sub_26969B0C0(v78, &unk_280324210, &qword_26985F1D0);
  *(v34 + 448) = v63;
  v82 = [v63 urlToLaunch];
  if (v82)
  {
    v83 = v82;
    v84 = *(v34 + 136);
    sub_269851C44();

    v85 = sub_269851BF4();
    OUTLINED_FUNCTION_92_1(v85, v86);
    LOBYTE(v83) = OUTLINED_FUNCTION_163();

    if (v83)
    {
      OUTLINED_FUNCTION_108(*(v34 + 104));
      OUTLINED_FUNCTION_101_1();
      if (!*(v34 + 40))
      {
        v120 = *(v34 + 352);
        v119 = *(v34 + 360);
        v121 = *(v34 + 344);
        v122 = *(v34 + 304);
        v123 = *(v34 + 208);
        sub_26969B0C0(v34 + 16, &unk_2803263B0, &unk_26985D0B0);
        v120(v122, v121, v123);
        v124 = sub_2698548B4();
        v125 = sub_269854F24();
        if (OUTLINED_FUNCTION_55_2(v125))
        {
          v126 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_64_1(v126);
          OUTLINED_FUNCTION_49_5();
          _os_log_impl(v127, v128, v129, v130, v131, 2u);
          OUTLINED_FUNCTION_31_6();
        }

        v132 = *(v34 + 368);
        a20 = *(v34 + 352);
        a21 = *(v34 + 360);
        v134 = *(v34 + 296);
        v133 = *(v34 + 304);
        v135 = *(v34 + 208);
        v136 = *(v34 + 216);
        a18 = *(v34 + 136);
        a19 = *(v34 + 344);
        v137 = *(v34 + 120);
        a17 = *(v34 + 112);

        v132(v133, v135);
        v138 = objc_allocWithZone(v58);
        v165 = PlayVideoIntentResponse.init(code:userActivity:)(100, 0);
        (*(v137 + 8))(a18, a17);
        a20(v134, a19, v135);
        v139 = v63;
        v140 = sub_2698548B4();
        v141 = sub_269854F14();

        if (os_log_type_enabled(v140, v141))
        {
          OUTLINED_FUNCTION_27_2();
          v142 = OUTLINED_FUNCTION_25_7();
          OUTLINED_FUNCTION_143(v142, 5.7779e-34);
          OUTLINED_FUNCTION_104_0(&dword_269684000, v143, v144, "Final intent response: %@");
          sub_26969B0C0(v142, &qword_280324D50, &qword_26985D530);
          OUTLINED_FUNCTION_31_6();
          OUTLINED_FUNCTION_12_1();
        }

        v146 = *(v34 + 408);
        v145 = *(v34 + 416);
        v148 = *(v34 + 368);
        v147 = *(v34 + 376);
        v149 = *(v34 + 296);
        v150 = *(v34 + 208);
        v151 = *(v34 + 216);

        v152 = OUTLINED_FUNCTION_44_0();
        v148(v152);

        sub_269778C38();

        sub_2697C2F08();

        goto LABEL_36;
      }

      v87 = OUTLINED_FUNCTION_73_0();
      v88(v87);
      sub_26969B0C0(v34 + 16, &unk_2803263B0, &unk_26985D0B0);
    }

    else
    {
      v89 = OUTLINED_FUNCTION_73_0();
      v90(v89);
    }
  }

  v91 = (*(v34 + 104) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState);
  v92 = v91[4];
  __swift_project_boxed_opaque_existential_1(v91, v91[3]);
  OUTLINED_FUNCTION_34_0();
  if (sub_269852D04())
  {
    v93 = OUTLINED_FUNCTION_122_0();
    v94(v93);
    v95 = sub_2698548B4();
    v96 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v96))
    {
      v97 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v97);
      OUTLINED_FUNCTION_97_1(&dword_269684000, v98, v96, "Attempting to play video content while in CarPlay");
      OUTLINED_FUNCTION_12_1();
    }

    v99 = *(v34 + 368);
    v100 = *(v34 + 288);
    v101 = *(v34 + 208);
    v102 = *(v34 + 216);

    v103 = OUTLINED_FUNCTION_34_0();
    v99(v103);
    *(v34 + 456) = [v63 isEntitled];
    v104 = [v63 appBundleIdentifier];
    if (v104)
    {
      v105 = v104;
      sub_269854A94();
      v107 = v106;
    }

    else
    {
      v107 = 0;
    }

    *(v34 + 464) = v107;
    v116 = swift_task_alloc();
    *(v34 + 472) = v116;
    *v116 = v34;
    OUTLINED_FUNCTION_47_3(v116);
    OUTLINED_FUNCTION_69_3();

    return sub_26977B044();
  }

  v108 = OUTLINED_FUNCTION_116_1();
  v109(v108);
  v110 = v63;
  sub_2698548B4();
  sub_269854F14();

  if (OUTLINED_FUNCTION_169())
  {
    v111 = *(v34 + 448);
    OUTLINED_FUNCTION_27_2();
    v112 = OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_115_1(v112, 5.7779e-34);
    OUTLINED_FUNCTION_70_2(&dword_269684000, v113, v114, "Final intent response: %@");
    sub_26969B0C0(v112, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_18_7();
  }

  OUTLINED_FUNCTION_106_1();
  v115 = OUTLINED_FUNCTION_34_0();
  (v35)(v115);
  sub_269778C38();

  sub_2697C2F08();

  v165 = *(v34 + 448);
LABEL_36:
  v154 = *(v34 + 328);
  v153 = *(v34 + 336);
  OUTLINED_FUNCTION_80_0();
  v155 = *(v34 + 264);
  v156 = *(v34 + 272);
  OUTLINED_FUNCTION_15_17();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_69_3();

  return v159(v157, v158, v159, v160, v161, v162, v163, v164, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v165, a23, a24, a25, a26);
}

uint64_t sub_269777DB0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = v3[59];
  v5 = v3[58];
  v6 = v3[57];
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v10 + 480) = v9;

  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_269777ECC()
{
  v1 = v0[60];
  v2 = v0[56];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v6 = v0[26];
  if (v1 == 4)
  {
    v7 = v0[34];
    v8 = OUTLINED_FUNCTION_7_16();
    v4(v8);
    v9 = v2;
    sub_2698548B4();
    sub_269854F14();

    if (OUTLINED_FUNCTION_169())
    {
      v10 = v0[56];
      OUTLINED_FUNCTION_27_2();
      v11 = OUTLINED_FUNCTION_114_1();
      OUTLINED_FUNCTION_115_1(v11, 5.7779e-34);
      OUTLINED_FUNCTION_70_2(&dword_269684000, v12, v13, "Final intent response: %@");
      sub_26969B0C0(v11, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_18_7();
    }

    OUTLINED_FUNCTION_106_1();
    v14 = OUTLINED_FUNCTION_34_0();
    v4(v14);
    sub_269778C38();

    sub_2697C2F08();

    v50 = v0[56];
  }

  else
  {
    v15 = v0[35];
    v16 = objc_allocWithZone(type metadata accessor for PlayVideoIntentResponse());
    v50 = PlayVideoIntentResponse.init(code:userActivity:)(v1, 0);
    (v4)(v15, v5, v6);
    v17 = v2;
    v18 = sub_2698548B4();
    sub_269854F14();

    if (OUTLINED_FUNCTION_169())
    {
      v19 = v0[56];
      OUTLINED_FUNCTION_27_2();
      v20 = OUTLINED_FUNCTION_114_1();
      OUTLINED_FUNCTION_115_1(v20, 5.7779e-34);
      OUTLINED_FUNCTION_70_2(&dword_269684000, v21, v22, "Final intent response: %@");
      sub_26969B0C0(v20, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_18_7();
    }

    v23 = v0[56];
    v24 = v0[51];
    v25 = v0[52];
    v27 = v0[46];
    v26 = v0[47];
    v28 = v0[35];
    v29 = v0[26];
    v30 = v0[27];

    v31 = OUTLINED_FUNCTION_34_0();
    v27(v31);

    sub_269778C38();

    sub_2697C2F08();
  }

  v33 = v0[41];
  v32 = v0[42];
  OUTLINED_FUNCTION_80_0();
  v35 = v0[33];
  v34 = v0[34];
  v38 = v0[32];
  v39 = v0[31];
  v40 = v0[30];
  v41 = v0[29];
  v42 = v0[28];
  v43 = v0[25];
  v44 = v0[24];
  v45 = v0[21];
  v46 = v0[20];
  v47 = v0[19];
  v48 = v0[17];
  v49 = v0[16];

  OUTLINED_FUNCTION_28_2();

  return v36(v50);
}

uint64_t sub_26977821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(uint64_t, uint64_t, uint64_t), uint64_t a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_0();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_150();
  a32 = v34;
  v37 = *(v34 + 440);
  v38 = *(v34 + 392);
  v40 = *(v34 + 352);
  v39 = *(v34 + 360);
  v41 = *(v34 + 344);
  v42 = *(v34 + 248);
  v43 = *(v34 + 208);
  v211 = type metadata accessor for PlayVideoIntentResponse();
  v44 = objc_allocWithZone(v211);
  v45 = OUTLINED_FUNCTION_38_5();
  v46 = PlayVideoIntentResponse.init(code:userActivity:)(v45, 0);
  v40(v42, v41, v43);

  v47 = v37;
  v48 = sub_2698548B4();
  sub_269854F24();

  if (OUTLINED_FUNCTION_168())
  {
    v49 = v46;
    v50 = *(v34 + 440);
    v51 = *(v34 + 384);
    v52 = *(v34 + 392);
    a20 = *(v34 + 248);
    a21 = *(v34 + 368);
    v53 = *(v34 + 216);
    a19 = *(v34 + 208);
    v54 = swift_slowAlloc();
    a23 = swift_slowAlloc();
    *v54 = 136315394;
    v55 = OUTLINED_FUNCTION_22_3();
    v58 = sub_26974F520(v55, v56, v57);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    *(v34 + 88) = v50;
    v59 = v50;
    v46 = v49;
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v61 = sub_269854AE4();
    v63 = sub_26974F520(v61, v62, &a23);

    *(v54 + 14) = v63;
    OUTLINED_FUNCTION_87_0();
    _os_log_impl(v64, v65, v66, v67, v68, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_68_3();

    (a21)(a20, a19);
  }

  else
  {
    v69 = *(v34 + 392);
    v70 = *(v34 + 368);
    v71 = *(v34 + 248);
    v72 = *(v34 + 208);
    v73 = *(v34 + 216);

    v74 = OUTLINED_FUNCTION_34_0();
    v70(v74);
  }

  v75 = [*(v34 + 376) detailsUrl];
  v77 = *(v34 + 352);
  v76 = *(v34 + 360);
  v78 = *(v34 + 344);
  v79 = *(v34 + 208);
  if (!v75)
  {
    a21 = v46;
    v99 = *(v34 + 232);
    v100 = OUTLINED_FUNCTION_50_0();
    v77(v100);
    v101 = sub_2698548B4();
    v102 = sub_269854F24();
    if (OUTLINED_FUNCTION_55_2(v102))
    {
      v103 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v103);
      OUTLINED_FUNCTION_111_0(&dword_269684000, v104, v79, "Details URL missing for fallback");
      OUTLINED_FUNCTION_4_16();
    }

    v105 = *(v34 + 440);
    v106 = *(v34 + 368);
    a20 = *(v34 + 360);
    v107 = *(v34 + 344);
    v108 = *(v34 + 352);
    v110 = *(v34 + 224);
    v109 = *(v34 + 232);
    v111 = *(v34 + 208);
    v112 = *(v34 + 216);

    v106(v109, v111);
    v113 = objc_allocWithZone(v211);
    v212 = OUTLINED_FUNCTION_144();

    v108(v110, v107, v111);
    v114 = a21;
    v115 = sub_2698548B4();
    LOBYTE(v107) = sub_269854F14();

    if (os_log_type_enabled(v115, v107))
    {
      OUTLINED_FUNCTION_27_2();
      v116 = OUTLINED_FUNCTION_25_7();
      OUTLINED_FUNCTION_143(v116, 5.7779e-34);
      OUTLINED_FUNCTION_104_0(&dword_269684000, v117, v118, "Final intent response: %@");
      sub_26969B0C0(v116, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_31_6();
      OUTLINED_FUNCTION_12_1();
    }

    v120 = *(v34 + 408);
    v119 = *(v34 + 416);
    v122 = *(v34 + 368);
    v121 = *(v34 + 376);
    v123 = *(v34 + 224);
    goto LABEL_14;
  }

  v80 = v75;
  v81 = *(v34 + 240);
  v82 = *(v34 + 128);
  sub_269851C44();

  v83 = OUTLINED_FUNCTION_50_0();
  v77(v83);
  v84 = sub_2698548B4();
  v85 = sub_269854F14();
  if (OUTLINED_FUNCTION_55_2(v85))
  {
    v86 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v86);
    OUTLINED_FUNCTION_111_0(&dword_269684000, v87, v79, "Falling back to using detailsUrl for punchout");
    OUTLINED_FUNCTION_4_16();
  }

  v88 = *(v34 + 400);
  v89 = *(v34 + 368);
  v90 = *(v34 + 240);
  v91 = *(v34 + 208);
  v92 = *(v34 + 216);
  v93 = *(v34 + 128);

  v94 = OUTLINED_FUNCTION_34_0();
  v89(v94);
  v95 = sub_269851C24();
  [v46 setUrlToLaunch_];

  v96 = sub_269855034();
  [v46 setIsEntitled_];

  sub_2697CF838();
  if (v97)
  {
    v98 = sub_269854A64();
  }

  else
  {
    v98 = 0;
  }

  v127 = *(v34 + 440);
  v129 = *(v34 + 120);
  v128 = *(v34 + 128);
  v130 = *(v34 + 112);
  [v46 setAppBundleIdentifier_];

  v131 = *(v129 + 8);
  v132 = OUTLINED_FUNCTION_34_0();
  v133(v132);
  *(v34 + 448) = v46;
  v134 = [v46 urlToLaunch];
  if (!v134)
  {
    goto LABEL_21;
  }

  v135 = v134;
  v136 = *(v34 + 136);
  sub_269851C44();

  v137 = sub_269851BF4();
  OUTLINED_FUNCTION_92_1(v137, v138);
  LOBYTE(v135) = OUTLINED_FUNCTION_163();

  if ((v135 & 1) == 0)
  {
    v141 = OUTLINED_FUNCTION_73_0();
    v142(v141);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_108(*(v34 + 104));
  OUTLINED_FUNCTION_101_1();
  if (!*(v34 + 40))
  {
    a21 = v46;
    v184 = *(v34 + 352);
    v183 = *(v34 + 360);
    v185 = *(v34 + 344);
    v186 = *(v34 + 304);
    v187 = *(v34 + 208);
    sub_26969B0C0(v34 + 16, &unk_2803263B0, &unk_26985D0B0);
    v184(v186, v185, v187);
    v188 = sub_2698548B4();
    v189 = sub_269854F24();
    if (OUTLINED_FUNCTION_55_2(v189))
    {
      v190 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v190);
      OUTLINED_FUNCTION_49_5();
      _os_log_impl(v191, v192, v193, v194, v195, 2u);
      OUTLINED_FUNCTION_31_6();
    }

    v196 = *(v34 + 368);
    a19 = *(v34 + 352);
    a20 = *(v34 + 360);
    a18 = *(v34 + 344);
    v198 = *(v34 + 296);
    v197 = *(v34 + 304);
    v200 = *(v34 + 208);
    v199 = *(v34 + 216);
    v201 = *(v34 + 136);
    v203 = *(v34 + 112);
    v202 = *(v34 + 120);

    v196(v197, v200);
    v204 = objc_allocWithZone(v211);
    v212 = PlayVideoIntentResponse.init(code:userActivity:)(100, 0);
    (*(v202 + 8))(v201, v203);
    a19(v198, a18, v200);
    v114 = a21;
    v115 = sub_2698548B4();
    LOBYTE(v199) = sub_269854F14();

    if (os_log_type_enabled(v115, v199))
    {
      OUTLINED_FUNCTION_27_2();
      v205 = OUTLINED_FUNCTION_25_7();
      OUTLINED_FUNCTION_143(v205, 5.7779e-34);
      OUTLINED_FUNCTION_104_0(&dword_269684000, v206, v207, "Final intent response: %@");
      sub_26969B0C0(v205, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_31_6();
      OUTLINED_FUNCTION_12_1();
    }

    v209 = *(v34 + 408);
    v208 = *(v34 + 416);
    v122 = *(v34 + 368);
    v121 = *(v34 + 376);
    v210 = *(v34 + 296);
LABEL_14:
    v124 = *(v34 + 208);
    v125 = *(v34 + 216);

    v126 = OUTLINED_FUNCTION_44_0();
    v122(v126);

    sub_269778C38();

    sub_2697C2F08();

    goto LABEL_29;
  }

  v139 = OUTLINED_FUNCTION_73_0();
  v140(v139);
  sub_26969B0C0(v34 + 16, &unk_2803263B0, &unk_26985D0B0);
LABEL_21:
  v143 = (*(v34 + 104) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState);
  v144 = v143[4];
  __swift_project_boxed_opaque_existential_1(v143, v143[3]);
  OUTLINED_FUNCTION_34_0();
  if (sub_269852D04())
  {
    v145 = OUTLINED_FUNCTION_122_0();
    v146(v145);
    v147 = sub_2698548B4();
    v148 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v148))
    {
      v149 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v149);
      OUTLINED_FUNCTION_97_1(&dword_269684000, v150, v148, "Attempting to play video content while in CarPlay");
      OUTLINED_FUNCTION_12_1();
    }

    v151 = *(v34 + 368);
    v152 = *(v34 + 288);
    v153 = *(v34 + 208);
    v154 = *(v34 + 216);

    v155 = OUTLINED_FUNCTION_34_0();
    v151(v155);
    *(v34 + 456) = [v46 isEntitled];
    v156 = [v46 appBundleIdentifier];
    if (v156)
    {
      v157 = v156;
      sub_269854A94();
      v159 = v158;
    }

    else
    {
      v159 = 0;
    }

    *(v34 + 464) = v159;
    v181 = swift_task_alloc();
    *(v34 + 472) = v181;
    *v181 = v34;
    OUTLINED_FUNCTION_47_3(v181);
    OUTLINED_FUNCTION_69_3();

    return sub_26977B044();
  }

  v160 = OUTLINED_FUNCTION_116_1();
  v161(v160);
  v162 = v127;
  sub_2698548B4();
  sub_269854F14();

  if (OUTLINED_FUNCTION_169())
  {
    v163 = *(v34 + 448);
    OUTLINED_FUNCTION_27_2();
    v164 = OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_115_1(v164, 5.7779e-34);
    OUTLINED_FUNCTION_70_2(&dword_269684000, v165, v166, "Final intent response: %@");
    sub_26969B0C0(v164, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_18_7();
  }

  OUTLINED_FUNCTION_106_1();
  v167 = OUTLINED_FUNCTION_34_0();
  v92(v167);
  sub_269778C38();

  sub_2697C2F08();

  v212 = *(v34 + 448);
LABEL_29:
  v169 = *(v34 + 328);
  v168 = *(v34 + 336);
  OUTLINED_FUNCTION_80_0();
  v170 = *(v34 + 264);
  v171 = *(v34 + 272);
  OUTLINED_FUNCTION_15_17();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_69_3();

  return v174(v172, v173, v174, v175, v176, v177, v178, v179, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v212, a23, a24, a25, a26);
}

void sub_269778C38()
{
  OUTLINED_FUNCTION_19_1();
  v27 = v0;
  v2 = v1;
  v3 = sub_269854864();
  OUTLINED_FUNCTION_3_20();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = sub_269854824();
  OUTLINED_FUNCTION_3_20();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  if (qword_280322710 != -1)
  {
    OUTLINED_FUNCTION_2_18();
  }

  v21 = sub_269854854();
  __swift_project_value_buffer(v21, qword_28033D958);
  v22 = sub_269854844();
  sub_269854874();
  v23 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v5 + 88))(v11, v3) == *MEMORY[0x277D85B00])
    {
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v11, v3);
      v24 = "";
    }

    v25 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_64_1(v25);
    v26 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v22, v23, v26, v27, v24, v2, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  (*(v14 + 8))(v20, v12);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269778E90(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26977E464;

  return PlayVideoIntentHandler.handle(intent:)();
}

uint64_t sub_269778F54()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_4_7();
  v6 = type metadata accessor for SignalRecordingContext();
  v1[5] = v6;
  OUTLINED_FUNCTION_8_9(v6);
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698548D4();
  v1[7] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[8] = v10;
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_37_0();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26977906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  if (qword_2803226E8 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_0_30();
  }

  v15 = *(v14 + 96);
  v16 = *(v14 + 64);
  *(v14 + 104) = OUTLINED_FUNCTION_33_0(*(v14 + 56), qword_28033D928);
  *(v14 + 112) = *(v16 + 16);
  *(v14 + 120) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17 = OUTLINED_FUNCTION_12_11();
  v18(v17);
  v19 = sub_2698548B4();
  v20 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v20))
  {
    v21 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v21);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v22, v23, "Found suggested content in the intent, attempting to use it");
    OUTLINED_FUNCTION_18_7();
  }

  v24 = *(v14 + 96);
  v25 = *(v14 + 56);
  v26 = *(v14 + 64);
  v27 = *(v14 + 16);

  *(v14 + 128) = *(v26 + 8);
  v28 = OUTLINED_FUNCTION_22_3();
  v29(v28);
  v30 = [v27 isRemoteExecution];
  sub_269694CBC();
  v31 = sub_269855034();
  v32 = v31;
  if (v30)
  {
    OUTLINED_FUNCTION_22_3();
    v33 = sub_269855064();

    if (v33)
    {
      v34 = swift_task_alloc();
      *(v14 + 136) = v34;
      *v34 = v14;
      v34[1] = sub_2697795CC;
      v35 = *(v14 + 16);
      v36 = *(v14 + 24);
      OUTLINED_FUNCTION_116();

      return sub_26977A220();
    }
  }

  else
  {
  }

  v39 = OUTLINED_FUNCTION_20_13(*(v14 + 16), &selRef_suggestedContent);
  *(v14 + 152) = v39;
  if (v39)
  {
    v40 = v39;
    v41 = sub_26975004C(v39);
    if (v41 == 1)
    {
      if (sub_26975004C(v40))
      {
        v42 = OUTLINED_FUNCTION_160();
        sub_269750050(v42);
        if ((v40 & 0xC000000000000001) != 0)
        {
          v116 = OUTLINED_FUNCTION_159();
          v43 = MEMORY[0x26D646120](v116);
        }

        else
        {
          v43 = *(v40 + 32);
        }

        v44 = v43;
        *(v14 + 160) = v43;

        v45 = sub_26974FAB0(v44, &selRef_umcId);
        if (v46)
        {
          v47 = v45;
          v48 = v46;
          v49 = *(v14 + 16);
          *(v14 + 168) = *(*(v14 + 24) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
          v50 = OUTLINED_FUNCTION_146();
          *(v14 + 176) = v50;
          *(v50 + 16) = xmmword_269857710;
          *(v50 + 32) = v47;
          *(v50 + 40) = v48;
          v51 = sub_26977DD18(v49, &selRef_channelIds);
          OUTLINED_FUNCTION_57_3(v51);
LABEL_35:
          OUTLINED_FUNCTION_116();

          return MEMORY[0x2822009F8](v77, v78, v79);
        }
      }

      else
      {
      }

      v81 = OUTLINED_FUNCTION_125();
      v82(v81);
      v83 = sub_2698548B4();
      v84 = sub_269854F14();
      v85 = OUTLINED_FUNCTION_55_2(v84);
      v86 = *(v14 + 128);
      v87 = *(v14 + 88);
      v88 = *(v14 + 56);
      v89 = *(v14 + 64);
      if (v85)
      {
        v90 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_64_1(v90);
        OUTLINED_FUNCTION_49_5();
        _os_log_impl(v91, v92, v93, v94, v95, 2u);
        OUTLINED_FUNCTION_31_6();
      }

      v96 = OUTLINED_FUNCTION_22_3();
      v86(v96);
    }

    else
    {
      if (v41 >= 2)
      {
        a11 = *(*(v14 + 24) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
        *(v14 + 192) = a11;

        a10 = sub_269771B1C(5, v40);
        v55 = v54;
        v57 = v56;
        v59 = v58 >> 1;
        v60 = MEMORY[0x277D84F90];
        v61 = v56;
LABEL_21:
        *(v14 + 200) = v60;
        v62 = v61;
        while (v59 != v62)
        {
          if (v61 < v57 || v62 >= v59)
          {
            __break(1u);
            goto LABEL_49;
          }

          v64 = v62 + 1;
          v65 = sub_26974FAB0(*(v55 + 8 * v62), &selRef_umcId);
          v62 = v64;
          if (v66)
          {
            v67 = v65;
            v68 = v66;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = *(v60 + 16);
              OUTLINED_FUNCTION_3_5();
              sub_26977BCE4();
              v60 = v73;
            }

            v69 = *(v60 + 16);
            v70 = v69 + 1;
            if (v69 >= *(v60 + 24) >> 1)
            {
              a9 = v69 + 1;
              sub_26977BCE4();
              v70 = v69 + 1;
              v60 = v74;
            }

            *(v60 + 16) = v70;
            v71 = v60 + 16 * v69;
            *(v71 + 32) = v67;
            *(v71 + 40) = v68;
            v61 = v64;
            goto LABEL_21;
          }
        }

        v75 = *(v14 + 16);
        swift_unknownObjectRelease();
        v76 = sub_26977DD18(v75, &selRef_channelIds);
        OUTLINED_FUNCTION_59_2(v76);
        goto LABEL_35;
      }
    }

    v52 = (v14 + 80);
    v97 = *(v14 + 120);
    (*(v14 + 112))(*(v14 + 80), *(v14 + 104), *(v14 + 56));
  }

  else
  {
    v52 = (v14 + 72);
    v53 = *(v14 + 120);
    (*(v14 + 112))(*(v14 + 72), *(v14 + 104), *(v14 + 56));
  }

  v98 = sub_2698548B4();
  v99 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v99))
  {
    v100 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v100);
    OUTLINED_FUNCTION_111_0(&dword_269684000, v101, v99, "Failure while using suggested content");
    OUTLINED_FUNCTION_4_16();
  }

  v102 = *(v14 + 128);
  v103 = *v52;
  v104 = *(v14 + 56);
  v105 = *(v14 + 64);

  v106 = OUTLINED_FUNCTION_22_3();
  v102(v106);
  type metadata accessor for PlayVideoContentResolutionResult();
  v107 = OUTLINED_FUNCTION_38_5();
  static PlayVideoContentResolutionResult.unsupported(forReason:)(v107);
  OUTLINED_FUNCTION_71_3();

  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_116();

  return v110(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697795CC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 136);
  *v2 = *v0;
  *(v1 + 144) = v5;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2697796B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_150();
  v27 = OUTLINED_FUNCTION_20_13(*(v26 + 16), &selRef_suggestedContent);
  v28 = MEMORY[0x277D84F90];
  v150 = v26;
  if (v27)
  {
    v29 = v27;
    v30 = sub_26975004C(v27);
    v31 = 0;
    v32 = v29 & 0xC000000000000001;
    v33 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v30 == v31)
      {

        v26 = v150;
        v28 = MEMORY[0x277D84F90];
        goto LABEL_18;
      }

      if (v32)
      {
        v34 = MEMORY[0x26D646120](v31, v29);
      }

      else
      {
        if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v34 = *(v29 + 8 * v31 + 32);
      }

      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v36 = v34;
      v37 = [v36 umcId];
      if (v37)
      {
        v38 = v37;
        v39 = sub_269854A94();
        a13 = v40;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v33 + 16);
          OUTLINED_FUNCTION_3_5();
          sub_26977BCE4();
          v33 = v45;
        }

        v42 = *(v33 + 16);
        v41 = *(v33 + 24);
        if (v42 >= v41 >> 1)
        {
          OUTLINED_FUNCTION_85_2(v41);
          sub_26977BCE4();
          v33 = v46;
        }

        *(v33 + 16) = v42 + 1;
        v43 = v33 + 16 * v42;
        *(v43 + 32) = v39;
        *(v43 + 40) = a13;
        v31 = v35;
      }

      else
      {

        ++v31;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v148 = OUTLINED_FUNCTION_159();
    v75 = MEMORY[0x26D646120](v148);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
LABEL_18:
    v47 = *(v26 + 144);
    sub_2697F1EE0(v33);
    v49 = v48;
    a14 = v28;
    v50 = sub_26975004C(v47);
    v51 = 0;
    a12 = v47 & 0xFFFFFFFFFFFFFF8;
    a13 = v47 & 0xC000000000000001;
    v32 = v47 + 32;
    while (v51 != v50)
    {
      if (a13)
      {
        v52 = MEMORY[0x26D646120](v51, *(v150 + 144));
      }

      else
      {
        if (v51 >= *(a12 + 16))
        {
          goto LABEL_79;
        }

        v52 = *(v32 + 8 * v51);
      }

      v53 = v52;
      if (__OFADD__(v51++, 1))
      {
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v55 = sub_26974FAB0(v52, &selRef_umcId);
      if (v56)
      {
        v57 = v56;
        if (*(v49 + 16))
        {
          v58 = v55;
          v59 = *(v49 + 40);
          sub_269855674();
          sub_269854B34();
          v60 = sub_2698556C4();
          v61 = ~(-1 << *(v49 + 32));
          while (1)
          {
            v62 = v60 & v61;
            if (((*(v49 + 56 + (((v60 & v61) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v60 & v61)) & 1) == 0)
            {
              break;
            }

            v63 = (*(v49 + 48) + 16 * v62);
            if (*v63 != v58 || v57 != v63[1])
            {
              v65 = sub_269855584();
              v60 = v62 + 1;
              if ((v65 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_34;
          }
        }

        sub_269855284();
        v66 = *(a14 + 16);
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
      }

      else
      {
LABEL_34:
      }
    }

    v32 = v150;
    v67 = *(v150 + 144);
    v68 = *(v150 + 16);

    v69 = sub_26977DBF0(v68, &selRef_suggestedContent, type metadata accessor for Content);
    v70 = MEMORY[0x277D84F90];
    if (v69)
    {
      v70 = v69;
    }

    a15 = v70;
    sub_26980BB94(a14);
    sub_269763C54(a15, v68);
    v71 = sub_26977DBF0(*(v150 + 16), &selRef_suggestedContent, type metadata accessor for Content);
    *(v150 + 152) = v71;
    if (!v71)
    {
      v84 = (v150 + 72);
      v85 = *(v150 + 120);
      (*(v150 + 112))(*(v150 + 72), *(v150 + 104), *(v150 + 56));
      goto LABEL_73;
    }

    v72 = v71;
    v73 = sub_26975004C(v71);
    if (v73 != 1)
    {
      if (v73 < 2)
      {

        goto LABEL_72;
      }

      a13 = *(*(v150 + 24) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
      *(v150 + 192) = a13;

      a12 = sub_269771B1C(5, v72);
      v87 = v86;
      v89 = v88;
      v91 = v90 >> 1;
      v92 = MEMORY[0x277D84F90];
      v93 = v88;
LABEL_50:
      *(v32 + 200) = v92;
      v94 = v93;
      while (v91 != v94)
      {
        if (v93 < v89 || v94 >= v91)
        {
          goto LABEL_82;
        }

        v96 = v94 + 1;
        v97 = sub_26974FAB0(*(v87 + 8 * v94), &selRef_umcId);
        v94 = v96;
        if (v98)
        {
          v99 = v97;
          v100 = v98;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = *(v92 + 16);
            OUTLINED_FUNCTION_3_5();
            sub_26977BCE4();
            v92 = v105;
          }

          v101 = *(v92 + 16);
          v102 = v101 + 1;
          if (v101 >= *(v92 + 24) >> 1)
          {
            a10 = v101 + 1;
            sub_26977BCE4();
            v102 = v101 + 1;
            v92 = v106;
          }

          *(v92 + 16) = v102;
          v103 = v92 + 16 * v101;
          *(v103 + 32) = v99;
          *(v103 + 40) = v100;
          v93 = v96;
          v32 = v150;
          goto LABEL_50;
        }
      }

      v107 = *(v150 + 16);
      swift_unknownObjectRelease();
      v108 = sub_26977DD18(v107, &selRef_channelIds);
      OUTLINED_FUNCTION_59_2(v108);
      goto LABEL_64;
    }

    if (!sub_26975004C(v72))
    {

      goto LABEL_69;
    }

    v74 = OUTLINED_FUNCTION_160();
    sub_269750050(v74);
    if ((v72 & 0xC000000000000001) != 0)
    {
      goto LABEL_83;
    }

    v75 = *(v72 + 32);
  }

  v76 = v75;
  *(v32 + 160) = v75;

  v77 = sub_26974FAB0(v76, &selRef_umcId);
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v81 = *(v32 + 16);
    *(v32 + 168) = *(*(v32 + 24) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
    v82 = OUTLINED_FUNCTION_146();
    *(v32 + 176) = v82;
    *(v82 + 16) = xmmword_269857710;
    *(v82 + 32) = v79;
    *(v82 + 40) = v80;
    v83 = sub_26977DD18(v81, &selRef_channelIds);
    OUTLINED_FUNCTION_57_3(v83);
LABEL_64:
    OUTLINED_FUNCTION_69_3();

    return MEMORY[0x2822009F8](v109, v110, v111);
  }

LABEL_69:
  v113 = OUTLINED_FUNCTION_125();
  v114(v113);
  v115 = sub_2698548B4();
  v116 = sub_269854F14();
  v117 = OUTLINED_FUNCTION_55_2(v116);
  v118 = *(v32 + 128);
  v119 = *(v32 + 88);
  v120 = *(v32 + 56);
  v121 = *(v32 + 64);
  if (v117)
  {
    v122 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_64_1(v122);
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v123, v124, v125, v126, v127, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  v128 = OUTLINED_FUNCTION_22_3();
  v118(v128);
LABEL_72:
  v84 = (v32 + 80);
  v129 = *(v32 + 120);
  (*(v32 + 112))(*(v32 + 80), *(v32 + 104), *(v32 + 56));
LABEL_73:
  v130 = sub_2698548B4();
  v131 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v131))
  {
    v132 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v132);
    OUTLINED_FUNCTION_111_0(&dword_269684000, v133, v131, "Failure while using suggested content");
    OUTLINED_FUNCTION_4_16();
  }

  v134 = *(v32 + 128);
  v135 = *v84;
  v136 = *(v32 + 56);
  v137 = *(v32 + 64);

  v138 = OUTLINED_FUNCTION_22_3();
  v134(v138);
  type metadata accessor for PlayVideoContentResolutionResult();
  v139 = OUTLINED_FUNCTION_38_5();
  static PlayVideoContentResolutionResult.unsupported(forReason:)(v139);
  OUTLINED_FUNCTION_71_3();

  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_69_3();

  return v142(v140, v141, v142, v143, v144, v145, v146, v147, a9, a10, v150, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_269779DE0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[22];
  v2 = v0[21];
  if (v0[23])
  {
    v3 = v0[23];
  }

  v4 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v4, v5);

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269779E6C()
{
  v1 = *(v0 + 160);
  type metadata accessor for PlayVideoContentResolutionResult();
  v2 = OUTLINED_FUNCTION_11_16();
  static ContentResolutionResult.success(with:)(v2);

  OUTLINED_FUNCTION_71_3();

  v3 = OUTLINED_FUNCTION_8_23();

  return v4(v3);
}

uint64_t sub_269779F18()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[25];
  v2 = v0[24];
  if (v0[26])
  {
    v3 = v0[26];
  }

  v4 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v4, v5);

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_269779FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v18 = v14[19];
  v19 = v14[2];
  v20 = *OUTLINED_FUNCTION_108(v14[3]);
  v21 = OUTLINED_FUNCTION_22_3();
  v23 = sub_26975EE38(v21, v22);
  v24 = v14[19];
  if (v23)
  {
    a10 = v23;
    sub_26975004C(v24);
    OUTLINED_FUNCTION_134();
    a11 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 == v15)
      {
        v38 = v14[19];
        v40 = v14[5];
        v39 = v14[6];
        v41 = v14[3];
        v42 = v14[4];
        v43 = v14[2];

        sub_26977DC54(a11, v43);
        v44 = __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder), *(v41 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder + 24));
        *v39 = a11;
        OUTLINED_FUNCTION_44_0();
        swift_storeEnumTagMultiPayload();
        v45 = *v44;
        sub_2697F99B8();
        OUTLINED_FUNCTION_12_24();
        sub_26977E088(v39, v46);
        v47 = *(v41 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_userDefaultsProvider);
        sub_269851D24();
        v48 = sub_269851D34();
        __swift_storeEnumTagSinglePayload(v42, 0, 1, v48);
        sub_2697B8B5C(v42);
        v24 = a10;
        goto LABEL_17;
      }

      if (v16)
      {
        v25 = MEMORY[0x26D646120](v15, v14[19]);
      }

      else
      {
        if (v15 >= *(v17 + 16))
        {
          goto LABEL_21;
        }

        v25 = *(v19 + 8 * v15);
      }

      v26 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v27 = v25;
      v28 = [v27 umcId];
      if (v28)
      {
        v29 = v28;
        v30 = sub_269854A94();
        a9 = v31;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = *(a11 + 16);
          OUTLINED_FUNCTION_3_5();
          sub_26977BCE4();
          a11 = v36;
        }

        v33 = *(a11 + 16);
        v32 = *(a11 + 24);
        if (v33 >= v32 >> 1)
        {
          OUTLINED_FUNCTION_85_2(v32);
          sub_26977BCE4();
          a11 = v37;
        }

        *(a11 + 16) = v33 + 1;
        v34 = a11 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = a9;
        v15 = v26;
      }

      else
      {

        ++v15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    type metadata accessor for PlayVideoContentResolutionResult();
    static ContentResolutionResult.disambiguation(with:)(v24);

    OUTLINED_FUNCTION_71_3();

    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_116();

    v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_26977A220()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2698548D4();
  v1[5] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26977A2C4()
{
  OUTLINED_FUNCTION_2_7();
  v1 = OUTLINED_FUNCTION_79_1(*(v0 + 24), &selRef_utsSearchParams);
  *(v0 + 64) = v1;
  if (v1)
  {
    if (sub_26975004C(v1))
    {
      OUTLINED_FUNCTION_108(*(v0 + 32));
      v2 = swift_task_alloc();
      *(v0 + 72) = v2;
      *v2 = v0;
      OUTLINED_FUNCTION_123(v2);

      return sub_2697BBCB0();
    }
  }

  v4 = [*(v0 + 24) contentSearch];
  *(v0 + 88) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_108(*(v0 + 32));
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_123(v5);

    return sub_2697BB34C();
  }

  else
  {
    v6 = *(v0 + 56);

    OUTLINED_FUNCTION_28_2();
    v8 = MEMORY[0x277D84F90];

    return v7(v8);
  }
}

uint64_t sub_26977A474()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  v5[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = v5[8];

    v15 = v5[7];

    v16 = *(v9 + 8);

    return v16(v3);
  }
}

uint64_t sub_26977A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = v22[8];

  v26 = v22[10];
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v28 = v22[6];
  v27 = v22[7];
  OUTLINED_FUNCTION_33_0(v22[5], qword_28033D928);
  (*(v28 + 16))(v27);
  v29 = v26;
  v30 = sub_2698548B4();
  v31 = sub_269854F24();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v22[6];
  v34 = v22[7];
  v35 = v22[5];
  if (v32)
  {
    OUTLINED_FUNCTION_27_2();
    a10 = v34;
    v36 = OUTLINED_FUNCTION_16_8();
    a11 = v36;
    *v34 = 136315138;
    v22[2] = v26;
    v37 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v38 = sub_269854AE4();
    v40 = sub_26974F520(v38, v39, &a11);

    *(v34 + 4) = v40;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v41, v42, "Remote device content resolver error: %s. No items added to suggestedContents list from remote device");
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_68_3();
    OUTLINED_FUNCTION_10();
  }

  (*(v33 + 8))(v34, v35);
  v43 = v22[7];

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26977A77C()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v8 = *(v7 + 96);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26977A88C()
{
  OUTLINED_FUNCTION_2_7();

  v1 = *(v0 + 112);
  v2 = *(v0 + 56);

  v3 = OUTLINED_FUNCTION_8_23();

  return v4(v3);
}

uint64_t sub_26977A8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;

  v25 = *(v22 + 104);
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v27 = *(v22 + 48);
  v26 = *(v22 + 56);
  OUTLINED_FUNCTION_33_0(*(v22 + 40), qword_28033D928);
  (*(v27 + 16))(v26);
  v28 = v25;
  v29 = sub_2698548B4();
  v30 = sub_269854F24();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v22 + 48);
  v33 = *(v22 + 56);
  v34 = *(v22 + 40);
  if (v31)
  {
    OUTLINED_FUNCTION_27_2();
    a10 = v33;
    v35 = OUTLINED_FUNCTION_16_8();
    a11 = v35;
    *v33 = 136315138;
    *(v22 + 16) = v25;
    v36 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v37 = sub_269854AE4();
    v39 = sub_26974F520(v37, v38, &a11);

    *(v33 + 4) = v39;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v40, v41, "Remote device content resolver error: %s. No items added to suggestedContents list from remote device");
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_68_3();
    OUTLINED_FUNCTION_10();
  }

  (*(v32 + 8))(v33, v34);
  v42 = *(v22 + 56);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

void sub_26977AAB0()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  v5 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  if ([v1 sort])
  {

    sub_269771B1C(1, v3);
    v4 = v16;
    v18 = v17;
    if (v17)
    {
      sub_2698555A4();
      swift_unknownObjectRetain_n();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        swift_unknownObjectRelease();
        v32 = MEMORY[0x277D84F90];
      }

      v33 = *(v32 + 16);

      if (__OFSUB__(v18 >> 1, v4))
      {
LABEL_50:
        __break(1u);
      }

      else if (v33 == (v18 >> 1) - v4)
      {
        v34 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v34)
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_46;
      }

      swift_unknownObjectRelease();
    }

    v19 = OUTLINED_FUNCTION_7_16();
    sub_2697E0BB4(v19, v20, v4, v18);
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  sub_26974FAB0(v1, &selRef_name);
  if (!v21)
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    OUTLINED_FUNCTION_33_0(v5, qword_28033D928);
    v44 = OUTLINED_FUNCTION_148(v7);
    v45(v44);
    v46 = sub_2698548B4();
    v47 = sub_269854F04();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v48);
      _os_log_impl(&dword_269684000, v46, v47, "Skipping content filtering due to no title present in search", v7, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v7 + 8))(v15, v5);

    goto LABEL_46;
  }

  v52 = v5;
  v53 = v13;
  v51 = v7;
  v22 = MEMORY[0x277D84F90];

  v56 = v22;
  v54 = sub_26975004C(v3);
  v23 = 0;
  v24 = v3 & 0xC000000000000001;
  v18 = v3 & 0xFFFFFFFFFFFFFF8;
  while (v54 != v23)
  {
    if (v24)
    {
      v25 = MEMORY[0x26D646120](v23, v3);
    }

    else
    {
      if (v23 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v25 = *(v3 + 8 * v23 + 32);
    }

    v26 = v25;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v27 = [v25 isInWatchList];
    sub_269694CBC();
    v28 = sub_269855034();
    v29 = v28;
    if (v27)
    {
      v30 = sub_269855064();

      if (v30)
      {
        sub_269855284();
        v31 = *(v56 + 16);
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_16:
    ++v23;
  }

  v35 = v56;
  if (sub_26975004C(v56))
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v36 = v52;
    OUTLINED_FUNCTION_33_0(v52, qword_28033D928);
    v37 = v51;
    (*(v51 + 16))(v53);
    v38 = sub_2698548B4();
    v39 = sub_269854F44();
    if (OUTLINED_FUNCTION_19_4(v39))
    {
      v40 = OUTLINED_FUNCTION_16_2();
      *v40 = 0;
      _os_log_impl(&dword_269684000, v38, v39, "Re-ranking content to prioritize items on user's WatchList", v40, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v37 + 8))(v53, v36);
    v18 = 0;
    v56 = MEMORY[0x277D84F90];
    while (v54 != v18)
    {
      sub_269750050(v18);
      if (v24)
      {
        v41 = MEMORY[0x26D646120](v18, v3);
      }

      else
      {
        v41 = *(v3 + 8 * v18 + 32);
      }

      v42 = v41;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_49;
      }

      v55 = v41;
      MEMORY[0x28223BE20](v41);
      *(&v50 - 2) = &v55;
      if (sub_26983387C(sub_26977E3E0, (&v50 - 4), v35))
      {
      }

      else
      {
        sub_269855284();
        v43 = *(v56 + 16);
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
      }

      ++v18;
    }

    v49 = v56;
    v56 = v35;
    sub_26980BB94(v49);
  }

  else
  {
  }

LABEL_46:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26977B044()
{
  OUTLINED_FUNCTION_2_7();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = sub_2698548D4();
  v1[16] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[17] = v6;
  v8 = *(v7 + 64);
  v1[18] = OUTLINED_FUNCTION_37_0();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26977B128()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *OUTLINED_FUNCTION_108(*(v0 + 120));
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_123(v2);

  return sub_2697AEB90();
}

uint64_t sub_26977B1C0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 192);
  *v2 = *v0;
  *(v1 + 200) = v5;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26977B2AC()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 112);
    if (v1)
    {
      v2 = *(v0 + 104);
      OUTLINED_FUNCTION_108(*(v0 + 120));
      v3 = OUTLINED_FUNCTION_7_16();
      sub_2697ADE90(v3, v4, v5);
      if (*(v0 + 80))
      {
        v6 = *(v0 + 120);
        v7 = *(v0 + 104);
        sub_26968E5D4((v0 + 56), v0 + 16);
        v8 = *__swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carPlaySupportProvider), *(v6 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carPlaySupportProvider + 24));
        if (sub_2697AE1AC(v7, v1))
        {
          goto LABEL_11;
        }

        if (qword_2803226E8 != -1)
        {
          OUTLINED_FUNCTION_0_30();
        }

        v9 = *(v0 + 184);
        v10 = *(v0 + 136);
        __swift_project_value_buffer(*(v0 + 128), qword_28033D928);
        v11 = *(v10 + 16);
        v12 = OUTLINED_FUNCTION_25_2();
        v124 = v13;
        v13(v12);
        v14 = sub_2698548B4();
        v15 = sub_269854F14();
        if (OUTLINED_FUNCTION_55_2(v15))
        {
          v16 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_64_1(v16);
          OUTLINED_FUNCTION_49_5();
          _os_log_impl(v17, v18, v19, v20, v21, 2u);
          OUTLINED_FUNCTION_31_6();
        }

        v22 = *(v0 + 184);
        v23 = *(v0 + 128);
        v24 = *(v0 + 136);
        v25 = *(v0 + 96);

        v26 = *(v24 + 8);
        v27 = OUTLINED_FUNCTION_44_0();
        v26(v27);
        if (!v25)
        {
          goto LABEL_38;
        }

        if ([*(v0 + 96) BOOLValue])
        {
LABEL_11:
          v28 = *(v0 + 104) == 0x6C7070612E6D6F63 && *(v0 + 112) == 0xEC00000076742E65;
          if (v28 || (sub_269855584() & 1) != 0 || (v29 = *OUTLINED_FUNCTION_108(*(v0 + 120)), (sub_2697B5594() & 1) == 0) || (v30 = *(v0 + 48), __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)), v31 = *(v30 + 48), v32 = OUTLINED_FUNCTION_22_3(), (v33(v32) & 1) != 0) || (v34 = *(*(v0 + 120) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_userDefaultsProvider), (sub_2697B94C0() & 1) != 0))
          {
            if (qword_2803226E8 != -1)
            {
              OUTLINED_FUNCTION_0_30();
            }

            v35 = *(v0 + 168);
            v36 = *(v0 + 136);
            __swift_project_value_buffer(*(v0 + 128), qword_28033D928);
            v37 = OUTLINED_FUNCTION_2_8();
            v38(v37);
            v39 = sub_2698548B4();
            v40 = sub_269854F14();
            if (OUTLINED_FUNCTION_19_5(v40))
            {
              v41 = OUTLINED_FUNCTION_16_2();
              OUTLINED_FUNCTION_30_2(v41);
              OUTLINED_FUNCTION_31_0(&dword_269684000, v42, v43, "CarPlay mode supports video playback and user is entitled and has app installed. Proceeding with playback");
              OUTLINED_FUNCTION_18_7();
            }

            v44 = *(v0 + 168);
            v45 = *(v0 + 128);
            v46 = *(v0 + 136);

            v47 = *(v46 + 8);
            v48 = OUTLINED_FUNCTION_22_3();
            v49(v48);
            __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          }

          else
          {
            if (qword_2803226E8 != -1)
            {
              OUTLINED_FUNCTION_0_30();
            }

            v109 = *(v0 + 160);
            v110 = *(v0 + 136);
            __swift_project_value_buffer(*(v0 + 128), qword_28033D928);
            v111 = OUTLINED_FUNCTION_2_8();
            v112(v111);
            v113 = sub_2698548B4();
            v114 = sub_269854F14();
            if (OUTLINED_FUNCTION_19_5(v114))
            {
              v115 = OUTLINED_FUNCTION_16_2();
              OUTLINED_FUNCTION_30_2(v115);
              OUTLINED_FUNCTION_31_0(&dword_269684000, v116, v117, "Device is locked and the app does not support background playback, therefore reject request");
              OUTLINED_FUNCTION_18_7();
            }

            v118 = *(v0 + 160);
            v119 = *(v0 + 128);
            v120 = *(v0 + 136);

            v121 = *(v120 + 8);
            v122 = OUTLINED_FUNCTION_22_3();
            v123(v122);
            __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          }
        }

        else
        {
LABEL_38:
          v97 = *(v0 + 176);
          v98 = *(v0 + 128);
          v99 = OUTLINED_FUNCTION_25_2();
          v124(v99);
          v100 = sub_2698548B4();
          v101 = sub_269854F24();
          if (OUTLINED_FUNCTION_19_5(v101))
          {
            v102 = OUTLINED_FUNCTION_16_2();
            OUTLINED_FUNCTION_30_2(v102);
            OUTLINED_FUNCTION_31_0(&dword_269684000, v103, v104, "CarPlay mode supports video playback, but user is not entitled to content");
            OUTLINED_FUNCTION_18_7();
          }

          v105 = *(v0 + 176);
          v106 = *(v0 + 128);
          v107 = *(v0 + 136);

          v108 = OUTLINED_FUNCTION_22_3();
          v26(v108);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        }

        goto LABEL_35;
      }

      sub_26969B0C0(v0 + 56, &unk_2803263B0, &unk_26985D0B0);
    }

    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v69 = *(v0 + 152);
    v70 = *(v0 + 136);
    __swift_project_value_buffer(*(v0 + 128), qword_28033D928);
    v71 = OUTLINED_FUNCTION_2_8();
    v72(v71);
    v73 = sub_2698548B4();
    v74 = sub_269854F24();
    v75 = OUTLINED_FUNCTION_55_2(v74);
    v76 = *(v0 + 152);
    v77 = *(v0 + 128);
    v78 = *(v0 + 136);
    if (v75)
    {
      v79 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v79);
      OUTLINED_FUNCTION_49_5();
      _os_log_impl(v80, v81, v82, v83, v84, 2u);
      OUTLINED_FUNCTION_31_6();
    }

    v85 = *(v78 + 8);
    v86 = OUTLINED_FUNCTION_22_3();
    v87(v86);
  }

  else
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v51 = *(v0 + 136);
    v50 = *(v0 + 144);
    __swift_project_value_buffer(*(v0 + 128), qword_28033D928);
    v52 = OUTLINED_FUNCTION_2_8();
    v53(v52);
    v54 = sub_2698548B4();
    v55 = sub_269854F24();
    v56 = OUTLINED_FUNCTION_55_2(v55);
    v58 = *(v0 + 136);
    v57 = *(v0 + 144);
    v59 = *(v0 + 128);
    if (v56)
    {
      v60 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v60);
      OUTLINED_FUNCTION_49_5();
      _os_log_impl(v61, v62, v63, v64, v65, 2u);
      OUTLINED_FUNCTION_31_6();
    }

    v66 = *(v58 + 8);
    v67 = OUTLINED_FUNCTION_22_3();
    v68(v67);
  }

LABEL_35:
  v89 = *(v0 + 176);
  v88 = *(v0 + 184);
  v91 = *(v0 + 160);
  v90 = *(v0 + 168);
  v93 = *(v0 + 144);
  v92 = *(v0 + 152);

  v94 = OUTLINED_FUNCTION_8_23();

  return v95(v94);
}

id PlayVideoIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayVideoIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26977B9CC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void sub_26977BA60()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_26977BCE4();
    *v0 = v4;
  }
}

void sub_26977BAAC()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_26977C3CC();
    *v0 = v4;
  }
}

void sub_26977BB2C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_26977D340();
    *v0 = v4;
  }
}

void sub_26977BBB8()
{
  OUTLINED_FUNCTION_86_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_26977BCE4();
    *v0 = v4;
  }
}

void sub_26977BBEC()
{
  OUTLINED_FUNCTION_86_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_26977C3CC();
    *v0 = v4;
  }
}

uint64_t sub_26977BC40(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_269854CD4();
  }

  return result;
}

void sub_26977BC80()
{
  OUTLINED_FUNCTION_86_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_26977D340();
    *v0 = v4;
  }
}

void sub_26977BCE4()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11_24(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
    v9 = OUTLINED_FUNCTION_117_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_22_11();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977BDB4()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11_24(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324328, &qword_26985F398);
    v9 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_66_2(v9);
    OUTLINED_FUNCTION_32_7(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977BE84()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_118_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324230, &qword_26985F270);
    v9 = OUTLINED_FUNCTION_117_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_22_11();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_26977BF50()
{
  OUTLINED_FUNCTION_27_10();
  if (v2)
  {
    OUTLINED_FUNCTION_26_13();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_99_1();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_103_0();
  sub_26977D794(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_72_0();
  v10 = sub_2698519E4();
  OUTLINED_FUNCTION_93_2(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277CB9E20], v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C020()
{
  OUTLINED_FUNCTION_27_10();
  if (v2)
  {
    OUTLINED_FUNCTION_26_13();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_99_1();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_102_0();
  sub_26977D794(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_72_0();
  v10 = sub_269851A04();
  OUTLINED_FUNCTION_93_2(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277CBA000], v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C0F0()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11_24(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324388, &unk_26985F400);
    v9 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_3_30(v9);
  }

  OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    OUTLINED_FUNCTION_152();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977C1C0()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11_24(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324360, &unk_26985F3D0);
    v9 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_3_30(v9);
  }

  OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    OUTLINED_FUNCTION_152();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977C2D8()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11_24(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242C8, &qword_26985F308);
    v9 = OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_3_30(v9);
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    OUTLINED_FUNCTION_83_2();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_127();
      v13 = OUTLINED_FUNCTION_44_0();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242D0, &qword_26985F310);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977C3CC()
{
  OUTLINED_FUNCTION_82_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_66_2(v11);
    v11[2] = v9;
    v11[3] = 2 * (v12 / 40);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[5 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_128();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_61_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_128();
    swift_arrayInitWithCopy();
  }
}

void sub_26977C4D4()
{
  OUTLINED_FUNCTION_27_10();
  if (v4)
  {
    OUTLINED_FUNCTION_26_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_99_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_136(v2, v5, &qword_280324310, &qword_26985F380);
  OUTLINED_FUNCTION_72_0();
  v9 = sub_269852EF4();
  OUTLINED_FUNCTION_93_2(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277D5BAF8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C5AC()
{
  OUTLINED_FUNCTION_27_10();
  if (v4)
  {
    OUTLINED_FUNCTION_26_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_99_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_136(v2, v5, &unk_280324330, &unk_26985F3A0);
  OUTLINED_FUNCTION_72_0();
  v9 = sub_269852FE4();
  OUTLINED_FUNCTION_93_2(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277D5BCB0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C684()
{
  OUTLINED_FUNCTION_27_10();
  if (v4)
  {
    OUTLINED_FUNCTION_26_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_99_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_136(v2, v5, &qword_280324318, &qword_26985F388);
  OUTLINED_FUNCTION_72_0();
  v9 = sub_269854934();
  OUTLINED_FUNCTION_93_2(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277D5FEB0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C75C()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11_24(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324368, &qword_26985F3E0);
    v9 = OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_3_30(v9);
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    OUTLINED_FUNCTION_83_2();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_127();
      v13 = OUTLINED_FUNCTION_44_0();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324370, &qword_26985F3E8);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977C82C()
{
  OUTLINED_FUNCTION_27_10();
  if (v4)
  {
    OUTLINED_FUNCTION_26_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_99_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_136(v2, v5, &qword_280324320, &qword_26985F390);
  v9 = OUTLINED_FUNCTION_72_0();
  v10 = type metadata accessor for VideoDataModels.VideoResult(v9);
  OUTLINED_FUNCTION_93_2(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(type metadata accessor for VideoDataModels.VideoResult, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C904()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11_24(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324358, &qword_26985F3C8);
    v9 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_3_30(v9);
  }

  OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    OUTLINED_FUNCTION_152();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977C9D4()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_42_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_11_24(v5);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324340, &unk_26985F3B0);
    v8 = OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_3_30(v8);
  }

  OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    OUTLINED_FUNCTION_152();
    if (v11)
    {
      v12 = v10 > v9;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_127();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977CAC0()
{
  OUTLINED_FUNCTION_82_2();
  if (v7)
  {
    OUTLINED_FUNCTION_7_29();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_42_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 16);
  v12 = sub_26977D6A0(v11, v8, v5, v6);
  v13 = OUTLINED_FUNCTION_61_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_93_2(v15);
  v17 = *(v16 + 80);
  OUTLINED_FUNCTION_18_5();
  if (v3)
  {
    sub_26977DA48(v0 + v18, v11, v12 + v18, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977CBAC()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_118_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243A0, &qword_26985F418);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_66_2(v9);
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * (v10 / 24);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v3] <= v11)
    {
      memmove(v11, v12, 24 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977CC9C()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_118_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243A8, &qword_26985F420);
    v9 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_66_2(v9);
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * (v10 / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_26977CD70()
{
  OUTLINED_FUNCTION_48_4();
  if (v7)
  {
    OUTLINED_FUNCTION_7_29();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_42_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_11_24(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324300, &qword_26985F370);
    v11 = OUTLINED_FUNCTION_117_0();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_22_11();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_44_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324308, &qword_26985F378);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977CE54()
{
  OUTLINED_FUNCTION_48_4();
  if (v7)
  {
    OUTLINED_FUNCTION_7_29();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_42_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_11_24(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
    v11 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_66_2(v11);
    OUTLINED_FUNCTION_32_7(v12);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    if (v11 != v0 || v5 + 32 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_44_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E8, &qword_26985F328);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977CF38()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11_24(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242D8, &unk_26985F318);
    v9 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_66_2(v9);
    OUTLINED_FUNCTION_32_7(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977D050()
{
  OUTLINED_FUNCTION_82_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_66_2(v11);
    v11[2] = v9;
    v11[3] = 2 * (v12 / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[3 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_128();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_61_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_128();
    swift_arrayInitWithCopy();
  }
}

void sub_26977D1A0()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11_24(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324250, &qword_26985F290);
    v9 = OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_3_30(v9);
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    OUTLINED_FUNCTION_83_2();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_127();
      v13 = OUTLINED_FUNCTION_44_0();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324258, &qword_26985F298);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977D270()
{
  OUTLINED_FUNCTION_48_4();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_11_24(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324280, &unk_26985F2C0);
    v9 = OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_3_30(v9);
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    OUTLINED_FUNCTION_83_2();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_127();
      v13 = OUTLINED_FUNCTION_44_0();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324288, &unk_269867D30);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977D340()
{
  OUTLINED_FUNCTION_48_4();
  if (v7)
  {
    OUTLINED_FUNCTION_7_29();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_42_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_11_24(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    v13 = OUTLINED_FUNCTION_117_0();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_22_11();
    v13[2] = v2;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    if (v13 != v0 || v5 + 16 * v2 <= v4)
    {
      v16 = OUTLINED_FUNCTION_44_0();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324240, &qword_26985F280);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977D41C()
{
  OUTLINED_FUNCTION_27_10();
  if (v4)
  {
    OUTLINED_FUNCTION_26_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_99_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_136(v2, v5, &qword_280324220, &unk_26985F260);
  OUTLINED_FUNCTION_72_0();
  v9 = sub_269851DA4();
  OUTLINED_FUNCTION_93_2(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277CC95F0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void *sub_26977D4F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v4 = OUTLINED_FUNCTION_117_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_22_11();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_26977D55C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324228, &qword_269867D20);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_66_2(v4);
  v4[2] = a1;
  v4[3] = 2 * (v5 / 24);
  return v4;
}

void *sub_26977D62C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v4 = OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_66_2(v4);
  v4[2] = a1;
  v4[3] = (2 * (v5 / 8)) | 1;
  return v4;
}

size_t sub_26977D6A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_61_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_5_12(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_26977D794(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_72_0();
  v9 = a5(v8);
  OUTLINED_FUNCTION_5_12(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_26977D884(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_26977D8A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_26977D944(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

uint64_t sub_26977D994(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_147();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_4_3(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v12 = OUTLINED_FUNCTION_35_8();

      return MEMORY[0x2821FE820](v12);
    }
  }

  else
  {
    a4(0);
    v13 = OUTLINED_FUNCTION_35_8();

    return MEMORY[0x2821FE828](v13);
  }

  return result;
}

uint64_t sub_26977DA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_147();
  if (v10 && (v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_4_3(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v14 = OUTLINED_FUNCTION_35_8();

      return MEMORY[0x2821FE820](v14);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = OUTLINED_FUNCTION_35_8();

    return MEMORY[0x2821FE828](v15);
  }

  return result;
}

uint64_t sub_26977DB10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_26977DB40(void *__src, uint64_t a2, void *__dst)
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

void sub_26977DB64(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_26977DBF0(void *a1, SEL *a2, void (*a3)(void))
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  a3(0);
  v6 = sub_269854CB4();

  return v6;
}

void sub_26977DC54(uint64_t a1, void *a2)
{
  v3 = sub_269854CA4();
  [a2 setAllUmcIds_];
}

uint64_t sub_26977DCB4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_269854A94();
    OUTLINED_FUNCTION_68_1();
  }

  return OUTLINED_FUNCTION_25_2();
}

uint64_t sub_26977DD18(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_269854CB4();

  return v4;
}

uint64_t sub_26977DD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_14_14(a1, a2, a3);
  sub_269750050(v5);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_167();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_61_0();
    v6 = MEMORY[0x26D646120](v8);
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_126();
}

uint64_t sub_26977DDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_14_14(a1, a2, a3);
  sub_269750050(v5);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_167();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_61_0();
    v6 = MEMORY[0x26D646120](v8);
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_126();
}

unint64_t sub_26977DE2C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26977DE98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_26977DEE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_269855324();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_26977DF3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = -a2;
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v3 < 1)
  {
    if (v4 <= 0 && v3 < v4)
    {
      return 0;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && v4 < v3)
  {
    return 0;
  }

  v6 = __OFADD__(result, v3);
  result -= a2;
  if (v6)
  {
    goto LABEL_15;
  }

  return result;
}

id *sub_26977DF94(uint64_t a1, uint64_t a2)
{
  v8[3] = type metadata accessor for IntentExtensionExecutionDeviceState();
  v8[4] = sub_26977E150(&qword_280324208, type metadata accessor for IntentExtensionExecutionDeviceState);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  sub_26977E400(a1, boxed_opaque_existential_1);
  swift_defaultActor_initialize();
  *(a2 + 160) = 0;
  sub_2696A73F8(v8, a2 + 112);
  *(a2 + 152) = [objc_allocWithZone(MEMORY[0x277CF89F8]) init];
  v7.receiver = a2;
  v7.super_class = type metadata accessor for CarSessionProvider();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v5[19] addSessionObserver_];
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_26977E088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26977E0E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324210, &qword_26985F1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26977E150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26977E198()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_25(v5);

  return v7(v6);
}

uint64_t sub_26977E230()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_25(v5);

  return v7(v6);
}

uint64_t sub_26977E2C8()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_25(v5);

  return v7(v6);
}

uint64_t sub_26977E360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_50_0();
  v8(v7);
  return a2;
}

uint64_t sub_26977E3BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_269833D74() & 1;
}

uint64_t sub_26977E400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentExtensionExecutionDeviceState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_23()
{
  v2 = v0[27];
  result = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  return result;
}

size_t OUTLINED_FUNCTION_3_30(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_21()
{
  v4 = v0[14];
  v5 = v0[13];
  v2 = v0[12];
  v6 = v0[9];
  v7 = v0[7];
}

void OUTLINED_FUNCTION_11_24(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_15_17()
{
  v3 = v0[32];
  v4 = v0[31];
  v5 = v0[30];
  v6 = v0[29];
  v7 = v0[28];
  v8 = v0[25];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[20];
  v12 = v0[19];
  v13 = v0[17];
  v14 = v0[16];
}

uint64_t OUTLINED_FUNCTION_20_13(void *a1, SEL *a2)
{

  return sub_26977DBF0(a1, a2, type metadata accessor for Content);
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_33_8()
{
  v4 = v0[14];
  v5 = v0[13];
  v2 = v0[12];
  v6 = v0[9];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_44_5()
{

  return sub_269855584();
}

uint64_t OUTLINED_FUNCTION_47_3(uint64_t a1)
{
  *(a1 + 8) = sub_269777DB0;
  v3 = *(v1 + 104);
  return v2;
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_55_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_60_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_67_1@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_26977D994(v2 + a2, v4, v3 + a2, a1);
}

void OUTLINED_FUNCTION_68_3()
{

  JUMPOUT(0x26D647170);
}

void OUTLINED_FUNCTION_70_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_71_3()
{
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];
  v7 = v0[4];
}

uint64_t OUTLINED_FUNCTION_73_0()
{
  result = v0[17];
  v2 = v0[14];
  v3 = *(v0[15] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_79_1(void *a1, SEL *a2)
{

  return sub_26977DBF0(a1, a2, type metadata accessor for UtsSearchParam);
}

void OUTLINED_FUNCTION_80_0()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
}

unint64_t OUTLINED_FUNCTION_92_1(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  strcpy((v2 + 72), "tv.apple.com");
  *(v2 + 85) = 0;
  *(v2 + 86) = -5120;

  return sub_269693054();
}

void OUTLINED_FUNCTION_97_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_101_1()
{

  sub_2697ADE90(0x6C7070612E6D6F63, 0xEC00000076742E65, v0 + 16);
}

void OUTLINED_FUNCTION_104_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_106_1()
{
  v3 = v0[51];
  v4 = v0[52];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[34];
  v8 = v0[26];
  v9 = v0[27];
}

void *OUTLINED_FUNCTION_108@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1 + 24);

  return __swift_project_boxed_opaque_existential_1((a1 + v1), v3);
}

void OUTLINED_FUNCTION_111_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return sub_269855584();
}

uint64_t OUTLINED_FUNCTION_114_1()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_115_1(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_116_1()
{
  v1 = v0[56];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  v5 = v0[26];
  return v0[34];
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_118_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_122_0()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[26];
  return v0[36];
}

uint64_t OUTLINED_FUNCTION_125()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[7];
  return v0[11];
}

size_t OUTLINED_FUNCTION_136(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26977D794(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1)
{
  v4 = *(v2 + 16);
  *(a1 + 16) = *v2;
  *(a1 + 32) = v4;
  *(a1 + 48) = *(v2 + 32);
  v5 = *(v1 + 128);
}

uint64_t OUTLINED_FUNCTION_140(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);

  return type metadata accessor for BackgroundPlayableFetch();
}

uint64_t OUTLINED_FUNCTION_141()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_143(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

char *OUTLINED_FUNCTION_144()
{

  return PlayVideoIntentResponse.init(code:userActivity:)(5, 0);
}

uint64_t OUTLINED_FUNCTION_146()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_163()
{

  return sub_269855144();
}

id OUTLINED_FUNCTION_167()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

BOOL OUTLINED_FUNCTION_168()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_169()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t type metadata accessor for IntentExtensionExecutionDeviceState()
{
  result = qword_2803243C0;
  if (!qword_2803243C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26977EE90()
{
  sub_269854304();
  if (v0 <= 0x3F)
  {
    sub_269854334();
    if (v1 <= 0x3F)
    {
      sub_2698542E4();
      if (v2 <= 0x3F)
      {
        sub_2697154B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26977EFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_269854334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26977F038@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269854304();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26977F0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2698542E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26977F120(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_26977F188@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 outputVoice];

  if (v3)
  {
    v4 = [v3 gender];

    v5 = sub_2698542E4();
    v6 = *(*(v5 - 8) + 104);
    if (v4 == 2)
    {
      v7 = MEMORY[0x277D61B68];
    }

    else if (v4 == 1)
    {
      v7 = MEMORY[0x277D61B60];
    }

    else
    {
      v7 = MEMORY[0x277D61B70];
    }

    v11 = *v7;
    v10 = a1;
  }

  else
  {
    v8 = *MEMORY[0x277D61B70];
    v9 = sub_2698542E4();
    v6 = *(*(v9 - 8) + 104);
    v5 = v9;
    v10 = a1;
    v11 = v8;
  }

  return v6(v10, v11, v5);
}

uint64_t sub_26977F2C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_26977F2DC()
{
  OUTLINED_FUNCTION_2_7();
  v0[5] = sub_269854A04();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_26977F3A4;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_2696B8B54();
}

uint64_t sub_26977F3A4()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = *(v4 + 48);
  v6 = *(v4 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  v10 = *(v7 + 8);
  if (!v0)
  {
    v9 = v3;
  }

  return v10(v9);
}

void *sub_26977F4B8()
{
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  v2 = sub_269853264();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = sub_269853254();
  v17[3] = v0;
  v17[4] = &off_287A3DBA0;
  v17[0] = v1;
  v15 = v2;
  v16 = MEMORY[0x277D5BD58];
  *&v14 = v5;
  type metadata accessor for PlayVideoUnsupportedValueStrategy();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v17, v0);
  v8 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v6[5] = v0;
  v6[6] = &off_287A3DBA0;
  v6[2] = v12;
  sub_2696AE06C(&v14, (v6 + 7));
  __swift_destroy_boxed_opaque_existential_0(v17);

  return v6;
}

uint64_t sub_26977F624()
{
  OUTLINED_FUNCTION_2_7();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v4 = *(*(sub_269852EB4() - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v5 = sub_269853634();
  v1[20] = v5;
  v6 = *(v5 - 8);
  v1[21] = v6;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v8 = sub_2698548D4();
  v1[23] = v8;
  v9 = *(v8 - 8);
  v1[24] = v9;
  v10 = *(v9 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26977F76C, 0, 0);
}

uint64_t sub_26977F76C()
{
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "PlayVideoUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);

  (*(v9 + 8))(v8, v10);
  sub_269852E64();
  sub_2698535C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243D0, &unk_26985F688);
  v14 = sub_2698536C4();
  v15 = [v14 unsupportedReason];

  v16 = PlayVideoContentUnsupportedReason.init(rawValue:)(v15);
  v17 = v16;
  v19 = v18;
  if (v18)
  {
    goto LABEL_6;
  }

  if (v16 == 6)
  {
    v36 = *(v0 + 144);
    *(v0 + 16) = 0;
    *(v0 + 20) = 0;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_26978002C;

    return sub_2696C0FB4();
  }

  else
  {
    if (v16 == 5)
    {
      v34 = *__swift_project_boxed_opaque_existential_1((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
      v35 = OUTLINED_FUNCTION_30_0(&dword_26985F698);
      *(v0 + 224) = v35;
      *v35 = v0;
      v35[1] = sub_26977FDE0;
      v33 = 0x800000026987EE70;
      v32 = 0xD000000000000010;
    }

    else
    {
      if (v16 != 1)
      {
LABEL_6:
        type metadata accessor for PlayVideoIntent();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        result = sub_2696BBEF8(ObjCClassFromMetadata);
        if (v22)
        {
          v23 = result;
          v24 = v22;
          if (v19)
          {
            v25 = -1;
          }

          else
          {
            v25 = v17;
          }

          sub_2696BAE9C();
          swift_allocError();
          *v26 = v23;
          *(v26 + 8) = v24;
          *(v26 + 16) = v25;
          *(v26 + 24) = 2;
          swift_willThrow();
          v27 = OUTLINED_FUNCTION_1_25();
          v28(v27);

          OUTLINED_FUNCTION_7_7();

          return v29();
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      v30 = *__swift_project_boxed_opaque_existential_1((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
      v31 = OUTLINED_FUNCTION_30_0(&dword_26985F698);
      *(v0 + 208) = v31;
      *v31 = v0;
      v31[1] = sub_26977FB94;
      v32 = 0xD000000000000015;
      v33 = 0x800000026987DB70;
    }

    return v38(v32, v33);
  }
}

uint64_t sub_26977FB94()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v9 + 216) = v0;

  if (v0)
  {
    v10 = sub_26977FD5C;
  }

  else
  {
    v10 = sub_26977FC98;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26977FC98()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_5_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v2 = swift_allocObject();
  *(v0 + 264) = v2;
  *(v2 + 16) = xmmword_2698590C0;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D5BE58] + 4);
  v4 = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_22(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_34(v6);

  return MEMORY[0x2821BB488](v8, v9, v10, v11, v12);
}

uint64_t sub_26977FD5C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 216);
  v2 = OUTLINED_FUNCTION_1_25();
  v3(v2);

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_26977FDE0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v9 + 232) = v0;

  if (v0)
  {
    v10 = sub_26977FFA8;
  }

  else
  {
    v10 = sub_26977FEE4;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26977FEE4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_5_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v2 = swift_allocObject();
  *(v0 + 264) = v2;
  *(v2 + 16) = xmmword_2698590C0;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D5BE58] + 4);
  v4 = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_22(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_34(v6);

  return MEMORY[0x2821BB488](v8, v9, v10, v11, v12);
}

uint64_t sub_26977FFA8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 232);
  v2 = OUTLINED_FUNCTION_1_25();
  v3(v2);

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_26978002C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;
  v2[13] = v1;
  v2[14] = v4;
  v2[15] = v0;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v9 + 248) = v0;

  if (v0)
  {
    v10 = sub_2697803A4;
  }

  else
  {
    v10 = sub_269780130;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_269780130()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_5_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v2 = swift_allocObject();
  *(v0 + 264) = v2;
  *(v2 + 16) = xmmword_2698590C0;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D5BE58] + 4);
  v4 = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_22(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_34(v6);

  return MEMORY[0x2821BB488](v8, v9, v10, v11, v12);
}

uint64_t sub_2697801F4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 272);
  v3 = *(v1 + 264);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_2697802FC, 0, 0);
}

uint64_t sub_2697802FC()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_7_7();

  return v6();
}

uint64_t sub_2697803A4()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 248);
  v2 = OUTLINED_FUNCTION_1_25();
  v3(v2);

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_26978043C()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243D0, &unk_26985F688);
  v2 = sub_2698536B4();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2697804D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_26977F624();
}

uint64_t sub_269780580(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26974872C;

  return sub_269780428(a1);
}

uint64_t sub_269780614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PlayVideoUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1)
{
  *(a1 + 8) = sub_2697801F4;
  v2 = *(v1 + 176);
  return *(v1 + 128);
}

uint64_t OUTLINED_FUNCTION_1_25()
{
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];
  v4 = *(v0[21] + 8);
  return v0[22];
}

void *OUTLINED_FUNCTION_5_26()
{
  v2 = *(v0 + 144);
  *(v0 + 256) = v1;
  v3 = v2[11];
  return __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
}

id sub_269780774()
{
  result = [objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentHandler()) init];
  qword_28033D728 = result;
  return result;
}

uint64_t sub_2697807A8(uint64_t a1)
{
  v141 = a1;
  v142 = sub_269852474();
  v1 = OUTLINED_FUNCTION_8(v142);
  v133 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v124 = v6 - v5;
  v7 = sub_269851F04();
  v8 = OUTLINED_FUNCTION_8(v7);
  v139 = v9;
  v140 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v125 = v13 - v12;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F40, &unk_26985DE30);
  v14 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_24_3();
  v129 = v15;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v16);
  v136 = &v124 - v17;
  v18 = sub_2698523C4();
  v19 = OUTLINED_FUNCTION_8(v18);
  v131 = v20;
  v132 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v130 = v24 - v23;
  v25 = sub_269851EF4();
  v26 = OUTLINED_FUNCTION_8(v25);
  v134 = v27;
  v135 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v124 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F48, qword_26985DE40);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  OUTLINED_FUNCTION_24_3();
  v128 = v39;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v40);
  v126 = &v124 - v41;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v42);
  v127 = &v124 - v43;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v44);
  v137 = &v124 - v45;
  OUTLINED_FUNCTION_22_0();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v124 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v124 - v50;
  v52 = sub_269853874();
  v53 = OUTLINED_FUNCTION_8(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v60 = v59 - v58;
  v61 = sub_2698538B4();
  v62 = OUTLINED_FUNCTION_8(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_3_1();
  v69 = (v68 - v67);
  (*(v64 + 16))(v68 - v67, v141, v61);
  v70 = *(v64 + 88);
  v71 = OUTLINED_FUNCTION_7_23();
  v73 = v72(v71);
  if (v73 != *MEMORY[0x277D5C140])
  {
    v80 = v142;
    if (v73 != *MEMORY[0x277D5C148])
    {
      v104 = *(v64 + 8);
      v105 = OUTLINED_FUNCTION_7_23();
      v106(v105);
LABEL_28:
      v112 = 0;
      return v112 & 1;
    }

    v81 = *(v64 + 96);
    v82 = OUTLINED_FUNCTION_7_23();
    v83(v82);
    v84 = *v69;
    sub_2696D6C54();
    if (v85)
    {
      v86 = v85;
      v87 = v124;
      sub_269854544();

      v88 = v130;
      sub_269852424();
      (*(v133 + 8))(v87, v80);
      v89 = v127;
      sub_2698523A4();
      (*(v131 + 8))(v88, v132);
      v90 = 0;
      v92 = v139;
      v91 = v140;
      v94 = v128;
      v93 = v129;
    }

    else
    {
      v90 = 1;
      v92 = v139;
      v91 = v140;
      v94 = v128;
      v93 = v129;
      v89 = v127;
    }

    v117 = v126;
    __swift_storeEnumTagSinglePayload(v89, v90, 1, v91);
    (*(v92 + 104))(v117, *MEMORY[0x277D391E8], v91);
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v91);
    v118 = *(v138 + 48);
    sub_269740BE4(v89, v93);
    sub_269740BE4(v117, v93 + v118);
    OUTLINED_FUNCTION_8_21(v93);
    if (v119)
    {

      OUTLINED_FUNCTION_3_23(v117);
      OUTLINED_FUNCTION_3_23(v89);
      OUTLINED_FUNCTION_8_21(v93 + v118);
      if (v119)
      {
        v103 = v93;
        goto LABEL_22;
      }
    }

    else
    {
      sub_269740BE4(v93, v94);
      OUTLINED_FUNCTION_8_21(v93 + v118);
      if (!v119)
      {
        v120 = v93 + v118;
        v121 = v125;
        (*(v92 + 32))(v125, v120, v91);
        sub_269740C54();
        v112 = sub_269854A54();

        v122 = *(v92 + 8);
        v122(v121, v91);
        OUTLINED_FUNCTION_5_22(v117);
        OUTLINED_FUNCTION_5_22(v89);
        v122(v94, v91);
        v116 = v93;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_3_23(v117);
      OUTLINED_FUNCTION_3_23(v89);
      (*(v92 + 8))(v94, v91);
    }

    v109 = v93;
    goto LABEL_27;
  }

  v74 = *(v64 + 96);
  v75 = OUTLINED_FUNCTION_7_23();
  v76(v75);
  v129 = v55;
  v77 = *(v55 + 32);
  v141 = v52;
  v77(v60, v69, v52);
  sub_269853864();
  sub_2696D3C74();
  (*(v134 + 8))(v32, v135);
  v78 = v142;
  if (__swift_getEnumTagSinglePayload(v36, 1, v142) == 1)
  {
    sub_269698048(v36, &qword_280323360, &unk_26985AB80);
    v79 = 1;
  }

  else
  {
    v95 = v130;
    sub_269852424();
    (*(v133 + 8))(v36, v78);
    sub_2698523A4();
    (*(v131 + 8))(v95, v132);
    v79 = 0;
  }

  v96 = v139;
  v97 = v140;
  v98 = v137;
  __swift_storeEnumTagSinglePayload(v51, v79, 1, v140);
  (*(v96 + 104))(v49, *MEMORY[0x277D391E8], v97);
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v97);
  v99 = *(v138 + 48);
  v100 = v136;
  sub_269740BE4(v51, v136);
  sub_269740BE4(v49, v100 + v99);
  if (__swift_getEnumTagSinglePayload(v100, 1, v97) != 1)
  {
    sub_269740BE4(v100, v98);
    if (__swift_getEnumTagSinglePayload(v100 + v99, 1, v97) == 1)
    {
      OUTLINED_FUNCTION_3_23(v49);
      OUTLINED_FUNCTION_3_23(v51);
      v107 = OUTLINED_FUNCTION_2_17();
      v108(v107);
      (*(v96 + 8))(v98, v97);
      goto LABEL_14;
    }

    v110 = v100 + v99;
    v111 = v125;
    (*(v96 + 32))(v125, v110, v97);
    sub_269740C54();
    v112 = sub_269854A54();
    v113 = *(v96 + 8);
    v113(v111, v97);
    OUTLINED_FUNCTION_5_22(v49);
    OUTLINED_FUNCTION_5_22(v51);
    v114 = OUTLINED_FUNCTION_2_17();
    v115(v114);
    v113(v137, v97);
    v116 = v100;
LABEL_29:
    OUTLINED_FUNCTION_5_22(v116);
    return v112 & 1;
  }

  OUTLINED_FUNCTION_3_23(v49);
  OUTLINED_FUNCTION_3_23(v51);
  v101 = OUTLINED_FUNCTION_2_17();
  v102(v101);
  if (__swift_getEnumTagSinglePayload(v100 + v99, 1, v97) != 1)
  {
LABEL_14:
    v109 = v100;
LABEL_27:
    sub_269698048(v109, &qword_280323F40, &unk_26985DE30);
    goto LABEL_28;
  }

  v103 = v100;
LABEL_22:
  sub_269698048(v103, &qword_280323F48, qword_26985DE40);
  v112 = 1;
  return v112 & 1;
}

id sub_269781218()
{
  if (qword_2803224C8 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D728;
  qword_28033D730 = qword_28033D728;

  return v1;
}

uint64_t sub_26978127C()
{
  v0 = sub_2698538B4();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2698548D4();
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v16 = __swift_project_value_buffer(v8, qword_28033D910);
  (*(v11 + 16))(v15, v16, v8);
  v17 = sub_2698548B4();
  v18 = sub_269854F14();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v24 = v3;
    v20 = v19;
    *v19 = 0;
    _os_log_impl(&dword_269684000, v17, v18, "RemoveFromWatchListFlowStrategy.actionForInput() called", v19, 2u);
    v3 = v24;
    MEMORY[0x26D647170](v20, -1, -1);
  }

  (*(v11 + 8))(v15, v8);
  sub_269853844();
  v21 = sub_2697807A8(v7);
  (*(v3 + 8))(v7, v0);
  if (v21)
  {
    return sub_269853004();
  }

  else
  {
    return sub_269853014();
  }
}