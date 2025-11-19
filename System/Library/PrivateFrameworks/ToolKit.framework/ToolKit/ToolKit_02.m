uint64_t sub_1C8CC6708()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_63();
  v3 = *(v0 + 48);

  return v2(v3);
}

uint64_t OUTLINED_FUNCTION_45_5()
{

  return sub_1C8D16D78(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_45_7@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 304) = a1;
  v4 = *(*(v1 + a1) + 40);

  return sub_1C9064D7C();
}

uint64_t OUTLINED_FUNCTION_45_8()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_45_11()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_45_20()
{

  return sub_1C8F44DE8(0, 0, v1, &unk_1C90ABDF8, v0);
}

uint64_t OUTLINED_FUNCTION_45_21()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_45_22()
{

  return sub_1C9042FCC(v0, type metadata accessor for ToolRecord);
}

uint64_t OUTLINED_FUNCTION_173_3()
{
}

void OUTLINED_FUNCTION_173_5()
{

  sub_1C8D00CA4();
}

uint64_t sub_1C8CC6AB4()
{
  v1 = OUTLINED_FUNCTION_258();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C8CC6B08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return sub_1C9063E2C();
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return sub_1C8D85364(v0, type metadata accessor for ToolKitProtoTypeInstance.Union);
}

uint64_t OUTLINED_FUNCTION_21_10()
{

  return sub_1C9064B8C();
}

void *OUTLINED_FUNCTION_21_11(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_21_16()
{
  v2 = *(v0 - 192);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_21_17()
{

  return sub_1C906270C();
}

uint64_t OUTLINED_FUNCTION_21_18()
{
  result = v1;
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[11];
  return result;
}

uint64_t OUTLINED_FUNCTION_21_22()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_21_24()
{
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = v0[4];
}

uint64_t OUTLINED_FUNCTION_21_25()
{

  return swift_getObjectType();
}

void *OUTLINED_FUNCTION_21_26()
{

  return memcpy((v0 - 336), (v0 - 208), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_21_32()
{
  result = 0;
  *(v0 - 112) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_119_5()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];

  return swift_willThrow();
}

void TypedValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v175 = v21;
  v26 = v25;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B40, &qword_1C907D8B0);
  OUTLINED_FUNCTION_11(v173);
  v162[5] = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v172 = v31;
  v32 = OUTLINED_FUNCTION_111();
  v170 = type metadata accessor for TypedValue.CodableValue(v32);
  v33 = OUTLINED_FUNCTION_13_1(v170);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7_0();
  v171 = v36;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B48, &qword_1C907D8B8);
  OUTLINED_FUNCTION_11(v169);
  v162[4] = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v168 = v41;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B50, &qword_1C907D8C0);
  OUTLINED_FUNCTION_11(v167);
  v162[3] = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  v166 = v46;
  v47 = OUTLINED_FUNCTION_111();
  v163 = type metadata accessor for TypedValue.EntityIdentifierValue(v47);
  v48 = OUTLINED_FUNCTION_13_1(v163);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_7_0();
  v165 = v51;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B58, &qword_1C907D8C8);
  OUTLINED_FUNCTION_11(v164);
  v162[2] = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B60, &qword_1C907D8D0);
  OUTLINED_FUNCTION_4_22(v57, &a17);
  v162[1] = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  v63 = OUTLINED_FUNCTION_27_0(v62);
  Value = type metadata accessor for TypedValue.QueryValue(v63);
  v65 = OUTLINED_FUNCTION_23_16(Value, &a14);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B68, &qword_1C907D8D8);
  OUTLINED_FUNCTION_4_22(v69, &a13);
  v162[0] = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B70, &qword_1C907D8E0);
  OUTLINED_FUNCTION_4_22(v75, &a11);
  v162[15] = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_97();
  v81 = OUTLINED_FUNCTION_27_0(v80);
  v82 = type metadata accessor for TypedValue.EntityValue(v81);
  v83 = OUTLINED_FUNCTION_23_16(v82, &v182);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B78, &qword_1C907D8E8);
  OUTLINED_FUNCTION_4_22(v87, &v181);
  v162[10] = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_97();
  v93 = OUTLINED_FUNCTION_27_0(v92);
  v94 = type metadata accessor for TypedValue.EnumerationValue(v93);
  v95 = OUTLINED_FUNCTION_23_16(v94, &v178);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B80, &qword_1C907D8F0);
  OUTLINED_FUNCTION_11(v99);
  v162[6] = v100;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v103);
  v105 = v162 - v104;
  v106 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v107 = OUTLINED_FUNCTION_13_1(v106);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_17_12();
  a10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B88, &qword_1C907D8F8);
  OUTLINED_FUNCTION_11(a10);
  v174 = v110;
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_72();
  v114 = *v20;
  v115 = v26;
  v117 = v26[3];
  v116 = v26[4];
  OUTLINED_FUNCTION_217(v115, v117);
  sub_1C8CC7CBC();
  v176 = v22;
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  switch(v114 >> 60)
  {
    case 1uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_13_15();
      OUTLINED_FUNCTION_199_3(v179);
      sub_1C8CC5734();
      LOBYTE(v177) = 1;
      sub_1C8DF24DC();
      OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_188_2();
      sub_1C8CC8068(v141);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135(&v181);
      OUTLINED_FUNCTION_140_3(&v178);
      v142 = OUTLINED_FUNCTION_25_12(&v180);
      v143(v142);
      goto LABEL_12;
    case 2uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_15_15();
      OUTLINED_FUNCTION_199_3(&v183);
      sub_1C8CC5734();
      LOBYTE(v177) = 2;
      sub_1C8DF2488();
      OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_190_4();
      sub_1C8CC8068(v127);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135(&a11);
      OUTLINED_FUNCTION_140_3(&v182);
      v128 = OUTLINED_FUNCTION_25_12(&a10);
      v129(v128);
      goto LABEL_12;
    case 3uLL:
      v131 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v130 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v177) = 3;
      sub_1C8DF23E0();

      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      v177 = v131;
      v178 = v130;
      sub_1C8DF2434();
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296(&v171);
      v132 = OUTLINED_FUNCTION_114();
      v133(v132);
      v134 = OUTLINED_FUNCTION_55_4();
      goto LABEL_7;
    case 4uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_199_3(&a15);
      sub_1C8CC5734();
      LOBYTE(v177) = 4;
      sub_1C8DF238C();
      OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_191_4();
      sub_1C8CC8068(v124);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135(&a17);
      OUTLINED_FUNCTION_140_3(&a14);
      v125 = OUTLINED_FUNCTION_25_12(&v172);
      v126(v125);
      goto LABEL_12;
    case 5uLL:
      v144 = v114 & 0xFFFFFFFFFFFFFFFLL;
      v146 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v145 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v147 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v148 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v150 = *(v144 + 48);
      v149 = *(v144 + 56);
      v151 = *(v144 + 64);
      LOBYTE(v177) = 5;

      sub_1C8D4F44C(v147, v148, v150, v149, v151);
      sub_1C8DF22E4();
      OUTLINED_FUNCTION_161_1(&a18);
      sub_1C9064ACC();
      v171 = v146;
      v172 = v148;
      v177 = v146;
      v178 = v145;
      v173 = v147;
      v179[0] = v147;
      v179[1] = v148;
      v180 = v150;
      v181 = v149;
      v182 = v151;
      sub_1C8DF2338();
      v152 = v164;
      sub_1C9064B8C();
      v153 = OUTLINED_FUNCTION_62_0(&v173);
      v154(v153, v152);
      OUTLINED_FUNCTION_40_8();
      v155(v176, a10);

      sub_1C8D43CA8(v173, v172, v150, v149, v151);
      goto LABEL_14;
    case 6uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_12_15();
      sub_1C8CC5734();
      LOBYTE(v177) = 6;
      sub_1C8DF2290();
      OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_187_3();
      sub_1C8CC8068(v156);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_150_2();
      sub_1C9064B8C();
      v157 = OUTLINED_FUNCTION_25_12(&v174);
      v158(v157);
      goto LABEL_12;
    case 7uLL:
      v136 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v137 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v138 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v177) = 7;
      sub_1C8DF21E8();

      sub_1C9064ACC();
      v177 = v136;
      v178 = v137;
      v179[0] = v138;
      sub_1C8DF223C();
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296(&v175);
      v139 = OUTLINED_FUNCTION_162();
      v140(v139);
      OUTLINED_FUNCTION_40_8();
      v134 = OUTLINED_FUNCTION_203();
LABEL_7:
      v135(v134);

      goto LABEL_14;
    case 8uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_11_17();
      sub_1C8CC5734();
      LOBYTE(v177) = 8;
      sub_1C8DF2194();
      OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_186_3();
      sub_1C8CC8068(v159);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_150_2();
      sub_1C9064B8C();
      v160 = OUTLINED_FUNCTION_25_12(&v176);
      v161(v160);
LABEL_12:
      sub_1C8CC6AB4();
      OUTLINED_FUNCTION_40_8();
      v121 = OUTLINED_FUNCTION_93();
      goto LABEL_13;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_47();
      sub_1C8CC5734();
      LOBYTE(v177) = 0;
      sub_1C8CC7D10();
      v118 = a10;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_192_3();
      sub_1C8CC8068(v119);
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296(&v177);
      v120(v105, v99);
      OUTLINED_FUNCTION_14_20();
      sub_1C8CC6AB4();
      v121 = OUTLINED_FUNCTION_241();
      v123 = v118;
LABEL_13:
      v122(v121, v123);
LABEL_14:
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t OUTLINED_FUNCTION_242(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_242_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_1C8CACE04(a1, a2, va);
}

unint64_t sub_1C8CC7CBC()
{
  result = qword_1EDA6D5F0;
  if (!qword_1EDA6D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5F0);
  }

  return result;
}

unint64_t sub_1C8CC7D10()
{
  result = qword_1EDA6D5B8;
  if (!qword_1EDA6D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5B8);
  }

  return result;
}

unint64_t sub_1C8CC7D6C(char a1)
{
  result = 0x766974696D697270;
  switch(a1)
  {
    case 1:
      result = 0x746172656D756E65;
      break;
    case 2:
      result = 0x797469746E65;
      break;
    case 3:
      result = 0x697463656C6C6F63;
      break;
    case 4:
      result = 0x7972657571;
      break;
    case 5:
      result = 0x6465727265666564;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x636E657265666572;
      break;
    case 8:
      result = 0x656C6261646F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8CC7E94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_BYTE *sub_1C8CC7EAC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C8CC7F68);
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8CC7F9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_80(v8);
}

uint64_t sub_1C8CC8020(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C8CC8068(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C8CC80AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_139_2()
{
  *(v4 - 176) = v1;
  *(v4 - 168) = v3;
  *(v4 - 160) = v0;
  v7 = *(v4 - 104);
  v6 = *(v4 - 96);
  *(v4 - 88) = v2;

  return sub_1C9064A9C();
}

uint64_t OUTLINED_FUNCTION_139_3@<X0>(uint64_t a1@<X8>)
{

  return sub_1C8D8D3E0(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_203_0()
{
  v3 = *(v1 - 104);

  return sub_1C8CD0D98(v3, v0);
}

_BYTE *sub_1C8CC81B4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1C8CC8250);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void TypedValue.PrimitiveValue.encode(to:)(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315740, &qword_1C907D640);
  v7 = OUTLINED_FUNCTION_11(v6);
  v415 = v8;
  v416 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_97();
  v414 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315748, &qword_1C907D648);
  v14 = OUTLINED_FUNCTION_11(v13);
  v412 = v15;
  v413 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  v409 = v19;
  OUTLINED_FUNCTION_111();
  v20 = sub_1C9061D4C();
  v21 = OUTLINED_FUNCTION_11(v20);
  v410 = v22;
  v411 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_0();
  v408 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315750, &qword_1C907D650);
  OUTLINED_FUNCTION_4_22(v26, &v435);
  v406 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315758, &qword_1C907D658);
  OUTLINED_FUNCTION_4_22(v32, &v433);
  v404 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v37);
  v38 = sub_1C906194C();
  v39 = OUTLINED_FUNCTION_4_22(v38, &v430);
  v401 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315760, &qword_1C907D660);
  OUTLINED_FUNCTION_4_22(v44, &v427);
  v397 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v49);
  v50 = sub_1C90622FC();
  v51 = OUTLINED_FUNCTION_4_22(v50, &v425);
  v395 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315768, &qword_1C907D668);
  OUTLINED_FUNCTION_4_22(v56, &v423);
  v391 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  v62 = OUTLINED_FUNCTION_27_0(v61);
  v63 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v62);
  v64 = OUTLINED_FUNCTION_23_16(v63, &v420);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315770, &qword_1C907D670);
  OUTLINED_FUNCTION_4_22(v68, &v419);
  v386 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315778, &qword_1C907D678);
  OUTLINED_FUNCTION_4_22(v74, &v416);
  v383 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_97();
  v80 = OUTLINED_FUNCTION_27_0(v79);
  v81 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v80);
  v82 = OUTLINED_FUNCTION_23_16(v81, &v412);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315780, &qword_1C907D680);
  OUTLINED_FUNCTION_4_22(v86, &v411);
  v380 = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_97();
  v92 = OUTLINED_FUNCTION_27_0(v91);
  v93 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v92);
  v94 = OUTLINED_FUNCTION_23_16(v93, v407);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315788, &qword_1C907D688);
  OUTLINED_FUNCTION_4_22(v98, &v406);
  v376 = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_97();
  v104 = OUTLINED_FUNCTION_27_0(v103);
  v105 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v104);
  v106 = OUTLINED_FUNCTION_23_16(v105, v402);
  v108 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315790, &qword_1C907D690);
  OUTLINED_FUNCTION_4_22(v110, &v401);
  v372 = v111;
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_97();
  v116 = OUTLINED_FUNCTION_27_0(v115);
  v117 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v116);
  v118 = OUTLINED_FUNCTION_23_16(v117, &v397);
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315798, &qword_1C907D698);
  OUTLINED_FUNCTION_4_22(v122, v396);
  v367 = v123;
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_97();
  v128 = OUTLINED_FUNCTION_27_0(v127);
  v129 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v128);
  v130 = OUTLINED_FUNCTION_23_16(v129, v392);
  v132 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157A0, &qword_1C907D6A0);
  OUTLINED_FUNCTION_4_22(v134, &v391);
  v362 = v135;
  v137 = *(v136 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_97();
  v140 = OUTLINED_FUNCTION_27_0(v139);
  v141 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v140);
  v142 = OUTLINED_FUNCTION_23_16(v141, v387);
  v144 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v145);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157A8, &qword_1C907D6A8);
  OUTLINED_FUNCTION_4_22(v146, &v386);
  v358 = v147;
  v149 = *(v148 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v151);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_4_22(v152, v384);
  v355 = v153;
  v155 = *(v154 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v157);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157B0, &qword_1C907D6B0);
  OUTLINED_FUNCTION_4_22(v158, v382);
  v352 = v159;
  v161 = *(v160 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v163);
  v164 = sub_1C9061C0C();
  v165 = OUTLINED_FUNCTION_4_22(v164, &v380);
  v350 = v166;
  v168 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v165);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v169);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157B8, &qword_1C907D6B8);
  OUTLINED_FUNCTION_4_22(v170, v377);
  v346 = v171;
  v173 = *(v172 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v175);
  v176 = sub_1C9061EBC();
  v177 = OUTLINED_FUNCTION_4_22(v176, v375);
  v345 = v178;
  v180 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v181);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157C0, &qword_1C907D6C0);
  OUTLINED_FUNCTION_4_22(v182, &v372);
  v344 = v183;
  v185 = *(v184 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v186);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v187);
  v188 = sub_1C9061BAC();
  v189 = OUTLINED_FUNCTION_4_22(v188, v370);
  v343 = v190;
  v192 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v189);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v193);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157C8, &qword_1C907D6C8);
  OUTLINED_FUNCTION_4_22(v194, v366);
  v342 = v195;
  v197 = *(v196 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v199);
  v200 = sub_1C9061FEC();
  v201 = OUTLINED_FUNCTION_4_22(v200, v364);
  v203 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v204);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157D0, &qword_1C907D6D0);
  OUTLINED_FUNCTION_4_22(v205, v361);
  v207 = *(v206 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v208);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v209);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157D8, &qword_1C907D6D8);
  OUTLINED_FUNCTION_4_22(v210, v359);
  v212 = *(v211 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v213);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v214);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157E0, &qword_1C907D6E0);
  OUTLINED_FUNCTION_4_22(v215, &v355);
  v217 = *(v216 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v218);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v219);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157E8, &qword_1C907D6E8);
  OUTLINED_FUNCTION_4_22(v220, &v352);
  v222 = *(v221 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v223);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v224);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157F0, &qword_1C907D6F0);
  OUTLINED_FUNCTION_4_22(v225, v349);
  v227 = *(v226 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v228);
  OUTLINED_FUNCTION_233();
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157F8, &qword_1C907D6F8);
  OUTLINED_FUNCTION_11(v229);
  v231 = *(v230 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v232);
  OUTLINED_FUNCTION_110();
  v233 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v234 = OUTLINED_FUNCTION_13_1(v233);
  v236 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v234);
  OUTLINED_FUNCTION_14();
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315800, &unk_1C907D700);
  v418 = OUTLINED_FUNCTION_11(v237);
  v419 = v238;
  v240 = *(v239 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v241);
  OUTLINED_FUNCTION_15_0();
  v242 = *(a1 + 24);
  v243 = *(a1 + 32);
  v244 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_217(v244, v245);
  sub_1C8CCA1E4();
  v417 = v2;
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_0_47();
  sub_1C8CC5734();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v246 = *v1;
      LOBYTE(v424) = 2;
      sub_1C8DF1BBC();
      v247 = v418;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_319_0(&v352);
      OUTLINED_FUNCTION_150_2();
      sub_1C9064B6C();
      v249 = OUTLINED_FUNCTION_54(v351);
      goto LABEL_14;
    case 2u:
      v279 = *v1;
      LOBYTE(v424) = 3;
      sub_1C8DF1B68();
      OUTLINED_FUNCTION_53_6(v353);
      OUTLINED_FUNCTION_150_2();
      sub_1C9064B4C();
      v280 = OUTLINED_FUNCTION_25_12(v354);
      v281(v280);
      goto LABEL_32;
    case 3u:
      v424 = *v1;
      v425 = *(v1 + 4);
      LOBYTE(v422) = 4;
      sub_1C8DF1B14();
      OUTLINED_FUNCTION_123(v356);
      v247 = v418;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      v422 = v424;
      v423 = v425;
      type metadata accessor for Decimal(0);
      OUTLINED_FUNCTION_37_11();
      sub_1C8CC8068(v285);
      OUTLINED_FUNCTION_333_1();
      sub_1C9064B8C();
      v249 = OUTLINED_FUNCTION_20_12(&v358);
      goto LABEL_15;
    case 4u:
      v264 = *v1;
      v263 = *(v1 + 1);
      LOBYTE(v424) = 5;
      sub_1C8DF1AC0();
      OUTLINED_FUNCTION_123(v357);
      v247 = v418;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_333_1();
      sub_1C9064B2C();

      v265 = OUTLINED_FUNCTION_45(v360);
      v266(v265);
      v267 = OUTLINED_FUNCTION_241();
      goto LABEL_16;
    case 5u:
      OUTLINED_FUNCTION_113_1(v363);
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v302(v300, v301);
      LOBYTE(v424) = 6;
      sub_1C8DF1A6C();
      OUTLINED_FUNCTION_69_2(&v362);
      OUTLINED_FUNCTION_36_9();
      sub_1C8CC8068(v303);
      OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(v366);
      v291 = &v365;
      goto LABEL_30;
    case 6u:
      OUTLINED_FUNCTION_113_1(v369);
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v314(v312, v313);
      LOBYTE(v424) = 7;
      sub_1C8DF1A18();
      OUTLINED_FUNCTION_69_2(v368);
      OUTLINED_FUNCTION_34_9();
      sub_1C8CC8068(v315);
      OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(&v372);
      v291 = &v371;
      goto LABEL_30;
    case 7u:
      OUTLINED_FUNCTION_113_1(v374);
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v289(v287, v288);
      LOBYTE(v424) = 8;
      sub_1C8DF19C4();
      OUTLINED_FUNCTION_69_2(v373);
      OUTLINED_FUNCTION_38_10();
      sub_1C8CC8068(v290);
      OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(v377);
      v291 = &v376;
      goto LABEL_30;
    case 8u:
      OUTLINED_FUNCTION_113_1(v379);
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v325(v323, v324);
      LOBYTE(v424) = 9;
      sub_1C8DF1970();
      OUTLINED_FUNCTION_69_2(v378);
      OUTLINED_FUNCTION_33_8();
      sub_1C8CC8068(v326);
      OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(v382);
      v291 = &v381;
      goto LABEL_30;
    case 9u:
      v272 = v355;
      v273 = *(v355 + 32);
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v276(v274, v275);
      LOBYTE(v424) = 10;
      sub_1C8DF191C();
      OUTLINED_FUNCTION_123(&v383);
      OUTLINED_FUNCTION_77_2();
      sub_1C8D24EA8(&unk_1EC315898);
      OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_135(&v386);
      OUTLINED_FUNCTION_333_1();
      sub_1C9064B8C();
      v277 = OUTLINED_FUNCTION_45(&v385);
      v278(v277, v229);
      (*(v272 + 8))(v243, v233);
      goto LABEL_32;
    case 0xAu:
      OUTLINED_FUNCTION_199_3(v388);
      sub_1C8CCEB64();
      LOBYTE(v424) = 11;
      sub_1C8DF18C8();
      OUTLINED_FUNCTION_53_6(v389);
      OUTLINED_FUNCTION_169_2();
      sub_1C8CC8068(v320);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135(&v391);
      OUTLINED_FUNCTION_140_3(v387);
      v321 = OUTLINED_FUNCTION_25_12(v390);
      v322(v321);
      goto LABEL_25;
    case 0xBu:
      OUTLINED_FUNCTION_199_3(v393);
      sub_1C8CCEB64();
      LOBYTE(v424) = 12;
      sub_1C8DF1874();
      OUTLINED_FUNCTION_53_6(v394);
      OUTLINED_FUNCTION_175_1();
      sub_1C8CC8068(v260);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135(v396);
      OUTLINED_FUNCTION_140_3(v392);
      v261 = OUTLINED_FUNCTION_25_12(&v395);
      v262(v261);
      goto LABEL_25;
    case 0xCu:
      OUTLINED_FUNCTION_199_3(v398);
      sub_1C8CCEB64();
      LOBYTE(v424) = 13;
      sub_1C8DF1820();
      OUTLINED_FUNCTION_53_6(v399);
      OUTLINED_FUNCTION_173_2();
      sub_1C8CC8068(v269);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135(&v401);
      OUTLINED_FUNCTION_140_3(&v397);
      v270 = OUTLINED_FUNCTION_25_12(v400);
      v271(v270);
      goto LABEL_25;
    case 0xDu:
      OUTLINED_FUNCTION_199_3(v403);
      sub_1C8CCEB64();
      LOBYTE(v424) = 14;
      sub_1C8DF17CC();
      OUTLINED_FUNCTION_53_6(&v404);
      OUTLINED_FUNCTION_170_4();
      sub_1C8CC8068(v309);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135(&v406);
      OUTLINED_FUNCTION_140_3(v402);
      v310 = OUTLINED_FUNCTION_25_12(v405);
      v311(v310);
      goto LABEL_25;
    case 0xEu:
      OUTLINED_FUNCTION_199_3(&v408);
      sub_1C8CCEB64();
      LOBYTE(v424) = 15;
      sub_1C8DF1778();
      OUTLINED_FUNCTION_53_6(&v409);
      OUTLINED_FUNCTION_176_2();
      sub_1C8CC8068(v257);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135(&v411);
      OUTLINED_FUNCTION_140_3(v407);
      v258 = OUTLINED_FUNCTION_25_12(&v410);
      v259(v258);
      goto LABEL_25;
    case 0xFu:
      OUTLINED_FUNCTION_199_3(&v413);
      sub_1C8CCEB64();
      LOBYTE(v424) = 16;
      sub_1C8DF1724();
      OUTLINED_FUNCTION_53_6(&v414);
      OUTLINED_FUNCTION_172_0();
      sub_1C8CC8068(v282);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135(&v416);
      OUTLINED_FUNCTION_140_3(&v412);
      v283 = OUTLINED_FUNCTION_25_12(&v415);
      v284(v283);
      goto LABEL_25;
    case 0x10u:
      v250 = *v1;
      LOBYTE(v424) = 17;
      sub_1C8DF16D0();
      v251 = v385;
      OUTLINED_FUNCTION_91_2();
      sub_1C9064ACC();
      *&v424 = v250;
      v252 = &unk_1EC315860;
      v253 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v253, v254);
      OUTLINED_FUNCTION_6_18();
      OUTLINED_FUNCTION_290_1(v255);
      OUTLINED_FUNCTION_319_0(&v419);
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B8C();
      v256 = v386;
      goto LABEL_28;
    case 0x11u:
      OUTLINED_FUNCTION_199_3(&v421);
      sub_1C8CCEB64();
      LOBYTE(v424) = 18;
      sub_1C8DF167C();
      OUTLINED_FUNCTION_53_6(&v422);
      OUTLINED_FUNCTION_171_3();
      sub_1C8CC8068(v293);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135(&v423);
      OUTLINED_FUNCTION_140_3(&v420);
      v294 = OUTLINED_FUNCTION_25_12(&v422 + 8);
      v295(v294);
LABEL_25:
      sub_1C8CC6AB4();
      goto LABEL_32;
    case 0x12u:
      OUTLINED_FUNCTION_113_1(&v424 + 8);
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v318(v316, v317);
      LOBYTE(v424) = 19;
      sub_1C8DF1628();
      OUTLINED_FUNCTION_69_2(&v424);
      OUTLINED_FUNCTION_70_1();
      sub_1C8CC8068(v319);
      OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(&v427);
      v291 = &v426;
      goto LABEL_30;
    case 0x13u:
      OUTLINED_FUNCTION_113_1(&v429);
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v334(v332, v333);
      LOBYTE(v424) = 20;
      sub_1C8DF15D4();
      OUTLINED_FUNCTION_69_2(&v428);
      OUTLINED_FUNCTION_32_8();
      sub_1C8CC8068(v335);
      OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(&v433);
      v291 = &v432;
LABEL_30:
      v308 = *(v291 - 32);
      goto LABEL_31;
    case 0x14u:
      v296 = *v1;
      v297 = *(v1 + 1);
      LOBYTE(v424) = 21;
      sub_1C8DF1580();
      OUTLINED_FUNCTION_123(&v431);
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      *&v424 = v296;
      *(&v424 + 1) = v297;
      OUTLINED_FUNCTION_319_0(&v435);
      OUTLINED_FUNCTION_333_1();
      sub_1C9064B8C();
      v298 = OUTLINED_FUNCTION_45(&v434);
      v299(v298, v296);
      v267 = OUTLINED_FUNCTION_55_4();
      goto LABEL_33;
    case 0x15u:
      v2 = v410;
      v233 = v411;
      v304 = *(v410 + 32);
      v243 = v408;
      v305 = OUTLINED_FUNCTION_129_1();
      v306(v305);
      LOBYTE(v424) = 22;
      sub_1C8DF152C();
      OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_35_11();
      sub_1C8CC8068(v307);
      OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B8C();
      v308 = v412;
LABEL_31:
      v336 = *(v308 + 8);
      v337 = OUTLINED_FUNCTION_162();
      v338(v337);
      (*(v2 + 8))(v243, v233);
LABEL_32:
      OUTLINED_FUNCTION_40_8();
      v267 = OUTLINED_FUNCTION_93();
      goto LABEL_33;
    case 0x16u:
      v250 = *v1;
      LOBYTE(v424) = 23;
      sub_1C8DF14D8();
      v251 = v414;
      OUTLINED_FUNCTION_91_2();
      sub_1C9064ACC();
      *&v424 = v250;
      v327 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v327, v328);
      OUTLINED_FUNCTION_6_18();
      OUTLINED_FUNCTION_290_1(v329);
      v252 = v416;
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B8C();
      v256 = v415;
LABEL_28:
      (*(v256 + 8))(v251, v252);
      OUTLINED_FUNCTION_40_8();
      v330 = OUTLINED_FUNCTION_203();
      v331(v330);

      return;
    case 0x17u:
      LOBYTE(v424) = 0;
      sub_1C8CCA238();
      OUTLINED_FUNCTION_104_0();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296(v347);
      v339(v4, v229);
      OUTLINED_FUNCTION_40_8();
      v340 = OUTLINED_FUNCTION_95_0();
      v341(v340);
      return;
    default:
      v246 = *v1;
      LOBYTE(v424) = 1;
      sub_1C8DF1C10();
      v247 = v418;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_319_0(v349);
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B3C();
      OUTLINED_FUNCTION_296(v348);
      v249 = v3;
LABEL_14:
      v286 = v246;
LABEL_15:
      v248(v249, v286);
      v267 = OUTLINED_FUNCTION_47_3();
LABEL_16:
      v292 = v247;
LABEL_33:
      v268(v267, v292);
      return;
  }
}

unint64_t sub_1C8CCA1E4()
{
  result = qword_1EDA6D6B8[0];
  if (!qword_1EDA6D6B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6D6B8);
  }

  return result;
}

unint64_t sub_1C8CCA238()
{
  result = qword_1EDA639D8;
  if (!qword_1EDA639D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA639D8);
  }

  return result;
}

unint64_t sub_1C8CCA294(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 1819242338;
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 0x7265626D756ELL;
      break;
    case 4:
      result = 0x6C616D69636564;
      break;
    case 5:
      result = 0x676E69727473;
      break;
    case 6:
      result = 1702125924;
      break;
    case 7:
      result = 0x706D6F4365746164;
      break;
    case 8:
      result = 7107189;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6D6572757361656DLL;
      break;
    case 11:
      result = 0x79636E6572727563;
      break;
    case 12:
      result = 0x4D746E656D796170;
      break;
    case 13:
      result = 0x72616D6563616C70;
      break;
    case 14:
      result = 0x6E6F73726570;
      break;
    case 15:
      result = 1701603686;
      break;
    case 16:
      result = 7368801;
      break;
    case 17:
      result = 0x6261686372616573;
      break;
    case 18:
      result = 0x74756374726F6873;
      break;
    case 19:
      result = 0x6E65727275636572;
      break;
    case 20:
      result = 0x65746E4965746164;
      break;
    case 21:
      result = 0x6E6F697461727564;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0x4673746E65746E69;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypedValue.PrimitiveValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
        JUMPOUT(0x1C8CCA638);
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TypedValue.PrimitiveValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void *OUTLINED_FUNCTION_162_0()
{

  return memcpy((v0 + 240), (v0 + 384), 0x88uLL);
}

BOOL OUTLINED_FUNCTION_162_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_186_0()
{
}

uint64_t OUTLINED_FUNCTION_186_4()
{

  return swift_slowAlloc();
}

void TypedValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_196();
  a26 = v29;
  a27 = v30;
  v32 = v31;
  v144 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BD0, &qword_1C907D900);
  v142 = OUTLINED_FUNCTION_11(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BD8, &qword_1C907D908);
  OUTLINED_FUNCTION_11(v145);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_320(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BE0, &qword_1C907D910);
  v141 = OUTLINED_FUNCTION_11(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BE8, &qword_1C907D918);
  v140 = OUTLINED_FUNCTION_11(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BF0, &qword_1C907D920);
  v139 = OUTLINED_FUNCTION_11(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_97();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BF8, &qword_1C907D928);
  OUTLINED_FUNCTION_4_22(v54, &a25);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_97();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315C00, &qword_1C907D930);
  OUTLINED_FUNCTION_4_22(v58, &a23);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  v143 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315C08, &qword_1C907D938);
  OUTLINED_FUNCTION_4_22(v63, &a21);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_86();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315C10, &qword_1C907D940);
  OUTLINED_FUNCTION_11(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_38();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315C18, &unk_1C907D948);
  OUTLINED_FUNCTION_7_21(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_15_0();
  v76 = v32[3];
  v75 = v32[4];
  v146 = v32;
  v77 = OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_217(v77, v78);
  sub_1C8CC7CBC();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064DEC();
  if (v28)
  {
    goto LABEL_9;
  }

  v79 = sub_1C9064A9C();
  sub_1C8CB8914(v79, 0);
  if (v81 == v80 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_282_1();
  if (v84 == v85)
  {
    __break(1u);
    JUMPOUT(0x1C8CCB790);
  }

  v86 = *(v83 + v82);
  sub_1C8CB891C(v82 + 1);
  v88 = v87;
  v90 = v89;
  swift_unknownObjectRelease();
  if (v88 != v90 >> 1)
  {
LABEL_8:
    v92 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v94 = v93;
    v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v94 = &type metadata for TypedValue;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v96 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v92);
    (*(v97 + 104))(v94);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_57_8();
    v98 = OUTLINED_FUNCTION_181_1();
    v99(v98);
LABEL_9:
    v100 = v146;
    goto LABEL_10;
  }

  switch(v86)
  {
    case 1:
      OUTLINED_FUNCTION_277_0();
      sub_1C8DF24DC();
      OUTLINED_FUNCTION_161_1(&a9);
      OUTLINED_FUNCTION_48_7();
      sub_1C906498C();
      type metadata accessor for TypedValue.EnumerationValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_188_2();
      sub_1C8CC8068(v107);
      OUTLINED_FUNCTION_141_3();
      OUTLINED_FUNCTION_66_4();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_321_1();
      swift_unknownObjectRelease();
      v126 = OUTLINED_FUNCTION_62_0(&a20);
      v127(v126);
      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_222_1();
      v128();
      v27 |= 0x1000000000000000uLL;
      break;
    case 2:
      a11 = 2;
      sub_1C8DF2488();
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_42_0();
      sub_1C906498C();
      type metadata accessor for TypedValue.EntityValue(0);
      v105 = swift_allocBox();
      OUTLINED_FUNCTION_190_4();
      sub_1C8CC8068(v106);
      OUTLINED_FUNCTION_315_0();
      OUTLINED_FUNCTION_155_3();
      OUTLINED_FUNCTION_305_0();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_296(&a22);
      v113(v143, v27);
      OUTLINED_FUNCTION_45(&a18);
      OUTLINED_FUNCTION_222_1();
      v114();
      v27 = v105 | 0x2000000000000000;
      break;
    case 3:
      a12 = 3;
      sub_1C8DF23E0();
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_229_1();
      OUTLINED_FUNCTION_2();
      v102 = swift_allocObject();
      sub_1C8DF25D8();
      OUTLINED_FUNCTION_105_1();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_213_1();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_296(&a24);
      v115 = OUTLINED_FUNCTION_129_1();
      v116(v115);
      v117 = OUTLINED_FUNCTION_76_3();
      v118(v117);
      v27 = v102 | 0x3000000000000000;
      break;
    case 4:
      a13 = 4;
      sub_1C8DF238C();
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_229_1();
      type metadata accessor for TypedValue.QueryValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_191_4();
      sub_1C8CC8068(v101);
      OUTLINED_FUNCTION_141_3();
      OUTLINED_FUNCTION_210_1();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_321_1();
      swift_unknownObjectRelease();
      v110 = OUTLINED_FUNCTION_107_3();
      v111(v110, v139);
      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_222_1();
      v112();
      v27 |= 0x4000000000000000uLL;
      break;
    case 5:
      a14 = 5;
      sub_1C8DF22E4();
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_229_1();
      v104 = swift_allocObject();
      sub_1C8DF2584();
      OUTLINED_FUNCTION_105_1();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_213_1();
      swift_unknownObjectRelease();
      v129 = OUTLINED_FUNCTION_107_3();
      v130(v129, v140);
      v131 = OUTLINED_FUNCTION_76_3();
      v132(v131);
      v27 = v104 | 0x5000000000000000;
      break;
    case 6:
      a15 = 6;
      sub_1C8DF2290();
      OUTLINED_FUNCTION_48_7();
      sub_1C906498C();
      type metadata accessor for TypedValue.EntityIdentifierValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_187_3();
      sub_1C8CC8068(v108);
      OUTLINED_FUNCTION_141_3();
      OUTLINED_FUNCTION_66_4();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_321_1();
      swift_unknownObjectRelease();
      v133 = OUTLINED_FUNCTION_47_3();
      v134(v133, v141);
      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_222_1();
      v135();
      v27 |= 0x6000000000000000uLL;
      break;
    case 7:
      a16 = 7;
      sub_1C8DF21E8();
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_229_1();
      v103 = swift_allocObject();
      sub_1C8DF2530();
      OUTLINED_FUNCTION_305_0();
      OUTLINED_FUNCTION_213_1();
      swift_unknownObjectRelease();
      v119 = OUTLINED_FUNCTION_184_3();
      v120(v119, v145);
      v121 = OUTLINED_FUNCTION_76_3();
      v122(v121);
      v27 = v103 | 0x7000000000000000;
      break;
    case 8:
      a17 = 8;
      sub_1C8DF2194();
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_229_1();
      type metadata accessor for TypedValue.CodableValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_186_3();
      sub_1C8CC8068(v109);
      OUTLINED_FUNCTION_141_3();
      OUTLINED_FUNCTION_305_0();
      OUTLINED_FUNCTION_321_1();
      swift_unknownObjectRelease();
      v136 = OUTLINED_FUNCTION_184_3();
      v137(v136, v142);
      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_222_1();
      v138();
      v27 |= 0x8000000000000000;
      break;
    default:
      sub_1C8CC7D10();
      OUTLINED_FUNCTION_161_1(&v147);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_42_0();
      sub_1C906498C();
      type metadata accessor for TypedValue.PrimitiveValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_192_3();
      sub_1C8CC8068(v91);
      OUTLINED_FUNCTION_141_3();
      OUTLINED_FUNCTION_66_4();
      sub_1C9064A6C();
      swift_unknownObjectRelease();
      v123 = OUTLINED_FUNCTION_62_0(&a19);
      v124(v123, v67);
      OUTLINED_FUNCTION_45(&a18);
      OUTLINED_FUNCTION_222_1();
      v125();
      break;
  }

  v100 = v146;
  *v144 = v27;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v100);
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CCB7B4()
{
  OUTLINED_FUNCTION_347_0();
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CCB7F0()
{
  OUTLINED_FUNCTION_347_0();
  v1 = *(v0 + 24);

  sub_1C8D43CA8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1C8CCB840()
{
  OUTLINED_FUNCTION_347_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_247_0()
{

  return swift_projectBox();
}

void *OUTLINED_FUNCTION_247_1()
{

  return memcpy((v1 - 184), (v0 + 16), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_310_1()
{

  return sub_1C8D63FCC();
}

uint64_t sub_1C8CCB904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CCB92C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CCB92C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766974696D697270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746172656D756E65 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6465727265666564 && a2 == 0xE800000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001C90CADF0 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x636E657265666572 && a2 == 0xE900000000000065;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656C6261646F63 && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t OUTLINED_FUNCTION_241_2()
{
}

uint64_t OUTLINED_FUNCTION_241_3@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;

  return sub_1C906499C();
}

void TypedValue.PrimitiveValue.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v433 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315900, &qword_1C907D710);
  OUTLINED_FUNCTION_4_22(v6, &v440);
  v407 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v432 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315908, &qword_1C907D718);
  OUTLINED_FUNCTION_4_22(v12, &v438);
  v405 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  v431 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315910, &qword_1C907D720);
  OUTLINED_FUNCTION_4_22(v18, &v436);
  v403 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_97();
  v430 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315918, &qword_1C907D728);
  OUTLINED_FUNCTION_4_22(v24, &v434);
  v402 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  v429 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315920, &qword_1C907D730);
  OUTLINED_FUNCTION_4_22(v30, &v432);
  v400 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  v428 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315928, &qword_1C907D738);
  OUTLINED_FUNCTION_4_22(v36, &v430);
  v398 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v427 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315930, &qword_1C907D740);
  OUTLINED_FUNCTION_4_22(v42, &v428);
  v396 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v426 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315938, &qword_1C907D748);
  OUTLINED_FUNCTION_4_22(v48, &v426);
  v394 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_97();
  v425 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315940, &qword_1C907D750);
  OUTLINED_FUNCTION_4_22(v54, v424);
  v392 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315948, &qword_1C907D758);
  OUTLINED_FUNCTION_4_22(v60, v422);
  v390 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315950, &qword_1C907D760);
  OUTLINED_FUNCTION_4_22(v66, v420);
  v388 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315958, &qword_1C907D768);
  OUTLINED_FUNCTION_4_22(v72, v418);
  v386 = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315960, &qword_1C907D770);
  OUTLINED_FUNCTION_4_22(v78, v416);
  v384 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315968, &qword_1C907D778);
  OUTLINED_FUNCTION_4_22(v84, v414);
  v382 = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315970, &qword_1C907D780);
  OUTLINED_FUNCTION_4_22(v90, v412);
  v381 = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315978, &qword_1C907D788);
  OUTLINED_FUNCTION_4_22(v96, v410);
  v380 = v97;
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315980, &qword_1C907D790);
  OUTLINED_FUNCTION_4_22(v102, v408);
  v379 = v103;
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v107);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315988, &qword_1C907D798);
  OUTLINED_FUNCTION_4_22(v108, v406);
  v438 = v109;
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315990, &qword_1C907D7A0);
  OUTLINED_FUNCTION_4_22(v114, &v405);
  v378 = v115;
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v119);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315998, &qword_1C907D7A8);
  OUTLINED_FUNCTION_4_22(v120, v404);
  v377 = v121;
  v123 = *(v122 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3159A0, &qword_1C907D7B0);
  OUTLINED_FUNCTION_4_22(v126, &v402);
  v376 = v127;
  v129 = *(v128 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v131);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3159A8, &qword_1C907D7B8);
  OUTLINED_FUNCTION_4_22(v132, v397);
  v375 = v133;
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v137);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3159B0, &qword_1C907D7C0);
  OUTLINED_FUNCTION_4_22(v138, v399);
  v374 = v139;
  v141 = *(v140 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v143);
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3159B8, &qword_1C907D7C8);
  OUTLINED_FUNCTION_11(v437);
  v372 = v144;
  v146 = *(v145 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v148);
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3159C0, &qword_1C907D7D0);
  OUTLINED_FUNCTION_11(v439);
  v435 = v149;
  v151 = *(v150 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_97();
  v442 = v153;
  v154 = OUTLINED_FUNCTION_111();
  v434 = type metadata accessor for TypedValue.PrimitiveValue(v154);
  v155 = OUTLINED_FUNCTION_13_1(v434);
  v157 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_216();
  v436 = v162;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v165);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v170);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v171);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v172);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v173);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v176);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v178);
  v180 = v363 - v179;
  MEMORY[0x1EEE9AC00](v181);
  v183 = (v363 - v182);
  MEMORY[0x1EEE9AC00](v184);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v185);
  v187 = v363 - v186;
  v188 = a1[3];
  v189 = a1[4];
  v440 = a1;
  OUTLINED_FUNCTION_122_3(a1);
  sub_1C8CCA1E4();
  v190 = v441;
  sub_1C9064DEC();
  if (v190)
  {
    goto LABEL_9;
  }

  v364 = v4;
  v365 = v183;
  v366 = v180;
  v367 = v3;
  v368 = v2;
  v191 = v438;
  v441 = v187;
  v192 = v442;
  v193 = sub_1C9064A9C();
  sub_1C8CB8914(v193, 0);
  if (v195 == v194 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_119_0();
  v363[1] = 0;
  OUTLINED_FUNCTION_282_1();
  if (v198 == v199)
  {
    __break(1u);
    JUMPOUT(0x1C8CCE1C8);
  }

  v363[0] = *(v197 + v196);
  v200 = sub_1C8CB891C(v196 + 1);
  v202 = v201;
  v204 = v203;
  swift_unknownObjectRelease();
  if (v202 != v204 >> 1)
  {
LABEL_8:
    v206 = v434;
    v207 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v209 = v208;
    v210 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v209 = v206;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v211 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v207);
    (*(v212 + 104))(v209);
    swift_willThrow();
    swift_unknownObjectRelease();
    v213 = OUTLINED_FUNCTION_50_8();
    v214(v213);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v440);
    goto LABEL_10;
  }

  switch(v363[0])
  {
    case 1:
      LOBYTE(v443) = 1;
      sub_1C8DF1C10();
      OUTLINED_FUNCTION_19_14();
      v232 = sub_1C9064A1C();
      v233 = v435;
      v307 = v232;
      swift_unknownObjectRelease();
      v308 = OUTLINED_FUNCTION_20_12(&v398);
      v309(v308);
      v310 = *(v233 + 8);
      v311 = OUTLINED_FUNCTION_246();
      v312(v311);
      *v364 = v307 & 1;
      OUTLINED_FUNCTION_253_1();
      goto LABEL_34;
    case 2:
      LOBYTE(v443) = 2;
      sub_1C8DF1BBC();
      v228 = v411;
      OUTLINED_FUNCTION_65_4();
      v245 = v373;
      v288 = sub_1C9064A4C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_296(&v400);
      v289(v228, v245);
      v290 = OUTLINED_FUNCTION_50_8();
      v291(v290);
      *v365 = v288;
      goto LABEL_34;
    case 3:
      LOBYTE(v443) = 3;
      sub_1C8DF1B68();
      OUTLINED_FUNCTION_65_4();
      OUTLINED_FUNCTION_130_0(&v402);
      sub_1C9064A2C();
      v246 = v435;
      v297 = v296;
      swift_unknownObjectRelease();
      v298 = OUTLINED_FUNCTION_54(v401);
      v299(v298, v200);
      v300 = *(v246 + 8);
      v301 = OUTLINED_FUNCTION_246();
      v302(v301);
      *v366 = v297;
      OUTLINED_FUNCTION_253_1();
      goto LABEL_34;
    case 4:
      LOBYTE(v443) = 4;
      sub_1C8DF1B14();
      OUTLINED_FUNCTION_19_14();
      v221 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for Decimal(v221);
      OUTLINED_FUNCTION_37_11();
      sub_1C8CC8068(v222);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      v223 = (v377 + 8);
      v224 = (v435 + 8);
      OUTLINED_FUNCTION_330_1();
      swift_unknownObjectRelease();
      v273 = *v223;
      v274 = OUTLINED_FUNCTION_203();
      v275(v274);
      v276 = *v224;
      v277 = OUTLINED_FUNCTION_246();
      v278(v277);
      v279 = v368;
      *v368 = v443;
      *(v279 + 4) = v444;
      OUTLINED_FUNCTION_253_1();
      goto LABEL_34;
    case 5:
      LOBYTE(v443) = 5;
      sub_1C8DF1AC0();
      v238 = v439;
      OUTLINED_FUNCTION_65_4();
      v251 = sub_1C9064A0C();
      v252 = v435;
      v321 = v251;
      v323 = v322;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_296(&v403);
      v324 = OUTLINED_FUNCTION_136();
      v325(v324);
      (*(v252 + 8))(v192, v238);
      v326 = v367;
      *v367 = v321;
      v326[1] = v323;
      goto LABEL_34;
    case 6:
      LOBYTE(v443) = 6;
      sub_1C8DF1A6C();
      OUTLINED_FUNCTION_123(&v445);
      OUTLINED_FUNCTION_65_4();
      v253 = sub_1C9061FEC();
      OUTLINED_FUNCTION_36_9();
      sub_1C8CC8068(v254);
      OUTLINED_FUNCTION_63_6(&v382);
      OUTLINED_FUNCTION_42_0();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v335 = *(v191 + 8);
      v336 = OUTLINED_FUNCTION_146_0();
      v337(v336);
      (*(v253 + 8))(v192, v439);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 7:
      LOBYTE(v443) = 7;
      sub_1C8DF1A18();
      OUTLINED_FUNCTION_19_14();
      OUTLINED_FUNCTION_149_2();
      sub_1C9061BAC();
      OUTLINED_FUNCTION_34_9();
      sub_1C8CC8068(v231);
      OUTLINED_FUNCTION_63_6(v383);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v303 = OUTLINED_FUNCTION_20_12(&v407);
      v304(v303);
      v305 = OUTLINED_FUNCTION_61_5();
      v306(v305);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 8:
      LOBYTE(v443) = 8;
      sub_1C8DF19C4();
      OUTLINED_FUNCTION_19_14();
      OUTLINED_FUNCTION_149_2();
      sub_1C9061EBC();
      OUTLINED_FUNCTION_38_10();
      sub_1C8CC8068(v243);
      OUTLINED_FUNCTION_63_6(&v384);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v346 = OUTLINED_FUNCTION_20_12(v409);
      v347(v346);
      v348 = OUTLINED_FUNCTION_61_5();
      v349(v348);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 9:
      LOBYTE(v443) = 9;
      sub_1C8DF1970();
      OUTLINED_FUNCTION_19_14();
      OUTLINED_FUNCTION_149_2();
      sub_1C9061C0C();
      OUTLINED_FUNCTION_33_8();
      sub_1C8CC8068(v227);
      OUTLINED_FUNCTION_63_6(v385);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v284 = OUTLINED_FUNCTION_20_12(&v411);
      v285(v284);
      v286 = OUTLINED_FUNCTION_61_5();
      v287(v286);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xALL:
      LOBYTE(v443) = 10;
      sub_1C8DF191C();
      OUTLINED_FUNCTION_123(&v446);
      OUTLINED_FUNCTION_65_4();
      v255 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v255, v256);
      OUTLINED_FUNCTION_290_1(&unk_1EC315A00);
      OUTLINED_FUNCTION_155_3();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_330_1();
      swift_unknownObjectRelease();
      v342 = OUTLINED_FUNCTION_45(v413);
      v343(v342, &qword_1EC313A00);
      v344 = OUTLINED_FUNCTION_50_8();
      v345(v344);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xBLL:
      LOBYTE(v443) = 11;
      sub_1C8DF18C8();
      OUTLINED_FUNCTION_19_14();
      v219 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v219);
      OUTLINED_FUNCTION_169_2();
      sub_1C8CC8068(v220);
      OUTLINED_FUNCTION_63_6(v387);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v269 = OUTLINED_FUNCTION_20_12(v415);
      v270(v269);
      v271 = OUTLINED_FUNCTION_61_5();
      v272(v271);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xCLL:
      LOBYTE(v443) = 12;
      sub_1C8DF1874();
      OUTLINED_FUNCTION_19_14();
      v225 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v225);
      OUTLINED_FUNCTION_175_1();
      sub_1C8CC8068(v226);
      OUTLINED_FUNCTION_63_6(&v388);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v280 = OUTLINED_FUNCTION_20_12(v417);
      v281(v280);
      v282 = OUTLINED_FUNCTION_61_5();
      v283(v282);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xDLL:
      LOBYTE(v443) = 13;
      sub_1C8DF1820();
      OUTLINED_FUNCTION_19_14();
      v239 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v239);
      OUTLINED_FUNCTION_173_2();
      sub_1C8CC8068(v240);
      OUTLINED_FUNCTION_63_6(v389);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v331 = OUTLINED_FUNCTION_20_12(v419);
      v332(v331);
      v333 = OUTLINED_FUNCTION_61_5();
      v334(v333);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xELL:
      LOBYTE(v443) = 14;
      sub_1C8DF17CC();
      OUTLINED_FUNCTION_19_14();
      v217 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v217);
      OUTLINED_FUNCTION_170_4();
      sub_1C8CC8068(v218);
      OUTLINED_FUNCTION_63_6(&v390);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v265 = OUTLINED_FUNCTION_20_12(v421);
      v266(v265);
      v267 = OUTLINED_FUNCTION_61_5();
      v268(v267);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xFLL:
      LOBYTE(v443) = 15;
      sub_1C8DF1778();
      OUTLINED_FUNCTION_19_14();
      v229 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.FileValue(v229);
      OUTLINED_FUNCTION_176_2();
      sub_1C8CC8068(v230);
      OUTLINED_FUNCTION_63_6(v391);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v292 = OUTLINED_FUNCTION_20_12(v423);
      v293(v292);
      v294 = OUTLINED_FUNCTION_61_5();
      v295(v294);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x10:
      LOBYTE(v443) = 16;
      sub_1C8DF1724();
      OUTLINED_FUNCTION_19_14();
      v215 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.AppValue(v215);
      OUTLINED_FUNCTION_172_0();
      sub_1C8CC8068(v216);
      OUTLINED_FUNCTION_63_6(&v392);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v261 = OUTLINED_FUNCTION_20_12(&v425);
      v262(v261);
      v263 = OUTLINED_FUNCTION_61_5();
      v264(v263);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x11:
      LOBYTE(v443) = 17;
      sub_1C8DF16D0();
      OUTLINED_FUNCTION_65_4();
      v234 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v234, v235);
      OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_290_1(v236);
      OUTLINED_FUNCTION_155_3();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_330_1();
      swift_unknownObjectRelease();
      v313 = OUTLINED_FUNCTION_45(&v427);
      v314(v313, &unk_1EC315860);
      v315 = OUTLINED_FUNCTION_50_8();
      v316(v315);
      *v369 = v443;
      OUTLINED_FUNCTION_253_1();
      goto LABEL_34;
    case 0x12:
      LOBYTE(v443) = 18;
      sub_1C8DF167C();
      OUTLINED_FUNCTION_19_14();
      v241 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v241);
      OUTLINED_FUNCTION_171_3();
      sub_1C8CC8068(v242);
      OUTLINED_FUNCTION_63_6(v393);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v338 = OUTLINED_FUNCTION_20_12(&v429);
      v339(v338);
      v340 = OUTLINED_FUNCTION_61_5();
      v341(v340);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x13:
      LOBYTE(v443) = 19;
      sub_1C8DF1628();
      OUTLINED_FUNCTION_19_14();
      OUTLINED_FUNCTION_149_2();
      sub_1C90622FC();
      OUTLINED_FUNCTION_70_1();
      sub_1C8CC8068(v257);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v354 = OUTLINED_FUNCTION_20_12(&v431);
      v355(v354);
      v356 = OUTLINED_FUNCTION_61_5();
      v357(v356);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x14:
      LOBYTE(v443) = 20;
      sub_1C8DF15D4();
      OUTLINED_FUNCTION_19_14();
      OUTLINED_FUNCTION_149_2();
      sub_1C906194C();
      OUTLINED_FUNCTION_32_8();
      sub_1C8CC8068(v237);
      OUTLINED_FUNCTION_63_6(&v394);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v317 = OUTLINED_FUNCTION_20_12(&v433);
      v318(v317);
      v319 = OUTLINED_FUNCTION_61_5();
      v320(v319);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x15:
      LOBYTE(v443) = 21;
      sub_1C8DF1580();
      OUTLINED_FUNCTION_19_14();
      OUTLINED_FUNCTION_91_2();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v327 = OUTLINED_FUNCTION_20_12(&v435);
      v328(v327);
      v329 = OUTLINED_FUNCTION_61_5();
      v330(v329);
      *v370 = v443;
      OUTLINED_FUNCTION_253_1();
      goto LABEL_34;
    case 0x16:
      LOBYTE(v443) = 22;
      sub_1C8DF152C();
      OUTLINED_FUNCTION_19_14();
      OUTLINED_FUNCTION_149_2();
      sub_1C9061D4C();
      OUTLINED_FUNCTION_35_11();
      sub_1C8CC8068(v244);
      OUTLINED_FUNCTION_63_6(v395);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v350 = OUTLINED_FUNCTION_20_12(&v437);
      v351(v350);
      v352 = OUTLINED_FUNCTION_61_5();
      v353(v352);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x17:
      LOBYTE(v443) = 23;
      sub_1C8DF14D8();
      OUTLINED_FUNCTION_65_4();
      v258 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v258, v259);
      OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_290_1(v260);
      OUTLINED_FUNCTION_155_3();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_330_1();
      swift_unknownObjectRelease();
      v358 = OUTLINED_FUNCTION_45(&v439);
      v359(v358, &unk_1EC315730);
      v360 = OUTLINED_FUNCTION_50_8();
      v361(v360);
      *v371 = v443;
      OUTLINED_FUNCTION_253_1();
LABEL_34:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_39_10();
      sub_1C8CCEB64();
      break;
    default:
      LOBYTE(v443) = 0;
      sub_1C8CCA238();
      v205 = v439;
      OUTLINED_FUNCTION_65_4();
      swift_unknownObjectRelease();
      v247 = OUTLINED_FUNCTION_25_12(&v396);
      v248(v247);
      v249 = OUTLINED_FUNCTION_58_7();
      v250(v249, v205);
      swift_storeEnumTagMultiPayload();
      break;
  }

  v362 = v440;
  OUTLINED_FUNCTION_39_10();
  sub_1C8CCEB64();
  __swift_destroy_boxed_opaque_existential_1(v362);
LABEL_10:
  OUTLINED_FUNCTION_248_1();
}

uint64_t OUTLINED_FUNCTION_129_2()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

double OUTLINED_FUNCTION_129_4@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_129_6()
{

  return sub_1C8CD20B4(v0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t OUTLINED_FUNCTION_118_2()
{

  return sub_1C906346C();
}

uint64_t sub_1C8CCE38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CCE3B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CCE3B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1819242338 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7630441 && a2 == 0xE300000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C616D69636564 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1702125924 && a2 == 0xE400000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x706D6F4365746164 && a2 == 0xEE0073746E656E6FLL;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 7107189 && a2 == 0xE300000000000000;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001C90CAAE0 == a2;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x79636E6572727563 && a2 == 0xEE00746E756F6D41;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4D746E656D796170 && a2 == 0xED0000646F687465;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 1701603686 && a2 == 0xE400000000000000;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 7368801 && a2 == 0xE300000000000000;
                                  if (v21 || (sub_1C9064C2C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6261686372616573 && a2 == 0xEE006D657449656CLL;
                                    if (v22 || (sub_1C9064C2C() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x74756374726F6873 && a2 == 0xE800000000000000;
                                      if (v23 || (sub_1C9064C2C() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6E65727275636572 && a2 == 0xEE00656C75526563;
                                        if (v24 || (sub_1C9064C2C() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672;
                                          if (v25 || (sub_1C9064C2C() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                                            if (v26 || (sub_1C9064C2C() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000014 && 0x80000001C90CA7D0 == a2;
                                              if (v27 || (sub_1C9064C2C() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else if (a1 == 0x4673746E65746E69 && a2 == 0xEB00000000656C69)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v29 = sub_1C9064C2C();

                                                if (v29)
                                                {
                                                  return 23;
                                                }

                                                else
                                                {
                                                  return 24;
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
}

void OUTLINED_FUNCTION_150_0()
{

  JUMPOUT(0x1CCA81A90);
}

void OUTLINED_FUNCTION_150_3()
{
  v1 = v0[83];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[74];
  v6 = v0[69];
}

uint64_t sub_1C8CCEB64()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t sub_1C8CCEBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_226_3()
{
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[33];

  return swift_willThrow();
}

uint64_t TypedValue.protobuf.getter()
{
  v1 = sub_1C906348C();
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v11 = *v0;
  (*(v4 + 104))(v8 - v7, *MEMORY[0x1E69E0760], v1);
  OUTLINED_FUNCTION_190_2();
  TypedValue.protobuf(useCase:)();
  return (*(v4 + 8))(v9, v1);
}

void TypedValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v7 = v0;
  v139 = v9;
  v140 = v8;
  v10 = type metadata accessor for TypedValue.CodableValue(0);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34_3();
  v14 = type metadata accessor for TypedValue.EntityIdentifierValue(0);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_97();
  *&v137 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139E0, &qword_1C906F538);
  OUTLINED_FUNCTION_9(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_97();
  *&v136 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15_0();
  Value = type metadata accessor for TypedValue.QueryValue(0);
  v33 = OUTLINED_FUNCTION_13_1(Value);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v38 = (v37 - v36);
  v39 = type metadata accessor for TypedValue.EntityValue(0);
  v40 = OUTLINED_FUNCTION_9(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v43 = type metadata accessor for TypedValue.EnumerationValue(0);
  v44 = OUTLINED_FUNCTION_9(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  v47 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v48 = OUTLINED_FUNCTION_9(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_15();
  v53 = v52 - v51;
  v54 = *v7;
  switch(*v7 >> 60)
  {
    case 1:
      v79 = swift_projectBox();
      sub_1C8CCF5DC(v79, v5);
      type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_79_1();
      TypedValue.EnumerationValue.protobuf(useCase:)();
      if (v1)
      {
        v64 = OUTLINED_FUNCTION_91_0();
        goto LABEL_18;
      }

      v128 = OUTLINED_FUNCTION_91_0();
      sub_1C8CD0D98(v128, v129);
      v7 |= 0x2000000000000000uLL;
      goto LABEL_32;
    case 2:
      v74 = swift_projectBox();
      sub_1C8CCF5DC(v74, v3);
      type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_79_1();
      TypedValue.EntityValue.protobuf(useCase:)();
      if (v1)
      {
        v64 = OUTLINED_FUNCTION_93_1();
        goto LABEL_18;
      }

      v122 = OUTLINED_FUNCTION_93_1();
      sub_1C8CD0D98(v122, v123);
      v7 |= 0x4000000000000000uLL;
      goto LABEL_32;
    case 3:
      v76 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v77 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
      v78 = swift_allocBox();
      *&v141 = v76;
      *(&v141 + 1) = v77;
      OUTLINED_FUNCTION_184_1();
      TypedValue.CollectionValue.protobuf(useCase:)();
      if (v1)
      {
        goto LABEL_19;
      }

      v7 = v78 | 0x6000000000000000;
      goto LABEL_32;
    case 4:
      v66 = swift_projectBox();
      sub_1C8CCF5DC(v66, v38);
      v134 = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
      v67 = swift_allocBox();
      v135 = v68;
      *&v141 = *v38;

      TypeIdentifier.protobuf(useCase:)(v140);

      v69 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
      v73 = v38 + *(Value + 20);
      AnyPredicate.protobuf(useCase:)(v140, v137);
      if (v1)
      {
        sub_1C8CD0CC8(v4, &qword_1EC3139D8);
        OUTLINED_FUNCTION_105_0();
        goto LABEL_19;
      }

      v87 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
      OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_123_1(v88, v89, v90, v87);
      v91 = type metadata accessor for Query();
      v92 = *(v91 + 24);
      if (v73[*(v91 + 20)])
      {
        v93 = 2;
      }

      else
      {
        v93 = 1;
      }

      LODWORD(v140) = v93;
      v94 = &v73[v92];
      v95 = *&v73[v92];
      v96 = v94[8];
      if (v96)
      {
        v97 = 0;
      }

      else
      {
        v97 = v95;
      }

      v133 = v97;
      v98 = type metadata accessor for ToolKitProtoQuery(0);
      v99 = v98[5];
      v146 = v67;
      v100 = v136;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v87);
      v104 = v98[7];
      v105 = v136 + v98[6];
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D4F5E4(v137, v136 + v99, &qword_1EC313400, &qword_1C906B680);
      *v136 = v140;
      *v105 = v133;
      *(v105 + 8) = v96;
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v106, v107, v108, v98);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v69);
      v112 = *(v134 + 20);
      OUTLINED_FUNCTION_38_6();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
      v117 = v135 + *(v134 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      OUTLINED_FUNCTION_105_0();
      v118 = OUTLINED_FUNCTION_146_0();
      sub_1C8D4F5E4(v118, v119, v120, v121);
      sub_1C8D4F5E4(v100, v135 + v112, &qword_1EC3139E0, &qword_1C906F538);
      v7 = v146 | 0x8000000000000000;
      goto LABEL_32;
    case 5:
      v80 = v54 & 0xFFFFFFFFFFFFFFFLL;
      v81 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v82 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v83 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
      v84 = *(v80 + 16);
      v136 = *(v80 + 32);
      v137 = v84;
      v85 = swift_allocBox();
      v142 = v136;
      v141 = v137;
      v143 = v81;
      v144 = v82;
      v145 = v83;
      OUTLINED_FUNCTION_184_1();
      TypedValue.DeferredValue.protobuf(useCase:)();
      if (v1)
      {
        goto LABEL_19;
      }

      v7 = v85 | 0xC000000000000000;
      goto LABEL_32;
    case 6:
      v86 = swift_projectBox();
      sub_1C8CCF5DC(v86, v6);
      type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_79_1();
      TypedValue.EntityIdentifierValue.protobuf(useCase:)();
      if (v1)
      {
        OUTLINED_FUNCTION_99_2();
        v64 = v6;
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_99_2();
      sub_1C8CD0D98(v6, v130);
      v7 |= 0xA000000000000000;
      goto LABEL_32;
    case 7:
      __break(1u);
      JUMPOUT(0x1C8CCF558);
    case 8:
      v75 = swift_projectBox();
      sub_1C8CCF5DC(v75, v2);
      type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_79_1();
      TypedValue.CodableValue.protobuf(useCase:)();
      if (v1)
      {
        v64 = OUTLINED_FUNCTION_92_1();
        goto LABEL_18;
      }

      v124 = OUTLINED_FUNCTION_92_1();
      sub_1C8CD0D98(v124, v125);
      v7 |= 0xE000000000000000;
      goto LABEL_32;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_100_1();
      sub_1C8CCF5DC(v55, v53);
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
      swift_allocBox();
      v56 = OUTLINED_FUNCTION_79_1();
      TypedValue.PrimitiveValue.protobuf(useCase:)(v56, v57, v58, v59, v60, v61, v62, v63, v132, v133, v134, v135, v136, *(&v136 + 1), v137, *(&v137 + 1), v138, v139, v140, v141);
      if (v1)
      {
        v64 = OUTLINED_FUNCTION_75_0();
LABEL_18:
        sub_1C8CD0D98(v64, v65);
LABEL_19:
        swift_deallocBox();
      }

      else
      {
        v126 = OUTLINED_FUNCTION_75_0();
        sub_1C8CD0D98(v126, v127);
LABEL_32:
        v131 = type metadata accessor for ToolKitProtoTypedValue(0);
        MEMORY[0x1EEE9AC00](v131);
        *(&v132 - 2) = v7;
        sub_1C8CD0B28(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
        sub_1C9063ACC();
      }

      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t OUTLINED_FUNCTION_291_0()
{

  return sub_1C9064DEC();
}

void OUTLINED_FUNCTION_291_1()
{
  v5 = *(v3 - 240);

  sub_1C8D00A6C(v0, v1, v2, (v3 - 120));
}

uint64_t sub_1C8CCF5DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v5 = v4(v3);
  OUTLINED_FUNCTION_24_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return sub_1C8D9913C();
}

uint64_t OUTLINED_FUNCTION_83_5()
{
}

uint64_t OUTLINED_FUNCTION_83_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 136);
  return *(v2 + 224);
}

void TypedValue.PrimitiveValue.protobuf(useCase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v28;
  a20 = v29;
  v335 = v22;
  v336 = v21;
  v332 = v30;
  v334[1] = v31;
  v337[1] = *MEMORY[0x1E69E9840];
  v32 = sub_1C9061D4C();
  v33 = OUTLINED_FUNCTION_11(v32);
  v330[4] = v34;
  v330[5] = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7_0();
  v330[3] = v37;
  OUTLINED_FUNCTION_111();
  v38 = sub_1C906194C();
  v39 = OUTLINED_FUNCTION_11(v38);
  v330[1] = v40;
  v330[2] = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_7_0();
  v329 = v43;
  OUTLINED_FUNCTION_111();
  v44 = sub_1C90622FC();
  v45 = OUTLINED_FUNCTION_11(v44);
  v326 = v46;
  v327 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_7_0();
  v50 = OUTLINED_FUNCTION_27_0(v49);
  v322 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v50);
  v51 = OUTLINED_FUNCTION_13_1(v322);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_7_0();
  v331 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v56 = OUTLINED_FUNCTION_9(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_12();
  v325 = v59;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_147();
  v324 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v63 = OUTLINED_FUNCTION_9(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_12();
  v330[0] = v66;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_147();
  v328 = v68;
  v69 = OUTLINED_FUNCTION_111();
  v321 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v69);
  v70 = OUTLINED_FUNCTION_13_1(v321);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_7_0();
  v74 = OUTLINED_FUNCTION_27_0(v73);
  v75 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v74);
  v76 = OUTLINED_FUNCTION_9(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_7_0();
  v80 = OUTLINED_FUNCTION_27_0(v79);
  v81 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v80);
  v82 = OUTLINED_FUNCTION_9(v81);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_7_0();
  v86 = OUTLINED_FUNCTION_27_0(v85);
  v87 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v86);
  v88 = OUTLINED_FUNCTION_9(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_7_0();
  v92 = OUTLINED_FUNCTION_27_0(v91);
  v93 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v92);
  v94 = OUTLINED_FUNCTION_9(v93);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_7_0();
  v98 = OUTLINED_FUNCTION_27_0(v97);
  v99 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v98);
  v100 = OUTLINED_FUNCTION_9(v99);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_7_0();
  v320 = v103;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_11(v317);
  v316 = v104;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v108);
  v319 = sub_1C9061C0C();
  v109 = OUTLINED_FUNCTION_11(v319);
  v318 = v110;
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_27_0(v113);
  v314 = sub_1C9061EBC();
  v114 = OUTLINED_FUNCTION_11(v314);
  v313 = v115;
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_27_0(v118);
  v311 = sub_1C9061BAC();
  v119 = OUTLINED_FUNCTION_11(v311);
  v310 = v120;
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_27_0(v123);
  v309 = sub_1C9061FEC();
  v124 = OUTLINED_FUNCTION_11(v309);
  v308 = v125;
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_147();
  v130 = OUTLINED_FUNCTION_27_0(v129);
  v131 = type metadata accessor for TypedValue.PrimitiveValue(v130);
  v132 = OUTLINED_FUNCTION_13_1(v131);
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v333 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v135 = OUTLINED_FUNCTION_13_1(v333);
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_61_3();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v146);
  v148 = &v303 - v147;
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v151);
  v153 = &v303 - v152;
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_147();
  v334[0] = v155;
  OUTLINED_FUNCTION_100_1();
  sub_1C8CCF5DC(v336, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v156 = v334[0];
      *v334[0] = *v27;
      goto LABEL_38;
    case 2u:
      v156 = v334[0];
      *v334[0] = *v27;
      goto LABEL_38;
    case 3u:
      v189 = *(v27 + 16);
      v190 = *v27;
      v191 = *(v27 + 8);
      v192 = v335;
      NSDecimal.protobuf(useCase:)();
      if (v192)
      {
        goto LABEL_59;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v173 = v153;
      goto LABEL_56;
    case 4u:
      v174 = *(v27 + 8);
      v156 = v334[0];
      *v334[0] = *v27;
      v156[1] = v174;
      goto LABEL_38;
    case 5u:
      v214 = v308;
      OUTLINED_FUNCTION_158_2();
      v215(v307, v27, v309);
      v216 = *(v214 + 16);
      v217 = OUTLINED_FUNCTION_288();
      v218(v217);
      v156 = v334[0];
      OUTLINED_FUNCTION_190_2();
      sub_1C906377C();
      v219 = *(v214 + 8);
      v220 = OUTLINED_FUNCTION_148();
      v221(v220);
      OUTLINED_FUNCTION_149_1();
      goto LABEL_38;
    case 6u:
      OUTLINED_FUNCTION_138_0();
      v227 = OUTLINED_FUNCTION_332();
      v228(v227);
      v156 = v334[0];
      DateComponents.protobuf(useCase:)();
      v229 = OUTLINED_FUNCTION_60_2();
      v230(v229);
      OUTLINED_FUNCTION_149_1();
      goto LABEL_38;
    case 7u:
      OUTLINED_FUNCTION_161_1(v334);
      v194 = v312;
      (*(v193 + 32))(v312, v27, v314);
      v195 = v194;
      _s10Foundation3URLV7ToolKitE8protobuf7useCaseSS19VoiceShortcutClient011ProtobufUseG0O_tF_0();
      OUTLINED_FUNCTION_171_0();
      v196 = *(v131 + 8);
      v197 = OUTLINED_FUNCTION_278();
      v198(v197);
      v156 = v334[0];
      *v334[0] = v20;
      v156[1] = v195;
      goto LABEL_38;
    case 8u:
      v245 = v318;
      OUTLINED_FUNCTION_388();
      v246(v315, v27, v319);
      sub_1C906370C();
      OUTLINED_FUNCTION_35_4();
      sub_1C8CD0B28(v247, v248);
      OUTLINED_FUNCTION_162();
      v249 = v335;
      sub_1C90618AC();
      if (v249)
      {
        v250 = *(v245 + 8);
        v251 = OUTLINED_FUNCTION_162();
        v252(v251);

        goto LABEL_59;
      }

      OUTLINED_FUNCTION_170_2();
      v269 = *(v245 + 8);
      v270 = OUTLINED_FUNCTION_162();
      v271(v270);

      *v24 = v20;
      v24[1] = v148;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v173 = v24;
      goto LABEL_56;
    case 9u:
      OUTLINED_FUNCTION_138_0();
      v177 = OUTLINED_FUNCTION_332();
      v178(v177);
      v156 = v334[0];
      sub_1C8D4AD34(v334[0]);
      v179 = OUTLINED_FUNCTION_60_2();
      v180(v179);
      OUTLINED_FUNCTION_149_1();
      goto LABEL_38;
    case 0xAu:
      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_108_0(&a10);
      sub_1C8D50228(v241, v242);
      OUTLINED_FUNCTION_125_2();
      TypedValue.PrimitiveValue.CurrencyAmountValue.protobuf(useCase:)();
      v243 = OUTLINED_FUNCTION_75_0();
      sub_1C8CD0D98(v243, v244);
      if (v22)
      {
        goto LABEL_59;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v173 = v25;
      goto LABEL_56;
    case 0xBu:
      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_108_0(&a11);
      sub_1C8D50228(v169, v170);
      OUTLINED_FUNCTION_125_2();
      TypedValue.PrimitiveValue.PaymentMethodValue.protobuf(useCase:)();
      v171 = OUTLINED_FUNCTION_75_0();
      sub_1C8CD0D98(v171, v172);
      if (v22)
      {
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_128_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v173 = v148;
      goto LABEL_56;
    case 0xCu:
      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_108_0(&a12);
      sub_1C8D50228(v175, v176);
      OUTLINED_FUNCTION_125_2();
      TypedValue.PrimitiveValue.PlacemarkValue.protobuf(useCase:)();
      if (v22)
      {
        v168 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue;
        goto LABEL_44;
      }

      v265 = OUTLINED_FUNCTION_75_0();
      sub_1C8CD0D98(v265, v266);
      OUTLINED_FUNCTION_149_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v173 = v23;
      goto LABEL_56;
    case 0xDu:
      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_108_0(&a13);
      sub_1C8D50228(v225, v226);
      OUTLINED_FUNCTION_125_2();
      TypedValue.PrimitiveValue.PersonValue.protobuf(useCase:)();
      if (v22)
      {
        v168 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue;
        goto LABEL_44;
      }

      v267 = OUTLINED_FUNCTION_75_0();
      sub_1C8CD0D98(v267, v268);
      OUTLINED_FUNCTION_133_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v173 = v20;
      goto LABEL_56;
    case 0xEu:
      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_108_0(&a14);
      sub_1C8D50228(v166, v167);
      OUTLINED_FUNCTION_125_2();
      TypedValue.PrimitiveValue.FileValue.protobuf(useCase:)();
      if (v22)
      {
        v168 = type metadata accessor for TypedValue.PrimitiveValue.FileValue;
        goto LABEL_44;
      }

      v263 = OUTLINED_FUNCTION_75_0();
      sub_1C8CD0D98(v263, v264);
      OUTLINED_FUNCTION_193_0();
      goto LABEL_55;
    case 0xFu:
      OUTLINED_FUNCTION_103_2();
      v181 = v323;
      sub_1C8D50228(v27, v323);
      v183 = *v181;
      v182 = v181[1];
      OUTLINED_FUNCTION_129_0(&a15);
      v153 = v324;
      sub_1C8D4F62C(v181 + v184, v324, &qword_1EC312788, &unk_1C906A3A0);
      type metadata accessor for DisplayRepresentation(0);
      v185 = OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_141_1(v185, v186, v187);

      if (v22 == 1)
      {
        sub_1C8CD0CC8(v153, &qword_1EC312788);
        v188 = v328;
      }

      else
      {
        v188 = v328;
        OUTLINED_FUNCTION_125_2();
        DisplayRepresentation.protobuf(useCase:)();
        if (v22)
        {
          v258 = OUTLINED_FUNCTION_90_0();
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_3_13();
        sub_1C8CD0D98(v153, v274);
      }

      v275 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
      OUTLINED_FUNCTION_87_1();
      v279 = OUTLINED_FUNCTION_123_1(v276, v277, v278, v275);
      v280 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(v279);
      v281 = *(v280 + 20);
      v26 = v305;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v282, v283, v284, v275);
      v285 = v26 + *(v280 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      v286 = OUTLINED_FUNCTION_90_0();
      sub_1C8CD0D98(v286, v287);
      *v26 = v183;
      v26[1] = v182;
      sub_1C8D4F5E4(v188, v26 + v281, &qword_1EC312A48, &unk_1C9072A10);
      OUTLINED_FUNCTION_193_0();
      goto LABEL_55;
    case 0x10u:
      v157 = *v27;
      v158 = MEMORY[0x1CCA82A80]();
      v159 = objc_opt_self();
      v337[0] = 0;
      v160 = [v159 archivedDataWithRootObject:v157 requiringSecureCoding:1 error:v337];
      v161 = v337[0];
      if (v160)
      {
        v162 = sub_1C9061F3C();
        v164 = v163;

        objc_autoreleasePoolPop(v158);
        v165 = v304;
        *v304 = v162;
        v165[1] = v164;
        OUTLINED_FUNCTION_133_2();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_6_8();
        v156 = v334[0];
        sub_1C8D50228(v165, v334[0]);
        goto LABEL_57;
      }

      v262 = v161;
      sub_1C9061D7C();

      swift_willThrow();
      objc_autoreleasePoolPop(v158);

      goto LABEL_59;
    case 0x11u:
      OUTLINED_FUNCTION_102_1();
      v199 = v331;
      sub_1C8D50228(v27, v331);
      v201 = *v199;
      v200 = v199[1];
      OUTLINED_FUNCTION_129_0(&a16);
      v153 = v325;
      sub_1C8D4F62C(v199 + v202, v325, &qword_1EC312788, &unk_1C906A3A0);
      type metadata accessor for DisplayRepresentation(0);
      v203 = OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_141_1(v203, v204, v205);

      if (v22 == 1)
      {
        sub_1C8CD0CC8(v153, &qword_1EC312788);
        v206 = v330[0];
      }

      else
      {
        v206 = v330[0];
        OUTLINED_FUNCTION_125_2();
        DisplayRepresentation.protobuf(useCase:)();
        if (v22)
        {
          OUTLINED_FUNCTION_97_1();
          v258 = v199;
LABEL_43:
          sub_1C8CD0D98(v258, v259);

          v168 = type metadata accessor for DisplayRepresentation;
LABEL_44:
          v260 = v168;
          v261 = v153;
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_3_13();
        sub_1C8CD0D98(v153, v288);
      }

      v289 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
      OUTLINED_FUNCTION_87_1();
      v293 = OUTLINED_FUNCTION_123_1(v290, v291, v292, v289);
      v294 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(v293);
      v295 = *(v294 + 20);
      v26 = v306;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v296, v297, v298, v289);
      v299 = v26 + *(v294 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      OUTLINED_FUNCTION_97_1();
      sub_1C8CD0D98(v199, v300);
      *v26 = v201;
      v26[1] = v200;
      sub_1C8D4F5E4(v206, v26 + v295, &qword_1EC312A48, &unk_1C9072A10);
      OUTLINED_FUNCTION_193_0();
LABEL_55:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v173 = v26;
      goto LABEL_56;
    case 0x12u:
      OUTLINED_FUNCTION_138_0();
      v231 = OUTLINED_FUNCTION_332();
      v232(v231);
      OUTLINED_FUNCTION_161_1(&v328);
      v233 = OUTLINED_FUNCTION_125_2();
      Calendar.RecurrenceRule.protobuf(useCase:)(v233, v234, v235, v236, v237, v238, v239, v240, v303, v304);
      if (!v22)
      {
        goto LABEL_50;
      }

      goto LABEL_36;
    case 0x13u:
      OUTLINED_FUNCTION_138_0();
      v253 = OUTLINED_FUNCTION_332();
      v254(v253);
      OUTLINED_FUNCTION_161_1(&v329);
      v255 = v335;
      DateInterval.protobuf(useCase:)();
      if (v255)
      {
        goto LABEL_36;
      }

      goto LABEL_50;
    case 0x14u:
      v207 = *v27;
      v208 = *(v27 + 8);
      OUTLINED_FUNCTION_94();
      v209 = sub_1C9064E2C();
      OUTLINED_FUNCTION_94();
      sub_1C9064E2C();
      v211 = v210;
      v212 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(0);
      v156 = v334[0];
      v213 = v334[0] + *(v212 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v156 = v209;
      v156[1] = v211;
      OUTLINED_FUNCTION_149_1();
      goto LABEL_38;
    case 0x15u:
      OUTLINED_FUNCTION_138_0();
      v222 = OUTLINED_FUNCTION_332();
      v223(v222);
      OUTLINED_FUNCTION_161_1(v330);
      v224 = v335;
      PersonNameComponents.protobuf(useCase:)();
      if (v224)
      {
LABEL_36:
        v256 = OUTLINED_FUNCTION_60_2();
        v257(v256);
      }

      else
      {
LABEL_50:
        v272 = OUTLINED_FUNCTION_60_2();
        v273(v272);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_6_8();
        v173 = v131;
LABEL_56:
        v156 = v334[0];
        sub_1C8D50228(v173, v334[0]);
LABEL_57:
        v301 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
        MEMORY[0x1EEE9AC00](v301);
        *(&v303 - 2) = v156;
        sub_1C8CD0B28(&qword_1EDA686F0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
        OUTLINED_FUNCTION_116();
        sub_1C9063ACC();
        OUTLINED_FUNCTION_2_10();
        v261 = v156;
LABEL_58:
        sub_1C8CD0D98(v261, v260);
      }

LABEL_59:
      v302 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_198();
      return;
    case 0x16u:
      __break(1u);
      JUMPOUT(0x1C8CD0A0CLL);
    case 0x17u:
      v156 = v334[0];
      goto LABEL_38;
    default:
      v156 = v334[0];
      *v334[0] = *v27;
LABEL_38:
      swift_storeEnumTagMultiPayload();
      goto LABEL_57;
  }
}

unint64_t OUTLINED_FUNCTION_270_1()
{

  return sub_1C8D99190();
}

uint64_t OUTLINED_FUNCTION_130_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_130_4()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 112);
  return result;
}

uint64_t sub_1C8CD0B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8CD0B70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8CD0BBC()
{
  v2 = OUTLINED_FUNCTION_47_5();
  v3(v2);
  v4 = OUTLINED_FUNCTION_227_0();
  v8 = OUTLINED_FUNCTION_52_6(v4, v5, v6, v7);
  v9 = v1 + *(v0(v8) + 20);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t sub_1C8CD0C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_163_1();
  sub_1C8CD0CC8(v7, v8);
  v9 = OUTLINED_FUNCTION_211();
  sub_1C8CCF5DC(v9, v10);
  a6(0);
  OUTLINED_FUNCTION_150();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1C8CD0CC8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_196_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_172_1()
{
  result = v1;
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_172_2()
{

  return sub_1C9063FBC();
}

uint64_t sub_1C8CD0D98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8CD0DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_147_0()
{
}

uint64_t OUTLINED_FUNCTION_147_1()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = *(v0 + 48);

  return TypedValue.DeferredValue.debugDescription.getter();
}

void *OUTLINED_FUNCTION_147_3(void *a1)
{

  return memcpy(a1, (v1 + 696), 0x61uLL);
}

uint64_t sub_1C8CD0F10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = a2(0);
  OUTLINED_FUNCTION_210_0(v3);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t sub_1C8CD0F64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  result = sub_1C8CD0FB0(v4);
  *a1 = a2;
  return result;
}

uint64_t sub_1C8CD0FB0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1C8CD0FDC()
{
  OUTLINED_FUNCTION_354_0();
  if (v0 == 119)
  {
    OUTLINED_FUNCTION_136_2();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v1 = OUTLINED_FUNCTION_101_3();

    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  }
}

uint64_t OUTLINED_FUNCTION_317_1()
{

  return sub_1C8CD20B4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_122_2()
{

  return sub_1C8DB483C();
}

uint64_t OUTLINED_FUNCTION_122_4()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_122_8()
{

  return sub_1C8D63FCC();
}

uint64_t sub_1C8CD115C(uint64_t a1, int a2)
{
  if (a2 == 119)
  {
    OUTLINED_FUNCTION_120_2();
    if (v3)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v5 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

uint64_t sub_1C8CD11C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      v2 = *a1 + 120;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x78)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C8CD1220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void ToolKitProtoTypedValue.PrimitiveValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v2 = OUTLINED_FUNCTION_245();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_21();
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  OUTLINED_FUNCTION_20_31(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_124();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_3_4();
        sub_1C8F7AE8C();
        goto LABEL_35;
      case 2:
        OUTLINED_FUNCTION_3_4();
        sub_1C8F7AFCC();
        goto LABEL_35;
      case 3:
        v34 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7B10C(v34, v35, v36, v37);
        goto LABEL_26;
      case 4:
        OUTLINED_FUNCTION_10_44();
        sub_1C8CD20B4(v1, v21);
        OUTLINED_FUNCTION_3_4();
        sub_1C8F7B314();
        goto LABEL_35;
      case 5:
        v47 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7B468(v47, v48, v49, v50);
        goto LABEL_26;
      case 6:
        OUTLINED_FUNCTION_10_44();
        sub_1C8CD20B4(v1, v59);
        OUTLINED_FUNCTION_3_4();
        sub_1C8F7B6A8();
        goto LABEL_35;
      case 7:
        OUTLINED_FUNCTION_10_44();
        sub_1C8CD20B4(v1, v38);
        OUTLINED_FUNCTION_3_4();
        sub_1C8F7B804();
        goto LABEL_35;
      case 8:
        OUTLINED_FUNCTION_10_44();
        sub_1C8CD20B4(v1, v69);
        OUTLINED_FUNCTION_3_4();
        sub_1C8F7B958();
        goto LABEL_35;
      case 9:
        v26 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7BAB4(v26, v27, v28, v29);
        goto LABEL_26;
      case 10:
        v64 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7BCBC(v64, v65, v66, v67);
LABEL_26:
        OUTLINED_FUNCTION_10_44();
        sub_1C8CD20B4(v1, v68);
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
      case 11:
        v17 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7BEC4(v17, v18, v19, v20);
        goto LABEL_31;
      case 12:
        v22 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7C0CC(v22, v23, v24, v25);
        goto LABEL_31;
      case 13:
        v55 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7C2D4(v55, v56, v57, v58);
        goto LABEL_31;
      case 14:
        v13 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7C4DC(v13, v14, v15, v16);
        goto LABEL_31;
      case 15:
        v30 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7C6E4(v30, v31, v32, v33);
        goto LABEL_31;
      case 16:
        OUTLINED_FUNCTION_10_44();
        sub_1C8CD20B4(v1, v12);
        OUTLINED_FUNCTION_3_4();
        sub_1C8F7C8EC();
        goto LABEL_35;
      case 17:
        v39 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7CA48(v39, v40, v41, v42);
        goto LABEL_31;
      case 18:
        v60 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7CC50(v60, v61, v62, v63);
        goto LABEL_31;
      case 19:
        v74 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7CE58(v74, v75, v76, v77);
        goto LABEL_31;
      case 20:
        v43 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7D060(v43, v44, v45, v46);
        goto LABEL_31;
      case 21:
        v51 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7D268(v51, v52, v53, v54);
        goto LABEL_31;
      case 22:
        v70 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7D470(v70, v71, v72, v73);
LABEL_31:
        if (v0)
        {
          OUTLINED_FUNCTION_10_44();
          sub_1C8CD20B4(v1, v78);
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_10_44();
        sub_1C8CD20B4(v1, v79);
        break;
      case 23:
        v80 = OUTLINED_FUNCTION_3_4();
        sub_1C8F7AB28(v80, v81, v82, v83);
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_4();
        sub_1C8F7AD50();
LABEL_35:
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  v10 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_52_17(v10);
LABEL_4:
  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t OUTLINED_FUNCTION_38_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_1C9063D3C();
}

uint64_t OUTLINED_FUNCTION_38_7()
{
  v4 = *(v0 + v1);
  *(v2 - 72) = v4;
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
}

uint64_t OUTLINED_FUNCTION_38_11@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 24);
  v4 = *(a1 + 16);

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_38_14()
{
  v2 = *(v0 + 256);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 232, v2);
}

void OUTLINED_FUNCTION_38_15()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[11];
}

void *OUTLINED_FUNCTION_38_18()
{

  return memcpy((v0 + 152), (v1 - 200), 0x70uLL);
}

double OUTLINED_FUNCTION_38_19@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0xF000000000000007;
  return result;
}

void *OUTLINED_FUNCTION_38_20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char __src, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54)
{

  return memcpy(&a54, &__src, 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_308_0()
{
  sub_1C8CD1784(v0);

  return sub_1C8CD1784(v1);
}

uint64_t OUTLINED_FUNCTION_308_1()
{

  return sub_1C90639FC();
}

uint64_t sub_1C8CD1784(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_108_3()
{
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];

  return sub_1C906371C();
}

uint64_t OUTLINED_FUNCTION_108_4()
{
  v2 = v0[29];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
}

uint64_t OUTLINED_FUNCTION_108_5()
{

  return sub_1C8D63FCC();
}

void ToolKitProtoTypedValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_273_2();
  if (v2)
  {
    goto LABEL_12;
  }

  switch(v1 >> 61)
  {
    case 1uLL:
      v8 = OUTLINED_FUNCTION_3_4();
      sub_1C8F73B48(v8);
      break;
    case 2uLL:
      v5 = OUTLINED_FUNCTION_3_4();
      sub_1C8F73CA0(v5);
      break;
    case 3uLL:
      v6 = OUTLINED_FUNCTION_3_4();
      sub_1C8F73DF8(v6);
      break;
    case 4uLL:
      v4 = OUTLINED_FUNCTION_3_4();
      sub_1C8F73F50(v4);
      break;
    case 5uLL:
      v9 = OUTLINED_FUNCTION_3_4();
      sub_1C8F740A8(v9);
      break;
    case 6uLL:
      v10 = OUTLINED_FUNCTION_3_4();
      sub_1C8F74200(v10);
      break;
    case 7uLL:
      v7 = OUTLINED_FUNCTION_3_4();
      sub_1C8F74358(v7);
      break;
    default:
      v3 = OUTLINED_FUNCTION_3_4();
      sub_1C8CD191C(v3);
      break;
  }

  if (!v0)
  {
LABEL_12:
    v11 = type metadata accessor for ToolKitProtoTypedValue(0);
    OUTLINED_FUNCTION_52_17(v11);
  }
}

uint64_t sub_1C8CD191C(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA686F0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_1C9063BCC();
    return sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_266_3()
{

  return sub_1C9063EAC();
}

uint64_t sub_1C8CD1ABC(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C8CE9D94(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C8CD1B00(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_49_1()
{
  *(v4 - 172) = v3;
  *(v4 - 168) = v0;
  *(v4 - 160) = v2;
  *(v4 - 136) = v1;
  v5 = *(v4 - 112);
}

uint64_t OUTLINED_FUNCTION_49_7()
{
}

id OUTLINED_FUNCTION_49_9()
{

  return [v0 (v3 + 1458)];
}

uint64_t OUTLINED_FUNCTION_49_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v33 = *(v30 - 120);
  v32 = *(v30 - 112);
  v35 = *(v30 - 136);
  v34 = *(v30 - 128);

  return sub_1C8D06E10(v27, v29, v32, v33, v34, v35, v28, a27);
}

uint64_t OUTLINED_FUNCTION_49_14()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_49_15(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_16()
{
  v2 = *(v0 - 256);

  return sub_1C906205C();
}

uint64_t OUTLINED_FUNCTION_49_20()
{
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return sub_1C9063E7C();
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  v2 = *(v0 - 264);
}

uint64_t OUTLINED_FUNCTION_54_4()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_54_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_1C8D070A4(&a31, &a23);
}

uint64_t OUTLINED_FUNCTION_54_8()
{

  return sub_1C906392C();
}

void *OUTLINED_FUNCTION_54_13()
{

  return memcpy((v0 - 312), (v0 - 200), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_63_1()
{
  v2 = *(v0 - 120);

  return sub_1C906371C();
}

uint64_t OUTLINED_FUNCTION_63_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_63_5(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_63_7()
{
}

uint64_t OUTLINED_FUNCTION_63_9()
{
  v2 = *(v0 - 256);

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_63_10(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_63_11()
{

  return sub_1C8E051A0(v1 - 176, v0);
}

uint64_t OUTLINED_FUNCTION_63_13()
{
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);

  return sub_1C8D16E14(v2, v1);
}

uint64_t OUTLINED_FUNCTION_63_14()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_63_16(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  return result;
}

uint64_t sub_1C8CD20B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_192_0()
{

  return sub_1C9064D7C();
}

uint64_t OUTLINED_FUNCTION_192_4()
{
  v2 = *(v0 + 168);
}

uint64_t OUTLINED_FUNCTION_192_7()
{
  *(v1 - 88) = v0;

  return sub_1C8D63FCC();
}

void OUTLINED_FUNCTION_112_0()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_112_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{

  return sub_1C8E1AC90(a3, a4, a5, a6, v6);
}

uint64_t OUTLINED_FUNCTION_50_3()
{

  return sub_1C9064E1C();
}

uint64_t OUTLINED_FUNCTION_112_5()
{
  v2 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v2;
  *(v0 - 256) = *(v0 - 192);
  *(v0 - 240) = *(v0 - 176);

  return sub_1C8D3ABC4(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_112_7(uint64_t a1)
{
  v4 = *(a1 + 56);
  *(v2 - 96) = v1;

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_191_2()
{

  return sub_1C9064D7C();
}

uint64_t OUTLINED_FUNCTION_191_5(uint64_t a1)
{

  return sub_1C8D16D78(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_191_6()
{
  v2 = *(v0 - 88);

  return sub_1C8D63FCC();
}

unsigned __int8 *OUTLINED_FUNCTION_309_0(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

unint64_t sub_1C8CD23A8(void *a1)
{
  a1[1] = sub_1C8CD2DDC();
  a1[2] = sub_1C8CD2978();
  a1[3] = sub_1C8CD29CC();
  a1[4] = sub_1C8CD2924();
  result = sub_1C8CD2D34();
  a1[5] = result;
  return result;
}

uint64_t sub_1C8CD23F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8CD2438(void *a1)
{
  a1[1] = sub_1C8CD23F0(&qword_1EDA6E010, type metadata accessor for DisplayRepresentation.Image);
  a1[2] = sub_1C8CD23F0(&qword_1EDA6E018, type metadata accessor for DisplayRepresentation.Image);
  a1[3] = sub_1C8CD23F0(&qword_1EDA6E030, type metadata accessor for DisplayRepresentation.Image);
  a1[4] = sub_1C8CD23F0(&qword_1EDA6E028, type metadata accessor for DisplayRepresentation.Image);
  result = sub_1C8CD23F0(&qword_1EDA6DB48, type metadata accessor for DisplayRepresentation.Image);
  a1[5] = result;
  return result;
}

void sub_1C8CD2534()
{
  if (!qword_1EDA6DF28)
  {
    type metadata accessor for DisplayRepresentation(255);
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6DF28);
    }
  }
}

void sub_1C8CD258C()
{
  sub_1C8CD2534();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C8CD2600(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C8CD2650()
{
  sub_1C8CD2840(319, &qword_1EDA6DB58, &unk_1EC312548);
  if (v0 <= 0x3F)
  {
    sub_1C8CD2840(319, qword_1EDA6DB60, &unk_1EC312550);
    if (v1 <= 0x3F)
    {
      sub_1C8CD2840(319, qword_1EDA6E038, &qword_1EC312530);
      if (v2 <= 0x3F)
      {
        sub_1C8CD2600(319, &qword_1EDA6DB50, &type metadata for DisplayRepresentation.PluginModelData, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C8CD2600(319, &qword_1EDA6E550, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C8CD27BC(void *a1)
{
  a1[1] = sub_1C8CD2CE0();
  a1[2] = sub_1C8CD2A98();
  a1[3] = sub_1C8CD2D88();
  a1[4] = sub_1C8CD2B40();
  result = sub_1C8CD2EA4();
  a1[5] = result;
  return result;
}

void sub_1C8CD2840(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_321(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = sub_1C906464C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1C8CD2924()
{
  result = qword_1EDA6DF80;
  if (!qword_1EDA6DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF80);
  }

  return result;
}

unint64_t sub_1C8CD2978()
{
  result = qword_1EDA6DF70;
  if (!qword_1EDA6DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF70);
  }

  return result;
}

unint64_t sub_1C8CD29CC()
{
  result = qword_1EDA6DF88;
  if (!qword_1EDA6DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF88);
  }

  return result;
}

uint64_t sub_1C8CD2A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C8CD2A98()
{
  result = qword_1EDA6DF48;
  if (!qword_1EDA6DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF48);
  }

  return result;
}

unint64_t sub_1C8CD2AEC()
{
  result = qword_1EDA6DF50;
  if (!qword_1EDA6DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF50);
  }

  return result;
}

unint64_t sub_1C8CD2B40()
{
  result = qword_1EDA6DF58;
  if (!qword_1EDA6DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF58);
  }

  return result;
}

unint64_t sub_1C8CD2B94()
{
  result = qword_1EDA6DB08;
  if (!qword_1EDA6DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DB08);
  }

  return result;
}

unint64_t sub_1C8CD2C18()
{
  result = qword_1EDA6DAF8;
  if (!qword_1EDA6DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DAF8);
  }

  return result;
}

uint64_t sub_1C8CD2C6C()
{
  result = sub_1C9061EBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C8CD2CE0()
{
  result = qword_1EDA6DF40;
  if (!qword_1EDA6DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF40);
  }

  return result;
}

unint64_t sub_1C8CD2D34()
{
  result = qword_1EDA6DB10;
  if (!qword_1EDA6DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DB10);
  }

  return result;
}

unint64_t sub_1C8CD2D88()
{
  result = qword_1EDA6DF60;
  if (!qword_1EDA6DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF60);
  }

  return result;
}

unint64_t sub_1C8CD2DDC()
{
  result = qword_1EDA6DF68;
  if (!qword_1EDA6DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF68);
  }

  return result;
}

unint64_t sub_1C8CD2E50()
{
  result = qword_1EDA6DF78;
  if (!qword_1EDA6DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF78);
  }

  return result;
}

unint64_t sub_1C8CD2EA4()
{
  result = qword_1EDA6DB00;
  if (!qword_1EDA6DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DB00);
  }

  return result;
}

uint64_t sub_1C8CD2F08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return OUTLINED_FUNCTION_8_1();
  }
}

uint64_t storeEnumTagSinglePayload for HashableCGSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C8CD2FC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8CE7AB8();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD3038()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CD3078()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CD314C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_8_1();
  }

  if (!v2 || a1 == a2)
  {
    return OUTLINED_FUNCTION_2_3();
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    if (!v2)
    {
      __break(1u);
      JUMPOUT(0x1C8CD31B0);
    }

    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    v8 = qword_1C90690D0[v5];
    v9 = qword_1C90690D0[v7];
    result = v8 == v9;
  }

  while (v8 == v9 && v2-- != 1);
  return result;
}

uint64_t sub_1C8CD320C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1C8CF3C30();
}

uint64_t sub_1C8CD322C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_1C8CD30BC();
}

uint64_t sub_1C8CD3238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1C8CF3BD0(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1C8CD326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF6534(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8CD32C0(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C8CF6A10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C8CD3314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF7DF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8CD3550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_258();
  v6 = sub_1C9061EBC();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1C8CD3600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_257();
  v8 = sub_1C9061EBC();
  result = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_95_0();

    return __swift_storeEnumTagSinglePayload(v11, v12, a2, v13);
  }

  else
  {
    v14 = (v4 + *(a4 + 20));
    *v14 = 0;
    v14[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

unint64_t sub_1C8CD37AC(unint64_t result)
{
  v1 = (result >> 57) & 8 | result & 7;
  if (v1 <= 0xC)
  {
    v2 = qword_1C90690F0[v1];
  }

  return result;
}

unint64_t sub_1C8CD37D8(unint64_t result)
{
  v1 = (result >> 57) & 8 | result & 7;
  if (v1 <= 0xC)
  {
    v2 = qword_1C90690F0[v1];
  }

  return result;
}

char *sub_1C8CD382C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

char *sub_1C8CD384C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_9(a3, result, 104 * a2);
  }

  return result;
}

uint64_t sub_1C8CD3954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C906204C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C8CD399C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C906204C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C8CD3AA0(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C8D16D68(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C8CD3B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9061EBC();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C8CD3C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_257();
  v8 = sub_1C9061EBC();
  result = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C8CD3CE0()
{
  v1 = *(type metadata accessor for ToolDatabase.Pager(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_1C9061EBC();
  OUTLINED_FUNCTION_13_1(v6);
  (*(v7 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C8CD3DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C8CD3E68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CD3F50()
{
  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_13_1(v1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1C8CD404C()
{
  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_38_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C8CD4164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D35158(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8CD4190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2B554(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CD43D0(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C8CD4418@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D350A4();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD47C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1C8D43CA8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1C8CD4818()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CD48CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CD4A28()
{
  sub_1C8D548A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1C8CD4DAC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CD4EB4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CD4F1C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return ConcreteResolvable.init(stringLiteral:)();
}

uint64_t sub_1C8CD4F28(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ToolDefinition(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C8CD4FB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ToolDefinition(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CD5054(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314058, &qword_1C90726F8);
  v12 = OUTLINED_FUNCTION_179(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[7];
LABEL_10:
    v10 = a1 + v14;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314060, &qword_1C9072700);
    v14 = a3[10];
    goto LABEL_10;
  }

  v15 = *(a1 + a3[9]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C8CD5184(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  v9 = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314058, &qword_1C90726F8);
    result = OUTLINED_FUNCTION_179(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[7];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314060, &qword_1C9072700);
      v16 = a4[10];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

BOOL sub_1C8CD5360(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1C8CD5420()
{
  v1 = sub_1C9062E6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C8CD55E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C8CD567C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CD576C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CD57A0()
{
  v1 = *(v0 + 16);

  if ((~*(v0 + 24) & 0xF000000000000007) != 0)
  {
  }

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CD5964()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CD5B58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CD5B90()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 113, 7);
}

uint64_t sub_1C8CD5DB8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitProtoTypeDefinition.Version1.Entity.RuntimeFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD5FF4@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitProtoQuery.SortOrder.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD61A8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitProtoTriggerDefinition.Version1.Flag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD61D0(uint64_t a1, int a2)
{
  if (a2 == 122)
  {
    OUTLINED_FUNCTION_120_2();
    if (v2 >= 0x7B)
    {
      return 0;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v4 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_1C8CD623C()
{
  OUTLINED_FUNCTION_354_0();
  if (v0 == 122)
  {
    OUTLINED_FUNCTION_136_2();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v1 = OUTLINED_FUNCTION_101_3();

    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  }
}

uint64_t sub_1C8CD6298(unsigned __int8 *a1, int a2)
{
  if (a2 == 208)
  {
    v2 = *a1;
    if (v2 <= 0x2F)
    {
      v3 = 47;
    }

    else
    {
      v3 = *a1;
    }

    v4 = v3 - 47;
    if (v2 >= 0x17)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v6 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1C8CD6314()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 208)
  {
    *v1 = v0 + 47;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_138_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD63DC(uint64_t *a1, int a2)
{
  if (a2 == 2147483630)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    v3 = v2 - 16;
    v4 = v3 <= 0;
    if (v3 < 0)
    {
      v3 = -1;
    }

    if (v4)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v6 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1C8CD6464()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 2147483630)
  {
    *v1 = (v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_138_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD64D0()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v6 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CD657C()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
    OUTLINED_FUNCTION_179(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_142_1();
    }

    v5 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CD66BC()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_208_1();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
    OUTLINED_FUNCTION_179(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_271_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_352();
    }
  }

  v9 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1C8CD67B4()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_225_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
    OUTLINED_FUNCTION_179(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_212_0();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
      OUTLINED_FUNCTION_179(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_277_1();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_355_0();
      }
    }

    v7 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD68D4()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_207_0();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
    OUTLINED_FUNCTION_179(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_223_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_208_1();
    }
  }

  v9 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1C8CD69CC()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_225_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
    OUTLINED_FUNCTION_179(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_213_0();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
      OUTLINED_FUNCTION_179(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_228_0();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_212_0();
      }
    }

    v7 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD6B34()
{
  OUTLINED_FUNCTION_43_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314258, &qword_1C9072A90);
  OUTLINED_FUNCTION_179(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314250, &unk_1C9074D40);
    OUTLINED_FUNCTION_179(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_140_2();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314248, &unk_1C9072A80);
      OUTLINED_FUNCTION_179(v10);
      if (*(v11 + 84) == v0)
      {
        OUTLINED_FUNCTION_207_0();
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314240, &unk_1C9074D50);
        OUTLINED_FUNCTION_179(v12);
        if (*(v13 + 84) == v0)
        {
          OUTLINED_FUNCTION_223_1();
        }

        else
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314238, &unk_1C9072A70);
          OUTLINED_FUNCTION_179(v14);
          if (*(v15 + 84) == v0)
          {
            OUTLINED_FUNCTION_208_1();
          }

          else
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314230, &unk_1C9074D60);
            OUTLINED_FUNCTION_179(v16);
            if (*(v17 + 84) == v0)
            {
              OUTLINED_FUNCTION_271_0();
            }

            else
            {
              v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314228, &qword_1C9072A60);
              OUTLINED_FUNCTION_179(v18);
              if (*(v19 + 84) == v0)
              {
                OUTLINED_FUNCTION_352();
              }

              else
              {
                v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314220, &unk_1C9074D70);
                OUTLINED_FUNCTION_179(v20);
                if (*(v21 + 84) == v0)
                {
                  v7 = *(v2 + 52);
                }

                else
                {
                  sub_1C90637EC();
                  v7 = *(v2 + 56);
                }
              }
            }
          }
        }
      }
    }
  }

  v22 = OUTLINED_FUNCTION_108_1(v7);

  return __swift_getEnumTagSinglePayload(v22, v23, v24);
}

void sub_1C8CD6DE4()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    OUTLINED_FUNCTION_225_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314258, &qword_1C9072A90);
    OUTLINED_FUNCTION_179(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314250, &unk_1C9074D40);
      OUTLINED_FUNCTION_179(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_142_1();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314248, &unk_1C9072A80);
        OUTLINED_FUNCTION_179(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_213_0();
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314240, &unk_1C9074D50);
          OUTLINED_FUNCTION_179(v10);
          if (*(v11 + 84) == v1)
          {
            OUTLINED_FUNCTION_228_0();
          }

          else
          {
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314238, &unk_1C9072A70);
            OUTLINED_FUNCTION_179(v12);
            if (*(v13 + 84) == v1)
            {
              OUTLINED_FUNCTION_212_0();
            }

            else
            {
              v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314230, &unk_1C9074D60);
              OUTLINED_FUNCTION_179(v14);
              if (*(v15 + 84) == v1)
              {
                OUTLINED_FUNCTION_277_1();
              }

              else
              {
                v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314228, &qword_1C9072A60);
                OUTLINED_FUNCTION_179(v16);
                if (*(v17 + 84) == v1)
                {
                  OUTLINED_FUNCTION_355_0();
                }

                else
                {
                  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314220, &unk_1C9074D70);
                  OUTLINED_FUNCTION_179(v18);
                  if (*(v19 + 84) == v1)
                  {
                    v5 = *(v0 + 52);
                  }

                  else
                  {
                    sub_1C90637EC();
                    v5 = *(v0 + 56);
                  }
                }
              }
            }
          }
        }
      }
    }

    v20 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }
}

uint64_t sub_1C8CD70CC()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v1 + 24));
  }

  OUTLINED_FUNCTION_116_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v7 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C8CD717C()
{
  OUTLINED_FUNCTION_19_11();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_142_1();
    }

    v7 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD7254()
{
  OUTLINED_FUNCTION_274_1();
  if (v2)
  {
    v3 = *(v1 + 8);
    OUTLINED_FUNCTION_313_0();
    v6 = (v4 + v5) & 0x7FFFFFFF;
    if (v7)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A28, &unk_1C9074CD0);
    OUTLINED_FUNCTION_179(v9);
    if (*(v10 + 84) == v0)
    {
      OUTLINED_FUNCTION_207_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_223_1();
    }

    v12 = OUTLINED_FUNCTION_108_1(v11);

    return __swift_getEnumTagSinglePayload(v12, v13, v14);
  }
}

void sub_1C8CD7310()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 254)
  {
    *(v1 + 8) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A28, &unk_1C9074CD0);
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_213_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_228_0();
    }

    v7 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD73C8()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 48);
  sub_1C90637EC();
  v2 = OUTLINED_FUNCTION_238_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_1C8CD7410()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 48);
  sub_1C90637EC();
  OUTLINED_FUNCTION_317_0();
  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C8CD7484()
{
  OUTLINED_FUNCTION_163_2();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_10(*(v1 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v7 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C8CD7534()
{
  OUTLINED_FUNCTION_88_1();
  if (v3)
  {
    *(v1 + 16) = v0;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_142_1();
    }

    v7 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD75E8()
{
  OUTLINED_FUNCTION_312_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_229_0();
  }

  OUTLINED_FUNCTION_116_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v6 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CD7694()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_142_1();
    }

    v7 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD7748()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_140_2();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A58, &qword_1C906F560);
    OUTLINED_FUNCTION_179(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_207_0();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A50, &unk_1C9074CF0);
      OUTLINED_FUNCTION_179(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_223_1();
      }

      else
      {
        sub_1C90637EC();
        v6 = *(v1 + 60);
      }
    }
  }

  v11 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v11, v12, v13);
}

void sub_1C8CD7888()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
    OUTLINED_FUNCTION_179(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_142_1();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A58, &qword_1C906F560);
      OUTLINED_FUNCTION_179(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_213_0();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A50, &unk_1C9074CF0);
        OUTLINED_FUNCTION_179(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_228_0();
        }

        else
        {
          sub_1C90637EC();
          v5 = *(v0 + 60);
        }
      }
    }

    v10 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1C8CD79D0()
{
  OUTLINED_FUNCTION_163_2();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_10(*(v1 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139A8, &unk_1C9074CE0);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_208_1();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_271_0();
  }

  v7 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C8CD7A80()
{
  OUTLINED_FUNCTION_88_1();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139A8, &unk_1C9074CE0);
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_212_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_277_1();
    }

    v7 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD7B30()
{
  OUTLINED_FUNCTION_163_2();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_10(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_208_1();
  v4 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CD7B98()
{
  OUTLINED_FUNCTION_88_1();
  if (v2)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_212_0();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD7BF8()
{
  OUTLINED_FUNCTION_81_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_179(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
  }

  else
  {
    if (v0 == 2147483646)
    {
      OUTLINED_FUNCTION_263_0();
      return OUTLINED_FUNCTION_18_10(*(v4 + 8));
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v6 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CD7CB0()
{
  OUTLINED_FUNCTION_44_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_179(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_138_1();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_263_0();
      *(v5 + 8) = v0;
      return;
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_142_1();
  }

  v6 = OUTLINED_FUNCTION_37_1(v4);

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C8CD7DA4()
{
  OUTLINED_FUNCTION_81_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_165_1();
  }

  else
  {
    if (v0 == 2147483646)
    {
      OUTLINED_FUNCTION_357_0();
      return OUTLINED_FUNCTION_18_10(*(v7 + 8));
    }

    v6 = sub_1C90637EC();
    v5 = v1 + *(v2 + 80);
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

void sub_1C8CD7E64()
{
  OUTLINED_FUNCTION_44_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v3)
  {
    OUTLINED_FUNCTION_227_0();
  }

  else
  {
    if (v3 == 2147483646)
    {
      OUTLINED_FUNCTION_357_0();
      *(v6 + 8) = v0;
      return;
    }

    sub_1C90637EC();
    v7 = v1 + *(v2 + 80);
  }

  OUTLINED_FUNCTION_114_2();

  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1C8CD7F4C()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_223_1();
  v4 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CD7FB4()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_228_0();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD8014()
{
  OUTLINED_FUNCTION_43_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_21_0(*(v1 + 24));
  }

  OUTLINED_FUNCTION_116_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  OUTLINED_FUNCTION_179(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[17];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AF8, &qword_1C906F5B0);
    OUTLINED_FUNCTION_179(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[18];
    }

    else
    {
      sub_1C90637EC();
      v7 = v2[19];
    }
  }

  v10 = OUTLINED_FUNCTION_108_1(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1C8CD8118()
{
  OUTLINED_FUNCTION_19_11();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
    OUTLINED_FUNCTION_179(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = v2[17];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AF8, &qword_1C906F5B0);
      OUTLINED_FUNCTION_179(v8);
      if (*(v9 + 84) == v3)
      {
        v7 = v2[18];
      }

      else
      {
        sub_1C90637EC();
        v7 = v2[19];
      }
    }

    v10 = OUTLINED_FUNCTION_37_1(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1C8CD8230()
{
  OUTLINED_FUNCTION_81_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
LABEL_7:
    v8 = OUTLINED_FUNCTION_108_1(v5);

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  if (v0 != 253)
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
    goto LABEL_7;
  }

  v6 = *(v1 + *(v2 + 24));
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1C8CD830C()
{
  OUTLINED_FUNCTION_44_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  result = OUTLINED_FUNCTION_179(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_138_1();
  }

  else
  {
    if (v3 == 253)
    {
      *(v1 + *(v2 + 24)) = v0 + 2;
      return result;
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_142_1();
  }

  v8 = OUTLINED_FUNCTION_37_1(v7);

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1C8CD83C0()
{
  OUTLINED_FUNCTION_312_0();
  if (v1)
  {
    v2 = *(v0 + 1);
    if (v2 >= 2)
    {
      v3 = ((v2 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v3 = -2;
    }

    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v5 = OUTLINED_FUNCTION_100_2();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void sub_1C8CD844C()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 253)
  {
    *(v1 + 1) = v0 + 2;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_142_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD84B0()
{
  OUTLINED_FUNCTION_274_1();
  if (v1)
  {
    v2 = *(v0 + 8);
    OUTLINED_FUNCTION_313_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v8 = OUTLINED_FUNCTION_78();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_1C8CD8524()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 254)
  {
    *(v1 + 8) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_141_2();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD8588()
{
  OUTLINED_FUNCTION_81_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  OUTLINED_FUNCTION_179(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_165_1();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
    v4 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_1C8CD861C()
{
  OUTLINED_FUNCTION_44_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  OUTLINED_FUNCTION_179(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_227_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_142_1();
  }

  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_1C8CD86E0()
{
  sub_1C8DB6634(319, qword_1EDA6ADA8, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C8DB6634(319, &qword_1EDA67368, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C90637EC();
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_62();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_44_6();
      }
    }
  }
}

uint64_t sub_1C8CD87E0()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
    OUTLINED_FUNCTION_179(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_140_2();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_208_1();
    }
  }

  v8 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1C8CD88D4()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
    OUTLINED_FUNCTION_179(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
      OUTLINED_FUNCTION_179(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_142_1();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_212_0();
      }
    }

    v7 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD8A80()
{
  OUTLINED_FUNCTION_81_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_179(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_165_1();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_137_0();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139F0, &unk_1C9074D10);
      OUTLINED_FUNCTION_179(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_146_2();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_140_2();
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_1C8CD8BA4()
{
  OUTLINED_FUNCTION_44_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_179(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_227_0();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139F0, &unk_1C9074D10);
      OUTLINED_FUNCTION_179(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_141_2();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_142_1();
      }
    }
  }

  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C8CD8E44()
{
  OUTLINED_FUNCTION_81_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  OUTLINED_FUNCTION_179(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_165_1();
  }

  else
  {
    if (v0 == 2147483646)
    {
      OUTLINED_FUNCTION_357_0();
      return OUTLINED_FUNCTION_18_10(*(v6 + 8));
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_146_2();
    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1C8CD8F00()
{
  OUTLINED_FUNCTION_44_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  OUTLINED_FUNCTION_179(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_227_0();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_357_0();
      *(v4 + 8) = v0;
      return;
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_141_2();
  }

  OUTLINED_FUNCTION_114_2();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1C8CD900C()
{
  OUTLINED_FUNCTION_274_1();
  if (v1)
  {
    v2 = *v0;
    OUTLINED_FUNCTION_313_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    OUTLINED_FUNCTION_208_1();
    v9 = OUTLINED_FUNCTION_108_1(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_1C8CD9080()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_212_0();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD9184()
{
  OUTLINED_FUNCTION_81_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  OUTLINED_FUNCTION_179(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_165_1();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_146_2();
    v4 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_1C8CD9218()
{
  OUTLINED_FUNCTION_44_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  OUTLINED_FUNCTION_179(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_227_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_141_2();
  }

  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_1C8CD9300()
{
  OUTLINED_FUNCTION_19_11();
  if (v0)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_141_2();
    v2 = OUTLINED_FUNCTION_37_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1C8CD9364()
{
  OUTLINED_FUNCTION_223();
  sub_1C90637EC();
  v1 = OUTLINED_FUNCTION_165_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1C8CD93A4()
{
  OUTLINED_FUNCTION_223();
  sub_1C90637EC();
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C8CD9474()
{
  OUTLINED_FUNCTION_312_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_229_0();
  }

  OUTLINED_FUNCTION_116_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v6 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CD9520()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_142_1();
    }

    v7 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD95FC()
{
  OUTLINED_FUNCTION_274_1();
  if (v1)
  {
    v2 = *(v0 + 12);
    OUTLINED_FUNCTION_313_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    OUTLINED_FUNCTION_207_0();
    v9 = OUTLINED_FUNCTION_108_1(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_1C8CD9670()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 254)
  {
    *(v1 + 12) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_213_0();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD9724(unsigned __int8 *a1, int a2)
{
  if (a2 == 247)
  {
    v3 = *a1;
    if (v3 >= 9)
    {
      return v3 - 8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
    OUTLINED_FUNCTION_179(v5);
    if (*(v6 + 84) == v2)
    {
      OUTLINED_FUNCTION_137_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_207_0();
    }

    v8 = OUTLINED_FUNCTION_108_1(v7);

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_1C8CD97E0()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 247)
  {
    *v1 = v0 + 8;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_213_0();
    }

    v7 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD98EC()
{
  OUTLINED_FUNCTION_312_0();
  if (v1)
  {
    v2 = *(v0 + 16);
    if (v2 <= 1)
    {
      return 0;
    }

    else
    {
      return v2 ^ 0xFF;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v4 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_1C8CD9958()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 253)
  {
    *(v1 + 16) = ~v0;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_138_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD99C4()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 28);
  sub_1C90637EC();
  v2 = OUTLINED_FUNCTION_238_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_1C8CD9A0C()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 28);
  sub_1C90637EC();
  OUTLINED_FUNCTION_317_0();
  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C8CD9A80()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_140_2();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_223_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_208_1();
    }
  }

  v8 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1C8CD9B74()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
    OUTLINED_FUNCTION_179(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_142_1();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
      OUTLINED_FUNCTION_179(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_228_0();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_212_0();
      }
    }

    v7 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD9D00()
{
  OUTLINED_FUNCTION_274_1();
  if (v1)
  {
    v2 = *v0;
    OUTLINED_FUNCTION_313_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v8 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_1C8CD9D70()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_138_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD9DD4()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 20);
  sub_1C90637EC();
  v2 = OUTLINED_FUNCTION_238_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_1C8CD9E1C()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 20);
  sub_1C90637EC();
  OUTLINED_FUNCTION_317_0();
  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C8CD9E90()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = v1[19];
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C0, &qword_1C9074E98);
    OUTLINED_FUNCTION_179(v7);
    if (*(v8 + 84) == v0)
    {
      v6 = v1[21];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C8, &qword_1C9074EA0);
      OUTLINED_FUNCTION_179(v9);
      if (*(v10 + 84) == v0)
      {
        v6 = v1[23];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D0, &qword_1C9074EA8);
        OUTLINED_FUNCTION_179(v11);
        if (*(v12 + 84) == v0)
        {
          v6 = v1[24];
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
          OUTLINED_FUNCTION_179(v13);
          if (*(v14 + 84) == v0)
          {
            v6 = v1[25];
          }

          else
          {
            sub_1C90637EC();
            v6 = v1[31];
          }
        }
      }
    }
  }

  v15 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v15, v16, v17);
}

void sub_1C8CDA074()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[19];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C0, &qword_1C9074E98);
      OUTLINED_FUNCTION_179(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[21];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C8, &qword_1C9074EA0);
        OUTLINED_FUNCTION_179(v8);
        if (*(v9 + 84) == v1)
        {
          v5 = v0[23];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D0, &qword_1C9074EA8);
          OUTLINED_FUNCTION_179(v10);
          if (*(v11 + 84) == v1)
          {
            v5 = v0[24];
          }

          else
          {
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
            OUTLINED_FUNCTION_179(v12);
            if (*(v13 + 84) == v1)
            {
              v5 = v0[25];
            }

            else
            {
              sub_1C90637EC();
              v5 = v0[31];
            }
          }
        }
      }
    }

    v14 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }
}

uint64_t sub_1C8CDA280()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_208_1();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D8, &qword_1C9074EB0);
    OUTLINED_FUNCTION_179(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_271_0();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E0, &qword_1C9074EB8);
      OUTLINED_FUNCTION_179(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_352();
      }

      else
      {
        sub_1C90637EC();
        v6 = *(v1 + 52);
      }
    }
  }

  v11 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v11, v12, v13);
}

void sub_1C8CDA3C0()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_212_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D8, &qword_1C9074EB0);
      OUTLINED_FUNCTION_179(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_277_1();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E0, &qword_1C9074EB8);
        OUTLINED_FUNCTION_179(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_355_0();
        }

        else
        {
          sub_1C90637EC();
          v5 = *(v0 + 52);
        }
      }
    }

    v10 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1C8CDA584()
{
  OUTLINED_FUNCTION_43_0();
  if (v0)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_207_0();
  v3 = OUTLINED_FUNCTION_108_1(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C8CDA5E8()
{
  OUTLINED_FUNCTION_19_11();
  if (v0)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_213_0();
    v2 = OUTLINED_FUNCTION_37_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1C8CDA6C8()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A0, &unk_1C9066A80);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312698, &qword_1C9066A78);
    OUTLINED_FUNCTION_179(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_140_2();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A8, &unk_1C9074CA0);
      OUTLINED_FUNCTION_179(v8);
      if (*(v9 + 84) == v0)
      {
        OUTLINED_FUNCTION_207_0();
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
        OUTLINED_FUNCTION_179(v10);
        if (*(v11 + 84) == v0)
        {
          OUTLINED_FUNCTION_223_1();
        }

        else
        {
          sub_1C90637EC();
          OUTLINED_FUNCTION_208_1();
        }
      }
    }
  }

  v12 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_1C8CDA84C()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A0, &unk_1C9066A80);
    OUTLINED_FUNCTION_179(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312698, &qword_1C9066A78);
      OUTLINED_FUNCTION_179(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_142_1();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A8, &unk_1C9074CA0);
        OUTLINED_FUNCTION_179(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_213_0();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
          OUTLINED_FUNCTION_179(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_228_0();
          }

          else
          {
            sub_1C90637EC();
            OUTLINED_FUNCTION_212_0();
          }
        }
      }
    }

    v11 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

uint64_t sub_1C8CDA9DC()
{
  OUTLINED_FUNCTION_312_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_229_0();
  }

  OUTLINED_FUNCTION_116_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_146_2();
  }

  v6 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CDAA88()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_141_2();
    }

    v7 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CDAC2C()
{
  OUTLINED_FUNCTION_274_1();
  if (v2)
  {
    v3 = *v1;
    if (v3 >= 2)
    {
      return v3 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179(v5);
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_137_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_146_2();
    }

    v8 = OUTLINED_FUNCTION_108_1(v7);

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_1C8CDACE4()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_141_2();
    }

    v7 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CDADC0()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_208_1();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_271_0();
  }

  v6 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CDAE6C()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_212_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_277_1();
    }

    v5 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CDAF68()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_140_2();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B0, &unk_1C9074D80);
    OUTLINED_FUNCTION_179(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_207_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_223_1();
    }
  }

  v9 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1C8CDB060()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_225_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
    OUTLINED_FUNCTION_179(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_142_1();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B0, &unk_1C9074D80);
      OUTLINED_FUNCTION_179(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_213_0();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_228_0();
      }
    }

    v7 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CDB154()
{
  OUTLINED_FUNCTION_163_2();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_10(*(v0 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_223_1();
  v4 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CDB1BC()
{
  OUTLINED_FUNCTION_88_1();
  if (v2)
  {
    *(v1 + 16) = v0;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_228_0();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CDB294()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314840, &qword_1C9074F48);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_207_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_223_1();
  }

  v7 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C8CDB344()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_225_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314840, &qword_1C9074F48);
    OUTLINED_FUNCTION_179(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_213_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_228_0();
    }

    v5 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CDB5E4()
{
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CDB614()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CDB644()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CDB684()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CDB6B4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CDB784()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1C8CDBB5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C8CDBB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyPredicate(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C8CDBC1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AnyPredicate(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C8CDBDF4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CDC024()
{
  OUTLINED_FUNCTION_347_0();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CDC058(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_258();
  v6 = sub_1C906204C();
  OUTLINED_FUNCTION_179(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_266_1();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 24));
    OUTLINED_FUNCTION_221_1();
    if (v14 >= 0x79)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_1C8CDC0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_258();
  v8 = sub_1C906204C();
  result = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    v11 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    *(v4 + *(a4 + 24)) = (v11 | (v11 << 57)) & 0xF000000000000007;
  }

  return result;
}

uint64_t sub_1C8CDC1C8(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_179(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_10(*(a1 + *(a3 + 20)));
  }

  v8 = OUTLINED_FUNCTION_266_1();

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t sub_1C8CDC268()
{
  OUTLINED_FUNCTION_44_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  result = OUTLINED_FUNCTION_179(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_313_1();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }

  return result;
}

uint64_t sub_1C8CDC300()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 32));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v3 = OUTLINED_FUNCTION_78();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C8CDC374()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v3 = OUTLINED_FUNCTION_85_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1C8CDC3E4(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_18_10(*(a1 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v3 = OUTLINED_FUNCTION_78();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t sub_1C8CDC460(uint64_t result, unsigned int a2, int a3)
{
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v3 = OUTLINED_FUNCTION_85_1();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1C8CDC4EC()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CDC564()
{
  OUTLINED_FUNCTION_19_11();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v5 = OUTLINED_FUNCTION_108_1(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1C8CDC5E0()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v3 = OUTLINED_FUNCTION_78();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C8CDC654()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v3 = OUTLINED_FUNCTION_85_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1C8CDC6C4(uint64_t *a1, int a2)
{
  if (a2 == 123)
  {
    v3 = *a1;
    OUTLINED_FUNCTION_221_1();
    if (v5 >= 0x7B)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    type metadata accessor for Query();
    v7 = OUTLINED_FUNCTION_108_1(*(v2 + 20));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

unint64_t *sub_1C8CDC73C(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 123)
  {
    v6 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    v8 = type metadata accessor for Query();
    v9 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C8CDC89C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CDC8D0()
{
  if (*(v0 + 16) >= 0x10uLL)
  {
  }

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CDC90C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[13];

  if (v0[16])
  {

    v7 = v0[17];

    v8 = v0[19];

    v9 = v0[21];

    v10 = v0[24];

    v11 = v0[26];
  }

  v12 = v0[29];

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_1C8CDC9C8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}