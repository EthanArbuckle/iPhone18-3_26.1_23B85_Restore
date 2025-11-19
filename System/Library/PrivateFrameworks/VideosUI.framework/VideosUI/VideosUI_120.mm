uint64_t sub_1E4028828()
{
  v1 = OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___isHomeSharingVideo;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___isHomeSharingVideo);
  if (v2 == 2)
  {
    LOBYTE(v2) = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) vui_isHomeSharingMediaItem];
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t (*sub_1E4028888(void *a1))(uint64_t result)
{
  OUTLINED_FUNCTION_69_1(a1);
  *(v1 + 8) = sub_1E4028828() & 1;
  return sub_1E40288D0;
}

void *sub_1E40288E8()
{
  v1 = OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___purchaseHistoryID;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___purchaseHistoryID);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem);
    v5 = sub_1E4205ED4();
    v6 = [v4 valueForProperty_];

    if (v6)
    {
      sub_1E4207264();
      v7 = swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    OUTLINED_FUNCTION_0_119(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v22, *(&v22 + 1), v23);
    if (v15)
    {
      sub_1E376948C();
      if (OUTLINED_FUNCTION_40_6())
      {
        v3 = v21;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      sub_1E325F6F0(v24, &unk_1ECF296E0);
      v3 = 0;
    }

    v16 = *(v0 + v1);
    *(v0 + v1) = v3;
    v17 = v3;
    sub_1E329CC84(v16);
  }

  sub_1E34AF5F4(v2);
  return v3;
}

void sub_1E4028A18(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___purchaseHistoryID);
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___purchaseHistoryID) = a1;
  sub_1E329CC84(v2);
}

uint64_t sub_1E4028A30(void **a1)
{
  a1[1] = v1;
  *a1 = sub_1E40288E8();
  return OUTLINED_FUNCTION_116();
}

void sub_1E4028A74(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___purchaseHistoryID);
  *(v3 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___purchaseHistoryID) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1E329CC84(v4);
  }

  else
  {

    sub_1E329CC84(v4);
  }
}

uint64_t sub_1E4028AF8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E4028B38(a1);
  return v2;
}

uint64_t sub_1E4028B38(uint64_t a1)
{
  *(v1 + 16) = xmmword_1E4297170;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 2;
  *(v1 + 88) = xmmword_1E4297170;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v3 = OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___addedDate;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___releaseDate, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___genre) = xmmword_1E4297170;
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___isHomeSharingVideo) = 2;
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___purchaseHistoryID) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) = a1;
  return v1;
}

uint64_t *sub_1E4028C28()
{
  sub_1E37E9E48(v0[2], v0[3]);

  sub_1E37E9E48(v0[6], v0[7]);

  sub_1E37E9E48(v0[11], v0[12]);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___addedDate, &qword_1ECF2CDE0);
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___releaseDate, &qword_1ECF2CDE0);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___genre), *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___genre + 8));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___purchaseHistoryID));

  return v0;
}

uint64_t sub_1E4028CEC()
{
  sub_1E4028C28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E4028ED0(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 304))();
  return sub_1E37C55D4;
}

double sub_1E4028F94@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_2();
  (*(v2 + 384))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_1E4029074(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 208))();
  return sub_1E37C4BF8;
}

unint64_t sub_1E40291B8(uint64_t a1)
{
  result = sub_1E40291E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E40291E0()
{
  result = qword_1EE26C6E0;
  if (!qword_1EE26C6E0)
  {
    type metadata accessor for LibMPBaseMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE26C6E0);
  }

  return result;
}

uint64_t type metadata accessor for LibMPBaseMediaEntity()
{
  result = qword_1EE29D6A0;
  if (!qword_1EE29D6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4029284(uint64_t a1)
{
  OUTLINED_FUNCTION_116();
  WitnessTable = swift_getWitnessTable();

  return sub_1E3B8DF5C(a1, WitnessTable);
}

void sub_1E40292DC()
{
  sub_1E38B0440();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1E40293BC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for AppEnvironment();
  sub_1E39DC8E8();
  v6 = sub_1E4201754();
  v8 = v7;
  v9 = *(*a1 + 392);

  v11 = v9(v10);

  if (v11)
  {
    type metadata accessor for OneupLockupLayout();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
    }
  }

  else
  {
    v12 = 0;
  }

  *a3 = a1;
  result = memcpy(a3 + 1, a2, 0xC3uLL);
  a3[26] = v12;
  a3[27] = v6;
  a3[28] = v8;
  return result;
}

uint64_t sub_1E40294B8()
{
  sub_1E40294F0();

  return sub_1E4029600(v0);
}

uint64_t sub_1E40294F0()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(*v1 + 216);

    v4 = v2(v3);

    result = sub_1E3A24FDC(v4);
    if ((result & 1) == 0)
    {
      result = sub_1E3A25254(v4);
      if ((result & 1) == 0)
      {
        result = sub_1E373F630();
        if ((result & 1) == 0)
        {
          return sub_1E373F630();
        }
      }
    }
  }

  else
  {
    type metadata accessor for AppEnvironment();
    sub_1E39DC8E8();
    result = OUTLINED_FUNCTION_6_46();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4029600(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E9B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v12 - v4);
  *v5 = sub_1E4203DA4();
  v5[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E9C0);
  v8 = sub_1E4029930(v1, v5 + *(v7 + 44), a1);
  v9 = (*(**v1 + 392))(v8);
  if (!v9 || (v10 = (*(*v9 + 744))(v9), , !v10))
  {
    v10 = [objc_opt_self() darkGrayColor];
  }

  sub_1E40298CC();
  sub_1E39B87A4(v10);

  return sub_1E325F6F0(v5, &qword_1ECF3E9B0);
}

uint64_t sub_1E4029804(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E4029844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E40298CC()
{
  result = qword_1ECF3E9B8;
  if (!qword_1ECF3E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E9B8);
  }

  return result;
}

uint64_t sub_1E4029930@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v134 = a2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E9C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v130 = &v116 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E9D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v116 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E9D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v116 - v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E9E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v129 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v124 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v128 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E9E8);
  OUTLINED_FUNCTION_0_10();
  v121 = v19;
  v122 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v116 - v21;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E9F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v127 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  v119 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v135 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E9F8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  OUTLINED_FUNCTION_2_5();
  v132 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v116 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  MEMORY[0x1EEE9AC00](v34 - 8);
  OUTLINED_FUNCTION_2_5();
  v131 = v35;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v116 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25_3();
  v136 = a1;
  v137 = v40;
  v41 = *a1;
  v42 = *(**a1 + 488);
  v43 = v42();
  if (v43)
  {
    v44 = sub_1E373E010(39, v43);

    if (v44)
    {
      type metadata accessor for ImageViewModel();
      v45 = swift_dynamicCastClass();
      if (v45)
      {
        v46 = v45;
        memcpy(__dst, v136 + 1, 0x5BuLL);

        v47 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v46, __dst, 0, v47 & 1, 0, 0, v38);

        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
        v49 = v38;
        v50 = 0;
        goto LABEL_7;
      }
    }
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  v49 = v38;
  v50 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v49, v50, 1, v48);
  v51 = sub_1E329E454(v38, v137, &qword_1ECF29938);
  v52 = (v42)(v51);
  if (v52 && (v53 = sub_1E373E010(23, v52), , v53) || (v54 = v42()) != 0 && (v55 = sub_1E373E010(15, v54), , v55))
  {
    v117 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1E4299720;
    *(v56 + 32) = sub_1E42036C4();
    *(v56 + 40) = sub_1E42036E4();
    MEMORY[0x1E690E590](v56);
    sub_1E4203F54();
    sub_1E4203F34();
    sub_1E4201064();
    v141[0] = v139[0];
    v141[1] = v139[1];
    *&v141[2] = v140;
    sub_1E4202704();
    sub_1E4203D94();
    v57 = swift_allocObject();
    v58 = v136;
    memcpy((v57 + 16), v136, 0xE8uLL);
    sub_1E402A3E4(v58, v138);
    sub_1E3BCF590();
    sub_1E42032A4();

    sub_1E3E44DE8(v139);
    sub_1E4203D94();
    OUTLINED_FUNCTION_3_248();
    v59 = v119;
    (*(v121 + 32))(v119, v22, v122);
    memcpy((v59 + *(v120 + 36)), v141, 0x70uLL);
    v60 = sub_1E329E454(v59, v135, &qword_1ECF3E9F0);
    v61 = v58[26];
    if (v61)
    {
      v61 = (*(*v61 + 1176))(v60);
      v63 = v62;
    }

    else
    {
      v63 = 1;
    }

    v65 = v117;
    *v65 = sub_1E4201D44();
    *(v65 + 8) = v61;
    *(v65 + 16) = v63 & 1;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA08);
    sub_1E402A41C(v136, v65 + *(v66 + 44), a3);
    sub_1E4203D94();
    OUTLINED_FUNCTION_3_248();
    v67 = v126;
    sub_1E329E454(v65, v126, &qword_1ECF3E9D0);
    v68 = memcpy((v67 + *(v123 + 36)), v138, 0x70uLL);
    v69 = (*(*v41 + 392))(v68);
    v118 = v33;
    if (v69 && ((*(*v69 + 176))(v142), v70 = v142[0], v71 = v142[1], v72 = v142[2], v73 = v142[3], , (v143 & 1) == 0))
    {
      v74.n128_u64[0] = v70;
      v75.n128_u64[0] = v71;
      v76.n128_u64[0] = v72;
      v77.n128_u64[0] = v73;
      v78 = j_nullsub_1(v74, v75, v76, v77);
    }

    else
    {
      v78 = OUTLINED_FUNCTION_5_8();
    }

    v82 = v78;
    v83 = v79;
    v84 = v80;
    v85 = v81;
    v86 = sub_1E4202734();
    v87 = v67;
    v88 = v124;
    sub_1E329E454(v87, v124, &qword_1ECF3E9D8);
    v89 = v88 + *(v125 + 36);
    *v89 = v86;
    *(v89 + 8) = v82;
    *(v89 + 16) = v83;
    *(v89 + 24) = v84;
    *(v89 + 32) = v85;
    *(v89 + 40) = 0;
    v90 = v128;
    OUTLINED_FUNCTION_38_2();
    sub_1E329E454(v91, v92, v93);
    v94 = v135;
    v95 = v127;
    sub_1E3294EE4(v135, v127, &qword_1ECF3E9F0);
    v96 = v129;
    OUTLINED_FUNCTION_38_2();
    sub_1E3294EE4(v97, v98, v99);
    v100 = v130;
    sub_1E3294EE4(v95, v130, &qword_1ECF3E9F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA10);
    OUTLINED_FUNCTION_38_2();
    sub_1E3294EE4(v101, v102, v103);
    OUTLINED_FUNCTION_11_179(v90);
    sub_1E325F6F0(v94, &qword_1ECF3E9F0);
    OUTLINED_FUNCTION_11_179(v96);
    sub_1E325F6F0(v95, &qword_1ECF3E9F0);
    v33 = v118;
    sub_1E329E454(v100, v118, &qword_1ECF3E9C8);
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  __swift_storeEnumTagSinglePayload(v33, v64, 1, v133);
  v104 = v137;
  v105 = v131;
  OUTLINED_FUNCTION_38_2();
  sub_1E3294EE4(v106, v107, v108);
  v109 = v132;
  sub_1E3294EE4(v33, v132, &qword_1ECF3E9F8);
  v110 = v134;
  OUTLINED_FUNCTION_38_2();
  sub_1E3294EE4(v111, v112, v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA00);
  sub_1E3294EE4(v109, v110 + *(v114 + 48), &qword_1ECF3E9F8);
  sub_1E325F6F0(v33, &qword_1ECF3E9F8);
  OUTLINED_FUNCTION_11_179(v104);
  sub_1E325F6F0(v109, &qword_1ECF3E9F8);
  return OUTLINED_FUNCTION_11_179(v105);
}

double sub_1E402A3C8(double a1)
{
  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = *(v2 + 128);
  }

  else
  {
    v3 = 1.0;
  }

  return a1 / v3;
}

uint64_t sub_1E402A41C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v66 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v59 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v62 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA18);
  OUTLINED_FUNCTION_0_10();
  v65 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v64 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  v63 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  v61 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25_3();
  v67 = v30;
  v31 = **a1;
  v57 = *(v31 + 488);
  v58 = v31 + 488;
  v32 = v57();
  v60 = v5;
  v55 = v10;
  v56 = v7;
  if (v32 && (v33 = sub_1E373E010(23, v32), , v33) && *v33 == _TtC8VideosUI13TextViewModel)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v7 + 32))(v17, v10, v5);
    v34 = v17;
    v35 = 0;
  }

  else
  {
    v34 = v17;
    v35 = 1;
  }

  __swift_storeEnumTagSinglePayload(v34, v35, 1, v5);
  sub_1E329E454(v17, v20, &qword_1ECF29210);

  sub_1E42026E4();
  sub_1E4203DA4();
  *(swift_allocObject() + 16) = a3;
  sub_1E37AC5F4();
  sub_1E42032A4();

  v36 = sub_1E325F6F0(v20, &qword_1ECF29210);
  v37 = (v57)(v36);
  if (!v37)
  {
    v39 = v59;
    v40 = v60;
    goto LABEL_12;
  }

  v38 = sub_1E373E010(15, v37);

  v39 = v59;
  if (!v38)
  {
    v40 = v60;
    goto LABEL_12;
  }

  v40 = v60;
  if (*v38 != _TtC8VideosUI13TextViewModel)
  {
LABEL_12:
    v42 = v39;
    v43 = 1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_18();
  v41 = v55;
  sub_1E3F23370();

  (*(v56 + 32))(v39, v41, v40);
  v42 = v39;
  v43 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v42, v43, 1, v40);
  v44 = v62;
  sub_1E329E454(v39, v62, &qword_1ECF29210);

  sub_1E42026E4();
  sub_1E4203DA4();
  *(swift_allocObject() + 16) = a3;
  v45 = v61;
  sub_1E42032A4();

  sub_1E325F6F0(v44, &qword_1ECF29210);
  v46 = v65;
  v47 = *(v65 + 16);
  v48 = v63;
  v49 = v67;
  v47(v63, v67, v21);
  v50 = v64;
  v47(v64, v45, v21);
  v51 = v66;
  v47(v66, v48, v21);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA20);
  v47(v51 + *(v52 + 48), v50, v21);
  v53 = *(v46 + 8);
  v53(v45, v21);
  v53(v49, v21);
  v53(v50, v21);
  return (v53)(v48, v21);
}

id sub_1E402AAA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v266 = v263 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v263 - v5;
  v267 = sub_1E41FE414();
  v265 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v8 = v263 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v263 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v263 - v13;
  v15 = sub_1E40A2C7C();
  v16 = MEMORY[0x1E69E7CC8];
  v264 = v8;
  if (v15)
  {
    v17 = v15;
    v18 = v15;
  }

  else
  {
    v19 = sub_1E40A2CE4();
    v18 = v19;
    if (!v19)
    {
LABEL_10:
      v27 = MEMORY[0x1E69E7CC8];
      goto LABEL_13;
    }

    v17 = v19;
    v15 = 0;
  }

  v20 = v15;
  v21 = [v17 dictionary];

  v22 = sub_1E4205C64();
  *&v274 = sub_1E4205F14();
  *(&v274 + 1) = v23;
  sub_1E4207414();
  sub_1E375D7E8(&v279, v22, &v274);

  sub_1E375D84C(&v279);
  if (!v275)
  {
    sub_1E325F748(&v274, &unk_1ECF296E0);
    goto LABEL_10;
  }

  sub_1E329504C(&v274, &v276);
  v24 = sub_1E4205F14();
  v26 = v25;
  sub_1E328438C(&v276, &v279);
  swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v16;
  sub_1E32A87C0(&v279, v24, v26);

  v27 = v274;
  sub_1E328438C(&v276, &v279);
  v28 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    sub_1E41FE404();

    v29 = v267;
    if (__swift_getEnumTagSinglePayload(v6, 1, v267) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v276);
      sub_1E325F748(v6, &unk_1ECF363C0);
      goto LABEL_13;
    }

    v30 = v265;
    (*(v265 + 32))(v14, v6, v29);
    sub_1E39E8084();
    v31 = sub_1E41FE314();
    v33 = v32;
    v270 = v18;
    v269 = *(v30 + 8);
    v269(v11, v29);
    v34 = sub_1E4205F14();
    v36 = v35;
    v280 = v28;
    *&v279 = v31;
    *(&v279 + 1) = v33;
    sub_1E329504C(&v279, &v274);
    swift_isUniquelyReferenced_nonNull_native();
    *&v272[0] = v27;
    sub_1E32A87C0(&v274, v34, v36);

    v27 = *&v272[0];
    v269(v14, v29);
    v18 = v270;
  }

  __swift_destroy_boxed_opaque_existential_1(&v276);
LABEL_13:
  v37 = MEMORY[0x1E69E6158];
  sub_1E4205F14();
  v39 = v38;
  if (v18)
  {
    v40 = [v18 buyParameters];
    v41 = sub_1E4205F14();
    v43 = v42;

    v280 = v37;
    *&v279 = v41;
    *(&v279 + 1) = v43;
    v44 = OUTLINED_FUNCTION_5_229();
    sub_1E329504C(v44, v45);
    swift_isUniquelyReferenced_nonNull_native();
    *&v274 = v27;
    v46 = OUTLINED_FUNCTION_1_279();
    sub_1E32A87C0(v46, v47, v39);

    v27 = v274;
  }

  else
  {
    v48 = OUTLINED_FUNCTION_11_6();
    v50 = sub_1E327D33C(v48, v49);
    if (v51)
    {
      v52 = v50;
      swift_isUniquelyReferenced_nonNull_native();
      *&v276 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
      sub_1E4207644();
      v27 = v276;

      sub_1E329504C((*(v27 + 56) + 32 * v52), &v279);
      sub_1E4207664();
    }

    else
    {
      OUTLINED_FUNCTION_3_250();
    }

    sub_1E325F748(&v279, &unk_1ECF296E0);
  }

  v53 = type metadata accessor for LibFamilySharingPlayableMediaEntity();
  v280 = v53;
  v268 = sub_1E402C59C();
  v281 = v268;
  *&v279 = a1;
  sub_1E327F454(&v279, &v274);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
  if (OUTLINED_FUNCTION_90_0())
  {
    sub_1E37DADF4(v272, &v276);
    v54 = *(&v277 + 1);
    v55 = v278;
    __swift_project_boxed_opaque_existential_1(&v276, *(&v277 + 1));
    v56 = (*(v55 + 24))(v54, v55);
    if (v56)
    {
      v57 = 0x6E65526569766F4DLL;
    }

    else
    {
      v57 = 0x6569766F4DLL;
    }

    if (v56)
    {
      v58 = 0xEB000000006C6174;
    }

    else
    {
      v58 = 0xE500000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v276);
  }

  else
  {
    v273 = 0;
    memset(v272, 0, sizeof(v272));
    sub_1E325F748(v272, &qword_1ECF2CEA0);
    v59 = OUTLINED_FUNCTION_5_229();
    sub_1E327F454(v59, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
    OUTLINED_FUNCTION_2_244();
    if (OUTLINED_FUNCTION_90_0())
    {
      __swift_destroy_boxed_opaque_existential_1(&v274);
      v58 = 0xE600000000000000;
      v57 = 0x776F68535654;
    }

    else
    {
      v61 = OUTLINED_FUNCTION_5_229();
      sub_1E327F454(v61, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760);
      OUTLINED_FUNCTION_2_244();
      if (OUTLINED_FUNCTION_90_0())
      {
        __swift_destroy_boxed_opaque_existential_1(&v274);
        v58 = 0xE600000000000000;
        v57 = 0x6E6F73616553;
      }

      else
      {
        v63 = OUTLINED_FUNCTION_5_229();
        sub_1E327F454(v63, v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
        OUTLINED_FUNCTION_2_244();
        if (OUTLINED_FUNCTION_90_0())
        {
          __swift_destroy_boxed_opaque_existential_1(&v274);
          v58 = 0xE700000000000000;
          v57 = 0x65646F73697045;
        }

        else
        {
          v65 = OUTLINED_FUNCTION_5_229();
          sub_1E327F454(v65, v66);
          type metadata accessor for LibMPBaseMediaEntity();
          OUTLINED_FUNCTION_2_244();
          if (OUTLINED_FUNCTION_90_0())
          {
            v67 = (*(*v274 + 464))();

            if (v67)
            {
              v57 = 0x65646956656D6F48;
            }

            else
            {
              v57 = 0;
            }

            if (v67)
            {
              v58 = 0xE90000000000006FLL;
            }

            else
            {
              v58 = 0;
            }
          }

          else
          {
            v57 = 0;
            v58 = 0;
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v279);
  v68 = sub_1E4205F14();
  v70 = v69;
  v269 = v58;
  if (v58)
  {
    v280 = v37;
    *&v279 = v57;
    *(&v279 + 1) = v58;
    v71 = OUTLINED_FUNCTION_5_229();
    sub_1E329504C(v71, v72);

    swift_isUniquelyReferenced_nonNull_native();
    *&v274 = v27;
    v73 = OUTLINED_FUNCTION_1_279();
    sub_1E32A87C0(v73, v74, v70);

    v27 = v274;
  }

  else
  {
    OUTLINED_FUNCTION_3_250();
    sub_1E325F748(&v279, &unk_1ECF296E0);
    v75 = sub_1E327D33C(v68, v70);
    if (v76)
    {
      v77 = v75;
      swift_isUniquelyReferenced_nonNull_native();
      *&v274 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
      sub_1E4207644();
      v27 = v274;

      sub_1E329504C((*(v27 + 56) + 32 * v77), &v276);
      sub_1E4207664();
    }

    else
    {
      v276 = 0u;
      v277 = 0u;
    }

    sub_1E325F748(&v276, &unk_1ECF296E0);
  }

  v270 = v18;
  sub_1E4205F14();
  v79 = v78;
  v80 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v280 = sub_1E376948C();
  *&v279 = v80;
  v81 = OUTLINED_FUNCTION_5_229();
  sub_1E329504C(v81, v82);
  swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v27;
  v83 = OUTLINED_FUNCTION_1_279();
  sub_1E32A87C0(v83, v84, v79);

  v85 = v274;
  sub_1E4205F14();
  v87 = v86;
  v88 = sub_1E4205F14();
  OUTLINED_FUNCTION_4_246(v88, v89);
  swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v85;
  v90 = OUTLINED_FUNCTION_1_279();
  sub_1E32A87C0(v90, v91, v87);

  v92 = v274;
  v93 = sub_1E4205F14();
  v95 = v94;
  OUTLINED_FUNCTION_47_0();
  v97 = *(v96 + 184);
  v98 = v97();
  OUTLINED_FUNCTION_4_246(v98, v99);
  swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v92;
  v100 = OUTLINED_FUNCTION_6_211();
  sub_1E32A87C0(v100, v93, v95);

  v101 = v274;
  v102 = sub_1E4205F14();
  v104 = v103;
  v105 = v97();
  OUTLINED_FUNCTION_4_246(v105, v106);
  swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v101;
  v107 = OUTLINED_FUNCTION_6_211();
  sub_1E32A87C0(v107, v102, v104);

  v108 = v274;
  v109 = sub_1E4205F14();
  v111 = v110;
  v112 = v97();
  OUTLINED_FUNCTION_4_246(v112, v113);
  swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v108;
  v114 = OUTLINED_FUNCTION_6_211();
  sub_1E32A87C0(v114, v109, v111);

  v115 = v274;
  v116 = type metadata accessor for LibFamilySharingMovieMediaEntity();
  v117 = swift_dynamicCastClass();
  if (v117)
  {
    v118 = v117;
    v119 = *(*v117 + 1096);

    v121 = v266;
    v119(v120);
    v122 = v267;
    if (__swift_getEnumTagSinglePayload(v121, 1, v267) == 1)
    {

      sub_1E325F748(v121, &unk_1ECF363C0);
    }

    else
    {
      v263[1] = v116;
      v123 = v53;
      v124 = v265;
      v125 = v264;
      (*(v265 + 32))(v264, v121, v122);
      v126 = sub_1E41FE314();
      v128 = v127;

      v129 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v129 = v126 & 0xFFFFFFFFFFFFLL;
      }

      if (v129)
      {
        v130 = sub_1E4205F14();
        v132 = v131;
        v133 = (*(*v118 + 1216))();
        v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        *&v279 = v133;
        v134 = OUTLINED_FUNCTION_5_229();
        sub_1E329504C(v134, v135);
        swift_isUniquelyReferenced_nonNull_native();
        *&v274 = v115;
        v136 = OUTLINED_FUNCTION_6_211();
        sub_1E32A87C0(v136, v130, v132);

        v37 = MEMORY[0x1E69E6158];

        v115 = v274;
        (*(v124 + 8))(v125, v122);
      }

      else
      {
        (*(v124 + 8))(v125, v122);
      }

      v53 = v123;
    }
  }

  type metadata accessor for LibFamilySharingEpisodeMediaEntity();
  v137 = swift_dynamicCastClass();
  if (v137)
  {
    v138 = v137;
    v139 = *(*v137 + 1192);

    v141 = v139(v140);
    if (v142)
    {
      v143 = v141;
      v144 = v142;
      v145 = sub_1E4205F14();
      v147 = v146;
      v280 = MEMORY[0x1E69E6158];
      *&v279 = v143;
      *(&v279 + 1) = v144;
      v148 = OUTLINED_FUNCTION_5_229();
      sub_1E329504C(v148, v149);
      swift_isUniquelyReferenced_nonNull_native();
      *&v274 = v115;
      v150 = OUTLINED_FUNCTION_6_211();
      sub_1E32A87C0(v150, v145, v147);

      v115 = v274;
    }

    v151 = (*(*v138 + 1216))(v141);
    if (v152)
    {
      v153 = v151;
      v154 = v152;
      v155 = sub_1E4205F14();
      v157 = v156;
      v37 = MEMORY[0x1E69E6158];
      v280 = MEMORY[0x1E69E6158];
      *&v279 = v153;
      *(&v279 + 1) = v154;
      v158 = OUTLINED_FUNCTION_5_229();
      sub_1E329504C(v158, v159);
      swift_isUniquelyReferenced_nonNull_native();
      *&v274 = v115;
      v160 = OUTLINED_FUNCTION_6_211();
      sub_1E32A87C0(v160, v155, v157);

      v115 = v274;
    }

    else
    {

      v37 = MEMORY[0x1E69E6158];
    }
  }

  v280 = v53;
  v281 = v268;
  *&v279 = a1;
  v161 = OUTLINED_FUNCTION_5_229();
  sub_1E327F454(v161, v162);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
  OUTLINED_FUNCTION_2_244();
  if (OUTLINED_FUNCTION_102_0() || (v163 = OUTLINED_FUNCTION_5_229(), sub_1E327F454(v163, v164), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780), OUTLINED_FUNCTION_2_244(), OUTLINED_FUNCTION_102_0()) || (v165 = OUTLINED_FUNCTION_5_229(), sub_1E327F454(v165, v166), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760), OUTLINED_FUNCTION_2_244(), OUTLINED_FUNCTION_102_0()) || (v167 = OUTLINED_FUNCTION_5_229(), sub_1E327F454(v167, v168), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58), OUTLINED_FUNCTION_2_244(), OUTLINED_FUNCTION_102_0()))
  {
    __swift_destroy_boxed_opaque_existential_1(&v274);
    v169 = sub_1E4205F14();
    v171 = v170;
  }

  else
  {
    v169 = 0;
    v171 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v279);
  v172 = sub_1E4205F14();
  v174 = v173;
  if (v171)
  {
    v280 = v37;
    *&v279 = v169;
    *(&v279 + 1) = v171;
    v175 = OUTLINED_FUNCTION_5_229();
    sub_1E329504C(v175, v176);

    swift_isUniquelyReferenced_nonNull_native();
    v177 = OUTLINED_FUNCTION_0_322();
    sub_1E32A87C0(v177, v178, v174);

    v179 = v274;
  }

  else
  {
    OUTLINED_FUNCTION_3_250();
    sub_1E325F748(&v279, &unk_1ECF296E0);
    v180 = MEMORY[0x1E69E7CC8];
    v181 = sub_1E327D33C(v172, v174);
    if (v182)
    {
      v183 = v181;
      swift_isUniquelyReferenced_nonNull_native();
      *&v274 = v180;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
      sub_1E4207644();
      v179 = v274;

      sub_1E329504C((*(v179 + 56) + 32 * v183), &v276);
      OUTLINED_FUNCTION_11_6();
      sub_1E4207664();
    }

    else
    {
      v276 = 0u;
      v277 = 0u;
      v179 = MEMORY[0x1E69E7CC8];
    }

    sub_1E325F748(&v276, &unk_1ECF296E0);
  }

  OUTLINED_FUNCTION_47_0();
  v185 = (*(v184 + 952))();
  v186 = v185;
  if (v185)
  {
    v187 = [v185 rank];
  }

  else
  {
    v187 = 0;
  }

  sub_1E4205F14();
  v189 = v188;
  if (v186)
  {
    v280 = MEMORY[0x1E69E6810];
    *&v279 = v187;
    v190 = OUTLINED_FUNCTION_5_229();
    sub_1E329504C(v190, v191);
    swift_isUniquelyReferenced_nonNull_native();
    v192 = OUTLINED_FUNCTION_0_322();
    sub_1E32A87C0(v192, v193, v189);

    v179 = v274;
    v194 = MEMORY[0x1E69E6158];
  }

  else
  {
    OUTLINED_FUNCTION_10_164();
    if (v195)
    {
      OUTLINED_FUNCTION_17_146();
      *&v276 = v179;
      v179 = *(v179 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
      sub_1E4207644();
      OUTLINED_FUNCTION_7_217();
      OUTLINED_FUNCTION_11_180();
      OUTLINED_FUNCTION_11_6();
      sub_1E4207664();
    }

    else
    {
      OUTLINED_FUNCTION_3_250();
    }

    v194 = MEMORY[0x1E69E6158];

    sub_1E325F748(&v279, &unk_1ECF296E0);
  }

  swift_dynamicCastClass();
  v196 = sub_1E4205F14();
  v198 = v197;
  v199 = sub_1E4205F14();
  OUTLINED_FUNCTION_4_246(v199, v200);
  swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v179;
  v201 = OUTLINED_FUNCTION_6_211();
  sub_1E32A87C0(v201, v196, v198);

  sub_1E4205F14();
  v203 = v202;
  OUTLINED_FUNCTION_47_0();
  v205 = (*(v204 + 232))();
  OUTLINED_FUNCTION_4_246(v205, v206);
  swift_isUniquelyReferenced_nonNull_native();
  v207 = OUTLINED_FUNCTION_0_322();
  sub_1E32A87C0(v207, v208, v203);

  v209 = v274;
  v210 = swift_dynamicCastClass();
  if (v210)
  {
    v211 = v210;
    sub_1E4205F14();
    OUTLINED_FUNCTION_8_191();
    v213 = *(v212 + 1264);

    v215 = v213(v214);
    if (v216)
    {
      v194 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_4_246(v215, v216);
      swift_isUniquelyReferenced_nonNull_native();
      v217 = OUTLINED_FUNCTION_0_322();
      sub_1E32A87C0(v217, v218, VUIContentMetadataKeyHeight);

      v209 = v274;
    }

    else
    {
      OUTLINED_FUNCTION_10_164();
      v194 = MEMORY[0x1E69E6158];
      if (v219)
      {
        OUTLINED_FUNCTION_17_146();
        OUTLINED_FUNCTION_12_162();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        OUTLINED_FUNCTION_13_175();
        sub_1E4207644();
        OUTLINED_FUNCTION_7_217();
        OUTLINED_FUNCTION_11_180();
        OUTLINED_FUNCTION_11_6();
        sub_1E4207664();
      }

      else
      {
        OUTLINED_FUNCTION_3_250();
      }

      sub_1E325F748(&v279, &unk_1ECF296E0);
    }

    sub_1E4205F14();
    OUTLINED_FUNCTION_8_191();
    v221 = (*(v220 + 1144))();
    if (v222)
    {
      OUTLINED_FUNCTION_10_164();
      if (v223)
      {
        OUTLINED_FUNCTION_17_146();
        OUTLINED_FUNCTION_12_162();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        OUTLINED_FUNCTION_13_175();
        sub_1E4207644();
        OUTLINED_FUNCTION_7_217();
        OUTLINED_FUNCTION_11_180();
        OUTLINED_FUNCTION_11_6();
        sub_1E4207664();
      }

      else
      {
        OUTLINED_FUNCTION_3_250();
      }

      sub_1E325F748(&v279, &unk_1ECF296E0);
    }

    else
    {
      v280 = MEMORY[0x1E69E6530];
      *&v279 = v221;
      v224 = OUTLINED_FUNCTION_5_229();
      sub_1E329504C(v224, v225);
      swift_isUniquelyReferenced_nonNull_native();
      v226 = OUTLINED_FUNCTION_0_322();
      sub_1E32A87C0(v226, v227, VUIContentMetadataKeyHeight);

      v209 = v274;
    }

    sub_1E4205F14();
    OUTLINED_FUNCTION_8_191();
    v229 = (*(v228 + 1120))();
    if (v230)
    {
      OUTLINED_FUNCTION_10_164();
      if (v231)
      {
        OUTLINED_FUNCTION_17_146();
        OUTLINED_FUNCTION_12_162();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        OUTLINED_FUNCTION_13_175();
        sub_1E4207644();
        OUTLINED_FUNCTION_7_217();
        OUTLINED_FUNCTION_11_180();
        OUTLINED_FUNCTION_11_6();
        sub_1E4207664();
      }

      else
      {
        OUTLINED_FUNCTION_3_250();
      }

      v236 = sub_1E325F748(&v279, &unk_1ECF296E0);
    }

    else
    {
      v280 = MEMORY[0x1E69E6530];
      *&v279 = v229;
      v232 = OUTLINED_FUNCTION_5_229();
      sub_1E329504C(v232, v233);
      swift_isUniquelyReferenced_nonNull_native();
      v234 = OUTLINED_FUNCTION_0_322();
      sub_1E32A87C0(v234, v235, VUIContentMetadataKeyHeight);

      v209 = v274;
    }

    (*(*v211 + 1240))(&v276, v236);
    if (v278 == 2)
    {
      v237 = v276;

      if (*(&v237 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
        v238 = swift_allocObject();
        *(v238 + 16) = xmmword_1E4297BD0;
        *(v238 + 32) = sub_1E4205F14();
        *(v238 + 40) = v239;
        *(v238 + 72) = v194;
        *(v238 + 48) = v237;
        *(v238 + 80) = sub_1E4205F14();
        *(v238 + 88) = v240;
        v241 = MEMORY[0x1E69E6530];
        *(v238 + 120) = MEMORY[0x1E69E6530];
        *(v238 + 96) = 1920;
        *(v238 + 128) = sub_1E4205F14();
        *(v238 + 136) = v242;
        *(v238 + 168) = v241;
        *(v238 + 144) = 1080;
        v243 = sub_1E4205CB4();
        v244 = sub_1E4205F14();
        v246 = v245;
        v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        *&v279 = v243;
        sub_1E329504C(&v279, &v274);
        swift_isUniquelyReferenced_nonNull_native();
        *&v272[0] = v209;
        sub_1E32A87C0(&v274, v244, v246);

        v209 = *&v272[0];
        goto LABEL_109;
      }
    }

    else if (v278 != 255)
    {
      sub_1E325F748(&v276, &qword_1ECF2A450);
    }
  }

LABEL_109:
  OUTLINED_FUNCTION_47_0();
  (*(v247 + 312))(&v279);
  if (v281 == 2)
  {
    v248 = v279;

    if (*(&v248 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
      v249 = swift_allocObject();
      *(v249 + 16) = xmmword_1E4297BD0;
      *(v249 + 32) = sub_1E4205F14();
      *(v249 + 40) = v250;
      *(v249 + 72) = v194;
      *(v249 + 48) = v248;
      *(v249 + 80) = sub_1E4205F14();
      *(v249 + 88) = v251;
      v252 = MEMORY[0x1E69E6530];
      *(v249 + 120) = MEMORY[0x1E69E6530];
      *(v249 + 96) = 1920;
      *(v249 + 128) = sub_1E4205F14();
      *(v249 + 136) = v253;
      *(v249 + 168) = v252;
      *(v249 + 144) = 1080;
      v254 = sub_1E4205CB4();
      v255 = sub_1E4205F14();
      v257 = v256;
      v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      *&v274 = v254;
      sub_1E329504C(&v274, v272);
      swift_isUniquelyReferenced_nonNull_native();
      v271 = v209;
      sub_1E32A87C0(v272, v255, v257);

      v209 = v271;
    }
  }

  else if (v281 != 255)
  {
    sub_1E325F748(&v279, &qword_1ECF2A450);
  }

  v258 = sub_1E3744600(v115);
  v259 = sub_1E3744600(v209);
  v260 = objc_allocWithZone(VUIVideosPlayable);
  result = sub_1E37448C4(v258, v259);
  if (result)
  {
    v262 = result;

    return v262;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E402C59C()
{
  result = qword_1ECF3EA28;
  if (!qword_1ECF3EA28)
  {
    type metadata accessor for LibFamilySharingPlayableMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EA28);
  }

  return result;
}

uint64_t sub_1E402C5F4()
{
  if (!sub_1E3C27528())
  {
    goto LABEL_9;
  }

  type metadata accessor for TextLayout();
  v0 = swift_dynamicCastClass();
  if (!v0)
  {

    goto LABEL_9;
  }

  v1 = *(*v0 + 1976);

  v3 = v1(v2);

  if (v3 == 2)
  {
    v4 = sub_1E4203DC4();
    goto LABEL_12;
  }

  if (v3 == 1)
  {
    v4 = sub_1E4203DA4();
    goto LABEL_12;
  }

  if (v3)
  {
LABEL_9:
    v5 = sub_1E4203DB4();

    return v5;
  }

  v4 = sub_1E4203DB4();
LABEL_12:
  v7 = v4;

  return v7;
}

uint64_t sub_1E402C6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA38);
  OUTLINED_FUNCTION_0_10();
  v31[0] = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v37 = *(v2 + 64);
  v38 = *(v2 + 80);
  v32 = *(v2 + 64);
  v33 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  if (v35 <= 0.0)
  {
    OUTLINED_FUNCTION_13_176();
  }

  else
  {
    v32 = v37;
    v14 = v38;
  }

  OUTLINED_FUNCTION_17_147(v14);
  v15 = v35;
  OUTLINED_FUNCTION_13_176();
  OUTLINED_FUNCTION_17_147(v16);
  v17 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA40);
  OUTLINED_FUNCTION_2();
  (*(v18 + 16))(v8, a1);
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA48) + 36)] = 0;
  v19 = sub_1E4203DA4();
  v21 = v20;
  v22 = &v8[*(v5 + 36)];
  sub_1E402CB00(v3, a1, v22, v15);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA50) + 36));
  *v23 = v19;
  v23[1] = v21;
  if (v3[14])
  {

    *&v24 = COERCE_DOUBLE(sub_1E3B1DDF0());

    v35 = *&v24;
    v25 = swift_allocObject();
    memcpy(v25 + 2, v3, 0x98uLL);
    v25[21] = v15;
    *(v25 + 22) = v17;
    sub_1E402D9F8(v3, &v32);
    v26 = sub_1E402DA30();
    v27 = sub_1E383FBF4();
    sub_1E4203524();

    sub_1E325F69C(v8, &qword_1ECF3EA30);
    v28 = swift_allocObject();
    memcpy((v28 + 16), v3, 0x98uLL);
    sub_1E402D9F8(v3, &v32);
    *&v32 = v5;
    *(&v32 + 1) = &unk_1F5D59EC8;
    v33 = v26;
    v34 = v27;
    OUTLINED_FUNCTION_3_219();
    swift_getOpaqueTypeConformance2();
    v29 = OUTLINED_FUNCTION_51_1();
    sub_1E40AB6EC(v29 & 1);

    return (*(v31[0] + 8))(v13, v9);
  }

  else
  {
    type metadata accessor for ViewInteractionStates();
    sub_1E3A9D8C8();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E402CB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v32 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA58);
  v30[0] = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v30 - v9);
  v38 = *(a1 + 88);
  v39 = *(a1 + 104);
  v34 = *(a1 + 88);
  *&v35[0] = *(a1 + 104);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  v11 = *&v36 > a4;
  v31 = v11;
  *v10 = sub_1E4203DA4();
  v10[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA60);
  sub_1E402CE14(a1, a2, v11, v10 + *(v13 + 44), a4);
  v14 = *a1;
  v15 = *(a1 + 8);

  v16 = OUTLINED_FUNCTION_18();
  sub_1E3FAC790(v14, v15, v16, &v36);
  *(&v37[1] + 9) = 1;
  v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0x98uLL);
  sub_1E402D9F8(a1, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA68);
  sub_1E402DDC8();
  v18 = OUTLINED_FUNCTION_51_1();
  v19 = v10 + *(v7 + 36);
  sub_1E40AB6EC(v18 & 1);

  v34 = v36;
  v35[0] = v37[0];
  *(v35 + 11) = *(v37 + 11);
  sub_1E325F69C(&v34, &qword_1ECF3EA68);
  v20 = sub_1E4203DA4();
  v22 = v21;
  v23 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA88) + 36)];
  *v23 = v20;
  v23[1] = v22;
  v24 = *(a1 + 144);
  v36 = v38;
  *&v37[0] = v39;
  sub_1E42038F4();
  v25 = v33;
  v26 = *(a1 + 128);
  v36 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  v27 = v33;
  v28 = sub_1E402DEE0();
  sub_1E3A54374(v31, v30[0], v28, v24, v25, v26, v27);
  return sub_1E325F69C(v10, &qword_1ECF3EA58);
}

uint64_t sub_1E402CE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v70 = a3;
  v75 = a4;
  v68 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v67 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_3(&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAB0);
  OUTLINED_FUNCTION_0_10();
  v66 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_3(&v58 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAB8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17_3(&v58 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAC8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAD0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v58 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_17_3(&v58 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EA40);
  OUTLINED_FUNCTION_2();
  v35 = *(v34 + 16);
  v63 = a2;
  v59 = v35;
  v35(v21, a2, v33);
  v60 = v17;
  *&v21[*(v17 + 36)] = 1;
  v82[0] = *(a1 + 88);
  *&v82[1] = *(a1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  if (__src[0] <= a5)
  {
    sub_1E402C5F4();
  }

  else
  {
    sub_1E4203DB4();
  }

  OUTLINED_FUNCTION_10_122();
  v36 = 1;
  LOBYTE(v59) = 1;
  OUTLINED_FUNCTION_7_218();
  sub_1E379E528(v21, v25, &qword_1ECF3EAC0);
  OUTLINED_FUNCTION_141();
  memcpy(&v25[v37], __src, 0x70uLL);
  v82[0] = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  v38 = v80;
  sub_1E379E528(v25, v30, &qword_1ECF3EAC8);
  OUTLINED_FUNCTION_141();
  v40 = &v30[v39];
  *v40 = v38;
  *(v40 + 1) = 0;
  sub_1E379E528(v30, v78, &qword_1ECF3EAD0);
  v41 = v73;
  v42 = v72;
  if (v70)
  {
    v43 = v69;
    v59(v69, v63, v33);
    OUTLINED_FUNCTION_141();
    *(v43 + v44) = 1;
    v82[0] = *(a1 + 88);
    *&v82[1] = *(a1 + 104);
    sub_1E42038F4();
    if (*&v80 <= a5)
    {
      sub_1E402C5F4();
    }

    else
    {
      sub_1E4203DB4();
    }

    OUTLINED_FUNCTION_10_122();
    LOBYTE(v65) = 1;
    OUTLINED_FUNCTION_7_218();
    v45 = v62;
    sub_1E379E528(v69, v62, &qword_1ECF3EAC0);
    OUTLINED_FUNCTION_141();
    memcpy((v45 + v46), v82, 0x70uLL);
    v80 = *(a1 + 32);
    sub_1E42038F4();
    v47 = v79;
    v48 = v61;
    sub_1E379E528(v45, v61, &qword_1ECF3EAC8);
    v49 = (v48 + *(v77 + 36));
    *v49 = v47;
    v49[1] = 0;
    v50 = v65;
    sub_1E4202464();
    sub_1E402E034();
    v51 = v64;
    sub_1E4203224();
    (*(v67 + 8))(v50, v68);
    sub_1E325F69C(v48, &qword_1ECF3EAD0);
    (*(v66 + 32))(v42, v51, v41);
    v36 = 0;
  }

  __swift_storeEnumTagSinglePayload(v42, v36, 1, v41);
  v52 = v78;
  v53 = v71;
  sub_1E402DFC4(v78, v71);
  v54 = v74;
  sub_1E32E0744(v42, v74);
  v55 = v75;
  sub_1E402DFC4(v53, v75);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAD8);
  sub_1E32E0744(v54, v55 + *(v56 + 48));
  sub_1E325F69C(v42, &qword_1ECF3EAB8);
  sub_1E325F69C(v52, &qword_1ECF3EAD0);
  sub_1E325F69C(v54, &qword_1ECF3EAB8);
  return sub_1E325F69C(v53, &qword_1ECF3EAD0);
}

uint64_t sub_1E402D5A0(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  result = sub_1E42038F4();
  if (v4 > a1)
  {
    sub_1E383E8E0();
    sub_1E383FB9C();
    if (sub_1E4207274())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
      sub_1E42038F4();
      sub_1E4203E24();
      sub_1E4203E04();

      sub_1E4203DD4();
    }

    else
    {
      v3 = sub_1E4203E24();
    }

    MEMORY[0x1EEE9AC00](v3);
    sub_1E4200FE4();
  }

  return result;
}

uint64_t sub_1E402D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  OUTLINED_FUNCTION_9_179(v6, v7, v8, v9, v10, v11, v12, v13, a3, a4, v60, 0);
  v14 = sub_1E42038E4();
  OUTLINED_FUNCTION_9_179(v14, v15, v16, v17, v18, v19, v20, v21, v49, v55, v61, 0);
  sub_1E42038E4();
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_9_179(v22, v23, v24, v25, v26, v27, v28, v29, v50, v56, v62, 0);
  v30 = sub_1E42038E4();
  OUTLINED_FUNCTION_9_179(v30, v31, v32, v33, v34, v35, v36, v37, v51, v57, v63, 0);
  sub_1E42038E4();
  type metadata accessor for ViewInteractionStates();
  sub_1E3A9D8C8();
  v38 = sub_1E4201754();
  v40 = v39;
  OUTLINED_FUNCTION_9_179(v38, v39, v41, v42, v43, v44, v45, v46, v52, v58, v64, 0);
  sub_1E42038E4();
  *__src = a1;
  *&__src[8] = a2;
  *&__src[16] = __dst[0];
  *&__src[24] = __dst[1];
  *&__src[32] = __dst[0];
  *&__src[40] = __dst[1];
  *&__src[48] = __dst[0];
  *&__src[56] = __dst[1];
  *&__src[64] = __dst[0];
  *&__src[72] = __dst[1];
  *&__src[80] = __dst[2];
  *&__src[88] = __dst[0];
  *&__src[96] = __dst[1];
  *&__src[104] = __dst[2];
  *&__src[112] = v38;
  *&__src[120] = v40;
  *&__src[128] = xmmword_1E42E65B0;
  *&__src[144] = 0x3FA999999999999ALL;
  MEMORY[0x1E690DE70](__src, v53, &type metadata for MarqueeTextModifier, v59);
  memcpy(__dst, __src, 0x98uLL);
  return sub_1E402D938(__dst);
}

unint64_t sub_1E402D968()
{
  result = qword_1EE29ECB0[0];
  if (!qword_1EE29ECB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29ECB0);
  }

  return result;
}

unint64_t sub_1E402DA30()
{
  result = qword_1EE289678;
  if (!qword_1EE289678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EA30);
    sub_1E402E16C(&qword_1EE289AE8, &unk_1ECF3EA48);
    sub_1E374AD40(&qword_1EE289240, &unk_1ECF3EA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289678);
  }

  return result;
}

uint64_t sub_1E402DB08(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  OUTLINED_FUNCTION_24_58(v1, v1, v2, v3, v4, v5, v6, v7, *&a1);
  return sub_1E4203904();
}

uint64_t sub_1E402DB60()
{
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_6_212();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
    sub_1E42038F4();
  }

  OUTLINED_FUNCTION_15_163();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  OUTLINED_FUNCTION_24_58(v2, v3, v4, v5, v6, v7, v8, v9, v35);
  v10 = sub_1E4203904();
  if (v1)
  {
    OUTLINED_FUNCTION_24_58(v10, v11, v12, v13, v14, v15, v16, v17, 0);
    sub_1E4203904();
    OUTLINED_FUNCTION_6_212();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
    sub_1E42038F4();
  }

  else
  {
    OUTLINED_FUNCTION_6_212();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
    sub_1E42038F4();
    OUTLINED_FUNCTION_15_163();
    OUTLINED_FUNCTION_24_58(v18, v19, v20, v21, v22, v23, v24, v25, v36);
    sub_1E4203904();
  }

  OUTLINED_FUNCTION_15_163();
  OUTLINED_FUNCTION_24_58(v26, v27, v28, v29, v30, v31, v32, v33, v37);
  return sub_1E4203904();
}

uint64_t objectdestroyTm_59()
{

  return swift_deallocObject();
}

uint64_t sub_1E402DD30(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  OUTLINED_FUNCTION_24_58(v1, v1, v2, v3, v4, v5, v6, v7, *&a1);
  sub_1E4203904();
  OUTLINED_FUNCTION_15_163();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  OUTLINED_FUNCTION_24_58(v8, v8, v9, v10, v11, v12, v13, v14, v17);
  return sub_1E4203904();
}

unint64_t sub_1E402DDC8()
{
  result = qword_1ECF3EA70;
  if (!qword_1ECF3EA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EA68);
    sub_1E402DE54();
    sub_1E3BF7594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EA70);
  }

  return result;
}

unint64_t sub_1E402DE54()
{
  result = qword_1ECF3EA78;
  if (!qword_1ECF3EA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EA80);
    sub_1E3BD9530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EA78);
  }

  return result;
}

unint64_t sub_1E402DEE0()
{
  result = qword_1ECF3EA90;
  if (!qword_1ECF3EA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EA58);
    sub_1E374AD40(&qword_1ECF3EA98, &unk_1ECF3EAA0);
    sub_1E374AD40(&qword_1ECF3EAA8, &unk_1ECF3EA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EA90);
  }

  return result;
}

uint64_t sub_1E402DFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E402E034()
{
  result = qword_1ECF3EAE0;
  if (!qword_1ECF3EAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EAD0);
    sub_1E402E0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EAE0);
  }

  return result;
}

unint64_t sub_1E402E0C0()
{
  result = qword_1ECF3EAE8;
  if (!qword_1ECF3EAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EAC8);
    sub_1E402E16C(&qword_1ECF3EAF0, &unk_1ECF3EAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EAE8);
  }

  return result;
}

uint64_t sub_1E402E16C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    sub_1E374AD40(&qword_1EE2889A0, &unk_1ECF3EA40);
    OUTLINED_FUNCTION_60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E402E1F8()
{
  OUTLINED_FUNCTION_31_1();
  v39 = v3;
  v40 = v2;
  v5 = v4;
  v6 = type metadata accessor for SportsPlayIndex(0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  v38 = v8;
  OUTLINED_FUNCTION_138();
  v37 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v12 = type metadata accessor for SportsSeeAllPlayModel();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAD8);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  swift_beginAccess();
  sub_1E402E4F0(v5, *(v0 + 16), v23);
  swift_endAccess();
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v23, 1, v12);
  sub_1E325F6F0(v23, &qword_1ECF3DAD8);
  if (v5 == 1)
  {
    swift_beginAccess();
    v24 = *(v0 + 24);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      __break(1u);
      return;
    }

    *(v0 + 24) = v26;
  }

  OUTLINED_FUNCTION_5_0();
  v27 = *(v0 + 24);
  (*(v10 + 16))(v1, v39, v37);
  v28 = v40;
  sub_1E39540E0(v40, &v41);
  sub_1E3954164(v28, v27, v1, v16);
  OUTLINED_FUNCTION_7_219();
  v29 = v38;
  sub_1E4035D98();
  OUTLINED_FUNCTION_6_213();
  sub_1E4035D98();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v12);
  OUTLINED_FUNCTION_11_3();
  sub_1E402E5B4(v20, v29);
  swift_endAccess();
  v33 = sub_1E395495C();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1E4205214();

    if (v35)
    {

      sub_1E402E768();
    }
  }

  OUTLINED_FUNCTION_1_280();
  sub_1E4035DF0(v16, v36);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E402E4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_1E4032828(a1), (v4 & 1) != 0))
  {
    v5 = type metadata accessor for SportsSeeAllPlayModel();
    sub_1E4035D98();
    v6 = a3;
    v7 = 0;
    v8 = v5;
  }

  else
  {
    v8 = type metadata accessor for SportsSeeAllPlayModel();
    v6 = a3;
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
}

uint64_t sub_1E402E5B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAD8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for SportsSeeAllPlayModel();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_1E325F6F0(a1, &qword_1ECF3DAD8);
    sub_1E403294C(a2, v8);
    sub_1E4035DF0(a2, type metadata accessor for SportsPlayIndex);
    return sub_1E325F6F0(v8, &qword_1ECF3DAD8);
  }

  else
  {
    sub_1E4035768();
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1E4032AFC(v11, a2);
    *v3 = v15;
    return sub_1E4035DF0(a2, type metadata accessor for SportsPlayIndex);
  }
}

void sub_1E402E768()
{
  OUTLINED_FUNCTION_31_1();
  v55 = v1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8);
  OUTLINED_FUNCTION_0_10();
  v57 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v56 = v4;
  OUTLINED_FUNCTION_138();
  v5 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v60 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  v53 = v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v58 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v22 = type metadata accessor for SportsPlayPeriod();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  OUTLINED_FUNCTION_5_0();
  v27 = v0;
  sub_1E378249C();
  OUTLINED_FUNCTION_52(v21, 1, v22);
  if (!v33)
  {
    OUTLINED_FUNCTION_4_247();
    sub_1E4035768();
    v28 = v60;
    (*(v60 + 104))(v17, *MEMORY[0x1E69D3CC0], v5);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v5);
    v32 = *(v59 + 48);
    sub_1E378249C();
    sub_1E378249C();
    OUTLINED_FUNCTION_52(v11, 1, v5);
    if (v33)
    {
      sub_1E325F6F0(v17, &qword_1ECF2BD90);
      OUTLINED_FUNCTION_52(&v11[v32], 1, v5);
      if (v33)
      {
        sub_1E325F6F0(v11, &qword_1ECF2BD90);
LABEL_16:
        OUTLINED_FUNCTION_2_245();
        sub_1E4035DF0(v26, v52);
        goto LABEL_17;
      }
    }

    else
    {
      v34 = v28;
      v35 = v58;
      sub_1E378249C();
      OUTLINED_FUNCTION_52(&v11[v32], 1, v5);
      if (!v36)
      {
        v46 = v53;
        (*(v34 + 32))(v53, &v11[v32], v5);
        OUTLINED_FUNCTION_25_104();
        sub_1E4035EA0(v47, v48);
        v49 = v35;
        v50 = sub_1E4205E84();
        v51 = *(v34 + 8);
        v51(v46, v5);
        sub_1E325F6F0(v17, &qword_1ECF2BD90);
        v51(v49, v5);
        sub_1E325F6F0(v11, &qword_1ECF2BD90);
        if (v50)
        {
          goto LABEL_16;
        }

LABEL_13:
        v37 = OUTLINED_FUNCTION_5_0();
        v38 = *(v27 + 32);
        MEMORY[0x1EEE9AC00](v37);
        *(&v53 - 2) = v26;

        v39 = sub_1E40300CC(sub_1E4035EE8, (&v53 - 4), v38);

        if (!v39)
        {
          v41 = sub_1E39543F4(v40);
          v42 = *(v54 + 48);
          OUTLINED_FUNCTION_3_251();
          v43 = v56;
          sub_1E4035D98();
          *(v43 + v42) = v41;
          OUTLINED_FUNCTION_11_3();
          sub_1E40322C8();
          v44 = *(*(v27 + 32) + 16);
          sub_1E4032314(v44);
          v45 = *(v27 + 32);
          *(v45 + 16) = v44 + 1;
          OUTLINED_FUNCTION_38_72();
          *(v27 + 32) = v45;
          swift_endAccess();
        }

        goto LABEL_16;
      }

      sub_1E325F6F0(v17, &qword_1ECF2BD90);
      (*(v34 + 8))(v35, v5);
    }

    sub_1E325F6F0(v11, &qword_1ECF2BDA0);
    goto LABEL_13;
  }

  sub_1E325F6F0(v21, &qword_1ECF2B488);
LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E402ED2C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v66 = v5;
  v64 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAD8);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_42_70();
  v13 = type metadata accessor for SportsPlayIndex(v12);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v15);
  v16 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v63 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = type metadata accessor for SportsSeeAllPlayModel();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v67 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v60 - v28;
  swift_beginAccess();
  if (!*(*(v0 + 16) + 16) || (sub_1E4032828(v4), (v30 & 1) == 0))
  {
    swift_endAccess();
LABEL_15:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v60[1] = v4;
  OUTLINED_FUNCTION_6_213();
  sub_1E4035D98();
  OUTLINED_FUNCTION_5_230();
  sub_1E4035768();
  swift_endAccess();
  v31 = *(v29 + 1);
  v69 = *v29;
  *v70 = v31;
  *&v70[9] = *(v29 + 25);
  if (!sub_1E395492C() || (, v32 = *(v29 + 6), swift_beginAccess(), *(v2 + 24) != v32))
  {
    OUTLINED_FUNCTION_1_280();
    v58 = v29;
LABEL_14:
    sub_1E4035DF0(v58, v59);
    goto LABEL_15;
  }

  v33 = *(v63 + 2);
  v60[0] = *(v22 + 24);
  v63 = v33;
  v33(v21, &v29[v60[0]], v16);
  sub_1E39540E0(v66, v68);
  v34 = OUTLINED_FUNCTION_138_0();
  sub_1E3954164(v34, v35, v21, v36);
  OUTLINED_FUNCTION_7_219();
  v37 = v65;
  sub_1E4035D98();
  OUTLINED_FUNCTION_6_213();
  sub_1E4035D98();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v22);
  OUTLINED_FUNCTION_11_3();
  sub_1E402E5B4(v1, v37);
  swift_endAccess();
  v41 = *(v2 + 24);
  v42 = v41 + 1;
  if (!__OFADD__(v41, 1))
  {
    *(v2 + 24) = v42;
    v63(v21, &v29[v60[0]], v16);
    sub_1E39540E0(&v69, v68);
    v43 = v62;
    sub_1E3954164(&v69, v42, v21, v62);
    OUTLINED_FUNCTION_7_219();
    sub_1E4035D98();
    OUTLINED_FUNCTION_6_213();
    sub_1E4035D98();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v22);
    OUTLINED_FUNCTION_11_3();
    sub_1E402E5B4(v1, v37);
    swift_endAccess();
    v47 = OUTLINED_FUNCTION_5_0();
    v48 = *(v2 + 32);
    MEMORY[0x1EEE9AC00](v47);
    v60[-2] = v29;

    v49 = sub_1E402F2A8(sub_1E40328C0, &v60[-4], v48);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      OUTLINED_FUNCTION_11_3();
      v52 = v61;
      sub_1E402F3A8(v49, v61);
      swift_endAccess();
      OUTLINED_FUNCTION_2_245();
      sub_1E4035DF0(v52, v53);
    }

    v54 = sub_1E395495C();
    if (v54)
    {
      v55 = v54;
      v56 = sub_1E4205214();

      if (v56)
      {

        sub_1E402E768();
      }
    }

    OUTLINED_FUNCTION_14_171();
    sub_1E4035DF0(v43, v57);
    sub_1E4035DF0(v67, v2);
    v58 = v29;
    v59 = v2;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1E402F2A8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

size_t sub_1E402F3A8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E4032F40(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8) - 8);
    v9 = *(v8 + 72);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v9 * a1;
    sub_1E4033644(v10, a2);
    result = sub_1E403273C(v10 + v9, v7 - 1 - a1, v10);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }

  return result;
}

void sub_1E402F4A4()
{
  OUTLINED_FUNCTION_31_1();
  v119 = v0;
  v110 = v2;
  v113 = v3;
  v121 = v4;
  v6 = v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8);
  OUTLINED_FUNCTION_0_10();
  v105 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAD8);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v12);
  v108 = type metadata accessor for SportsSeeAllPlayModel();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v14);
  v122 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v118 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v17);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v25);
  v26 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v120 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = type metadata accessor for SportsPlayPeriod();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v34 = OUTLINED_FUNCTION_42_70();
  v35 = type metadata accessor for SportsPlayIndex(v34);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v39 = (v38 - v37);
  v40 = OUTLINED_FUNCTION_102_3();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(v40);
  OUTLINED_FUNCTION_17_2(v41);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_3_251();
  OUTLINED_FUNCTION_210();
  sub_1E4035D98();
  OUTLINED_FUNCTION_114();
  v123 = v32;
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v32);
  OUTLINED_FUNCTION_11_3();
  sub_1E4035E48();
  swift_endAccess();
  v46 = v6;
  sub_1E385BFBC();
  if (!v48)
  {
    goto LABEL_42;
  }

  v49 = v47;
  v50 = v48;
  OUTLINED_FUNCTION_3_251();
  sub_1E4035D98();
  sub_1E3FE12A0(v1, v39);
  (*(v120 + 16))(v31, v121, v26);
  v51 = (*(v120 + 88))(v31, v26);
  v52 = MEMORY[0x1E69D3CC0];
  if (v51 == *MEMORY[0x1E69D3D88])
  {

    sub_1E378249C();
    v53 = v122;
    OUTLINED_FUNCTION_52(v114, 1, v122);
    if (v60)
    {
      OUTLINED_FUNCTION_0_323();
      sub_1E4035DF0(v39, v54);
    }

    else
    {
      sub_1E378249C();
      v64 = OUTLINED_FUNCTION_167();
      v66 = v65(v64);
      if (v66 == *v52)
      {
        if (v110)
        {
          v67 = v110 - 32;
          v68 = *(v110 + 16) + 1;
          while (--v68)
          {
            v69 = v67 + 64;
            v70 = *(v67 + 121);
            v67 += 64;
            if (v70)
            {
              goto LABEL_34;
            }
          }
        }

LABEL_36:
        sub_1E325F6F0(v114, &qword_1ECF2BD90);
LABEL_37:
        OUTLINED_FUNCTION_0_323();
        v77 = v39;
        goto LABEL_41;
      }

      if (v66 == *MEMORY[0x1E69D3CB0])
      {
        if (v110)
        {
          v78 = v110 - 32;
          v79 = *(v110 + 16) + 1;
          while (--v79)
          {
            v69 = v78 + 64;
            v80 = *(v78 + 121);
            v78 += 64;
            if ((v80 & 1) == 0)
            {
LABEL_34:
              LODWORD(v120) = *v52;
              v111 = v39;
              v82 = *(v69 + 40);
              v81 = *(v69 + 48);

              sub_1E325F6F0(v114, &qword_1ECF2BD90);
              if (v82)
              {
                OUTLINED_FUNCTION_3_251();
                sub_1E4035D98();

                sub_1E383B09C();
                v83 = OUTLINED_FUNCTION_138_0();
                sub_1E383B0D8(v83, v84, v82, v81, v85, v86);
                v129 = v126;
                v130 = v125;
                v128 = v127;
                v131 = v125;
                v132 = v126;
                v133 = v127;
                v134 = 3;
                sub_1E383A1D0(&v130, v124);
                sub_1E383A1D0(&v129, v124);
                sub_1E378249C();
                OUTLINED_FUNCTION_90_2();
                sub_1E402E1F8();
                sub_1E3782C70(&v130);
                sub_1E3782C70(&v129);
                sub_1E325F6F0(&v128, &qword_1ECF31990);
                sub_1E3782C70(&v130);
                sub_1E3782C70(&v129);
                sub_1E325F6F0(&v128, &qword_1ECF31990);

                v55 = v120;
                goto LABEL_8;
              }

              v39 = v111;
              goto LABEL_37;
            }
          }
        }

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_0_323();
      sub_1E4035DF0(v39, v99);
      v100 = OUTLINED_FUNCTION_167();
      v101(v100);
    }

    sub_1E325F6F0(v114, &qword_1ECF2BD90);
LABEL_42:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  *&v131 = v49;
  *(&v131 + 1) = v50;
  v133 = 0;
  v132 = 0uLL;
  v134 = 2;
  v111 = v39;
  OUTLINED_FUNCTION_90_2();
  sub_1E402E1F8();

  (*(v120 + 8))(v31, v26);
  v55 = *v52;
  v53 = v122;
LABEL_8:
  (*(v118 + 104))(v116, v55, v53);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v53);
  v59 = *(v115 + 48);
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  OUTLINED_FUNCTION_16_151(v117);
  if (v60)
  {
    sub_1E325F6F0(v116, &qword_1ECF2BD90);
    OUTLINED_FUNCTION_16_151(v117 + v59);
    if (v60)
    {
      sub_1E325F6F0(v117, &qword_1ECF2BD90);
LABEL_28:
      OUTLINED_FUNCTION_0_323();
      v77 = v111;
LABEL_41:
      sub_1E4035DF0(v77, v76);
      goto LABEL_42;
    }

    goto LABEL_16;
  }

  sub_1E378249C();
  OUTLINED_FUNCTION_16_151(v117 + v59);
  if (v60)
  {
    sub_1E325F6F0(v116, &qword_1ECF2BD90);
    (*(v118 + 8))(v112, v53);
LABEL_16:
    sub_1E325F6F0(v117, &qword_1ECF2BDA0);
    goto LABEL_17;
  }

  (*(v118 + 32))(v106, v117 + v59, v53);
  OUTLINED_FUNCTION_25_104();
  sub_1E4035EA0(v71, v72);
  v73 = sub_1E4205E84();
  v74 = *(v118 + 8);
  v75 = OUTLINED_FUNCTION_167();
  v74(v75);
  sub_1E325F6F0(v116, &qword_1ECF2BD90);
  (v74)(v112, v53);
  sub_1E325F6F0(v117, &qword_1ECF2BD90);
  if (v73)
  {
    goto LABEL_28;
  }

LABEL_17:
  if ((v113 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v61 = v111;
  sub_1E402E4F0(v111, *(v119 + 16), v109);
  v62 = OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_52(v62, v63, v108);
  if (v60)
  {
    sub_1E325F6F0(v109, &qword_1ECF3DAD8);
    swift_endAccess();
LABEL_40:
    OUTLINED_FUNCTION_0_323();
    v77 = v61;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_5_230();
  sub_1E4035768();
  v87 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v87);
  *(&v102 - 2) = v46;
  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_11_3();
  v88 = sub_1E4032F54(sub_1E403291C, (&v102 - 4));
  v89 = *(*(v119 + 32) + 16);
  if (v89 >= v88)
  {
    v90 = v119;
    sub_1E4033508(v88, v89);
    v91 = swift_endAccess();
    v92 = v107;
    v93 = sub_1E39543F4(v91);
    v94 = *(v103 + 48);
    OUTLINED_FUNCTION_3_251();
    v95 = v104;
    sub_1E4035D98();
    *(v95 + v94) = v93;
    OUTLINED_FUNCTION_11_3();
    sub_1E40322C8();
    v96 = *(*(v90 + 32) + 16);
    sub_1E4032314(v96);
    v97 = *(v90 + 32);
    *(v97 + 16) = v96 + 1;
    OUTLINED_FUNCTION_38_72();
    *(v90 + 32) = v97;
    swift_endAccess();
    OUTLINED_FUNCTION_1_280();
    sub_1E4035DF0(v92, v98);
    goto LABEL_40;
  }

  __break(1u);
  swift_endAccess();
  __break(1u);
}

BOOL sub_1E40300CC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_1E40301BC()
{

  sub_1E325F6F0(v0 + OBJC_IVAR____TtCV8VideosUI19SportsPlayProcessor18ProcessorPlayStore_currentPeriod, &qword_1ECF2B488);
  return v0;
}

uint64_t sub_1E403020C()
{
  sub_1E40301BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E4030264()
{
  v0 = swift_allocObject();
  sub_1E403029C();
  return v0;
}

void *sub_1E403029C()
{
  v0[2] = MEMORY[0x1E69E7CC8];
  v0[3] = -1;
  v0[4] = MEMORY[0x1E69E7CC0];
  v0[5] = 0;
  v1 = OBJC_IVAR____TtCV8VideosUI19SportsPlayProcessor18ProcessorPlayStore_currentPeriod;
  v2 = type metadata accessor for SportsPlayPeriod();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

void *sub_1E40302FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for SportsPlayProcessor(0);
  v12 = v11[5];
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  (*(v13 + 32))(&a6[v12], a2);
  type metadata accessor for SportsPlayProcessor.ProcessorPlayStore(0);
  v14 = swift_allocObject();
  result = sub_1E403029C();
  *&a6[v11[6]] = v14;
  a6[v11[7]] = a3;
  *&a6[v11[8]] = a4;
  *&a6[v11[9]] = a5;
  return result;
}

void sub_1E40303C8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v76 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB00);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v7);
  v8 = type metadata accessor for SportsSeeAllPlayModel();
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v10);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v12);
  v74 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v73 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v20);
  v68 = type metadata accessor for SportsPlayPeriod();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v23);
  v24 = sub_1E4030F64(v4, 0);
  v25 = type metadata accessor for SportsPlayProcessor(0);
  v26 = *(v1 + v25[6]);
  v27 = sub_1E37CB21C(v24);
  swift_beginAccess();
  v28 = *(v26 + 40);
  *(v26 + 40) = v27;

  v29 = sub_1E32AE9B0(v24);
  if (v29)
  {
    v30 = v29;
    if (v29 < 1)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v31 = 0;
    v32 = *(v1 + v25[7]);
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1E6911E60](v31, v24);
      }

      else
      {
        v33 = *(v24 + 8 * v31 + 32);
      }

      v34 = v33;
      if (v32)
      {
        OUTLINED_FUNCTION_50_53();
        sub_1E40311F8();
      }

      ++v31;
      OUTLINED_FUNCTION_50_53();
      sub_1E40316A4();
    }

    while (v30 != v31);
  }

  OUTLINED_FUNCTION_5_0();
  v35 = *(v26 + 16);

  v77 = sub_1E4033414(v36);
  sub_1E4033370(&v77);

  if (*(v1 + v25[7]) == 1)
  {
    v35 = *(v1 + v25[9]);
    if (v35)
    {
      v37 = sub_1E4205684();
      sub_1E4205294();
      (*(v73 + 16))(v72, v1 + v25[5], v74);
      sub_1E385BAA0();
      v38 = OUTLINED_FUNCTION_44_5();
      v35 = v68;
      OUTLINED_FUNCTION_52(v38, v39, v68);
      if (!v45)
      {
        OUTLINED_FUNCTION_4_247();
        sub_1E4035768();
        v40 = *(v1 + v25[6]);
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_3_251();
        sub_1E4035D98();
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v68);
        v44 = *(v64 + 48);
        OUTLINED_FUNCTION_19_1();
        sub_1E378249C();
        OUTLINED_FUNCTION_19_1();
        v35 = v68;
        sub_1E378249C();
        OUTLINED_FUNCTION_52(v65, 1, v68);
        if (v45)
        {
          sub_1E325F6F0(v75, &qword_1ECF2B488);
          OUTLINED_FUNCTION_52(v65 + v44, 1, v68);
          if (v45)
          {
            sub_1E325F6F0(v65, &qword_1ECF2B488);
LABEL_26:
            OUTLINED_FUNCTION_2_245();
            sub_1E4035DF0(v67, v55);

            goto LABEL_27;
          }
        }

        else
        {
          sub_1E378249C();
          OUTLINED_FUNCTION_52(v65 + v44, 1, v68);
          if (!v46)
          {
            OUTLINED_FUNCTION_4_247();
            sub_1E4035768();
            OUTLINED_FUNCTION_26_113();
            sub_1E4035EA0(v49, v50);
            v69 = sub_1E4205E84();
            v35 = type metadata accessor for SportsPlayPeriod;
            sub_1E4035DF0(v62, type metadata accessor for SportsPlayPeriod);
            sub_1E325F6F0(v75, &qword_1ECF2B488);
            v51 = OUTLINED_FUNCTION_32_0();
            sub_1E4035DF0(v51, v52);
            v53 = OUTLINED_FUNCTION_102_3();
            sub_1E325F6F0(v53, v54);
            if (v69)
            {
              goto LABEL_26;
            }

            goto LABEL_24;
          }

          sub_1E325F6F0(v75, &qword_1ECF2B488);
          OUTLINED_FUNCTION_2_245();
          sub_1E4035DF0(v63, v47);
        }

        sub_1E325F6F0(v65, &qword_1ECF3EB08);
LABEL_24:
        v35 = v40;
        sub_1E402F4A4();

        OUTLINED_FUNCTION_2_245();
        sub_1E4035DF0(v67, v48);
        goto LABEL_27;
      }

      sub_1E325F6F0(v66, &qword_1ECF2B488);
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_5_0();

  v77 = sub_1E4033414(v56);
  sub_1E4033370(&v77);

  v57 = v77;
  if (v76 != 3)
  {
    v77 = v76;
    v78 = 0u;
    v79 = 0u;
    v80 = 4;
    OUTLINED_FUNCTION_90_2();
    v58(v35);
    sub_1E3954164(&v77, 0x7FFFFFFFFFFFFFFFLL, v35, v70);
    OUTLINED_FUNCTION_6_213();
    sub_1E4035D98();
    v59 = *(v57 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v59 >= *(v57 + 24) >> 1)
    {
      sub_1E403244C(isUniquelyReferenced_nonNull_native, v59 + 1, 1, v57);
    }

    sub_1E403375C(0, 0, 1, v71);
    OUTLINED_FUNCTION_1_280();
    sub_1E4035DF0(v70, v61);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E4030B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_155();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB18);
  OUTLINED_FUNCTION_17_2(v25);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;
  v29 = type metadata accessor for SportsPlayIndex(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  (*(v38 + 16))(v22, v21, v36);
  if ((*(v38 + 88))(v22, v36) != *MEMORY[0x1E69D3D88])
  {
    (*(v38 + 8))(v22, v36);
LABEL_13:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v40 = OUTLINED_FUNCTION_44_5();
  v42 = sub_1E4030F64(v40, v41);
  if (!sub_1E32AE9B0(v42))
  {

    goto LABEL_13;
  }

  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x1E6911E60](0, v42);
LABEL_6:
    v44 = v43;

    if (sub_1E40310B0())
    {
    }

    else
    {
      v45 = v44;
      sub_1E3FE0F40();
      OUTLINED_FUNCTION_52(v28, 1, v29);
      if (v46)
      {

        sub_1E325F6F0(v28, &qword_1ECF3EB18);
      }

      else
      {
        OUTLINED_FUNCTION_24_107();
        sub_1E4035768();
        type metadata accessor for SportsPlayGroup(0);
        OUTLINED_FUNCTION_7_219();
        sub_1E4035D98();

        v47 = OUTLINED_FUNCTION_51_1();
        sub_1E3FDFB3C(v32, v20, v47 & 1);

        OUTLINED_FUNCTION_0_323();
        sub_1E4035DF0(v35, v48);
      }
    }

    goto LABEL_13;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v43 = *(v42 + 32);
    goto LABEL_6;
  }

  __break(1u);
}

BOOL sub_1E4030E58()
{
  v1 = v0;
  v2 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  v10 = *MEMORY[0x1E69D3D88];
  if (v9 != *MEMORY[0x1E69D3D88])
  {
    (*(v4 + 8))(v8, v2);
  }

  return v9 == v10;
}

uint64_t sub_1E4030F64(unint64_t a1, char a2)
{
  v11 = MEMORY[0x1E69E7CC0];
  v4 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      v11 = sub_1E38005A8(v9);
      sub_1E40332BC(&v11, a2 & 1);

      return v11;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E4205224();
    if (v8)
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_1E40310B0()
{
  v0 = sub_1E4205734();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E42051D4();
  if (v7)
  {
    v8 = v7;
    v9 = (*(v2 + 104))(v6, *MEMORY[0x1E69D3B48], v0);
    MEMORY[0x1EEE9AC00](v9);
    *&v12[-16] = v6;
    v10 = sub_1E3FDFA68(sub_1E3FE15F8, &v12[-32], v8);

    (*(v2 + 8))(v6, v0);
  }

  else
  {
    return 0;
  }

  return v10;
}

void sub_1E40311F8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v54 = v5;
  OUTLINED_FUNCTION_138();
  v6 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v52 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v49 - v17;
  v19 = type metadata accessor for SportsPlayPeriod();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v51 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v49 - v23;
  v25 = sub_1E4205214();
  if (v25)
  {
    v26 = v25;
    v50 = v3;
    v53 = v24;
    v27 = sub_1E4205294();

    v28 = type metadata accessor for SportsPlayProcessor(0);
    v29 = *(v28 + 20);
    (*(v8 + 16))(v1, v2 + v29, v6);
    v30 = v27;
    sub_1E385BAA0();
    OUTLINED_FUNCTION_16_151(v18);
    if (!v38)
    {
      v49[1] = v29;
      OUTLINED_FUNCTION_4_247();
      sub_1E4035768();
      v31 = *(v28 + 24);
      v49[0] = v2;
      v32 = *(v2 + v31);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_251();
      sub_1E4035D98();
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v19);
      v36 = *(v50 + 48);
      v37 = v54;
      sub_1E378249C();
      sub_1E378249C();
      OUTLINED_FUNCTION_16_151(v37);
      if (v38)
      {
        sub_1E325F6F0(v15, &qword_1ECF2B488);
        OUTLINED_FUNCTION_16_151(v37 + v36);
        v39 = v53;
        if (v38)
        {
          sub_1E325F6F0(v37, &qword_1ECF2B488);
LABEL_16:
          OUTLINED_FUNCTION_2_245();
          sub_1E4035DF0(v39, v48);

          goto LABEL_17;
        }
      }

      else
      {
        v50 = v32;
        v40 = v52;
        sub_1E378249C();
        OUTLINED_FUNCTION_16_151(v37 + v36);
        if (!v41)
        {
          OUTLINED_FUNCTION_4_247();
          v44 = v51;
          sub_1E4035768();
          OUTLINED_FUNCTION_26_113();
          sub_1E4035EA0(v45, v46);
          v47 = sub_1E4205E84();
          sub_1E4035DF0(v44, type metadata accessor for SportsPlayPeriod);
          sub_1E325F6F0(v15, &qword_1ECF2B488);
          sub_1E4035DF0(v40, type metadata accessor for SportsPlayPeriod);
          sub_1E325F6F0(v37, &qword_1ECF2B488);
          v39 = v53;
          if (v47)
          {
            goto LABEL_16;
          }

          goto LABEL_14;
        }

        sub_1E325F6F0(v15, &qword_1ECF2B488);
        OUTLINED_FUNCTION_2_245();
        sub_1E4035DF0(v40, v42);
        v39 = v53;
      }

      sub_1E325F6F0(v37, &qword_1ECF3EB08);
LABEL_14:
      sub_1E402F4A4();

      OUTLINED_FUNCTION_2_245();
      sub_1E4035DF0(v39, v43);
      goto LABEL_17;
    }

    sub_1E325F6F0(v18, &qword_1ECF2B488);
  }

LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40316A4()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v0;
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v44[1] = type metadata accessor for SportsPlayIndex.IndexType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_3();
  v45 = v11;
  OUTLINED_FUNCTION_138();
  v12 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB18);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v44 - v21;
  v23 = type metadata accessor for SportsPlayIndex(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = v2;
  sub_1E3FE0F40();
  OUTLINED_FUNCTION_52(v22, 1, v23);
  if (!v29)
  {
    OUTLINED_FUNCTION_24_107();
    sub_1E4035768();
    if (sub_1E40310B0())
    {
      OUTLINED_FUNCTION_102_3();
      sub_1E4031B08();
LABEL_14:
      OUTLINED_FUNCTION_0_323();
      sub_1E4035DF0(v27, v43);
      goto LABEL_15;
    }

    v34 = type metadata accessor for SportsPlayProcessor(0);
    v35 = v46;
    (*(v14 + 16))(v18, v46 + *(v34 + 20), v12);
    if ((*(v14 + 88))(v18, v12) == *MEMORY[0x1E69D3D88])
    {
      v36 = v45;
      sub_1E4035D98();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC38) + 48);
        sub_1E4205B24();
        OUTLINED_FUNCTION_2();
        (*(v38 + 8))(v36 + v37);
        OUTLINED_FUNCTION_102_3();
        sub_1E4032034();
        goto LABEL_14;
      }

      sub_1E4035DF0(v36, type metadata accessor for SportsPlayIndex.IndexType);
    }

    else
    {
      (*(v14 + 8))(v18, v12);
    }

    v39 = *v35;
    v40 = *(v35 + *(v34 + 36));
    v47 = v28;
    v48 = v39;
    v49 = v40;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v41 = v40;
    v42 = v28;

    sub_1E402E1F8();

    goto LABEL_14;
  }

  sub_1E325F6F0(v22, &qword_1ECF3EB18);
  v30 = sub_1E3E37F30();
  (*(v5 + 16))(v9, v30, v3);
  v31 = sub_1E41FFC94();
  v32 = sub_1E42067E4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1E323F000, v31, v32, "SportsPlayProcessor: Failed to create SportsPlayIndex for play: skipping play", v33, 2u);
    MEMORY[0x1E69143B0](v33, -1, -1);
  }

  (*(v5 + 8))(v9, v3);
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4031B08()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAD8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_42_70();
  v8 = type metadata accessor for SportsSeeAllPlayModel();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  v57 = v10;
  v11 = OUTLINED_FUNCTION_138();
  type metadata accessor for SportsPlayIndex.IndexType(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  v16 = type metadata accessor for SportsPlayIndex(0);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_3();
  v58 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_93_2();
  v21 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v60 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_3();
  v59 = v24;
  v25 = sub_1E4205214();
  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = v25;
  v27 = sub_1E4205294();

  v56 = sub_1E4205534();
  LOBYTE(v26) = v28;

  if (v26)
  {
    goto LABEL_11;
  }

  v29 = sub_1E4205214();
  if (!v29)
  {
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v21);
    goto LABEL_10;
  }

  v30 = v29;
  v31 = sub_1E4205294();

  sub_1E4205504();
  OUTLINED_FUNCTION_52(v1, 1, v21);
  if (v32)
  {
LABEL_10:
    sub_1E325F6F0(v1, &qword_1ECF2BD90);
    goto LABEL_11;
  }

  (*(v60 + 32))(v59, v1, v21);
  v33 = sub_1E4205214();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1E4205294();

    v36 = sub_1E42054F4();
    if (v36)
    {
      v37 = sub_1E4205534();
      v39 = v38;

      if ((v39 & 1) == 0)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC38);
        v43 = *(v42 + 48);
        v44 = *(v42 + 64);
        *v15 = v56;
        (*(v60 + 16))(v15 + v43, v59, v21);
        *(v15 + v44) = v37;
        swift_storeEnumTagMultiPayload();
        sub_1E3FE138C();
        v45 = *(v3 + *(type metadata accessor for SportsPlayProcessor(0) + 24));
        OUTLINED_FUNCTION_5_0();
        v46 = *(v45 + 16);

        sub_1E402E4F0(v58, v46, v2);

        OUTLINED_FUNCTION_52(v2, 1, v8);
        if (v32)
        {
          sub_1E325F6F0(v2, &qword_1ECF3DAD8);
        }

        else
        {
          OUTLINED_FUNCTION_5_230();
          sub_1E4035768();
          OUTLINED_FUNCTION_5_0();
          if (*(v45 + 24) == *(v57 + 48))
          {
            OUTLINED_FUNCTION_31_88();
            v48 = v47;
            v49 = v5;

            sub_1E402ED2C();

            OUTLINED_FUNCTION_1_280();
            sub_1E4035DF0(v57, v50);
LABEL_20:
            OUTLINED_FUNCTION_0_323();
            sub_1E4035DF0(v58, v55);
            (*(v60 + 8))(v59, v21);
            goto LABEL_12;
          }

          OUTLINED_FUNCTION_1_280();
          sub_1E4035DF0(v57, v51);
        }

        OUTLINED_FUNCTION_31_88();
        v53 = v52;
        v54 = v5;

        sub_1E402E1F8();

        goto LABEL_20;
      }
    }
  }

  (*(v60 + 8))(v59, v21);
LABEL_11:
  v40 = *(v3 + *(type metadata accessor for SportsPlayProcessor(0) + 36));
  v41 = v5;

  sub_1E402E1F8();

LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4032034()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SportsPlayIndex(0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAD8);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  type metadata accessor for SportsSeeAllPlayModel();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v17 = *(v2 + *(type metadata accessor for SportsPlayProcessor(0) + 24));
  OUTLINED_FUNCTION_5_0();
  v18 = *(v17 + 16);

  sub_1E402E4F0(v4, v18, v15);

  OUTLINED_FUNCTION_16_151(v15);
  if (v19)
  {
    sub_1E325F6F0(v15, &qword_1ECF3DAD8);
LABEL_7:
    type metadata accessor for SportsPlayGroup(0);
    OUTLINED_FUNCTION_7_219();
    sub_1E4035D98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1E4298880;
    *(v26 + 32) = v6;
    v27 = v6;
    v28 = OUTLINED_FUNCTION_51_1();
    v29 = sub_1E3FDFB3C(v11, v26, v28 & 1);
    v30 = *v2;
    v32 = v29;
    v33 = v30;
    OUTLINED_FUNCTION_43_66();

    OUTLINED_FUNCTION_50_53();
    sub_1E402E1F8();

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_5_230();
  OUTLINED_FUNCTION_210();
  sub_1E4035768();
  v20 = v1[1];
  v34 = *v1;
  *v35 = v20;
  *&v35[9] = *(v1 + 25);
  v21 = sub_1E395492C();
  if (!v21)
  {
    OUTLINED_FUNCTION_1_280();
    sub_1E4035DF0(v1, v25);
    goto LABEL_7;
  }

  v22 = v21;
  sub_1E3FDFEA4(v6);
  v23 = *v2;
  v32 = v22;
  v33 = v23;
  OUTLINED_FUNCTION_43_66();

  OUTLINED_FUNCTION_50_53();
  sub_1E402E1F8();

  OUTLINED_FUNCTION_1_280();
  sub_1E4035DF0(v1, v24);
LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

size_t sub_1E40322C8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E4032354(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_1E4032314(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E4032354(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

size_t sub_1E4032354(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1E4032538(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E403273C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1E403244C(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1E4032640(v8, v7);
  v10 = *(type metadata accessor for SportsSeeAllPlayModel() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3FD58E0(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1E4032538(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB48);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1E4032640(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA38);
  v4 = *(type metadata accessor for SportsSeeAllPlayModel() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E403273C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1E4032828(uint64_t a1)
{
  type metadata accessor for SportsPlayIndex(0);
  sub_1E4035EA0(&qword_1ECF2EC20, type metadata accessor for SportsPlayIndex);
  v2 = sub_1E4205DA4();

  return sub_1E4032D9C(a1, v2);
}

BOOL sub_1E40328C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8);
  v3 = *(a1 + *(v2 + 48));
  return v3 == sub_1E39543F4(v2);
}

uint64_t sub_1E403294C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4032828(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB50);
    sub_1E4207644();
    v7 = *(v14 + 48);
    v8 = type metadata accessor for SportsPlayIndex(0);
    sub_1E4035DF0(v7 + *(*(v8 - 8) + 72) * v6, type metadata accessor for SportsPlayIndex);
    v9 = type metadata accessor for SportsSeeAllPlayModel();
    sub_1E4035768();
    sub_1E4035EA0(&qword_1ECF2EC20, type metadata accessor for SportsPlayIndex);
    sub_1E4207664();
    *v2 = v14;
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for SportsSeeAllPlayModel();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_1E4032AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SportsPlayIndex(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = sub_1E4032828(a2);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB50);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E4032828(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v3;
  if (v13)
  {
    v17 = *(v16 + 56);
    v18 = v17 + *(*(type metadata accessor for SportsSeeAllPlayModel() - 8) + 72) * v12;

    return sub_1E4035D34(a1, v18);
  }

  else
  {
    sub_1E4035D98();
    return sub_1E4032CB0(v12, v8, a1, v16);
  }
}

uint64_t sub_1E4032CB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  type metadata accessor for SportsPlayIndex(0);
  sub_1E4035768();
  type metadata accessor for SportsSeeAllPlayModel();
  result = sub_1E4035768();
  v6 = *(a4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v8;
  }

  return result;
}

unint64_t sub_1E4032D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsPlayIndex(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ~(-1 << *(v2 + 32));
  for (i = a2 & v7; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    sub_1E4035D98();
    sub_1E4035EA0(&qword_1ECF3DC58, type metadata accessor for SportsPlayIndex);
    v9 = sub_1E4205E84();
    sub_1E4035DF0(v6, type metadata accessor for SportsPlayIndex);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E4032F54(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = *v4;
  result = sub_1E402F2A8(a1, a2, *v4);
  if (!v3)
  {
    if (v15)
    {
      return *(v13 + 16);
    }

    else
    {
      v26 = a1;
      v23 = v4;
      v16 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_27:
        __break(1u);
      }

      else
      {
        v24 = a2;
        v25 = v8;
        while (1)
        {
          v17 = *(v13 + 16);
          if (v16 == v17)
          {
            break;
          }

          if (v16 >= v17)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v18 = *(v8 + 72);
          v30 = v16;
          v28 = v18 * v16;
          v29 = result;
          sub_1E378249C();
          v19 = v26(v12);
          sub_1E325F6F0(v12, &qword_1ECF3EAF8);
          if (v19)
          {
            result = v29;
            v8 = v25;
            v20 = v30;
          }

          else
          {
            result = v29;
            v20 = v30;
            if (v30 == v29)
            {
              v8 = v25;
            }

            else
            {
              if ((v29 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              v21 = *(v13 + 16);
              if (v29 >= v21)
              {
                goto LABEL_24;
              }

              result = sub_1E378249C();
              if (v30 >= v21)
              {
                goto LABEL_25;
              }

              sub_1E378249C();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v13 = sub_1E4032F40(v13);
              }

              result = sub_1E4035E48();
              if (v30 >= *(v13 + 16))
              {
                goto LABEL_26;
              }

              sub_1E4035E48();
              v20 = v30;
              *v23 = v13;
              v8 = v25;
              result = v29;
            }

            ++result;
          }

          v16 = v20 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E40332BC(uint64_t *a1, char a2)
{
  v3 = a2 & 1;
  *(swift_allocObject() + 16) = a2 & 1;
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1E34AF5E0(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1E40338CC(v8, v3);
  sub_1E4207554();
}

void sub_1E4033370(size_t *a1)
{
  v2 = type metadata accessor for SportsSeeAllPlayModel();
  OUTLINED_FUNCTION_17_2(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1E4035D20(v5);
  }

  v6 = *(v5 + 16);
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  sub_1E40339F0(v7);
  *a1 = v5;
}

size_t sub_1E4033414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1E4032640(*(a1 + 16), 0);
  v4 = *(type metadata accessor for SportsSeeAllPlayModel() - 8);
  sub_1E4035ABC(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  v6 = v5;

  sub_1E34AF4DC();
  if (v6 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

int64_t sub_1E4033508(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1E40336F4(result, 1);
  v8 = *v2;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_1E403273C(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E4033644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1E40336F4(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E4032354(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E403375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for SportsSeeAllPlayModel();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v15 + v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = sub_1E3FD58E0(v14 + v12 * a2, v18 - a2, v15 + v12 * a3);
      v19 = *(v9 + 16);
      v20 = __OFADD__(v19, v16);
      v21 = v19 + v16;
      if (!v20)
      {
        *(v9 + 16) = v21;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v12 * a3 < 1)
  {
    return sub_1E325F6F0(a4, &qword_1ECF3EB00);
  }

  for (i = 0; (i & 1) == 0; i = 1)
  {
    result = sub_1E4035D98();
    v15 += v12;
    if (v15 >= v17)
    {
      return sub_1E325F6F0(a4, &qword_1ECF3EB00);
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1E40338CC(uint64_t *a1, char a2)
{
  v4 = a2 & 1;
  *(swift_allocObject() + 16) = a2 & 1;
  v5 = a1[1];
  v6 = sub_1E4207914();
  if (v6 < v5)
  {
    v7 = v6;
    v8 = sub_1E37FE4E4(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);
    sub_1E4033EE0(v10, v11, a1, v7, v4);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1E4033B1C(0, v5, 1, a1, v4);
  }
}

void sub_1E40339F0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1E4207914();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for SportsSeeAllPlayModel();
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7 = type metadata accessor for SportsSeeAllPlayModel();
      OUTLINED_FUNCTION_17_2(v7);
      v9[0] = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v9[1] = v5;
      sub_1E40346B8(v9, v10, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1E4033CA4(0, v2, 1, a1);
  }
}

void sub_1E4033B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  *(swift_allocObject() + 16) = a5 & 1;
  v27 = a2;
  if (a3 != a2)
  {
    v9 = *a4;
    v10 = *a4 + 8 * a3 - 8;
    v11 = a1 - a3;
    while (2)
    {
      v30 = a3;
      v12 = *(v9 + 8 * a3);
      v28 = v11;
      v29 = v10;
      v13 = v11;
      do
      {
        v14 = *v10;
        v15 = v12;
        v16 = v14;
        LOBYTE(v14) = sub_1E41FE884();
        v18 = sub_1E4205224();
        if (v14)
        {
          if (v17)
          {
            goto LABEL_18;
          }

          v19 = sub_1E4205224();
          if (v20)
          {
            goto LABEL_19;
          }

          v21 = v19;

          if (v18 >= v21)
          {
            break;
          }
        }

        else
        {
          if (v17)
          {
            goto LABEL_21;
          }

          v22 = sub_1E4205224();
          if (v23)
          {
            goto LABEL_20;
          }

          v24 = v22;

          if (v24 >= v18)
          {
            break;
          }
        }

        if (!v9)
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          return;
        }

        v25 = *v10;
        v12 = *(v10 + 8);
        *v10 = v12;
        *(v10 + 8) = v25;
        v10 -= 8;
      }

      while (!__CFADD__(v13++, 1));
      a3 = v30 + 1;
      v10 = v29 + 8;
      v11 = v28 - 1;
      if (v30 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E4033CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for SportsSeeAllPlayModel();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v31 = v18;
      v32 = a3;
      v29 = v21;
      v30 = v20;
      do
      {
        sub_1E4035D98();
        sub_1E4035D98();
        v22 = *(v15 + 6);
        v23 = *(v11 + 6);
        OUTLINED_FUNCTION_14_171();
        sub_1E4035DF0(v11, v24);
        sub_1E4035DF0(v15, type metadata accessor for SportsSeeAllPlayModel);
        if (v23 >= v22)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        sub_1E4035768();
        swift_arrayInitWithTakeFrontToBack();
        sub_1E4035768();
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v32 + 1;
      v18 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E4033EE0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v137 = a5 & 1;
  *(swift_allocObject() + 16) = a5 & 1;
  v132 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v122 = a4;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      v126 = v9;
      if (v9 + 1 >= v8)
      {
        goto LABEL_39;
      }

      v129 = v8;
      v13 = *v132;
      v14 = v9 + 1;
      v15 = *(*v132 + 8 * v9);
      v16 = *(*v132 + 8 * v12);
      v17 = v15;
      v5 = sub_1E41FE884();
      v19 = sub_1E4205224();
      v123 = v10;
      if (v5)
      {
        if (v18)
        {
          goto LABEL_165;
        }

        v20 = sub_1E4205224();
        if (v21)
        {
          goto LABEL_166;
        }

        v22 = v19 < v20;
      }

      else
      {
        if (v18)
        {
          goto LABEL_168;
        }

        v23 = sub_1E4205224();
        if (v24)
        {
          goto LABEL_167;
        }

        v22 = v23 < v19;
      }

      v25 = v22;
      v127 = v25;

      v26 = v13 + 8 * v11;
      v27 = 8 * v11;
      v28 = (v26 + 16);
      v29 = v27 + 8;
      v12 = v14;
      v30 = v129;
      do
      {
        v31 = v12;
        v32 = v29;
        if (++v12 >= v30)
        {
          break;
        }

        v134 = v12;
        v33 = *(v28 - 1);
        v34 = *v28;
        v35 = v33;
        v5 = sub_1E41FE884();
        v37 = sub_1E4205224();
        if (v5)
        {
          if (v36)
          {
            goto LABEL_160;
          }

          v38 = sub_1E4205224();
          if (v39)
          {
            goto LABEL_161;
          }

          v40 = v38;

          v41 = v37 < v40;
        }

        else
        {
          if (v36)
          {
            goto LABEL_158;
          }

          v42 = sub_1E4205224();
          if (v43)
          {
            goto LABEL_159;
          }

          v44 = v42;

          v41 = v44 < v37;
        }

        v45 = v41;
        ++v28;
        v29 = v32 + 8;
        v46 = v127 == v45;
        v12 = v134;
        v30 = v129;
      }

      while (v46);
      if (!v127)
      {
        break;
      }

      v47 = v126;
      v10 = v123;
      if (v12 < v126)
      {
        goto LABEL_148;
      }

      if (v126 < v12)
      {
        v48 = v12;
        do
        {
          if (v47 != v31)
          {
            v49 = *v132;
            if (!*v132)
            {
              goto LABEL_163;
            }

            v50 = *(v49 + v27);
            *(v49 + v27) = *(v49 + v32);
            *(v49 + v32) = v50;
          }

          ++v47;
          v32 -= 8;
          v27 += 8;
          v22 = v47 < v31--;
        }

        while (v22);
        v12 = v48;
        goto LABEL_37;
      }

      v11 = v126;
LABEL_39:
      v51 = v132[1];
      if (v12 >= v51)
      {
        goto LABEL_63;
      }

      v52 = v12;
      v90 = __OFSUB__(v12, v11);
      v53 = v12 - v11;
      if (v90)
      {
        goto LABEL_147;
      }

      if (v53 < v122)
      {
        if (__OFADD__(v11, v122))
        {
          goto LABEL_149;
        }

        if (v11 + v122 < v51)
        {
          v51 = v11 + v122;
        }

        if (v51 >= v11)
        {
          v12 = v52;
          if (v52 == v51)
          {
            goto LABEL_63;
          }

          v128 = v51;
          v124 = v10;
          v54 = *v132;
          v55 = v11 - v52;
          v56 = *v132 + 8 * v52 - 8;
LABEL_48:
          v135 = v12;
          v57 = *(v54 + 8 * v12);
          v58 = v55;
          v130 = v56;
          while (1)
          {
            v59 = *v56;
            v60 = v57;
            v61 = v59;
            v5 = sub_1E41FE884();
            v63 = sub_1E4205224();
            if (v5)
            {
              if (v62)
              {
                goto LABEL_154;
              }

              v64 = sub_1E4205224();
              if (v65)
              {
                goto LABEL_153;
              }

              v66 = v64;

              if (v63 >= v66)
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (v62)
              {
                goto LABEL_156;
              }

              v67 = sub_1E4205224();
              if (v68)
              {
                goto LABEL_155;
              }

              v69 = v67;

              if (v69 >= v63)
              {
                goto LABEL_60;
              }
            }

            if (!v54)
            {
              break;
            }

            v70 = *v56;
            v57 = *(v56 + 8);
            *v56 = v57;
            *(v56 + 8) = v70;
            v56 -= 8;
            if (__CFADD__(v58++, 1))
            {
LABEL_60:
              v12 = v135 + 1;
              v56 = v130 + 8;
              --v55;
              if (v135 + 1 == v128)
              {
                v11 = v126;
                v12 = v128;
                v10 = v124;
                goto LABEL_63;
              }

              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
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
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

LABEL_150:
        __break(1u);
LABEL_151:
        v10 = sub_1E37FFF5C(v10);
        goto LABEL_118;
      }

      v12 = v52;
LABEL_63:
      if (v12 < v11)
      {
        goto LABEL_146;
      }

      v136 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1E37FFF70(0, *(v10 + 16) + 1, 1, v10);
      }

      v73 = *(v10 + 16);
      v72 = *(v10 + 24);
      v74 = v73 + 1;
      v75 = v136;
      if (v73 >= v72 >> 1)
      {
        v114 = sub_1E37FFF70((v72 > 1), v73 + 1, 1, v10);
        v75 = v136;
        v10 = v114;
      }

      *(v10 + 16) = v74;
      v76 = v10 + 32;
      v77 = (v10 + 32 + 16 * v73);
      *v77 = v126;
      v77[1] = v75;
      v131 = *a1;
      if (!*a1)
      {
        goto LABEL_164;
      }

      if (v73)
      {
        while (1)
        {
          v5 = v74 - 1;
          v78 = (v76 + 16 * (v74 - 1));
          v79 = (v10 + 16 * v74);
          if (v74 >= 4)
          {
            break;
          }

          if (v74 == 3)
          {
            v80 = *(v10 + 32);
            v81 = *(v10 + 40);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_83:
            if (v83)
            {
              goto LABEL_133;
            }

            v95 = *v79;
            v94 = v79[1];
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_136;
            }

            v99 = v78[1];
            v100 = v99 - *v78;
            if (__OFSUB__(v99, *v78))
            {
              goto LABEL_139;
            }

            if (__OFADD__(v97, v100))
            {
              goto LABEL_141;
            }

            if (v97 + v100 >= v82)
            {
              if (v82 < v100)
              {
                v5 = v74 - 2;
              }

              goto LABEL_105;
            }

            goto LABEL_98;
          }

          if (v74 < 2)
          {
            goto LABEL_135;
          }

          v102 = *v79;
          v101 = v79[1];
          v90 = __OFSUB__(v101, v102);
          v97 = v101 - v102;
          v98 = v90;
LABEL_98:
          if (v98)
          {
            goto LABEL_138;
          }

          v104 = *v78;
          v103 = v78[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_140;
          }

          if (v105 < v97)
          {
            goto LABEL_112;
          }

LABEL_105:
          if (v5 - 1 >= v74)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
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
            goto LABEL_150;
          }

          if (!*v132)
          {
            goto LABEL_157;
          }

          v109 = v10;
          v110 = (v76 + 16 * (v5 - 1));
          v111 = *v110;
          v112 = (v76 + 16 * v5);
          v10 = v112[1];
          sub_1E4034F24((*v132 + 8 * *v110), (*v132 + 8 * *v112), (*v132 + 8 * v10), v131, v137);
          if (v133)
          {

            return;
          }

          if (v10 < v111)
          {
            goto LABEL_128;
          }

          v113 = *(v109 + 16);
          if (v5 > v113)
          {
            goto LABEL_129;
          }

          *v110 = v111;
          v110[1] = v10;
          if (v5 >= v113)
          {
            goto LABEL_130;
          }

          v133 = 0;
          v74 = v113 - 1;
          memmove((v76 + 16 * v5), v112 + 2, 16 * (v113 - 1 - v5));
          v10 = v109;
          *(v109 + 16) = v113 - 1;
          if (v113 <= 2)
          {
            goto LABEL_112;
          }
        }

        v84 = v76 + 16 * v74;
        v85 = *(v84 - 64);
        v86 = *(v84 - 56);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_131;
        }

        v89 = *(v84 - 48);
        v88 = *(v84 - 40);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_132;
        }

        v91 = v79[1];
        v92 = v91 - *v79;
        if (__OFSUB__(v91, *v79))
        {
          goto LABEL_134;
        }

        v90 = __OFADD__(v82, v92);
        v93 = v82 + v92;
        if (v90)
        {
          goto LABEL_137;
        }

        if (v93 >= v87)
        {
          v107 = *v78;
          v106 = v78[1];
          v90 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v90)
          {
            goto LABEL_145;
          }

          if (v82 < v108)
          {
            v5 = v74 - 2;
          }

          goto LABEL_105;
        }

        goto LABEL_83;
      }

LABEL_112:
      v8 = v132[1];
      v9 = v136;
      if (v136 >= v8)
      {
        goto LABEL_116;
      }
    }

    v10 = v123;
LABEL_37:
    v11 = v126;
    goto LABEL_39;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_116:
  v5 = *a1;
  if (!*a1)
  {
LABEL_169:
    __break(1u);
    return;
  }

  *(swift_allocObject() + 16) = v137;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_151;
  }

LABEL_118:
  v115 = (v10 + 16);
  v116 = *(v10 + 16);
  while (v116 >= 2)
  {
    if (!*v132)
    {
      goto LABEL_162;
    }

    v117 = v10;
    v10 += 16 * v116;
    v118 = *v10;
    v119 = &v115[2 * v116];
    v120 = v119[1];
    sub_1E4034F24((*v132 + 8 * *v10), (*v132 + 8 * *v119), (*v132 + 8 * v120), v5, v137);
    if (v133)
    {
      break;
    }

    if (v120 < v118)
    {
      goto LABEL_142;
    }

    if (v116 - 2 >= *v115)
    {
      goto LABEL_143;
    }

    *v10 = v118;
    *(v10 + 8) = v120;
    v121 = *v115 - v116;
    if (*v115 < v116)
    {
      goto LABEL_144;
    }

    v133 = 0;
    v116 = *v115 - 1;
    memmove(v119, v119 + 2, 16 * v121);
    *v115 = v116;
    v10 = v117;
  }
}

void sub_1E40346B8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for SportsSeeAllPlayModel();
  OUTLINED_FUNCTION_0_10();
  v122 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  v129 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v128 = v14;
  v125 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v129 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v98 = v17 + 16;
      v99 = *(v17 + 2);
      while (v99 >= 2)
      {
        if (!*v125)
        {
          goto LABEL_138;
        }

        v100 = v5;
        v101 = v17;
        v5 = &v17[16 * v99];
        v102 = *v5;
        v103 = &v98[2 * v99];
        v104 = v103[1];
        sub_1E403524C(*v125 + *(v122 + 72) * *v5, *v125 + *(v122 + 72) * *v103, *v125 + *(v122 + 72) * v104, v129);
        v17 = v100;
        if (v100)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_126;
        }

        if (v99 - 2 >= *v98)
        {
          goto LABEL_127;
        }

        *v5 = v102;
        *(v5 + 1) = v104;
        v105 = *v98 - v99;
        if (*v98 < v99)
        {
          goto LABEL_128;
        }

        v99 = *v98 - 1;
        memmove(v103, v103 + 2, 16 * v105);
        *v98 = v99;
        v5 = 0;
        v17 = v101;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v17 = sub_1E37FFF5C(v17);
    goto LABEL_102;
  }

  v106 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16 + 1;
    if (v16 + 1 < v15)
    {
      v107 = v17;
      v109 = v5;
      v5 = (v16 + 1);
      v19 = *v125;
      v20 = *(v122 + 72);
      v21 = *v125 + v20 * (v16 + 1);
      OUTLINED_FUNCTION_15_164();
      v120 = v22;
      sub_1E4035D98();
      sub_1E4035D98();
      v116 = *(v129 + 48);
      v118 = *(v128 + 48);
      OUTLINED_FUNCTION_13_177();
      sub_1E4035DF0(v129, v23);
      v24 = OUTLINED_FUNCTION_138_0();
      sub_1E4035DF0(v24, v25);
      v26 = v120;
      v111 = v16;
      v27 = (v16 + 2);
      v123 = v20;
      v28 = v19 + v20 * (v16 + 2);
      v18 = v5;
      while (1)
      {
        v17 = v27;
        if (++v18 >= v26)
        {
          break;
        }

        OUTLINED_FUNCTION_15_164();
        sub_1E4035D98();
        v5 = v129;
        sub_1E4035D98();
        v29 = *(v128 + 48);
        v30 = *(v129 + 48);
        OUTLINED_FUNCTION_13_177();
        sub_1E4035DF0(v129, v31);
        v32 = OUTLINED_FUNCTION_138_0();
        sub_1E4035DF0(v32, v33);
        v26 = v120;
        v28 += v123;
        v21 += v123;
        v27 = v17 + 1;
        if (v116 < v118 == v30 >= v29)
        {
          goto LABEL_9;
        }
      }

      v18 = v26;
LABEL_9:
      if (v116 >= v118)
      {
        v17 = v107;
        v5 = v109;
      }

      else
      {
        v16 = v111;
        if (v18 < v111)
        {
          goto LABEL_132;
        }

        if (v111 >= v18)
        {
          v17 = v107;
          v5 = v109;
          goto LABEL_32;
        }

        if (v26 >= v17)
        {
          v34 = v17;
        }

        else
        {
          v34 = v26;
        }

        v35 = v123 * (v34 - 1);
        v36 = v123 * v34;
        v37 = v111 * v123;
        v38 = v111;
        v39 = v18;
        v5 = v109;
        do
        {
          if (v38 != --v39)
          {
            v40 = v18;
            v41 = *v125;
            if (!*v125)
            {
              goto LABEL_139;
            }

            OUTLINED_FUNCTION_5_230();
            sub_1E4035768();
            v42 = v37 < v35 || v41 + v37 >= (v41 + v36);
            if (v42)
            {
              OUTLINED_FUNCTION_46_59();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v37 != v35)
            {
              OUTLINED_FUNCTION_46_59();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1E4035768();
            v18 = v40;
          }

          ++v38;
          v35 -= v123;
          v36 -= v123;
          v37 += v123;
        }

        while (v38 < v39);
        v17 = v107;
      }

      v16 = v111;
    }

LABEL_32:
    v43 = v125[1];
    if (v18 < v43)
    {
      if (__OFSUB__(v18, v16))
      {
        goto LABEL_131;
      }

      if (v18 - v16 < v106)
      {
        break;
      }
    }

LABEL_48:
    if (v18 < v16)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1E37FFF70(0, *(v17 + 2) + 1, 1, v17);
    }

    v57 = *(v17 + 2);
    v56 = *(v17 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v17 = sub_1E37FFF70((v56 > 1), v57 + 1, 1, v17);
    }

    *(v17 + 2) = v58;
    v59 = v17 + 32;
    v60 = &v17[16 * v57 + 32];
    *v60 = v16;
    *(v60 + 1) = v18;
    v127 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        v62 = &v59[16 * v58 - 16];
        v63 = &v17[16 * v58];
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v64 = *(v17 + 4);
          v65 = *(v17 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_68:
          if (v67)
          {
            goto LABEL_117;
          }

          v79 = *v63;
          v78 = *(v63 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_120;
          }

          v83 = *(v62 + 1);
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_125;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v58 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v58 < 2)
        {
          goto LABEL_119;
        }

        v86 = *v63;
        v85 = *(v63 + 1);
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_83:
        if (v82)
        {
          goto LABEL_122;
        }

        v88 = *v62;
        v87 = *(v62 + 1);
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_124;
        }

        if (v89 < v81)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v61 - 1 >= v58)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v125)
        {
          goto LABEL_137;
        }

        v93 = &v59[16 * v61 - 16];
        v94 = *v93;
        v95 = &v59[16 * v61];
        v96 = *(v95 + 1);
        sub_1E403524C(*v125 + *(v122 + 72) * *v93, *v125 + *(v122 + 72) * *v95, *v125 + *(v122 + 72) * v96, v127);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v96 < v94)
        {
          goto LABEL_112;
        }

        v5 = v17;
        v17 = *(v17 + 2);
        if (v61 > v17)
        {
          goto LABEL_113;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        if (v61 >= v17)
        {
          goto LABEL_114;
        }

        v58 = (v17 - 1);
        memmove(&v59[16 * v61], v95 + 16, 16 * &v17[-v61 - 1]);
        *(v5 + 2) = v17 - 1;
        v97 = v17 > 2;
        v17 = v5;
        v5 = 0;
        if (!v97)
        {
          goto LABEL_97;
        }
      }

      v68 = &v59[16 * v58];
      v69 = *(v68 - 8);
      v70 = *(v68 - 7);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_115;
      }

      v73 = *(v68 - 6);
      v72 = *(v68 - 5);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_116;
      }

      v75 = *(v63 + 1);
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_118;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_121;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = *(v62 + 1);
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_129;
        }

        if (v66 < v92)
        {
          v61 = v58 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v16 = v18;
    v15 = v125[1];
    if (v18 >= v15)
    {
      goto LABEL_100;
    }
  }

  v44 = v16 + v106;
  if (__OFADD__(v16, v106))
  {
    goto LABEL_133;
  }

  if (v44 >= v43)
  {
    v44 = v125[1];
  }

  if (v44 < v16)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v18 == v44)
  {
    goto LABEL_48;
  }

  v108 = v17;
  v110 = v5;
  v45 = *(v122 + 72);
  v46 = *v125 + v45 * (v18 - 1);
  v47 = -v45;
  v112 = v16;
  v48 = v16 - v18;
  v126 = *v125;
  v114 = v45;
  v115 = v44;
  v49 = *v125 + v18 * v45;
LABEL_41:
  v124 = v18;
  v117 = v49;
  v119 = v48;
  v121 = v46;
  v50 = v46;
  while (1)
  {
    sub_1E4035D98();
    sub_1E4035D98();
    v51 = *(v128 + 48);
    v52 = *(v129 + 48);
    OUTLINED_FUNCTION_13_177();
    sub_1E4035DF0(v129, v53);
    v54 = OUTLINED_FUNCTION_32_0();
    sub_1E4035DF0(v54, v55);
    if (v52 >= v51)
    {
LABEL_46:
      ++v18;
      v46 = v121 + v114;
      v48 = v119 - 1;
      v49 = v117 + v114;
      if (v124 + 1 == v115)
      {
        v18 = v115;
        v17 = v108;
        v5 = v110;
        v16 = v112;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v126)
    {
      break;
    }

    sub_1E4035768();
    OUTLINED_FUNCTION_167();
    swift_arrayInitWithTakeFrontToBack();
    sub_1E4035768();
    v50 += v47;
    v49 += v47;
    v42 = __CFADD__(v48++, 1);
    if (v42)
    {
      goto LABEL_46;
    }
  }

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
}

uint64_t sub_1E4034F24(void **a1, id *a2, void **a3, void **a4, char a5)
{
  *(swift_allocObject() + 16) = a5 & 1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    if (a4 != a1 || &a1[v9] <= a4)
    {
      memmove(a4, a1, 8 * v9);
    }

    v12 = &a4[v9];
    while (1)
    {
      if (a4 >= v12 || a2 >= a3)
      {
        v30 = a1;
        goto LABEL_49;
      }

      v14 = a1;
      v50 = a2;
      v15 = a4;
      v16 = *a4;
      v17 = *a2;
      v18 = v16;
      v19 = sub_1E41FE884();
      result = sub_1E4205224();
      v22 = result;
      if (v19)
      {
        if (v21)
        {
          goto LABEL_58;
        }

        result = sub_1E4205224();
        if (v23)
        {
          goto LABEL_60;
        }

        v24 = result;
        v25 = v14;

        if (v22 >= v24)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v21)
        {
          goto LABEL_59;
        }

        result = sub_1E4205224();
        if (v27)
        {
          goto LABEL_61;
        }

        v28 = result;
        v25 = v14;

        if (v28 >= v22)
        {
LABEL_16:
          v26 = v15;
          a4 = v15 + 1;
          a2 = v50;
          if (v25 == v15)
          {
            goto LABEL_18;
          }

LABEL_17:
          *v25 = *v26;
          goto LABEL_18;
        }
      }

      v26 = v50;
      a2 = v50 + 1;
      a4 = v15;
      if (v25 != v50)
      {
        goto LABEL_17;
      }

LABEL_18:
      a1 = v25 + 1;
    }
  }

  if (a4 != a2 || &a2[v10] <= a4)
  {
    memmove(a4, a2, 8 * v10);
  }

  v12 = &a4[v10];
  v48 = a4;
LABEL_30:
  v30 = a2;
  v51 = a2 - 1;
  v31 = a3;
  v49 = v30;
  while (v12 > a4 && v30 > a1)
  {
    v33 = a1;
    v34 = v12 - 1;
    v35 = *v51;
    v36 = *(v12 - 1);
    v37 = v35;
    v38 = sub_1E41FE884();
    result = sub_1E4205224();
    v40 = result;
    if (v38)
    {
      if (v39)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return result;
      }

      result = sub_1E4205224();
      if (v41)
      {
        goto LABEL_62;
      }

      v42 = result;
      a1 = v33;

      a3 = v31 - 1;
      if (v40 < v42)
      {
LABEL_46:
        a4 = v48;
        v45 = v31 == v49;
        a2 = v51;
        if (!v45)
        {
          *a3 = *v51;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (v39)
      {
        goto LABEL_57;
      }

      result = sub_1E4205224();
      if (v43)
      {
        goto LABEL_63;
      }

      v44 = result;
      a1 = v33;

      a3 = v31 - 1;
      if (v44 < v40)
      {
        goto LABEL_46;
      }
    }

    v45 = v12 == v31;
    v31 = a3;
    --v12;
    a4 = v48;
    v30 = v49;
    if (!v45)
    {
      *a3 = *v34;
      v31 = a3;
      v12 = v34;
    }
  }

LABEL_49:
  v46 = v12 - a4;
  if (v30 != a4 || v30 >= &a4[v46])
  {
    memmove(v30, a4, 8 * v46);
  }

  return 1;
}

void sub_1E403524C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = a3;
  v55 = type metadata accessor for SportsSeeAllPlayModel();
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = v54 - a2;
  if (v54 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v58 = a1;
  v57 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1E3FD58E0(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v30 = v54;
    v51 = v8;
    v52 = a1;
    v50 = -v13;
    v48 = v11;
LABEL_36:
    v53 = a2;
    v54 = a2 + v28;
    v31 = v30;
    v32 = v29;
    v33 = v29;
    v49 = v29;
    while (1)
    {
      if (v27 <= a4)
      {
        v58 = a2;
        v56 = v32;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v47 = v32;
      v34 = v31 + v28;
      v35 = v27 + v28;
      OUTLINED_FUNCTION_15_164();
      v37 = v36;
      v39 = v38;
      sub_1E4035D98();
      sub_1E4035D98();
      v40 = *(v11 + 6);
      v41 = v8;
      v42 = *(v8 + 6);
      sub_1E4035DF0(v41, type metadata accessor for SportsSeeAllPlayModel);
      sub_1E4035DF0(v11, type metadata accessor for SportsSeeAllPlayModel);
      if (v42 < v40)
      {
        v44 = v39 < v53 || v34 >= v53;
        v30 = v34;
        if (v44)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v47;
          v11 = v48;
          v8 = v51;
          a1 = v52;
          v27 = v37;
          v28 = v50;
        }

        else
        {
          v29 = v47;
          v11 = v48;
          v15 = v39 == v53;
          v45 = v54;
          a2 = v54;
          v8 = v51;
          a1 = v52;
          v27 = v37;
          v28 = v50;
          if (!v15)
          {
            OUTLINED_FUNCTION_32_85();
            swift_arrayInitWithTakeBackToFront();
            v27 = v37;
            a2 = v45;
            v29 = v47;
          }
        }

        goto LABEL_36;
      }

      if (v39 < v37 || v34 >= v37)
      {
        OUTLINED_FUNCTION_32_85();
        swift_arrayInitWithTakeFrontToBack();
        v31 = v34;
        v27 = v35;
        v32 = v35;
        v8 = v51;
        a1 = v52;
        v11 = v48;
        v33 = v49;
        a2 = v53;
        v28 = v50;
      }

      else
      {
        v32 = v35;
        v15 = v37 == v39;
        v31 = v34;
        v27 = v35;
        v8 = v51;
        a1 = v52;
        v11 = v48;
        v33 = v49;
        a2 = v53;
        v28 = v50;
        if (!v15)
        {
          OUTLINED_FUNCTION_32_85();
          swift_arrayInitWithTakeBackToFront();
          v31 = v34;
          v27 = v35;
          v32 = v35;
        }
      }
    }

    v58 = a2;
    v56 = v33;
  }

  else
  {
    sub_1E3FD58E0(a1, v14 / v13, a4);
    v53 = a4 + v18 * v13;
    v56 = v53;
    while (a4 < v53 && a2 < v54)
    {
      sub_1E4035D98();
      sub_1E4035D98();
      v21 = a2;
      v22 = *(v11 + 6);
      v23 = *(v8 + 6);
      OUTLINED_FUNCTION_14_171();
      sub_1E4035DF0(v8, v24);
      sub_1E4035DF0(v11, type metadata accessor for SportsSeeAllPlayModel);
      if (v23 >= v22)
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          OUTLINED_FUNCTION_32_85();
          swift_arrayInitWithTakeFrontToBack();
          a2 = v21;
        }

        else
        {
          a2 = v21;
          if (a1 != a4)
          {
            OUTLINED_FUNCTION_32_85();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v57 = a4 + v13;
        a4 += v13;
      }

      else
      {
        a2 = v21 + v13;
        if (a1 < v21 || a1 >= a2)
        {
          OUTLINED_FUNCTION_210();
          OUTLINED_FUNCTION_32_85();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          OUTLINED_FUNCTION_210();
          OUTLINED_FUNCTION_32_85();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 += v13;
      v58 = a1;
    }
  }

LABEL_58:
  sub_1E4035688(&v58, &v57, &v56);
}

uint64_t sub_1E4035688(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SportsSeeAllPlayModel();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E4035768()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

void sub_1E40357E8()
{
  sub_1E40358D8();
  if (v0 <= 0x3F)
  {
    sub_1E4205BF4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SportsPlayProcessor.ProcessorPlayStore(319);
      if (v2 <= 0x3F)
      {
        sub_1E4035928();
        if (v3 <= 0x3F)
        {
          sub_1E4035A68(319, &qword_1ECF3EB38, MEMORY[0x1E69D3B28]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E40358D8()
{
  if (!qword_1ECF3EB20)
  {
    v0 = sub_1E4206374();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3EB20);
    }
  }
}

void sub_1E4035928()
{
  if (!qword_1ECF3EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB30);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3EB28);
    }
  }
}

void sub_1E4035994()
{
  sub_1E4035A68(319, &qword_1ECF3EB40, type metadata accessor for SportsPlayPeriod);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E4035A68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4207104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E4035ABC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SportsSeeAllPlayModel();
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v23 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
    v17 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v17;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v23 = -1 << *(a4 + 32);
    v24 = a1;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v13) >> 6;
    v25 = a3;
    while (v16 < a3)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (!v15)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v15 = 0;
            v13 = v23;
            a1 = v24;
            goto LABEL_20;
          }

          v15 = *(v12 + 8 * v20);
          ++v17;
          if (v15)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v20 = v17;
LABEL_15:
      v15 &= v15 - 1;
      v21 = a4;
      v22 = *(v28 + 72);
      sub_1E4035D98();
      sub_1E4035768();
      sub_1E4035768();
      a3 = v25;
      if (v19 == v25)
      {
        v17 = v20;
        v13 = v23;
        a1 = v24;
        a4 = v21;
        goto LABEL_20;
      }

      a2 += v22;
      v16 = v19;
      v17 = v20;
      a4 = v21;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E4035D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSeeAllPlayModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4035D98()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E4035DF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E4035E48()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E4035EA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4035F10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F10);
  if (swift_dynamicCast())
  {
    v5 = *(&v15[1] + 1);
    v6 = v16;
    __swift_project_boxed_opaque_existential_1(v15, *(&v15[1] + 1));
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1E325F6F0(v15, &qword_1ECF36F18);
    v7 = 0;
  }

  sub_1E403622C(v7, v15);

  v10 = *(v15 + 8);
  v12 = v16;
  v13 = v17;
  v14 = v18;
  v11 = *(&v15[1] + 1);
  v9 = *&v15[0];
  MEMORY[0x1E690DE70](v15, a2, &type metadata for ConfirmationDialogViewModifier, a3);
  sub_1E325F6F0(&v9, &qword_1ECF3EB58);
  sub_1E325F6F0(&v10, &qword_1ECF294E0);
  sub_1E325F6F0(&v11, &qword_1ECF3EB60);
  sub_1E325F6F0(&v12, &qword_1ECF3EB68);
  return sub_1E325F6F0(&v13, &qword_1ECF2F550);
}

uint64_t sub_1E4036118(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1E403622C(v5, v9);
  v15 = v10;
  v16 = v11;
  v14 = *&v9[24];
  v13 = *&v9[8];
  v12 = *v9;
  v8 = v11;
  v7[1] = *&v9[16];
  v7[2] = v10;
  v7[0] = *v9;
  MEMORY[0x1E690DE70](v7, a2, &type metadata for ConfirmationDialogViewModifier, a3);
  sub_1E325F6F0(&v12, &qword_1ECF3EB58);
  sub_1E325F6F0(&v13, &qword_1ECF294E0);
  sub_1E325F6F0(&v14, &qword_1ECF3EB60);
  sub_1E325F6F0(&v15, &qword_1ECF3EB68);
  return sub_1E325F6F0(&v15 + 8, &qword_1ECF2F550);
}

uint64_t sub_1E403622C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E42038E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB60);
  sub_1E42038E4();
  result = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1E4036310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB70);
  sub_1E32752B0(&qword_1EE28A178, &qword_1ECF3EB70);
  return sub_1E42006B4();
}

void sub_1E403639C(void *a1)
{
  v1 = a1;
  sub_1E4200524();
}

uint64_t sub_1E40363DC()
{
  OUTLINED_FUNCTION_15_1();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB70);
  swift_allocObject();
  *(v0 + 16) = sub_1E4200544();
  return v0;
}

unint64_t sub_1E4036468()
{
  result = qword_1EE292F10[0];
  if (!qword_1EE292F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE292F10);
  }

  return result;
}

uint64_t sub_1E40364BC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E4036510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E40365A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a1;
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB78);
  OUTLINED_FUNCTION_0_10();
  v31 = v5;
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB80);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v28 = v26 - v9;
  v34 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA0);
  sub_1E42038F4();
  v30 = v7;
  if (v41 && (v10 = sub_1E32868C0(v41, &selRef_title), v11))
  {
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v37 = v10;
  v38 = v12;
  v41 = *(v2 + 8);
  v36 = *(v2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  v13 = sub_1E4203914();
  v26[1] = v35;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB90);
  sub_1E32752B0(&qword_1EE288940, &qword_1ECF3EB88);
  sub_1E32822E0();
  sub_1E4037470();
  v15 = v30;
  sub_1E4203134();

  *&v36 = *v2;
  if (v36)
  {
    v17 = (*(*v36 + 88))(v16);
  }

  else
  {
    v17 = sub_1E3B4F980();
  }

  v18 = v17;
  v19 = *(v2 + 24);
  v39 = *(v2 + 32);
  v40 = v19;
  v37 = *(v2 + 40);
  LOBYTE(v38) = *(v2 + 48);
  v20 = swift_allocObject();
  v21 = *(v3 + 16);
  *(v20 + 16) = *v3;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v3 + 32);
  *(v20 + 64) = *(v3 + 48);
  v22 = v28;
  (*(v31 + 32))(v28, v15, v32);
  v23 = v29;
  *(v22 + *(v29 + 52)) = v18;
  v24 = (v22 + *(v23 + 56));
  *v24 = sub_1E40375A4;
  v24[1] = v20;
  sub_1E32E098C(v22, v33);
  sub_1E37E93E8(&v36, &v34, &qword_1ECF3EB58);
  sub_1E37E93E8(&v41, &v34, &qword_1ECF294E0);
  sub_1E37E93E8(&v40, &v34, &qword_1ECF3EB60);
  sub_1E37E93E8(&v39, &v34, &qword_1ECF3EB68);
  return sub_1E37E93E8(&v37, &v34, &qword_1ECF2F550);
}

void sub_1E4036A1C(id *a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *a1;
  v13 = sub_1E3982FB8(v10, v11);
  if (!v13)
  {
LABEL_11:
    v30 = *(a2 + 8);
    v31 = v30;
    v32 = *(&v30 + 1);
    sub_1E37E93E8(&v32, &v29, &qword_1ECF31088);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
    sub_1E42038F4();
    if (v29)
    {
      sub_1E325F6F0(&v31, &qword_1ECF294E0);
      v23 = sub_1E324FBDC();
      (*(v6 + 16))(v9, v23, v4);
      v24 = sub_1E41FFC94();
      v25 = sub_1E42067F4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1E323F000, v24, v25, "ConfirmationDialogViewModifier:: presenting confirmation while another dialog is presented", v26, 2u);
        MEMORY[0x1E69143B0](v26, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v9, v4);
    }

    else
    {
      v30 = *(a2 + 24);
      v29 = v12;
      v27 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA0);
      sub_1E4203904();
      v30 = v31;
      LOBYTE(v29) = 1;
      sub_1E4203904();

      sub_1E325F6F0(&v31, &qword_1ECF294E0);
    }

    return;
  }

  v14 = v13;
  v15 = [objc_opt_self() topPresentedViewController];
  if (!v15)
  {

    goto LABEL_11;
  }

  v28 = v15;
  v16 = [v12 popoverPresentationController];
  if (v16)
  {
    v17 = v16;
    v18 = *(*v14 + 96);
    v19 = v18();
    [v17 setSourceView_];

    v20 = v18();
    if (v20)
    {
      v21 = v20;
      [v20 bounds];
      [v17 setSourceRect_];
      [v17 setPermittedArrowDirections_];

      v17 = v21;
    }
  }

  [v12 vui:v28 presentAlertFromPresentingController:1 animated:0 completion:?];

  v22 = v28;
}

void sub_1E4036DCC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1E4036E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = sub_1E3FBD320(a1);
  if (v17)
  {
    v18 = v17;
    v25 = v16;
    v26 = a2;
    if ([a1 style] == 2)
    {
      sub_1E4200A04();
    }

    else
    {
      if ([a1 style] != 1)
      {
        v20 = sub_1E4200A34();
        v21 = 1;
        goto LABEL_11;
      }

      sub_1E4200A14();
    }

    v20 = sub_1E4200A34();
    v21 = 0;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v15, v21, 1, v20);
    sub_1E37E93E8(v15, v12, &qword_1ECF2F570);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    MEMORY[0x1EEE9AC00](v22);
    *(&v25 - 2) = v25;
    *(&v25 - 1) = v18;
    v23 = a1;
    sub_1E4203954();

    sub_1E325F6F0(v15, &qword_1ECF2F570);
    v24 = v26;
    (*(v6 + 32))(v26, v9, v4);
    return __swift_storeEnumTagSinglePayload(v24, 0, 1, v4);
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

uint64_t sub_1E4037178()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  *&v14 = v2;
  *(&v14 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA0);
  sub_1E42038F4();
  if (v11[0])
  {
    v4 = [v11[0] actions];

    sub_1E40375AC();
    v5 = sub_1E42062B4();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v11[2] = v5;
  swift_getKeyPath();
  v15 = *v1;
  v16 = v2;
  v14 = *(v1 + 1);
  v17 = v3;
  v13 = *(v1 + 48);
  v12 = v1[5];
  v6 = swift_allocObject();
  v8 = *(v1 + 1);
  v7 = *(v1 + 2);
  v9 = *v1;
  *(v6 + 64) = *(v1 + 48);
  *(v6 + 32) = v8;
  *(v6 + 48) = v7;
  *(v6 + 16) = v9;
  sub_1E37E93E8(&v15, v11, &qword_1ECF3EB58);
  sub_1E37E93E8(&v14, v11, &qword_1ECF294E0);
  sub_1E37E93E8(&v16, v11, &qword_1ECF3EB60);
  sub_1E37E93E8(&v17, v11, &qword_1ECF3EB68);
  sub_1E37E93E8(&v12, v11, &qword_1ECF2F550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB98);
  sub_1E32752B0(&qword_1EE23B4C8, &qword_1ECF3D198);
  sub_1E375BEF4();
  sub_1E40374F4();
  return sub_1E4203B34();
}

uint64_t sub_1E40373D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA0);
  sub_1E42038F4();
  if (!v6 || (sub_1E32868C0(v6, &selRef_message), !v0))
  {
  }

  sub_1E32822E0();
  v1 = sub_1E4202C44();
  return OUTLINED_FUNCTION_92(v1, v2, v3, v4);
}

unint64_t sub_1E4037470()
{
  result = qword_1EE2883C8;
  if (!qword_1EE2883C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB90);
    sub_1E40374F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883C8);
  }

  return result;
}

unint64_t sub_1E40374F4()
{
  result = qword_1EE288630;
  if (!qword_1EE288630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB98);
    sub_1E32752B0(&qword_1EE288638, &qword_1ECF2F428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288630);
  }

  return result;
}

unint64_t sub_1E40375AC()
{
  result = qword_1ECF372A0;
  if (!qword_1ECF372A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF372A0);
  }

  return result;
}

uint64_t objectdestroyTm_60()
{

  j__swift_release();

  return swift_deallocObject();
}

void sub_1E4037660()
{
  v1 = *(v0 + 16);
  v2 = [v1 handler];
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, v1);

    _Block_release(v3);
  }
}

uint64_t sub_1E40376D0()
{
  sub_1E32822E0();

  v0 = sub_1E4202C44();
  return OUTLINED_FUNCTION_92(v0, v1, v2, v3);
}

uint64_t sub_1E4037730()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v1 = sub_1E4097BF8(1);
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E40377D0()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1720);

  v4 = v2(v3);
  sub_1E3C37CBC(v4, 23);

  v6 = (*(*v1 + 1744))(v5);
  sub_1E3C37CBC(v6, 9);

  v8 = (*(*v1 + 1792))(v7);
  sub_1E3C37CBC(v8, 41);

  v10 = (*(*v1 + 1768))(v9);
  sub_1E3C37CBC(v10, 14);

  return v1;
}

uint64_t sub_1E403796C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  type metadata accessor for AppEnvironment();
  sub_1E39DC8E8();
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = sub_1E4201754();
  v11[3] = v9;
  MEMORY[0x1E690DE70](v11, a4, &type metadata for SizeClassChangeModifier, a5);
  sub_1E34AF594(a2);
}

unint64_t sub_1E4037A2C()
{
  result = qword_1EE2985D0[0];
  if (!qword_1EE2985D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2985D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI10LayoutGridC0D9SizeClassOIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E4037A98(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E4037AEC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E4037B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  if (a4)
  {
    v15 = *(*a4 + 240);

    v15(v16);

    sub_1E37F99D4();
    v17 = sub_1E3B501F8();

    v18 = swift_allocObject();
    *(v18 + 2) = a2;
    *(v18 + 3) = a3;
    *(v18 + 4) = a4;
    *(v18 + 5) = a5;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBB0);
    (*(*(v19 - 8) + 16))(v14, a1, v19);
    *&v14[*(v12 + 52)] = v17;
    v20 = &v14[*(v12 + 56)];
    *v20 = sub_1E4037D58;
    v20[1] = v18;
    sub_1E4037E50(v14, a6);

    return sub_1E34AF604(a2);
  }

  else
  {
    type metadata accessor for AppEnvironment();
    sub_1E39DC8E8();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

void sub_1E4037D58()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 32);
    if (v2)
    {
      v3 = *(*v2 + 216);
      sub_1E34AF604(*(v0 + 16));

      v5 = v3(v4);

      v1(v5);

      sub_1E34AF594(v1);
    }

    else
    {
      type metadata accessor for AppEnvironment();
      sub_1E39DC8E8();

      sub_1E4201744();
      __break(1u);
    }
  }
}

uint64_t sub_1E4037E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4037EC0()
{
  result = qword_1EE2893C8;
  if (!qword_1EE2893C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2893C8);
  }

  return result;
}

uint64_t sub_1E4037F24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_248();
  v4 = swift_allocObject();
  sub_1E4037F6C(a1, a2);
  return v4;
}

uint64_t sub_1E4037F6C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v2;
  *(v2 + 32) = 0u;
  v16 = (v2 + 32);
  *(v2 + 48) = 0;
  v17 = (v2 + 48);
  *(v16 - 1) = 0u;
  OUTLINED_FUNCTION_3_0();
  v16[1] = a1;
  v88 = a2;
  sub_1E327F454(a2, &v91);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
  type metadata accessor for CollectionServiceRequestContext();
  if (swift_dynamicCast())
  {
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  ViewModelKeys.rawValue.getter(3);
  sub_1E3277E60(v19, v20, a1, &v91);

  if (!v92)
  {
    sub_1E329505C(&v91);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v22 = sub_1E324FBDC();
    (*(v7 + 16))(v10, v22, v5);

    v23 = sub_1E41FFC94();
    v24 = sub_1E42067F4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v91 = v26;
      *v25 = 136315138;
      v90 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBB8);
      v27 = sub_1E42070D4();
      v29 = sub_1E3270FC8(v27, v28, &v91);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1E323F000, v23, v24, "CollectionFragment:: Failed to create fragment from JSON <%s>.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E69143B0](v26, -1, -1);
      MEMORY[0x1E69143B0](v25, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v88);
    (*(v7 + 8))(v10, v5);
    return v89;
  }

  v21 = v90;
  if (!*(v90 + 16))
  {

    goto LABEL_12;
  }

  if (!v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v88);
    goto LABEL_18;
  }

  if (*(v18 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType) == 5)
  {
    __swift_destroy_boxed_opaque_existential_1(v88);

LABEL_18:

    return v89;
  }

  if ((sub_1E37D01CC() & 1) == 0)
  {

    sub_1E37D01CC();

    __swift_destroy_boxed_opaque_existential_1(v88);
    return v89;
  }

  sub_1E4206BA4();
  v32 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v33 = *(v12 + 8);
  (v33)(v15, v87);
  ViewModelKeys.rawValue.getter(35);
  v86 = v21;
  sub_1E3277E60(v34, v35, v21, &v91);

  if (v92)
  {
    if (swift_dynamicCast())
    {
      v36 = v90;
      OUTLINED_FUNCTION_3_0();
      *(v16 - 1) = v36;
    }
  }

  else
  {
    sub_1E329505C(&v91);
  }

  v37 = v86;
  v92 = &type metadata for ViewModelKeys;
  v93 = &off_1F5D7BCA8;
  LOBYTE(v91) = 34;
  v38 = sub_1E39BD1A0(&v91, v86);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  OUTLINED_FUNCTION_3_0();
  *v17 = v38;

  v39 = *(*v18 + 176);

  v41 = v39(v40);

  if (!v41)
  {
LABEL_45:

    v64 = v88;
    v30 = v89;
    sub_1E4206B94();
    v65 = VUISignpostLogObject();
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    __swift_destroy_boxed_opaque_existential_1(v64);
    (v33)(v15, v87);
    return v30;
  }

  v85 = v33;
  ViewModelKeys.rawValue.getter(13);
  v43 = v42;
  v33 = v44;
  sub_1E384EE08(140);
  v83 = v45;
  v47 = v46;
  ViewModelKeys.rawValue.getter(7);
  v82 = v48;
  v50 = v49;
  sub_1E3277E60(v43, v33, v37, &v91);

  v51 = v37;
  if (!v92)
  {

    sub_1E329505C(&v91);
LABEL_43:
    OUTLINED_FUNCTION_6_214();
LABEL_44:
    v62 = type metadata accessor for ViewModel();

    v63 = sub_1E3DD5014(13, v51, v41, v62);

    OUTLINED_FUNCTION_3_0();
    *v16 = v63;
    goto LABEL_45;
  }

  v84 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  OUTLINED_FUNCTION_9_180();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_42:

    goto LABEL_43;
  }

  v33 = v94;
  v96 = v94;
  v52 = v84;
  if (!*(v94 + 16))
  {

    goto LABEL_42;
  }

  v51 = *(v94 + 32);

  sub_1E3277E60(v83, v52, v51, &v91);

  if (!v92)
  {

    sub_1E329505C(&v91);
LABEL_48:
    OUTLINED_FUNCTION_6_214();
    OUTLINED_FUNCTION_5_231();
    goto LABEL_44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  OUTLINED_FUNCTION_9_180();
  v81 = v53;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_48;
  }

  v54 = v94;
  v55 = MEMORY[0x1E69E7CC0];
  v95 = MEMORY[0x1E69E7CC0];
  v56 = type metadata accessor for ViewModel();
  v57 = sub_1E3DD5014(13, v54, v41, v56);
  if (v57)
  {
    v55 = v57;
  }

  sub_1E3277E60(v82, v50, v54, &v91);

  if (!v92)
  {

    sub_1E329505C(&v91);
LABEL_51:
    OUTLINED_FUNCTION_5_231();
    v66 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_6_214();
LABEL_67:

    if (v66 >> 62)
    {
      v76 = sub_1E42076C4();

      swift_bridgeObjectRelease_n();
      v66 = v76;
    }

    else
    {
      sub_1E42079D4();
    }

    OUTLINED_FUNCTION_3_0();
    *v16 = v66;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_9_180();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_51;
  }

  v77[2] = v56;
  v82 = v55;
  v51 = v94;
  v58 = type metadata accessor for CollectionGroupViewModel();
  v59 = *(*v41 + 624);
  v80 = *v41 + 624;
  v79 = v59;
  v59();
  v82 = v58;
  if (!sub_1E3960F08())
  {
    v61 = MEMORY[0x1E69E7CC0];
    goto LABEL_53;
  }

  MEMORY[0x1E6910BF0]();
  OUTLINED_FUNCTION_7_220();
  if (v60)
  {
    goto LABEL_72;
  }

  while (1)
  {
    sub_1E4206324();
    v61 = v95;
LABEL_53:
    OUTLINED_FUNCTION_5_231();
    if (*(v33 + 16))
    {
      break;
    }

    __break(1u);
LABEL_72:
    OUTLINED_FUNCTION_10_165();
  }

  result = sub_1E4038CA4(v33);
  if (result)
  {
    v78 = v61;
    sub_1E4038CF8(0, 1);

    v67 = *(v96 + 16);
    v77[1] = v96;
    if (v67)
    {
      v33 = v96 + 32;
      v68 = v84;
      do
      {
        v69 = *v33;
        if (*(*v33 + 16))
        {

          v70 = sub_1E327D33C(v83, v68);
          if (v71)
          {
            sub_1E328438C(*(v69 + 56) + 32 * v70, &v91);

            OUTLINED_FUNCTION_9_180();
            if (swift_dynamicCast())
            {
              v51 = v94;
              v79();
              OUTLINED_FUNCTION_5_231();
              if (sub_1E3960E00(v72, v73, v74))
              {

                MEMORY[0x1E6910BF0](v75);
                OUTLINED_FUNCTION_7_220();
                if (v60)
                {
                  OUTLINED_FUNCTION_10_165();
                }

                sub_1E4206324();

                v78 = v95;
                OUTLINED_FUNCTION_5_231();
              }
            }
          }

          else
          {
          }
        }

        v33 += 8;
        --v67;
        v68 = v84;
      }

      while (v67);
    }

    OUTLINED_FUNCTION_6_214();
    v66 = v78;
    if (v78)
    {
      goto LABEL_67;
    }

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4038B5C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_248();
  v4 = swift_allocObject();
  sub_1E4038BA4(a1, a2);
  return v4;
}

uint64_t sub_1E4038BA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  OUTLINED_FUNCTION_3_0();
  *(v2 + 24) = a1;
  OUTLINED_FUNCTION_3_0();
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_1E4038C10()
{

  return v0;
}

uint64_t sub_1E4038C50()
{
  sub_1E4038C10();
  v0 = OUTLINED_FUNCTION_4_248();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E4038C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E4037F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4038CA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

int64_t sub_1E4038CF8(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E3EA0A4C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 8 * a2);
  if (v5 != a2 || v12 + 8 * v11 <= v9 + 8 * v5)
  {
    result = memmove((v9 + 8 * v5), v12, 8 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1E4038DF8@<X0>(uint64_t result@<X0>, __int16 a2@<W2>, unsigned __int16 *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = result;
  v8 = HIBYTE(a2);
  v9 = a3[49];
  v10 = v9 + 66;
  if ((v9 - 190) > 0x1F)
  {
    goto LABEL_26;
  }

  v11 = a2;
  if (((1 << v10) & 0xEF800000) != 0)
  {
    if (a2 == 5 || (LOBYTE(v60) = 4, v12 = sub_1E3890B18(), OUTLINED_FUNCTION_1_281(v12, v13, &type metadata for ViewLayoutEnvironment.Placement, v12, v14, v15, v16, v17, v55, v11), (sub_1E4205E84() & 1) == 0) || (result = sub_1E3A24FDC(v6), (result & 1) == 0))
    {
      v58 = &unk_1F5D5DE28;
      v59 = &off_1F5D5CA58;
      LOBYTE(v57[0]) = 4;
      v23 = j__OUTLINED_FUNCTION_18();
      v24 = sub_1E39C29F0(v57, v23 & 1);
      result = __swift_destroy_boxed_opaque_existential_1(v57);
      v21 = 0;
      v19 = 0;
      if (v24)
      {
        v22 = 118;
      }

      else
      {
        v22 = 117;
      }

      v18 = 1;
      v20 = 1;
      goto LABEL_11;
    }

LABEL_6:
    v18 = 0;
    v19 = 0;
    v20 = 1;
    v21 = 21;
    v22 = 119;
LABEL_11:
    v25 = 1;
    goto LABEL_60;
  }

  if (((1 << v10) & 9) != 0)
  {
    if (a2 == 5)
    {
      goto LABEL_59;
    }

    LOBYTE(v60) = 1;
    v26 = sub_1E3890B18();
    OUTLINED_FUNCTION_1_281(v26, v27, &type metadata for ViewLayoutEnvironment.Placement, v28, v29, v30, v31, v32, v55, v11);
    result = sub_1E4205E84();
    if (result)
    {
      if (v8 != 2 && (a2 & 0x100) != 0)
      {
        goto LABEL_6;
      }

      result = [objc_opt_self() isPad];
      if ((result & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      LOBYTE(v60) = 3;
      OUTLINED_FUNCTION_1_281(result, v33, &type metadata for ViewLayoutEnvironment.Placement, v34, v35, v36, v37, v38, v56, v11);
      result = sub_1E4205E84();
      if ((result & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    result = sub_1E3A24FDC(v6);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_59:
    v21 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v25 = 0;
    v22 = 263;
    goto LABEL_60;
  }

  if (v9 != 197)
  {
LABEL_26:
    if (v9 == 181)
    {
      result = sub_1E3A24FDC(result);
      v21 = 0;
      if (result)
      {
        v22 = 122;
      }

      else
      {
        v22 = 118;
      }

      if (result)
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }

      v20 = (result & 1) == 0;
      v18 = 1;
      goto LABEL_11;
    }

    result = (*(*a3 + 648))();
    if (!result)
    {
      goto LABEL_59;
    }

    v45 = result;
    swift_beginAccess();
    v46 = *(v45 + 56);

    if (!v46)
    {
      goto LABEL_59;
    }

    v47 = (*(*v46 + 1000))(result);
    v49 = v48;

    if (!v49)
    {
      goto LABEL_59;
    }

    v50 = TVAppFeature.isEnabled.getter(10);
    if (v47 == sub_1E4205F14() && v49 == v51)
    {
      v53 = 1;
    }

    else
    {
      v53 = sub_1E42079A4();
    }

    v54 = sub_1E3A24FDC(v6);
    if ((*(*a3 + 536))())
    {
      v58 = &unk_1F5D5E578;
      v59 = &off_1F5D5CC08;
      LOBYTE(v57[0]) = 3;
      sub_1E3F9F164(v57);

      __swift_destroy_boxed_opaque_existential_1(v57);
      if (*(&v61 + 1))
      {
        result = swift_dynamicCast();
        if (result && (v57[0] & 1) != 0)
        {
          if (v8 != 2 && (a2 & 0x100) != 0)
          {
            goto LABEL_6;
          }

          result = [objc_opt_self() isPad];
          if (result)
          {
LABEL_58:
            if (v54)
            {
              goto LABEL_6;
            }

            goto LABEL_59;
          }
        }

LABEL_56:
        if ((v50 & 1) == 0 || (v53 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    result = sub_1E329505C(&v60);
    goto LABEL_56;
  }

  result = sub_1E3A24FDC(result);
  v25 = 0;
  v21 = 0;
  v22 = 263;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if ((result & 1) != 0 && v11 != 5)
  {
    LOBYTE(v60) = 3;
    v39 = sub_1E3890B18();
    OUTLINED_FUNCTION_1_281(v39, v40, &type metadata for ViewLayoutEnvironment.Placement, v39, v41, v42, v43, v44, v55, v11);
    result = sub_1E4205E84();
    v21 = 0;
    v19 = 0;
    v25 = result & 1;
    if (result)
    {
      v22 = 118;
    }

    else
    {
      v22 = 263;
    }

    v18 = result & 1;
    v20 = v18;
  }

LABEL_60:
  *a4 = v22;
  *(a4 + 8) = v21;
  *(a4 + 16) = v18;
  *(a4 + 24) = v19;
  *(a4 + 32) = v20;
  *(a4 + 40) = 0;
  *(a4 + 48) = v25;
  return result;
}

uint64_t sub_1E40392CC(unsigned __int16 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFEFA && *(a1 + 49))
    {
      v2 = *a1 + 65273;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 0x107;
      v2 = v3 - 263;
      if (!v4)
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

uint64_t sub_1E4039310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFEF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 65274;
    if (a3 >= 0xFEFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFEFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 262;
    }
  }

  return result;
}

unint64_t sub_1E403939C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1E403975C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4039434(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
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

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E403957C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
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
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1E403975C()
{
  result = qword_1ECF3EBC0;
  if (!qword_1ECF3EBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF3EBC0);
  }

  return result;
}

id sub_1E40397A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_7_221();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  type metadata accessor for LibMPPlayableMediaEntity();
  if (OUTLINED_FUNCTION_0_324())
  {
    v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMPMediaItem:*(v39 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) watchType:a2 playbackContext:a3 isRentAndWatchNow:a4 & 1];
  }

  else
  {
    OUTLINED_FUNCTION_7_221();
    type metadata accessor for LibSidebandPlayableMediaEntity();
    if (OUTLINED_FUNCTION_0_324())
    {
      v37 = a2;
      v38 = a3;
      v15 = v10;
      v16 = *(*v39 + 192);

      v16(v17);
      v19 = v18;

      if (v19)
      {
        v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v21 = sub_1E4205ED4();

        v14 = [v20 initWithSidebandAdamID:v21 watchType:v37 playbackContext:v38 isRentAndWatchNow:a4 & 1];

        goto LABEL_13;
      }

      v10 = v15;
      a2 = v37;
      a3 = v38;
    }

    OUTLINED_FUNCTION_7_221();
    type metadata accessor for LibFamilySharingPlayableMediaEntity();
    if (OUTLINED_FUNCTION_0_324())
    {
      v22 = sub_1E402AAA4(v39);
      v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1E4298880;
      *(v24 + 32) = v22;
      sub_1E3280A90(0, &qword_1EE23B1C0);
      v25 = v22;
      v26 = sub_1E42062A4();

      v14 = [v23 initWithVideosPlayables:v26 watchType:a2 playbackContext:a3 isRentAndWatchNow:a4 & 1];
    }

    else
    {
      v27 = sub_1E41A3110();
      (*(v10 + 16))(v13, v27, v8);
      OUTLINED_FUNCTION_7_221();
      v28 = sub_1E41FFC94();
      v29 = sub_1E42067F4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 136315138;
        v38 = v10;
        v39 = v31;
        __swift_project_boxed_opaque_existential_1(v40, v40[3]);
        v32 = sub_1E4207944();
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_1(v40);
        v35 = sub_1E3270FC8(v32, v34, &v39);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_1E323F000, v28, v29, "Unable to create VUIActionPlay for %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v38 + 8))(v13, v8);
      }

      else
      {

        (*(v10 + 8))(v13, v8);
        __swift_destroy_boxed_opaque_existential_1(v40);
      }

      v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

void sub_1E4039C00(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v13 = sub_1E403A2F8(a2, type metadata accessor for LibMPPlayableMediaEntity);
    if (v13)
    {
      v14 = v13;
      v63 = a1;

      v64 = MEMORY[0x1E69E7CC0];
      sub_1E32AE9B0(v14);
      OUTLINED_FUNCTION_1_282();
      while (1)
      {
        if (v7 == a2)
        {

          v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          sub_1E3280A90(0, &qword_1EE23B3F8);
          v20 = sub_1E42062A4();

          v21 = [v19 initWithPlaybackContext:v63 mpMediaItems:v20];
          goto LABEL_14;
        }

        if (v4)
        {
          v15 = MEMORY[0x1E6911E60](a2, v14);
        }

        else
        {
          if (a2 >= *(v3 + 16))
          {
            goto LABEL_51;
          }

          v15 = *(v14 + 8 * a2 + 32);
        }

        if (__OFADD__(a2, 1))
        {
          break;
        }

        v16 = *(v15 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem);

        MEMORY[0x1E6910BF0](v17);
        OUTLINED_FUNCTION_2_246();
        if (v18)
        {
          OUTLINED_FUNCTION_12_21();
        }

        sub_1E4206324();
        ++a2;
      }

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
      __break(1u);
    }

    else
    {
      v26 = sub_1E403A2F8(a2, type metadata accessor for LibSidebandPlayableMediaEntity);
      if (v26)
      {
        v27 = v26;
        v62 = v4;
        v63 = a1;

        v28 = sub_1E32AE9B0(v27);
        v29 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        while (v28 != v29)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x1E6911E60](v29, v27);
            v31 = v32;
          }

          else
          {
            if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v31 = *(v27 + 8 * v29 + 32);
          }

          v33 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_52;
          }

          v34 = (*(*v31 + 192))(v32);
          v36 = v35;

          ++v29;
          if (v36)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_1E3740F88(0, *(v30 + 2) + 1, 1, v30);
            }

            v38 = *(v30 + 2);
            v37 = *(v30 + 3);
            if (v38 >= v37 >> 1)
            {
              v30 = sub_1E3740F88((v37 > 1), v38 + 1, 1, v30);
            }

            *(v30 + 2) = v38 + 1;
            v39 = &v30[16 * v38];
            *(v39 + 4) = v34;
            *(v39 + 5) = v36;
            v29 = v33;
          }
        }

        v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v41 = sub_1E42062A4();

        v22 = [v40 initWithPlaybackContext:v63 sidebandLibraryAdamIDs:v41];
      }

      else
      {
        v43 = sub_1E403A2F8(a2, type metadata accessor for LibFamilySharingPlayableMediaEntity);
        if (v43)
        {
          v44 = v43;

          v64 = MEMORY[0x1E69E7CC0];
          sub_1E32AE9B0(v44);
          OUTLINED_FUNCTION_1_282();
          while (v7 != a2)
          {
            if (v4)
            {
              v45 = MEMORY[0x1E6911E60](a2, v44);
            }

            else
            {
              if (a2 >= *(v3 + 16))
              {
                goto LABEL_55;
              }

              v45 = *(v44 + 8 * a2 + 32);
            }

            if (__OFADD__(a2, 1))
            {
              goto LABEL_54;
            }

            sub_1E402AAA4(v45);

            MEMORY[0x1E6910BF0](v46);
            OUTLINED_FUNCTION_2_246();
            if (v18)
            {
              OUTLINED_FUNCTION_12_21();
            }

            sub_1E4206324();
            ++a2;
          }

          v47 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          sub_1E3280A90(0, &qword_1EE23B1C0);
          v20 = sub_1E42062A4();

          v21 = [v47 initWithPlaybackContext:a1 videosPlayables:v20 imageProxies:0 storeDictionary:0];
LABEL_14:
          v22 = v21;
        }

        else
        {
          v48 = sub_1E41A3110();
          (*(v9 + 16))(v12, v48, v7);

          v49 = sub_1E41FFC94();
          v50 = sub_1E42067F4();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v64 = v63;
            *v51 = 136315138;
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
            v53 = MEMORY[0x1E6910C30](a2, v52);
            LODWORD(v62) = v50;
            v54 = v53;
            v56 = v55;

            v57 = sub_1E3270FC8(v54, v56, &v64);

            *(v51 + 4) = v57;
            _os_log_impl(&dword_1E323F000, v49, v62, "Unable to create MediaInfo for %s", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v63);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();
          }

          else
          {
          }

          (*(v9 + 8))(v12, v7);
          v58 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          OUTLINED_FUNCTION_3_252();
          v22 = [v59 v60];
        }
      }

      v42 = v22;
      [v42 setIntent_];
      [v42 setAutomaticPlaybackStart_];
    }
  }

  else
  {

    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    OUTLINED_FUNCTION_3_252();

    [v24 v25];
  }
}

uint64_t sub_1E403A2F8(uint64_t a1, void (*a2)(void))
{
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  sub_1E4207574();
  v5 = a1 + 32;
  if (!v4)
  {
    return v8;
  }

  while (1)
  {
    sub_1E327F454(v5, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
    v5 += 40;
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

void *sub_1E403A40C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_0_325();
  sub_1E403C278(v4, v5);
  v6 = sub_1E4201754();
  v8 = v7;
  type metadata accessor for CGSize(0);
  sub_1E42038E4();
  v9 = v52;
  v10 = v53;
  v11 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  sub_1E42038E4();
  v44 = v54;
  __src[0] = 0;
  __src[1] = 0;
  sub_1E42038E4();
  v42 = v53;
  v43 = v52;
  v41 = v54;
  v12 = *(*a1 + 464);

  v14 = v12(v13);
  v47 = v54;
  v48 = v8;
  v45 = v53;
  v46 = v52;
  if (v14 && (v15 = sub_1E37D027C(v14), , v15))
  {
    type metadata accessor for CollectionViewModel();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *(*a1 + 464);
  v18 = v17();
  if (v18)
  {
    v19 = v18;
    v38 = v6;
    v20 = sub_1E32AE9B0(v18);
    v39 = a1;
    v40 = v16;
    if (v20)
    {
      v6 = v20;
      if (v20 >= 1)
      {
        v49 = 0;
        v21 = 0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1E6911E60](v21, v19);
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
          }

          v50[0] = *(v22 + 98);
          v71 = 76;
          sub_1E3742F1C();
          OUTLINED_FUNCTION_13_178();
          OUTLINED_FUNCTION_14_172();
          if (v52 == __src[0] && v53 == __src[1])
          {
          }

          else
          {
            v24 = sub_1E42079A4();

            if ((v24 & 1) == 0)
            {
              v50[0] = *(v22 + 98);
              v71 = 1;
              OUTLINED_FUNCTION_13_178();
              OUTLINED_FUNCTION_14_172();
              if (v52 == __src[0] && v53 == __src[1])
              {

LABEL_29:

                v49 = v22;
                goto LABEL_26;
              }

              v26 = sub_1E42079A4();

              if (v26)
              {
                goto LABEL_29;
              }
            }
          }

LABEL_26:
          if (v6 == ++v21)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_50:
      MEMORY[0x1E6911E60](0, v11);
LABEL_41:

      OUTLINED_FUNCTION_8();
      v34 = *(v33 + 872);

      v36 = v34(v35);

      if (v36)
      {

        v16 = v40;
LABEL_48:
        type metadata accessor for BackgroundPlaybackModel(0);
        sub_1E39D7838(&unk_1F5D92EB0);
        v37 = sub_1E3F45B98();

        LOBYTE(v71) = 0;
        __src[0] = v6;
        __src[1] = v48;
        __src[2] = a1;
        __src[3] = v16;
        __src[4] = 0;
        __src[5] = v49;
        __src[6] = v36;
        __src[7] = v52;
        __src[8] = v53;
        __src[9] = v54;
        __src[10] = v52;
        __src[11] = v53;
        __src[12] = v54;
        __src[13] = v52;
        __src[14] = v53;
        __src[15] = v54;
        __src[16] = sub_1E38074D0;
        __src[17] = v37;
        LOBYTE(__src[18]) = 0;
        v52 = v6;
        v53 = v48;
        v54 = a1;
        v55 = v16;
        v56 = 0;
        v57 = v49;
        v58 = v36;
        v59 = v9;
        v60 = v10;
        v61 = v47;
        v62 = v46;
        v63 = v45;
        v64 = v44;
        v65 = v43;
        v66 = v42;
        v67 = v41;
        v68 = sub_1E38074D0;
        v69 = v37;
        v70 = 0;
        sub_1E3E89E34(__src, v50);
        sub_1E3E89E90(&v52);
        return memcpy(a2, __src, 0x91uLL);
      }

      goto LABEL_45;
    }

    v49 = 0;
LABEL_32:

    a1 = v39;
    v6 = v38;
  }

  else
  {
    v49 = 0;
  }

  v27 = v17();
  if (!v27)
  {
    goto LABEL_47;
  }

  v28 = sub_1E37D027C(v27);

  if (!v28)
  {
    goto LABEL_47;
  }

  type metadata accessor for CollectionViewModel();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {

LABEL_47:

    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_48;
  }

  v40 = v16;
  v30 = *(*v29 + 1040);

  v11 = v30(v31);

  if (!v11)
  {
LABEL_45:
    v16 = v40;
    goto LABEL_47;
  }

  result = sub_1E32AE9B0(v11);
  v16 = v40;
  if (!result)
  {

    goto LABEL_47;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_50;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E403A9FC@<X0>(uint64_t *a1@<X8>)
{
  v89[0] = *(v1 + 56);
  *&v89[1] = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  if (v88[0] == 0.0 && v88[1] == 0.0)
  {
    if (!*v1)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_8();
    v4 = *(v3 + 184);

    v6 = COERCE_DOUBLE(v4(v5));
    v8 = v7;

    if (v8)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_247();
    v9 = v88[0];
  }

  OUTLINED_FUNCTION_2_247();
  v85 = a1;
  if (v88[0] == 0.0 && v88[1] == 0.0)
  {
    if (!*v1)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_8();
    v11 = *(v10 + 184);

    v11(v12);
    v14 = v13;
    v16 = v15;

    if (v16)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_247();
    v17 = v88[1];
  }

  v18 = *(v1 + 48);
  type metadata accessor for LayoutGrid();
  v19 = sub_1E3A2579C(v9);
  if ((*(**(v1 + 16) + 392))())
  {
    type metadata accessor for ShowcaseTemplateLayout();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      goto LABEL_19;
    }
  }

  type metadata accessor for ShowcaseTemplateLayout();
  v20 = sub_1E40B0EA4();
LABEL_19:
  v87 = v20;
  sub_1E3C2AE10();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v86 = v1;
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v27 + 392))())
    {
      OUTLINED_FUNCTION_30();
      (*(v28 + 1640))(v22, v24, v26);
    }
  }

  v29 = sub_1E32AE9B0(v18);
  for (i = 0; ; ++i)
  {
    if (v29 == i)
    {
      if (sub_1E3A24FDC(v19))
      {
        v34 = v9 * 0.95;
        v35 = 10.0;
        v36 = v17;
      }

      else
      {
        v34 = v9 * 0.5;
        v37 = (*v87 + 1696);
        v38 = *v37;
        (*v37)();
        OUTLINED_FUNCTION_30();
        v40 = COERCE_DOUBLE((*(v39 + 304))());
        v42 = v41;

        if (v42)
        {
          v44 = 0.0;
        }

        else
        {
          v44 = v40;
        }

        (v38)(v43);
        OUTLINED_FUNCTION_30();
        (*(v45 + 176))(v107);

        v46 = v107[0];
        if (v108)
        {
          v46 = 0.0;
        }

        v36 = v34 / 1.27 + v44 + v46;
        v35 = v34 * 0.13;
      }

      v47 = *&v36;
      v48 = j__OUTLINED_FUNCTION_51_1();
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_12_163();
      sub_1E3EB9C0C(*&v34, v47, 0, 0, 0, 1, v48 & 1, 2, &v109, 0, 1, 0, 1, 0, 2, v82, SHIBYTE(v82));
      v128[0] = v109;
      v128[1] = v110;
      v128[2] = v111;
      v129 = v34;
      v130 = 0;
      v131 = v112;
      v132 = v113;
      v133 = v114;
      sub_1E375C2C0(v128, v89);
      v49 = j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_12_163();
      OUTLINED_FUNCTION_18_15();
      sub_1E3EB9DAC(v50, v51, v52, v53, *&v34, v47, 0, 0, v54, 1, 0, 0, 256, 3, 0, v49 & 1, v83, v84);
      v91 = 0;
      v90 = 0;
      memcpy(__dst, __src, sizeof(__dst));
      v120 = v9;
      v121 = v17;
      v122 = 0;
      *v123 = *v116;
      *&v123[15] = *&v116[15];
      v124 = v35;
      v125 = 0;
      v126 = v117;
      *v127 = *v118;
      *&v127[10] = *&v118[10];
      sub_1E375C1CC(__dst, v89);
      v55 = j__OUTLINED_FUNCTION_18();
      v56 = j__OUTLINED_FUNCTION_18();
      j_j__OUTLINED_FUNCTION_5_8();
      j__OUTLINED_FUNCTION_51_1();
      LOBYTE(v47) = j__OUTLINED_FUNCTION_18();
      v57 = sub_1E3CBD2B8();
      v58 = j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_18_15();
      sub_1E3EBA150(v59, v60, v61, v62, v55, v56, 0, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, 0, 1, v47 & 1, v57, v58 & 1);
      BYTE10(v89[13]) = 0;
      BYTE8(v89[16]) = 0;
      *&v89[18] = sub_1E4201B84();
      BYTE8(v89[18]) = 1;
      *&v89[14] = OUTLINED_FUNCTION_5_8();
      *(&v89[14] + 1) = v73;
      *&v89[15] = v74;
      *(&v89[15] + 1) = v75;
      *&v89[19] = 0;
      *(&v89[19] + 1) = (v9 - v34) * 0.5;
      *&v89[20] = 0;
      *(&v89[20] + 1) = *(&v89[19] + 1);
      *(&v89[12] + 1) = v9;
      *&v89[13] = v17;
      BYTE8(v89[13]) = 0;
      sub_1E3EBA2D4(*&v35, 0);

      memcpy(v92, __src, sizeof(v92));
      v93 = v9;
      v94 = v17;
      v95 = 0;
      *v96 = *v116;
      *&v96[15] = *&v116[15];
      v97 = v35;
      v98 = 0;
      v99 = v117;
      *v100 = *v118;
      *&v100[10] = *&v118[10];
      sub_1E37E6F2C(v92);
      v101[0] = v109;
      v101[1] = v110;
      v101[2] = v111;
      v102 = v34;
      v103 = 0;
      v104 = v112;
      v105 = v113;
      v106 = v114;
      sub_1E375C31C(v101);
      v76 = memcpy(v88, v89, sizeof(v88));
      if ((*(**(v86 + 16) + 392))(v76))
      {
        type metadata accessor for ShowcaseTemplateLayout();
        if (swift_dynamicCastClass())
        {
LABEL_44:
          *v85 = sub_1E4203DA4();
          v85[1] = v77;
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBC8);
          sub_1E403B314(v86, v88, v85 + *(v78 + 44));

          return sub_1E375B760(v88);
        }
      }

      type metadata accessor for ShowcaseTemplateLayout();
      sub_1E40B0EA4();
      goto LABEL_44;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1E6911E60](i, v18);
      v31 = v32;
    }

    else
    {
      if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v31 = *(v18 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((*(*v31 + 392))(v32))
    {
      OUTLINED_FUNCTION_30();
      (*(v33 + 1640))(v22, v24, v26);
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_0_325();
  sub_1E403C278(v80, v81);
  result = sub_1E4201744();
  __break(1u);
  return result;
}