uint64_t sub_1C7363B50()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 576);

  OUTLINED_FUNCTION_70(v1, v1[3]);
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7363C18()
{
  OUTLINED_FUNCTION_42();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[10] = v5;
  v6 = sub_1C754F38C();
  v1[15] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[16] = v7;
  v1[17] = OUTLINED_FUNCTION_77();
  v8 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7363CC4()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_141_1(*(v0 + 96), *(*(v0 + 96) + 24));
  OUTLINED_FUNCTION_71_2();
  type metadata accessor for QueryGenerator();
  *(v0 + 16) = 2;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  *(v0 + 40) = 257;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  sub_1C75504FC();
  sub_1C75504FC();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 144) = v3;
  *v3 = v4;
  v3[1] = sub_1C7363DD8;
  OUTLINED_FUNCTION_88_0();

  return QueryAssetsRetrievalProcessor.performAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v5, v6);
}

uint64_t sub_1C7363DD8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7363EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 96);
  if (*(v10 + 64))
  {
    v12 = sub_1C75504FC();
    sub_1C716A74C(v12);
    v13 = OUTLINED_FUNCTION_57_0();
    sub_1C7364A20(v13, v14);
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_58_16(v11);
  }

  else
  {
    OUTLINED_FUNCTION_58_16(*(v10 + 96));
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  v15 = OUTLINED_FUNCTION_55();
  v16(v15);

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_88_0();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1C7363FD0()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_70(v1, v1[3]);
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7364090@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X4>, void *a5@<X8>)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v11 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v88 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  v95 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  v90 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v89 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_140_1();
  v87 = v19;
  memcpy(__dst, a1, sizeof(__dst));
  if (!*(a2 + 16) || (v20 = sub_1C6FC2A70(), (v21 & 1) == 0))
  {
    memcpy(a5, __dst, 0x78uLL);
    return sub_1C6FCA6E4(__dst, v92);
  }

  v83 = a4;
  v84 = a5;
  v82 = *(*(a2 + 56) + 8 * v20);
  sub_1C75504FC();
  v22 = sub_1C6FE375C(__dst, a3);
  v23 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v86 = *(v22 + 16);
  if (!v86)
  {

    v26 = MEMORY[0x1E69E7CC8];
LABEL_43:
    v59 = __dst[10];
    v94 = __dst[10];
    v60 = *(__dst[10] + 16);
    if (!v60)
    {

      v61 = MEMORY[0x1E69E7CC0];
LABEL_78:
      sub_1C6FCA6E4(__dst, v92);
      sub_1C6FB5FC8(&v94, &qword_1EC2155D0);
      memcpy(v84, __dst, 0x78uLL);
      v84[10] = v61;
      v83(v82);
    }

    v92[0] = v23;
    sub_1C716E8D0(0, v60, 0);
    v61 = v92[0];
    v62 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v63 = v59 + v62;
    v64 = *(v88 + 72);
    while (1)
    {
      sub_1C71AC0CC(v63, v95, type metadata accessor for QueryTokenSuggestion);
      QueryTokenCategoryType.string.getter(&v91);
      v65 = 0xE400000000000000;
      v66 = 1701736302;
      switch(v91)
      {
        case 1:
          v65 = 0xE600000000000000;
          v67 = 1936876912;
          goto LABEL_63;
        case 2:
          v66 = 0x67416E6F73726570;
          v70 = 0x6570795465;
          goto LABEL_54;
        case 3:
          v66 = 1702125924;
          break;
        case 4:
          OUTLINED_FUNCTION_188();
          v65 = v71 + 20;
          v66 = 0x6144664F74726170;
          break;
        case 5:
          OUTLINED_FUNCTION_437();
          v65 = v72 + 1529;
          v66 = 0x6557664F74726170;
          break;
        case 6:
          v65 = 0xE600000000000000;
          v67 = 1935762803;
LABEL_63:
          v66 = v67 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v65 = 0xE800000000000000;
          v68 = 1633906540;
          goto LABEL_58;
        case 8:
          v66 = 0x4C636972656E6567;
          v65 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v66 = 1952540791;
          break;
        case 10:
          v66 = 0x764563696C627570;
          v65 = 0xEB00000000746E65;
          break;
        case 11:
          v66 = 0x6C616E6F73726570;
          v70 = 0x746E657645;
LABEL_54:
          v65 = v70 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v66 = 0x746954636973756DLL;
          v65 = 0xEA0000000000656CLL;
          break;
        case 13:
          OUTLINED_FUNCTION_207();
          v65 = v73 + 1284;
          v66 = 0x747241636973756DLL;
          break;
        case 14:
          OUTLINED_FUNCTION_437();
          v65 = v69 + 6;
          v66 = 0x6E6547636973756DLL;
          break;
        case 15:
          v66 = 1685024621;
          break;
        case 16:
          v65 = 0xE800000000000000;
          v68 = 1634891108;
LABEL_58:
          v66 = v68 | 0x6E6F697400000000;
          break;
        case 17:
          v65 = 0xE600000000000000;
          v66 = 0x706972547369;
          break;
        case 18:
          v66 = 0x6D69546C6C417369;
          v65 = 0xE900000000000065;
          break;
        case 19:
          OUTLINED_FUNCTION_188();
          v65 = v74 + 13;
          v66 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      if (!*(v26 + 16))
      {
        break;
      }

      sub_1C6F78124(v66, v65);
      v76 = v75;

      if ((v76 & 1) == 0)
      {
        goto LABEL_72;
      }

      OUTLINED_FUNCTION_4_86();
      sub_1C71AC0CC(v77, v90, v78);
      OUTLINED_FUNCTION_1_113();
      sub_1C736F5E4(v95, v79);
LABEL_73:
      v92[0] = v61;
      v81 = *(v61 + 16);
      v80 = *(v61 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_1C716E8D0(v80 > 1, v81 + 1, 1);
        v61 = v92[0];
      }

      *(v61 + 16) = v81 + 1;
      sub_1C736F53C(v90, v61 + v62 + v81 * v64);
      v63 += v64;
      if (!--v60)
      {

        goto LABEL_78;
      }
    }

LABEL_72:
    sub_1C736F53C(v95, v90);
    goto LABEL_73;
  }

  v24 = 0;
  OUTLINED_FUNCTION_85_13();
  v26 = MEMORY[0x1E69E7CC8];
  v27 = v87;
  v85 = v25;
  while (v24 < *(v25 + 16))
  {
    OUTLINED_FUNCTION_4_86();
    sub_1C71AC0CC(v28, v27, v29);
    ++v24;
    QueryTokenCategoryType.string.getter(v92);
    v30 = 0xE400000000000000;
    v31 = 1701736302;
    switch(LOBYTE(v92[0]))
    {
      case 1:
        v30 = 0xE600000000000000;
        v32 = 1936876912;
        goto LABEL_26;
      case 2:
        v31 = 0x67416E6F73726570;
        v35 = 0x6570795465;
        goto LABEL_17;
      case 3:
        v31 = 1702125924;
        break;
      case 4:
        OUTLINED_FUNCTION_188();
        v30 = v36 + 20;
        v31 = 0x6144664F74726170;
        break;
      case 5:
        OUTLINED_FUNCTION_437();
        v30 = v37 + 1529;
        v31 = 0x6557664F74726170;
        break;
      case 6:
        v30 = 0xE600000000000000;
        v32 = 1935762803;
LABEL_26:
        v31 = v32 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
        break;
      case 7:
        v30 = 0xE800000000000000;
        v33 = 1633906540;
        goto LABEL_21;
      case 8:
        v31 = 0x4C636972656E6567;
        v30 = 0xEF6E6F697461636FLL;
        break;
      case 9:
        v31 = 1952540791;
        break;
      case 0xA:
        v31 = 0x764563696C627570;
        v30 = 0xEB00000000746E65;
        break;
      case 0xB:
        v31 = 0x6C616E6F73726570;
        v35 = 0x746E657645;
LABEL_17:
        v30 = v35 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 0xC:
        v31 = 0x746954636973756DLL;
        v30 = 0xEA0000000000656CLL;
        break;
      case 0xD:
        OUTLINED_FUNCTION_207();
        v30 = v38 + 1284;
        v31 = 0x747241636973756DLL;
        break;
      case 0xE:
        OUTLINED_FUNCTION_437();
        v30 = v34 + 6;
        v31 = 0x6E6547636973756DLL;
        break;
      case 0xF:
        v31 = 1685024621;
        break;
      case 0x10:
        v30 = 0xE800000000000000;
        v33 = 1634891108;
LABEL_21:
        v31 = v33 | 0x6E6F697400000000;
        break;
      case 0x11:
        v30 = 0xE600000000000000;
        v31 = 0x706972547369;
        break;
      case 0x12:
        v31 = 0x6D69546C6C417369;
        v30 = 0xE900000000000065;
        break;
      case 0x13:
        OUTLINED_FUNCTION_188();
        v30 = v39 + 13;
        v31 = 0x6564724F74726F73;
        break;
      default:
        break;
    }

    sub_1C71AC0CC(v27, v89, type metadata accessor for QueryTokenSuggestion);
    swift_isUniquelyReferenced_nonNull_native();
    v92[0] = v26;
    sub_1C6F78124(v31, v30);
    OUTLINED_FUNCTION_13_2();
    if (__OFADD__(v42, v43))
    {
      goto LABEL_80;
    }

    v44 = v40;
    v45 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE80);
    if (sub_1C7551A2C())
    {
      v46 = sub_1C6F78124(v31, v30);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_82;
      }

      v44 = v46;
    }

    if (v45)
    {

      v26 = v92[0];
      v48 = OUTLINED_FUNCTION_128_7();
      sub_1C736F638(v48, v49);
      OUTLINED_FUNCTION_1_113();
      v27 = v87;
      sub_1C736F5E4(v87, v50);
    }

    else
    {
      v26 = v92[0];
      OUTLINED_FUNCTION_1_3(v92[0] + 8 * (v44 >> 6));
      v51 = (*(v26 + 48) + 16 * v44);
      *v51 = v31;
      v51[1] = v30;
      v52 = OUTLINED_FUNCTION_128_7();
      sub_1C736F53C(v52, v53);
      OUTLINED_FUNCTION_1_113();
      v27 = v87;
      sub_1C736F5E4(v87, v54);
      v55 = *(v26 + 16);
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_81;
      }

      *(v26 + 16) = v57;
    }

    v25 = v85;
    if (v86 == v24)
    {

      v23 = MEMORY[0x1E69E7CC0];
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7364A20(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!*(a2 + 16))
  {
    sub_1C75504FC();
    return v2;
  }

  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v28 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_106_3();
  sub_1C716D7D8();
  v6 = 0;
  v24 = v3;
  v25 = v2 + 32;
  v2 = v28;
  while (1)
  {
    memcpy(__dst, (v25 + 120 * v6), sizeof(__dst));
    if (*(a2 + 16))
    {
      break;
    }

    sub_1C6FCA6E4(__dst, v26);
LABEL_18:
    memcpy(__src, __dst, sizeof(__src));
    v9 = __dst[12];
    v19 = __dst[13];
    v10 = __dst[14];
LABEL_20:
    memcpy(v26, __src, 0x60uLL);
    v28 = v2;
    v22 = *(v2 + 16);
    v21 = *(v2 + 24);
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_15(v21);
      sub_1C716D7D8();
      v2 = v28;
    }

    ++v6;
    *(v2 + 16) = v22 + 1;
    v23 = (v2 + 120 * v22);
    memcpy(v23 + 4, v26, 0x60uLL);
    v23[16] = v9;
    v23[17] = v19;
    v23[18] = v10;
    if (v6 == v24)
    {
      return v2;
    }
  }

  sub_1C6FCA6E4(__dst, v26);
  v7 = sub_1C6FC2A70();
  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(*(a2 + 56) + 8 * v7);
  v31 = __dst[12];
  memcpy(__src, __dst, sizeof(__src));
  v10 = __dst[14];
  sub_1C75504FC();
  sub_1C6FCA6E4(__dst, v26);
  sub_1C75504FC();
  sub_1C6FB5FC8(&v31, &qword_1EC216EC0);
  v26[0] = v4;
  v11 = 1 << *(v9 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  result = sub_1C75504FC();
  v16 = 0;
  if (v13)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      v30 = __dst[13];
      sub_1C706D154(v26[0]);
      sub_1C703FD7C();
      v19 = v20;

      sub_1C6FDD548(__dst);

      sub_1C6FB5FC8(&v30, &qword_1EC217538);
      v4 = MEMORY[0x1E69E7CC0];
      goto LABEL_20;
    }

    v13 = *(v9 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      do
      {
LABEL_15:
        v13 &= v13 - 1;
        v18 = sub_1C75504FC();
        result = sub_1C6FD25FC(v18);
      }

      while (v13);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7364CEC()
{
  OUTLINED_FUNCTION_42();
  v0[80] = v1;
  v0[79] = v2;
  v0[78] = v3;
  v0[81] = type metadata accessor for QueryTokenCategoryType(0);
  v0[82] = OUTLINED_FUNCTION_77();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  OUTLINED_FUNCTION_18(TokenSuggestion);
  v0[83] = v5;
  v0[84] = swift_task_alloc();
  v0[85] = swift_task_alloc();
  v6 = sub_1C754F38C();
  v0[86] = v6;
  OUTLINED_FUNCTION_18(v6);
  v0[87] = v7;
  v0[88] = OUTLINED_FUNCTION_77();
  v8 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C7364E1C()
{
  v102 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  OUTLINED_FUNCTION_141_1(v1, v1[3]);
  sub_1C754F1CC();
  v80 = v2;
  if (!*(v2 + 16))
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 640), v1[3]);
    sub_1C75504FC();
    OUTLINED_FUNCTION_75();
    sub_1C754F1AC();
    v4 = *(v0 + 624);
    goto LABEL_46;
  }

  v3 = *(v0 + 624);
  v4 = MEMORY[0x1E69E7CC0];
  if (!*(v3 + 16))
  {
    goto LABEL_45;
  }

  v5 = *(v0 + 664);
  v89 = *(v0 + 680);
  v76 = *(v0 + 632);
  v97 = MEMORY[0x1E69E7CC0];
  v78 = *(v3 + 16);
  sub_1C716D7D8();
  v6 = 0;
  v7 = v97;
  v79 = v3 + 32;
  v75 = v1;
  v88 = v5;
  while (1)
  {
    v85 = v6;
    memcpy((v0 + 16), (v79 + 120 * v6), 0x78uLL);
    v8 = *(v0 + 128);
    v82 = *(v0 + 112);
    v83 = *(v0 + 120);
    v9 = *(v0 + 96);
    v86 = *(v0 + 48);
    v87 = *(v0 + 104);
    if (*(v80 + 16))
    {
      break;
    }

    v84 = *(v0 + 128);
    sub_1C6FCA6E4(v0 + 16, v0 + 376);
LABEL_35:
    v61 = v82;
    v60 = v83;
LABEL_38:
    v63 = *(v7 + 16);
    v64 = v85;
    if (v63 >= *(v7 + 24) >> 1)
    {
      v71 = v60;
      v72 = v9;
      v73 = v61;
      sub_1C716D7D8();
      v61 = v73;
      v9 = v72;
      v60 = v71;
      v64 = v85;
    }

    v6 = v64 + 1;
    v65 = *(v0 + 32);
    v66 = *(v0 + 40);
    v67 = *(v0 + 16);
    v98 = *(v0 + 72);
    v68 = v7 + 120 * v63;
    v69 = *(v0 + 80);
    v70 = *(v0 + 56);
    *(v7 + 16) = v63 + 1;
    *(v68 + 32) = v67;
    *(v68 + 48) = v65;
    *(v68 + 56) = v66;
    *(v68 + 64) = v86;
    *(v68 + 68) = *(&v99 + 3);
    *(v68 + 65) = v99;
    *(v68 + 72) = v70;
    *(v68 + 88) = v98;
    LODWORD(v65) = v100;
    *(v68 + 92) = *(&v100 + 3);
    *(v68 + 89) = v65;
    *(v68 + 96) = v69;
    *(v68 + 112) = v9;
    *(v68 + 120) = v87;
    LODWORD(v65) = v101[0];
    *(v68 + 124) = *(v101 + 3);
    *(v68 + 121) = v65;
    *(v68 + 128) = v61;
    *(v68 + 136) = v60;
    *(v68 + 144) = v84;
    if (v6 == v78)
    {
      goto LABEL_44;
    }
  }

  v81 = v7;
  OUTLINED_FUNCTION_142_3();
  v10 = sub_1C6FC2A70();
  if ((v11 & 1) == 0)
  {
    v84 = v8;
    goto LABEL_35;
  }

  v12 = *(*(v76 + 56) + 8 * v10);
  v86 = *(v0 + 48);
  v87 = *(v0 + 104);
  v84 = *(v0 + 128);
  sub_1C75504FC();
  sub_1C6FCA6E4(v0 + 16, v0 + 256);
  sub_1C75504FC();
  sub_1C75504FC();
  v77 = v12;
  v13 = sub_1C7080ED4(v12);
  v14 = *(v9 + 16);
  if (!v14)
  {

    swift_bridgeObjectRelease_n();
    v9 = v4;
LABEL_37:
    sub_1C75504FC();

    v100 = v77;
    sub_1C75504FC();
    sub_1C72D50CC(&v100, v101);
    sub_1C6FDD548(v0 + 16);
    swift_bridgeObjectRelease_n();
    v62 = v101[0];

    v61 = v77;
    v60 = v62;
    v7 = v81;
    goto LABEL_38;
  }

  v15 = OUTLINED_FUNCTION_106_3();
  sub_1C716E8D0(v15, v16, v17);
  v18 = 0;
  v19 = v4;
  v90 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v91 = v14;
  v92 = v9;
  v1 = (v13 + 56);
  while (1)
  {
    if (v18 >= *(v9 + 16))
    {
      __break(1u);
      return;
    }

    v94 = v19;
    v95 = v18;
    v7 = *(v0 + 672);
    v93 = *(v5 + 72);
    OUTLINED_FUNCTION_4_86();
    sub_1C71AC0CC(v20, v7, v21);
    OUTLINED_FUNCTION_2_102();
    v22 = OUTLINED_FUNCTION_43_2();
    sub_1C71AC0CC(v22, v23, v24);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      break;
    }

    v45 = *(v0 + 680);
    v46 = *(v0 + 672);
    OUTLINED_FUNCTION_0_151();
    sub_1C736F5E4(v47, v48);
    sub_1C736F53C(v46, v45);
LABEL_29:
    v19 = v94;
    v52 = v95;
    v99 = v94;
    v54 = *(v94 + 16);
    v53 = *(v94 + 24);
    v9 = v92;
    if (v54 >= v53 >> 1)
    {
      OUTLINED_FUNCTION_15(v53);
      OUTLINED_FUNCTION_177();
      sub_1C716E8D0(v57, v58, v59);
      v52 = v95;
      v19 = v94;
    }

    v55 = *(v0 + 680);
    *(v19 + 16) = v54 + 1;
    v56 = v52 + 1;
    sub_1C736F53C(v55, v19 + v90 + v54 * v93);
    v18 = v56;
    if (v56 == v91)
    {

      swift_bridgeObjectRelease_n();
      v1 = v75;
      v9 = v19;
      goto LABEL_37;
    }
  }

  v25 = **(v0 + 656);

  v26 = 0;
  v96 = *(v25 + 16);
  while (1)
  {
LABEL_11:
    if (v26 == v96)
    {
      v49 = *(v0 + 680);
      v50 = *(v0 + 672);

      OUTLINED_FUNCTION_1_113();
      sub_1C736F5E4(v50, v51);
      *v49 = v4;
      *(v89 + 8) = MEMORY[0x1E69E7CD0];
      swift_storeEnumTagMultiPayload();
      v4 = MEMORY[0x1E69E7CC0];
      v5 = v88;
      goto LABEL_29;
    }

    if (v26 >= *(v25 + 16))
    {
      break;
    }

    v27 = (v25 + 32 + (v26 << 6));
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[3];
    *(v0 + 528) = v27[2];
    *(v0 + 544) = v30;
    *(v0 + 496) = v28;
    *(v0 + 512) = v29;
    ++v26;
    if (*(v13 + 16))
    {
      v32 = *(v0 + 496);
      v31 = *(v0 + 504);
      sub_1C7551F3C();
      sub_1C70802EC(v0 + 496, v0 + 560);
      sub_1C75504FC();
      sub_1C75505AC();
      v33 = sub_1C7551FAC();
      v7 = ~(-1 << *(v13 + 32));
      do
      {
        v34 = v33 & v7;
        if (((*(v1 + (((v33 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v7)) & 1) == 0)
        {
          sub_1C7080348(v0 + 496);

          goto LABEL_11;
        }

        v35 = (*(v13 + 48) + 16 * v34);
        if (*v35 == v32 && v35[1] == v31)
        {
          break;
        }

        v37 = sub_1C7551DBC();
        v33 = v34 + 1;
      }

      while ((v37 & 1) == 0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = &v100;
        sub_1C716E7F8();
        v4 = v100;
      }

      v40 = *(v4 + 16);
      v39 = *(v4 + 24);
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_15(v39);
        v7 = &v100;
        OUTLINED_FUNCTION_177();
        sub_1C716E7F8();
        v4 = v100;
      }

      *(v4 + 16) = v40 + 1;
      v41 = (v4 + (v40 << 6));
      v42 = *(v0 + 496);
      v43 = *(v0 + 512);
      v44 = *(v0 + 544);
      v41[4] = *(v0 + 528);
      v41[5] = v44;
      v41[2] = v42;
      v41[3] = v43;
    }
  }

  __break(1u);
LABEL_44:
  v4 = v7;
LABEL_45:
  __swift_project_boxed_opaque_existential_1(*(v0 + 640), v1[3]);
  OUTLINED_FUNCTION_63();
  sub_1C754F1AC();
LABEL_46:
  (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));

  v74 = *(v0 + 8);

  v74(v4);
}

void sub_1C7365564()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v162 = v5;
  v163 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = v1[4];
  v161 = v1;
  v10 = OUTLINED_FUNCTION_294();
  OUTLINED_FUNCTION_141_1(v10, v11);
  v164 = v8;
  OUTLINED_FUNCTION_119_12();
  sub_1C754F1CC();
  v12 = 0;
  v13 = *(v3 + 16);
  v14 = v3 + 136;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v16 = (v14 + 120 * v12);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_91;
    }

    v19 = *v16;
    v16 += 15;
    v18 = v19;
    ++v12;
    if (v19)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        v15 = v22;
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      v9 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_15(v20);
        OUTLINED_FUNCTION_177();
        sub_1C6FB226C();
        v15 = v23;
      }

      *(v15 + 16) = v9;
      *(v15 + 8 * v21 + 32) = v18;
      v12 = v17;
      goto LABEL_2;
    }
  }

  v24 = 0;
  v25 = *(v15 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E6158];
  while (v25 != v24)
  {
    if (v24 >= *(v15 + 16))
    {
      goto LABEL_92;
    }

    v27 = *(v15 + 8 * v24 + 32);
    v28 = *(v27 + 16);
    v29 = *(v26 + 16);
    if (__OFADD__(v29, v28))
    {
      goto LABEL_93;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v29 + v28 > *(v26 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90_9();
      sub_1C6FB1814();
      v26 = v30;
    }

    if (*(v27 + 16))
    {
      OUTLINED_FUNCTION_22_57();
      if (v31 != v32)
      {
        goto LABEL_96;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        OUTLINED_FUNCTION_111_11();
        if (v32)
        {
          goto LABEL_100;
        }

        *(v26 + 16) = v33;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_94;
      }
    }

    ++v24;
  }

  v34 = sub_1C706D154(v26);
  if (!*(v34 + 16))
  {

    if (v13)
    {
LABEL_82:
      v136 = v162;
      v135 = v163;
      v137 = v161;
    }

    else
    {
      type metadata accessor for QueryGenerator();
      OUTLINED_FUNCTION_118_9();
      v139 = *(v138 + 8);
      v141 = v140;

      v142 = [v141 librarySpecificFetchOptions];
      [v142 setSharingFilter_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v143 = swift_allocObject();
      *(v143 + 16) = xmmword_1C7564A90;
      v144 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      *(v143 + 32) = sub_1C6F6AF98(0x7461447472617473, 0xE900000000000065, 0);
      v145 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      *(v143 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
      v146 = OUTLINED_FUNCTION_457();
      sub_1C71F8834(v146, v147);
      LOBYTE(v171[0]) = 0;
      type metadata accessor for CollectionFetcherOptions();
      swift_initStackObject();
      v148 = v142;
      v149 = CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(v141, v142, v171, 0);
      sub_1C7066580(v149);
      v150 = [objc_opt_self() fetchHighlightsWithOptions_];
      v151 = [v150 0x1FB1F59A9];

      if (v151)
      {
        sub_1C6F65BE8(0, &qword_1EC2155D8);
        OUTLINED_FUNCTION_63();
        sub_1C7550B5C();
      }

      sub_1C75504FC();
      v152 = sub_1C754FEEC();
      v153 = sub_1C75511BC();
      v137 = v161;
      if (OUTLINED_FUNCTION_23_0(v153))
      {
        v154 = OUTLINED_FUNCTION_41_0();
        *v154 = 134217984;
        *(v154 + 4) = sub_1C6FB6304();

        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v155, v156, v157, v158, v154, 0xCu);
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v136 = v162;
      v135 = v163;
    }

    OUTLINED_FUNCTION_70(v137, v137[3]);
    sub_1C754F1AC();
    (*(v136 + 8))(v164, v135);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  type metadata accessor for QueryGenerator();
  OUTLINED_FUNCTION_118_9();
  v36 = *(v35 + 8);
  v38 = v37;

  v39 = [v38 librarySpecificFetchOptions];
  [v39 setSharingFilter_];

  v40 = objc_opt_self();
  sub_1C71CD85C(v34);
  sub_1C7550B3C();
  OUTLINED_FUNCTION_24_2();

  v159 = v40;
  v160 = v39;
  v41 = [v40 fetchTripHighlightUUIDByAssetUUIDForAssetUUIDs:v36 options:v39];

  v42 = sub_1C75504AC();
  v43 = v42 + 64;
  OUTLINED_FUNCTION_11();
  v46 = v45 & v44;
  v9 = ((v47 + 63) >> 6);
  v168 = v42;
  sub_1C75504FC();
  v48 = 0;
  v49 = MEMORY[0x1E69E7CC8];
  v165 = v9;
  v166 = v43;
  if (v46)
  {
    goto LABEL_32;
  }

  do
  {
LABEL_28:
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_95;
    }

    if (v50 >= v9)
    {

      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1C75604F0;
      *(v76 + 56) = MEMORY[0x1E69E6158];
      *(v76 + 64) = sub_1C6F6D524();
      *(v76 + 32) = 1684632949;
      *(v76 + 40) = 0xE400000000000000;
      v77 = sub_1C75504FC();
      v9 = sub_1C71CD90C(v77);
      *(v76 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      OUTLINED_FUNCTION_6_88();
      *(v76 + 104) = sub_1C705575C(v78, &unk_1EC217A00);
      *(v76 + 72) = v9;
      OUTLINED_FUNCTION_13_67();
      v79 = sub_1C755112C();
      v80 = OUTLINED_FUNCTION_117_8();
      [v80 v81];

      v82 = [v159 fetchHighlightsWithOptions_];
      v83 = [v82 fetchedObjects];

      v84 = MEMORY[0x1E69E7CC0];
      if (v83)
      {
        sub_1C6F65BE8(0, &qword_1EC2155D8);
        OUTLINED_FUNCTION_63();
        v84 = sub_1C7550B5C();
      }

      v85 = sub_1C6FB6304();
      v86 = 0;
      v87 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        while (1)
        {
          if (v85 == v86)
          {

            sub_1C75504FC();
            v112 = sub_1C754FEEC();
            v113 = sub_1C75511BC();
            if (OUTLINED_FUNCTION_7_0(v113))
            {
              v9 = OUTLINED_FUNCTION_41_0();
              *v9 = 134217984;
              *(v9 + 4) = v49[2];

              OUTLINED_FUNCTION_17();
              _os_log_impl(v114, v115, v116, v117, v118, 0xCu);
              OUTLINED_FUNCTION_23_3();
            }

            else
            {
            }

            v171[0] = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_11();
            v121 = v120 & v119;
            v123 = (v122 + 63) >> 6;
            sub_1C75504FC();
            v124 = 0;
            while (v121)
            {
LABEL_77:
              v126 = __clz(__rbit64(v121));
              v121 &= v121 - 1;
              v127 = v126 | (v124 << 6);
              v128 = *(v49[6] + 16 * v127);
              v9 = *(v49[7] + 8 * v127);
              sub_1C75504FC();
              sub_1C75504FC();
              OUTLINED_FUNCTION_99_3();
              sub_1C7366290(v129, v130, v131, v87);
              OUTLINED_FUNCTION_103_0();

              if (v128)
              {
                MEMORY[0x1CCA5D040](v132);
                v9 = *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                v133 = *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
                if (v9 >= v133 >> 1)
                {
                  OUTLINED_FUNCTION_15(v133);
                  sub_1C7550B9C();
                }

                sub_1C7550BEC();
              }
            }

            while (1)
            {
              v125 = v124 + 1;
              if (__OFADD__(v124, 1))
              {
                goto LABEL_97;
              }

              if (v125 >= v123)
              {

                v134 = sub_1C75504FC();
                v171[0] = sub_1C71CC944(v134);
                sub_1C7360780(v171);

                goto LABEL_82;
              }

              v121 = v49[v125 + 8];
              ++v124;
              if (v121)
              {
                v124 = v125;
                goto LABEL_77;
              }
            }
          }

          if ((v84 & 0xC000000000000001) != 0)
          {
            v88 = MEMORY[0x1CCA5DDD0](v86, v84);
          }

          else
          {
            if (v86 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v88 = *(v84 + 8 * v86 + 32);
          }

          v9 = v88;
          v89 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_98;
          }

          v90 = sub_1C70CAC04(v88);
          if (v91)
          {
            break;
          }

          ++v86;
        }

        v92 = v90;
        v93 = v91;
        v170 = v9;
        swift_isUniquelyReferenced_nonNull_native();
        v171[0] = v87;
        v94 = OUTLINED_FUNCTION_55();
        sub_1C6F78124(v94, v95);
        OUTLINED_FUNCTION_13_2();
        v9 = (v98 + v99);
        if (__OFADD__(v98, v99))
        {
          goto LABEL_103;
        }

        v100 = v96;
        v167 = v97;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE70);
        if (sub_1C7551A2C())
        {
          v101 = OUTLINED_FUNCTION_55();
          v103 = sub_1C6F78124(v101, v102);
          if ((v167 & 1) != (v104 & 1))
          {
            goto LABEL_105;
          }

          v100 = v103;
          if (v167)
          {
LABEL_63:

            v109 = v171[0];
            v110 = *(v171[0] + 56);
            v111 = *(v110 + 8 * v100);
            *(v110 + 8 * v100) = v170;
            v87 = v109;

            goto LABEL_64;
          }
        }

        else if (v167)
        {
          goto LABEL_63;
        }

        OUTLINED_FUNCTION_1_3(v171[0] + 8 * (v100 >> 6));
        v106 = (*(v105 + 48) + 16 * v100);
        *v106 = v92;
        v106[1] = v93;
        *(*(v105 + 56) + 8 * v100) = v170;
        v87 = v105;

        v107 = *(v87 + 16);
        v32 = __OFADD__(v107, 1);
        v108 = v107 + 1;
        if (v32)
        {
          goto LABEL_104;
        }

        *(v87 + 16) = v108;
LABEL_64:
        v86 = v89;
      }
    }

    v46 = *(v43 + 8 * v50);
    ++v48;
  }

  while (!v46);
  v48 = v50;
LABEL_32:
  while (1)
  {
    v51 = (v48 << 10) | (16 * __clz(__rbit64(v46)));
    v52 = (*(v168 + 48) + v51);
    v9 = v52[1];
    v169 = *v52;
    v53 = (*(v168 + 56) + v51);
    v55 = *v53;
    v54 = v53[1];
    OUTLINED_FUNCTION_129_0();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v171[0] = v49;
    sub_1C6F78124(v55, v54);
    OUTLINED_FUNCTION_13_2();
    if (__OFADD__(v58, v59))
    {
      break;
    }

    v60 = v56;
    v61 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
    v62 = v171[0];
    if (sub_1C7551A2C())
    {
      v63 = sub_1C6F78124(v55, v54);
      if ((v61 & 1) != (v64 & 1))
      {
        goto LABEL_105;
      }

      v60 = v63;
    }

    if (v61)
    {
    }

    else
    {
      OUTLINED_FUNCTION_1_3(v171[0] + 8 * (v60 >> 6));
      v65 = (*(v171[0] + 48) + 16 * v60);
      *v65 = v55;
      v65[1] = v54;
      *(*(v62 + 56) + 8 * v60) = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_43_1();
      if (v32)
      {
        goto LABEL_102;
      }

      *(v62 + 16) = v66;
    }

    v67 = *(v62 + 56);
    v68 = *(v67 + 8 * v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v67 + 8 * v60) = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1814();
      v68 = v74;
      *(v67 + 8 * v60) = v74;
    }

    v71 = *(v68 + 16);
    v70 = *(v68 + 24);
    if (v71 >= v70 >> 1)
    {
      OUTLINED_FUNCTION_15(v70);
      sub_1C6FB1814();
      *(v67 + 8 * v60) = v75;
    }

    v46 &= v46 - 1;

    v72 = *(v67 + 8 * v60);
    *(v72 + 16) = v71 + 1;
    v73 = v72 + 16 * v71;
    *(v73 + 32) = v169;
    *(v73 + 40) = v9;
    v49 = v62;
    v9 = v165;
    v43 = v166;
    if (!v46)
    {
      goto LABEL_28;
    }
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  sub_1C7551E4C();
  __break(1u);

  __break(1u);
}

id sub_1C7366290(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v7 = sub_1C6F78124(a1, a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(a4 + 56) + 8 * v7);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 tripHighlightRepresentativeAssetsMinimumThreshold];
  v13 = [v11 dayGroupAssetsCountMixed];
  if (v13 < v12)
  {
    v14 = v13;
    v15 = v11;
    sub_1C75504FC();
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136316163;
      *(v18 + 4) = sub_1C6F765A4(a1, a2, &v30);
      *(v18 + 12) = 2085;
      v20 = [v15 title];
      v21 = sub_1C755068C();
      v23 = v22;

      v24 = sub_1C6F765A4(v21, v23, &v30);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2085;
      v25 = sub_1C736F444(v15);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0xE000000000000000;
      }

      v28 = sub_1C6F765A4(v25, v27, &v30);

      *(v18 + 24) = v28;
      *(v18 + 32) = 2048;
      *(v18 + 34) = v14;
      *(v18 + 42) = 2048;
      *(v18 + 44) = v12;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Trip %s: %{sensitive}s %{sensitive}s excluded.\nOnly %ld representative assets (minimum required: %ld).", v18, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v19, -1, -1);
      MEMORY[0x1CCA5F8E0](v18, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v11;
}

uint64_t sub_1C73664E4(void **a1, void **a2)
{
  v4 = sub_1C754DF6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v35 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = [v18 startDate];
  if (v20)
  {
    v21 = v20;
    v36 = v7;
    sub_1C754DF2C();

    v22 = *(v5 + 32);
    v22(v17, v13, v4);
    v23 = [v19 startDate];
    if (v23)
    {
      v24 = v23;
      v25 = v36;
      sub_1C754DF2C();

      v22(v10, v25, v4);
      v26 = sub_1C754DF4C();
      v27 = *(v5 + 8);
      v27(v10, v4);
      v27(v17, v4);
      v28 = v26 == 1;
      return v28 & 1;
    }

    (*(v5 + 8))(v17, v4);
  }

  result = sub_1C70CAC04(v18);
  if (v30)
  {
    v31 = result;
    v32 = v30;
    result = sub_1C70CAC04(v19);
    if (v33)
    {
      if (result == v31 && v33 == v32)
      {

        v28 = 0;
      }

      else
      {
        v28 = sub_1C7551DBC();
      }

      return v28 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C7366788(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_38:
    v3 = sub_1C75516BC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    return 0;
  }

  v41 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v5 = sub_1C6FB6304();
  v1 = 0;
  while (v5 != v1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = OUTLINED_FUNCTION_43_2();
      v6 = MEMORY[0x1CCA5DDD0](v11);
    }

    else
    {
      if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v6 = *(v2 + 8 * v1 + 32);
    }

    v7 = v6;
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v9 = [v6 objectID];

    ++v1;
    if (v9)
    {
      MEMORY[0x1CCA5D040]();
      v10 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
      {
        OUTLINED_FUNCTION_15(v10);
        sub_1C7550B9C();
      }

      OUTLINED_FUNCTION_15_1();
      sub_1C7550BEC();
      v4 = v42;
      v1 = v8;
    }
  }

  v12 = sub_1C706EE98(v4);
  v13 = v41 + *(type metadata accessor for QueryGenerator() + 24);
  v14 = *(v13 + 8);
  v15 = *v13;

  v16 = [v15 librarySpecificFetchOptions];
  [v16 setSharingFilter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C755BAB0;
  *(v17 + 32) = sub_1C755068C();
  *(v17 + 40) = v18;
  sub_1C6FCA0EC(v17, v16);
  [v16 setIncludeAssetSourceTypes_];
  [v16 setIncludeHiddenAssets_];
  [v16 setIncludeGuestAssets_];
  v43 = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1C755192C();
  OUTLINED_FUNCTION_2_68();
  sub_1C755196C();
  OUTLINED_FUNCTION_2_68();
  sub_1C755197C();
  sub_1C755193C();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1C755192C();
  OUTLINED_FUNCTION_2_68();
  sub_1C755196C();
  OUTLINED_FUNCTION_2_68();
  sub_1C755197C();
  sub_1C755193C();
  sub_1C7082AAC(v43, v16);
  [v16 setWantsIncrementalChangeDetails_];

  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C75604F0;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1C6F6D524();
  *(v19 + 32) = 0xD00000000000001CLL;
  *(v19 + 40) = 0x80000001C75AC170;
  v20 = OUTLINED_FUNCTION_15_1();
  *(v19 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(v20);
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_95_1();
  *(v19 + 104) = sub_1C705575C(v21, v22);
  *(v19 + 72) = v12;
  OUTLINED_FUNCTION_13_67();
  v23 = sub_1C755112C();
  [v16 setInternalPredicate_];

  v24 = [objc_opt_self() fetchAssetsWithOptions_];
  v2 = [v24 fetchedObjects];

  if (v2)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v1 = sub_1C7550B5C();

    v25 = sub_1C6FB6304();
    v26 = 0;
    v2 = MEMORY[0x1E69E7CC0];
    while (v25 != v26)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1CCA5DDD0](v26, v1);
      }

      else
      {
        if (v26 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v27 = *(v1 + 8 * v26 + 32);
      }

      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_36;
      }

      v29 = v27;
      v30 = [v29 uuid];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1C755068C();
        v40 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v2 = v37;
        }

        v35 = *(v2 + 16);
        v34 = *(v2 + 24);
        if (v35 >= v34 >> 1)
        {
          OUTLINED_FUNCTION_15(v34);
          sub_1C6FB1814();
          v2 = v38;
        }

        *(v2 + 16) = v35 + 1;
        v36 = (v2 + 16 * v35);
        v36[4] = v32;
        v36[5] = v40;
        v26 = v28;
      }

      else
      {

        ++v26;
      }
    }
  }

  else
  {
  }

  return v2;
}

uint64_t sub_1C7366D34(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  sub_1C75504FC();
  v7 = sub_1C6FE3768(v6, v5, a3);
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *a2;
  v17 = *a2;
  *a2 = 0x8000000000000000;
  v9 = sub_1C6F78124(v6, v5);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
  if (sub_1C7551A2C())
  {
    v13 = sub_1C6F78124(v6, v5);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

LABEL_5:
  *a2 = v17;

  if (v12)
  {
  }

  else
  {
    sub_1C6FCABE4(v11);
  }

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  return sub_1C6FD25FC(v15);
}

uint64_t sub_1C7366EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  sub_1C75504FC();
  sub_1C75504FC();
  v143 = v5;
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v153 = v12;
    *v11 = 136315138;
    sub_1C75504FC();
    sub_1C7360418(a3, a1);
    v13 = a3;
    v14 = a1;
    v15 = MEMORY[0x1CCA5D090]();
    v17 = v16;

    v18 = v15;
    a1 = v14;
    v19 = sub_1C6F765A4(v18, v17, &v153);

    *(v11 + 4) = v19;
    a3 = v13;
    _os_log_impl(&dword_1C6F5C000, v9, v10, "Allowed list of metadata query token types {%s}", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }

  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v151 = (v21 + 63) >> 6;
  sub_1C75504FC();
  v149 = 0;
  v150 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v145 = 0;
  v24 = 0;
  v152 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    if (v23)
    {
      goto LABEL_11;
    }

    do
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_107;
      }

      if (v25 >= v151)
      {

        sub_1C6F6E5B4(v150);
        sub_1C6F6E5B4(v149);
        sub_1C6F6E5B4(v146);
        sub_1C6F6E5B4(v147);
        sub_1C6F6E5B4(v148);
        sub_1C6F6E5B4(v145);
        return v152;
      }

      v23 = *(v20 + 8 * v25);
      ++v24;
    }

    while (!v23);
    v24 = v25;
LABEL_11:
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    switch(*(*(a3 + 48) + (v26 | (v24 << 6))))
    {
      case 1:
        v27 = v143 + *(type metadata accessor for QueryGenerator() + 24);
        v28 = *(v27 + 8);
        v29 = *(v27 + 16);
        v153 = *v27;
        v154 = v28;
        v155 = v29;
        v30 = v153;

        static QueryGenerator.consolidatePersonAssetUUIDs(from:isTrip:storyPhotoLibraryContext:)();
        v32 = v31;

        if (!v32)
        {
          continue;
        }

        v131 = v32;
        v137 = a3;
        v33 = v8;
        v8 = a1;
        sub_1C6F6E5B4(v150);
        swift_isUniquelyReferenced_nonNull_native();
        v153 = v152;
        v34 = sub_1C6FC3264();
        if (__OFADD__(v152[2], (v35 & 1) == 0))
        {
          goto LABEL_111;
        }

        v36 = v34;
        v37 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88);
        v38 = sub_1C7551A2C();
        v39 = v153;
        v152 = v153;
        if ((v38 & 1) == 0)
        {
          v8 = v33;
LABEL_54:
          if ((v37 & 1) == 0)
          {
            sub_1C6FCABDC(v36, 1, MEMORY[0x1E69E7CD0], v39);
          }

          v79 = sub_1C75504FC();
          sub_1C739796C(v79);
          if (a5)
          {
            v153 = sub_1C71CD85C(v131);
            sub_1C75504FC();
            sub_1C70401E8();
            a3 = v137;

            v80 = sub_1C7164AD8(v153, 0x6F737265505B5551, 0xEA00000000005D6ELL, 0, 0);

            v150 = sub_1C719D928;
          }

          else
          {

            v150 = sub_1C719D928;
            a3 = v137;
          }

          continue;
        }

        v40 = sub_1C6FC3264();
        if ((v37 & 1) == (v41 & 1))
        {
          v36 = v40;
          v8 = v33;
          v39 = v152;
          goto LABEL_54;
        }

LABEL_117:
        sub_1C7551E4C();
        __break(1u);

        __break(1u);
        return result;
      case 3:
        if (!*(a1 + 16))
        {
          continue;
        }

        v63 = sub_1C6FC3264();
        if ((v64 & 1) == 0)
        {
          continue;
        }

        v132 = v8;
        v138 = a3;
        v65 = *(*(a1 + 56) + 8 * v63);
        type metadata accessor for QueryGenerator();
        v66 = *(v65 + 16);
        if (v66)
        {
          v153 = MEMORY[0x1E69E7CC0];
          sub_1C75504FC();
          sub_1C716E23C(0, v66, 0);
          v67 = v153;
          v68 = 32;
          do
          {
            v69 = sub_1C75504FC();
            v70 = sub_1C706D154(v69);
            v153 = v67;
            v8 = v67[2];
            v71 = v67[3];
            if (v8 >= v71 >> 1)
            {
              sub_1C716E23C((v71 > 1), v8 + 1, 1);
              v67 = v153;
            }

            v67[2] = v8 + 1;
            v67[v8 + 4] = v70;
            v68 += 8;
            --v66;
          }

          while (v66);
        }

        else
        {
          v67 = MEMORY[0x1E69E7CC0];
        }

        v117 = MomentGroundingProcessor.assetUUIDsBackedByOverlappingMoments(for:)(v67);

        sub_1C6F6E5B4(v149);
        swift_isUniquelyReferenced_nonNull_native();
        v153 = v152;
        v118 = sub_1C6FC3264();
        if (__OFADD__(v152[2], (v119 & 1) == 0))
        {
          goto LABEL_112;
        }

        v120 = v118;
        v121 = v119;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88);
        v122 = sub_1C7551A2C();
        v123 = v153;
        v8 = v132;
        v152 = v153;
        if (v122)
        {
          v124 = sub_1C6FC3264();
          a3 = v138;
          if ((v121 & 1) != (v125 & 1))
          {
            goto LABEL_117;
          }

          v120 = v124;
          v123 = v152;
        }

        else
        {
          a3 = v138;
        }

        if ((v121 & 1) == 0)
        {
          sub_1C6FCABDC(v120, 3, MEMORY[0x1E69E7CD0], v123);
        }

        v126 = sub_1C75504FC();
        sub_1C739796C(v126);
        if (a5)
        {
          v153 = sub_1C71CD85C(v117);
          sub_1C75504FC();
          sub_1C70401E8();

          v127 = sub_1C7164AD8(v153, 0x5D657461445B5551, 0xE800000000000000, 0, 0);
        }

        else
        {
        }

        v149 = sub_1C719D928;
        continue;
      case 4:
        if (!*(a1 + 16))
        {
          continue;
        }

        v49 = sub_1C6FC3264();
        if ((v50 & 1) == 0)
        {
          continue;
        }

        v51 = *(*(a1 + 56) + 8 * v49);
        v52 = *(v51 + 16);
        if (!v52)
        {
          continue;
        }

        v153 = MEMORY[0x1E69E7CD0];
        sub_1C75504FC();
        v53 = 0;
        while (2)
        {
          if (v52 != v53)
          {
            if (v53 < *(v51 + 16))
            {
              v54 = v53 + 1;
              v55 = sub_1C75504FC();
              sub_1C73978C4(v55);
              v53 = v54;
              continue;
            }

            goto LABEL_108;
          }

          break;
        }

        v90 = v8;
        v8 = a1;
        v140 = a3;

        v134 = v153;
        sub_1C6F6E5B4(v146);
        swift_isUniquelyReferenced_nonNull_native();
        v153 = v152;
        v91 = sub_1C6FC3264();
        if (__OFADD__(v152[2], (v92 & 1) == 0))
        {
          goto LABEL_116;
        }

        v93 = v91;
        v94 = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88);
        v95 = sub_1C7551A2C();
        v96 = v153;
        v152 = v153;
        if (v95)
        {
          v97 = sub_1C6FC3264();
          if ((v94 & 1) != (v98 & 1))
          {
            goto LABEL_117;
          }

          v93 = v97;
          v8 = v90;
          v96 = v152;
        }

        else
        {
          v8 = v90;
        }

        if ((v94 & 1) == 0)
        {
          sub_1C6FCABDC(v93, 4, MEMORY[0x1E69E7CD0], v96);
        }

        sub_1C739796C(v134);
        v146 = sub_1C719D928;
        a3 = v140;
        continue;
      case 5:
        if (!*(a1 + 16))
        {
          continue;
        }

        v56 = sub_1C6FC3264();
        if ((v57 & 1) == 0)
        {
          continue;
        }

        v58 = *(*(a1 + 56) + 8 * v56);
        v59 = *(v58 + 16);
        if (!v59)
        {
          continue;
        }

        v153 = MEMORY[0x1E69E7CD0];
        sub_1C75504FC();
        v60 = 0;
        while (2)
        {
          if (v59 != v60)
          {
            if (v60 < *(v58 + 16))
            {
              v61 = v60 + 1;
              v62 = sub_1C75504FC();
              sub_1C73978C4(v62);
              v60 = v61;
              continue;
            }

            goto LABEL_110;
          }

          break;
        }

        v99 = v8;
        v8 = a1;
        v141 = a3;

        v135 = v153;
        sub_1C6F6E5B4(v147);
        swift_isUniquelyReferenced_nonNull_native();
        v153 = v152;
        v100 = sub_1C6FC3264();
        if (__OFADD__(v152[2], (v101 & 1) == 0))
        {
          goto LABEL_115;
        }

        v102 = v100;
        v103 = v101;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88);
        v104 = sub_1C7551A2C();
        v105 = v153;
        v152 = v153;
        if (v104)
        {
          v106 = sub_1C6FC3264();
          if ((v103 & 1) != (v107 & 1))
          {
            goto LABEL_117;
          }

          v102 = v106;
          v8 = v99;
          v105 = v152;
        }

        else
        {
          v8 = v99;
        }

        if ((v103 & 1) == 0)
        {
          sub_1C6FCABDC(v102, 5, MEMORY[0x1E69E7CD0], v105);
        }

        sub_1C739796C(v135);
        v147 = sub_1C719D928;
        a3 = v141;
        continue;
      case 6:
        if (!*(a1 + 16))
        {
          continue;
        }

        v42 = sub_1C6FC3264();
        if ((v43 & 1) == 0)
        {
          continue;
        }

        v44 = *(*(a1 + 56) + 8 * v42);
        v45 = *(v44 + 16);
        if (!v45)
        {
          continue;
        }

        v153 = MEMORY[0x1E69E7CD0];
        sub_1C75504FC();
        v46 = 0;
        while (2)
        {
          if (v45 != v46)
          {
            if (v46 < *(v44 + 16))
            {
              v47 = v46 + 1;
              v48 = sub_1C75504FC();
              sub_1C73978C4(v48);
              v46 = v47;
              continue;
            }

            goto LABEL_109;
          }

          break;
        }

        v81 = v8;
        v8 = a1;
        v139 = a3;

        v133 = v153;
        sub_1C6F6E5B4(v148);
        swift_isUniquelyReferenced_nonNull_native();
        v153 = v152;
        v82 = sub_1C6FC3264();
        if (__OFADD__(v152[2], (v83 & 1) == 0))
        {
          goto LABEL_114;
        }

        v84 = v82;
        v85 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88);
        v86 = sub_1C7551A2C();
        v87 = v153;
        v152 = v153;
        if (v86)
        {
          v88 = sub_1C6FC3264();
          if ((v85 & 1) != (v89 & 1))
          {
            goto LABEL_117;
          }

          v84 = v88;
          v8 = v81;
          v87 = v152;
        }

        else
        {
          v8 = v81;
        }

        if ((v85 & 1) == 0)
        {
          sub_1C6FCABDC(v84, 6, MEMORY[0x1E69E7CD0], v87);
        }

        sub_1C739796C(v133);
        v148 = sub_1C719D928;
        a3 = v139;
        continue;
      case 7:
        if (!*(a1 + 16))
        {
          continue;
        }

        v72 = sub_1C6FC3264();
        if ((v73 & 1) == 0)
        {
          continue;
        }

        v74 = *(*(a1 + 56) + 8 * v72);
        v75 = *(v74 + 16);
        if (!v75)
        {
          continue;
        }

        v153 = MEMORY[0x1E69E7CD0];
        sub_1C75504FC();
        v76 = 0;
        while (2)
        {
          if (v75 != v76)
          {
            if (v76 < *(v74 + 16))
            {
              v77 = v76 + 1;
              v78 = sub_1C75504FC();
              sub_1C73978C4(v78);
              v76 = v77;
              continue;
            }

LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

          break;
        }

        v136 = v8;
        v142 = a3;
        v8 = a1;

        v108 = v153;
        sub_1C6F6E5B4(v145);
        swift_isUniquelyReferenced_nonNull_native();
        v153 = v152;
        v109 = sub_1C6FC3264();
        if (__OFADD__(v152[2], (v110 & 1) == 0))
        {
          goto LABEL_113;
        }

        v111 = v109;
        v112 = v110;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88);
        v113 = sub_1C7551A2C();
        v114 = v153;
        v152 = v153;
        if (v113)
        {
          v115 = sub_1C6FC3264();
          if ((v112 & 1) != (v116 & 1))
          {
            goto LABEL_117;
          }

          v111 = v115;
          v8 = v136;
          v114 = v152;
        }

        else
        {
          v8 = v136;
        }

        if ((v112 & 1) == 0)
        {
          sub_1C6FCABDC(v111, 7, MEMORY[0x1E69E7CD0], v114);
        }

        v128 = sub_1C75504FC();
        sub_1C739796C(v128);
        if (a5)
        {
          v153 = sub_1C71CD85C(v108);
          sub_1C75504FC();
          sub_1C70401E8();
          a3 = v142;

          v129 = sub_1C7164AD8(v153, 0x7461636F4C5B5551, 0xEC0000005D6E6F69, 0, 0);

          v145 = sub_1C719D928;
        }

        else
        {

          v145 = sub_1C719D928;
          a3 = v142;
        }

        continue;
      default:
        continue;
    }
  }
}

void sub_1C7367CE0()
{
  OUTLINED_FUNCTION_33();
  v179 = v0;
  v3 = v2;
  v174 = v4;
  v6 = v5;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v184 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  v181 = v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_140_1();
  v185 = v13;
  v14 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v14);
  v16 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v19 = v18 - v17;
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v171 = v21;
  v172 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_0();
  v24 = v23 - v22;
  v173 = v3;
  OUTLINED_FUNCTION_141_1(v3, v3[3]);
  v170 = v24;
  OUTLINED_FUNCTION_119_12();
  v26 = v25;
  sub_1C754F1CC();
  v176 = *(v6 + 16);
  v27 = 0;
  if (!v176)
  {
    v29 = MEMORY[0x1E69E7CC8];
LABEL_57:
    v183 = v27;
    if (sub_1C6FE3758(8, v29) || sub_1C6FE3758(11, v29) || sub_1C6FE3758(9, v29) || sub_1C6FE3758(10, v29))
    {

      v84 = sub_1C6FE3758(11, v29);
      if (v84)
      {
        v1 = v84;
        v85 = *(v84 + 16);
        v185 = v84;
        if (v85)
        {
          if (v174)
          {
            v86 = 0;
            v87 = v84 + 32;
            v88 = MEMORY[0x1E69E7CC0];
            while (v85 != v86)
            {
              if (v86 >= *(v1 + 2))
              {
                __break(1u);
LABEL_195:
                __break(1u);
LABEL_196:
                __break(1u);
LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
LABEL_200:
                __break(1u);
LABEL_201:
                __break(1u);
LABEL_202:
                __break(1u);
LABEL_203:
                __break(1u);
LABEL_204:
                __break(1u);
LABEL_205:
                __break(1u);
LABEL_206:
                __break(1u);
LABEL_207:
                __break(1u);
LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
                __break(1u);
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
                goto LABEL_214;
              }

              v89 = *(v87 + 8 * v86);
              v90 = *(v89 + 16);
              TokenCategoryType = *(v88 + 16);
              v26 = TokenCategoryType + v90;
              if (__OFADD__(TokenCategoryType, v90))
              {
                goto LABEL_195;
              }

              sub_1C75504FC();
              if (!swift_isUniquelyReferenced_nonNull_native() || v26 > *(v88 + 24) >> 1)
              {
                sub_1C6FB1814();
                v88 = v91;
              }

              if (*(v89 + 16))
              {
                if ((*(v88 + 24) >> 1) - *(v88 + 16) < v90)
                {
                  goto LABEL_206;
                }

                swift_arrayInitWithCopy();

                if (v90)
                {
                  v92 = *(v88 + 16);
                  v65 = __OFADD__(v92, v90);
                  v93 = v92 + v90;
                  if (v65)
                  {
                    goto LABEL_210;
                  }

                  *(v88 + 16) = v93;
                }
              }

              else
              {

                if (v90)
                {
                  goto LABEL_196;
                }
              }

              ++v86;
              v1 = v185;
            }

            OUTLINED_FUNCTION_75_14(v88, 0xD000000000000011, 0x80000001C75AC2E0);
            OUTLINED_FUNCTION_312_1();

            v85 = *(v1 + 2);
            if (!v85)
            {
              goto LABEL_90;
            }
          }

          v94 = MEMORY[0x1E69E7CC0];
          v95 = v1 + 8;
          v1 = &dword_1C6F5C000;
          do
          {
            v96 = sub_1C75504FC();
            v97 = sub_1C706D154(v96);
            sub_1C75504FC();
            v98 = sub_1C754FEEC();
            v99 = sub_1C755117C();
            if (OUTLINED_FUNCTION_128(v99))
            {
              TokenCategoryType = OUTLINED_FUNCTION_41_0();
              *TokenCategoryType = 134217984;
              *(TokenCategoryType + 4) = *(v97 + 16);

              OUTLINED_FUNCTION_139_4(&dword_1C6F5C000, v98, v99, "There are %ld personal event assets");
              OUTLINED_FUNCTION_109();
            }

            else
            {
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB20F8();
              v94 = v102;
            }

            OUTLINED_FUNCTION_51_22();
            if (v101)
            {
              OUTLINED_FUNCTION_15(v100);
              OUTLINED_FUNCTION_81_18();
              v94 = v103;
            }

            *(v94 + 16) = v98;
            *(v94 + 8 * v99 + 32) = v97;
            v95 += 2;
            --v85;
          }

          while (v85);
        }

        else
        {
LABEL_90:
          v94 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v94 = MEMORY[0x1E69E7CC0];
      }

      v104 = sub_1C6FE3758(10, v29);
      if (v104)
      {
        v105 = v104;
        v106 = *(v104 + 16);
        if (v106)
        {
          if (!v174)
          {
            goto LABEL_110;
          }

          OUTLINED_FUNCTION_86_12();
          v108 = MEMORY[0x1E69E7CC0];
          while (v106 != v107)
          {
            if (v107 >= *(v105 + 16))
            {
              goto LABEL_197;
            }

            OUTLINED_FUNCTION_11_63();
            if (v65)
            {
              goto LABEL_198;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_native() || (OUTLINED_FUNCTION_120_9(), !(v110 ^ v65 | v109)))
            {
              OUTLINED_FUNCTION_90_9();
              sub_1C6FB1814();
              v108 = v111;
            }

            OUTLINED_FUNCTION_87_18();
            if (v112)
            {
              OUTLINED_FUNCTION_22_57();
              if (v110 != v65)
              {
                goto LABEL_207;
              }

              OUTLINED_FUNCTION_28_33(v113);
              swift_arrayInitWithCopy();

              if (v1)
              {
                OUTLINED_FUNCTION_111_11();
                if (v65)
                {
                  goto LABEL_211;
                }

                v108[2] = v114;
              }
            }

            else
            {

              v106 = TokenCategoryType;
              if (v1)
              {
                goto LABEL_199;
              }
            }

            v107 = v185 + 1;
          }

          sub_1C703FCFC(v108);
          OUTLINED_FUNCTION_31_37();
          OUTLINED_FUNCTION_75_14(v106, 0x696C6275505B5551, 0xEF5D746E65764563);
          OUTLINED_FUNCTION_312_1();

          if (*(v105 + 16))
          {
LABEL_110:
            v1 = (v105 + 32);
            v185 = 134217984;
            do
            {
              v115 = sub_1C75504FC();
              sub_1C706D154(v115);
              sub_1C75504FC();
              v116 = sub_1C754FEEC();
              v117 = sub_1C755117C();
              if (OUTLINED_FUNCTION_128(v117))
              {
                v118 = OUTLINED_FUNCTION_41_0();
                OUTLINED_FUNCTION_33_35(v118);
                OUTLINED_FUNCTION_139_4(&dword_1C6F5C000, v116, v117, "There are %ld public event assets");
                OUTLINED_FUNCTION_109();
              }

              else
              {
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB20F8();
                v94 = v120;
              }

              OUTLINED_FUNCTION_51_22();
              if (v101)
              {
                OUTLINED_FUNCTION_15(v119);
                OUTLINED_FUNCTION_81_18();
                v94 = v121;
              }

              OUTLINED_FUNCTION_30_38();
            }

            while (!v109);
          }
        }
      }

      v122 = sub_1C6FE3758(8, v29);
      if (v122)
      {
        v123 = v122;
        v124 = *(v122 + 16);
        if (v124)
        {
          if (!v174)
          {
            goto LABEL_139;
          }

          OUTLINED_FUNCTION_86_12();
          v126 = MEMORY[0x1E69E7CC0];
          while (v124 != v125)
          {
            if (v125 >= *(v123 + 16))
            {
              goto LABEL_200;
            }

            OUTLINED_FUNCTION_11_63();
            if (v65)
            {
              goto LABEL_201;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_native() || (OUTLINED_FUNCTION_120_9(), !(v110 ^ v65 | v109)))
            {
              OUTLINED_FUNCTION_90_9();
              sub_1C6FB1814();
              v126 = v127;
            }

            OUTLINED_FUNCTION_87_18();
            if (v128)
            {
              OUTLINED_FUNCTION_22_57();
              if (v110 != v65)
              {
                goto LABEL_208;
              }

              OUTLINED_FUNCTION_28_33(v129);
              swift_arrayInitWithCopy();

              if (v1)
              {
                OUTLINED_FUNCTION_111_11();
                if (v65)
                {
                  goto LABEL_212;
                }

                v126[2] = v130;
              }
            }

            else
            {

              v124 = TokenCategoryType;
              if (v1)
              {
                goto LABEL_202;
              }
            }

            v125 = v185 + 1;
          }

          sub_1C703FCFC(v126);
          OUTLINED_FUNCTION_31_37();
          OUTLINED_FUNCTION_75_14(v124, 0xD000000000000013, 0x80000001C75AC2C0);
          OUTLINED_FUNCTION_312_1();

          if (*(v123 + 16))
          {
LABEL_139:
            v1 = (v123 + 32);
            v185 = 134217984;
            do
            {
              v131 = sub_1C75504FC();
              sub_1C706D154(v131);
              sub_1C75504FC();
              v132 = sub_1C754FEEC();
              v133 = sub_1C755117C();
              if (OUTLINED_FUNCTION_128(v133))
              {
                v134 = OUTLINED_FUNCTION_41_0();
                OUTLINED_FUNCTION_33_35(v134);
                OUTLINED_FUNCTION_139_4(&dword_1C6F5C000, v132, v133, "There are %ld generic location assets");
                OUTLINED_FUNCTION_109();
              }

              else
              {
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB20F8();
                v94 = v136;
              }

              OUTLINED_FUNCTION_51_22();
              if (v101)
              {
                OUTLINED_FUNCTION_15(v135);
                OUTLINED_FUNCTION_81_18();
                v94 = v137;
              }

              OUTLINED_FUNCTION_30_38();
            }

            while (!v109);
          }
        }
      }

      v138 = sub_1C6FE3758(9, v29);
      if (v138)
      {
        v139 = v138;
        v140 = *(v138 + 16);
        if (v140)
        {
          if (!v174)
          {
            goto LABEL_176;
          }

          OUTLINED_FUNCTION_86_12();
          v142 = MEMORY[0x1E69E7CC0];
          while (v140 != v141)
          {
            if (v141 >= *(v139 + 16))
            {
              goto LABEL_203;
            }

            OUTLINED_FUNCTION_11_63();
            if (v65)
            {
              goto LABEL_204;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_native() || (OUTLINED_FUNCTION_120_9(), !(v110 ^ v65 | v109)))
            {
              OUTLINED_FUNCTION_90_9();
              sub_1C6FB1814();
              v142 = v143;
            }

            OUTLINED_FUNCTION_87_18();
            if (v144)
            {
              OUTLINED_FUNCTION_22_57();
              if (v110 != v65)
              {
                goto LABEL_209;
              }

              OUTLINED_FUNCTION_28_33(v145);
              swift_arrayInitWithCopy();

              if (v1)
              {
                OUTLINED_FUNCTION_111_11();
                if (v65)
                {
                  goto LABEL_213;
                }

                v142[2] = v146;
              }
            }

            else
            {

              v140 = TokenCategoryType;
              if (v1)
              {
                goto LABEL_205;
              }
            }

            v141 = v185 + 1;
          }

          sub_1C703FCFC(v142);
          OUTLINED_FUNCTION_31_37();
          OUTLINED_FUNCTION_75_14(v140, 0x5D746168575B5551, 0xE800000000000000);
          OUTLINED_FUNCTION_312_1();

          if (*(v139 + 16))
          {
LABEL_176:
            do
            {
              v147 = sub_1C75504FC();
              sub_1C706D154(v147);
              sub_1C75504FC();
              v148 = sub_1C754FEEC();
              v149 = sub_1C755117C();
              if (OUTLINED_FUNCTION_128(v149))
              {
                v150 = OUTLINED_FUNCTION_41_0();
                OUTLINED_FUNCTION_33_35(v150);
                OUTLINED_FUNCTION_139_4(&dword_1C6F5C000, v148, v149, "There are %ld what assets");
                OUTLINED_FUNCTION_109();
              }

              else
              {
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB20F8();
                v94 = v152;
              }

              OUTLINED_FUNCTION_51_22();
              if (v101)
              {
                OUTLINED_FUNCTION_15(v151);
                OUTLINED_FUNCTION_81_18();
                v94 = v153;
              }

              OUTLINED_FUNCTION_30_38();
            }

            while (!v109);
          }
        }
      }

      if (*(v94 + 16))
      {
        goto LABEL_193;
      }

      v154 = sub_1C75504FC();
      sub_1C6FDE0B8(v154);
      v156 = v155;

      if (v156)
      {
        v157 = v156;
      }

      else
      {
        v157 = MEMORY[0x1E69E7CD0];
      }

      sub_1C75504FC();
      v158 = sub_1C754FEEC();
      v159 = sub_1C755117C();
      if (OUTLINED_FUNCTION_23_0(v159))
      {
        goto LABEL_183;
      }
    }

    else
    {
LABEL_187:
      v165 = sub_1C75504FC();
      sub_1C6FDE0B8(v165);
      v167 = v166;

      if (v167)
      {
        v157 = v167;
      }

      else
      {
        v157 = MEMORY[0x1E69E7CD0];
      }

      sub_1C75504FC();
      v158 = sub_1C754FEEC();
      v168 = sub_1C755117C();
      if (OUTLINED_FUNCTION_23_0(v168))
      {
LABEL_183:
        v160 = OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_29_34(v160, 3.852e-34);
        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_282_1(v161, v162, v163, v164);
        OUTLINED_FUNCTION_37();

LABEL_192:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150E0);
        v169 = swift_allocObject();
        *(v169 + 16) = xmmword_1C755BAB0;
        *(v169 + 32) = v157;
LABEL_193:

        OUTLINED_FUNCTION_58_16(v173);
        sub_1C754F1AC();
        (*(v171 + 8))(v170, v172);
        sub_1C6F6E5B4(v183);
        OUTLINED_FUNCTION_25_0();
        return;
      }
    }

    goto LABEL_192;
  }

  v28 = 0;
  v175 = v6 + 32;
  v29 = MEMORY[0x1E69E7CC8];
  v180 = TokenCategoryType;
  while (1)
  {
    memcpy(v189, (v175 + 120 * v28), 0x78uLL);
    v183 = v189[13];
    if (!v189[13])
    {
      sub_1C6FCA6E4(v189, v188);
      sub_1C6FCA6E4(v189, v188);
      v26 = v179;
      v76 = sub_1C754FEEC();
      v77 = sub_1C755117C();
      sub_1C6FDD548(v189);
      if (os_log_type_enabled(v76, v77))
      {
        v178 = v28;
        v78 = OUTLINED_FUNCTION_41_0();
        v1 = OUTLINED_FUNCTION_20_1();
        v187 = v1;
        *v78 = 136642819;
        memcpy(v186, v189, sizeof(v186));
        QueryToken.description.getter();
        v80 = v79;
        v81 = v27;
        v83 = v82;
        memcpy(v188, v186, sizeof(v188));
        sub_1C6FDD548(v188);
        v26 = sub_1C6F765A4(v80, v83, &v187);
        v27 = v81;
        TokenCategoryType = v180;

        *(v78 + 4) = v26;
        _os_log_impl(&dword_1C6F5C000, v76, v77, "Ignore the query token because retrievedAssetUUIDs is nil = %{sensitive}s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v1);
        OUTLINED_FUNCTION_37();
        v28 = v178;
        OUTLINED_FUNCTION_109();
      }

      else
      {

        sub_1C6FDD548(v189);
      }

      goto LABEL_54;
    }

    v1 = v189[10];
    v182 = *(v189[10] + 16);
    if (v182)
    {
      break;
    }

LABEL_54:
    if (++v28 == v176)
    {
      goto LABEL_57;
    }
  }

  v177 = v28;
  OUTLINED_FUNCTION_85_13();
  sub_1C75504FC();
  sub_1C75504FC();
  v30 = 0;
  while (1)
  {
    if (v30 >= *(v1 + 2))
    {
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    OUTLINED_FUNCTION_4_86();
    sub_1C71AC0CC(v31, v19, v32);
    OUTLINED_FUNCTION_2_102();
    sub_1C71AC0CC(v19, v185, v33);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_43_2();
    static QueryTokenCategoryType.~= infix(_:_:)();
    v26 = v34;
    OUTLINED_FUNCTION_0_151();
    sub_1C736F5E4(v181, v35);
    if ((v26 & 1) == 0)
    {
      if (qword_1EDD0E0C8 != -1)
      {
        OUTLINED_FUNCTION_39_36();
        swift_once();
      }

      __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0D0);
      static QueryTokenCategoryType.~= infix(_:_:)();
      if ((v36 & 1) == 0)
      {
        if (qword_1EDD0E0A0 != -1)
        {
          OUTLINED_FUNCTION_38();
          swift_once();
        }

        __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
        static QueryTokenCategoryType.~= infix(_:_:)();
        if ((v37 & 1) == 0)
        {
          if (qword_1EC213CC0 != -1)
          {
            OUTLINED_FUNCTION_37_32();
            swift_once();
          }

          __swift_project_value_buffer(TokenCategoryType, &qword_1EC216260);
          static QueryTokenCategoryType.~= infix(_:_:)();
          if ((v38 & 1) == 0)
          {
            OUTLINED_FUNCTION_0_151();
            sub_1C736F5E4(v185, v42);
            OUTLINED_FUNCTION_1_113();
            sub_1C736F5E4(v19, v43);
            goto LABEL_49;
          }
        }
      }
    }

    OUTLINED_FUNCTION_2_102();
    sub_1C71AC0CC(v19, v184, v39);
    v40 = 9;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v184, v46);
        v40 = 2;
        break;
      case 2u:
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0);
        sub_1C6FB5FC8(v184 + *(v47 + 48), &qword_1EC218C50);
        v48 = OUTLINED_FUNCTION_43_2();
        sub_1C6FB5FC8(v48, v49);
        v40 = 3;
        break;
      case 3u:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v184, v45);
        v40 = 4;
        break;
      case 4u:
        sub_1C754F09C();
        OUTLINED_FUNCTION_3();
        (*(v51 + 8))(v184);
        v40 = 5;
        break;
      case 5u:
        sub_1C754F5FC();
        OUTLINED_FUNCTION_3();
        (*(v53 + 8))(v184);
        v40 = 6;
        break;
      case 6u:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v184, v50);
        v40 = 7;
        break;
      case 7u:
        sub_1C736F5E4(v184, type metadata accessor for GroundedGenericLocation);
        v40 = 8;
        break;
      case 8u:
        sub_1C6FB5FC8(v184, &qword_1EC216328);
        v40 = 10;
        break;
      case 9u:
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0);
        sub_1C736F5E4(v184 + *(v54 + 48), type metadata accessor for PersonalEventBackingItem);
        sub_1C6FB5FC8(v184, &qword_1EC216320);
        v40 = 11;
        break;
      case 0xAu:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v184, v44);
        v40 = 15;
        break;
      case 0xBu:
        v40 = 16;
        break;
      case 0xCu:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v184, v52);
        v40 = 17;
        break;
      case 0xDu:
        v40 = 19;
        break;
      case 0xEu:
        break;
      case 0xFu:
        v40 = 12;
        break;
      case 0x10u:
        v40 = 13;
        break;
      case 0x11u:
        v40 = 14;
        break;
      case 0x12u:
        v40 = 18;
        break;
      default:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v184, v41);
        v40 = 1;
        break;
    }

    sub_1C6F6E5B4(v27);
    swift_isUniquelyReferenced_nonNull_native();
    v188[0] = v29;
    sub_1C6FC3264();
    OUTLINED_FUNCTION_13_2();
    if (__OFADD__(v57, v58))
    {
      goto LABEL_185;
    }

    v59 = v55;
    v60 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE78);
    v61 = sub_1C7551A2C();
    v29 = v188[0];
    if (v61)
    {
      break;
    }

LABEL_41:
    if ((v60 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_3(&v29[v59 >> 6]);
      *(v29[6] + v59) = v40;
      *(v29[7] + 8 * v59) = MEMORY[0x1E69E7CC0];
      v64 = v29[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_186;
      }

      v29[2] = v66;
    }

    v67 = v29[7];
    v26 = *(v67 + 8 * v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v67 + 8 * v59) = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB226C();
      v26 = v74;
      *(v67 + 8 * v59) = v74;
    }

    v70 = *(v26 + 16);
    v69 = *(v26 + 24);
    if (v70 >= v69 >> 1)
    {
      OUTLINED_FUNCTION_15(v69);
      OUTLINED_FUNCTION_90_9();
      sub_1C6FB226C();
      *(v67 + 8 * v59) = v75;
    }

    OUTLINED_FUNCTION_0_151();
    sub_1C736F5E4(v185, v71);
    OUTLINED_FUNCTION_1_113();
    sub_1C736F5E4(v19, v72);
    v73 = *(v67 + 8 * v59);
    *(v73 + 16) = v70 + 1;
    *(v73 + 8 * v70 + 32) = v183;
    sub_1C75504FC();
    v27 = sub_1C6FC0A88;
    TokenCategoryType = v180;
LABEL_49:
    if (v182 == ++v30)
    {

      v28 = v177;
      goto LABEL_54;
    }
  }

  v62 = sub_1C6FC3264();
  if ((v60 & 1) == (v63 & 1))
  {
    v59 = v62;
    goto LABEL_41;
  }

LABEL_214:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C7368FDC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 848) = v0;
  *(v1 + 840) = v4;
  *(v1 + 832) = v5;
  *(v1 + 824) = v6;
  v7 = sub_1C754F38C();
  *(v1 + 856) = v7;
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 864) = v8;
  *(v1 + 872) = OUTLINED_FUNCTION_77();
  *(v1 + 880) = *v3;
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7369098()
{
  v74 = v0;
  v2 = v0[110];
  v3 = v0[105];
  v4 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_141_1(v4, v5);
  OUTLINED_FUNCTION_134_10();
  OUTLINED_FUNCTION_58_16(v3);
  sub_1C754F15C();
  if (*(v2 + 16) || *(v0[111] + 16))
  {
    if (qword_1EDD0E038 != -1)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v6 = v0[103];
      TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
      v8 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      sub_1C75504FC();
      v10 = 0;
      v11 = sub_1C706CC1C(sub_1C70A97B0, v9, v6);
      v0[112] = v11;

      v12 = MEMORY[0x1E69E7CC8];
      v0[98] = MEMORY[0x1E69E7CC8];
      v68 = *(v11 + 2);
      if (!v68)
      {
LABEL_43:
        v0[114] = v12;
        v0[113] = v12;
        v57 = swift_task_alloc();
        v0[115] = v57;
        *v57 = v0;
        v57[1] = sub_1C7369968;

        return sub_1C7364CEC();
      }

      v13 = 0;
      v14 = v0 + 97;
      v67 = v11 + 32;
      v69 = MEMORY[0x1E69E7CC8];
      v66 = v11;
      while (v13 < *(v11 + 2))
      {
        memcpy(v0 + 2, &v67[120 * v13], 0x78uLL);
        v15 = v0[14];
        v0[97] = v15;
        if (v15)
        {
          v9 = v0[110];
          *(swift_task_alloc() + 16) = v9;
          sub_1C6FCA6E4((v0 + 2), (v0 + 77));
          sub_1C70A96BC(v14, (v0 + 102));
          v16 = OUTLINED_FUNCTION_117_8();
          v19 = sub_1C736F0A8(v16, v17, v18);
          sub_1C6FB5FC8(v14, &qword_1EC216EC0);
        }

        else
        {
          OUTLINED_FUNCTION_142_3();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
          v19 = sub_1C75504DC();
        }

        v70 = v0[4];
        v71 = v0[5];
        if (*(v19 + 16))
        {
          v73[0] = MEMORY[0x1E69E7CD0];
          OUTLINED_FUNCTION_45_31();
          sub_1C75504FC();
          v20 = 0;
          if (v1)
          {
            while (1)
            {
LABEL_15:
              v22 = OUTLINED_FUNCTION_63_20();
              sub_1C739796C(v22);
            }
          }

          while (1)
          {
            v21 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            if (v21 >= v9)
            {
              break;
            }

            v1 = *(v19 + 64 + 8 * v21);
            ++v20;
            if (v1)
            {
              goto LABEL_15;
            }
          }

          OUTLINED_FUNCTION_132_8();
          v1 = v73[0];
          sub_1C75504FC();
          sub_1C7069A44();
          v24 = v23;

          if ((sub_1C7369D94(v24, v9, v25, v26, v27, v28, v29, v30) & 1) == 0)
          {

            v14 = v0 + 97;
            goto LABEL_20;
          }

          sub_1C6FCA6E4((v0 + 2), (v0 + 62));

          v31 = sub_1C754FEEC();
          v32 = sub_1C75511BC();
          sub_1C6FDD548((v0 + 2));
          if (!OUTLINED_FUNCTION_200())
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_23_1();
          v65 = v10;
          v33 = OUTLINED_FUNCTION_31_0();
          v73[0] = v33;
          *v9 = 136380931;
          v1 = v71;
          sub_1C75504FC();
          v34 = sub_1C6F765A4(v70, v71, v73);

          *(v9 + 4) = v34;
          *(v9 + 12) = 2048;
          v35 = *(v24 + 16);

          *(v9 + 14) = v35;

          OUTLINED_FUNCTION_140_7(&dword_1C6F5C000, v31, v32, "Applied exact location matching to query token %{private}s with (%ld) filtered assets");
          __swift_destroy_boxed_opaque_existential_1(v33);
          v10 = v65;
        }

        else
        {
LABEL_20:
          if (*v14)
          {
            v9 = v0[111];
            *(swift_task_alloc() + 16) = v9;
            sub_1C70A96BC(v14, (v0 + 101));
            v36 = OUTLINED_FUNCTION_117_8();
            v39 = sub_1C736F0A8(v36, v37, v38);
            sub_1C6FB5FC8(v14, &qword_1EC216EC0);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
            v39 = sub_1C75504DC();
          }

          if (!*(v39 + 16))
          {

LABEL_37:

            sub_1C6FCA6E4((v0 + 2), (v0 + 32));
            v55 = sub_1C754FEEC();
            v56 = sub_1C75511BC();
            sub_1C6FDD548((v0 + 2));
            if (OUTLINED_FUNCTION_200())
            {
              OUTLINED_FUNCTION_41_0();
              v73[0] = OUTLINED_FUNCTION_31_0();
              *v9 = 136380675;
              sub_1C75504FC();
              sub_1C6FDD548((v0 + 2));
              v1 = sub_1C6F765A4(v70, v71, v73);

              *(v9 + 4) = v1;
              OUTLINED_FUNCTION_282_1(&dword_1C6F5C000, v55, v56, "No location assets to filter for location query token %{private}s. Using all available assets.");
              OUTLINED_FUNCTION_33_26();
              OUTLINED_FUNCTION_109();
              OUTLINED_FUNCTION_37();
            }

            else
            {

              sub_1C6FDD548((v0 + 2));
            }

            v11 = v66;
            goto LABEL_41;
          }

          v40 = sub_1C7210DC8(v39, v19);
          v73[0] = MEMORY[0x1E69E7CD0];
          v41 = v40 + 64;
          OUTLINED_FUNCTION_45_31();
          sub_1C75504FC();
          v42 = 0;
          if (v1)
          {
            while (1)
            {
LABEL_28:
              v44 = OUTLINED_FUNCTION_63_20();
              sub_1C739796C(v44);
            }
          }

          while (1)
          {
            v43 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_50;
            }

            if (v43 >= v9)
            {
              break;
            }

            v1 = *(v41 + 8 * v43);
            ++v42;
            if (v1)
            {
              goto LABEL_28;
            }
          }

          OUTLINED_FUNCTION_132_8();
          sub_1C75504FC();
          OUTLINED_FUNCTION_145_2();
          sub_1C7069A44();
          v46 = v45;

          if ((sub_1C7369D94(v46, v9, v47, v48, v49, v50, v51, v52) & 1) == 0)
          {

            v14 = v0 + 97;
            goto LABEL_37;
          }

          sub_1C6FCA6E4((v0 + 2), (v0 + 47));

          v31 = sub_1C754FEEC();
          v53 = sub_1C75511BC();
          sub_1C6FDD548((v0 + 2));
          if (!OUTLINED_FUNCTION_200())
          {
LABEL_33:

            goto LABEL_34;
          }

          OUTLINED_FUNCTION_23_1();
          v73[0] = OUTLINED_FUNCTION_31_0();
          *v9 = 136380931;
          sub_1C75504FC();
          v54 = sub_1C6F765A4(v70, v71, v73);

          *(v9 + 4) = v54;
          *(v9 + 12) = 2048;
          v1 = *(v46 + 16);

          *(v9 + 14) = v1;

          OUTLINED_FUNCTION_140_7(&dword_1C6F5C000, v31, v53, "Applied partially location matching to query token %{private}s with (%ld) filtered assets");
          OUTLINED_FUNCTION_33_26();
        }

        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_37();
LABEL_34:

        v11 = v66;
        swift_isUniquelyReferenced_nonNull_native();
        v73[0] = v69;
        sub_1C6FC7AB4();
        sub_1C6FDD548((v0 + 2));
        v69 = v73[0];
        v14 = v0 + 97;
LABEL_41:
        if (++v13 == v68)
        {
          v12 = v69;
          v0[98] = v69;
          goto LABEL_43;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      OUTLINED_FUNCTION_3_28();
    }
  }

  v59 = v0[105];
  __swift_destroy_boxed_opaque_existential_1((v0 + 92));
  OUTLINED_FUNCTION_70(v59, v3[3]);
  v72 = v0[104];
  v60 = v0[103];
  v61 = v0[109];
  v62 = v0[108];
  v63 = v0[107];
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C754F1AC();
  (*(v62 + 8))(v61, v63);

  v64 = v0[1];

  return v64(v60, v72);
}

uint64_t sub_1C7369968()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 928) = v5;
  *(v3 + 936) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C7369A74()
{
  v27 = v0;
  if (*(v0[113] + 16))
  {
    v1 = v0[112];
    v2 = sub_1C75504FC();
    v3 = sub_1C7360200(v2, v1, (v0 + 98));

    swift_getKeyPath();
    v4 = *(v3 + 64);
    v26[0] = MEMORY[0x1E69E7CC0];
    v5 = -1;
    v6 = -1 << *(v3 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & v4;
    v8 = (63 - v6) >> 6;
    sub_1C75504FC();
    v9 = 0;
    if (v7)
    {
      while (1)
      {
        v10 = v9;
LABEL_10:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v0[100] = *(*(v3 + 56) + ((v10 << 9) | (8 * v11)));
        sub_1C75504FC();
        OUTLINED_FUNCTION_15_1();
        swift_getAtKeyPath();

        v1 = v26;
        sub_1C6FD312C(v0[99], v12, v13, v14, v15, v16, v17, v18, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6]);
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v3 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    sub_1C7069D48(v26[0]);
    OUTLINED_FUNCTION_24_2();

    if (v1)
    {
      sub_1C75504FC();
      sub_1C7069A44();

      __swift_destroy_boxed_opaque_existential_1((v0 + 92));
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 92));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 92));
  }

  sub_1C75504FC();
LABEL_17:
  v19 = v0[105];

  OUTLINED_FUNCTION_58_16(v19);
  v20 = v0[109];
  v21 = v0[108];
  v22 = v0[107];
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  (*(v21 + 8))(v20, v22);

  v23 = OUTLINED_FUNCTION_145_2();

  v24(v23);
}

uint64_t sub_1C7369CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 840);
  __swift_destroy_boxed_opaque_existential_1(v10 + 736);

  OUTLINED_FUNCTION_38_6(v11);
  v12 = OUTLINED_FUNCTION_39_1();
  v13(v12);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C7369D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16) < 3uLL)
  {
    sub_1C75504FC();
    v9 = sub_1C754FEEC();
    v10 = sub_1C75511BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(a1 + 16);

      _os_log_impl(&dword_1C6F5C000, v9, v10, "Insufficient overlapping assets (%ld) for exact substring location matching.", v11, 0xCu);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_1C706E4B8(&unk_1F469E788, a2, a3, a4, a5, a6, a7, a8, v40, SWORD2(v40), SBYTE6(v40), SHIBYTE(v40), v41, v43, v45, v47, v49, v50, v52[0], v52[1], v52[2]);
  sub_1C74C4664();
  sub_1C71CDC88(v12);
  static StoryGenerationUtilities.queryTokens(ofCategoryTypeStrings:in:)();
  v14 = v13;

  v16 = *(v14 + 16);
  if (!v16)
  {
LABEL_25:

    return 1;
  }

  v17 = 0;
  v51 = v14 + 32;
  v18 = *(v14 + 16);
  v46 = v18;
  v48 = v14;
  while (1)
  {
    if (v17 >= v18)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    result = memcpy(__dst, (v51 + 120 * v17), 0x78uLL);
    v19 = __dst[13];
    if (__dst[13])
    {
      break;
    }

LABEL_23:
    if (++v17 == v16)
    {
      goto LABEL_25;
    }

    v18 = *(v14 + 16);
  }

  v21 = __dst[2];
  v20 = __dst[3];
  if (*(a1 + 16))
  {
    v42 = __dst[2];
    v44 = __dst[3];
    v22 = *(__dst[13] + 16);
    sub_1C6FCA6E4(__dst, v52);
    v23 = v19 + 32;
    result = sub_1C75504FC();
    v24 = 0;
    do
    {
LABEL_10:
      if (v24 == v22)
      {

        v21 = v42;
        v20 = v44;
        goto LABEL_29;
      }

      v25 = v24;
      if (v24 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      ++v24;
    }

    while (!*(a1 + 16));
    v26 = (v23 + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    sub_1C7551F3C();
    sub_1C75504FC();
    sub_1C75505AC();
    v29 = sub_1C7551FAC();
    v30 = ~(-1 << *(a1 + 32));
    do
    {
      v31 = v29 & v30;
      if (((*(a1 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
      {

        v23 = v19 + 32;
        goto LABEL_10;
      }

      v32 = (*(a1 + 48) + 16 * v31);
      if (*v32 == v28 && v32[1] == v27)
      {
        break;
      }

      v34 = sub_1C7551DBC();
      v29 = v31 + 1;
    }

    while ((v34 & 1) == 0);

    result = sub_1C6FDD548(__dst);
    v16 = v46;
    v14 = v48;
    goto LABEL_23;
  }

  sub_1C6FCA6E4(__dst, v52);

LABEL_29:
  sub_1C6FCA6E4(__dst, v52);
  v35 = sub_1C754FEEC();
  v36 = sub_1C75511BC();
  sub_1C6FDD548(__dst);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52[0] = v38;
    *v37 = 136642819;
    sub_1C75504FC();
    sub_1C6FDD548(__dst);
    v39 = sub_1C6F765A4(v21, v20, v52);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_1C6F5C000, v35, v36, "No overlapping assets for token %{sensitive}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1CCA5F8E0](v38, -1, -1);
    MEMORY[0x1CCA5F8E0](v37, -1, -1);
  }

  else
  {

    sub_1C6FDD548(__dst);
  }

  return 0;
}

void sub_1C736A17C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = sub_1C7366788(v4);
  if (!v5)
  {
    v19 = sub_1C754FEEC();
    v20 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v20))
    {
      v21 = OUTLINED_FUNCTION_127();
      *v21 = 0;
      OUTLINED_FUNCTION_57_5();
      v26 = v21;
      v27 = 2;
LABEL_13:
      _os_log_impl(v22, v23, v24, v25, v26, v27);
      OUTLINED_FUNCTION_109();
    }

LABEL_14:

    sub_1C75504FC();
    goto LABEL_15;
  }

  v6 = v5;
  if (qword_1EDD0E038 != -1)
  {
    OUTLINED_FUNCTION_3_28();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v8 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C75504FC();
  OUTLINED_FUNCTION_75();
  v12 = sub_1C706CC1C(v9, v10, v11);
  v13 = sub_1C706D154(v6);
  v14 = sub_1C736A5E0(v12, v13);

  if ((sub_1C736A804(v1) & 1) == 0)
  {
    sub_1C75504FC();
    sub_1C7069A44();
    v29 = v28;
    if (*(v28 + 16) >= 0xDuLL)
    {
      v32 = sub_1C736A8E8(v28, MEMORY[0x1E69E7CC0], &unk_1F46A89A0);
      v33 = sub_1C6FB6304();
      v34 = objc_opt_self();
      if (v33 >= [v34 minimumNumberOfLongTrips])
      {
        v35 = sub_1C7366788(v32);

        if (v35)
        {

          v36 = sub_1C72B8CBC(v35, v29);

          sub_1C75504FC();

          v37 = sub_1C754FEEC();
          v38 = sub_1C755117C();
          if (OUTLINED_FUNCTION_128(v38))
          {
            v39 = OUTLINED_FUNCTION_20_1();
            OUTLINED_FUNCTION_130_6(v39, 3.8522e-34);
            *(v39 + 14) = sub_1C6FB6304();

            *(v39 + 22) = v33;
            *(v39 + 24) = *(v36 + 16);

            OUTLINED_FUNCTION_57_5();
            _os_log_impl(v40, v41, v42, v43, v39, 0x20u);
            OUTLINED_FUNCTION_37();
          }

          else
          {
          }

          goto LABEL_15;
        }
      }

      else
      {
      }

      sub_1C75504FC();

      sub_1C75504FC();
      v44 = sub_1C754FEEC();
      v45 = sub_1C755117C();
      if (OUTLINED_FUNCTION_23_0(v45))
      {
        v46 = swift_slowAlloc();
        OUTLINED_FUNCTION_130_6(v46, 3.8524e-34);
        *(v46 + 14) = [v34 minimumNumberOfLongTrips];
        *(v46 + 22) = v33;
        *(v46 + 24) = *(v29 + 16);

        *(v46 + 32) = v33;
        *(v46 + 34) = *(v3 + 16);

        *(v46 + 42) = v33;
        v47 = *(v14 + 16);

        *(v46 + 44) = v47;

        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v48, v49, v50, v51, v46, 0x34u);
        OUTLINED_FUNCTION_109();
      }

      else
      {

        OUTLINED_FUNCTION_129_0();
        swift_bridgeObjectRelease_n();
      }

      goto LABEL_15;
    }

    v19 = sub_1C754FEEC();
    v30 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v30))
    {
      v31 = OUTLINED_FUNCTION_41_0();
      *v31 = 134217984;
      *(v31 + 4) = 13;
      OUTLINED_FUNCTION_57_5();
      v26 = v31;
      v27 = 12;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v15 = sub_1C754FEEC();
  v16 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v16))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_24_7(&dword_1C6F5C000, v17, v18, "No query tokens for retrieval, immediately return all trip assets");
    OUTLINED_FUNCTION_109();
  }

LABEL_15:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C736A5E0(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 136);
    do
    {
      v7 = *v5;
      v5 += 15;
      v6 = v7;
      if (v7)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        v8 = sub_1C72B8CBC(v6, a2);
        if (*(v8 + 16) >= 0xDuLL)
        {

          sub_1C739796C(v8);
        }

        else
        {

          sub_1C73978C4(v6);
        }
      }

      --v4;
    }

    while (v4);
    v3 = v16;
  }

  sub_1C75504FC();
  sub_1C75504FC();
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = *(a2 + 16);

    *(v11 + 12) = 2048;
    *(v11 + 14) = *(v3 + 16);

    _os_log_impl(&dword_1C6F5C000, v9, v10, "There are %ld trip assets and %ld consolidated trip location assets", v11, 0x16u);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }

  else
  {
  }

  if (*(v3 + 16))
  {
    return v3;
  }

  v12 = sub_1C754FEEC();
  v13 = sub_1C75511BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "There are no location query tokens, returning all the trip assets", v14, 2u);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
  }

  sub_1C75504FC();
  return a2;
}

uint64_t sub_1C736A8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v109 = MEMORY[0x1E69E7CC0];
    sub_1C716DDD4();
    v8 = v109;
    v10 = (a3 + 32);
    v11 = *(v109 + 16);
    do
    {
      v13 = *v10++;
      v12 = v13;
      v109 = v8;
      v14 = v8[3];
      if (v11 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_15(v14);
        sub_1C716DDD4();
        v8 = v109;
      }

      v8[2] = v11 + 1;
      *(v8 + v11++ + 16) = v12;
      --v7;
    }

    while (v7);
    v4 = v3;
  }

  v15 = v4 + *(type metadata accessor for QueryGenerator() + 24);
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  v109 = *v15;
  v110 = v16;
  v111 = v17;
  v18 = v109;

  v19 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(a1, &v109);
  v20 = v109;

  v21 = sub_1C706D87C(v19);
  if (!*(v21 + 16))
  {

    v58 = sub_1C754FEEC();
    v59 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v59))
    {
      v60 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v60);
      OUTLINED_FUNCTION_17();
      _os_log_impl(v61, v62, v63, v64, v65, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v22 = *(v15 + 8);
  v107 = v15;
  v23 = *v15;

  v24 = [v23 librarySpecificFetchOptions];
  [v24 setSharingFilter_];

  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C755BAA0;
  v26 = MEMORY[0x1E69E6158];
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1C6F6D524();
  *(v25 + 32) = 0x73746E656D6F6DLL;
  *(v25 + 40) = 0xE700000000000000;
  *(v25 + 96) = v26;
  *(v25 + 104) = v27;
  v108 = v27;
  *(v25 + 64) = v27;
  *(v25 + 72) = 1684632949;
  *(v25 + 80) = 0xE400000000000000;
  v28 = OUTLINED_FUNCTION_43_2();
  *(v25 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(v28);
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_99_3();
  *(v25 + 144) = sub_1C705575C(v29, v30);
  *(v25 + 112) = v21;
  sub_1C75504FC();
  v31 = sub_1C755112C();
  [v24 setInternalPredicate_];

  v32 = objc_opt_self();
  v33 = [v32 fetchHighlightsWithOptions_];
  v34 = [v33 fetchedObjectIDs];

  if (!v34)
  {
    goto LABEL_38;
  }

  sub_1C6F65BE8(0, &qword_1EDD0FAB0);
  v35 = sub_1C7550B5C();

  if (!sub_1C6FB6304())
  {

LABEL_38:

    sub_1C75504FC();
    v83 = sub_1C754FEEC();
    v84 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v84))
    {
      v85 = OUTLINED_FUNCTION_41_0();
      *v85 = 134217984;
      v86 = *(v21 + 16);

      *(v85 + 4) = v86;

      OUTLINED_FUNCTION_17();
      _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
      OUTLINED_FUNCTION_23_3();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v104 = v32;
  v105 = v24;

  v109 = MEMORY[0x1E69E7CC0];
  v36 = OUTLINED_FUNCTION_104_10();
  *(v36 + 16) = xmmword_1C75604F0;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = v108;
  *(v36 + 32) = 0xD00000000000001DLL;
  *(v36 + 40) = 0x80000001C75AC190;
  v37 = OUTLINED_FUNCTION_43_2();
  *(v36 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(v37);
  OUTLINED_FUNCTION_6_88();
  OUTLINED_FUNCTION_99_3();
  *(v36 + 104) = sub_1C705575C(v38, v39);
  *(v36 + 72) = v35;
  sub_1C75504FC();
  v40 = sub_1C755112C();
  MEMORY[0x1CCA5D040]();
  OUTLINED_FUNCTION_127_8();
  if (v42)
  {
LABEL_51:
    OUTLINED_FUNCTION_15(v41);
    sub_1C7550B9C();
  }

  OUTLINED_FUNCTION_126_8();
  v103 = v40;
  sub_1C7550BEC();
  v43 = sub_1C6FB6304();
  if (v43)
  {
    v44 = v43;
    v45 = 0;
    v106 = MEMORY[0x1E69E7CC0];
    while (v44 != v45)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v55 = OUTLINED_FUNCTION_15_1();
        v46 = MEMORY[0x1CCA5DDD0](v55);
      }

      else
      {
        v41 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v45 >= v41)
        {
          goto LABEL_50;
        }

        v46 = *(a2 + 8 * v45 + 32);
      }

      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v48 = v46;
      v49 = [v48 uuid];
      if (v49)
      {
        v50 = v49;
        v51 = sub_1C755068C();
        v102 = v52;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v106 = v56;
        }

        v40 = *(v106 + 16);
        v53 = *(v106 + 24);
        if (v40 >= v53 >> 1)
        {
          OUTLINED_FUNCTION_15(v53);
          sub_1C6FB1814();
          v106 = v57;
        }

        *(v106 + 16) = v40 + 1;
        v54 = v106 + 16 * v40;
        *(v54 + 32) = v51;
        *(v54 + 40) = v102;
        v45 = v47;
      }

      else
      {

        ++v45;
      }
    }

    v66 = OUTLINED_FUNCTION_104_10();
    *(v66 + 16) = xmmword_1C75604F0;
    *(v66 + 56) = MEMORY[0x1E69E6158];
    *(v66 + 64) = v108;
    *(v66 + 32) = 1684632949;
    *(v66 + 40) = 0xE400000000000000;
    *(v66 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_6_88();
    OUTLINED_FUNCTION_75();
    *(v66 + 104) = sub_1C705575C(v67, v68);
    *(v66 + 72) = v106;
    OUTLINED_FUNCTION_13_67();
    sub_1C755112C();
    MEMORY[0x1CCA5D040]();
    v69 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v69 >> 1)
    {
      OUTLINED_FUNCTION_15(v69);
      sub_1C7550B9C();
    }

    sub_1C7550BEC();
    OUTLINED_FUNCTION_126_8();
  }

  v70 = OUTLINED_FUNCTION_104_10();
  *(v70 + 16) = xmmword_1C75604F0;
  *(v70 + 56) = MEMORY[0x1E69E6158];
  *(v70 + 64) = v108;
  *(v70 + 32) = 1701869940;
  *(v70 + 40) = 0xE400000000000000;
  v71 = OUTLINED_FUNCTION_43_2();
  *(v70 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(v71);
  OUTLINED_FUNCTION_6_88();
  OUTLINED_FUNCTION_99_3();
  *(v70 + 104) = sub_1C705575C(v72, v73);
  *(v70 + 72) = v8;
  v74 = sub_1C755112C();
  MEMORY[0x1CCA5D040]();
  OUTLINED_FUNCTION_127_8();
  if (v42)
  {
    OUTLINED_FUNCTION_15(v75);
    sub_1C7550B9C();
  }

  sub_1C7550BEC();
  v76 = *(v107 + 8);
  v77 = *v107;

  v78 = [v77 librarySpecificFetchOptions];
  [v78 setSharingFilter_];

  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  OUTLINED_FUNCTION_24_2();
  v79 = sub_1C6F6E5C4();
  [v78 setInternalPredicate_];

  v80 = [v104 fetchHighlightsWithOptions_];
  v81 = [v80 fetchedObjects];

  if (!v81)
  {
    goto LABEL_43;
  }

  sub_1C6F65BE8(0, &qword_1EC2155D8);
  OUTLINED_FUNCTION_63();
  v82 = sub_1C7550B5C();

  if (!sub_1C6FB6304())
  {

LABEL_43:
    sub_1C75504FC();
    v92 = sub_1C754FEEC();
    v93 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v93))
    {
      v94 = OUTLINED_FUNCTION_41_0();
      *v94 = 134217984;
      v95 = sub_1C6FB6304();

      *(v94 + 4) = v95;

      OUTLINED_FUNCTION_17();
      _os_log_impl(v96, v97, v98, v99, v100, 0xCu);
      OUTLINED_FUNCTION_23_3();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v82;
}

uint64_t sub_1C736B2E0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_1C6FE3758(*a1, a2);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  TokenCategoryType = QueryTokenCategoryTypeString.rawValue.getter();
  v22 = v7;
  MEMORY[0x1CCA5CD70](2112032, 0xE300000000000000);
  v8 = *(v6 + 16);
  if (v8)
  {
    v20 = a3;
    sub_1C6F7ED9C();
    v9 = 32;
    v10 = v5;
    do
    {
      v11 = sub_1C7551D8C();
      v13 = v12;
      v14 = *(v5 + 16);
      if (v14 >= *(v5 + 24) >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
      v9 += 8;
      --v8;
    }

    while (v8);

    a3 = v20;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v16 = MEMORY[0x1CCA5D090](v10, MEMORY[0x1E69E6158]);
  v18 = v17;

  MEMORY[0x1CCA5CD70](v16, v18);

  *a3 = TokenCategoryType;
  a3[1] = v22;
  return result;
}

void static QueryGenerator.consolidatePersonAssetUUIDs(from:isTrip:storyPhotoLibraryContext:)()
{
  OUTLINED_FUNCTION_33();
  LODWORD(v1) = v0;
  v3 = v2;
  v5 = *v4;
  LODWORD(v6) = *(v4 + 8);
  v7 = *(v4 + 16);
  if (qword_1EDD0F3C8 != -1)
  {
LABEL_123:
    swift_once();
  }

  v8 = qword_1EDD28DC8;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v9 = v8;
  v10 = PerformanceMeasure.init(name:log:)();
  v11 = sub_1C75504FC();
  v12 = sub_1C71CD90C(v11);
  v13 = *(v12 + 16);
  if (!v13)
  {

    if (qword_1EDD0F3C0 != -1)
    {
LABEL_126:
      OUTLINED_FUNCTION_9_58();
    }

    v41 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v41, qword_1EDD28DB0);
    v42 = sub_1C754FEEC();
    v43 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v43))
    {
      v44 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v44);
LABEL_49:
      OUTLINED_FUNCTION_17();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    goto LABEL_50;
  }

  v183 = v7;
  LODWORD(v185) = v1;
  LODWORD(v184) = v6;
  v186 = v5;
  v187 = v10;
  v188 = v13;
  v189 = v12;
  v1 = v3 + 64;
  OUTLINED_FUNCTION_11();
  v7 = v15 & v14;
  v17 = (v16 + 63) >> 6;
  sub_1C75504FC();
  v6 = 0;
  v182 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v19 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v19 >= v17)
          {
            goto LABEL_20;
          }

          v7 = *(v1 + 8 * v19);
          ++v6;
          if (v7)
          {
            v6 = v19;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

LABEL_9:
      v20 = *(*(v3 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v7)))));
      v21 = *(v20 + 16);
      v5 = *(v18 + 16);
      if (__OFADD__(v5, v21))
      {
        goto LABEL_119;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || (OUTLINED_FUNCTION_120_9(), !(v23 ^ v24 | v22)))
      {
        OUTLINED_FUNCTION_90_9();
        sub_1C6FB1814();
        v18 = v25;
      }

      v7 &= v7 - 1;
      if (!*(v20 + 16))
      {
        break;
      }

      if ((*(v18 + 24) >> 1) - *(v18 + 16) < v21)
      {
        goto LABEL_121;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v18 + 16);
        v24 = __OFADD__(v26, v21);
        v27 = v26 + v21;
        if (v24)
        {
          goto LABEL_122;
        }

        *(v18 + 16) = v27;
      }
    }
  }

  while (!v21);
  __break(1u);
LABEL_20:

  if (v188 == 1)
  {
    v28 = v189;
    if (*(v18 + 16))
    {
      v1 = sub_1C706D154(v18);
      if (qword_1EDD0F3C0 == -1)
      {
LABEL_23:
        v29 = sub_1C754FF1C();
        __swift_project_value_buffer(v29, qword_1EDD28DB0);
        OUTLINED_FUNCTION_312_1();
        sub_1C75504FC();
        sub_1C75504FC();
        v30 = sub_1C754FEEC();
        v31 = sub_1C75511BC();

        if (os_log_type_enabled(v30, v31))
        {
          OUTLINED_FUNCTION_23_1();
          v32 = OUTLINED_FUNCTION_31_0();
          v190 = v32;
          *v6 = 134218242;
          *(v6 + 4) = *(v1 + 16);

          *(v6 + 12) = 2080;
          v33 = MEMORY[0x1CCA5D090](v28, MEMORY[0x1E69E6158]);
          v35 = v34;

          v36 = sub_1C6F765A4(v33, v35, &v190);

          *(v6 + 14) = v36;
          OUTLINED_FUNCTION_57_5();
          OUTLINED_FUNCTION_140_7(v37, v38, v39, v40);
          __swift_destroy_boxed_opaque_existential_1(v32);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_37();
        }

        else
        {
        }

        goto LABEL_51;
      }

LABEL_128:
      OUTLINED_FUNCTION_9_58();
      goto LABEL_23;
    }

    if (qword_1EDD0F3C0 != -1)
    {
      OUTLINED_FUNCTION_9_58();
    }

    v66 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v66, qword_1EDD28DB0);
    v42 = sub_1C754FEEC();
    v67 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v67))
    {
      v68 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v68);
      goto LABEL_49;
    }

LABEL_50:

    goto LABEL_51;
  }

  v45 = objc_opt_self();
  v46 = v185;
  if (v185)
  {
    v47 = [v45 queryPeopleRequiredInRetrievalTripLimit];
    if (v47 >= v188)
    {
      v48 = v188;
    }

    else
    {
      v48 = v47;
    }

    v49 = v186;
    v50 = sub_1C736C4B4(v3, v18, v48, v186);
  }

  else
  {
    v51 = [v45 queryPeopleRequiredInRetrievalMomentLimit];
    v49 = v186;
    v190 = v186;
    if (v51 >= v188)
    {
      v52 = v188;
    }

    else
    {
      v52 = v51;
    }

    v191 = v184;
    v192 = v183;
    v50 = sub_1C736CB18(v3, v18, v52, &v190);
  }

  v53 = v50;

  if (!*(v53 + 16))
  {

    if (qword_1EDD0F3C0 != -1)
    {
      OUTLINED_FUNCTION_9_58();
    }

    v74 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v74, qword_1EDD28DB0);
    v75 = sub_1C754FEEC();
    v76 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v76))
    {
      v77 = OUTLINED_FUNCTION_41_0();
      v78 = OUTLINED_FUNCTION_20_1();
      v190 = v78;
      *v77 = 136315138;
      if (v46)
      {
        v79 = 0x7370697274;
      }

      else
      {
        v79 = 0x73746E656D6F6DLL;
      }

      if (v46)
      {
        v80 = 0xE500000000000000;
      }

      else
      {
        v80 = 0xE700000000000000;
      }

      v81 = sub_1C6F765A4(v79, v80, &v190);

      *(v77 + 4) = v81;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v82, v83, v84, v85, v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    goto LABEL_51;
  }

  sub_1C706ED1C();
  OUTLINED_FUNCTION_103_0();
  v54 = sub_1C75504FC();
  sub_1C706D154(v54);
  v55 = OUTLINED_FUNCTION_24_2();
  v56 = static QueryGenerator.allPeopleMatch(ageTypes:for:in:)(v55, v18, v49);

  if (!v56)
  {
    v6 = [v49 librarySpecificFetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1C7564A90;
    *(v86 + 32) = sub_1C7551EFC();
    *(v86 + 40) = sub_1C7551EFC();
    v87 = OUTLINED_FUNCTION_457();
    sub_1C7082AAC(v87, v88);
    v89 = objc_opt_self();
    v90 = sub_1C7550B3C();

    v91 = [v89 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v90 options:v6];

    if (!v91)
    {

      if (qword_1EDD0F3C0 != -1)
      {
        OUTLINED_FUNCTION_9_58();
      }

      v118 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v118, qword_1EDD28DB0);
      v119 = sub_1C754FEEC();
      v120 = sub_1C755119C();
      if (OUTLINED_FUNCTION_7_0(v120))
      {
        v121 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v121);
        OUTLINED_FUNCTION_17();
        _os_log_impl(v122, v123, v124, v125, v126, 2u);
        OUTLINED_FUNCTION_23_3();
      }

      goto LABEL_51;
    }

    v183 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    v1 = sub_1C75504AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD30);
    v92 = sub_1C7551AEC();
    v93 = v92;
    v28 = 0;
    v94 = 1 << *(v1 + 32);
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    v5 = (v1 + 64);
    v96 = v95 & *(v1 + 64);
    v7 = (v94 + 63) >> 6;
    v3 = v92 + 64;
    v185 = v92;
    if (v96)
    {
      while (1)
      {
        v97 = __clz(__rbit64(v96));
        v96 &= v96 - 1;
LABEL_74:
        v6 = v97 | (v28 << 6);
        v100 = (*(v1 + 48) + 16 * v6);
        v102 = *v100;
        v101 = v100[1];
        sub_1C75504FC();
        v103 = sub_1C75504FC();
        v104 = sub_1C706D154(v103);
        *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
        v93 = v185;
        v105 = (*(v185 + 48) + 16 * v6);
        *v105 = v102;
        v105[1] = v101;
        *(*(v93 + 56) + 8 * v6) = v104;
        OUTLINED_FUNCTION_43_1();
        if (v24)
        {
          break;
        }

        *(v93 + 16) = v106;
        if (!v96)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
      goto LABEL_128;
    }

LABEL_69:
    v98 = v28;
    while (1)
    {
      v28 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      if (v28 >= v7)
      {

        MEMORY[0x1EEE9AC00](v107);
        v108 = v189;
        v181 = v189;
        v109 = sub_1C736F0A8(v93, sub_1C736F430, v180);
        v110 = sub_1C7080ED4(v109);
        if (qword_1EDD0F3C0 != -1)
        {
          OUTLINED_FUNCTION_9_58();
        }

        v111 = sub_1C754FF1C();
        v112 = __swift_project_value_buffer(v111, qword_1EDD28DB0);
        sub_1C75504FC();
        v113 = sub_1C754FEEC();
        v114 = sub_1C755117C();
        v115 = OUTLINED_FUNCTION_7_0(v114);
        v116 = v186;
        if (v115)
        {
          v117 = OUTLINED_FUNCTION_41_0();
          *v117 = 134217984;
          *(v117 + 4) = *(v110 + 16);

          OUTLINED_FUNCTION_282_1(&dword_1C6F5C000, v113, v112, "There are %ld assets with at least 2 query people");
          OUTLINED_FUNCTION_37();
        }

        else
        {
        }

        v127 = static StoryGenerationUtilities.mePersonUUID(in:)(v116);
        if (v128)
        {
          v129 = v127;
        }

        else
        {
          v129 = 0;
        }

        if (v128)
        {
          v130 = v128;
        }

        else
        {
          v130 = 0xE000000000000000;
        }

        sub_1C75504FC();
        v131 = sub_1C754FEEC();
        v132 = sub_1C755117C();

        if (OUTLINED_FUNCTION_200())
        {
          v133 = OUTLINED_FUNCTION_41_0();
          v134 = OUTLINED_FUNCTION_20_1();
          v190 = v134;
          *v133 = 136315138;
          *(v133 + 4) = sub_1C6F765A4(v129, v130, &v190);
          _os_log_impl(&dword_1C6F5C000, v131, v132, "Me person uuid=%s", v133, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v134);
          v116 = v186;
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        MEMORY[0x1EEE9AC00](v135);
        v180[0] = v108;
        v180[1] = v129;
        v181 = v130;
        v136 = sub_1C736F0A8(v185, sub_1C736F438, &v179);

        sub_1C71CD90C(v136);
        v137 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(v116, v184, 0);
        sub_1C6F65BE8(0, &qword_1EDD0FAD0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
        v138 = swift_allocObject();
        *(v138 + 16) = xmmword_1C755BAB0;
        *(v138 + 56) = MEMORY[0x1E69E6158];
        *(v138 + 64) = sub_1C6F6D524();
        strcpy((v138 + 32), "detectedFaces");
        *(v138 + 46) = -4864;
        v139 = sub_1C755112C();
        [v137 setInternalPredicate_];

        v140 = objc_opt_self();
        v141 = v137;
        v142 = OUTLINED_FUNCTION_455();
        v144 = sub_1C6FCA158(v142, v143, v140);

        if (!v144 || (v145 = [v144 fetchedObjects], v144, !v145))
        {

          v162 = sub_1C754FEEC();
          v163 = sub_1C755119C();
          if (OUTLINED_FUNCTION_7_0(v163))
          {
            *OUTLINED_FUNCTION_127() = 0;
            OUTLINED_FUNCTION_24_7(&dword_1C6F5C000, v164, v165, "Unable to get fetched assets for only 1 query person. Defaulting to at least 2 query people required in each asset.");
            OUTLINED_FUNCTION_109();
          }

          goto LABEL_51;
        }

        v184 = v141;
        v185 = v112;
        sub_1C6F65BE8(0, &qword_1EDD0FA70);
        OUTLINED_FUNCTION_116_12();
        v146 = sub_1C7550B5C();

        v147 = sub_1C6FB6304();
        v148 = 0;
        v186 = MEMORY[0x1E69E7CC0];
        while (v147 != v148)
        {
          if ((v146 & 0xC000000000000001) != 0)
          {
            v149 = MEMORY[0x1CCA5DDD0](v148, v146);
          }

          else
          {
            if (v148 >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_125;
            }

            v149 = *(v146 + 8 * v148 + 32);
          }

          v150 = v148 + 1;
          if (__OFADD__(v148, 1))
          {
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          v151 = v149;
          v152 = [v151 uuid];
          if (v152)
          {
            v153 = v152;
            v182 = sub_1C755068C();
            v155 = v154;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v186 = v160;
            }

            v157 = v186[2];
            v156 = v186[3];
            if (v157 >= v156 >> 1)
            {
              OUTLINED_FUNCTION_15(v156);
              sub_1C6FB1814();
              v186 = v161;
            }

            v158 = v186;
            v186[2] = v157 + 1;
            v159 = &v158[2 * v157];
            *(v159 + 4) = v182;
            *(v159 + 5) = v155;
            v148 = v150;
          }

          else
          {

            ++v148;
          }
        }

        v166 = sub_1C706D154(v186);
        v167 = sub_1C70738FC(v110, v166);
        v168 = v189;
        sub_1C75504FC();
        sub_1C75504FC();
        v169 = sub_1C754FEEC();
        v170 = sub_1C75511BC();

        if (os_log_type_enabled(v169, v170))
        {
          v171 = OUTLINED_FUNCTION_20_1();
          v172 = OUTLINED_FUNCTION_20_1();
          v190 = v172;
          *v171 = 134218498;
          *(v171 + 4) = v188;
          *(v171 + 12) = 2048;
          *(v171 + 14) = *(v167 + 16);

          *(v171 + 22) = 2080;
          v173 = MEMORY[0x1CCA5D090](v168, MEMORY[0x1E69E6158]);
          v175 = v174;

          v176 = sub_1C6F765A4(v173, v175, &v190);

          *(v171 + 24) = v176;
          _os_log_impl(&dword_1C6F5C000, v169, v170, "%ld people with %ld consolidated asset UUIDs from query token person %s", v171, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v172);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
        }

        v177 = v183;
        v178 = v184;
        sub_1C6F85170();

        goto LABEL_44;
      }

      v99 = v5[v28];
      ++v98;
      if (v99)
      {
        v97 = __clz(__rbit64(v99));
        v96 = (v99 - 1) & v99;
        goto LABEL_74;
      }
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (qword_1EDD0F3C0 != -1)
  {
    OUTLINED_FUNCTION_9_58();
  }

  v57 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v57, qword_1EDD28DB0);
  v58 = sub_1C754FEEC();
  v59 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v59))
  {
    v60 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v60);
    OUTLINED_FUNCTION_17();
    _os_log_impl(v61, v62, v63, v64, v65, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  sub_1C706D154(v53);
LABEL_44:

LABEL_51:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C736C4B4(uint64_t a1, int a2, uint64_t a3, id a4)
{
  v82 = MEMORY[0x1E69E7CD0];
  v4 = [a4 librarySpecificFetchOptions];
  objc_opt_self();
  v5 = sub_1C7550B3C();
  v6 = OUTLINED_FUNCTION_117_8();
  v72 = v4;
  v8 = [v6 v7];

  v9 = sub_1C75504AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  v10 = sub_1C75504DC();
  v11 = v9 + 64;
  OUTLINED_FUNCTION_11();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v77 = v9;
  sub_1C75504FC();
  v17 = 0;
  v73 = v16;
  for (i = v9 + 64; ; v11 = i)
  {
    v18 = a1;
    if (!v14)
    {
      break;
    }

LABEL_7:
    v20 = (v17 << 10) | (16 * __clz(__rbit64(v14)));
    v21 = (*(v77 + 48) + v20);
    v22 = v21[1];
    v78 = *v21;
    v23 = (*(v77 + 56) + v20);
    v18 = *v23;
    v24 = v23[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C6F78124(v18, v24);
    OUTLINED_FUNCTION_13_2();
    if (__OFADD__(v27, v28))
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      OUTLINED_FUNCTION_9_58();
LABEL_48:
      v62 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v62, qword_1EDD28DB0);
      sub_1C75504FC();
      sub_1C75504FC();
      v63 = sub_1C754FEEC();
      v64 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_23_0(v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 134218752;
        *(v65 + 4) = a3;
        *(v65 + 12) = 2048;
        *(v65 + 14) = [objc_opt_self() queryPeopleRequiredInRetrievalMomentLimit];
        *(v65 + 22) = 2048;
        *(v65 + 24) = *(v18 + 16);

        *(v65 + 32) = 2048;
        *(v65 + 34) = *(v82 + 16);

        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v66, v67, v68, v69, v65, 0x2Au);
        OUTLINED_FUNCTION_37();
      }

      else
      {
      }

      v70 = sub_1C71CD85C(v82);

      return v70;
    }

    v29 = v25;
    v30 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
    if (sub_1C7551A2C())
    {
      v31 = sub_1C6F78124(v18, v24);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_59;
      }

      v29 = v31;
    }

    if (v30)
    {
    }

    else
    {
      OUTLINED_FUNCTION_1_3(v10 + 8 * (v29 >> 6));
      v33 = (*(v10 + 48) + 16 * v29);
      *v33 = v18;
      v33[1] = v24;
      *(*(v10 + 56) + 8 * v29) = MEMORY[0x1E69E7CC0];
      v34 = *(v10 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_56;
      }

      *(v10 + 16) = v36;
    }

    v37 = *(v10 + 56);
    v38 = *(v37 + 8 * v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 8 * v29) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1814();
      v38 = v44;
      *(v37 + 8 * v29) = v44;
    }

    v41 = *(v38 + 16);
    v40 = *(v38 + 24);
    if (v41 >= v40 >> 1)
    {
      OUTLINED_FUNCTION_15(v40);
      OUTLINED_FUNCTION_90_9();
      sub_1C6FB1814();
      *(v37 + 8 * v29) = v45;
    }

    v14 &= v14 - 1;

    v42 = *(v37 + 8 * v29);
    *(v42 + 16) = v41 + 1;
    v43 = v42 + 16 * v41;
    *(v43 + 32) = v78;
    *(v43 + 40) = v22;
    v16 = v73;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v19 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_7;
    }
  }

  v46 = 0;
  v47 = 1 << *(v10 + 32);
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v49 = v48 & *(v10 + 64);
  v50 = (v47 + 63) >> 6;
  v75 = v50;
  if (!v49)
  {
LABEL_25:
    while (1)
    {
      v51 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_54;
      }

      if (v51 >= v50)
      {

        if (qword_1EDD0F3C0 != -1)
        {
          goto LABEL_57;
        }

        goto LABEL_48;
      }

      v49 = *(v10 + 64 + 8 * v51);
      ++v46;
      if (v49)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_24:
  v51 = v46;
LABEL_28:
  v52 = __clz(__rbit64(v49));
  v49 &= v49 - 1;
  v53 = *(*(v10 + 56) + ((v51 << 9) | (8 * v52)));
  v81 = MEMORY[0x1E69E7CD0];
  v54 = 1 << *(v18 + 32);
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  else
  {
    v55 = -1;
  }

  v56 = v55 & *(v18 + 64);
  v57 = (v54 + 63) >> 6;
  sub_1C75504FC();
  sub_1C75504FC();
  v79 = 0;
  v58 = 0;
  while (2)
  {
    v59 = v58;
    if (!v56)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v58 = v59;
LABEL_37:
      v56 &= v56 - 1;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C706D154(v53);
      v60 = OUTLINED_FUNCTION_63();
      sub_1C72B8CBC(v60, v61);
      OUTLINED_FUNCTION_31_37();
      if (*(v18 + 16))
      {
        break;
      }

      v59 = v58;
      v18 = a1;
      if (!v56)
      {
        while (1)
        {
LABEL_34:
          v58 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            __break(1u);
            goto LABEL_53;
          }

          if (v58 >= v57)
          {
            break;
          }

          v56 = *(a1 + 64 + 8 * v58);
          ++v59;
          if (v56)
          {
            goto LABEL_37;
          }
        }

        if (v79 >= a3)
        {
          sub_1C739796C(v81);
        }

        else
        {
        }

        v46 = v51;
        v50 = v75;
        if (!v49)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    if (!__OFADD__(v79, 1))
    {
      ++v79;
      sub_1C739796C(v18);
      v18 = a1;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_59:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C736CB18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v8 = *(a4 + 16);
  sub_1C75504FC();
  v9 = sub_1C706D154(a2);
  v79 = v6;
  v80 = v7;
  v81 = v8;
  v10 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v9, &v79);

  sub_1C75504FC();
  v73 = a1;
  v11 = OUTLINED_FUNCTION_455();
  v12 = 0;
  v14 = sub_1C736ED5C(v11, v13);
  v79 = MEMORY[0x1E69E7CC0];
  v15 = v14 + 64;
  OUTLINED_FUNCTION_11();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;

  v21 = 0;
  if (v18)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      OUTLINED_FUNCTION_9_58();
      goto LABEL_44;
    }

    if (v22 >= v20)
    {
      break;
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      do
      {
LABEL_7:
        v18 &= v18 - 1;
        v23 = sub_1C75504FC();
        sub_1C6FD25FC(v23);
      }

      while (v18);
      continue;
    }
  }

  v76 = v10;

  v24 = 0;
  v18 = v79;
  v77 = v79[2];
  v25 = MEMORY[0x1E69E7CC8];
  v26 = v79 + 5;
  while (v77 != v24)
  {
    if (v24 >= *(v18 + 16))
    {
      goto LABEL_49;
    }

    v27 = *(v26 - 1);
    v28 = *v26;
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v79 = v25;
    sub_1C6F78124(v27, v28);
    OUTLINED_FUNCTION_13_2();
    v12 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_50;
    }

    v33 = v29;
    v34 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
    v35 = sub_1C7551A2C();
    v25 = v79;
    if (v35)
    {
      v36 = sub_1C6F78124(v27, v28);
      if ((v34 & 1) != (v37 & 1))
      {
        result = sub_1C7551E4C();
        __break(1u);
        return result;
      }

      v33 = v36;
    }

    if ((v34 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_3(&v25[v33 >> 6]);
      v38 = (v25[6] + 16 * v33);
      *v38 = v27;
      v38[1] = v28;
      *(v25[7] + 8 * v33) = 0;
      OUTLINED_FUNCTION_43_1();
      if (v40)
      {
        goto LABEL_54;
      }

      v25[2] = v39;
      sub_1C75504FC();
    }

    v41 = v25[7];
    v42 = *(v41 + 8 * v33);
    v40 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v40)
    {
      goto LABEL_51;
    }

    *(v41 + 8 * v33) = v43;

    v26 += 2;
    ++v24;
  }

  v44 = sub_1C736EF38(v25, a3);

  v18 = sub_1C7080ED4(v44);
  v45 = 0;
  v78 = *(a2 + 16);
  v75 = a2 + 32;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_22:
  while (1)
  {
    v46 = v45;
    if (v45 == v78)
    {
      break;
    }

    if (v45 >= v78)
    {
      goto LABEL_52;
    }

    ++v45;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_53;
    }

    v47 = (v75 + 16 * v46);
    v49 = *v47;
    v48 = v47[1];
    v50 = *(v76 + 16);
    sub_1C75504FC();
    if (v50 && (v51 = sub_1C6F78124(v49, v48), (v52 & 1) != 0))
    {
      v53 = (*(v76 + 56) + 16 * v51);
      v55 = *v53;
      v54 = v53[1];
      sub_1C75504FC();
    }

    else
    {
      v55 = 0;
      v54 = 0xE000000000000000;
    }

    if (*(v18 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v56 = sub_1C7551FAC();
      v57 = ~(-1 << *(v18 + 32));
      while (1)
      {
        v58 = v56 & v57;
        if (((*(v18 + 56 + (((v56 & v57) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v56 & v57)) & 1) == 0)
        {
          break;
        }

        v59 = (*(v18 + 48) + 16 * v58);
        if (*v59 != v55 || v59[1] != v54)
        {
          v61 = sub_1C7551DBC();
          v56 = v58 + 1;
          if ((v61 & 1) == 0)
          {
            continue;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C6F7ED9C();
          v12 = v82;
        }

        v64 = *(v12 + 16);
        v63 = *(v12 + 24);
        if (v64 >= v63 >> 1)
        {
          OUTLINED_FUNCTION_15(v63);
          sub_1C6F7ED9C();
          v12 = v82;
        }

        *(v12 + 16) = v64 + 1;
        v65 = v12 + 16 * v64;
        *(v65 + 32) = v49;
        *(v65 + 40) = v48;
        goto LABEL_22;
      }
    }
  }

  if (qword_1EDD0F3C0 != -1)
  {
    goto LABEL_55;
  }

LABEL_44:
  v66 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v66, qword_1EDD28DB0);
  OUTLINED_FUNCTION_129_0();
  swift_retain_n();
  sub_1C75504FC();
  sub_1C75504FC();
  v67 = sub_1C754FEEC();
  v68 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 134219008;
    *(v69 + 4) = a3;
    *(v69 + 12) = 2048;
    *(v69 + 14) = [objc_opt_self() queryPeopleRequiredInRetrievalMomentLimit];
    *(v69 + 22) = 2048;
    *(v69 + 24) = *(v73 + 16);

    *(v69 + 32) = 2048;
    v70 = *(v18 + 16);

    *(v69 + 34) = v70;

    *(v69 + 42) = 2048;
    v71 = *(v12 + 16);

    *(v69 + 44) = v71;

    _os_log_impl(&dword_1C6F5C000, v67, v68, "Selecting assets in moments that match people. Requiring %ld people. Default limit %ld people, prompt contains %ld people. Found %ld moments and %ld assets", v69, 0x34u);
    OUTLINED_FUNCTION_109();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_129_0();
  }

  return v12;
}

BOOL static QueryGenerator.allPeopleMatch(ageTypes:for:in:)(uint64_t a1, uint64_t a2, id a3)
{
  v6 = [a3 librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD100F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_1C736F4A8(a2, ObjCClassFromMetadata);
  if (v8)
  {
    v9 = v8;
    v10 = objc_opt_self();
    sub_1C71CD85C(v9);
    v11 = sub_1C7550B3C();

    v3 = [v10 fetchPersonsWithLocalIdentifiers:v11 options:v6];

    v12 = [v3 fetchedObjects];
    if (v12)
    {
      v40 = v6;
      v13 = sub_1C7550B5C();

      v14 = sub_1C6FB6304();
      v15 = 0;
      v16 = v13 & 0xC000000000000001;
      v17 = v13 & 0xFFFFFFFFFFFFFF8;
      v41 = v13;
      v18 = v13 + 32;
      v3 = &selRef_addingKeyAssetForObject_toAssets_options_;
      v39 = v18;
LABEL_4:
      if (v15 == v14)
      {

        return v15 == v14;
      }

      if (v16)
      {
        v19 = MEMORY[0x1CCA5DDD0](v15, v41);
      }

      else
      {
        if (v15 >= *(v17 + 16))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v19 = *(v18 + 8 * v15);
      }

      v20 = v15 + 1;
      if (!__OFADD__(v15, 1))
      {
        v42 = v15;
        v21 = v16;
        v6 = &selRef_addingKeyAssetForObject_toAssets_options_;
        v22 = v19;
        v23 = [v19 ageType];
        if (*(a1 + 16))
        {
          v24 = v23;
          sub_1C7551F3C();
          sub_1C7551F6C();
          v25 = sub_1C7551FAC();
          v26 = ~(-1 << *(a1 + 32));
          while (1)
          {
            v27 = v25 & v26;
            if (((*(a1 + 56 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
            {
              break;
            }

            v25 = v27 + 1;
            if (*(*(a1 + 48) + 2 * v27) == v24)
            {

              v15 = v20;
              v16 = v21;
              v18 = v39;
              goto LABEL_4;
            }
          }
        }

        v15 = v42;
        return v15 == v14;
      }

      goto LABEL_23;
    }
  }

  if (qword_1EDD0F3C0 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_9_58();
  }

  v28 = sub_1C754FF1C();
  __swift_project_value_buffer(v28, qword_1EDD28DB0);
  OUTLINED_FUNCTION_312_1();
  sub_1C75504FC();
  v29 = sub_1C754FEEC();
  v30 = sub_1C755119C();

  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_41_0();
    v43[0] = OUTLINED_FUNCTION_31_0();
    *v3 = 136315138;
    v31 = sub_1C7550F9C();
    v33 = sub_1C6F765A4(v31, v32, v43);

    *(v3 + 4) = v33;
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_282_1(v34, v35, v36, v37);
    OUTLINED_FUNCTION_33_26();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_37();
  }

  return 0;
}

BOOL sub_1C736D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = *(sub_1C72B8CBC(a4, a3) + 16);

  return v6 > 1;
}

uint64_t sub_1C736D484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 16) == 1)
  {

    v10 = *(sub_1C72B8CBC(a4, a3) + 16);

    if (v10)
    {
      v11 = sub_1C7009C30(a5, a6, a3) ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_1C736D510(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = 0;
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = *a1 + 40;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v9 + 16 * v6); ; i += 2)
  {
    if (v8 == v6)
    {
      *a3 = sub_1C706D154(v10);
      return;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    if (*(a2 + 16))
    {
      v12 = *(i - 1);
      v13 = *i;
      sub_1C75504FC();
      v14 = sub_1C6F78124(v12, v13);
      if (v15)
      {
        v23 = v9;
        v24 = v4;
        v16 = (*(a2 + 56) + 16 * v14);
        v17 = *v16;
        v18 = v16[1];
        sub_1C75504FC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v10 = v21;
        }

        v19 = *(v10 + 16);
        if (v19 >= *(v10 + 24) >> 1)
        {
          sub_1C6FB1814();
          v10 = v22;
        }

        ++v6;
        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v18;
        v9 = v23;
        v4 = v24;
        goto LABEL_2;
      }
    }

    ++v6;
  }

  __break(1u);
}

void sub_1C736D66C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D574(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C736DAC4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C736D74C(0, v3, 1, a1);
  }
}

void sub_1C736D74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v47 - v16;
  v48 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *a4;
  v18 = (v15 + 32);
  v54 = (v15 + 8);
  v58 = v17;
  v19 = v17 + 8 * a3 - 8;
  v20 = a1 - a3;
  while (2)
  {
    v50 = v19;
    v51 = a3;
    v21 = *(v58 + 8 * a3);
    v49 = v20;
    while (1)
    {
      v22 = *v19;
      v23 = v21;
      v24 = v22;
      v25 = [v23 startDate];
      if (v25)
      {
        v26 = v25;
        v27 = v55;
        sub_1C754DF2C();

        v28 = *v18;
        (*v18)(v59, v27, v8);
        v29 = [v24 startDate];
        if (v29)
        {
          v30 = v29;
          v57 = v24;
          v31 = v53;
          sub_1C754DF2C();

          v32 = v8;
          v33 = v52;
          v28(v52, v31, v32);
          v34 = v59;
          v56 = sub_1C754DF4C();
          v35 = *v54;
          v36 = v33;
          v8 = v32;
          (*v54)(v36, v32);
          v35(v34, v32);

          if (v56 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_16;
        }

        (*v54)(v59, v8);
      }

      v37 = sub_1C70CAC04(v23);
      if (!v38)
      {
        goto LABEL_25;
      }

      v39 = v37;
      v40 = v38;
      v41 = sub_1C70CAC04(v24);
      if (!v42)
      {
        goto LABEL_24;
      }

      if (v41 == v39 && v42 == v40)
      {
        break;
      }

      v44 = sub_1C7551DBC();

      if ((v44 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_16:
      if (!v58)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v45 = *v19;
      v21 = *(v19 + 8);
      *v19 = v21;
      *(v19 + 8) = v45;
      v19 -= 8;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_21;
      }
    }

LABEL_21:
    a3 = v51 + 1;
    v19 = v50 + 8;
    v20 = v49 - 1;
    if (v51 + 1 != v48)
    {
      continue;
    }

    break;
  }
}

void sub_1C736DAC4(void ***a1, uint64_t a2, id **a3, uint64_t a4)
{
  v5 = v4;
  v156 = a1;
  v8 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v8);
  v168 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v167 = &v153 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v170 = &v153 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v153 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v158 = &v153 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v157 = &v153 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v161 = &v153 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v165 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_120:
    v176 = *v156;
    if (!v176)
    {
      goto LABEL_166;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_122:
      v145 = v28 + 16;
      v146 = *(v28 + 2);
      while (v146 >= 2)
      {
        if (!*v165)
        {
          goto LABEL_163;
        }

        v147 = v28;
        v148 = &v28[16 * v146];
        v149 = *v148;
        v150 = &v145[2 * v146];
        v151 = *(v150 + 1);
        sub_1C736E65C(&(*v165)[*v148], &(*v165)[*v150], &(*v165)[v151], v176);
        if (v5)
        {
          break;
        }

        if (v151 < v149)
        {
          goto LABEL_147;
        }

        if (v146 - 2 >= *v145)
        {
          goto LABEL_148;
        }

        *v148 = v149;
        *(v148 + 1) = v151;
        v152 = *v145 - v146;
        if (*v145 < v146)
        {
          goto LABEL_149;
        }

        v146 = *v145 - 1;
        sub_1C7423CF4(v150 + 16, v152, v150);
        *v145 = v146;
        v28 = v147;
      }

LABEL_130:

      return;
    }

LABEL_156:
    v28 = sub_1C7420830();
    goto LABEL_122;
  }

  v160 = &v153 - v25;
  v154 = a4;
  v27 = 0;
  v173 = (v24 + 32);
  v171 = (v24 + 8);
  v28 = MEMORY[0x1E69E7CC0];
  v172 = v8;
  v169 = v16;
LABEL_3:
  v159 = v27;
  if (v27 + 1 >= v26)
  {
    v35 = v27 + 1;
    goto LABEL_33;
  }

  v166 = v26;
  v29 = *v165;
  v178 = (*v165)[v27 + 1];
  v177 = v29[v27];
  v30 = v177;
  v31 = v178;
  v32 = v30;
  LODWORD(v164) = sub_1C73664E4(&v178, &v177);
  if (v5)
  {

    return;
  }

  v33 = (v27 + 1);
  v155 = v28;

  v176 = (8 * v27);
  for (i = &v29[v27 + 2]; ; ++i)
  {
    v35 = v166;
    if ((v33 + 1) >= v166)
    {
      break;
    }

    v36 = *(i - 1);
    v37 = *i;
    v38 = v36;
    v39 = [v37 startDate];
    if (v39)
    {
      v40 = v39;
      v174 = i;
      v175 = v33;
      v41 = v161;
      sub_1C754DF2C();

      v42 = *v173;
      v43 = v160;
      (*v173)(v160, v41, v8);
      v44 = [v38 startDate];
      if (v44)
      {
        v45 = v44;
        v46 = v158;
        sub_1C754DF2C();

        v47 = v5;
        v48 = v157;
        v42(v157, v46, v8);
        v49 = sub_1C754DF4C();
        v50 = *v171;
        v51 = v48;
        v5 = v47;
        (*v171)(v51, v8);
        v50(v43, v8);

        v52 = v49 == 1;
        i = v174;
        v33 = v175;
        goto LABEL_18;
      }

      (*v171)(v43, v8);
      i = v174;
      v33 = v175;
    }

    v53 = sub_1C70CAC04(v37);
    if (!v54)
    {
      goto LABEL_161;
    }

    v55 = v53;
    v56 = v54;
    v57 = sub_1C70CAC04(v38);
    if (!v58)
    {
      goto LABEL_162;
    }

    if (v57 == v55 && v58 == v56)
    {

      v8 = v172;
      if (v164)
      {
        v35 = (v33 + 1);
        v28 = v155;
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    v52 = sub_1C7551DBC();

    v8 = v172;
LABEL_18:
    if ((v164 ^ v52))
    {
      v35 = (v33 + 1);
      break;
    }

LABEL_21:
    ++v33;
  }

  v28 = v155;
  if ((v164 & 1) == 0)
  {
    v16 = v169;
    goto LABEL_33;
  }

LABEL_26:
  v60 = v159;
  v16 = v169;
  if (v35 < v159)
  {
    goto LABEL_153;
  }

  if (v159 < v35)
  {
    v61 = 8 * v35 - 8;
    v62 = v35;
    do
    {
      if (v60 != --v62)
      {
        v63 = *v165;
        if (!*v165)
        {
          goto LABEL_164;
        }

        v64 = *(v176 + v63);
        *(v176 + v63) = *(v63 + v61);
        *(v63 + v61) = v64;
      }

      ++v60;
      v61 -= 8;
      ++v176;
    }

    while (v60 < v62);
  }

LABEL_33:
  v65 = v165[1];
  if (v35 >= v65)
  {
    goto LABEL_43;
  }

  if (__OFSUB__(v35, v159))
  {
    goto LABEL_152;
  }

  if (v35 - v159 >= v154)
  {
LABEL_43:
    v68 = v35;
    goto LABEL_44;
  }

  if (__OFADD__(v159, v154))
  {
    goto LABEL_154;
  }

  if (v159 + v154 >= v65)
  {
    v66 = v165[1];
  }

  else
  {
    v66 = v159 + v154;
  }

  if (v66 < v159)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v67 = v159;
  if (v35 == v66)
  {
    v68 = v35;
    goto LABEL_45;
  }

  v155 = v28;
  v153 = v5;
  v174 = *v165;
  v114 = &v174[v35 - 1];
  v115 = v159 - v35;
  v162 = v66;
  while (2)
  {
    v166 = v35;
    v116 = v174[v35];
    v163 = v115;
    v164 = v114;
LABEL_97:
    v117 = *v114;
    v118 = v116;
    v119 = v117;
    v120 = [v118 startDate];
    if (v120)
    {
      v121 = v120;
      v175 = v118;
      v122 = v8;
      v123 = v170;
      sub_1C754DF2C();

      v124 = *v173;
      (*v173)(v16, v123, v122);
      v176 = v119;
      v125 = [v119 startDate];
      if (v125)
      {
        v126 = v125;
        v127 = v168;
        sub_1C754DF2C();

        v128 = v167;
        v129 = v127;
        v16 = v169;
        v124(v167, v129, v122);
        v130 = sub_1C754DF4C();
        v131 = *v171;
        v132 = v128;
        v8 = v122;
        (*v171)(v132, v122);
        v131(v16, v122);

        if (v130 != 1)
        {
          goto LABEL_114;
        }

        goto LABEL_109;
      }

      (*v171)(v16, v122);
      v118 = v175;
      v119 = v176;
    }

    v133 = sub_1C70CAC04(v118);
    if (!v134)
    {
      goto LABEL_158;
    }

    v135 = v133;
    v136 = v134;
    v137 = sub_1C70CAC04(v119);
    if (!v138)
    {
      goto LABEL_159;
    }

    if (v137 == v135 && v138 == v136)
    {

      v8 = v172;
LABEL_114:
      v35 = v166 + 1;
      v114 = v164 + 8;
      v115 = v163 - 1;
      v68 = v162;
      if (v166 + 1 != v162)
      {
        continue;
      }

      v5 = v153;
      v28 = v155;
LABEL_44:
      v67 = v159;
LABEL_45:
      if (v68 < v67)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v28 = v143;
      }

      v70 = *(v28 + 2);
      v69 = *(v28 + 3);
      v71 = v70 + 1;
      v162 = v68;
      if (v70 >= v69 >> 1)
      {
        sub_1C6FB17EC();
        v28 = v144;
      }

      *(v28 + 2) = v71;
      v72 = v28 + 32;
      v73 = &v28[16 * v70 + 32];
      v74 = v162;
      *v73 = v159;
      *(v73 + 1) = v74;
      v176 = *v156;
      if (!v176)
      {
        goto LABEL_165;
      }

      if (!v70)
      {
LABEL_116:
        v26 = v165[1];
        v27 = v162;
        if (v162 >= v26)
        {
          goto LABEL_120;
        }

        goto LABEL_3;
      }

      while (1)
      {
        v75 = v8;
        v76 = v71 - 1;
        v77 = &v72[16 * v71 - 16];
        v78 = &v28[16 * v71];
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v79 = *(v28 + 4);
          v80 = *(v28 + 5);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_65:
          if (v82)
          {
            goto LABEL_138;
          }

          v94 = *v78;
          v93 = *(v78 + 1);
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_141;
          }

          v98 = *(v77 + 1);
          v99 = v98 - *v77;
          if (__OFSUB__(v98, *v77))
          {
            goto LABEL_144;
          }

          if (__OFADD__(v96, v99))
          {
            goto LABEL_146;
          }

          if (v96 + v99 >= v81)
          {
            if (v81 < v99)
            {
              v76 = v71 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        if (v71 < 2)
        {
          goto LABEL_140;
        }

        v101 = *v78;
        v100 = *(v78 + 1);
        v89 = __OFSUB__(v100, v101);
        v96 = v100 - v101;
        v97 = v89;
LABEL_80:
        if (v97)
        {
          goto LABEL_143;
        }

        v103 = *v77;
        v102 = *(v77 + 1);
        v89 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v89)
        {
          goto LABEL_145;
        }

        if (v104 < v96)
        {
          v8 = v75;
          goto LABEL_116;
        }

LABEL_87:
        if (v76 - 1 >= v71)
        {
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*v165)
        {
          goto LABEL_160;
        }

        v108 = v28;
        v109 = &v72[16 * v76 - 16];
        v110 = *v109;
        v111 = &v72[16 * v76];
        v112 = *(v111 + 1);
        sub_1C736E65C(&(*v165)[*v109], &(*v165)[*v111], &(*v165)[v112], v176);
        if (v5)
        {
          goto LABEL_130;
        }

        if (v112 < v110)
        {
          goto LABEL_133;
        }

        v5 = *(v108 + 2);
        if (v76 > v5)
        {
          goto LABEL_134;
        }

        *v109 = v110;
        *(v109 + 1) = v112;
        if (v76 >= v5)
        {
          goto LABEL_135;
        }

        v71 = v5 - 1;
        sub_1C7423CF4(v111 + 16, v5 - 1 - v76, &v72[16 * v76]);
        v28 = v108;
        *(v108 + 2) = v5 - 1;
        v113 = v5 > 2;
        v5 = 0;
        v8 = v172;
        v16 = v169;
        if (!v113)
        {
          goto LABEL_116;
        }
      }

      v83 = &v72[16 * v71];
      v84 = *(v83 - 8);
      v85 = *(v83 - 7);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_136;
      }

      v88 = *(v83 - 6);
      v87 = *(v83 - 5);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_137;
      }

      v90 = *(v78 + 1);
      v91 = v90 - *v78;
      if (__OFSUB__(v90, *v78))
      {
        goto LABEL_139;
      }

      v89 = __OFADD__(v81, v91);
      v92 = v81 + v91;
      if (v89)
      {
        goto LABEL_142;
      }

      if (v92 >= v86)
      {
        v106 = *v77;
        v105 = *(v77 + 1);
        v89 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v89)
        {
          goto LABEL_150;
        }

        if (v81 < v107)
        {
          v76 = v71 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_65;
    }

    break;
  }

  v140 = sub_1C7551DBC();

  v8 = v172;
  if ((v140 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_109:
  if (v174)
  {
    v141 = *v114;
    v116 = *(v114 + 8);
    *v114 = v116;
    *(v114 + 8) = v141;
    v114 -= 8;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_114;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
}

uint64_t sub_1C736E65C(void **a1, id *a2, id *a3, void **a4)
{
  v101 = a4;
  v99 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v99);
  v90 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v88 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v92 = (&v88 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v22 = a2 - a1;
  v100 = (v23 + 32);
  v98 = (v23 + 8);
  v24 = a3 - a2;
  if (v22 < v24)
  {
    v93 = &v88 - v20;
    v25 = v101;
    sub_1C7423CF8(a1);
    v26 = &v25[v22];
    for (i = a3; ; a3 = i)
    {
      if (v101 >= v26 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_54;
      }

      v28 = *v101;
      v29 = *a2;
      v30 = v28;
      v31 = [v29 startDate];
      if (v31)
      {
        v32 = v31;
        v97 = v29;
        v33 = v30;
        v34 = v94;
        sub_1C754DF2C();

        v35 = v99;
        v36 = *v100;
        v37 = v93;
        v38 = v34;
        v30 = v33;
        (*v100)(v93, v38, v99);
        v39 = [v33 startDate];
        if (v39)
        {
          v40 = v39;
          v41 = v92;
          sub_1C754DF2C();

          v95 = v30;
          v42 = a2;
          v43 = v91;
          v36(v91, v41, v35);
          v44 = sub_1C754DF4C();
          v45 = *v98;
          v46 = v43;
          a2 = v42;
          (*v98)(v46, v35);
          v45(v37, v35);

          if (v44 != 1)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        (*v98)(v37, v35);
        v29 = v97;
      }

      v47 = a1;
      result = sub_1C70CAC04(v29);
      if (!v49)
      {
        goto LABEL_63;
      }

      v50 = result;
      v51 = v49;
      result = sub_1C70CAC04(v30);
      if (!v52)
      {
        goto LABEL_62;
      }

      v53 = result == v50 && v52 == v51;
      if (v53)
      {

        a1 = v47;
LABEL_23:
        v55 = v101++;
        if (a1 == v55)
        {
          goto LABEL_25;
        }

LABEL_24:
        *a1 = *v55;
        goto LABEL_25;
      }

      v54 = sub_1C7551DBC();

      a1 = v47;
      if ((v54 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      v55 = a2;
      v53 = a1 == a2++;
      if (!v53)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++a1;
    }
  }

  v91 = v21;
  v56 = v101;
  sub_1C7423CF8(a2);
  v26 = &v56[v24];
  v95 = a1;
LABEL_27:
  v57 = a2 - 1;
  v58 = a3 - 1;
  i = a2 - 1;
  v92 = a2;
  while (v26 > v101 && a2 > a1)
  {
    v60 = v26 - 1;
    v61 = *v57;
    v62 = *(v26 - 1);
    v63 = v61;
    v64 = [v62 startDate];
    if (v64)
    {
      v65 = v64;
      v97 = v26;
      v66 = v100;
      v67 = v93;
      sub_1C754DF2C();

      v68 = *v66;
      v69 = v63;
      v70 = v91;
      v71 = v67;
      v72 = v99;
      (*v66)(v91, v71, v99);
      v73 = [v69 startDate];
      if (v73)
      {
        v74 = v73;
        v94 = v69;
        v75 = v58;
        v76 = v90;
        sub_1C754DF2C();

        v77 = v89;
        v68(v89, v76, v72);
        v78 = sub_1C754DF4C();
        v79 = *v98;
        (*v98)(v77, v72);
        v79(v70, v72);

        v53 = v78 == 1;
        v26 = v97;
        a2 = v92;
        if (v53)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      (*v98)(v70, v72);
      v26 = v97;
      a2 = v92;
      v63 = v69;
    }

    v75 = v58;
    result = sub_1C70CAC04(v62);
    if (!v80)
    {
      goto LABEL_64;
    }

    v81 = result;
    v82 = v80;
    result = sub_1C70CAC04(v63);
    if (!v83)
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    if (result == v81 && v83 == v82)
    {
    }

    else
    {
      v85 = sub_1C7551DBC();

      if (v85)
      {
LABEL_51:
        a3 = v75;
        v53 = v75 + 1 == a2;
        a1 = v95;
        a2 = i;
        if (!v53)
        {
          *v75 = *i;
        }

        goto LABEL_27;
      }
    }

LABEL_48:
    a1 = v95;
    if (v26 != v75 + 1)
    {
      *v75 = *v60;
    }

    v58 = v75 - 1;
    v26 = v60;
    v57 = i;
  }

LABEL_54:
  v86 = v26 - v101;
  if (a2 != v101 || a2 >= &v101[v86])
  {
    memmove(a2, v101, 8 * v86);
  }

  return 1;
}

uint64_t sub_1C736ED5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD30);
  result = sub_1C7551AEC();
  v5 = result;
  v6 = 0;
  v26 = a1;
  v27 = result;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v25 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v26 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v30 = *(*(v26 + 56) + 8 * v17);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C736D510(&v30, a2, &v29);
      if (v2)
      {
        break;
      }

      *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v5 = v27;
      v21 = (v27[6] + 16 * v17);
      *v21 = v19;
      v21[1] = v20;
      *(v27[7] + 8 * v17) = v29;
      v22 = v27[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v27[2] = v24;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v5 = v27;

    return v5;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {

        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

void *sub_1C736EF38(uint64_t a1, void *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_1C7285C54(v10, v6, v4, a2);
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v6, v7);
  sub_1C7285AD4(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

void *sub_1C736F0A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), void *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1C736F3A0(v12, v8, v6, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v8, v9);
  sub_1C736F22C(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

void sub_1C736F22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);
    sub_1C75504FC();
    sub_1C75504FC();
    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7484B68();
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C736F3A0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C736F22C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C736F444(void *a1)
{
  v1 = [a1 subtitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

uint64_t sub_1C736F4A8(uint64_t a1, void *a2)
{
  v3 = sub_1C7550F7C();
  v4 = [a2 localIdentifiersWithUUIDs_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1C7550F8C();

  return v5;
}

uint64_t sub_1C736F53C(uint64_t a1, uint64_t a2)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  (*(*(TokenSuggestion - 8) + 32))(a2, a1, TokenSuggestion);
  return a2;
}

uint64_t sub_1C736F5A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C73D9134(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1C736F5E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C736F638(uint64_t a1, uint64_t a2)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  (*(*(TokenSuggestion - 8) + 40))(a2, a1, TokenSuggestion);
  return a2;
}

uint64_t OUTLINED_FUNCTION_63_20()
{

  return sub_1C75504FC();
}

id OUTLINED_FUNCTION_75_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C7164AD8(a1, a2, a3, 0, 0);
}

void OUTLINED_FUNCTION_81_18()
{

  sub_1C6FB20F8();
}

void OUTLINED_FUNCTION_101_14()
{

  sub_1C716D7D8();
}

void *OUTLINED_FUNCTION_102_12()
{
  *(v0 + 16) = v1;

  return memcpy((v0 + v3 * v2 + 32), (v4 - 208), 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_103_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return sub_1C7364090(&a26, v28, v27, v26, &a11);
}

uint64_t OUTLINED_FUNCTION_107_10()
{

  return sub_1C6FCA6E4(v1 - 216, v0 + 320);
}

uint64_t OUTLINED_FUNCTION_109_12()
{
}

uint64_t OUTLINED_FUNCTION_110_9()
{
}

uint64_t OUTLINED_FUNCTION_130_6(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  *(result + 12) = 2048;
  return result;
}

void OUTLINED_FUNCTION_131_5()
{
  *(v0 + 520) = 257;
  *(v0 + 528) = 0;
  *(v0 + 536) = 0;
}

uint64_t OUTLINED_FUNCTION_132_8()
{
}

uint64_t OUTLINED_FUNCTION_133_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[72] = a3;
  v3[71] = a2;
  v3[70] = a1;

  return sub_1C754F38C();
}

uint64_t OUTLINED_FUNCTION_134_10()
{

  return sub_1C754F1CC();
}

void *OUTLINED_FUNCTION_138_5(void *a1)
{

  return memcpy(a1, v1, 0x78uLL);
}

void OUTLINED_FUNCTION_139_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_140_7(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

void *OUTLINED_FUNCTION_141_7(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char __src)
{

  return memcpy(a1, &__src, 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_142_3()
{

  return sub_1C6FCA6E4(v0 + 16, v0 + 136);
}

double static LLMConfigurationProvider.configuration(for:logger:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v4 = 1701736302;
  *&v49 = sub_1C754FA7C();
  OUTLINED_FUNCTION_3_0();
  v47 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  *&v57[0] = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  v16 = *a1;
  LOBYTE(v62) = byte_1C75853B2[v16];
  v17 = v62;
  static LLMConfiguration.locale(for:)(&v62);
  LOBYTE(v62) = v16;
  v43 = static LLMConfiguration.modelCatalogResourceID(for:)(&v62);
  *(&v49 + 1) = v18;
  v25 = 0xE400000000000000;
  switch(v17)
  {
    case 2:
      if ([objc_opt_self() useGlobalTraitsV3])
      {
        v4 = 0xD000000000000025;
        v25 = 0x80000001C75ABBC0;
      }

      else
      {
        OUTLINED_FUNCTION_5_80();
        v4 = v40 + 22;
      }

      break;
    case 3:
      OUTLINED_FUNCTION_5_80();
      v4 = v38 + 20;
      break;
    case 4:
      OUTLINED_FUNCTION_5_80();
      v4 = v39 + 23;
      break;
    default:
      break;
  }

  v45 = v4;
  v26 = byte_1C75853C6[v16];
  BYTE8(v57[0]) = v16;
  static LLMConfiguration.samplingParameters(for:)(v57 + 8, v18, v19, v20, v21, v22, v23, v24, v41, v43, v45, v47, v49, a2, v54, v57[0], v57[1], v58, v59, v60, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), *&v64[0], *(&v64[0] + 1), *&v64[1], *(&v64[1] + 1), v65, v66, v67[0], v67[1], v67[2]);
  v28 = v27;
  type metadata accessor for LLMWrapperUtils();
  HIBYTE(v67[0]) = v26;
  static LLMWrapperUtils.samplingParameters(for:parameters:)(v67 + 7, v28, v57 + 8);

  static LLMWrapperUtils.samplingParametersWithRandomSeedIfNotSet(from:logger:)(v57 + 1, &v62);
  BYTE8(v57[0]) = v16;
  static LLMConfiguration.promptTemplate(for:)(v57 + 8);
  if (v55)
  {
    (*(v11 + 8))(v15, *&v57[0]);
  }

  else
  {
    BYTE8(v57[0]) = v16;
    v30 = static LLMConfiguration.promptTemplateID(for:)(v57 + 8);
    v53 = v31;
    v56 = v30;
    v32 = type metadata accessor for LLMConfiguration(0);
    (*(v48 + 32))(&v42[v32[6]], v9, v50);
    (*(v11 + 32))(&v42[v32[11]], v15, *&v57[0]);
    *v42 = v16;
    v42[1] = v17;
    v33 = &v42[v32[7]];
    *v33 = v56;
    v33[1] = v53;
    v34 = &v42[v32[8]];
    *v34 = v44;
    v34[1] = v51;
    v35 = &v42[v32[9]];
    *v35 = v46;
    v35[1] = v25;
    v36 = &v42[v32[10]];
    v37 = v63;
    *v36 = v62;
    v36[1] = v37;
    v36[2] = v64[0];
    result = *(v64 + 9);
    *(v36 + 41) = *(v64 + 9);
  }

  return result;
}

uint64_t LLMConfiguration.description.getter()
{
  v1 = sub_1C754FA7C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x79546C65646F6D09, 0xEC000000203A6570);
  LLMModelType.description.getter();
  MEMORY[0x1CCA5CD70](v8);

  MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C75AC530);
  v9 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v9);

  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A4E10);
  v10 = type metadata accessor for LLMConfiguration(0);
  (*(v3 + 16))(v7, v0 + v10[6], v1);
  v11 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75AC550);
  v12 = OUTLINED_FUNCTION_16_58(v10[7]);
  MEMORY[0x1CCA5CD70](v12);
  MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C75AC570);
  v13 = OUTLINED_FUNCTION_16_58(v10[8]);
  MEMORY[0x1CCA5CD70](v13);
  MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75AC590);
  v14 = OUTLINED_FUNCTION_16_58(v10[9]);
  MEMORY[0x1CCA5CD70](v14);
  MEMORY[0x1CCA5CD70](0x636F6C202020200ALL, 0xED0000203A656C61);
  v15 = sub_1C754E04C();
  MEMORY[0x1CCA5CD70](v15);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75AC5B0);
  sub_1C75519EC();
  return 0;
}

unint64_t static LLMConfiguration.pegasusModelName(for:)(_BYTE *a1)
{
  result = 1701736302;
  switch(*a1)
  {
    case 2:
      if ([objc_opt_self() useGlobalTraitsV3])
      {
        result = 0xD000000000000025;
      }

      else
      {
        result = 0xD00000000000003BLL;
      }

      break;
    case 3:
      result = 0xD000000000000039;
      break;
    case 4:
      result = 0xD00000000000003CLL;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1C73700E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEC0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEC8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C7576D70;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  *(v3 + v2) = 16;
  if (qword_1EDD07A60 != -1)
  {
    swift_once();
  }

  v6 = sub_1C754FDEC();
  v7 = __swift_project_value_buffer(v6, qword_1EDD289A8);
  v8 = *(*(v6 - 8) + 16);
  v8(v4 + v5, v7, v6);
  v9 = *(v0 + 48);
  *(v4 + v1) = 14;
  v10 = objc_opt_self();
  if ([v10 useGlobalTraitsV3])
  {
    if (qword_1EDD07CD8 != -1)
    {
      OUTLINED_FUNCTION_4_87();
    }

    v11 = __swift_project_value_buffer(v6, qword_1EDD289F0);
    v8(v4 + v1 + v9, v11, v6);
  }

  else
  {
    sub_1C7550BCC();
  }

  v12 = (v4 + 2 * v1);
  v13 = *(v0 + 48);
  *v12 = 17;
  if ([v10 useGlobalTraitsV3])
  {
    if (qword_1EDD07CD8 != -1)
    {
      OUTLINED_FUNCTION_4_87();
    }

    v14 = __swift_project_value_buffer(v6, qword_1EDD289F0);
    v8(&v12[v13], v14, v6);
  }

  else
  {
    sub_1C7550BCC();
  }

  v15 = OUTLINED_FUNCTION_11_64((v4 + 3 * v1));
  (v8)(v15);
  v16 = OUTLINED_FUNCTION_11_64((v4 + 4 * v1));
  (v8)(v16);
  *(v4 + 5 * v1) = 13;
  sub_1C7550BCC();
  *(v4 + 6 * v1) = 19;
  sub_1C7550BCC();
  *(v4 - v1 + 8 * v1) = 18;
  sub_1C75507BC();
  sub_1C70AEC20();
  result = sub_1C75504DC();
  off_1EC21AE90 = result;
  return result;
}

uint64_t static LLMConfiguration.responseSchemaByModelType.getter()
{
  if (qword_1EDD0B640 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t LLMConfiguration.promptTemplate.getter()
{
  v0 = OUTLINED_FUNCTION_422();
  type metadata accessor for LLMConfiguration(v0);
  sub_1C754FA7C();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_10_68();

  return v2(v1);
}

uint64_t LLMConfiguration.promptTemplateID.getter()
{
  type metadata accessor for LLMConfiguration(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t LLMConfiguration.modelCatalogResourceID.getter()
{
  type metadata accessor for LLMConfiguration(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t LLMConfiguration.pegasusModelName.getter()
{
  type metadata accessor for LLMConfiguration(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

__n128 LLMConfiguration.llmSamplingParameters.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = v1 + *(type metadata accessor for LLMConfiguration(v2) + 40);
  v4 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v4;
  *(v0 + 32) = *(v3 + 32);
  result = *(v3 + 41);
  *(v0 + 41) = result;
  return result;
}

uint64_t LLMConfiguration.locale.getter()
{
  v0 = OUTLINED_FUNCTION_422();
  type metadata accessor for LLMConfiguration(v0);
  sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_10_68();

  return v2(v1);
}

uint64_t LLMConfiguration.Error.errorDescription.getter()
{
  sub_1C755180C();

  LLMModelType.description.getter();
  MEMORY[0x1CCA5CD70]();

  MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C75AC5D0);
  return 0x206F742074736143;
}

unint64_t static LLMConfiguration.promptTemplateID(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 0xD000000000000035;
  switch(v1)
  {
    case 1:
    case 6:
    case 11:
    case 15:
      result = 0xD00000000000002ELL;
      break;
    case 2:
    case 8:
    case 13:
      result = 0xD00000000000002DLL;
      break;
    case 3:
    case 9:
    case 14:
      if ([objc_opt_self() useGlobalTraitsV3])
      {
        result = 0xD000000000000033;
      }

      else
      {
        result = 0xD00000000000002FLL;
      }

      break;
    case 12:
    case 16:
      return result;
    case 17:
      result = 0xD000000000000033;
      break;
    case 18:
      result = 0xD00000000000002BLL;
      break;
    case 19:
      result = 0xD000000000000034;
      break;
    default:
      result = 0xD00000000000001ELL;
      break;
  }

  return result;
}

uint64_t static LLMConfiguration.promptTemplate(for:)(unsigned __int8 *a1)
{
  v3 = sub_1C754E4FC();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = *a1;
  v17 = v10;
  static LLMConfiguration.modelCatalogResourceID(for:)(&v17);
  result = sub_1C754E4EC();
  if (!v1)
  {
    switch(v10)
    {
      case 1:
      case 6:
      case 11:
      case 15:
        goto LABEL_5;
      case 3:
      case 9:
      case 14:
        [objc_opt_self() useGlobalTraitsV3];
LABEL_5:
        v14 = OUTLINED_FUNCTION_0_152();
        v15(v14);
        sub_1C75504DC();
        break;
      default:
        v12 = OUTLINED_FUNCTION_0_152();
        v13(v12);
        sub_1C75504DC();
        OUTLINED_FUNCTION_2_103();
        break;
    }

    sub_1C754FA6C();
    return (*(v5 + 8))(v9, v3);
  }

  return result;
}

void static LLMConfiguration.samplingParameters(for:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  switch(*a1)
  {
    case 1:
    case 6:
      if (qword_1EDD0FC58 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28E20;
      break;
    case 2:
    case 8:
      if (qword_1EDD0FB28 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28E00;
      break;
    case 3:
    case 9:
      if (qword_1EDD0FC48 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28E10;
      break;
    case 4:
    case 7:
      if (qword_1EC214208 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B990;
      break;
    case 0xA:
      if (qword_1EC214200 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B988;
      break;
    case 0xB:
      if (qword_1EDD0FC50 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28E18;
      break;
    case 0xC:
    case 0x10:
      if (qword_1EC214210 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B998;
      break;
    case 0xD:
      if (qword_1EDD0FB20 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28DF8;
      break;
    case 0xE:
    case 0x11:
      if (qword_1EDD0FC40 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28E08;
      break;
    case 0xF:
      if (qword_1EC214218 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B9A0;
      break;
    case 0x12:
      if (qword_1EC214220 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B9A8;
      break;
    case 0x13:
      if (qword_1EC214228 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B9B0;
      break;
    default:
      if (qword_1EC2141F8 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B980;
      break;
  }

  v35 = *v34;

  sub_1C70C00AC(v35, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t static LLMConfiguration.locale(for:)(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219088);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE98);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  v11 = OUTLINED_FUNCTION_76(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35[-1] - v12;
  v14 = sub_1C754E01C();
  v15 = OUTLINED_FUNCTION_76(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v16 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_0();
  v22 = v21 - v20;
  switch(*a1)
  {
    case 1:
      v31 = objc_opt_self();
      v32 = &selRef_queryUnderstandingLocale;
      goto LABEL_9;
    case 2:
      v31 = objc_opt_self();
      v32 = &selRef_globalTraitsLocale;
      goto LABEL_9;
    case 3:
      v31 = objc_opt_self();
      v32 = &selRef_storytellerLocale;
      goto LABEL_9;
    case 4:
    case 6:
      v23 = objc_opt_self();
      sub_1C73715EC(v23, &selRef_assetCurationLocale);
      if (v24)
      {
        goto LABEL_10;
      }

      v25 = sub_1C754E5EC();
      v35[3] = v25;
      v35[4] = sub_1C7371A18(&qword_1EDD0F9B0, MEMORY[0x1E69BDD60]);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
      (*(*(v25 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E69BDD40], v25);
      LOBYTE(v25) = sub_1C754E3AC();
      __swift_destroy_boxed_opaque_existential_1(v35);
      if (v25)
      {
        goto LABEL_13;
      }

      sub_1C754E06C();
      v27 = sub_1C754E07C();
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v27);
      v28 = sub_1C754E0FC();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v28);
      sub_1C754E0DC();
      v29 = sub_1C754E0EC();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v29);
      sub_1C754E00C();
      result = sub_1C754E02C();
      break;
    case 5:
      v31 = objc_opt_self();
      v32 = &selRef_titleLocale;
LABEL_9:
      sub_1C73715EC(v31, v32);
      if (!v33)
      {
        goto LABEL_13;
      }

LABEL_10:

      result = sub_1C754E03C();
      break;
    default:
LABEL_13:
      sub_1C754E0AC();
      sub_1C754E04C();
      (*(v18 + 8))(v22, v16);
      result = sub_1C754E03C();
      break;
  }

  return result;
}

uint64_t LLMQUConfiguration.modelCatalogResourceBundleID.getter()
{
  v0 = OUTLINED_FUNCTION_422();
  type metadata accessor for LLMQUConfiguration(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEA0);
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_10_68();

  return v2(v1);
}

uint64_t LLMQUConfiguration.pegasusModelName.getter()
{
  type metadata accessor for LLMQUConfiguration(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t LLMQUConfiguration.description.getter()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000003CLL, 0x80000001C75AC6A0);
  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  MEMORY[0x1CCA5CD70](0xD000000000000023, 0x80000001C75AC6E0);
  v1 = type metadata accessor for LLMQUConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEA0);
  sub_1C7371668();
  v2 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75AC710);
  v3 = OUTLINED_FUNCTION_16_58(*(v1 + 24));
  MEMORY[0x1CCA5CD70](v3);
  return 0;
}

uint64_t sub_1C73715EC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1C755068C();
  }

  return OUTLINED_FUNCTION_90();
}

unint64_t sub_1C7371668()
{
  result = qword_1EDD0CB60;
  if (!qword_1EDD0CB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21AEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CB60);
  }

  return result;
}

unint64_t sub_1C73716D0()
{
  result = qword_1EC21AEA8;
  if (!qword_1EC21AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AEA8);
  }

  return result;
}

uint64_t sub_1C737174C()
{
  result = sub_1C754FA7C();
  if (v1 <= 0x3F)
  {
    result = sub_1C754E15C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMConfiguration.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

void sub_1C7371908()
{
  sub_1C7371984();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C7371984()
{
  if (!qword_1EDD100B0)
  {
    sub_1C754E51C();
    sub_1C7371A18(&qword_1EDD100A8, MEMORY[0x1E69B2540]);
    v0 = sub_1C754E50C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD100B0);
    }
  }
}

uint64_t sub_1C7371A18(unint64_t *a1, void (*a2)(uint64_t))
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

void static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)()
{
  OUTLINED_FUNCTION_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v87 = &v85 - v1;
  v91 = sub_1C73740C0();
  v3 = v2;
  v4 = sub_1C73740C0();
  v6 = v5;
  if (qword_1EDD0DBE0 != -1)
  {
    goto LABEL_85;
  }

LABEL_2:
  v7 = sub_1C754FF1C();
  v8 = __swift_project_value_buffer(v7, qword_1EDD28D28);
  sub_1C75504FC();
  sub_1C75504FC();
  v85 = v8;
  v9 = sub_1C754FEEC();
  v10 = sub_1C755117C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = v91;
    *(v11 + 4) = sub_1C6F765A4(v91, v3, &v101);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1C6F765A4(v4, v6, &v101);
    _os_log_impl(&dword_1C6F5C000, v9, v10, "Starting check to see if standardized string: “%s”, contains standardized key: “%s”", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v12 = v91;
  }

  v13 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v3) & 0xF;
  }

  v14 = 7;
  if (((v3 >> 60) & ((v12 & 0x800000000000000) == 0)) != 0)
  {
    v14 = 11;
  }

  v86 = v13;
  v88 = v14 | (v13 << 16);
  v89 = 4 * v13;
  v15 = 15;
  v90 = v6;
  v16 = v4;
  v17 = v12;
  while (1)
  {
    while (1)
    {
      if (v89 <= v15 >> 14 || (v101 = v17, v102 = v3, v92 = v4, v93 = v6, v18 = sub_1C754E15C(), v19 = v87, __swift_storeEnumTagSinglePayload(v87, 1, 1, v18), v83 = sub_1C6FB5E8C(), v84 = v83, v20 = &v101, v21 = sub_1C755157C(), v15 = v22, v24 = v23, sub_1C7374E0C(v19), (v24 & 1) != 0) || (v21 ^ v15) < 0x4000)
      {
        v59 = sub_1C754E5EC();
        v104 = v59;
        v105 = sub_1C70B881C();
        v60 = __swift_allocate_boxed_opaque_existential_0(&v101);
        (*(*(v59 - 8) + 104))(v60, *MEMORY[0x1E69BDD40], v59);
        LOBYTE(v59) = sub_1C754E3AC();
        __swift_destroy_boxed_opaque_existential_1(&v101);
        if (v59)
        {
          sub_1C7374D84();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AED8);
          v61 = OUTLINED_FUNCTION_11_2();
          *(v61 + 16) = xmmword_1C755BAB0;
          v62 = *MEMORY[0x1E69779C8];
          *(v61 + 32) = *MEMORY[0x1E69779C8];
          v62;
          v21 = sub_1C73734E0();
          v63 = sub_1C754FEEC();
          v64 = sub_1C755118C();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_1C6F5C000, v63, v64, "Starting NLTagger based token matching", v65, 2u);
            OUTLINED_FUNCTION_109();
          }

          v66 = MEMORY[0x1E69E7CC0];
          v100 = MEMORY[0x1E69E7CC0];
          sub_1C6F9EDB0(v4, v6, v21);
          MEMORY[0x1EEE9AC00](v67);
          *(&v85 - 4) = v4;
          *(&v85 - 3) = v6;
          v83 = &v100;
          OUTLINED_FUNCTION_12_65();
          if (*(v100 + 16))
          {
            v99 = 0;
            v97 = 0;
            v98 = 1;
            v94 = v66;
            v95 = 0;
            v96 = 1;
            v68 = v91;
            sub_1C6F9EDB0(v91, v3, v21);
            MEMORY[0x1EEE9AC00](v69);
            *(&v85 - 8) = v68;
            *(&v85 - 7) = v3;
            *(&v85 - 6) = &v94;
            *(&v85 - 5) = &v100;
            *(&v85 - 4) = &v99;
            *(&v85 - 3) = &v97;
            v83 = &v95;
            OUTLINED_FUNCTION_12_65();
            v20 = v97;
            LOBYTE(v25) = v98;
            if ((v98 & 1) == 0 && v96 != 1)
            {
              v70 = v91;
              goto LABEL_74;
            }

            if (sub_1C7374800(v4, v6, v94))
            {
              v70 = v91;
              v101 = v91;
              v102 = v3;
              v92 = v4;
              v93 = v6;
              v71 = sub_1C754E15C();
              v72 = v87;
              __swift_storeEnumTagSinglePayload(v87, 1, 1, v71);
              v83 = sub_1C6FB5E8C();
              v84 = v83;
              sub_1C755157C();
              v74 = v73;
              sub_1C7374E0C(v72);
              if (v74)
              {

LABEL_77:

                v76 = v70;
                goto LABEL_78;
              }

              v20 = sub_1C75508EC();
              v95 = sub_1C75508EC();
              v96 = 0;
              goto LABEL_74;
            }

LABEL_69:
            v70 = v91;
            if (v25 & 1) != 0 || (v96)
            {
LABEL_76:

              goto LABEL_77;
            }

LABEL_74:
            if (v95 < v20)
            {
              goto LABEL_88;
            }

            OUTLINED_FUNCTION_154();
            static StoryGenerationUtilities.indexRange(of:from:)();
            if ((v77 & 1) == 0)
            {
              v78 = sub_1C755098C();
              MEMORY[0x1CCA5CC40](v78);

              v79 = OUTLINED_FUNCTION_154();
              sub_1C737490C(v79, v80, v20);

              v81 = OUTLINED_FUNCTION_154();
              sub_1C73742BC(v81, v82, v4, v6);

              goto LABEL_79;
            }

            goto LABEL_76;
          }

          v76 = v91;
        }

        else
        {
          v76 = v17;
        }

LABEL_78:
        sub_1C73742BC(v76, v3, v4, v6);

        goto LABEL_79;
      }

      v25 = OUTLINED_FUNCTION_13_71();
      v26 = sub_1C75507FC();
      if (v26)
      {
        v27 = v26;
        if (v26 < 1)
        {
          v28 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218248);
          v28 = swift_allocObject();
          v29 = _swift_stdlib_malloc_size(v28);
          v28[2] = v27;
          v28[3] = 2 * ((v29 - 32) / 16);
        }

        v101 = v91;
        v102 = v3;
        v6 = v27 & ~(v27 >> 63);
        v103 = 0;
        v104 = v86;
        sub_1C75504FC();
        v4 = 32;
        while (v6)
        {
          v20 = &v101;
          v30 = sub_1C755088C();
          if (!v31)
          {
            goto LABEL_87;
          }

          v32 = (v28 + v4);
          *v32 = v30;
          v32[1] = v31;
          v4 += 16;
          --v6;
          if (!--v27)
          {

            v6 = v90;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

      v28 = MEMORY[0x1E69E7CC0];
LABEL_23:
      v4 = v25 - 1;
      if (__OFSUB__(v25, 1))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        OUTLINED_FUNCTION_2_104();
        goto LABEL_2;
      }

      v33 = sub_1C75507FC();
      v6 = v25 + v33;
      if (__OFADD__(v25, v33))
      {
        goto LABEL_82;
      }

      sub_1C707E67C();
      v35 = v34;
      sub_1C707E67C();
      v37 = v36;
      if ((v4 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v4 >= v28[2])
      {
        goto LABEL_84;
      }

      v38 = OUTLINED_FUNCTION_52_0();
      if ((sub_1C710D570(v38, v39) & 0x100000000) == 0)
      {
        OUTLINED_FUNCTION_7_75();
        v44 = !v43 & v42 || v41 > 0xFFFFD44F;
        if (v44 || (v40 - 12544) > 0xFFFFFF3F)
        {
          break;
        }
      }

      v45 = OUTLINED_FUNCTION_52_0();
      v47 = sub_1C710D570(v45, v46);
      if ((v47 & 0x100000000) == 0 && ((v47 - 1792) > 0xFFFFFE8F || (v47 - 1920) > 0xFFFFFFCF || (v47 - 2304) > 0xFFFFFF9F))
      {
        break;
      }

      v48 = OUTLINED_FUNCTION_52_0();
      v50 = sub_1C700A1A4(v48, v49, v35);

      v4 = v16;
      if (v50)
      {
        goto LABEL_40;
      }

      v6 = v90;
      v17 = v91;
    }

    v4 = v16;
LABEL_40:
    if (v6 >= v28[2])
    {
      break;
    }

    if (v6 < 0)
    {
      goto LABEL_83;
    }

    v51 = &v28[2 * v6];
    v52 = v51[4];
    v53 = v51[5];
    if ((sub_1C710D570(v52, v53) & 0x100000000) == 0)
    {
      OUTLINED_FUNCTION_7_75();
      v56 = !v43 & v42 || v55 > 0xFFFFD44F;
      if (v56 || (v54 - 12544) > 0xFFFFFF3F)
      {
        break;
      }
    }

    v57 = sub_1C710D570(v52, v53);
    if ((v57 & 0x100000000) == 0 && ((v57 - 1792) > 0xFFFFFE8F || (v57 - 1920) > 0xFFFFFFCF || (v57 - 2304) > 0xFFFFFF9F))
    {
      break;
    }

    v58 = sub_1C700A1A4(v52, v53, v37);

    v6 = v90;
    v17 = v91;
    if (v58)
    {
      goto LABEL_64;
    }
  }

  v6 = v90;
  v17 = v91;
LABEL_64:
  v75 = OUTLINED_FUNCTION_13_71();
  if (sub_1C75508EC() >= v75)
  {
    sub_1C73742BC(v17, v3, v4, v6);

LABEL_79:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  __break(1u);
LABEL_87:

  __break(1u);
LABEL_88:
  __break(1u);
}

unint64_t static StoryGenerationUtilities.indexRange(of:from:)()
{
  OUTLINED_FUNCTION_0_153();
  v0 = sub_1C755082C();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = sub_1C755082C();
  if ((v4 & 1) != 0 || v3 >> 14 < v2 >> 14)
  {
    return 0;
  }

  return v2;
}

void static StoryGenerationUtilities.lemmatize(text:languageIdentifier:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_0_153();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AED8);
  v2 = OUTLINED_FUNCTION_11_2();
  *(v2 + 16) = xmmword_1C755BAB0;
  v3 = *MEMORY[0x1E69779C0];
  *(v2 + 32) = *MEMORY[0x1E69779C0];
  v4 = objc_allocWithZone(MEMORY[0x1E6977A80]);
  type metadata accessor for NLTagScheme(0);
  v3;
  v5 = sub_1C7550B3C();

  v6 = [v4 initWithTagSchemes_];

  v7 = OUTLINED_FUNCTION_0_11();
  sub_1C6F9EDB0(v7, v8, v6);
  if (v1)
  {
    v10 = sub_1C755065C();
    v11 = sub_1C755068C();
    v13 = v12;
    if (v11 == sub_1C755068C() && v13 == v14)
    {
    }

    else
    {
      v16 = sub_1C7551DBC();

      if ((v16 & 1) == 0)
      {
        sub_1C755138C();
      }
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v9);
  sub_1C755139C();
  v17 = *(v20 + 16);
  if (v17)
  {
    sub_1C75504FC();
    v18 = v17 - 1;
    v19 = v20 + 32 * v17 + 16;
    while (v18 < *(v20 + 16))
    {
      v19 -= 32;
      sub_1C7374E7C();
      sub_1C755074C();
      if (--v18 == -1)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
  }

  sub_1C75504FC();

LABEL_15:
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_25_0();
}

void static StoryGenerationUtilities.removeEmojis(from:)()
{
  OUTLINED_FUNCTION_126();
  v0 = sub_1C75507FC();
  if (!v0)
  {
LABEL_8:
    v9 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9);
    sub_1C7099594(&qword_1EDD06AC0, &unk_1EC21A3D8);
    sub_1C755096C();
    return;
  }

  v1 = v0;
  v10 = MEMORY[0x1E69E7CC0];
  sub_1C716D8D4();
  if ((v1 & 0x8000000000000000) == 0)
  {
    do
    {
      OUTLINED_FUNCTION_154();
      v2 = sub_1C755095C();
      v4 = v3;
      v5 = sub_1C755065C();
      IsSingleEmoji = CEMStringIsSingleEmoji();

      if (IsSingleEmoji)
      {

        v4 = 0xE100000000000000;
        v2 = 32;
      }

      v7 = *(v10 + 16);
      if (v7 >= *(v10 + 24) >> 1)
      {
        sub_1C716D8D4();
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = v2;
      *(v8 + 40) = v4;
      OUTLINED_FUNCTION_154();
      sub_1C755080C();
      --v1;
    }

    while (v1);
    goto LABEL_8;
  }

  __break(1u);
}

unint64_t static StoryGenerationUtilities.substring(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_153();
  result = sub_1C755090C();
  if (v7)
  {
    return OUTLINED_FUNCTION_90();
  }

  if (__OFADD__(a3, a4))
  {
    __break(1u);
  }

  else
  {
    sub_1C755090C();
    if (v8)
    {
      return OUTLINED_FUNCTION_90();
    }

    sub_1C75504FC();
    v9 = sub_1C75507EC();
    if (v10)
    {
      return OUTLINED_FUNCTION_90();
    }

    v11 = v9;
    sub_1C75504FC();
    result = sub_1C75507EC();
    if (v12)
    {
      return OUTLINED_FUNCTION_90();
    }

    if (result >> 14 >= v11 >> 14)
    {
      v13 = sub_1C755098C();
      MEMORY[0x1CCA5CC40](v13);

      return OUTLINED_FUNCTION_90();
    }
  }

  __break(1u);
  return result;
}

uint64_t static StoryGenerationUtilities.isRangeInsideOrEqual(targetRange:ranges:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = __OFADD__(result, a2);
  for (i = (a3 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    if (v6 > result)
    {
      goto LABEL_10;
    }

    if (v4)
    {
      break;
    }

    v7 = __OFADD__(v6, *i);
    v8 = v6 + *i;
    if (v7)
    {
      goto LABEL_14;
    }

    if (v8 >= result + a2)
    {
      return 1;
    }

LABEL_10:
    if (!--v3)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t static StoryGenerationUtilities.removeSpecialCharacters(from:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C754D7CC();
  v17[0] = a1;
  v17[1] = a2;
  sub_1C754D83C();
  sub_1C6FB5E8C();
  v11 = sub_1C755151C();
  v12 = *(v6 + 8);
  v12(v9, v4);
  v17[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_0_118();
  sub_1C7099594(v13, &unk_1EC217A00);
  v14 = sub_1C75505FC();

  v15 = OUTLINED_FUNCTION_0_11();
  (v12)(v15);
  return v14;
}

uint64_t static StoryGenerationUtilities.capitalize(_:)()
{
  OUTLINED_FUNCTION_126();
  sub_1C75504FC();
  sub_1C7033D84(1);
  sub_1C721AA20();
  v2 = sub_1C755153C();

  sub_1C75504FC();
  sub_1C70CE56C(1uLL, v1, v0);
  sub_1C70D3F24();
  sub_1C75504FC();
  sub_1C755083C();

  return v2;
}

void static StoryGenerationUtilities.removeRedundantWhiteSpaces(_:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3;
  v36 = v1;
  sub_1C754D7FC();
  v32 = sub_1C6FB5E8C();
  v10 = sub_1C755151C();
  v11 = *(v6 + 8);
  v33 = v4;
  v31 = v6 + 8;
  v12 = v11;
  v11(v9, v4);
  v13 = 0;
  v14 = *(v10 + 16);
  v15 = v10 + 40;
  v29 = v10 + 40;
  v30 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v15 + 16 * v13); ; i += 2)
  {
    if (v14 == v13)
    {

      v35 = v30;
      v27 = OUTLINED_FUNCTION_90();
      __swift_instantiateConcreteTypeFromMangledNameV2(v27);
      OUTLINED_FUNCTION_0_118();
      sub_1C7099594(v28, &unk_1EC217A00);
      sub_1C75505FC();

      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_25_0();
      return;
    }

    if (v13 >= *(v10 + 16))
    {
      break;
    }

    v18 = *(i - 1);
    v17 = *i;
    v35 = v18;
    v36 = v17;
    sub_1C75504FC();
    sub_1C754D7FC();
    v19 = sub_1C755154C();
    v21 = v20;
    v12(v9, v33);

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C();
        v23 = v34;
      }

      v25 = *(v23 + 16);
      if (v25 >= *(v23 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v23 = v34;
      }

      ++v13;
      *(v23 + 16) = v25 + 1;
      v30 = v23;
      v26 = v23 + 16 * v25;
      *(v26 + 32) = v18;
      *(v26 + 40) = v17;
      v15 = v29;
      goto LABEL_2;
    }

    ++v13;
  }

  __break(1u);
}

uint64_t static StoryGenerationUtilities.chunk<A, B>(items:chunkSize:processChunk:)(uint64_t a1, uint64_t a2)
{
  result = sub_1C7550BFC();
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEE8);
    sub_1C7099594(&qword_1EC21AEF0, &qword_1EC21AEE8);
    return sub_1C75509CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}