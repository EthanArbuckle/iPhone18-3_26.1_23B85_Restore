void sub_1C11892C8(_BYTE *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = *a1;
  v3 = v2;
  sub_1C1189178(&v3);
}

void (*sub_1C11892FC(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_1C1189328;
}

void sub_1C1189328(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  sub_1C11892C8(v2);
}

uint64_t sub_1C1189370@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C11893E4(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C11893E4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C118945C();
  sub_1C1261F30();

  *a1 = *(v1 + 16);
  return result;
}

unint64_t sub_1C118945C()
{
  result = qword_1EDE7C6C8;
  if (!qword_1EDE7C6C8)
  {
    type metadata accessor for OneUpSpatialPhotoBadgeStateModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C6C8);
  }

  return result;
}

uint64_t type metadata accessor for OneUpSpatialPhotoBadgeStateModel()
{
  result = qword_1EDE82FC0;
  if (!qword_1EDE82FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1189500(unsigned __int8 *a1)
{
  if (*(v1 + 16) == *a1)
  {
    v3[0] = *a1;
    sub_1C11892C8(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_1_0();
    sub_1C1189B90();
  }
}

void (*sub_1C11895A0(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore32OneUpSpatialPhotoBadgeStateModel___observationRegistrar;
  *v3 = v1;
  v4 = sub_1C118945C();
  OUTLINED_FUNCTION_1_6(v4);

  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v3[7] = sub_1C11892FC(v3);
  return sub_1C1189668;
}

uint64_t sub_1C11896C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C118971C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C118971C()
{
  swift_getKeyPath();
  sub_1C118945C();
  sub_1C1261F30();

  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t sub_1C11897A0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_1_0();
    sub_1C1189B90();
  }

  return result;
}

uint64_t sub_1C118984C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 17) = a2;
  return result;
}

void (*sub_1C11898A0(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore32OneUpSpatialPhotoBadgeStateModel___observationRegistrar;
  *v3 = v1;
  v4 = sub_1C118945C();
  OUTLINED_FUNCTION_1_6(v4);

  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v3[7] = sub_1C1189674();
  return sub_1C1189968;
}

BOOL sub_1C11899A4()
{
  sub_1C11893E4(&v2);
  if (v2 == 3)
  {
    return 1;
  }

  sub_1C11893E4(&v1);
  return v1 == 2;
}

BOOL sub_1C11899F0()
{
  sub_1C11893E4(&v3);
  if (v3 == 3)
  {
    return 1;
  }

  sub_1C11893E4(&v2);
  if (v2 == 1)
  {
    return 1;
  }

  sub_1C11893E4(&v1);
  return v1 == 2;
}

uint64_t OneUpSpatialPhotoBadgeStateModel.State.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1189B44()
{
  *(v0 + 16) = 0;
  sub_1C1261F60();
  return v0;
}

uint64_t OneUpSpatialPhotoBadgeStateModel.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore32OneUpSpatialPhotoBadgeStateModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t OneUpSpatialPhotoBadgeStateModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore32OneUpSpatialPhotoBadgeStateModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C1189D08()
{
  result = sub_1C1261F70();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpSpatialPhotoBadgeStateModel.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C118A008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1C1265CC0();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t PhotosInlinePlayerView.init(id:model:ignoreMaxColumnCountLimit:playerProvider:content:onVisibilityChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for PhotosInlinePlayerView();
  v17 = a9 + v16[26];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a9 + v16[27];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = (a9 + v16[28]);
  *v19 = sub_1C118A248();
  v19[1] = v20;
  OUTLINED_FUNCTION_15_1();
  (*(v21 + 32))(a9, a1, a11);
  v22 = v16[21];
  sub_1C1266790();
  OUTLINED_FUNCTION_15_1();
  result = (*(v23 + 32))(a9 + v22, a2);
  v25 = (a9 + v16[22]);
  *v25 = a4;
  v25[1] = a5;
  v26 = (a9 + v16[23]);
  *v26 = a6;
  v26[1] = a7;
  v27 = (a9 + v16[24]);
  *v27 = a8;
  v27[1] = a10;
  *(a9 + v16[25]) = a3;
  return result;
}

uint64_t sub_1C118A248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93868);
  sub_1C1265410();
  return v1;
}

uint64_t sub_1C118A290(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 104));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1C118A3DC(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 108));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_0();
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1C118A52C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E88);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C118A5D8(uint64_t a1)
{
  if (sub_1C118A3DC(a1))
  {
    v1 = sub_1C10CCA58();

    v2 = (v1 == 2) | v1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t PhotosInlinePlayerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v115 = a1;
  OUTLINED_FUNCTION_1();
  v104 = v3;
  v111 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v110 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E60);
  *&v113 = *(a1 + 40);
  v7 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E68);
  OUTLINED_FUNCTION_20_0();
  swift_getTupleTypeMetadata3();
  v96 = sub_1C1265B00();
  v95 = OUTLINED_FUNCTION_6_32();
  v8 = sub_1C12655C0();
  OUTLINED_FUNCTION_1();
  v100 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v93 = v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E70);
  v80 = v8;
  v12 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v101 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v89 = v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E78);
  v86 = v12;
  v16 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v103 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34();
  v109 = v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915D8);
  OUTLINED_FUNCTION_1_43();
  WitnessTable = swift_getWitnessTable();
  v79[1] = WitnessTable;
  OUTLINED_FUNCTION_10_5();
  v22 = sub_1C0FDB6D4(v21, &qword_1EBE95E70);
  v134 = WitnessTable;
  v135 = v22;
  v23 = swift_getWitnessTable();
  v85 = v23;
  OUTLINED_FUNCTION_11();
  v25 = sub_1C0FDB6D4(v24, &qword_1EBE95E78);
  v132 = v23;
  v133 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1C10450CC();
  v128 = v16;
  v129 = v7;
  v28 = v16;
  v83 = v16;
  v84 = v7;
  v29 = v7;
  v130 = v26;
  v131 = v27;
  v30 = v26;
  v81 = v26;
  v82 = v27;
  v31 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = OpaqueTypeMetadata2;
  OUTLINED_FUNCTION_1();
  v102 = v33;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_34();
  v107 = v35;
  v36 = v115;
  v37 = *(v115 + 24);
  OUTLINED_FUNCTION_20_0();
  v38 = sub_1C1266790();
  v128 = v28;
  v129 = v29;
  v130 = v30;
  v131 = v27;
  v97 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = OpaqueTypeConformance2;
  v40 = *(v36 + 56);
  v127 = *(v40 + 8);
  OUTLINED_FUNCTION_5_7();
  v88 = v38;
  v91 = swift_getWitnessTable();
  v128 = OpaqueTypeMetadata2;
  v129 = v38;
  v130 = OpaqueTypeConformance2;
  v131 = v91;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v98 = v41;
  v99 = v42;
  MEMORY[0x1EEE9AC00](v41);
  v87 = v79 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v94 = v79 - v45;
  *&v46 = *(v36 + 16);
  *(&v46 + 1) = v37;
  *&v47 = *(v36 + 32);
  *(&v47 + 1) = v113;
  v113 = v47;
  v114 = v46;
  v122 = v46;
  v123 = v47;
  v106 = *(v36 + 48);
  v48 = v106;
  *&v46 = v106;
  *(&v46 + 1) = v40;
  v49 = v108;
  v126 = v108;
  v112 = *(v36 + 64);
  v124 = v46;
  v125 = v112;
  sub_1C1009330();
  v50 = v93;
  sub_1C12655B0();
  LOBYTE(v128) = 1;
  sub_1C104524C();
  v51 = v89;
  v52 = v80;
  sub_1C12649C0();
  (*(v100 + 8))(v50, v52);
  sub_1C1265940();
  v116 = v114;
  v117 = v113;
  v118 = v48;
  v119 = v40;
  v79[0] = v40;
  v120 = v112;
  v121 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E80);
  sub_1C118C2D0();
  v53 = v86;
  sub_1C1264F60();
  (*(v101 + 1))(v51, v53);
  v54 = v115;
  v128 = sub_1C118A3DC(v115);
  v55 = v104;
  v56 = *(v104 + 16);
  v100 = v128;
  v101 = v56;
  v57 = v110;
  v56(v110, v49, v54);
  v58 = (*(v55 + 80) + 80) & ~*(v55 + 80);
  v59 = swift_allocObject();
  v60 = v113;
  *(v59 + 16) = v114;
  *(v59 + 32) = v60;
  *(v59 + 48) = v106;
  *(v59 + 56) = v40;
  *(v59 + 64) = v112;
  v104 = *(v55 + 32);
  (v104)(v59 + v58, v57, v54);
  v61 = v83;
  OUTLINED_FUNCTION_2_1();
  v62 = v109;
  sub_1C1265000();

  (*(v103 + 8))(v62, v61);
  v63 = v115;
  v64 = v110;
  v101(v110, v108, v115);
  v65 = swift_allocObject();
  v66 = v113;
  *(v65 + 16) = v114;
  *(v65 + 32) = v66;
  v67 = v79[0];
  *(v65 + 48) = v106;
  *(v65 + 56) = v67;
  *(v65 + 64) = v112;
  (v104)(v65 + v58, v64, v63);
  v68 = swift_checkMetadataState();
  v70 = v91;
  v69 = v92;
  v71 = v90;
  OUTLINED_FUNCTION_2_1();
  v72 = v87;
  v73 = v107;
  sub_1C1265000();

  (*(v102 + 8))(v73, v69);
  v128 = v69;
  v129 = v68;
  v130 = v71;
  v131 = v70;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v94;
  v76 = v98;
  sub_1C0FDBA4C(v72, v98, v74);
  v77 = *(v99 + 8);
  v77(v72, v76);
  sub_1C0FDBA4C(v75, v76, v74);
  return (v77)(v75, v76);
}

uint64_t sub_1C118AF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v127 = a6;
  v124 = a5;
  v128 = a4;
  v126 = a3;
  v125 = a2;
  v115 = a1;
  v114 = a9;
  v129 = a10;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E90);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v111 = &v92 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E98);
  v97 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v96 = &v92 - v19;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E68);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v119 = &v92 - v22;
  v108 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v107 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v92 - v26;
  v123 = sub_1C1266790();
  v120 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v118 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v122 = &v92 - v29;
  v135 = a2;
  v136 = a3;
  v137 = a4;
  v138 = a5;
  *&v139 = a6;
  *(&v139 + 1) = a7;
  v30 = a7;
  v121 = a7;
  v31 = a8;
  v116 = a8;
  *&v140 = a8;
  *(&v140 + 1) = a10;
  v32 = type metadata accessor for PhotosInlinePlayerView();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v92 - v35;
  v110 = sub_1C1265170();
  v37 = *(v33 + 16);
  v37(v36, a1, v32);
  v38 = *(v33 + 80);
  v39 = (v38 + 80) & ~v38;
  v40 = swift_allocObject();
  v41 = v126;
  v40[2] = v125;
  v40[3] = v41;
  v42 = v124;
  v40[4] = v128;
  v40[5] = v42;
  v40[6] = v127;
  v40[7] = v30;
  v43 = v129;
  v40[8] = v31;
  v40[9] = v43;
  v44 = *(v33 + 32);
  v94 = v33 + 32;
  v101 = v40;
  v44(v40 + v39, v36, v32);
  v45 = v115;
  v106 = v33 + 16;
  v105 = v37;
  v37(v36, v115, v32);
  v104 = v38;
  v103 = v39 + v34;
  v46 = swift_allocObject();
  v47 = v126;
  v46[2] = v125;
  v46[3] = v47;
  v48 = v124;
  v46[4] = v128;
  v46[5] = v48;
  v49 = v121;
  v46[6] = v127;
  v46[7] = v49;
  v50 = v129;
  v46[8] = v116;
  v46[9] = v50;
  v109 = v39;
  v100 = v46;
  v95 = v36;
  v102 = v44;
  v44(v46 + v39, v36, v32);
  if (sub_1C118A52C())
  {
    v51 = sub_1C0FE72E0();
    v53 = v52;

    if (v51)
    {
      v54 = *(v45 + *(v32 + 92));
      v135 = v51;
      v136 = v53;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95EB0);
      swift_dynamicCast();
      v55 = v107;
      v54(v143[0]);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v56 = v93;
      v57 = v124;
      v58 = v129;
      sub_1C0FDBA4C(v55, v124, v129);
      v59 = v108;
      v60 = *(v108 + 8);
      v60(v55, v57);
      sub_1C0FDBA4C(v56, v57, v58);
      v60(v56, v57);
      v61 = v118;
      v48 = v57;
      (*(v59 + 32))(v118, v55, v57);
      v62 = 0;
    }

    else
    {
      v62 = 1;
      v61 = v118;
      v48 = v124;
    }
  }

  else
  {
    v62 = 1;
    v61 = v118;
  }

  v63 = 1;
  __swift_storeEnumTagSinglePayload(v61, v62, 1, v48);
  sub_1C1170030(v61, v122);
  v64 = *(v120 + 8);
  v108 = v120 + 8;
  v107 = v64;
  (v64)(v61, v123);
  if ((sub_1C118A5D8(v32) & 1) == 0)
  {
    v135 = sub_1C1265170();
    LOBYTE(v136) = 0;
    v65 = v95;
    v105(v95, v45, v32);
    v66 = swift_allocObject();
    v67 = v129;
    v68 = v126;
    *(v66 + 2) = v125;
    *(v66 + 3) = v68;
    *(v66 + 4) = v128;
    *(v66 + 5) = v48;
    v69 = v121;
    *(v66 + 6) = v127;
    *(v66 + 7) = v69;
    v70 = v116;
    *(v66 + 8) = v116;
    *(v66 + 9) = v67;
    v102(&v66[v109], v65, v32);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95EA0);
    v93 = sub_1C118D120();
    sub_1C1264E20();

    v72 = v67;
    v61 = v118;

    v73 = v115;
    sub_1C118A290(v32);
    sub_1C1165B00(&v135);

    v105(v65, v73, v32);
    v74 = swift_allocObject();
    v75 = v126;
    *(v74 + 2) = v125;
    *(v74 + 3) = v75;
    *(v74 + 4) = v128;
    *(v74 + 5) = v48;
    v76 = v121;
    *(v74 + 6) = v127;
    *(v74 + 7) = v76;
    *(v74 + 8) = v70;
    *(v74 + 9) = v72;
    v102(&v74[v109], v65, v32);
    v135 = v71;
    v136 = v93;
    swift_getOpaqueTypeConformance2();
    v77 = v96;
    v78 = v99;
    v79 = v111;
    sub_1C1264E20();

    (*(v98 + 8))(v79, v78);
    (*(v97 + 32))(v119, v77, v117);
    v63 = 0;
  }

  v80 = v119;
  __swift_storeEnumTagSinglePayload(v119, v63, 1, v117);
  v135 = v110;
  LOBYTE(v136) = 0;
  *(&v136 + 1) = *v144;
  HIDWORD(v136) = *&v144[3];
  v137 = sub_1C118D038;
  v138 = v101;
  v139 = 0u;
  v140 = 0u;
  v141 = sub_1C118D050;
  v142 = v100;
  v143[0] = &v135;
  v81 = v61;
  v82 = v122;
  v83 = v61;
  v84 = v123;
  (*(v120 + 16))(v81, v122, v123);
  v143[1] = v83;
  v85 = v113;
  sub_1C0FC1734(v80, v113);
  v143[2] = v85;

  v134[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E60);
  v134[1] = v84;
  v134[2] = v112;
  v131 = sub_1C118D434(&qword_1EDE7BD30, &qword_1EBE95E60, &unk_1C12BE630, sub_1C118D404);
  v130 = v129;
  WitnessTable = swift_getWitnessTable();
  v133 = sub_1C118D4B8();
  sub_1C119EE80(v143, 3, v134);

  sub_1C0FC17A0(v80);
  v86 = v107;
  (v107)(v82, v84);
  sub_1C0FC17A0(v85);
  v86(v83, v84);
  v87 = v137;
  v88 = v139;
  v89 = v140;
  v90 = v141;

  sub_1C0FCF004(v87);
  sub_1C0FCF004(v88);
  sub_1C0FCF004(v89);
  return sub_1C0FCF004(v90);
}

uint64_t sub_1C118BCC0(uint64_t a1)
{
  v2 = type metadata accessor for PhotosInlinePlayerView();
  if (!sub_1C118A52C())
  {
    sub_1C118A290(v2);
    sub_1C116E5FC();
    v4 = v3;

    v5 = (a1 + *(v2 + 96));
    v6 = *v5;
    v7 = v5[1];
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = *(v4 + 64);
    *(v4 + 64) = sub_1C118D5B0;
    *(v4 + 72) = v8;
    sub_1C0FCF1B4(v6);
    sub_1C0FCF004(v9);

    sub_1C118A580();
    sub_1C118BE28(v2);
  }
}

void sub_1C118BDDC(uint64_t a1, void (*a2)(void))
{
  if (a2)
  {
    v3 = sub_1C0FE75F0();
    a2(v3 & 1);
  }
}

uint64_t sub_1C118BE28(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v28 = *(v4 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v24 - v12;
  result = sub_1C118A52C();
  if (result)
  {
    v14 = sub_1C118A3DC(a1);
    sub_1C0FE652C(v14);
    (*(v6 + 16))(v8, v1 + *(a1 + 84), v5);
    if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
    {

      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      v16 = v28;
      v15 = v29;
      v17 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = *(v28 + 32);
      v27(v29, v8, v4);
      v18 = (v2 + *(a1 + 88));
      v19 = *v18;
      v25 = v18[1];
      v26 = v19;
      (*(v16 + 16))(v17, v15, v4);
      v20 = (*(v16 + 80) + 96) & ~*(v16 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = *(a1 + 16);
      *(v21 + 24) = v4;
      v22 = *(a1 + 48);
      *(v21 + 32) = *(a1 + 32);
      *(v21 + 48) = v22;
      *(v21 + 64) = *(a1 + 64);
      v23 = v25;
      *(v21 + 80) = v26;
      *(v21 + 88) = v23;
      v27((v21 + v20), v17, v4);

      sub_1C0FE6EC8(sub_1C118CFD0, v21);
      sub_1C0FE7758();

      return (*(v16 + 8))(v29, v4);
    }
  }

  return result;
}

uint64_t sub_1C118C110()
{
  type metadata accessor for PhotosInlinePlayerView();
  result = sub_1C118A52C();
  if (result)
  {

    if (sub_1C118A52C())
    {
      sub_1C0FE652C(0);
    }

    return sub_1C118A580();
  }

  return result;
}

uint64_t sub_1C118C1A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = type metadata accessor for PhotosInlinePlayerView();
  result = sub_1C118A3DC(v14);
  if (result)
  {
    sub_1C10CF534(a2, a1 & 1, a11, result, a3);
  }

  return result;
}

uint64_t sub_1C118C23C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosInlinePlayerView();
  result = sub_1C118A52C();
  v3 = result;
  if (result)
  {
    result = sub_1C0FE7588();
    if ((result & 1) == 0)
    {

      v3 = 0;
    }
  }

  *a1 = v3;
  return result;
}

unint64_t sub_1C118C2D0()
{
  result = qword_1EDE80EE0;
  if (!qword_1EDE80EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E80);
    sub_1C118C354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80EE0);
  }

  return result;
}

unint64_t sub_1C118C354()
{
  result = qword_1EDE80EE8[0];
  if (!qword_1EDE80EE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE80EE8);
  }

  return result;
}

void *sub_1C118C3A8(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (*result)
  {
    if (*result == v2)
    {
      return result;
    }
  }

  else if (!v2)
  {
    return result;
  }

  v3 = type metadata accessor for PhotosInlinePlayerView();
  return sub_1C118BE28(v3);
}

void sub_1C118C414()
{
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_9_30();
  v0 = OUTLINED_FUNCTION_2_51();
  sub_1C118C3A8(v0, v1);
  OUTLINED_FUNCTION_15_25();
}

uint64_t sub_1C118C490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a7;
  v38 = a8;
  v35 = a4;
  v36 = a6;
  v39 = a3;
  v41 = a1;
  v42 = a2;
  v34 = *(a5 - 8);
  v40 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1266790();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v32 - v20;
  v23 = *(v22 + 48);
  v24 = *(v14 + 16);
  v24(&v32 - v20, v41, v13, v19);
  (v24)(&v21[v23], v42, v13);
  if (__swift_getEnumTagSinglePayload(v21, 1, a5) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v21[v23], 1, a5) == 1)
    {
      return (*(v14 + 8))(v21, v13);
    }
  }

  else
  {
    (v24)(v16, v21, v13);
    if (__swift_getEnumTagSinglePayload(&v21[v23], 1, a5) != 1)
    {
      v29 = v33;
      v28 = v34;
      (*(v34 + 32))(v33, &v21[v23], a5);
      v26 = v40;
      v30 = sub_1C1265DE0();
      v31 = *(v28 + 8);
      v31(v29, a5);
      v31(v16, a5);
      result = (*(v14 + 8))(v21, v13);
      if (v30)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v34 + 8))(v16, a5);
  }

  (*(v18 + 8))(v21, TupleTypeMetadata2);
  v26 = v40;
LABEL_7:
  v43 = v35;
  v44 = a5;
  v45 = v36;
  v46 = v37;
  v47 = v38;
  v48 = v26;
  v49 = a10;
  v50 = a11;
  v27 = type metadata accessor for PhotosInlinePlayerView();
  sub_1C118BE28(v27);
  result = sub_1C118A52C();
  if (result)
  {
    sub_1C0FE67C4();
  }

  return result;
}

void sub_1C118C8F8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C1266790();
    if (v1 <= 0x3F)
    {
      sub_1C1007F88();
      if (v2 <= 0x3F)
      {
        sub_1C118CF6C(319, &qword_1EDE768F0, &qword_1EBE90BA0, &unk_1C12A8220, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C118CF14();
          if (v4 <= 0x3F)
          {
            sub_1C118CF6C(319, &qword_1EDE77610, &qword_1EBE915D8, &unk_1C12BE650, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1C118CF6C(319, &unk_1EDE76CB8, &qword_1EBE93868, &unk_1C12B4BC0, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
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

uint64_t sub_1C118CA88(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v5 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v6 - 8) + 64) + v12;
  v15 = v13 + 7;
  if (v11 >= a2)
  {
LABEL_31:
    if (v7 == v11)
    {

      return __swift_getEnumTagSinglePayload(result, v7, v6);
    }

    v23 = (v14 + result) & ~v12;
    if (v10 != v11)
    {
      v24 = *((v15 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }

    if (v9 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, v9, v5);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v16 = ((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v11 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  switch(v19)
  {
    case 1:
      v20 = *(result + v16);
      if (!*(result + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 2:
      v20 = *(result + v16);
      if (!*(result + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v20 = *(result + v16);
      if (!v20)
      {
        goto LABEL_31;
      }

LABEL_28:
      v21 = v20 - 1;
      if ((v16 & 0xFFFFFFF8) != 0)
      {
        v21 = 0;
        v22 = *result;
      }

      else
      {
        v22 = 0;
      }

      result = v11 + (v22 | v21) + 1;
      break;
    default:
      goto LABEL_31;
  }

  return result;
}

void sub_1C118CC9C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = *(*(v8 - 8) + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v11 + 80);
  v16 = *(*(v8 - 8) + 64) + v15;
  v17 = v16 & ~v15;
  v18 = *(*(v10 - 8) + 64);
  if (!v12)
  {
    ++v18;
  }

  v19 = v18 + 7;
  v20 = ((((((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 < a3)
  {
    v21 = a3 - v14;
    if (((((((v19 + v17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v7 = v23;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 <= v14)
  {
    switch(v7)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        return;
      case 3:
LABEL_52:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (!a2)
        {
          return;
        }

LABEL_38:
        if (v9 == v14)
        {
          v26 = a1;
        }

        else
        {
          v26 = &a1[v16] & ~v15;
          if (v13 != v14)
          {
            v27 = ((v19 + v26) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
              v27[1] = 0;
            }

            else
            {
              v28 = (a2 - 1);
            }

            *v27 = v28;
            return;
          }

          a2 = (a2 + 1);
          v9 = v12;
          v8 = v10;
        }

        __swift_storeEnumTagSinglePayload(v26, a2, v9, v8);
        break;
    }
  }

  else
  {
    if (((((((v19 + v17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = a2 - v14;
    }

    else
    {
      v24 = 1;
    }

    if (((((((v19 + v17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v25 = ~v14 + a2;
      bzero(a1, ((((((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v25;
    }

    switch(v7)
    {
      case 1:
        a1[v20] = v24;
        break;
      case 2:
        *&a1[v20] = v24;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *&a1[v20] = v24;
        break;
      default:
        return;
    }
  }
}

void sub_1C118CF14()
{
  if (!qword_1EDE77628)
  {
    type metadata accessor for PhotosInlinePlaybackCoordinator(255);
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77628);
    }
  }
}

void sub_1C118CF6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C118D068(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_8_38();
  return a1(v2);
}

unint64_t sub_1C118D120()
{
  result = qword_1EDE7BE38;
  if (!qword_1EDE7BE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE38);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = *(v0 + 16);
  v8 = *(v0 + 24);
  v2 = type metadata accessor for PhotosInlinePlayerView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 80) & ~*(*(v2 - 8) + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 8))(v3, v1);
  v5 = *(v2 + 84);
  if (!__swift_getEnumTagSinglePayload(v3 + v5, 1, v8))
  {
    OUTLINED_FUNCTION_15_1();
    (*(v6 + 8))(v3 + v5, v8);
  }

  if (*(v3 + *(v2 + 96)))
  {
  }

  j__swift_release_0();

  return swift_deallocObject();
}

uint64_t sub_1C118D434(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C118D4B8()
{
  result = qword_1EDE7B8A0;
  if (!qword_1EDE7B8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EA0);
    sub_1C118D120();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B8A0);
  }

  return result;
}

uint64_t PhotosItemPlaceholderModel.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  PhotosItemPlaceholderModel.init(_:)();
  return v0;
}

uint64_t PhotosItemPlaceholderModel.init(_:)()
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_2_15();
  sub_1C118D688();
  return v0;
}

uint64_t sub_1C118D6CC(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_14_5();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_2();
  sub_1C118D814(v8);
  v9 = *(v6 + 8);
  v9(v1, v4);
  OUTLINED_FUNCTION_20();
  swift_getKeyPath();
  sub_1C118E060();

  return (v9)(a1, v4);
}

uint64_t sub_1C118D814@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_1();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1C118D8A4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_1C118D93C())()
{
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C118D9C8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C118D6CC(v3);
}

uint64_t sub_1C118DA88@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  swift_getKeyPath();
  sub_1C118DFC4();

  return sub_1C118D814(a1);
}

uint64_t sub_1C118DB08(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C118D8A4(v3);
}

void (*sub_1C118DBD4(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_2_15();
  swift_getKeyPath();
  sub_1C118DFC4();

  OUTLINED_FUNCTION_10_2();
  *v3 = v1;
  swift_getKeyPath();
  type metadata accessor for PhotosItemPlaceholderModel();
  OUTLINED_FUNCTION_0_57();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[5] = sub_1C118D93C();
  return sub_1C118DD08;
}

void sub_1C118DD08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  sub_1C118DD5C();

  free(v1);
}

uint64_t sub_1C118DD5C()
{
  swift_getKeyPath();
  type metadata accessor for PhotosItemPlaceholderModel();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t sub_1C118DE3C()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_14_5();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_2();
  sub_1C118DA88(v6);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C118DF10()
{
  OUTLINED_FUNCTION_2_15();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C118DE3C();
  return sub_1C1265ED0();
}

uint64_t sub_1C118DFC4()
{
  OUTLINED_FUNCTION_0_57();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C118E060()
{
  OUTLINED_FUNCTION_0_57();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosItemPlaceholderModel.deinit()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_15_1();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 104);
  sub_1C1261F70();
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 8))(v0 + v4);
  return v0;
}

uint64_t PhotosItemPlaceholderModel.__deallocating_deinit()
{
  PhotosItemPlaceholderModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C118E294(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1C118E2DC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C118DBD4(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C118E338(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C118E3B4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C1261F70();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t PhotosUtilityAlbumCell.init(_:badgeConfiguration:content:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  __src[0] = a4;
  __src[1] = a5;
  __src[2] = a6;
  __src[3] = a7;
  __src[4] = a9;
  v14 = type metadata accessor for PhotosUtilityAlbumCell();
  v15 = v14[17];
  *(a8 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  v16 = v14[18];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v16), __src, 0xD1uLL);
  v17 = *(a4 - 8);
  v18 = (*(v17 + 16))(a8, a1, a4);
  *(a8 + v14[15]) = *a2;
  a3(v18);

  return (*(v17 + 8))(a1, a4);
}

uint64_t sub_1C118E70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C1190B2C(v2 + *(a1 + 68), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C118E8F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 72);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosUtilityAlbumCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  OUTLINED_FUNCTION_11_0();
  *&v102 = v3;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  OUTLINED_FUNCTION_19_1();
  v4 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v88 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  v77 = v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92148);
  OUTLINED_FUNCTION_19_1();
  v8 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v90 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v89 = v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EB8);
  OUTLINED_FUNCTION_19_1();
  v12 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v93 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v91 = v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EC0);
  OUTLINED_FUNCTION_19_1();
  v16 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v96 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34();
  v94 = v19;
  v20 = *(a1 + 48);
  OUTLINED_FUNCTION_0_0();
  v101 = v20;
  v121 = v20;
  v122 = sub_1C0FDB6D4(v21, &unk_1EBE92EC0);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v119 = WitnessTable;
  v120 = sub_1C0FDB6D4(v23, &qword_1EBE91C40);
  v24 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v117 = v24;
  v118 = sub_1C0FDB6D4(v25, &unk_1EBE92ED0);
  v26 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  v76 = v26;
  v115 = v26;
  v116 = sub_1C0FDB6D4(v27, &qword_1EBE92148);
  v92 = v8;
  v78 = swift_getWitnessTable();
  v113 = v78;
  v114 = sub_1C0FDB6D4(&qword_1EBE95EC8, &qword_1EBE95EB8);
  v95 = v12;
  v28 = v100;
  v79 = swift_getWitnessTable();
  v111 = v79;
  v112 = sub_1C0FDB6D4(&qword_1EBE95ED0, &qword_1EBE95EC0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_1();
  v97 = v16;
  v80 = v29;
  type metadata accessor for PhotosDetailsPresentationSourceView();
  OUTLINED_FUNCTION_0();
  v83 = v30;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_34();
  v81 = v32;
  v85 = v33;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v86 = v35;
  v87 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v82 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v84 = &v75 - v38;
  v99 = a1;
  sub_1C118E8F8(a1, v123);
  memcpy(v110, v124, sizeof(v110));
  sub_1C100D690(v123, v126);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDE82B08;
  v40 = qword_1EDE82B10;
  v75 = xmmword_1EDE82B18;
  v41 = qword_1EDE82B28;

  sub_1C100C7D0(v123);

  *&v126[0] = v39;
  *(&v126[0] + 1) = v40;
  v126[1] = v75;
  *&v126[2] = v41;
  memcpy(&v126[2] + 8, v110, 0xA8uLL);
  v42 = v77;
  v43 = v101;
  v44 = v102;
  View.cellStyle(for:)(v126, v101, v77);
  memcpy(v125, v126, sizeof(v125));
  sub_1C100C7D0(v125);
  sub_1C1265160();
  v45 = sub_1C12651E0();

  *&v126[0] = v45;
  sub_1C1264470();
  v46 = v89;
  sub_1C1264F70();

  (*(v88 + 1))(v42, v4);
  v47 = sub_1C12659A0();
  v77 = v48;
  v88 = &v75;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v99;
  v50 = *(v99 + 16);
  *(&v75 - 6) = v50;
  *(&v75 - 5) = v44;
  v51 = *(v49 + 32);
  v52 = *(v49 + 40);
  *(&v75 - 4) = v51;
  *(&v75 - 3) = v52;
  *(&v75 - 2) = v43;
  *(&v75 - 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95ED8);
  sub_1C1190204(&qword_1EBE95EE0, &qword_1EBE95ED8, &unk_1C12BE8F0, sub_1C118F69C);
  v54 = v91;
  v53 = v92;
  sub_1C1264F60();
  (*(v90 + 8))(v46, v53);
  v55 = sub_1C1265960();
  v92 = &v75;
  MEMORY[0x1EEE9AC00](v55);
  v56 = v101;
  v57 = v102;
  *(&v75 - 6) = v50;
  *(&v75 - 5) = v57;
  *(&v75 - 4) = v51;
  *(&v75 - 3) = v52;
  v58 = v100;
  *(&v75 - 2) = v56;
  *(&v75 - 1) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95F08);
  sub_1C11900B0();
  v59 = v94;
  v60 = v95;
  sub_1C1264F60();
  (*(v93 + 8))(v54, v60);
  v109 = 2;
  v108 = 2;
  sub_1C118E8F8(v99, v126);
  v61 = v126[0];
  v102 = v126[1];
  v62 = *&v126[2];

  sub_1C100C7D0(v126);
  v105 = v61;
  v106 = v102;
  v107 = v62;
  v63 = v81;
  v64 = v97;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v109, 0, 0, v97, v81);

  (*(v96 + 8))(v59, v64);
  *(&v106 + 1) = v50;
  v107 = v52;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
  (*(*(v50 - 8) + 16))(boxed_opaque_existential_1, v58, v50);
  OUTLINED_FUNCTION_4_3();
  v66 = v85;
  v67 = swift_getWitnessTable();
  v68 = v82;
  View.selectionStyle(for:)(&v105, v66, v67);
  (*(v83 + 8))(v63, v66);
  __swift_destroy_boxed_opaque_existential_0Tm(&v105);
  v69 = sub_1C100D614();
  v103 = v67;
  v104 = v69;
  OUTLINED_FUNCTION_4_0();
  v70 = v87;
  v71 = swift_getWitnessTable();
  v72 = v84;
  sub_1C0FDBA4C(v68, v70, v71);
  v73 = *(v86 + 8);
  v73(v68, v70);
  sub_1C0FDBA4C(v72, v70, v71);
  return (v73)(v72, v70);
}

__n128 sub_1C118F54C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = sub_1C1263AA0();
  *(a7 + 8) = 0x4008000000000000;
  *(a7 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96040);
  sub_1C118F780(a1, a2, a3, a4, a5, a6, (a7 + *(v14 + 44)));
  v15 = sub_1C1265190();
  *(a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95EF0) + 36)) = v15;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v16 = type metadata accessor for PhotosUtilityAlbumCell();
  sub_1C118E8F8(v16, v21);
  sub_1C100C7D0(v21);
  v19 = v23;
  v20 = v22;
  LOBYTE(a1) = sub_1C1264470();
  v17 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95ED8) + 36);
  *v17 = a1;
  result = v20;
  *(v17 + 24) = v19;
  *(v17 + 8) = v20;
  *(v17 + 40) = 0;
  return result;
}

unint64_t sub_1C118F69C()
{
  result = qword_1EBE95EE8;
  if (!qword_1EBE95EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EF0);
    sub_1C0FDB6D4(&qword_1EBE95EF8, &qword_1EBE95F00);
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95EE8);
  }

  return result;
}

uint64_t sub_1C118F780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v44 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D20);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v19 = type metadata accessor for PhotosUtilityAlbumCell();
  v51 = (*(a1 + *(v19 + 60)))(a1);
  v52 = v20;
  LOBYTE(v53) = 1;
  if (qword_1EDE7AFB8 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDE7AFC0;
  v48 = dword_1EDE7AFC8;
  v49 = 5;
  v50 = HIBYTE(dword_1EDE7AFC8);
  if (qword_1EDE7AF08 != -1)
  {
    swift_once();
  }

  v46 = word_1EDE7AF16;
  PhotosPrefetchableImage(_:font:symbolVariant:)();
  sub_1C100DC0C();
  sub_1C106FE70(v19);
  sub_1C12646F0();
  v21 = sub_1C1264870();
  v23 = v22;
  v25 = v24;

  sub_1C1264620();
  v26 = sub_1C12647B0();
  v28 = v27;
  v29 = v18;
  v42 = v18;
  v43 = v30;
  v32 = v31;
  sub_1C0FDB8E8(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v34 = *(v14 + 16);
  v35 = v45;
  v34(v45, v29, v13);
  v36 = v13;
  v37 = v44;
  v34(v44, v35, v36);
  v38 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96048) + 48)];
  *v38 = v26;
  *(v38 + 1) = v28;
  v32 &= 1u;
  v38[16] = v32;
  *(v38 + 3) = v43;
  *(v38 + 4) = KeyPath;
  v38[40] = 0;
  sub_1C0FDB850(v26, v28, v32);
  v39 = *(v14 + 8);

  v39(v42, v36);
  sub_1C0FDB8E8(v26, v28, v32);

  return (v39)(v35, v36);
}

uint64_t sub_1C118FB14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v47 = a5;
  v46 = a4;
  *(&v45 + 1) = a2;
  v9 = sub_1C1263130();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v37 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96038);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v43 = &v37 - v20;
  v21 = *(a3 + 64);
  *&v45 = a1;
  if (v21(a1, a3, v19))
  {
    v38 = v18;
    v39 = v17;
    v40 = a6;
    __dst[0] = xmmword_1C12A7260;
    LOBYTE(__dst[1]) = 1;
    if (qword_1EDE7AF50 != -1)
    {
      swift_once();
    }

    v50 = qword_1EDE7AF58;
    v51 = word_1EDE7AF60;
    v52 = 5;
    v53 = byte_1EDE7AF63;
    PhotosPrefetchableImage(_:font:)(__dst, &v50, __src);
    sub_1C100DC0C();
    v22 = *&__src[1];
    v23 = sub_1C1265190();
    v41 = __src[0];
    v24 = sub_1C1264470();
    sub_1C12628A0();
    LOBYTE(v50) = 0;
    __src[0] = v41;
    *&__src[1] = v22;
    *(&__src[1] + 1) = v23;
    LOBYTE(__src[2]) = v24;
    *(&__src[2] + 1) = v25;
    *&__src[3] = v26;
    *(&__src[3] + 1) = v27;
    *&__src[4] = v28;
    BYTE8(__src[4]) = 0;
    __dst[0] = v45;
    *&__dst[1] = a3;
    *(&__dst[1] + 1) = v46;
    *&__dst[2] = v47;
    v29 = type metadata accessor for PhotosUtilityAlbumCell();
    sub_1C118E70C(v29, v12);
    v30 = sub_1C1263120();
    (*(v10 + 8))(v12, v9);
    v31 = MEMORY[0x1E697E6E0];
    if ((v30 & 1) == 0)
    {
      v31 = MEMORY[0x1E697E708];
    }

    (*(v10 + 104))(v15, *v31, v9);
    sub_1C1190AD4();
    result = sub_1C1265DE0();
    if (result)
    {
      v33 = v42;
      (*(v10 + 32))(v42, v15, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95F18);
      sub_1C1190204(&qword_1EBE95F20, &qword_1EBE95F18, &unk_1C12BE918, sub_1C1190278);
      sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
      v34 = v43;
      sub_1C1264BC0();
      sub_1C0F9E21C(v33, &qword_1EBE92FE0);
      memcpy(__dst, __src, 0x49uLL);
      sub_1C0F9E21C(__dst, &qword_1EBE95F18);
      v35 = v40;
      v36 = v39;
      (*(v38 + 32))(v40, v34, v39);
      return __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a6, 1, 1, v17);
  }

  return result;
}

unint64_t sub_1C11900B0()
{
  result = qword_1EBE95F10;
  if (!qword_1EBE95F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95F08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    sub_1C1190204(&qword_1EBE95F20, &qword_1EBE95F18, &unk_1C12BE918, sub_1C1190278);
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95F10);
  }

  return result;
}

uint64_t sub_1C1190204(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    OUTLINED_FUNCTION_4_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1190278()
{
  result = qword_1EBE95F28;
  if (!qword_1EBE95F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE95F30);
    sub_1C1062140();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95F28);
  }

  return result;
}

uint64_t PhotosUtilityAlbumCell.BadgeConfiguration.symbolNameProvider.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhotosUtilityAlbumCell.BadgeConfiguration.init(symbolNameProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_1C11903B8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PhotosUtilityAlbumCell.BadgeConfiguration();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1C100D364();
        if (v3 <= 0x3F)
        {
          sub_1C107032C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C11904A8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(a3 + 16);
  v4 = *(v29 - 8);
  v5 = *(v4 + 84);
  v28 = *(a3 + 24);
  v6 = *(v28 - 8);
  v7 = *(v6 + 84);
  if (v5 <= v7)
  {
    v8 = *(v6 + 84);
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1C1263130() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v4 + 64);
  v13 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  result = a1;
  if (v9 >= a2)
  {
LABEL_35:
    if (v5 == v9)
    {
      v23 = v5;
      v24 = v29;
    }

    else
    {
      v25 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) == 0)
      {
        v26 = *v25;
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }

      result = (v25 + v13 + 16) & ~v13;
      v23 = v7;
      v24 = v28;
    }

    return __swift_getEnumTagSinglePayload(result, v23, v24);
  }

  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = ((v11 + ((((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + *(v6 + 64) + v15) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v16 <= 3)
  {
    v17 = ((a2 - v9 + 255) >> 8) + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  switch(v19)
  {
    case 1:
      v20 = a1[v16];
      if (!a1[v16])
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    case 2:
      v20 = *&a1[v16];
      if (!*&a1[v16])
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v20 = *&a1[v16];
      if (!v20)
      {
        goto LABEL_35;
      }

LABEL_28:
      v21 = v16 > 3;
      if (v16 <= 3)
      {
        v22 = (v20 - 1) << (8 * v16);
      }

      else
      {
        v22 = 0;
      }

      if (v21)
      {
        v27 = *a1;
      }

      else
      {
        v27 = *a1;
      }

      result = v9 + (v27 | v22) + 1;
      break;
    default:
      goto LABEL_35;
  }

  return result;
}

void sub_1C1190768(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v27 = *(a4 + 24);
  v28 = *(a4 + 16);
  v5 = *(v28 - 8);
  v6 = *(v5 + 84);
  v7 = *(v27 - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1C1263130() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v5 + 64);
  v14 = *(v7 + 80);
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v12 + ((((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + *(v7 + 64) + v15) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v10 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v10 >= a2)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v6 == v10)
        {
          v22 = a1;
          v23 = v6;
          v24 = v28;
        }

        else
        {
          v25 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v9 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v26 = a2 & 0x7FFFFFFF;
              v25[1] = 0;
            }

            else
            {
              v26 = a2 - 1;
            }

            *v25 = v26;
            return;
          }

          v22 = (v25 + v14 + 16) & ~v14;
          v23 = v8;
          v24 = v27;
        }

        __swift_storeEnumTagSinglePayload(v22, a2, v23, v24);
        break;
    }
  }

  else
  {
    v20 = ~v10 + a2;
    bzero(a1, v16);
    if (v16 <= 3)
    {
      v21 = (v20 >> 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    if (v16 > 3)
    {
      *a1 = v20;
    }

    else
    {
      *a1 = v20;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v21;
        break;
      case 2:
        *(a1 + v16) = v21;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v16) = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C1190A98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C1190AD4()
{
  result = qword_1EDE7BF90;
  if (!qword_1EDE7BF90)
  {
    sub_1C1263130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF90);
  }

  return result;
}

uint64_t sub_1C1190B2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C1190B9C()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C1265E70();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id static OneUpChromeUserDefaults.shouldHideVideoScrubber.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

id static OneUpChromeUserDefaults.shouldHideBadgeBar.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

id static OneUpChromeUserDefaults.shouldHideLibraryScrubber.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

id static OneUpChromeUserDefaults.shouldHideToolbar.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

id static OneUpChromeUserDefaults.shouldHideNavigationBar.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

id static OneUpChromeUserDefaults.shouldDisablePocket.getter()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_58();
  v2 = sub_1C1265E70();
  v3 = OUTLINED_FUNCTION_1_44(v2, sel_BOOLForKey_);

  return v3;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeUserDefaults(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C119103C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 32; ; i += 40)
  {
    if (v3 == v5)
    {
      goto LABEL_11;
    }

    v8 = *(v1 + 16);
    if (v3 >= v8)
    {
      break;
    }

    result = sub_1C0FDB0A8(v1 + i, v11);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_1C0FDB0A8(v1 + v6, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C12604F8();
      v1 = v9;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v1 + i);
    result = sub_1C0F9DDE4(v10, v1 + i);
    if (v5 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v1 + v6);
    result = sub_1C0F9DDE4(v11, v1 + v6);
LABEL_11:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1C1191154(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C1260520(v1);
      v1 = v9;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_9:
    --v4;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1C119120C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1052230();
  *a1 = result;
  return result;
}

uint64_t OneUpTopBar.init(layout:model:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = swift_getKeyPath();
  *(a2 + 80) = 0;
  v4 = *(type metadata accessor for OneUpTopBar() + 32);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  *(a2 + 40) = v3;
  v5 = OUTLINED_FUNCTION_18();

  return sub_1C0F9DDE4(v5, v6);
}

uint64_t type metadata accessor for OneUpTopBar()
{
  result = qword_1EDE7E500;
  if (!qword_1EDE7E500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C119135C(_BYTE *a1@<X0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = sub_1C1262720();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*a1 && (a3 & 1) == 0)
  {
    sub_1C1262710();
    v15 = sub_1C12626F0();
    v16 = sub_1C1266410();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C0F96000, v15, v16, "Omitting badges is only supported when the toolbar is at the bottom. Please add support for this in other toolbar positions if needed.", v17, 2u);
      MEMORY[0x1C68F1630](v17, -1, -1);
    }

    (*(v10 + 8))(v13, v8);
  }

  v18 = a3 & 1;
  if (a3)
  {
    v19 = 66;
  }

  else
  {
    v19 = 67;
  }

  if (a2)
  {
    v18 = v19;
    v20 = 66;
  }

  else
  {
    v20 = 64;
  }

  if (a2)
  {
    v21 = 66;
  }

  else
  {
    v21 = 65;
  }

  if (v14 != 1)
  {
    v20 = v21;
  }

  if (v14)
  {
    v18 = v20;
  }

  *a4 = v18;
}

uint64_t OneUpTopBar.body.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96050) + 36)) = 0;
  sub_1C119159C(v1, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96058);
  v5 = a1 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_1C119159C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96130);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v68 - v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96138);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v68 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96140);
  MEMORY[0x1EEE9AC00](v69);
  v76 = &v68 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96148);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v68 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96150);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v68 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96158);
  MEMORY[0x1EEE9AC00](v91);
  v92 = (&v68 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96160);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = (&v68 - v12);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96168);
  MEMORY[0x1EEE9AC00](v74);
  v82 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96170);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v77 = (&v68 - v19);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96178);
  MEMORY[0x1EEE9AC00](v70);
  v85 = (&v68 - v20);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96180);
  MEMORY[0x1EEE9AC00](v87);
  v80 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v68 - v23;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96188);
  MEMORY[0x1EEE9AC00](v86);
  v25 = &v68 - v24;
  v26 = type metadata accessor for OneUpTopBar();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = *(a1 + 40);
  v30 = sub_1C1192538();
  sub_1C1192EE8();
  v31 = sub_1C12259E0();
  v33 = v32;

  v96 = a1;
  sub_1C1198D98(a1, &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v95 = swift_allocObject();
  sub_1C1199DC0(&v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v95 + v34, type metadata accessor for OneUpTopBar);
  sub_1C1198D98(a1, &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = swift_allocObject();
  sub_1C1199DC0(&v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for OneUpTopBar);
  if (v29 >> 6)
  {
    if (v29 >> 6 != 1)
    {
      KeyPath = swift_getKeyPath();
      v64 = v92;
      *v92 = v30;
      v64[1] = KeyPath;
      v64[2] = 0;
      *(v64 + 24) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1C1198EF0();
      sub_1C11991CC();
      swift_retain_n();
      sub_1C1263C20();
    }

    v36 = v85;
    *v85 = v30;
    *(v36 + 4) = 2;
    *(v36 + 10) = 0;
    v36[2] = v31;
    *(v36 + 24) = v33 & 1;
    v75 = v36 + *(v70 + 44);
    v37 = sub_1C12638E0();
    v38 = v77;
    *v77 = v37;
    *(v38 + 8) = v30;
    *(v38 + 16) = 0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961D0);
    sub_1C1196BDC(v29 & 0x3F, sub_1C1198DFC, sub_1C1199ED0, 0, sub_1C1199ED0, 0, v38 + *(v39 + 44));
    v40 = v78;
    sub_1C1193028(v78);
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961D8) + 36)) = 0;
    v41 = swift_getKeyPath();
    v42 = v40 + *(v74 + 36);
    *v42 = v41;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    v43 = sub_1C12638E0();
    v44 = v81;
    *v81 = v43;
    *(v44 + 8) = v30;
    *(v44 + 16) = 0;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961E0);
    sub_1C1197274(v29 & 0x3F, sub_1C1198E30, v35, sub_1C1199ED0, sub_1C1199ED0, 0, v44 + *(v45 + 44));
    v46 = v79;
    sub_1C0FE5654(v38, v79, &qword_1EBE96170);
    v47 = v82;
    sub_1C0FE5654(v40, v82, &qword_1EBE96168);
    v48 = v83;
    sub_1C0FE5654(v44, v83, &qword_1EBE96160);
    v49 = v75;
    sub_1C0FE5654(v46, v75, &qword_1EBE96170);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961E8);
    v76 = v35;
    v51 = v50;
    sub_1C0FE5654(v47, v49 + *(v50 + 48), &qword_1EBE96168);
    sub_1C0FE5654(v48, v49 + *(v51 + 64), &qword_1EBE96160);
    sub_1C0FD1A5C(v44, &qword_1EBE96160);
    sub_1C0FD1A5C(v40, &qword_1EBE96168);
    sub_1C0FD1A5C(v38, &qword_1EBE96170);
    sub_1C0FD1A5C(v48, &qword_1EBE96160);
    sub_1C0FD1A5C(v47, &qword_1EBE96168);
    sub_1C0FD1A5C(v46, &qword_1EBE96170);
    sub_1C12659A0();
    sub_1C1263390();
    v52 = v80;
    sub_1C0FE4040(v85, v80, &qword_1EBE96178);
    memcpy((v52 + *(v87 + 36)), __src, 0x70uLL);
    v53 = v84;
    sub_1C0FE4040(v52, v84, &qword_1EBE96180);
    sub_1C0FE5654(v53, v89, &qword_1EBE96180);
    swift_storeEnumTagMultiPayload();
    sub_1C1198F7C();
    sub_1C119905C();
    v54 = v90;
    sub_1C1263C20();
    sub_1C0FE5654(v54, v92, &qword_1EBE96138);
    swift_storeEnumTagMultiPayload();
    sub_1C1198EF0();
    sub_1C11991CC();
    sub_1C1263C20();

    sub_1C0FD1A5C(v54, &qword_1EBE96138);
    v55 = v53;
    v56 = &qword_1EBE96180;
  }

  else
  {
    v57 = v71;
    v58 = v76;
    v59 = v73;
    v60 = sub_1C12638E0();
    if (v29)
    {
      v58 = v57;
      *v57 = v60;
      *(v57 + 8) = v30;
      *(v57 + 16) = 0;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961F8);
      sub_1C1195AAC(sub_1C1198D90, sub_1C1199ED0, 0, sub_1C1199ED0, 0, sub_1C1198E30, v35, v57 + *(v61 + 44), sub_1C1198DFC, v95);
      v62 = &qword_1EBE96150;
      sub_1C0FE5654(v57, v59, &qword_1EBE96150);
    }

    else
    {
      *v58 = v60;
      *(v58 + 8) = v30;
      *(v58 + 16) = 0;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE961F0);
      sub_1C1196590(sub_1C1198D90, sub_1C1198E30, v35, sub_1C1198DFC, v95, v58 + *(v66 + 44));
      v62 = &qword_1EBE96140;
      sub_1C0FE5654(v58, v59, &qword_1EBE96140);
    }

    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE961A0, &qword_1EBE96150);
    sub_1C0FDB6D4(&qword_1EBE961A8, &qword_1EBE96140);
    sub_1C1263C20();
    sub_1C0FD1A5C(v58, v62);
    sub_1C0FE5654(v25, v89, &qword_1EBE96188);
    swift_storeEnumTagMultiPayload();
    sub_1C1198F7C();
    sub_1C119905C();
    v67 = v90;
    sub_1C1263C20();
    sub_1C0FE5654(v67, v92, &qword_1EBE96138);
    swift_storeEnumTagMultiPayload();
    sub_1C1198EF0();
    sub_1C11991CC();
    sub_1C1263C20();

    sub_1C0FD1A5C(v67, &qword_1EBE96138);
    v55 = v25;
    v56 = &qword_1EBE96188;
  }

  return sub_1C0FD1A5C(v55, v56);
}

double sub_1C1192538()
{
  v1 = sub_1C1263EB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v64 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v57[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v57[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v57[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v57[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v57[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v57[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v57[-v27];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v57[-v30];
  v66 = v0;
  sub_1C1192EE8();
  sub_1C12265E0();

  v32 = *MEMORY[0x1E697FF38];
  v70 = v2;
  v68 = *(v2 + 104);
  v68(v28, v32, v1);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v1);
  v71 = v4;
  v33 = *(v4 + 48);
  sub_1C0FE5654(v31, v10, &qword_1EBE902F0);
  sub_1C0FE5654(v28, &v10[v33], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v1) == 1)
  {
    sub_1C0FD1A5C(v28, &qword_1EBE902F0);
    sub_1C0FD1A5C(v31, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v1) == 1)
    {
      sub_1C0FD1A5C(v10, &qword_1EBE902F0);
      return 48.0;
    }

    goto LABEL_6;
  }

  sub_1C0FE5654(v10, v25, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v1) == 1)
  {
    sub_1C0FD1A5C(v28, &qword_1EBE902F0);
    sub_1C0FD1A5C(v31, &qword_1EBE902F0);
    (*(v70 + 8))(v25, v1);
LABEL_6:
    sub_1C0FD1A5C(v10, &qword_1EBE902E8);
    v34 = v71;
    v35 = v69;
    goto LABEL_7;
  }

  v47 = v70;
  v48 = v64;
  (*(v70 + 32))(v64, &v10[v33], v1);
  sub_1C1097070();
  v58 = sub_1C1265DE0();
  v49 = *(v47 + 8);
  v49(v48, v1);
  sub_1C0FD1A5C(v28, &qword_1EBE902F0);
  sub_1C0FD1A5C(v31, &qword_1EBE902F0);
  v49(v25, v1);
  sub_1C0FD1A5C(v10, &qword_1EBE902F0);
  v34 = v71;
  v35 = v69;
  if (v58)
  {
    return 48.0;
  }

LABEL_7:
  sub_1C1192EE8();
  v36 = v67;
  sub_1C12265E0();

  v37 = *MEMORY[0x1E697FF40];
  v68(v35, v37, v1);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v1);
  v38 = *(v34 + 48);
  v39 = v65;
  sub_1C0FE5654(v36, v65, &qword_1EBE902F0);
  sub_1C0FE5654(v35, &v39[v38], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v1) == 1)
  {
    sub_1C0FD1A5C(v35, &qword_1EBE902F0);
    sub_1C0FD1A5C(v36, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v39[v38], 1, v1) != 1)
    {
LABEL_21:
      sub_1C0FD1A5C(v39, &qword_1EBE902E8);
      return 12.0;
    }

    sub_1C0FD1A5C(v39, &qword_1EBE902F0);
LABEL_12:
    sub_1C1192EE8();
    v45 = v61;
    sub_1C1226AE4();

    v35 = v60;
    v68(v60, v37, v1);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v1);
    v46 = *(v71 + 48);
    v39 = v62;
    sub_1C0FE5654(v45, v62, &qword_1EBE902F0);
    sub_1C0FE5654(v35, &v39[v46], &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(v39, 1, v1) == 1)
    {
      sub_1C0FD1A5C(v35, &qword_1EBE902F0);
      sub_1C0FD1A5C(v45, &qword_1EBE902F0);
      if (__swift_getEnumTagSinglePayload(&v39[v46], 1, v1) == 1)
      {
        sub_1C0FD1A5C(v39, &qword_1EBE902F0);
        return 40.0;
      }

      goto LABEL_21;
    }

    v52 = v59;
    sub_1C0FE5654(v39, v59, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v39[v46], 1, v1) == 1)
    {
      v36 = v45;
      v40 = v52;
      goto LABEL_20;
    }

    v53 = v70;
    v54 = v64;
    (*(v70 + 32))(v64, &v39[v46], v1);
    sub_1C1097070();
    v55 = sub_1C1265DE0();
    v56 = *(v53 + 8);
    v56(v54, v1);
    sub_1C0FD1A5C(v35, &qword_1EBE902F0);
    sub_1C0FD1A5C(v45, &qword_1EBE902F0);
    v56(v52, v1);
    sub_1C0FD1A5C(v39, &qword_1EBE902F0);
    if (v55)
    {
      return 40.0;
    }

    return 12.0;
  }

  v40 = v63;
  sub_1C0FE5654(v39, v63, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v39[v38], 1, v1) == 1)
  {
LABEL_20:
    sub_1C0FD1A5C(v35, &qword_1EBE902F0);
    sub_1C0FD1A5C(v36, &qword_1EBE902F0);
    (*(v70 + 8))(v40, v1);
    goto LABEL_21;
  }

  v41 = v70;
  v42 = v40;
  v43 = v64;
  (*(v70 + 32))(v64, &v39[v38], v1);
  sub_1C1097070();
  v58 = sub_1C1265DE0();
  v44 = *(v41 + 8);
  v44(v43, v1);
  sub_1C0FD1A5C(v69, &qword_1EBE902F0);
  sub_1C0FD1A5C(v67, &qword_1EBE902F0);
  v44(v42, v1);
  sub_1C0FD1A5C(v39, &qword_1EBE902F0);
  if (v58)
  {
    goto LABEL_12;
  }

  return 12.0;
}

uint64_t sub_1C1192EE8()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C1193028@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = sub_1C12629F0();
  v1 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OneUpTitleView();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96370);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v28 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96378);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v28 - v10;
  sub_1C11933EC(v34);
  v12 = v34[0];
  v13 = v34[1];
  *(v7 + 1) = swift_getKeyPath();
  v7[16] = 0;
  *(v7 + 3) = swift_getKeyPath();
  *(v7 + 4) = 0;
  v7[40] = 0;
  v14 = *(v5 + 36);
  *&v7[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  *v7 = v12;
  v7[1] = v13;
  KeyPath = swift_getKeyPath();
  sub_1C1192EE8();
  sub_1C1224ADC();

  if (v33 == 1 && (sub_1C1192EE8(), v16 = sub_1C1225C6C(), , (v16 & 1) != 0))
  {
    v17 = v31;
    (*(v1 + 104))(v3, *MEMORY[0x1E697DBA8], v31);
  }

  else
  {
    sub_1C11936AC(v3);
    v17 = v31;
  }

  v18 = &v9[*(v29 + 36)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D70);
  (*(v1 + 32))(v18 + *(v19 + 28), v3, v17);
  *v18 = KeyPath;
  sub_1C1199DC0(v7, v9, type metadata accessor for OneUpTitleView);
  sub_1C11938B4();
  v21 = v20;
  sub_1C0FE4040(v9, v11, &qword_1EBE96370);
  *&v11[*(v30 + 36)] = v21;
  v22 = sub_1C1265A60();
  sub_1C11938B4();
  v24 = v23;
  v25 = v32;
  sub_1C0FE4040(v11, v32, &qword_1EBE96378);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96218);
  v27 = (v25 + *(result + 36));
  *v27 = v22;
  v27[1] = v24;
  return result;
}

uint64_t sub_1C11933EC@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  v7 = sub_1C1263EB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  sub_1C1192EE8();
  sub_1C12265E0();

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C0FD1A5C(v6, &qword_1EBE902F0);
    v15 = 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v16 = (*(v8 + 88))(v10, v7);
    v15 = v16 != *MEMORY[0x1E697FF38];
    if (v16 != *MEMORY[0x1E697FF38] && v16 != *MEMORY[0x1E697FF40])
    {
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      sub_1C1266940();
      MEMORY[0x1C68EF850](0xD00000000000001ELL, 0x80000001C126B9E0);
      sub_1C1266B10();
      result = sub_1C1266B70();
      __break(1u);
      return result;
    }

    result = (*(v8 + 8))(v13, v7);
  }

  v18 = *(v2 + 40) > 0x3Fu;
  *a1 = v15;
  a1[1] = v18;
  return result;
}

uint64_t sub_1C11936AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OneUpTopBar();
  sub_1C0FE5654(v1 + *(v10 + 32), v9, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C11938B4()
{
  sub_1C1192EE8();
  v0 = sub_1C1225818();

  if (v0)
  {
    result = sub_1C1193B84();
    if (result)
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 120))(ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1C119395C@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1C11939A8(uint64_t (*a1)(__n128))
{
  v3 = type metadata accessor for OneUpTopBar();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = *(v1 + 40);
  v8 = a1(v6);
  if (v7 == 65)
  {
    sub_1C1191154(v8);
  }

  v12[1] = v8;
  swift_getKeyPath();
  sub_1C1198D98(v1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1C1199DC0(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for OneUpTopBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96300);
  sub_1C0FDB6D4(&qword_1EDE7B728, &qword_1EBE962F8);
  sub_1C1199224();
  sub_1C1199278();
  return sub_1C1265680();
}

uint64_t sub_1C1193B84()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1C1193CE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96120);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v21 - v4;
  v6 = sub_1C12637E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 16);
  v26 = *v1;
  v10 = v26;
  if (v27 == 1)
  {
    v11 = *(&v26 + 1);
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v26, &qword_1EBE92930);
    (*(v7 + 8))(v9, v6);
    v10 = v23;
    v11 = v24;
  }

  v22 = a1;
  if (v10)
  {
    ObjectType = swift_getObjectType();
    (*(v11 + 240))(&v23, ObjectType, v11);
    swift_unknownObjectRelease();
    v14 = v23;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v14 + 16))
  {
    goto LABEL_11;
  }

  LOBYTE(v24) = *(v2 + 32);
  v23 = *(v2 + 3);
  v15 = v24;

  if ((v15 & 1) == 0)
  {
    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v23, &qword_1EBE92928);
    (*(v7 + 8))(v9, v6);
  }

  v17 = sub_1C1222F4C();

  if ((v17 & 1) == 0)
  {
    *v5 = sub_1C12638E0();
    *(v5 + 1) = 0x4020000000000000;
    v5[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96128);
    v25 = v14;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92980);
    sub_1C0FDB6D4(&unk_1EDE7B730, &qword_1EBE92980);
    sub_1C1096FC8();
    sub_1C109701C();
    sub_1C1265680();

    v19 = v22;
    sub_1C0FE4040(v5, v22, &qword_1EBE96120);
    v18 = 0;
  }

  else
  {
LABEL_11:

    v18 = 1;
    v19 = v22;
  }

  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v21);
}

uint64_t sub_1C1194168@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96120);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v21 - v4;
  v6 = sub_1C12637E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 16);
  v27 = *v1;
  v10 = v27;
  if (v28 == 1)
  {
    v11 = *(&v27 + 1);
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v27, &qword_1EBE92930);
    (*(v7 + 8))(v9, v6);
    v10 = v23;
    v11 = v24;
  }

  v22 = a1;
  if (v10)
  {
    ObjectType = swift_getObjectType();
    (*(v11 + 240))(&v23, ObjectType, v11);
    swift_unknownObjectRelease();
    v14 = v25;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v14 + 16))
  {
    goto LABEL_11;
  }

  LOBYTE(v24) = *(v2 + 32);
  v23 = *(v2 + 3);
  v15 = v24;

  if ((v15 & 1) == 0)
  {
    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v23, &qword_1EBE92928);
    (*(v7 + 8))(v9, v6);
  }

  v17 = sub_1C1222F4C();

  if ((v17 & 1) == 0)
  {
    *v5 = sub_1C12638E0();
    *(v5 + 1) = 0x4020000000000000;
    v5[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96128);
    v26 = v14;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92980);
    sub_1C0FDB6D4(&unk_1EDE7B730, &qword_1EBE92980);
    sub_1C1096FC8();
    sub_1C109701C();
    sub_1C1265680();

    v19 = v22;
    sub_1C0FE4040(v5, v22, &qword_1EBE96120);
    v18 = 0;
  }

  else
  {
LABEL_11:

    v18 = 1;
    v19 = v22;
  }

  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v21);
}

uint64_t sub_1C11945B0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  KeyPath = swift_getKeyPath();
  v10[0] = 0;
  v7 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v7;
  v8 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v8;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return sub_1C0FF526C(v11, v10);
}

uint64_t sub_1C119465C()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  (*(v3 + 24))(&v53, v2, v3);
  if ((v53 & 0x10) != 0)
  {
    sub_1C0FE46BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = v5;
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1C0FE46BC(v6 > 1, v7 + 1, 1, v5);
      v4 = v38;
    }

    *(v4 + 16) = v7 + 1;
    *(v4 + 8 * v7 + 32) = 16;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[3];
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v8);
  (*(v9 + 24))(&v53, v8, v9);
  if ((v53 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v39;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1C0FE46BC(v10 > 1, v11 + 1, 1, v4);
      v4 = v40;
    }

    *(v4 + 16) = v11 + 1;
    *(v4 + 8 * v11 + 32) = 4;
  }

  v12 = v0[3];
  v13 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v12);
  (*(v13 + 24))(&v53, v12, v13);
  if ((v53 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v41;
    }

    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1C0FE46BC(v14 > 1, v15 + 1, 1, v4);
      v4 = v42;
    }

    *(v4 + 16) = v15 + 1;
    *(v4 + 8 * v15 + 32) = 8;
  }

  v16 = v0[3];
  v17 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v16);
  (*(v17 + 24))(&v53, v16, v17);
  if ((v53 & 0x100) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v43;
    }

    v19 = *(v4 + 16);
    v18 = *(v4 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1C0FE46BC(v18 > 1, v19 + 1, 1, v4);
      v4 = v44;
    }

    *(v4 + 16) = v19 + 1;
    *(v4 + 8 * v19 + 32) = 256;
  }

  v20 = v0[3];
  v21 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v20);
  (*(v21 + 24))(&v53, v20, v21);
  if ((v53 & 0x20) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v45;
    }

    v25 = *(v4 + 16);
    v28 = *(v4 + 24);
    v26 = v25 + 1;
    if (v25 >= v28 >> 1)
    {
      sub_1C0FE46BC(v28 > 1, v25 + 1, 1, v4);
      v4 = v46;
    }

    v27 = 32;
  }

  else
  {
    v22 = v0[3];
    v23 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v22);
    (*(v23 + 24))(&v53, v22, v23);
    if ((v53 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v51;
    }

    v25 = *(v4 + 16);
    v24 = *(v4 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      sub_1C0FE46BC(v24 > 1, v25 + 1, 1, v4);
      v4 = v52;
    }

    v27 = 64;
  }

  *(v4 + 16) = v26;
  *(v4 + 8 * v25 + 32) = v27;
LABEL_37:
  v29 = v1[3];
  v30 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v29);
  (*(v30 + 24))(&v53, v29, v30);
  if (v53)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v47;
    }

    v32 = *(v4 + 16);
    v31 = *(v4 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1C0FE46BC(v31 > 1, v32 + 1, 1, v4);
      v4 = v48;
    }

    *(v4 + 16) = v32 + 1;
    *(v4 + 8 * v32 + 32) = 1;
  }

  v33 = v1[3];
  v34 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v33);
  (*(v34 + 24))(&v53, v33, v34);
  if ((v53 & 0x80) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE46BC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v49;
    }

    v36 = *(v4 + 16);
    v35 = *(v4 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1C0FE46BC(v35 > 1, v36 + 1, 1, v4);
      v4 = v50;
    }

    *(v4 + 16) = v36 + 1;
    *(v4 + 8 * v36 + 32) = 128;
  }

  return v4;
}

uint64_t sub_1C1194BCC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 24))(&v9, v1, v2);
  if ((v9 & 2) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C0FE46BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v4;
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (v6 >= v5 >> 1)
  {
    sub_1C0FE46BC(v5 > 1, v6 + 1, 1, v4);
    v3 = v8;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 8 * v6 + 32) = 2;
  return v3;
}

uint64_t sub_1C1194C9C(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-1] - v5;
  v7 = *a1;
  if (!(!v9 & v8))
  {
    switch(*a1)
    {
      case 1:
        v10 = a2[3];
        v11 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v10);
        (*(v11 + 16))(v22, v10, v11);
        v22[5] = swift_getKeyPath();
        v22[6] = 0;
        v23 = 0;
        KeyPath = swift_getKeyPath();
        v25 = 0;
        v26 = 0;
        sub_1C1199B68(v22, v31);
        v32 = 1;
        sub_1C1199900();
        sub_1C1199954();
        sub_1C1263C20();
        sub_1C0FE5654(&v28, v31, &qword_1EBE96348);
        v33 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96348);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96350);
        sub_1C1199874();
        sub_1C11999A8();
        sub_1C1263C20();
        sub_1C0FD1A5C(&v28, &qword_1EBE96348);
        sub_1C0FE5654(v27, v31, &qword_1EBE96340);
        v34 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96318);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96340);
        sub_1C1199390();
        sub_1C11997E8();
        sub_1C1263C20();
        sub_1C0FD1A5C(v27, &qword_1EBE96340);
        sub_1C0FE5654(&v28, v31, &qword_1EBE96310);
        v35 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96310);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96360);
        sub_1C1199304();
        sub_1C1199A88();
        sub_1C1263C20();
        sub_1C0FD1A5C(&v28, &qword_1EBE96310);
        return sub_1C1199BC4(v22);
      case 2:
        v28 = swift_getKeyPath();
        LOWORD(v29) = 256;
        sub_1C1199A34();
        sub_1C1198D30();

        sub_1C1263C20();
        v33 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96348);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96350);
        sub_1C1199874();
        sub_1C11999A8();
        sub_1C1263C20();
        sub_1C0FE5654(v27, v31, &qword_1EBE96340);
        v34 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96318);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96340);
        sub_1C1199390();
        sub_1C11997E8();
        sub_1C1263C20();
        sub_1C0FD1A5C(v27, &qword_1EBE96340);
        sub_1C0FE5654(&v28, v31, &qword_1EBE96310);
        v35 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96310);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96360);
        sub_1C1199304();
        sub_1C1199A88();
        sub_1C1263C20();

        return sub_1C0FD1A5C(&v28, &qword_1EBE96310);
      case 3:
      case 5:
      case 6:
      case 7:
        goto LABEL_35;
      case 4:
        v13 = a2[3];
        v14 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v13);
        (*(v14 + 24))(v31, v13, v14);
        sub_1C1192EE8();
        sub_1C1226AE4();

        static OneUpTopBarLayoutUtilities.allPhotosButtonSizeVariant(allowedTopBarButtons:horizontalSizeClass:)(v31, v6, &v28);
        sub_1C0FD1A5C(v6, &qword_1EBE902F0);
        v15 = v28;
        if (v28 == 2)
        {
          v16 = -256;
        }

        else
        {
          if (sub_1C1193B84() && (v18 = v17, ObjectType = swift_getObjectType(), LOBYTE(v18) = (*(v18 + 272))(ObjectType, v18), swift_unknownObjectRelease(), (v18 & 1) != 0))
          {
            LOWORD(v28) = v15 & 1;
          }

          else
          {
            LOBYTE(v28) = v15 & 1;
            BYTE1(v28) = 1;
          }

          sub_1C119960C();
          sub_1C1199660();
          sub_1C1263C20();
          if (BYTE1(v31[0]))
          {
            v20 = 256;
          }

          else
          {
            v20 = 0;
          }

          v16 = v20 | LOBYTE(v31[0]);
        }

        LOWORD(v28) = v16;
        BYTE2(v28) = 1;
        goto LABEL_30;
      case 8:
        LOBYTE(v28) = 0;
        goto LABEL_15;
      default:
        goto LABEL_36;
    }
  }

  if (v7 == 256)
  {
    v28 = swift_getKeyPath();
    v29 = 0;
    v30 = 0;
    sub_1C1199B14();

    sub_1C1263C20();
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96310);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96360);
    sub_1C1199304();
    sub_1C1199A88();
    sub_1C1263C20();
  }

  if (v7 != 32)
  {
    switch(v7)
    {
      case 64:
        v32 = 0;
        sub_1C1199900();
        sub_1C1199954();
        sub_1C1263C20();
        sub_1C0FE5654(&v28, v31, &qword_1EBE96348);
        v33 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96348);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96350);
        sub_1C1199874();
        sub_1C11999A8();
        sub_1C1263C20();
        sub_1C0FD1A5C(&v28, &qword_1EBE96348);
        sub_1C0FE5654(v27, v31, &qword_1EBE96340);
        v34 = 1;
        break;
      case 128:
        v28 = 0;
        LOWORD(v29) = 0;
        sub_1C1199A34();
        sub_1C1198D30();
        sub_1C1263C20();
        v33 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96348);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96350);
        sub_1C1199874();
        sub_1C11999A8();
        sub_1C1263C20();
        sub_1C0FE5654(v27, v31, &qword_1EBE96340);
        v34 = 1;
        break;
      case 16:
        LOWORD(v28) = 0;
        BYTE2(v28) = 0;
LABEL_30:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96328);
        sub_1C11994A8();
        sub_1C11994FC();
        sub_1C1263C20();
        BYTE2(v28) = BYTE2(v31[0]) != 0;
        LOWORD(v28) = v31[0];
        BYTE3(v28) = 0;
        goto LABEL_31;
      default:
LABEL_35:
        v31[0] = 0;
        v31[1] = 0xE000000000000000;
        sub_1C1266940();
        MEMORY[0x1C68EF850](0xD000000000000020, 0x80000001C126D0E0);
        v28 = v7;
        sub_1C1266B10();
        sub_1C1266B70();
        __break(1u);
LABEL_36:
        JUMPOUT(0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96318);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96340);
    sub_1C1199390();
    sub_1C11997E8();
    sub_1C1263C20();
    sub_1C0FD1A5C(v27, &qword_1EBE96340);
    goto LABEL_32;
  }

  LOBYTE(v28) = 1;
LABEL_15:
  sub_1C1199740();
  sub_1C1199794();
  sub_1C1263C20();
  LOWORD(v28) = LOBYTE(v31[0]);
  WORD1(v28) = 256;
LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96338);
  sub_1C119941C();
  sub_1C11996B4();
  sub_1C1263C20();
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96340);
  sub_1C1199390();
  sub_1C11997E8();
  sub_1C1263C20();
LABEL_32:
  sub_1C0FE5654(&v28, v31, &qword_1EBE96310);
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96360);
  sub_1C1199304();
  sub_1C1199A88();
  sub_1C1263C20();
  return sub_1C0FD1A5C(&v28, &qword_1EBE96310);
}

uint64_t static OneUpTopBarLayout.BadgePosition.leading(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1C1263150();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v4, v8);
  result = (*(v6 + 88))(v10, v4);
  if (result == *MEMORY[0x1E697E7D0])
  {
    v12 = 0;
LABEL_5:
    *a2 = v12;
    return result;
  }

  if (result == *MEMORY[0x1E697E7D8])
  {
    v12 = 1;
    goto LABEL_5;
  }

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t OneUpTopBarLayout.BadgePosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1195AAC@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(uint64_t *__return_ptr)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t *__return_ptr)@<X4>, uint64_t a5@<X5>, uint64_t (*a6)(__n128)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, void (*a9)(uint64_t), uint64_t a10)
{
  v79 = a6;
  v80 = a7;
  v68 = a4;
  v69 = a5;
  v66 = a2;
  v67 = a3;
  v65 = a1;
  v83 = a8;
  v77 = a9;
  v76 = a10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96200) - 8;
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96208);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = (&v64 - v14);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96210) - 8;
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96218);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96220);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v64 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96228);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v64 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96230);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31);
  v71 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v64 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v64 - v39;
  v65(v38);
  sub_1C12659A0();
  sub_1C1263390();
  sub_1C0FE4040(v22, v26, &qword_1EBE96218);
  memcpy(&v26[*(v24 + 44)], v98, 0x70uLL);
  sub_1C0FE4040(v26, v30, &qword_1EBE96220);
  v30[*(v28 + 44)] = 0;
  KeyPath = swift_getKeyPath();
  sub_1C0FE4040(v30, v36, &qword_1EBE96228);
  v42 = &v36[*(v32 + 44)];
  *v42 = KeyPath;
  *(v42 + 1) = 0;
  v42[16] = 0;
  v43 = v40;
  sub_1C0FE4040(v36, v40, &qword_1EBE96230);
  v44 = sub_1C12638E0();
  v93 = 1;
  sub_1C11963E8(v66, v68, v94);
  memcpy(v95, v94, 0x99uLL);
  memcpy(v96, v94, 0x99uLL);
  sub_1C0FE5654(v95, v91, &qword_1EBE96238);
  sub_1C0FD1A5C(v96, &qword_1EBE96238);
  memcpy(&v92[7], v95, 0x99uLL);
  sub_1C12659A0();
  v97[0] = v44;
  v97[1] = 0;
  LOBYTE(v32) = v93;
  LOBYTE(v97[2]) = v93;
  memcpy(&v97[2] + 1, v92, 0xA0uLL);
  sub_1C1263390();
  memcpy(v94, v97, 0xB1uLL);
  v87[0] = v44;
  v87[1] = 0;
  v88 = v32;
  memcpy(v89, v92, sizeof(v89));
  sub_1C0FE5654(v97, v91, &qword_1EBE96240);
  sub_1C0FD1A5C(v87, &qword_1EBE96240);
  memcpy(v90, v94, sizeof(v90));
  memcpy(v91, v94, sizeof(v91));
  sub_1C0FE5654(v90, v86, &qword_1EBE96248);
  sub_1C0FD1A5C(v91, &qword_1EBE96248);
  v45 = sub_1C12638E0();
  v46 = v70;
  *v70 = v45;
  *(v46 + 8) = 0;
  *(v46 + 16) = 1;
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96250) + 44);
  v49 = v72;
  v48 = v73;
  v50 = &v72[*(v73 + 48)];
  *v50 = swift_getKeyPath();
  *(v50 + 1) = 0;
  v50[16] = 0;
  sub_1C11969B8(v79, v77, v49);
  v49[*(v48 + 44)] = 1;
  v51 = v74;
  sub_1C0FE5654(v49, v74, &qword_1EBE96200);
  *v47 = 0;
  *(v47 + 8) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96258);
  sub_1C0FE5654(v51, v47 + *(v52 + 48), &qword_1EBE96200);
  sub_1C0FD1A5C(v49, &qword_1EBE96200);
  sub_1C0FD1A5C(v51, &qword_1EBE96200);
  sub_1C12659A0();
  sub_1C1263390();
  v53 = v75;
  sub_1C0FE4040(v46, v75, &qword_1EBE96208);
  memcpy((v53 + *(v81 + 44)), __src, 0x70uLL);
  v54 = v78;
  sub_1C0FE4040(v53, v78, &qword_1EBE96210);
  v55 = v43;
  v56 = v71;
  sub_1C0FE5654(v43, v71, &qword_1EBE96230);
  memcpy(v84, v90, sizeof(v84));
  v57 = v82;
  sub_1C0FE5654(v54, v82, &qword_1EBE96210);
  v58 = v83;
  sub_1C0FE5654(v56, v83, &qword_1EBE96230);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96260);
  v60 = v58 + v59[12];
  *v60 = 0;
  *(v60 + 8) = 1;
  v61 = v59[16];
  memcpy(v85, v84, sizeof(v85));
  memcpy((v58 + v61), v84, 0x128uLL);
  v62 = v58 + v59[20];
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_1C0FE5654(v57, v58 + v59[24], &qword_1EBE96210);
  sub_1C0FE5654(v85, v86, &qword_1EBE96248);
  sub_1C0FD1A5C(v54, &qword_1EBE96210);
  sub_1C0FD1A5C(v55, &qword_1EBE96230);
  sub_1C0FD1A5C(v57, &qword_1EBE96210);
  memcpy(v86, v84, sizeof(v86));
  sub_1C0FD1A5C(v86, &qword_1EBE96248);
  return sub_1C0FD1A5C(v56, &qword_1EBE96230);
}

uint64_t sub_1C11963E8@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, void (*a2)(uint64_t *__return_ptr)@<X2>, uint64_t a3@<X8>)
{
  a1(&v31);
  v4 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
  KeyPath = swift_getKeyPath();
  v44 = v6;
  v43 = v8;
  v42 = 0;
  a2(&v31);
  v10 = v31;
  v11 = v32;
  LOBYTE(a2) = v33;
  v12 = v34;
  v13 = v35;
  v14 = swift_getKeyPath();
  v47 = a2;
  v46 = v13;
  v45 = 0;
  v39 = 0;
  v40 = 1;
  v31 = v4;
  v32 = v5;
  v33 = v44;
  v34 = v7;
  v35 = v43;
  v36 = KeyPath;
  v37 = 0;
  v38 = v42;
  v41[0] = &v39;
  v41[1] = &v31;
  v23 = v10;
  v24 = v11;
  v25 = a2;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = 0;
  v30 = 0;
  v21 = 0;
  v22 = 1;
  v41[2] = &v23;
  v41[3] = &v21;
  sub_1C11C2E3C(v41, a3);
  v15 = v28;
  v16 = v29;
  LOBYTE(a2) = v30;
  sub_1C0FF9034(v23, v24, v25);

  sub_1C0FF9034(v15, v16, a2);
  v17 = v36;
  v18 = v37;
  LOBYTE(a2) = v38;
  sub_1C0FF9034(v31, v32, v33);

  return sub_1C0FF9034(v17, v18, a2);
}

uint64_t sub_1C1196590@<X0>(void (*a1)(__n128)@<X0>, uint64_t (*a2)(__n128)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v44 = a4;
  v45 = a5;
  v42 = a2;
  v43 = a3;
  v46 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96278);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96218);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96220);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96280);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v40 - v28;
  a1(v27);
  sub_1C12659A0();
  sub_1C1263390();
  sub_1C0FE4040(v14, v18, &qword_1EBE96218);
  memcpy(&v18[*(v16 + 44)], __src, 0x70uLL);
  KeyPath = swift_getKeyPath();
  sub_1C0FE4040(v18, v25, &qword_1EBE96220);
  v31 = &v25[*(v20 + 44)];
  *v31 = KeyPath;
  *(v31 + 1) = 0;
  v31[16] = 0;
  sub_1C0FE4040(v25, v29, &qword_1EBE96280);
  *v11 = sub_1C12638E0();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v32 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96288) + 44)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96200);
  v34 = &v32[*(v33 + 40)];
  *v34 = swift_getKeyPath();
  *(v34 + 1) = 0;
  v34[16] = 0;
  sub_1C11969B8(v42, v44, v32);
  v32[*(v33 + 36)] = 1;
  sub_1C0FE5654(v29, v22, &qword_1EBE96280);
  v35 = v41;
  sub_1C0FE5654(v11, v41, &qword_1EBE96278);
  v36 = v46;
  sub_1C0FE5654(v22, v46, &qword_1EBE96280);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96290);
  v38 = v36 + *(v37 + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_1C0FE5654(v35, v36 + *(v37 + 64), &qword_1EBE96278);
  sub_1C0FD1A5C(v11, &qword_1EBE96278);
  sub_1C0FD1A5C(v29, &qword_1EBE96280);
  sub_1C0FD1A5C(v35, &qword_1EBE96278);
  return sub_1C0FD1A5C(v22, &qword_1EBE96280);
}

uint64_t sub_1C11969B8@<X0>(uint64_t (*a1)(__n128)@<X0>, void (*a2)(uint64_t)@<X2>, char *a3@<X8>)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96268);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - v19;
  v21 = a1(v18);
  v27(v21);
  v22 = *(v7 + 16);
  v22(v13, v20, v5);
  v22(v10, v16, v5);
  v22(a3, v13, v5);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96270);
  v22(&a3[*(v23 + 48)], v10, v5);
  v24 = *(v7 + 8);
  v24(v16, v5);
  v24(v20, v5);
  v24(v10, v5);
  return (v24)(v13, v5);
}

uint64_t sub_1C1196BDC@<X0>(char a1@<W0>, void (*a2)(void)@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t)@<X3>, uint64_t a4@<X4>, void (*a5)(__int128 *__return_ptr)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v57 = a6;
  v58 = a4;
  v60 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962D0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v50 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962D8);
  MEMORY[0x1EEE9AC00](v62);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962A8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  switch(a1)
  {
    case 1:
    case 3:
      v29 = &v16[*(v14 + 40)];
      *v29 = swift_getKeyPath();
      *(v29 + 1) = 0;
      v29[16] = 0;
      a2();
      v16[*(v14 + 36)] = 1;
      sub_1C0FE5654(v16, v63, &qword_1EBE962A8);
      swift_storeEnumTagMultiPayload();
      sub_1C0FDB6D4(&qword_1EBE962E0, &qword_1EBE962D8);
      sub_1C0FDB6D4(&qword_1EBE962C0, &qword_1EBE962A8);
      sub_1C1263C20();
      v30 = v16;
      break;
    default:
      v50 = a5;
      v59 = v13;
      v56 = a7;
      v20 = &v19[*(v14 + 40)];
      *v20 = swift_getKeyPath();
      *(v20 + 1) = 0;
      v20[16] = 0;
      v21 = (a2)();
      v54 = v14;
      v19[*(v14 + 36)] = 1;
      v60(&v72, v21);
      v53 = *(&v72 + 1);
      v55 = v72;
      v22 = v73;
      v23 = *(&v73 + 1);
      v24 = v74[0];
      KeyPath = swift_getKeyPath();
      LODWORD(v60) = v22;
      v77 = v22;
      v76 = v24;
      v75 = 0;
      v58 = v23;
      if (a1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *&v73 = 255;
        *v74 = 0;
      }

      else
      {
        v50(&v72);
        v26 = *(&v72 + 1);
        v25 = v72;
        v31 = v73;
        v27 = *(&v73 + 1);
        v32 = v74[0];
        v28 = swift_getKeyPath();
        LOBYTE(v70[0]) = v31;
        LOBYTE(v68[0]) = v32;
        LOBYTE(v65) = 0;
        LOBYTE(v73) = v31;
        v23 = v58;
        v74[0] = v32;
      }

      *&v72 = v25;
      *(&v72 + 1) = v26;
      *(&v73 + 1) = v27;
      *&v74[8] = v28;
      *&v74[16] = 0;
      v74[24] = 0;
      v52 = v19;
      sub_1C0FE5654(v19, v16, &qword_1EBE962A8);
      v33 = v76;
      v34 = v77;
      LODWORD(v57) = v77;
      v35 = v75;
      v65 = v72;
      v66 = v73;
      v67[0] = *v74;
      *(v67 + 9) = *&v74[9];
      v36 = v59;
      sub_1C0FE5654(v16, v59, &qword_1EBE962A8);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962E8);
      v38 = v36 + *(v37 + 48);
      v39 = v55;
      v40 = v53;
      *v38 = v55;
      *(v38 + 8) = v40;
      *(v38 + 16) = v34;
      *(v38 + 24) = v23;
      *(v38 + 32) = v33;
      v41 = KeyPath;
      *(v38 + 40) = KeyPath;
      *(v38 + 48) = 0;
      *(v38 + 56) = v35;
      v42 = (v36 + *(v37 + 64));
      *(v69 + 9) = *(v67 + 9);
      v43 = v65;
      v44 = v66;
      v68[0] = v65;
      v68[1] = v66;
      v45 = v67[0];
      v69[0] = v67[0];
      v46 = v66;
      *v42 = v65;
      v42[1] = v46;
      v42[2] = v45;
      *(v42 + 41) = *(v67 + 9);
      *(v71 + 9) = *(v67 + 9);
      v70[1] = v44;
      v71[0] = v67[0];
      v70[0] = v43;
      sub_1C1058CE4(v39, v40, v60);

      sub_1C0FE5654(&v72, v64, &qword_1EBE962F0);
      v47 = v57;
      sub_1C1058CE4(v39, v40, v57 & 1);

      sub_1C1058CE4(v41, 0, v35 & 1);
      sub_1C0FE5654(v68, v64, &qword_1EBE962F0);
      sub_1C0FD1A5C(v70, &qword_1EBE962F0);
      sub_1C0FF9034(v39, v40, v47 & 1);

      sub_1C0FF9034(v41, 0, v35 & 1);
      sub_1C0FD1A5C(v16, &qword_1EBE962A8);
      v48 = v59;
      sub_1C0FE5654(v59, v63, &qword_1EBE962D8);
      swift_storeEnumTagMultiPayload();
      sub_1C0FDB6D4(&qword_1EBE962E0, &qword_1EBE962D8);
      sub_1C0FDB6D4(&qword_1EBE962C0, &qword_1EBE962A8);
      sub_1C1263C20();
      sub_1C0FF9034(v39, v40, v60);

      sub_1C0FD1A5C(&v72, &qword_1EBE962F0);
      sub_1C0FD1A5C(v48, &qword_1EBE962D8);
      v30 = v52;
      break;
  }

  return sub_1C0FD1A5C(v30, &qword_1EBE962A8);
}

uint64_t sub_1C1197274@<X0>(unsigned __int8 a1@<W0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, void (*a4)(__int128 *__return_ptr, __n128)@<X3>, void (*a5)(__int128 *__return_ptr)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v55 = a4;
  v56 = a6;
  v58 = a5;
  v60 = a7;
  v9 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96298);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962A0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962A8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v17);
  if ((v9 - 1) >= 2)
  {
    v27 = &v49 + *(v16 + 40) - v18;
    v28 = &v49 - v18;
    *v27 = swift_getKeyPath();
    *(v27 + 1) = 0;
    v27[16] = 0;
    a2();
    v28[*(v16 + 36)] = 0;
    sub_1C0FE5654(v28, v15, &qword_1EBE962A8);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE962C0, &qword_1EBE962A8);
    sub_1C0FDB6D4(&qword_1EBE962C8, &qword_1EBE96298);
    sub_1C1263C20();
    v29 = v28;
  }

  else
  {
    v57 = &v49 - v18;
    v50 = a3;
    v51 = v19;
    v52 = v13;
    v53 = v15;
    v54 = v10;
    v59 = v16;
    if (v9 == 1)
    {
      v55(&v72, v20);
      v22 = *(&v72 + 1);
      v21 = v72;
      v23 = v73;
      v24 = *(&v73 + 1);
      v25 = v74[0];
      KeyPath = swift_getKeyPath();
      LOBYTE(v66) = v23;
      LOBYTE(v64[0]) = v25;
      LOBYTE(v61) = 0;
      LOBYTE(v73) = v23;
      v74[0] = v25;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v24 = 0;
      KeyPath = 0;
      *&v73 = 255;
      *v74 = 0;
    }

    *&v72 = v21;
    *(&v72 + 1) = v22;
    *(&v73 + 1) = v24;
    *&v74[8] = KeyPath;
    *&v74[16] = 0;
    v74[24] = 0;
    v58(&v66);
    v56 = *(&v66 + 1);
    v30 = v66;
    v31 = v67;
    LODWORD(v58) = v67;
    v32 = *(&v67 + 1);
    v33 = v68[0];
    v34 = swift_getKeyPath();
    v71 = v31;
    v70 = v33;
    v69 = 0;
    v35 = v59;
    v36 = v57;
    v37 = &v57[*(v59 + 40)];
    *v37 = swift_getKeyPath();
    *(v37 + 1) = 0;
    v37[16] = 0;
    a2();
    v36[*(v35 + 36)] = 0;
    v38 = v36;
    v61 = v72;
    v62 = v73;
    v63[0] = *v74;
    *(v63 + 9) = *&v74[9];
    v39 = v70;
    LOBYTE(v37) = v71;
    v40 = v69;
    LODWORD(v50) = v69;
    v41 = v51;
    sub_1C0FE5654(v38, v51, &qword_1EBE962A8);
    v42 = v62;
    v64[0] = v61;
    v64[1] = v62;
    v43 = v63[0];
    v65[0] = v63[0];
    v44 = *(v63 + 9);
    *(v65 + 9) = *(v63 + 9);
    *v12 = v61;
    *(v12 + 1) = v42;
    *(v12 + 2) = v43;
    *(v12 + 41) = v44;
    v45 = v56;
    *(v12 + 8) = v30;
    *(v12 + 9) = v45;
    v12[80] = v37;
    *(v12 + 11) = v32;
    *(v12 + 12) = v39;
    *(v12 + 13) = v34;
    *(v12 + 14) = 0;
    v12[120] = v40;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE962B0);
    sub_1C0FE5654(v41, &v12[*(v46 + 64)], &qword_1EBE962A8);
    sub_1C0FE5654(&v72, &v66, &qword_1EBE962B8);
    sub_1C1058CE4(v30, v45, v58);

    sub_1C0FE5654(v64, &v66, &qword_1EBE962B8);
    sub_1C1058CE4(v30, v45, v37 & 1);

    v47 = v50;
    v55 = v34;
    sub_1C1058CE4(v34, 0, v50 & 1);
    sub_1C0FD1A5C(v41, &qword_1EBE962A8);
    sub_1C0FF9034(v30, v45, v37 & 1);

    sub_1C0FF9034(v34, 0, v47 & 1);
    v66 = v61;
    v67 = v62;
    v68[0] = v63[0];
    *(v68 + 9) = *(v63 + 9);
    sub_1C0FD1A5C(&v66, &qword_1EBE962B8);
    sub_1C0FE5654(v12, v53, &qword_1EBE96298);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE962C0, &qword_1EBE962A8);
    sub_1C0FDB6D4(&qword_1EBE962C8, &qword_1EBE96298);
    sub_1C1263C20();
    sub_1C0FF9034(v30, v56, v58);

    sub_1C0FD1A5C(&v72, &qword_1EBE962B8);
    sub_1C0FD1A5C(v12, &qword_1EBE96298);
    v29 = v57;
  }

  return sub_1C0FD1A5C(v29, &qword_1EBE962A8);
}

uint64_t sub_1C1197904()
{
  sub_1C1266E90();
  sub_1C0FCF0B8(v2, *v0);
  return sub_1C1266EE0();
}

uint64_t sub_1C119794C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = *(a1 + 16);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v34 - v7;
  v8 = sub_1C12637E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96110);
  v40 = v4;
  v12 = sub_1C1263C30();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v34 - v14;
  v15 = *(a1 + 40);
  v38 = v2;
  v16 = v2 + v15;
  v17 = *v16;
  v18 = *(v16 + 8);
  if (*(v16 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v19 = sub_1C1264410();
    v34 = v8;
    v20 = v19;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(v17, v18, 0);
    (*(v9 + 8))(v11, v34);
    v17 = v46;
    v18 = v47;
  }

  v21 = v41;
  if (v17 && (ObjectType = swift_getObjectType(), (*(v18 + 24))(&v46, ObjectType, v18), swift_unknownObjectRelease(), v46 == 1))
  {
    v23 = a1;
    if (*(v38 + *(a1 + 36)))
    {
      KeyPath = swift_getKeyPath();
      v43 = 256;
    }

    else
    {
      KeyPath = 0;
      v43 = 0;
    }

    sub_1C1198D30();
    sub_1C1263C20();
    v29 = v46;
    v30 = v47;
    v31 = BYTE1(v47);
    sub_1C1198CA4();
    v24 = *(v23 + 24);
    sub_1C1112D68();
    sub_1C1198D84(v29, v30, v31);
  }

  else
  {
    v24 = *(a1 + 24);
    v25 = v35;
    v26 = v40;
    sub_1C0FDBA4C(v38, v40, v24);
    v27 = v36;
    sub_1C0FDBA4C(v25, v26, v24);
    sub_1C1198CA4();
    sub_1C1112E18();
    v28 = *(v37 + 8);
    v28(v27, v26);
    v28(v25, v26);
  }

  v44 = sub_1C1198CA4();
  v45 = v24;
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v21, v12, WitnessTable);
  return (*(v13 + 8))(v21, v12);
}

unint64_t sub_1C1197E90()
{
  result = qword_1EBE96060;
  if (!qword_1EBE96060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96060);
  }

  return result;
}

unint64_t sub_1C1197EE8()
{
  result = qword_1EBE96068;
  if (!qword_1EBE96068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96068);
  }

  return result;
}

unint64_t sub_1C1197F40()
{
  result = qword_1EBE96070;
  if (!qword_1EBE96070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96070);
  }

  return result;
}

unint64_t sub_1C1197F9C()
{
  result = qword_1EDE7D6A0;
  if (!qword_1EDE7D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6A0);
  }

  return result;
}

unint64_t sub_1C119800C()
{
  result = qword_1EDE7D698;
  if (!qword_1EDE7D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D698);
  }

  return result;
}

PhotosSwiftUICore::OneUpTopBarButtons sub_1C11980F8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = OneUpTopBarButtons.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C1198138@<X0>(uint64_t *a1@<X8>)
{
  result = OneUpTopBarButtons.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1C119818C()
{
  sub_1C1198280();
  if (v0 <= 0x3F)
  {
    sub_1C10387FC();
    if (v1 <= 0x3F)
    {
      sub_1C1057868(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
      if (v2 <= 0x3F)
      {
        sub_1C1057868(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C1198280()
{
  result = qword_1EDE78A50;
  if (!qword_1EDE78A50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDE78A50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneUpTopBarLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3E)
  {
    if (a2 + 194 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 194) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 195;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v5 >= 0x3D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for OneUpTopBarLayout(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3D)
  {
    v6 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C1198448(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_1C1198474(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 3 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 3 ^ 0x82;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpTopBarLayout.BadgePosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C11985C4()
{
  result = qword_1EBE96078;
  if (!qword_1EBE96078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96058);
    sub_1C0FDB6D4(&qword_1EBE96080, &qword_1EBE96050);
    sub_1C0FDB6D4(&unk_1EDE7B978, qword_1EBE96088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96078);
  }

  return result;
}

uint64_t sub_1C11986A8()
{
  locked = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    locked = type metadata accessor for OneUpLockedAwareButtons.LockedButton();
    if (v2 <= 0x3F)
    {
      sub_1C10387FC();
      locked = v3;
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return locked;
}

uint64_t sub_1C1198760(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFE)
    {
      v16 = *(v6 + result);
      if (v16 >= 2)
      {
        return v16 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 25;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C119889C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 25);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1C1198A98(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1198B74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C1198BB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C1198CA4()
{
  result = qword_1EBE96118;
  if (!qword_1EBE96118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96110);
    sub_1C1198D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96118);
  }

  return result;
}

unint64_t sub_1C1198D30()
{
  result = qword_1EDE7D6B8;
  if (!qword_1EDE7D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6B8);
  }

  return result;
}

uint64_t sub_1C1198D84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C1198D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpTopBar();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1198EF0()
{
  result = qword_1EBE96190;
  if (!qword_1EBE96190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96138);
    sub_1C1198F7C();
    sub_1C119905C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96190);
  }

  return result;
}

unint64_t sub_1C1198F7C()
{
  result = qword_1EBE96198;
  if (!qword_1EBE96198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96188);
    sub_1C0FDB6D4(&qword_1EBE961A0, &qword_1EBE96150);
    sub_1C0FDB6D4(&qword_1EBE961A8, &qword_1EBE96140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96198);
  }

  return result;
}

unint64_t sub_1C119905C()
{
  result = qword_1EBE961B0;
  if (!qword_1EBE961B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96180);
    sub_1C11990E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE961B0);
  }

  return result;
}

unint64_t sub_1C11990E8()
{
  result = qword_1EBE961B8;
  if (!qword_1EBE961B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96178);
    sub_1C0FDB6D4(&qword_1EDE7C018, &qword_1EBE92990);
    sub_1C0FDB6D4(&qword_1EBE961C0, &qword_1EBE961C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE961B8);
  }

  return result;
}

unint64_t sub_1C11991CC()
{
  result = qword_1EDE7C7C0;
  if (!qword_1EDE7C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C7C0);
  }

  return result;
}

unint64_t sub_1C1199224()
{
  result = qword_1EDE7D6A8;
  if (!qword_1EDE7D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6A8);
  }

  return result;
}

unint64_t sub_1C1199278()
{
  result = qword_1EBE96308;
  if (!qword_1EBE96308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96300);
    sub_1C1199304();
    sub_1C1199A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96308);
  }

  return result;
}

unint64_t sub_1C1199304()
{
  result = qword_1EDE76E20;
  if (!qword_1EDE76E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96310);
    sub_1C1199390();
    sub_1C11997E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E20);
  }

  return result;
}

unint64_t sub_1C1199390()
{
  result = qword_1EDE76E40;
  if (!qword_1EDE76E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96318);
    sub_1C119941C();
    sub_1C11996B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E40);
  }

  return result;
}

unint64_t sub_1C119941C()
{
  result = qword_1EDE76EF8;
  if (!qword_1EDE76EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96320);
    sub_1C11994A8();
    sub_1C11994FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EF8);
  }

  return result;
}

unint64_t sub_1C11994A8()
{
  result = qword_1EDE7D6E0;
  if (!qword_1EDE7D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6E0);
  }

  return result;
}

unint64_t sub_1C11994FC()
{
  result = qword_1EDE76EE8;
  if (!qword_1EDE76EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96328);
    sub_1C1199580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EE8);
  }

  return result;
}

unint64_t sub_1C1199580()
{
  result = qword_1EDE76EF0;
  if (!qword_1EDE76EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96330);
    sub_1C119960C();
    sub_1C1199660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EF0);
  }

  return result;
}

unint64_t sub_1C119960C()
{
  result = qword_1EDE7CA88;
  if (!qword_1EDE7CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CA88);
  }

  return result;
}

unint64_t sub_1C1199660()
{
  result = qword_1EDE82EE0;
  if (!qword_1EDE82EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82EE0);
  }

  return result;
}

unint64_t sub_1C11996B4()
{
  result = qword_1EDE7BC50;
  if (!qword_1EDE7BC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96338);
    sub_1C1199740();
    sub_1C1199794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC50);
  }

  return result;
}

unint64_t sub_1C1199740()
{
  result = qword_1EDE7D7D0[0];
  if (!qword_1EDE7D7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7D7D0);
  }

  return result;
}

unint64_t sub_1C1199794()
{
  result = qword_1EDE7CB28;
  if (!qword_1EDE7CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CB28);
  }

  return result;
}

unint64_t sub_1C11997E8()
{
  result = qword_1EDE7BBE8;
  if (!qword_1EDE7BBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96340);
    sub_1C1199874();
    sub_1C11999A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBE8);
  }

  return result;
}

unint64_t sub_1C1199874()
{
  result = qword_1EDE7BC40;
  if (!qword_1EDE7BC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96348);
    sub_1C1199900();
    sub_1C1199954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC40);
  }

  return result;
}

unint64_t sub_1C1199900()
{
  result = qword_1EDE7CB48;
  if (!qword_1EDE7CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CB48);
  }

  return result;
}

unint64_t sub_1C1199954()
{
  result = qword_1EDE7D6E8;
  if (!qword_1EDE7D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6E8);
  }

  return result;
}

unint64_t sub_1C11999A8()
{
  result = qword_1EDE7BC38;
  if (!qword_1EDE7BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96350);
    sub_1C1199A34();
    sub_1C1198D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC38);
  }

  return result;
}

unint64_t sub_1C1199A34()
{
  result = qword_1EDE7CA98;
  if (!qword_1EDE7CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CA98);
  }

  return result;
}

unint64_t sub_1C1199A88()
{
  result = qword_1EBE96358;
  if (!qword_1EBE96358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96360);
    sub_1C1199B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96358);
  }

  return result;
}

unint64_t sub_1C1199B14()
{
  result = qword_1EBE96368;
  if (!qword_1EBE96368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96368);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for OneUpTopBar() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  sub_1C0FF9034(*(v2 + 48), *(v2 + 56), *(v2 + 64));

  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C1199D40(uint64_t *a1)
{
  v3 = *(type metadata accessor for OneUpTopBar() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1C1194C9C(a1, v4);
}

uint64_t sub_1C1199DC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

unint64_t sub_1C1199E1C()
{
  result = qword_1EBE96380;
  if (!qword_1EBE96380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96388);
    sub_1C0FDB6D4(&qword_1EBE96390, &qword_1EBE96120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96380);
  }

  return result;
}

uint64_t sub_1C1199EE4(uint64_t a1, unsigned int a2)
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

void *sub_1C1199F50@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  v9 = sub_1C12637E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v25 = a1;

    if (!a1)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_1();
    (*(v10 + 8))(v12, v9);
    if (!v25)
    {
      goto LABEL_6;
    }
  }

  sub_1C1213CC4();

  v14 = v24[0];
  if (LOBYTE(v24[0]) != 3)
  {
    KeyPath = swift_getKeyPath();
    sub_1C12659A0();
    sub_1C1262C80();
    LOBYTE(v24[0]) = 0;
    *&v22[7] = v26;
    *&v22[23] = v27;
    *&v22[39] = v28;
    v16 = sub_1C1264590();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
    sub_1C1264630();
    sub_1C119A284(v8);
    v17 = sub_1C1264500();

    v18 = swift_getKeyPath();
    v19 = sub_1C1264470();
    v20 = swift_getKeyPath();
    *(&v23[3] + 1) = *v22;
    LOBYTE(v24[0]) = 0;
    LOBYTE(v23[0]) = v14;
    v23[1] = KeyPath;
    v23[2] = 0;
    LOBYTE(v23[3]) = 0;
    *(&v23[5] + 1) = *&v22[16];
    *(&v23[7] + 1) = *&v22[32];
    v23[9] = *&v22[47];
    v23[10] = v18;
    v23[11] = v17;
    LOBYTE(v23[12]) = v19;
    v23[13] = v20;
    v23[14] = 0;
    LOBYTE(v23[15]) = 0;
    nullsub_1(v23);
    memcpy(v24, v23, 0x79uLL);
    return memcpy(a3, v24, 0x79uLL);
  }

LABEL_6:
  sub_1C119A268(v24);
  return memcpy(a3, v24, 0x79uLL);
}

double sub_1C119A268(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1C119A284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C119A2EC()
{
  result = qword_1EDE770A0;
  if (!qword_1EDE770A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96398);
    sub_1C119A370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770A0);
  }

  return result;
}

unint64_t sub_1C119A370()
{
  result = qword_1EDE770A8;
  if (!qword_1EDE770A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963A0);
    sub_1C119A3FC();
    sub_1C109739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770A8);
  }

  return result;
}

unint64_t sub_1C119A3FC()
{
  result = qword_1EDE7BD68;
  if (!qword_1EDE7BD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963A8);
    sub_1C119A4B4();
    sub_1C0FDB6D4(&qword_1EDE7BA70, &qword_1EBE91190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD68);
  }

  return result;
}

unint64_t sub_1C119A4B4()
{
  result = qword_1EDE7BDF0;
  if (!qword_1EDE7BDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963B0);
    sub_1C119A56C();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDF0);
  }

  return result;
}

unint64_t sub_1C119A56C()
{
  result = qword_1EDE7BF68;
  if (!qword_1EDE7BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963B8);
    sub_1C119A5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF68);
  }

  return result;
}

unint64_t sub_1C119A5F8()
{
  result = qword_1EDE7E4A0[0];
  if (!qword_1EDE7E4A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7E4A0);
  }

  return result;
}

uint64_t sub_1C119A678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C12638E0();
  if (a3)
  {
    result = swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(a1, a2, 0);
    result = (*(v11 + 8))(v13, v10);
    a1 = v20[0];
    a2 = v20[1];
  }

  if (a1)
  {
    ObjectType = swift_getObjectType();
    v18 = (*(a2 + 256))(ObjectType, a2);
    result = swift_unknownObjectRelease();
    v19 = v18 ^ 1;
  }

  else
  {
    v19 = 1;
  }

  *a4 = v14;
  *(a4 + 8) = a5;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  *(a4 + 33) = v19 & 1;
  return result;
}

unint64_t sub_1C119A85C()
{
  result = qword_1EDE7BE18;
  if (!qword_1EDE7BE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963C0);
    sub_1C119A8E8();
    sub_1C0FF9130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE18);
  }

  return result;
}

unint64_t sub_1C119A8E8()
{
  result = qword_1EDE7B7E0;
  if (!qword_1EDE7B7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE963C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B7E0);
  }

  return result;
}

uint64_t sub_1C119A97C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0);
  sub_1C1136440();
  v3 = sub_1C1265D70();
  v5 = v4;

  MEMORY[0x1C68EF850](v3, v5);

  MEMORY[0x1C68EF850](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1C119AA3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE83508 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  v3 = __swift_project_value_buffer(v2, qword_1EDE82FE0);

  return sub_1C119ADB4(v3, a1);
}

void *sub_1C119AAC0()
{
  type metadata accessor for TracingEnablementChecker();
  swift_allocObject();
  result = sub_1C119AE9C();
  off_1EDE83420 = result;
  return result;
}

void sub_1C119AB00()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C1265E70();
  v2 = [v0 BOOLForKey_];

  byte_1EDE834F8 = v2;
}

uint64_t sub_1C119AB90()
{
  v0 = sub_1C1262720();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  __swift_allocate_value_buffer(v4, qword_1EDE82FE0);
  v5 = __swift_project_value_buffer(v4, qword_1EDE82FE0);
  if (qword_1EDE834F0 != -1)
  {
    swift_once();
  }

  if (byte_1EDE834F8)
  {
    goto LABEL_7;
  }

  if (qword_1EDE83418 != -1)
  {
    swift_once();
  }

  if (*(off_1EDE83420 + 16) == 1)
  {
LABEL_7:
    if (qword_1EBE8FD20 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v0, qword_1EBE963D0);
    (*(v1 + 16))(v3, v6, v0);
    sub_1C1262660();
    v7 = sub_1C1262680();
    return __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  }

  else
  {
    v9 = sub_1C1262680();

    return __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  }
}

uint64_t sub_1C119ADB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C119AE24()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE963D0);
  __swift_project_value_buffer(v0, qword_1EBE963D0);
  return sub_1C1262700();
}

uint64_t sub_1C119AE9C()
{
  v1 = v0;
  *(v0 + 16) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1C0FDAFC4();
  v3 = sub_1C12664C0();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v8[4] = sub_1C119B178;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C119B08C;
  v8[3] = &block_descriptor_15;
  v6 = _Block_copy(v8);

  swift_beginAccess();
  notify_register_dispatch("com.apple.swiftuitrace.state", (v2 + 16), v3, v6);
  swift_endAccess();
  _Block_release(v6);

  sub_1C119B0E0(*(v2 + 16));

  return v1;
}

uint64_t sub_1C119B018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_1C119B0E0(*(a3 + 16));
  }

  return result;
}

uint64_t sub_1C119B08C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1C119B0E0(int a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  result = notify_get_state(a1, v3);
  if (v3[0] == 1)
  {
    *(v1 + 16) = 1;
  }

  return result;
}

uint64_t PhotosObservableSocialGroup.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableSocialGroup.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableSocialGroup.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_2_15();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 112));
  return v1;
}

uint64_t PhotosObservableSocialGroup.item.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_20();
  swift_beginAccess();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_20();
  swift_getKeyPath();
  sub_1C119B6BC();

  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t PhotosObservableSocialGroup.item.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = *(*v1 + 80);
  swift_getKeyPath();
  sub_1C119B55C();

  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 112);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C119B49C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return PhotosObservableSocialGroup.item.setter(v3);
}

uint64_t sub_1C119B55C()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_0_59();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C119B5E4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 112);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(a1 + v5, a2);
  return swift_endAccess();
}

uint64_t sub_1C119B6BC()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_59();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t (*PhotosObservableSocialGroup.item.modify(void *a1))()
{
  a1[3] = v1;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5();
  swift_getKeyPath();
  sub_1C119B55C();

  OUTLINED_FUNCTION_10_2();
  *a1 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_59();
  swift_getWitnessTable();
  sub_1C1261F50();

  swift_beginAccess();
  return sub_1C119B8FC;
}

uint64_t sub_1C119B8FC()
{
  swift_endAccess();

  return sub_1C119B934();
}

uint64_t sub_1C119B934()
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t PhotosObservableSocialGroup.selectionIdentifier.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_30(v3, v9);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_7_35();
  v5(v4);
  v6 = OUTLINED_FUNCTION_2_39();
  v7(v6);
  return v1;
}

uint64_t PhotosObservableSocialGroup.id.getter()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  PhotosObservableSocialGroup.item.getter(&v8 - v5);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v3 + 8))(v6, v1);
}

uint64_t PhotosObservableSocialGroup.title.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_30(v3, v9);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_7_35();
  v5(v4);
  v6 = OUTLINED_FUNCTION_2_39();
  v7(v6);
  return v1;
}

uint64_t PhotosObservableSocialGroup.deinit()
{
  OUTLINED_FUNCTION_2_15();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 112));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosObservableSocialGroup.__deallocating_deinit()
{
  PhotosObservableSocialGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C119BDA0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1C119BDE8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PhotosObservableSocialGroup.item.modify(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C119BE44(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void static Gradient.rainbow.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C12BF7D0;
  *(v0 + 32) = sub_1C1265120();
  *(v0 + 40) = sub_1C12651B0();
  *(v0 + 48) = sub_1C12651D0();
  *(v0 + 56) = sub_1C1265180();
  *(v0 + 64) = sub_1C1265130();
  *(v0 + 72) = sub_1C12651C0();

  JUMPOUT(0x1C68EF140);
}

uint64_t PhotosMockCollectionTitleOverlayModel.__allocating_init(title:subtitle:subtitleSymbolName:position:topLeadingChromeWidth:topTrailingChromeWidth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v33 = a8;
  v34 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906C8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v30 - v16;
  v18 = sub_1C1262250();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v24 = v23 - v22;
  v32 = *a7;
  if (qword_1EBE8FD28 != -1)
  {
    OUTLINED_FUNCTION_11_29();
  }

  v25 = __swift_project_value_buffer(v18, qword_1EBE96468);
  (*(v20 + 16))(v24, v25, v18);
  v26 = a6;
  if (!a2)
  {
    sub_1C1262230();
    v26 = a6;
  }

  v31 = a10;
  if (a4 == 1)
  {
    sub_1C1262240();
    v26 = a6;
  }

  v30[3] = a11;
  if (v26 == 1)
  {
    v34 = sub_1C1262210();
  }

  v27 = sub_1C1262260();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v27);
  v36[3] = v18;
  v36[4] = MEMORY[0x1E69C43A8];
  __swift_allocate_boxed_opaque_existential_1(v36);
  sub_1C1262220();
  v35 = v32;
  type metadata accessor for PhotosMockCollectionTitleOverlayModel();
  v28 = swift_allocObject();
  PhotosMockCollectionTitleOverlayModel.init(titleModel:position:topLeadingChromeWidth:topTrailingChromeWidth:)(v36, &v35);
  (*(v20 + 8))(v24, v18);
  return v28;
}

uint64_t PhotosCollectionTitleOverlayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

void PhotosMockCollectionTitleOverlayModel.__allocating_init(titleModel:position:topLeadingChromeWidth:topTrailingChromeWidth:)()
{
  OUTLINED_FUNCTION_19_4();
  v1 = v0;
  v3 = v2;
  swift_allocObject();
  PhotosMockCollectionTitleOverlayModel.init(titleModel:position:topLeadingChromeWidth:topTrailingChromeWidth:)(v3, v1);
  OUTLINED_FUNCTION_18_4();
}

uint64_t PhotosMockCollectionTitleOverlayModel.init(titleModel:position:topLeadingChromeWidth:topTrailingChromeWidth:)(uint64_t a1, char *a2)
{
  v5 = sub_1C1262130();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v12 = *a2;
  v13 = v2 + OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__banner;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  sub_1C1261F60();
  sub_1C10D1A1C(a1, &v18, &qword_1EBE96490);
  if (v19)
  {
    sub_1C0FDBA58(&v18, &v20);
  }

  else
  {
    if (qword_1EBE8FD28 != -1)
    {
      OUTLINED_FUNCTION_11_29();
    }

    v14 = sub_1C1262250();
    v15 = __swift_project_value_buffer(v14, qword_1EBE96468);
    v21 = v14;
    v22 = MEMORY[0x1E69C43A8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v15, v14);
    if (v19)
    {
      sub_1C0FD1A5C(&v18, &qword_1EBE96490);
    }
  }

  sub_1C0FDBA58(&v20, v2 + 16);
  *(v2 + 56) = 0x3FF0000000000000;
  *(v2 + 64) = v12 & 1;
  *(v2 + 72) = xmmword_1C12BF7F0;
  sub_1C12620F0();
  sub_1C0FD1A5C(a1, &qword_1EBE96490);
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry, v11, v5);
  return v2;
}

uint64_t sub_1C119C65C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C119DE14();

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1C119C6D0(double a1)
{
  result = OUTLINED_FUNCTION_9_5();
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_9_1();
    *(v5 - 8) = a1;
    OUTLINED_FUNCTION_22_18();
  }

  return result;
}

uint64_t sub_1C119C76C(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v2 == *(v1 + 64))
  {
    *(v1 + 64) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_9_1();
    *(v5 - 8) = v2;
    OUTLINED_FUNCTION_22_18();
  }

  return result;
}

uint64_t sub_1C119C814(double a1)
{
  result = OUTLINED_FUNCTION_9_5();
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_9_1();
    *(v5 - 8) = a1;
    OUTLINED_FUNCTION_22_18();
  }

  return result;
}

uint64_t sub_1C119C8B0(double a1)
{
  result = OUTLINED_FUNCTION_9_5();
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_9_1();
    *(v5 - 8) = a1;
    OUTLINED_FUNCTION_22_18();
  }

  return result;
}

uint64_t sub_1C119C94C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1262130();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry;
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v10, v2 + v11, v4);
  sub_1C119DF58(&qword_1EBE964A0, MEMORY[0x1E69C4370]);
  v17 = a1;
  LOBYTE(a1) = sub_1C1265DE0();
  v13 = *(v6 + 8);
  v13(v10, v4);
  if (a1)
  {
    v12(v10, v17, v4);
    swift_beginAccess();
    (*(v6 + 40))(v2 + v11, v10, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v15 = v17;
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v15;
    sub_1C119DE14();
  }

  return (v13)(v17, v4);
}

uint64_t sub_1C119CB7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906C8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C1262250();
  __swift_allocate_value_buffer(v3, qword_1EBE96468);
  __swift_project_value_buffer(v3, qword_1EBE96468);
  v4 = sub_1C1262260();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  return sub_1C1262220();
}

uint64_t type metadata accessor for PhotosMockCollectionTitleOverlayModel()
{
  result = qword_1EBE964B0;
  if (!qword_1EBE964B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C119CD40@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4);
  OUTLINED_FUNCTION_0_1(v5, v6, v7, v8, v9, v10, v11, v12, v14, v1);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
  return sub_1C0FDB0A8(v1 + 16, a1);
}

uint64_t sub_1C119CDDC(uint64_t a1, uint64_t a2)
{
  sub_1C0FDB0A8(a2, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(a1 + 16);
  sub_1C0FDBA58(v4, a1 + 16);
  return swift_endAccess();
}

void sub_1C119CE68()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDEEC4();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C119CF88()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v3 = sub_1C119DF58(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 56);
}

uint64_t sub_1C119D018(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 56) = a2;
  return result;
}

void sub_1C119D06C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF5E8();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C119D138()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C119D1A8(&v2);
  *v0 = v2;
  return result;
}

uint64_t sub_1C119D1A8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4);
  OUTLINED_FUNCTION_0_1(v5, v6, v7, v8, v9, v10, v11, v12, v14, v1);
  sub_1C1261F30();

  result = OUTLINED_FUNCTION_7_4();
  *a1 = *(v1 + 64);
  return result;
}

uint64_t sub_1C119D240(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 64) = a2 & 1;
  return result;
}

void sub_1C119D298()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C119D364()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v3 = sub_1C119DF58(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 72);
}

uint64_t sub_1C119D3F4(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 72) = a2;
  return result;
}

void sub_1C119D448()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF860();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C119D514()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v3 = sub_1C119DF58(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 80);
}

uint64_t sub_1C119D5A4(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 80) = a2;
  return result;
}

void sub_1C119D5F8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10746C8();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C119D73C(uint64_t a1)
{
  v2 = sub_1C1262130();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1C119C94C(v5);
}

uint64_t sub_1C119D808@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v8 = v1;
  OUTLINED_FUNCTION_0_60();
  sub_1C119DF58(v3, v4);
  sub_1C1261F30();

  v5 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry;
  OUTLINED_FUNCTION_7_4();
  sub_1C1262130();
  OUTLINED_FUNCTION_3();
  return (*(v6 + 16))(a1, v8 + v5);
}

uint64_t sub_1C119D8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1262130();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void sub_1C119D9F8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C119D6C4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C119DB88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v6 = sub_1C119DF58(v4, v5);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__banner;
  OUTLINED_FUNCTION_7_4();
  return sub_1C10D1A1C(v2 + v14, a1, &qword_1EBE90488);
}

uint64_t sub_1C119DC3C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C119DE14();

  return sub_1C0FD1A5C(a1, &qword_1EBE90488);
}

uint64_t sub_1C119DCC0(uint64_t a1, uint64_t a2)
{
  sub_1C10D1A1C(a2, v5, &qword_1EBE90488);
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__banner;
  swift_beginAccess();
  sub_1C119E798(v5, a1 + v3);
  return swift_endAccess();
}

void sub_1C119DD48()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C119DAC4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C119DE14()
{
  OUTLINED_FUNCTION_0_60();
  sub_1C119DF58(v0, v1);
  return sub_1C1261F20();
}

uint64_t sub_1C119DF58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PhotosMockCollectionTitleOverlayModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry;
  sub_1C1262130();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__banner, &qword_1EBE90488);
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t PhotosMockCollectionTitleOverlayModel.__deallocating_deinit()
{
  PhotosMockCollectionTitleOverlayModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1C119E0D0()
{
  result = qword_1EBE964A8;
  if (!qword_1EBE964A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE964A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionTitleOverlayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C119E2DC()
{
  result = sub_1C1262130();
  if (v1 <= 0x3F)
  {
    result = sub_1C1261F70();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C119E798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90488);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_29()
{

  return swift_once();
}

void sub_1C119E864()
{
  swift_getWitnessTable();

  JUMPOUT(0x1C68EE920);
}

void sub_1C119E8D0()
{
  swift_getWitnessTable();

  JUMPOUT(0x1C68EE920);
}

uint64_t sub_1C119E93C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1C12632E0();
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C12630D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE964C0);
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v18 - v10;
  sub_1C12630C0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE964C8);
  v13 = sub_1C119EE2C(&qword_1EDE7BAD0, &qword_1EBE964C8);
  v14 = sub_1C119EDE4(&qword_1EDE7BFA0, MEMORY[0x1E697C150]);
  sub_1C12650B0();
  (*(v6 + 8))(v8, v5);
  sub_1C12632D0();
  v22 = v12;
  v23 = v5;
  v24 = v13;
  v25 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1C119EDE4(&qword_1EDE7BCF0, MEMORY[0x1E697C248]);
  v16 = v18;
  v15 = v19;
  sub_1C12649F0();
  (*(v20 + 8))(v4, v15);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_1C119EC64()
{
  v0 = sub_1C12632E0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C12632D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE964D0);
  sub_1C119EE2C(&qword_1EDE7BAC8, &unk_1EBE964D0);
  sub_1C119EDE4(&qword_1EDE7BCF0, MEMORY[0x1E697C248]);
  sub_1C12649F0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C119EDE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C119EE2C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C119EE80(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v13 = (v6 + 32);
    v14 = a2;
    do
    {
      if (a2 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v13;
      }

      v17 = *v12++;
      v16 = v17;
      v18 = *v5++;
      (*(*(v16 - 8) + 16))(&v11[v15], v18);
      v13 += 4;
      --v14;
    }

    while (v14);
  }

  return sub_1C1265B10();
}

uint64_t PhotosCollectionKeyAssetsView.init(model:overlayStyle:placeholderSymbolContainerWidthRatio:accessoryContent:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10)
{
  v16 = *a2;
  *&v23[0] = a6;
  *(&v23[0] + 1) = a7;
  v23[1] = a9;
  *&v23[2] = a10;
  v17 = type metadata accessor for PhotosCollectionKeyAssetsView();
  v18 = v17[18];
  *&v23[0] = swift_getKeyPath();
  sub_1C0FFCFE4(v23);
  memcpy((a8 + v18), v23, 0xD1uLL);
  v19 = *(a6 - 8);
  v20 = (*(v19 + 16))(a8, a1, a6);
  *(a8 + v17[15]) = v16;
  v21 = a8 + v17[16];
  *v21 = a3;
  *(v21 + 8) = a4 & 1;
  a5(v20);

  return (*(v19 + 8))(a1, a6);
}

uint64_t PhotosCollectionKeyAssetsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v4 = *(a1 + 24);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_1_3();
  v59 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v58 - v7;
  v76 = type metadata accessor for PhotosAssetView();
  v8 = sub_1C1263C30();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v69 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_3();
  v68 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v58 - v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v58 - v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE964E0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_3();
  v66 = v22;
  OUTLINED_FUNCTION_7();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v58 - v25;
  v27 = *(a1 + 32);
  v28 = *(a1 + 16);
  (*(v27 + 80))(v28, v27, v24);
  OUTLINED_FUNCTION_3_42(0, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE964E8);
  v29 = sub_1C0FF746C();
  sub_1C119FA90();
  v63 = v29;
  v30 = sub_1C10A0734();
  v32 = v31;
  v33 = *(a1 + 40);
  v34 = v28;
  v35 = v61;
  v74 = *(a1 + 48);
  sub_1C119F92C(v2, v34, v61, v27, v33, v74, v84);
  memcpy(v85, v84, 0x128uLL);
  v85[37] = v30;
  v85[38] = v32;
  v65 = v20;
  v36 = *(v20 + 36);
  v75 = v26;
  memcpy(&v26[v36], v85, 0x138uLL);
  memcpy(v86, v84, sizeof(v86));
  v87 = v30;
  v88 = v32;
  sub_1C10D1A1C(v85, v83, &qword_1EBE96510);
  sub_1C0FD1A5C(v86, &qword_1EBE96510);
  v37 = v73;
  OUTLINED_FUNCTION_3_42(1, v73);
  v38 = v62;
  OUTLINED_FUNCTION_3_42(2, v62);
  if (v35 == MEMORY[0x1E6981E70])
  {
    v46 = v64;
    OUTLINED_FUNCTION_3_42(3, v64);

    v43 = v67;
    v44 = v63;
    sub_1C1112E18();
    sub_1C0FF753C(v46);
  }

  else
  {

    v39 = v2 + *(a1 + 68);
    v40 = v58;
    v41 = v74;
    sub_1C0FDBA4C(v39, v35, v74);
    v42 = v59;
    sub_1C0FDBA4C(v40, v35, v41);
    v43 = v67;
    v44 = v63;
    sub_1C1112D68();
    v45 = *(v60 + 8);
    v45(v42, v35);
    v45(v40, v35);
    v46 = v64;
  }

  v47 = v66;
  sub_1C10D1A1C(v75, v66, &qword_1EBE964E0);
  v83[0] = v47;
  sub_1C0FF74D8(v37, v46);
  v83[1] = v46;
  v48 = v38;
  v49 = v38;
  v50 = v68;
  sub_1C0FF74D8(v49, v68);
  v83[2] = v50;
  v52 = v69;
  v51 = v70;
  v53 = v43;
  v54 = v43;
  v55 = v71;
  (*(v70 + 16))(v69, v54, v71);
  v83[3] = v52;
  v84[0] = v65;
  v84[1] = v76;
  v84[2] = v76;
  v84[3] = v55;
  v79 = sub_1C119FB40();
  v80 = v44;
  v81 = v44;
  v77 = v74;
  v78 = v44;
  WitnessTable = swift_getWitnessTable();
  sub_1C119EE80(v83, 4, v84);
  v56 = *(v51 + 8);
  v56(v53, v55);
  sub_1C0FF753C(v48);
  sub_1C0FF753C(v73);
  sub_1C0FD1A5C(v75, &qword_1EBE964E0);
  v56(v52, v55);
  sub_1C0FF753C(v50);
  sub_1C0FF753C(v46);
  return sub_1C0FD1A5C(v47, &qword_1EBE964E0);
}

double sub_1C119F764@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v7 = 0;
  if (sub_1C1266170() > a1)
  {
    sub_1C12661D0();
    v7 = v17;
  }

  v8 = v3 + *(a2 + 64);
  v9 = a1 == 0;
  if (*(v8 + 8))
  {
    v10 = 0x3FC3333333333333;
  }

  else
  {
    v10 = *v8;
  }

  swift_unknownObjectRetain();
  v11 = sub_1C1200D04();
  [v11 setNetworkAccessAllowed_];
  swift_unknownObjectRelease();
  *(a3 + 152) = swift_getKeyPath();
  *(a3 + 160) = 0;
  v12 = type metadata accessor for PhotosAssetView();
  v13 = v12[12];
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v14 = a3 + v12[13];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a3 + v12[14];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *a3 = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 68) = 256;
  *(a3 + 52) = 0;
  *(a3 + 60) = 0;
  *(a3 + 72) = v10;
  *(a3 + 80) = 0;
  *(a3 + 88) = v7;
  *(a3 + 96) = 0;
  *(a3 + 104) = v11;
  result = 0.0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 2;
  return result;
}

void *sub_1C119F92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  v14 = *(a1 + *(type metadata accessor for PhotosCollectionKeyAssetsView() + 60));
  if (v14 == 2)
  {
    sub_1C11A0FE4(__src);
  }

  else
  {
    v15 = sub_1C1265960();
    v17 = v16;
    sub_1C119FC44(a1, v14 & 1, a2, a3, a4, a5, a6, __src);
    memcpy(__dst, __src, 0x111uLL);
    memcpy(v20, __src, 0x111uLL);
    sub_1C10D1A1C(__dst, v21, &qword_1EBE96530);
    sub_1C0FD1A5C(v20, &qword_1EBE96530);
    memcpy(&v21[2], __dst, 0x111uLL);
    v21[0] = v15;
    v21[1] = v17;
    nullsub_1(v21);
    memcpy(__src, v21, 0x121uLL);
  }

  return memcpy(a7, __src, 0x121uLL);
}

unint64_t sub_1C119FA90()
{
  result = qword_1EBE964F8;
  if (!qword_1EBE964F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE964E8);
    sub_1C0FDB6D4(&qword_1EDE76BB0, &qword_1EBE96508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE964F8);
  }

  return result;
}

unint64_t sub_1C119FB40()
{
  result = qword_1EBE96518;
  if (!qword_1EBE96518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE964E0);
    sub_1C0FF746C();
    sub_1C0FDB6D4(&unk_1EBE96520, &qword_1EBE96510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96518);
  }

  return result;
}

uint64_t sub_1C119FC44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(a5 + 72))(__src, a3, a5);
  v15 = *__src;
  if (*__src)
  {
    swift_unknownObjectRelease();
  }

  if (qword_1EDE812F8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(&type metadata for PhotosLegibilityGradient, qword_1EBE93F88);
  v37 = *(v16 + 16);
  v38 = *v16;
  v17 = *(v16 + 32);
  v36 = *(v16 + 40);
  v18 = sub_1C1263AB0();
  v61 = 1;
  v35 = a4;
  v19 = a4;
  v20 = a6;
  v21 = a6;
  v22 = a7;
  sub_1C119FFFC(a1, a2 & 1, a3, v19, a5, v21, a7, __src);
  memcpy(__dst, __src, 0x79uLL);
  memcpy(v66, __src, 0x79uLL);
  sub_1C10D1A1C(__dst, v46, &qword_1EBE96538);
  sub_1C0FD1A5C(v66, &qword_1EBE96538);
  memcpy(&v60[7], __dst, 0x79uLL);
  v23 = v61;
  if (v15)
  {
    v24 = 1.0;
    v25 = sub_1C1265190();
  }

  else
  {
    if (qword_1EDE7B868 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDE7B870;

    v24 = 0.0;
  }

  KeyPath = swift_getKeyPath();
  *__src = a3;
  *&__src[8] = v35;
  *&__src[16] = a5;
  *&__src[24] = v20;
  *&__src[32] = v22;
  v26 = type metadata accessor for PhotosCollectionKeyAssetsView();
  sub_1C11A06C0(v26, v41);
  sub_1C100C7D0(v41);
  v27 = v42;
  v28 = v43;
  v30 = v44;
  v29 = v45;
  v31 = sub_1C1264470();
  v62 = 0;
  v46[0] = v18;
  v46[1] = 0;
  LOBYTE(v46[2]) = v23;
  memcpy(&v46[2] + 1, v60, 0x80uLL);
  *(&v46[18] + 1) = *v40;
  HIDWORD(v46[18]) = *&v40[3];
  v46[19] = v25;
  v46[20] = KeyPath;
  LOBYTE(v46[21]) = 0;
  *(&v46[21] + 1) = *v64;
  HIDWORD(v46[21]) = *&v64[3];
  LOBYTE(v46[22]) = v31;
  *(&v46[22] + 1) = *v63;
  HIDWORD(v46[22]) = *&v63[3];
  v46[23] = v27;
  v46[24] = v28;
  v46[25] = v30;
  v46[26] = v29;
  LOBYTE(v46[27]) = 0;
  *a8 = v38;
  *(a8 + 16) = v37;
  *(a8 + 32) = v17;
  *(a8 + 40) = v36;
  *(a8 + 48) = v24;
  memcpy((a8 + 56), v46, 0xD9uLL);
  *__src = v18;
  *&__src[8] = 0;
  __src[16] = v23;
  memcpy(&__src[17], v60, 0x80uLL);
  *v48 = *v40;
  *&v48[3] = *&v40[3];
  v49 = v25;
  v50 = KeyPath;
  v51 = 0;
  *v52 = *v64;
  *&v52[3] = *&v64[3];
  v53 = v31;
  *v54 = *v63;
  *&v54[3] = *&v63[3];
  v55 = v27;
  v56 = v28;
  v57 = v30;
  v58 = v29;
  v59 = 0;
  sub_1C10D1A1C(v46, v39, &unk_1EBE96540);
  return sub_1C0FD1A5C(__src, &unk_1EBE96540);
}

uint64_t sub_1C119FFFC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v88 = a6;
  v89 = a7;
  v87 = a4;
  v96 = a8;
  v97 = sub_1C1264680();
  v12 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v86 - v16;
  v18 = sub_1C1264700();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a5 + 40);
  v92 = a1;
  v93 = a3;
  v94 = a5;
  v24 = v23(a3, a5, v20);
  v26 = MEMORY[0x1E6980EA8];
  if (v25)
  {
    v102 = v24;
    v103 = v25;
    sub_1C0FDB9AC();
    v27 = sub_1C12648F0();
    v100 = v28;
    v101 = v27;
    LODWORD(v95) = a2;
    v30 = v29;
    v99 = v31;
    (*(v19 + 104))(v22, *MEMORY[0x1E6980EF0], v18);
    v32 = *MEMORY[0x1E6980E20];
    v33 = sub_1C1264590();
    (*(*(v33 - 8) + 104))(v17, v32, v33);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v33);
    sub_1C12645B0();
    sub_1C1264640();
    sub_1C0FD1A5C(v17, &qword_1EBE96550);
    (*(v19 + 8))(v22, v18);
    v34 = *v26;
    v35 = v12;
    v91 = v12;
    v36 = *(v12 + 104);
    v37 = v97;
    v36(v14, v34, v97);
    sub_1C12646C0();

    (*(v35 + 8))(v14, v37);
    LOBYTE(v35) = v30;
    v38 = v101;
    v90 = v14;
    v39 = v100;
    v40 = sub_1C1264870();
    v42 = v41;
    LOBYTE(v33) = v43;
    v45 = v44;

    sub_1C0FDB8E8(v38, v39, v35 & 1);

    KeyPath = swift_getKeyPath();
    v47 = v33 & 1;
    v48 = v40;
    v49 = v42;
    v100 = v47;
    sub_1C0FDB850(v40, v42, v47);
    v98 = v45;

    v101 = KeyPath;
    LOBYTE(KeyPath) = v95;

    v99 = 2;
    v50 = v37;
    v52 = v90;
    v51 = v91;
    if ((KeyPath & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v100 = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v50 = v97;
    v51 = v12;
    v52 = v14;
    if ((a2 & 1) == 0)
    {
LABEL_11:
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      goto LABEL_12;
    }
  }

  v53 = (*(v94 + 48))(v93);
  if (!v54)
  {
    goto LABEL_11;
  }

  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {

    goto LABEL_11;
  }

  v102 = v53;
  v103 = v54;
  sub_1C0FDB9AC();
  v92 = sub_1C12648F0();
  v57 = v56;
  v59 = v58;
  v102 = v93;
  v103 = v87;
  v104 = v94;
  v105 = v88;
  v106 = v89;
  type metadata accessor for PhotosCollectionKeyAssetsView();
  sub_1C12646A0();
  (*(v51 + 104))(v52, *MEMORY[0x1E6980EA8], v50);
  sub_1C12646C0();

  (*(v51 + 8))(v52, v50);
  v60 = v92;
  v61 = sub_1C1264870();
  v63 = v62;
  LODWORD(v94) = v64;
  v66 = v65;

  sub_1C0FDB8E8(v60, v57, v59 & 1);

  v67 = swift_getKeyPath();
  v68 = v61;
  v69 = v61;
  v70 = v63;
  v71 = v94 & 1;
  sub_1C0FDB850(v69, v63, v94 & 1);
  v72 = v66;

  v73 = v67;

  v74 = 1;
LABEL_12:
  LOBYTE(v102) = 1;
  v97 = v49;
  v75 = v100;
  sub_1C100D6EC(v48, v49, v100, v98);
  sub_1C100D6EC(v68, v70, v71, v72);
  v95 = v48;
  v76 = v49;
  v77 = v75;
  v79 = v98;
  v78 = v99;
  sub_1C100D73C(v48, v76, v77, v98);
  sub_1C100D73C(v68, v70, v71, v72);
  v80 = v102;
  v81 = v96;
  *v96 = 0;
  *(v81 + 8) = v80;
  v82 = v97;
  v81[2] = v48;
  v81[3] = v82;
  v83 = v100;
  v84 = v101;
  v81[4] = v100;
  v81[5] = v79;
  v81[6] = v84;
  v81[7] = v78;
  *(v81 + 64) = 0;
  v81[9] = v68;
  v81[10] = v70;
  v81[11] = v71;
  v81[12] = v72;
  v81[13] = v73;
  v81[14] = v74;
  *(v81 + 120) = 0;
  sub_1C100D73C(v68, v70, v71, v72);
  return sub_1C100D73C(v95, v97, v83, v79);
}

uint64_t sub_1C11A06C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 72);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1C11A08E0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C11A0EB8(319, &qword_1EDE78E28, &type metadata for PhotosCollectionKeyAssetsViewOverlayStyle, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C11A0EB8(319, &qword_1EDE7B4C0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1C11A0EB8(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C11A0A20(unint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(*(v5 - 8) + 84);
  }

  v10 = *(*(v5 - 8) + 64);
  v11 = *(v7 + 80);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v4 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_29:
    if (v6 == v12)
    {
      v8 = *(*(v5 - 8) + 84);
      v4 = v5;
    }

    else
    {
      result = (((v10 + result) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11;
      if (v8 != v12)
      {
        v21 = *(((v13 + result) & 0xFFFFFFFFFFFFFFF8) + 208);
        if (v21 > 1)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }

    return __swift_getEnumTagSinglePayload(result, v8, v4);
  }

  v14 = ((v13 + ((v11 + (v10 & 0xFFFFFFFFFFFFFFF8) + 17) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 209;
  v15 = (a2 - v12 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    LODWORD(v17) = 4;
  }

  else
  {
    LODWORD(v17) = 2;
  }

  if (v16 < 0x100)
  {
    LODWORD(v17) = 1;
  }

  if (v16 >= 2)
  {
    v17 = v17;
  }

  else
  {
    v17 = 0;
  }

  switch(v17)
  {
    case 1:
      v18 = *(result + v14);
      if (!*(result + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 2:
      v18 = *(result + v14);
      if (!*(result + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v18 = *(result + v14);
      if (!v18)
      {
        goto LABEL_29;
      }

LABEL_25:
      v19 = (v18 - 1) << (8 * (((v13 + ((v11 + (v10 & 0xF8) + 17) & ~v11)) & 0xF8) - 47));
      if (v14 <= 3)
      {
        v20 = *result;
      }

      else
      {
        v19 = 0;
        v20 = *result;
      }

      result = v12 + (v20 | v19) + 1;
      break;
    default:
      goto LABEL_29;
  }

  return result;
}

void sub_1C11A0BFC(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a1;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(*(v7 - 8) + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  v12 = *(*(v7 - 8) + 64);
  v13 = *(v9 + 80);
  v14 = *(*(v6 - 8) + 64) + 7;
  v15 = ((v14 + ((v13 + (v12 & 0xFFFFFFFFFFFFFFF8) + 17) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v11 >= a3)
  {
    v19 = 0;
  }

  else
  {
    v16 = (a3 - v11 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v11 >= a2)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v8 == v11)
        {
          v10 = v8;
          v6 = v7;
        }

        else
        {
          a1 = ((((a1 + v12) & 0xFFFFFFFFFFFFFFF8) + v13 + 17) & ~v13);
          if (v10 != v11)
          {
            v22 = (a1 + v14) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFE)
            {
              *(v22 + 200) = 0;
              *(v22 + 184) = 0u;
              *(v22 + 168) = 0u;
              *(v22 + 152) = 0u;
              *(v22 + 136) = 0u;
              *(v22 + 120) = 0u;
              *(v22 + 104) = 0u;
              *(v22 + 88) = 0u;
              *(v22 + 72) = 0u;
              *(v22 + 56) = 0u;
              *(v22 + 40) = 0u;
              *(v22 + 24) = 0u;
              *(v22 + 8) = 0u;
              *(v22 + 208) = 0;
              *v22 = (a2 - 255);
            }

            else
            {
              *(v22 + 208) = -a2;
            }

            return;
          }
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v10, v6);
        break;
    }
  }

  else
  {
    v20 = ~v11 + a2;
    bzero(a1, ((v14 + ((v13 + (v12 & 0xFFFFFFFFFFFFFFF8) + 17) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 209);
    if (v15 <= 3)
    {
      v21 = (v20 >> 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    if (v15 > 3)
    {
      *v5 = v20;
    }

    else
    {
      *v5 = v20;
    }

    switch(v19)
    {
      case 1:
        *(v5 + v15) = v21;
        break;
      case 2:
        *(v5 + v15) = v21;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v5 + v15) = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1C11A0EB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for PhotosCollectionKeyAssetsViewOverlayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhotosObservableBasicItem.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableBasicItem.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableBasicItem.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_2_15();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 96));
  return v1;
}

uint64_t sub_1C11A10C0(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_14_5();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_2();
  sub_1C11A1208(v8);
  v9 = *(v6 + 8);
  v9(v1, v4);
  OUTLINED_FUNCTION_20();
  swift_getKeyPath();
  sub_1C11A1940();

  return (v9)(a1, v4);
}

uint64_t sub_1C11A1208@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v5 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C11A129C(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  (*(*(*(v5 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1C11A135C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C11A10C0(v3);
}

uint64_t sub_1C11A141C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  swift_getKeyPath();
  sub_1C11A18A4();

  return sub_1C11A1208(a1);
}

uint64_t sub_1C11A149C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C11A129C(v3);
}

void (*sub_1C11A1568(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_2_15();
  swift_getKeyPath();
  sub_1C11A18A4();

  OUTLINED_FUNCTION_10_2();
  *v3 = v1;
  swift_getKeyPath();
  type metadata accessor for PhotosObservableBasicItem();
  OUTLINED_FUNCTION_0_62();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[5] = sub_1C118D93C();
  return sub_1C11A169C;
}

void sub_1C11A169C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  sub_1C11A16F0();

  free(v1);
}

uint64_t sub_1C11A16F0()
{
  swift_getKeyPath();
  type metadata accessor for PhotosObservableBasicItem();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t sub_1C11A17D0()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_14_5();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_2();
  sub_1C11A141C(v6);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C11A18A4()
{
  OUTLINED_FUNCTION_0_62();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C11A1940()
{
  OUTLINED_FUNCTION_0_62();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableBasicItem.deinit()
{
  OUTLINED_FUNCTION_2_15();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 96));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 104);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosObservableBasicItem.__deallocating_deinit()
{
  PhotosObservableBasicItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C11A1B64(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C11A1568(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C11A1BC0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void *PhotosReliveCollectionTitleWithSubtitleView.init(title:subtitle:isLargeCell:style:trailingPaddingEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v15 = *a6;
  *(a8 + 40) = swift_getKeyPath();
  *(a8 + 48) = 0;
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  result = memcpy((a8 + 56), __src, 0xD1uLL);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = v15;
  *(a8 + 34) = a7;
  return result;
}

uint64_t PhotosReliveCollectionTitleWithSubtitleView.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t PhotosReliveCollectionTitleWithSubtitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(v14, v1, 0x109uLL);
  *a1 = sub_1C12638D0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96558);
  sub_1C11A1F18(v14, (a1 + *(v3 + 44)));
  v4 = sub_1C11A2DD4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C1264470();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96560);
  v13 = a1 + *(result + 36);
  *v13 = v11;
  *(v13 + 8) = v4;
  *(v13 + 16) = v6;
  *(v13 + 24) = v8;
  *(v13 + 32) = v10;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_1C11A1F18@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96588);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v23 = &v21 - v11;
  v12 = sub_1C1263AB0();
  memcpy(v26, a1, 0x109uLL);
  v13 = sub_1C11A2308();
  v28 = 0;
  sub_1C11A2474(a1, v24);
  memcpy(v29, v24, sizeof(v29));
  memcpy(__dst, v24, 0x78uLL);
  sub_1C102EFA0(v29, &v25, &qword_1EBE96590);
  sub_1C0F9E21C(__dst, &qword_1EBE96590);
  memcpy(&v27[7], v29, 0x78uLL);
  v24[0] = v12;
  *&v24[1] = v13;
  LOBYTE(v24[2]) = v28;
  memcpy(&v24[2] + 1, v27, 0x7FuLL);
  v14 = *MEMORY[0x1E697E6D0];
  v15 = sub_1C1263130();
  (*(*(v15 - 8) + 104))(v5, v14, v15);
  sub_1C1190AD4();
  result = sub_1C1265DE0();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96598);
    sub_1C0FDB6D4(&qword_1EBE965A0, &qword_1EBE96598);
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    v17 = v23;
    sub_1C1264BC0();
    sub_1C0F9E21C(v5, &qword_1EBE92FE0);
    memcpy(v26, v24, 0x90uLL);
    sub_1C0F9E21C(v26, &qword_1EBE96598);
    v18 = *(v7 + 16);
    v18(v9, v17, v6);
    v18(a2, v9, v6);
    v19 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE965A8) + 48)];
    *v19 = 0;
    v19[8] = 1;
    v20 = *(v7 + 8);
    v20(v17, v6);
    return (v20)(v9, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1C11A2308()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 3.0;
  if (*(v0 + 33) == 1)
  {
    v6 = *(v0 + 40);
    if (*(v0 + 48) == 1)
    {
      v7 = *(v0 + 40);
    }

    else
    {

      sub_1C1266420();
      v8 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FA03F4(v6, 0);
      (*(v2 + 8))(v4, v1);
      v7 = v9[15];
    }

    result = 3.0;
    if (!v7)
    {
      return 7.0;
    }
  }

  return result;
}

void *sub_1C11A2474@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    v4 = result;
    *__dst = *result;
    *&__dst[8] = v3;
    sub_1C0FDB9AC();

    v5 = sub_1C12648F0();
    v50 = v6;
    v51 = v5;
    v8 = v7;
    v10 = v9;
    KeyPath = swift_getKeyPath();
    memcpy(__dst, v4, sizeof(__dst));
    v47 = sub_1C11A27EC();
    v46 = swift_getKeyPath();
    v44 = v10 & 1;
    LOBYTE(v52) = v10 & 1;
    v11 = swift_getKeyPath();
    __dst[0] = 1;
    v45 = v11;
    v12 = v4[3];
    v48 = v8;
    if (v12)
    {
      *__dst = v4[2];
      *&__dst[8] = v12;
      v52 = sub_1C12667A0();
      v53 = v13;
      v14 = sub_1C12648F0();
      v16 = v15;
      v18 = v17;
      memcpy(__dst, v4, sizeof(__dst));
      sub_1C11A2B24();
      v19 = sub_1C1264870();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = v16;
      v8 = v48;
      sub_1C0FDB8E8(v14, v26, v18 & 1);

      v27 = v19;
      v28 = v21;
      v43 = v23 & 1;
      sub_1C0FDB850(v19, v21, v23 & 1);
      v29 = v25;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v43 = 0;
      v29 = 0;
    }

    v52 = v51;
    v53 = v8;
    LOBYTE(v54) = v44;
    *(&v54 + 1) = v65[0];
    HIDWORD(v54) = *(v65 + 3);
    v55 = v50;
    v56 = KeyPath;
    LOBYTE(v57) = 0;
    *(&v57 + 1) = *v64;
    HIDWORD(v57) = *&v64[3];
    v58 = v46;
    v59 = v47;
    v37 = v45;
    v60 = v45;
    v61 = 0;
    v62 = 1;
    v41 = v57;
    v42 = v54;
    sub_1C102EFA0(&v52, __dst, &qword_1EBE965B0);
    sub_1C0FDB860(v27, v28, v43, v29);
    sub_1C0FDB8A4(v27, v28, v43, v29);
    sub_1C0FDB8A4(v27, v28, v43, v29);
    *__dst = v51;
    *&__dst[8] = v48;
    __dst[16] = v44;
    *&__dst[17] = v65[0];
    *&__dst[20] = *(v65 + 3);
    *&__dst[24] = v50;
    *&__dst[32] = KeyPath;
    __dst[40] = 0;
    *&__dst[41] = *v64;
    v38 = 1;
    v3 = v46;
    *&__dst[44] = *&v64[3];
    v36 = v47;
    *&__dst[48] = v46;
    *&__dst[56] = v47;
    *&__dst[64] = v45;
    *&__dst[72] = 0;
    __dst[80] = 1;
    v31 = v48;
    result = sub_1C0F9E21C(__dst, &qword_1EBE965B0);
    v35 = v41;
    v32 = v42;
    v39 = v43;
    v40 = v29;
    v34 = KeyPath;
    v33 = v50;
    v30 = v51;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v27 = 0;
    v28 = 0;
    v39 = 0;
    v40 = 0;
  }

  *a2 = v30;
  a2[1] = v31;
  a2[2] = v32;
  a2[3] = v33;
  a2[4] = v34;
  a2[5] = v35;
  a2[6] = v3;
  a2[7] = v36;
  a2[8] = v37;
  a2[9] = 0;
  a2[10] = v38;
  a2[11] = v27;
  a2[12] = v28;
  a2[13] = v39;
  a2[14] = v40;
  return result;
}