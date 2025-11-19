uint64_t ReferenceResolutionClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

void sub_1DD27CAA8()
{
  if (sub_1DD27D638())
  {
    sub_1DD27CBB4();
  }

  else
  {
    if (qword_1EE029290 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v0 = sub_1DD335CD0();
    OUTLINED_FUNCTION_14(v0, qword_1EE02A6A8);
    oslog = sub_1DD335CB0();
    v1 = sub_1DD336960();
    if (os_log_type_enabled(oslog, v1))
    {
      OUTLINED_FUNCTION_33_0();
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&dword_1DD27A000, oslog, v1, "Failed to register request: SiriReferenceResolutionService initialization failed.", v2, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }
  }
}

void sub_1DD27CBB4()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD334890();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v81 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v81 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
  v92 = v17;
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = v18;
  v91 = v15;
  v20 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
  if (!v20)
  {
    v21 = v19;
LABEL_11:

LABEL_12:
    isa = v7[2].isa;
    isa(v12, v3, v4);
    sub_1DD335860();
    v67 = sub_1DD335CB0();
    v68 = sub_1DD336950();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = OUTLINED_FUNCTION_50_2();
      v91 = OUTLINED_FUNCTION_49_1();
      v94 = v91;
      *v69 = 136315394;
      LODWORD(v90) = v68;
      MEMORY[0x1E12AA6A0]();
      v88 = v7[1].isa;
      v89 = v67;
      v88(v12, v4);
      v70 = OUTLINED_FUNCTION_51_6();
      v73 = sub_1DD27DBF0(v70, v71, v72);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2080;
      v74 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
      OUTLINED_FUNCTION_106();
      swift_beginAccess();
      v75 = v92;
      isa(v92, (v1 + v74), v4);
      sub_1DD30B5E4(&qword_1ECCD6EF8, MEMORY[0x1E69695A8]);
      v76 = sub_1DD336DC0();
      v78 = v77;
      v88(v75, v4);
      v79 = sub_1DD27DBF0(v76, v78, &v94);

      *(v69 + 14) = v79;
      v80 = v89;
      _os_log_impl(&dword_1DD27A000, v89, v90, "Failed to initialize inRequest schema objects. requestId: %s, prev rrid: %s", v69, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_19_4();
    }

    else
    {

      (v7[1].isa)(v12, v4);
    }

    goto LABEL_17;
  }

  v21 = v20;
  v22 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
  if (!v22)
  {

    goto LABEL_11;
  }

  v23 = v3;
  v88 = v22;
  v89 = v3;
  v24 = v7 + 2;
  v87 = v7[2].isa;
  v87(v17, v23, v4);
  v25 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
  swift_beginAccess();
  v86 = v7;
  v90 = v21;
  v84 = v7[5].isa;
  v84(v1 + v25, v17, v4);
  swift_endAccess();
  v26 = objc_opt_self();
  v27 = v89;
  v28 = sub_1DD334860();
  v85 = v26;
  v29 = [v26 derivedIdentifierForComponent:15 fromSourceIdentifier:v28];

  sub_1DD334870();
  v30 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
  swift_beginAccess();
  v84(v1 + v30, v17, v4);
  swift_endAccess();
  sub_1DD27D80C(0, &qword_1EE027A58, 0x1E69CF640);
  v31 = v87;
  v87(v17, v27, v4);
  v32 = sub_1DD27D9B4(v17);
  v33 = v88;
  [v88 setUuid_];

  if (AFDeviceSupportsSAE())
  {
    v34 = 43;
  }

  else
  {
    v34 = 1;
  }

  [v33 setComponent_];
  v84 = v30;
  v31(v17, v1 + v30, v4);
  v35 = sub_1DD27D9B4(v17);
  [v90 setUuid_];

  v36 = v90;
  [v90 setComponent_];
  [v19 setSource_];
  [v19 setTarget_];
  v37 = v91;
  v38 = v89;
  v89 = v24;
  v31(v91, v38, v4);
  v39 = v19;
  sub_1DD335860();
  v40 = sub_1DD335CB0();
  v41 = sub_1DD336940();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_31_0();
    v83 = swift_slowAlloc();
    v93[0] = v83;
    *v42 = 136315650;
    v43 = v39;
    v82 = v41;
    v44 = v43;
    v45 = [v43 description];
    v81 = v40;
    v46 = v4;
    v47 = v45;
    sub_1DD3365D0();

    v48 = OUTLINED_FUNCTION_77();
    v51 = sub_1DD27DBF0(v48, v49, v50);

    *(v42 + 4) = v51;
    *(v42 + 12) = 2080;
    v53 = MEMORY[0x1E12AA6A0](v52);
    v55 = v54;
    v56 = v86[1].isa;
    v56(v37, v46);
    v57 = sub_1DD27DBF0(v53, v55, v93);

    *(v42 + 14) = v57;
    *(v42 + 22) = 2080;
    v58 = v88;
    v59 = (v87)(v92, v84 + v1, v46);
    v60 = MEMORY[0x1E12AA6A0](v59);
    v62 = v61;
    v63 = OUTLINED_FUNCTION_87_2();
    (v56)(v63);
    v36 = v90;
    v64 = sub_1DD27DBF0(v60, v62, v93);

    *(v42 + 24) = v64;
    v65 = v81;
    _os_log_impl(&dword_1DD27A000, v81, v82, "Emitting request link: %s with requestId: %s, rrid: %s", v42, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_25_3();
  }

  else
  {
    v58 = v33;

    (v86[1].isa)(v37, v4);
  }

  [objc_msgSend(v85 sharedStream)];

  swift_unknownObjectRelease();
LABEL_17:
  OUTLINED_FUNCTION_24_1();
}

uint64_t OUTLINED_FUNCTION_1_2(unint64_t *a1)
{

  return sub_1DD28092C(a1);
}

void OUTLINED_FUNCTION_54()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t OUTLINED_FUNCTION_1_3()
{
  result = v0;
  v3 = *(v1 - 296);
  v4 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_5(unint64_t *a1)
{

  return sub_1DD2D86D4(a1);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return swift_once();
}

uint64_t sub_1DD27D638()
{
  if (!*(v0 + 16) && (*(v0 + 24) & 1) == 0)
  {
    OUTLINED_FUNCTION_52();
    v2 = (*(v1 + 160))();
    v3 = *(v0 + 16);
    *(v0 + 16) = v2;

    v4 = *(v0 + 16);
  }

  return sub_1DD335860();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[3];
  v6 = *(v0[5] + 8);
  return v0[6];
}

uint64_t OUTLINED_FUNCTION_22_1@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 264);
  return result;
}

BOOL OUTLINED_FUNCTION_34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_1DD336830();
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 136) = &a9 - v9;

  return sub_1DD336620();
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return sub_1DD336CC0();
}

void OUTLINED_FUNCTION_22_7()
{
  v8 = (*(v1 + 56) + 32 * v0);
  *v8 = v7;
  v8[1] = v6;
  v8[2] = v5;
  v8[3] = v4;
}

void OUTLINED_FUNCTION_22_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(v26, 32, 0xE100000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1DD27D80C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_33_8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v14 = *a4;
  v15 = a4[1];
  v20 = a4[2];
  v18 = a5[1];
  v19 = *a5;
  *(v7 - 112) = *a1;
  *(v7 - 104) = v9;
  *(v7 - 96) = v10;
  v16 = *(a7 + 40);
}

uint64_t OUTLINED_FUNCTION_33_9()
{
}

id sub_1DD27D9B4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD334860();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1DD334890();
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t OUTLINED_FUNCTION_11()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_21_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_1DD27DBF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DD27DEDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DD27E654(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void OUTLINED_FUNCTION_28_1()
{

  JUMPOUT(0x1E12ADA30);
}

void OUTLINED_FUNCTION_28_5()
{
  v2 = *(v0 - 456);
}

uint64_t OUTLINED_FUNCTION_28_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t ScopedReferenceResolutionDataProvider.__deallocating_deinit()
{
  ScopedReferenceResolutionDataProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t ScopedReferenceResolutionDataProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

void OUTLINED_FUNCTION_52_0()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t OUTLINED_FUNCTION_52_2()
{
  v2 = *(v0 - 440);
}

id OUTLINED_FUNCTION_52_4()
{
  v4 = *(v0 + 112);

  return [v2 (v1 + 1656)];
}

unint64_t sub_1DD27DEDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DD2A280C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1DD336C30();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ReferenceResolutionClient.__allocating_init()()
{
  v1 = v0;
  if (qword_1EE029290 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_14(v2, qword_1EE02A6A8);
  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  if (OUTLINED_FUNCTION_21_0(v4))
  {
    OUTLINED_FUNCTION_33_0();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_122(v5);
    OUTLINED_FUNCTION_73();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    v11 = OUTLINED_FUNCTION_2_3();
    MEMORY[0x1E12ADA30](v11);
  }

  type metadata accessor for SiriReferenceResolutionService();
  v12 = sub_1DD27E988();
  v13 = *(v1 + 144);

  return v13(v12);
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  result = *(v0 - 408);
  v2 = *(v0 - 440);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_6()
{
  result = v0;
  v3 = *(v1 - 560);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1)
{

  return MEMORY[0x1EEE3DD78](a1, v1, 1, 1, 1);
}

uint64_t OUTLINED_FUNCTION_14_13()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return result;
}

uint64_t OUTLINED_FUNCTION_19()
{
  result = *(v0 - 288);
  v2 = *(v0 - 280);
  return result;
}

void OUTLINED_FUNCTION_19_1()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_19_4()
{

  JUMPOUT(0x1E12ADA30);
}

void OUTLINED_FUNCTION_19_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(v26, 32, 0xE100000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

double OUTLINED_FUNCTION_19_6()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_19_7()
{

  JUMPOUT(0x1E12AC540);
}

void OUTLINED_FUNCTION_76_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a3 + 16);
  v5 = a4[1];
  v6 = *a4;
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return sub_1DD336AD0();
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  v1 = *(*(v0 - 448) + 8);
  result = *(v0 - 224);
  v3 = *(v0 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{
  v1 = *(v0 - 240);
  v2 = *(*(v0 - 248) + 8);
  return *(v0 - 232);
}

uint64_t OUTLINED_FUNCTION_3_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_3_16()
{

  JUMPOUT(0x1E12AC540);
}

uint64_t sub_1DD27E654(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return sub_1DD27DBF0(v0, v1, (v2 - 152));
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return MEMORY[0x1EEDC5E40](v2, 0, v1, v0);
}

uint64_t OUTLINED_FUNCTION_35_6()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 104);
  v6 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_71()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 64) = a2;
  *(a1 + 32) = v2;

  return MEMORY[0x1EEDC5E80](2016555045, 0xE400000000000000);
}

void OUTLINED_FUNCTION_23_6()
{
  v6 = *(v2 + 112);
  *(v0 + 16) = v3;
  v7 = v0 + 16 * v1;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v2 + 96) = v0;
  v8 = *(*(v6 + 16) + 16);
}

uint64_t OUTLINED_FUNCTION_23_9()
{
  result = v0 - 120;
  v2 = *(v0 - 168);
  return result;
}

void OUTLINED_FUNCTION_100_0()
{

  JUMPOUT(0x1E12AC640);
}

uint64_t OUTLINED_FUNCTION_100_1()
{
  v2 = *(v0 - 320);

  return sub_1DD336B10();
}

uint64_t sub_1DD27E988()
{
  if (qword_1EE029480 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE02A6E8;
  if (qword_1EE02A6E8)
  {
    v2 = 0;
LABEL_9:
    sub_1DD335860();
    sub_1DD27EBC8(v2);
    return v1;
  }

  if (qword_1EE027E78 != -1)
  {
    OUTLINED_FUNCTION_36_7();
  }

  v3 = qword_1EE027E80;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DD3011E4;
  *(v5 + 24) = v4;
  v8[4] = sub_1DD3011EC;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DD301214;
  v8[3] = &block_descriptor_6;
  v6 = _Block_copy(v8);
  sub_1DD335860();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    v1 = qword_1EE02A6E8;
    v2 = sub_1DD3011E4;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SiriReferenceResolutionService()
{
  result = qword_1EE029468;
  if (!qword_1EE029468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD27EBC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ReferenceResolutionClient.__allocating_init(service:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{
  v1 = *(*(v0 - 464) + 8);
  result = *(v0 - 264);
  v3 = *(v0 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(unint64_t *a1)
{

  return sub_1DD28092C(a1);
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_10(unint64_t *a1)
{

  return sub_1DD2D86D4(a1);
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_once();
}

uint64_t *OUTLINED_FUNCTION_0_14(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = result[2];
  return result;
}

uint64_t *OUTLINED_FUNCTION_0_18(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = result[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return sub_1DD336560();
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

BOOL OUTLINED_FUNCTION_51(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_9_6()
{
  v1 = **(v0 - 312);
  result = *(v0 - 504);
  v3 = *(v0 - 528);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_11()
{

  JUMPOUT(0x1E12ACD20);
}

double OUTLINED_FUNCTION_9_12()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_9_13(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = result[2];
  return result;
}

void OUTLINED_FUNCTION_9_14()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD3131D4();
}

uint64_t OUTLINED_FUNCTION_73_1()
{
}

BOOL OUTLINED_FUNCTION_17_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_73_2()
{
  result = *(v0 - 592);
  v2 = *(v0 - 600);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void *OUTLINED_FUNCTION_73_4@<X0>(const void *a1@<X8>)
{

  return memcpy((v1 - 256), a1, 0xA8uLL);
}

uint64_t sub_1DD27F118(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_127(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_123();
  v9(v8);
  return v4;
}

uint64_t sub_1DD27F164(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_51_9()
{
}

uint64_t OUTLINED_FUNCTION_48_1()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 72);

  return sub_1DD334C30();
}

uint64_t OUTLINED_FUNCTION_48_5(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];

  return sub_1DD336AD0();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t sub_1DD27F40C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD27F454(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD27F4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = sub_1DD3363C0();
  v36 = *(v33 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DD336400();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DD335E70();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 104))(&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D2860]);
  v20 = sub_1DD335EC0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  v32 = sub_1DD335EA0();
  v23 = (*(*a2 + 336))(v32, a3);
  v25 = v24;
  sub_1DD2846CC();
  v26 = sub_1DD3369D0();
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  *(v27 + 32) = v23;
  LOBYTE(a4) = v25 & 1;
  *(v27 + 40) = v25 & 1;
  aBlock[4] = sub_1DD281824;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD2811BC;
  aBlock[3] = &block_descriptor_29;
  v28 = _Block_copy(aBlock);
  sub_1DD335860();
  sub_1DD283CAC(v23, a4);

  sub_1DD3363E0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DD27F40C(&qword_1EE027F38, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6710, &qword_1DD339620);
  sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
  v29 = v33;
  sub_1DD336B10();
  MEMORY[0x1E12AC840](0, v15, v11, v28);
  _Block_release(v28);

  sub_1DD283CB8(v23, a4);
  (*(v36 + 8))(v11, v29);
  return (*(v34 + 8))(v15, v35);
}

uint64_t sub_1DD27F8C8()
{
  v1 = *(v0 + 24);

  sub_1DD283CB8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void sub_1DD27F90C()
{
  OUTLINED_FUNCTION_8_4();
  v142 = v0;
  v122 = v1;
  v133 = sub_1DD335CE0();
  v2 = OUTLINED_FUNCTION_1_0(v133);
  v112 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_50_0(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v10);
  v140 = v106 - v11;
  OUTLINED_FUNCTION_31_1();
  v124 = sub_1DD336220();
  v12 = OUTLINED_FUNCTION_1_0(v124);
  v123 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v106 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v20);
  v141 = sub_1DD334830();
  v21 = OUTLINED_FUNCTION_1_0(v141);
  v108 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  v27 = v26 - v25;
  v107 = sub_1DD335CA0();
  v28 = OUTLINED_FUNCTION_1_0(v107);
  v106[3] = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  v34 = v33 - v32;
  if (qword_1EE027610 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v35 = qword_1EE02A1D0;
    sub_1DD335C90();
    sub_1DD336A40();
    v36 = qword_1EE02A1D0;
    v105 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_113_1();
    v106[2] = v34;
    sub_1DD335C70();

    sub_1DD334820();
    v126 = sub_1DD335EB0();
    v34 = v124;
    v37 = v125;
    v120 = *(v126 + 16);
    if (!v120)
    {
      break;
    }

    v38 = 0;
    v139 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;
    v118 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_ranker;
    v117 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage;
    OUTLINED_FUNCTION_16_7();
    v116 = v126 + v39;
    v121 = v40 + 16;
    v138 = (v40 + 8);
    v137 = (v108 + 16);
    v130 = *MEMORY[0x1E69D2900];
    v129 = *MEMORY[0x1E69D27E8];
    v128 = (v112 + 104);
    v115 = (v112 + 8);
    v110 = v112 + 32;
    *&v41 = 136315138;
    v109 = v41;
    *&v41 = 136315394;
    v111 = v41;
    v114 = xmmword_1DD339E80;
    v119 = v19;
    v131 = v27;
    while (v38 < *(v126 + 16))
    {
      v42 = *(v123 + 72);
      v134 = v38;
      v43 = *(v123 + 16);
      v43(v37, v116 + v42 * v38, v34);
      v113 = v43;
      v43(v19, v37, v34);
      v44 = sub_1DD335CB0();
      v45 = sub_1DD336930();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_50();
        v47 = OUTLINED_FUNCTION_31_0();
        v143[0] = v47;
        *v46 = v109;
        sub_1DD336200();
        v136 = *v138;
        v136(v19, v34);
        v48 = OUTLINED_FUNCTION_51_6();
        v51 = sub_1DD27DBF0(v48, v49, v50);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_1DD27A000, v44, v45, "Persisting mentioned entity %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        OUTLINED_FUNCTION_25_3();
        OUTLINED_FUNCTION_17_5();
      }

      else
      {

        v136 = *v138;
        v136(v19, v34);
      }

      v52 = sub_1DD336190();
      v53 = *v137;
      v54 = OUTLINED_FUNCTION_110_1();
      v135 = v55;
      v55(v54);
      OUTLINED_FUNCTION_66_0();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v34);
      sub_1DD335F40();
      v59 = sub_1DD3360A0();
      v60 = sub_1DD336130();
      OUTLINED_FUNCTION_1(v60);
      v62 = v132;
      v127 = *(v61 + 104);
      v127(v132, v130, v60);
      v63 = *v128;
      v64 = v133;
      v65 = (*v128)(v62, v129, v133);
      v66 = v106;
      MEMORY[0x1EEE9AC00](v65);
      v105 = v62;
      v67 = sub_1DD2815F0(sub_1DD30AB90, &v104, v59);

      (*v115)(v62, v64);
      if (!v67)
      {
        v68 = v132;
        v127(v132, v130, v60);
        v66 = v133;
        v63(v68, v129, v133);
        v69 = sub_1DD336090();
        v71 = v70;
        sub_1DD2816FC();
        v72 = *(*v71 + 16);
        sub_1DD286680(v72);
        v73 = *v71;
        *(v73 + 16) = v72 + 1;
        (*(v112 + 32))(v73 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v72, v68, v66);
        v69(v143, 0);
      }

      sub_1DD28191C(v142 + v118, v143);
      v74 = v144;
      v75 = v145;
      __swift_project_boxed_opaque_existential_1(v143, v144);
      OUTLINED_FUNCTION_62_3();
      v27 = v131;
      (*(v76 + 8))(v52, v131, v74, v75);
      __swift_destroy_boxed_opaque_existential_1(v143);
      sub_1DD336060();
      v77 = OUTLINED_FUNCTION_110_1();
      v135(v77);
      OUTLINED_FUNCTION_66_0();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v66);
      sub_1DD335FA0();
      v81 = v52;
      v82 = sub_1DD335CB0();
      v83 = sub_1DD336940();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = OUTLINED_FUNCTION_50_2();
        v143[0] = OUTLINED_FUNCTION_49_1();
        *v84 = v111;
        v85 = sub_1DD336010();
        v87 = sub_1DD27DBF0(v85, v86, v143);

        *(v84 + 4) = v87;
        *(v84 + 12) = 2080;
        v88 = sub_1DD3368F0();
        v90 = sub_1DD27DBF0(v88, v89, v143);

        *(v84 + 14) = v90;
        v27 = v131;
        _os_log_impl(&dword_1DD27A000, v82, v83, "Entity %s is assigned new saliency score %s", v84, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_25_3();
        OUTLINED_FUNCTION_17_5();
      }

      sub_1DD28191C(v142 + v117, v143);
      v91 = v145;
      __swift_project_boxed_opaque_existential_1(v143, v144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6930, &qword_1DD339930);
      OUTLINED_FUNCTION_83();
      v92 = swift_allocObject();
      *(v92 + 16) = v114;
      *(v92 + 32) = v81;
      v93 = *(v91 + 24);
      v94 = v81;
      v95 = OUTLINED_FUNCTION_111_1();
      v93(v95);
      v19 = v119;
      v38 = v134 + 1;
      v37 = v125;
      v34 = v124;
      v136(v125, v124);

      __swift_destroy_boxed_opaque_existential_1(v143);
      if (v120 == v38)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_13:

  v96 = sub_1DD335CB0();
  sub_1DD336940();
  OUTLINED_FUNCTION_90_3();
  if (os_log_type_enabled(v96, v97))
  {
    *OUTLINED_FUNCTION_69() = 0;
    OUTLINED_FUNCTION_3(&dword_1DD27A000, v98, v99, "Exiting handleMentionedEvent.");
    OUTLINED_FUNCTION_28_1();
  }

  OUTLINED_FUNCTION_21(&v137);
  v100(v27, v141);
  sub_1DD336A30();
  v101 = qword_1EE02A1D0;
  sub_1DD335C80();

  OUTLINED_FUNCTION_21(&v135);
  v102 = OUTLINED_FUNCTION_41();
  v103(v102);
  OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_30_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ScopedReferenceResolutionDataProvider.__allocating_init(storage:)()
{
  v0 = swift_allocObject();
  ScopedReferenceResolutionDataProvider.init(storage:)();
  return v0;
}

uint64_t ScopedReferenceResolutionDataProvider.init(storage:)()
{

  *(v0 + 16) = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F0, &qword_1DD339470);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_1DD3357F0();
  sub_1DD2807F0();
  return v0;
}

uint64_t sub_1DD2807F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F0, &qword_1DD339470);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_2(&qword_1EE0279F8);
  sub_1DD335860();
  return sub_1DD335840();
}

uint64_t sub_1DD28089C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD2A84C8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DD2808F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScopedReferenceResolutionDataProvider();
  result = sub_1DD336260();
  *a1 = result;
  return result;
}

uint64_t sub_1DD28092C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScopedReferenceResolutionDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriEnvironment.scopedReferenceResolutionData.getter()
{
  type metadata accessor for ScopedReferenceResolutionDataProvider();
  OUTLINED_FUNCTION_0_1(&qword_1EE0279F0);

  return sub_1DD335760();
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1)
{
  *(v3 - 144) = v1;

  return MEMORY[0x1EEDBFC90](v2, a1);
}

void OUTLINED_FUNCTION_17_5()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t OUTLINED_FUNCTION_17_8()
{
  v4 = *(v2 + 16);
  v5 = *(*(v3 - 120) + 48) + *(v2 + 72) * v1;
  result = v0;
  v7 = *(v3 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_1DD28C87C(v2 - 160, v0, v1);
}

__n128 OUTLINED_FUNCTION_12_2(uint64_t a1)
{
  *(v2 - 152) = a1;
  result = *(v2 - 272);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_1DD3356D0();
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return swift_once();
}

void sub_1DD280C2C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v7 = sub_1DD3363C0();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  v15 = sub_1DD336400();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v49 = v17;
  v50 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  v24 = OUTLINED_FUNCTION_69_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9_7();
  v29 = sub_1DD27D638();
  if (v29)
  {
    v30 = v29;
    if (qword_1EE0278E8 != -1)
    {
      swift_once();
    }

    v31 = qword_1EE0278F0;
    sub_1DD27F164(a2, v4, &qword_1ECCD6348, &unk_1DD338E20);
    v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v33 = (v28 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    *(v34 + 24) = v30;
    sub_1DD281C60(v4, v34 + v32);
    v35 = (v34 + v33);
    *v35 = a3;
    v35[1] = a4;
    aBlock[4] = sub_1DD281200;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD2811BC;
    aBlock[3] = &block_descriptor_2;
    v36 = _Block_copy(aBlock);
    v37 = v31;

    sub_1DD335860();
    sub_1DD335860();
    sub_1DD3363E0();
    sub_1DD27F40C(&qword_1EE027F38, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6710, &qword_1DD339620);
    sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
    sub_1DD336B10();
    MEMORY[0x1E12AC840](0, v22, v14, v36);
    _Block_release(v36);

    (*(v51 + 8))(v14, v7);
    (*(v49 + 8))(v22, v50);

    OUTLINED_FUNCTION_24_1();
  }

  else
  {
    if (qword_1EE029290 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v38 = sub_1DD335CD0();
    OUTLINED_FUNCTION_14(v38, qword_1EE02A6A8);
    v39 = sub_1DD335CB0();
    sub_1DD336960();
    v40 = OUTLINED_FUNCTION_3_7();
    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_33_0();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_68(v42);
      OUTLINED_FUNCTION_3(&dword_1DD27A000, v43, v44, "Failed to handle siri mentioned event because SiriReferenceResolutionService failed to initialize");
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    sub_1DD2CE24C();
    OUTLINED_FUNCTION_14_7();
    v45 = swift_allocError();
    OUTLINED_FUNCTION_40_5(v45, v46);
    a3();
    OUTLINED_FUNCTION_24_1();
  }
}

uint64_t sub_1DD2810B4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_69_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  v9 = *(v1 + 24);

  v10 = sub_1DD336240();
  if (!OUTLINED_FUNCTION_44_3(v10))
  {
    (*(*(v0 - 8) + 8))(v1 + v5, v0);
  }

  v11 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v11 + 8);

  return MEMORY[0x1EEE6BDD0](v1, v11 + 16, v4 | 7);
}

uint64_t sub_1DD2811BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = sub_1DD335860();
  v1(v3);
}

uint64_t sub_1DD281200()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_69_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1DD27F4A8(v7, v8, v0 + v6, v10, v11);
}

uint64_t OUTLINED_FUNCTION_5_0()
{
  v1 = *(*(v0 - 384) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_91()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_5_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_5_8(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a12;
  v17 = a13;
  v18 = a14;

  return sub_1DD315148(v16, v17, v18, 1, v14, &a9);
}

uint64_t OUTLINED_FUNCTION_5_11()
{
}

uint64_t OUTLINED_FUNCTION_5_12()
{
}

void OUTLINED_FUNCTION_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_57_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_57_5()
{
}

uint64_t OUTLINED_FUNCTION_104(uint64_t result, uint64_t a2)
{
  *(v2 - 104) = result;
  *(v2 - 96) = a2;
  return result;
}

void OUTLINED_FUNCTION_104_1()
{
  *(v1 - 120) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_1DD335AE0();
}

uint64_t OUTLINED_FUNCTION_65_2()
{
  v2 = *(v0 - 72);
}

uint64_t OUTLINED_FUNCTION_65_5()
{

  return type metadata accessor for Expression();
}

BOOL sub_1DD281620(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = a4(0);
    OUTLINED_FUNCTION_69_0(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

void sub_1DD2816FC()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_1DD281748();
    *v0 = v4;
  }
}

void sub_1DD281748()
{
  OUTLINED_FUNCTION_16_1();
  if (v2)
  {
    OUTLINED_FUNCTION_15_3();
    if (v4 != v5)
    {
      if (v3 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_4();
    }
  }

  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_8_2();
  sub_1DD28735C(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_10_3();
  v11 = *(sub_1DD335CE0() - 8);
  if (v1)
  {
    OUTLINED_FUNCTION_26_3(MEMORY[0x1E69D2800], (*(v11 + 80) + 32) & ~*(v11 + 80));
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_4();
  }
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return swift_allocError();
}

BOOL OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2)
{

  return sub_1DD2E5EF8(a1, a2, v2);
}

void OUTLINED_FUNCTION_70_1()
{
  v2 = *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_70_3(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 168);

  return sub_1DD27DBF0(v5, v1, (v3 - 104));
}

void OUTLINED_FUNCTION_70_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1DD28191C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_32_6()
{
  *v0 = *(v2 - 88);
  v3 = *(v1 + 32);
  return *(v2 - 136);
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_27_2(unint64_t a1@<X8>)
{

  sub_1DD28541C(a1 > 1, v1, 1, v2);
}

void OUTLINED_FUNCTION_27_3(uint64_t a1@<X8>)
{
  *(a1 - 256) = v3;
  *(v4 - 456) = v2;
  *(v4 - 448) = v1;
  v5 = *(v4 + 16);
}

uint64_t OUTLINED_FUNCTION_27_5()
{
  v2 = *(*(v1 - 120) + 48) + v0;
  result = *(v1 - 136);
  v4 = *(v1 - 104);
  return result;
}

uint64_t *OUTLINED_FUNCTION_27_7(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = result[2];
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13()
{
  result = *(v0 - 304);
  v2 = *(v0 - 296);
  return result;
}

void OUTLINED_FUNCTION_13_2(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1)
{
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  return (*(v2 + 8))(a1, v3);
}

uint64_t sub_1DD281C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  v1 = *(*(v0 - 392) + 8);
  result = *(v0 - 232);
  v3 = *(v0 - 536);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1DD336190();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_1DD336EC0();
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return ExpressionType.init<A>(_:)(&a9, v9, v10, v11, a1);
}

void OUTLINED_FUNCTION_4_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_4_15()
{
  sub_1DD281FE8(v0);

  return sub_1DD335860();
}

uint64_t OUTLINED_FUNCTION_4_17()
{
  result = *(v0 - 96);
  v2 = *(*(v0 - 88) - 8);
  return result;
}

uint64_t sub_1DD281FE8(uint64_t result)
{
  if (result)
  {
    return sub_1DD335860();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_90(uint64_t a1, uint64_t a2)
{

  return ExpressionType.init(_:)(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_90_0()
{
  v2 = *(v0 + 184) + *(v0 + 240);

  return sub_1DD335CB0();
}

void OUTLINED_FUNCTION_90_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void *OUTLINED_FUNCTION_90_2()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 128), v0);
}

uint64_t OUTLINED_FUNCTION_90_4(__int128 *a1, uint64_t a2)
{
  sub_1DD3148E8(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_16_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_59_0(uint64_t a1)
{
  *(v2 - 184) = v1;
  *(v2 - 208) = a1;
  *(v2 - 144) = a1;
  return *(v2 - 288);
}

id OUTLINED_FUNCTION_59_1(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 448);

  return [v5 a2];
}

uint64_t OUTLINED_FUNCTION_59_3()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return sub_1DD2A34A0(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_59_6(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void sub_1DD282290(uint64_t a1, void (*a2)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  v6 = OUTLINED_FUNCTION_69_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_7();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6858, "Ta");
  OUTLINED_FUNCTION_36(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  if (sub_1DD27D638())
  {
    OUTLINED_FUNCTION_33_4();
    v17 = sub_1DD3368E0();
    OUTLINED_FUNCTION_36_0(v16, v18, v19, v17);
    sub_1DD27F164(a1, v2, &qword_1ECCD6348, &unk_1DD338E20);
    v20 = (*(v8 + 80) + 56) & ~*(v8 + 80);
    v21 = swift_allocObject();
    v22 = OUTLINED_FUNCTION_42_4(v21);
    sub_1DD281C60(v2, v22 + v20);
    sub_1DD335860();
    sub_1DD2BDAC0(0, 0, v16, &unk_1DD339D60, a1);
  }

  else
  {
    if (qword_1EE029290 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v23 = sub_1DD335CD0();
    OUTLINED_FUNCTION_14(v23, qword_1EE02A6A8);
    v24 = sub_1DD335CB0();
    v25 = sub_1DD336960();
    if (OUTLINED_FUNCTION_17_0(v25))
    {
      OUTLINED_FUNCTION_33_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_46_5(&dword_1DD27A000, v26, v27, "Failed to collect salient entities because SiriReferenceResolutionService failed to initialize");
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    sub_1DD2CE24C();
    OUTLINED_FUNCTION_14_7();
    v28 = swift_allocError();
    OUTLINED_FUNCTION_43_4(v28, v29);
    a2();
  }
}

uint64_t sub_1DD2824F8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_69_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 2);
  swift_unknownObjectRelease();
  v9 = *(v1 + 5);

  v10 = *(v1 + 6);

  v11 = sub_1DD336240();
  if (!OUTLINED_FUNCTION_44_3(v11))
  {
    (*(*(v0 - 8) + 8))(&v1[v5], v0);
  }

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1DD2825F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t result, uint64_t a2)
{
  *(v2 - 216) = result;
  *(v2 - 312) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_39_3(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v4 = *(v1 - 176);
  v3 = *(v1 - 168);
}

uint64_t OUTLINED_FUNCTION_39_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a2;
  *(v3 - 232) = a1;

  return sub_1DD334890();
}

id OUTLINED_FUNCTION_39_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *v14 = a9;

  return [v13 (v12 + 1656)];
}

void OUTLINED_FUNCTION_39_7()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t *OUTLINED_FUNCTION_39_10(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = result[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  return result;
}

uint64_t sub_1DD2827C8()
{
  OUTLINED_FUNCTION_48();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = sub_1DD2BEDE4;
  v6 = OUTLINED_FUNCTION_4_4();

  return v7(v6);
}

uint64_t sub_1DD28286C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD2BEB7C;

  return v7(a1);
}

uint64_t sub_1DD282964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2(v9);
  *v10 = v11;
  v10[1] = sub_1DD2BEDE4;
  v12 = OUTLINED_FUNCTION_29_3();

  return sub_1DD282B28(v12, v13, v14, v15, v16, v8, v17);
}

uint64_t sub_1DD282A5C()
{
  OUTLINED_FUNCTION_4();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1DD2CDDB0;

  return sub_1DD282B4C();
}

uint64_t sub_1DD282B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DD282A5C, 0, 0);
}

uint64_t sub_1DD282B4C()
{
  OUTLINED_FUNCTION_4();
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1DD2CB2A4;

  return v5(v0 + 16);
}

uint64_t sub_1DD282C38()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2(v5);
  *v6 = v7;
  v6[1] = sub_1DD2BE86C;

  return sub_1DD282D84(v2, v4, v3);
}

uint64_t OUTLINED_FUNCTION_47_2()
{
  v2 = *(*(v1 - 432) + 8);
  result = v0;
  v4 = *(v1 - 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_47_4(uint64_t a1)
{

  return sub_1DD296084(a1, v1, v2);
}

uint64_t sub_1DD282D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *(*a2 + 280);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1DD2CDF3C;

  return v9(a3);
}

uint64_t OUTLINED_FUNCTION_68_1()
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_68_3()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2080;

  return sub_1DD2E3C3C(v1);
}

uint64_t OUTLINED_FUNCTION_29()
{
  result = *(v0 - 256);
  v2 = *(v0 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_72_3(float a1)
{
  *v3 = a1;

  return sub_1DD27DBF0(v2, v1, (v4 - 64));
}

uint64_t OUTLINED_FUNCTION_54_5()
{
  v2 = *(v0 - 96);

  return sub_1DD336590();
}

void *OUTLINED_FUNCTION_54_6()
{

  return memcpy(v1, v0, 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_54_8()
{

  return type metadata accessor for Expression();
}

uint64_t sub_1DD2830E8()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1DD335CA0();
  v1[4] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_71();
  v7 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD28318C()
{
  OUTLINED_FUNCTION_64_4();
  v1 = v0[3] + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;
  v2 = sub_1DD335CB0();
  v3 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v3))
  {
    *OUTLINED_FUNCTION_69() = 0;
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_28_1();
  }

  if (qword_1EE027628 != -1)
  {
    swift_once();
  }

  v9 = v0[6];
  v10 = qword_1EE02A1E0;
  sub_1DD335C90();
  sub_1DD336A40();
  v11 = qword_1EE02A1E0;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_75_5();
  sub_1DD335C70();

  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1DD306728;
  v13 = v0[2];
  v14 = v0[3];

  return sub_1DD304B44();
}

uint64_t OUTLINED_FUNCTION_62_2()
{
  result = v0;
  v3 = *(v1 - 184);
  v4 = *(v1 - 144);
  v5 = *(v1 - 264);
  return result;
}

uint64_t *OUTLINED_FUNCTION_62_5(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = result[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_62_6(uint64_t a1, int a2, char a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return sub_1DD325284(va1, va, 1, a3, v4, v3);
}

uint64_t sub_1DD2833B4()
{
  OUTLINED_FUNCTION_4();
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DD2834C0, 0, 0);
}

uint64_t sub_1DD2834C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  sub_1DD28355C();
  (*(v2 + 8))(v1, v4);

  v6 = v0[1];

  return v6(v5);
}

void sub_1DD28355C()
{
  v0 = sub_1DD335CB0();
  v1 = sub_1DD336940();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DD27A000, v0, v1, "Exiting RRNowPlayingMediaPuller...", v2, 2u);
    MEMORY[0x1E12ADA30](v2, -1, -1);
  }

  sub_1DD336A30();
  if (qword_1EE0277E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE02A200;
  sub_1DD335C80();
}

uint64_t sub_1DD2836AC()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

const char *sub_1DD2837A0(uint64_t a1, uint64_t a2)
{
  if (qword_1EE028738 != -1)
  {
    swift_once();
  }

  if (sub_1DD283A3C(a1, qword_1EE028740))
  {
    return a1;
  }

  v4 = Connection.handle.getter();
  result = sqlite3_errmsg(v4);
  if (result)
  {
    v6 = sub_1DD336700();
    v8 = v7;
    sub_1DD323E94();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_willThrow();
    sub_1DD335860();
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t Statement.run(_:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (*(a1 + 16))
  {
    Statement.bind(_:)(a1);
    v5 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);

    if (!v2)
    {
      return v5;
    }
  }

  else
  {
    sub_1DD28BA1C(0);
    sub_1DD2846CC();
    v6 = *(v1 + 24);
    OUTLINED_FUNCTION_106();
    swift_beginAccess();
    do
    {
      while (1)
      {
        v7 = qword_1EE028938;
        sub_1DD335860();
        if (v7 != -1)
        {
          swift_once();
        }

        sub_1DD3369A0();
        v8 = sub_1DD2885B8();
        if ((v14 & 1) != 0 || v13 != v8)
        {
          break;
        }

        v9 = sqlite3_step(*(v4 + 16));
        v10 = sub_1DD2837A0(v9, 0);

        if (v3)
        {
          return v4;
        }

        if (v10 != 100)
        {
          goto LABEL_16;
        }
      }

      v11 = *(v6 + 88);
      sub_1DD3369E0();

      if (v3)
      {
        return v4;
      }
    }

    while ((v15 & 1) != 0);
LABEL_16:
    sub_1DD335860();
  }

  return v4;
}

{
  Statement.bind(_:)(a1);
  v1 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_5_12();
  return v1;
}

{
  Statement.bind(_:)(a1);
  v1 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_5_12();
  return v1;
}

uint64_t sub_1DD283A3C(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = MEMORY[0x1E12ACCF0](*(a2 + 40), a1, 4);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 4 * v7) != a1);
  }

  return v2;
}

uint64_t Statement.deinit()
{
  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  sqlite3_finalize(*(v0 + 16));
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t Statement.__deallocating_deinit()
{
  Statement.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t OUTLINED_FUNCTION_126_0()
{
}

uint64_t OUTLINED_FUNCTION_84()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

void OUTLINED_FUNCTION_84_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(a1, 8236, 0xE200000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t OUTLINED_FUNCTION_84_7()
{
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_1DD336570();
}

uint64_t OUTLINED_FUNCTION_24_3()
{
  result = *(v0 - 128);
  v2 = *(v0 - 120);
  v3 = *(v0 - 152);
  v4 = *(v0 - 144);
  return result;
}

void OUTLINED_FUNCTION_24_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(a1, 32, 0xE100000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t OUTLINED_FUNCTION_24_7()
{
}

id sub_1DD283CAC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1DD283CB8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t OUTLINED_FUNCTION_41_2()
{

  return MEMORY[0x1EEE3DAE0](v0);
}

uint64_t OUTLINED_FUNCTION_41_3(uint64_t result, _BYTE *a2)
{
  *a2 = 0;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_6(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_41_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  return sub_1DD28C87C(&a32, v32, v33);
}

uint64_t get_enum_tag_for_layout_string_Say8RRSQLite11Expressible_pG2by_AA10ExpressionVySbSgGSg6havingtSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1DD283E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54_0();
  a19 = v22;
  a20 = v23;
  v110 = v20;
  v25 = v24;
  type metadata accessor for Result();
  v102 = v26;
  v27 = OUTLINED_FUNCTION_1_0(v26);
  v100 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12();
  v101 = (v32 - v31);
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Connection.TransactionMode();
  v105 = v33;
  v34 = OUTLINED_FUNCTION_1_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  v109 = (v40 - v39);
  OUTLINED_FUNCTION_31_1();
  v108 = sub_1DD335CA0();
  v41 = OUTLINED_FUNCTION_1_0(v108);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_103();
  type metadata accessor for Table();
  v107 = v44;
  v45 = OUTLINED_FUNCTION_1_0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_12();
  v52 = v51 - v50;
  v111 = sub_1DD2881D0(v25);
  v53 = 0;
  v104 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db;
  v103 = (v36 + 104);
  v106 = (v47 + 8);
  while (1)
  {
    if (v111 == v53)
    {
      goto LABEL_24;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x1E12ACA60](v53, v25);
      v54 = v109;
    }

    else
    {
      v54 = v109;
      if (v53 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v55 = *(v25 + 8 * v53 + 32);
    }

    if (__OFADD__(v53, 1))
    {
      break;
    }

    v113 = v55;
    v56 = OUTLINED_FUNCTION_9_1();
    Table.init(_:database:)(v56);
    if (qword_1EE027758 != -1)
    {
      swift_once();
    }

    v57 = qword_1EE02A1F8;
    sub_1DD335C90();
    sub_1DD336A40();
    v58 = qword_1EE02A1F8;
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_63_0();
    sub_1DD335C70();

    v59 = *(v110 + v104);
    MEMORY[0x1EEE9AC00](v60);
    (*v103)(v54, 0, v105);
    sub_1DD335860();
    Connection.transaction(_:block:)(v54, sub_1DD28BBF8);
    if (v21)
    {
      v112 = v52;
      v66 = OUTLINED_FUNCTION_108();
      v67(v66);

      v68 = v21;
      a10 = v21;
      v69 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
      v70 = v113;
      if (swift_dynamicCast())
      {
        if (!(*(v100 + 88))(v101, v102))
        {

          (*(v100 + 96))(v101, v102);
          v71 = v101[1];
          v114 = *v101;
          v72 = v101[3];

          v73 = v113;
          v74 = sub_1DD335CB0();
          v75 = sub_1DD336950();

          if (os_log_type_enabled(v74, v75))
          {
            OUTLINED_FUNCTION_40();
            v76 = swift_slowAlloc();
            v77 = OUTLINED_FUNCTION_95();
            OUTLINED_FUNCTION_26();
            v78 = swift_slowAlloc();
            v115 = v78;
            *v76 = 136315395;
            v79 = sub_1DD27DBF0(v114, v71, &v115);

            *(v76 + 4) = v79;
            *(v76 + 12) = 2113;
            *(v76 + 14) = v73;
            *v77 = v73;
            v80 = v73;
            _os_log_impl(&dword_1DD27A000, v74, v75, "Failed to update else insert entity. error: %s entity: %{private}@", v76, 0x16u);
            sub_1DD28A0C0(v77, &qword_1ECCD6598, &unk_1DD339248);
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            __swift_destroy_boxed_opaque_existential_1(v78);
            v70 = v113;
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
          }

          else
          {
          }

          v93 = v112;
          v95 = &unk_1EE02A000;
          sub_1DD2A2BB8();
          OUTLINED_FUNCTION_68_0();
          OUTLINED_FUNCTION_96(v96, 2);

LABEL_23:
          sub_1DD336A30();
          v97 = v95[63];
          sub_1DD335C80();

          v98 = OUTLINED_FUNCTION_107();
          v99(v98);
          (*v106)(v93, v107);
LABEL_24:
          OUTLINED_FUNCTION_53();
          return;
        }

        (*(v100 + 8))(v101, v102);
      }

      v81 = v21;
      v82 = v113;
      v83 = sub_1DD335CB0();
      v84 = sub_1DD336950();

      if (os_log_type_enabled(v83, v84))
      {
        OUTLINED_FUNCTION_40();
        v85 = swift_slowAlloc();
        v86 = OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_26();
        v87 = swift_slowAlloc();
        a10 = v87;
        *v85 = 136315395;
        swift_getErrorValue();
        v88 = sub_1DD336E40();
        v90 = sub_1DD27DBF0(v88, v89, &a10);

        *(v85 + 4) = v90;
        v70 = v113;
        *(v85 + 12) = 2113;
        *(v85 + 14) = v82;
        *v86 = v82;
        v91 = v82;
        _os_log_impl(&dword_1DD27A000, v83, v84, "Failed to update else insert entity. error: %s entity: %{private}@", v85, 0x16u);
        sub_1DD28A0C0(v86, &qword_1ECCD6598, &unk_1DD339248);
        v92 = OUTLINED_FUNCTION_18();
        MEMORY[0x1E12ADA30](v92);
        __swift_destroy_boxed_opaque_existential_1(v87);
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        v68 = v21;
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
      }

      v93 = v112;
      sub_1DD2A2BB8();
      OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_96(v94, 2);

      v95 = &unk_1EE02A000;
      goto LABEL_23;
    }

    v61 = OUTLINED_FUNCTION_108();
    v62(v61);

    sub_1DD336A30();
    v63 = qword_1EE02A1F8;
    OUTLINED_FUNCTION_63_0();
    sub_1DD335C80();

    v64 = OUTLINED_FUNCTION_107();
    v65(v64);
    (*v106)(v52, v107);
    ++v53;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_1DD2846CC()
{
  result = qword_1EE028598;
  if (!qword_1EE028598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE028598);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8RRSQLite10ExpressionVySbSgGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_15_0()
{
  *(v1 + 4) = v0;
  v3 = *(v2 - 240);
  *(v1 + 12) = 2048;
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  v2 = *(v0 - 416);
  v3 = *(v0 - 384);

  return sub_1DD3365A0();
}

uint64_t OUTLINED_FUNCTION_15_2()
{
  result = *(v0 - 408);
  v2 = *(v0 - 368);
  v3 = *(v0 - 400);
  return result;
}

void OUTLINED_FUNCTION_15_6()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v0 + 56;
  v3 = ~(-1 << *(v0 + 32));
  *(v2 - 104) = v1 + 16;
  *(v2 - 128) = v1 + 8;
}

void OUTLINED_FUNCTION_15_9()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1)
{

  return MEMORY[0x1EEDBFC90](v1, a1);
}

uint64_t OUTLINED_FUNCTION_61_0()
{
  v2 = *(*(v1 - 328) + 104);
  result = v0;
  v4 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_2()
{

  return MEMORY[0x1EEE692D0](v0, v1);
}

void OUTLINED_FUNCTION_61_6(uint64_t a1@<X8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = a1;
  *(v3 - 96) = v2;
}

uint64_t *OUTLINED_FUNCTION_61_7(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = result[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return sub_1DD336220();
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  *(v21 + 48) = a21;
}

uint64_t sub_1DD284AB0(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_72_4();

  return MEMORY[0x1EEE6BDC0](v4, v5, v6);
}

void sub_1DD284AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_2_13();
  a25 = v26;
  a26 = v28;
  v57 = v29;
  v30 = *(v27 + 16);
  if (v30)
  {
    v31 = (v27 + 32);
    v32 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v34 = v31[3];
      v35 = v31[4];
      __swift_project_boxed_opaque_existential_1(v31, v34);
      (*(v35 + 8))(&a12, v34, v35);
      v36 = a12;
      v37 = a13;
      v38 = a14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD28541C(0, *(v32 + 16) + 1, 1, v32);
        v32 = v52;
      }

      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1DD28541C(v39 > 1, v40 + 1, 1, v32);
        v32 = v53;
      }

      *(v32 + 16) = v40 + 1;
      v41 = v32 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v37;
      v42 = *(v38 + 16);
      v43 = v33[2];
      v44 = v43 + v42;
      if (__OFADD__(v43, v42))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v46 = v33[3] >> 1, v46 < v44))
      {
        if (v43 <= v44)
        {
          v47 = v43 + v42;
        }

        else
        {
          v47 = v43;
        }

        sub_1DD28583C(isUniquelyReferenced_nonNull_native, v47, 1, v33);
        v33 = v48;
        v46 = v48[3] >> 1;
      }

      if (*(v38 + 16))
      {
        if (v46 - v33[2] < v42)
        {
          goto LABEL_26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
        swift_arrayInitWithCopy();

        if (v42)
        {
          v49 = v33[2];
          v50 = __OFADD__(v49, v42);
          v51 = v49 + v42;
          if (v50)
          {
            goto LABEL_27;
          }

          v33[2] = v51;
        }
      }

      else
      {

        if (v42)
        {
          goto LABEL_25;
        }
      }

      v31 += 5;
      if (!--v30)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
LABEL_23:
    a12 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67E8, &qword_1DD339848);
    sub_1DD288794(&qword_1EE0285F0, &qword_1ECCD67E8, &qword_1DD339848);
    v54 = sub_1DD336570();
    v56 = v55;

    v57[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    v57[4] = &protocol witness table for Expression<A>;
    *v57 = v54;
    v57[1] = v56;
    v57[2] = v33;
    OUTLINED_FUNCTION_1_19();
  }
}

void OUTLINED_FUNCTION_31_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_31_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{

  return sub_1DD28C87C(&a30, v30, v31);
}

uint64_t OUTLINED_FUNCTION_7()
{
  v1 = *(*(v0 - 416) + 8);
  result = *(v0 - 200);
  v3 = *(v0 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  result = *(v2 - 256);
  *(v3 - 264) = a1;
  v5 = *(v3 - 296);
  *(v3 - 272) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

__n128 OUTLINED_FUNCTION_7_10@<Q0>(unint64_t a1@<X8>, uint64_t a2, __n128 a3)
{
  v4->n128_u64[0] = v6;
  v4->n128_u64[1] = v7;
  v4[1].n128_u64[0] = v8;
  v4[1].n128_u64[1] = v5;
  v4[4].n128_u64[0] = v5;
  v4[4].n128_u64[1] = v3;
  v4[2].n128_u64[0] = v3;
  v4[2].n128_u64[1] = a1;
  result = a3;
  v4[3] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_12()
{
}

uint64_t == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return OUTLINED_FUNCTION_12_13(a1, a2, a3, a4, a5, 61);
}

{
  return OUTLINED_FUNCTION_8_13(a1, a2, a3, a4, a5, 61);
}

{
  return OUTLINED_FUNCTION_10_11(a1, a2, a3, a4, a5, 61);
}

{
  return OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, 61);
}

uint64_t sub_1DD28512C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43 = 0xE100000000000000;
  MEMORY[0x1E12AC540](a4, a5);
  MEMORY[0x1E12AC540](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_69_6(inited, xmmword_1DD3391F0);
  sub_1DD2855A0(a1, v11);
  sub_1DD2855A0(a2, &inited[4].n128_i64[1]);
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v12, v13, v14, v15, v16, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, 32);

  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  v17 = v45;
  v18 = v46;
  __swift_project_boxed_opaque_existential_1(&v42, v45);
  (v18[1])(&v25, v17, v18);
  v20 = v25;
  v19 = v26;
  v21 = v27;
  result = __swift_destroy_boxed_opaque_existential_1(&v42);
  if (a3)
  {
    v23 = OUTLINED_FUNCTION_113();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    v46 = &protocol witness table for Expression<A>;
    v42 = v20;
    v43 = v19;
    v44 = v21;
    sub_1DD285320(&v42, 0, 0xE000000000000000, a6);
    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {
    *a6 = v20;
    a6[1] = v19;
    a6[2] = v21;
  }

  return result;
}

uint64_t sub_1DD2852BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.expression.getter(a1, WitnessTable, a2);
}

uint64_t sub_1DD285320@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  MEMORY[0x1E12AC540](40, 0xE100000000000000);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_34_7();
  v7(v8);

  MEMORY[0x1E12AC540]();

  MEMORY[0x1E12AC540](41, 0xE100000000000000);
  v9 = OUTLINED_FUNCTION_34_7();
  v7(v9);

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v11;
  return result;
}

void sub_1DD28541C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6848, &unk_1DD339948);
    v11 = OUTLINED_FUNCTION_39_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_28_3();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1DD2854FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD339380;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = &protocol witness table for String;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
}

uint64_t sub_1DD2855A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_22(v3);
  (*v4)(a2);
  return a2;
}

uint64_t ExpressionType.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 24))();
  v8 = v7;
  result = (*(a2 + 32))(a1, a2);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{
  v1 = *(*(v0 - 456) + 8);
  result = *(v0 - 256);
  v3 = *(v0 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t *a1)
{
  v2 = *a1;

  return type metadata accessor for RRHeuristicSaliencyEstimator();
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return sub_1DD336D20();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_1DD28583C(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[5 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_57_3();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
    OUTLINED_FUNCTION_57_3();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1DD285958(uint64_t a1, uint64_t a2, void *a3)
{
  v114 = a1;
  v97 = sub_1DD335D60();
  v96 = *(v97 - 8);
  v5 = *(v96 + 64);
  v6 = MEMORY[0x1EEE9AC00](v97);
  v95 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v94 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6580, &qword_1DD339238);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v112 = (&v94 - v11);
  type metadata accessor for Row();
  v101 = v12;
  v99 = *(v12 - 8);
  v13 = *(v99 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v98 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v94 - v16;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
  v17 = *(v105 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v105);
  v106 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v110 = &v94 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v115 = (&v94 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v109 = &v94 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v94 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v94 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v94 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v108 = &v94 - v36;
  type metadata accessor for Table();
  v124 = v37;
  v118 = *(v37 - 8);
  v38 = v118[8];
  v39 = MEMORY[0x1EEE9AC00](v37);
  v102 = &v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v111 = &v94 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v117 = &v94 - v43;
  v44 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v119 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v120 = sub_1DD336010();
  v121 = v45;
  == infix<A>(_:_:)(a2 + v44, &v120, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180]);

  v46 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
  v104 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
  v116 = a3;
  v120 = sub_1DD335F20();
  v121 = v47;
  v48 = a2 + v46;
  v49 = v105;
  v50 = MEMORY[0x1E69E6180];
  == infix<A>(_:_:)(v48, &v120, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180]);

  v107 = v35;
  && infix(_:_:)(v32, v29);
  v51 = *(v17 + 8);
  v51(v29, v49);
  v103 = v17 + 8;
  v51(v32, v49);
  v120 = sub_1DD336010();
  v121 = v52;
  v53 = MEMORY[0x1E69E6158];
  == infix<A>(_:_:)(a2 + v119, &v120, MEMORY[0x1E69E6158], &protocol witness table for String, v50);

  v120 = 0xD000000000000010;
  v121 = 0x80000001DD33D1A0;
  v119 = a2;
  v54 = v106;
  == infix<A>(_:_:)(a2 + v104, &v120, v53, &protocol witness table for String, MEMORY[0x1E69E6180]);
  if (sub_1DD335F20() != 0xD000000000000010 || 0x80000001DD33D1A0 != v55)
  {
    sub_1DD336E00();
  }

  v57 = v110;
  || infix(_:_:)();
  v51(v54, v49);
  v58 = v109;
  v59 = v115;
  && infix(_:_:)(v115, v57);
  v51(v57, v49);
  v51(v59, v49);
  v60 = v107;
  v61 = v108;
  || infix(_:_:)(v107, v58);
  v51(v58, v49);
  v51(v60, v49);
  v62 = v117;
  v63 = v124;
  QueryType.filter(_:)();
  v51(v61, v49);
  v64 = v118;
  v65 = v111;
  v115 = v118[2];
  (v115)(v111, v62, v63);
  v66 = sub_1DD335CB0();
  v67 = sub_1DD336940();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v120 = v69;
    *v68 = 136315138;
    (v115)(v102, v65, v63);
    v70 = sub_1DD336630();
    v72 = v71;
    v111 = v118[1];
    (v111)(v65, v124);
    v73 = sub_1DD27DBF0(v70, v72, &v120);
    v63 = v124;

    *(v68 + 4) = v73;
    _os_log_impl(&dword_1DD27A000, v66, v67, "existingRowFilter: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x1E12ADA30](v69, -1, -1);
    MEMORY[0x1E12ADA30](v68, -1, -1);
  }

  else
  {

    v111 = v64[1];
    (v111)(v65, v63);
  }

  v74 = v116;
  v75 = *(v119 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  v122 = v63;
  v123 = &protocol witness table for Table;
  v76 = __swift_allocate_boxed_opaque_existential_1(&v120);
  v77 = v117;
  (v115)(v76, v117, v63);
  sub_1DD335860();
  v79 = v112;
  v78 = v113;
  Connection.pluck(_:)(&v120, v112);
  if (v78)
  {
    (v111)(v77, v63);

    return __swift_destroy_boxed_opaque_existential_1(&v120);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v120);
    v81 = v101;
    if (__swift_getEnumTagSinglePayload(v79, 1, v101) == 1)
    {
      sub_1DD28A0C0(v79, &qword_1ECCD6580, &qword_1DD339238);
      sub_1DD28A114();
    }

    else
    {
      v82 = v99;
      v83 = v100;
      (*(v99 + 32))(v100, v79, v81);
      sub_1DD3360C0();
      (*(v82 + 16))(v98, v83, v81);
      v84 = sub_1DD290A3C();
      sub_1DD29424C(v84, v74);
      v86 = v85;
      v87 = v94;
      sub_1DD336020();
      v88 = v95;
      v115 = v84;
      sub_1DD336020();
      v89 = sub_1DD335D40();
      v90 = *(v96 + 8);
      v91 = v88;
      v92 = v97;
      v90(v91, v97);
      v90(v87, v92);
      if (v89)
      {
        v77 = v117;
        sub_1DD28F2C8();
      }

      else
      {
        sub_1DD28A114();
        v77 = v117;
      }

      v93 = v100;

      (*(v82 + 8))(v93, v81);
    }

    return (v111)(v77, v124);
  }
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void OUTLINED_FUNCTION_20_3()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD28541C(0, v2, 1, v0);
}

void OUTLINED_FUNCTION_20_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_20_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(v26, 32, 0xE100000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return Connection.run(_:_:)();
}

uint64_t OUTLINED_FUNCTION_69_1()
{
  v3 = v0 + *(v1 - 176);

  return sub_1DD335CB0();
}

uint64_t OUTLINED_FUNCTION_69_2()
{
}

void *OUTLINED_FUNCTION_69_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *result = v1;
  v4 = *(v2 - 180);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return sub_1DD3361E0();
}

void sub_1DD286680(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_1DD281748();
    *v1 = v2;
  }
}

double sub_1DD2866C0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 88);
  v6 = v5();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    v9 = 0.0;
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v16 = a1;
      sub_1DD335860();
      v11(&v15, &v16, a2);

      v9 = v9 + v15;
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v13 = *((v5)(v12) + 16);

  return v9 / v13;
}

uint64_t type metadata accessor for RRHeuristicSaliencyEstimator()
{
  result = qword_1EE028A10;
  if (!qword_1EE028A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static RRHeuristicSaliencyEstimator.mentionDecay(candidate:evaluateAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_8_4();
  a21 = v22;
  a22 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v25 = OUTLINED_FUNCTION_36(v24);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &a9 - v31;
  v33 = sub_1DD334830();
  v34 = OUTLINED_FUNCTION_1_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  v41 = v40 - v39;
  sub_1DD335F30();
  OUTLINED_FUNCTION_4_6(v32);
  if (!v45)
  {
    (*(v36 + 32))(v41, v32, v33);
    sub_1DD335ED0();
    v42 = sub_1DD335700();
    v44 = v43;

    v45 = v42 == 0xD000000000000013 && 0x80000001DD33D740 == v44;
    if (v45)
    {
    }

    else
    {
      v46 = sub_1DD336E00();

      if ((v46 & 1) == 0)
      {
        sub_1DD335ED0();
        v47 = sub_1DD335700();
        v49 = v48;

        if (v47 == 0xD000000000000016 && 0x80000001DD33D760 == v49)
        {
        }

        else
        {
          v51 = sub_1DD336E00();

          if ((v51 & 1) == 0)
          {
            v52 = 0.1706;
LABEL_17:
            static RRHeuristicSaliencyEstimator.genericDecayFunction(maximumValue:decayingParameter:eventOccurredAt:evaluateAt:)(1.0, v52);
            (*(v36 + 8))(v41, v33);
            goto LABEL_18;
          }
        }

        sub_1DD335F30();
        OUTLINED_FUNCTION_4_6(v30);
        v53 = v45;
        sub_1DD287B48(v30);
        v52 = dbl_1DD339CA0[v53];
        goto LABEL_17;
      }
    }

    v52 = 0.0767528364;
    goto LABEL_17;
  }

  sub_1DD287B48(v32);
LABEL_18:
  OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  result = v0;
  v3 = *(v1 - 368);
  v4 = *(v1 - 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return sub_1DD334BB0();
}

uint64_t OUTLINED_FUNCTION_127(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_2()
{
  v2 = *(v0 - 344);
}

void OUTLINED_FUNCTION_49_3(uint64_t *a1@<X8>)
{
  if (v1)
  {
    a1 = v2;
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];

  return sub_1DD336AD0();
}

uint64_t sub_1DD286CD0()
{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = v2[34];
  v6 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v7 = v6;
  *(v9 + 280) = v8;
  *(v9 + 288) = v0;

  (*(v2[32] + 8))(v2[33], v2[31]);
  OUTLINED_FUNCTION_71_6();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DD286E2C()
{
  v65 = v0;
  v1 = v0[35];
  result = sub_1DD287354();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = v0[35];
  v4 = v0[30];
  sub_1DD28191C(v0[29], (v0 + 7));

  v5 = sub_1DD335CB0();
  v6 = sub_1DD336940();
  v7 = OUTLINED_FUNCTION_17_0(v6);
  v8 = v0[35];
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_50_2();
    v10 = OUTLINED_FUNCTION_31_0();
    v64[0] = v10;
    *v9 = 134218242;
    *(v9 + 4) = sub_1DD287354();

    *(v9 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    DynamicType = swift_getDynamicType();
    v12 = v0[11];
    v0[25] = DynamicType;
    v0[26] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F18, &unk_1DD33AC90);
    v13 = sub_1DD336630();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v16 = sub_1DD27DBF0(v13, v15, v64);

    *(v9 + 14) = v16;
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_28_1();
  }

  else
  {
    v22 = v0[35];

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v23 = v0[35];
  result = sub_1DD287354();
  v63 = result;
  if (result)
  {
    if (result >= 1)
    {
      v24 = 0;
      v61 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage;
      v62 = v0[30];
      v25 = v0[35];
      v26 = v0[36];
      v60 = v25 & 0xC000000000000001;
      v57 = v25 + 32;
      do
      {
        if (v60)
        {
          v27 = MEMORY[0x1E12ACA60](v24, v0[35]);
        }

        else
        {
          v27 = *(v57 + 8 * v24);
        }

        v28 = v27;
        v29 = sub_1DD335CB0();
        v30 = sub_1DD336940();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = OUTLINED_FUNCTION_50();
          v32 = swift_slowAlloc();
          *v31 = 138477827;
          *(v31 + 4) = v28;
          *v32 = v28;
          v33 = v28;
          _os_log_impl(&dword_1DD27A000, v29, v30, "Upserting entity: %{private}@", v31, 0xCu);
          sub_1DD296084(v32, &qword_1ECCD6598, &unk_1DD339248);
          OUTLINED_FUNCTION_25_3();
          OUTLINED_FUNCTION_19_4();
        }

        sub_1DD28191C(v62 + v61, (v0 + 12));
        v34 = v0[15];
        v35 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6930, &qword_1DD339930);
        OUTLINED_FUNCTION_83();
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1DD339E80;
        *(v36 + 32) = v28;
        v37 = *(v35 + 24);
        v38 = v28;
        v37(v36, v34, v35);
        if (v26)
        {

          __swift_destroy_boxed_opaque_existential_1(v0 + 12);
          v39 = v38;
          v40 = v0;
          v41 = v39;
          v42 = v26;
          v43 = sub_1DD335CB0();
          v44 = sub_1DD336950();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = OUTLINED_FUNCTION_50_2();
            v46 = swift_slowAlloc();
            v59 = OUTLINED_FUNCTION_31_0();
            v64[0] = v59;
            *v45 = 138478083;
            *(v45 + 4) = v41;
            *v46 = v41;
            *(v45 + 12) = 2080;
            swift_getErrorValue();
            log = v43;
            v47 = v0[20];
            v48 = v0[21];
            v49 = v0[22];
            v50 = v41;
            v51 = sub_1DD336E40();
            v53 = sub_1DD27DBF0(v51, v52, v64);

            *(v45 + 14) = v53;
            _os_log_impl(&dword_1DD27A000, log, v44, "Failed to upsert pulled entity: %{private}@ error: %s", v45, 0x16u);
            sub_1DD296084(v46, &qword_1ECCD6598, &unk_1DD339248);
            OUTLINED_FUNCTION_39_7();
            __swift_destroy_boxed_opaque_existential_1(v59);
            OUTLINED_FUNCTION_52_0();
            OUTLINED_FUNCTION_25_3();
          }

          else
          {
          }

          v0 = v40;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v0 + 12);
        }

        v26 = 0;
        ++v24;
      }

      while (v63 != v24);
      goto LABEL_21;
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_21:
  v54 = v0[35];

  v55 = v0[33];

  OUTLINED_FUNCTION_3_5();

  return v56();
}

size_t sub_1DD28735C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_10_3();
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

double _s8RRSQLite12VirtualTableV_8databaseACSS_SSSgtcfC_0()
{
  OUTLINED_FUNCTION_14_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  *(OUTLINED_FUNCTION_51_7() + 16) = xmmword_1DD339380;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  OUTLINED_FUNCTION_58_6(&protocol witness table for Expression<A>);
  return OUTLINED_FUNCTION_6_11(v0, MEMORY[0x1E69E7CC0]);
}

void OUTLINED_FUNCTION_50_1()
{
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  v5 = *(v3 + 64);
  *(v2 - 96) = v0;
  v6 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_50_4()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD28541C(0, v2, 1, v0);
}

uint64_t sub_1DD2875A8()
{
  v1 = OUTLINED_FUNCTION_14_13();
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  v10 = v0[10];
  return sub_1DD2875F8(v1, v6, v7, v8);
}

uint64_t Connection.run(_:_:)()
{
  OUTLINED_FUNCTION_3_17();
  return sub_1DD2877C0(v0, v1, v2, v3);
}

{
  return Connection.run(_:_:)();
}

{
  OUTLINED_FUNCTION_2_9();
  return sub_1DD2877C0(v0, v1, v2, v3);
}

uint64_t sub_1DD2875F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = Connection.run(_:_:)();
  if (!v4)
  {

    a4(v7);
    Connection.run(_:_:)();
  }

  return result;
}

uint64_t Connection.prepare(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    result = Connection.prepare(_:_:)(a1, a2, MEMORY[0x1E69E7CC0]);
    if (!v3)
    {
      v6 = Statement.bind(_:)(a3);

      return v6;
    }
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    v7 = sub_1DD335860();
    return sub_1DD28787C(v7);
  }

  return result;
}

uint64_t sub_1DD2877C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  Connection.prepare(_:_:)(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v5)
  {
    a4(a3);
    v4 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);
  }

  return v4;
}

uint64_t sub_1DD28787C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  v3 = Connection.handle.getter();
  v4 = sub_1DD336650();
  sub_1DD335860();

  swift_beginAccess();
  v5 = sqlite3_prepare_v2(v3, (v4 + 32), -1, (v1 + 16), 0);
  swift_endAccess();

  sub_1DD2837A0(v5, 0);
  OUTLINED_FUNCTION_5_12();
  if (v2)
  {
  }

  return v1;
}

uint64_t Connection.handle.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

double sub_1DD2879B4(double a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = sub_1DD334830();
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v20 = v19 - v18;
  a4();
  OUTLINED_FUNCTION_4_6(v11);
  if (v21)
  {
    sub_1DD287B48(v11);
    return 0.0;
  }

  else
  {
    (*(v15 + 32))(v20, v11, v12);
    static RRHeuristicSaliencyEstimator.genericDecayFunction(maximumValue:decayingParameter:eventOccurredAt:evaluateAt:)(1.0, a1);
    v23 = v22;
    (*(v15 + 8))(v20, v12);
  }

  return v23;
}

uint64_t sub_1DD287B48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static RRHeuristicSaliencyEstimator.onScreenDecay(candidate:evaluateAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_8_4();
  a21 = v22;
  a22 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = sub_1DD334830();
  v31 = OUTLINED_FUNCTION_1_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_12();
  v38 = v37 - v36;
  sub_1DD335EE0();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) != 1)
  {
    (*(v33 + 32))(v38, v29, v30);
    sub_1DD335ED0();
    v39 = sub_1DD335700();
    v41 = v40;

    if (v39 == 0x415F6E6F6D6D6F63 && v41 == 0xEA00000000007070)
    {
    }

    else
    {
      v43 = sub_1DD336E00();

      if ((v43 & 1) == 0)
      {
        v44 = 0.2558;
LABEL_11:
        static RRHeuristicSaliencyEstimator.genericDecayFunction(maximumValue:decayingParameter:eventOccurredAt:evaluateAt:)(1.0, v44);
        sub_1DD335FD0();
        (*(v33 + 8))(v38, v30);
        goto LABEL_12;
      }
    }

    v44 = 0.92;
    goto LABEL_11;
  }

  sub_1DD287B48(v29);
LABEL_12:
  OUTLINED_FUNCTION_9_0();
}

void sub_1DD287DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_8_4();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = sub_1DD334830();
  v33 = OUTLINED_FUNCTION_1_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12();
  v40 = v39 - v38;
  v25();
  OUTLINED_FUNCTION_4_6(v31);
  if (!v44)
  {
    (*(v35 + 32))(v40, v31, v32);
    sub_1DD335ED0();
    v41 = sub_1DD335700();
    v43 = v42;

    v44 = v41 == 0x415F6E6F6D6D6F63 && v43 == 0xEA00000000007070;
    if (v44)
    {
    }

    else
    {
      v45 = sub_1DD336E00();

      if ((v45 & 1) == 0)
      {
        v46 = 0.2558;
LABEL_12:
        static RRHeuristicSaliencyEstimator.genericDecayFunction(maximumValue:decayingParameter:eventOccurredAt:evaluateAt:)(1.0, v46);
        (*(v35 + 8))(v40, v32);
        goto LABEL_13;
      }
    }

    v46 = 0.65;
    goto LABEL_12;
  }

  sub_1DD287B48(v31);
LABEL_13:
  OUTLINED_FUNCTION_9_0();
}

void sub_1DD288048(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1);
  v2 = OUTLINED_FUNCTION_0_7();
  *v1 = static RRHeuristicSaliencyEstimator.nowPlayingDecay(candidate:evaluateAt:)(v2, v3);
}

uint64_t OUTLINED_FUNCTION_78_3()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_78_4()
{
  *(v0 + 304) = 0;
  result = 0.0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_114()
{
  result = *(v0 - 376);
  v2 = *(v0 - 432);
  return result;
}

uint64_t sub_1DD2881D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DD336B60();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t Connection.transaction(_:block:)(unsigned __int8 *a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  sub_1DD336C00();

  v4 = 0x54414944454D4D49;
  if (v3 != 1)
  {
    v4 = 0x564953554C435845;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4445525245464544;
  }

  if (v3)
  {
    v6 = 0xE900000000000045;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  MEMORY[0x1E12AC540](v5, v6);

  MEMORY[0x1E12AC540](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1DD28836C(0x204E49474542, 0xE600000000000000, a2);
}

uint64_t sub_1DD28836C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1DD2846CC();
  v5 = qword_1EE028938;
  sub_1DD335860();

  if (v5 != -1)
  {
    swift_once();
  }

  sub_1DD3369A0();
  v6 = sub_1DD2885B8();
  if ((v12 & 1) != 0 || v11 != v6)
  {
    v8 = *(v3 + 88);
    sub_1DD3369E0();
  }

  else
  {
    Connection.run(_:_:)();
    if (v10)
    {
    }

    else
    {

      a3(v7);
      Connection.run(_:_:)();
    }
  }
}

uint64_t sub_1DD2885B8()
{
  result = v0;
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = v0;
  *(v0 + 104) = 0;
  return result;
}

void sub_1DD2885DC(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1);
  v2 = OUTLINED_FUNCTION_0_7();
  *v1 = static RRHeuristicSaliencyEstimator.foregroundedDecay(candidate:evaluateAt:)(v2, v3);
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  v4 = *(v2 - 136);

  return MEMORY[0x1EEDBFC78](v1, v0);
}

uint64_t OUTLINED_FUNCTION_25_1()
{
  result = v0;
  v3 = *(v1 - 136);
  v4 = *(v1 - 72);
  v5 = *(v1 - 160);
  return result;
}

id OUTLINED_FUNCTION_25_2()
{

  return [v0 (v1 + 2040)];
}

void OUTLINED_FUNCTION_25_3()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *(v15 + 16) = v18;

  return sub_1DD289CE4(&a15, v15 + v17 * v16 + 32);
}

void OUTLINED_FUNCTION_25_5()
{

  sub_1DD3131D4();
}

uint64_t *OUTLINED_FUNCTION_25_6(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *a2;
  v19 = a2[1];
  v21 = a2[2];
  v22 = *(a4 + 8);
  a17 = a3;
  a18 = v22;

  return __swift_allocate_boxed_opaque_existential_1(&a14);
}

void OUTLINED_FUNCTION_79_3()
{
  *(v1 - 120) = v0;

  sub_1DD2D7AB8();
}

void *OUTLINED_FUNCTION_79_5@<X0>(void *a1@<X0>, const void *a2@<X8>)
{

  return memcpy(a1, a2, 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_79_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v4 - 176);

  return ExpressionType<>.init(value:)(a1, v2, v3, v6, a2);
}

uint64_t sub_1DD288794(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD288878(uint64_t a1, int a2)
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

uint64_t sub_1DD2888B8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t Connection.pluck(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(v19, v7, v8);
  sub_1DD288AB8(v19);
  if (v21)
  {
    v9 = 0;
  }

  else
  {
    v9 = v19[18];
  }

  v10 = v21 | v20;
  v17[3] = v5;
  v17[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_1DD288AE8(1, 0, v9, v10 & 1, v5, v6, boxed_opaque_existential_1);
  Connection.prepareRowIterator(_:)(v17, v18);
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  if (!v2)
  {
    v13 = v18[1];
    v14 = Statement.failableNext()();
    if (v15)
    {
    }

    else
    {
      v16 = v14;
      if (!v14)
      {

        v13 = 0;
      }

      *a2 = v13;
      a2[1] = v16;
    }
  }

  return result;
}

uint64_t VirtualTable.clauses.getter()
{
  OUTLINED_FUNCTION_13_9();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_13_9();
  memcpy(v3, v4, v5);
  return sub_1DD289514(v8, v7);
}

uint64_t sub_1DD288AE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, v7, a5);
  v14 = a4 & 1;
  v16 = a2 & 1;
  v15 = (a2 & 1) == 0;
  if (a2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a1;
  }

  if (v15)
  {
    v18 = v14;
  }

  else
  {
    a3 = 0;
    v18 = 0;
  }

  v19 = (*(a6 + 32))(v22, a5, a6);
  *(v20 + 136) = v17;
  *(v20 + 144) = a3;
  *(v20 + 152) = v18;
  *(v20 + 153) = v16;
  return v19(v22, 0);
}

uint64_t Connection.prepareRowIterator(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_36_8();
  v6(v10, v5);
  v7 = v10[2];
  Connection.prepare(_:_:)(v10[0], v10[1], MEMORY[0x1E69E7CC0]);
  if (v2)
  {
  }

  else
  {
    v9 = Statement.bind(_:)(v7);

    result = sub_1DD28D810(a1);
    *a2 = v9;
    a2[1] = result;
  }

  return result;
}

void OUTLINED_FUNCTION_80_2()
{
  v2 = *(v0 - 408);

  sub_1DD2D7A78();
}

uint64_t OUTLINED_FUNCTION_80_3()
{

  return Connection.scalar(_:_:)();
}

uint64_t OUTLINED_FUNCTION_80_5()
{
}

double sub_1DD288DD4()
{
  v1 = v0[10];
  if (!v1)
  {
    return OUTLINED_FUNCTION_9_12();
  }

  v2 = v0[11];
  v3 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4552454857;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v5;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v3;
  *(inited + 80) = v1;
  *(inited + 88) = v2;

  OUTLINED_FUNCTION_20_8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  return result;
}

double sub_1DD288EE4()
{
  v1 = *(v0 + 128);
  if (!*(v1 + 16))
  {
    return OUTLINED_FUNCTION_9_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x594220524544524FLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v3;
  OUTLINED_FUNCTION_84_5(v1, v4, v5, v6, v7, v8, v9, v10, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  OUTLINED_FUNCTION_19_5(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  return result;
}

double sub_1DD288FCC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = a1;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1DD296F20();
    v4 = v49;
    v5 = v2 + 32;
    v30 = xmmword_1DD3391F0;
    do
    {
      sub_1DD2855A0(v5, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      inited = swift_initStackObject();
      *(inited + 16) = v30;
      *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x4E4F494E55;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      v7 = v46;
      v8 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      *(inited + 96) = v7;
      *(inited + 104) = *(v8 + 8);
      __swift_allocate_boxed_opaque_existential_1((inited + 72));
      OUTLINED_FUNCTION_22(v7);
      v10 = (*(v9 + 16))();
      OUTLINED_FUNCTION_20_8(v10, v11, v12, v13, v14, v15, v16, v17, v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      __swift_destroy_boxed_opaque_existential_1(v45);
      v49 = v4;
      v18 = *(v4 + 16);
      if (v18 >= *(v4 + 24) >> 1)
      {
        sub_1DD296F20();
        v4 = v49;
      }

      *(v4 + 16) = v18 + 1;
      v19 = sub_1DD289CE4(&v48, v4 + 40 * v18 + 32);
      v5 += 40;
      --v3;
    }

    while (v3);
    OUTLINED_FUNCTION_22_9(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  result = v0;
  v3 = *(v1 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_2(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_58_5()
{
  *(v1 - 152) = v0;
  v2 = *(v1 - 120);
  v3 = *(v1 - 136) & 0xC000000000000001;
}

void OUTLINED_FUNCTION_58_6(uint64_t a1@<X8>)
{
  v1[8] = a1;
  v1[4] = 42;
  v1[5] = 0xE100000000000000;
}

uint64_t sub_1DD2892A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_22(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_64_2()
{
  result = v0;
  v3 = *(v1 - 440);
  return result;
}

uint64_t OUTLINED_FUNCTION_64_3()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 - 120));
}

uint64_t OUTLINED_FUNCTION_64_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[7] = a1;
  v4[8] = a2;
  v4[4] = v5;
  v4[5] = v2;
  v4[6] = v3;
  return 0;
}

void OUTLINED_FUNCTION_64_6()
{

  sub_1DD3131D4();
}

uint64_t *OUTLINED_FUNCTION_64_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = a1;
  a12 = a2;
  a8 = v16;
  a9 = v14;
  a10 = v15;
  v18 = *(v13 + 8);
  a6 = v12;
  a7 = v18;

  return __swift_allocate_boxed_opaque_existential_1(&a3);
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  v2 = *(v1 - 96);
  v3 = *(*(v1 - 88) + 8);
  return v0;
}

void OUTLINED_FUNCTION_26_1()
{
  v1[12] = sub_1DD2B1638;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_26_3@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_1DD2BC0C4(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_26_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_1DD2892A8(v12 + v14, va, v11, v13);
}

void OUTLINED_FUNCTION_26_8(uint64_t a1@<X8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = a1;
  *(v3 - 96) = v2;
}

uint64_t Expression.template.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_1DD28956C()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_70_5(inited, xmmword_1DD33A620);
  sub_1DD289740(v1, v3);
  sub_1DD289BEC();
  sub_1DD288DD4();
  sub_1DD289CFC(&inited[9].n128_i64[1]);
  sub_1DD288FCC(&inited[12]);
  sub_1DD288EE4();
  sub_1DD289F08(inited[17].n128_u64);
  for (i = 32; i != 312; i += 40)
  {
    v13 = OUTLINED_FUNCTION_26_7(v4, v5, v6, v7, v8, v9, v10, v11, v43, *(&v43 + 1), v44);
    OUTLINED_FUNCTION_3_13(v13, v14, v15, v16, v17, v18, v19, v20, v43, *(&v43 + 1), v44, v45, v46, v47, v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54);
    if (v21)
    {
      sub_1DD289CE4(&v43, &v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_11();
        sub_1DD28C3A8();
      }

      OUTLINED_FUNCTION_38_8();
      if (v30)
      {
        OUTLINED_FUNCTION_18_2();
        sub_1DD28C3A8();
      }

      v4 = OUTLINED_FUNCTION_25_4(v22, v23, v24, v25, v26, v27, v28, v29, v43, *(&v43 + 1), v44, v45, v46, v47, v48);
    }

    else
    {
      OUTLINED_FUNCTION_83_1();
      v4 = sub_1DD3147D8(v31, v32);
    }
  }

  swift_setDeallocating();
  v33 = sub_1DD284AB0(&qword_1ECCD7070, &qword_1DD33BAB8);
  OUTLINED_FUNCTION_22_9(v33, v34, v35, v36, v37, v38, v39, v40, v43, *(&v43 + 1), v44, v45, v46, v47, v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, *(&v54 + 1), v55, v56, v57);

  OUTLINED_FUNCTION_5_8(&v52);
  v41 = OUTLINED_FUNCTION_2_5();
  v42(v41);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD289740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA60;
  v4 = *(v2 + 8);
  v5 = *(v2 + 24);
  v36 = *(v2 + 32);
  v38 = *(v2 + 16);
  v6 = *(v2 + 40);
  if (*v2)
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (*v2)
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v10 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v9;
  OUTLINED_FUNCTION_84_5(v4, v11, v12, v13, v14, v15, v16, v17, v36, v38, a1, a2, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70);
  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v10;
  if (v6)
  {
    v18 = swift_initStackObject();
    OUTLINED_FUNCTION_70_5(v18, xmmword_1DD33BA70);
    v41(v39, v5);
    v18[6].n128_u64[0] = v9;
    v18[6].n128_u64[1] = &protocol witness table for Expression<A>;
    v18[4].n128_u64[1] = 21313;
    v18[5].n128_u64[0] = 0xE200000000000000;
    v18[5].n128_u64[1] = v10;
    v18[8].n128_u64[1] = v9;
    v18[9].n128_u64[0] = &protocol witness table for Expression<A>;
    OUTLINED_FUNCTION_50_5();
    sub_1DD289A78();
    v18[7].n128_u64[0] = v19;
    v18[7].n128_u64[1] = v20;
    v18[8].n128_u64[0] = v10;
    OUTLINED_FUNCTION_24_6(v18, v20, v21, v22, v23, v24, v25, v26, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71);
    swift_setDeallocating();
    v27 = sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  }

  else
  {

    v41(v39, v5);
  }

  OUTLINED_FUNCTION_19_5(v27, v28, v29, v30, v31, v32, v33, v34, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71);
  swift_setDeallocating();
  return sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
}

uint64_t sub_1DD289944@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_50_5();
  sub_1DD289A78();
  v4 = v3;
  v6 = v5;
  if (*(v1 + 56))
  {
    v7 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 56) = v9;
    *(inited + 64) = &protocol witness table for Expression<A>;
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_57_4();
    sub_1DD289A78();
    *(inited + 32) = v10;
    *(inited + 40) = v11;
    v12 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 96) = v9;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v4;
    *(inited + 80) = v6;
    *(inited + 88) = v12;
    sub_1DD284AFC(inited, 46, 0xE100000000000000, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    swift_setDeallocating();
    return sub_1DD313330();
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    a1[4] = &protocol witness table for Expression<A>;
    *a1 = v4;
    a1[1] = v6;
    a1[2] = MEMORY[0x1E69E7CC0];
    a1[3] = result;
  }

  return result;
}

void sub_1DD289A78()
{
  OUTLINED_FUNCTION_2_13();
  v1 = v0;
  v3 = v2;

  while (1)
  {
    v4 = sub_1DD336720();
    if (!v5)
    {
      break;
    }

    v6 = v4 == v3 && v5 == v1;
    if (v6 || (sub_1DD336E00() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_21();
    }

    sub_1DD336560();

    MEMORY[0x1E12AC540](0, 0xE000000000000000);
  }

  OUTLINED_FUNCTION_0_21();
  MEMORY[0x1E12AC540](0, 0xE000000000000000);

  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_19();
}

double sub_1DD289BEC()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return OUTLINED_FUNCTION_9_12();
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1DD296F20();
  v3 = v21;
  v4 = v1 + 32;
  do
  {
    sub_1DD3102B4(v4);
    v21 = v3;
    v5 = *(v3 + 16);
    if (v5 >= *(v3 + 24) >> 1)
    {
      sub_1DD296F20();
      v3 = v21;
    }

    *(v3 + 16) = v5 + 1;
    v6 = sub_1DD289CE4(&v17, v3 + 40 * v5 + 32);
    v4 += 88;
    --v2;
  }

  while (v2);
  OUTLINED_FUNCTION_20_8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, *(&v17 + 1), v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);

  return result;
}

uint64_t sub_1DD289CE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1DD289CFC(uint64_t a1@<X8>)
{
  v3 = v1[12];
  if (v3)
  {
    v4 = v1[13];
    v5 = v1[14];
    v6 = v1[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 40) = 0xE800000000000000;
    v9 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v8;

    v10 = OUTLINED_FUNCTION_34_7();
    sub_1DD28C838(v10, v11);
    OUTLINED_FUNCTION_84_5(v3, v12, v13, v14, v15, v16, v17, v18, 2, 4, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109);
    OUTLINED_FUNCTION_20_8(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110);
    swift_setDeallocating();
    sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);

    if (v5)
    {
      v27 = swift_initStackObject();
      *(v27 + 16) = v45;
      sub_1DD2855A0(v113, v27 + 32);
      v28 = swift_initStackObject();
      *(v28 + 16) = v45;
      *(v28 + 56) = v8;
      *(v28 + 64) = &protocol witness table for Expression<A>;
      *(v28 + 32) = 0x474E49564148;
      *(v28 + 40) = 0xE600000000000000;
      *(v28 + 48) = v9;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
      *(v28 + 96) = v29;
      *(v28 + 104) = &protocol witness table for Expression<A>;
      *(v28 + 72) = v4;
      *(v28 + 80) = v5;
      *(v28 + 88) = v6;
      OUTLINED_FUNCTION_20_8(v29, v30, v31, v32, v33, v34, v35, v36, v45, *(&v45 + 1), v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      OUTLINED_FUNCTION_24_6(v27, v37, v38, v39, v40, v41, v42, v43, v46, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      __swift_destroy_boxed_opaque_existential_1(v113);
    }

    else
    {
      sub_1DD289CE4(v113, a1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_12();
  }
}

void sub_1DD289F08(void *a1@<X8>)
{
  if (*(v1 + 153))
  {
    OUTLINED_FUNCTION_9_12();
  }

  else
  {
    v3 = *(v1 + 152);
    v4 = *(v1 + 144);
    v34 = *(v1 + 136);
    v5 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v5);

    if (v3)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      a1[4] = &protocol witness table for Expression<A>;
      *a1 = 0x2054494D494CLL;
      a1[1] = 0xE600000000000000;
      a1[2] = MEMORY[0x1E69E7CC0];
      a1[3] = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD3391F0;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x2054494D494CLL;
      *(inited + 40) = 0xE600000000000000;
      v9 = MEMORY[0x1E69E7CC0];
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      *(inited + 56) = v8;
      v10 = sub_1DD336DC0();
      MEMORY[0x1E12AC540](v10);

      *(inited + 96) = v8;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v9;
      OUTLINED_FUNCTION_19_5(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v4, 0x2054455346464FLL, 0xE700000000000000);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
    }
  }
}

uint64_t sub_1DD28A0C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1DD28A114()
{
  OUTLINED_FUNCTION_54_0();
  v184 = v1;
  v179 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30();
  v178 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C8, &qword_1DD339280);
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v175 = v14;
  v176 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  v174 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v20 = OUTLINED_FUNCTION_36(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v173 = v23;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_32_1();
  v172 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C0, &qword_1DD339278);
  v27 = OUTLINED_FUNCTION_1_0(v26);
  v182 = v28;
  v183 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30();
  v181 = v32;
  OUTLINED_FUNCTION_31_1();
  v177 = type metadata accessor for Setter();
  v33 = OUTLINED_FUNCTION_1_0(v177);
  v185 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12();
  v186 = v38 - v37;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Insert();
  v40 = v39;
  v41 = OUTLINED_FUNCTION_1_0(v39);
  v180 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_103();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v46 = OUTLINED_FUNCTION_1(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v166 - v50;
  v52 = sub_1DD334490();
  OUTLINED_FUNCTION_59(v52);
  swift_allocObject();
  sub_1DD334480();
  v187 = v6;
  v188 = sub_1DD335ED0();
  sub_1DD335710();
  OUTLINED_FUNCTION_16();
  sub_1DD28AEE0(v53, v54);
  OUTLINED_FUNCTION_23();
  v55 = sub_1DD334470();
  if (v2)
  {
  }

  else
  {
    v169 = v0;
    v170 = v55;
    v171 = v56;
    v167 = v3;
    v168 = v40;

    sub_1DD335F00();
    v57 = sub_1DD336350();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v57);
    sub_1DD28A0C0(v51, &qword_1ECCD6608, &qword_1DD339310);
    if (EnumTagSinglePayload == 1)
    {
      v59 = 0;
      v60 = 0xF000000000000000;
      v61 = v186;
    }

    else
    {
      OUTLINED_FUNCTION_92();
      sub_1DD334480();
      v62 = v169;
      sub_1DD335F00();
      sub_1DD2A3380();
      v63 = sub_1DD334470();
      v61 = v186;
      v59 = v63;
      v60 = v64;
      sub_1DD28A0C0(v62, &qword_1ECCD6608, &qword_1DD339310);
    }

    OUTLINED_FUNCTION_92();
    sub_1DD334480();
    v188 = sub_1DD3360A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6610, &qword_1DD339318);
    OUTLINED_FUNCTION_33();
    sub_1DD28AF70(v65, v66);
    OUTLINED_FUNCTION_23();
    v67 = sub_1DD334470();
    v68 = v185;
    v166[4] = v67;
    v166[5] = v69;
    v169 = v59;

    OUTLINED_FUNCTION_92();
    sub_1DD334480();
    v188 = sub_1DD335F10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6618, &qword_1DD339320);
    sub_1DD28B0F4();
    OUTLINED_FUNCTION_23();
    v166[2] = sub_1DD334470();
    v166[3] = v70;

    v71 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
    v188 = sub_1DD336010();
    v189 = v72;
    v73 = v60;
    v74 = v184;
    v75 = MEMORY[0x1E69E6158];
    <- infix<A>(_:_:)(v184 + v71, MEMORY[0x1E69E6158], &protocol witness table for String, v61);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A0, &qword_1DD339258);
    v76 = *(v68 + 72);
    v77 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1DD339200;
    v166[0] = v78;
    v79 = v78 + v77;
    v80 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
    v188 = sub_1DD335F20();
    v189 = v81;
    <- infix<A>(_:_:)(v74 + v80, v75, &protocol witness table for String, v79);

    v188 = v170;
    v189 = v171;
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v82, v83, v84, v85);
    v188 = v169;
    v189 = v73;
    v166[1] = v73;
    sub_1DD28B474(v169, v73);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v86, v87, v88, v89);
    sub_1DD28B488(v188, v189);
    v90 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataTypeColumn;
    v188 = sub_1DD336080();
    v189 = v91;
    <- infix<A>(_:_:)((v74 + v90), &v188, &protocol witness table for String, v79 + 3 * v76);

    v92 = v79;
    v188 = sub_1DD336030();
    v189 = v93;
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v94, v95, v96, v97);
    sub_1DD28B488(v188, v189);
    (*(v182 + 16))(v181, v74 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupIdColumn, v183);
    v98 = v172;
    sub_1DD336040();
    v99 = sub_1DD335E60();
    if (__swift_getEnumTagSinglePayload(v98, 1, v99) == 1)
    {
      sub_1DD28A0C0(v98, &qword_1ECCD6350, &unk_1DD3396F0);
      v100 = 0;
      v101 = 0;
    }

    else
    {
      v100 = sub_1DD335E40();
      v101 = v102;
      OUTLINED_FUNCTION_22(v99);
      (*(v103 + 8))(v98, v99);
    }

    v105 = v175;
    v104 = v176;
    v106 = v174;
    v188 = v100;
    v189 = v101;
    v107 = v181;
    <- infix<A>(_:_:)(v181, &v188, &protocol witness table for String, v92 + 5 * v76);

    (*(v182 + 8))(v107, v183);
    (*(v105 + 16))(v106, v74 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupSeqColumn, v104);
    v108 = v173;
    sub_1DD336040();
    v109 = OUTLINED_FUNCTION_121();
    v111 = __swift_getEnumTagSinglePayload(v109, v110, v99);
    if (v111 == 1)
    {
      sub_1DD28A0C0(v108, &qword_1ECCD6350, &unk_1DD3396F0);
      v112 = 0;
    }

    else
    {
      v112 = sub_1DD335E50();
      OUTLINED_FUNCTION_22(v99);
      (*(v113 + 8))(v108, v99);
    }

    v188 = v112;
    LOBYTE(v189) = v111 == 1;
    <- infix<A>(_:_:)(v106, &v188, &protocol witness table for Int, v92 + 6 * v76);
    v114 = *(v105 + 8);
    v115 = OUTLINED_FUNCTION_111();
    v116(v115);
    v188 = OUTLINED_FUNCTION_19();
    v189 = v117;
    sub_1DD28B4F8(v188, v117);
    v118 = v184;
    OUTLINED_FUNCTION_130(v92 + 7 * v76);
    sub_1DD28B488(v188, v189);
    v119 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_onScreenSaliencyAdjustmentColumn;
    v120 = v187;
    v188 = sub_1DD335FD0();
    LOBYTE(v189) = v121 & 1;
    v122 = (v118 + v119);
    v123 = v120;
    <- infix<A>(_:_:)(v122, &v188, &protocol witness table for Double, v92 + 8 * v76);
    v188 = OUTLINED_FUNCTION_13();
    v189 = v124;
    sub_1DD28B4F8(v188, v124);
    v125 = v118;
    OUTLINED_FUNCTION_130(v92 + 9 * v76);
    sub_1DD28B488(v188, v189);
    sub_1DD336050();
    v188 = v126;
    OUTLINED_FUNCTION_60_0();
    <- infix<A>(_:_:)(v127, MEMORY[0x1E69E63B0], &protocol witness table for Double, v128);
    v129 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyComputedAtColumn;
    v130 = v178;
    sub_1DD335F90();
    sub_1DD334830();
    <- infix<A>(_:_:)((v125 + v129), v130, &protocol witness table for Date, v92 + 11 * v76);
    sub_1DD28A0C0(v130, &qword_1ECCD62A0, &unk_1DD338D70);
    v131 = sub_1DD336070();
    OUTLINED_FUNCTION_104(v131, v132);
    OUTLINED_FUNCTION_60_0();
    <- infix<A>(_:_:)(v133, v134, v135, v136);

    type metadata accessor for Table();
    v137 = v167;
    v138 = v186;
    QueryType.insert(_:_:)(v186);

    (*(v185 + 8))(v138, v177);
    v139 = *(v125 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
    sub_1DD335860();
    v190.template._countAndFlagsBits = v137;
    v140 = Connection.run(_:)(v190);
    if (v141)
    {
      v142 = OUTLINED_FUNCTION_51_0();
      v143(v142, v168);
      OUTLINED_FUNCTION_93();
      v144 = OUTLINED_FUNCTION_19();
      sub_1DD290274(v144, v145);
      v146 = OUTLINED_FUNCTION_13();
      sub_1DD290274(v146, v147);

      sub_1DD290274(v170, v171);
    }

    else
    {
      v148 = v140;

      v149 = v123;
      v150 = sub_1DD335CB0();
      v151 = sub_1DD336940();

      if (os_log_type_enabled(v150, v151))
      {
        OUTLINED_FUNCTION_40();
        v152 = swift_slowAlloc();
        v153 = OUTLINED_FUNCTION_95();
        *v152 = 138478083;
        *(v152 + 4) = v149;
        *v153 = v149;
        *(v152 + 12) = 2048;
        *(v152 + 14) = v148;
        v154 = v149;
        _os_log_impl(&dword_1DD27A000, v150, v151, "Successfully inserted entity: %{private}@ into rowid: %lld", v152, 0x16u);
        sub_1DD28A0C0(v153, &qword_1ECCD6598, &unk_1DD339248);
        v155 = OUTLINED_FUNCTION_18();
        MEMORY[0x1E12ADA30](v155);
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        sub_1DD290274(v170, v171);

        v156 = OUTLINED_FUNCTION_13();
        sub_1DD290274(v156, v157);
        v158 = OUTLINED_FUNCTION_19();
        sub_1DD290274(v158, v159);
        OUTLINED_FUNCTION_93();
      }

      else
      {
        OUTLINED_FUNCTION_93();
        v160 = OUTLINED_FUNCTION_19();
        sub_1DD290274(v160, v161);
        v162 = OUTLINED_FUNCTION_13();
        sub_1DD290274(v162, v163);
        sub_1DD290274(v170, v171);
      }

      v164 = OUTLINED_FUNCTION_51_0();
      v165(v164);
    }
  }

  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_53();
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_82_4()
{
}

uint64_t sub_1DD28AEE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD28AF28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD28AF70(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6610, &qword_1DD339318);
    sub_1DD28AEE0(a2, MEMORY[0x1E69D2800]);
    OUTLINED_FUNCTION_41();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_1()
{
  v4 = *(v2 - 96);

  return MEMORY[0x1EEDBFC78](v0, v1);
}

uint64_t OUTLINED_FUNCTION_34_2()
{
  result = *(v0 - 632);
  v2 = *(v0 - 608);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_4()
{
  v2 = *(v1 - 192);
  v3 = *(*(v1 - 200) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_34_5()
{
  v2 = *(*v0 + 40);

  return sub_1DD336EC0();
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return swift_getWitnessTable();
}

unint64_t sub_1DD28B0F4()
{
  result = qword_1EE0275B0;
  if (!qword_1EE0275B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6618, &qword_1DD339320);
    sub_1DD28AEE0(&qword_1EE0275D0, MEMORY[0x1E69D28B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0275B0);
  }

  return result;
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[1];
  v12 = v8[2];
  v16[0] = *v8;
  v16[1] = v11;
  v16[2] = v12;
  (*(v13 + 16))(v10);
  sub_1DD28B2A8(v16, v10, a2, a3, a4);
}

uint64_t sub_1DD28B2A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  *(a5 + 24) = type metadata accessor for Expression();
  *(a5 + 32) = &protocol witness table for Expression<A>;
  *a5 = v10;
  *(a5 + 8) = *(a1 + 1);
  v11 = *(a4 + 8);
  *(a5 + 64) = a3;
  *(a5 + 72) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a5 + 40));
  v13 = *(*(a3 - 8) + 32);

  return v13(boxed_opaque_existential_1, a2, a3);
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1DD336AD0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-1] - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  (*(v15 + 16))(v11, a2);

  return sub_1DD2960E8(v18, v11, a3, a4);
}

uint64_t sub_1DD28B474(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD28B4F8(a1, a2);
  }

  return a1;
}

uint64_t sub_1DD28B488(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD290274(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_130@<X0>(uint64_t a1@<X8>)
{

  return <- infix<A>(_:_:)((v2 + v1), v4 - 104, v3, a1);
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 - 144));
}

uint64_t OUTLINED_FUNCTION_125_1()
{

  return swift_task_alloc();
}

uint64_t sub_1DD28B4F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_1DD335860();
  }

  return sub_1DD335860();
}

uint64_t Date.datatypeValue.getter()
{
  if (qword_1EE027F28 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  OUTLINED_FUNCTION_1_10();
  v0 = qword_1EE027F30;
  v1 = sub_1DD3347A0();
  v2 = [v0 stringFromDate_];

  v3 = sub_1DD3365D0();
  return v3;
}

uint64_t sub_1DD28B600@<X0>(uint64_t *a1@<X8>)
{
  result = Date.datatypeValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t QueryType.insert(_:_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A0, &qword_1DD339258);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_69_6(inited, xmmword_1DD339380);
  sub_1DD28B704(a1, v3);

  sub_1DD28B8EC(v4);
  v5 = OUTLINED_FUNCTION_41_0();
  QueryType.insert(_:)(v5);
}

uint64_t Statement.bind(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return sub_1DD335860();
  }

  sub_1DD28BA1C(1);
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  if (v2 == sqlite3_bind_parameter_count(*(v1 + 16)))
  {
    v4 = a1 + 32;
    v5 = -v2;
    v6 = 1;
    do
    {
      sub_1DD28D1C0(v4, v6++);
      v4 += 40;
    }

    while (v5 + v6 != 1);
    return sub_1DD335860();
  }

  sub_1DD336C00();
  sqlite3_bind_parameter_count(*(v1 + 16));
  sub_1DD336DC0();

  MEMORY[0x1E12AC540](0xD000000000000012, 0x80000001DD33ECA0);
  v8 = sub_1DD336DC0();
  MEMORY[0x1E12AC540](v8);

  MEMORY[0x1E12AC540](0x64657373617020, 0xE700000000000000);
  result = OUTLINED_FUNCTION_2_12();
  __break(1u);
  return result;
}

{
  sub_1DD28BA1C(1);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);

  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v10 = v8;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v3 = *v12;
      v2 = v12[1];
      sub_1DD28D7A0(*(a1 + 56) + 40 * v11, &v20);
      v18 = v20;
      v19 = v21;
      v13 = v22;

      if (!v2)
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      v22 = v13;
      v14 = *(v1 + 16);
      v15 = sub_1DD336650();
      v16 = sqlite3_bind_parameter_index(v14, (v15 + 32));

      if (v16 < 1)
      {
        goto LABEL_14;
      }

      v7 &= v7 - 1;

      sub_1DD28D1C0(&v20, v16);
      sub_1DD2825F0(&v20, &qword_1ECCD7090, &qword_1DD33CA20);
      v8 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_12:

    return sub_1DD335860();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 64 + 8 * v10);
      ++v8;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DD336C00();

    MEMORY[0x1E12AC540](v3, v2);
    result = OUTLINED_FUNCTION_2_12();
    __break(1u);
  }

  return result;
}

void sub_1DD28B8EC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_87(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD28B9A4(v4, 1, sub_1DD28BAE0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  OUTLINED_FUNCTION_12_9();
  if (v9 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_83_5();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v5 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v5)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DD28B9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1DD28BA1C(char a1)
{
  swift_beginAccess();
  result = sqlite3_reset(*(v1 + 16));
  if (a1)
  {
    return sqlite3_clear_bindings(*(v1 + 16));
  }

  return result;
}

void *OUTLINED_FUNCTION_86_2()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 120), v0);
}

void OUTLINED_FUNCTION_86_3()
{

  JUMPOUT(0x1E12AC540);
}

uint64_t OUTLINED_FUNCTION_86_4()
{
}

char *sub_1DD28BAE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A0, &qword_1DD339258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_81_0()
{
  v1 = *(*(v0 - 184) + 8);
  result = *(v0 - 112);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_81_5()
{
}

uint64_t sub_1DD28BCA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v45 = *a1;
  if (v5)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = a2 + 32;
    v61 = xmmword_1DD339380;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DD28B704(v8, &v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD339380;
      sub_1DD2855A0(&v73, inited + 32);

      sub_1DD28C254(inited);
      v10 = v7;
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_1DD339380;
      sub_1DD2855A0(&v76, v11 + 32);
      v70 = v6;

      sub_1DD28C254(v11);

      sub_1DD28C49C(&v73);
      v8 += 80;
      --v5;
    }

    while (v5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1DD33BA80;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v12 + 56) = v13;
  *(v12 + 64) = &protocol witness table for Expression<A>;
  *(v12 + 32) = 0x545245534E49;
  *(v12 + 40) = 0xE600000000000000;
  v14 = MEMORY[0x1E69E7CC0];
  *(v12 + 48) = MEMORY[0x1E69E7CC0];
  if (v45 == 5)
  {
    *(v12 + 104) = 0;
    *(v12 + 88) = 0u;
    *(v12 + 72) = 0u;
  }

  else
  {
    *&v73 = 2118223;
    *(&v73 + 1) = 0xE300000000000000;
    v15 = 0xE600000000000000;
    v16 = 0x45524F4E4749;
    switch(v45)
    {
      case 1:
        v15 = 0xE800000000000000;
        v16 = 0x4B4341424C4C4F52;
        break;
      case 2:
        v15 = 0xE500000000000000;
        v16 = 0x54524F4241;
        break;
      case 3:
        v15 = 0xE400000000000000;
        v16 = 1279869254;
        break;
      case 4:
        break;
      default:
        v15 = 0xE700000000000000;
        v16 = 0x4543414C504552;
        break;
    }

    MEMORY[0x1E12AC540](v16, v15);

    v17 = v73;
    *(v12 + 96) = v13;
    *(v12 + 104) = &protocol witness table for Expression<A>;
    *(v12 + 72) = v17;
    *(v12 + 88) = v14;
  }

  *(v12 + 136) = v13;
  *(v12 + 144) = &protocol witness table for Expression<A>;
  *(v12 + 112) = 1330925129;
  *(v12 + 120) = 0xE400000000000000;
  *(v12 + 128) = v14;
  v18 = a4;
  sub_1DD28C4F0();
  *(v12 + 216) = v13;
  *(v12 + 224) = &protocol witness table for Expression<A>;
  sub_1DD284AFC(v10, 8236, 0xE200000000000000, v19, v20, v21, v22, v23, v42, v45, a3, a4, v54, a5, v61, *(&v61 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, v71, *(&v71 + 1), v72);
  sub_1DD285320(&v73, 0, 0xE000000000000000, (v12 + 192));
  __swift_destroy_boxed_opaque_existential_1(&v73);
  *(v12 + 256) = v13;
  *(v12 + 264) = &protocol witness table for Expression<A>;
  *(v12 + 232) = 0x5345554C4156;
  *(v12 + 240) = 0xE600000000000000;
  *(v12 + 248) = v14;
  *(v12 + 296) = v13;
  *(v12 + 304) = &protocol witness table for Expression<A>;
  sub_1DD284AFC(v6, 8236, 0xE200000000000000, v24, v25, v26, v27, v28, v43, v46, v49, v52, v55, v58, v62, v64, v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, v71, *(&v71 + 1), v72);
  sub_1DD285320(&v73, 0, 0xE000000000000000, (v12 + 272));

  __swift_destroy_boxed_opaque_existential_1(&v73);
  sub_1DD28C6EC(v18, v12 + 312);
  for (i = 32; i != 352; i += 40)
  {
    sub_1DD2892A8(v12 + i, &v73, &qword_1ECCD7070, &qword_1DD33BAB8);
    v66 = v73;
    v67 = v74;
    v68 = v75;
    if (*(&v74 + 1))
    {
      sub_1DD289CE4(&v66, &v70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = *(v14 + 16);
        sub_1DD28C3A8();
        v14 = v32;
      }

      v30 = *(v14 + 16);
      if (v30 >= *(v14 + 24) >> 1)
      {
        sub_1DD28C3A8();
        v14 = v33;
      }

      *(v14 + 16) = v30 + 1;
      sub_1DD289CE4(&v70, v14 + 40 * v30 + 32);
    }

    else
    {
      sub_1DD3147D8(&v66, &qword_1ECCD7070);
    }
  }

  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7070, &qword_1DD33BAB8);
  sub_1DD284AFC(v14, 32, 0xE100000000000000, v34, v35, v36, v37, v38, v44, v47, v50, v53, v56, v59, v63, v65, v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, v71, *(&v71 + 1), v72);

  v39 = *(&v74 + 1);
  v40 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  (*(v40 + 8))(&v70, v39, v40);
  *v60 = v70;
  *(v60 + 8) = v71;
  return __swift_destroy_boxed_opaque_existential_1(&v73);
}

RRSQLite::Insert __swiftcall QueryType.insert(_:)(Swift::OpaquePointer a1)
{
  v7 = 5;
  v4 = sub_1DD28BCA0(&v7, a1._rawValue, v1, v2, v3);
  result.bindings._rawValue = v6;
  result.template._object = v5;
  result.template._countAndFlagsBits = v4;
  return result;
}

void sub_1DD28C254(uint64_t a1)
{
  OUTLINED_FUNCTION_87(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD28C324();
  v5 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  OUTLINED_FUNCTION_12_9();
  if (v8 != v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_41_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_83_5();

  if (!v1)
  {
LABEL_8:
    *v2 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v4 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v4)
  {
    *(v5 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DD28C324()
{
  OUTLINED_FUNCTION_49_6();
  v2 = v1;
  v3 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v3;
  if (!isUniquelyReferenced_nonNull_native || v2 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > v2)
    {
      v5 = *(v3 + 16);
    }

    OUTLINED_FUNCTION_75_6();
    *v0 = v6;
  }
}

void sub_1DD28C3A8()
{
  OUTLINED_FUNCTION_66_6();
  if (v7)
  {
    OUTLINED_FUNCTION_6_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_30_2();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v13 = OUTLINED_FUNCTION_78_3();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_67_5(v14);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    if (v13 != v0 || &v0[40 * v11 + 32] <= v13 + 32)
    {
      v16 = OUTLINED_FUNCTION_31_2();
      memmove(v16, v17, v18);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_31_2();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD28C4F0()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_9();
  v2 = v1;
  v4 = *(v3 + 16);
  v6 = OUTLINED_FUNCTION_48_4(v1, v5);
  v4(v6);
  v7 = v31[5];

  sub_1DD288AB8(v31);
  if (v7)
  {
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1DD33BA70;
      v9 = OUTLINED_FUNCTION_113();
      v4(v9);

      sub_1DD288AB8(v29);
      sub_1DD296C9C(v0, (v8 + 32));

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      *(v8 + 104) = &protocol witness table for Expression<A>;
      *(v8 + 72) = 21313;
      *(v8 + 80) = 0xE200000000000000;
      v11 = MEMORY[0x1E69E7CC0];
      *(v8 + 88) = MEMORY[0x1E69E7CC0];
      *(v8 + 96) = v10;
      *(v8 + 136) = v10;
      *(v8 + 144) = &protocol witness table for Expression<A>;
      OUTLINED_FUNCTION_50_5();
      sub_1DD289A78();
      v13 = v12;
      v15 = v14;

      *(v8 + 112) = v13;
      *(v8 + 120) = v15;
      *(v8 + 128) = v11;
      OUTLINED_FUNCTION_24_6(v8, v16, v17, v18, v19, v20, v21, v22, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v28[16]);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      goto LABEL_8;
    }
  }

  v23 = OUTLINED_FUNCTION_113();
  v4(v23);
  v24 = v30;

  sub_1DD288AB8(v29);
  if (!v24)
  {
    v25 = OUTLINED_FUNCTION_113();
    v4(v25);

    sub_1DD288AB8(v28);
  }

  OUTLINED_FUNCTION_3_10();
  sub_1DD296C9C(v0, v26);

LABEL_8:
  OUTLINED_FUNCTION_24_1();
}

double sub_1DD28C6EC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v29);
  v3 = v30;
  v4 = v31;
  v5 = v32;
  sub_1DD28C838(v30, v31);
  sub_1DD288AB8(v29);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x4552454857;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v7;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v3;
    *(inited + 80) = v4;
    *(inited + 88) = v5;
    sub_1DD284AFC(inited, 32, 0xE100000000000000, v8, v9, v10, v11, v12, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29[0], v29[1], v29[2]);
    swift_setDeallocating();
    sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DD28C838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DD28C87C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_22(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1DD28C904(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_1DD335860();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_83_1();
  v6 = a2();

  return v6;
}

id sub_1DD28C99C(id *a1)
{
  sub_1DD2846CC();
  if (qword_1EE028938 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  sub_1DD3369A0();
  insert_rowid = a1;
  v4 = sub_1DD2885B8();
  if ((v8 & 1) != 0 || v7 != v4)
  {
    insert_rowid = a1[11];
    sub_1DD3369E0();
    if (v1)
    {

      return insert_rowid;
    }

    insert_rowid = v9;
LABEL_11:

    return insert_rowid;
  }

  OUTLINED_FUNCTION_20_10();
  if (!v1)
  {

    v5 = Connection.handle.getter();
    insert_rowid = sqlite3_last_insert_rowid(v5);

    goto LABEL_11;
  }

  return insert_rowid;
}

uint64_t sub_1DD28CB30(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v24 = &protocol witness table for Expression<A>;
  v21 = v6;
  v22 = v7;
  v23 = OUTLINED_FUNCTION_59_6(a1, a2, a3, a4);
  v19 = MEMORY[0x1E69E6370];
  LOBYTE(v18[0]) = v5;

  OUTLINED_FUNCTION_4_16(v9, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1], v18[2], v19, &protocol witness table for Bool, v8);
  OUTLINED_FUNCTION_22_11();
  v4();
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(&v20);
}

uint64_t || infix(_:_:)()
{
  OUTLINED_FUNCTION_71_8();
  return sub_1DD327434(v0, v1, v2, v3);
}

{
  OUTLINED_FUNCTION_70_7();
  return sub_1DD327434(v0, v1, v2, v3);
}

{
  OUTLINED_FUNCTION_71_8();
  return sub_1DD327518(v0, v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_70_7();
  return sub_1DD327518(v0, v1, v2, v3, v4);
}

double sub_1DD28CBEC@<D0>(char a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v4 = swift_allocObject();
  *&result = 1;
  v6 = MEMORY[0x1E69E7360];
  *(v4 + 16) = xmmword_1DD339380;
  *(v4 + 56) = v6;
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1 & 1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

uint64_t sub_1DD28CCF4()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  OUTLINED_FUNCTION_28_9();
  v3 = v2[1];
  v4 = v2[2];
  v7 = *v2;

  OUTLINED_FUNCTION_30_5();
  v1();

  OUTLINED_FUNCTION_79_4();
}

uint64_t QueryType.filter(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  OUTLINED_FUNCTION_22(a2);
  (*(v10 + 16))(a4, v11, a2);
  (*(a3 + 16))(v32, a2, a3);
  v12 = v32[9];
  v13 = v32[10];
  v14 = v32[11];
  OUTLINED_FUNCTION_32_8();
  sub_1DD28C838(v15, v16);
  sub_1DD288AB8(v32);
  if (v13)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
    v30 = &protocol witness table for Expression<A>;
    v28[0] = v12;
    v28[1] = v13;
    v28[2] = v14;
    v27[3] = v29;
    v27[4] = &protocol witness table for Expression<A>;
    v27[0] = v8;
    v27[1] = v7;
    v27[2] = v9;
    OUTLINED_FUNCTION_32_8();
    sub_1DD28C838(v17, v18);

    sub_1DD28512C(v28, v27, 1, 4476481, 0xE300000000000000, v31);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_32_8();
    sub_1DD28D008(v19, v20);
    v8 = v31[0];
    v7 = v31[1];
    v9 = v31[2];
  }

  else
  {
  }

  v21 = (*(a3 + 32))(v28, a2, a3);
  v23 = v22[9];
  v24 = v22[10];
  v25 = v22[11];
  v22[9] = v8;
  v22[10] = v7;
  v22[11] = v9;
  sub_1DD28D008(v23, v24);
  return v21(v28, 0);
}

void *OUTLINED_FUNCTION_60_3(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_5@<X0>(uint64_t a1@<X8>)
{
  result = v2 + a1 + *(v3 + 72) * v1;
  v6 = *(v3 + 32);
  v7 = *(v4 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_60_6()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_1DD28D008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_75_4()
{
}

void OUTLINED_FUNCTION_75_6()
{

  sub_1DD28C3A8();
}

uint64_t *OUTLINED_FUNCTION_75_8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *a2;
  v19 = a2[1];
  v21 = a2[2];
  v22 = *(a4 + 8);
  a17 = a3;
  a18 = v22;

  return __swift_allocate_boxed_opaque_existential_1(&a14);
}

uint64_t OUTLINED_FUNCTION_67_1(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v5 - 288);

  return sub_1DD2B79A0(a1, a2, a3, v3, v4, v7);
}

uint64_t OUTLINED_FUNCTION_67_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_67_5(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_67_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(v26, 8236, 0xE200000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1DD28D1C0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    swift_beginAccess();
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      return sqlite3_bind_null(v2[2], a2);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      v3 = v13;
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v4 = *(v13 + 16);
          if (!(v4 >> 31))
          {
            v2 = v2[2];
            if (qword_1EE0275C8 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v2, a2, (v3 + 32), v4, qword_1EE02A1A0);
            }

LABEL_49:
            swift_once();
            goto LABEL_8;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a2 <= 0x7FFFFFFF)
      {
        return sqlite3_bind_double(v2[2], a2, *&v13);
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_int64(v2[2], a2, v13);
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = v2[2];
          if (qword_1EE0275C8 == -1)
          {
LABEL_30:
            v8 = qword_1EE02A1A0;
            v9 = sub_1DD336650();

            sqlite3_bind_text(v2, a2, (v9 + 32), -1, v8);
          }

LABEL_56:
          swift_once();
          goto LABEL_30;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  v10 = MEMORY[0x1E69E7360];
  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      v11 = v13;
LABEL_39:
      v16 = v10;
      v17 = &protocol witness table for Int64;
      v15[0] = v11;
      sub_1DD28D1C0(v15, a2);
      v12 = v15;
      return sub_1DD2825F0(v12, &qword_1ECCD7090, &qword_1DD33CA20);
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      v11 = v13;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD28D7A0(a1, &v13);
  if (!v14)
  {
    v12 = &v13;
    return sub_1DD2825F0(v12, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD289CE4(&v13, v15);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD00000000000001FLL, 0x80000001DD33ED90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
  sub_1DD336CB0();
  result = sub_1DD336D20();
  __break(1u);
  return result;
}

uint64_t sub_1DD28D7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD28D810(void *a1)
{
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  v116 = (v3 + 16);
  v127 = v4;
  v128 = a1;
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(v144, v6, v7);
  v8 = v144[1];

  sub_1DD288AB8(v144);
  v122 = *(v8 + 16);
  v115 = v5;
  swift_beginAccess();
  v9 = 0;
  v123 = v8;
  v121 = v8 + 32;
  v120 = v3;
  while (1)
  {
    while (1)
    {
      if (v9 == v122)
      {

        swift_beginAccess();
        v42 = *(v3 + 16);

        return v42;
      }

      if (v9 >= *(v123 + 16))
      {
        goto LABEL_100;
      }

      v124 = v9;
      sub_1DD2855A0(v121 + 40 * v9, v141);
      v10 = v142;
      v11 = v143;
      __swift_project_boxed_opaque_existential_1(v141, v142);
      (*(v11 + 8))(__dst, v10, v11);
      v12 = __dst[0];
      v13 = __dst[1];

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v1 = 4 * v14;
        v15 = 15;
        v16 = MEMORY[0x1E69E7CC0];
LABEL_8:
        v130 = v16;
        for (i = v15; ; i = sub_1DD3366D0())
        {
          v18 = i >> 14;
          v19 = v15 >> 14;
          if (i >> 14 == v1)
          {
            break;
          }

          if (sub_1DD336770() == 46 && v20 == 0xE100000000000000)
          {

LABEL_17:
            if (v19 == v18)
            {
              v16 = v130;
            }

            else
            {
              if (v18 < v19)
              {
                goto LABEL_103;
              }

              v23 = sub_1DD336780();
              v117 = v25;
              v118 = v24;
              v27 = v26;
              v16 = v130;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v16 = sub_1DD28E5EC(0, *(v130 + 2) + 1, 1, v130);
              }

              v29 = *(v16 + 2);
              v28 = *(v16 + 3);
              if (v29 >= v28 >> 1)
              {
                v16 = sub_1DD28E5EC((v28 > 1), v29 + 1, 1, v16);
              }

              *(v16 + 2) = v29 + 1;
              v30 = &v16[32 * v29];
              *(v30 + 4) = v23;
              *(v30 + 5) = v118;
              *(v30 + 6) = v27;
              *(v30 + 7) = v117;
            }

            v15 = sub_1DD3366D0();
            goto LABEL_8;
          }

          v22 = sub_1DD336E00();

          if (v22)
          {
            goto LABEL_17;
          }
        }

        if (v19 == v1)
        {

          v31 = MEMORY[0x1E69E7CC0];
          v32 = v130;
        }

        else
        {
          if (v1 < v19)
          {
            goto LABEL_104;
          }

          v33 = sub_1DD336780();
          v35 = v34;
          v37 = v36;
          v1 = v38;

          v32 = v130;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1DD28E5EC(0, *(v130 + 2) + 1, 1, v130);
          }

          v31 = MEMORY[0x1E69E7CC0];
          v40 = *(v32 + 2);
          v39 = *(v32 + 3);
          if (v40 >= v39 >> 1)
          {
            v32 = sub_1DD28E5EC((v39 > 1), v40 + 1, 1, v32);
          }

          *(v32 + 2) = v40 + 1;
          v41 = &v32[32 * v40];
          *(v41 + 4) = v33;
          *(v41 + 5) = v35;
          *(v41 + 6) = v37;
          *(v41 + 7) = v1;
        }
      }

      else
      {

        v31 = MEMORY[0x1E69E7CC0];
        v32 = MEMORY[0x1E69E7CC0];
      }

      v42 = *(v32 + 2);
      if (v42)
      {
        __dst[0] = v31;
        sub_1DD28E6F4(0, v42, 0);
        v43 = 0;
        v44 = __dst[0];
        v131 = v32;
        v45 = (v32 + 56);
        while (v43 < *(v131 + 2))
        {
          v47 = *(v45 - 3);
          v46 = *(v45 - 2);
          v48 = *(v45 - 1);
          v49 = *v45;

          v50 = MEMORY[0x1E12AC4B0](v47, v46, v48, v49);
          v52 = v51;

          __dst[0] = v44;
          v54 = *(v44 + 16);
          v53 = *(v44 + 24);
          v1 = v54 + 1;
          if (v54 >= v53 >> 1)
          {
            sub_1DD28E6F4((v53 > 1), v54 + 1, 1);
            v44 = __dst[0];
          }

          ++v43;
          *(v44 + 16) = v1;
          v55 = v44 + 16 * v54;
          *(v55 + 32) = v50;
          *(v55 + 40) = v52;
          v45 += 4;
          if (v42 == v43)
          {

            v31 = MEMORY[0x1E69E7CC0];
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_97:

        sub_1DD3134EC();
        swift_allocError();
        *v114 = v45;
        *(v114 + 8) = v1;
        *(v114 + 16) = 0;
        *(v114 + 24) = 0;
        swift_willThrow();
LABEL_98:
        __swift_destroy_boxed_opaque_existential_1(v133);
LABEL_91:
        __swift_destroy_boxed_opaque_existential_1(v137);
        __swift_destroy_boxed_opaque_existential_1(v141);

        return v42;
      }

      v44 = v31;
LABEL_43:
      if (!*(v44 + 16))
      {
        goto LABEL_101;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD314708(v44);
        v44 = v111;
      }

      v56 = *(v44 + 16);
      if (!v56)
      {
        goto LABEL_102;
      }

      v57 = v56 - 1;
      v58 = v44 + 16 * v57;
      v60 = *(v58 + 32);
      v59 = *(v58 + 40);
      v125 = v124 + 1;
      *(v44 + 16) = v57;
      __dst[0] = v44;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67E8, &qword_1DD339848);
      sub_1DD31471C(&qword_1EE0285F0, &qword_1ECCD67E8);
      v61 = sub_1DD336570();
      v1 = v62;

      if (v60 == 42 && v59 == 0xE100000000000000)
      {
        break;
      }

      v64 = sub_1DD336E00();

      if (v64)
      {
        goto LABEL_59;
      }

      v65 = v142;
      v66 = v143;
      __swift_project_boxed_opaque_existential_1(v141, v142);
      (*(v66 + 8))(__dst, v65, v66);
      v67 = __dst[0];
      v68 = __dst[1];

      v69 = *v115;
      swift_beginAccess();
      v70 = *v116;
      swift_isUniquelyReferenced_nonNull_native();
      v133[0] = *v116;
      v71 = v133[0];
      v72 = sub_1DD28EFFC();
      v74 = *(v71 + 16);
      v75 = (v73 & 1) == 0;
      v1 = v74 + v75;
      if (__OFADD__(v74, v75))
      {
        goto LABEL_105;
      }

      v76 = v72;
      v77 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7150, &qword_1DD33C100);
      if (sub_1DD336CC0())
      {
        v78 = sub_1DD28EFFC();
        if ((v77 & 1) != (v79 & 1))
        {
          goto LABEL_108;
        }

        v76 = v78;
      }

      v80 = v133[0];
      if (v77)
      {
        *(*(v133[0] + 56) + 8 * v76) = v69;
      }

      else
      {
        *(v133[0] + 8 * (v76 >> 6) + 64) |= 1 << v76;
        v107 = (v80[6] + 16 * v76);
        *v107 = v67;
        v107[1] = v68;
        *(v80[7] + 8 * v76) = v69;
        v108 = v80[2];
        v109 = __OFADD__(v108, 1);
        v110 = v108 + 1;
        if (v109)
        {
          goto LABEL_107;
        }

        v80[2] = v110;
      }

      *v116 = v80;
      swift_endAccess();
      if (__OFADD__(v69, 1))
      {
        goto LABEL_106;
      }

      *v115 = v69 + 1;
      __swift_destroy_boxed_opaque_existential_1(v141);
      v3 = v120;
      v9 = v125;
    }

LABEL_59:
    v132 = v61;
    sub_1DD2855A0(v128, v137);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1DD339380;
    *(v81 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(v81 + 64) = &protocol witness table for Expression<A>;
    *(v81 + 32) = 42;
    *(v81 + 40) = 0xE100000000000000;
    *(v81 + 48) = v31;
    v82 = v138;
    v83 = v139;
    __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
    v84 = (*(v83 + 32))(__src, v82, v83);
    *v85 = 0;
    v86 = *(v85 + 8);
    *(v85 + 8) = v81;

    v84(__src, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7158, &qword_1DD33C108);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1DD339380;
    sub_1DD2855A0(v137, v87 + 32);
    v88 = v128[3];
    v89 = v128[4];
    __swift_project_boxed_opaque_existential_1(v128, v88);
    (*(v89 + 16))(__src, v88, v89);
    memcpy(__dst, __src, sizeof(__dst));
    v90 = __dst[8];

    sub_1DD288AB8(__dst);
    v91 = v31;
    v92 = *(v90 + 16);
    if (v92)
    {
      v119 = v1;
      v145 = v91;
      sub_1DD313AF8();
      v91 = v145;
      v93 = v90 + 32;
      do
      {
        sub_1DD2892A8(v93, v133, &qword_1ECCD7138, "\bK");
        memcpy(v134, v133, sizeof(v134));
        sub_1DD289CE4(&v134[1], &v135);
        __swift_destroy_boxed_opaque_existential_1(&v134[6]);
        v145 = v91;
        v94 = *(v91 + 16);
        if (v94 >= *(v91 + 24) >> 1)
        {
          sub_1DD313AF8();
          v91 = v145;
        }

        *(v91 + 16) = v94 + 1;
        sub_1DD289CE4(&v135, v91 + 40 * v94 + 32);
        v93 += 88;
        --v92;
      }

      while (v92);

      v1 = v119;
    }

    else
    {
    }

    *__src = v87;
    sub_1DD28C254(v91);
    v42 = *__src;
    v95 = HIBYTE(v1) & 0xF;
    v45 = v132;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v95 = v132 & 0xFFFFFFFFFFFFLL;
    }

    v3 = v120;
    if (!v95)
    {
      break;
    }

    if (!*(*__src + 16))
    {

      sub_1DD3134EC();
      swift_allocError();
      *v113 = v132;
      *(v113 + 8) = v1;
      *(v113 + 16) = 0;
      *(v113 + 24) = 0;
      swift_willThrow();
      goto LABEL_91;
    }

    sub_1DD2855A0(*__src + 32, __src);

    sub_1DD289CE4(__src, v133);
    __swift_project_boxed_opaque_existential_1(v133, v133[3]);
    sub_1DD28C4F0();
    v96 = v134[3];
    v97 = v134[4];
    __swift_project_boxed_opaque_existential_1(v134, v134[3]);
    (*(v97 + 8))(&v135, v96, v97);
    v42 = *(&v135 + 1);
    v98 = v135;

    if (v98 == v132 && v42 == v1)
    {

      __swift_destroy_boxed_opaque_existential_1(v134);
    }

    else
    {
      v100 = sub_1DD336E00();

      __swift_destroy_boxed_opaque_existential_1(v134);
      if ((v100 & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    sub_1DD28E86C(v133, v126, 1, v120, v127);
    if (v129)
    {

      goto LABEL_98;
    }

    __swift_destroy_boxed_opaque_existential_1(v133);
LABEL_85:
    __swift_destroy_boxed_opaque_existential_1(v137);
    __swift_destroy_boxed_opaque_existential_1(v141);
    v9 = v125;
  }

  v101 = 0;
  v1 = *(v42 + 16);
  for (j = v42 + 32; ; j += 40)
  {
    if (v1 == v101)
    {

      goto LABEL_85;
    }

    if (v101 >= *(v42 + 16))
    {
      break;
    }

    sub_1DD2855A0(j, v134);
    v103 = v128[3];
    v104 = v128[4];
    __swift_project_boxed_opaque_existential_1(v128, v103);
    (*(v104 + 16))(v133, v103, v104);
    memcpy(__src, v133, sizeof(__src));
    v105 = *&__src[64];

    sub_1DD288AB8(__src);
    v106 = *(v105 + 16);

    sub_1DD28E86C(v134, v126, v106 != 0, v120, v127);
    if (v129)
    {
      __swift_destroy_boxed_opaque_existential_1(v134);

      goto LABEL_91;
    }

    ++v101;
    __swift_destroy_boxed_opaque_existential_1(v134);
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  result = sub_1DD336E30();
  __break(1u);
  return result;
}

uint64_t sub_1DD28E5A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_1DD28E5EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7168, &qword_1DD33C118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD28E6F4(char *a1, int64_t a2, char a3)
{
  result = sub_1DD28E714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DD28E714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6848, &unk_1DD339948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1DD28E86C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v73 = a2;
  v71 = a4;
  v72 = a5;
  LODWORD(v69) = a3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(v79, v7, v8);
  v9 = v79[3];
  v70 = v79[2];

  sub_1DD288AB8(v79);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 16))(v80, v10, v11);
  v12 = v80[6];
  v13 = v80[7];

  sub_1DD288AB8(v80);
  v14 = *(v8 + 40);
  v77 = DynamicType;
  v78 = v8;
  __swift_allocate_boxed_opaque_existential_1(v76);
  v14(v70, v9, v12, v13, DynamicType, v8);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 16))(v81, v15, v16);
  LOBYTE(v8) = v81[0];
  v17 = v81[1];

  sub_1DD288AB8(v81);
  v18 = v77;
  v19 = v78;
  __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  v20 = (*(v19 + 32))(v75, v18, v19);
  v22 = *(v21 + 8);
  *v21 = v8;
  *(v21 + 8) = v17;

  v20(v75, 0);
  v24 = v77;
  v23 = v78;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  (*(*(v23 + 8) + 8))(v75, v24);
  v25 = v75[2];
  v26 = MEMORY[0x1E69E7CC0];
  Connection.prepare(_:_:)(v75[0], v75[1], MEMORY[0x1E69E7CC0]);
  if (v74)
  {

    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v68 = 0;
  Statement.bind(_:)(v25);

  v28 = Statement.columnNames.getter();

  v29 = *(v28 + 16);
  if (v29)
  {
    v75[0] = v26;
    sub_1DD28E6F4(0, v29, 0);
    v30 = v75[0];
    v74 = v28;
    v31 = (v28 + 40);
    do
    {
      v33 = *(v31 - 1);
      v32 = *v31;

      sub_1DD289A78();
      v35 = v34;
      v37 = v36;

      v75[0] = v30;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      v40 = v30;
      if (v39 >= v38 >> 1)
      {
        sub_1DD28E6F4((v38 > 1), v39 + 1, 1);
        v40 = v75[0];
      }

      *(v40 + 16) = v39 + 1;
      v41 = v40 + 16 * v39;
      *(v41 + 32) = v35;
      *(v41 + 40) = v37;
      v31 += 2;
      --v29;
      v30 = v40;
    }

    while (v29);
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  if (v69)
  {
    MEMORY[0x1EEE9AC00](v42);
    v67[2] = a1;
    v43 = v68;
    v44 = sub_1DD31050C(sub_1DD314760, v67, v30);
    v68 = v43;

    v30 = v44;
  }

  v46 = v71;
  v45 = v72;
  v70 = *(v30 + 16);
  if (!v70)
  {
LABEL_25:

    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  swift_beginAccess();
  swift_beginAccess();
  v47 = 0;
  v48 = (v30 + 40);
  v69 = v30;
  while (v47 < *(v30 + 16))
  {
    v49 = *(v48 - 1);
    v50 = *v48;
    v74 = *(v45 + 16);
    swift_beginAccess();

    v51 = *(v46 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v46 + 16);
    v52 = v82;
    *(v46 + 16) = 0x8000000000000000;
    v73 = v49;
    v53 = sub_1DD28EFFC();
    if (__OFADD__(v52[2], (v54 & 1) == 0))
    {
      goto LABEL_27;
    }

    v55 = v53;
    v56 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7150, &qword_1DD33C100);
    if (sub_1DD336CC0())
    {
      v57 = sub_1DD28EFFC();
      v30 = v69;
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_30;
      }

      v55 = v57;
      if (v56)
      {
LABEL_22:

        v59 = v82;
        *(v82[7] + 8 * v55) = v74;
        goto LABEL_23;
      }
    }

    else
    {
      v30 = v69;
      if (v56)
      {
        goto LABEL_22;
      }
    }

    v59 = v82;
    v82[(v55 >> 6) + 8] |= 1 << v55;
    v60 = (v59[6] + 16 * v55);
    v61 = v74;
    *v60 = v73;
    v60[1] = v50;
    *(v59[7] + 8 * v55) = v61;
    v62 = v59[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_29;
    }

    v59[2] = v64;
LABEL_23:
    v46 = v71;
    *(v71 + 16) = v59;
    swift_endAccess();
    v45 = v72;
    v65 = *(v72 + 16);
    v63 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v63)
    {
      goto LABEL_28;
    }

    ++v47;
    *(v72 + 16) = v66;
    v48 += 2;
    if (v70 == v47)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1DD336E30();
  __break(1u);
  return result;
}

int64_t Statement.columnNames.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2)
  {

    return v2;
  }

  result = Statement.columnCount.getter();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = MEMORY[0x1E69E7CC0];
  if (!result)
  {
LABEL_13:
    v12 = *(v1 + 48);
    *(v1 + 48) = v2;

    return v2;
  }

  v13 = MEMORY[0x1E69E7CC0];
  sub_1DD28E6F4(0, result, 0);
  v2 = v13;
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    result = sqlite3_column_name(*(v1 + 16), v5);
    if (!result)
    {
      break;
    }

    result = sub_1DD336700();
    v6 = result;
    v8 = v7;
    v10 = *(v13 + 16);
    v9 = *(v13 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_1DD28E6F4((v9 > 1), v10 + 1, 1);
    }

    *(v13 + 16) = v10 + 1;
    v11 = v13 + 16 * v10;
    *(v11 + 32) = v6;
    *(v11 + 40) = v8;
    if (v4 == v5)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v4 == ++v5)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t Statement.columnCount.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  result = sqlite3_column_count(*(v0 + 16));
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

unint64_t sub_1DD28EFFC()
{
  v1 = *(v0 + 40);
  sub_1DD336EC0();
  OUTLINED_FUNCTION_78_0();
  sub_1DD3366B0();
  sub_1DD336EF0();
  v2 = OUTLINED_FUNCTION_113();

  return sub_1DD28F06C(v2, v3, v4);
}

unint64_t sub_1DD28F06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DD336E00() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.failableNext()()
{
  v2 = *(v0 + 24);
  sub_1DD335860();
  v4 = sub_1DD28F184(v2, v0);
  v5 = 0;
  if (!v1 && v4)
  {
    Statement.row.getter(v6);
    sub_1DD2903CC(v6[0], v6[1]);
  }

  result.value._rawValue = v5;
  result.is_nil = v3;
  return result;
}

BOOL sub_1DD28F184(uint64_t a1, uint64_t a2)
{
  sub_1DD2846CC();
  if (qword_1EE028938 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  sub_1DD3369A0();
  v5 = sub_1DD2885B8();
  if ((v13 & 1) != 0 || v12 != v5)
  {
    v10 = *(a1 + 88);
    sub_1DD3369E0();

    if (!v2)
    {
      return v14;
    }
  }

  else
  {
    v6 = *(a2 + 24);
    swift_beginAccess();
    v7 = sqlite3_step(*(a2 + 16));
    v8 = v7;
    sub_1DD2837A0(v7, 0);

    if (!v2)
    {
      return v8 == 100;
    }
  }

  return v9;
}

void sub_1DD28F2C8()
{
  OUTLINED_FUNCTION_54_0();
  v180 = v0;
  v181 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v176 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C8, &qword_1DD339280);
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v174 = v13;
  v175 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v173 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v19 = OUTLINED_FUNCTION_36(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  v172 = v22;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_32_1();
  v171 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C0, &qword_1DD339278);
  v26 = OUTLINED_FUNCTION_1_0(v25);
  v178 = v27;
  v179 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_30();
  v177 = v31;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Update();
  v33 = OUTLINED_FUNCTION_1_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v40 = OUTLINED_FUNCTION_1(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_10();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_74();
  v47 = sub_1DD334490();
  OUTLINED_FUNCTION_59(v47);
  swift_allocObject();
  sub_1DD334480();
  v48 = sub_1DD335ED0();
  OUTLINED_FUNCTION_125(v48);
  sub_1DD335710();
  OUTLINED_FUNCTION_16();
  sub_1DD28AEE0(v49, v50);
  OUTLINED_FUNCTION_23();
  v51 = sub_1DD334470();
  if (v1)
  {
  }

  else
  {
    v169 = v52;
    v170 = v5;
    v167 = v38;
    v168 = v51;

    sub_1DD335F00();
    sub_1DD336350();
    v53 = OUTLINED_FUNCTION_121();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, v54, v55);
    sub_1DD28A0C0(v2, &qword_1ECCD6608, &qword_1DD339310);
    if (EnumTagSinglePayload == 1)
    {
      v57 = 0;
      v58 = 0xF000000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_91();
      sub_1DD334480();
      sub_1DD335F00();
      sub_1DD2A3380();
      v57 = sub_1DD334470();
      v58 = v59;
      sub_1DD28A0C0(v45, &qword_1ECCD6608, &qword_1DD339310);
    }

    OUTLINED_FUNCTION_91();
    sub_1DD334480();
    v60 = sub_1DD3360A0();
    OUTLINED_FUNCTION_125(v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6610, &qword_1DD339318);
    OUTLINED_FUNCTION_33();
    sub_1DD28AF70(v61, v62);
    OUTLINED_FUNCTION_23();
    sub_1DD334470();

    OUTLINED_FUNCTION_91();
    sub_1DD334480();
    v63 = sub_1DD335F10();
    OUTLINED_FUNCTION_125(v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6618, &qword_1DD339320);
    sub_1DD28B0F4();
    OUTLINED_FUNCTION_23();
    v166 = sub_1DD334470();
    v64 = v57;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A0, &qword_1DD339258);
    v65 = type metadata accessor for Setter();
    OUTLINED_FUNCTION_69_0(v65);
    v67 = *(v66 + 72);
    v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1DD339210;
    v164._rawValue = v70;
    v71 = v70 + v69;
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v72, v73, v74, v75);
    sub_1DD28B474(v64, v58);
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v76, v77, v78, v79);
    sub_1DD28B488(v64, v58);
    v80 = sub_1DD336080();
    OUTLINED_FUNCTION_104(v80, v81);
    OUTLINED_FUNCTION_60_0();
    <- infix<A>(_:_:)(v82, v83, v84, v85);

    v182 = sub_1DD336030();
    v183 = v86;
    v165 = v71;
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v87, v88, v89, v90);
    sub_1DD28B488(v182, v183);
    (*(v178 + 16))(v177, v180 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupIdColumn, v179);
    sub_1DD336040();
    v91 = sub_1DD335E60();
    if (__swift_getEnumTagSinglePayload(v171, 1, v91) == 1)
    {
      sub_1DD28A0C0(v171, &qword_1ECCD6350, &unk_1DD3396F0);
      v92 = 0;
      v93 = 0;
    }

    else
    {
      v92 = sub_1DD335E40();
      v93 = v94;
      OUTLINED_FUNCTION_22(v91);
      (*(v95 + 8))(v171, v91);
    }

    v182 = v92;
    v183 = v93;
    <- infix<A>(_:_:)(v177, &v182, &protocol witness table for String, v71 + 4 * v67);

    (*(v178 + 8))(v177, v179);
    (*(v174 + 16))(v173, v180 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupSeqColumn, v175);
    sub_1DD336040();
    v96 = OUTLINED_FUNCTION_121();
    v98 = __swift_getEnumTagSinglePayload(v96, v97, v91);
    if (v98 == 1)
    {
      sub_1DD28A0C0(v172, &qword_1ECCD6350, &unk_1DD3396F0);
      v99 = 0;
    }

    else
    {
      v99 = sub_1DD335E50();
      OUTLINED_FUNCTION_22(v91);
      (*(v100 + 8))(v172, v91);
    }

    v182 = v99;
    LOBYTE(v183) = v98 == 1;
    <- infix<A>(_:_:)(v173, &v182, &protocol witness table for Int, v71 + 5 * v67);
    (*(v174 + 8))(v173, v175);
    v182 = OUTLINED_FUNCTION_29();
    v183 = v101;
    sub_1DD28B4F8(v182, v101);
    OUTLINED_FUNCTION_105();
    <- infix<A>(_:_:)(v102, v103, v104, v105);
    sub_1DD28B488(v182, v183);
    v106 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_onScreenSaliencyAdjustmentColumn;
    v182 = sub_1DD335FD0();
    LOBYTE(v183) = v107 & 1;
    v108 = MEMORY[0x1E69E63B0];
    <- infix<A>(_:_:)((v180 + v106), &v182, &protocol witness table for Double, v71 + 7 * v67);
    v109 = OUTLINED_FUNCTION_42_0();
    v111 = *(v110 - 256);
    v182 = v109;
    v183 = v111;
    sub_1DD28B4F8(v109, v111);
    OUTLINED_FUNCTION_105();
    <- infix<A>(_:_:)(v112, v113, v114, v115);
    sub_1DD28B488(v182, v183);
    v116 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyScoreColumn;
    sub_1DD336050();
    v182 = v117;
    <- infix<A>(_:_:)(v180 + v116, v108, &protocol witness table for Double, v165 + 9 * v67);
    v118 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyComputedAtColumn;
    sub_1DD335F90();
    sub_1DD334830();
    <- infix<A>(_:_:)((v180 + v118), v176, &protocol witness table for Date, v165 + 10 * v67);
    sub_1DD28A0C0(v176, &qword_1ECCD62A0, &unk_1DD338D70);
    type metadata accessor for Table();
    QueryType.update(_:)(v164);

    v119 = *(v180 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
    sub_1DD335860();
    v184.template._countAndFlagsBits = v167;
    v120 = Connection.run(_:)(v184);
    if (v121)
    {
      v122 = OUTLINED_FUNCTION_51_0();
      v123(v122);
      v124 = OUTLINED_FUNCTION_13();
      sub_1DD28B488(v124, v125);
      v126 = OUTLINED_FUNCTION_29();
      sub_1DD290274(v126, v127);
      sub_1DD290274(v166, v111);

      sub_1DD290274(v168, v169);
    }

    else
    {
      v128 = v120;

      v129 = v181;
      if (v128 == 1)
      {
        v130 = v170;
        v131 = sub_1DD335CB0();
        v132 = sub_1DD336940();

        if (os_log_type_enabled(v131, v132))
        {
          OUTLINED_FUNCTION_40();
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          *v133 = 138478083;
          *(v133 + 4) = v129;
          *(v133 + 12) = 2113;
          *(v133 + 14) = v130;
          *v134 = v129;
          v134[1] = v130;
          v135 = v129;
          v136 = v130;
          _os_log_impl(&dword_1DD27A000, v131, v132, "Successfully updated entity from: %{private}@ to %{private}@", v133, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6598, &unk_1DD339248);
          swift_arrayDestroy();
          v137 = OUTLINED_FUNCTION_18();
          MEMORY[0x1E12ADA30](v137);
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
          sub_1DD290274(v168, v169);

          v138 = OUTLINED_FUNCTION_42_0();
          sub_1DD290274(v138, *(v139 - 256));
          v140 = OUTLINED_FUNCTION_29();
          sub_1DD290274(v140, v141);
          v142 = OUTLINED_FUNCTION_13();
          sub_1DD28B488(v142, v143);
        }

        else
        {
          v156 = OUTLINED_FUNCTION_13();
          sub_1DD28B488(v156, v157);
          v158 = OUTLINED_FUNCTION_29();
          sub_1DD290274(v158, v159);
          v160 = OUTLINED_FUNCTION_42_0();
          sub_1DD290274(v160, *(v161 - 256));
          sub_1DD290274(v168, v169);
        }
      }

      else
      {
        v144 = sub_1DD335CB0();
        v145 = sub_1DD336950();

        if (os_log_type_enabled(v144, v145))
        {
          OUTLINED_FUNCTION_40();
          v146 = swift_slowAlloc();
          v147 = OUTLINED_FUNCTION_95();
          *v146 = 134218243;
          *(v146 + 4) = v128;
          *(v146 + 12) = 2113;
          *(v146 + 14) = v129;
          *v147 = v129;
          v148 = v129;
          _os_log_impl(&dword_1DD27A000, v144, v145, "Unexpected number of rows (%ld) were updated. entity: %{private}@", v146, 0x16u);
          sub_1DD28A0C0(v147, &qword_1ECCD6598, &unk_1DD339248);
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
        }

        sub_1DD2A2BB8();
        OUTLINED_FUNCTION_68_0();
        OUTLINED_FUNCTION_96(v149, 1);
        sub_1DD290274(v168, v169);
        v150 = OUTLINED_FUNCTION_42_0();
        sub_1DD290274(v150, *(v151 - 256));
        v152 = OUTLINED_FUNCTION_29();
        sub_1DD290274(v152, v153);
        v154 = OUTLINED_FUNCTION_13();
        sub_1DD28B488(v154, v155);
      }

      v162 = OUTLINED_FUNCTION_51_0();
      v163(v162);
    }
  }

  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_53();
}

id sub_1DD290050(id *a1)
{
  sub_1DD2846CC();
  if (qword_1EE028938 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  sub_1DD3369A0();
  v3 = a1;
  v4 = sub_1DD2885B8();
  if ((v8 & 1) != 0 || v7 != v4)
  {
    v3 = a1[11];
    sub_1DD3369E0();
    if (v1)
    {

      return v3;
    }

    v3 = v9;
LABEL_11:

    return v3;
  }

  OUTLINED_FUNCTION_20_10();
  if (!v1)
  {

    v5 = Connection.handle.getter();
    LODWORD(v3) = sqlite3_changes(v5);

    v3 = v3;
    goto LABEL_11;
  }

  return v3;
}

uint64_t sub_1DD290274(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_3(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return Expressible.asSQL()()._countAndFlagsBits;
}

uint64_t Statement.row.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[7];
  if (v3)
  {
    result = v1[8];
LABEL_5:
    *a1 = v3;
    a1[1] = result;
    return result;
  }

  OUTLINED_FUNCTION_0_20();
  result = swift_beginAccess();
  v3 = v1[2];
  if (v3)
  {
    result = Statement.columnCount.getter();
    v1[7] = v3;
    v1[8] = result;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1DD2903CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1DD335860();
  swift_beginAccess();
  v6 = 0;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0] + 32;
  v10 = a2 & ~(a2 >> 63);
  v28 = v5;
  if (v10)
  {
    while (1)
    {
      v11 = v7 + 1;
      *v5 = v7 + 1;
      Cursor.subscript.getter(v7, v29);
      if (!v6)
      {
        v12 = v8[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v13 = a1;
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = (v16 + 4);
        v19 = v8[3];
        v20 = v19 >> 1;
        if (v8[2])
        {
          if (v16 != v8 || v18 >= &v8[5 * v20 + 4])
          {
            memmove(v16 + 4, v8 + 4, 40 * v20);
          }

          v8[2] = 0;
        }

        v9 = v18 + 40 * v20;
        v6 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v8 = v16;
        a1 = v13;
        v5 = v28;
      }

      v22 = __OFSUB__(v6--, 1);
      if (v22)
      {
        break;
      }

      v23 = v29[0];
      v24 = v29[1];
      *(v9 + 32) = v30;
      *v9 = v23;
      *(v9 + 16) = v24;
      v9 += 40;
      --v10;
      v7 = v11;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v25 = v8[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v22 = __OFSUB__(v26, v6);
    v27 = v26 - v6;
    if (v22)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v8[2] = v27;
  }
}

void Cursor.subscript.getter(uint64_t iCol@<X0>, uint64_t a2@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_1DD336C00();

    v21 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v21);

    OUTLINED_FUNCTION_2_12();
    __break(1u);
    JUMPOUT(0x1DD2907E4);
  }

  v5 = *v2;
  switch(sqlite3_column_type(*v2, iCol))
  {
    case 1:
      v6 = OUTLINED_FUNCTION_3_19();
      v8 = sqlite3_column_int64(v6, v7);
      *(a2 + 24) = MEMORY[0x1E69E7360];
      *(a2 + 32) = &protocol witness table for Int64;
      *a2 = v8;
      return;
    case 2:
      v18 = OUTLINED_FUNCTION_3_19();
      v20 = sqlite3_column_double(v18, v19);
      *(a2 + 24) = MEMORY[0x1E69E63B0];
      *(a2 + 32) = &protocol witness table for Double;
      *a2 = v20;
      return;
    case 3:
      v9 = OUTLINED_FUNCTION_3_19();
      if (!sqlite3_column_text(v9, v10))
      {
        goto LABEL_17;
      }

      v11 = sub_1DD336710();
      *(a2 + 24) = MEMORY[0x1E69E6158];
      *(a2 + 32) = &protocol witness table for String;
      *a2 = v11;
      *(a2 + 8) = v12;
      return;
    case 4:
      *(a2 + 24) = &type metadata for Blob;
      *(a2 + 32) = &protocol witness table for Blob;
      v13 = sqlite3_column_blob(v5, v4);
      if (v13)
      {
        v14 = v13;
        v15 = OUTLINED_FUNCTION_3_19();
        v17 = sqlite3_column_bytes(v15, v16);

        Blob.init(bytes:length:)(v14, v17, a2);
      }

      else
      {
        *a2 = MEMORY[0x1E69E7CC0];
      }

      return;
    case 5:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    default:
      goto LABEL_18;
  }
}

void *Blob.init(bytes:length:)@<X0>(void *result@<X0>, int64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = result;
    if (a2 < 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6688, &qword_1DD339378);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      v6[2] = a2;
      v6[3] = 2 * v7 - 64;
    }

    result = memcpy(v6 + 4, v5, a2);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DD290894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return OUTLINED_FUNCTION_6_10(v2);
}

unint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_1DD28EFFC();
}

uint64_t OUTLINED_FUNCTION_6_5(float a1)
{
  *v2 = a1;

  return sub_1DD27DBF0(v3, v1, (v4 - 104));
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return sub_1DD336BA0();
}

uint64_t OUTLINED_FUNCTION_6_8(unint64_t *a1)
{

  return sub_1DD2FC200(a1, v1, v2);
}

double OUTLINED_FUNCTION_6_11@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v7 + 48) = a2;
  *(v7 + 56) = a1;
  *v2 = 0;
  *(v2 + 8) = v7;
  *(v2 + 16) = v6;
  *(v2 + 24) = v5;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;
  *(v2 + 64) = a2;
  result = 0.0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 128) = a2;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 256;
  *(v2 + 160) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_13@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 160) = v2;
  *(v5 - 152) = v3;
  *(v5 - 144) = v4;
  *(v5 - 136) = result;
  *(v5 - 128) = a2;
  return result;
}

uint64_t *OUTLINED_FUNCTION_6_14(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = result[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void (*sub_1DD290A3C())(void)
{
  OUTLINED_FUNCTION_58();
  v219 = v0;
  v244 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_50_0(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v11 = OUTLINED_FUNCTION_36(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v18 = OUTLINED_FUNCTION_36(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v23);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65E0, &qword_1DD339298);
  OUTLINED_FUNCTION_1_0(v242);
  v225 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_50_0(v28);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D8, &qword_1DD339290);
  OUTLINED_FUNCTION_1_0(v245);
  v226 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_30();
  v250 = v33;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D0, &qword_1DD339288);
  OUTLINED_FUNCTION_1_0(v246);
  v231 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_30();
  v256[1] = v38;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C8, &qword_1DD339280);
  OUTLINED_FUNCTION_1_0(v247);
  v227 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_30();
  v254 = v43;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C0, &qword_1DD339278);
  v44 = OUTLINED_FUNCTION_1_0(v243);
  v230 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_35();
  v255 = v49;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_32_1();
  v251 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65B8, &qword_1DD339270);
  v53 = OUTLINED_FUNCTION_1_0(v52);
  v234 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_6();
  v253 = v57;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_35();
  v256[0] = v59;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_35();
  v252 = v61;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v62);
  v64 = (v213 - v63);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65B0, &qword_1DD339268);
  OUTLINED_FUNCTION_1_0(v248);
  v235 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_50_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A8, &qword_1DD339260);
  v71 = OUTLINED_FUNCTION_1_0(v70);
  v238 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_72();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_27();
  v229 = sub_1DD335CD0();
  v76 = OUTLINED_FUNCTION_1_0(v229);
  v237 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_12();
  v82 = v81 - v80;
  v265 = type metadata accessor for RRSQLiteStorage();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6560, &unk_1DD339220);
  sub_1DD336630();
  v236 = v82;
  sub_1DD335CC0();
  sub_1DD292C50(&qword_1EE028790, &qword_1ECCD65A8, &qword_1DD339260);
  v233 = v3;
  OUTLINED_FUNCTION_105();
  ExpressionType.init(_:)(v83, v84, v85, v86);
  OUTLINED_FUNCTION_57();
  v232 = v2;
  OUTLINED_FUNCTION_105();
  v228 = v70;
  ExpressionType.init(_:)(v87, v88, v89, v90);
  v91 = v248;
  sub_1DD292C50(qword_1EE0287C0, &qword_1ECCD65B0, &qword_1DD339268);
  v92 = OUTLINED_FUNCTION_78();
  ExpressionType.init(_:)(v92, 0xE900000000000079, v91, v93);
  v94 = sub_1DD292C50(&qword_1EE0287B0, &qword_1ECCD65B8, &qword_1DD339270);
  v95 = OUTLINED_FUNCTION_102();
  v239 = v64;
  v96 = v243;
  OUTLINED_FUNCTION_90(v95, 0xEA00000000006575);
  sub_1DD292C50(&qword_1EE028780, &qword_1ECCD65C0, &qword_1DD339278);
  v97 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_89(v97, 0xE800000000000000);
  OUTLINED_FUNCTION_90(1635017060, 0xE400000000000000);
  v98 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_89(v98, 0xE700000000000000);
  sub_1DD292C50(&qword_1EE028750, &qword_1ECCD65C8, &qword_1DD339280);
  v99 = OUTLINED_FUNCTION_77_0();
  ExpressionType.init(_:)(v99, 0xE800000000000000, v247, v100);
  v101 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_90(v101, 0xE800000000000000);
  v102 = OUTLINED_FUNCTION_55_1();
  ExpressionType.init(_:)(v102, v103, v52, v94);
  sub_1DD292C50(&qword_1EE028770, &qword_1ECCD65D0, &qword_1DD339288);
  v104 = OUTLINED_FUNCTION_39();
  ExpressionType.init(_:)(v104, v105, v246, v106);
  v107 = sub_1DD292C50(&qword_1EE0287A0, &qword_1ECCD65D8, &qword_1DD339290);
  ExpressionType.init(_:)(0xD000000000000012, 0x80000001DD33D1E0, v245, v107);
  v108 = sub_1DD292C50(&qword_1EE028760, &qword_1ECCD65E0, &qword_1DD339298);
  v109 = v242;
  ExpressionType.init(_:)(0xD00000000000001ALL, 0x80000001DD33D200, v242, v108);
  v110 = v241;
  OUTLINED_FUNCTION_89(0x644972657375, 0xE600000000000000);
  v111 = sub_1DD334460();
  OUTLINED_FUNCTION_59(v111);
  swift_allocObject();
  v112 = sub_1DD334450();
  v113 = v244;
  v114 = v244;
  OUTLINED_FUNCTION_87_0();
  Row.get<A>(_:)();
  if (v1)
  {
    v240 = v1;

    type metadata accessor for Row();
    OUTLINED_FUNCTION_4_0(v115);
    (*(v116 + 8))(v114);
    OUTLINED_FUNCTION_122_0(v260);
    v112(v110, v96);
    OUTLINED_FUNCTION_21(v256);
    v117(v249, v109);
    v118 = OUTLINED_FUNCTION_2_1();
    v119(v118);
    v120 = OUTLINED_FUNCTION_7();
    v121(v120);
    v122 = OUTLINED_FUNCTION_45_0();
    v113(v122, v52);
    v113(v256[0], v52);
    v123 = OUTLINED_FUNCTION_3_1();
    v124(v123);
    v125 = OUTLINED_FUNCTION_85();
    (v112)(v125);
    v113(v252, v52);
    v126 = OUTLINED_FUNCTION_116();
    (v112)(v126);
    v127 = OUTLINED_FUNCTION_56();
    v113(v127, v52);
    v128 = OUTLINED_FUNCTION_5_0();
    v129(v128);
    v130 = *(v238 + 8);
    OUTLINED_FUNCTION_67(&v258);
    v130();
    v131 = OUTLINED_FUNCTION_62();
    (v130)(v131, v1);
    OUTLINED_FUNCTION_21(&v264);
    v132 = OUTLINED_FUNCTION_114();
    v133(v132);
  }

  else
  {
    v216 = v111;
    v217 = v52;
    sub_1DD335710();
    v134 = v265;
    v135 = v266;
    OUTLINED_FUNCTION_16();
    sub_1DD28AEE0(v136, v137);
    OUTLINED_FUNCTION_41();
    sub_1DD334440();

    sub_1DD290274(v134, v135);
    v138 = v263;
    sub_1DD336350();
    OUTLINED_FUNCTION_134(v224, 1);
    Row.get<A>(_:)(v239, MEMORY[0x1E6969080], &protocol witness table for Data, &v265);
    OUTLINED_FUNCTION_58();
    v215 = v138;
    if (v266 >> 60 == 15)
    {
      v140 = v254;
      v139 = v255;
    }

    else
    {
      v141 = OUTLINED_FUNCTION_47();
      sub_1DD28B4F8(v141, v142);
      v143 = sub_1DD335CB0();
      v144 = sub_1DD336940();
      v145 = OUTLINED_FUNCTION_47();
      sub_1DD28B488(v145, v146);
      if (os_log_type_enabled(v143, v144))
      {
        OUTLINED_FUNCTION_34_0();
        v147 = swift_slowAlloc();
        OUTLINED_FUNCTION_26();
        v214 = swift_slowAlloc();
        v265 = v214;
        *v147 = 136315138;
        v148 = OUTLINED_FUNCTION_47();
        sub_1DD28B4F8(v148, v149);
        OUTLINED_FUNCTION_47();
        v150 = sub_1DD334760();
        v152 = v151;
        v153 = OUTLINED_FUNCTION_47();
        sub_1DD28B488(v153, v154);
        v155 = sub_1DD27DBF0(v150, v152, &v265);

        *(v147 + 4) = v155;
        _os_log_impl(&dword_1DD27A000, v143, v144, "unwrappedTypedValue: %s", v147, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v214);
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
      }

      v156 = OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_59(v156);
      swift_allocObject();
      sub_1DD334450();
      sub_1DD28AEE0(&qword_1ECCD6670, MEMORY[0x1E69DAE88]);
      v157 = v222;
      OUTLINED_FUNCTION_87_0();
      sub_1DD334440();
      OUTLINED_FUNCTION_58();
      v158 = v224;
      sub_1DD28A0C0(v224, &qword_1ECCD6608, &qword_1DD339310);
      v159 = OUTLINED_FUNCTION_47();
      sub_1DD28B488(v159, v160);

      OUTLINED_FUNCTION_134(v157, 0);
      sub_1DD2A343C(v157, v158, &qword_1ECCD6608, &qword_1DD339310);
      v140 = v254;
      v139 = v255;
    }

    sub_1DD335E60();
    v161 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_134(v161, 1);
    Row.subscript.getter(v139, MEMORY[0x1E69E6158], &protocol witness table for String, &v265);
    if (v266)
    {
      Row.subscript.getter(v140, MEMORY[0x1E69E6530], &protocol witness table for Int, &v265);
      if (v266)
      {
      }

      else
      {
        v162 = v221;
        OUTLINED_FUNCTION_47();
        sub_1DD335E30();
        v163 = v223;
        OUTLINED_FUNCTION_83_1();
        sub_1DD28A0C0(v164, v165, v166);
        OUTLINED_FUNCTION_134(v162, 0);
        sub_1DD2A343C(v162, v163, &qword_1ECCD6350, &unk_1DD3396F0);
      }
    }

    Row.subscript.getter(v256[0], MEMORY[0x1E6969080], &protocol witness table for Data, &v265);
    v167 = v266;
    if (v266 >> 60 != 15)
    {
      v169 = v265;
      v170 = OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_59(v170);
      swift_allocObject();
      sub_1DD334450();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6610, &qword_1DD339318);
      sub_1DD28AF70(&qword_1EE027ED8, &qword_1EE027F48);
      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_87_0();
      sub_1DD334440();
      OUTLINED_FUNCTION_58();
      sub_1DD28B488(v169, v167);
    }

    v168 = v253;
    sub_1DD3360E0();
    sub_1DD336530();
    Row.subscript.getter(v168, MEMORY[0x1E6969080], &protocol witness table for Data, &v265);
    if (v266 >> 60 != 15)
    {

      v171 = OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_59(v171);
      swift_allocObject();
      sub_1DD334450();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6618, &qword_1DD339320);
      sub_1DD293D4C();
      OUTLINED_FUNCTION_87_0();
      sub_1DD334440();
      OUTLINED_FUNCTION_58();
      v172 = OUTLINED_FUNCTION_79_0();
      sub_1DD28B488(v172, v173);
    }

    v174 = v244;
    OUTLINED_FUNCTION_87_0();
    Row.get<A>(_:)();
    v176 = v265;
    Row.get<A>(_:)();
    v213[3] = v176;
    v213[2] = v263;
    v222 = v264;
    v177 = OUTLINED_FUNCTION_49();
    sub_1DD27F118(v177, v220, v178, v179);
    Row.subscript.getter(v251, MEMORY[0x1E69E6158], &protocol witness table for String, v262);
    v213[1] = v262[0];
    v221 = v262[1];
    Row.subscript.getter(v252, MEMORY[0x1E6969080], &protocol witness table for Data, v261);
    v216 = v261[0];
    v214 = v261[1];
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_67(&v250);
    sub_1DD27F118(v180, v181, v182, v183);
    Row.get<A>(_:)();
    OUTLINED_FUNCTION_58();
    v184 = sub_1DD334830();
    Row.subscript.getter(v250, v184, &protocol witness table for Date, v218);
    Row.subscript.getter(v249, MEMORY[0x1E69E63B0], &protocol witness table for Double, &v259);
    v185 = v241;
    Row.subscript.getter(v241, MEMORY[0x1E69E6158], &protocol witness table for String, &v257);
    v130 = sub_1DD335FF0();
    type metadata accessor for Row();
    OUTLINED_FUNCTION_4_0(v186);
    (*(v187 + 8))(v174);
    v188 = OUTLINED_FUNCTION_48_0();
    sub_1DD28A0C0(v188, v189, v190);
    v191 = OUTLINED_FUNCTION_49();
    sub_1DD28A0C0(v191, v192, v193);
    v194 = *(v230 + 8);
    v195 = v243;
    v194(v185, v243);
    v196 = OUTLINED_FUNCTION_0_0();
    v197(v196);
    v198 = OUTLINED_FUNCTION_2_1();
    v199(v198);
    v200 = OUTLINED_FUNCTION_7();
    v201(v200);
    v202 = *(v234 + 8);
    v203 = v217;
    v202(v253, v217);
    v202(v256[0], v203);
    v204 = OUTLINED_FUNCTION_3_1();
    v205(v204);
    v194(v255, v195);
    v202(v252, v203);
    v194(v251, v195);
    v206 = OUTLINED_FUNCTION_56();
    v202(v206, v203);
    v207 = OUTLINED_FUNCTION_5_0();
    v208(v207);
    v209 = *(v238 + 8);
    OUTLINED_FUNCTION_67(&v258);
    v209();
    v210 = OUTLINED_FUNCTION_62();
    (v209)(v210, v202);
    OUTLINED_FUNCTION_21(&v264);
    v211 = OUTLINED_FUNCTION_114();
    v212(v211);
  }

  return v130;
}