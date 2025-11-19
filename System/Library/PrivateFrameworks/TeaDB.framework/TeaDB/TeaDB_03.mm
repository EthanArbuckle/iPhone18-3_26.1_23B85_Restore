uint64_t MixedKeyValueStore.write<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_0_7();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_0_7();
  v9 = *(v8 + 88);
  v121 = v10;
  v143 = v10;
  v144 = v11;
  v120 = v9;
  v145 = v9;
  v146 = v12;
  v140 = v12;
  v128 = v13;
  v147 = v13;
  v14 = type metadata accessor for MKVSEntry();
  v15 = *(*(sub_2179E9A60() - 8) + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v16);
  v118 = &v111 - v17;
  OUTLINED_FUNCTION_2();
  v19 = v18;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20_2();
  v134 = v26;
  v141 = a2;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v130 = v27;
  v125 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v139 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_18();
  v132 = v32;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_20_2();
  v131 = v34;
  v127 = sub_2179E9270();
  OUTLINED_FUNCTION_2();
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_18();
  v117 = v40;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v41);
  v43 = &v111 - v42;
  v119 = v14;
  v44 = v25;
  v148 = sub_2179E9500();
  v129 = v2;
  v46 = v2[4];
  v45 = v2[5];

  v126 = v43;
  v46(v47);

  v48 = *(a1 + 64);
  v112 = a1 + 64;
  v49 = 1 << *(a1 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v48;
  v52 = (v49 + 63) >> 6;
  v133 = (v19 + 16);
  v135 = (v19 + 32);
  v124 = v139 + 32;
  v111 = v36;
  v115 = v36 + 16;
  v113 = v19;
  v123 = v19 + 8;
  v114 = a1;

  v54 = 0;
  v116 = v52;
  v122 = v44;
  if (v51)
  {
    while (1)
    {
      v55 = v142;
      v56 = v54;
      v57 = v130;
LABEL_10:
      v142 = v55;
      v60 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v61 = v60 | (v56 << 6);
      v62 = (*(v114 + 48) + 16 * v61);
      v64 = *v62;
      v63 = v62[1];
      v65 = v113;
      v66 = v134;
      v67 = v141;
      (*(v113 + 16))(v134, *(v114 + 56) + *(v113 + 72) * v61, v141);
      v68 = *(v57 + 48);
      v69 = v132;
      *v132 = v64;
      *(v69 + 1) = v63;
      v59 = v69;
      (*(v65 + 32))(&v69[v68], v66, v67);
      __swift_storeEnumTagSinglePayload(v59, 0, 1, v57);

      v58 = v131;
LABEL_11:
      OUTLINED_FUNCTION_7_10(&v150);
      v70(v58, v59, v125);
      if (__swift_getEnumTagSinglePayload(v58, 1, v57) == 1)
      {
        break;
      }

      v71 = *v58;
      v72 = v58[1];
      v73 = v141;
      (*v135)(v44, v58 + *(v57 + 48), v141);
      v74 = v128;
      v75 = v142;
      sub_2179D7448(v44, v73);
      if (v75)
      {
        v94 = v114;

        OUTLINED_FUNCTION_7_10(&v149);
        v107(v122, v141);
        v108 = OUTLINED_FUNCTION_2_14(&v143);
        v109(v108);
        goto LABEL_19;
      }

      v78 = v76;
      v79 = v77;
      OUTLINED_FUNCTION_7_10(&v147);
      v80 = v117;
      v81(v117, v126, v127);
      v139 = v72;

      v138 = v71;
      v82 = sub_2179D7514(v71, v72, v78, v79, v80);
      v136 = v83;
      v137 = v82;
      v85 = v84;
      v86 = v141;
      v142 = 0;
      v87 = v134;
      v88 = v122;
      (*v133)(v134, v122, v141);
      v110 = v74;
      v89 = v118;
      sub_2179D6810(v137, v85, v136, v87, v86, v118);
      __swift_storeEnumTagSinglePayload(v89, 0, 1, v119);
      v143 = v138;
      v144 = v139;
      sub_2179E95B0();
      sub_2179E95D0();
      OUTLINED_FUNCTION_7_10(&v149);
      result = v90(v88, v86);
      v44 = v88;
      v52 = v116;
      if (!v51)
      {
        goto LABEL_5;
      }
    }

    v94 = v114;

    v96 = v129[2];
    MEMORY[0x28223BE20](v95);
    v97 = v140;
    *(&v111 - 6) = v141;
    *(&v111 - 5) = v97;
    *(&v111 - 4) = v128;
    *(&v111 - 3) = &v148;
    v110 = v98;
    LOBYTE(v143) = 0;
    v99 = v142;
    Database.write(_:block:)(&v143, sub_2179D9D9C, (&v111 - 8), v100, v101, v102, v103, v104, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
    v105 = OUTLINED_FUNCTION_2_14(&v143);
    v106(v105);
    if (!v99)
    {
    }

LABEL_19:

    return v94;
  }

  else
  {
LABEL_5:
    v57 = v130;
    v58 = v131;
    v59 = v132;
    while (1)
    {
      v56 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v56 >= v52)
      {
        OUTLINED_FUNCTION_16_3();
        __swift_storeEnumTagSinglePayload(v91, v92, v93, v57);
        v51 = 0;
        goto LABEL_11;
      }

      v51 = *(v112 + 8 * v56);
      ++v54;
      if (v51)
      {
        v55 = v142;
        v54 = v56;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2179D7448(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x21CEA9E60]();
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  sub_2179D8D74(a1, a2, &v9, &v10);
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_2179D7514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v39 = a4;
  v8 = MEMORY[0x277CC9578];
  sub_2179AD4F8(0, &unk_280B1D898, MEMORY[0x277CC9578]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - v11;
  sub_2179AD4F8(0, &qword_280B1D7F0, sub_2179AAEF8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  sub_2179AD4A0();
  swift_allocObject();
  sub_2179A7DE0();
  v21 = v20;
  sub_2179AAEF8(0);
  v23 = v22;
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v22);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v23);
  sub_2179DA3A8(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  sub_2179AD6B4();
  v28 = v27;
  sub_2179AAFDC();
  swift_allocObject();

  sub_2179ADBE4();
  v30 = v29;
  swift_beginAccess();
  v31 = *(v21 + 32);
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;

  v32 = sub_2179E9270();
  (*(*(v32 - 8) + 32))(v12, a5, v32);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v32);
  v33 = *(*v28 + 104);
  swift_beginAccess();
  sub_2179AD834(v12, v28 + v33, &unk_280B1D898, v8);
  swift_endAccess();

  swift_beginAccess();
  v34 = *(v30 + 24);
  v35 = *(v30 + 32);
  v36 = v39;
  *(v30 + 24) = v38;
  *(v30 + 32) = v36;
  sub_2179B78D4(v34, v35);

  return v21;
}

uint64_t sub_2179D7864(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *(*a2 + 80);
  v58 = a2;
  v8 = *(v6 + 88);
  v64 = v7;
  v65 = a3;
  v66 = v8;
  v67 = a4;
  v68 = a5;
  v9 = type metadata accessor for MKVSEntry();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = v50 - v12;
  v63 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = sub_2179E9A60();
  v14 = *(*(v60 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v60);
  v61 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v50 - v18;
  v20 = *a1;
  v21 = *a1 + 64;
  v22 = 1 << *(*a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(*a1 + 64);
  v25 = (v22 + 63) >> 6;
  v50[1] = v10 + 32;
  v50[2] = v10 + 16;
  v59 = (v17 + 32);
  v53 = v10;
  v54 = v20;
  v57 = (v10 + 8);

  v27 = 0;
  v51 = v19;
  v55 = v25;
  v56 = v21;
  if (v24)
  {
    while (1)
    {
      v28 = v27;
LABEL_10:
      v31 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v32 = v31 | (v28 << 6);
      v33 = v53;
      v34 = (*(v54 + 48) + 16 * v32);
      v35 = *v34;
      v36 = v34[1];
      v37 = v52;
      v38 = v63;
      (*(v53 + 16))(v52, *(v54 + 56) + *(v53 + 72) * v32, v63);
      v29 = v61;
      v39 = TupleTypeMetadata2;
      v40 = *(TupleTypeMetadata2 + 48);
      *v61 = v35;
      *(v29 + 1) = v36;
      v30 = v39;
      (*(v33 + 32))(&v29[v40], v37, v38);
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);

      v19 = v51;
LABEL_11:
      (*v59)(v19, v29, v60);
      if (__swift_getEnumTagSinglePayload(v19, 1, v30) == 1)
      {
      }

      v41 = *(v19 + 1);

      v42 = v19;
      v43 = &v19[*(v30 + 48)];
      v44 = v58[3];
      sub_2179B69CC();
      v45 = *v43;
      v46 = *(v43 + 1);
      v47 = *(v43 + 2);
      v48 = *v57;

      v48(v43, v63);
      v64 = v45;
      v65 = v46;
      v66 = v47;
      v49 = v69;
      sub_2179B69F8(&v64);

      v69 = v49;
      if (v49)
      {
      }

      v19 = v42;
      v25 = v55;
      v21 = v56;
      if (!v24)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v29 = v61;
    v30 = TupleTypeMetadata2;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
        __swift_storeEnumTagSinglePayload(v61, 1, 1, TupleTypeMetadata2);
        v24 = 0;
        goto LABEL_11;
      }

      v24 = *(v21 + 8 * v28);
      ++v27;
      if (v24)
      {
        v27 = v28;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2179D7CE8(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  v5 = (result + 40);
  if (v4)
  {
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(a2 + 24);
      sub_2179E4CE8();

      sub_2179CEADC();
      if (v2)
      {
        break;
      }

      v5 += 2;
      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t MixedKeyValueStore.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_10(a1, &qword_280B1DC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2179EA830;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  MixedKeyValueStore.read<A>(_:maxAge:)(inited, a3, a4, a5);
  swift_setDeallocating();
  sub_2179D9D0C();
  sub_2179E9580();

  sub_2179E9560();
  swift_getWitnessTable();
  sub_2179E98C0();
}

uint64_t sub_2179D7F30(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 32);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v10 = sub_2179E9A60();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  v15 = *a3;
  v14 = a3[1];
  (*(v16 + 16))(&v19 - v12, a1);
  v17 = *a2;

  return MixedKeyValueStore.subscript.setter(v13, v15, v14, v7, v8, v9);
}

uint64_t MixedKeyValueStore.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v10 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  OUTLINED_FUNCTION_2();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v17, a1, v10);
  if (__swift_getEnumTagSinglePayload(v17, 1, a4) == 1)
  {
    v25 = *(v12 + 8);
    v26 = v25(v17, v10);
    OUTLINED_FUNCTION_5_10(v26, &qword_280B1DC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2179EA830;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    MixedKeyValueStore.delete(_:)();

    swift_setDeallocating();
    sub_2179D9D0C();
    return v25(a1, v10);
  }

  else
  {
    v39 = v10;
    v40 = a1;
    (*(v19 + 32))(v24, v17, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_2179E9D50();
    v29 = *(*(TupleTypeMetadata2 - 8) + 72);
    v30 = *(*(TupleTypeMetadata2 - 8) + 80);
    swift_allocObject();
    v31 = sub_2179E97D0();
    v32 = *(TupleTypeMetadata2 + 48);
    *v33 = a2;
    *(v33 + 1) = a3;
    (*(v19 + 16))(&v33[v32], v24, a4);
    sub_2179BA890(v31);
    v34 = sub_2179E9540();
    MixedKeyValueStore.write<A>(_:)(v34, a4);

    v37 = v39;
    v36 = v40;

    (*(v12 + 8))(v36, v37);
    return (*(v19 + 8))(v24, a4);
  }
}

void (*MixedKeyValueStore.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v13 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v13;
  v13[4] = a6;
  v13[5] = v6;
  v13[2] = a4;
  v13[3] = a5;
  *v13 = a2;
  v13[1] = a3;
  v14 = sub_2179E9A60();
  v13[6] = v14;
  v15 = *(v14 - 8);
  v13[7] = v15;
  v16 = *(v15 + 64);
  v13[8] = __swift_coroFrameAllocStub(v16);
  v13[9] = __swift_coroFrameAllocStub(v16);
  MixedKeyValueStore.subscript.getter(a2, a3, a4, a5, a6);
  return sub_2179D84B0;
}

void sub_2179D84B0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[6];
    v6 = v2[7];
    v7 = v2[4];
    v18 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    v11 = *v2;
    v10 = v2[1];
    (*(v6 + 16))(v3, v4, v5);

    MixedKeyValueStore.subscript.setter(v3, v11, v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v13 = v2[4];
    v12 = v2[5];
    v15 = v2[2];
    v14 = v2[3];
    v17 = *v2;
    v16 = v2[1];

    MixedKeyValueStore.subscript.setter(v4, v17, v16, v15, v14, v13);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static MixedKeyValueStore.+= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MixedKeyValueStore.write<A>(_:)(a2, a3);
}

uint64_t MixedKeyValueStore.Promises.allKeys()(uint64_t a1)
{
  v5 = *(a1 + 16);
  sub_21799F320();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179D8758(void (*a1)(uint64_t *))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = MixedKeyValueStore.allKeys()();

    v4 = v3;
    a1(&v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MixedKeyValueStore.Promises.read<A>(_:maxAge:)()
{
  OUTLINED_FUNCTION_17_4();
  sub_2179E95B0();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179D88C4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = MixedKeyValueStore.read<A>(_:maxAge:)(a6, a8, a10, a11);

    v16 = v15;
    a1(&v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MixedKeyValueStore.Promises.write<A>(_:)()
{
  OUTLINED_FUNCTION_17_4();
  sub_2179E95B0();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179D8A60(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    MixedKeyValueStore.write<A>(_:)(a6, a8);

    v12 = a6;
    a1(&v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MixedKeyValueStore.Promises.delete(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  sub_21799F320();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179D8BC8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    MixedKeyValueStore.delete(_:)(a6);

    v9 = a6;
    a1(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *MixedKeyValueStore.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = v0[3];

  v4 = v0[5];

  OUTLINED_FUNCTION_18_4();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_18_4();
  v8 = *(v7 + 88);
  type metadata accessor for MixedKeyValueStore.Promises();
  OUTLINED_FUNCTION_9();
  v9 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v9);
  (*(v10 + 8))(v0 + 6);
  return v0;
}

uint64_t MixedKeyValueStore.__deallocating_deinit()
{
  MixedKeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2179D8D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X6>, uint64_t *a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2179E9D50();
  v9 = *(*(TupleTypeMetadata2 - 8) + 72);
  v10 = *(*(TupleTypeMetadata2 - 8) + 80);
  swift_allocObject();
  v11 = sub_2179E97D0();
  v12 = *(TupleTypeMetadata2 + 48);
  *v13 = 118;
  *(v13 + 1) = 0xE100000000000000;
  (*(*(a2 - 8) + 16))(&v13[v12], a1, a2);
  sub_2179BA890(v11);
  sub_2179E9540();
  v14 = sub_2179E90E0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_2179E90D0();
  sub_2179E95B0();
  swift_getWitnessTable();
  v17 = sub_2179E90C0();
  v19 = v18;

  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = v17;
    a4[1] = v19;
  }

  return result;
}

uint64_t sub_2179D8F88@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X7>, uint64_t a6@<X8>)
{
  v28 = a5;
  v22 = a1;
  v23 = a3;
  v21 = a6;
  v9 = sub_2179E9A60();
  v20 = *(v9 - 8);
  v10 = *(v20 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_2179E92D0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_2179E92C0();
  sub_2179E95B0();
  v26 = MEMORY[0x277D83808];
  v27 = a4;
  swift_getWitnessTable();
  sub_2179E92B0();
  v16 = v6;

  if (v6)
  {
    goto LABEL_4;
  }

  v19 = v20;
  v18 = v21;
  v24 = 118;
  v25 = 0xE100000000000000;
  sub_2179E95C0();

  if (__swift_getEnumTagSinglePayload(v12, 1, a2) == 1)
  {
    (*(v19 + 8))(v12, v9);
    type metadata accessor for MixedKeyValueStore.TranslationError();
    swift_getWitnessTable();
    v16 = swift_allocError();
    result = swift_willThrow();
LABEL_4:
    *v28 = v16;
    return result;
  }

  return (*(*(a2 - 8) + 32))(v18, v12, a2);
}

uint64_t sub_2179D9210()
{
  sub_2179AD4F8(0, &qword_280B1D7F0, sub_2179AAEF8);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_2179AD4A0();
  swift_allocObject();
  sub_2179A7DE0();
  v8 = v7;
  sub_2179AAEF8(0);
  v10 = v9;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_2179DA3A8(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_2179AD6B4();
  sub_2179AAFDC();
  swift_allocObject();
  sub_2179ADBE4();
  return v8;
}

uint64_t sub_2179D93C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v15 = a4;
  type metadata accessor for MKVSEntity.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_2179E9D30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v19 = a2;
  v18 = 0;
  sub_2179AD4A0();
  sub_2179DA48C(&qword_27CB97BB0, sub_2179AD4A0);
  v12 = v17;
  sub_2179E9D20();
  if (!v12)
  {
    v13 = v15;
    v19 = v16;
    v18 = 1;
    sub_2179DA3A8(0);
    sub_2179DA48C(&qword_27CB97BB8, sub_2179DA3A8);
    sub_2179E9D20();
    v19 = v13;
    v18 = 2;
    sub_2179AAFDC();
    sub_2179DA48C(qword_27CB97BC0, sub_2179AAFDC);
    sub_2179E9D20();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2179D9670(uint64_t *a1)
{
  v2 = type metadata accessor for MKVSEntity.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v34 = sub_2179E9CD0();
  v33 = *(v34 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v36 = v32 - v4;
  sub_2179AD4F8(0, &qword_280B1D7F0, sub_2179AAEF8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  sub_2179AD4A0();
  v32[2] = v12;
  swift_initStackObject();
  sub_2179A7DE0();
  v35 = v13;
  sub_2179AAEF8(0);
  v15 = v14;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  sub_2179DA3A8(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_2179AD6B4();
  v20 = v19;
  sub_2179AAFDC();
  v22 = v21;
  swift_initStackObject();
  sub_2179ADBE4();
  v24 = v23;
  v26 = a1[3];
  v25 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = v36;
  v28 = v38;
  sub_2179E9E90();
  if (v28)
  {
  }

  else
  {
    v32[1] = v22;
    WitnessTable = v20;
    v38 = v24;
    v29 = v33;
    v40 = 0;
    sub_2179DA48C(&qword_27CB97B98, sub_2179AD4A0);
    v30 = v34;
    sub_2179E9CC0();

    v2 = v41;
    v40 = 1;
    sub_2179DA48C(&qword_27CB97BA0, sub_2179DA3A8);
    sub_2179E9CC0();

    v40 = 2;
    sub_2179DA48C(&qword_27CB97BA8, sub_2179AAFDC);
    sub_2179E9CC0();
    (*(v29 + 8))(v27, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  return v2;
}

uint64_t sub_2179D9BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179D9C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2179D9C78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_2179D9210();
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_2179D9CAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_2179D9670(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
  }

  return result;
}

uint64_t sub_2179D9CE4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_2179D93C4(a1, *v2, v2[1], v2[2]);
}

uint64_t sub_2179D9D0C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_2179D9D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  return sub_2179D6BF0(a1, v2[3], a2);
}

uint64_t sub_2179D9DDC(void (*a1)(uint64_t *))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2179D8758(a1);
}

uint64_t sub_2179D9E24(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 48);
  v6 = *(v4 + 32);
  return sub_2179D8A60(a1, a2, a3, a4, *(v4 + 56), *(v4 + 64), *(v4 + 16), *(v4 + 24));
}

uint64_t sub_2179D9E5C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  return sub_2179D8BC8(a1, a2, a3, a4, v4[4], v4[5]);
}

uint64_t sub_2179D9EA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179D9EE4(void *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  result = type metadata accessor for MKVSEntity();
  if (v5 <= 0x3F)
  {
    v6 = a1[3];
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2179D9F74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 24) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 24) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_2179DA0F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 24) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 24] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
              *(a1 + 2) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2179DA340()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2179DA3C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2179E9270();
    v7 = sub_2179DA48C(&qword_280B1D8B0, MEMORY[0x277CC9578]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2179DA464(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_2179B314C(a1, a2);
  }
}

uint64_t sub_2179DA48C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2179DA510@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_2179BAA38(a1, a2);
}

_BYTE *sub_2179DA54C(_BYTE *result, int a2, int a3)
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

_BYTE *sub_2179DA5E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179DA72C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Int.valueType.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_2179DA7F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2179DAEE8(0, &qword_280B1C960, sub_2179DA8D0, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2179EA830;
  *(v10 + 32) = 1802396018;
  *(v10 + 40) = 0xE400000000000000;
  sub_2179A70AC(a3, v10 + 48);

  return sub_2179DA998(a1, a2, v10, a4, a5);
}

void sub_2179DA8D0()
{
  if (!qword_280B1C9A8)
  {
    sub_2179DA93C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B1C9A8);
    }
  }
}

unint64_t sub_2179DA93C()
{
  result = qword_280B1DB50;
  if (!qword_280B1DB50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280B1DB50);
  }

  return result;
}

uint64_t sub_2179DA998(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v35 = a2;
  sub_2179DAEE8(0, &qword_280B1D590, sub_2179DAE38, MEMORY[0x277D85AB8]);
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v32 - v11;
  v33 = (*(*(a5 + 8) + 32))(a4);
  v13 = v12;
  v47[0] = a3;
  sub_2179DAEE8(0, &qword_280B1C9A0, sub_2179DA8D0, MEMORY[0x277D83940]);
  v15 = v14;
  v16 = sub_2179DAF4C();
  v47[0] = sub_2179A2E44(sub_2179DAE94, 0, v15, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  sub_2179A5088();
  sub_2179A4B34();
  v32 = sub_2179E95F0();
  v19 = v18;

  v47[0] = a3;
  v21 = sub_2179A2E44(sub_2179DAFD4, 0, v15, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v20);

  v47[0] = v21;
  v22 = sub_2179E95F0();
  v24 = v23;

  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_2179E9B10();

  strcpy(v47, "INSERT INTO ");
  BYTE5(v47[1]) = 0;
  HIWORD(v47[1]) = -5120;
  v25 = v33;
  MEMORY[0x21CEA9600](v33, v13);
  MEMORY[0x21CEA9600](40, 0xE100000000000000);
  MEMORY[0x21CEA9600](v25, v13);

  MEMORY[0x21CEA9600](8236, 0xE200000000000000);
  MEMORY[0x21CEA9600](v32, v19);

  MEMORY[0x21CEA9600](0x5345554C41560A29, 0xE900000000000028);
  v45 = 39;
  v46 = 0xE100000000000000;
  v43 = v34;
  v44 = v35;
  v41 = 39;
  v42 = 0xE100000000000000;
  v39 = 10023;
  v40 = 0xE200000000000000;
  sub_2179A4934();
  v26 = sub_2179E9A80();
  v28 = v27;

  MEMORY[0x21CEA9600](v26, v28);

  MEMORY[0x21CEA9600](39, 0xE100000000000000);
  MEMORY[0x21CEA9600](v45, v46);

  MEMORY[0x21CEA9600](8236, 0xE200000000000000);
  MEMORY[0x21CEA9600](v22, v24);

  MEMORY[0x21CEA9600](15145, 0xE200000000000000);
  v45 = v47[0];
  v46 = v47[1];
  sub_2179DAE38();
  v29 = v36;
  sub_2179E93E0();
  v43 = 32;
  v44 = 0xE100000000000000;
  sub_2179DB040();
  sub_2179DB094();
  sub_2179DB0E8();
  v30 = v37;
  sub_2179E98F0();
  (*(v38 + 8))(v29, v30);

  return v47[0];
}

void sub_2179DAE38()
{
  if (!qword_280B1C978)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B1C978);
    }
  }
}

uint64_t sub_2179DAE94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2179DB170(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void sub_2179DAEE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2179DAF4C()
{
  result = qword_280B1C998;
  if (!qword_280B1C998)
  {
    sub_2179DAEE8(255, &qword_280B1C9A0, sub_2179DA8D0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1C998);
  }

  return result;
}

uint64_t sub_2179DAFD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_2179DB040()
{
  result = qword_280B1C9B0;
  if (!qword_280B1C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1C9B0);
  }

  return result;
}

unint64_t sub_2179DB094()
{
  result = qword_280B1C9B8[0];
  if (!qword_280B1C9B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B1C9B8);
  }

  return result;
}

unint64_t sub_2179DB0E8()
{
  result = qword_280B1D598;
  if (!qword_280B1D598)
  {
    sub_2179DAEE8(255, &qword_280B1D590, sub_2179DAE38, MEMORY[0x277D85AB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1D598);
  }

  return result;
}

uint64_t sub_2179DB170(uint64_t a1, uint64_t a2)
{
  sub_2179DA8D0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void SearchTable.Save.entity(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v12 = sub_2179DC294(v5, v11);
  v13 = *(*(v11 + 8) + 24);
  type metadata accessor for Statement();
  v14 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  (*(v6 + 16))(v9, a1, v5);
  v45 = v11;
  v46 = v5;
  *&v47 = sub_2179C9EC4(v9, 1, v5, v11);
  sub_2179A5088();
  sub_2179A4B34();
  *&v47 = sub_2179E95F0();
  *(&v47 + 1) = v15;

  MEMORY[0x21CEA9600](59, 0xE100000000000000);

  v16 = v47;
  v44 = v3;
  sub_2179A70AC(v3, &v47);
  v17 = v12;
  v43[0] = sub_2179AC76C(&v49, v16, *(&v16 + 1), &v47);
  v18 = *(v12 + 16);
  if (v18)
  {
    v49 = v14;
    sub_2179A9394(0, v18, 0);
    v19 = 0;
    v20 = v49;
    v21 = v12 + 32;
    while (v19 < *(v17 + 16))
    {
      sub_2179A9940(v21, &v47);
      v23 = sub_2179DB5BC(v47, *(&v47 + 1), v48, v44);
      if (v23)
      {
        v24 = v22;
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        *(v25 + 24) = v24;
        v23 = sub_2179D006C;
      }

      else
      {
        v25 = 0;
      }

      sub_2179AE2FC(&v47);
      v49 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2179A9394(v26 > 1, v27 + 1, 1);
        v20 = v49;
      }

      ++v19;
      *(v20 + 16) = v27 + 1;
      v28 = v20 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v21 += 56;
      if (v18 == v19)
      {

        goto LABEL_12;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_12:
    v29 = 0;
    v30 = *(v20 + 16);
    v31 = MEMORY[0x277D84F90];
LABEL_13:
    v32 = (v20 + 32 + 16 * v29);
    while (v30 != v29)
    {
      if (v29 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      ++v29;
      v33 = v32 + 2;
      v34 = *v32;
      v32 += 2;
      if (v34)
      {
        v35 = *(v33 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = *(v31 + 16);
          sub_2179A94A4();
          v31 = v39;
        }

        v36 = *(v31 + 16);
        if (v36 >= *(v31 + 24) >> 1)
        {
          sub_2179A94A4();
          v31 = v40;
        }

        *(v31 + 16) = v36 + 1;
        v37 = v31 + 16 * v36;
        *(v37 + 32) = v34;
        *(v37 + 40) = v35;
        goto LABEL_13;
      }
    }

    sub_2179A9E30();

    v42 = v43[1];
    sub_2179AC7D4(v41);

    if (!v42)
    {
    }
  }
}

uint64_t sub_2179DB5BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 88))(a4, v5, v6);
}

uint64_t sub_2179DB618()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FastColumn.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FastColumn.wrappedValue.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_2179DB73C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2179E9D70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_2179E9D70();

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

uint64_t sub_2179DB808(char a1)
{
  if (a1)
  {
    return 0x5664657070617277;
  }

  else
  {
    return 1701667182;
  }
}

BOOL sub_2179DB840(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_2179D4A04(*a1, *a2);
}

uint64_t sub_2179DB854(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2179D4A3C(*v1);
}

uint64_t sub_2179DB864(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_2179D4A14(a1, *v2);
}

uint64_t sub_2179DB874(uint64_t a1, uint64_t a2)
{
  sub_2179E9E20();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_2179D4A14(v7, *v2);
  return sub_2179E9E40();
}

uint64_t sub_2179DB8BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2179DB808(*v1);
}

uint64_t sub_2179DB8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2179DB73C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2179DB8FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_2179BC638();
}

uint64_t sub_2179DB924@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_2179D49FC();
  *a2 = result;
  return result;
}

uint64_t sub_2179DB954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179DB9A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FastColumn.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v18[1] = *(*v2 + 88);
  v18[2] = v4;
  type metadata accessor for FastColumn.CodingKeys();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v5 = sub_2179E9D30();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v14 = v2[2];
  v15 = v2[3];
  v20 = 0;
  v16 = v18[3];
  sub_2179E9CE0();
  if (!v16)
  {
    swift_beginAccess();
    v21 = v2[4];
    v19 = 1;
    type metadata accessor for Column();
    swift_getWitnessTable();
    sub_2179E9D20();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t FastColumn.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  FastColumn.init(from:)(a1);
  return v2;
}

void *FastColumn.init(from:)(uint64_t *a1)
{
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  type metadata accessor for FastColumn.CodingKeys();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v6 = sub_2179E9CD0();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9E90();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = sub_2179E9C80();
    v1[3] = v11;
    type metadata accessor for Column();
    swift_getWitnessTable();
    sub_2179E9CC0();
    v13 = OUTLINED_FUNCTION_2_15();
    v14(v13);
    v1[4] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2179DBEB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FastColumn.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FastColumn.description.getter()
{
  OUTLINED_FUNCTION_1_20();
  v1 = *(v0 + 32);

  v2 = Column.description.getter();

  return v2;
}

_BYTE *sub_2179DBFD8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179DC0F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(*(*(v8 + 8) + 24) + 8))();
  (*(a2 + 16))(v20, a1, a2);
  v9 = v20[1];

  v19 = v9;
  v16 = a1;
  v17 = a2;
  v18 = v7;
  type metadata accessor for SearchColumn();
  sub_2179E9EC0();
  v10 = sub_2179E9840();
  v11 = OUTLINED_FUNCTION_0_19();
  v13 = sub_2179A2E44(sub_2179DC628, v15, v10, MEMORY[0x277D839F8], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);

  (*(v4 + 8))(v7, a1);
  return v13;
}

uint64_t sub_2179DC294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v6(v19);

  swift_getAtKeyPath();

  v7 = v18;
  sub_2179A2C2C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2179EA830;
  *(v8 + 32) = 0x6469776F72;
  *(v8 + 40) = 0xE500000000000000;
  *(v8 + 72) = type metadata accessor for RowID();
  *(v8 + 80) = &off_2829964F0;
  *(v8 + 48) = v7;

  (v6)(v19, a1, a2);
  v9 = v19[1];

  v18 = v9;
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v3;
  type metadata accessor for SearchColumn();
  sub_2179E9EC0();
  v10 = sub_2179E9840();
  sub_2179A4BDC();
  v12 = v11;
  v13 = OUTLINED_FUNCTION_0_19();
  v15 = sub_2179A2E44(sub_2179DC604, v17, v10, v12, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);

  v19[0] = v8;
  sub_2179C2040(v15);

  return v19[0];
}

double static SearchEntityType.tokenizer.getter@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = 1;
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

uint64_t SearchSchema.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2179DC4D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179DC524@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getAtKeyPath();
  v4 = *(v7 + 16);
  os_unfair_lock_lock((v4 + 64));
  v5 = *(v4 + 32);
  os_unfair_lock_unlock((v4 + 64));

  *a2 = v5;
  return result;
}

uint64_t sub_2179DC598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getAtKeyPath();
  v4 = sub_2179E2BD8((a2 + 16));
  v6 = v5;

  *a2 = v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2179DC604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_2179DC598(a1, a2);
}

uint64_t sub_2179DC628@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_2179DC524(a1, a2);
}

uint64_t Transaction.rawValue.getter()
{
  v1 = 0x54414944454D4D49;
  if (*v0 != 1)
  {
    v1 = 0x564953554C435845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4445525245464544;
  }
}

TeaDB::Transaction_optional __swiftcall Transaction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2179E9C70();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2179DC71C()
{
  result = qword_27CB983E0[0];
  if (!qword_27CB983E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB983E0);
  }

  return result;
}

uint64_t sub_2179DC794@<X0>(uint64_t *a1@<X8>)
{
  result = Transaction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Transaction(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t LazyEntity.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LazyEntity.loaderValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[4];
  LazyLoader.load()(a1);
  v5 = *(v3 + 80);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

uint64_t LazyEntity.__allocating_init(value:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  LazyEntity.init(value:)(a1);
  return v2;
}

uint64_t LazyEntity.init(value:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_8();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v12 = *(v11 + 88);
  v13 = (*(v12 + 24))(v5, v12);
  swift_beginAccess();
  v15 = *(v13 + 24);
  v14 = *(v13 + 32);

  if (v14)
  {
    v2[2] = v15;
    v2[3] = v14;
    OUTLINED_FUNCTION_5_11(*(v12 + 8));
    type metadata accessor for LazyLoader();
    (*(v6 + 16))(v10, a1, v5);
    v17 = LazyLoader.__allocating_init(object:)(v10);
    (*(v6 + 8))(a1, v5);
    v2[4] = v17;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LazyEntity.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t sub_2179DCB2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2179E9D70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616F6CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2179E9D70();

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

uint64_t sub_2179DCBF8(char a1)
{
  if (a1)
  {
    return 0x726564616F6CLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2179DCC30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2179DCBF8(*v1);
}

uint64_t sub_2179DCC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2179DCB2C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2179DCC70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179DCCC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LazyEntity.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t LazyEntity.__deallocating_deinit()
{
  LazyEntity.deinit();
  OUTLINED_FUNCTION_4();

  return swift_deallocClassInstance();
}

uint64_t LazyEntity.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v21[0] = *(*v2 + 88);
  v21[1] = v4;
  type metadata accessor for LazyEntity.CodingKeys();
  OUTLINED_FUNCTION_0_20();
  swift_getWitnessTable();
  v5 = sub_2179E9D30();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v14 = v2[2];
  v15 = v2[3];
  v23 = 0;
  v16 = v21[2];
  sub_2179E9CE0();
  if (!v16)
  {
    v21[3] = v2[4];
    v22 = 1;
    v17 = *(v21[0] + 8);
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    type metadata accessor for LazyLoader();
    swift_getWitnessTable();
    sub_2179E9D20();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t LazyEntity.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  LazyEntity.init(from:)(a1);
  return v2;
}

void *LazyEntity.init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_8();
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  type metadata accessor for LazyEntity.CodingKeys();
  OUTLINED_FUNCTION_0_20();
  swift_getWitnessTable();
  sub_2179E9CD0();
  OUTLINED_FUNCTION_2();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9E90();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = sub_2179E9C80();
    v1[3] = v11;
    OUTLINED_FUNCTION_5_11(*(v6 + 8));
    type metadata accessor for LazyLoader();
    swift_getWitnessTable();
    sub_2179E9CC0();
    v13 = OUTLINED_FUNCTION_2_15();
    v14(v13);
    v1[4] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2179DD23C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = LazyEntity.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t LazyEntity.saveChain(for:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_8();
  v4 = v3;
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v14 = *(v1 + 32);
  LazyLoader.load()(&v17 - v12);
  v15 = (*(*(*(*(v4 + 88) + 16) + 24) + 8))(a1, v6);
  (*(v8 + 8))(v13, v6);
  return v15;
}

_BYTE *sub_2179DD610(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2179DD730()
{
  result = qword_280B1CEE8[0];
  if (!qword_280B1CEE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B1CEE8);
  }

  return result;
}

uint64_t *sub_2179DD784()
{
  v1 = sub_2179E9100();
  v2 = OUTLINED_FUNCTION_27(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_8();
  v5 = *v0;
  v6 = *(v0 + 8);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  switch(*(v0 + 49))
  {
    case 1:
      LOWORD(v33) = *v0;
      v20 = sub_2179DDB00();
      MEMORY[0x21CEA9600](v20);

      v21 = 0x206D617267697274;
      v22 = 0xE800000000000000;
      goto LABEL_11;
    case 2:
      v33 = 0x3665646F63696E75;
      v34 = 0xEA00000000002031;
      LOBYTE(v26) = v5;
      v27 = v6;
      v28 = v8;
      v29 = v7;
      v30 = v9;
      v31 = v10;
      v12 = sub_2179DDCA0();
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_14_5();
      v26 = v16;
      v27 = v17;
      v28 = v19;
      v29 = v18;
      v12 = sub_2179DE19C();
      goto LABEL_10;
    default:
      v33 = 0x20726574726F70;
      v34 = 0xE700000000000000;
      if (v11 == 255)
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      else
      {
        v26 = v5;
        v27 = v6;
        v28 = v8;
        v29 = v7;
        v30 = v9;
        v31 = v10;
        v32 = v11 & 1;
        v12 = sub_2179DD9B4();
        v14 = v13;
      }

      v15 = v14;
LABEL_10:
      MEMORY[0x21CEA9600](v12, v15);

      v21 = v33;
      v22 = v34;
LABEL_11:
      v26 = v21;
      v27 = v22;
      sub_2179E90F0();
      sub_2179A4934();
      sub_2179E9A70();
      v23 = OUTLINED_FUNCTION_11_8();
      v24(v23);

      return &v26;
  }
}

void __swiftcall Unicode61TokenizerOptions.init(removeDiacritics:categories:tokenChars:separators:)(TeaDB::Unicode61TokenizerOptions *__return_ptr retstr, Swift::Bool_optional removeDiacritics, Swift::OpaquePointer categories, Swift::String_optional tokenChars, Swift::String_optional separators)
{
  retstr->removeDiacritics = removeDiacritics;
  retstr->categories = categories;
  retstr->tokenChars = tokenChars;
  retstr->separators = separators;
}

TeaDB::TrigramTokenizerOptions __swiftcall TrigramTokenizerOptions.init(removeDiacritics:caseSensitive:)(Swift::Bool_optional removeDiacritics, Swift::Bool_optional caseSensitive)
{
  v2->value = removeDiacritics.value;
  v2[1].value = caseSensitive.value;
  result.removeDiacritics = removeDiacritics;
  return result;
}

TeaDB::AsciiTokenizerOptions __swiftcall AsciiTokenizerOptions.init(tokenChars:separators:)(Swift::String_optional tokenChars, Swift::String_optional separators)
{
  *v2 = tokenChars;
  v2[1] = separators;
  result.separators = separators;
  result.tokenChars = tokenChars;
  return result;
}

uint64_t *sub_2179DD9B4()
{
  v1 = sub_2179E9100();
  v2 = OUTLINED_FUNCTION_27(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_8();
  v6 = *v0;
  v5 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  if (v0[6])
  {
    OUTLINED_FUNCTION_14_5();
    v17 = v10;
    v18 = v9;
    v19 = v12;
    v20 = v11;
    v13 = sub_2179DE19C();
  }

  else
  {
    v22 = 0x3665646F63696E75;
    v23 = 0xEA00000000002031;
    LOBYTE(v17) = v6;
    v18 = v5;
    v19 = v8;
    v20 = v7;
    v21 = *(v0 + 2);
    v13 = sub_2179DDCA0();
  }

  MEMORY[0x21CEA9600](v13);

  v17 = v22;
  v18 = v23;
  sub_2179E90F0();
  sub_2179A4934();
  sub_2179E9A70();
  v14 = OUTLINED_FUNCTION_11_8();
  v15(v14);

  return &v17;
}

uint64_t *sub_2179DDB00()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_2179E9B10();

    OUTLINED_FUNCTION_22_3();
    v18 = v5;
    v19 = v4;
    if (v1)
    {
      v6 = 49;
    }

    else
    {
      v6 = 48;
    }

    MEMORY[0x21CEA9600](v6, 0xE100000000000000);

    v7 = v18;
    v8 = v19;
    OUTLINED_FUNCTION_17_5();
    v3 = v9;
    v10 = *(v9 + 16);
    if (v10 >= *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_21();
      v3 = v15;
    }

    *(v3 + 16) = v10 + 1;
    v11 = v3 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
  }

  if (v2 != 2)
  {
    sub_2179E9B10();

    v18 = 0x6E65735F65736163;
    v19 = 0xEF20657669746973;
    if (v2)
    {
      v12 = 49;
    }

    else
    {
      v12 = 48;
    }

    MEMORY[0x21CEA9600](v12, 0xE100000000000000);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_16();
      v3 = v16;
    }

    OUTLINED_FUNCTION_8_11();
    if (v13)
    {
      OUTLINED_FUNCTION_0_21();
      v3 = v17;
    }

    OUTLINED_FUNCTION_7_11();
  }

  v18 = v3;
  sub_2179A5088();
  sub_2179A4B34();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_18_5();
  return &v18;
}

uint64_t *sub_2179DDCA0()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = v0[4];
  v44 = v0[3];
  v5 = v0[5];
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  if (v1 != 2)
  {
    sub_2179E9B10();

    OUTLINED_FUNCTION_22_3();
    v48 = v9;
    v49 = v8;
    if (v1)
    {
      v10 = 50;
    }

    else
    {
      v10 = 48;
    }

    MEMORY[0x21CEA9600](v10, 0xE100000000000000);

    v11 = v48;
    v12 = v49;
    OUTLINED_FUNCTION_17_5();
    v7 = v13;
    v14 = *(v13 + 16);
    if (v14 >= *(v13 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_21();
      v7 = v42;
    }

    *(v7 + 16) = v14 + 1;
    v15 = v7 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
  }

  v16 = *(v3 + 16);
  if (v16)
  {
    v43 = v5;
    v48 = 0x69726F6765746163;
    v49 = 0xEB00000000207365;
    sub_2179A920C(0, v16, 0);
    v17 = (v3 + 32);
    v18 = v6;
    v19 = "L*";
    do
    {
      v21 = *v17++;
      v20 = v21;
      switch(v21 >> 5)
      {
        case 1:
          v22 = &v19[8 * (v20 & 0x1F)];
          break;
        case 2:
          v22 = &aM_1[8 * (v20 & 0x1F)];
          break;
        case 3:
          v22 = &aN_1[8 * (v20 & 0x1F)];
          break;
        case 4:
          v22 = &aP_1[8 * (v20 & 0x1F)];
          break;
        case 5:
          v22 = &aS_1[8 * (v20 & 0x1F)];
          break;
        case 6:
          v22 = &aZ_1[8 * (v20 & 0x1F)];
          break;
        default:
          v22 = &aC_1[8 * v20];
          break;
      }

      v23 = *v22;
      v46 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        v27 = v19;
        sub_2179A920C(v24 > 1, v25 + 1, 1);
        v19 = v27;
        v18 = v46;
      }

      *(v18 + 16) = v25 + 1;
      v26 = v18 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = 0xE200000000000000;
      --v16;
    }

    while (v16);
    sub_2179A5088();
    sub_2179A4B34();
    sub_2179E95F0();

    v45 = 39;
    v47 = 0xE100000000000000;
    OUTLINED_FUNCTION_10_11();
    sub_2179A4934();
    OUTLINED_FUNCTION_6_11();
    OUTLINED_FUNCTION_1_3();
    v28 = sub_2179E9A80();
    v30 = v29;

    MEMORY[0x21CEA9600](v28, v30);

    OUTLINED_FUNCTION_20_3();
    MEMORY[0x21CEA9600](39, 0xE100000000000000);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_16();
      v7 = v36;
    }

    v5 = v43;
    OUTLINED_FUNCTION_8_11();
    if (v31)
    {
      OUTLINED_FUNCTION_0_21();
      v7 = v37;
    }

    OUTLINED_FUNCTION_7_11();
  }

  if (v44)
  {
    OUTLINED_FUNCTION_23_4(0x6168636E656B6F74);
    OUTLINED_FUNCTION_10_11();
    sub_2179A4934();
    OUTLINED_FUNCTION_6_11();
    OUTLINED_FUNCTION_1_3();
    v32 = sub_2179E9A80();
    MEMORY[0x21CEA9600](v32);

    OUTLINED_FUNCTION_20_3();
    MEMORY[0x21CEA9600](v45, v47);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_16();
      v7 = v38;
    }

    OUTLINED_FUNCTION_8_11();
    if (v31)
    {
      OUTLINED_FUNCTION_0_21();
      v7 = v39;
    }

    OUTLINED_FUNCTION_7_11();
  }

  if (v5)
  {
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_23_4(v33);
    OUTLINED_FUNCTION_10_11();
    sub_2179A4934();
    OUTLINED_FUNCTION_6_11();
    OUTLINED_FUNCTION_1_3();
    v34 = sub_2179E9A80();
    MEMORY[0x21CEA9600](v34);

    OUTLINED_FUNCTION_20_3();
    MEMORY[0x21CEA9600](v45, v47);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_16();
      v7 = v40;
    }

    OUTLINED_FUNCTION_8_11();
    if (v31)
    {
      OUTLINED_FUNCTION_0_21();
      v7 = v41;
    }

    OUTLINED_FUNCTION_7_11();
  }

  v48 = v7;
  sub_2179A5088();
  sub_2179A4B34();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_18_5();
  return &v48;
}

uint64_t *sub_2179DE19C()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    v6 = MEMORY[0x277D84F90];
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v3 = *v0;
  v16 = 0x6168636E656B6F74;
  v17 = 0xEB00000000207372;
  OUTLINED_FUNCTION_10_11();
  sub_2179A4934();
  OUTLINED_FUNCTION_1_3();
  v4 = sub_2179E9A80();
  MEMORY[0x21CEA9600](v4);

  MEMORY[0x21CEA9600](39, 0xE100000000000000);
  MEMORY[0x21CEA9600](39, 0xE100000000000000);

  OUTLINED_FUNCTION_17_5();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7 >= *(v5 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_21();
    v6 = v13;
  }

  *(v6 + 16) = v7 + 1;
  v8 = v6 + 16 * v7;
  *(v8 + 32) = 0x6168636E656B6F74;
  *(v8 + 40) = 0xEB00000000207372;
  if (v2)
  {
LABEL_7:
    OUTLINED_FUNCTION_21_3();
    v16 = v9;
    v17 = 0xEB00000000207372;
    OUTLINED_FUNCTION_10_11();
    sub_2179A4934();
    OUTLINED_FUNCTION_1_3();
    v10 = sub_2179E9A80();
    MEMORY[0x21CEA9600](v10);

    MEMORY[0x21CEA9600](39, 0xE100000000000000);
    MEMORY[0x21CEA9600](39, 0xE100000000000000);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_16();
      v6 = v14;
    }

    OUTLINED_FUNCTION_8_11();
    if (v11)
    {
      OUTLINED_FUNCTION_0_21();
      v6 = v15;
    }

    OUTLINED_FUNCTION_7_11();
  }

LABEL_12:
  v16 = v6;
  sub_2179A5088();
  sub_2179A4B34();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_18_5();
  return &v16;
}

uint64_t Unicode61TokenizerOptions.categories.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Unicode61TokenizerOptions.tokenChars.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_17_0();
}

uint64_t Unicode61TokenizerOptions.tokenChars.setter()
{
  OUTLINED_FUNCTION_24_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Unicode61TokenizerOptions.separators.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_17_0();
}

uint64_t Unicode61TokenizerOptions.separators.setter()
{
  OUTLINED_FUNCTION_24_1();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Special_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Special.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Letter_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Letter.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Mark_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Mark.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Number_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Number.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Punctuation_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Punctuation.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Symbol_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Symbol.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Separator_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Separator.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t AsciiTokenizerOptions.tokenChars.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_17_0();
}

uint64_t AsciiTokenizerOptions.tokenChars.setter()
{
  OUTLINED_FUNCTION_24_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AsciiTokenizerOptions.separators.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_17_0();
}

uint64_t AsciiTokenizerOptions.separators.setter()
{
  OUTLINED_FUNCTION_24_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

unint64_t sub_2179DEB9C()
{
  result = qword_27CB98468;
  if (!qword_27CB98468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98468);
  }

  return result;
}

unint64_t sub_2179DEBF4()
{
  result = qword_27CB98470;
  if (!qword_27CB98470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98470);
  }

  return result;
}

unint64_t sub_2179DEC4C()
{
  result = qword_27CB98478;
  if (!qword_27CB98478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98478);
  }

  return result;
}

unint64_t sub_2179DECA4()
{
  result = qword_27CB98480;
  if (!qword_27CB98480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98480);
  }

  return result;
}

unint64_t sub_2179DECFC()
{
  result = qword_27CB98488;
  if (!qword_27CB98488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98488);
  }

  return result;
}

unint64_t sub_2179DED54()
{
  result = qword_27CB98490;
  if (!qword_27CB98490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98490);
  }

  return result;
}

unint64_t sub_2179DEDAC()
{
  result = qword_27CB98498;
  if (!qword_27CB98498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98498);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaDB13BaseTokenizerOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2179DEE48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 50))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 49);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179DEE88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2179DEF0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179DEF4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2179DEFCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179DF00C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Unicode61TokenizerOptions.UnicodeCategories(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1A)
  {
    if (a2 + 230 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 230) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 231;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v5 >= 0x19)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for Unicode61TokenizerOptions.UnicodeCategories(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 230 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 230) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1A)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x19)
  {
    v6 = ((a2 - 26) >> 8) + 1;
    *result = a2 - 26;
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
          *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2179DF218(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Unicode61TokenizerOptions.UnicodeCategories.Punctuation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Unicode61TokenizerOptions.UnicodeCategories.Punctuation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Unicode61TokenizerOptions.UnicodeCategories.Symbol(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2179DF540(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_2179DF5C8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2179DF6A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179DF6F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrigramTokenizerOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65283;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
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

uint64_t storeEnumTagSinglePayload for TrigramTokenizerOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_2179DF8F0()
{
  v1 = v0 + 16;
  v2 = *(*v0 + 88);
  OUTLINED_FUNCTION_4_17();
  v4 = *(*(v3 + 104) + 8);
  OUTLINED_FUNCTION_10_12();
  v25 = 3;
  sub_2179B4374(v2);
  OUTLINED_FUNCTION_14_6();
  v24 = v5;
  v22 = 0uLL;
  v23 = -1;
  OUTLINED_FUNCTION_4_17();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_4_17();
  v21 = *(v8 + 96);
  OUTLINED_FUNCTION_11_9();
  sub_2179D18E0(v9, v10, v11, v12, v13, v14, v15, v7, v21);

  v16 = sub_2179ABC9C();
  v18 = v17;

  sub_2179A70AC(v1, &v22);
  v19 = sub_2179AC76C(&v25, v16, v18, &v22);
  sub_2179AC7D4(v19);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t sub_2179DFA30(uint64_t a1)
{
  v2 = v1 + 16;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(*v1 + 88);
  OUTLINED_FUNCTION_4_17();
  v8 = *(*(v7 + 104) + 8);
  OUTLINED_FUNCTION_10_12();
  v29 = 3;
  sub_2179B4374(v6);
  v28 = 0xF000000000000007;
  v26[0] = v3;
  v26[1] = v4;
  v27 = v5;
  sub_2179AEC5C();
  OUTLINED_FUNCTION_4_17();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_4_17();
  v25 = *(v11 + 96);
  OUTLINED_FUNCTION_11_9();
  sub_2179D18E0(v12, v13, v14, v15, v16, v17, v18, v10, v25);

  sub_2179AEC68(v3, v4, v5);
  sub_2179ABC9C();
  OUTLINED_FUNCTION_8_12();

  sub_2179A70AC(v2, v26);
  OUTLINED_FUNCTION_7_12();
  v23 = sub_2179AC76C(v19, v20, v21, v22);
  sub_2179AC7D4(v23);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t sub_2179DFCF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v8 = (v5 + 2);
  v7 = *v5;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = (*v5)[11];
  v13 = *(v7[13] + 8);
  OUTLINED_FUNCTION_10_12();
  v14 = OUTLINED_FUNCTION_5_13();
  sub_2179B4374(v14);
  OUTLINED_FUNCTION_14_6();
  v28 = v15;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  sub_2179AEC5C();
  sub_2179D18E0(v12, &v28, &v25, a2, a3 & 1, a4, a5 & 1, v7[10], v7[12]);

  sub_2179AEC68(v25, v26, v27);
  sub_2179ABC9C();
  OUTLINED_FUNCTION_8_12();

  sub_2179A70AC(v8, &v25);
  OUTLINED_FUNCTION_7_12();
  v20 = sub_2179AC76C(v16, v17, v18, v19);
  sub_2179AC7D4(v20);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t sub_2179DFE80(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v8 = v6 + 16;
  v7 = *v6;
  v9 = *a1;
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  v13 = *(*v6 + 88);
  v14 = *(v7[13] + 8);
  OUTLINED_FUNCTION_10_12();
  v15 = OUTLINED_FUNCTION_5_13();
  v16 = sub_2179B4374(v15);
  v31 = v9;
  v29[0] = v10;
  v29[1] = v11;
  v30 = v12;
  v17 = v7[10];
  v18 = v7[12];

  sub_2179D18E0(v16, &v31, v29, a3, a4 & 1, a5, a6 & 1, v17, v18);

  sub_2179B0CEC(v31);
  sub_2179ABC9C();
  OUTLINED_FUNCTION_8_12();

  sub_2179A70AC(v8, v29);
  OUTLINED_FUNCTION_7_12();
  v23 = sub_2179AC76C(v19, v20, v21, v22);
  sub_2179AC7D4(v23);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t SearchTable.Query.all()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(*(v3 + 8) + 24);
  OUTLINED_FUNCTION_15_1();
  type metadata accessor for Statement();
  v19 = 3;
  v18 = 0xF000000000000007;
  *&v17[0] = 0;
  WORD4(v17[0]) = 255;
  OUTLINED_FUNCTION_3_16();
  sub_2179D1E78(v5, v6, v7, v8, v9, v10, v11, v2, v3);
  v12 = sub_2179ABC9C();
  v14 = v13;

  sub_2179A70AC(v1, v17);
  v15 = sub_2179AC76C(&v19, v12, v14, v17);
  sub_2179AC7D4(v15);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

void SearchTable.Query.first(order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_9_3();
  a26 = v28;
  a27 = v29;
  v31 = *v30;
  v32 = *(v30 + 4);
  v34 = *(v33 + 16);
  v35 = *(*(*(v33 + 24) + 8) + 24);
  OUTLINED_FUNCTION_15_1();
  type metadata accessor for Statement();
  OUTLINED_FUNCTION_13();
  a15 = 0xF000000000000007;
  *&a11 = v31;
  WORD4(a11) = v32;
  OUTLINED_FUNCTION_1_22(v36, v37);
  v38 = sub_2179ABC9C();
  v40 = v39;

  OUTLINED_FUNCTION_18_6(v41, v42);
  v43 = sub_2179AC76C(&a17, v38, v40, &a11);
  sub_2179AC7D4(v43);
  OUTLINED_FUNCTION_11_10();
  if (!v27)
  {
    *&a11 = v38;
    OUTLINED_FUNCTION_15_1();
    sub_2179E9840();
    OUTLINED_FUNCTION_0_22();
    sub_2179E98C0();
  }

  OUTLINED_FUNCTION_10_0();
}

uint64_t sub_2179E0BB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Bool.queryValue.getter(char a1)
{
  if (a1)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t Bool.valueType.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t Assertion.__allocating_init(name:)(_BYTE *a1)
{
  OUTLINED_FUNCTION_0_23();
  *(swift_allocObject() + 16) = *a1;
  sub_21799AD84();
  if (v1)
  {
  }

  return OUTLINED_FUNCTION_1_23();
}

uint64_t Assertion.Name.hashValue.getter()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

uint64_t Assertion.__allocating_init()()
{
  OUTLINED_FUNCTION_0_23();
  *(swift_allocObject() + 16) = 0;
  sub_21799AD84();
  if (v0)
  {
  }

  return OUTLINED_FUNCTION_1_23();
}

uint64_t Assertion.init()()
{
  *(v0 + 16) = 0;
  sub_21799AD84();
  if (v1)
  {
  }

  return OUTLINED_FUNCTION_1_23();
}

uint64_t Assertion.init(name:)(_BYTE *a1)
{
  *(v1 + 16) = *a1;
  sub_21799AD84();
  if (v2)
  {
  }

  return OUTLINED_FUNCTION_1_23();
}

_BYTE *storeEnumTagSinglePayload for Assertion.Name(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179E0F70(uint64_t a1, unint64_t a2)
{
  v4 = sub_2179E0FBC(a1, a2);
  sub_2179E10D4(&unk_282993BD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2179E0FBC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2179E9730())
  {
    result = sub_2179E11B8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2179E9AE0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2179E9B50();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2179E10D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2179E122C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2179E11B8(uint64_t a1, uint64_t a2)
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

  sub_21799DC40(0, &qword_280B1C958);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2179E122C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21799DC40(0, &qword_280B1C958);
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

uint64_t sub_2179E1324(uint64_t a1)
{
  sub_2179E1380();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2179E1380()
{
  if (!qword_280B1C980)
  {
    sub_21799AED8(255, &qword_280B1C988, 0x277D82BB8);
    v0 = sub_2179E9A60();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1C980);
    }
  }
}

uint64_t sub_2179E13E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179E1428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2179E1478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v11 = *(a6 + 16);
  v12 = v11(a4, a6);
  swift_beginAccess();
  v13 = *(v12 + 32);
  v46 = *(v12 + 24);

  v47 = v13;
  if (!v13)
  {
    v14 = v8;
    v15 = v11(v8, a6);
    swift_beginAccess();
    v16 = a1;
    v17 = *(v15 + 48);
    v18 = *(v15 + 56);
    v19 = *(v15 + 64);
    sub_2179CA2C0(v17, v18, *(v15 + 64));

    if (v19 == 255)
    {

      updated = type metadata accessor for UpdateCommand.Errors();
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();
      (*(*(v14 - 8) + 8))(v16, v14);
      return updated;
    }

    v46 = sub_2179E56A8(v17, v18, v19 & 1);
    v47 = v20;
    sub_2179A7E34(v17, v18, v19);
    v8 = v14;
    a1 = v16;
  }

  v43 = (*(a5 + 32))(a3, a5);
  v44 = v21;
  v22 = *(a6 + 8);
  v45 = v8;
  v23 = sub_2179A32C4(v8);
  result = sub_2179E18AC(a2);
  v25 = result;
  v26 = 0;
  v49 = v23;
  v51 = *(v23 + 16);
  v48 = v23 + 32;
  v27 = result + 56;
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v26 == v51)
    {

      updated = sub_2179E196C(v43, v44, v46, v47, v28);

      (*(*(v45 - 8) + 8))(a1);
      return updated;
    }

    if (v26 >= *(v49 + 16))
    {
      break;
    }

    v29 = a1;
    v30 = v26 + 1;
    sub_2179A9940(v48 + 56 * v26, v56);
    if (*(v25 + 16))
    {
      v31 = v56[0];
      v32 = *(v25 + 40);
      sub_2179E9E20();
      sub_2179E96C0();
      v33 = sub_2179E9E40();
      v34 = ~(-1 << *(v25 + 32));
      while (1)
      {
        v35 = v33 & v34;
        if (((*(v27 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
        {
          break;
        }

        v36 = (*(v25 + 48) + 16 * v35);
        if (*v36 != v31 || v36[1] != *(&v31 + 1))
        {
          v38 = sub_2179E9D70();
          v33 = v35 + 1;
          if ((v38 & 1) == 0)
          {
            continue;
          }
        }

        v52 = v56[0];
        v53 = v56[1];
        v54 = v56[2];
        v55 = v57;
        result = swift_isUniquelyReferenced_nonNull_native();
        v58 = v28;
        if ((result & 1) == 0)
        {
          result = sub_2179A90BC(0, *(v28 + 16) + 1, 1);
          v28 = v58;
        }

        v40 = *(v28 + 16);
        v39 = *(v28 + 24);
        if (v40 >= v39 >> 1)
        {
          result = sub_2179A90BC(v39 > 1, v40 + 1, 1);
          v28 = v58;
        }

        *(v28 + 16) = v40 + 1;
        v41 = v28 + 56 * v40;
        *(v41 + 80) = v55;
        *(v41 + 48) = v53;
        *(v41 + 64) = v54;
        *(v41 + 32) = v52;
        goto LABEL_21;
      }
    }

    result = sub_2179AE2FC(v56);
LABEL_21:
    v26 = v30;
    a1 = v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_2179E18AC(uint64_t a1)
{
  result = MEMORY[0x21CEA9790](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_2179E1D80(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_2179E196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_2179A7E4C();
  v7 = v6;
  v8 = *(v6 + 16);
  v9 = v8 + 1;
  if (v8 >= *(v6 + 24) >> 1)
  {
LABEL_27:
    sub_2179A7E4C();
    v7 = v37;
  }

  *(v7 + 16) = v9;
  v10 = v7 + 16 * v8;
  *(v10 + 32) = 0x455441445055;
  *(v10 + 40) = 0xE600000000000000;
  v11 = *(v7 + 24);
  v12 = v8 + 2;

  if ((v8 + 2) > (v11 >> 1))
  {
    sub_2179A7E4C();
    v7 = v38;
  }

  v8 = 0;
  *(v7 + 16) = v12;
  v13 = v7 + 16 * v9;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v40 = a5 + 32;
  v14 = *(a5 + 16);
  while (1)
  {
    if (v8 == v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0uLL;
      v8 = v14;
      v18 = 0uLL;
      v19 = 0uLL;
    }

    else
    {
      if (v8 >= v14)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_26;
      }

      v46 = v8;
      sub_2179A9940(v40 + 56 * v8, &v47);
      v16 = v46;
      v15 = v47;
      v17 = v48[0];
      v18 = v48[1];
      ++v8;
      v19 = v48[2];
    }

    v49[0] = v16;
    v49[1] = v15;
    v50[0] = v17;
    v50[1] = v18;
    v9 = v17;
    v50[2] = v19;
    if (!v17)
    {
      break;
    }

    sub_2179A0D5C((v50 + 8), v45);
    v46 = v15;
    v47 = v9;
    sub_2179A0D5C(v45, v48);
    if (v16)
    {
      v20 = 44;
    }

    else
    {
      v20 = 5522771;
    }

    if (v16)
    {
      v21 = 0xE100000000000000;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v22 = *(v7 + 16);
    if (v22 >= *(v7 + 24) >> 1)
    {
      sub_2179A7E4C();
      v7 = v30;
    }

    *(v7 + 16) = v22 + 1;
    v23 = v7 + 16 * v22;
    *(v23 + 32) = v20;
    *(v23 + 40) = v21;
    v24 = sub_2179C9430(v15, v9, v48, a3, a4, a1, a2);
    v26 = v25;

    MEMORY[0x21CEA9600](2112800, 0xE300000000000000);
    MEMORY[0x21CEA9600](v24, v26);

    v27 = v15;
    v28 = *(v7 + 16);
    a5 = v28 + 1;
    if (v28 >= *(v7 + 24) >> 1)
    {
      sub_2179A7E4C();
      v7 = v31;
    }

    *(v7 + 16) = a5;
    v29 = v7 + 16 * v28;
    *(v29 + 32) = v27;
    *(v29 + 40) = v9;
    sub_2179AE2FC(&v46);
  }

  strcpy(v49, "WHERE id = '");
  BYTE5(v49[1]) = 0;
  HIWORD(v49[1]) = -5120;
  MEMORY[0x21CEA9600](a3, a4);
  MEMORY[0x21CEA9600](39, 0xE100000000000000);
  v32 = v49[0];
  v33 = v49[1];
  v34 = *(v7 + 16);
  if (v34 >= *(v7 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v39;
  }

  *(v7 + 16) = v34 + 1;
  v35 = v7 + 16 * v34;
  *(v35 + 32) = v32;
  *(v35 + 40) = v33;
  return v7;
}

uint64_t sub_2179E1D1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2179EB920;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_2179E1D80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2179E9E20();
  sub_2179E96C0();
  v9 = sub_2179E9E40();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2179E9D70() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_2179E211C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_2179E1ECC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2179E25F8();
  result = sub_2179E9AC0();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2179E1D1C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2179E9E20();
    sub_2179E96C0();
    result = sub_2179E9E40();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2179E211C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2179E1ECC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2179E23D0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2179E9E20();
      sub_2179E96C0();
      result = sub_2179E9E40();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2179E9D70() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2179E2284();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2179E9DC0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_2179E2284()
{
  v1 = v0;
  sub_2179E25F8();
  v2 = *v0;
  v3 = sub_2179E9AB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2179E23D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2179E25F8();
  result = sub_2179E9AC0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2179E9E20();

        sub_2179E96C0();
        result = sub_2179E9E40();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_2179E25F8()
{
  if (!qword_27CB98500[0])
  {
    v0 = sub_2179E9AD0();
    if (!v1)
    {
      atomic_store(v0, qword_27CB98500);
    }
  }
}

_BYTE *sub_2179E2650(_BYTE *result, int a2, int a3)
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

uint64_t sub_2179E26EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CGSize.init(valueType:connection:)(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16))
  {
    goto LABEL_18;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  v27[0] = 44;
  v27[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](a1);
  v24 = v27;

  v5 = sub_2179D12B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_2179D1638, &v23, v3, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v26 = a2;
    v27[0] = MEMORY[0x277D84F90];
    sub_2179C2118(0, v6, 0);
    v7 = v27[0];
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = sub_2179E9870();
      v15 = v14;
      v27[0] = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2179C2118(v16 > 1, v17 + 1, 1);
        v7 = v27[0];
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15 & 1;
      v8 += 4;
      --v6;
    }

    while (v6);

    a2 = v26;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v19 = *(v7 + 16);
  if (!v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((*(v7 + 40) & 1) == 0)
  {
    if (v19 != 1)
    {
      if ((*(v7 + 56) & 1) == 0)
      {
        v20 = *(v7 + 32);
        v21 = *(v7 + 48);

        sub_2179AC53C(v3, v4, 0);
        return __swift_destroy_boxed_opaque_existential_1(a2);
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  v25 = 0;
  v24 = 28;
  result = sub_2179E9C40();
  __break(1u);
  return result;
}

uint64_t CGSize.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = sub_2179E9850();
  v6 = v2;
  MEMORY[0x21CEA9600](44, 0xE100000000000000);
  v3 = sub_2179E9850();
  MEMORY[0x21CEA9600](v3);

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_2179E2A40@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return CGSize.valueType.getter(a1);
}

uint64_t sub_2179E2A48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = CGSize.init(valueType:connection:)(a1, a2);
  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_2179E2A70(uint64_t a1)
{
  *(a1 + 8) = sub_2179E2AD8(&qword_27CB98590);
  result = sub_2179E2AD8(&qword_27CB98598);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2179E2AD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SearchColumn.name.getter()
{
  OUTLINED_FUNCTION_6_13();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 64));
  return v1;
}

uint64_t SearchColumn.unindexed.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 64));
  return v2;
}

double SearchColumn.weight.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 32);
  os_unfair_lock_unlock((v1 + 64));
  return v2;
}

uint64_t sub_2179E2BD8(uint64_t **a1)
{
  v3 = *v1;
  v4 = v1[2];
  os_unfair_lock_lock((v4 + 64));
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 64));
  a1[3] = v3;
  a1[4] = &off_282997D08;
  *a1 = v1;

  return v5;
}

uint64_t sub_2179E2C70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return SearchColumn.wrappedValue.setter();
}

uint64_t SearchColumn.wrappedValue.setter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 16);
  sub_2179E2D60(&v1[4]);
  os_unfair_lock_unlock(v1 + 16);
}

uint64_t sub_2179E2D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);

  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  return result;
}

uint64_t (*SearchColumn.wrappedValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_6_13();
  v5 = *(v2 + 48);
  v4 = *(v2 + 56);

  os_unfair_lock_unlock((v2 + 64));
  *a1 = v5;
  a1[1] = v4;
  return sub_2179E2DE0;
}

uint64_t sub_2179E2DE0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    SearchColumn.wrappedValue.setter();
  }

  else
  {
    v7 = *a1;
    return SearchColumn.wrappedValue.setter();
  }
}

uint64_t SearchColumn.__allocating_init(name:weight:unindexed:)()
{
  OUTLINED_FUNCTION_5_14();
  v0 = swift_allocObject();
  SearchColumn.init(name:weight:unindexed:)();
  return v0;
}

uint64_t SearchColumn.init(name:weight:unindexed:)()
{
  OUTLINED_FUNCTION_5_14();
  sub_2179E2F14();
  v5 = swift_allocObject();
  *(v5 + 64) = 0;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0xE000000000000000;
  *(v1 + 16) = v5;
  return v1;
}

void sub_2179E2F14()
{
  if (!qword_280B1C970)
  {
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_2179E9B40();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1C970);
    }
  }
}

uint64_t SearchColumn.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SearchColumn.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2179E2FD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_3_17() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746867696577 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_3_17() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657865646E696E75 && a2 == 0xE900000000000064;
      if (v7 || (OUTLINED_FUNCTION_3_17() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_3_17();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2179E30FC(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x746867696577;
      break;
    case 2:
      result = 0x657865646E696E75;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2179E3198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179E2FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2179E31CC(uint64_t a1)
{
  v2 = sub_2179E3604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2179E3208(uint64_t a1)
{
  v2 = sub_2179E3604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchColumn.__allocating_init(from:)(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_1();
  sub_2179E38A0(v3, v4, v5);
  v37 = v6;
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E3604();
  sub_2179E9E90();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v35;
    v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = a1;
    v40 = 0;
    v13 = v37;
    v14 = v10;
    v15 = sub_2179E9C80();
    v17 = v16;
    v39 = 1;
    sub_2179E9CA0();
    v19 = v18;
    v38 = 2;
    v21 = sub_2179E9C90();
    v22 = v15;
    v11 = swift_allocObject();
    sub_2179E2F14();
    v23 = swift_allocObject();
    *(v23 + 64) = 0;
    v31 = (v23 + 64);
    *(v23 + 16) = v22;
    v32 = v23 + 16;
    *(v23 + 24) = v17;
    *(v23 + 32) = v19;
    *(v23 + 40) = v21 & 1;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0xE000000000000000;
    *(v11 + 16) = v23;
    v24 = v33;
    (*(v12 + 16))(v33, v14, v13);
    v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v26 = swift_allocObject();
    v27 = (*(v12 + 32))(v26 + v25, v24, v13);
    v36 = &v31;
    MEMORY[0x28223BE20](v27);
    *(&v31 - 2) = sub_2179E36C0;
    *(&v31 - 1) = v26;
    v28 = v31;
    os_unfair_lock_lock(v31);
    sub_2179E3780(v32);
    os_unfair_lock_unlock(v28);

    v29 = OUTLINED_FUNCTION_1_24();
    v30(v29);

    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return v11;
}

unint64_t sub_2179E3604()
{
  result = qword_27CB985A8;
  if (!qword_27CB985A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB985A8);
  }

  return result;
}

uint64_t sub_2179E36C0()
{
  v0 = OUTLINED_FUNCTION_1_1();
  sub_2179E38A0(v0, v1, v2);
  v4 = *(*(v3 - 8) + 80);
  return sub_2179E3658();
}

uint64_t sub_2179E372C(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    v8 = *(a1 + 40);

    *(a1 + 32) = v6;
    *(a1 + 40) = v7;
  }

  return result;
}

uint64_t SearchColumn.encode(to:)(void *a1)
{
  v2 = v1;
  sub_2179E38A0(0, &qword_27CB985B0, MEMORY[0x277D84538]);
  swift_allocBox();
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E3604();
  sub_2179E9EB0();
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 64));

  sub_2179E3AAC((v5 + 16));
  os_unfair_lock_unlock((v5 + 64));
}

void sub_2179E38A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2179E3604();
    v7 = a3(a1, &unk_282997DF8, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2179E3904(uint64_t *a1)
{
  sub_2179E38A0(0, &qword_27CB985B0, MEMORY[0x277D84538]);
  swift_projectBox();
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  sub_2179E9CE0();
  result = swift_endAccess();
  if (!v1)
  {
    v6 = a1[2];
    swift_beginAccess();
    sub_2179E9D00();
    swift_endAccess();
    v7 = *(a1 + 24);
    swift_beginAccess();
    sub_2179E9CF0();
    swift_endAccess();
    v9 = a1[4];
    v8 = a1[5];
    swift_beginAccess();
    sub_2179E9CE0();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2179E3AAC(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return v2(v6);
}

uint64_t sub_2179E3AF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SearchColumn.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2179E3B44()
{
  OUTLINED_FUNCTION_6_13();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  os_unfair_lock_unlock((v0 + 64));
  return v1;
}

uint64_t static SearchColumn.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock((v3 + 64));
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);

  os_unfair_lock_unlock((v3 + 64));
  v6 = *(a2 + 16);
  os_unfair_lock_lock((v6 + 64));
  v8 = *(v6 + 48);
  v7 = *(v6 + 56);

  os_unfair_lock_unlock((v6 + 64));
  if (v5 == v8 && v4 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2179E9D70();
  }

  return v10 & 1;
}

void sub_2179E3C84(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_13();
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);

  os_unfair_lock_unlock((v1 + 64));
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
}

void sub_2179E3CCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 255)
  {
    v7 = *(v1 + 16);
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    if (v2 != 5 || *a1 != 0)
    {
      v6 = *(v1 + 16);
      MEMORY[0x28223BE20](a1);
      sub_2179E4228(v3, v4, v2);
      os_unfair_lock_lock(v6 + 16);
      sub_2179E4204(&v6[4]);
      os_unfair_lock_unlock(v6 + 16);
      sub_2179AA22C(v3, v4, v2);
      return;
    }

    v7 = *(v1 + 16);
    sub_2179E4228(0, 0, 5);
    sub_2179AC430(0, 0, 5);
  }

  os_unfair_lock_lock((v7 + 64));
  v8 = *(v7 + 56);
  *(v7 + 48) = 0;
  *(v7 + 56) = 0xE000000000000000;

  os_unfair_lock_unlock((v7 + 64));
}

uint64_t sub_2179E3E10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  else
  {

    v5 = sub_2179E9770();
    v7 = v6;
    v8 = *(a1 + 40);

    *(a1 + 32) = v5;
    *(a1 + 40) = v7;
  }

  return result;
}

uint64_t sub_2179E3F3C()
{
  v1 = *v0;
  SearchColumn.saveChain(for:)();
  return 0;
}

uint64_t SearchColumn.saveChain(for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 56);

  os_unfair_lock_unlock((v1 + 64));

  return 0;
}

_BYTE *sub_2179E4014(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2179E4100()
{
  result = qword_27CB985B8;
  if (!qword_27CB985B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB985B8);
  }

  return result;
}

unint64_t sub_2179E4158()
{
  result = qword_27CB985C0;
  if (!qword_27CB985C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB985C0);
  }

  return result;
}

unint64_t sub_2179E41B0()
{
  result = qword_27CB985C8[0];
  if (!qword_27CB985C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB985C8);
  }

  return result;
}

uint64_t sub_2179E4228(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2179AC430(result, a2, a3);
  }

  return result;
}

uint64_t sub_2179E4240@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_2179E42C4()
{
  result = qword_280B1DBA0;
  if (!qword_280B1DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DBA0);
  }

  return result;
}

unint64_t sub_2179E431C()
{
  result = qword_280B1DB98;
  if (!qword_280B1DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DB98);
  }

  return result;
}

uint64_t sub_2179E43C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_2179E43F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

TeaDB::AssertionOptions sub_2179E44A8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AssertionOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2179E44E8@<X0>(uint64_t *a1@<X8>)
{
  result = AssertionOptions.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2179E4520()
{
  result = qword_280B1DBF8;
  if (!qword_280B1DBF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280B1DBF8);
  }

  return result;
}

uint64_t JSON.valueType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2179E90E0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2179E90D0();
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = sub_2179E90C0();
  v11 = v10;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = 4;
  return result;
}

uint64_t sub_2179E4668(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_2179D23E4();
}

uint64_t sub_2179E4678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_2179D2330(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2179E46B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179E4704(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t JSON.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v15 = a2[2];
  v4 = a2[4];
  type metadata accessor for JSON.CodingKeys();
  OUTLINED_FUNCTION_1_25();
  swift_getWitnessTable();
  v5 = sub_2179E9D30();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  sub_2179E9D20();
  return (*(v7 + 8))(v12, v5);
}

uint64_t JSON.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  OUTLINED_FUNCTION_2();
  v39 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSON.CodingKeys();
  OUTLINED_FUNCTION_1_25();
  swift_getWitnessTable();
  v42 = sub_2179E9CD0();
  OUTLINED_FUNCTION_2();
  v37 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v38 = a2;
  v40 = a3;
  v18 = type metadata accessor for JSON();
  OUTLINED_FUNCTION_2();
  v35 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v43;
  sub_2179E9E90();
  if (!v26)
  {
    v34 = v24;
    v43 = v18;
    v28 = v37;
    v27 = v38;
    v29 = v39;
    v30 = v41;
    sub_2179E9CC0();
    (*(v28 + 8))(v17, v42);
    v31 = v34;
    (*(v29 + 32))(v34, v30, v27);
    (*(v35 + 32))(v36, v31, v43);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *sub_2179E4BCC(_BYTE *result, int a2, int a3)
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

uint64_t sub_2179E4E08(char a1)
{
  v3 = v1;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 88);
  v7 = *(v6 + 24);
  type metadata accessor for Statement();
  v13 = 2;
  if (a1)
  {
    sub_2179E9B10();

    *&v12[0] = 0xD000000000000015;
    *(&v12[0] + 1) = 0x80000002179F0420;
  }

  else
  {
    *&v12[0] = 0x42415420504F5244;
    *(&v12[0] + 1) = 0xEB0000000020454CLL;
  }

  v8 = (*(v6 + 32))(v5, v6);
  MEMORY[0x21CEA9600](v8);

  MEMORY[0x21CEA9600](59, 0xE100000000000000);
  v9 = v12[0];
  sub_2179A70AC(v3 + 16, v12);
  v10 = sub_2179AC76C(&v13, v9, *(&v9 + 1), v12);
  sub_2179AC7D4(v10);

  if (!v2)
  {
  }

  return result;
}

uint64_t Drop.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_2179E5094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v55 = v6;
  v11 = *v6;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v16 + 16))
  {
    v17 = *(a4 + 8);
    v18 = sub_2179A32C4(a3);
    v58 = 1;
    (*(v12 + 16))(v15, a1, a3);
    v20 = *(v11 + 80);
    v19 = *(v11 + 88);

    sub_2179E1478(v15, a2, v20, a3, v19, a4);
    if (v5)
    {
LABEL_3:
    }

    else
    {
      v52 = 0;
      v21 = *(v19 + 24);
      type metadata accessor for Statement();
      v22 = sub_2179E1CA4();
      v24 = v23;

      sub_2179A70AC((v55 + 2), &v56);
      v51 = sub_2179AC76C(&v58, v22, v24, &v56);
      v25 = *(v18 + 16);
      if (v25)
      {
        v53 = a3;
        v54 = a4;
        v58 = MEMORY[0x277D84F90];
        sub_2179A9394(0, v25, 0);
        v26 = 0;
        v27 = v58;
        v28 = v18;
        v29 = v18 + 32;
        while (v26 < *(v28 + 16))
        {
          sub_2179A9940(v29, &v56);
          v31 = sub_2179B74E4(v56, *(&v56 + 1), v57, v55);
          if (v31)
          {
            v32 = v30;
            v33 = swift_allocObject();
            *(v33 + 16) = v31;
            *(v33 + 24) = v32;
            v31 = sub_2179D006C;
          }

          else
          {
            v33 = 0;
          }

          sub_2179AE2FC(&v56);
          v58 = v27;
          v35 = *(v27 + 16);
          v34 = *(v27 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_2179A9394(v34 > 1, v35 + 1, 1);
            v27 = v58;
          }

          ++v26;
          *(v27 + 16) = v35 + 1;
          v36 = v27 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
          v29 += 56;
          if (v25 == v26)
          {

            goto LABEL_15;
          }
        }

LABEL_29:
        __break(1u);
      }

      else
      {

        v27 = MEMORY[0x277D84F90];
LABEL_15:
        v37 = 0;
        v38 = *(v27 + 16);
        v39 = MEMORY[0x277D84F90];
LABEL_16:
        v40 = (v27 + 32 + 16 * v37);
        while (v38 != v37)
        {
          if (v37 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_29;
          }

          ++v37;
          v41 = v40 + 2;
          v42 = *v40;
          v40 += 2;
          if (v42)
          {
            v43 = *(v41 - 1);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = *(v39 + 16);
              sub_2179A94A4();
              v39 = v47;
            }

            v44 = *(v39 + 16);
            if (v44 >= *(v39 + 24) >> 1)
            {
              sub_2179A94A4();
              v39 = v48;
            }

            *(v39 + 16) = v44 + 1;
            v45 = v39 + 16 * v44;
            *(v45 + 32) = v42;
            *(v45 + 40) = v43;
            goto LABEL_16;
          }
        }

        sub_2179A9E30();

        v50 = v52;
        sub_2179AC7D4(v49);

        if (!v50)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

uint64_t Update.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t PreparedStatement.deinit()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_2179E55E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xE3 && *(a1 + 17))
    {
      v2 = *a1 + 226;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0x1D)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179E5620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE2)
  {
    *(result + 16) = 0;
    *result = a2 - 227;
    *(result + 8) = 0;
    if (a3 >= 0xE3)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE3)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2179E5664(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x1D)
  {
    *result = a2 - 29;
    *(result + 8) = 0;
    LOBYTE(a2) = 29;
  }

  *(result + 16) = a2;
  return result;
}

void (*sub_2179E56A8(void (*a1)(void *__return_ptr), uint64_t a2, char a3))(void *__return_ptr)
{
  v3 = a1;
  if (a3)
  {
    a1(&v5);
    return v5;
  }

  else
  {
  }

  return v3;
}

uint64_t sub_2179E56FC()
{
  v18 = sub_2179E9E70();
  v17 = *(v18 - 8);
  v0 = *(v17 + 64);
  MEMORY[0x28223BE20](v18);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v20 + 1) = &type metadata for RawEntity;
  sub_2179E9E50();
  v16 = v2;
  sub_2179E9E60();
  sub_2179E9C00();

  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2179E9C60();
    v26 = v19;
    v27[0] = v20;
    v27[1] = v21;
    if (!*(&v21 + 1))
    {
      break;
    }

    v4 = v26;
    sub_2179AD670(v27, v25);
    if (*(&v4 + 1))
    {
      sub_2179AD43C(v25, v23);
      sub_21799AC4C(0, qword_280B1E498);
      if (swift_dynamicCast())
      {
        sub_2179A0D5C(&v19, v24);
        v19 = v4;
        sub_2179A70AC(v24, &v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2179ADDC4(0, v3[2] + 1, 1, v3);
          v3 = v11;
        }

        v6 = v3[2];
        v5 = v3[3];
        if (v6 >= v5 >> 1)
        {
          sub_2179ADDC4(v5 > 1, v6 + 1, 1, v3);
          v3 = v12;
        }

        __swift_destroy_boxed_opaque_existential_1(v24);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v3[2] = v6 + 1;
        v7 = &v3[7 * v6];
        v8 = v19;
        v9 = v20;
        v10 = v21;
        v7[10] = v22;
        *(v7 + 3) = v9;
        *(v7 + 4) = v10;
        *(v7 + 2) = v8;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v25);

        *&v21 = 0;
        v20 = 0u;
        v19 = 0u;
        sub_2179A87AC(&v19, sub_2179E7634);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  v13 = sub_2179AAA9C(v3);

  (*(v17 + 8))(v16, v18);
  return v13;
}

uint64_t sub_2179E5A0C(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  sub_2179A7E4C();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10 >= *(v8 + 24) >> 1)
  {
    sub_2179A7E4C();
    v9 = v25;
  }

  *(v9 + 16) = v10 + 1;
  v11 = v9 + 16 * v10;
  *(v11 + 32) = 0x455441455243;
  *(v11 + 40) = 0xE600000000000000;
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  v14 = (*(v13 + 56))(v12, v13);
  v15 = *(v9 + 16);
  if (v14)
  {
    v16 = v15 + 1;
    if (v15 >= *(v9 + 24) >> 1)
    {
      sub_2179A7E4C();
      v9 = v28;
    }

    *(v9 + 16) = v16;
    v17 = v9 + 16 * v15;
    *(v17 + 32) = 0x455551494E55;
    *(v17 + 40) = 0xE600000000000000;
  }

  else
  {
    v16 = *(v9 + 16);
  }

  v18 = v16 + 1;
  if (v16 >= *(v9 + 24) >> 1)
  {
    sub_2179A7E4C();
    v9 = v26;
  }

  *(v9 + 16) = v18;
  v19 = v9 + 16 * v16;
  *(v19 + 32) = 0x5845444E49;
  *(v19 + 40) = 0xE500000000000000;
  if (a4)
  {
    v20 = v16 + 2;
    if (v20 > *(v9 + 24) >> 1)
    {
      sub_2179A7E4C();
      v9 = v29;
    }

    *(v9 + 16) = v20;
    v21 = v9 + 16 * v18;
    strcpy((v21 + 32), "IF NOT EXISTS");
    *(v21 + 46) = -4864;
  }

  sub_2179E9B10();

  MEMORY[0x21CEA9600](a1, a2);
  MEMORY[0x21CEA9600](542002976, 0xE400000000000000);
  MEMORY[0x21CEA9600](0x65765F656C626174, 0xEE00736E6F697372);
  MEMORY[0x21CEA9600](10272, 0xE200000000000000);
  MEMORY[0x21CEA9600](a1, a2);

  MEMORY[0x21CEA9600](15145, 0xE200000000000000);
  v22 = *(v9 + 16);
  if (v22 >= *(v9 + 24) >> 1)
  {
    sub_2179A7E4C();
    v9 = v27;
  }

  *(v9 + 16) = v22 + 1;
  v23 = v9 + 16 * v22;
  *(v23 + 32) = 0xD000000000000015;
  *(v23 + 40) = 0x80000002179F0530;
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t sub_2179E5D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  sub_2179A7E4C();
  v17 = v16;
  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  v20 = v18 >> 1;
  v21 = v19 + 1;
  if (v18 >> 1 <= v19)
  {
    OUTLINED_FUNCTION_10(v18);
    OUTLINED_FUNCTION_15();
    v17 = v63;
    v18 = *(v63 + 24);
    v20 = v18 >> 1;
  }

  *(v17 + 16) = v21;
  v22 = v17 + 16 * v19;
  *(v22 + 32) = 0x5443454C4553;
  *(v22 + 40) = 0xE600000000000000;
  v23 = v19 + 2;
  if (v20 < (v19 + 2))
  {
    OUTLINED_FUNCTION_1_28(v18);
    sub_2179A7E4C();
    v17 = v64;
  }

  *(v17 + 16) = v23;
  v24 = v17 + 16 * v21;
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  v25 = *(v17 + 24);
  v26 = v19 + 3;
  if ((v19 + 3) > (v25 >> 1))
  {
    OUTLINED_FUNCTION_10(v25);
    OUTLINED_FUNCTION_15();
    v17 = v65;
  }

  *(v17 + 16) = v26;
  v27 = v17 + 16 * v23;
  *(v27 + 32) = 1297044038;
  *(v27 + 40) = 0xE400000000000000;
  v28 = *(v17 + 24);
  v29 = v19 + 4;
  if ((v19 + 4) > (v28 >> 1))
  {
    OUTLINED_FUNCTION_10(v28);
    OUTLINED_FUNCTION_15();
    v17 = v66;
  }

  *(v17 + 16) = v29;
  v30 = v17 + 16 * v26;
  strcpy((v30 + 32), "table_versions");
  *(v30 + 47) = -18;
  if (a4)
  {
    v31 = *(v17 + 24);
    v32 = v19 + 5;
    if ((v19 + 5) > (v31 >> 1))
    {
      OUTLINED_FUNCTION_10(v31);
      OUTLINED_FUNCTION_15();
      v17 = v67;
    }

    *(v17 + 16) = v32;
    v33 = v17 + 16 * v29;
    *(v33 + 32) = 0x4552454857;
    *(v33 + 40) = 0xE500000000000000;
    v34 = *(v17 + 24);
    if ((v19 + 6) > (v34 >> 1))
    {
      OUTLINED_FUNCTION_1_28(v34);
      sub_2179A7E4C();
      v17 = v68;
    }

    *(v17 + 16) = v19 + 6;
    v35 = v17 + 16 * v32;
    *(v35 + 32) = a3;
    *(v35 + 40) = a4;
  }

  if (a6)
  {
    v37 = *(v17 + 16);
    v36 = *(v17 + 24);
    if (v37 >= v36 >> 1)
    {
      OUTLINED_FUNCTION_1_28(v36);
      sub_2179A7E4C();
      v17 = v69;
    }

    *(v17 + 16) = v37 + 1;
    v38 = v17 + 16 * v37;
    *(v38 + 32) = a5;
    *(v38 + 40) = a6;
  }

  if (a8)
  {
    if (a10)
    {
      return v17;
    }

    v39 = *(v17 + 24);
    if (*(v17 + 16) >= v39 >> 1)
    {
      OUTLINED_FUNCTION_1_28(v39);
      sub_2179A7E4C();
      v17 = v74;
    }

    OUTLINED_FUNCTION_7_15();
    v40 = sub_2179E9D40();
    v42 = v41;
    v44 = *(v17 + 16);
    v43 = *(v17 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      OUTLINED_FUNCTION_1_28(v43);
      sub_2179A7E4C();
      v17 = v75;
    }

    *(v17 + 16) = v45;
    v46 = v17 + 16 * v44;
    *(v46 + 32) = v40;
    *(v46 + 40) = v42;
    goto LABEL_31;
  }

  v47 = *(v17 + 24);
  if (*(v17 + 16) >= v47 >> 1)
  {
    OUTLINED_FUNCTION_1_28(v47);
    sub_2179A7E4C();
    v17 = v70;
  }

  OUTLINED_FUNCTION_7_15();
  v48 = sub_2179E9D40();
  v50 = v49;
  v52 = *(v17 + 16);
  v51 = *(v17 + 24);
  v45 = v52 + 1;
  if (v52 >= v51 >> 1)
  {
    OUTLINED_FUNCTION_1_28(v51);
    sub_2179A7E4C();
    v17 = v71;
  }

  *(v17 + 16) = v45;
  v53 = v17 + 16 * v52;
  *(v53 + 32) = v48;
  *(v53 + 40) = v50;
  if ((a10 & 1) == 0)
  {
LABEL_31:
    v54 = *(v17 + 24);
    if (v45 >= v54 >> 1)
    {
      OUTLINED_FUNCTION_10(v54);
      OUTLINED_FUNCTION_15();
      v17 = v72;
    }

    *(v17 + 16) = v45 + 1;
    v55 = v17 + 16 * v45;
    *(v55 + 32) = 0x54455346464FLL;
    *(v55 + 40) = 0xE600000000000000;
    v56 = sub_2179E9D40();
    v58 = v57;
    v60 = *(v17 + 16);
    v59 = *(v17 + 24);
    if (v60 >= v59 >> 1)
    {
      OUTLINED_FUNCTION_10(v59);
      OUTLINED_FUNCTION_15();
      v17 = v73;
    }

    *(v17 + 16) = v60 + 1;
    v61 = v17 + 16 * v60;
    *(v61 + 32) = v56;
    *(v61 + 40) = v58;
  }

  return v17;
}

void *sub_2179E60DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_2179A7BC0(1, 1);
  if (!v4)
  {
    v19 = MEMORY[0x277D837D0];
    v20 = &protocol witness table for String;
    strcpy(&v18, "table_versions");
    HIBYTE(v18) = -18;
    v7 = swift_allocObject();
    *(v7 + 16) = 25705;
    *(v7 + 24) = 0xE200000000000000;
    sub_2179A0D5C(&v18, v7 + 32);
    a3 = sub_2179A95E0(v7, 0, 0, 255, v8, v9, v10);
    v12 = v11;

    if (a3)
    {
      swift_beginAccess();
      v14 = *(v12 + 32);
      swift_beginAccess();
      v15 = *(v14 + 32);
      if (v15 && (*(v14 + 24) == 0x302E302E30 ? (v16 = v15 == 0xE500000000000000) : (v16 = 0), v16 || (sub_2179E9D70() & 1) != 0))
      {
        sub_2179AA30C(a3);
      }

      else
      {
        sub_2179A70AC(a4, &v18);
        sub_2179E75D8();
        inited = swift_initStackObject();
        sub_2179A0D5C(&v18, inited + 16);
        sub_2179AA30C(a3);
        sub_2179E6300(1);

        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((inited + 16));
      }
    }
  }

  return a3;
}

uint64_t sub_2179E6300(char a1)
{
  if (a1)
  {
    sub_2179A70AC(v1 + 16, v6);
    sub_2179A4AE0(0, qword_280B1DD58, &type metadata for Versions.Entity, &off_282996810, type metadata accessor for Statement);
    swift_initStackObject();
    v3 = 0xD000000000000024;
    v4 = 0x80000002179F0500;
  }

  else
  {
    sub_2179A70AC(v1 + 16, v6);
    sub_2179A4AE0(0, qword_280B1DD58, &type metadata for Versions.Entity, &off_282996810, type metadata accessor for Statement);
    swift_initStackObject();
    v4 = 0x80000002179F04E0;
    v3 = 0xD00000000000001ALL;
  }

  sub_2179A935C(2, v3, v4, v6);
  sub_2179A5760();

  if (!v2)
  {
  }

  return result;
}

uint64_t Create<>.EntityMigration.init(migrate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = result;
  a4[2] = a2;
  return result;
}

uint64_t Create<>.migrate<A>(from:ifNotExists:migrate:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v7[7])
  {
    v13 = *v7;
    v56 = a4;
    v14 = v7[9];

    sub_2179A7BC0(1, 1);

    if (v8)
    {
      return result;
    }

    v49 = a2;
    v50 = a5;
    v51 = a7;
    v16 = *(v13 + 80);
    v17 = a6;
    v18 = *(a6 + 8);
    v19 = *(v18 + 32);

    v20 = v19(v16, v18);
    v54 = MEMORY[0x277D837D0];
    v55 = &protocol witness table for String;
    *&v53 = v20;
    *(&v53 + 1) = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = 25705;
    *(v22 + 24) = 0xE200000000000000;
    sub_2179A0D5C(&v53, v22 + 32);
    v26 = sub_2179A95E0(v22, 0, 0, 255, v23, v24, v25);
    v28 = v27;

    v48 = v17;
    if (v26)
    {
      OUTLINED_FUNCTION_11_12();
      v29 = *(v28 + 32);
      OUTLINED_FUNCTION_11_12();
      v31 = *(v29 + 24);
      v30 = *(v29 + 32);
      v32 = *(*(v51 + 8) + 40);

      v33 = v32();
      if (v30)
      {
        if (v31 == v33 && v30 == v34)
        {
        }

        else
        {
          OUTLINED_FUNCTION_16_6();
          v36 = sub_2179E9D70();

          if ((v36 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v37 = *(v28 + 32);
        OUTLINED_FUNCTION_11_12();
        v39 = *(v37 + 24);
        v38 = *(v37 + 32);
        v40 = *(v18 + 40);

        v41 = v40(v16, v18);
        if (v38)
        {
          v43 = v39 == v41 && v38 == v42;
          v44 = v50;
          v45 = v51;
          v46 = v48;
          if (v43)
          {

            goto LABEL_26;
          }

          OUTLINED_FUNCTION_16_6();
          v47 = sub_2179E9D70();

          if (v47)
          {
            goto LABEL_26;
          }
        }

        else
        {

          v44 = v50;
          v45 = v51;
          v46 = v48;
        }

        sub_2179E67B4(a3, v56, v49 & 1, v44, v46, v45);
      }

      else
      {
      }

LABEL_26:
    }

    a2 = v49;
  }

  return sub_2179A750C(a2 & 1);
}

uint64_t sub_2179E67B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*v6 + 80);
  type metadata accessor for MigratableEntity();
  swift_getWitnessTable();
  type metadata accessor for Create();
  v51 = v6 + 16;
  sub_2179A70AC(v6 + 16, &v53);
  sub_2179A7790(&v53, 0, 0, 0);
  sub_2179A44CC(1, 1);

  sub_2179AC7D4(v10);
  if (!v7)
  {
    v47 = v9;
    v46 = v6;

    v11 = *(a6 + 8);
    v12 = *(v11 + 24);
    type metadata accessor for Statement();
    v55 = 3;
    v52 = 0xF000000000000007;
    v53 = 0uLL;
    v54 = -1;
    sub_2179D1704(&v52, &v53, 0, 1, 0, 1, a4, v11);
    v13 = sub_2179ABC9C();
    v15 = v14;

    sub_2179A70AC(v51, &v53);
    v16 = sub_2179AC76C(&v55, v13, v15, &v53);
    v18 = sub_2179AC7D4(v16);

    swift_getWitnessTable();
    type metadata accessor for Save();
    sub_2179A70AC(v51, &v53);
    v19 = sub_2179A8074(&v53);
    *&v53 = v18;
    MEMORY[0x28223BE20](v19);
    sub_2179E9840();
    swift_getWitnessTable();
    sub_2179E9790();

    v55 = 2;
    strcpy(&v53, "DROP TABLE ");
    HIDWORD(v53) = -352321536;
    v20 = (*(v11 + 32))();
    MEMORY[0x21CEA9600](v20);

    MEMORY[0x21CEA9600](59, 0xE100000000000000);
    v21 = v53;
    sub_2179A70AC(v51, &v53);
    v22 = sub_2179AC76C(&v55, v21, *(&v21 + 1), &v53);
    sub_2179AC7D4(v22);

    v23 = v47;
    v24 = *(a5 + 8);
    v25 = *(v24 + 24);
    type metadata accessor for Statement();
    v55 = 1;
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_2179E9B10();

    strcpy(&v53, "ALTER TABLE ");
    BYTE13(v53) = 0;
    HIWORD(v53) = -5120;
    v26 = sub_2179D02F4(v47, a5);
    MEMORY[0x21CEA9600](v26);

    MEMORY[0x21CEA9600](0x20454D414E455220, 0xEB00000000204F54);
    v27 = *(v24 + 32);
    v28 = v27(v47, v24);
    MEMORY[0x21CEA9600](v28);

    MEMORY[0x21CEA9600](59, 0xE100000000000000);
    v29 = v53;
    sub_2179A70AC(v51, &v53);
    v30 = sub_2179AC76C(&v55, v29, *(&v29 + 1), &v53);
    sub_2179AC7D4(v30);

    v31 = sub_2179AE478(a3 & 1);
    *&v53 = sub_2179E97C0();
    while (1)
    {
      v32 = sub_2179E9820();
      v33 = v53;
      if (v53 == v32)
      {
        break;
      }

      v34 = sub_2179E9800();
      sub_2179E97E0();
      if (v34)
      {
        v35 = *(v31 + 32 + 8 * v33);
      }

      else
      {
        sub_2179E9B20();
      }

      v36 = sub_2179E9830();
      sub_2179AC7D4(v36);

      v23 = v47;
    }

    if (*(v46 + 56))
    {
      v37 = *(v46 + 64);

      v38 = v23;
      v39 = v27(v23, v24);
      v41 = v40;
      v42 = (*(v24 + 40))(v38, v24);
      v44 = sub_2179AC0B8(v39, v41, v42, v43);
      sub_2179AFCA4(v44, v45);
    }
  }
}

uint64_t Create<>.migrate<A>(from:ifNotExists:)(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!v6[7])
  {
    return sub_2179A750C(a2 & 1);
  }

  v11 = *v6;
  v66 = a4;
  v57 = a2;
  v12 = v6[9];

  sub_2179A7BC0(1, 1);

  if (v7)
  {
    return result;
  }

  v61 = a6;
  v14 = *(v11 + 80);
  v15 = *(a5 + 8);
  v16 = *(v15 + 32);

  v17 = v16(v14, v15);
  v64 = MEMORY[0x277D837D0];
  v65 = &protocol witness table for String;
  *&v63 = v17;
  *(&v63 + 1) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = 25705;
  *(v19 + 24) = 0xE200000000000000;
  sub_2179A0D5C(&v63, v19 + 32);
  v23 = sub_2179A95E0(v19, 0, 0, 255, v20, v21, v22);
  v25 = v24;

  v60 = v25;
  a2 = v57;
  if (!v23)
  {
    return sub_2179A750C(a2 & 1);
  }

  v54 = v15;
  v26 = v25;
  if (!a3)
  {
LABEL_25:
    sub_2179A750C(v57 & 1);
  }

  v27 = a1;
  OUTLINED_FUNCTION_11_12();
  v28 = (v66 & 0xFFFFFFFFFFFFFFFELL);
  v29 = (v61 & 0xFFFFFFFFFFFFFFFELL);
  while (1)
  {
    v66 = a3;
    v30 = *v28;
    v31 = *v29;
    v62 = v27;
    v32 = *v27;
    v33 = **v27;
    v55 = v32[1];
    v34 = v32[2];
    v35 = *(v26 + 32);
    OUTLINED_FUNCTION_11_12();
    v37 = *(v35 + 24);
    v36 = *(v35 + 32);
    v56 = v31;
    v38 = *(v31 + 8);
    v39 = *(v38 + 40);

    v40 = v39(v30, v38);
    if (v36)
    {
      break;
    }

    v26 = v60;
    v44 = v66;
LABEL_24:
    v27 = v62 + 1;
    ++v29;
    ++v28;
    a3 = v44 - 1;
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  v58 = v34;
  if (v37 == v40 && v36 == v41)
  {

    v44 = v66;
  }

  else
  {
    v43 = OUTLINED_FUNCTION_19_7();

    v44 = v66;
    if ((v43 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v45 = *(v60 + 32);
  OUTLINED_FUNCTION_11_12();
  v47 = *(v45 + 24);
  v46 = *(v45 + 32);
  v48 = *(v54 + 40);

  v49 = v48();
  if (v46)
  {
    v51 = v47 == v49 && v46 == v50;
    v52 = v58;
    if (v51)
    {

      goto LABEL_23;
    }

    v53 = OUTLINED_FUNCTION_19_7();

    if ((v53 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_21:

LABEL_23:
    v26 = v60;
    goto LABEL_24;
  }

  v52 = v58;
LABEL_29:

  sub_2179E67B4(v55, v52, v57 & 1, v30, a5, v56);
}

uint64_t sub_2179E7250()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179E72A4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v6 = *(*a4 + 80);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = &v29 - v8;
  v9 = *(v6 + 16);
  v10 = sub_2179E9A60();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v32 = *(v9 - 8);
  v15 = *(v32 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v29 - v19);
  v21 = v35;
  result = v34(a1);
  if (!v21)
  {
    v34 = v20;
    v24 = v32;
    v23 = v33;
    v35 = a4;
    if (__swift_getEnumTagSinglePayload(v14, 1, v9) == 1)
    {
      return (*(v23 + 8))(v14, v10);
    }

    else
    {
      v25 = v34;
      (*(v24 + 32))(v34, v14, v9);
      (*(v24 + 16))(v18, v25, v9);
      v26 = v6;
      v27 = *(v6 + 24);
      v28 = v30;
      sub_2179D0090(v18, v9, v30);
      sub_2179B69F8(v28);
      (*(v31 + 8))(v28, v26);
      return (*(v24 + 8))(v25, v9);
    }
  }

  return result;
}

uint64_t sub_2179E7590(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2179E72A4(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

unint64_t sub_2179E75B4(unint64_t result, char a2, uint64_t a3)
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

void sub_2179E75D8()
{
  if (!qword_27CB98650[0])
  {
    sub_2179A0730();
    v0 = type metadata accessor for Drop();
    if (!v1)
    {
      atomic_store(v0, qword_27CB98650);
    }
  }
}

void sub_2179E7634()
{
  if (!qword_27CB98588)
  {
    sub_21799AC4C(255, qword_280B1E498);
    v0 = sub_2179E9A60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB98588);
    }
  }
}

uint64_t sub_2179E76B4()
{
  sub_2179E797C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2179ECE30;
  *(inited + 32) = 0x6469776F72;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 61;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = sub_2179E9D40();
  *(inited + 72) = v1;
  return OUTLINED_FUNCTION_0_30();
}

uint64_t sub_2179E77AC(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_29(a1);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2179EA830;
  v4 = type metadata accessor for SearchExpression();
  *(inited + 32) = sub_2179C10B8(v4, v5, v6, v7, v8, v9, v10);
  *(inited + 40) = v11;
  return sub_2179E79CC(inited, v2, *(v1 + 8));
}

uint64_t sub_2179E7824(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_29(a1);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2179EA830;
  *(inited + 32) = sub_2179A9A0C(inited, v2, v3, v4, v5, v6, v7);
  *(inited + 40) = v8;
  return OUTLINED_FUNCTION_0_30();
}

uint64_t sub_2179E7880()
{
  sub_2179E797C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2179ECE30;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 61;
  *(inited + 56) = 0xE100000000000000;
  sub_2179A4934();
  v1 = sub_2179E9A80();
  MEMORY[0x21CEA9600](v1);

  MEMORY[0x21CEA9600](39, 0xE100000000000000);
  *(inited + 64) = 39;
  *(inited + 72) = 0xE100000000000000;
  return OUTLINED_FUNCTION_0_30();
}

void sub_2179E797C()
{
  if (!qword_280B1DC20)
  {
    v0 = sub_2179E9D50();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1DC20);
    }
  }
}

uint64_t sub_2179E79CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2179A7E4C();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v18;
  }

  *(v7 + 16) = v8 + 1;
  v9 = v7 + 16 * v8;
  *(v9 + 32) = 0x46204554454C4544;
  *(v9 + 40) = 0xEB000000004D4F52;
  v10 = (*(a3 + 32))(a2, a3);
  v12 = v11;
  v13 = *(v7 + 16);
  v14 = v13 + 1;
  if (v13 >= *(v7 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v19;
  }

  *(v7 + 16) = v14;
  v15 = v7 + 16 * v13;
  *(v15 + 32) = v10;
  *(v15 + 40) = v12;
  if (*(a1 + 16))
  {
    if ((v13 + 2) > *(v7 + 24) >> 1)
    {
      sub_2179A7E4C();
      v7 = v20;
    }

    *(v7 + 16) = v13 + 2;
    v16 = v7 + 16 * v14;
    *(v16 + 32) = 0x4552454857;
    *(v16 + 40) = 0xE500000000000000;
    sub_2179A922C(a1);
  }

  else
  {
  }

  return v7;
}

uint64_t sub_2179E7B70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179E7BE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  LOBYTE(v6) = *(v1 + 8);
  v9 = *(v1 + 9);
  v46 = 0x594220524544524FLL;
  v47 = 0xE900000000000020;
  if (v6)
  {
    if (!v8)
    {
      MEMORY[0x21CEA9600](1802396018, 0xE400000000000000);
      goto LABEL_14;
    }

    v10 = *(v5 + 24);
    v11 = *(v10 + 16);

    v11(&v44, v2, v10);
    v12 = v45;

    v43 = v12;
    MEMORY[0x28223BE20](v13);
    *(&v39 - 4) = v2;
    *(&v39 - 3) = v10;
    *(&v39 - 2) = v8;
    type metadata accessor for SearchColumn();
    sub_2179E9EC0();
    v14 = sub_2179E9840();
    WitnessTable = swift_getWitnessTable();
    v17 = sub_2179A2E44(sub_2179E86EC, (&v39 - 6), v14, MEMORY[0x277D839F8], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);
    sub_2179D2144(v8, 1);

    v18 = *(v17 + 16);
    if (v18)
    {
      v40 = v10;
      v41 = v2;
      v42 = v9;
      v44 = MEMORY[0x277D84F90];
      sub_2179A920C(0, v18, 0);
      v19 = v44;
      v20 = 32;
      sub_2179E8710();
      do
      {
        v43 = *(v17 + v20);
        v21 = sub_2179E9520();
        v23 = v22;
        v44 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2179A920C(v24 > 1, v25 + 1, 1);
          v19 = v44;
        }

        *(v19 + 16) = v25 + 1;
        v26 = v19 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        v20 += 8;
        --v18;
      }

      while (v18);

      v9 = v42;
      v10 = v40;
      v2 = v41;
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    v44 = v19;
    sub_2179A5088();
    sub_2179A4B34();
    v32 = sub_2179E95F0();
    v34 = v33;

    v44 = 0x2835326D62;
    v45 = 0xE500000000000000;
    v35 = (*(*(v10 + 8) + 32))(v2);
    MEMORY[0x21CEA9600](v35);

    MEMORY[0x21CEA9600](8236, 0xE200000000000000);
    MEMORY[0x21CEA9600](v32, v34);

    MEMORY[0x21CEA9600](41, 0xE100000000000000);
    MEMORY[0x21CEA9600](v44, v45);
  }

  else
  {
    v27 = *(*(*(v5 + 24) + 8) + 24);
    v28 = *(v27 + 8);

    v28(v2, v27);
    swift_getAtKeyPath();
    (*(v3 + 8))(v7, v2);
    v29 = *(v44 + 16);
    os_unfair_lock_lock((v29 + 64));
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    os_unfair_lock_unlock((v29 + 64));

    MEMORY[0x21CEA9600](v30, v31);
    sub_2179D2144(v8, 0);
  }

LABEL_14:
  if (v9 != 2)
  {
    if (v9)
    {
      v36 = 0x4353454420;
      v37 = 0xE500000000000000;
    }

    else
    {
      v36 = 1129529632;
      v37 = 0xE400000000000000;
    }

    MEMORY[0x21CEA9600](v36, v37);
  }

  return v46;
}

uint64_t SearchOrder.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

uint64_t sub_2179E8120()
{
  sub_2179E9E20();
  SearchOrder.Direction.hash(into:)();
  return sub_2179E9E40();
}

uint64_t SearchOrder.sortBy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_2179D2120(v2, v3);
}

uint64_t SearchOrder.sortBy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_2179D2144(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t static SearchOrder.sort(by:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 9) = v5;
  return sub_2179D2120(v3, v4);
}

{
  v3 = *a2;
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 9) = v3;
}

uint64_t SearchOrder.reversed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = (v4 & 1) == 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v5;
  return sub_2179D2120(v2, v3);
}

uint64_t sub_2179E82A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2179E82FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179E833C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2179E8398()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179E83D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179E8414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *sub_2179E847C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179E8548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v9;
  type metadata accessor for SearchColumn();
  sub_2179E9EC0();

  sub_2179E95C0();

  if (v16)
  {
    (*(*(*(a3 + 8) + 24) + 8))(a2);
    swift_getAtKeyPath();
    (*(v7 + 8))(v11, a2);
    v13 = *(v15 + 16);
    os_unfair_lock_lock((v13 + 64));
    v14 = *(v13 + 32);
    os_unfair_lock_unlock((v13 + 64));
  }

  else
  {
    v14 = v15;
  }

  *a4 = v14;
  return result;
}

unint64_t sub_2179E8710()
{
  result = qword_27CB98758;
  if (!qword_27CB98758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98758);
  }

  return result;
}

uint64_t LazyLoader.__allocating_init(object:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  LazyLoader.init(object:)(a1);
  return v5;
}

uint64_t LazyLoader.init(object:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2179E9310();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_30();
  v7 = *(v6 + 112);
  sub_2179E9300();
  v8 = sub_2179E9330();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v1 + v7) = sub_2179E9320();
  (*(*(v3[10] - 8) + 32))(v1 + *(*v1 + 104), a1, v3[10]);
  v11 = v3[11];
  v12 = v3[12];
  type metadata accessor for LazyLoader.LoadState();
  swift_storeEnumTagMultiPayload();
  return v1;
}

uint64_t LazyLoader.__allocating_init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *(v1 + 80);
  OUTLINED_FUNCTION_2();
  v23 = v6;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22[-1] - v14;
  v16 = v13[4];
  v17 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_2179E9E80();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v18 = *(v3 + 88);
    sub_2179E9D80();
    v20 = v23;
    (*(v23 + 16))(v12, v15, v5);
    v17 = LazyLoader.__allocating_init(object:)(v12);
    (*(v20 + 8))(v15, v5);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

uint64_t LazyLoader.encode(to:)()
{
  v2 = *v0;
  v3 = *(*v0 + 80);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16[-1] - v10;
  v12 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2179E9EA0();
  LazyLoader.load()(v11);
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v16, v16[3]);
    v13 = *(v2 + 96);
    sub_2179E9DA0();
    (*(v5 + 8))(v11, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_2179E8C28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = LazyLoader.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2179E8CB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_2179E8DDC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LazyLoaderError(_BYTE *result, int a2, int a3)
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

unint64_t sub_2179E9050()
{
  result = qword_27CB98760;
  if (!qword_27CB98760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98760);
  }

  return result;
}

void Double.valueType.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}