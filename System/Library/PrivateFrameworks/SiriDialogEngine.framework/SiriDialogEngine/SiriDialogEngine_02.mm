unint64_t sub_222D038C4()
{
  result = qword_27D03BF60;
  if (!qword_27D03BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BF60);
  }

  return result;
}

uint64_t sub_222D03918(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BF68, &qword_222D540D8);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  result = sub_222D1C398(a1);
  if (!v2)
  {
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_222D038C4();
    sub_222D531AC();
    v14 = *(v1 + 72);
    sub_222D52FEC();
    return (*(v7 + 8))(v11, v4);
  }

  return result;
}

uint64_t DialogPersonHeight.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_4_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_BYTE *storeEnumTagSinglePayload for DialogPersonHeight.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_222D03CCC()
{
  result = qword_27D03BF70;
  if (!qword_27D03BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BF70);
  }

  return result;
}

unint64_t sub_222D03D24()
{
  result = qword_27D03BF78;
  if (!qword_27D03BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BF78);
  }

  return result;
}

unint64_t sub_222D03D7C()
{
  result = qword_27D03BF80;
  if (!qword_27D03BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BF80);
  }

  return result;
}

uint64_t sub_222D03E08(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_222D03E64(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 17) = a1;
  return result;
}

uint64_t sub_222D03F04(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 18) = a1;
  return result;
}

uint64_t sub_222D03FA4(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 19) = a1;
  return result;
}

uint64_t sub_222D04044(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 20) = a1;
  return result;
}

uint64_t sub_222D040E4(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 21) = a1;
  return result;
}

uint64_t sub_222D04184(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 22) = a1;
  return result;
}

uint64_t sub_222D04224(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 23) = a1;
  return result;
}

uint64_t sub_222D042C4(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_222D04364(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 25) = a1;
  return result;
}

uint64_t sub_222D04404(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 26) = a1;
  return result;
}

uint64_t sub_222D044A4(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 27) = a1;
  return result;
}

uint64_t sub_222D04544(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 28) = a1;
  return result;
}

uint64_t sub_222D045E4(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 29) = a1;
  return result;
}

uint64_t sub_222D04684(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 30) = a1;
  return result;
}

uint64_t sub_222D04724(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 31) = a1;
  return result;
}

uint64_t sub_222D047C4(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_222D04820(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 33) = a1;
  return result;
}

uint64_t sub_222D048D4(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = a1[1];
  *(v1 + 5) = *a1;
  *(v1 + 7) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D0499C(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = a1[1];
  *(v1 + 9) = *a1;
  *(v1 + 11) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D04A64(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = a1[1];
  *(v1 + 13) = *a1;
  *(v1 + 15) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D04B2C(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  v7 = a1[1];
  *(v1 + 17) = *a1;
  *(v1 + 19) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D04BF4(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[21];
  v4 = v1[22];
  v5 = v1[23];
  v6 = v1[24];
  v7 = a1[1];
  *(v1 + 21) = *a1;
  *(v1 + 23) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D04CBC(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[27];
  v6 = v1[28];
  v7 = a1[1];
  *(v1 + 25) = *a1;
  *(v1 + 27) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D04D84(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = a1[1];
  *(v1 + 29) = *a1;
  *(v1 + 31) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D04E4C(_OWORD *a1)
{
  OUTLINED_FUNCTION_44_0();
  v3 = v1[33];
  v4 = v1[34];
  v5 = v1[35];
  v6 = v1[36];
  v7 = a1[1];
  *(v1 + 33) = *a1;
  *(v1 + 35) = v7;
  return sub_222CE2920(v3, v4);
}

double sub_222D04EDC(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_17_0(a1);
  v3(v6, v2);
  result = *v6;
  v5 = v6[1];
  *v1 = v6[0];
  v1[1] = v5;
  return result;
}

uint64_t sub_222D04F18(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  sub_222CE3060(v11[0], v6);
  return a5(v11);
}

uint64_t sub_222D04FA8(_OWORD *a1)
{
  OUTLINED_FUNCTION_44_0();
  v3 = v1[37];
  v4 = v1[38];
  v5 = v1[39];
  v6 = v1[40];
  v7 = a1[1];
  *(v1 + 37) = *a1;
  *(v1 + 39) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D05038(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_222D05090(v4);
}

uint64_t sub_222D05064()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 328);
}

uint64_t sub_222D05090(uint64_t a1)
{
  OUTLINED_FUNCTION_67();
  v3 = *(v1 + 328);
  *(v1 + 328) = a1;
}

uint64_t SirikitDeviceState.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  bzero((v0 + 40), 0x128uLL);
  return v0;
}

void sub_222D05158()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v1[5] = v2;
  v1[6] = v0;
  v1[7] = v3;
  v1[8] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D051CC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v1[9] = v2;
  v1[10] = v0;
  v1[11] = v3;
  v1[12] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D05240()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[15];
  v9 = v1[16];
  v1[13] = v2;
  v1[14] = v0;
  v1[15] = v3;
  v1[16] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D052B4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[17];
  v7 = v1[18];
  v8 = v1[19];
  v9 = v1[20];
  v1[17] = v2;
  v1[18] = v0;
  v1[19] = v3;
  v1[20] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D05328()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[21];
  v7 = v1[22];
  v8 = v1[23];
  v9 = v1[24];
  v1[21] = v2;
  v1[22] = v0;
  v1[23] = v3;
  v1[24] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D0539C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  v9 = v1[28];
  v1[25] = v2;
  v1[26] = v0;
  v1[27] = v3;
  v1[28] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D05410()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[29];
  v7 = v1[30];
  v8 = v1[31];
  v9 = v1[32];
  v1[29] = v0;
  v1[30] = v2;
  v1[31] = v3;
  v1[32] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D05468()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[29];
  v7 = v1[30];
  v8 = v1[31];
  v9 = v1[32];
  v1[29] = v2;
  v1[30] = v0;
  v1[31] = v3;
  v1[32] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D054DC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[33];
  v7 = v1[34];
  v8 = v1[35];
  v9 = v1[36];
  v1[33] = v2;
  v1[34] = v0;
  v1[35] = v3;
  v1[36] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D05550()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[37];
  v7 = v1[38];
  v8 = v1[39];
  v9 = v1[40];
  v1[37] = v2;
  v1[38] = v0;
  v1[39] = v3;
  v1[40] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D055C4(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = (*(*a1 + 128))();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_67();
  v4 = *(v2 + 328);
  *(v2 + 328) = v3;
}

uint64_t sub_222D05640()
{
  type metadata accessor for SirikitDeviceState();
  v0 = swift_allocObject();

  SirikitDeviceState.init(builder:)(v1);
  return v0;
}

void sub_222D057B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_105();
  v9 = a1 == v8 + 13 && v7 == a2;
  if (v9 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 24);
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
LABEL_8:
    *a3 = v10;
    return;
  }

  v11 = a1 == 0x6F50656D6F487369 && a2 == 0xE900000000000064;
  if (v11 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 25);
    goto LABEL_7;
  }

  v12 = a1 == 0x68637461577369 && a2 == 0xE700000000000000;
  if (v12 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 26);
    goto LABEL_7;
  }

  v13 = a1 == 0x63614D7369 && a2 == 0xE500000000000000;
  if (v13 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 27);
    goto LABEL_7;
  }

  v14 = a1 == 0x54656C7070417369 && a2 == 0xE900000000000056;
  if (v14 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 28);
    goto LABEL_7;
  }

  v15 = a1 == 0x656E6F68507369 && a2 == 0xE700000000000000;
  if (v15 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 29);
    goto LABEL_7;
  }

  v16 = a1 == 0x6461507369 && a2 == 0xE500000000000000;
  if (v16 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 30);
    goto LABEL_7;
  }

  v18 = a1 == OUTLINED_FUNCTION_32_0() && a2 == v17;
  if (v18 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 31);
    goto LABEL_7;
  }

  v19 = a1 == 0x616C507261437369 && a2 == 0xE900000000000079;
  if (v19 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 32);
    goto LABEL_7;
  }

  v20 = a1 == 0x446E447261437369 && a2 == 0xE800000000000000;
  if (v20 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 33);
    goto LABEL_7;
  }

  v21 = a1 == 0x696B656469537369 && a2 == 0xEA00000000006B63;
  if (v21 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 34);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_105();
  v23 = a1 == 0xD000000000000015 && v22 == a2;
  if (v23 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 35);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_0();
  v25 = v9 && v24 == a2;
  if (v25 || (OUTLINED_FUNCTION_30_0(), (OUTLINED_FUNCTION_49() & 1) != 0))
  {
    v10 = *(v3 + 36);
    goto LABEL_7;
  }

  v27 = a1 == (OUTLINED_FUNCTION_36_0() & 0xFFFFFFFFFFFFLL | 0x6E65000000000000) && a2 == v26;
  if (v27 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 37);
    goto LABEL_7;
  }

  v28 = a1 == 0x7246736579457369 && a2 == 0xEA00000000006565;
  if (v28 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 38);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_105();
  v30 = a1 == 0xD000000000000015 && v29 == a2;
  if (v30 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 39);
    goto LABEL_7;
  }

  v31 = a1 == 0x584F567369 && a2 == 0xE500000000000000;
  if (v31 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 40);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_105();
  v33 = a1 == 0xD000000000000012 && v32 == a2;
  if (v33 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v10 = *(v3 + 41);
    goto LABEL_7;
  }

  v35 = a1 == OUTLINED_FUNCTION_31_0() && a2 == v34;
  if (v35 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v36 = *(v3 + 56);
    if (v36)
    {
      v38 = *(v3 + 64);
      v37 = *(v3 + 72);
      v39 = *(v3 + 48);
LABEL_118:
      *(a3 + 24) = &type metadata for SpeakableString;
      v40 = swift_allocObject();
      *a3 = v40;
      v40[2] = v39;
      v40[3] = v36;
      v40[4] = v38;
      v40[5] = v37;

      return;
    }

    goto LABEL_236;
  }

  v42 = a1 == OUTLINED_FUNCTION_37_0() && a2 == v41;
  if (v42 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v36 = *(v3 + 88);
    if (v36)
    {
      v38 = *(v3 + 96);
      v37 = *(v3 + 104);
      v39 = *(v3 + 80);
      goto LABEL_118;
    }

    goto LABEL_236;
  }

  v44 = a1 == OUTLINED_FUNCTION_34_1() && a2 == v43;
  if (v44 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v36 = *(v3 + 120);
    if (v36)
    {
      v38 = *(v3 + 128);
      v37 = *(v3 + 136);
      v39 = *(v3 + 112);
      goto LABEL_118;
    }

    goto LABEL_236;
  }

  v45 = a1 == 0x6E65476563696F76 && a2 == 0xEB00000000726564;
  if (v45 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v36 = *(v3 + 152);
    if (v36)
    {
      v38 = *(v3 + 160);
      v37 = *(v3 + 168);
      v39 = *(v3 + 144);
      goto LABEL_118;
    }

    goto LABEL_236;
  }

  OUTLINED_FUNCTION_105();
  v47 = a1 == 0xD000000000000016 && v46 == a2;
  if (v47 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v36 = *(v3 + 184);
    if (v36)
    {
      v38 = *(v3 + 192);
      v37 = *(v3 + 200);
      v39 = *(v3 + 176);
      goto LABEL_118;
    }

    goto LABEL_236;
  }

  v48 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
  if (v48 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v36 = *(v3 + 216);
    if (v36)
    {
      v38 = *(v3 + 224);
      v37 = *(v3 + 232);
      v39 = *(v3 + 208);
      goto LABEL_118;
    }

    goto LABEL_236;
  }

  v50 = a1 == OUTLINED_FUNCTION_33_0() && a2 == v49;
  if (v50 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v36 = *(v3 + 248);
    if (v36)
    {
      v38 = *(v3 + 256);
      v37 = *(v3 + 264);
      v39 = *(v3 + 240);
      goto LABEL_118;
    }

    goto LABEL_236;
  }

  v51 = a1 == 0x61636F4C69726973 && a2 == 0xEA0000000000656CLL;
  if (v51 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v36 = *(v3 + 280);
    if (v36)
    {
      v38 = *(v3 + 288);
      v37 = *(v3 + 296);
      v39 = *(v3 + 272);
      goto LABEL_118;
    }

    goto LABEL_236;
  }

  OUTLINED_FUNCTION_105();
  v53 = a1 == 0xD000000000000010 && v52 == a2;
  if (v53 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v36 = *(v3 + 312);
    if (v36)
    {
      v38 = *(v3 + 320);
      v37 = *(v3 + 328);
      v39 = *(v3 + 304);
      goto LABEL_118;
    }

    goto LABEL_236;
  }

  v55 = a1 == OUTLINED_FUNCTION_35_0() && a2 == v54;
  if (!v55 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    OUTLINED_FUNCTION_40_1();
    v58 = a1 == (OUTLINED_FUNCTION_42_0() | 0x616C707300000000) && a2 == v57;
    if (v58 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v59 = sub_222D05F90();
    }

    else
    {
      OUTLINED_FUNCTION_38_0();
      v61 = a1 == (OUTLINED_FUNCTION_42_0() | 0x676F6C6100000000) && a2 == v60;
      if (v61 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        v59 = sub_222D05FBC();
      }

      else
      {
        v62 = a1 == OUTLINED_FUNCTION_41_0() && a2 == 0xEB00000000726573;
        if (v62 || (OUTLINED_FUNCTION_49() & 1) != 0)
        {
          v59 = sub_222D05FE8();
        }

        else
        {
          OUTLINED_FUNCTION_105();
          v64 = a1 == 0xD000000000000011 && v63 == a2;
          if (v64 || (OUTLINED_FUNCTION_49() & 1) != 0)
          {
            v59 = sub_222D06014();
          }

          else
          {
            OUTLINED_FUNCTION_105();
            v66 = a1 == 0xD000000000000013 && v65 == a2;
            if (v66 || (OUTLINED_FUNCTION_49() & 1) != 0)
            {
              v59 = sub_222D06044();
            }

            else
            {
              OUTLINED_FUNCTION_29_0();
              v68 = v9 && v67 == a2;
              if (v68 || (OUTLINED_FUNCTION_30_0(), (OUTLINED_FUNCTION_49() & 1) != 0))
              {
                v59 = sub_222D06074();
              }

              else
              {
                OUTLINED_FUNCTION_29_0();
                if (!v9 || v69 != a2)
                {
                  OUTLINED_FUNCTION_30_0();
                  if ((OUTLINED_FUNCTION_49() & 1) == 0)
                  {
                    v71 = a1 == 0x6E756F6E6F7270 && a2 == 0xE700000000000000;
                    if (v71 || (OUTLINED_FUNCTION_49() & 1) != 0)
                    {
                      sub_222CFE640();
                      if (v72)
                      {
                        v73 = v72;
                        *(a3 + 24) = type metadata accessor for DialogPronoun();
                        *a3 = v73;
                        return;
                      }
                    }

                    goto LABEL_236;
                  }
                }

                v59 = sub_222D060A0();
              }
            }
          }
        }
      }
    }

    *(a3 + 24) = MEMORY[0x277D839B0];
    v10 = v59 & 1;
    goto LABEL_8;
  }

  v56 = *(v3 + 336);
  if (!v56)
  {
LABEL_236:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  *(a3 + 24) = type metadata accessor for SirikitDeviceRestrictions();
  *a3 = v56;
}

uint64_t sub_222D05F90()
{
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_40_1();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D05FBC()
{
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_38_0();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D05FE8()
{
  OUTLINED_FUNCTION_41_0();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D06014()
{
  OUTLINED_FUNCTION_105();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D06044()
{
  OUTLINED_FUNCTION_105();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D06074()
{
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_30_0();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D060A0()
{
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_30_0();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D060E4()
{
  v0 = sub_222D5310C();

  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222D06160@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D060E4();
  *a2 = result;
  return result;
}

void sub_222D06190(void *a1@<X8>)
{
  sub_222CF1C08(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_222D061BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D06138();
  *a1 = result;
  return result;
}

uint64_t sub_222D061F0(uint64_t a1)
{
  v2 = sub_222CF1BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D0622C(uint64_t a1)
{
  v2 = sub_222CF1BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SirikitDeviceState.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_27_0();
  v2 = swift_allocObject();
  SirikitDeviceState.init(from:)(a1);
  return v2;
}

{
  v4 = sub_222D5246C();
  v5 = OUTLINED_FUNCTION_3_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_17();
  sub_222CE3120(a1, v13);
  sub_222D5245C();
  OUTLINED_FUNCTION_1_17(0, v13, v1);
  v8 = OUTLINED_FUNCTION_5_13();
  v9(v8);
  sub_222CDD130(v13, &qword_27D03C438, &unk_222D56DE0);
  OUTLINED_FUNCTION_2_17();
  v11 = v10(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t SirikitDeviceState.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BF90, &qword_222D54298);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_113(v4);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  *(v1 + 16) = 0;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222CF1BB4();
  sub_222D5318C();
  if (v2)
  {

    goto LABEL_4;
  }

  LOBYTE(v44) = 0;
  *(v1 + 24) = sub_222D52F5C() & 1;
  *(v1 + 25) = OUTLINED_FUNCTION_3_4(1) & 1;
  *(v1 + 26) = OUTLINED_FUNCTION_3_4(2) & 1;
  *(v1 + 27) = OUTLINED_FUNCTION_3_4(3) & 1;
  *(v1 + 28) = OUTLINED_FUNCTION_3_4(4) & 1;
  *(v1 + 29) = OUTLINED_FUNCTION_3_4(5) & 1;
  *(v1 + 30) = OUTLINED_FUNCTION_3_4(6) & 1;
  *(v1 + 31) = OUTLINED_FUNCTION_3_4(7) & 1;
  *(v1 + 32) = OUTLINED_FUNCTION_3_4(8) & 1;
  *(v1 + 33) = OUTLINED_FUNCTION_3_4(9) & 1;
  *(v1 + 34) = OUTLINED_FUNCTION_3_4(10) & 1;
  *(v1 + 35) = OUTLINED_FUNCTION_3_4(11) & 1;
  *(v1 + 36) = OUTLINED_FUNCTION_3_4(12) & 1;
  *(v1 + 37) = OUTLINED_FUNCTION_3_4(13) & 1;
  *(v1 + 38) = OUTLINED_FUNCTION_3_4(14) & 1;
  *(v1 + 39) = OUTLINED_FUNCTION_3_4(15) & 1;
  *(v1 + 40) = OUTLINED_FUNCTION_3_4(16) & 1;
  *(v1 + 41) = OUTLINED_FUNCTION_3_4(17) & 1;
  v47 = 18;
  v12 = sub_222D0099C();
  OUTLINED_FUNCTION_1_5();
  sub_222D52F1C();
  v14 = v45;
  *(v1 + 48) = v44;
  *(v1 + 64) = v14;
  v47 = 19;
  OUTLINED_FUNCTION_1_5();
  sub_222D52F1C();
  v43 = 0;
  v15 = v45;
  *(v1 + 80) = v44;
  *(v1 + 96) = v15;
  v47 = 20;
  OUTLINED_FUNCTION_1_5();
  v16 = v43;
  sub_222D52F1C();
  if (!v16)
  {
    v19 = v45;
    *(v1 + 112) = v44;
    *(v1 + 128) = v19;
    v47 = 21;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v20 = v45;
    *(v1 + 144) = v44;
    *(v1 + 160) = v20;
    v47 = 22;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v21 = v45;
    *(v1 + 176) = v44;
    *(v1 + 192) = v21;
    v47 = 23;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v22 = v45;
    *(v1 + 208) = v44;
    *(v1 + 224) = v22;
    v47 = 24;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v23 = v45;
    *(v1 + 240) = v44;
    *(v1 + 256) = v23;
    v47 = 25;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v24 = v45;
    *(v1 + 272) = v44;
    *(v1 + 288) = v24;
    v47 = 26;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v25 = v45;
    *(v1 + 304) = v44;
    *(v1 + 320) = v25;
    type metadata accessor for SirikitDeviceRestrictions();
    v47 = 27;
    OUTLINED_FUNCTION_21_0();
    sub_222CF2384(v26, 255, v27);
    sub_222D52F1C();
    v40 = OUTLINED_FUNCTION_2();
    v41(v40);
    *(v1 + 336) = v44;
    goto LABEL_5;
  }

  v17 = OUTLINED_FUNCTION_2();
  v18(v17);
  OUTLINED_FUNCTION_8_1();

  v28 = *(v1 + 64);
  v29 = *(v1 + 72);
  sub_222CE2920(*(v1 + 48), *(v1 + 56));
  if (!v43)
  {
    v32 = *(v1 + 96);
    v33 = *(v1 + 104);
    sub_222CE2920(*(v1 + 80), *(v1 + 88));
  }

  if (!v12)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_12:
    v30 = *(v1 + 256);
    v31 = *(v1 + 264);
    sub_222CE2920(*(v1 + 240), *(v1 + 248));
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_13:
    if (v46)
    {
      goto LABEL_20;
    }

    goto LABEL_4;
  }

  v34 = *(v1 + 224);
  v35 = *(v1 + 232);
  sub_222CE2920(*(v1 + 208), *(v1 + 216));
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_18:
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_19:
  v36 = *(v1 + 288);
  v37 = *(v1 + 296);
  sub_222CE2920(*(v1 + 272), *(v1 + 280));
  if (v46)
  {
LABEL_20:
    v38 = *(v1 + 320);
    v39 = *(v1 + 328);
    sub_222CE2920(*(v1 + 304), *(v1 + 312));
  }

LABEL_4:
  type metadata accessor for SirikitDeviceState();
  swift_deallocPartialClassInstance();
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D06A44(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222CF2384(&qword_280D3B680, a2, type metadata accessor for SirikitDeviceState);
  result = sub_222CF2384(qword_280D3B688, v3, type metadata accessor for SirikitDeviceState);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D06AC8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 448))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of SirikitDeviceState.Builder.withRestrictions(_:)()
{
  return (*(*v0 + 1272))();
}

{
  return (*(*v0 + 1280))();
}

unint64_t sub_222D08350()
{
  result = qword_27D03BFA0;
  if (!qword_27D03BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BFA0);
  }

  return result;
}

unint64_t sub_222D083A8()
{
  result = qword_280D3BBE0;
  if (!qword_280D3BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3BBE0);
  }

  return result;
}

unint64_t sub_222D08400()
{
  result = qword_280D3BBE8;
  if (!qword_280D3BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3BBE8);
  }

  return result;
}

uint64_t sub_222D08454@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_222CE3060(v3, v4);
}

uint64_t sub_222D08498()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_67();
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v0[1];
  *(v1 + 1) = *v0;
  *(v1 + 2) = v6;
  return sub_222CE2920(v2, v3);
}

uint64_t (*sub_222D084D8())()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_87();
  return j_j__swift_endAccess;
}

uint64_t sub_222D08518@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_222CE3060(v3, v4);
}

uint64_t sub_222D0855C(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = a1[1];
  *(v1 + 3) = *a1;
  *(v1 + 4) = v7;
  return sub_222CE2920(v3, v4);
}

double sub_222D085A0@<D0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  a2(v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  a3[1] = v6;
  return result;
}

uint64_t sub_222D085E0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  sub_222CE3060(v11[0], v6);
  return a5(v11);
}

uint64_t sub_222D08634@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_222CE3060(v3, v4);
}

uint64_t sub_222D08678(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = a1[1];
  *(v1 + 5) = *a1;
  *(v1 + 6) = v7;
  return sub_222CE2920(v3, v4);
}

double DialogPersonHandle.Builder.__allocating_init()()
{
  OUTLINED_FUNCTION_16_2();
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  return result;
}

uint64_t DialogPersonHandle.Builder.__allocating_init(type:value:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_16_2();
  v4 = swift_allocObject();
  DialogPersonHandle.Builder.init(type:value:)(a1, a2);
  return v4;
}

uint64_t DialogPersonHandle.Builder.init(type:value:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *a2;
  v16 = *(a1 + 1);
  v17 = *(a2 + 1);
  v6 = a2[3];
  *(v2 + 32) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = 0u;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  *(v2 + 16) = v3;
  *(v2 + 24) = v16;
  *(v2 + 40) = v4;
  sub_222CE2920(v7, v8);
  swift_beginAccess();
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  *(v2 + 48) = v5;
  *(v2 + 56) = v17;
  *(v2 + 72) = v6;
  sub_222CE2920(v11, v12);
  return v2;
}

void sub_222D08858()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    v3 = v2;
    v4 = v0;
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = v3;
  v1[5] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D088D0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    v3 = v2;
    v4 = v0;
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = v3;
  v1[9] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D08948()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    v3 = v2;
    v4 = v0;
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = v3;
  v1[13] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D089DC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_222D08A0C();
}

void sub_222D08A0C()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_67();
  v2 = *(v1 + 16);
  *(v1 + 16) = v0;
}

uint64_t (*sub_222D08A44())()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_87();
  return j__swift_endAccess;
}

double sub_222D08AA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (!v5 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    v14 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v14 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v8 = v3[8];
      if (v8)
      {
        v10 = v3[9];
        v9 = v3[10];
        v11 = v3[7];
        goto LABEL_8;
      }
    }

    else
    {
      v15 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
      if (v15 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        v8 = v3[12];
        if (v8)
        {
          v10 = v3[13];
          v9 = v3[14];
          v11 = v3[11];
          goto LABEL_8;
        }
      }

      else
      {
        v16 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
        if (v16 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x657474616D726F66 ? (v17 = a2 == 0xEE006C6562614C64) : (v17 = 0), v17 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x657474616D726F66 ? (v18 = a2 == 0xED00006570795464) : (v18 = 0), v18 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0xD000000000000015 ? (v20 = 0x8000000222D5A5A0 == a2) : (v20 = 0), v20 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x657474616D726F66 ? (v21 = a2 == 0xEE0065756C615664) : (v21 = 0), v21 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x6D754E656E6F6870 ? (v22 = a2 == 0xEB00000000726562) : (v22 = 0), v22 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x6464416C69616D65 ? (v23 = a2 == 0xEC00000073736572) : (v23 = 0), v23 || (OUTLINED_FUNCTION_49() & 1) != 0)))))))
        {
          sub_222CF8D24();
          if (v25)
          {
            *(a3 + 24) = &type metadata for SpeakableString;
            v19 = swift_allocObject();
            *a3 = v19;
            v19[2] = v24;
            v19[3] = v25;
            v19[4] = v26;
            v19[5] = v27;
            return result;
          }
        }
      }
    }

LABEL_65:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_65;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
LABEL_8:
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

  return result;
}

uint64_t sub_222D08EC8()
{
  v0 = sub_222D52ECC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222D08F14(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x6C6562616CLL;
}

uint64_t sub_222D08F80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D08EC8();
  *a2 = result;
  return result;
}

uint64_t sub_222D08FB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D08F14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D08FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D08EC8();
  *a1 = result;
  return result;
}

uint64_t sub_222D0900C(uint64_t a1)
{
  v2 = sub_222D09224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D09048(uint64_t a1)
{
  v2 = sub_222D09224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222D09084(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFB0, &qword_222D546F0);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D09224();
  sub_222D531AC();
  v14 = v3[4];
  v15 = v3[5];
  v16 = v3[6];
  v26 = v3[3];
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v25 = 0;
  sub_222CE3060(v26, v14);
  sub_222CF2084();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_17_1();
  if (!v2)
  {
    v17 = v3[8];
    v18 = v3[9];
    v19 = v3[10];
    v26 = v3[7];
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v25 = 1;
    sub_222CE3060(v26, v17);
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_17_1();
    v20 = v3[12];
    v21 = v3[13];
    v22 = v3[14];
    v26 = v3[11];
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v25 = 2;
    sub_222CE3060(v26, v20);
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_17_1();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D09224()
{
  result = qword_280D3D900;
  if (!qword_280D3D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3D900);
  }

  return result;
}

uint64_t DialogPersonHandle.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_15_0();
  v2 = swift_allocObject();
  DialogPersonHandle.init(from:)(a1);
  return v2;
}

uint64_t DialogPersonHandle.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFB8, &qword_222D546F8);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D09224();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogPersonHandle();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C();
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    *(v1 + 24) = v12;
    *(v1 + 40) = v13;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    *(v1 + 56) = v12;
    *(v1 + 72) = v13;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    *(v1 + 88) = v12;
    *(v1 + 104) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D09584(uint64_t a1)
{
  *(a1 + 8) = sub_222D095EC(&qword_27D03BFC0);
  result = sub_222D095EC(qword_280D3D7B0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D095EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogPersonHandle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D0962C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogPersonHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D09BD0()
{
  result = qword_27D03BFC8;
  if (!qword_27D03BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BFC8);
  }

  return result;
}

unint64_t sub_222D09C28()
{
  result = qword_280D3D8F0;
  if (!qword_280D3D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3D8F0);
  }

  return result;
}

unint64_t sub_222D09C80()
{
  result = qword_280D3D8F8;
  if (!qword_280D3D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3D8F8);
  }

  return result;
}

uint64_t DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:useRelationshipName:)(void *a1, uint64_t a2, char a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFE8, &qword_222D54960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - v11;
  type metadata accessor for DialogPerson.Builder();
  swift_allocObject();
  v13 = DialogPerson.Builder.init()();
  if ((sub_222CEAB04() & 1) == 0)
  {
    v14 = sub_222CEAD08(a1);
    if (v15)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v55 = v14;
        v56 = v15;
        v57 = v14;
        v58 = v15;
        OUTLINED_FUNCTION_8_2();
        v18 = *(v17 + 600);

        v18(&v55);

        sub_222CE2920(v55, v56);
      }

      else
      {
      }
    }
  }

  if ([a1 isMe])
  {
    goto LABEL_11;
  }

  v19 = [a1 relationship];
  if (v19)
  {

LABEL_11:
    a3 = 1;
    v20 = 1;
    goto LABEL_12;
  }

  v20 = 0;
LABEL_12:
  OUTLINED_FUNCTION_8_2();
  (*(v21 + 648))(a3 & 1);

  (*(*v13 + 656))(v20);

  v22 = [a1 relationship];
  if (v22)
  {
    v23 = v22;
    v55 = sub_222D5292C();
    v56 = v24;
    v57 = v55;
    v58 = v24;
    OUTLINED_FUNCTION_8_2();
    v26 = *(v25 + 696);

    v26(&v55);

    sub_222CE2920(v55, v56);
  }

  OUTLINED_FUNCTION_8_2();
  (*(v27 + 712))(a4 & 1);

  static PhonemeDataParser.parse(from:)(a1, &v55);
  if (v55)
  {
    v53.n128_u64[0] = v55;
    v53.n128_u32[2] = v56;
    PhonemeData.asNameComponents(locale:)(a2, v12);
  }

  else
  {
    v28 = sub_222D5206C();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v28);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_6(0, v29);

  v53 = OUTLINED_FUNCTION_7_3();
  v54 = v30;
  v31 = *(*v13 + 536);
  v32 = OUTLINED_FUNCTION_4_3();
  v33(v32);

  OUTLINED_FUNCTION_9_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_6(1, v34);

  v53 = OUTLINED_FUNCTION_7_3();
  v54 = v35;
  v36 = *(*v13 + 552);
  v37 = OUTLINED_FUNCTION_4_3();
  v38(v37);

  OUTLINED_FUNCTION_9_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_6(2, v39);

  v53 = OUTLINED_FUNCTION_7_3();
  v54 = v40;
  v41 = *(*v13 + 568);
  v42 = OUTLINED_FUNCTION_4_3();
  v43(v42);

  OUTLINED_FUNCTION_9_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_6(3, v44);

  v53 = OUTLINED_FUNCTION_7_3();
  v54 = v45;
  v46 = *(*v13 + 584);
  v47 = OUTLINED_FUNCTION_4_3();
  v48(v47);

  OUTLINED_FUNCTION_9_2();
  type metadata accessor for DialogPersonHandle();
  v49 = DialogPersonHandle.__allocating_init(handle:)([a1 personHandle]);
  (*(*v13 + 664))(v49);

  v50 = (*(v4 + 240))(v13);

  v51 = sub_222D521AC();
  (*(*(v51 - 8) + 8))(a2, v51);
  sub_222D0B1CC(v12);
  return v50;
}

uint64_t sub_222D0A25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v64 = a2;
  v65 = a4;
  v62 = a3;
  v63 = a1;
  v6 = sub_222D5206C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFE8, &qword_222D54960);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v61 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v56 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v56 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v56 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  v29 = [v5 nameComponents];
  if (v29)
  {
    v30 = v29;
    sub_222D5202C();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  __swift_storeEnumTagSinglePayload(v26, v31, 1, v6);
  sub_222D0B234(v26, v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v6))
  {
    result = sub_222D0B1CC(v28);
LABEL_6:
    v33 = v65;
    *v65 = 0u;
    v33[1] = 0u;
    return result;
  }

  v56 = v7[2];
  v56(v10, v28, v6);
  sub_222D0B1CC(v28);
  swift_getAtKeyPath();
  v57 = v7[1];
  v58 = v7 + 1;
  v57(v10, v6);
  v60 = sub_222D1523C(v66, v67);
  v35 = v34;

  v59 = v35;
  if (!v35)
  {
    goto LABEL_6;
  }

  v36 = [v5 nameComponents];
  if (v36)
  {
    v37 = v36;
    sub_222D5202C();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = 0xE900000000000065;
  __swift_storeEnumTagSinglePayload(v20, v38, 1, v6);
  sub_222D0B234(v20, v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v6))
  {
    goto LABEL_14;
  }

  sub_222D5201C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v6))
  {
    sub_222D0B1CC(v17);
LABEL_14:
    sub_222D0B1CC(v23);
    goto LABEL_15;
  }

  v56(v10, v17, v6);
  sub_222D0B1CC(v17);
  sub_222D0B1CC(v23);
  swift_getAtKeyPath();
  v57(v10, v6);
  v41 = sub_222D1523C(v66, v67);
  v43 = v53;

  if (v43)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_222D53980;
    v45 = 0x6D614E6E65766967;
    v46 = v44;
    switch(v63)
    {
      case 1:
        v54 = 0x656C6464696DLL;
        goto LABEL_39;
      case 2:
        v54 = 0x796C696D6166;
LABEL_39:
        v45 = v54 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
        v39 = 0xEA0000000000656DLL;
        break;
      case 3:
        v39 = 0xE800000000000000;
        v45 = 0x656D616E6B63696ELL;
        break;
      default:
        goto LABEL_41;
    }

    goto LABEL_41;
  }

LABEL_15:
  v40 = v61;
  sub_222D0B2A4(v62, v61);
  if (__swift_getEnumTagSinglePayload(v40, 1, v6) == 1)
  {
    sub_222D0B1CC(v40);
LABEL_22:
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_222D53980;
    v49 = 0x6D614E6E65766967;
    v50 = v48;
    switch(v63)
    {
      case 1:
        v51 = 0x656C6464696DLL;
        goto LABEL_27;
      case 2:
        v51 = 0x796C696D6166;
LABEL_27:
        v49 = v51 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
        v39 = 0xEA0000000000656DLL;
        break;
      case 3:
        v39 = 0xE800000000000000;
        v49 = 0x656D616E6B63696ELL;
        break;
      default:
        break;
    }

    *(v48 + 56) = MEMORY[0x277D837D0];
    *(v48 + 64) = sub_222CDDCB0();
    *(v50 + 32) = v49;
    *(v50 + 40) = v39;
    sub_222D5280C();

    v52 = v60;
    v41 = v60;
    v43 = result;
    goto LABEL_42;
  }

  swift_getAtKeyPath();
  v41 = sub_222D1523C(v66, v67);
  v43 = v42;

  v57(v40, v6);
  if (!v43)
  {
    goto LABEL_22;
  }

  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  sub_222D52C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_222D53980;
  v45 = 0x6D614E6E65766967;
  v46 = v44;
  switch(v63)
  {
    case 1:
      v47 = 0x656C6464696DLL;
      goto LABEL_36;
    case 2:
      v47 = 0x796C696D6166;
LABEL_36:
      v45 = v47 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      v39 = 0xEA0000000000656DLL;
      break;
    case 3:
      v39 = 0xE800000000000000;
      v45 = 0x656D616E6B63696ELL;
      break;
    default:
      break;
  }

LABEL_41:
  *(v44 + 56) = MEMORY[0x277D837D0];
  v46[8] = sub_222CDDCB0();
  v46[4] = v45;
  v46[5] = v39;
  sub_222D5280C();

  result = v59;
  v52 = v60;
LABEL_42:
  v55 = v65;
  *v65 = v52;
  v55[1] = result;
  v55[2] = v41;
  v55[3] = v43;
  return result;
}

uint64_t sub_222D0AA44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t sub_222D0AAA4()
{
  v0 = sub_222D51FBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v20 - v16;
  __swift_allocate_value_buffer(v15, qword_27D03BFD0);
  __swift_project_value_buffer(v0, qword_27D03BFD0);
  sub_222D51F4C();
  sub_222D51F5C();
  sub_222D51F8C();
  v18 = *(v1 + 8);
  v18(v5, v0);
  v18(v8, v0);
  sub_222D51F9C();
  sub_222D51F8C();
  v18(v8, v0);
  v18(v11, v0);
  sub_222D51F6C();
  sub_222D51F8C();
  v18(v11, v0);
  v18(v14, v0);
  sub_222D51F7C();
  sub_222D51F8C();
  v18(v14, v0);
  return (v18)(v17, v0);
}

uint64_t sub_222D0AD14(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v17 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_222D52DAC();
        v10 = v9;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v19;
          v7 = v18 + v5;
          v8 = *(v18 + v5);
          if (*(v18 + v5) < 0)
          {
            switch(__clz(v8 ^ 0xFF))
            {
              case 0x1Au:
LABEL_21:
                v13 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
                v10 = 2;
                break;
              case 0x1Bu:
LABEL_22:
                v14 = ((v8 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3Fu;
                v10 = 3;
                break;
              case 0x1Cu:
LABEL_23:
                v15 = ((v8 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3Fu;
                v10 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v6 = v17;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v6 = sub_222D52E2C();
          }

          v7 = (v6 + v5);
          v8 = *(v6 + v5);
          if (*(v6 + v5) < 0)
          {
            switch(__clz(v8 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_21;
              case 0x1Bu:
                goto LABEL_22;
              case 0x1Cu:
                goto LABEL_23;
              default:
                break;
            }
          }
        }

LABEL_14:
        v10 = 1;
      }

LABEL_15:
      if (qword_27D03BCE0 != -1)
      {
        swift_once();
      }

      v11 = sub_222D51FBC();
      __swift_project_value_buffer(v11, qword_27D03BFD0);
      v12 = sub_222D51FAC();
      if (v12)
      {
        v5 += v10;
        if (v5 < v2)
        {
          continue;
        }
      }

      return v12 & 1;
    }
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_222D0AF3C(uint64_t a1, unint64_t a2)
{
  v31 = sub_222D51FBC();
  v5 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = a1;
    v25[1] = v2;
    v11 = 0;
    v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v27 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = (v6 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_222D52DAC();
        v18 = v17;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28[0] = v10;
          v28[1] = v27;
          v14 = *(v28 + v11);
          if (v14 < 0)
          {
            OUTLINED_FUNCTION_2_4();
            switch(v20)
            {
              case 1:
LABEL_20:
                v21 = v15[1] & 0x3F | ((v14 & 0x1F) << 6);
                v18 = 2;
                break;
              case 2:
LABEL_21:
                v22 = ((v14 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3Fu;
                v18 = 3;
                break;
              case 3:
LABEL_22:
                v23 = ((v14 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3Fu;
                v18 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v13 = v26;
          if ((v10 & 0x1000000000000000) == 0)
          {
            v13 = sub_222D52E2C();
          }

          v14 = *(v13 + v11);
          if (v14 < 0)
          {
            OUTLINED_FUNCTION_2_4();
            switch(v16)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v18 = 1;
      }

LABEL_15:
      sub_222D51F5C();
      v19 = sub_222D51FAC();
      (*v12)(v8, v31);
      if (v19)
      {
        sub_222D529BC();
      }

      v11 += v18;
      if (v11 >= v9)
      {

        return v29;
      }
    }
  }

  return 0;
}

uint64_t sub_222D0B1CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFE8, &qword_222D54960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222D0B234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFE8, &qword_222D54960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222D0B2A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFE8, &qword_222D54960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_222D0B314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C018, &qword_222D54A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222D53970;
  v9 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_222D5292C();
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v11 = *MEMORY[0x277CCA470];
  *(inited + 64) = sub_222D5292C();
  *(inited + 72) = v12;
  *(inited + 80) = a3;
  *(inited + 88) = a4;

  v13 = sub_222D528BC();
  v14 = sub_222CDFAEC(v13);

  v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_222D3D850(0xD00000000000001FLL, 0x8000000222D5A270, 0, v14);
}

uint64_t sub_222D0B42C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v236 = a4;
  v222 = sub_222D5248C();
  v8 = OUTLINED_FUNCTION_113(v222);
  v221 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v223 = v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  v14 = OUTLINED_FUNCTION_34(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v224 = v217 - v17;
  v252 = sub_222D5244C();
  v18 = OUTLINED_FUNCTION_113(v252);
  v242 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_1();
  v251 = v22;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v23);
  v250 = v217 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C010, &unk_222D54A50);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24_1();
  v258 = v31;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_24_1();
  v257 = v33;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_1();
  v249 = v35;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_1();
  v256 = v37;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v38);
  v255 = v217 - v39;
  v259 = sub_222D523CC();
  v40 = OUTLINED_FUNCTION_113(v259);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_24_1();
  v254 = v46;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v47);
  v253 = v217 - v48;
  v235 = sub_222D5284C();
  v49 = OUTLINED_FUNCTION_113(v235);
  v234 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  v54 = v217 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_47_0();
  v55 = qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_222D53980;
  *(v56 + 56) = MEMORY[0x277D837D0];
  *(v56 + 64) = sub_222CDDCB0();
  v225 = a2;
  *(v56 + 32) = a2;
  *(v56 + 40) = a3;

  v233 = v55;
  OUTLINED_FUNCTION_35_1();
  *(v57 - 256) = v54;
  sub_222D5281C();

  if (a1 && (v58 = sub_222CE4BD8(a1, &selRef_status), v59))
  {
    v60 = v58;
    v61 = v59;
    if (v58 == v4 && v59 == 0xE700000000000000)
    {

LABEL_14:
      v218 = a1;
      v63 = sub_222CE4C38(a1);
      v64 = MEMORY[0x277D84F90];
      if (v63)
      {
        v64 = v63;
      }

      goto LABEL_23;
    }
  }

  else
  {

    v60 = 0;
    v61 = 0xE000000000000000;
  }

  if ((sub_222D5305C() & 1) == 0)
  {
    sub_222D52C5C();
    OUTLINED_FUNCTION_35_1();
    v66 = *(v65 - 256);
    sub_222D5282C();
    if (a1 && (v67 = sub_222CE4BD8(a1, &selRef_error), v68))
    {
      v69 = v68;
    }

    else
    {

      v67 = 0;
      v69 = 0xE000000000000000;
    }

    v70 = sub_222D0B314(v67, v69, v60, v61);

    (*(v234 + 8))(v66, v235);
    *v236 = v70;
    return swift_storeEnumTagMultiPayload();
  }

  if (a1)
  {
    goto LABEL_14;
  }

  v218 = 0;
  v64 = MEMORY[0x277D84F90];
LABEL_23:
  v217[2] = a3;
  v219 = v13;
  v72 = *(v64 + 16);
  v217[1] = v64;
  if (v72)
  {
    v73 = (v64 + 32);
    v227 = "Engine17CATResultProvider";
    v226 = "unfilteredContent";
    v220 = "unfilteredCaption";
    v232 = (v42 + 16);
    v231 = (v242 + 16);
    v230 = v242 + 8;
    v229 = (v42 + 8);
    v74 = MEMORY[0x277D84F90];
    v228 = v242 + 32;
    do
    {
      v75 = *v73;
      if (*(*v73 + 16))
      {
        v76 = *v73;

        v77 = OUTLINED_FUNCTION_23_2();
        v79 = sub_222CE1050(v77, v78);
        if (v80)
        {
          OUTLINED_FUNCTION_19_1(v79);
          OUTLINED_FUNCTION_7_4();
          if (OUTLINED_FUNCTION_41_1())
          {
            if (v260 == 0x676F6C616964 && v261 == 0xE600000000000000)
            {

LABEL_37:
              if (*(v75 + 16) && (v83 = sub_222CE1050(25705, 0xE200000000000000), (v84 & 1) != 0) && (OUTLINED_FUNCTION_19_1(v83), OUTLINED_FUNCTION_7_4(), (OUTLINED_FUNCTION_41_1() & 1) != 0))
              {
                v85 = v261;
                v246 = v260;
              }

              else
              {
                v246 = 0;
                v85 = 0xE000000000000000;
              }

              v245 = v85;
              if (*(v75 + 16) && (v86 = OUTLINED_FUNCTION_11_2(), v88 = sub_222CE1050(v86, v87), (v89 & 1) != 0) && (OUTLINED_FUNCTION_19_1(v88), OUTLINED_FUNCTION_7_4(), swift_dynamicCast()))
              {
                v248 = v260;
              }

              else
              {
                v248 = 0;
              }

              if (*(v75 + 16) && (v90 = OUTLINED_FUNCTION_10_1(), v92 = sub_222CE1050(v90, v91), (v93 & 1) != 0) && (OUTLINED_FUNCTION_19_1(v92), OUTLINED_FUNCTION_7_4(), swift_dynamicCast()))
              {
                v244 = v260;
              }

              else
              {
                v244 = 0;
              }

              if (*(v75 + 16) && (v94 = OUTLINED_FUNCTION_17_2(), v96 = sub_222CE1050(v94, v95), (v97 & 1) != 0) && (OUTLINED_FUNCTION_19_1(v96), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50), OUTLINED_FUNCTION_7_4(), swift_dynamicCast()))
              {
                v98 = v260;
              }

              else
              {
                v98 = MEMORY[0x277D84F98];
              }

              if (*(v98 + 16) && (v99 = OUTLINED_FUNCTION_2_5(), v101 = sub_222CE1050(v99, v100), (v102 & 1) != 0) && (OUTLINED_FUNCTION_30_1(v101, *(v98 + 56)), OUTLINED_FUNCTION_7_4(), (OUTLINED_FUNCTION_41_1() & 1) != 0))
              {
                v243 = v260;
              }

              else
              {
                v243 = 0;
              }

              if (*(v98 + 16))
              {
                OUTLINED_FUNCTION_3_5();
                OUTLINED_FUNCTION_12_0();
                v105 = sub_222CE1050(v103, v104);
                if (v106)
                {
                  OUTLINED_FUNCTION_30_1(v105, *(v98 + 56));
                  OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_41_1();
                }
              }

              v247 = v74;
              if (v248)
              {
              }

              else
              {
                if (*(v98 + 16))
                {
                  v107 = OUTLINED_FUNCTION_1_7();
                  v109 = sub_222CE1050(v107, v108);
                  if (v110)
                  {
                    OUTLINED_FUNCTION_30_1(v109, *(v98 + 56));
                    OUTLINED_FUNCTION_7_4();
                    OUTLINED_FUNCTION_41_1();
                  }
                }

                if (*(v98 + 16) && (v111 = OUTLINED_FUNCTION_0_3(), v113 = sub_222CE1050(v111, v112), (v114 & 1) != 0))
                {
                  OUTLINED_FUNCTION_30_1(v113, *(v98 + 56));
                }

                else
                {
                  OUTLINED_FUNCTION_37_1();
                }

                if (v263)
                {
                  OUTLINED_FUNCTION_7_4();
                  swift_dynamicCast();
                }

                else
                {
                  sub_222CDC59C(v262, &qword_27D03BDA8, &unk_222D55070);
                }
              }

              sub_222D523AC();
              sub_222D523AC();
              OUTLINED_FUNCTION_42_1();
              v115 = v259;
              __swift_storeEnumTagSinglePayload(v116, v117, v118, v259);
              OUTLINED_FUNCTION_42_1();
              __swift_storeEnumTagSinglePayload(v119, v120, v121, v115);
              if (*(v75 + 16) && (v122 = OUTLINED_FUNCTION_6_4(), v124 = sub_222CE1050(v122, v123), (v125 & 1) != 0))
              {
                OUTLINED_FUNCTION_19_1(v124);
                sub_222CDC59C(v262, &qword_27D03BDA8, &unk_222D55070);
                v126 = OUTLINED_FUNCTION_6_4();
                sub_222CE5C64(v126, v127, v75, v128);
                if (v263)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
                  OUTLINED_FUNCTION_15_1();
                  if (swift_dynamicCast())
                  {
                    v129 = v260;
                  }

                  else
                  {
                    v129 = MEMORY[0x277D84F98];
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                  v129 = MEMORY[0x277D84F98];
                }

                v130 = OUTLINED_FUNCTION_2_5();
                sub_222CE5C64(v130, v131, v129, v132);
                if (v263)
                {
                  OUTLINED_FUNCTION_15_1();
                  swift_dynamicCast();
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                OUTLINED_FUNCTION_3_5();
                OUTLINED_FUNCTION_12_0();
                sub_222CE5C64(v133, v134, v129, v135);
                if (v263)
                {
                  OUTLINED_FUNCTION_15_1();
                  if (swift_dynamicCast())
                  {
                    v136 = v261;
                    v243 = v260;
                    goto LABEL_93;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                v243 = 0;
                v136 = 0xE000000000000000;
LABEL_93:
                v217[0] = v136;
                if (v248)
                {
                }

                else
                {
                  v137 = OUTLINED_FUNCTION_1_7();
                  sub_222CE5C64(v137, v138, v129, v139);
                  if (v263)
                  {
                    OUTLINED_FUNCTION_15_1();
                    swift_dynamicCast();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14_1();
                  }

                  v140 = OUTLINED_FUNCTION_0_3();
                  sub_222CE5C64(v140, v141, v129, v142);

                  if (v263)
                  {
                    OUTLINED_FUNCTION_15_1();
                    swift_dynamicCast();
                  }

                  else
                  {
                    sub_222CDC59C(v262, &qword_27D03BDA8, &unk_222D55070);
                  }
                }

                v143 = v249;
                sub_222D523AC();
                v144 = v255;
                sub_222CDC59C(v255, &qword_27D03C010, &unk_222D54A50);
                v145 = OUTLINED_FUNCTION_18_2();
                v146 = v259;
                __swift_storeEnumTagSinglePayload(v145, v147, v148, v259);
                sub_222D0D958(v143, v144, &qword_27D03C010, &unk_222D54A50);
                sub_222D523AC();
                sub_222CDC59C(v256, &qword_27D03C010, &unk_222D54A50);
                v149 = OUTLINED_FUNCTION_18_2();
                __swift_storeEnumTagSinglePayload(v149, v150, v151, v146);
                v152 = OUTLINED_FUNCTION_45();
                sub_222D0D958(v152, v153, &qword_27D03C010, &unk_222D54A50);
              }

              else
              {
                OUTLINED_FUNCTION_37_1();
                sub_222CDC59C(v262, &qword_27D03BDA8, &unk_222D55070);
              }

              OUTLINED_FUNCTION_42_1();
              __swift_storeEnumTagSinglePayload(v154, v155, v156, v259);
              if (*(v75 + 16) && (v157 = OUTLINED_FUNCTION_38_1(&v258), (v158 & 1) != 0))
              {
                OUTLINED_FUNCTION_19_1(v157);
                OUTLINED_FUNCTION_14_1();
                v159 = OUTLINED_FUNCTION_9_3();
                sub_222CE5C64(v159, v160, v75, v161);
                if (v263)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
                  OUTLINED_FUNCTION_7_4();
                  if (swift_dynamicCast())
                  {
                    v162 = v260;
                    goto LABEL_110;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                v162 = MEMORY[0x277D84F98];
LABEL_110:
                v163 = OUTLINED_FUNCTION_2_5();
                sub_222CE5C64(v163, v164, v162, v165);
                if (v263)
                {
                  OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_39_0();
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                v166 = OUTLINED_FUNCTION_1_7();
                sub_222CE5C64(v166, v167, v162, v168);

                if (v263)
                {
                  OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_39_0();
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                OUTLINED_FUNCTION_46_0();
                sub_222D523AC();
                sub_222CDC59C(v257, &qword_27D03C010, &unk_222D54A50);
                v169 = OUTLINED_FUNCTION_18_2();
                __swift_storeEnumTagSinglePayload(v169, v170, v171, v259);
                v172 = OUTLINED_FUNCTION_45();
                sub_222D0D958(v172, v173, &qword_27D03C010, &unk_222D54A50);
              }

              else
              {
                OUTLINED_FUNCTION_37_1();
                OUTLINED_FUNCTION_14_1();
              }

              OUTLINED_FUNCTION_42_1();
              __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
              if (*(v75 + 16) && (v178 = OUTLINED_FUNCTION_38_1(&v257), (v179 & 1) != 0))
              {
                OUTLINED_FUNCTION_19_1(v178);
                OUTLINED_FUNCTION_14_1();
                v180 = OUTLINED_FUNCTION_9_3();
                sub_222CE5C64(v180, v181, v75, v182);
                if (v263)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
                  OUTLINED_FUNCTION_7_4();
                  if (swift_dynamicCast())
                  {
                    v183 = v260;
                    goto LABEL_125;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                v183 = MEMORY[0x277D84F98];
LABEL_125:
                v184 = OUTLINED_FUNCTION_2_5();
                sub_222CE5C64(v184, v185, v183, v186);
                if (v263)
                {
                  OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_39_0();
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                v187 = OUTLINED_FUNCTION_1_7();
                sub_222CE5C64(v187, v188, v183, v189);

                if (v263)
                {
                  OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_39_0();
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                OUTLINED_FUNCTION_46_0();
                sub_222D523AC();
                sub_222CDC59C(v258, &qword_27D03C010, &unk_222D54A50);
                v190 = OUTLINED_FUNCTION_18_2();
                __swift_storeEnumTagSinglePayload(v190, v191, v192, v259);
                v193 = OUTLINED_FUNCTION_45();
                sub_222D0D958(v193, v194, &qword_27D03C010, &unk_222D54A50);
              }

              else
              {
                OUTLINED_FUNCTION_37_1();
                OUTLINED_FUNCTION_14_1();
              }

              if (*(v75 + 16) && (v195 = sub_222CE1050(0xD000000000000014, v220 | 0x8000000000000000), (v196 & 1) != 0))
              {
                OUTLINED_FUNCTION_19_1(v195);
              }

              else
              {
                OUTLINED_FUNCTION_37_1();
              }

              if (v263)
              {
                OUTLINED_FUNCTION_7_4();
                if (swift_dynamicCast())
                {
                  v248 = v260;
LABEL_141:
                  v197 = *v232;
                  v198 = v259;
                  (*v232)(v237, v253, v259);
                  sub_222D0D8E8(v255, v249);
                  sub_222D0D8E8(v257, v238);
                  sub_222D0D8E8(v258, v239);
                  v197(v240, v254, v198);
                  v199 = OUTLINED_FUNCTION_18_2();
                  __swift_storeEnumTagSinglePayload(v199, v200, v201, v198);
                  sub_222D0D8E8(v256, v241);
                  v202 = v250;
                  sub_222D5242C();
                  (*v231)(v251, v202, v252);
                  v74 = v247;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v208 = *(v74 + 16);
                    sub_222D28428();
                    v74 = v209;
                  }

                  v203 = *(v74 + 16);
                  if (v203 >= *(v74 + 24) >> 1)
                  {
                    sub_222D28428();
                    v74 = v210;
                  }

                  v204 = v242;
                  v205 = v252;
                  (*(v242 + 8))(v250, v252);
                  sub_222CDC59C(v258, &qword_27D03C010, &unk_222D54A50);
                  sub_222CDC59C(v257, &qword_27D03C010, &unk_222D54A50);
                  sub_222CDC59C(v256, &qword_27D03C010, &unk_222D54A50);
                  sub_222CDC59C(v255, &qword_27D03C010, &unk_222D54A50);
                  v206 = *v229;
                  v207 = v259;
                  (*v229)(v254, v259);
                  v206(v253, v207);
                  *(v74 + 16) = v203 + 1;
                  (*(v204 + 32))(v74 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v203, v251, v205);
                  goto LABEL_34;
                }
              }

              else
              {
                OUTLINED_FUNCTION_14_1();
              }

              v248 = 0;
              goto LABEL_141;
            }

            v82 = OUTLINED_FUNCTION_48_0();

            if (v82)
            {
              goto LABEL_37;
            }
          }
        }
      }

LABEL_34:
      ++v73;
      --v72;
    }

    while (v72);
  }

  (*(v221 + 104))(v223, *MEMORY[0x277D5BF60], v222);
  if (v218)
  {
    sub_222CEE3A4(v218);
  }

  sub_222D523DC();
  swift_storeEnumTagMultiPayload();
  sub_222D52C5C();
  OUTLINED_FUNCTION_35_1();
  v212 = *(v211 - 256);
  sub_222D5282C();
  (*(v234 + 8))(v212, v235);
  v213 = OUTLINED_FUNCTION_45();
  return sub_222D0D958(v213, v214, v215, v216);
}

uint64_t sub_222D0C8D4(void *a1)
{
  v1 = a1;
  if (!a1 || (v2 = sub_222CE4BD8(a1, &selRef_status), !v3))
  {

    v4 = 0;
    v5 = 0xE000000000000000;
    goto LABEL_10;
  }

  v4 = v2;
  v5 = v3;
  if (v2 != 0x73736563637573 || v3 != 0xE700000000000000)
  {
LABEL_10:
    if ((sub_222D5305C() & 1) == 0)
    {
      if (v1 && (v284 = sub_222CE4BD8(v1, &selRef_error), v285))
      {
        v286 = v285;
      }

      else
      {

        v284 = 0;
        v286 = 0xE000000000000000;
      }

      v288 = sub_222D0B314(v284, v286, v4, v5);

      return v288;
    }
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  v321 = v7;
  v8 = sub_222D528FC();
  [v7 setPatternId_];

  v9 = sub_222CEE364(0, &qword_27D03BFF8, 0x277D052C8);
  v10 = MEMORY[0x277D84F90];
  v11 = sub_222D52B2C();
  [v7 setDialog_];

  if (v1)
  {
    v12 = sub_222CE4C38(v1);
    if (v12)
    {
      v10 = v12;
    }
  }

  v13 = *(v10 + 16);
  v318 = v1;
  if (!v13)
  {

    goto LABEL_143;
  }

  OUTLINED_FUNCTION_26_1();
  v322 = "unfilteredContent";
  v323 = "Engine17CATResultProvider";
  v319 = "unfilteredCaption";
  v320 = v9;
  v14 = 32;
  do
  {
    v15 = *(v10 + v14);
    if (!*(v15 + 16))
    {
      goto LABEL_25;
    }

    v16 = *(v10 + v14);

    v17 = OUTLINED_FUNCTION_23_2();
    v19 = sub_222CE1050(v17, v18);
    if ((v20 & 1) == 0 || (v21 = sub_222CE4EC0(*(v15 + 56) + 32 * v19, &v326), OUTLINED_FUNCTION_5_4(v21, v22, v23, v24, v25, v26, v27, v28, v318, v319, v320, v321, v322, v323, v324), (swift_dynamicCast() & 1) == 0))
    {
LABEL_24:

      goto LABEL_25;
    }

    if (v324 == v7 && v325 == 0xE600000000000000)
    {
    }

    else
    {
      v30 = OUTLINED_FUNCTION_48_0();

      if ((v30 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v31 = [objc_allocWithZone(MEMORY[0x277D052C8]) init];
    sub_222CE5C64(25705, 0xE200000000000000, v15, &v326);
    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_32:
      OUTLINED_FUNCTION_31_1();
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_5_4(v32, v33, v34, v35, v36, v37, v38, v39, v318, v319, v320, v321, v322, v323, v324);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_33:
    v40 = sub_222D528FC();

    [v31 setDialogId_];

    v41 = OUTLINED_FUNCTION_11_2();
    sub_222CE5C64(v41, v42, v15, v43);
    if (v327)
    {
      v44 = OUTLINED_FUNCTION_44_1();
      v46 = sub_222CEE364(v44, v45, 0x277CCABB0);
      OUTLINED_FUNCTION_5_4(v46, v47, v48, v46, v49, v50, v51, v52, v318, v319, v320, v321, v322, v323, v324);
      if (swift_dynamicCast())
      {
        v53 = v324;
        goto LABEL_38;
      }
    }

    else
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    }

    v54 = OUTLINED_FUNCTION_44_1();
    sub_222CEE364(v54, v55, 0x277CCABB0);
    v53 = sub_222D52C8C();
LABEL_38:
    [v31 setPrintOnly_];

    v56 = OUTLINED_FUNCTION_10_1();
    sub_222CE5C64(v56, v57, v15, v58);
    if (v327)
    {
      v59 = OUTLINED_FUNCTION_44_1();
      v61 = sub_222CEE364(v59, v60, 0x277CCABB0);
      OUTLINED_FUNCTION_5_4(v61, v62, v63, v61, v64, v65, v66, v67, v318, v319, v320, v321, v322, v323, v324);
      if (swift_dynamicCast())
      {
        v68 = v324;
        goto LABEL_43;
      }
    }

    else
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    }

    v69 = OUTLINED_FUNCTION_44_1();
    sub_222CEE364(v69, v70, 0x277CCABB0);
    v68 = sub_222D52C8C();
LABEL_43:
    [v31 setSpokenOnly_];

    v71 = OUTLINED_FUNCTION_17_2();
    sub_222CE5C64(v71, v72, v15, v73);
    if (v327)
    {
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_5_4(v74, v75, v76, v74, v77, v78, v79, v80, v318, v319, v320, v321, v322, v323, v324);
      if (swift_dynamicCast())
      {
        v81 = v324;
        goto LABEL_48;
      }
    }

    else
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    }

    v81 = MEMORY[0x277D84F98];
LABEL_48:
    v82 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v82, v83, v81, v84);
    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_52:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_5_4(v85, v86, v87, v88, v89, v90, v91, v92, v318, v319, v320, v321, v322, v323, v324);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_53:
    sub_222D528FC();
    v93 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v93, sel_setFullPrint_);

    v94 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v94, v95, v81, v96);
    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_57:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_5_4(v97, v98, v99, v100, v101, v102, v103, v104, v318, v319, v320, v321, v322, v323, v324);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_58:
    sub_222D528FC();
    v105 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v105, sel_setFullSpeak_);

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_12_0();
    sub_222CE5C64(v106, v107, v81, v108);
    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_62:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_5_4(v109, v110, v111, v112, v113, v114, v115, v116, v318, v319, v320, v321, v322, v323, v324);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_63:
    sub_222D528FC();
    v117 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v117, sel_setRedactedFullPrint_);

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_8_3();
    sub_222CE5C64(v118, v119, v81, v120);

    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_67:
      OUTLINED_FUNCTION_31_1();
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_5_4(v121, v122, v123, v124, v125, v126, v127, v128, v318, v319, v320, v321, v322, v323, v324);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_68:
    sub_222D528FC();
    v129 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_29_1(v129, sel_setRedactedFullSpeak_);

    v130 = OUTLINED_FUNCTION_6_4();
    sub_222CE5C64(v130, v131, v15, v132);
    v133 = v327;
    sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    if (!v133)
    {
      goto LABEL_95;
    }

    v134 = OUTLINED_FUNCTION_6_4();
    sub_222CE5C64(v134, v135, v15, v136);
    if (v327)
    {
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_5_4(v137, v138, v139, v137, v140, v141, v142, v143, v318, v319, v320, v321, v322, v323, v324);
      if (swift_dynamicCast())
      {
        v144 = v324;
        goto LABEL_74;
      }
    }

    else
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    }

    v144 = MEMORY[0x277D84F98];
LABEL_74:
    v145 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v145, v146, v144, v147);
    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_78:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_5_4(v148, v149, v150, v151, v152, v153, v154, v155, v318, v319, v320, v321, v322, v323, v324);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_78;
    }

LABEL_79:
    sub_222D528FC();
    v156 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v156, sel_setSupportingPrint_);

    v157 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v157, v158, v144, v159);
    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_83:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_5_4(v160, v161, v162, v163, v164, v165, v166, v167, v318, v319, v320, v321, v322, v323, v324);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_84:
    sub_222D528FC();
    v168 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v168, sel_setSupportingSpeak_);

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_12_0();
    sub_222CE5C64(v169, v170, v144, v171);
    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_88:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_5_4(v172, v173, v174, v175, v176, v177, v178, v179, v318, v319, v320, v321, v322, v323, v324);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_88;
    }

LABEL_89:
    sub_222D528FC();
    v180 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v180, sel_setRedactedSupportingPrint_);

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_8_3();
    sub_222CE5C64(v181, v182, v144, v183);

    if (v327)
    {
      OUTLINED_FUNCTION_5_4(v184, v185, v186, v187, v188, v189, v190, v191, v318, v319, v320, v321, v322, v323, v324);
      if (swift_dynamicCast())
      {
        goto LABEL_94;
      }
    }

    else
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    }

    OUTLINED_FUNCTION_31_1();
LABEL_94:
    sub_222D528FC();
    v192 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_29_1(v192, sel_setRedactedSupportingSpeak_);

LABEL_95:
    v193 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v193, v194, v15, v195);
    v196 = v327;
    sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    if (!v196)
    {
      goto LABEL_112;
    }

    v197 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v197, v198, v15, v199);
    if (v327)
    {
      v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_5_4(v200, v201, v202, v200, v203, v204, v205, v206, v318, v319, v320, v321, v322, v323, v324);
      if (swift_dynamicCast())
      {
        v207 = v324;
        goto LABEL_101;
      }
    }

    else
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    }

    v207 = MEMORY[0x277D84F98];
LABEL_101:
    v208 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v208, v209, v207, v210);
    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_105:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_106;
    }

    OUTLINED_FUNCTION_5_4(v211, v212, v213, v214, v215, v216, v217, v218, v318, v319, v320, v321, v322, v323, v324);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_105;
    }

LABEL_106:
    sub_222D528FC();
    v219 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v219, sel_setUnfilteredFullPrint_);

    v220 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v220, v221, v207, v222);

    if (v327)
    {
      OUTLINED_FUNCTION_5_4(v223, v224, v225, v226, v227, v228, v229, v230, v318, v319, v320, v321, v322, v323, v324);
      if (swift_dynamicCast())
      {
        goto LABEL_111;
      }
    }

    else
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    }

    OUTLINED_FUNCTION_31_1();
LABEL_111:
    sub_222D528FC();
    v231 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_29_1(v231, sel_setUnfilteredFullSpeak_);

LABEL_112:
    v232 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v232, v233, v15, v234);
    v235 = v327;
    sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    if (!v235)
    {
      goto LABEL_129;
    }

    v236 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v236, v237, v15, v238);
    if (v327)
    {
      v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_5_4(v239, v240, v241, v239, v242, v243, v244, v245, v318, v319, v320, v321, v322, v323, v324);
      if (swift_dynamicCast())
      {
        v246 = v324;
        goto LABEL_118;
      }
    }

    else
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    }

    v246 = MEMORY[0x277D84F98];
LABEL_118:
    v247 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v247, v248, v246, v249);
    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_122:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_5_4(v250, v251, v252, v253, v254, v255, v256, v257, v318, v319, v320, v321, v322, v323, v324);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_122;
    }

LABEL_123:
    sub_222D528FC();
    v258 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v258, sel_setUnfilteredSupportingPrint_);

    v259 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v259, v260, v246, v261);

    if (v327)
    {
      OUTLINED_FUNCTION_5_4(v262, v263, v264, v265, v266, v267, v268, v269, v318, v319, v320, v321, v322, v323, v324);
      if (swift_dynamicCast())
      {
        goto LABEL_128;
      }
    }

    else
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
    }

    OUTLINED_FUNCTION_31_1();
LABEL_128:
    sub_222D528FC();
    v270 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_29_1(v270, sel_setUnfilteredSupportingSpeak_);

LABEL_129:
    sub_222CE5C64(0xD000000000000014, v319 | 0x8000000000000000, v15, &v326);

    if (!v327)
    {
      sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
LABEL_133:
      v279 = 0;
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_5_4(v271, v272, v273, v274, v275, v276, v277, v278, v318, v319, v320, v321, v322, v323, v324);
    if (!swift_dynamicCast())
    {
      goto LABEL_133;
    }

    v279 = v324;
LABEL_134:
    [v31 setIsApprovedForGrading_];
    v280 = v31;
    v281 = [v321 dialog];
    v282 = sub_222D52B3C();

    *&v326 = v282;
    MEMORY[0x223DCB5F0]();
    if (*((v326 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v326 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222D52B5C();
    }

    sub_222D52B7C();
    v7 = v326;
    v283 = sub_222D52B2C();

    [v321 setDialog_];

    OUTLINED_FUNCTION_26_1();
LABEL_25:
    v14 += 8;
    --v13;
  }

  while (v13);

  v1 = v318;
LABEL_143:
  v289 = MEMORY[0x277D84F90];
  if (v1)
  {
    result = sub_222CE4C38(v1);
    if (result)
    {
      v289 = result;
    }
  }

  v290 = *(v289 + 16);
  if (!v290)
  {

LABEL_161:
    v288 = v321;
    goto LABEL_162;
  }

  v291 = 0;
  while (2)
  {
    if (v291 >= *(v289 + 16))
    {
      __break(1u);
      return result;
    }

    v292 = *(v289 + 8 * v291 + 32);
    if (!*(v292 + 16))
    {
      goto LABEL_158;
    }

    v293 = *(v289 + 8 * v291 + 32);

    v294 = OUTLINED_FUNCTION_23_2();
    v296 = sub_222CE1050(v294, v295);
    if ((v297 & 1) == 0)
    {
      goto LABEL_157;
    }

    v298 = sub_222CE4EC0(*(v292 + 56) + 32 * v296, &v326);
    OUTLINED_FUNCTION_5_4(v298, v299, v300, v301, v302, v303, v304, v305, v318, v319, v320, v321, v322, v323, v324);
    if ((OUTLINED_FUNCTION_39_0() & 1) == 0)
    {
      goto LABEL_157;
    }

    if (v324 != 0x6C6175736976 || v325 != 0xE600000000000000)
    {
      v7 = OUTLINED_FUNCTION_48_0();

      if (v7)
      {
        goto LABEL_167;
      }

LABEL_157:

LABEL_158:
      if (v290 == ++v291)
      {

        v1 = v318;
        goto LABEL_161;
      }

      continue;
    }

    break;
  }

LABEL_167:

  sub_222CE5C64(1635017060, 0xE400000000000000, v292, &v326);

  v1 = v318;
  if (v327)
  {
    OUTLINED_FUNCTION_5_4(v307, v308, v309, MEMORY[0x277D837D0], v310, v311, v312, v313, v318, v319, v320, v321, v322, v323, v324);
    if (swift_dynamicCast())
    {
      v288 = v321;
      goto LABEL_172;
    }
  }

  else
  {
    sub_222CDC59C(&v326, &qword_27D03BDA8, &unk_222D55070);
  }

  v288 = v321;
  OUTLINED_FUNCTION_31_1();
LABEL_172:
  v7 = sub_222D5211C();
  v315 = v314;

  if (v315 >> 60 == 15)
  {
    v316 = 0;
  }

  else
  {
    v316 = v7;
  }

  if (v315 >> 60 == 15)
  {
    v317 = 0xC000000000000000;
  }

  else
  {
    v317 = v315;
  }

  sub_222D0D874(v316, v317, v288);
LABEL_162:
  if (v1)
  {
    sub_222CEE3A4(v1);
  }

  sub_222D5288C();
  OUTLINED_FUNCTION_40();
  [v288 setMeta_];

  return v288;
}

void sub_222D0D874(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_222D5212C();
  sub_222CE6210(a1, a2);
  [a3 setVisual_];
}

uint64_t sub_222D0D8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C010, &unk_222D54A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222D0D958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_34(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_dynamicCast();
}

uint64_t CATWrapper.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CATWrapper.init(templateDir:options:globals:)();
  return v3;
}

void sub_222D0DA34()
{
  OUTLINED_FUNCTION_73();
  v1 = v0;
  v45 = v2;
  v46 = v3;
  v43 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_222D5284C();
  v10 = OUTLINED_FUNCTION_113(v9);
  v47 = v11;
  v48 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v17 = qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v18 = OUTLINED_FUNCTION_3_0();
  v40 = xmmword_222D53980;
  *(v18 + 16) = xmmword_222D53980;
  *(v18 + 56) = MEMORY[0x277D837D0];
  v19 = sub_222CDDCB0();
  *(v18 + 64) = v19;
  *(v18 + 32) = v8;
  *(v18 + 40) = v6;

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C();

  v42 = sub_222CDF250(v51, v43, *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_mockGlobals), 1);
  v43 = v20;
  sub_222D52C2C();
  v21 = v1;
  v22 = v8;
  v23 = OUTLINED_FUNCTION_3_0();
  *(v23 + 16) = v40;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = v19;
  *(v23 + 32) = v8;
  *(v23 + 40) = v6;

  sub_222D5280C();

  sub_222D52C7C();
  OUTLINED_FUNCTION_2_6();
  v24 = v16;
  v41 = v16;
  sub_222D5281C();
  *&v40 = type metadata accessor for CATExecutor();
  v39 = OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_templateDir;
  sub_222CE3120(v51, v50);
  v25 = v21;
  v49 = *(v21 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_options);
  v26 = v47;
  v27 = v48;
  v28 = v44;
  (*(v47 + 16))(v44, v24, v48);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v26 + 32))(v31 + v29, v28, v27);
  v32 = (v31 + v30);
  *v32 = v22;
  v32[1] = v6;
  v33 = (v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8));
  v34 = v46;
  *v33 = v45;
  v33[1] = v34;

  v35 = v6;
  v36 = v43;
  static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:_:)(v25 + v39, v22, v35, v42, v43, v50, &v49, sub_222D0DF78, v31, v37, v38, v39, v40, *(&v40 + 1), v41, v42, v43, v44, v45, v46, v47);

  sub_222CDD130(v50, &qword_27D03C020, &unk_222D54A80);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  (*(v26 + 8))(v41, v27);
  OUTLINED_FUNCTION_74();
}

uint64_t sub_222D0DE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_222D52C5C();
  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  sub_222D5282C();
  sub_222D52C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222D53980;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_222CDDCB0();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;

  sub_222D5280C();

  return a5(a1);
}

uint64_t sub_222D0DF78(uint64_t a1)
{
  v3 = sub_222D5284C();
  OUTLINED_FUNCTION_24_2(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v1 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v10);
  v15 = *(v1 + v10 + 8);

  return sub_222D0DE28(a1, v1 + v8, v12, v13, v14);
}

uint64_t sub_222D0E020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_23();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_222D0E054()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  sub_222D5241C();
  *v6 = v0;
  v6[1] = sub_222D0E154;
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_222D0E154()
{
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  OUTLINED_FUNCTION_9_4();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_13();

    return v13();
  }
}

uint64_t sub_222D0E274()
{
  OUTLINED_FUNCTION_14_2();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_222D0E2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C030, &unk_222D54B30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_222D0DA34();
}

uint64_t sub_222D0E438(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_222D0E2D0(a1);
}

uint64_t sub_222D0E444(uint64_t a1)
{
  v2 = sub_222D5241C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v12 - v9);
  sub_222CDD5C0(a1, v12 - v9, &qword_27D03C008, &qword_222D55030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C030, &unk_222D54B30);
    return sub_222D52B9C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C030, &unk_222D54B30);
    return sub_222D52BAC();
  }
}

void sub_222D0E5F4()
{
  OUTLINED_FUNCTION_73();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v22 = v7;
  v8 = sub_222D5284C();
  v9 = OUTLINED_FUNCTION_113(v8);
  v23 = v10;
  v24 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_5();
  v15 = v14 - v13;
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v16 = OUTLINED_FUNCTION_3_0();
  *(v16 + 16) = xmmword_222D53980;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v17 = sub_222CDDCB0();
  *(v16 + 64) = v17;
  *(v16 + 32) = v6;
  *(v16 + 40) = v4;

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C();

  sub_222CDF250(v27, v2, *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_mockGlobals), 1);
  v21 = v18;
  sub_222D52C2C();
  v19 = OUTLINED_FUNCTION_3_0();
  *(v19 + 16) = xmmword_222D53980;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = v17;
  *(v19 + 32) = v6;
  *(v19 + 40) = v4;

  sub_222D5280C();

  sub_222D52C7C();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C();
  type metadata accessor for CATExecutor();
  sub_222CE3120(v27, v26);
  v25 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_options);
  static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:)(v6, v4, &v25, v22);

  sub_222CDD130(v26, &qword_27D03C020, &unk_222D54A80);
  sub_222D52C5C();
  OUTLINED_FUNCTION_10_2();
  sub_222D5282C();
  sub_222D52C2C();
  v20 = OUTLINED_FUNCTION_3_0();
  *(v20 + 16) = xmmword_222D53980;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = v17;
  *(v20 + 32) = v6;
  *(v20 + 40) = v4;

  sub_222D5280C();

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  (*(v23 + 8))(v15, v24);
  OUTLINED_FUNCTION_74();
}

void sub_222D0E95C()
{
  OUTLINED_FUNCTION_73();
  v43 = v1;
  v40 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C028, &qword_222D54A90);
  v10 = OUTLINED_FUNCTION_52(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = v39 - v13;
  v14 = sub_222D5284C();
  v15 = OUTLINED_FUNCTION_113(v14);
  v44 = v16;
  v45 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_5();
  v21 = v20 - v19;
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v22 = OUTLINED_FUNCTION_3_0();
  *(v22 + 16) = xmmword_222D53980;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_222CDDCB0();
  v23 = v8;
  *(v22 + 32) = v8;
  *(v22 + 40) = v6;

  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C();

  v39[0] = sub_222CDF250(v47, v4, *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_mockGlobals), 1);
  v25 = v24;
  if (qword_280D3B218 != -1)
  {
    OUTLINED_FUNCTION_4_5();
  }

  v42 = v0;
  v26 = sub_222D5286C();
  v27 = __swift_project_value_buffer(v26, qword_280D3DDA8);

  v39[1] = v27;
  v28 = sub_222D5285C();
  v29 = sub_222D52C2C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_26_2();
    *&v46[0] = OUTLINED_FUNCTION_25_2();
    *v30 = 136315138;
    *(v30 + 4) = sub_222CE548C(v23, v6, v46);
    _os_log_impl(&dword_222CDA000, v28, v29, "Invoking CATExecutor (completion) for patternId: %s", v30, 0xCu);
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_17_3();
  }

  sub_222D52C7C();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C();
  v31 = sub_222D52BCC();
  v32 = v41;
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v31);
  sub_222CE3120(v47, v46);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v42;
  v33[5] = v23;
  v34 = v39[0];
  v33[6] = v6;
  v33[7] = v34;
  v33[8] = v25;
  sub_222CE2D34(v46, (v33 + 9));
  v35 = v43;
  v33[14] = v40;
  v33[15] = v35;

  v36 = v25;

  sub_222D0F340(0, 0, v32, &unk_222D54AA0, v33);

  sub_222D52C5C();
  OUTLINED_FUNCTION_10_2();
  sub_222D5282C();

  v37 = sub_222D5285C();
  v38 = sub_222D52C2C();

  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_26_2();
    *&v46[0] = OUTLINED_FUNCTION_20_3();
    *v35 = 136315138;
    *(v35 + 4) = sub_222CE548C(v23, v6, v46);
    _os_log_impl(&dword_222CDA000, v37, v38, "CATExecutor (completion) completed for patternId: %s", v35, 0xCu);
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_17_3();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  (*(v44 + 8))(v21, v45);
  OUTLINED_FUNCTION_74();
}

uint64_t sub_222D0EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v11;
  *(v8 + 104) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  return MEMORY[0x2822009F8](sub_222D0EE38, 0, 0);
}

uint64_t sub_222D0EE38()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[13];
  v2 = v0[8];
  type metadata accessor for CATResponse();
  v3 = OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_templateDir;
  sub_222CE3120(v1, (v0 + 2));
  v0[7] = *(v2 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_options);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_222D0EF24;
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];

  return static CATResponse.executePattern(templateDir:patternId:parameters:globals:callback:options:)(v2 + v3, v7, v8, v5, v6, (v0 + 2), v0 + 7);
}

uint64_t sub_222D0EF24()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_15_2();
  v5 = v4;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v10 = v9;
  *(v5 + 136) = v0;

  if (!v0)
  {
    *(v5 + 144) = v3;
  }

  sub_222CDD130(v5 + 16, &qword_27D03C020, &unk_222D54A80);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_222D0F060()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v1;
  v3(v1, 0);

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_222D0F0E0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v1;
  v3(v1, 1);

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_222D0F168(uint64_t a1)
{
  v16 = v1[2];
  v14 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v9 = v1[14];
  v8 = v1[15];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12_1(v10);
  *v11 = v12;
  v11[1] = sub_222D0F260;

  return sub_222D0EDFC(a1, v16, v14, v3, v4, v5, v6, v7);
}

uint64_t sub_222D0F260()
{
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_5();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_222D0F340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C028, &qword_222D54A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_222CDD5C0(a3, v26 - v11, &qword_27D03C028, &qword_222D54A90);
  v13 = sub_222D52BCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_222CDD130(v12, &qword_27D03C028, &qword_222D54A90);
  }

  else
  {
    sub_222D52BBC();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_222D52B8C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_222D5299C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_222CDD130(a3, &qword_27D03C028, &qword_222D54A90);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222CDD130(a3, &qword_27D03C028, &qword_222D54A90);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_222D0F624()
{
  OUTLINED_FUNCTION_33_2();
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[17];
  sub_222D52C5C();
  OUTLINED_FUNCTION_10_2();
  sub_222D5282C();

  v6 = sub_222D5285C();
  LOBYTE(v3) = sub_222D52C2C();

  if (os_log_type_enabled(v6, v3))
  {
    v7 = v0[25];
    v9 = v0[16];
    v8 = v0[17];
    OUTLINED_FUNCTION_26_2();
    v10 = OUTLINED_FUNCTION_20_3();
    *(v1 + 4) = OUTLINED_FUNCTION_18_3(4.8149e-34, v10, v11, v12, v13, v14, v15, v16, v17, v10);
    OUTLINED_FUNCTION_19_2(&dword_222CDA000, v18, v19, "CATExecutor (async) completed for patternId: %s");
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_17_3();
  }

  else
  {
    v20 = v0[25];
  }

  v22 = v0[21];
  v21 = v0[22];
  v23 = v0[20];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v22 + 8))(v21, v23);

  OUTLINED_FUNCTION_13();
  v25 = v0[28];

  return v24();
}

uint64_t sub_222D0F780()
{
  OUTLINED_FUNCTION_14_2();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v5 = sub_222D5284C();
  v1[17] = v5;
  OUTLINED_FUNCTION_24_2(v5);
  v1[18] = v6;
  v8 = *(v7 + 64) + 15;
  v1[19] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222D0F834()
{
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = qword_280D3DB80;
  v0[20] = qword_280D3DB80;
  v7 = v6;
  sub_222D5283C();
  sub_222D52C6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v8 = OUTLINED_FUNCTION_3_0();
  *(v8 + 16) = xmmword_222D53980;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_222CDDCB0();
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C();

  v0[21] = OUTLINED_FUNCTION_35_2(OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_mockGlobals);
  v0[22] = v9;
  if (qword_280D3B218 != -1)
  {
    OUTLINED_FUNCTION_4_5();
  }

  v10 = v0[14];
  v11 = sub_222D5286C();
  v0[23] = __swift_project_value_buffer(v11, qword_280D3DDA8);

  v12 = sub_222D5285C();
  v13 = sub_222D52C2C();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = v0[13];
    v14 = v0[14];
    v16 = OUTLINED_FUNCTION_26_2();
    v35 = OUTLINED_FUNCTION_25_2();
    *(v16 + 4) = OUTLINED_FUNCTION_34_2(4.8149e-34, v35, v17, v18, v19);
    OUTLINED_FUNCTION_36_2(&dword_222CDA000, v20, v21, "Invoking CATExecutor (async) for catId: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_17_3();
  }

  v22 = v0[19];
  v23 = v0[16];
  sub_222D52C7C();
  OUTLINED_FUNCTION_2_6();
  sub_222D5281C();
  type metadata accessor for CATResponse();
  sub_222CE3120((v0 + 2), (v0 + 7));
  v0[12] = *(v23 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_options);
  v24 = swift_task_alloc();
  v0[24] = v24;
  *v24 = v0;
  v24[1] = sub_222D0FB14;
  v25 = v0[13];
  v26 = v0[14];
  v27 = OUTLINED_FUNCTION_22_2();

  return static CATResponse.executeDialog(templateDir:catId:parameters:globals:callback:options:)(v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_222D0FB14()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_15_2();
  v5 = v4;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  v8 = *(v7 + 192);
  v9 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v10 = v9;
  v5[25] = v0;

  if (v0)
  {
    v11 = v5[21];
  }

  else
  {
    v12 = v5[21];
    v5[26] = v3;
  }

  sub_222CDD130((v5 + 7), &qword_27D03C020, &unk_222D54A80);

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_222D0FC68()
{
  v22 = v0;
  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[14];
  v6 = [v1 dialog];
  sub_222D10AD8();
  v7 = sub_222D52B3C();

  sub_222D52C5C();
  sub_222D5282C();

  v8 = sub_222D5285C();
  v9 = sub_222D52C2C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[22];
    v12 = v0[13];
    v11 = v0[14];
    v13 = OUTLINED_FUNCTION_26_2();
    v14 = OUTLINED_FUNCTION_25_2();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_222CE548C(v12, v11, &v21);
    _os_log_impl(&dword_222CDA000, v8, v9, "CATExecutor (async) completed for catId: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_17_3();
  }

  else
  {
    v15 = v0[22];
  }

  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v17 + 8))(v16, v18);

  v19 = v0[1];

  return v19(v7);
}

uint64_t sub_222D0FE4C()
{
  OUTLINED_FUNCTION_33_2();
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[14];
  sub_222D52C5C();
  OUTLINED_FUNCTION_10_2();
  sub_222D5282C();

  v6 = sub_222D5285C();
  LOBYTE(v3) = sub_222D52C2C();

  if (os_log_type_enabled(v6, v3))
  {
    v7 = v0[22];
    v9 = v0[13];
    v8 = v0[14];
    OUTLINED_FUNCTION_26_2();
    v10 = OUTLINED_FUNCTION_20_3();
    *(v1 + 4) = OUTLINED_FUNCTION_18_3(4.8149e-34, v10, v11, v12, v13, v14, v15, v16, v17, v10);
    OUTLINED_FUNCTION_19_2(&dword_222CDA000, v18, v19, "CATExecutor (async) completed for catId: %s");
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_17_3();
  }

  else
  {
    v20 = v0[22];
  }

  v22 = v0[18];
  v21 = v0[19];
  v23 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v22 + 8))(v21, v23);

  OUTLINED_FUNCTION_13();
  v25 = v0[25];

  return v24();
}

uint64_t CATWrapper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_templateDir;
  v2 = sub_222D5210C();
  OUTLINED_FUNCTION_3_6(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t TemplatingResult.withBehaviorAfterSpeaking(_:)(uint64_t a1)
{
  v2 = sub_222D5248C();
  v3 = OUTLINED_FUNCTION_113(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_5();
  v10 = v9 - v8;
  sub_222D523FC();
  sub_222D5240C();
  (*(v5 + 16))(v10, a1, v2);
  return sub_222D523EC();
}

uint64_t sub_222D10178(uint64_t a1, uint64_t a2)
{
  v3 = sub_222D5248C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222D523FC();
  sub_222D5240C();
  (*(v4 + 16))(v7, a2, v3);
  return sub_222D523EC();
}

uint64_t sub_222D1027C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  sub_222D5316C();
  return swift_storeEnumTagMultiPayload();
}

void Result<>.firstPrint.getter()
{
  OUTLINED_FUNCTION_73();
  v2 = v1;
  v3 = sub_222D523CC();
  v4 = OUTLINED_FUNCTION_113(v3);
  v44 = v5;
  v45 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_5();
  v43 = v9 - v8;
  v10 = sub_222D5244C();
  v11 = OUTLINED_FUNCTION_113(v10);
  v41 = v12;
  v42 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_5();
  v40 = v16 - v15;
  v17 = *(v2 + 16);
  v46 = *(v17 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_5();
  v22 = v21 - v20;
  v23 = *(v2 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v39 - v29;
  v31 = *(v23 + 16);
  v31(&v39 - v29, v0, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_6;
  }

  v31(v28, v30, v2);
  v32 = v46;
  (*(v46 + 32))(v22, v28, v17);
  v33 = *(sub_222D5240C() + 16);

  if (!v33)
  {
    (*(v32 + 8))(v22, v17);
    goto LABEL_6;
  }

  v34 = sub_222D5240C();
  if (*(v34 + 16))
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    (*(v41 + 16))(v40, v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v42);

    v38 = v43;
    sub_222D5243C();
    (*(v36 + 8))(v35, v37);
    sub_222D523BC();
    (*(v44 + 8))(v38, v45);
    (*(v32 + 8))(v22, v17);
LABEL_6:
    (*(v23 + 8))(v30, v2);
    OUTLINED_FUNCTION_74();
    return;
  }

  __break(1u);
}

uint64_t sub_222D10808(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222D10900;

  return v7(a1);
}

uint64_t sub_222D10900()
{
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_5();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

char *sub_222D109E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDC0, &qword_222D54B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_222D10AD8()
{
  result = qword_27D03BFF8;
  if (!qword_27D03BFF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D03BFF8);
  }

  return result;
}

uint64_t type metadata accessor for CATWrapper()
{
  result = qword_280D3D948;
  if (!qword_280D3D948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222D10B78()
{
  result = sub_222D5210C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of CATWrapper.execute(catId:parameters:)()
{
  OUTLINED_FUNCTION_33_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*v0 + 120);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_12_1(v11);
  *v12 = v13;
  v12[1] = sub_222D0F260;

  return v15(v8, v6, v4, v2);
}

{
  return (*(*v0 + 128))();
}

uint64_t dispatch thunk of CATWrapper.executeDialog(catId:parameters:)()
{
  OUTLINED_FUNCTION_28_2();
  v2 = *(v1 + 152);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_21_2(v4);

  return v6(v5);
}

uint64_t sub_222D10F04()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_4(v4);

  return v7(v6);
}

uint64_t sub_222D10F98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C030, &unk_222D54B30);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 80);

  return sub_222D0E444(a1);
}

double sub_222D11014@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_222D08454(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t sub_222D11050(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  *&v7 = *a1;
  *(&v7 + 1) = v2;
  v8 = v3;
  v9 = v4;
  sub_222CE3060(v7, v2);
  return sub_222D1109C(&v7);
}

uint64_t sub_222D1109C(_OWORD *a1)
{
  OUTLINED_FUNCTION_1_0();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = a1[1];
  *(v1 + 1) = *a1;
  *(v1 + 2) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D110DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_222D11134();
}

uint64_t sub_222D11108()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 48);
}

uint64_t sub_222D11134()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v1 + 48);
  *(v1 + 48) = v0;
}

double SirikitApp.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = MEMORY[0x277D84F90];
  return result;
}

double SirikitApp.Builder.init()()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_222D1120C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  OUTLINED_FUNCTION_1_0();
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  sub_222CE3060(v2, v3);
  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D1128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (!a4)
  {

    a3 = a1;
    v8 = a2;
  }

  OUTLINED_FUNCTION_1_0();
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v8;

  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D11328()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v1 + 48);
  *(v1 + 48) = v0;
}

uint64_t sub_222D11378()
{
  type metadata accessor for SirikitApp();
  v0 = swift_allocObject();

  SirikitApp.init(builder:)(v1);
  return v0;
}

uint64_t SirikitApp.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_4_6();
  v2 = swift_allocObject();
  SirikitApp.init(builder:)(a1);
  return v2;
}

uint64_t *SirikitApp.Builder.deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_222CE2920(v0[2], v0[3]);
  v3 = v0[6];

  return v0;
}

uint64_t SirikitApp.Builder.__deallocating_deinit()
{
  SirikitApp.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_222D11498(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_222D114C8(v2);
}

void sub_222D114C8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_0();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t SirikitApp.appId.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

void *SirikitApp.init(builder:)(void *a1)
{
  v1[2] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  swift_beginAccess();
  v7 = a1[6];
  sub_222CE3060(v3, v4);

  v1[7] = v7;
  return v1;
}

double sub_222D115C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (!v6 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    v13 = a1 == 0xD000000000000011 && 0x8000000222D59A40 == a2;
    if (v13 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v14 = v3[7];
      *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C038, &qword_222D54B40);
      *a3 = v14;
      goto LABEL_14;
    }

    v16 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
    if (v16 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      sub_222CFDBD8();
      if (v21)
      {
        *(a3 + 24) = &type metadata for SpeakableString;
        v17 = swift_allocObject();
        *a3 = v17;
        v17[2] = v20;
        v17[3] = v21;
        v17[4] = v22;
        v17[5] = v23;
        return result;
      }
    }

    else
    {
      v18 = a1 == 0xD000000000000011 && 0x8000000222D5AA80 == a2;
      if (v18 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        v19 = sub_222D117E4();
        *(a3 + 24) = MEMORY[0x277D839B0];
        *a3 = v19 & 1;
        return result;
      }
    }

LABEL_30:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_30;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

LABEL_14:

  return result;
}

uint64_t sub_222D11818()
{
  v0 = sub_222D52ECC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D1186C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6449707061;
  }
}

uint64_t sub_222D118C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D11818();
  *a2 = result;
  return result;
}

uint64_t sub_222D118F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D1186C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D1192C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D11818();
  *a1 = result;
  return result;
}

uint64_t sub_222D11960(uint64_t a1)
{
  v2 = sub_222D11C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D1199C(uint64_t a1)
{
  v2 = sub_222D11C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SirikitApp.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_222CE2920(*(v0 + 24), *(v0 + 32));
  v3 = *(v0 + 56);

  return v0;
}

uint64_t SirikitApp.__deallocating_deinit()
{
  SirikitApp.deinit();
  v0 = OUTLINED_FUNCTION_4_6();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D11A38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C040, &qword_222D54B48);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D11C24();
  sub_222D531AC();
  v14 = v3[4];
  v15 = v3[5];
  v16 = v3[6];
  v20 = v3[3];
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v19 = 0;
  sub_222CE3060(v20, v14);
  sub_222CF2084();
  sub_222D52FBC();
  sub_222CE2920(v20, v21);
  if (!v2)
  {
    v20 = v3[7];
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C038, &qword_222D54B40);
    sub_222D11F1C(&qword_27D03C050, &qword_27D03C058);
    sub_222D5300C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D11C24()
{
  result = qword_27D03C048;
  if (!qword_27D03C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C048);
  }

  return result;
}

uint64_t SirikitApp.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_6();
  v2 = swift_allocObject();
  SirikitApp.init(from:)(a1);
  return v2;
}

uint64_t SirikitApp.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C060, &qword_222D54B50);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D11C24();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for SirikitApp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C();
    sub_222D52F1C();
    *(v1 + 24) = v12;
    *(v1 + 40) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C038, &qword_222D54B40);
    sub_222D11F1C(&qword_27D03C068, &qword_27D03C070);
    sub_222D52F6C();
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    *(v1 + 56) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D11F1C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C038, &qword_222D54B40);
    sub_222D120C0(a2, 255, type metadata accessor for SirikitLocalizedAppName);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D1203C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222D120C0(&qword_27D03C078, a2, type metadata accessor for SirikitApp);
  result = sub_222D120C0(&qword_27D03BEE0, v3, type metadata accessor for SirikitApp);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D120C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D12108@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 192))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SirikitApp.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SirikitApp.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D12648()
{
  result = qword_27D03C080;
  if (!qword_27D03C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C080);
  }

  return result;
}

unint64_t sub_222D126A0()
{
  result = qword_27D03C088;
  if (!qword_27D03C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C088);
  }

  return result;
}

unint64_t sub_222D126F8()
{
  result = qword_27D03C090;
  if (!qword_27D03C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C090);
  }

  return result;
}

uint64_t sub_222D1274C()
{
  v0 = DEVersion();
  v1 = sub_222D5292C();

  return v1;
}

uint64_t sub_222D12798()
{
  v0 = sub_222D528FC();
  v1 = DEHasFeature();

  return v1;
}

uint64_t sub_222D12868(char a1)
{
  result = OUTLINED_FUNCTION_1_0();
  *(v1 + 16) = a1;
  return result;
}

uint64_t SirikitDeviceRestrictions.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SirikitDeviceRestrictions.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_222D128CC(char a1)
{
  OUTLINED_FUNCTION_1_0();
  *(v1 + 16) = a1;
}

uint64_t sub_222D12904()
{
  type metadata accessor for SirikitDeviceRestrictions();
  v0 = swift_allocObject();

  SirikitDeviceRestrictions.init(builder:)(v1);
  return v0;
}

uint64_t SirikitDeviceRestrictions.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_8();
  v2 = swift_allocObject();
  SirikitDeviceRestrictions.init(builder:)(a1);
  return v2;
}

double sub_222D129AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0xD000000000000010 && 0x8000000222D59A60 == a2;
  if (v5 || (sub_222D5305C() & 1) != 0)
  {
    v7 = *(v3 + 24);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v7;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

BOOL sub_222D12A2C()
{
  v0 = sub_222D52ECC();

  return v0 != 0;
}

BOOL sub_222D12A80@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D12A2C();
  *a2 = result;
  return result;
}

unint64_t sub_222D12AB4@<X0>(void *a1@<X8>)
{
  result = sub_222CF25AC();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

BOOL sub_222D12AE4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_222D12A2C();
  *a1 = result;
  return result;
}

uint64_t sub_222D12B10(uint64_t a1)
{
  v2 = sub_222CF2534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D12B4C(uint64_t a1)
{
  v2 = sub_222CF2534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SirikitDeviceRestrictions.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_8();
  v2 = swift_allocObject();
  SirikitDeviceRestrictions.init(from:)(a1);
  return v2;
}

uint64_t SirikitDeviceRestrictions.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C0A0, &qword_222D54DB8);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v16 - v11;
  *(v1 + 16) = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222CF2534();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for SirikitDeviceRestrictions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = sub_222D52F5C();
    (*(v8 + 8))(v12, v5);
    *(v3 + 24) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_222D12DEC(uint64_t a1)
{
  *(a1 + 8) = sub_222D12E54(&qword_27D03BF98);
  result = sub_222D12E54(qword_280D3B310);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D12E54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SirikitDeviceRestrictions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D12E94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SirikitDeviceRestrictions.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_222D131C8()
{
  result = qword_27D03C0A8;
  if (!qword_27D03C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C0A8);
  }

  return result;
}

unint64_t sub_222D13220()
{
  result = qword_280D3B3E0;
  if (!qword_280D3B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3B3E0);
  }

  return result;
}

unint64_t sub_222D13278()
{
  result = qword_280D3B3E8;
  if (!qword_280D3B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3B3E8);
  }

  return result;
}

uint64_t sub_222D132CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C128, &qword_222D55000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222D54FF0;
  *(inited + 32) = 25956;
  *(inited + 40) = 0xE200000000000000;
  if (qword_27D03BCF8 != -1)
  {
    swift_once();
  }

  v1 = qword_27D03C0C0;
  *(inited + 48) = qword_27D03C0C0;
  *(inited + 56) = 0x45445F6564;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v1;
  *(inited + 80) = 28261;
  *(inited + 88) = 0xE200000000000000;
  v2 = qword_27D03BD08;
  swift_bridgeObjectRetain_n();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_27D03C0D0;
  *(inited + 96) = qword_27D03C0D0;
  *(inited + 104) = 0x55415F6E65;
  *(inited + 112) = 0xE500000000000000;
  v4 = qword_27D03BD00;

  if (v4 != -1)
  {
    swift_once();
    v3 = qword_27D03C0D0;
  }

  *(inited + 120) = qword_27D03C0C8;
  *(inited + 128) = 0x42475F6E65;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v3;
  *(inited + 152) = 0x53555F6E65;
  *(inited + 160) = 0xE500000000000000;
  v5 = qword_27D03BD10;

  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 168) = qword_27D03C0D8;
  *(inited + 176) = 29541;
  *(inited + 184) = 0xE200000000000000;
  v6 = qword_27D03BD20;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27D03C0E8;
  *(inited + 192) = qword_27D03C0E8;
  *(inited + 200) = 0x53455F7365;
  *(inited + 208) = 0xE500000000000000;
  v8 = qword_27D03BD18;

  if (v8 != -1)
  {
    swift_once();
    v7 = qword_27D03C0E8;
  }

  *(inited + 216) = qword_27D03C0E0;
  *(inited + 224) = 0x584D5F7365;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = v7;
  *(inited + 248) = 29286;
  *(inited + 256) = 0xE200000000000000;
  v9 = qword_27D03BD58;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27D03C120;
  *(inited + 264) = qword_27D03C120;
  *(inited + 272) = 0x52465F7266;
  *(inited + 280) = 0xE500000000000000;
  *(inited + 288) = v10;
  *(inited + 296) = 0x41435F7266;
  *(inited + 304) = 0xE500000000000000;
  v11 = qword_27D03BD50;
  swift_bridgeObjectRetain_n();
  if (v11 != -1)
  {
    swift_once();
  }

  *(inited + 312) = qword_27D03C118;
  *(inited + 320) = 29801;
  *(inited + 328) = 0xE200000000000000;
  v12 = qword_27D03BD48;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_27D03C110;
  *(inited + 336) = qword_27D03C110;
  *(inited + 344) = 0x54495F7469;
  *(inited + 352) = 0xE500000000000000;
  *(inited + 360) = v13;
  *(inited + 368) = 24938;
  *(inited + 376) = 0xE200000000000000;
  v14 = qword_27D03BD40;
  swift_bridgeObjectRetain_n();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_27D03C108;
  *(inited + 384) = qword_27D03C108;
  *(inited + 392) = 0x504A5F616ALL;
  *(inited + 400) = 0xE500000000000000;
  *(inited + 408) = v15;
  *(inited + 416) = 28523;
  *(inited + 424) = 0xE200000000000000;
  v16 = qword_27D03BD38;
  swift_bridgeObjectRetain_n();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_27D03C100;
  *(inited + 432) = qword_27D03C100;
  *(inited + 440) = 0x524B5F6F6BLL;
  *(inited + 448) = 0xE500000000000000;
  *(inited + 456) = v17;
  *(inited + 464) = 26746;
  *(inited + 472) = 0xE200000000000000;
  v18 = qword_27D03BCF0;
  swift_bridgeObjectRetain_n();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_27D03C0B8;
  *(inited + 480) = qword_27D03C0B8;
  *(inited + 488) = 0x4E435F687ALL;
  *(inited + 496) = 0xE500000000000000;
  *(inited + 504) = v19;
  *(inited + 512) = 0x736E61485F687ALL;
  *(inited + 520) = 0xE700000000000000;
  *(inited + 528) = v19;
  *(inited + 536) = 0x746E61485F687ALL;
  *(inited + 544) = 0xE700000000000000;
  v20 = qword_27D03BD30;
  swift_bridgeObjectRetain_n();
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_27D03C0F8;
  *(inited + 552) = qword_27D03C0F8;
  *(inited + 560) = 0x4B485F687ALL;
  *(inited + 568) = 0xE500000000000000;
  v22 = qword_27D03BD28;

  if (v22 != -1)
  {
    swift_once();
    v21 = qword_27D03C0F8;
  }

  *(inited + 576) = qword_27D03C0F0;
  *(inited + 584) = 0x57545F687ALL;
  *(inited + 592) = 0xE500000000000000;
  *(inited + 600) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C130, &qword_222D55008);
  result = sub_222D528BC();
  qword_27D03C0B0 = result;
  return result;
}

uint64_t sub_222D138BC()
{
  result = sub_222D528BC();
  qword_27D03C0B8 = result;
  return result;
}

uint64_t sub_222D138F8()
{
  result = sub_222D528BC();
  qword_27D03C0C0 = result;
  return result;
}

uint64_t sub_222D13934()
{
  result = sub_222D528BC();
  qword_27D03C0C8 = result;
  return result;
}

uint64_t sub_222D13970()
{
  result = sub_222D528BC();
  qword_27D03C0D0 = result;
  return result;
}

uint64_t sub_222D139AC()
{
  result = sub_222D528BC();
  qword_27D03C0D8 = result;
  return result;
}

uint64_t sub_222D139E8()
{
  result = sub_222D528BC();
  qword_27D03C0E0 = result;
  return result;
}

uint64_t sub_222D13A24()
{
  result = sub_222D528BC();
  qword_27D03C0E8 = result;
  return result;
}

uint64_t sub_222D13A60()
{
  result = sub_222D528BC();
  qword_27D03C0F0 = result;
  return result;
}

uint64_t sub_222D13A9C()
{
  result = sub_222D528BC();
  qword_27D03C0F8 = result;
  return result;
}

uint64_t sub_222D13AD8()
{
  result = sub_222D528BC();
  qword_27D03C100 = result;
  return result;
}

uint64_t sub_222D13B14()
{
  result = sub_222D528BC();
  qword_27D03C108 = result;
  return result;
}

uint64_t sub_222D13B50()
{
  result = sub_222D528BC();
  qword_27D03C110 = result;
  return result;
}

uint64_t sub_222D13B8C()
{
  result = sub_222D528BC();
  qword_27D03C118 = result;
  return result;
}

uint64_t sub_222D13BC8()
{
  result = sub_222D528BC();
  qword_27D03C120 = result;
  return result;
}

void static CATTester.execute(templateDir:catId:parameters:globals:callback:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_73();
  v56 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  v37 = OUTLINED_FUNCTION_34(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = (&v55 - v40);
  v57[0] = *v23;
  v42 = sub_222D13E54(v35, v33, v31, v29, v27, v25, v57);
  v44 = v42;
  if (v43)
  {
    v45 = v43;
    *v41 = v43;
    swift_storeEnumTagMultiPayload();
    v46 = v45;
    v56(v41);
  }

  else
  {
    v47 = v31;
    v48 = v56;
    if (v42)
    {
      v49 = swift_allocObject();
      v49[2] = v48;
      v49[3] = a21;
      v49[4] = v33;
      v49[5] = v47;
      v57[4] = sub_222D144D0;
      v57[5] = v49;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 1107296256;
      v57[2] = sub_222CE3BA4;
      v57[3] = &block_descriptor;
      v50 = _Block_copy(v57);
      v51 = v44;

      [v51 executeWithCompletionBlock_];
      _Block_release(v50);

      goto LABEL_6;
    }

    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    *v41 = sub_222D0B314(0xD00000000000001ALL, v52, v53, v54);
    swift_storeEnumTagMultiPayload();
    v48(v41);
  }

  sub_222CDC59C(v41, &qword_27D03C008, &qword_222D55030);
LABEL_6:
  OUTLINED_FUNCTION_74();
}

id sub_222D13E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v12 = *a7;
  v13 = sub_222D5217C();
  v15 = v14;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14 == 0xE000000000000000;
  }

  if (v16 || (v17 = v13, (sub_222D5305C() & 1) != 0))
  {

    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    sub_222D0B314(0xD000000000000023, v18, v19, v20);
    return 0;
  }

  else
  {
    v44 = a6;
    v22 = sub_222CEE42C(a4);
    v21 = [objc_allocWithZone(MEMORY[0x277D05290]) init];
    v23 = sub_222D520FC();
    sub_222CE8B08(v23, v24, v21, &selRef_setTemplateDir_);
    sub_222CEEA28(a2, a3, v21);
    sub_222CEEA8C(v22);
    v26 = v25;

    sub_222CEECE8(v26, v21);
    v27 = *(a5 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_globalParameters);
    if (v27)
    {
      sub_222CEEA8C(v27);
      v28 = sub_222D5288C();
    }

    else
    {
      v28 = 0;
    }

    OUTLINED_FUNCTION_3_7(v27, sel_setGlobalParameters_);

    sub_222CE8B08(v17, v15, v21, &selRef_setLocale_);
    v29 = *(a5 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_dialogMetadata);
    if (v29)
    {
      sub_222CEED68(v29);
      v30 = sub_222D5288C();
    }

    else
    {
      v30 = 0;
    }

    OUTLINED_FUNCTION_3_7(v29, sel_setDialogMetadata_);

    if (qword_280D3DAE0 != -1)
    {
      swift_once();
    }

    [v21 setDebug_];
    [v21 setTest_];
    if (qword_280D3DB48 != -1)
    {
      swift_once();
    }

    [v21 setResetState_];
    [v21 setEnableUpdates_];
    if (qword_280D3DB28 != -1)
    {
      swift_once();
    }

    [v21 setCreateTrace_];
    [v21 setMultiuser_];
    [v21 setGrounding_];
    v31 = *(a5 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_siriVoiceGender);
    v32 = *(a5 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_siriVoiceGender + 8);
    v33 = sub_222D528FC();
    OUTLINED_FUNCTION_3_7(v33, sel_setVoiceGender_);

    [v21 setRandomSeed_];
    [v21 setCurrentTime_];
    v34 = *(a5 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_userSettings);
    if (v34)
    {
      sub_222CEEA8C(v34);
      v35 = sub_222D5288C();
    }

    else
    {
      v35 = 0;
    }

    OUTLINED_FUNCTION_3_7(v34, sel_setUserSettings_);

    v36 = *(a5 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_customPronunciations);
    if (v36)
    {
      sub_222CEED68(v36);
      v37 = sub_222D5288C();
    }

    else
    {
      v37 = 0;
    }

    OUTLINED_FUNCTION_3_7(v36, sel_setCustomPronunciations_);

    if (*(v44 + 24))
    {
      sub_222CEEFC0(v44, v46, &qword_27D03C020, &unk_222D54A80);
      v38 = swift_allocObject();
      v39 = v46[1];
      *(v38 + 16) = v46[0];
      *(v38 + 32) = v39;
      *(v38 + 48) = v47;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_222D151A0;
      *(v40 + 24) = v38;
      aBlock[4] = sub_222D151A8;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_222D14E84;
      aBlock[3] = &block_descriptor_11;
      v41 = _Block_copy(aBlock);

      OUTLINED_FUNCTION_3_7(v42, sel_setCallback_);
      _Block_release(v41);
    }
  }

  return v21;
}

uint64_t sub_222D143EC(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v14 - v11);
  type metadata accessor for CATResultProvider();
  sub_222D0B42C(a1, a4, a5, v12);
  a2(v12);
  return sub_222CDC59C(v12, &qword_27D03C008, &qword_222D55030);
}

void static CATTester.execute(templateDir:catId:parameters:globals:callback:options:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, id *a8@<X8>)
{
  v19 = *a7;
  v11 = sub_222D13E54(a1, a2, a3, a4, a5, a6, &v19);
  if (v12)
  {
    v13 = v12;

    *a8 = v13;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);

    swift_storeEnumTagMultiPayload();
    return;
  }

  if (!v11)
  {
    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    *a8 = sub_222D0B314(0xD00000000000001DLL, v15, v16, v17);
    goto LABEL_3;
  }

  v14 = v11;
  v18 = [v14 execute];
  type metadata accessor for CATResultProvider();
  sub_222D0B42C(v18, a2, a3, a8);
}

void static CATTester.execute(bundle:catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_73();
  v2 = v1;
  v26 = v3;
  v27 = v4;
  v25 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_222D5210C();
  v15 = OUTLINED_FUNCTION_2_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v2;
  v23 = [objc_opt_self() bundleTemplateDir_];
  if (v23)
  {
    v24 = v23;
    sub_222D5292C();

    sub_222D520BC();

    v28 = v22;
    static CATTester.execute(templateDir:catId:parameters:globals:callback:options:)(v21, v9, v7, v25, v26, v27, &v28, v13);
    (*(v17 + 8))(v21, v0);
    OUTLINED_FUNCTION_74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CATTester.downloadMorphunData(locale:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D05298]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C138, &qword_222D55038);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222D53980;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  LOBYTE(a2) = sub_222D14FCC(v5, v4);

  return a2 & 1;
}

uint64_t static CATTester.downloadMorphunData(locales:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D05298]) init];
  LOBYTE(a1) = sub_222D15030(a1, v2);

  return a1 & 1;
}

uint64_t static CATTester.morphunPath(locale:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D05298]) init];
  result = sub_222D15080(a1, a2, v4);
  if (v6)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static CATTester.morphunPaths()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D05298]) init];
  result = sub_222D15100(v0);
  if (result)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D14AA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_222CEEFC0(a8, &v34, &qword_27D03C020, &unk_222D54A80);
  if (*(&v35 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C148, &qword_222D59880);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C150, &qword_222D55080);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      sub_222CDC59C(&v37, &qword_27D03C140, &qword_222D55068);
      memset(v36, 0, 24);
      *(&v36[1] + 8) = xmmword_222D55020;
      v28 = &unk_27D03C158;
      v29 = &unk_222D55088;
      v30 = v36;
LABEL_33:
      sub_222CDC59C(v30, v28, v29);
      return 0;
    }

    sub_222CE2D34(&v37, v36);
  }

  else
  {
    sub_222CDC59C(&v34, &qword_27D03C020, &unk_222D54A80);
    memset(v36, 0, 40);
  }

  v37 = v36[0];
  v38 = v36[1];
  v39 = *&v36[2];
  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDA8, &unk_222D55070);
    a7 = sub_222D5288C();
  }

  v15 = objc_allocWithZone(type metadata accessor for CATCallbackParams());
  v16 = CATCallbackParams.init(fromParams:)(a7);
  sub_222CEEFC0(&v37, v36, &qword_27D03C140, &qword_222D55068);
  v17 = *(&v36[1] + 1);
  if (!*(&v36[1] + 1))
  {
    sub_222CDC59C(&v37, &qword_27D03C140, &qword_222D55068);

    sub_222CDC59C(v36, &qword_27D03C140, &qword_222D55068);
    v34 = 0u;
    v35 = 0u;
LABEL_32:
    v28 = &qword_27D03BDA8;
    v29 = &unk_222D55070;
    v30 = &v34;
    goto LABEL_33;
  }

  v18 = *&v36[2];
  __swift_project_boxed_opaque_existential_1(v36, *(&v36[1] + 1));
  if (a2)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  v33 = v19;
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  if (a4)
  {
    v21 = a3;
  }

  else
  {
    v21 = 0;
  }

  v22 = a5;
  if (a4)
  {
    v23 = a4;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  if (a6)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = v16;
  if (a6)
  {
    v26 = a6;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v31 = v21;
  v32 = *(v18 + 16);

  v32(&v34, v33, v20, v31, v23, v24, v26, v25, v17, v18);

  sub_222CDC59C(&v37, &qword_27D03C140, &qword_222D55068);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  if (!*(&v35 + 1))
  {
    goto LABEL_32;
  }

  sub_222D151D0();
  if (swift_dynamicCast())
  {
    return *&v36[0];
  }

  else
  {
    return 0;
  }
}

void sub_222D14DEC()
{
  OUTLINED_FUNCTION_73();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v0)
  {
    sub_222D3B5CC(v0);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v2(v14, v12, v10, v8, v6, v4, v16);

  OUTLINED_FUNCTION_74();
}

id sub_222D14E84()
{
  OUTLINED_FUNCTION_73();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);
  if (v9)
  {
    v10 = sub_222D5292C();
    v12 = v11;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (v0)
    {
LABEL_3:
      v13 = sub_222D5292C();
      v5 = v14;
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v13 = 0;
  if (v4)
  {
LABEL_4:
    v15 = sub_222D5292C();
    v4 = v16;
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v15 = 0;
  if (v2)
  {
LABEL_5:
    v2 = sub_222D5289C();
  }

LABEL_6:

  v8(v10, v12, v13, v5, v15, v4, v2);

  OUTLINED_FUNCTION_74();

  return v17;
}

id sub_222D14FCC(uint64_t a1, void *a2)
{
  v3 = sub_222D52B2C();

  v4 = [a2 downloadData_];

  return v4;
}

id sub_222D15030(uint64_t a1, void *a2)
{
  v3 = sub_222D52B2C();
  v4 = [a2 downloadData_];

  return v4;
}

uint64_t sub_222D15080(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222D528FC();
  v5 = [a3 getPath_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_222D5292C();

  return v6;
}

uint64_t sub_222D15100(void *a1)
{
  v1 = [a1 getAllPaths];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222D5289C();

  return v3;
}

void sub_222D151A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222D14DEC();
}

unint64_t sub_222D151D0()
{
  result = qword_280D3B138;
  if (!qword_280D3B138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D3B138);
  }

  return result;
}

uint64_t sub_222D15214(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t sub_222D1523C(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v2;
}

uint64_t sub_222D1531C()
{
  type metadata accessor for DialogArea();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogArea.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t *DialogArea.Builder.deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);
  return v0;
}

uint64_t DialogArea.Builder.__deallocating_deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D15434(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_222D5305C() & 1) != 0 || (a1 == 0x6D69786F72707061 ? (v7 = a2 == 0xEB00000000657461) : (v7 = 0), v7 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0xD000000000000012 ? (v9 = 0x8000000222D5ACF0 == a2) : (v9 = 0), v9 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0xD000000000000013 ? (v10 = 0x8000000222D5AD10 == a2) : (v10 = 0), v10 || (OUTLINED_FUNCTION_1_1() & 1) != 0))))
  {
    sub_222CFA364();
    if (v12)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v8 = swift_allocObject();
      *a3 = v8;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v13;
      v8[5] = v14;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {

    sub_222D1C028(a1, a2, a3);
  }
}

uint64_t DialogArea.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogArea.init(from:)(a1);
}

uint64_t DialogArea.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogArea.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DialogPerson.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  bzero((v0 + 16), 0xCAuLL);
  *(v0 + 272) = 0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return v0;
}

uint64_t sub_222D15944(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = a1[1];
  *(v1 + 7) = *a1;
  *(v1 + 8) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D15A08(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[21];
  v7 = a1[1];
  *(v1 + 9) = *a1;
  *(v1 + 10) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D15A90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_222D15AE8(v4);
}

uint64_t sub_222D15ABC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 176);
}

uint64_t sub_222D15AE8(uint64_t a1)
{
  OUTLINED_FUNCTION_67();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

uint64_t sub_222D15BA4(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[25];
  v6 = v1[26];
  v7 = a1[1];
  *(v1 + 23) = *a1;
  *(v1 + 25) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D15C58(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 216) = a1;
  return result;
}

uint64_t sub_222D15CF8(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 217) = a1;
  return result;
}

uint64_t sub_222D15D70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_222D15DC8(v4);
}

uint64_t sub_222D15D9C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 224);
}

uint64_t sub_222D15DC8(uint64_t a1)
{
  OUTLINED_FUNCTION_67();
  v3 = *(v1 + 224);
  *(v1 + 224) = a1;
}

uint64_t sub_222D15E70(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 232) = a1;
  return result;
}

uint64_t sub_222D15ECC(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 233) = a1;
  return result;
}

double sub_222D15F44(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_17_0(a1);
  v3(v6, v2);
  result = *v6;
  v5 = v6[1];
  *v1 = v6[0];
  v1[1] = v5;
  return result;
}

uint64_t sub_222D15F80(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  sub_222CE3060(v11[0], v6);
  return a5(v11);
}

uint64_t sub_222D16010(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[30];
  v4 = v1[31];
  v5 = v1[32];
  v6 = v1[33];
  v7 = a1[1];
  *(v1 + 15) = *a1;
  *(v1 + 16) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D160C0(char a1)
{
  result = OUTLINED_FUNCTION_67();
  *(v1 + 272) = a1;
  return result;
}

void sub_222D16138()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = v3;
  v1[5] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D161AC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = v3;
  v1[9] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D16220()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = v3;
  v1[13] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D16294()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  v9 = v1[17];
  v1[14] = v2;
  v1[15] = v0;
  v1[16] = v3;
  v1[17] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D16308()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[20];
  v9 = v1[21];
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = v3;
  v1[21] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D1637C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = (*(*a1 + 184))();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_67();
  v4 = *(v2 + 176);
  *(v2 + 176) = v3;
}

void sub_222D163F8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[23];
  v7 = v1[24];
  v8 = v1[25];
  v9 = v1[26];
  v1[23] = v2;
  v1[24] = v0;
  v1[25] = v3;
  v1[26] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D1646C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = (*(*a1 + 240))();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_67();
  v4 = *(v2 + 224);
  *(v2 + 224) = v3;
}

uint64_t sub_222D164E8(char a1)
{
  OUTLINED_FUNCTION_67();
  *(v1 + 233) = a1;
}

void sub_222D16524()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[30];
  v7 = v1[31];
  v8 = v1[32];
  v9 = v1[33];
  v1[30] = v0;
  v1[31] = v2;
  v1[32] = v3;
  v1[33] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D1657C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[30];
  v7 = v1[31];
  v8 = v1[32];
  v9 = v1[33];
  v1[30] = v2;
  v1[31] = v0;
  v1[32] = v3;
  v1[33] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D165F0(char a1)
{
  OUTLINED_FUNCTION_67();
  *(v1 + 272) = a1;
}

double sub_222D166A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v6 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v8 = *(v3 + 32);
    if (v8)
    {
      v10 = *(v3 + 40);
      v9 = *(v3 + 48);
      v11 = *(v3 + 24);
LABEL_8:
      *(a3 + 24) = &type metadata for SpeakableString;
      v12 = swift_allocObject();
      *a3 = v12;
      v12[2] = v11;
      v12[3] = v8;
      v12[4] = v10;
      v12[5] = v9;

      return result;
    }

    goto LABEL_126;
  }

  v14 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
  if (v14 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v8 = *(v3 + 64);
    if (v8)
    {
      v10 = *(v3 + 72);
      v9 = *(v3 + 80);
      v11 = *(v3 + 56);
      goto LABEL_8;
    }

LABEL_126:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v15 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
  if (v15 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v8 = *(v3 + 96);
    if (v8)
    {
      v10 = *(v3 + 104);
      v9 = *(v3 + 112);
      v11 = *(v3 + 88);
      goto LABEL_8;
    }

    goto LABEL_126;
  }

  v16 = a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000;
  if (v16 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v8 = *(v3 + 128);
    if (v8)
    {
      v10 = *(v3 + 136);
      v9 = *(v3 + 144);
      v11 = *(v3 + 120);
      goto LABEL_8;
    }

    goto LABEL_126;
  }

  v17 = a1 == OUTLINED_FUNCTION_38_2() && a2 == 0xE800000000000000;
  if (v17 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    sub_222D16C60(&v41);
    goto LABEL_38;
  }

  v23 = a1 == 0x6E756F6E6F7270 && a2 == 0xE700000000000000;
  if (!v23 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    v26 = a1 == 0x796E61706D6F63 && a2 == 0xE700000000000000;
    if (v26 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v8 = *(v3 + 200);
      if (v8)
      {
        v10 = *(v3 + 208);
        v9 = *(v3 + 216);
        v11 = *(v3 + 192);
        goto LABEL_8;
      }

      goto LABEL_126;
    }

    v27 = a1 == 0xD000000000000015 && 0x8000000222D59A90 == a2;
    if (v27 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v28 = *(v3 + 224);
    }

    else
    {
      v29 = a1 == 0x646574616C6572 && a2 == 0xE700000000000000;
      if (v29 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        v28 = *(v3 + 225);
      }

      else
      {
        v31 = a1 == OUTLINED_FUNCTION_36_3() && a2 == v30;
        if (v31 || (OUTLINED_FUNCTION_49() & 1) != 0)
        {
          v24 = *(v3 + 232);
          if (!v24)
          {
            goto LABEL_126;
          }

          v25 = type metadata accessor for DialogPersonHandle();
          goto LABEL_47;
        }

        v32 = a1 == 0xD000000000000017 && 0x8000000222D59AC0 == a2;
        if (v32 || (OUTLINED_FUNCTION_49() & 1) != 0)
        {
          v28 = *(v3 + 240);
        }

        else
        {
          v33 = a1 == 0xD00000000000001CLL && 0x8000000222D59AE0 == a2;
          if (v33 || (OUTLINED_FUNCTION_49() & 1) != 0)
          {
            v28 = *(v3 + 241);
          }

          else
          {
            v35 = a1 == OUTLINED_FUNCTION_35_3() && a2 == v34;
            if (v35 || (OUTLINED_FUNCTION_49() & 1) != 0)
            {
              v8 = *(v3 + 256);
              if (v8)
              {
                v10 = *(v3 + 264);
                v9 = *(v3 + 272);
                v11 = *(v3 + 248);
                goto LABEL_8;
              }

              goto LABEL_126;
            }

            v36 = a1 == 0xD000000000000013 && 0x8000000222D59B10 == a2;
            if (!v36 && (OUTLINED_FUNCTION_49() & 1) == 0)
            {
              v37 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
              if (!v37 && (OUTLINED_FUNCTION_49() & 1) == 0)
              {
                v38 = a1 == 0x614E656C706D6973 && a2 == 0xEA0000000000656DLL;
                if (!v38 && (OUTLINED_FUNCTION_49() & 1) == 0)
                {
                  v39 = a1 == 0xD000000000000010 && 0x8000000222D5AD90 == a2;
                  if (!v39 && (OUTLINED_FUNCTION_49() & 1) == 0)
                  {
                    v40 = a1 == 0xD000000000000012 && 0x8000000222D5ADB0 == a2;
                    if (!v40 && (OUTLINED_FUNCTION_49() & 1) == 0)
                    {
                      goto LABEL_126;
                    }
                  }
                }
              }

              sub_222CFB804();
LABEL_38:
              v18 = v42;
              if (v42)
              {
                v20 = v43;
                v19 = v44;
                v21 = v41;
                *(a3 + 24) = &type metadata for SpeakableString;
                v22 = swift_allocObject();
                *a3 = v22;
                v22[2] = v21;
                v22[3] = v18;
                v22[4] = v20;
                v22[5] = v19;
                return result;
              }

              goto LABEL_126;
            }

            v28 = *(v3 + 280);
          }
        }
      }
    }

    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v28;
    return result;
  }

  v24 = *(v3 + 184);
  if (!v24)
  {
    goto LABEL_126;
  }

  v25 = type metadata accessor for DialogPronoun();
LABEL_47:
  *(a3 + 24) = v25;
  *a3 = v24;

  return result;
}

uint64_t sub_222D16C60@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[21];
  v5 = v1[22];
  if (v2)
  {
    *a1 = v3;
    a1[1] = v2;
    a1[2] = v4;
    a1[3] = v5;
  }

  else
  {
    OUTLINED_FUNCTION_38_2();
    sub_222CFB804();
  }

  return sub_222CE3060(v3, v2);
}

uint64_t sub_222D16D28()
{
  v0 = sub_222D52ECC();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_222D16D7C(char a1)
{
  result = 0x6D614E6E65766967;
  switch(a1)
  {
    case 1:
      v3 = 0x656C6464696DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
    case 2:
      v3 = 0x796C696D6166;
      return v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
    case 3:
      v4 = 0x616E6B63696ELL;
      goto LABEL_10;
    case 4:
      v4 = 0x614E6C6C7566;
LABEL_10:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 5:
      result = 0x6E756F6E6F7270;
      break;
    case 6:
      result = 0x796E61706D6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x646574616C6572;
      break;
    case 9:
      result = OUTLINED_FUNCTION_36_3();
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = OUTLINED_FUNCTION_35_3();
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D16F2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D16D28();
  *a2 = result;
  return result;
}

unint64_t sub_222D16F5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_222D16D7C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D16FA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D16D74();
  *a1 = result;
  return result;
}

uint64_t sub_222D16FD8(uint64_t a1)
{
  v2 = sub_222D173BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D17014(uint64_t a1)
{
  v2 = sub_222D173BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222D17050(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C160, &qword_222D550E0);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v38 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D173BC();
  sub_222D531AC();
  v14 = OUTLINED_FUNCTION_24_0(*(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
  v39 = 0;
  sub_222CE3060(v14, v15);
  sub_222CF2084();
  OUTLINED_FUNCTION_3_8();
  if (v2)
  {
    OUTLINED_FUNCTION_26();
  }

  else
  {
    OUTLINED_FUNCTION_26();
    v16 = OUTLINED_FUNCTION_24_0(*(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80));
    v39 = 1;
    sub_222CE3060(v16, v17);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v18 = OUTLINED_FUNCTION_24_0(*(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112));
    v39 = 2;
    sub_222CE3060(v18, v19);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v20 = OUTLINED_FUNCTION_24_0(*(v3 + 120), *(v3 + 128), *(v3 + 136), *(v3 + 144));
    v39 = 3;
    sub_222CE3060(v20, v21);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v22 = OUTLINED_FUNCTION_24_0(*(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 176));
    v39 = 4;
    sub_222CE3060(v22, v23);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v40 = *(v3 + 184);
    v39 = 5;
    type metadata accessor for DialogPronoun();
    OUTLINED_FUNCTION_19_3();
    sub_222D17B24(v25, 255, v26);
    OUTLINED_FUNCTION_29_2();
    v27 = OUTLINED_FUNCTION_24_0(*(v3 + 192), *(v3 + 200), *(v3 + 208), *(v3 + 216));
    v39 = 6;
    sub_222CE3060(v27, v28);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v29 = *(v3 + 224);
    OUTLINED_FUNCTION_10_3(7);
    v30 = *(v3 + 225);
    OUTLINED_FUNCTION_10_3(8);
    v40 = *(v3 + 232);
    v39 = 9;
    type metadata accessor for DialogPersonHandle();
    OUTLINED_FUNCTION_20_4();
    sub_222D17B24(v31, 255, v32);
    OUTLINED_FUNCTION_29_2();
    v33 = *(v3 + 240);
    OUTLINED_FUNCTION_10_3(10);
    v34 = *(v3 + 241);
    OUTLINED_FUNCTION_10_3(11);
    v35 = OUTLINED_FUNCTION_24_0(*(v3 + 248), *(v3 + 256), *(v3 + 264), *(v3 + 272));
    v39 = 12;
    sub_222CE3060(v35, v36);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v37 = *(v3 + 280);
    OUTLINED_FUNCTION_10_3(13);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D173BC()
{
  result = qword_280D3CE70;
  if (!qword_280D3CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3CE70);
  }

  return result;
}

uint64_t DialogPerson.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_30_2();
  v2 = swift_allocObject();
  DialogPerson.init(from:)(a1);
  return v2;
}

uint64_t DialogPerson.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C168, &qword_222D550E8);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  *(v1 + 16) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D173BC();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogPerson();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C();
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 24) = v18;
    *(v1 + 40) = v19;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 56) = v18;
    *(v1 + 72) = v19;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 88) = v18;
    *(v1 + 104) = v19;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 120) = v18;
    *(v1 + 136) = v19;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 152) = v18;
    *(v1 + 168) = v19;
    type metadata accessor for DialogPronoun();
    OUTLINED_FUNCTION_19_3();
    sub_222D17B24(v11, 255, v12);
    OUTLINED_FUNCTION_28_3();
    *(v1 + 184) = v18;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 192) = v18;
    *(v1 + 208) = v19;
    *(v1 + 224) = OUTLINED_FUNCTION_9_5(7) & 1;
    *(v1 + 225) = OUTLINED_FUNCTION_9_5(8) & 1;
    type metadata accessor for DialogPersonHandle();
    OUTLINED_FUNCTION_20_4();
    sub_222D17B24(v13, 255, v14);
    OUTLINED_FUNCTION_28_3();
    *(v1 + 232) = v18;
    *(v1 + 240) = OUTLINED_FUNCTION_9_5(10) & 1;
    *(v1 + 241) = OUTLINED_FUNCTION_9_5(11) & 1;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 248) = v18;
    *(v1 + 264) = v19;
    v15 = OUTLINED_FUNCTION_9_5(13);
    v16 = OUTLINED_FUNCTION_4_7();
    v17(v16);
    *(v3 + 280) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_222D17AA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222D17B24(&qword_280D3CB38, a2, type metadata accessor for DialogPerson);
  result = sub_222D17B24(qword_280D3CB40, v3, type metadata accessor for DialogPerson);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D17B24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D17B6C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 352))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DialogPerson.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DialogPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D189B0()
{
  result = qword_27D03C178;
  if (!qword_27D03C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C178);
  }

  return result;
}

unint64_t sub_222D18A08()
{
  result = qword_280D3CE60;
  if (!qword_280D3CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3CE60);
  }

  return result;
}

unint64_t sub_222D18A60()
{
  result = qword_280D3CE68;
  if (!qword_280D3CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3CE68);
  }

  return result;
}

uint64_t sub_222D18AB8(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = a1[1];
  *(v1 + 1) = *a1;
  *(v1 + 2) = v7;
  return sub_222CE2920(v3, v4);
}

double sub_222D18AFC@<D0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  a2(v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  a3[1] = v6;
  return result;
}

uint64_t sub_222D18B3C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  sub_222CE3060(v11[0], v6);
  return a5(v11);
}

double SirikitLocalizedAppName.Builder.__allocating_init()()
{
  OUTLINED_FUNCTION_5_7();
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

double SirikitLocalizedAppName.Builder.init()()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t SirikitLocalizedAppName.Builder.__allocating_init(locale:appName:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_7();
  v4 = swift_allocObject();
  SirikitLocalizedAppName.Builder.init(locale:appName:)(a1, a2);
  return v4;
}

uint64_t SirikitLocalizedAppName.Builder.init(locale:appName:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *a2;
  v16 = *(a1 + 1);
  v17 = *(a2 + 1);
  v6 = a2[3];
  *(v2 + 32) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = 0u;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  *(v2 + 16) = v3;
  *(v2 + 24) = v16;
  *(v2 + 40) = v4;
  sub_222CE2920(v7, v8);
  swift_beginAccess();
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  *(v2 + 48) = v5;
  *(v2 + 56) = v17;
  *(v2 + 72) = v6;
  sub_222CE2920(v11, v12);
  return v2;
}

uint64_t sub_222D18CF4()
{
  type metadata accessor for SirikitLocalizedAppName();
  v0 = swift_allocObject();

  SirikitLocalizedAppName.init(builder:)(v1);
  return v0;
}

uint64_t SirikitLocalizedAppName.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  SirikitLocalizedAppName.init(builder:)(a1);
  return v2;
}

uint64_t *SirikitLocalizedAppName.Builder.deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_222CE2920(v0[2], v0[3]);
  v3 = v0[8];
  v4 = v0[9];
  sub_222CE2920(v0[6], v0[7]);
  return v0;
}

uint64_t SirikitLocalizedAppName.Builder.__deallocating_deinit()
{
  SirikitLocalizedAppName.Builder.deinit();
  v0 = OUTLINED_FUNCTION_5_7();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *SirikitLocalizedAppName.init(builder:)(void *a1)
{
  v1[2] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  swift_beginAccess();
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  v1[7] = v7;
  v1[8] = v8;
  v1[9] = v9;
  v1[10] = v10;
  v17 = *(*v1 + 152);
  sub_222CE3060(v3, v4);
  v11 = sub_222CE3060(v7, v8);
  if ((v17(v11) & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_222D53980;
    v18 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C180, &qword_222D55408);
    v13 = sub_222D5297C();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_222CDDCB0();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_222D5280C();
  }

  return v1;
}

double sub_222D19020@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (!v6 && (sub_222D5305C() & 1) == 0)
  {
    v14 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
    if (v14 || (sub_222D5305C() & 1) != 0)
    {
      v8 = v3[8];
      if (v8)
      {
        v10 = v3[9];
        v9 = v3[10];
        v11 = v3[7];
        goto LABEL_8;
      }
    }

LABEL_18:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_18;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
LABEL_8:
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

  return result;
}

uint64_t sub_222D1914C()
{
  v0 = sub_222D52ECC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D191A0(char a1)
{
  if (a1)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_222D191F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D1914C();
  *a2 = result;
  return result;
}

uint64_t sub_222D19228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D191A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D1925C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D1914C();
  *a1 = result;
  return result;
}

uint64_t sub_222D19284(uint64_t a1)
{
  v2 = sub_222D194E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D192C0(uint64_t a1)
{
  v2 = sub_222D194E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SirikitLocalizedAppName.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_222CE2920(*(v0 + 24), *(v0 + 32));
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  sub_222CE2920(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t SirikitLocalizedAppName.__deallocating_deinit()
{
  SirikitLocalizedAppName.deinit();
  v0 = OUTLINED_FUNCTION_92();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D19360(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C188, &qword_222D55410);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D194E8();
  sub_222D531AC();
  v14 = v3[4];
  v15 = v3[5];
  v16 = v3[6];
  v23 = v3[3];
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v22 = 0;
  sub_222CE3060(v23, v14);
  sub_222CF2084();
  OUTLINED_FUNCTION_6_2();
  sub_222CE2920(v23, v24);
  if (!v2)
  {
    v17 = v3[8];
    v18 = v3[9];
    v19 = v3[10];
    v23 = v3[7];
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v22 = 1;
    sub_222CE3060(v23, v17);
    OUTLINED_FUNCTION_6_2();
    sub_222CE2920(v23, v24);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D194E8()
{
  result = qword_27D03C190;
  if (!qword_27D03C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C190);
  }

  return result;
}

uint64_t SirikitLocalizedAppName.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  SirikitLocalizedAppName.init(from:)(a1);
  return v2;
}

uint64_t SirikitLocalizedAppName.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C198, &qword_222D55418);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D194E8();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for SirikitLocalizedAppName();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C();
    OUTLINED_FUNCTION_3();
    *(v1 + 24) = v12;
    *(v1 + 40) = v13;
    OUTLINED_FUNCTION_3();
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    *(v1 + 56) = v12;
    *(v1 + 72) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D197CC(uint64_t a1)
{
  *(a1 + 8) = sub_222D19834(&qword_27D03C070);
  result = sub_222D19834(&qword_27D03C058);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D19834(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SirikitLocalizedAppName();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D19874@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SirikitLocalizedAppName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D19D2C()
{
  result = qword_27D03C1A0;
  if (!qword_27D03C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C1A0);
  }

  return result;
}

unint64_t sub_222D19D84()
{
  result = qword_27D03C1A8;
  if (!qword_27D03C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C1A8);
  }

  return result;
}

unint64_t sub_222D19DDC()
{
  result = qword_27D03C1B0;
  if (!qword_27D03C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C1B0);
  }

  return result;
}

uint64_t static CATEvaluator.evaluate(typeName:propName:parameters:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_0_7();
  v13 = sub_222D5210C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
  v14 = OUTLINED_FUNCTION_2_8();
  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v14, v15, v16, a3, a4, a5, a6, v17);
  return sub_222D1A39C(v6);
}

void static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_0_7();
  if (sub_222D5217C())
  {
    v19 = 0;
  }

  else
  {
    v19 = v18 == 0xE000000000000000;
  }

  if (v19 || (sub_222D5305C() & 1) != 0)
  {

    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_222D53970;
    v21 = MEMORY[0x277D837D0];
    *(v20 + 56) = MEMORY[0x277D837D0];
    v22 = sub_222CDDCB0();
    *(v20 + 32) = a2;
    *(v20 + 40) = a3;
    *(v20 + 96) = v21;
    *(v20 + 104) = v22;
    *(v20 + 64) = v22;
    *(v20 + 72) = a4;
    *(v20 + 80) = a5;

    sub_222D5280C();

    goto LABEL_9;
  }

  v37 = a1;
  v23 = [objc_allocWithZone(MEMORY[0x277D05288]) init];
  v24 = sub_222D528FC();

  OUTLINED_FUNCTION_1_10(v25, sel_setLocale_);

  v26 = *(a7 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_globalParameters);
  if (v26)
  {
    v26 = sub_222D5288C();
  }

  OUTLINED_FUNCTION_1_10(v26, sel_setGlobalParameters_);
  swift_unknownObjectRelease();
  v27 = *(a7 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_userSettings);
  if (v27)
  {
    v27 = sub_222D5288C();
  }

  OUTLINED_FUNCTION_1_10(v27, sel_setUserSettings_);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  v28 = sub_222D5304C();
  OUTLINED_FUNCTION_1_10(v28, sel_setParameters_);
  swift_unknownObjectRelease();
  v29 = sub_222D528FC();
  OUTLINED_FUNCTION_1_10(v29, sel_setTypeName_);

  v30 = sub_222D528FC();
  OUTLINED_FUNCTION_1_10(v30, sel_setPropName_);

  sub_222CDCA28(v37, v8);
  v31 = sub_222D5210C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v31) == 1)
  {
    sub_222D1A39C(v8);
  }

  else
  {
    sub_222D520FC();
    (*(*(v31 - 8) + 8))(v8, v31);
    v32 = sub_222D528FC();

    OUTLINED_FUNCTION_1_10(v33, sel_setTemplateDir_);
  }

  v34 = [v23 evaluate];
  if (!v34)
  {

LABEL_9:
    *a8 = 0u;
    *(a8 + 16) = 0u;
    return;
  }

  v35 = v34;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v36 = v35;
    sub_222D5291C();
  }

  *(a8 + 24) = sub_222D151D0();

  *a8 = v35;
}

uint64_t sub_222D1A39C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static CATEvaluator.evaluate(bundle:typeName:propName:parameters:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v22 = a4;
  v23 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_0_7();
  v11 = sub_222D5210C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v17 = result;
    sub_222D5292C();

    sub_222D520BC();

    (*(v12 + 16))(v7, v15, v11);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
    v18 = OUTLINED_FUNCTION_2_8();
    static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v18, v19, v20, v22, v23, v24, v25, v21);
    sub_222D1A39C(v7);
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_73();
  v48 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  v29 = OUTLINED_FUNCTION_34(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v47 - v32);
  v49[0] = *v23;
  sub_222CECA4C();
  v36 = v34;
  if (v35)
  {
    v37 = v35;
    *v33 = v35;
    swift_storeEnumTagMultiPayload();
    v38 = v37;
    v48(v33);
  }

  else
  {
    v39 = v25;
    v40 = v48;
    if (v34)
    {
      v41 = swift_allocObject();
      v41[2] = v40;
      v41[3] = a21;
      v41[4] = v27;
      v41[5] = v39;
      v49[4] = sub_222D1AAC0;
      v49[5] = v41;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 1107296256;
      v49[2] = sub_222CE3BA4;
      v49[3] = &block_descriptor_0;
      v42 = _Block_copy(v49);
      v43 = v36;

      [v43 executeWithCompletionBlock_];
      _Block_release(v42);

      goto LABEL_6;
    }

    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    *v33 = sub_222D0B314(0xD00000000000001DLL, v44, v45, v46);
    swift_storeEnumTagMultiPayload();
    v40(v33);
  }

  sub_222CDC59C(v33, &qword_27D03C008, &qword_222D55030);
LABEL_6:
  OUTLINED_FUNCTION_74();
}

void static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X6>, id *a4@<X8>)
{
  v15 = *a3;
  sub_222CECA4C();
  if (v8)
  {
    v9 = v8;

    *a4 = v9;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);

    swift_storeEnumTagMultiPayload();
    return;
  }

  if (!v7)
  {
    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    *a4 = sub_222D0B314(0xD00000000000001DLL, v11, v12, v13);
    goto LABEL_3;
  }

  v10 = v7;
  v14 = [v10 execute];
  type metadata accessor for CATResultProvider();
  sub_222D0B42C(v14, a1, a2, a4);
}

id static CATExecutor.preload()()
{
  v0 = objc_opt_self();

  return [v0 preload];
}

uint64_t sub_222D1A9DC(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v14 - v11);
  type metadata accessor for CATResultProvider();
  sub_222D0B42C(a1, a4, a5, v12);
  a2(v12);
  return sub_222CDC59C(v12, &qword_27D03C008, &qword_222D55030);
}

void static CATExecutor.execute(bundle:catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_73();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_222D5210C();
  v11 = OUTLINED_FUNCTION_113(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_5();
  v18 = v17 - v16;
  v19 = *v1;
  [objc_opt_self() registerBundle_];
  v20 = [objc_opt_self() bundleTemplateDir_];
  if (v20)
  {
    v21 = v20;
    sub_222D5292C();

    sub_222D520BC();

    v22 = v19;
    static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:)(v5, v3, &v22, v9);
    (*(v13 + 8))(v18, v10);
    OUTLINED_FUNCTION_74();
  }

  else
  {
    __break(1u);
  }
}

void static CATExecutor.execute(catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_73();
  v1 = v0;
  v21 = v2;
  v20 = v3;
  v5 = v4;
  v6 = sub_222D5210C();
  v7 = OUTLINED_FUNCTION_113(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_5();
  v14 = v13 - v12;
  v15 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  [objc_opt_self() registerBundle_];
  v18 = [objc_opt_self() bundleTemplateDir_];
  if (v18)
  {
    v19 = v18;
    sub_222D5292C();

    sub_222D520BC();

    v22 = v15;
    static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:)(v20, v21, &v22, v5);

    (*(v9 + 8))(v14, v6);
    OUTLINED_FUNCTION_74();
  }

  else
  {
    __break(1u);
  }
}

id static CATExecutor.registerBundle(bundle:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 registerBundle_];
}

void static CATExecutor.registerBundle(bundle:templateDir:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_222D528FC();
  [v2 registerBundle:a1 withTemplateDir:v3];
}

void static CATExecutor.registerBundle(bundleId:templateDir:)()
{
  v0 = objc_opt_self();
  v1 = sub_222D528FC();
  v2 = sub_222D528FC();
  [v0 registerBundleId:v1 withTemplateDir:v2];
}