_BYTE *storeEnumTagSinglePayload for SupportedSourceLocales(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD8)
  {
    v6 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
        JUMPOUT(0x26940C564);
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
          *result = a2 + 39;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26940C5A0()
{
  result = qword_280310030;
  if (!qword_280310030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310030);
  }

  return result;
}

uint64_t sub_26940C624(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_269424688(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_269424688();
    }
  }

  return result;
}

uint64_t sub_26940C6AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614C746567726174 && a2 == 0xEE0065676175676ELL;
  if (v4 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657361726870 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_269424688();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26940C778(char a1)
{
  sub_269424738();
  MEMORY[0x26D63C2F0](a1 & 1);
  return sub_269424758();
}

uint64_t sub_26940C7C0(char a1)
{
  if (a1)
  {
    return 0x657361726870;
  }

  else
  {
    return 0x614C746567726174;
  }
}

uint64_t sub_26940C810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26940C6AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26940C838(uint64_t a1)
{
  v2 = sub_26940CDD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26940C874(uint64_t a1)
{
  v2 = sub_26940CDD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26940C8B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_26940C8D8()
{
  sub_26940C8B0();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_26940C930(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310050, &qword_269428328);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26940CDD8();
  sub_269424788();
  v14 = v3[2];
  v15 = v3[3];
  v19[15] = 0;
  sub_269424638();
  if (!v2)
  {
    v16 = v3[4];
    v17 = v3[5];
    v19[14] = 1;
    sub_269424638();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_26940CA88(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_26940CAD8(a1);
  return v2;
}

uint64_t sub_26940CAD8(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310040, &qword_269428320);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26940CDD8();
  sub_269424778();
  if (v2)
  {
    type metadata accessor for TranslateAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = sub_2694245E8();
    *(v1 + 24) = v10;
    v12 = sub_2694245E8();
    v14 = v13;
    v15 = OUTLINED_FUNCTION_0_18();
    v16(v15);
    *(v3 + 32) = v12;
    *(v3 + 40) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26940CC98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26940CA88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26940CD0C(void *a1)
{
  a1[1] = sub_26940CD98(&qword_28030FC60);
  a1[2] = sub_26940CD98(&qword_28030FD98);
  result = sub_26940CD98(&qword_280310038);
  a1[3] = result;
  return result;
}

uint64_t sub_26940CD98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TranslateAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26940CDD8()
{
  result = qword_280310048;
  if (!qword_280310048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310048);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranslateAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26940CEF8);
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

unint64_t sub_26940CF34()
{
  result = qword_280310058;
  if (!qword_280310058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310058);
  }

  return result;
}

unint64_t sub_26940CF8C()
{
  result = qword_280310060;
  if (!qword_280310060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310060);
  }

  return result;
}

unint64_t sub_26940CFE4()
{
  result = qword_280310068;
  if (!qword_280310068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310068);
  }

  return result;
}

uint64_t sub_26940D09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_19_5();
  }

  return v10 & 1;
}

uint64_t sub_26940D120(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x6552657361726870;
  }

  if (v2)
  {
    v4 = 0xEF65636E65726566;
  }

  else
  {
    v4 = 0x8000000269428FA0;
  }

  if (a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x6552657361726870;
  }

  if (a2)
  {
    v6 = 0x8000000269428FA0;
  }

  else
  {
    v6 = 0xEF65636E65726566;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_5();
  }

  return v8 & 1;
}

uint64_t sub_26940D1C4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x74616C736E617274;
  }

  else
  {
    v3 = 0x65676175676E616CLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEF6E6F6974634165;
  }

  if (a2)
  {
    v5 = 0x74616C736E617274;
  }

  else
  {
    v5 = 0x65676175676E616CLL;
  }

  if (a2)
  {
    v6 = 0xEF6E6F6974634165;
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
    v8 = OUTLINED_FUNCTION_19_5();
  }

  return v8 & 1;
}

uint64_t sub_26940D264(unsigned __int8 a1, char a2)
{
  v2 = 1954047348;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1954047348;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6570795464726F77;
      break;
    case 2:
      v5 = 0x6974696E69666564;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v5 = 0x7463416B61657073;
      v3 = 0xEB000000006E6F69;
      break;
    case 4:
      v5 = 0x61657053706F7473;
      v3 = 0xEF6E6F697463416BLL;
      break;
    case 5:
      v5 = 0x696669746E656469;
      v3 = 0xEA00000000007265;
      break;
    case 6:
      v5 = 0x617A696E616D6F72;
      v3 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6570795464726F77;
      break;
    case 2:
      v2 = 0x6974696E69666564;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v2 = 0x7463416B61657073;
      v6 = 0xEB000000006E6F69;
      break;
    case 4:
      v2 = 0x61657053706F7473;
      v6 = 0xEF6E6F697463416BLL;
      break;
    case 5:
      v2 = 0x696669746E656469;
      v6 = 0xEA00000000007265;
      break;
    case 6:
      v2 = 0x617A696E616D6F72;
      v6 = 0xEC0000006E6F6974;
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
    v8 = OUTLINED_FUNCTION_19_5();
  }

  return v8 & 1;
}

uint64_t sub_26940D4B8(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x73656E6F746E6163;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6E697261646E616DLL;
    }

    else
    {
      v5 = 0x6573656E696863;
    }

    if (v4 == 1)
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
    v5 = 0x73656E6F746E6163;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6E697261646E616DLL;
    }

    else
    {
      v3 = 0x6573656E696863;
    }

    if (a2 == 1)
    {
      v2 = 0xE800000000000000;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_269424688();
  }

  return v8 & 1;
}

void *sub_26940D5B8(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_269423038();
  v4 = v2;
  if (v3)
  {
    v12[0] = v2;
    v12[1] = v3;
    v11[0] = 45;
    v11[1] = 0xE100000000000000;
    v10[0] = 95;
    v10[1] = 0xE100000000000000;
    sub_2693D50A4();
    v4 = v12;
    OUTLINED_FUNCTION_11_8(v11, v10, v5, v6, v7, v8, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_26_2();
  }

  return v4;
}

void sub_26940D664()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDB0, &qword_2694275A8);
  v5 = OUTLINED_FUNCTION_12_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  type metadata accessor for NLConverter();
  v10 = sub_26940D5B8(v3);
  v12 = v10;
  v13 = v11;
  if (v11)
  {
    v14 = v10 == 0x41535F7261 && v11 == 0xE500000000000000;
    if (v14 || (sub_269424688() & 1) != 0)
    {

      v13 = 0xE500000000000000;
      v12 = 0x45415F7261;
    }
  }

  sub_269410938(v1, v9, &qword_28030FDB0, &qword_2694275A8);
  sub_269423FC8();
  v15 = OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_109(v15);
  if (v14)
  {
    sub_2693FD518(v9, &qword_28030FDB0, &qword_2694275A8);
  }

  else
  {

    v16 = sub_269423FA8();
    v17 = sub_269424368();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = OUTLINED_FUNCTION_17_0();
      v20 = OUTLINED_FUNCTION_16_0();
      v25[2] = v13;
      v26 = v20;
      *v19 = 136315138;
      v25[1] = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      v21 = sub_269424128();
      v23 = sub_2693DB6E0(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2693C9000, v16, v17, "Source locale: %s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_20_5(v1);
    (*(v24 + 8))(v9, v1);
  }

  OUTLINED_FUNCTION_16_3();
}

void sub_26940D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_3();
  v131 = v24;
  v132 = v25;
  v27 = v26;
  v136 = v28;
  v30 = v29;
  v134 = v31;
  v33 = v32;
  v35 = v34;
  v36 = a24;
  v37 = sub_269422D48();
  OUTLINED_FUNCTION_0_19();
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_5();
  v130 = v44 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDB0, &qword_2694275A8);
  v46 = OUTLINED_FUNCTION_12_2(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v128 = &v127 - v49;

  v50 = sub_269423FA8();
  v51 = sub_269424368();

  v52 = os_log_type_enabled(v50, v51);
  v135 = a24;
  v133 = v33;
  if (v52)
  {
    v53 = OUTLINED_FUNCTION_16_0();
    v129 = v35;
    v54 = v53;
    v55 = swift_slowAlloc();
    v127 = v55;
    *v54 = 136315650;
    v137 = v55;
    v138 = v129;
    v139 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v56 = sub_269424128();
    v57 = v39;
    v58 = v37;
    v60 = sub_2693DB6E0(v56, v59, &v137);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2080;
    v138 = v134;
    v139 = v30;

    v61 = sub_269424128();
    v63 = sub_2693DB6E0(v61, v62, &v137);

    *(v54 + 14) = v63;
    v37 = v58;
    v39 = v57;
    *(v54 + 22) = 2080;
    v36 = v135;
    v138 = v136;
    v139 = v27;

    v64 = sub_269424128();
    v66 = sub_2693DB6E0(v64, v65, &v137);

    *(v54 + 24) = v66;
    _os_log_impl(&dword_2693C9000, v50, v51, "intentTargetLanguage: %s intentPhrase: %s intentSourceLanguage: %s", v54, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_10();
    v35 = v129;
    OUTLINED_FUNCTION_6_0();
  }

  if (v30)
  {
    v67 = v134;
  }

  else
  {
    v67 = 0;
  }

  if (v30)
  {
    v68 = v30;
  }

  else
  {
    v68 = 0xE000000000000000;
  }

  if (v27)
  {

    v69 = v27;
  }

  else
  {
    v134 = v37;
    v70 = sub_269423FC8();
    OUTLINED_FUNCTION_4_5(v70);
    v72 = v128;
    (*(v71 + 16))(v128, v36, v70);
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v70);

    sub_26940D664();
    v136 = v73;
    v69 = v74;
    sub_2693FD518(v72, &qword_28030FDB0, &qword_2694275A8);
    if (!v69)
    {
      goto LABEL_17;
    }

    v37 = v134;
  }

  swift_bridgeObjectRetain_n();

  v75 = v130;
  sub_269422D28();
  v76 = String.firstConditionallyCapitalized(with:)(v75, v67, v68);
  v78 = v77;

  (*(v39 + 8))(v75, v37);

  v79 = sub_269423FA8();
  v80 = sub_269424368();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v81 = 136315394;

    v82 = sub_2693DB6E0(v76, v78, &v138);

    *(v81 + 4) = v82;
    *(v81 + 12) = 2080;
    v83 = sub_2693DB6E0(v136, v69, &v138);

    *(v81 + 14) = v83;
    _os_log_impl(&dword_2693C9000, v79, v80, "Capitalized intentPhrase: %s intentSourceLanguage: %s", v81, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

LABEL_17:
  v84 = v133;
  [objc_allocWithZone(type metadata accessor for TranslatePhraseIntent()) init];
  if (v84)
  {
    v85 = v35;
  }

  else
  {
    v85 = 0;
  }

  if (v84)
  {
    v86 = v84;
  }

  else
  {
    v86 = 0xE000000000000000;
  }

  v87._countAndFlagsBits = v85;
  v87._object = v86;
  TranslationLanguages.init(rawValue:)(v87);
  OUTLINED_FUNCTION_5_1();
  if (v89)
  {

    switch(sub_2693D8BA0())
    {
      case 3u:
        if (v133)
        {
        }

        break;
      default:
        break;
    }
  }

  else
  {
    TranslationLanguages.rawValue.getter(v88);
  }

  v134 = a22;
  v90 = sub_269424108();

  OUTLINED_FUNCTION_34_4();
  v91 = sub_269424108();
  v92 = OUTLINED_FUNCTION_15_9();
  [v92 v93];

  v94 = sub_269424108();

  v95 = OUTLINED_FUNCTION_38_2();
  v96 = OUTLINED_FUNCTION_15_9();
  [v96 v97];

  if (v69)
  {

    v98 = sub_269424108();
  }

  else
  {
    v98 = 0;
  }

  OUTLINED_FUNCTION_32_2();
  v99 = sub_269424108();
  v100 = OUTLINED_FUNCTION_15_9();
  [v100 v101];
  swift_unknownObjectRelease();

  if (v131 == 2)
  {
    v102 = 0;
  }

  else
  {
    v103 = 0x8000000269428FA0;
    if (v131)
    {
      v104 = 0xD000000000000017;
    }

    else
    {
      v104 = 0x6552657361726870;
    }

    if ((v131 & 1) == 0)
    {
      v103 = 0xEF65636E65726566;
    }

    v138 = v104;
    v139 = v103;
    v102 = sub_269424678();
    sub_2694108E4(&v138);
  }

  v105 = sub_269424108();
  v106 = OUTLINED_FUNCTION_15_9();
  [v106 v107];
  swift_unknownObjectRelease();

  v108 = sub_2694242E8();
  v109 = sub_269424108();
  v110 = OUTLINED_FUNCTION_15_9();
  [v110 v111];

  type metadata accessor for ConverterUtils();
  sub_269411F8C(v134);
  v112 = sub_2694242E8();
  v113 = sub_269424108();
  v114 = OUTLINED_FUNCTION_15_9();
  [v114 v115];

  v116 = sub_2694242E8();
  v117 = sub_269424108();
  v118 = OUTLINED_FUNCTION_15_9();
  [v118 v119];

  v120 = sub_269423FA8();
  v121 = sub_269424368();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = OUTLINED_FUNCTION_17_0();
    v123 = OUTLINED_FUNCTION_16_0();
    v138 = v123;
    *v122 = 136315138;
    LOBYTE(v137) = a21 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310098, qword_2694284A0);
    v124 = sub_269424128();
    v126 = sub_2693DB6E0(v124, v125, &v138);

    *(v122 + 4) = v126;

    _os_log_impl(&dword_2693C9000, v120, v121, "Confirmation value: %s.", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v123);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_26940E238()
{
  sub_269423468();
  if (qword_28030F168 != -1)
  {
    swift_once();
  }

  v0 = qword_2803150A8;
  v1 = type metadata accessor for SiriReferenceResolutionConverter();
  v22[3] = v1;
  v22[4] = &off_2879F5168;
  v22[0] = v0;
  v2 = type metadata accessor for NLConverter();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v22, v1);
  OUTLINED_FUNCTION_0_19();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_5();
  v11 = (v10 - v9);
  (*(v12 + 16))(v10 - v9);
  v13 = *v11;
  v20 = v1;
  v21 = &off_2879F5168;
  *&v19 = v13;
  v14 = OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_log;
  v15 = qword_28030F078;
  swift_retain_n();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_269423FC8();
  __swift_project_value_buffer(v16, qword_280314E28);
  OUTLINED_FUNCTION_20_5(v16);
  (*(v17 + 16))(v5 + v14);
  sub_2693DBCC8(&v23, v5 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState);
  sub_2693DBCC8(&v19, v5 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_srrEntityProvider);
  __swift_destroy_boxed_opaque_existential_1(v22);

  qword_280315088 = v5;
  return result;
}

uint64_t sub_269410670()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_log;
  v2 = sub_269423FC8();
  OUTLINED_FUNCTION_4_5(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_srrEntityProvider));
  return v0;
}

uint64_t sub_2694106E8()
{
  sub_269410670();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NLConverter()
{
  result = qword_280310088;
  if (!qword_280310088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269410794()
{
  result = sub_269423FC8();
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

unint64_t sub_269410830()
{
  result = qword_28030FE70;
  if (!qword_28030FE70)
  {
    type metadata accessor for TranslationNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FE70);
  }

  return result;
}

uint64_t sub_269410888(uint64_t a1)
{
  v2 = type metadata accessor for TranslationNLIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269410938(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_5(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_1_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_2_10()
{

  JUMPOUT(0x26D63C8E0);
}

BOOL OUTLINED_FUNCTION_8_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x28211F2F8](a1, a2, 0, 0, 0, 1, a7, a7);
}

BOOL OUTLINED_FUNCTION_12_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_2694237D8();
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_269424688();
}

void OUTLINED_FUNCTION_21_5()
{
  if ((v0 & 0x2000000000000000) == 0)
  {
    v2 = *(v1 - 352) & 0xFFFFFFFFFFFFLL;
  }
}

uint64_t OUTLINED_FUNCTION_24_4()
{
  v2 = *(v0 - 304);

  return sub_269423FA8();
}

uint64_t OUTLINED_FUNCTION_28_2()
{
  *(v2 - 344) = v0;
  *(v2 - 104) = v0;
  *(v2 - 96) = v1;
  v4 = *(v2 - 360);
}

uint64_t OUTLINED_FUNCTION_30_3()
{
}

id OUTLINED_FUNCTION_37_3()
{

  return [v1 (v0 + 3192)];
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return sub_269424108();
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 392);

  return sub_2693FD518(v5, a2, a3);
}

uint64_t sub_269410C20()
{
  sub_2694120D8();
  if (!v1)
  {

    sub_269423798();
    if (v26)
    {
      sub_269423918();
      if (OUTLINED_FUNCTION_4_10())
      {

        if (qword_28030F160 != -1)
        {
          OUTLINED_FUNCTION_0_20();
          swift_once();
        }

        v3 = sub_269423FC8();
        __swift_project_value_buffer(v3, qword_280315090);
        v4 = sub_269423FA8();
        v5 = sub_269424368();
        v6 = OUTLINED_FUNCTION_16_6();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_33_1();
        v8 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_8(v8);
        v9 = "Got translate task.";
LABEL_22:
        _os_log_impl(&dword_2693C9000, v4, v5, v9, v2, 2u);
        OUTLINED_FUNCTION_12_5();
        MEMORY[0x26D63C8E0]();
LABEL_23:

        v0 = 1;
LABEL_30:

        return v0 & 1;
      }
    }

    else
    {
      sub_2693CDA8C(v25, &qword_280310008, &qword_269427FA8);
    }

    sub_269423798();
    if (v26)
    {
      sub_2694238C8();
      if (OUTLINED_FUNCTION_4_10())
      {

        if (qword_28030F160 != -1)
        {
          OUTLINED_FUNCTION_0_20();
          swift_once();
        }

        v10 = sub_269423FC8();
        __swift_project_value_buffer(v10, qword_280315090);
        v4 = sub_269423FA8();
        v5 = sub_269424368();
        v11 = OUTLINED_FUNCTION_16_6();
        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_33_1();
        v13 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_8(v13);
        v9 = "Got noVerb task.";
        goto LABEL_22;
      }
    }

    else
    {
      sub_2693CDA8C(v25, &qword_280310008, &qword_269427FA8);
    }

    sub_269423798();

    if (v26)
    {
      sub_2694239C8();
      if (OUTLINED_FUNCTION_4_10())
      {
        if (qword_28030F160 != -1)
        {
          OUTLINED_FUNCTION_0_20();
          swift_once();
        }

        v14 = sub_269423FC8();
        __swift_project_value_buffer(v14, qword_280315090);
        v4 = sub_269423FA8();
        v5 = sub_269424368();
        v15 = OUTLINED_FUNCTION_16_6();
        if (!os_log_type_enabled(v15, v16))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_33_1();
        v17 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_8(v17);
        v9 = "Got discoverCapabilities task.";
        goto LABEL_22;
      }
    }

    else
    {
      sub_2693CDA8C(v25, &qword_280310008, &qword_269427FA8);
    }

    if (qword_28030F160 != -1)
    {
      OUTLINED_FUNCTION_0_20();
      swift_once();
    }

    v18 = sub_269423FC8();
    __swift_project_value_buffer(v18, qword_280315090);
    v19 = sub_269423FA8();
    v20 = sub_269424378();
    v21 = OUTLINED_FUNCTION_16_6();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_33_1();
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2693C9000, v19, v20, "userStartUSOGraph is NOT a supported task.", v23, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    v0 = 0;
    goto LABEL_30;
  }

  return v0 & 1;
}

uint64_t sub_269410F8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_2694110B8(uint64_t a1, char *a2, void (*a3)(void), const char *a4)
{
  sub_2694120D8();
  if (!v4)
  {
    if (qword_28030F160 != -1)
    {
      OUTLINED_FUNCTION_0_20();
      swift_once();
    }

    v9 = sub_269423FC8();
    __swift_project_value_buffer(v9, qword_280315090);
    v10 = sub_269423FA8();
    v11 = sub_269424368();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_33_1();
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2693C9000, v10, v11, a2, v12, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    sub_269423798();

    if (v19[3])
    {
      a3(0);
      if (swift_dynamicCast())
      {

        v8 = 1;
        return v8 & 1;
      }
    }

    else
    {
      sub_2693CDA8C(v19, &qword_280310008, &qword_269427FA8);
    }

    v13 = sub_269423FA8();
    v14 = sub_269424378();
    v15 = OUTLINED_FUNCTION_16_6();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_33_1();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_8(v17);
      _os_log_impl(&dword_2693C9000, v13, v14, a4, a2, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    v8 = 0;
  }

  return v8 & 1;
}

BOOL sub_2694112A0()
{
  v1 = sub_269423458();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_11();
  v7 = *(v4 + 16);
  v8 = OUTLINED_FUNCTION_3_11();
  v9(v8);
  v10 = (*(v4 + 88))(v0, v1) == *MEMORY[0x277D5C160];
  (*(v4 + 8))(v0, v1);
  return v10;
}

uint64_t sub_269411390(char *a1)
{
  v99 = a1;
  v1 = sub_269423538();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v91 - v11;
  v96 = sub_2694234E8();
  v13 = OUTLINED_FUNCTION_2(v96);
  v98 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v92 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v94 = &v91 - v20;
  v21 = sub_269423488();
  v22 = OUTLINED_FUNCTION_2(v21);
  v97 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_269423458();
  v29 = OUTLINED_FUNCTION_2(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10();
  v91 = v34 - v35;
  v37 = MEMORY[0x28223BE20](v36);
  v95 = &v91 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v91 - v39;
  v93 = *(v31 + 16);
  v93(&v91 - v39, v99, v28);
  if ((*(v31 + 88))(v40, v28) == *MEMORY[0x277D5C160])
  {
    (*(v31 + 96))(v40, v28);
    v41 = *(v97 + 32);
    v95 = v21;
    v41(v27, v40, v21);
    v42 = v94;
    v99 = v27;
    sub_269423478();
    v43 = sub_2694234D8();
    v44 = *(v98 + 1);
    v98 += 8;
    v94 = v44;
    (v44)(v42, v96);
    v45 = 0;
    v46 = *(v43 + 16);
    v31 = v4 + 16;
    v28 = v4 + 8;
    while (1)
    {
      if (v46 == v45)
      {

        v74 = v92;
        v75 = v99;
        sub_269423478();
        v76 = sub_2694234D8();
        (v94)(v74, v96);
        v77 = 0;
        v78 = *(v76 + 16);
        do
        {
          if (v78 == v77)
          {
            (*(v97 + 8))(v75, v95);

            return 0;
          }

          if (v77 >= *(v76 + 16))
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_9_9();
          (*(v4 + 16))(v9, v79 + v80 * v77++, v1);
          v81 = sub_269423518();
          (*(v4 + 8))(v9, v1);
        }

        while ((v81 & 1) == 0);

        if (qword_28030F160 != -1)
        {
          OUTLINED_FUNCTION_0_20();
          swift_once();
        }

        v82 = sub_269423FC8();
        __swift_project_value_buffer(v82, qword_280315090);
        v83 = sub_269423FA8();
        v84 = sub_269424368();
        v85 = os_log_type_enabled(v83, v84);
        v86 = v95;
        v87 = v97;
        if (v85)
        {
          OUTLINED_FUNCTION_33_1();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_2(&dword_2693C9000, v88, v89, "ConfirmSettingsIntentStrategy userDialogAct is UserCancelled");
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        (*(v87 + 8))(v75, v86);
        return 1;
      }

      if (v45 >= *(v43 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_9_9();
      (*(v4 + 16))(v12, v47 + v48 * v45++, v1);
      v49 = sub_269423508();
      (*(v4 + 8))(v12, v1);
      if (v49)
      {

        if (qword_28030F160 != -1)
        {
          OUTLINED_FUNCTION_0_20();
          swift_once();
        }

        v50 = sub_269423FC8();
        __swift_project_value_buffer(v50, qword_280315090);
        v51 = sub_269423FA8();
        v52 = sub_269424368();
        v53 = os_log_type_enabled(v51, v52);
        v54 = v95;
        v55 = v97;
        v56 = v99;
        if (v53)
        {
          OUTLINED_FUNCTION_33_1();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_2(&dword_2693C9000, v57, v58, "ConfirmSettingsIntentStrategy userDialogAct is UserRejected");
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        (*(v55 + 8))(v56, v54);
        return 1;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v98 = v40;
    if (qword_28030F160 == -1)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_0_20();
  swift_once();
LABEL_12:
  v59 = sub_269423FC8();
  __swift_project_value_buffer(v59, qword_280315090);
  v60 = v95;
  v61 = v93;
  v93(v95, v99, v28);
  v62 = sub_269423FA8();
  v63 = sub_269424378();
  v64 = OUTLINED_FUNCTION_16_6();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v100 = v67;
    *v66 = 136315138;
    v61(v91, v60, v28);
    v68 = sub_269424128();
    v69 = v60;
    v71 = v70;
    v72 = *(v31 + 8);
    v72(v69, v28);
    v73 = sub_2693DB6E0(v68, v71, &v100);

    *(v66 + 4) = v73;
    _os_log_impl(&dword_2693C9000, v62, v63, "ConfirmSettingsIntentStrategy received unsupported parse object: %s.", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  else
  {

    v72 = *(v31 + 8);
    v72(v60, v28);
  }

  v72(v98, v28);
  return 0;
}

id sub_269411B2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100A0, &qword_2694284D8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v39 - v3;
  v5 = sub_269423748();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_11();
  sub_269423878();
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = sub_269423628();
  if (!v12)
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    goto LABEL_18;
  }

  sub_269410F8C(v12, MEMORY[0x277D5E688], v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
LABEL_18:
    sub_2693CDA8C(v4, &qword_2803100A0, &qword_2694284D8);
LABEL_21:
    LOBYTE(v24) = 0;
    return (v24 & 1);
  }

  (*(v8 + 32))(v0, v4, v5);
  sub_269423C48();
  if (!sub_269423C28())
  {
    goto LABEL_20;
  }

  sub_269423C18();

  v13 = sub_269423F18();

  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = [v13 recognition];
  if (!v14 || (v14, (v15 = [v13 unfilteredRecognition]) == 0))
  {

LABEL_20:
    v27 = *(v8 + 8);
    v28 = OUTLINED_FUNCTION_3_11();
    v29(v28);
    goto LABEL_21;
  }

  result = [v13 recognition];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v17 = result;
  v18 = sub_269412A94();
  v20 = v19;

  if (!v20)
  {
    v30 = *(v8 + 8);
    v31 = OUTLINED_FUNCTION_3_11();
    v32(v31);

    goto LABEL_21;
  }

  result = [v13 unfilteredRecognition];
  if (result)
  {
    v21 = result;
    v22 = sub_269412A94();
    v24 = v23;

    if (v24)
    {
      if (v18 == v22 && v20 == v24)
      {

        LOBYTE(v24) = 0;
      }

      else
      {
        v26 = sub_269424688();

        LOBYTE(v24) = v26 ^ 1;
      }

      v36 = *(v8 + 8);
      v37 = OUTLINED_FUNCTION_3_11();
      v38(v37);
    }

    else
    {
      v33 = *(v8 + 8);
      v34 = OUTLINED_FUNCTION_3_11();
      v35(v34);
    }

    return (v24 & 1);
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_269411EA4()
{
  sub_269423788();
  if (v8 && (v0 = sub_2694237E8(), , v0) && (sub_269423888(), v2 = v1, , v2))
  {

    return 0;
  }

  else
  {
    sub_269423788();
    if (v8 && (v4 = sub_2694237F8(), , v4) && (v5 = sub_2694238A8(), , v5) && (sub_2694237B8(), v7 = v6, , v7))
    {

      return 1;
    }

    else
    {
      return 2;
    }
  }
}

BOOL sub_269411F8C(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    if (*(v1 - 1) == 0x74696E61666F7270 && *v1 == 0xE900000000000079)
    {
      break;
    }

    v1 += 2;
  }

  while ((sub_269424688() & 1) == 0);
  return v2 != 0;
}

uint64_t sub_269412010()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280315090);
  v1 = __swift_project_value_buffer(v0, qword_280315090);
  if (qword_28030F078 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280314E28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2694120D8()
{
  v0 = sub_269423588();
  v63 = *(v0 - 8);
  v64 = v0;
  v1 = *(v63 + 64);
  MEMORY[0x28223BE20](v0);
  v62 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269423538();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v59 - v9;
  v10 = sub_2694234C8();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v59 - v14;
  if (qword_28030F160 != -1)
  {
LABEL_32:
    swift_once();
  }

  v15 = sub_269423FC8();
  v69 = __swift_project_value_buffer(v15, qword_280315090);
  v16 = sub_269423FA8();
  v17 = sub_269424368();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2693C9000, v16, v17, "Getting first user dialog act.", v18, 2u);
    MEMORY[0x26D63C8E0](v18, -1, -1);
  }

  v19 = sub_2694234D8();
  v20 = 0;
  v21 = *(v19 + 16);
  while (1)
  {
    if (v21 == v20)
    {

      v22 = sub_269423FA8();
      v23 = sub_269424378();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2693C9000, v22, v23, "No first userStatedTask found", v24, 2u);
        MEMORY[0x26D63C8E0](v24, -1, -1);
      }

      v25 = sub_269423C78();
      sub_269412E00();
      swift_allocError();
      *v26 = 0xD000000000000039;
      v26[1] = 0x800000026942A190;
      (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D61E00], v25);
      swift_willThrow();
      return v25;
    }

    if (v20 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    (*(v4 + 16))(v8, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v3);
    if (sub_2694234F8())
    {
      break;
    }

    ++v20;
    (*(v4 + 8))(v8, v3);
  }

  v27 = v61;
  (*(v4 + 32))(v61, v8, v3);
  v28 = v62;
  sub_269423528();
  (*(v4 + 8))(v27, v3);
  v29 = v60;
  sub_269423578();
  (*(v63 + 8))(v28, v64);
  v31 = v66;
  v30 = v67;
  v32 = v68;
  (*(v67 + 32))(v66, v29, v68);
  v33 = sub_269423FA8();
  v34 = sub_269424368();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2693C9000, v33, v34, "Converting from swift to protobuf.", v35, 2u);
    MEMORY[0x26D63C8E0](v35, -1, -1);
  }

  v36 = v65;
  v37 = sub_2694235C8();
  if (v36)
  {

    v38 = sub_269423FA8();
    v39 = sub_269424378();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2693C9000, v38, v39, "userDialogAct.userStarted.task serialization error", v40, 2u);
      MEMORY[0x26D63C8E0](v40, -1, -1);
    }

    v25 = sub_269423C78();
    sub_269412E00();
    swift_allocError();
    *v41 = 0xD00000000000004ELL;
    v41[1] = 0x800000026942A140;
    (*(*(v25 - 8) + 104))(v41, *MEMORY[0x277D61E00], v25);
    swift_willThrow();
LABEL_18:
    (*(v30 + 8))(v31, v32);
    return v25;
  }

  v43 = v37;
  v44 = sub_269423FA8();
  v45 = sub_269424368();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_2693C9000, v44, v45, "Converting to graph.", v46, 2u);
    MEMORY[0x26D63C8E0](v46, -1, -1);
  }

  v47 = MEMORY[0x26D63B2C0](v43);
  if (!sub_26941C9D4())
  {

    v55 = sub_269423FA8();
    v56 = sub_269424378();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2693C9000, v55, v56, "userStartUSOGraph has no tasks", v57, 2u);
      MEMORY[0x26D63C8E0](v57, -1, -1);
    }

    v25 = sub_269423C78();
    sub_269412E00();
    swift_allocError();
    *v58 = 0xD00000000000003ALL;
    v58[1] = 0x800000026942A100;
    (*(*(v25 - 8) + 104))(v58, *MEMORY[0x277D61E00], v25);
    swift_willThrow();

    goto LABEL_18;
  }

  sub_26942008C(0, (v47 & 0xC000000000000001) == 0, v47);
  if ((v47 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x26D63C060](0, v47);
  }

  else
  {
    v25 = *(v47 + 32);
  }

  v48 = sub_269423FA8();
  v49 = sub_269424368();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v71 = v51;
    *v50 = 136315138;
    v70 = v25;
    sub_2694239D8();

    v52 = sub_269424128();
    v54 = sub_2693DB6E0(v52, v53, &v71);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_2693C9000, v48, v49, "Got first task: %s.", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x26D63C8E0](v51, -1, -1);
    MEMORY[0x26D63C8E0](v50, -1, -1);

    (*(v67 + 8))(v66, v68);
  }

  else
  {

    (*(v30 + 8))(v31, v32);
  }

  return v25;
}

uint64_t sub_269412A94()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100A8, qword_2694284E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v46 - v4;
  v6 = sub_269423688();
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_11();
  v12 = sub_269423738();
  sub_269410F8C(v12, MEMORY[0x277D5E500], v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2693CDA8C(v5, &qword_2803100A8, qword_2694284E0);
    return 0;
  }

  (*(v9 + 32))(v1, v5, v6);
  v13 = sub_269412DA8(v0);
  if (!v13)
  {
    v25 = *(v9 + 8);
    v26 = OUTLINED_FUNCTION_3_11();
    v27(v26);
    return 0;
  }

  v14 = v13;
  if (*(v13 + 16) <= sub_269423728())
  {
    v28 = *(v9 + 8);
    v29 = OUTLINED_FUNCTION_3_11();
    v30(v29);
    goto LABEL_11;
  }

  result = sub_269423728();
  if (*(v14 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    v16 = v14 + 16 * result;
    v18 = *(v16 + 32);
    v17 = *(v16 + 40);

    sub_269423668();
    v19 = sub_269423668();
    if (v19 >= sub_269423678() || (v20 = sub_269423678(), , v21 = MEMORY[0x26D63BDA0](v18, v17), , v21 < v20))
    {
      v22 = *(v9 + 8);
      v23 = OUTLINED_FUNCTION_3_11();
      v24(v23);
LABEL_11:

      return 0;
    }

    v32 = sub_269423668();
    v33 = OUTLINED_FUNCTION_11_9(v32);

    v34 = sub_269423678();
    v35 = OUTLINED_FUNCTION_11_9(v34);

    if (v35 >> 14 >= v33 >> 14)
    {
      v36 = MEMORY[0x26D63BDC0](v33, v35, v18, v17);
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v31 = MEMORY[0x26D63BDE0](v36, v38, v40, v42);
      v43 = *(v9 + 8);
      v44 = OUTLINED_FUNCTION_3_11();
      v45(v44);
      return v31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269412DA8(void *a1)
{
  v1 = [a1 nBestTranscripts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269424288();

  return v3;
}

unint64_t sub_269412E00()
{
  result = qword_280310010;
  if (!qword_280310010)
  {
    sub_269423C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310010);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_9(unsigned int a1)
{

  return MEMORY[0x2821FBF10](15, a1, v2, v1);
}

uint64_t sub_269412EF8()
{
  v0 = sub_269423F68();
  v1 = sub_269423F58();
  v12 = v0;
  v13 = MEMORY[0x277D5FDD8];
  *&v11 = v1;
  v2 = type metadata accessor for SiriReferenceResolutionConverter();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_log;
  v7 = qword_28030F0C0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_269423FC8();
  v9 = __swift_project_value_buffer(v8, qword_280314F00);
  (*(*(v8 - 8) + 16))(v5 + v6, v9, v8);

  result = sub_2693DBCC8(&v11, v5 + OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_rReferenceResolverProtocol);
  qword_2803150A8 = v5;
  return result;
}

uint64_t sub_269413010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269423FE8();
  v5 = OUTLINED_FUNCTION_2(v4);
  v81 = v6;
  v82 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10();
  v80 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v84 = v75 - v12;
  v13 = sub_269424048();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10();
  v83 = (v19 - v20);
  MEMORY[0x28223BE20](v21);
  v23 = v75 - v22;
  v24 = sub_269424008();
  v25 = OUTLINED_FUNCTION_2(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  v31 = (v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100C8, qword_269428580);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  if (a1)
  {
    v76 = v23;
    v77 = v16;
    v78 = v13;
    v79 = v75 - v38;
    v85 = a2;
    v39 = OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_rReferenceResolverProtocol;
    sub_2693DBDF8(v86 + OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_rReferenceResolverProtocol, v87);
    __swift_project_boxed_opaque_existential_1(v87, v88);

    v40 = sub_269423F78();
    __swift_destroy_boxed_opaque_existential_1(v87);
    if (v40)
    {
      sub_2693DBDF8(v86 + v39, v87);
      __swift_project_boxed_opaque_existential_1(v87, v88);
      *v31 = a1;
      (*(v27 + 104))(v31, *MEMORY[0x277D5FEA8], v24);
      v75[1] = a1;

      v41 = v79;
      sub_269423F88();
      (*(v27 + 8))(v31, v24);
      __swift_destroy_boxed_opaque_existential_1(v87);
      sub_269413BA4(v41, v36);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_269413C14(v36);
        v42 = sub_269423FA8();
        v43 = sub_269424378();
        v44 = os_log_type_enabled(v42, v43);
        v45 = v85;
        if (v44)
        {
          v46 = OUTLINED_FUNCTION_12_0();
          *v46 = 0;
          _os_log_impl(&dword_2693C9000, v42, v43, "Siri Reference Resolution resolve call was unsuccessful", v46, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        sub_269413C14(v41);
      }

      else
      {
        v50 = v76;
        v49 = v77;
        v51 = v78;
        (*(v77 + 32))(v76, v36, v78);
        v52 = v83;
        (*(v49 + 16))(v83, v50, v51);
        v53 = (*(v49 + 88))(v52, v51);
        v45 = v85;
        if (v53 == *MEMORY[0x277D5FEC0])
        {
          (*(v49 + 96))(v52, v51);
          v55 = v81;
          v54 = v82;
          v56 = v84;
          (*(v81 + 32))(v84, v52, v82);
          v57 = v80;
          (*(v55 + 16))(v80, v56, v54);
          v58 = sub_269423FA8();
          v59 = sub_269424368();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = v57;
            v61 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v87[0] = v86;
            *v61 = 136315138;
            sub_269413C7C();
            v62 = sub_269424668();
            v64 = v63;
            v65 = *(v55 + 8);
            v65(v60, v54);
            v66 = sub_2693DB6E0(v62, v64, v87);
            v41 = v79;

            *(v61 + 4) = v66;
            _os_log_impl(&dword_2693C9000, v58, v59, "Siri Reference Resolution resolve call was successful with resolved entity match: %s", v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v86);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();
          }

          else
          {

            v65 = *(v55 + 8);
            v65(v57, v54);
          }

          v74 = v84;
          sub_269423FD8();

          v65(v74, v54);
          (*(v77 + 8))(v76, v78);
          sub_269413C14(v41);
          v71 = sub_269424038();
          v72 = v45;
          v73 = 0;
          return __swift_storeEnumTagSinglePayload(v72, v73, 1, v71);
        }

        v67 = sub_269423FA8();
        v68 = sub_269424368();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = OUTLINED_FUNCTION_12_0();
          *v69 = 0;
          _os_log_impl(&dword_2693C9000, v67, v68, "Siri Reference Resolution resolve call was successful but returned ambiguous or empty matches", v69, 2u);
          v41 = v79;
          OUTLINED_FUNCTION_6_0();
        }

        v70 = *(v49 + 8);
        v70(v50, v51);
        sub_269413C14(v41);
        v70(v52, v51);
      }
    }

    else
    {

      v45 = v85;
    }

    v71 = sub_269424038();
    v72 = v45;
    v73 = 1;
    return __swift_storeEnumTagSinglePayload(v72, v73, 1, v71);
  }

  v47 = sub_269424038();

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v47);
}

uint64_t sub_269413780@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269423818();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269423FA8();
  v11 = sub_269424368();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_12_0();
    *v12 = 0;
    _os_log_impl(&dword_2693C9000, v10, v11, "Constructing a lookup instance of usoEntity for Translation to look up in SRR.", v12, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v13 = sub_269423948();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_269423938();
  (*(v5 + 104))(v9, *MEMORY[0x277D5EE50], v2);
  sub_269423928();
  (*(v5 + 8))(v9, v2);
  v16 = sub_269423908();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_2694238F8();

  sub_2694237C8();

  v20 = MEMORY[0x26D63B350](v19);
  if (v20)
  {
    sub_269413010(v20, a1);
  }

  else
  {
    v22 = sub_269423FA8();
    v23 = sub_269424378();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_12_0();
      *v24 = 0;
      _os_log_impl(&dword_2693C9000, v22, v23, "Creation of was common_translation entity was unsuccessful", v24, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v25 = sub_269424038();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v25);
  }
}

uint64_t sub_269413A0C()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_log;
  v2 = sub_269423FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_rReferenceResolverProtocol));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SiriReferenceResolutionConverter()
{
  result = qword_2803100B8;
  if (!qword_2803100B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269413B0C()
{
  result = sub_269423FC8();
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

uint64_t sub_269413BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100C8, qword_269428580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269413C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100C8, qword_269428580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269413C7C()
{
  result = qword_2803100D0;
  if (!qword_2803100D0)
  {
    sub_269423FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803100D0);
  }

  return result;
}

uint64_t sub_269413CD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100D8, "B/");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2694256B0;
  *(v1 + 56) = type metadata accessor for TranslatePhraseIntent();
  *(v1 + 64) = &off_2879F4F48;
  *(v1 + 32) = v0;
  v2 = v0;
  return v1;
}

BOOL sub_269413D40(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_269413DF4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_269424588();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_269413E18()
{
  OUTLINED_FUNCTION_11_0();
  v1[44] = v2;
  v1[45] = v0;
  v3 = sub_269422D78();
  v1[46] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[47] = v4;
  v6 = *(v5 + 64);
  v1[48] = OUTLINED_FUNCTION_82();
  v7 = sub_269423C68();
  v1[49] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[50] = v8;
  v10 = *(v9 + 64);
  v1[51] = OUTLINED_FUNCTION_82();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310150, qword_269428710);
  v1[52] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[53] = v12;
  v14 = *(v13 + 64);
  v1[54] = OUTLINED_FUNCTION_82();
  v15 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_269413F60()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 360);
  *(v0 + 440) = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v10 = *(v0 + 432);
  v11 = *(v0 + 360);

  sub_269423EE8();
  sub_269423ED8();
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  *(v0 + 448) = v13;
  type metadata accessor for TranslatePhraseIntent();
  type metadata accessor for TranslatePhraseIntentResponse();
  v12;
  v14 = v13;
  sub_2694232B8();
  v15 = OBJC_IVAR___TranslatePhraseIntentResponse_code;
  swift_beginAccess();
  v16 = *&v14[v15];
  switch(v16)
  {
    case 'd':
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      *(v0 + 536) = v17;
      *v17 = v18;
      v17[1] = sub_269414CFC;
      v19 = *(v0 + 352);
      v20 = *(v0 + 360);
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_73();

      result = sub_2694187EC();
      break;
    case 'e':
      sub_2693DBDF8(*(v0 + 360) + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher, v0 + 176);
      v43 = *(v0 + 200);
      *(v0 + 544) = v43;
      *(v0 + 560) = __swift_project_boxed_opaque_existential_1((v0 + 176), v43);
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      *(v0 + 568) = v44;
      *v44 = v45;
      v44[1] = sub_269414DE0;
      v46 = *(v0 + 360);
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_73();

      result = sub_269417060();
      break;
    case 'f':
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      *(v0 + 600) = v33;
      *v33 = v34;
      v33[1] = sub_269415114;
      v35 = *(v0 + 352);
      v36 = *(v0 + 360);
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_73();

      result = sub_269417A3C();
      break;
    case 'g':
      sub_2693DBDF8(*(v0 + 360) + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher, v0 + 96);
      v38 = *(v0 + 120);
      *(v0 + 608) = v38;
      *(v0 + 624) = __swift_project_boxed_opaque_existential_1((v0 + 96), v38);
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      *(v0 + 632) = v39;
      *v39 = v40;
      v39[1] = sub_269415278;
      v41 = *(v0 + 360);
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_73();

      result = sub_2694175BC();
      break;
    default:
      if (v16 == 4)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_56_0();
        *(v0 + 456) = v23;
        *v23 = v24;
        v23[1] = sub_2694143E4;
        v25 = *(v0 + 432);
        v26 = *(v0 + 360);
        OUTLINED_FUNCTION_73();

        result = sub_269419420();
      }

      else
      {
        sub_2693DBDF8(*(v0 + 360) + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher, v0 + 16);
        v28 = *(v0 + 40);
        *(v0 + 664) = v28;
        *(v0 + 680) = __swift_project_boxed_opaque_existential_1((v0 + 16), v28);
        swift_task_alloc();
        OUTLINED_FUNCTION_56_0();
        *(v0 + 688) = v29;
        *v29 = v30;
        v29[1] = sub_2694155AC;
        v31 = *(v0 + 360);
        OUTLINED_FUNCTION_73();

        result = sub_26941B564();
      }

      break;
  }

  return result;
}

uint64_t sub_2694143E4()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v5 = *(v4 + 456);
  *v3 = *v1;
  v2[58] = v6;
  v2[59] = v7;
  v2[60] = v8;
  v2[61] = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2694144E8()
{
  OUTLINED_FUNCTION_58();
  v39 = v0;
  v2 = v0[58];
  v1 = v0[59];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v0[61];
  if (v3)
  {
    v0[40] = v2;
    v0[41] = v1;
    v5 = swift_task_alloc();
    *(v5 + 16) = v0 + 40;
    sub_269413D40(sub_26941C460, v5, &unk_2879F4260);
  }

  else
  {
    v7 = v0[50];
    v6 = v0[51];
    v8 = v0[49];
    sub_269423C48();
    sub_269423C38();
    sub_269423C18();

    sub_269423EF8();

    v9 = sub_269423C58();
    v11 = v10;
    (*(v7 + 8))(v6, v8);
    v0[42] = v9;
    v0[43] = v11;
    v12 = swift_task_alloc();
    *(v12 + 16) = v0 + 42;
    sub_269413D40(sub_26941C9D8, v12, &unk_2879F4260);
  }

  v13 = v0[59];
  v14 = v0[55];
  v15 = v0[45];

  v16 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_43_2();

  v17 = OUTLINED_FUNCTION_46_0();
  v18 = v0[59];
  if (v17)
  {
    v19 = v0[58];
    v20 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v20 = 136315394;
    v21 = sub_2693DB6E0(v19, v18, v38);

    *(v20 + 4) = v21;
    *(v20 + 12) = 2080;
    v22 = MEMORY[0x26D63BE40](&unk_2879F4260, MEMORY[0x277D837D0]);
    v24 = sub_2693DB6E0(v22, v23, v38);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_2693C9000, v16, v15, "TranslatePhraseResponseFlow | Response mode is %s, voice modes are %s.", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v25 = v0[45];
  v26 = sub_26941AF1C((v0 + 32));
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v27)
  {
    v29 = v27;
  }

  qword_28030FC28 = v28;
  qword_28030FC30 = v29;

  v30 = *(v25 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher + 32);
  __swift_project_boxed_opaque_existential_1((v25 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher), *(v25 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher + 24));
  v31 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[62] = v32;
  *v32 = v33;
  v32[1] = sub_269414810;
  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821BB5D0](v34, v35, v36);
}

uint64_t sub_269414810()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 496);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v3 + 504) = v0;

  if (v0)
  {
    v9 = *(v3 + 480);
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269414910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v11 = OUTLINED_FUNCTION_20_7();
  v12 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v12))
  {
    v13 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v13);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v19 = v10[60];

  v20 = v10[60];
  if (*(v19 + 16))
  {
    v22 = *(v20 + 32);
    v21 = *(v20 + 40);
  }

  v24 = v10[47];
  v23 = v10[48];
  v25 = v10[45];
  v26 = v10[46];
  v27 = *MEMORY[0x277D633E8];
  v28 = OUTLINED_FUNCTION_79_0();
  v29(v28);
  OUTLINED_FUNCTION_62_0();
  sub_269416C38(v30, v31, v32);

  v33 = OUTLINED_FUNCTION_55_0();
  v34(v33);
  v35 = swift_task_alloc();
  v10[64] = v35;
  *(v35 + 16) = v25;
  *(v35 + 24) = v20;
  v36 = *(MEMORY[0x277D85A40] + 4);
  v37 = swift_task_alloc();
  v10[65] = v37;
  *v37 = v10;
  v37[1] = sub_269414AA8;
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_73();

  return MEMORY[0x2822008A0](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

uint64_t sub_269414AA8()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *v1;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = v2[65];
  *v4 = *v1;
  *(v3 + 528) = v0;

  v6 = v2[64];
  v7 = v2[60];

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_269414BE8()
{
  OUTLINED_FUNCTION_23_2();
  v1 = OUTLINED_FUNCTION_20_7();
  v2 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v2))
  {
    v3 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v3);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  v9 = OUTLINED_FUNCTION_20_7();
  v10 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v10))
  {
    v11 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = *(v0 + 352);

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();

  return v20();
}

uint64_t sub_269414CFC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v2 = *(v1 + 536);
  v3 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_269414DE0()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 568);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  v3[72] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(MEMORY[0x277D5BF40] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_56_0();
    v3[73] = v13;
    *v13 = v14;
    v13[1] = sub_269414F40;
    v15 = v3[70];
    v16 = v3[69];
    v17 = v3[68];

    return MEMORY[0x2821BB5D0](v3 + 27, v17, v16);
  }
}

uint64_t sub_269414F40()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 584);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v3 + 592) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 216));
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269415040()
{
  OUTLINED_FUNCTION_23_2();
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v1 = OUTLINED_FUNCTION_20_7();
  v2 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v2))
  {
    v3 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v3);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v9 = *(v0 + 352);

  sub_269423148();
  v10 = OUTLINED_FUNCTION_0_21();
  v11(v10);

  OUTLINED_FUNCTION_4_6();

  return v12();
}

uint64_t sub_269415114()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v2 = *(v1 + 600);
  v3 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2694151F8()
{
  OUTLINED_FUNCTION_23_2();
  v0 = OUTLINED_FUNCTION_0_21();
  v1(v0);

  OUTLINED_FUNCTION_4_6();

  return v2();
}

uint64_t sub_269415278()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 632);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  v3[80] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(MEMORY[0x277D5BF40] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_56_0();
    v3[81] = v13;
    *v13 = v14;
    v13[1] = sub_2694153D8;
    v15 = v3[78];
    v16 = v3[77];
    v17 = v3[76];

    return MEMORY[0x2821BB5D0](v3 + 17, v17, v16);
  }
}

uint64_t sub_2694153D8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 648);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v3 + 656) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 136));
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2694154D8()
{
  OUTLINED_FUNCTION_23_2();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = OUTLINED_FUNCTION_20_7();
  v2 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v2))
  {
    v3 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v3);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v9 = *(v0 + 352);

  sub_269423148();
  v10 = OUTLINED_FUNCTION_0_21();
  v11(v10);

  OUTLINED_FUNCTION_4_6();

  return v12();
}

uint64_t sub_2694155AC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 688);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  v3[87] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(MEMORY[0x277D5BF40] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_56_0();
    v3[88] = v13;
    *v13 = v14;
    v13[1] = sub_26941570C;
    v15 = v3[85];
    v16 = v3[84];
    v17 = v3[83];

    return MEMORY[0x2821BB5D0](v3 + 7, v17, v16);
  }
}

uint64_t sub_26941570C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 704);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v3 + 712) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 56));
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26941580C()
{
  OUTLINED_FUNCTION_23_2();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_20_7();
  v2 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v2))
  {
    v3 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v3);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v9 = *(v0 + 352);

  sub_269423148();
  v10 = OUTLINED_FUNCTION_0_21();
  v11(v10);

  OUTLINED_FUNCTION_4_6();

  return v12();
}

uint64_t sub_2694158E0()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 488);
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v9 = OUTLINED_FUNCTION_20_7();
  v10 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v10))
  {
    v11 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = *(v0 + 352);

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269415A30()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v1 = v0[63];
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v9 = OUTLINED_FUNCTION_20_7();
  v10 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v10))
  {
    v11 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = v0[44];

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269415B88()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v1 = v0[66];
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v9 = OUTLINED_FUNCTION_20_7();
  v10 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v10))
  {
    v11 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = v0[44];

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269415CE0()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v1 = v0[72];
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v9 = OUTLINED_FUNCTION_20_7();
  v10 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v10))
  {
    v11 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = v0[44];

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269415E38()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v1 = v0[74];
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v9 = OUTLINED_FUNCTION_20_7();
  v10 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v10))
  {
    v11 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = v0[44];

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269415F90()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[80];
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v9 = OUTLINED_FUNCTION_20_7();
  v10 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v10))
  {
    v11 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = v0[44];

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_2694160E8()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[82];
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v9 = OUTLINED_FUNCTION_20_7();
  v10 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v10))
  {
    v11 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = v0[44];

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269416240()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[87];
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v9 = OUTLINED_FUNCTION_20_7();
  v10 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v10))
  {
    v11 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = v0[44];

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269416398()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[89];
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v9 = OUTLINED_FUNCTION_20_7();
  v10 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v10))
  {
    v11 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = v0[44];

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_2694164F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v29 = *(a2 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_translationApiClient);
  v11 = [*(a2 + 16) targetLanguage];
  if (v11)
  {
    v12 = v11;
    v28 = sub_269424118();
    v14 = v13;
  }

  else
  {
    v28 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = [*(a2 + 24) translationResultItems];
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  type metadata accessor for TranslationResultItem();
  v17 = sub_269424288();

  if (!sub_26941C9D4(v17))
  {

LABEL_11:

    v22 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_12;
  }

  sub_26942008C(0, (v17 & 0xC000000000000001) == 0, v17);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x26D63C060](0, v17);
  }

  else
  {
    v18 = *(v17 + 32);
  }

  v19 = v18;

  v20 = sub_26941C140(v19, &selRef_translatedText);
  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = v20;
  v23 = v21;
LABEL_12:
  (*(v7 + 16))(v10, a1, v6);
  v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  (*(v7 + 32))(v25 + v24, v10, v6);

  v30 = 1;
  sub_2693D4578(v28, v14, v22, v23, 0x100000000, sub_26941C554, v25);
}

void sub_269416794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[0] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v28 - v16;
  v18 = sub_269424338();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a5, v9);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a3;
  *(v20 + 5) = a4;
  (*(v10 + 32))(&v20[v19], v13, v9);

  sub_2693EBBE0(0, 0, v17, &unk_269428748, v20);

  v21 = sub_269423FA8();
  v22 = sub_269424368();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[2] = a2;
    v29 = v24;
    *v23 = 136315138;
    v28[1] = v28[0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v25 = sub_269424128();
    v27 = sub_2693DB6E0(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_2693C9000, v21, v22, "Speak request executed. Error: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x26D63C8E0](v24, -1, -1);
    MEMORY[0x26D63C8E0](v23, -1, -1);
  }
}

uint64_t sub_269416A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_269422D78();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269416B48, 0, 0);
}

uint64_t sub_269416B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v11 = v10[3];
  if (v11[2])
  {
    v13 = v11[4];
    v12 = v11[5];
  }

  v15 = v10[6];
  v14 = v10[7];
  v17 = v10[4];
  v16 = v10[5];
  v18 = v10[2];
  v19 = *MEMORY[0x277D633E0];
  v20 = OUTLINED_FUNCTION_79_0();
  v21(v20);
  OUTLINED_FUNCTION_62_0();
  sub_269416C38(v22, v23, v24);

  v25 = OUTLINED_FUNCTION_55_0();
  v26(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  sub_269424318();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

void sub_269416C38(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_269422D78();
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v53 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v54 = a1;
  sub_269422D88();

  v18 = sub_269422DF8();

  __swift_destroy_boxed_opaque_existential_1(v56);
  if (v18)
  {
    v19 = *(v11 + 16);
    v55 = v17;
    v19(v17, a3, v8);
    v20 = v18;

    v21 = sub_269423FA8();
    v22 = sub_269424368();

    if (OUTLINED_FUNCTION_84())
    {
      v23 = swift_slowAlloc();
      v48 = v8;
      v24 = v23;
      v50 = swift_slowAlloc();
      v56[0] = v50;
      *v24 = 136315906;
      v25 = v20;
      v52 = v4;
      v26 = v25;
      v27 = [v25 description];
      v49 = v22;
      v28 = v27;
      v29 = sub_269424118();
      v51 = v20;
      v30 = v29;
      v47 = v19;
      v32 = v31;

      v33 = sub_2693DB6E0(v30, v32, v56);

      *(v24 + 4) = v33;
      *(v24 + 12) = 2080;
      v34 = qword_28030FC28;
      v35 = qword_28030FC30;

      v36 = sub_2693DB6E0(v34, v35, v56);

      *(v24 + 14) = v36;
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_2693DB6E0(v54, a2, v56);
      *(v24 + 32) = 2080;
      v20 = v51;
      v37 = v55;
      v38 = v48;
      v47(v53, v55, v48);
      v39 = v38;
      v40 = sub_269424128();
      v42 = v41;
      (*(v11 + 8))(v37, v39);
      v43 = sub_2693DB6E0(v40, v42, v56);

      *(v24 + 34) = v43;
      _os_log_impl(&dword_2693C9000, v21, v49, "Constructed command: %s with viewId %s and play button id %s and state %s", v24, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      (*(v11 + 8))(v55, v8);
    }

    sub_269423018();
    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    sub_269423298();
    __swift_destroy_boxed_opaque_existential_1(v56);
    v44 = sub_269423FA8();
    v45 = sub_269424368();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_12_0();
      *v46 = 0;
      _os_log_impl(&dword_2693C9000, v44, v45, "Sent off the command.", v46, 2u);
      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269417060()
{
  OUTLINED_FUNCTION_11_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  OUTLINED_FUNCTION_12_2(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_82();
  v7 = sub_269423248();
  v1[11] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_269417134()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = OUTLINED_FUNCTION_85_0();
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    v5 = *(v1 + 64);
    OUTLINED_FUNCTION_17_0();
    v6 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_52_1(v6, 5.7779e-34);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_2693EE27C(v6, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_4_1();
  }

  v12 = *(v1 + 64);
  v13 = *(v1 + 72);

  v14 = *(v13 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider);
  sub_2693D54EC(v12, &selRef_sourceLanguage);
  *(v1 + 112) = v15;
  sub_2693D54EC(v12, &selRef_targetLanguage);
  *(v1 + 120) = v16;
  sub_2693D54EC(v12, &selRef_phrase);
  *(v1 + 128) = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v1 + 136) = v18;
  *v18 = v19;
  v18[1] = sub_2694172CC;
  v20 = *(v1 + 104);
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_73();

  return sub_2693F9414();
}

uint64_t sub_2694172CC()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = v2[17];
  v6 = v2[16];
  *v4 = *v1;
  *(v3 + 144) = v0;

  v7 = v2[15];
  v8 = v2[14];

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269417440()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_78_0();
  v4 = sub_2694231F8();
  OUTLINED_FUNCTION_71_0(v0, v5, v6, v4);
  OUTLINED_FUNCTION_61_0();
  v7 = MEMORY[0x277D5C1D8];
  v1[3] = v8;
  v1[4] = v7;
  __swift_allocate_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_41_0();
  sub_2694230F8();
  sub_2693EE27C(v2, &qword_280310190, qword_269427220);
  sub_2693EE27C(v0, &qword_28030FC98, &qword_269427710);
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_91();
  v11(v10);

  OUTLINED_FUNCTION_4_6();

  return v12();
}

uint64_t sub_269417554()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0[13];
  v2 = v0[10];

  OUTLINED_FUNCTION_4_6();
  v4 = v0[18];

  return v3();
}

uint64_t sub_2694175BC()
{
  OUTLINED_FUNCTION_11_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  OUTLINED_FUNCTION_12_2(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_82();
  v7 = sub_269423248();
  v1[11] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_269417690()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = OUTLINED_FUNCTION_85_0();
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    v5 = *(v1 + 64);
    OUTLINED_FUNCTION_17_0();
    v6 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_52_1(v6, 5.7779e-34);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_2693EE27C(v6, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_4_1();
  }

  v12 = *(v1 + 72);

  v13 = *(v12 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v1 + 112) = v14;
  *v14 = v15;
  v14[1] = sub_2694177C8;
  v16 = *(v1 + 104);

  return sub_2693FA4C8();
}

uint64_t sub_2694177C8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2694178C0()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_78_0();
  v4 = sub_2694231F8();
  OUTLINED_FUNCTION_71_0(v0, v5, v6, v4);
  OUTLINED_FUNCTION_61_0();
  v7 = MEMORY[0x277D5C1D8];
  v1[3] = v8;
  v1[4] = v7;
  __swift_allocate_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_41_0();
  sub_269423128();
  sub_2693EE27C(v2, &qword_280310190, qword_269427220);
  sub_2693EE27C(v0, &qword_28030FC98, &qword_269427710);
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_91();
  v11(v10);

  OUTLINED_FUNCTION_4_6();

  return v12();
}

uint64_t sub_2694179D4()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0[13];
  v2 = v0[10];

  OUTLINED_FUNCTION_4_6();
  v4 = v0[15];

  return v3();
}

uint64_t sub_269417A3C()
{
  OUTLINED_FUNCTION_11_0();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  OUTLINED_FUNCTION_12_2(v4);
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_82();
  v7 = sub_269423248();
  v1[17] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[18] = v8;
  v10 = *(v9 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_269417B24()
{
  OUTLINED_FUNCTION_60();
  v2 = v1[14];
  v3 = v1[15];
  v1[21] = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v4 = v2;
  v5 = OUTLINED_FUNCTION_85_0();
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    v6 = v1[14];
    OUTLINED_FUNCTION_17_0();
    v7 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_52_1(v7, 5.7779e-34);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_2693EE27C(v7, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_4_1();
  }

  v13 = v1[15];

  v1[22] = *(v13 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v1[23] = v14;
  *v14 = v15;
  v14[1] = sub_269417C68;
  v16 = v1[20];
  v17 = v1[14];

  return sub_2693F8524();
}

uint64_t sub_269417C68()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269417F34()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26941802C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = sub_269423238();
  *(v0 + 232) = *(v2 + 8);
  *(v0 + 240) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_91();
  v6(v5);
  if (v4[2])
  {
    v8 = v4[4];
    v7 = v4[5];
  }

  else
  {
    v7 = 0xE900000000000065;
    v8 = 0x74616C736E617254;
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  v11 = *(v0 + 160);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);

  sub_269405CAC(v8, v7, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269427450;
  *(v14 + 32) = v9;
  v15 = v9;
  sub_26941C284(v14, v10);
  v16 = *(v13 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher + 24);
  v30 = *(v13 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher + 32);
  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher), v16);
  v17 = (v13 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_deviceState);
  v18 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_269423028();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_269427450;
  *(v19 + 32) = v10;
  v20 = sub_2694231F8();
  v23 = OUTLINED_FUNCTION_71_0(v12, v21, v22, v20);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v24 = MEMORY[0x277D5C1D8];
  *(v0 + 40) = v23;
  *(v0 + 48) = v24;
  __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  v25 = v10;
  sub_2694230F8();

  sub_2693EE27C(v0 + 56, &qword_280310190, qword_269427220);
  sub_2693EE27C(v12, &qword_28030FC98, &qword_269427710);
  v26 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 248) = v27;
  *v27 = v28;
  v27[1] = sub_2694182D8;

  return MEMORY[0x2821BB5D0](v0 + 16, v16, v30);
}

uint64_t sub_2694182D8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v3 + 256) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2694183D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_83_0();

  v2 = OUTLINED_FUNCTION_13_5();
  v0(v2);
  OUTLINED_FUNCTION_53_1();

  OUTLINED_FUNCTION_4_6();

  return v3();
}

uint64_t sub_2694187EC()
{
  OUTLINED_FUNCTION_11_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_269423078();
  OUTLINED_FUNCTION_12_2(v4);
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_82();
  v7 = sub_269423368();
  v1[12] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_82();
  v11 = sub_2694233D8();
  v1[15] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[16] = v12;
  v14 = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_82();
  v15 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_269418900()
{
  OUTLINED_FUNCTION_60();
  v2 = v1[9];
  v3 = v1[10];
  v1[18] = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v4 = v2;
  v5 = OUTLINED_FUNCTION_85_0();
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    v6 = v1[9];
    OUTLINED_FUNCTION_17_0();
    v7 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_52_1(v7, 5.7779e-34);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_2693EE27C(v7, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_4_1();
  }

  v13 = v1[17];
  v14 = v1[10];

  v15 = *(v14 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider);
  sub_2694233C8();
  v16 = swift_task_alloc();
  v1[19] = v16;
  *v16 = v1;
  v16[1] = sub_269418A58;
  v17 = v1[17];
  v18 = v1[9];

  return sub_2693F6BF4();
}

uint64_t sub_269418A58()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[17];
  v7 = v4[16];
  v8 = v4[15];
  v9 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v10 = v9;
  *(v12 + 160) = v11;
  *(v12 + 168) = v0;

  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_91();
  v15(v14);
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_269418BAC()
{
  OUTLINED_FUNCTION_23_2();
  v1 = v0[14];
  v2 = v0[11];
  sub_269423068();
  OUTLINED_FUNCTION_31_4();
  sub_2694232E8();
  v3 = sub_269423218();
  OUTLINED_FUNCTION_10_2(v3);
  v0[22] = sub_269423208();
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D5BD48]);
  v10 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[23] = v5;
  *v5 = v6;
  v5[1] = sub_269418C90;
  v7 = v0[20];
  v8 = v0[14];

  return v10(v0 + 2, v7, v8);
}

uint64_t sub_269418C90()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *(v4 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v9 + 192) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269418DA4()
{
  OUTLINED_FUNCTION_23_2();
  v1 = (*(v0 + 80) + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 200) = v4;
  *v4 = v5;
  v4[1] = sub_269418E60;
  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821BB5D0](v6, v7, v8);
}

uint64_t sub_269418E60()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269418F58()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_67();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_36_5();
  v2(v1);
  OUTLINED_FUNCTION_32_3();

  OUTLINED_FUNCTION_4_6();

  return v3();
}

uint64_t sub_269419360(void (*a1)(uint64_t))
{
  v3 = sub_269423158();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59_0();
  sub_269423148();
  a1(v1);
  return (*(v6 + 8))(v1, v3);
}

uint64_t sub_269419420()
{
  OUTLINED_FUNCTION_11_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_2694233D8();
  v1[15] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = OUTLINED_FUNCTION_82();
  v8 = sub_269423C68();
  v1[18] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = OUTLINED_FUNCTION_82();
  v12 = sub_269423078();
  OUTLINED_FUNCTION_12_2(v12);
  v14 = *(v13 + 64);
  v1[21] = OUTLINED_FUNCTION_82();
  v15 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  OUTLINED_FUNCTION_12_2(v15);
  v17 = *(v16 + 64);
  v1[22] = OUTLINED_FUNCTION_82();
  v18 = sub_269423368();
  v1[23] = v18;
  OUTLINED_FUNCTION_5_0(v18);
  v1[24] = v19;
  v21 = *(v20 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310150, qword_269428710);
  v1[27] = v22;
  OUTLINED_FUNCTION_5_0(v22);
  v1[28] = v23;
  v25 = *(v24 + 64);
  v1[29] = OUTLINED_FUNCTION_82();
  v26 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_26941960C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[13];
  v5 = v0[14];
  v0[30] = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_269423FA8();
  v7 = sub_269424368();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[27];
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_17_0();
    v13 = OUTLINED_FUNCTION_49_0();
    *v12 = 138412290;
    v14 = sub_2694232A8();
    (*(v10 + 8))(v9, v11);
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_2693C9000, v6, v7, "makeIntentHandledResponse: %@", v12, 0xCu);
    sub_2693EE27C(v13, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v15 = (v0[14] + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_featureFlags);
  v16 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_91();
  LOBYTE(v16) = v19(v18);
  v20 = sub_269423FA8();
  v21 = sub_269424368();
  v22 = os_log_type_enabled(v20, v21);
  if (v16)
  {
    if (v22)
    {
      v23 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_20_0(v23);
      OUTLINED_FUNCTION_81_0(&dword_2693C9000, v24, v25, "makeIntentHandledResponse() using RF 2.0");
      OUTLINED_FUNCTION_4_1();
    }

    OUTLINED_FUNCTION_76_0();

    v26 = sub_2694232A8();
    v27 = sub_26941C1AC(v26);
    v0[31] = v27;
    if (v27)
    {
      v28 = v0[27];
      v29 = v0[13];
      v30 = *(v0[14] + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider);
      v0[32] = sub_2694232C8();
      v0[33] = sub_2694232A8();
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      v0[34] = v31;
      *v31 = v32;
      v31[1] = sub_269419C48;
      v33 = v0[22];
      OUTLINED_FUNCTION_44_0();

      return sub_2693F37B8();
    }

    goto LABEL_30;
  }

  if (v22)
  {
    v36 = OUTLINED_FUNCTION_12_0();
    *v36 = 0;
    _os_log_impl(&dword_2693C9000, v20, v21, "makeIntentHandledResponse() using RF 1.0", v36, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_76_0();

  v37 = sub_2694232C8();
  sub_26941C140(v37, &selRef_phrase);
  if (!v38)
  {
    sub_2693FD35C();
    swift_allocError();
    *v61 = 0;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_76_0();

  v39 = sub_2694232C8();
  sub_26941C140(v39, &selRef_targetLanguage);
  if (!v40)
  {
    sub_2693FD35C();
    swift_allocError();
    v63 = 1;
LABEL_31:
    *v62 = v63;
LABEL_32:
    swift_willThrow();
    OUTLINED_FUNCTION_9_10();

    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_44_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_76_0();

  v41 = sub_2694232A8();
  v42 = sub_26941C1AC(v41);
  if (!v42)
  {
LABEL_30:
    sub_2693FD35C();
    swift_allocError();
    v63 = 2;
    goto LABEL_31;
  }

  v43 = v42;
  if (!sub_26941C9D4(v42))
  {

    goto LABEL_30;
  }

  sub_26942008C(0, (v43 & 0xC000000000000001) == 0, v43);
  if ((v43 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D63C060](0, v43);
  }

  else
  {
    v44 = *(v43 + 32);
  }

  OUTLINED_FUNCTION_84_0();
  sub_26941C140((v43 & 0xC000000000000001), &selRef_translatedText);
  if (!v45)
  {
    goto LABEL_30;
  }

  v46 = sub_269423FA8();
  v47 = sub_269424368();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v48);
    OUTLINED_FUNCTION_81_0(&dword_2693C9000, v49, v50, "Constructing dialog.");
    OUTLINED_FUNCTION_4_1();
  }

  v51 = v0[27];
  v52 = v0[17];
  v53 = v0[13];

  sub_2694233C8();
  v54 = sub_2694232A8();
  v55 = sub_26941C1AC(v54);
  if (v55 && (sub_269413DF4(v55), OUTLINED_FUNCTION_84_0(), v51 == 1))
  {
    v56 = v0[27];
    v57 = v0[13];
    v58 = *(v0[14] + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider);
    v0[41] = sub_2694232C8();
    v0[42] = sub_2694232A8();
    v59 = swift_task_alloc();
    v0[43] = v59;
    *v59 = v0;
    OUTLINED_FUNCTION_50_1(v59);
    OUTLINED_FUNCTION_44_0();

    return sub_2693F5758();
  }

  else
  {
    v66 = v0[27];
    v67 = v0[13];
    v68 = *(v0[14] + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider);
    v0[47] = sub_2694232C8();
    v0[48] = sub_2694232A8();
    v69 = swift_task_alloc();
    v0[49] = v69;
    *v69 = v0;
    OUTLINED_FUNCTION_50_1(v69);
    OUTLINED_FUNCTION_44_0();

    return sub_2693F4FC4();
  }
}

uint64_t sub_269419C48()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *v1;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *(v2 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_7_5();
  *v7 = v6;
  v10[35] = v8;
  v10[36] = v9;
  v10[37] = v0;

  v11 = *(v2 + 256);
  v12 = *(v2 + 248);

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_269419DA4()
{
  OUTLINED_FUNCTION_59();
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[13];
  v0[5] = type metadata accessor for SiriTranslationModels(0);
  v0[6] = sub_26941C30C();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_26941C364(v2, boxed_opaque_existential_0);
  swift_storeEnumTagMultiPayload();
  v5 = sub_2694232A8();
  v6 = sub_26941C1AC(v5);
  if (v6)
  {
    sub_269413DF4(v6);
    OUTLINED_FUNCTION_84_0();
  }

  v7 = v0[35];
  v8 = v0[26];
  v10 = v0[20];
  v9 = v0[21];
  v19 = *(v0 + 13);
  sub_269423068();
  *(swift_task_alloc() + 16) = vextq_s8(v19, v19, 8uLL);
  sub_2694232E8();

  sub_2694232F8();
  v11 = sub_269423218();
  OUTLINED_FUNCTION_10_2(v11);
  v0[38] = sub_269423208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
  v12 = swift_allocObject();
  v0[39] = v12;
  *(v12 + 16) = xmmword_269427450;
  *(v12 + 32) = v7;
  v13 = *(MEMORY[0x277D5BD38] + 4);
  v20 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
  v14 = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[40] = v15;
  *v15 = v16;
  v15[1] = sub_269419FB4;
  v17 = v0[26];

  return v20(v0 + 7, v0 + 2, v12, v17);
}

uint64_t sub_269419FB4()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v2 = v1[40];
  v3 = v1[39];
  v4 = v1[38];
  v5 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26941A0D0()
{
  OUTLINED_FUNCTION_58();
  v1 = v0[35];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];
  sub_2693DBDF8((v0 + 7), v0[12]);
  v9 = sub_269423C58();
  v14 = v10;

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  (*(v6 + 8))(v7, v8);
  sub_26941C3D0(v5);
  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v11 = v0[36];
  OUTLINED_FUNCTION_63_0();

  v12 = v0[1];

  return v12(v9, v14, v11);
}

uint64_t sub_26941A20C()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_5();
  v7 = v6;
  OUTLINED_FUNCTION_8_4();
  *v8 = v7;
  v10 = v9[43];
  v11 = v9[42];
  v12 = v9[41];
  v13 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v14 = v13;
  v7[44] = v0;

  if (!v0)
  {
    v7[45] = v3;
    v7[46] = v5;
  }

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_73();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26941A34C()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[45];
  v1 = v0[46];
  v0[52] = v1;
  v0[53] = v2;
  v3 = v0[30];
  v4 = v0[14];
  v5 = v1;
  v6 = sub_269423FA8();
  v7 = sub_269424368();
  if (os_log_type_enabled(v6, v7))
  {
    *OUTLINED_FUNCTION_12_0() = 0;
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_1_3();
  }

  OUTLINED_FUNCTION_82_0();
  sub_269423068();
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_26_3(v13, v14, v15, v16, v17, v18, v19, v20, v21);

  v22 = sub_269423218();
  OUTLINED_FUNCTION_10_2(v22);
  v0[54] = sub_269423208();
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[55] = v23;
  *v23 = v24;
  v25 = OUTLINED_FUNCTION_24_5(v23);

  return v26(v25);
}

uint64_t sub_26941A474()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  OUTLINED_FUNCTION_8_4();
  *v6 = v5;
  v8 = v7[49];
  v9 = v7[48];
  v10 = v7[47];
  v11 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v12 = v11;
  *(v5 + 400) = v0;

  if (!v0)
  {
    *(v5 + 408) = v3;
  }

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_75();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26941A5B0()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[51];
  v2 = MEMORY[0x277D84F90];
  v0[52] = v1;
  v0[53] = v2;
  v3 = v0[30];
  v4 = v0[14];
  v5 = v1;
  v6 = sub_269423FA8();
  v7 = sub_269424368();
  if (os_log_type_enabled(v6, v7))
  {
    *OUTLINED_FUNCTION_12_0() = 0;
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_1_3();
  }

  OUTLINED_FUNCTION_82_0();
  sub_269423068();
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_26_3(v13, v14, v15, v16, v17, v18, v19, v20, v21);

  v22 = sub_269423218();
  OUTLINED_FUNCTION_10_2(v22);
  v0[54] = sub_269423208();
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[55] = v23;
  *v23 = v24;
  v25 = OUTLINED_FUNCTION_24_5(v23);

  return v26(v25);
}

uint64_t sub_26941A6E0()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *(v5 + 432);
  v8 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v9 = v8;
  *(v3 + 448) = v0;

  if (v0)
  {
    v10 = *(v3 + 424);
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26941A804()
{
  OUTLINED_FUNCTION_58();
  v1 = v0[52];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];
  v8 = [v1 responseMode];
  sub_269424118();

  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v6, v7);
  v9 = v0[53];
  OUTLINED_FUNCTION_63_0();

  v10 = v0[1];
  OUTLINED_FUNCTION_62_0();

  return v11();
}

uint64_t sub_26941A934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v11 = *(v10 + 296);
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_26941A9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  (*(v10[16] + 8))(v10[17], v10[15]);
  v11 = v10[44];
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_26941AA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  (*(v10[16] + 8))(v10[17], v10[15]);
  v11 = v10[50];
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_26941AB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v11 = v10[52];
  v13 = v10[24];
  v12 = v10[25];
  v14 = v10[23];
  v16 = v10[16];
  v15 = v10[17];
  v17 = v10[15];

  v18 = *(v13 + 8);
  v19 = OUTLINED_FUNCTION_13_5();
  v20(v19);
  v21 = OUTLINED_FUNCTION_55_0();
  v22(v21);
  v23 = v10[56];
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_26941ABE4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_nlContextProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310150, qword_269428710);
  v8 = sub_2694232C8();
  v9 = sub_2694232A8();
  sub_26941D9EC();

  v10 = sub_2694231F8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  sub_269423348();
  return sub_269423318();
}

uint64_t sub_26941AD08(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_nlContextProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310150, qword_269428710);
  v8 = sub_2694232C8();
  v9 = sub_2694232A8();
  sub_26941D9EC();

  v10 = sub_2694231F8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  sub_269423348();
  return sub_269423318();
}

uint64_t sub_26941AE2C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_nlContextProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310150, qword_269428710);
  v8 = sub_2694232C8();
  sub_26941D9EC();

  v9 = sub_2694231F8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  return sub_269423348();
}

uint64_t sub_26941AF1C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310130, &qword_2694286F8);
  v5 = OUTLINED_FUNCTION_12_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v56 - v8;
  v10 = sub_2694234B8();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59_0();
  sub_2693DBDF8(a1, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310138, &unk_269428700);
  if (swift_dynamicCast())
  {
    v56[1] = v1;
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    v56[3] = v13;
    v57 = v10;
    (v13)[4](v2, v9, v10);
    v56[2] = v2;
    v16 = sub_2694234A8();
    v17 = MEMORY[0x277D84F90];
    v60[0] = MEMORY[0x277D84F90];
    v18 = sub_26941C9D4(v16);
    v19 = 0;
    v13 = (v16 & 0xFFFFFFFFFFFFFF8);
    v20 = 0x277D47000;
    v58 = v17;
    while (v18 != v19)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x26D63C060](v19, v16);
      }

      else
      {
        if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v21 = *(v16 + 8 * v19 + 32);
      }

      v22 = v21;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x26D63BE10]();
        if (*((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2694242A8();
        }

        sub_2694242C8();
        v17 = v60[0];
        ++v19;
      }

      else
      {

        ++v19;
      }
    }

    if (!sub_26941C9D4(v17))
    {
      v47 = OUTLINED_FUNCTION_74_0();
      v48(v47, v57);

      goto LABEL_40;
    }

    v20 = (v17 & 0xC000000000000001);
    sub_26942008C(0, (v17 & 0xC000000000000001) == 0, v17);
    if ((v17 & 0xC000000000000001) == 0)
    {
      v23 = *(v17 + 32);
      goto LABEL_18;
    }

LABEL_50:
    MEMORY[0x26D63C060](0, v17);
LABEL_18:
    OUTLINED_FUNCTION_84_0();
    v56[0] = v20;
    result = sub_26941C214(v20);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    v60[0] = MEMORY[0x277D84F90];
    v26 = sub_26941C9D4(result);
    v17 = 0;
    v13 = (v25 & 0xFFFFFFFFFFFFFF8);
    v20 = 0x277D47000;
    while (v26 != v17)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x26D63C060](v17, v25);
      }

      else
      {
        if (v17 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v27 = *(v25 + 8 * v17 + 32);
      }

      v28 = v27;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x26D63BE10]();
        if (*((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2694242A8();
        }

        sub_2694242C8();
        v58 = v60[0];
        ++v17;
      }

      else
      {

        ++v17;
      }
    }

    v29 = v58;
    if (sub_26941C9D4(v58))
    {
      sub_26942008C(0, (v29 & 0xC000000000000001) == 0, v29);
      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x26D63C060](0, v29);
      }

      else
      {
        v30 = *(v29 + 32);
      }

      v31 = v30;

      v32 = v31;
      v33 = sub_269423FA8();
      v34 = sub_269424368();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_17_0();
        v36 = swift_slowAlloc();
        v59 = v36;
        *v35 = 136315138;
        v60[0] = sub_2693D54EC(v32, &selRef_viewId);
        v60[1] = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
        v38 = sub_269424128();
        v40 = sub_2693DB6E0(v38, v39, &v59);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_2693C9000, v33, v34, "First SAUISnippet.viewId in visualResponseSnippet %s ", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v41 = v57;
      v42 = [v32 viewId];
      if (v42)
      {
        v43 = v42;
        v44 = sub_269424118();

        v45 = OUTLINED_FUNCTION_74_0();
        v46(v45, v41);
        return v44;
      }

      v54 = OUTLINED_FUNCTION_74_0();
      v55(v54, v41);

      return 0;
    }

    v49 = OUTLINED_FUNCTION_74_0();
    v50(v49, v57);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_2693EE27C(v9, &qword_280310130, &qword_2694286F8);
  }

LABEL_40:
  v51 = sub_269423FA8();
  v52 = sub_269424368();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v53);
    _os_log_impl(&dword_2693C9000, v51, v52, "visual id is nil ", v13, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  return 0;
}

uint64_t sub_26941B564()
{
  OUTLINED_FUNCTION_11_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269423078();
  OUTLINED_FUNCTION_12_2(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_82();
  v6 = sub_269423368();
  v1[5] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_82();
  v10 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26941B628()
{
  OUTLINED_FUNCTION_23_2();
  v1 = v0[3];
  v0[8] = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v10 = v0[3];

  v11 = *(v10 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_26941B71C;

  return sub_2693FB290();
}

uint64_t sub_26941B71C()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  *v4 = *v1;
  v3[10] = v8;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[4];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_26941B864()
{
  OUTLINED_FUNCTION_23_2();
  v1 = v0[3] + v0[8];
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v10 = v0[7];
  v11 = v0[4];

  sub_269423068();
  OUTLINED_FUNCTION_31_4();
  sub_2694232E8();
  v12 = sub_269423218();
  OUTLINED_FUNCTION_10_2(v12);
  v0[11] = sub_269423208();
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D5BD48]);
  v20 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[12] = v14;
  *v14 = v15;
  v14[1] = sub_26941B998;
  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[2];

  return v20(v18, v16, v17);
}

uint64_t sub_26941B998()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v9 + 104) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26941BAAC()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_13_5();
  v7(v6);

  OUTLINED_FUNCTION_4_6();

  return v8();
}

uint64_t sub_26941BB3C()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);

  v4 = OUTLINED_FUNCTION_36_5();
  v5(v4);
  v6 = *(v0 + 104);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);

  OUTLINED_FUNCTION_4_6();

  return v9();
}

uint64_t sub_26941BBCC()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v2 = sub_269423FC8();
  OUTLINED_FUNCTION_8_3(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher));
  v5 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_translationApiClient);

  v6 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_nlContextProvider);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_featureFlags));
  return v0;
}

uint64_t sub_26941BC90()
{
  sub_26941BBCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TranslatePhraseResponseFlow()
{
  result = qword_280310120;
  if (!qword_280310120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26941BD3C()
{
  result = sub_269423FC8();
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

uint64_t sub_26941BE14()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2693EC8CC;

  return sub_269413E18();
}

uint64_t sub_26941BEB0()
{
  type metadata accessor for TranslatePhraseResponseFlow();

  return sub_269422FC8();
}

uint64_t sub_26941BEEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101C0, &qword_269425D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2694256B0;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_269424118();
  *(inited + 40) = v2;
  v3 = sub_269424128();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  return sub_2694240B8();
}

uint64_t sub_26941BF98(uint64_t a1)
{
  v2 = sub_26941C980();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26941BFD4(uint64_t a1)
{
  v2 = sub_26941C980();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_26941C040(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_26941C0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_269424688() & 1;
  }
}

uint64_t sub_26941C140(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_269424118();

  return v4;
}

uint64_t sub_26941C1AC(void *a1)
{
  v2 = [a1 translationResultItems];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for TranslationResultItem();
  v3 = sub_269424288();

  return v3;
}

uint64_t sub_26941C214(void *a1)
{
  v1 = [a1 views];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2693D554C(0, &qword_280310148, 0x277D47140);
  v3 = sub_269424288();

  return v3;
}

void sub_26941C284(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310198, &qword_269428728);
  v3 = sub_269424278();

  [a2 setCommands_];
}

unint64_t sub_26941C30C()
{
  result = qword_280310160;
  if (!qword_280310160)
  {
    type metadata accessor for SiriTranslationModels(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310160);
  }

  return result;
}

uint64_t sub_26941C364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26941C3D0(uint64_t a1)
{
  v2 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26941C488()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

void sub_26941C554(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_12_2(v5);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  sub_269416794(a1, a2, v7, v8, v9);
}

uint64_t sub_26941C5E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_26941C6B4()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_12_2(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2693EC8CC;
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_73();

  return sub_269416A84(v11, v12, v13, v14, v15, v16);
}

uint64_t getEnumTagSinglePayload for HandleIntentStrategyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HandleIntentStrategyError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x26941C8ECLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26941C92C()
{
  result = qword_2803101B0;
  if (!qword_2803101B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803101B0);
  }

  return result;
}

unint64_t sub_26941C980()
{
  result = qword_2803101B8;
  if (!qword_2803101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803101B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_21()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[48];
  v4 = *(v0[53] + 8);
  return v0[54];
}

uint64_t OUTLINED_FUNCTION_9_10()
{
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];
}

void OUTLINED_FUNCTION_19_6()
{

  JUMPOUT(0x26D63C8E0);
}

uint64_t OUTLINED_FUNCTION_20_7()
{
  v2 = *(v0 + 360) + *(v0 + 440);

  return sub_269423FA8();
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1)
{
  *(a1 + 8) = sub_26941A6E0;
  v2 = *(v1 + 200);
  return *(v1 + 96);
}

uint64_t OUTLINED_FUNCTION_26_3(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9)
{
  a1[1] = vextq_s8(a9, a9, 8uLL);

  return sub_2694232E8();
}

uint64_t OUTLINED_FUNCTION_27_2()
{
  v2 = *(v0 + 440);
  v3 = *(v0 + 360);
}

id OUTLINED_FUNCTION_28_3(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_29_2()
{
  v2 = *(v0 + 448);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_3()
{
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];

  return sub_269423148();
}

BOOL OUTLINED_FUNCTION_46_0()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_47_1(float a1)
{
  *v3 = a1;
  *(v2 + 56) = v1;

  return v1;
}

id OUTLINED_FUNCTION_48_1(float a1)
{
  *v3 = a1;
  *(v2 + 96) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 136);
  return v3;
}

id OUTLINED_FUNCTION_52_1(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_53_1()
{
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[13];

  return sub_269423148();
}

uint64_t OUTLINED_FUNCTION_54_0()
{
}

double OUTLINED_FUNCTION_61_0()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_63_0()
{
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return sub_269424128();
}

id OUTLINED_FUNCTION_65()
{
  v3 = *(v1 + 144);
  v4 = *(v1 + 80);

  return v0;
}

uint64_t OUTLINED_FUNCTION_66()
{
}

void OUTLINED_FUNCTION_67()
{
  v2 = v0[20];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2693DB6E0(a1, a2, &a9);
}

id OUTLINED_FUNCTION_69_0()
{
  v3 = *(v1 + 168);
  v4 = *(v1 + 120);

  return v0;
}

uint64_t OUTLINED_FUNCTION_71_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_2694234B8();
}

uint64_t OUTLINED_FUNCTION_74_0()
{
  result = *(v0 - 160);
  v2 = *(*(v0 - 152) + 8);
  return result;
}

void OUTLINED_FUNCTION_78_0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
}

void OUTLINED_FUNCTION_81_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_82_0()
{
  v3 = *(v1 + 200);
  v4 = *(v1 + 168);
  v5 = *(v1 + 104);
}

void OUTLINED_FUNCTION_83_0()
{
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[20];
  v7 = v0[17];
}

uint64_t OUTLINED_FUNCTION_84_0()
{
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return sub_269423FA8();
}

void sub_26941CF28()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v2 = sub_269423DA8();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_5();
  v10 = v9 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v11 = OUTLINED_FUNCTION_2(v32);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v30 - v16;
  v18 = *(v1 + 16);
  if (v18)
  {
    v33 = MEMORY[0x277D84F90];
    sub_26941F75C(0, v18, 0);
    v20 = *(v5 + 16);
    v19 = v5 + 16;
    v21 = v33;
    v22 = *(v19 + 64);
    OUTLINED_FUNCTION_93();
    v24 = v1 + v23;
    v30 = *(v19 + 56);
    v31 = v25;
    do
    {
      v31(v10, v24, v2);
      swift_dynamicCast();
      v33 = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_26941F75C(v26 > 1, v27 + 1, 1);
        v21 = v33;
      }

      *(v21 + 16) = v27 + 1;
      v28 = *(v13 + 80);
      OUTLINED_FUNCTION_93();
      sub_2693D03F8(v17, v21 + v29 + *(v13 + 72) * v27);
      v24 += v30;
      --v18;
    }

    while (v18);
  }

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_26941D124(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_26941F8C4(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 32);
    do
    {
      v11 = *v4;
      v5 = *v4;
      v6 = *(&v11 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310208, &qword_2694288B8);
      swift_dynamicCast();
      v8 = *(v15 + 16);
      v7 = *(v15 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26941F8C4((v7 > 1), v8 + 1, 1);
      }

      *(v15 + 16) = v8 + 1;
      v9 = v15 + 40 * v8;
      *(v9 + 64) = v14;
      *(v9 + 32) = v12;
      *(v9 + 48) = v13;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

size_t sub_26941D258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  v12 = sub_269424038();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v30 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26941D124(a3);
  v17 = *(v16 + 16);
  if (!v17)
  {

    return MEMORY[0x277D84F90];
  }

  v28[1] = v16;
  v29 = v13;
  v18 = v16 + 32;
  v19 = (v13 + 32);
  v20 = MEMORY[0x277D84F90];
  do
  {
    sub_26942001C(v18, v36);
    sub_26942001C(v36, v33);
    v21 = v34;
    if (!v34)
    {
      sub_2693FD518(v36, &qword_280310208, &qword_2694288B8);
      sub_2693FD518(v33, &qword_280310208, &qword_2694288B8);
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
LABEL_11:
      sub_2693FD518(v11, &qword_28030FFF0, &unk_269428490);
      goto LABEL_12;
    }

    v22 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v23 = sub_269423FF8();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v23);
    sub_2693D5F38(v7, v21, v22, v11);
    sub_2693FD518(v7, &qword_28030F798, "JM");
    sub_2693FD518(v36, &qword_280310208, &qword_2694288B8);
    __swift_destroy_boxed_opaque_existential_1(v33);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      goto LABEL_11;
    }

    v24 = *v19;
    (*v19)(v30, v11, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_26941F23C(0, *(v20 + 16) + 1, 1, v20);
    }

    v26 = *(v20 + 16);
    v25 = *(v20 + 24);
    if (v26 >= v25 >> 1)
    {
      v20 = sub_26941F23C(v25 > 1, v26 + 1, 1, v20);
    }

    *(v20 + 16) = v26 + 1;
    v24((v20 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26), v30, v12);
LABEL_12:
    v18 += 40;
    --v17;
  }

  while (v17);

  return v20;
}

size_t sub_26941D5CC(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  v10 = sub_269424038();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v28 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_269413CD4();
  v15 = *(v14 + 16);
  if (!v15)
  {

    return MEMORY[0x277D84F90];
  }

  v26[1] = v14;
  v27 = v11;
  v16 = v14 + 32;
  v17 = (v11 + 32);
  v18 = MEMORY[0x277D84F90];
  do
  {
    sub_26942001C(v16, v34);
    sub_26942001C(v34, v31);
    v19 = v32;
    if (!v32)
    {
      sub_2693FD518(v34, &qword_280310208, &qword_2694288B8);
      sub_2693FD518(v31, &qword_280310208, &qword_2694288B8);
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
LABEL_11:
      sub_2693FD518(v9, &qword_28030FFF0, &unk_269428490);
      goto LABEL_12;
    }

    v20 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v21 = sub_269423FF8();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v21);
    sub_2693D5F38(v5, v19, v20, v9);
    sub_2693FD518(v5, &qword_28030F798, "JM");
    sub_2693FD518(v34, &qword_280310208, &qword_2694288B8);
    __swift_destroy_boxed_opaque_existential_1(v31);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      goto LABEL_11;
    }

    v22 = *v17;
    (*v17)(v28, v9, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_26941F23C(0, *(v18 + 16) + 1, 1, v18);
    }

    v24 = *(v18 + 16);
    v23 = *(v18 + 24);
    if (v24 >= v23 >> 1)
    {
      v18 = sub_26941F23C(v23 > 1, v24 + 1, 1, v18);
    }

    *(v18 + 16) = v24 + 1;
    v22((v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24), v28, v10);
LABEL_12:
    v16 += 40;
    --v15;
  }

  while (v15);

  return v18;
}

uint64_t sub_26941D938()
{
  v0 = type metadata accessor for NLContextProvider();
  v1 = OUTLINED_FUNCTION_10_2(v0);
  v2 = OBJC_IVAR____TtC22SiriTranslationIntents17NLContextProvider_log;
  if (qword_28030F0B8 != -1)
  {
    OUTLINED_FUNCTION_3_13();
    swift_once();
  }

  v3 = sub_269423FC8();
  v4 = __swift_project_value_buffer(v3, qword_280314EE8);
  result = (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  qword_2803150B8 = v1;
  return result;
}

void sub_26941D9EC()
{
  OUTLINED_FUNCTION_17_3();
  v2 = v1;
  v115 = v3;
  v116 = v4;
  v110 = v5;
  v119 = sub_269424038();
  v6 = OUTLINED_FUNCTION_2(v119);
  v117 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v120 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v121 = &v104 - v13;
  v114 = sub_2694234C8();
  v14 = OUTLINED_FUNCTION_2(v114);
  *&v112 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v104 - v22;
  v106 = sub_269423568();
  v24 = OUTLINED_FUNCTION_2(v106);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v104 - v33;
  v107 = sub_2694235B8();
  v35 = OUTLINED_FUNCTION_2(v107);
  v105 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_5();
  v41 = v40 - v39;
  v109 = sub_2694231F8();
  v42 = OUTLINED_FUNCTION_2(v109);
  v108 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_5();
  v111 = v47 - v46;
  v113 = v0;
  v118 = OBJC_IVAR____TtC22SiriTranslationIntents17NLContextProvider_log;
  v48 = sub_269423FA8();
  v49 = sub_269424368();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2693C9000, v48, v49, "NLContextProvider providing NL Context.", v50, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  type metadata accessor for NLContextProvider();
  sub_26941E398();
  if ((v2 & 1) == 0)
  {
    sub_2694235A8();
    sub_269423558();
    sub_26941EBD8();
    sub_26941E408();

    v51 = v23;
    v104 = v23;
    v52 = v112;
    v53 = v114;
    (*(v112 + 16))(v20, v51, v114);
    sub_269423548();
    v54 = v106;
    (*(v26 + 16))(v31, v34, v106);
    sub_269423598();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803101E8, &qword_269428898);
    v55 = v105;
    v56 = *(v105 + 72);
    v57 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_2694256B0;
    v59 = v107;
    (*(v55 + 16))(v58 + v57, v41, v107);
    sub_269423188();
    (*(v52 + 8))(v104, v53);
    (*(v26 + 8))(v34, v54);
    (*(v55 + 8))(v41, v59);
  }

  v60 = v120;
  if (!v116)
  {
    goto LABEL_15;
  }

  v61 = sub_26941FFC0(v116);
  if (!v61)
  {
    goto LABEL_15;
  }

  v62 = v61;
  if (!sub_269413DF4(v61))
  {

LABEL_15:
    v73 = OUTLINED_FUNCTION_26_4();
    v74 = sub_269424368();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_2693C9000, v73, v74, "Donating rrentities without intentResponse", v75, 2u);
      v60 = v120;
      OUTLINED_FUNCTION_6_0();
    }

    sub_26941D5CC(0xD000000000000025, 0x80000002694297C0);
    v62 = v111;
    sub_269423178();
    v72 = v119;
    goto LABEL_18;
  }

  if ((v62 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v62 + 32); ; i = MEMORY[0x26D63C060](0, v62))
    {
      v64 = i;

      v65 = OUTLINED_FUNCTION_26_4();
      v66 = sub_269424368();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_2693C9000, v65, v66, "Donating rrentities with intentResponse", v67, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310200, &qword_2694288B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2694256B0;
      v69 = v115;
      *(inited + 32) = v115;
      *(inited + 40) = v64;
      v70 = v64;
      v71 = v69;
      sub_26941D258(0xD000000000000025, 0x80000002694297C0, inited);
      swift_setDeallocating();
      sub_26941F644();
      v62 = v111;
      sub_269423178();

      v72 = v119;
      v60 = v120;
LABEL_18:
      v76 = OUTLINED_FUNCTION_26_4();
      v77 = sub_269424368();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 134217984;
        OUTLINED_FUNCTION_11_10();
        v79 = sub_269423168();
        if (v79)
        {
          v62 = v79;
          swift_endAccess();
          v80 = *(v62 + 16);
        }

        else
        {
          swift_endAccess();
          v80 = 0;
        }

        *(v78 + 4) = v80;
        _os_log_impl(&dword_2693C9000, v76, v77, "Donating: %ld rrentities", v78, 0xCu);
        OUTLINED_FUNCTION_6_0();
        v72 = v119;
        v60 = v120;
      }

      OUTLINED_FUNCTION_11_10();
      v81 = sub_269423168();
      if (!v81)
      {
        break;
      }

      v82 = v81;
      swift_endAccess();
      v83 = 0;
      v84 = *(v82 + 16);
      v115 = (v117 + 16);
      v116 = v84;
      v85 = (v117 + 8);
      *&v86 = 136315138;
      v112 = v86;
      v114 = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        if (v116 == v83)
        {

          goto LABEL_33;
        }

        if (v83 >= *(v82 + 16))
        {
          break;
        }

        v87 = *(v117 + 80);
        OUTLINED_FUNCTION_93();
        v88 = v82;
        v91 = v82 + v89 + *(v90 + 72) * v83;
        v92 = *(v90 + 16);
        v62 = v121;
        v92(v121, v91, v72);
        v92(v60, v62, v72);
        v93 = OUTLINED_FUNCTION_26_4();
        v94 = sub_269424368();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v122 = v96;
          *v95 = v112;
          sub_26941F6DC();
          v97 = sub_269424668();
          v99 = v98;
          v100 = *v85;
          (*v85)(v120, v119);
          v62 = sub_2693DB6E0(v97, v99, &v122);

          *(v95 + 4) = v62;
          _os_log_impl(&dword_2693C9000, v93, v94, "%s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v96);
          v72 = v119;
          OUTLINED_FUNCTION_6_0();
          v60 = v120;
          OUTLINED_FUNCTION_6_0();
        }

        else
        {

          v100 = *v85;
          (*v85)(v60, v72);
        }

        v100(v121, v72);
        ++v83;
        v82 = v88;
      }

      __break(1u);
LABEL_35:
      ;
    }

    swift_endAccess();
LABEL_33:
    v101 = v109;
    v102 = v108;
    v103 = v111;
    (*(v108 + 16))(v110, v111, v109);
    (*(v102 + 8))(v103, v101);
    OUTLINED_FUNCTION_16_3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26941E398()
{
  sub_2694231E8();
  sub_2694231B8();
  sub_269423198();
  sub_2694231A8();

  sub_2694231D8();
  return sub_2694231C8();
}

uint64_t sub_26941E408()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803101F0, &unk_2694288A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_269427450;
  *(v5 + 32) = v0;

  sub_2694236F8();
  v6 = sub_269423708();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  MEMORY[0x26D63B270](v5, v4);

  sub_2693FD518(v4, &qword_2803101F0, &unk_2694288A0);
  sub_2694235D8();
}

void sub_26941E6B0()
{
  OUTLINED_FUNCTION_17_3();
  v43 = OUTLINED_FUNCTION_24_6(v2);
  v3 = OUTLINED_FUNCTION_2(v43);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v42 = OUTLINED_FUNCTION_16_8(v11, v12, v13, v14, v15, v16, v17, v18, v41);
  v19 = OUTLINED_FUNCTION_2(v42);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_25_5();
  v26 = OUTLINED_FUNCTION_13_7(v25);
  v28 = v27;
  v29 = *(v0 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_5();
  v32 = v31 - v30;
  type metadata accessor for NLContextProvider();
  sub_26941E398();
  sub_2694235A8();
  sub_269423558();
  sub_26941EC08();
  sub_26941E408();

  v33 = OUTLINED_FUNCTION_7_6();
  v34(v33);
  sub_269423548();
  v35 = OUTLINED_FUNCTION_8_7();
  v36(v35);
  sub_269423598();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803101E8, &qword_269428898);
  v37 = *(v0 + 72);
  v38 = OUTLINED_FUNCTION_15_10();
  v39 = OUTLINED_FUNCTION_6_9(v38, xmmword_2694256B0);
  v40(v39);
  sub_269423188();
  (*(v44 + 8))();
  (*(v21 + 8))(v1, v9);
  (*(v28 + 8))(v32, v0);
  OUTLINED_FUNCTION_16_3();
}

void sub_26941E944()
{
  OUTLINED_FUNCTION_17_3();
  v43 = OUTLINED_FUNCTION_24_6(v2);
  v3 = OUTLINED_FUNCTION_2(v43);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v42 = OUTLINED_FUNCTION_16_8(v11, v12, v13, v14, v15, v16, v17, v18, v41);
  v19 = OUTLINED_FUNCTION_2(v42);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_25_5();
  v26 = OUTLINED_FUNCTION_13_7(v25);
  v28 = v27;
  v29 = *(v0 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_5();
  v32 = v31 - v30;
  type metadata accessor for NLContextProvider();
  sub_26941E398();
  sub_2694235A8();
  sub_269423558();
  sub_26941EBF0();
  sub_26941E408();

  v33 = OUTLINED_FUNCTION_7_6();
  v34(v33);
  sub_269423548();
  v35 = OUTLINED_FUNCTION_8_7();
  v36(v35);
  sub_269423598();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803101E8, &qword_269428898);
  v37 = *(v0 + 72);
  v38 = OUTLINED_FUNCTION_15_10();
  v39 = OUTLINED_FUNCTION_6_9(v38, xmmword_2694256B0);
  v40(v39);
  sub_269423188();
  (*(v44 + 8))();
  (*(v21 + 8))(v1, v9);
  (*(v28 + 8))(v32, v0);
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_26941EC20()
{
  OUTLINED_FUNCTION_14_6();
  v1 = sub_2694239B8();
  OUTLINED_FUNCTION_10_2(v1);
  v2 = sub_2694239A8();
  v0();
  sub_269423828();

  return v2;
}

uint64_t sub_26941EC70()
{
  v1 = sub_269423908();
  OUTLINED_FUNCTION_10_2(v1);
  sub_2694238F8();
  OUTLINED_FUNCTION_14_6();
  v2 = sub_269423998();
  OUTLINED_FUNCTION_10_2(v2);
  sub_269423988();
  OUTLINED_FUNCTION_22_5();
  v3 = sub_269423868();
  OUTLINED_FUNCTION_10_2(v3);
  sub_269423858();
  sub_269423978();

  sub_2694238E8();

  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  swift_allocObject();
  sub_269423988();
  sub_269423968();

  sub_2694238D8();

  return v0;
}

uint64_t sub_26941ED74()
{
  v1 = sub_269423908();
  OUTLINED_FUNCTION_10_2(v1);
  sub_2694238F8();
  OUTLINED_FUNCTION_14_6();
  v2 = sub_269423998();
  OUTLINED_FUNCTION_10_2(v2);
  sub_269423988();
  OUTLINED_FUNCTION_22_5();
  v3 = sub_269423868();
  OUTLINED_FUNCTION_10_2(v3);
  sub_269423858();
  sub_269423978();

  sub_2694238E8();

  return v0;
}

uint64_t sub_26941EE18()
{
  v1 = sub_269423908();
  OUTLINED_FUNCTION_10_2(v1);
  sub_2694238F8();
  OUTLINED_FUNCTION_14_6();
  v2 = sub_269423998();
  OUTLINED_FUNCTION_10_2(v2);
  sub_269423988();
  OUTLINED_FUNCTION_22_5();
  sub_269423968();

  sub_2694238D8();

  return v0;
}

uint64_t sub_26941EE9C()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents17NLContextProvider_log;
  v2 = sub_269423FC8();
  OUTLINED_FUNCTION_4_5(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for NLContextProvider()
{
  result = qword_2803101D8;
  if (!qword_2803101D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26941EF94(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_5_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20_8();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_11();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310218, &qword_2694288D0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[v9] <= v13)
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }
}

void sub_26941F074(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_5_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20_8();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_11();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310228, &qword_2694288E0);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_23_6();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26941F15C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_5_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20_8();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_11();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F938, qword_269428910);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_23_6();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

size_t sub_26941F23C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26941F388(v9, a2, &qword_280310210, &unk_2694288C0, MEMORY[0x277D5FEB0]);
  v11 = *(sub_269424038() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_26941F584(a4 + v12, v9, v10 + v12, MEMORY[0x277D5FEB0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26941F388(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
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
  v8 = OUTLINED_FUNCTION_22_5();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26941F498(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_26941F584(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_4_5(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_21_6();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_21_6();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_26941F644()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_26941F688(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_26941F6AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26941F6DC()
{
  result = qword_2803101F8;
  if (!qword_2803101F8)
  {
    sub_269424038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803101F8);
  }

  return result;
}

unint64_t sub_26941F738(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

size_t sub_26941F75C(size_t a1, int64_t a2, char a3)
{
  result = sub_26941F920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26941F77C()
{
  v1 = *v0;
  sub_26941FAEC();
  *v0 = v2;
}

char *sub_26941F7D4(char *a1, int64_t a2, char a3)
{
  result = sub_26941FC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26941F7F4(char *a1, int64_t a2, char a3)
{
  result = sub_26941FD94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26941F814()
{
  v1 = *v0;
  sub_26941FAEC();
  *v0 = v2;
}

void sub_26941F86C()
{
  v1 = *v0;
  sub_26941FAEC();
  *v0 = v2;
}

void *sub_26941F8C4(void *a1, int64_t a2, char a3)
{
  result = sub_26941FE88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26941F920(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310238, &qword_2694288F8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26941F498(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_26941FAEC()
{
  OUTLINED_FUNCTION_17_3();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_5_12();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_20_8();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_11();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = *(v6(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(*(v6(0) - 8) + 80);
  OUTLINED_FUNCTION_93();
  if (v10)
  {
    sub_26941F584(v8 + v24, v15, v20 + v24, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_16_3();
}

char *sub_26941FC8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310228, &qword_2694288E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26941FD94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310218, &qword_2694288D0);
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

void *sub_26941FE88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100D8, "B/");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310208, &qword_2694288B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26941FFC0(void *a1)
{
  if (![a1 translationResultItems])
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_6();
  type metadata accessor for TranslationResultItem();
  v2 = sub_269424288();

  return v2;
}

uint64_t sub_26942001C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310208, &qword_2694288B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *OUTLINED_FUNCTION_6_9(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = *(v2 + 16);
  result = a1 + v3;
  v7 = *(v4 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_6()
{
  v2 = *(*(v1 - 88) + 16);
  result = v0;
  v4 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_7()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_10()
{
  v2 = *(v0 - 264);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t result)
{
  *(v1 - 112) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_10()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 96) = &a9 - v9;

  return sub_269423568();
}

uint64_t OUTLINED_FUNCTION_24_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;

  return sub_2694234C8();
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return sub_2694235B8();
}

uint64_t OUTLINED_FUNCTION_26_4()
{
  v3 = v0 + *(v1 - 192);

  return sub_269423FA8();
}

id TranslatePhraseIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranslatePhraseIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslatePhraseIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TranslatePhraseIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TranslatePhraseIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for TranslatePhraseIntent();
  v9 = OUTLINED_FUNCTION_0_22(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id TranslatePhraseIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_269424108();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id TranslatePhraseIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_269424108();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for TranslatePhraseIntent();
  v12 = OUTLINED_FUNCTION_0_22(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id TranslatePhraseIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_12();

  v3 = sub_269424108();

  if (v1)
  {
    v4 = sub_269424098();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id TranslatePhraseIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_12();

  v3 = sub_269424108();

  if (v1)
  {
    v4 = sub_269424098();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for TranslatePhraseIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t TranslatePhraseIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2694207D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TranslatePhraseIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TranslatePhraseIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___TranslatePhraseIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2694208A0(uint64_t a1)
{
  v3 = OBJC_IVAR___TranslatePhraseIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *TranslatePhraseIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___TranslatePhraseIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id TranslatePhraseIntentResponse.init()()
{
  *&v0[OBJC_IVAR___TranslatePhraseIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslatePhraseIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TranslatePhraseIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___TranslatePhraseIntentResponse_code) = 0;
  v13 = type metadata accessor for TranslatePhraseIntentResponse();
  v9 = OUTLINED_FUNCTION_0_22(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id TranslatePhraseIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id TranslatePhraseIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___TranslatePhraseIntentResponse_code) = 0;
  v13 = type metadata accessor for TranslatePhraseIntentResponse();
  v9 = OUTLINED_FUNCTION_0_22(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id TranslatePhraseIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_269424098();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id TranslatePhraseIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___TranslatePhraseIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_269424098();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for TranslatePhraseIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_269420D80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_269420DBC()
{
  result = qword_280310258;
  if (!qword_280310258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310258);
  }

  return result;
}

uint64_t sub_269420E10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = TranslatePhraseIntentResponse.code.getter();
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return sub_269424108();
}

uint64_t sub_269420EE4()
{
  sub_269424738();
  OUTLINED_FUNCTION_1_13();
  return sub_269424758();
}

uint64_t sub_269420F44(uint64_t a1, void (*a2)(uint64_t))
{
  sub_269424738();
  a2(a1);
  OUTLINED_FUNCTION_0_23();

  return sub_269424758();
}

uint64_t sub_269420FA0(uint64_t a1)
{
  sub_269424738();
  MEMORY[0x26D63C2F0](a1);
  return sub_269424758();
}

uint64_t sub_269421040(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_269424188();
}

uint64_t sub_269421098()
{
  sub_269424188();
}

uint64_t sub_269421128()
{
  sub_269424188();
}

uint64_t sub_2694211A0()
{
  sub_269424188();
}

uint64_t sub_2694212F4()
{
  sub_269424738();
  sub_269424188();

  return sub_269424758();
}

uint64_t sub_269421380()
{
  sub_269424738();
  OUTLINED_FUNCTION_1_13();
  return sub_269424758();
}

uint64_t sub_2694213B8()
{
  sub_269424738();
  sub_269424188();

  return sub_269424758();
}

uint64_t sub_269421478(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_269424738();
  a3(a2);
  OUTLINED_FUNCTION_0_23();

  return sub_269424758();
}

uint64_t sub_2694214D0(uint64_t a1, uint64_t a2)
{
  sub_269424738();
  MEMORY[0x26D63C2F0](a2);
  return sub_269424758();
}

id GetSupportedLanguagesIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetSupportedLanguagesIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSupportedLanguagesIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetSupportedLanguagesIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetSupportedLanguagesIntent.init(coder:)(void *a1)
{
  SupportedLanguagesIntent = type metadata accessor for GetSupportedLanguagesIntent();
  v9 = OUTLINED_FUNCTION_0_22(SupportedLanguagesIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetSupportedLanguagesIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_269424108();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id GetSupportedLanguagesIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_269424108();
  }

  else
  {
    v5 = 0;
  }

  SupportedLanguagesIntent = type metadata accessor for GetSupportedLanguagesIntent();
  v12 = OUTLINED_FUNCTION_0_22(SupportedLanguagesIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id GetSupportedLanguagesIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_12();

  v3 = sub_269424108();

  if (v1)
  {
    v4 = sub_269424098();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id GetSupportedLanguagesIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_12();

  v3 = sub_269424108();

  if (v1)
  {
    v4 = sub_269424098();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for GetSupportedLanguagesIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t GetSupportedLanguagesIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_269421A84@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetSupportedLanguagesIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t GetSupportedLanguagesIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___GetSupportedLanguagesIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269421B48(uint64_t a1)
{
  v3 = OBJC_IVAR___GetSupportedLanguagesIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *GetSupportedLanguagesIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetSupportedLanguagesIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetSupportedLanguagesIntentResponse.init()()
{
  *&v0[OBJC_IVAR___GetSupportedLanguagesIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSupportedLanguagesIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetSupportedLanguagesIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetSupportedLanguagesIntentResponse_code) = 0;
  SupportedLanguagesIntentResponse = type metadata accessor for GetSupportedLanguagesIntentResponse();
  v9 = OUTLINED_FUNCTION_0_22(SupportedLanguagesIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetSupportedLanguagesIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id GetSupportedLanguagesIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetSupportedLanguagesIntentResponse_code) = 0;
  SupportedLanguagesIntentResponse = type metadata accessor for GetSupportedLanguagesIntentResponse();
  v9 = OUTLINED_FUNCTION_0_22(SupportedLanguagesIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetSupportedLanguagesIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_269424098();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id GetSupportedLanguagesIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetSupportedLanguagesIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_269424098();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetSupportedLanguagesIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_269422048(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_269422084()
{
  result = qword_280310268;
  if (!qword_280310268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310268);
  }

  return result;
}

uint64_t sub_2694220D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = GetSupportedLanguagesIntentResponse.code.getter();
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_23()
{

  return sub_269424188();
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return sub_269424188();
}

id TranslationResultItem.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_14();
  if (v2)
  {
    v3 = sub_269424108();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269424108();

  if (v1)
  {
    v5 = sub_269424108();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id TranslationResultItem.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_14();
  if (v2)
  {
    v3 = sub_269424108();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269424108();

  if (v1)
  {
    v5 = sub_269424108();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for TranslationResultItem();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id TranslationResultItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TranslationResultItem.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TranslationResultItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static TranslationResultItemResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TranslationResultItemResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static TranslationResultItemResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_269422694();

    sub_269424578();
  }

  else
  {

    sub_269424698();
    sub_269422694();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_269422694();
  v2 = sub_269424278();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___TranslationResultItemResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_269422694()
{
  result = qword_280310270;
  if (!qword_280310270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280310270);
  }

  return result;
}

id static TranslationResultItemResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TranslationResultItemResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id TranslationResultItemResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_269424098();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id TranslationResultItemResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_269424098();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TranslationResultItemResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_269422AC0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return sub_269424568();
}