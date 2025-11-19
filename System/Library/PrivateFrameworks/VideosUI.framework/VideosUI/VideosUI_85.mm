uint64_t sub_1E3D1E2C4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E3D1E2FC()
{
  sub_1E3D1E2C4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E3D1E328()
{
  OUTLINED_FUNCTION_24();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = sub_1E41FFCB4();
  v1[8] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FDDF4();
  v1[11] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_127();
  v1[14] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3D1E428()
{
  OUTLINED_FUNCTION_27_2();
  v1 = [*(v0 + 32) endpoint];
  v2 = sub_1E4205F14();
  v4 = v3;

  *(v0 + 120) = v4;
  sub_1E41FEFD4();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_1E3D1E508;
  v6 = *(v0 + 112);

  return MEMORY[0x1EEE436E8](v6, v2, v4);
}

uint64_t sub_1E3D1E508()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_76_18();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1E3D1E628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_53_6();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 136);
  type metadata accessor for VUIUTSNetworkManagerProxy();
  v28 = OUTLINED_FUNCTION_76_0();
  v29(v28);
  if (v27)
  {
    (*(*(v24 + 96) + 8))(*(v24 + 112), *(v24 + 88));
    *(v24 + 16) = v27;
    v30 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E3280A90(0, &qword_1ECF30180);
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_29_30();
      return;
    }

    v32 = *(v24 + 72);
    v31 = *(v24 + 80);
    v33 = *(v24 + 64);

    v34 = *(v24 + 24);
    v35 = sub_1E324FBDC();
    (*(v32 + 16))(v31, v35, v33);

    v36 = v34;
    v37 = sub_1E41FFC94();
    LOBYTE(v32) = sub_1E4206814();

    v38 = os_log_type_enabled(v37, v32);
    v40 = *(v24 + 72);
    v39 = *(v24 + 80);
    v41 = *(v24 + 64);
    if (v38)
    {
      v43 = *(v24 + 40);
      v42 = *(v24 + 48);
      a11 = *(v24 + 64);
      v44 = swift_slowAlloc();
      a12 = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_1E3270FC8(v43, v42, &a12);
      *(v44 + 12) = 2080;
      v45 = [v36 localizedDescription];
      v46 = sub_1E4205F14();
      a10 = v39;
      v48 = v47;

      v49 = sub_1E3270FC8(v46, v48, &a12);

      *(v44 + 14) = v49;
      OUTLINED_FUNCTION_36_4();
      _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();

      (*(v40 + 8))(a10, a11);
    }

    else
    {

      (*(v40 + 8))(v39, v41);
    }
  }

  else
  {
    v55 = *(v24 + 112);
    v56 = *(v24 + 88);
    v57 = *(v24 + 56);
    v58 = *(v24 + 32);
    v59 = *(*(v24 + 96) + 8);
    v59(v55, v56);

    v60 = OUTLINED_FUNCTION_27_0();
    v61(v60);
    v62 = sub_1E3D1F19C(v55);
    v59(v55, v56);
    *(v57 + 120) = v62;

    v63 = *(v57 + 128);
    *(v57 + 128) = v58;

    v64 = v58;
  }

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_29_30();

  v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1E3D1E9A4()
{
  v32 = v0;
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  sub_1E3280A90(0, &qword_1ECF30180);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);

    v7 = *(v0 + 24);
    v8 = sub_1E324FBDC();
    (*(v5 + 16))(v4, v8, v6);

    v9 = v7;
    v10 = sub_1E41FFC94();
    LOBYTE(v5) = sub_1E4206814();

    v11 = os_log_type_enabled(v10, v5);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    if (v11)
    {
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v30 = *(v0 + 64);
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1E3270FC8(v16, v15, &v31);
      *(v17 + 12) = 2080;
      v18 = [v9 localizedDescription];
      v19 = sub_1E4205F14();
      v29 = v12;
      v21 = v20;

      v22 = sub_1E3270FC8(v19, v21, &v31);

      *(v17 + 14) = v22;
      OUTLINED_FUNCTION_36_4();
      _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();

      (*(v13 + 8))(v29, v30);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    OUTLINED_FUNCTION_54();

    return v28();
  }

  return result;
}

uint64_t sub_1E3D1EC5C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3D1ED5C()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  OUTLINED_FUNCTION_54();
  return v1();
}

uint64_t sub_1E3D1ED90()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_64_22();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1E3D1EEB8()
{
  OUTLINED_FUNCTION_134();
  v1 = TVAppFeature.isEnabled.getter(12);
  v2 = v0[2];
  if (v1)
  {
    if (*(v2 + 120))
    {
      v3 = v0[8];

      sub_1E324FBDC();
      OUTLINED_FUNCTION_55_37();
      v4(v3);
      v5 = sub_1E41FFC94();
      v6 = sub_1E4206814();
      if (OUTLINED_FUNCTION_161(v6))
      {
        v7 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_34_10(v7);
        OUTLINED_FUNCTION_38_44(&dword_1E323F000, v8, v9, "JSNetworkProxy: clearPrefetchingOperation");
        OUTLINED_FUNCTION_65_0();
      }

      v10 = OUTLINED_FUNCTION_58_29();
      v11(v10);
      sub_1E3280A90(0, &qword_1ECF37A48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      sub_1E42064D4();

      *(v2 + 120) = 0;

      goto LABEL_15;
    }

    v24 = v0[7];
    sub_1E324FBDC();
    OUTLINED_FUNCTION_55_37();
    v25(v24);
    v26 = sub_1E41FFC94();
    v27 = sub_1E4206814();
    v28 = OUTLINED_FUNCTION_72_1(v27);
  }

  else
  {
    v12 = *(v2 + 112);
    if (v12)
    {
      v13 = v0[6];
      v14 = v12;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_55_37();
      v15(v13);
      v16 = sub_1E41FFC94();
      v17 = sub_1E4206814();
      if (OUTLINED_FUNCTION_161(v17))
      {
        v18 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_34_10(v18);
        OUTLINED_FUNCTION_38_44(&dword_1E323F000, v19, v20, "JSNetworkProxy: clearPrefetchingOperation");
        OUTLINED_FUNCTION_65_0();
      }

      v21 = OUTLINED_FUNCTION_58_29();
      v22(v21);
      [v14 cancel];

      v23 = *(v2 + 112);
      *(v2 + 112) = 0;

LABEL_15:

      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_60_23();

      __asm { BRAA            X1, X16 }
    }

    v29 = v0[5];
    sub_1E324FBDC();
    OUTLINED_FUNCTION_55_37();
    v30(v29);
    v26 = sub_1E41FFC94();
    v31 = sub_1E4206814();
    v28 = OUTLINED_FUNCTION_72_1(v31);
  }

  if (v28)
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_35_8();
    _os_log_impl(v32, v33, v34, v35, v36, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v37 = OUTLINED_FUNCTION_27_0();
  v38(v37);
  goto LABEL_15;
}

uint64_t sub_1E3D1F19C(uint64_t a1)
{
  v2 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  (*(v4 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v4 + 32))(v14 + v13, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1E3D1F780(0, 0, v11, &unk_1E42CC650, v14);
}

void sub_1E3D1F334()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1E324FBDC();
    (*(v2 + 16))(v5, v8, v0);
    v9 = v7;
    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_6_21();
      *v12 = 134217984;
      *(v12 + 4) = [v9 responseStatusCode];

      _os_log_impl(&dword_1E323F000, v10, v11, "JSNetworkProxy: prefetchSelectedTab: request completed, status: %ld", v12, 0xCu);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v10 = v9;
    }

    (*(v2 + 8))(v5, v0);
    sub_1E4206B94();
    v13 = VUISignpostLogObject();
    sub_1E41FFBA4();
  }
}

uint64_t sub_1E3D1F51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3D1F530()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  v0[4] = sub_1E41FEE24();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1E3D1F5D8;
  v2 = OUTLINED_FUNCTION_78_16(v0[3]);

  return MEMORY[0x1EEE43620](v2);
}

uint64_t sub_1E3D1F5D8()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    v9 = sub_1E3D1F724;
  }

  else
  {

    *(v5 + 56) = v3;
    v9 = sub_1E3D1F6F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E3D1F6F4()
{
  **(v0 + 16) = *(v0 + 56);
  OUTLINED_FUNCTION_54();
  return v1();
}

uint64_t sub_1E3D1F724()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D1F780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1E325A828(a3, v21 - v9);
  v11 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F748(v10, &unk_1ECF2C400);
  }

  else
  {
    sub_1E4206464();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1E42063B4();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21[0] = a3;
      v17 = sub_1E4205FB4() + 32;
      sub_1E3280A90(0, &qword_1ECF37A48);

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1E325F748(v21[0], &unk_1ECF2C400);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325F748(a3, &unk_1ECF2C400);
  sub_1E3280A90(0, &qword_1ECF37A48);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1E3D1FA40()
{
  OUTLINED_FUNCTION_24();
  if (qword_1EE2A5930 != -1)
  {
    OUTLINED_FUNCTION_3_165();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1E3D1FAF4;
  OUTLINED_FUNCTION_78_16(*(v0 + 16));

  return sub_1E3D1CEAC();
}

uint64_t sub_1E3D1FAF4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_88_1();

  return v4(v3);
}

uint64_t sub_1E3D1FC58(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1E3D1FD08;

  return static VUIJSNetworkProxy.makeNetworkRequestOperation(_:)(v4);
}

uint64_t sub_1E3D1FD08()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  OUTLINED_FUNCTION_39();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t static VUIJSNetworkProxy.makeNetworkRequest(_:requestProperties:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3D1FE54()
{
  OUTLINED_FUNCTION_24();
  if (qword_1EE2A5930 != -1)
  {
    OUTLINED_FUNCTION_3_165();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1E3D1FF08;
  OUTLINED_FUNCTION_78_16(*(v0 + 16));

  return sub_1E3D1D850();
}

uint64_t sub_1E3D1FF08()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1E3D2007C(uint64_t a1, void *a2, const void *a3)
{
  v3[2] = a2;
  v6 = sub_1E41FDDF4();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a3);
  sub_1E41FDDA4();
  v8 = a2;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_1E3D201AC;

  return static VUIJSNetworkProxy.makeNetworkRequest(_:requestProperties:)(v7, v8);
}

void sub_1E3D201AC()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *v4 = *v2;

  v5 = v3[6];
  v6 = v3[2];
  (*(v3[4] + 8))(v3[5], v3[3]);

  if (v1)
  {
    v7 = sub_1E41FE264();

    v8 = OUTLINED_FUNCTION_44_1();
    v9(v8, 0, v7);

    _Block_release(v5);
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_64_22();
    v10();
    _Block_release(v5);
  }

  OUTLINED_FUNCTION_60_23();

  __asm { BRAA            X1, X16 }
}

id VUIJSNetworkProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIJSNetworkProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIJSNetworkProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3D20458()
{
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_130(v1);

  return v4(v3);
}

uint64_t sub_1E3D204F4()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  v3 = OUTLINED_FUNCTION_27_0();

  return v4(v3);
}

uint64_t sub_1E3D2059C()
{
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_130(v1);

  return v4(v3);
}

unint64_t sub_1E3D20638()
{
  result = qword_1ECF37A50;
  if (!qword_1ECF37A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37A50);
  }

  return result;
}

uint64_t sub_1E3D2069C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  v3 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_17_2(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_14_3(v6);
  *v7 = v10;
  v7[1] = sub_1E3286A7C;

  return sub_1E3D1F51C(v2, v8, v9, v0 + v5);
}

void sub_1E3D20768()
{
  v0 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3D1F334();
}

unint64_t OUTLINED_FUNCTION_32_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1E3270FC8(v7, v6, va);
}

uint64_t OUTLINED_FUNCTION_69_22()
{
}

uint64_t OUTLINED_FUNCTION_70_22()
{

  return sub_1E4206474();
}

void OUTLINED_FUNCTION_86_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_88_13()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_91_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_94_15()
{
}

uint64_t sub_1E3D20934(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_imageLayout;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

uint64_t sub_1E3D209CC()
{
  v1 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_variant;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3D20A00(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_variant;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E3D20A90()
{
  v1 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3D20ACC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;
  [v4 removeFromSuperview];
  v6 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView;
  swift_beginAccess();
  if (*&v1[v6])
  {
    [v1 addSubview_];
  }
}

void (*sub_1E3D20B7C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3D20C04;
}

void sub_1E3D20C04(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E3D20ACC(v3);
  }

  else
  {
    sub_1E3D20ACC(*(*a1 + 24));
  }

  free(v2);
}

void sub_1E3D20C70()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_imageLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_variant) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView) = 0;
  OUTLINED_FUNCTION_7_159();
  __break(1u);
}

id sub_1E3D20CF0()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_imageLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_variant) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView) = 0;
  v9 = type metadata accessor for LeagueStandingsLegendIndicatorView();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v9);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  return v6;
}

void *sub_1E3D20E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ImageViewModel();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for LeagueStandingsLegendIndicatorView());

  v7 = OUTLINED_FUNCTION_5_8();
  v9 = [v6 v8];
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0xB0))(v5, a3);

  return v9;
}

void sub_1E3D20F30(char a1)
{
  OUTLINED_FUNCTION_5_16();
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))())
  {
    OUTLINED_FUNCTION_9_13();
    v6 = (*(v5 + 152))();
    if (v6)
    {
      v7 = v6;
      OUTLINED_FUNCTION_9_13();
      v9 = (*(v8 + 128))();
      if (v9 == 2 || (v9 & 1) != 0)
      {
        v16 = OUTLINED_FUNCTION_6_12();
        [v17 v18];
      }

      else
      {
        OUTLINED_FUNCTION_111();
        v11 = *(v10 + 200);

        *&v13 = COERCE_DOUBLE(v11(v12));
        if (v14)
        {
          OUTLINED_FUNCTION_111();
          (*(v15 + 176))(v23);
          v2 = 0.0;
          if ((v24 & 1) == 0)
          {
            v2 = sub_1E3952BE0(v23[0], v23[1], v23[2], v23[3]) + 0.0;
          }
        }

        else
        {
          v2 = *&v13;
        }

        OUTLINED_FUNCTION_111();
        (*(v19 + 304))();
        v21 = v20;

        if (v21)
        {
          OUTLINED_FUNCTION_111();
          (*(v22 + 176))(v25);
          if ((v26 & 1) == 0)
          {
            sub_1E3952BD8(v25[0], v25[1], v25[2]);
          }
        }
      }

      sub_1E3D21B38();
      OUTLINED_FUNCTION_18_3();
      if ((a1 & 1) == 0)
      {
        [v7 setFrame_];
      }
    }
  }

  OUTLINED_FUNCTION_17_4();
}

id sub_1E3D21244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    type metadata accessor for ImageLayout();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      OUTLINED_FUNCTION_6_143();
      v8 = *(v7 + 112);

      v8(v6);
      goto LABEL_7;
    }
  }

  result = (*(*a1 + 392))();
  if (!result)
  {
    return result;
  }

  type metadata accessor for ImageLayout();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    OUTLINED_FUNCTION_6_143();
    v13 = *(v12 + 112);

    v13(v11);

LABEL_7:
    OUTLINED_FUNCTION_0_219();
    v15 = (*(v14 + 152))();
    [v15 removeFromSuperview];

    v16 = (*(*a1 + 1016))(7);
    if (v17)
    {
      if (v16 == 0xD000000000000019 && v17 == 0x80000001E427E6B0)
      {
      }

      else
      {
        v19 = OUTLINED_FUNCTION_18_86();

        if ((v19 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      OUTLINED_FUNCTION_0_219();
      v26 = (*(v25 + 104))();
      v27 = type metadata accessor for PillView();
      v28 = objc_allocWithZone(v27);

      *&v28[OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_viewModel] = 0;
      v29 = OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_imageLayout;
      *&v28[OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_imageLayout] = 0;
      v30 = v26;
      if (!v26)
      {
        v30 = (*(*a1 + 392))();
      }

      *&v28[v29] = v30;

      v31 = OUTLINED_FUNCTION_5_8();
      v34 = objc_msgSendSuper2(v32, v33, v31, v28, v27);
      v35 = objc_opt_self();
      v36 = v34;
      v37 = [v35 clearColor];
      [v36 setBackgroundColor_];

      OUTLINED_FUNCTION_0_219();
      (*(v38 + 160))(v36);
      OUTLINED_FUNCTION_0_219();
      (*(v39 + 136))(0);
      return [v3 vui_layoutIfNeeded];
    }

LABEL_13:
    OUTLINED_FUNCTION_0_219();
    v21 = (*(v20 + 104))();
    memset(v40, 0, sizeof(v40));
    v41 = 0;
    v42 = 1;
    v43 = 0;
    v22 = sub_1E3DF9F2C(a1, 0, v40, v21);

    OUTLINED_FUNCTION_0_219();
    (*(v23 + 160))(v22);
    OUTLINED_FUNCTION_0_219();
    (*(v24 + 136))(1);
    return [v3 vui_layoutIfNeeded];
  }
}

uint64_t sub_1E3D21668()
{
  type metadata accessor for ImageLayout();
  v0 = sub_1E3BD61D8();
  v1 = objc_opt_self();

  v2 = [v1 systemGreenColor];
  OUTLINED_FUNCTION_36();
  (*(v3 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v4 + 1712))(1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2024))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2144))(0x401C000000000000, 0);
  v13[0] = sub_1E3952C40();
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  v14 = 0;
  OUTLINED_FUNCTION_8();
  (*(v10 + 184))(v13);
  OUTLINED_FUNCTION_8();
  (*(v11 + 208))(0x4022000000000000, 0);

  qword_1ECF715C8 = v0;
  return result;
}

uint64_t *sub_1E3D21824()
{
  if (qword_1ECF60290 != -1)
  {
    swift_once();
  }

  return &qword_1ECF715C8;
}

uint64_t sub_1E3D21874()
{
  type metadata accessor for ImageLayout();
  v0 = sub_1E3BD61D8();
  v1 = objc_opt_self();

  v2 = [v1 systemRedColor];
  OUTLINED_FUNCTION_36();
  (*(v3 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v4 + 312))(0x4008000000000000, 0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 208))(0x401C000000000000, 0);
  v17[0] = sub_1E3952C40();
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v18 = 0;
  OUTLINED_FUNCTION_8();
  v10 = (*(v9 + 184))(v17);
  v10.n128_u64[0] = 1.5;
  v15[0] = j__OUTLINED_FUNCTION_7_78(v10);
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  v16 = 0;
  (*(*v0 + 560))(v15);

  qword_1ECF715D0 = v0;
  return result;
}

uint64_t *sub_1E3D21A0C()
{
  if (qword_1ECF60298 != -1)
  {
    swift_once();
  }

  return &qword_1ECF715D0;
}

uint64_t sub_1E3D21A5C()
{
  type metadata accessor for ImageViewModel();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = *(*v0 + 1016);

    v2 = v1(7);
    if (v3)
    {
      if (v2 == 0xD000000000000019 && v3 == 0x80000001E427E6B0)
      {
        v5 = 1;
      }

      else
      {
        v5 = OUTLINED_FUNCTION_18_86();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1E3D21B38()
{
  OUTLINED_FUNCTION_5_16();
  v3 = [v0 vuiTraitCollection];
  v4 = [v3 isAXEnabled];

  if (v4)
  {
    v5 = objc_opt_self();
    v6 = [v0 vuiTraitCollection];
    [v5 scaleContentSizeValue:v6 forTraitCollection:v2];

    v7 = [v0 vuiTraitCollection];
    [v5 scaleContentSizeValue:v7 forTraitCollection:v1];
  }

  OUTLINED_FUNCTION_6_12();
}

void sub_1E3D21CAC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_imageLayout) = 0;
  OUTLINED_FUNCTION_7_159();
  __break(1u);
}

unint64_t sub_1E3D21D20()
{
  result = qword_1ECF37A70;
  if (!qword_1ECF37A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37A70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LeagueStandingsLegendIndicatorVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1E3D21E50()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_8();
  type metadata accessor for PillView();
  v2 = OUTLINED_FUNCTION_2_0();
  result = objc_msgSendSuper2(v3, v4, v2);
  v6 = *&v0[OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_imageLayout];
  if (v6)
  {
    OUTLINED_FUNCTION_8();
    v8 = *(v7 + 200);

    v10 = COERCE_DOUBLE(v8(v9));
    v12 = 0.0;
    if (v11)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v10;
    }

    v14 = COERCE_DOUBLE((*(*v6 + 304))());
    if (v15)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v14;
    }

    (*(*v6 + 552))(v33);
    if ((v34 & 1) == 0)
    {
      v12 = sub_1E3952BE8(v33[0], v33[1], v33[2], v33[3]);
    }

    v17 = objc_opt_self();
    v18 = [v1 vuiTraitCollection];
    [v17 scaleContentSizeValue:v18 forTraitCollection:v13];
    v20 = v19;

    v21 = [v1 vuiTraitCollection];
    [v17 scaleContentSizeValue:v21 forTraitCollection:v16];
    v23 = v22;

    v24 = [v1 vuiTraitCollection];
    [v17 scaleContentSizeValue:v24 forTraitCollection:v12];
    v26 = v25;

    OUTLINED_FUNCTION_36();
    v28 = (*(v27 + 672))();
    if (!v28)
    {
      v28 = [objc_opt_self() clearColor];
    }

    v29 = v28;
    [v1 bounds];
    v30 = (CGRectGetWidth(v35) - v20) * 0.5;
    [v1 bounds];
    v31 = (CGRectGetHeight(v36) - v23) * 0.5;
    v32 = [objc_opt_self() bezierPathWithRoundedRect:v30 cornerRadius:{v31, v20, v23, v26}];
    [v29 setFill];
    [v32 fill];
  }

  return result;
}

id sub_1E3D22208(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3D2228C()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D222D8(char a1)
{
  if (!a1)
  {
    return 0x7265746544746F6ELL;
  }

  if (a1 == 1)
  {
    return 0x6465776F6C6C61;
  }

  return 0x6465696E6564;
}

uint64_t sub_1E3D22344(unsigned __int8 a1, char a2)
{
  v2 = 0xED000064656E696DLL;
  v3 = 0x7265746544746F6ELL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6465776F6C6C61;
    }

    else
    {
      v5 = 0x6465696E6564;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x7265746544746F6ELL;
    v6 = 0xED000064656E696DLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6465776F6C6C61;
    }

    else
    {
      v3 = 0x6465696E6564;
    }

    if (a2 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D2245C()
{
  sub_1E4206014();
}

uint64_t sub_1E3D224F8()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D225A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D2228C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D225D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D222D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D225FC()
{
  v0 = sub_1E41FF214();
  v1 = *(v0 - 1);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E41FEDE4();
    sub_1E41FEDD4();
    sub_1E41FED94();

    (*(v1 + 16))(v3, v6, v0);
    v7 = (*(v1 + 88))(v3, v0);
    if (v7 == *MEMORY[0x1E69D5900])
    {
      v8 = 0x6465696E6564;
      (*(v1 + 8))(v6, v0);
      return v8;
    }

    v8 = v7;
    v10 = *MEMORY[0x1E69D5908];
    v11 = *(v1 + 8);
    v11(v6, v0);
    if (v8 != v10)
    {
      OUTLINED_FUNCTION_0_220();
      v11(v3, v0);
      return v8;
    }

    goto LABEL_9;
  }

  v9 = [objc_opt_self() defaultLocationManager];
  if (v9)
  {
    v8 = v9;
    v0 = [v9 authorizationStatus];

    if (v0 == -1)
    {
      OUTLINED_FUNCTION_0_220();
      return v8;
    }

    if (!v0)
    {
      return 0x6465696E6564;
    }

    if (v0 == 1)
    {
LABEL_9:
      OUTLINED_FUNCTION_1_198();
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for WLKLocationAuthorizationStatus();
  v13[1] = v0;
  result = sub_1E4207A24();
  __break(1u);
  return result;
}

void type metadata accessor for WLKLocationAuthorizationStatus()
{
  if (!qword_1ECF37A80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF37A80);
    }
  }
}

unint64_t sub_1E3D22994()
{
  result = qword_1ECF37A78;
  if (!qword_1ECF37A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37A78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationAuthorizationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3D22AE8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for CanonicalSectionHeaderLayout();
    v1 = sub_1E3DEF69C(*(v0 + 98));
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3D22B54()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for CanonicalSectionItemLayout();
    v1 = sub_1E417FB58(*(v0 + 98));
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3D22BC0()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for CanonicalSectionFooterLayout();
    v1 = sub_1E3CC174C(*(v0 + 98));
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E3D22C68(char a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 98) = a1;
  v2 = sub_1E3C2F9A0();
  if ([objc_opt_self() isSUIEnabled])
  {
    sub_1E3952C94();
    sub_1E3C2CC78();
  }

  v3 = sub_1E3D22AE8();
  sub_1E3C37CBC(v3, 110);

  v4 = sub_1E3D22B54();
  sub_1E3C37CBC(v4, 111);

  v5 = sub_1E3D22BC0();
  sub_1E3C37CBC(v5, 112);

  return v2;
}

unint64_t sub_1E3D22D60()
{
  result = qword_1ECF37A88;
  if (!qword_1ECF37A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37A88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CanonicalSectionLayout.CanonicalSectionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

id NSAttributedString.baseWritingDirection(forCharacterAt:)()
{
  if (OUTLINED_FUNCTION_5_151() <= v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E4297BD0;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1E3283528();
    v10 = MEMORY[0x1E69E6530];
    v11 = MEMORY[0x1E69E65A8];
    *(v8 + 32) = 0xD000000000000025;
    *(v8 + 40) = 0x80000001E427E910;
    *(v8 + 96) = v10;
    *(v8 + 104) = v11;
    *(v8 + 64) = v9;
    *(v8 + 72) = v0;
    v12 = [v1 (v2 + 1784)];
    *(v8 + 136) = v10;
    *(v8 + 144) = v11;
    *(v8 + 112) = v12;
    sub_1E4205F44();
    v13 = *MEMORY[0x1E695DA20];
    v14 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    v6 = OUTLINED_FUNCTION_6_144(v13);
    [v6 raise];
    v7 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_43_0();
    v5 = [v3 v4];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = [v5 baseWritingDirection];
  }

  return v7;
}

uint64_t NSAttributedString.baseWritingDirectionForCharacterAtIndex(_:unknownStyle:)(uint64_t a1, _BYTE *a2)
{
  result = NSAttributedString.baseWritingDirection(forCharacterAt:)();
  if (a2)
  {
    *a2 = v4 & 1;
  }

  if (v4)
  {
    return -1;
  }

  return result;
}

uint64_t sub_1E3D23070(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3_167();
  v5 = NSAttributedString.baseWritingDirectionForCharacterAtIndex(_:unknownStyle:)(v3, v4);

  return v5;
}

Swift::String __swiftcall NSAttributedString.convertedWritingDirectionToBidiControlCharacters()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()();
  v2 = [v1 string];
  v3 = sub_1E4205F14();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()()
{
  if (_MergedGlobals_231 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE28C468;
  v2 = v0;

  [v2 performSelector_];
}

id sub_1E3D231AC()
{
  sub_1E3280A90(0, &qword_1EE23B1B0);
  result = sub_1E3763FC8();
  static NSAttributedString.empty = result;
  return result;
}

uint64_t *NSAttributedString.empty.unsafeMutableAddressor()
{
  if (qword_1ECF60620 != -1)
  {
    OUTLINED_FUNCTION_0_221();
  }

  return &static NSAttributedString.empty;
}

id static NSAttributedString.empty.getter()
{
  if (qword_1ECF60620 != -1)
  {
    OUTLINED_FUNCTION_0_221();
  }

  v1 = static NSAttributedString.empty;

  return v1;
}

id sub_1E3D23284()
{
  v0 = static NSAttributedString.empty.getter();

  return v0;
}

uint64_t sub_1E3D232AC(void *a1)
{
  v1 = a1;
  NSAttributedString.fullRange.getter();

  return 0;
}

uint64_t NSAttributedString.paragraphStyle(at:effectiveRange:)(uint64_t a1, uint64_t a2)
{
  if ([v2 attribute:*MEMORY[0x1E69DB688] atIndex:a1 effectiveRange:a2])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1E3280A90(0, &qword_1EE23B298);
    if (swift_dynamicCast())
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
    sub_1E329505C(v7);
    return 0;
  }
}

id sub_1E3D233E8(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3_167();
  v5 = NSAttributedString.paragraphStyle(at:effectiveRange:)(v3, v4);

  return v5;
}

uint64_t NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)()
{
  if (OUTLINED_FUNCTION_5_151() <= v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E4297BD0;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1E3283528();
    v12 = MEMORY[0x1E69E6530];
    v13 = MEMORY[0x1E69E65A8];
    *(v10 + 32) = 0xD000000000000032;
    *(v10 + 40) = 0x80000001E427E940;
    *(v10 + 96) = v12;
    *(v10 + 104) = v13;
    *(v10 + 64) = v11;
    *(v10 + 72) = v0;
    v14 = [v1 (v2 + 1784)];
    *(v10 + 136) = v12;
    *(v10 + 144) = v13;
    *(v10 + 112) = v14;
    sub_1E4205F44();
    v15 = *MEMORY[0x1E695DA20];
    v16 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    v17 = OUTLINED_FUNCTION_6_144(v15);
    [v17 raise];

    return 0;
  }

  v19 = 0;
  v20 = 1;
  v3 = *MEMORY[0x1E69DB688];
  v4 = swift_allocObject();
  *(v4 + 16) = &v19;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E3D23EE4;
  *(v5 + 24) = v4;
  v18[4] = sub_1E3D23FBC;
  v18[5] = v5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1E3D236D0;
  v18[3] = &block_descriptor_99;
  v6 = _Block_copy(v18);

  [v1 enumerateAttribute:v3 inRange:0 options:v0 usingBlock:{2, v6}];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v19;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D236D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1E329504C(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1E329505C(v13);
}

uint64_t NSAttributedString.strongBaseWritingDirectionOfParagraphAtOrBeforeIndex(_:)()
{
  result = NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)();
  if (v1)
  {
    return -1;
  }

  return result;
}

uint64_t sub_1E3D2378C(void *a1)
{
  v1 = a1;
  v2 = NSAttributedString.strongBaseWritingDirectionOfParagraphAtOrBeforeIndex(_:)();

  return v2;
}

id NSAttributedString.paragraphStyle(for:wanting:defaultStyle:)(uint64_t a1, uint64_t a2, id a3, id a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v19[1] = 0;
  v9 = [v4 paragraphStyleAtIndex:a1 effectiveRange:v19];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1E4207034();
    if ((v13 & 1) == 0 && (v11 == a1 ? (v14 = v12 == a2) : (v14 = 0), v14 && ([v10 baseWritingDirection] == a3 || a3 == -1 && objc_msgSend(v10, sel_baseWritingDirection) != -1)))
    {

      return 0;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_43_0();
      a4 = [v16 v17];
    }
  }

  else
  {
    v15 = a4;
  }

  return a4;
}

void sub_1E3D238F4()
{
  v0 = sub_1E4205ED4();
  v1 = NSSelectorFromString(v0);

  qword_1EE28C468 = v1;
}

Swift::Void __swiftcall NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(Swift::OpaquePointer at, Swift::OpaquePointer paragraphRanges)
{
  v3 = v2;
  v5 = 0;
  v21 = at._rawValue + 32;
  v22 = *(at._rawValue + 2);
  v6 = paragraphRanges._rawValue & 0xC000000000000001;
  v7 = paragraphRanges._rawValue & 0xFFFFFFFFFFFFFF8;
  while (v5 != v22)
  {
    v8 = v5 + 1;
    v9 = *&v21[8 * v5];
    v10 = sub_1E4205ED4();
    [v3 replaceCharactersInRange:v9 withString:{1, v10}];

    v11 = sub_1E32AE9B0(paragraphRanges._rawValue);
    for (i = 0; ; ++i)
    {
      if (v11 == i)
      {
        goto LABEL_21;
      }

      if (v6)
      {
        v13 = MEMORY[0x1E6911E60](i, paragraphRanges._rawValue);
      }

      else
      {
        if (i >= *(v7 + 16))
        {
          goto LABEL_25;
        }

        v13 = *(paragraphRanges._rawValue + i + 4);
      }

      v14 = v13;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      [v13 directionalRangeValue];
      if (v9 >= v24)
      {
        if (__OFSUB__(v9, v24))
        {
          goto LABEL_26;
        }

        if (v9 - v24 < v25)
        {
          break;
        }
      }
    }

    [v14 directionalRangeValue];
    v15 = [v3 paragraphStyleAtIndex:v24 effectiveRange:0];
    if (!v15)
    {

      goto LABEL_21;
    }

    v16 = v15;
    [v15 paragraphSpacing];
    if (v17 == 0.0)
    {

      goto LABEL_20;
    }

    [v16 mutableCopy];
    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3280A90(0, &qword_1EE23B040);
    if (swift_dynamicCast())
    {
      [v23 setParagraphSpacing_];
      v18 = v23;
      [v20 addAttribute:v19 value:v18 range:{v24, v25}];

      v3 = v20;
LABEL_20:

LABEL_21:
      v5 = v8;
      continue;
    }

    v5 = v8;
    v3 = v20;
  }
}

Swift::Void __swiftcall NSMutableString.convertLineSeparatorsIntoLineFeeds(at:)(Swift::OpaquePointer at)
{
  v1 = *(at._rawValue + 2);
  if (v1)
  {
    v2 = at._rawValue + 32;
    do
    {
      v2 += 8;
      v3 = sub_1E4205ED4();
      v4 = OUTLINED_FUNCTION_43_0();
      [v4 v5];

      --v1;
    }

    while (v1);
  }
}

void *NSParagraphStyle.withBaseWritingDirection(_:)()
{
  [v0 mutableCopy];
  sub_1E4207264();
  swift_unknownObjectRelease();
  sub_1E3280A90(0, &qword_1EE23B040);
  OUTLINED_FUNCTION_4_173();
  v1 = OUTLINED_FUNCTION_43_0();
  [v1 v2];
  [v4 copy];
  sub_1E4207264();

  swift_unknownObjectRelease();
  sub_1E3280A90(0, &qword_1EE23B298);
  OUTLINED_FUNCTION_4_173();
  return v4;
}

id sub_1E3D23D18(void *a1)
{
  v1 = a1;
  v2 = NSParagraphStyle.withBaseWritingDirection(_:)();

  return v2;
}

NSTextAlignment __swiftcall UIUserInterfaceLayoutDirection.textAlignment(whenLeftToRight:rightToLeft:)(NSTextAlignment whenLeftToRight, NSTextAlignment rightToLeft)
{
  if (v2 == 1)
  {
    return rightToLeft;
  }

  return whenLeftToRight;
}

id sub_1E3D23E1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_1E4205ED4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1E4205C44();

LABEL_6:
  v9 = [v4 initWithName:a1 reason:v7 userInfo:v8];

  return v9;
}

void sub_1E3D23EE4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(v4 + 16);
  sub_1E3294F34(a1, v8);
  if (v9)
  {
    sub_1E3280A90(0, &qword_1EE23B298);
    if (swift_dynamicCast())
    {
      if ([v7 baseWritingDirection] == 1 || !objc_msgSend(v7, sel_baseWritingDirection))
      {
        *v6 = [v7 baseWritingDirection];
        *(v6 + 8) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_1E329505C(v8);
  }
}

uint64_t sub_1E3D23FE4(char a1)
{
  v1 = sub_1E3D241D0(a1);
  v3 = v2;
  if (v1 == 0xD000000000000013 && 0x80000001E427EB10 == v2)
  {
    goto LABEL_16;
  }

  v5 = v1;
  v6 = sub_1E42079A4();

  if (v6)
  {
    return 1;
  }

  if (v5 == 0x6B636F4C7473696CLL && v3 == 0xEA00000000007075)
  {
LABEL_16:

    return 1;
  }

  v8 = sub_1E42079A4();

  if ((v8 & 1) == 0)
  {
    if (v5 != 0xD000000000000015 || 0x80000001E427EB30 != v3)
    {
      v10 = sub_1E42079A4();

      return v10 & 1;
    }

    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_1E3D240F8(char a1, char a2)
{
  v3 = sub_1E3D241D0(a1);
  v5 = v4;
  if (v3 == sub_1E3D241D0(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D2417C()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D241D0(char a1)
{
  result = 0x6465727574616566;
  switch(a1)
  {
    case 1:
      result = 0x65467374726F7073;
      break;
    case 2:
      result = 0x78457374726F7073;
      break;
    case 3:
      result = 0x647261646E617473;
      break;
    case 4:
      result = 0x74537374726F7073;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 0x7478654E7075;
      break;
    case 9:
      v3 = 0x726579616C70;
      goto LABEL_9;
    case 10:
      result = 0x6B636F4C7473696CLL;
      break;
    case 11:
      result = 0x70756B636F6CLL;
      break;
    case 12:
      v3 = 0x7374726F7073;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7055000000000000;
      break;
    case 13:
      result = 0x7473694879616C70;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x756B636F4C62696CLL;
      break;
    case 19:
      result = 0x4C65646F73697065;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3D24444(char a1)
{
  sub_1E4207B44();
  sub_1E3D241D0(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D244B0(uint64_t a1, char a2)
{
  sub_1E3D241D0(a2);
  sub_1E4206014();
}

uint64_t sub_1E3D2450C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D241D0(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D2456C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D2417C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D2459C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D241D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D245D0()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3D24638()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    type metadata accessor for DownloadStateIndicatorLayout();
    v1 = sub_1E3C6D918();
    *(v0 + 176) = v1;
  }

  return v1;
}

id sub_1E3D246A0()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 184);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 184);
    *(v0 + 184) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E3D24710(uint64_t a1)
{
  v2 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t sub_1E3D24748(char a1)
{
  result = swift_beginAccess();
  *(v1 + 192) = a1;
  return result;
}

uint64_t sub_1E3D247D8()
{
  v2 = v0;
  OUTLINED_FUNCTION_8();
  (*(v3 + 1944))();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1808))(3);

  OUTLINED_FUNCTION_9_2();
  v6 = *(v5 + 1992);
  v6();
  sub_1E3952C78();
  v3964 = v7;
  v3965 = v8;
  v3966 = v9;
  v3967 = v10;
  LOBYTE(v3968) = 0;
  OUTLINED_FUNCTION_8();
  (*(v11 + 160))(&v3964);

  v13 = (v6)(v12);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v14 = *(*v13 + 680);
  v15 = v1;
  v14(v1);

  v17 = (v6)(v16);
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v18 = (*v17 + 872);
  v19 = *v18;
  v20 = v1;
  v19(v1);

  OUTLINED_FUNCTION_9_2();
  (*(v21 + 2016))();
  sub_1E3952C78();
  v3959 = v22;
  v3960 = v23;
  v3961 = v24;
  v3962 = v25;
  LOBYTE(v3963) = 0;
  OUTLINED_FUNCTION_8();
  (*(v26 + 160))(&v3959);

  OUTLINED_FUNCTION_9_2();
  switch((*(v27 + 2088))())
  {
    case 1u:
      OUTLINED_FUNCTION_111();
      v2039 += 240;
      v2040 = *v2039;
      (*v2039)();
      sub_1E3D308B8();

      (v2040)(v2041);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v2042, v2043);
      *&v4009 = v2044;
      *(&v4009 + 1) = v2045;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);

      OUTLINED_FUNCTION_9_2();
      v2047 = *(v2046 + 1800);
      v2047();
      OUTLINED_FUNCTION_2_1();
      (*(v2048 + 1936))(2);

      (v2047)(v2049);
      OUTLINED_FUNCTION_2_1();
      v2050 = OUTLINED_FUNCTION_15_8();
      v2051(v2050);

      (v2047)(v2052);
      OUTLINED_FUNCTION_2_1();
      v2053 = OUTLINED_FUNCTION_10_7();
      v2054(v2053);

      (v2047)(v2055);
      OUTLINED_FUNCTION_2_1();
      v2056 = OUTLINED_FUNCTION_10_7();
      v2057(v2056);

      v2059 = (v2047)(v2058);
      v3806 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v2060 = *(*v2059 + 680);
      v2061 = v2040;
      v2060(v2040);

      (v2047)(v2062);
      OUTLINED_FUNCTION_85_15();
      LOBYTE(v4005) = 27;
      LOBYTE(v4002[0]) = 27;
      LOBYTE(v3995[0]) = 22;
      LOBYTE(v3992[0]) = 22;
      LOBYTE(v3989[0]) = v2063;
      OUTLINED_FUNCTION_1_199(v2064, v2065, v2066, v2067, v2068, v2069, v2070, v2071, v2724, v2848, v2970, v3094, v3217, v3340, v3461, v3586, v3806, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, v2063);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2072, v2073);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2082 = OUTLINED_FUNCTION_21_78(v2074, v2075, v2076, v2077, v2078, v2079, v2080, v2081, v2820, v2942, v3065, v3189, v3311, v3433, v3556, v3679, v3807, v3931, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2083(v2082);

      (v2047)(v2084);
      OUTLINED_FUNCTION_75_19();
      LOBYTE(v4005) = 11;
      LOBYTE(v4002[0]) = 11;
      LOBYTE(v3995[0]) = 10;
      LOBYTE(v3992[0]) = 10;
      LOBYTE(v3989[0]) = 11;
      OUTLINED_FUNCTION_1_199(v2085, v2086, v2087, v2088, v2089, v2090, v2091, v2092, v2821, v2943, v3066, v3190, v3312, v3434, v3557, v3680, v3808, v3932, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2093, v2094);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2103 = OUTLINED_FUNCTION_45_48(v2095, v2096, v2097, v2098, v2099, v2100, v2101, v2102, v2822, v2944, v3067, v3191, v3313, v3435, v3558, v3681, v3809, v3933, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2104(v2103, 54);

      (v2047)(v2105);
      OUTLINED_FUNCTION_84_0();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v2106, v2107, v2108, v2109);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v2110, v2111, v2112, v2113);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v2114, v2115, v2116, v2117);
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v2118, v2119, v2120, v2121);
      sub_1E3952C88();
      OUTLINED_FUNCTION_4_167(v2122, v2123, v2124, v2125);
      type metadata accessor for UIEdgeInsets();
      OUTLINED_FUNCTION_1_199(v2126, v2127, v2128, v2129, v2130, v2131, v2132, v2133, v2823, v2945, v3068, v3192, v3314, v3436, v3559, v3682, v3810, v3934, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2134, v2135);
      OUTLINED_FUNCTION_48_35(v2136, v2137, v2138, v2139, v2140, v2141, v2142, v2143, v2824, v2946, v3069, v3193, v3315, v3437, v3560, v3683, v3811, v3935, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2152 = OUTLINED_FUNCTION_24_74(v2144, v2145, v2146, v2147, v2148, v2149, v2150, v2151, v2825, v2947, v3070, v3194, v3316, v3438, v3561, v3684, v3812, v3936, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2153(v2152);

      OUTLINED_FUNCTION_9_2();
      v2155 = *(v2154 + 1824);
      v2155();
      OUTLINED_FUNCTION_2_1();
      v2156 = OUTLINED_FUNCTION_15_8();
      v2157(v2156);

      (v2155)(v2158);
      OUTLINED_FUNCTION_2_1();
      v2159 = OUTLINED_FUNCTION_10_7();
      v2160(v2159);

      (v2155)(v2161);
      OUTLINED_FUNCTION_2_1();
      v2162 = OUTLINED_FUNCTION_10_7();
      v2163(v2162);

      v2165 = (v2155)(v2164);
      v2166 = *sub_1E3E5FD88();
      v2167 = *(*v2165 + 680);
      v2168 = v2166;
      v2167(v2166);

      (v2155)(v2169);
      OUTLINED_FUNCTION_91_13();
      LOBYTE(v4005) = 27;
      LOBYTE(v4002[0]) = 27;
      LOBYTE(v3995[0]) = 11;
      LOBYTE(v3992[0]) = 11;
      LOBYTE(v3989[0]) = v2170;
      OUTLINED_FUNCTION_1_199(v2171, v2172, v2173, v2174, v2175, v2176, v2177, v2178, v2826, v2948, v3071, v3195, v3317, v3439, v3562, v3685, v3813, v3937, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2179, v2180);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2189 = OUTLINED_FUNCTION_30_60(v2181, v2182, v2183, v2184, v2185, v2186, v2187, v2188, v2827, v2949, v3072, v3196, v3318, v3440, v3563, v3686, v3814, v3938, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2190(v2189);

      (v2155)(v2191);
      OUTLINED_FUNCTION_75_19();
      LOBYTE(v4005) = 11;
      sub_1E3C2FC98();
      LOBYTE(v3995[0]) = v4002[0];
      sub_1E3C3DE00(&qword_1F5D54AF8);
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00(&qword_1F5D54AF8);
      OUTLINED_FUNCTION_57_26();
      v2192 = sub_1E3C3DE00(&qword_1F5D54AF8);
      LOBYTE(v3974[0]) = v3983[0];
      v2200 = OUTLINED_FUNCTION_0_222(v2192, v2193, v2194, v2195, v2196, v2197, v2198, v2199, v2828, v2950, v3073, v3197, v3319, v3441, v3564, v3687, v3815, v3939, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v2200, v2201);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2210 = OUTLINED_FUNCTION_45_48(v2202, v2203, v2204, v2205, v2206, v2207, v2208, v2209, v2829, v2951, v3074, v3198, v3320, v3442, v3565, v3688, v3816, v3940, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2211(v2210, 54);

      (v2155)(v2212);
      OUTLINED_FUNCTION_133_6();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v2213, v2214, v2215, v2216);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v2217, v2218, v2219, v2220);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v2221, v2222, v2223, v2224);
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v2225, v2226, v2227, v2228);
      sub_1E3952C88();
      OUTLINED_FUNCTION_4_167(v2229, v2230, v2231, v2232);
      OUTLINED_FUNCTION_1_199(v2233, v2234, v2235, v2236, v2237, v2238, v2239, v2240, v2830, v2952, v3075, v3199, v3321, v3443, v3566, v3689, v3817, v3941, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2241, v2242);
      OUTLINED_FUNCTION_48_35(v2243, v2244, v2245, v2246, v2247, v2248, v2249, v2250, v2831, v2953, v3076, v3200, v3322, v3444, v3567, v3690, v3818, v3942, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2259 = OUTLINED_FUNCTION_24_74(v2251, v2252, v2253, v2254, v2255, v2256, v2257, v2258, v2832, v2954, v3077, v3201, v3323, v3445, v3568, v3691, v3819, v3943, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2260(v2259);

      OUTLINED_FUNCTION_9_2();
      v2262 = *(v2261 + 1848);
      v2262();
      OUTLINED_FUNCTION_2_1();
      v2263 = OUTLINED_FUNCTION_15_8();
      v2264(v2263);

      (v2262)(v2265);
      OUTLINED_FUNCTION_2_1();
      v2266 = OUTLINED_FUNCTION_10_7();
      v2267(v2266);

      (v2262)(v2268);
      OUTLINED_FUNCTION_2_1();
      v2269 = OUTLINED_FUNCTION_10_7();
      v2270(v2269);

      (v2262)(v2271);
      OUTLINED_FUNCTION_2_1();
      (*(v2272 + 1696))(14);

      (v2262)(v2273);
      OUTLINED_FUNCTION_2_1();
      (*(v2274 + 1792))(4);

      (v2262)(v2275);
      OUTLINED_FUNCTION_15_11();
      v2276 = *v3820;
      v2278 = *(*v2277 + 680);
      v2279 = *v3820;
      v2278(v2276);

      (v2262)(v2280);
      OUTLINED_FUNCTION_84_0();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v2281, v2282, v2283, v2284);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v2285, v2286, v2287, v2288);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v2289, v2290, v2291, v2292);
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v2293, v2294, v2295, v2296);
      sub_1E3952C88();
      OUTLINED_FUNCTION_4_167(v2297, v2298, v2299, v2300);
      OUTLINED_FUNCTION_1_199(v2301, v2302, v2303, v2304, v2305, v2306, v2307, v2308, v2833, v2955, v3078, v3202, v3324, v3446, v3569, v3692, v3820, v3944, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2309, v2310);
      OUTLINED_FUNCTION_48_35(v2311, v2312, v2313, v2314, v2315, v2316, v2317, v2318, v2834, v2956, v3079, v3203, v3325, v3447, v3570, v3693, v3821, v3945, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1149 = OUTLINED_FUNCTION_24_74(v2319, v2320, v2321, v2322, v2323, v2324, v2325, v2326, v2835, v2957, v3080, v3204, v3326, v3448, v3571, v3694, v3822, v3946, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      goto LABEL_35;
    case 2u:
      OUTLINED_FUNCTION_111();
      v929 += 240;
      v930 = *v929;
      v931 = (*v929)();
      sub_1E3D308B8();

      (v930)(v932);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v933, v934);
      *&v4009 = v935;
      *(&v4009 + 1) = v936;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);

      OUTLINED_FUNCTION_9_2();
      v938 = (v937 + 1800);
      v939 = *(v937 + 1800);
      v939();
      OUTLINED_FUNCTION_2_1();
      (*(v940 + 1936))(2);

      (v939)(v941);
      OUTLINED_FUNCTION_2_1();
      (*(v942 + 1864))(1);

      (v939)(v943);
      OUTLINED_FUNCTION_2_1();
      v944 = OUTLINED_FUNCTION_15_8();
      v945(v944);

      (v939)(v946);
      OUTLINED_FUNCTION_2_1();
      v947 = OUTLINED_FUNCTION_10_7();
      v948(v947);

      (v939)(v949);
      OUTLINED_FUNCTION_2_1();
      v950 = OUTLINED_FUNCTION_10_7();
      v951(v950);

      v953 = (v939)(v952);
      v3744 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v954 = *(*v953 + 680);
      v955 = v931;
      v954(v931);

      (v939)(v956);
      OUTLINED_FUNCTION_92_10();
      LOBYTE(v4005) = 17;
      sub_1E3C2FC98();
      v957 = OUTLINED_FUNCTION_51_35(v4002[0]);
      sub_1E3C3DE00(v957);
      v958 = OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00(v958);
      OUTLINED_FUNCTION_57_26();
      v959 = sub_1E3C3DE00(&qword_1F5D549D8);
      LOBYTE(v3974[0]) = v3983[0];
      v967 = OUTLINED_FUNCTION_3_168(v959, v960, v961, v962, v963, v964, v965, v966, v2724, v2848, v2970, v3094, v3217, v3340, v3461, v3586, v3744, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_111_8(v967, v968);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v977 = OUTLINED_FUNCTION_21_78(v969, v970, v971, v972, v973, v974, v975, v976, v2759, v2883, v3004, v3128, v3251, v3374, v3497, v3620, v3745, v3870, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v978(v977);

      (v939)(v979);
      OUTLINED_FUNCTION_2_1();
      (*(v980 + 1792))(10);

      (v939)(v981);
      OUTLINED_FUNCTION_125_9();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v982, v983, v984, v985);
      type metadata accessor for UIEdgeInsets();
      v987 = v986;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_25_72();
      sub_1E3C3DE00(v987);
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00(v987);
      OUTLINED_FUNCTION_14_7();
      v988 = OUTLINED_FUNCTION_86_10();
      LOBYTE(v3977) = v3986;
      v996 = OUTLINED_FUNCTION_0_222(v988, v989, v990, v991, v992, v993, v994, v995, v2760, v2884, v3005, v3129, v3252, v3375, v3498, v3621, v3746, v3871, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3983[1], v3984, v3985, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v996, v997);
      OUTLINED_FUNCTION_48_35(v998, v999, v1000, v1001, v1002, v1003, v1004, v1005, v2761, v2885, v3006, v3130, v3253, v3376, v3499, v3622, v3747, v3872, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1014 = OUTLINED_FUNCTION_13_119(v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v2762, v2886, v3007, v3131, v3254, v3377, v3500, v3623, v3748, v3873, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1015(v1014);

      OUTLINED_FUNCTION_9_2();
      v1017 = *(v1016 + 1824);
      v1017();
      OUTLINED_FUNCTION_2_1();
      v1018 = OUTLINED_FUNCTION_15_8();
      v1019(v1018);

      (v1017)(v1020);
      OUTLINED_FUNCTION_2_1();
      v1021 = OUTLINED_FUNCTION_10_7();
      v1022(v1021);

      (v1017)(v1023);
      OUTLINED_FUNCTION_2_1();
      v1024 = OUTLINED_FUNCTION_10_7();
      v1025(v1024);

      v1027 = (v1017)(v1026);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_106_15();
      v1028 = *(*v1027 + 680);
      v1029 = v938;
      v1028(v938);

      (v1017)(v1030);
      OUTLINED_FUNCTION_91_13();
      LOBYTE(v4005) = 17;
      LOBYTE(v4002[0]) = 17;
      v1031 = OUTLINED_FUNCTION_51_35(3);
      sub_1E3C3DE00(v1031);
      v1032 = OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00(v1032);
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v1033, v1034);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1043 = OUTLINED_FUNCTION_21_78(v1035, v1036, v1037, v1038, v1039, v1040, v1041, v1042, v2763, v2887, v3008, v3132, v3255, v3378, v3501, v3624, v3749, v3874, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1044(v1043);

      (v1017)(v1045);
      OUTLINED_FUNCTION_2_1();
      (*(v1046 + 1792))(4);

      (v1017)(v1047);
      OUTLINED_FUNCTION_108_11();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v1048, v1049, v1050, v1051);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v1052, v1053, v1054, v1055);
      OUTLINED_FUNCTION_103_10();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00(v987);
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00(v987);
      OUTLINED_FUNCTION_31_53();
      v1064 = OUTLINED_FUNCTION_8_125(v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v2764, v2888, v3009, v3133, v3256, v3379, v3502, v3625, v3750, v3875, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v1064, v1065);
      OUTLINED_FUNCTION_48_35(v1066, v1067, v1068, v1069, v1070, v1071, v1072, v1073, v2765, v2889, v3010, v3134, v3257, v3380, v3503, v3626, v3751, v3876, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1082 = OUTLINED_FUNCTION_13_119(v1074, v1075, v1076, v1077, v1078, v1079, v1080, v1081, v2766, v2890, v3011, v3135, v3258, v3381, v3504, v3627, v3752, v3877, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1083(v1082);

      OUTLINED_FUNCTION_9_2();
      v1085 = *(v1084 + 1848);
      v1085();
      OUTLINED_FUNCTION_2_1();
      v1086 = OUTLINED_FUNCTION_15_8();
      v1087(v1086);

      (v1085)(v1088);
      OUTLINED_FUNCTION_2_1();
      v1089 = OUTLINED_FUNCTION_10_7();
      v1090(v1089);

      (v1085)(v1091);
      OUTLINED_FUNCTION_2_1();
      v1092 = OUTLINED_FUNCTION_10_7();
      v1093(v1092);

      (v1085)(v1094);
      OUTLINED_FUNCTION_15_11();
      v1095 = *v3753;
      v1097 = *(*v1096 + 680);
      v1098 = *v3753;
      v1097(v1095);

      (v1085)(v1099);
      OUTLINED_FUNCTION_85_15();
      OUTLINED_FUNCTION_71_26();
      v1100 = OUTLINED_FUNCTION_51_35(14);
      sub_1E3C3DE00(v1100);
      v1101 = OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00(v1101);
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v1102, v1103);
      OUTLINED_FUNCTION_36_48();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1112 = OUTLINED_FUNCTION_21_78(v1104, v1105, v1106, v1107, v1108, v1109, v1110, v1111, v2767, v2891, v3012, v3136, v3259, v3382, v3505, v3628, v3753, v3878, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1113(v1112);

      (v1085)(v1114);
      OUTLINED_FUNCTION_2_1();
      (*(v1115 + 1792))(4);

      (v1085)(v1116);
      OUTLINED_FUNCTION_108_11();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v1117, v1118, v1119, v1120);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v1121, v1122, v1123, v1124);
      OUTLINED_FUNCTION_103_10();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00(v987);
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00(v987);
      OUTLINED_FUNCTION_31_53();
      v872 = OUTLINED_FUNCTION_8_125(v1125, v1126, v1127, v1128, v1129, v1130, v1131, v1132, v2768, v2892, v3013, v3137, v3260, v3383, v3506, v3629, v3754, v3879, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      goto LABEL_27;
    case 3u:
    case 0x14u:
      sub_1E3D2E8D4();
      goto LABEL_69;
    case 4u:
      OUTLINED_FUNCTION_111();
      v1345 += 240;
      v1346 = *v1345;
      (*v1345)();
      sub_1E3D308B8();

      (v1346)(v1347);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_66_24(v1348, v1349);
      *&v4009 = v1350;
      *(&v4009 + 1) = v1351;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);

      OUTLINED_FUNCTION_9_2();
      v1353 = (v1352 + 1824);
      v1354 = *(v1352 + 1824);
      v1354();
      OUTLINED_FUNCTION_2_1();
      v1355 = OUTLINED_FUNCTION_15_8();
      v1356(v1355);

      (v1354)(v1357);
      OUTLINED_FUNCTION_2_1();
      v1358 = OUTLINED_FUNCTION_15_8();
      v1359(v1358);

      (v1354)(v1360);
      OUTLINED_FUNCTION_2_1();
      v1361 = OUTLINED_FUNCTION_10_7();
      v1362(v1361);

      (v1354)(v1363);
      OUTLINED_FUNCTION_75_19();
      LOBYTE(v4005) = 11;
      OUTLINED_FUNCTION_110_10();
      LOBYTE(v3995[0]) = v4002[0];
      v1364 = OUTLINED_FUNCTION_62_27();
      sub_1E3C3DE00(v1364);
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00(&qword_1F5D54AF8);
      OUTLINED_FUNCTION_57_26();
      v1365 = OUTLINED_FUNCTION_86_10();
      LOBYTE(v3974[0]) = v3983[0];
      v1373 = OUTLINED_FUNCTION_0_222(v1365, v1366, v1367, v1368, v1369, v1370, v1371, v1372, v2724, v2848, v2970, v3094, v3217, v3340, v3461, v3586, v3707, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v1373, v1374);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1383 = OUTLINED_FUNCTION_45_48(v1375, v1376, v1377, v1378, v1379, v1380, v1381, v1382, v2779, v2903, v3024, v3148, v3271, v3394, v3517, v3640, v3765, v3890, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1384(v1383, 54);

      (v1354)(v1385);
      OUTLINED_FUNCTION_85_15();
      __dst[0] = v1386;
      LOBYTE(v4005) = 14;
      LOBYTE(v4002[0]) = 3;
      LOBYTE(v3995[0]) = 14;
      OUTLINED_FUNCTION_65_22();
      sub_1E3C2FC98();
      v1387 = OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00(v1387);
      OUTLINED_FUNCTION_12_110();
      OUTLINED_FUNCTION_97_13(v1388, v1389);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1398 = OUTLINED_FUNCTION_21_78(v1390, v1391, v1392, v1393, v1394, v1395, v1396, v1397, v2780, v2904, v3025, v3149, v3272, v3395, v3518, v3641, v3766, v3891, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1399(v1398);

      (v1354)(v1400);
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v1401, v1402, v1403, v1404);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v1405, v1406, v1407, v1408);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v1409, v1410, v1411, v1412);
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v1413, v1414, v1415, v1416);
      sub_1E3952C88();
      OUTLINED_FUNCTION_4_167(v1417, v1418, v1419, v1420);
      type metadata accessor for UIEdgeInsets();
      OUTLINED_FUNCTION_1_199(v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v2781, v2905, v3026, v3150, v3273, v3396, v3519, v3642, v3767, v3892, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v1429, v1430);
      OUTLINED_FUNCTION_48_35(v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v2782, v2906, v3027, v3151, v3274, v3397, v3520, v3643, v3768, v3893, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1447 = OUTLINED_FUNCTION_24_74(v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v2783, v2907, v3028, v3152, v3275, v3398, v3521, v3644, v3769, v3894, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1448(v1447);

      v1450 = (v1354)(v1449);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_106_15();
      v1451 = *(*v1450 + 680);
      v1452 = v1353;
      v1451(v1353);

      OUTLINED_FUNCTION_9_2();
      v1454 = *(v1453 + 1848);
      v1454();
      OUTLINED_FUNCTION_2_1();
      v1455 = OUTLINED_FUNCTION_133();
      v1456(v1455);

      (v1454)(v1457);
      OUTLINED_FUNCTION_2_1();
      v1458 = OUTLINED_FUNCTION_133();
      v1459(v1458);

      (v1454)(v1460);
      OUTLINED_FUNCTION_2_1();
      v1461 = OUTLINED_FUNCTION_10_7();
      v1462(v1461);

      (v1454)(v1463);
      OUTLINED_FUNCTION_75_19();
      LOBYTE(v4005) = 11;
      OUTLINED_FUNCTION_110_10();
      LOBYTE(v3995[0]) = v4002[0];
      v1464 = OUTLINED_FUNCTION_62_27();
      sub_1E3C3DE00(v1464);
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00(&qword_1F5D54AF8);
      OUTLINED_FUNCTION_57_26();
      v1465 = OUTLINED_FUNCTION_86_10();
      LOBYTE(v3974[0]) = v3983[0];
      v1473 = OUTLINED_FUNCTION_0_222(v1465, v1466, v1467, v1468, v1469, v1470, v1471, v1472, v2784, v2908, v3029, v3153, v3276, v3399, v3522, v3645, v3770, v3895, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v1473, v1474);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1483 = OUTLINED_FUNCTION_45_48(v1475, v1476, v1477, v1478, v1479, v1480, v1481, v1482, v2785, v2909, v3030, v3154, v3277, v3400, v3523, v3646, v3771, v3896, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1484(v1483, 54);

      (v1454)(v1485);
      __dst[0] = 21;
      LOBYTE(v4005) = 22;
      LOBYTE(v4002[0]) = 14;
      OUTLINED_FUNCTION_51_35(17);
      sub_1E3C2FC98();
      v1486 = OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00(v1486);
      OUTLINED_FUNCTION_12_110();
      OUTLINED_FUNCTION_97_13(v1487, v1488);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1497 = OUTLINED_FUNCTION_21_78(v1489, v1490, v1491, v1492, v1493, v1494, v1495, v1496, v2786, v2910, v3031, v3155, v3278, v3401, v3524, v3647, v3772, v3897, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1498(v1497);

      (v1454)(v1499);
      OUTLINED_FUNCTION_84_0();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v1500, v1501, v1502, v1503);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v1504, v1505, v1506, v1507);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v1508, v1509, v1510, v1511);
      sub_1E3952C88();
      v3992[0] = v1512;
      v3992[1] = v1513;
      v3993[0] = v1514;
      v3993[1] = v1515;
      LOBYTE(v3994) = 0;
      v1516 = *(MEMORY[0x1E69DDCE0] + 16);
      *v3989 = *MEMORY[0x1E69DDCE0];
      v3990 = v1516;
      LOBYTE(v3991) = 0;
      OUTLINED_FUNCTION_1_199(v1517, v1518, v1519, v1520, v1521, v1522, v1523, v1524, v2787, v2911, v3032, v3156, v3279, v3402, v3525, v3648, v3773, v3898, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v1525, v1526);
      OUTLINED_FUNCTION_48_35(v1527, v1528, v1529, v1530, v1531, v1532, v1533, v1534, v2788, v2912, v3033, v3157, v3280, v3403, v3526, v3649, v3774, v3899, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1543 = OUTLINED_FUNCTION_24_74(v1535, v1536, v1537, v1538, v1539, v1540, v1541, v1542, v2789, v2913, v3034, v3158, v3281, v3404, v3527, v3650, v3775, v3900, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1544(v1543);

      v1546 = (v1454)(v1545);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v1547 = *(*v1546 + 680);
      v1548 = &qword_1F5D54AF8;
      v1547(&qword_1F5D54AF8);
      goto LABEL_36;
    case 5u:
      OUTLINED_FUNCTION_111();
      v668 += 240;
      v669 = *v668;
      v670 = (*v668)();
      sub_1E3D308B8();

      (v669)(v671);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v672, v673);
      *&v4009 = v674;
      *(&v4009 + 1) = v675;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);

      OUTLINED_FUNCTION_9_2();
      v677 = (v676 + 1800);
      v678 = *(v676 + 1800);
      v678();
      OUTLINED_FUNCTION_2_1();
      (*(v679 + 1936))(2);

      (v678)(v680);
      OUTLINED_FUNCTION_2_1();
      (*(v681 + 1864))(1);

      (v678)(v682);
      OUTLINED_FUNCTION_2_1();
      v683 = OUTLINED_FUNCTION_15_8();
      v684(v683);

      (v678)(v685);
      OUTLINED_FUNCTION_2_1();
      v686 = OUTLINED_FUNCTION_10_7();
      v687(v686);

      (v678)(v688);
      OUTLINED_FUNCTION_2_1();
      v689 = OUTLINED_FUNCTION_10_7();
      v690(v689);

      v692 = (v678)(v691);
      v3730 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v693 = *(*v692 + 680);
      v694 = v670;
      v693(v670);

      (v678)(v695);
      OUTLINED_FUNCTION_92_10();
      LOBYTE(v4005) = 21;
      LOBYTE(v4002[0]) = 21;
      LOBYTE(v3995[0]) = 17;
      v696 = OUTLINED_FUNCTION_65_22();
      sub_1E3C3DE00(v696);
      v697 = OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00(v697);
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v698, v699);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v708 = OUTLINED_FUNCTION_21_78(v700, v701, v702, v703, v704, v705, v706, v707, v2724, v2848, v2970, v3094, v3217, v3340, v3461, v3586, v3730, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v709(v708);

      (v678)(v710);
      OUTLINED_FUNCTION_2_1();
      (*(v711 + 1792))(10);

      (v678)(v712);
      OUTLINED_FUNCTION_125_9();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v713, v714, v715, v716);
      type metadata accessor for UIEdgeInsets();
      v718 = v717;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_25_72();
      sub_1E3C3DE00(v718);
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00(v718);
      OUTLINED_FUNCTION_14_7();
      v719 = OUTLINED_FUNCTION_86_10();
      LOBYTE(v3977) = v3986;
      v727 = OUTLINED_FUNCTION_0_222(v719, v720, v721, v722, v723, v724, v725, v726, v2746, v2870, v2991, v3115, v3238, v3361, v3484, v3607, v3731, v3857, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3983[1], v3984, v3985, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v727, v728);
      OUTLINED_FUNCTION_48_35(v729, v730, v731, v732, v733, v734, v735, v736, v2747, v2871, v2992, v3116, v3239, v3362, v3485, v3608, v3732, v3858, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v745 = OUTLINED_FUNCTION_13_119(v737, v738, v739, v740, v741, v742, v743, v744, v2748, v2872, v2993, v3117, v3240, v3363, v3486, v3609, v3733, v3859, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v746(v745);

      OUTLINED_FUNCTION_9_2();
      v748 = *(v747 + 1824);
      v748();
      OUTLINED_FUNCTION_2_1();
      v749 = OUTLINED_FUNCTION_15_8();
      v750(v749);

      (v748)(v751);
      OUTLINED_FUNCTION_2_1();
      v752 = OUTLINED_FUNCTION_10_7();
      v753(v752);

      (v748)(v754);
      OUTLINED_FUNCTION_2_1();
      v755 = OUTLINED_FUNCTION_10_7();
      v756(v755);

      v758 = (v748)(v757);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_106_15();
      v759 = *(*v758 + 680);
      v760 = v677;
      v759(v677);

      (v748)(v761);
      OUTLINED_FUNCTION_91_13();
      LOBYTE(v4005) = 17;
      LOBYTE(v4002[0]) = 17;
      v762 = OUTLINED_FUNCTION_51_35(3);
      sub_1E3C3DE00(v762);
      v763 = OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00(v763);
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v764, v765);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v774 = OUTLINED_FUNCTION_21_78(v766, v767, v768, v769, v770, v771, v772, v773, v2749, v2873, v2994, v3118, v3241, v3364, v3487, v3610, v3734, v3860, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v775(v774);

      (v748)(v776);
      OUTLINED_FUNCTION_2_1();
      (*(v777 + 1792))(4);

      (v748)(v778);
      OUTLINED_FUNCTION_108_11();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v779, v780, v781, v782);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v783, v784, v785, v786);
      OUTLINED_FUNCTION_103_10();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00(v718);
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00(v718);
      OUTLINED_FUNCTION_31_53();
      v795 = OUTLINED_FUNCTION_8_125(v787, v788, v789, v790, v791, v792, v793, v794, v2750, v2874, v2995, v3119, v3242, v3365, v3488, v3611, v3735, v3861, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v795, v796);
      OUTLINED_FUNCTION_48_35(v797, v798, v799, v800, v801, v802, v803, v804, v2751, v2875, v2996, v3120, v3243, v3366, v3489, v3612, v3736, v3862, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v813 = OUTLINED_FUNCTION_13_119(v805, v806, v807, v808, v809, v810, v811, v812, v2752, v2876, v2997, v3121, v3244, v3367, v3490, v3613, v3737, v3863, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v814(v813);

      OUTLINED_FUNCTION_9_2();
      v816 = *(v815 + 1848);
      v816();
      OUTLINED_FUNCTION_2_1();
      v817 = OUTLINED_FUNCTION_15_8();
      v818(v817);

      (v816)(v819);
      OUTLINED_FUNCTION_2_1();
      v820 = OUTLINED_FUNCTION_10_7();
      v821(v820);

      (v816)(v822);
      OUTLINED_FUNCTION_2_1();
      v823 = OUTLINED_FUNCTION_10_7();
      v824(v823);

      (v816)(v825);
      OUTLINED_FUNCTION_15_11();
      v826 = *v3738;
      v828 = *(*v827 + 680);
      v829 = *v3738;
      v828(v826);

      (v816)(v830);
      OUTLINED_FUNCTION_85_15();
      OUTLINED_FUNCTION_71_26();
      v831 = OUTLINED_FUNCTION_51_35(14);
      sub_1E3C3DE00(v831);
      v832 = OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00(v832);
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v833, v834);
      OUTLINED_FUNCTION_36_48();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v843 = OUTLINED_FUNCTION_21_78(v835, v836, v837, v838, v839, v840, v841, v842, v2753, v2877, v2998, v3122, v3245, v3368, v3491, v3614, v3738, v3864, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v844(v843);

      (v816)(v845);
      OUTLINED_FUNCTION_2_1();
      (*(v846 + 1792))(4);

      (v816)(v847);
      OUTLINED_FUNCTION_132_9();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v848, v849, v850, v851);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v852, v853, v854, v855);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v856, v857, v858, v859);
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v860, v861, v862, v863);
      sub_1E3C3DE00(v718);
      OUTLINED_FUNCTION_20_77();
      v872 = OUTLINED_FUNCTION_4_174(v864, v865, v866, v867, v868, v869, v870, v871, v2754, v2878, v2999, v3123, v3246, v3369, v3492, v3615, v3739, v3865, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
LABEL_27:
      sub_1E3C2FCB8(v872, v873);
      OUTLINED_FUNCTION_48_35(v1133, v1134, v1135, v1136, v1137, v1138, v1139, v1140, v2755, v2879, v3000, v3124, v3247, v3370, v3493, v3616, v3740, v3866, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1149 = OUTLINED_FUNCTION_13_119(v1141, v1142, v1143, v1144, v1145, v1146, v1147, v1148, v2769, v2893, v3014, v3138, v3261, v3384, v3507, v3630, v3755, v3880, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
LABEL_35:
      v1150(v1149);
LABEL_36:

      goto LABEL_37;
    case 6u:
    case 0x13u:
      sub_1E3D2F414();
      goto LABEL_69;
    case 7u:
      OUTLINED_FUNCTION_111();
      v874 += 240;
      v875 = *v874;
      (*v874)();
      sub_1E3D308B8();

      (v875)(v876);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v877, v878);
      *&v4009 = v879;
      *(&v4009 + 1) = v880;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);

      OUTLINED_FUNCTION_9_2();
      v882 = *(v881 + 1824);
      v882();
      OUTLINED_FUNCTION_2_1();
      v883 = OUTLINED_FUNCTION_15_8();
      v884(v883);

      (v882)(v885);
      OUTLINED_FUNCTION_41_47();
      v886 = MEMORY[0x1E69E6810];
      OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00(v886);
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00(v886);
      OUTLINED_FUNCTION_17_102();
      v887 = sub_1E3C3DE00(v886);
      LOBYTE(v3974[1]) = v3983[1];
      v895 = OUTLINED_FUNCTION_0_222(v887, v888, v889, v890, v891, v892, v893, v894, v2724, v2848, v2970, v3094, v3217, v3340, v3461, v3586, v3707, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v895, v896);
      v905 = OUTLINED_FUNCTION_49_43(v897, v898, v899, v900, v901, v902, v903, v904, v2756, v2880, v3001, v3125, v3248, v3371, v3494, v3617, v3741, v3867, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      memcpy(v905, v906, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v915 = OUTLINED_FUNCTION_37_53(v907, v908, v909, v910, v911, v912, v913, v914, v2757, v2881, v3002, v3126, v3249, v3372, v3495, v3618, v3742, v3868, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v916(v915);

      (v882)(v917);
      OUTLINED_FUNCTION_2_1();
      v918 = OUTLINED_FUNCTION_10_7();
      v919(v918);

      (v882)(v920);
      OUTLINED_FUNCTION_2_1();
      (*(v921 + 1696))(15);

      (v882)(v922);
      OUTLINED_FUNCTION_2_1();
      (*(v923 + 1984))(5);

      v925 = (v882)(v924);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_7_16();
      v926 = *(*v925 + 680);
      v927 = v886;
      v926(v886);

      v928 = objc_opt_self();
      [v928 isSUIEnabled];
      OUTLINED_FUNCTION_116_9();
      v882();
      sub_1E3952C88();
      *&v4005 = v2459;
      *(&v4005 + 1) = v2460;
      *&v4006 = v2461;
      *(&v4006 + 1) = v2462;
      v4007 = 0;
      OUTLINED_FUNCTION_8();
      (*(v2463 + 160))();

      OUTLINED_FUNCTION_9_2();
      v2465 = *(v2464 + 1848);
      v2465();
      OUTLINED_FUNCTION_2_1();
      v2466 = OUTLINED_FUNCTION_15_8();
      v2467(v2466);

      (v2465)(v2468);
      *__dst = 1;
      OUTLINED_FUNCTION_90_15();
      v2469 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_59_27();
      sub_1E3C3DE00(v2469);
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00(v2469);
      OUTLINED_FUNCTION_58_30();
      v2470 = sub_1E3C3DE00(v2469);
      LOBYTE(v3969[1]) = v3974[1];
      OUTLINED_FUNCTION_8_125(v2470, v2471, v2472, v2473, v2474, v2475, v2476, v2477, v2758, v2882, v3003, v3127, v3250, v3373, v3496, v3619, v3743, v3869, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3974[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_107_9();
      sub_1E3C2FCB8(v2478, v2479);
      v2488 = OUTLINED_FUNCTION_49_43(v2480, v2481, v2482, v2483, v2484, v2485, v2486, v2487, v2838, v2960, v3084, v3207, v3330, v3451, v3575, v3697, v3826, v3949, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      memcpy(v2488, v2489, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2498 = OUTLINED_FUNCTION_39_47(v2490, v2491, v2492, v2493, v2494, v2495, v2496, v2497, v2839, v2961, v3085, v3208, v3331, v3452, v3576, v3698, v3827, v3950, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2499(v2498);

      (v2465)(v2500);
      OUTLINED_FUNCTION_2_1();
      v2501 = OUTLINED_FUNCTION_10_7();
      v2502(v2501);

      (v2465)(v2503);
      OUTLINED_FUNCTION_2_1();
      (*(v2504 + 1696))(19);

      (v2465)(v2505);
      OUTLINED_FUNCTION_2_1();
      (*(v2506 + 1984))(5);

      v2508 = (v2465)(v2507);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v2509 = *(*v2508 + 680);
      v2510 = v2469;
      v2509(v2469);

      if ([v928 isSUIEnabled])
      {
        goto LABEL_69;
      }

      v2465();
      OUTLINED_FUNCTION_132_9();
      OUTLINED_FUNCTION_32_61(v2511, v2512, v2513, v2514);
      (*(v2515 + 160))(v3998);
      goto LABEL_68;
    case 8u:
    case 9u:
    case 0xCu:
      v28 = [objc_opt_self() clearColor];
      OUTLINED_FUNCTION_9_2();
      (*(v29 + 752))();
      OUTLINED_FUNCTION_9_2();
      v31 = *(v30 + 1920);
      v31();
      sub_1E3D308B8();

      (v31)(v32);
      OUTLINED_FUNCTION_2_1();
      (*(v33 + 360))(0, 1);

      (v31)(v34);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v35, v36);
      *&v4009 = v37;
      *(&v4009 + 1) = v38;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);

      OUTLINED_FUNCTION_9_2();
      v40 = *(v39 + 1824);
      v40();
      OUTLINED_FUNCTION_2_1();
      v41 = OUTLINED_FUNCTION_15_8();
      v42(v41);

      (v40)(v43);
      OUTLINED_FUNCTION_2_1();
      (*(v44 + 2080))(5, 0);

      (v40)(v45);
      OUTLINED_FUNCTION_2_1();
      v46 = OUTLINED_FUNCTION_10_7();
      v47(v46);

      v49 = (v40)(v48);
      OUTLINED_FUNCTION_9_2();
      v3708 = v50 + 2088;
      v3462 = *(v50 + 2088);
      v3462();
      OUTLINED_FUNCTION_80_15();
      if (v55)
      {
        goto LABEL_4;
      }

      v53 = sub_1E3D241D0(v51);
      v55 = v53 == 0x7055726579616C70 && v54 == 0xEC0000007478654ELL;
      if (v55)
      {
      }

      else
      {
        v56 = OUTLINED_FUNCTION_128_8();

        if ((v56 & 1) == 0)
        {
LABEL_4:
          v52 = 17;
          goto LABEL_40;
        }
      }

      v52 = 19;
LABEL_40:
      (*(*v49 + 1696))(v52);

      (v40)(v2329);
      OUTLINED_FUNCTION_2_1();
      (*(v2330 + 2008))(1);

      v2332 = (v40)(v2331);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_121_10();
      v2333 = *(*v2332 + 680);
      v2334 = v49;
      v2333(v49);

      v2335 = objc_opt_self();
      if ([v2335 isSUIEnabled])
      {
        v40();
        OUTLINED_FUNCTION_133_6();
        goto LABEL_73;
      }

      v3462();
      OUTLINED_FUNCTION_80_15();
      if (v55)
      {
        goto LABEL_44;
      }

      v2341 = sub_1E3D241D0(v2340);
      if (v2341 == 0x7055726579616C70 && v2342 == 0xEC0000007478654ELL)
      {
      }

      else
      {
        v2344 = OUTLINED_FUNCTION_128_8();

        if ((v2344 & 1) == 0)
        {
LABEL_44:
          v40();
          OUTLINED_FUNCTION_125_9();
          goto LABEL_72;
        }
      }

      (v40)(v2345);
      OUTLINED_FUNCTION_108_11();
LABEL_72:
      sub_1E3952C58();
LABEL_73:
      OUTLINED_FUNCTION_28_58(v2336, v2337, v2338, v2339);
      OUTLINED_FUNCTION_8();
      (*(v2655 + 160))(&v4005);

      OUTLINED_FUNCTION_111();
      v2656 += 231;
      v2657 = *v2656;
      (*v2656)();
      OUTLINED_FUNCTION_2_1();
      v2658 = OUTLINED_FUNCTION_15_8();
      v2659(v2658);

      (v2657)(v2660);
      *__dst = 1;
      OUTLINED_FUNCTION_90_15();
      v2661 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_59_27();
      sub_1E3C3DE00(v2661);
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00(v2661);
      OUTLINED_FUNCTION_58_30();
      v2662 = sub_1E3C3DE00(v2661);
      LOBYTE(v3969[1]) = v3974[1];
      OUTLINED_FUNCTION_8_125(v2662, v2663, v2664, v2665, v2666, v2667, v2668, v2669, v2724, v2848, v2970, v3094, v3217, v3340, v3462, v3586, v3708, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3974[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_107_9();
      sub_1E3C2FCB8(v2670, v2671);
      v2680 = OUTLINED_FUNCTION_49_43(v2672, v2673, v2674, v2675, v2676, v2677, v2678, v2679, v2846, v2968, v3092, v3215, v3338, v3459, v3583, v3705, v3834, v3957, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      memcpy(v2680, v2681, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2690 = OUTLINED_FUNCTION_39_47(v2682, v2683, v2684, v2685, v2686, v2687, v2688, v2689, v2847, v2969, v3093, v3216, v3339, v3460, v3584, v3706, v3835, v3958, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2691(v2690);

      (v2657)(v2692);
      OUTLINED_FUNCTION_2_1();
      (*(v2693 + 2008))(1);

      (v2657)(v2694);
      OUTLINED_FUNCTION_2_1();
      (*(v2695 + 1696))(21);

      (v2657)(v2696);
      OUTLINED_FUNCTION_2_1();
      v2697 = OUTLINED_FUNCTION_10_7();
      v2698(v2697);

      v2700 = (v2657)(v2699);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_106_15();
      v2701 = *(*v2700 + 680);
      v2702 = v2661;
      v2701(v2661);

      v2703 = [v2335 isSUIEnabled];
      v2657();
      if (v2703)
      {
        v2704 = *(MEMORY[0x1E69DDCE0] + 16);
        *v3998 = *MEMORY[0x1E69DDCE0];
        *v3999 = v2704;
      }

      else
      {
        sub_1E3952C58();
        *v3998 = v2705;
        *&v3998[8] = v2706;
        v3999[0] = v2707;
        v3999[1] = v2708;
      }

      LOBYTE(v4000) = 0;
      OUTLINED_FUNCTION_8();
      (*(v2709 + 160))();

      OUTLINED_FUNCTION_9_2();
      (*(v2710 + 1968))();
      memset(__dst, 0, sizeof(__dst));
      v3980[0] = 0;
      v3980[1] = 0x401C000000000000;
      LOBYTE(v3981) = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v2711 + 160))(__dst);

      v3585(v2712);
      OUTLINED_FUNCTION_80_15();
      if (v55)
      {
        goto LABEL_85;
      }

      if (sub_1E3D241D0(v2713) == 0x7055726579616C70 && v2714 == 0xEC0000007478654ELL)
      {
      }

      else
      {
        v2716 = OUTLINED_FUNCTION_129_9();

        if ((v2716 & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      (v40)(v2713);
      OUTLINED_FUNCTION_30();
      (*(v2717 + 1720))(6);

      (v2657)(v2718);
      OUTLINED_FUNCTION_2_1();
      (*(v2719 + 1720))(6);

LABEL_85:
      v3585(v2713);
      OUTLINED_FUNCTION_80_15();
      if (v55)
      {
        goto LABEL_69;
      }

      if (sub_1E3D241D0(v2720) == 0x70557374726F7073 && v2721 == 0xEC0000007478654ELL)
      {

        goto LABEL_37;
      }

      v2723 = OUTLINED_FUNCTION_129_9();

      if (v2723)
      {
LABEL_37:
        v2327 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
        v2328 = v2[23];
        v2[23] = v2327;
      }

LABEL_69:
      OUTLINED_FUNCTION_111();
      (*(v2629 + 1896))();
      OUTLINED_FUNCTION_30();
      (*(v2630 + 2368))(1);

      OUTLINED_FUNCTION_9_2();
      v2632 = (*(v2631 + 1824))();
      sub_1E3C37CBC(v2632, 23);

      OUTLINED_FUNCTION_9_2();
      v2634 = (*(v2633 + 1848))();
      sub_1E3C37CBC(v2634, 15);

      OUTLINED_FUNCTION_9_2();
      v2636 = (*(v2635 + 1872))();
      sub_1E3C37CBC(v2636, 16);

      OUTLINED_FUNCTION_9_2();
      v2638 = *(v2637 + 1800);
      v2639 = v2638();
      sub_1E3C37CBC(v2639, 4);

      v2641 = (v2638)(v2640);
      sub_1E3C37CBC(v2641, 17);

      OUTLINED_FUNCTION_9_2();
      v2643 = (*(v2642 + 1896))();
      sub_1E3C37CBC(v2643, 10);

      OUTLINED_FUNCTION_9_2();
      v2645 = (*(v2644 + 1920))();
      sub_1E3C37CBC(v2645, 39);

      OUTLINED_FUNCTION_9_2();
      v2647 = (*(v2646 + 1944))();
      sub_1E3C37CBC(v2647, 32);

      OUTLINED_FUNCTION_9_2();
      v2649 = (*(v2648 + 1968))();
      sub_1E3C37CBC(v2649, 59);

      OUTLINED_FUNCTION_9_2();
      v2651 = (*(v2650 + 1992))();
      sub_1E3C37CBC(v2651, 67);

      OUTLINED_FUNCTION_9_2();
      v2653 = (*(v2652 + 2016))();
      sub_1E3C37CBC(v2653, 233);

    case 0xAu:
      OUTLINED_FUNCTION_9_2();
      v420 = (v419 + 1824);
      v421 = *(v419 + 1824);
      (v421)();
      OUTLINED_FUNCTION_2_1();
      (*(v422 + 1696))(17);

      v421(v423);
      OUTLINED_FUNCTION_2_1();
      v424 = OUTLINED_FUNCTION_76_19();
      v425(v424);

      v421(v426);
      OUTLINED_FUNCTION_2_1();
      v427 = OUTLINED_FUNCTION_15_8();
      v428(v427);

      v421(v429);
      OUTLINED_FUNCTION_2_1();
      v430 = OUTLINED_FUNCTION_8_5();
      v431(v430);

      v433 = (v421)(v432);
      v434 = sub_1E3E5FD88();
      OUTLINED_FUNCTION_81_12();
      v435 = *(*v433 + 680);
      v436 = v18;
      v435(v18);

      v421(v437);
      sub_1E3952C88();
      OUTLINED_FUNCTION_32_61(v438, v439, v440, v441);
      (*(v442 + 160))(v3998);

      OUTLINED_FUNCTION_9_2();
      v444 = *(v443 + 1848);
      v444();
      OUTLINED_FUNCTION_2_1();
      v445 = OUTLINED_FUNCTION_8_5();
      v446(v445);

      (v444)(v447);
      OUTLINED_FUNCTION_2_1();
      v448 = OUTLINED_FUNCTION_76_19();
      v449(v448);

      v451 = (v444)(v450);
      v452 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_121_10();
      v453 = *(*v451 + 680);
      v454 = v420;
      v453(v420);

      (v444)(v455);
      OUTLINED_FUNCTION_2_1();
      (*(v456 + 1696))(21);

      v457 = objc_opt_self();
      LOBYTE(v421) = [v457 isSUIEnabled];
      v444();
      if (v421)
      {
        v458 = *(MEMORY[0x1E69DDCE0] + 16);
        *__dst = *MEMORY[0x1E69DDCE0];
        *v3980 = v458;
      }

      else
      {
        sub_1E3952C88();
        *__dst = v2346;
        *&__dst[8] = v2347;
        v3980[0] = v2348;
        v3980[1] = v2349;
      }

      LOBYTE(v3981) = 0;
      OUTLINED_FUNCTION_8();
      (*(v2350 + 160))();

      OUTLINED_FUNCTION_9_2();
      v2352 = *(v2351 + 1872);
      v2352();
      OUTLINED_FUNCTION_2_1();
      v2353 = OUTLINED_FUNCTION_8_5();
      v2354(v2353);

      (v2352)(v2355);
      OUTLINED_FUNCTION_2_1();
      v2356 = OUTLINED_FUNCTION_76_19();
      v2357(v2356);

      (v2352)(v2358);
      OUTLINED_FUNCTION_15_11();
      v2359 = *v452;
      v2361 = *(*v2360 + 680);
      v2362 = v2359;
      v2361(v2359);

      (v2352)(v2363);
      OUTLINED_FUNCTION_2_1();
      (*(v2364 + 1696))(21);

      [v457 isSUIEnabled];
      OUTLINED_FUNCTION_116_9();
      v2352();
      if (v2359)
      {
        v2365 = *(MEMORY[0x1E69DDCE0] + 16);
        v4008 = *MEMORY[0x1E69DDCE0];
        v4009 = v2365;
      }

      else
      {
        sub_1E3952C88();
        *&v4008 = v2366;
        *(&v4008 + 1) = v2367;
        *&v4009 = v2368;
        *(&v4009 + 1) = v2369;
      }

      v4010 = 0;
      OUTLINED_FUNCTION_8();
      (*(v2370 + 160))();

      OUTLINED_FUNCTION_9_2();
      v2372 = *(v2371 + 1920);
      v2373 = v2372();
      v2374 = sub_1E418A524();
      v2375 = OUTLINED_FUNCTION_105_0(v2374);
      (*(*v2373 + 440))(v2375, 0);

      (v2372)(v2376);
      OUTLINED_FUNCTION_2_1();
      (*(v2377 + 1808))(3);

      (v2372)(v2378);
      OUTLINED_FUNCTION_2_1();
      (*(v2379 + 2000))(0);

      v2381.n128_f64[0] = (v2372)(v2380);
      OUTLINED_FUNCTION_130_12(v2381);
      OUTLINED_FUNCTION_122_9(v2382, v2383);
      *&v4006 = v2384;
      *(&v4006 + 1) = v2385;
      v4007 = 0;
      (*(*v2 + 1856))(&v4005);

      (v2372)(v2386);
      sub_1E3755B54();
      v2387 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.08];
      v2388 = OUTLINED_FUNCTION_114_8([objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1]);

      OUTLINED_FUNCTION_3_11();
      (*(v2389 + 1832))(v2388);

      (v2372)(v2390);
      OUTLINED_FUNCTION_30();
      v2391 = OUTLINED_FUNCTION_10_7();
      v2392(v2391);

      OUTLINED_FUNCTION_9_2();
      (*(v2393 + 1992))();
      OUTLINED_FUNCTION_15_11();
      v2394 = *v434;
      v2396 = *(*v2395 + 680);
      v2397 = v2394;
      v2396(v2394);

      v2399 = (v2372)(v2398);
      sub_1E39537A8();
      v4002[0] = v2400;
      v4002[1] = v2401;
      *&v4003 = v2402;
      *(&v4003 + 1) = v2403;
      v4004 = 0;
      (*(*v2399 + 560))(v4002);

      v2405 = (v2372)(v2404);
      v2406 = [objc_opt_self() defaultMetrics];
      [v2406 scaledValueForValue_];
      v2408 = v2407;

      (*(*v2405 + 360))(v2408, 0);

      (v2372)(v2409);
      v2410 = sub_1E3952CA4();
      OUTLINED_FUNCTION_28_55(v2410, v2411, v2412, v2413);
      OUTLINED_FUNCTION_8();
      (*(v2414 + 160))(v3995);

      *v3992 = xmmword_1E4298710;
      *v3993 = xmmword_1E4298710;
      LOBYTE(v3994) = 0;
      OUTLINED_FUNCTION_111();
      (*(v2415 + 184))(v3992);
      OUTLINED_FUNCTION_9_2();
      (*(v2416 + 2016))();
      v2417 = sub_1E3952C64();
      OUTLINED_FUNCTION_4_167(v2417, v2418, v2419, v2420);
      OUTLINED_FUNCTION_8();
      (*(v2421 + 160))(v3989);
      goto LABEL_68;
    case 0xBu:
      OUTLINED_FUNCTION_111();
      v459 += 240;
      v460 = *v459;
      (*v459)();
      sub_1E3D308B8();

      (v460)(v461);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_66_24(v462, v463);
      *&v4009 = v464;
      *(&v4009 + 1) = v465;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);

      OUTLINED_FUNCTION_9_2();
      v467 = (v466 + 1824);
      v468 = *(v466 + 1824);
      v468();
      OUTLINED_FUNCTION_2_1();
      v469 = OUTLINED_FUNCTION_15_8();
      v470(v469);

      (v468)(v471);
      OUTLINED_FUNCTION_41_47();
      v472 = MEMORY[0x1E69E6810];
      OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00(v472);
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00(v472);
      OUTLINED_FUNCTION_17_102();
      v473 = sub_1E3C3DE00(v472);
      LOBYTE(v3974[1]) = v3983[1];
      v481 = OUTLINED_FUNCTION_0_222(v473, v474, v475, v476, v477, v478, v479, v480, v2724, v2848, v2970, v3094, v3217, v3340, v3461, v3586, v3707, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v481, v482);
      v491 = OUTLINED_FUNCTION_49_43(v483, v484, v485, v486, v487, v488, v489, v490, v2740, v2864, v2986, v3110, v3233, v3356, v3479, v3602, v3725, v3852, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      memcpy(v491, v492, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v501 = OUTLINED_FUNCTION_37_53(v493, v494, v495, v496, v497, v498, v499, v500, v2741, v2865, v2987, v3111, v3234, v3357, v3480, v3603, v3726, v3853, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v502(v501);

      (v468)(v503);
      OUTLINED_FUNCTION_2_1();
      v504 = OUTLINED_FUNCTION_10_7();
      v505(v504);

      (v468)(v506);
      OUTLINED_FUNCTION_2_1();
      (*(v507 + 1696))(19);

      v509 = (v468)(v508);
      sub_1E3E5F58C();
      OUTLINED_FUNCTION_7_16();
      v510 = *(*v509 + 680);
      v511 = v472;
      v510(v472);

      sub_1E3952C88();
      v513 = v512;
      v515 = v514;
      v517 = v516;
      v519 = v518;
      v520 = objc_opt_self();
      v521 = [v520 isSUIEnabled];
      v522 = v513;
      v523 = v515;
      v524 = v517;
      v525 = v519;
      if ((v521 & 1) == 0)
      {
        sub_1E3952C88();
      }

      v2988 = v525;
      v3235 = v524;
      v3481 = v523;
      v3727 = v522;
      v526 = v513;
      v527 = v515;
      v528 = v517;
      v529 = v519;
      if (([v520 isSUIEnabled] & 1) == 0)
      {
        sub_1E3952C88();
        OUTLINED_FUNCTION_3();
      }

      v468();
      *__dst = v3727;
      *&__dst[8] = v3481;
      v3980[0] = v3235;
      v3980[1] = v2988;
      LOBYTE(v3981) = 0;
      *&v4005 = v513;
      *(&v4005 + 1) = v515;
      *&v4006 = v517;
      *(&v4006 + 1) = v519;
      v4007 = 0;
      v4002[0] = v513;
      v4002[1] = v515;
      *&v4003 = v517;
      *(&v4003 + 1) = v519;
      v4004 = 0;
      v3995[0] = v513;
      v3995[1] = v515;
      v3996[0] = v517;
      v3996[1] = v519;
      LOBYTE(v3997) = 0;
      type metadata accessor for UIEdgeInsets();
      v531 = v530;
      sub_1E3C3DE00(v530);
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00(v531);
      OUTLINED_FUNCTION_14_7();
      v540 = OUTLINED_FUNCTION_4_174(v532, v533, v534, v535, v536, v537, v538, v539, v2742, v2866, v2988, v3112, v3235, v3358, v3481, v3604, v3727, v3854, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_127_8(v540, v541);
      OUTLINED_FUNCTION_48_35(v542, v543, v544, v545, v546, v547, v548, v549, v2743, v2867, v2989, v3113, v3236, v3359, v3482, v3605, v3728, v3855, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v558 = OUTLINED_FUNCTION_13_119(v550, v551, v552, v553, v554, v555, v556, v557, v2744, v2868, v2990, v3114, v3237, v3360, v3483, v3606, v3729, v3856, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v559(v558);

      OUTLINED_FUNCTION_9_2();
      v561 = *(v560 + 1848);
      v561();
      OUTLINED_FUNCTION_2_1();
      v562 = OUTLINED_FUNCTION_133();
      v563(v562);

      (v561)(v564);
      OUTLINED_FUNCTION_2_1();
      v565 = OUTLINED_FUNCTION_133();
      v566(v565);

      (v561)(v567);
      OUTLINED_FUNCTION_2_1();
      v568 = OUTLINED_FUNCTION_10_7();
      v569(v568);

      (v561)(v570);
      OUTLINED_FUNCTION_2_1();
      (*(v571 + 1696))(21);

      v573 = (v561)(v572);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_121_10();
      v574 = *(*v573 + 680);
      v575 = v467;
      v574(v467);

      if ([v520 isSUIEnabled])
      {
        v526 = *MEMORY[0x1E69DDCE0];
        v527 = *(MEMORY[0x1E69DDCE0] + 8);
        v528 = *(MEMORY[0x1E69DDCE0] + 16);
        v529 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      else
      {
        sub_1E3952C88();
        OUTLINED_FUNCTION_3();
      }

      if ([v520 isSUIEnabled])
      {
        v2422 = *(MEMORY[0x1E69DDCE0] + 8);
        v2423 = *(MEMORY[0x1E69DDCE0] + 24);
        *v3572 = *(MEMORY[0x1E69DDCE0] + 16);
        *v3823 = *MEMORY[0x1E69DDCE0];
      }

      else
      {
        sub_1E3952C88();
        v2422 = v2424;
        *v3572 = v2426;
        *v3823 = v2425;
        v2423 = v2427;
      }

      *v3081 = *(MEMORY[0x1E69DDCE0] + 16);
      *v3327 = *MEMORY[0x1E69DDCE0];
      v561();
      *__dst = v526;
      *&__dst[8] = v527;
      v3980[0] = v528;
      v3980[1] = v529;
      LOBYTE(v3981) = 0;
      *&v4005 = *v3823;
      *(&v4005 + 1) = v2422;
      *&v4006 = v3572[0];
      *(&v4006 + 1) = v2423;
      v4007 = 0;
      v4002[0] = *v3823;
      v4002[1] = v2422;
      *&v4003 = v3572[0];
      *(&v4003 + 1) = v2423;
      v4004 = 0;
      *v3995 = *v3327;
      *v3996 = *v3081;
      LOBYTE(v3997) = 0;
      v2428 = OUTLINED_FUNCTION_62_27();
      sub_1E3C3DE00(v2428);
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00(v531);
      OUTLINED_FUNCTION_14_7();
      v2437 = OUTLINED_FUNCTION_4_174(v2429, v2430, v2431, v2432, v2433, v2434, v2435, v2436, v2745, v2869, v3081[0], v3081[1], v3327[0], v3327[1], v3572[0], v3572[1], *v3823, *&v3823[8], v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_127_8(v2437, v2438);
      OUTLINED_FUNCTION_48_35(v2439, v2440, v2441, v2442, v2443, v2444, v2445, v2446, v2836, v2958, v3082, v3205, v3328, v3449, v3573, v3695, v3824, v3947, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2455 = OUTLINED_FUNCTION_13_119(v2447, v2448, v2449, v2450, v2451, v2452, v2453, v2454, v2837, v2959, v3083, v3206, v3329, v3450, v3574, v3696, v3825, v3948, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2456(v2455);

      OUTLINED_FUNCTION_9_2();
      (*(v2457 + 1968))();
      OUTLINED_FUNCTION_2_1();
      (*(v2458 + 1792))(6);
      goto LABEL_68;
    case 0xDu:
      OUTLINED_FUNCTION_111();
      v1212 += 240;
      v1213 = *v1212;
      (*v1212)();
      sub_1E3D308B8();

      (v1213)(v1214);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_66_24(v1215, v1216);
      *&v4009 = v1217;
      *(&v4009 + 1) = v1218;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);

      OUTLINED_FUNCTION_9_2();
      v1220 = v1219 + 1824;
      v1221 = *(v1219 + 1824);
      v1221();
      OUTLINED_FUNCTION_2_1();
      v1222 = OUTLINED_FUNCTION_8_5();
      v1223(v1222);

      (v1221)(v1224);
      OUTLINED_FUNCTION_2_1();
      v1225 = OUTLINED_FUNCTION_8_5();
      v1226(v1225);

      (v1221)(v1227);
      OUTLINED_FUNCTION_2_1();
      v1228 = OUTLINED_FUNCTION_10_7();
      v1229(v1228);

      (v1221)(v1230);
      OUTLINED_FUNCTION_2_1();
      (*(v1231 + 2008))(1);

      (v1221)(v1232);
      __dst[0] = 17;
      LOBYTE(v4005) = 19;
      LOBYTE(v4002[0]) = 19;
      LOBYTE(v3995[0]) = 3;
      v1233 = OUTLINED_FUNCTION_65_22();
      sub_1E3C3DE00(v1233);
      v1234 = OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00(v1234);
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v1235, v1236);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1245 = OUTLINED_FUNCTION_21_78(v1237, v1238, v1239, v1240, v1241, v1242, v1243, v1244, v2724, v2848, v2970, v3094, v3217, v3340, v3461, v3586, v1220, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1246(v1245);

      (v1221)(v1247);
      *__dst = *sub_1E3E5F58C();
      v1248 = *__dst;
      v1249 = *sub_1E3E5FD88();
      *&v4005 = v1249;
      v1250 = sub_1E3755B54();
      v1251 = v1249;
      sub_1E3C2FC98();
      v3995[0] = v4002[0];
      v1252 = OUTLINED_FUNCTION_65_22();
      sub_1E3C3DE00(v1252);
      OUTLINED_FUNCTION_89_11();
      sub_1E3C3DE00(v1250);
      v3987 = v3988;
      v1253 = sub_1E3C3DE00(v1250);
      v1261 = OUTLINED_FUNCTION_3_168(v1253, v1254, v1255, v1256, v1257, v1258, v1259, v1260, v2773, v2897, v3018, v3142, v3265, v3388, v3511, v3634, v3759, v3884, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_111_8(v1261, v1262);
      v1263 = *v3998;
      v1264 = *&v3998[8];
      v1265 = v3999[0];
      v1266 = v3999[1];
      v1267 = v4000;
      v1268 = v4001;
      *__dst = *v3998;
      *&__dst[8] = *&v3998[8];
      v3980[0] = v3999[0];
      v3980[1] = v3999[1];
      v3981 = v4000;
      v3982 = v4001;
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1277 = OUTLINED_FUNCTION_45_48(v1269, v1270, v1271, v1272, v1273, v1274, v1275, v1276, v2774, v2898, v3019, v3143, v3266, v3389, v3512, v3635, v3760, v3885, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1278(v1277, 21);

      OUTLINED_FUNCTION_9_2();
      v1280 = *(v1279 + 1848);
      v1280();
      OUTLINED_FUNCTION_2_1();
      v1281 = OUTLINED_FUNCTION_15_8();
      v1282(v1281);

      (v1280)(v1283);
      *__dst = 1;
      __dst[8] = 0;
      *&v4005 = 2;
      BYTE8(v4005) = 0;
      v1284 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00(v1284);
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00(v1284);
      OUTLINED_FUNCTION_17_102();
      v1285 = sub_1E3C3DE00(v1284);
      LOBYTE(v3974[1]) = v3983[1];
      v1293 = OUTLINED_FUNCTION_0_222(v1285, v1286, v1287, v1288, v1289, v1290, v1291, v1292, v2775, v2899, v3020, v3144, v3267, v3390, v3513, v3636, v3761, v3886, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v1293, v1294);
      v1303 = OUTLINED_FUNCTION_49_43(v1295, v1296, v1297, v1298, v1299, v1300, v1301, v1302, v2776, v2900, v3021, v3145, v3268, v3391, v3514, v3637, v3762, v3887, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      memcpy(v1303, v1304, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1313 = OUTLINED_FUNCTION_39_47(v1305, v1306, v1307, v1308, v1309, v1310, v1311, v1312, v2777, v2901, v3022, v3146, v3269, v3392, v3515, v3638, v3763, v3888, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1314(v1313);

      (v1280)(v1315);
      OUTLINED_FUNCTION_2_1();
      v1316 = OUTLINED_FUNCTION_10_7();
      v1317(v1316);

      (v1280)(v1318);
      OUTLINED_FUNCTION_2_1();
      (*(v1319 + 2008))(1);

      v1321 = (v1280)(v1320);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v1322 = *(*v1321 + 680);
      v1323 = v1284;
      v1322(v1284);

      (v1280)(v1324);
      OUTLINED_FUNCTION_71_26();
      LOBYTE(v3995[0]) = 17;
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v1325, v1326);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1335 = OUTLINED_FUNCTION_30_60(v1327, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v2778, v2902, v3023, v3147, v3270, v3393, v3516, v3639, v3764, v3889, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1336(v1335);

      (v1221)(v1337);
      OUTLINED_FUNCTION_132_9();
      OUTLINED_FUNCTION_32_61(v1338, v1339, v1340, v1341);
      (*(v1342 + 160))(v3998);

      (v1280)(v1343);
      OUTLINED_FUNCTION_131_11();
      OUTLINED_FUNCTION_23_69();
      OUTLINED_FUNCTION_8();
      (*(v1344 + 160))(__dst);
      goto LABEL_68;
    case 0xEu:
      v304 = *(MEMORY[0x1E69DDCE0] + 16);
      v4008 = *MEMORY[0x1E69DDCE0];
      v4009 = v304;
      v4010 = 0;
      OUTLINED_FUNCTION_111();
      (*(v305 + 160))(&v4008);
      OUTLINED_FUNCTION_9_2();
      v307 = *(v306 + 1920);
      v308 = v307();
      sub_1E3D308B8();

      (v307)(v309);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_122_9(v310, v311);
      *&v4006 = v312;
      *(&v4006 + 1) = v313;
      v4007 = 0;
      (*(*v2 + 560))(&v4005);

      OUTLINED_FUNCTION_9_2();
      v315 = (v314 + 1824);
      v316 = *(v314 + 1824);
      v316();
      OUTLINED_FUNCTION_2_1();
      v317 = OUTLINED_FUNCTION_8_5();
      v318(v317);

      (v316)(v319);
      OUTLINED_FUNCTION_2_1();
      v320 = OUTLINED_FUNCTION_8_5();
      v321(v320);

      (v316)(v322);
      OUTLINED_FUNCTION_2_1();
      v323 = OUTLINED_FUNCTION_8_5();
      v324(v323);

      (v316)(v325);
      OUTLINED_FUNCTION_2_1();
      (*(v326 + 1696))(17);

      (v316)(v327);
      OUTLINED_FUNCTION_2_1();
      (*(v328 + 2008))(1);

      v330 = (v316)(v329);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_7_16();
      v331 = *(*v330 + 680);
      v332 = v308;
      v331(v308);

      (v316)(v333);
      OUTLINED_FUNCTION_2_1();
      (*(v334 + 1720))(7);

      (v316)(v335);
      OUTLINED_FUNCTION_125_9();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v336, v337, v338, v339);
      type metadata accessor for UIEdgeInsets();
      v341 = v340;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00(v341);
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00(v341);
      OUTLINED_FUNCTION_31_53();
      v342 = sub_1E3C3DE00(v341);
      LOBYTE(v3972) = v3977;
      OUTLINED_FUNCTION_8_125(v342, v343, v344, v345, v346, v347, v348, v349, v2724, v2848, v2970, v3094, v3217, v3340, v3461, v3586, v3707, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3974[0], v3974[1], v3975, v3976, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_107_9();
      sub_1E3C2FCB8(v350, v351);
      OUTLINED_FUNCTION_48_35(v352, v353, v354, v355, v356, v357, v358, v359, v2735, v2859, v2981, v3105, v3228, v3351, v3474, v3597, v3720, v3847, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v368 = OUTLINED_FUNCTION_13_119(v360, v361, v362, v363, v364, v365, v366, v367, v2736, v2860, v2982, v3106, v3229, v3352, v3475, v3598, v3721, v3848, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v369(v368);

      OUTLINED_FUNCTION_9_2();
      v371 = *(v370 + 1848);
      v371();
      OUTLINED_FUNCTION_2_1();
      v372 = OUTLINED_FUNCTION_15_8();
      v373(v372);

      (v371)(v374);
      OUTLINED_FUNCTION_2_1();
      v375 = OUTLINED_FUNCTION_8_5();
      v376(v375);

      (v371)(v377);
      OUTLINED_FUNCTION_2_1();
      v378 = OUTLINED_FUNCTION_8_5();
      v379(v378);

      (v371)(v380);
      OUTLINED_FUNCTION_2_1();
      (*(v381 + 1696))(19);

      v383 = (v371)(v382);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v384 = *(*v383 + 680);
      v385 = v315;
      v384(v315);

      (v371)(v386);
      OUTLINED_FUNCTION_2_1();
      (*(v387 + 1720))(7);

      (v371)(v388);
      OUTLINED_FUNCTION_132_9();
      OUTLINED_FUNCTION_23_69();
      *v4002 = v4008;
      v4003 = v4009;
      v4004 = v4010;
      OUTLINED_FUNCTION_103_10();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00(v341);
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00(v341);
      OUTLINED_FUNCTION_31_53();
      v389 = sub_1E3C3DE00(v341);
      LOBYTE(v3972) = v3977;
      OUTLINED_FUNCTION_8_125(v389, v390, v391, v392, v393, v394, v395, v396, v2737, v2861, v2983, v3107, v3230, v3353, v3476, v3599, v3722, v3849, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3974[0], v3974[1], v3975, v3976, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_107_9();
      sub_1E3C2FCB8(v397, v398);
      OUTLINED_FUNCTION_48_35(v399, v400, v401, v402, v403, v404, v405, v406, v2738, v2862, v2984, v3108, v3231, v3354, v3477, v3600, v3723, v3850, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v415 = OUTLINED_FUNCTION_13_119(v407, v408, v409, v410, v411, v412, v413, v414, v2739, v2863, v2985, v3109, v3232, v3355, v3478, v3601, v3724, v3851, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v416(v415);

      (v371)(v417);
      OUTLINED_FUNCTION_2_1();
      (*(v418 + 2008))(1);
      goto LABEL_68;
    case 0xFu:
      OUTLINED_FUNCTION_111();
      v576 += 228;
      v577 = *v576;
      v578 = v576;
      (*v576)();
      OUTLINED_FUNCTION_2_1();
      (*(v579 + 1696))(22);

      (v577)(v580);
      OUTLINED_FUNCTION_2_1();
      v581 = OUTLINED_FUNCTION_15_8();
      v582(v581);

      (v577)(v583);
      OUTLINED_FUNCTION_2_1();
      v584 = OUTLINED_FUNCTION_76_19();
      v585(v584);

      (v577)(v586);
      OUTLINED_FUNCTION_84_0();
      sub_1E3952C94();
      OUTLINED_FUNCTION_32_61(v587, v588, v589, v590);
      (*(v591 + 160))(v3998);

      (v577)(v592);
      OUTLINED_FUNCTION_2_1();
      (*(v593 + 1936))(2);

      v595 = (v577)(v594);
      v596 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v597 = *(*v595 + 680);
      v598 = v578;
      v597(v578);

      OUTLINED_FUNCTION_9_2();
      v600 = *(v599 + 1848);
      v600();
      OUTLINED_FUNCTION_2_1();
      v601 = OUTLINED_FUNCTION_15_8();
      v602(v601);

      (v600)(v603);
      OUTLINED_FUNCTION_2_1();
      (*(v604 + 1696))(18);

      v606 = (v600)(v605);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_81_12();
      v607 = *(*v606 + 680);
      v608 = v578;
      v607(v578);

      (v600)(v609);
      OUTLINED_FUNCTION_2_1();
      v610 = OUTLINED_FUNCTION_76_19();
      v611(v610);

      (v600)(v612);
      sub_1E3952C94();
      OUTLINED_FUNCTION_23_69();
      OUTLINED_FUNCTION_8();
      (*(v613 + 160))(__dst);

      OUTLINED_FUNCTION_9_2();
      v615 = *(v614 + 1800);
      v615();
      OUTLINED_FUNCTION_2_1();
      v616 = OUTLINED_FUNCTION_133();
      v617(v616);

      (v615)(v618);
      OUTLINED_FUNCTION_2_1();
      (*(v619 + 1696))(21);

      (v615)(v620);
      OUTLINED_FUNCTION_15_11();
      v621 = *v596;
      v623 = *(*v622 + 680);
      v624 = v621;
      v623(v621);

      (v615)(v625);
      OUTLINED_FUNCTION_2_1();
      v626 = OUTLINED_FUNCTION_76_19();
      v627(v626);

      OUTLINED_FUNCTION_9_2();
      v629 = *(v628 + 1920);
      v630 = v629();
      v631 = sub_1E418A524();
      v632 = OUTLINED_FUNCTION_105_0(v631);
      (*(*v630 + 440))(v632, 0);

      (v629)(v633);
      OUTLINED_FUNCTION_2_1();
      (*(v634 + 1808))(3);

      (v629)(v635);
      OUTLINED_FUNCTION_2_1();
      (*(v636 + 2000))(0);

      v638.n128_f64[0] = (v629)(v637);
      OUTLINED_FUNCTION_130_12(v638);
      OUTLINED_FUNCTION_66_24(v639, v640);
      *&v4009 = v641;
      *(&v4009 + 1) = v642;
      v4010 = 0;
      (*(*v2 + 1856))(&v4008);

      (v629)(v643);
      sub_1E3755B54();
      v644 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.08];
      v645 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
      v646 = sub_1E3E5F2F8(v644, v645);

      OUTLINED_FUNCTION_13();
      (*(v647 + 1832))(v646);

      (v629)(v648);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_122_9(v649, v650);
      *&v4006 = v651;
      *(&v4006 + 1) = v652;
      v4007 = 0;
      (*(*v2 + 560))(&v4005);

      (v629)(v653);
      OUTLINED_FUNCTION_30();
      v654 = OUTLINED_FUNCTION_10_7();
      v655(v654);

      v657 = (v629)(v656);
      v658 = [objc_opt_self() defaultMetrics];
      [v658 scaledValueForValue_];
      v660 = v659;

      (*(*v657 + 360))(v660, 0);

      (v629)(v661);
      v662 = sub_1E3952CA4();
      OUTLINED_FUNCTION_6_145(v662, v663, v664, v665);
      OUTLINED_FUNCTION_8();
      (*(v666 + 160))(v4002);

      *v3995 = xmmword_1E42B9700;
      *v3996 = xmmword_1E42B9700;
      LOBYTE(v3997) = 0;
      OUTLINED_FUNCTION_111();
      (*(v667 + 184))(v3995);
      goto LABEL_69;
    case 0x10u:
      OUTLINED_FUNCTION_111();
      v57 += 240;
      v58 = *v57;
      v59 = (*v57)();
      sub_1E3D308B8();

      OUTLINED_FUNCTION_9_2();
      v61 = *(v60 + 1800);
      v61();
      OUTLINED_FUNCTION_2_1();
      (*(v62 + 1936))(2);

      (v61)(v63);
      OUTLINED_FUNCTION_2_1();
      (*(v64 + 1864))(1);

      (v61)(v65);
      OUTLINED_FUNCTION_2_1();
      v66 = OUTLINED_FUNCTION_15_8();
      v67(v66);

      (v61)(v68);
      OUTLINED_FUNCTION_2_1();
      v69 = OUTLINED_FUNCTION_10_7();
      v70(v69);

      (v61)(v71);
      OUTLINED_FUNCTION_2_1();
      v72 = OUTLINED_FUNCTION_10_7();
      v73(v72);

      v75 = (v61)(v74);
      v3463 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v76 = *(*v75 + 680);
      v77 = v59;
      v76(v59);

      (v61)(v78);
      OUTLINED_FUNCTION_92_10();
      LOBYTE(v4008) = 17;
      sub_1E3C2FC98();
      LOBYTE(v4002[0]) = v4005;
      v79 = OUTLINED_FUNCTION_103_10();
      sub_1E3C3DE00(v79);
      LOBYTE(v3992[0]) = v3995[0];
      sub_1E3C3DE00(&qword_1F5D549D8);
      LOBYTE(v3988) = v3989[0];
      v80 = sub_1E3C3DE00(&qword_1F5D549D8);
      LOBYTE(v3983[0]) = v3987;
      v88 = OUTLINED_FUNCTION_100_7(v80, v81, v82, v83, v84, v85, v86, v87, v2724, v2848, v2970, v3094, v3217, v3340, v3463, v3586, v3707, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v88, v89);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v98 = OUTLINED_FUNCTION_30_60(v90, v91, v92, v93, v94, v95, v96, v97, v2725, v2849, v2971, v3095, v3218, v3341, v3464, v3587, v3709, v3837, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v99(v98);

      (v61)(v100);
      OUTLINED_FUNCTION_2_1();
      (*(v101 + 1792))(10);

      (v61)(v102);
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_73_17(v103, v104, v105, v106);
      type metadata accessor for UIEdgeInsets();
      v108 = v107;
      sub_1E3C2FC98();
      *v4002 = v4005;
      v4003 = v4006;
      v4004 = v4007;
      sub_1E3C3DE00(v108);
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00(v108);
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00(v108);
      OUTLINED_FUNCTION_31_53();
      v117 = OUTLINED_FUNCTION_100_7(v109, v110, v111, v112, v113, v114, v115, v116, v2726, v2850, v2972, v3096, v3219, v3342, v3465, v3588, v3710, v3838, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v117, v118);
      OUTLINED_FUNCTION_48_35(v119, v120, v121, v122, v123, v124, v125, v126, v2727, v2851, v2973, v3097, v3220, v3343, v3466, v3589, v3711, v3839, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v135 = OUTLINED_FUNCTION_24_74(v127, v128, v129, v130, v131, v132, v133, v134, v2728, v2852, v2974, v3098, v3221, v3344, v3467, v3590, v3712, v3840, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v136(v135);

      OUTLINED_FUNCTION_9_2();
      v138 = *(v137 + 1824);
      v138();
      OUTLINED_FUNCTION_2_1();
      v139 = OUTLINED_FUNCTION_15_8();
      v140(v139);

      (v138)(v141);
      OUTLINED_FUNCTION_2_1();
      v142 = OUTLINED_FUNCTION_10_7();
      v143(v142);

      (v138)(v144);
      OUTLINED_FUNCTION_2_1();
      v145 = OUTLINED_FUNCTION_10_7();
      v146(v145);

      v148 = (v138)(v147);
      v3713 = sub_1E3E5FD88();
      OUTLINED_FUNCTION_106_15();
      v149 = *(*v148 + 680);
      v150 = v61;
      v149(v61);

      (v138)(v151);
      OUTLINED_FUNCTION_2_1();
      (*(v152 + 1792))(4);

      (v138)(v153);
      OUTLINED_FUNCTION_131_11();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_73_17(v154, v155, v156, v157);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v158, v159, v160, v161);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_25_72();
      sub_1E3C3DE00(v108);
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00(v108);
      OUTLINED_FUNCTION_14_7();
      v170 = OUTLINED_FUNCTION_3_168(v162, v163, v164, v165, v166, v167, v168, v169, v2729, v2853, v2975, v3099, v3222, v3345, v3468, v3591, v3713, v3841, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v170, v171);
      OUTLINED_FUNCTION_48_35(v172, v173, v174, v175, v176, v177, v178, v179, v2730, v2854, v2976, v3100, v3223, v3346, v3469, v3592, v3714, v3842, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v188 = OUTLINED_FUNCTION_24_74(v180, v181, v182, v183, v184, v185, v186, v187, v2731, v2855, v2977, v3101, v3224, v3347, v3470, v3593, v3715, v3843, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v189(v188);

      (v138)(v190);
      OUTLINED_FUNCTION_2_1();
      (*(v191 + 1696))(17);

      (v138)(v192);
      OUTLINED_FUNCTION_2_1();
      v193 = OUTLINED_FUNCTION_76_19();
      v194(v193);

      (v138)(v195);
      OUTLINED_FUNCTION_2_1();
      v196 = OUTLINED_FUNCTION_8_5();
      v197(v196);

      OUTLINED_FUNCTION_9_2();
      v199 = *(v198 + 1848);
      v199();
      OUTLINED_FUNCTION_2_1();
      v200 = OUTLINED_FUNCTION_15_8();
      v201(v200);

      (v199)(v202);
      OUTLINED_FUNCTION_2_1();
      v203 = OUTLINED_FUNCTION_10_7();
      v204(v203);

      (v199)(v205);
      OUTLINED_FUNCTION_2_1();
      v206 = OUTLINED_FUNCTION_10_7();
      v207(v206);

      (v199)(v208);
      OUTLINED_FUNCTION_15_11();
      v209 = *v3471;
      v211 = *(*v210 + 680);
      v212 = *v3471;
      v211(v209);

      (v199)(v213);
      OUTLINED_FUNCTION_2_1();
      (*(v214 + 1792))(4);

      (v199)(v215);
      OUTLINED_FUNCTION_131_11();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_73_17(v216, v217, v218, v219);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v220, v221, v222, v223);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_25_72();
      sub_1E3C3DE00(v108);
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00(v108);
      OUTLINED_FUNCTION_14_7();
      v232 = OUTLINED_FUNCTION_3_168(v224, v225, v226, v227, v228, v229, v230, v231, v2732, v2856, v2978, v3102, v3225, v3348, v3471, v3594, v3716, v3844, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v232, v233);
      OUTLINED_FUNCTION_48_35(v234, v235, v236, v237, v238, v239, v240, v241, v2733, v2857, v2979, v3103, v3226, v3349, v3472, v3595, v3717, v3845, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v250 = OUTLINED_FUNCTION_24_74(v242, v243, v244, v245, v246, v247, v248, v249, v2734, v2858, v2980, v3104, v3227, v3350, v3473, v3596, v3718, v3846, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v251(v250);

      (v199)(v252);
      OUTLINED_FUNCTION_2_1();
      v253 = OUTLINED_FUNCTION_8_5();
      v254(v253);

      (v199)(v255);
      OUTLINED_FUNCTION_2_1();
      v256 = OUTLINED_FUNCTION_76_19();
      v257(v256);

      (v199)(v258);
      OUTLINED_FUNCTION_2_1();
      (*(v259 + 1696))(21);

      v261 = (v58)(v260);
      v262 = sub_1E418A524();
      v263 = OUTLINED_FUNCTION_105_0(v262);
      (*(*v261 + 440))(v263, 0);

      (v58)(v264);
      OUTLINED_FUNCTION_2_1();
      (*(v265 + 1808))(3);

      (v58)(v266);
      OUTLINED_FUNCTION_2_1();
      (*(v267 + 2000))(0);

      v269.n128_f64[0] = (v58)(v268);
      OUTLINED_FUNCTION_130_12(v269);
      *v3998 = v270;
      *&v3998[8] = v271;
      v3999[0] = v272;
      v3999[1] = v273;
      LOBYTE(v4000) = 0;
      (*(*v2 + 1856))(v3998);

      (v58)(v274);
      sub_1E3755B54();
      v275 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.08];
      v276 = OUTLINED_FUNCTION_114_8([objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1]);

      OUTLINED_FUNCTION_3_11();
      (*(v277 + 1832))(v276);

      (v58)(v278);
      OUTLINED_FUNCTION_30();
      v279 = OUTLINED_FUNCTION_10_7();
      v280(v279);

      OUTLINED_FUNCTION_9_2();
      (*(v281 + 1992))();
      OUTLINED_FUNCTION_15_11();
      v282 = *v3719;
      v284 = *(*v283 + 680);
      v285 = *v3719;
      v284(v282);

      v287 = (v58)(v286);
      sub_1E39537A8();
      *__dst = v288;
      *&__dst[8] = v289;
      v3980[0] = v290;
      v3980[1] = v291;
      LOBYTE(v3981) = 0;
      (*(*v287 + 560))(__dst);

      v293 = (v58)(v292);
      v294 = [objc_opt_self() defaultMetrics];
      [v294 scaledValueForValue_];
      v296 = v295;

      (*(*v293 + 360))(v296, 0);

      (v58)(v297);
      v298 = sub_1E3952CA4();
      OUTLINED_FUNCTION_73_17(v298, v299, v300, v301);
      OUTLINED_FUNCTION_8();
      (*(v302 + 160))(&v4008);

      v4005 = xmmword_1E4298710;
      v4006 = xmmword_1E4298710;
      v4007 = 0;
      OUTLINED_FUNCTION_111();
      (*(v303 + 184))(&v4005);
      goto LABEL_37;
    case 0x11u:
      OUTLINED_FUNCTION_111();
      v1151 += 240;
      v1152 = *v1151;
      (*v1151)();
      sub_1E3D308B8();

      (v1152)(v1153);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v1154, v1155);
      *&v4009 = v1156;
      *(&v4009 + 1) = v1157;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);

      OUTLINED_FUNCTION_9_2();
      v1159 = *(v1158 + 1824);
      v1159();
      OUTLINED_FUNCTION_2_1();
      v1160 = OUTLINED_FUNCTION_15_8();
      v1161(v1160);

      (v1159)(v1162);
      OUTLINED_FUNCTION_41_47();
      v1163 = MEMORY[0x1E69E6810];
      OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00(v1163);
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00(v1163);
      OUTLINED_FUNCTION_17_102();
      v1164 = sub_1E3C3DE00(v1163);
      LOBYTE(v3974[1]) = v3983[1];
      v1172 = OUTLINED_FUNCTION_0_222(v1164, v1165, v1166, v1167, v1168, v1169, v1170, v1171, v2724, v2848, v2970, v3094, v3217, v3340, v3461, v3586, v3707, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v1172, v1173);
      v1182 = OUTLINED_FUNCTION_49_43(v1174, v1175, v1176, v1177, v1178, v1179, v1180, v1181, v2770, v2894, v3015, v3139, v3262, v3385, v3508, v3631, v3756, v3881, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      memcpy(v1182, v1183, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1192 = OUTLINED_FUNCTION_37_53(v1184, v1185, v1186, v1187, v1188, v1189, v1190, v1191, v2771, v2895, v3016, v3140, v3263, v3386, v3509, v3632, v3757, v3882, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1193(v1192);

      (v1159)(v1194);
      OUTLINED_FUNCTION_2_1();
      v1195 = OUTLINED_FUNCTION_10_7();
      v1196(v1195);

      (v1159)(v1197);
      OUTLINED_FUNCTION_2_1();
      (*(v1198 + 1696))(19);

      (v1159)(v1199);
      OUTLINED_FUNCTION_2_1();
      (*(v1200 + 1984))(5);

      v1202 = (v1159)(v1201);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_7_16();
      v1203 = (*v1202 + 680);
      v1204 = *v1203;
      v1205 = v1163;
      v1204(v1163);

      v1206 = objc_opt_self();
      [v1206 isSUIEnabled];
      OUTLINED_FUNCTION_116_9();
      v1159();
      sub_1E3952C88();
      if (v1203)
      {
        OUTLINED_FUNCTION_28_58(v1207, v1208, v1209, v1210);
        OUTLINED_FUNCTION_8();
        (*(v1211 + 160))(&v4005);
      }

      else
      {
        OUTLINED_FUNCTION_23_69();
        sub_1E3952C88();
        OUTLINED_FUNCTION_28_58(v2516, v2517, v2518, v2519);
        type metadata accessor for UIEdgeInsets();
        v2521 = v2520;
        sub_1E3C2FC98();
        OUTLINED_FUNCTION_25_72();
        sub_1E3C3DE00(v2521);
        OUTLINED_FUNCTION_55_5();
        sub_1E3C3DE00(v2521);
        OUTLINED_FUNCTION_14_7();
        v2522 = sub_1E3C3DE00(v2521);
        LOBYTE(v3977) = v3986;
        v2530 = OUTLINED_FUNCTION_3_168(v2522, v2523, v2524, v2525, v2526, v2527, v2528, v2529, v2772, v2896, v3017, v3141, v3264, v3387, v3510, v3633, v3758, v3883, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3983[1], v3984, v3985, v3977, v3978, __dst[0]);
        OUTLINED_FUNCTION_111_8(v2530, v2531);
        OUTLINED_FUNCTION_48_35(v2532, v2533, v2534, v2535, v2536, v2537, v2538, v2539, v2840, v2962, v3086, v3209, v3332, v3453, v3577, v3699, v3828, v3951, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v2548 = OUTLINED_FUNCTION_24_74(v2540, v2541, v2542, v2543, v2544, v2545, v2546, v2547, v2841, v2963, v3087, v3210, v3333, v3454, v3578, v3700, v3829, v3952, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
        v2549(v2548);
      }

      OUTLINED_FUNCTION_111();
      v2550 += 231;
      v2551 = *v2550;
      (*v2550)();
      OUTLINED_FUNCTION_30();
      v2552 = OUTLINED_FUNCTION_15_8();
      v2553(v2552);

      (v2551)(v2554);
      *__dst = 1;
      OUTLINED_FUNCTION_90_15();
      v2555 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_59_27();
      sub_1E3C3DE00(v2555);
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00(v2555);
      OUTLINED_FUNCTION_58_30();
      v2556 = sub_1E3C3DE00(v2555);
      LOBYTE(v3969[1]) = v3974[1];
      OUTLINED_FUNCTION_8_125(v2556, v2557, v2558, v2559, v2560, v2561, v2562, v2563, v2772, v2896, v3017, v3141, v3264, v3387, v3510, v3633, v3758, v3883, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3974[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_107_9();
      sub_1E3C2FCB8(v2564, v2565);
      v2574 = OUTLINED_FUNCTION_49_43(v2566, v2567, v2568, v2569, v2570, v2571, v2572, v2573, v2842, v2964, v3088, v3211, v3334, v3455, v3579, v3701, v3830, v3953, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      memcpy(v2574, v2575, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2584 = OUTLINED_FUNCTION_39_47(v2576, v2577, v2578, v2579, v2580, v2581, v2582, v2583, v2843, v2965, v3089, v3212, v3335, v3456, v3580, v3702, v3831, v3954, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2585(v2584);

      (v2551)(v2586);
      OUTLINED_FUNCTION_2_1();
      v2587 = OUTLINED_FUNCTION_10_7();
      v2588(v2587);

      (v2551)(v2589);
      OUTLINED_FUNCTION_2_1();
      (*(v2590 + 1696))(21);

      (v2551)(v2591);
      OUTLINED_FUNCTION_2_1();
      (*(v2592 + 1984))(5);

      v2594 = (v2551)(v2593);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v2595 = *(*v2594 + 680);
      v2596 = v2555;
      v2595(v2555);

      if ([v1206 isSUIEnabled])
      {
        goto LABEL_69;
      }

      v2551();
      OUTLINED_FUNCTION_131_11();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v2597, v2598, v2599, v2600);
      type metadata accessor for UIEdgeInsets();
      v2602 = v2601;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00(v2602);
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00(v2602);
      OUTLINED_FUNCTION_31_53();
      v2603 = sub_1E3C3DE00(v2602);
      LOBYTE(v3972) = v3977;
      v2037 = OUTLINED_FUNCTION_8_125(v2603, v2604, v2605, v2606, v2607, v2608, v2609, v2610, v2844, v2966, v3090, v3213, v3336, v3457, v3581, v3703, v3832, v3955, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3974[0], v3974[1], v3975, v3976, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
LABEL_67:
      sub_1E3C2FCB8(v2037, v2038);
      OUTLINED_FUNCTION_48_35(v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2819, v2941, v3064, v3188, v3310, v3432, v3555, v3678, v3805, v3930, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2627 = OUTLINED_FUNCTION_13_119(v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2845, v2967, v3091, v3214, v3337, v3458, v3582, v3704, v3833, v3956, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2628(v2627);
LABEL_68:

      goto LABEL_69;
    case 0x12u:
      OUTLINED_FUNCTION_111();
      v1549 += 228;
      v1550 = *v1549;
      (*v1549)();
      OUTLINED_FUNCTION_2_1();
      (*(v1551 + 1984))(4);

      (v1550)(v1552);
      OUTLINED_FUNCTION_2_1();
      (*(v1553 + 2008))(1);

      (v1550)(v1554);
      OUTLINED_FUNCTION_2_1();
      v1555 = OUTLINED_FUNCTION_15_8();
      v1556(v1555);

      (v1550)(v1557);
      OUTLINED_FUNCTION_2_1();
      v1558 = OUTLINED_FUNCTION_8_5();
      v1559(v1558);

      (v1550)(v1560);
      OUTLINED_FUNCTION_2_1();
      v1561 = OUTLINED_FUNCTION_10_7();
      v1562(v1561);

      (v1550)(v1563);
      OUTLINED_FUNCTION_2_1();
      (*(v1564 + 1696))(19);

      v1566 = (v1550)(v1565);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_7_16();
      v1567 = *(*v1566 + 680);
      v1568 = v1;
      v1567(v1);

      (v1550)(v1569);
      OUTLINED_FUNCTION_2_1();
      (*(v1570 + 336))(0x4034000000000000, 0);

      (v1550)(v1571);
      *v3998 = 0x4018000000000000;
      *&v3998[8] = 0;
      v3999[1] = 0;
      v3999[0] = 0;
      LOBYTE(v4000) = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v1572 + 160))(v3998);

      OUTLINED_FUNCTION_9_2();
      v1574 = *(v1573 + 1848);
      v1574();
      OUTLINED_FUNCTION_2_1();
      v1575 = OUTLINED_FUNCTION_15_8();
      v1576(v1575);

      (v1574)(v1577);
      OUTLINED_FUNCTION_2_1();
      v1578 = OUTLINED_FUNCTION_15_8();
      v1579(v1578);

      (v1574)(v1580);
      OUTLINED_FUNCTION_2_1();
      v1581 = OUTLINED_FUNCTION_10_7();
      v1582(v1581);

      (v1574)(v1583);
      OUTLINED_FUNCTION_2_1();
      (*(v1584 + 2128))(0x3FE3333333333333, 0);

      (v1574)(v1585);
      OUTLINED_FUNCTION_2_1();
      (*(v1586 + 1696))(21);

      v1588 = (v1574)(v1587);
      v1589 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v1590 = *(*v1588 + 680);
      v1591 = v1550;
      v1590(v1550);

      (v1574)(v1592);
      memset(__dst, 0, sizeof(__dst));
      *v3980 = xmmword_1E4296C50;
      LOBYTE(v3981) = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v1593 + 160))(__dst);

      (v1574)(v1594);
      OUTLINED_FUNCTION_2_1();
      (*(v1595 + 336))(0x4034000000000000, 0);

      OUTLINED_FUNCTION_9_2();
      v1597 = *(v1596 + 1920);
      v1598 = v1597();
      sub_1E3D308B8();

      (v1597)(v1599);
      OUTLINED_FUNCTION_2_1();
      (*(v1600 + 1808))(1);

      v1602 = (v1597)(v1601);
      sub_1E3E60A14();
      OUTLINED_FUNCTION_81_12();
      v1603 = *(*v1602 + 872);
      v1604 = v1598;
      v1603(v1598);

      v1606 = (v1597)(v1605);
      v1607 = sub_1E418A524();
      v1608 = OUTLINED_FUNCTION_105_0(v1607);
      (*(*v1606 + 440))(v1608, 0);

      (v1597)(v1609);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_66_24(v1610, v1611);
      *&v4009 = v1612;
      *(&v4009 + 1) = v1613;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);

      v1615.n128_f64[0] = (v1597)(v1614);
      OUTLINED_FUNCTION_130_12(v1615);
      OUTLINED_FUNCTION_122_9(v1616, v1617);
      *&v4006 = v1618;
      *(&v4006 + 1) = v1619;
      v4007 = 0;
      (*(*v2 + 1856))(&v4005);

      (v1597)(v1620);
      sub_1E3755B54();
      v1621 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.08];
      v1622 = OUTLINED_FUNCTION_114_8([objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1]);

      OUTLINED_FUNCTION_3_11();
      (*(v1623 + 1832))(v1622);

      OUTLINED_FUNCTION_9_2();
      v1625 = *(v1624 + 2016);
      v1625();
      v1626 = *(MEMORY[0x1E69DDCE0] + 16);
      *v4002 = *MEMORY[0x1E69DDCE0];
      v4003 = v1626;
      v4004 = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v1627 + 160))(v4002);

      (v1625)(v1628);
      OUTLINED_FUNCTION_2_1();
      v1630 = (*(v1629 + 1728))();

      (*(*v1630 + 232))(0x402C000000000000, 0);

      OUTLINED_FUNCTION_9_2();
      v1632 = *(v1631 + 1992);
      v1632();
      v1633 = sub_1E391D8AC();
      OUTLINED_FUNCTION_8();
      (*(v1634 + 208))();

      (v1632)(v1635);
      OUTLINED_FUNCTION_15_11();
      (*(*v2 + 312))(v1633[1], 0);

      (v1632)(v1636);
      OUTLINED_FUNCTION_30();
      (*(v1637 + 160))(v4002);

      (v1632)(v1638);
      OUTLINED_FUNCTION_15_11();
      v1639 = *v1589;
      v1641 = *(*v1640 + 680);
      v1642 = v1639;
      v1641(v1639);

      v1644 = (v1632)(v1643);
      sub_1E3E60364();
      OUTLINED_FUNCTION_7_16();
      v1645 = *(*v1644 + 872);
      v1646 = v1639;
      v1645(v1639);
      goto LABEL_68;
    default:
      OUTLINED_FUNCTION_111();
      (*(v1647 + 608))(0);
      v1648 = *(MEMORY[0x1E69DDCE0] + 16);
      v4008 = *MEMORY[0x1E69DDCE0];
      v4009 = v1648;
      v4010 = 0;
      (*(*v2 + 560))(&v4008);
      v1649 = [objc_opt_self() clearColor];
      OUTLINED_FUNCTION_9_2();
      (*(v1650 + 752))();
      OUTLINED_FUNCTION_9_2();
      v1652 = *(v1651 + 1920);
      v1652();
      sub_1E3D308B8();

      (v1652)(v1653);
      OUTLINED_FUNCTION_2_1();
      (*(v1654 + 512))(18);

      OUTLINED_FUNCTION_9_2();
      v1656 = *(v1655 + 1800);
      v1656();
      OUTLINED_FUNCTION_2_1();
      (*(v1657 + 1936))(2);

      (v1656)(v1658);
      OUTLINED_FUNCTION_2_1();
      v1659 = OUTLINED_FUNCTION_15_8();
      v1660(v1659);

      (v1656)(v1661);
      OUTLINED_FUNCTION_41_47();
      v1662 = MEMORY[0x1E69E6810];
      OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00(v1662);
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00(v1662);
      OUTLINED_FUNCTION_17_102();
      v1663 = sub_1E3C3DE00(v1662);
      LOBYTE(v3974[1]) = v3983[1];
      v1671 = OUTLINED_FUNCTION_0_222(v1663, v1664, v1665, v1666, v1667, v1668, v1669, v1670, v2724, v2848, v2970, v3094, v3217, v3340, v3461, v3586, v3707, v3836, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v1671, v1672);
      v1681 = OUTLINED_FUNCTION_49_43(v1673, v1674, v1675, v1676, v1677, v1678, v1679, v1680, v2790, v2914, v3035, v3159, v3282, v3405, v3528, v3651, v3776, v3901, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      memcpy(v1681, v1682, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1691 = OUTLINED_FUNCTION_37_53(v1683, v1684, v1685, v1686, v1687, v1688, v1689, v1690, v2791, v2915, v3036, v3160, v3283, v3406, v3529, v3652, v3777, v3902, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1692(v1691);

      (v1656)(v1693);
      OUTLINED_FUNCTION_2_1();
      v1694 = OUTLINED_FUNCTION_10_7();
      v1695(v1694);

      (v1656)(v1696);
      OUTLINED_FUNCTION_70_23();
      LOBYTE(v3995[0]) = 21;
      v1697 = OUTLINED_FUNCTION_62_27();
      sub_1E3C3DE00(v1697);
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_57_26();
      OUTLINED_FUNCTION_1_199(v1698, v1699, v1700, v1701, v1702, v1703, v1704, v1705, v2792, v2916, v3037, v3161, v3284, v3407, v3530, v3653, v3778, v3903, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      sub_1E3C2FCB8(v1706, v1707);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1716 = OUTLINED_FUNCTION_30_60(v1708, v1709, v1710, v1711, v1712, v1713, v1714, v1715, v2793, v2917, v3038, v3162, v3285, v3408, v3531, v3654, v3779, v3904, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1717(v1716);

      (v1656)(v1718);
      __dst[0] = 10;
      LOBYTE(v4005) = 11;
      LOBYTE(v4002[0]) = 11;
      LOBYTE(v3995[0]) = 6;
      v1719 = OUTLINED_FUNCTION_62_27();
      sub_1E3C3DE00(v1719);
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00(&qword_1F5D54AF8);
      OUTLINED_FUNCTION_57_26();
      OUTLINED_FUNCTION_1_199(v1720, v1721, v1722, v1723, v1724, v1725, v1726, v1727, v2794, v2918, v3039, v3163, v3286, v3409, v3532, v3655, v3780, v3905, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      sub_1E3C2FCB8(v1728, v1729);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1738 = OUTLINED_FUNCTION_45_48(v1730, v1731, v1732, v1733, v1734, v1735, v1736, v1737, v2795, v2919, v3040, v3164, v3287, v3410, v3533, v3656, v3781, v3906, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1739(v1738, 54);

      (v1656)(v1740);
      OUTLINED_FUNCTION_108_11();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      OUTLINED_FUNCTION_44_43();
      *v3995 = xmmword_1E42CC970;
      *v3996 = xmmword_1E42CC980;
      LOBYTE(v3997) = 0;
      *v3992 = v4008;
      *v3993 = v4009;
      LOBYTE(v3994) = v4010;
      type metadata accessor for UIEdgeInsets();
      v3782 = v1741;
      sub_1E3C3DE00(v1741);
      OUTLINED_FUNCTION_20_77();
      v1750 = OUTLINED_FUNCTION_1_199(v1742, v1743, v1744, v1745, v1746, v1747, v1748, v1749, v2796, v2920, v3041, v3165, v3288, v3411, 0, 0x4041000000000000, v3782, v3907, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_113_10(v1750, v1751);
      OUTLINED_FUNCTION_48_35(v1752, v1753, v1754, v1755, v1756, v1757, v1758, v1759, v2797, v2921, v3042, v3166, v3289, v3412, v3534, v3657, v3783, v3908, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1768 = OUTLINED_FUNCTION_13_119(v1760, v1761, v1762, v1763, v1764, v1765, v1766, v1767, v2798, v2922, v3043, v3167, v3290, v3413, v3535, v3658, v3784, v3909, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1769(v1768);

      (v1656)(v1770);
      v1771 = *sub_1E3E60700();
      *__dst = v1771;
      *&v4005 = 0;
      v4002[0] = 0;
      v1772 = sub_1E3755B54();
      v1773 = v1771;
      v1774 = OUTLINED_FUNCTION_112_11();
      OUTLINED_FUNCTION_11_12();
      v1775 = sub_1E4206F24();
      v1776 = [v1775 colorWithAlphaComponent_];

      v1777 = sub_1E3E5F2F8(v1774, v1776);
      v3995[0] = v1777;
      sub_1E3C3DE00(v1772);
      OUTLINED_FUNCTION_89_11();
      v1778 = sub_1E3C3DE00(v1772);
      v3987 = v3988;
      OUTLINED_FUNCTION_1_199(v1778, v1779, v1780, v1781, v1782, v1783, v1784, v1785, v2799, v2923, v3044, v3168, v3291, v3414, v3536, v3659, v3785, v3910, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      sub_1E3C2FCB8(v1786, v1787);
      v1788 = *v3998;
      v1789 = *&v3998[8];
      v1790 = v3999[0];
      v1791 = v3999[1];
      v1792 = v4000;
      v1793 = v4001;
      *__dst = *v3998;
      *&__dst[8] = *&v3998[8];
      v3980[0] = v3999[0];
      v3980[1] = v3999[1];
      v3981 = v4000;
      v3982 = v4001;
      v1794 = OUTLINED_FUNCTION_18();
      v1802 = OUTLINED_FUNCTION_45_48(v1794, v1795, v1796, v1797, v1798, v1799, v1800, v1801, v2800, v2924, v3045, v3169, v3292, v3415, v3537, v3660, v3786, v3911, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1803(v1802, 21);

      OUTLINED_FUNCTION_9_2();
      v1805 = v1804 + 1824;
      v1806 = *(v1804 + 1824);
      v1806();
      v1807 = v1805;
      OUTLINED_FUNCTION_2_1();
      (*(v1808 + 1792))(4);

      (v1806)(v1809);
      OUTLINED_FUNCTION_2_1();
      v1810 = OUTLINED_FUNCTION_15_8();
      v1811(v1810);

      (v1806)(v1812);
      *__dst = 1;
      OUTLINED_FUNCTION_120_7();
      v1813 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00(v1813);
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00(v1813);
      OUTLINED_FUNCTION_17_102();
      v1814 = sub_1E3C3DE00(v1813);
      LOBYTE(v3974[1]) = v3983[1];
      v1822 = OUTLINED_FUNCTION_0_222(v1814, v1815, v1816, v1817, v1818, v1819, v1820, v1821, v2801, v2925, v3046, v3170, v3293, v3416, v3538, v3661, v3787, v3912, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v1822, v1823);
      v1832 = OUTLINED_FUNCTION_49_43(v1824, v1825, v1826, v1827, v1828, v1829, v1830, v1831, v2802, v2926, v3047, v3171, v3294, v3417, v3539, v3662, v3788, v3913, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      memcpy(v1832, v1833, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1842 = OUTLINED_FUNCTION_37_53(v1834, v1835, v1836, v1837, v1838, v1839, v1840, v1841, v2803, v2927, v3048, v3172, v3295, v3418, v3540, v3663, v3789, v3914, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1843(v1842);

      (v1806)(v1844);
      OUTLINED_FUNCTION_2_1();
      v1845 = OUTLINED_FUNCTION_10_7();
      v1846(v1845);

      (v1806)(v1847);
      OUTLINED_FUNCTION_70_23();
      LOBYTE(v3995[0]) = 11;
      LOBYTE(v3992[0]) = 15;
      v1848 = sub_1E3C3DE00(&qword_1F5D549D8);
      LOBYTE(v3988) = v3989[0];
      v1856 = OUTLINED_FUNCTION_1_199(v1848, v1849, v1850, v1851, v1852, v1853, v1854, v1855, v2804, v1807, v3049, v3173, v1806, v3419, v3541, v3664, v3790, v3915, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_113_10(v1856, v1857);
      OUTLINED_FUNCTION_36_48();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1866 = OUTLINED_FUNCTION_30_60(v1858, v1859, v1860, v1861, v1862, v1863, v1864, v1865, v2805, v2928, v3050, v3174, v3296, v3420, v3542, v3665, v3791, v3916, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1867(v1866);

      (v1806)(v1868);
      *__dst = *sub_1E3E5FD88();
      *&v4005 = 0;
      v4002[0] = 0;
      v1869 = *__dst;
      v1870 = sub_1E4206F24();
      OUTLINED_FUNCTION_11_12();
      v1871 = sub_1E4206F24();
      v1872 = [v1871 colorWithAlphaComponent_];

      v1873 = sub_1E3E5F2F8(v1870, v1872);
      v3995[0] = v1873;
      v3051 = sub_1E3E5FDEC();
      v3992[0] = *v3051;
      v1874 = v3992[0];
      v1875 = sub_1E3C3DE00(v1772);
      v3988 = v3989[0];
      v1883 = OUTLINED_FUNCTION_1_199(v1875, v1876, v1877, v1878, v1879, v1880, v1881, v1882, v2806, v2929, v3051, v3175, v3297, v3421, v3543, v3666, v3792, v3917, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v1883, v1884);
      v1885 = *v3998;
      v1886 = *&v3998[8];
      v1887 = v3999[0];
      v1888 = v3999[1];
      v1889 = v4000;
      v1890 = v4001;
      *__dst = *v3998;
      *&__dst[8] = *&v3998[8];
      v3980[0] = v3999[0];
      v3980[1] = v3999[1];
      v3981 = v4000;
      v3982 = v4001;
      v1891 = OUTLINED_FUNCTION_18();
      v1899 = OUTLINED_FUNCTION_45_48(v1891, v1892, v1893, v1894, v1895, v1896, v1897, v1898, v2807, v2930, v3052, v3176, v3298, v3422, v3544, v3667, v3793, v3918, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1900(v1899, 21);

      v3299();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      OUTLINED_FUNCTION_44_43();
      *v3995 = xmmword_1E42CC990;
      *v3996 = *v3545;
      LOBYTE(v3997) = 0;
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v1901, v1902, v1903, v1904);
      sub_1E3C3DE00(v3794);
      OUTLINED_FUNCTION_20_77();
      v1913 = OUTLINED_FUNCTION_1_199(v1905, v1906, v1907, v1908, v1909, v1910, v1911, v1912, v2808, v2931, v3053, v3177, 0x4046000000000000, 0x4041000000000000, v3545[0], v3545[1], v3794, v3919, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_113_10(v1913, v1914);
      OUTLINED_FUNCTION_48_35(v1915, v1916, v1917, v1918, v1919, v1920, v1921, v1922, v2809, v2932, v3054, v3178, v3300, v3423, v3546, v3668, v3795, v3920, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1931 = OUTLINED_FUNCTION_13_119(v1923, v1924, v1925, v1926, v1927, v1928, v1929, v1930, v2810, v2933, v3055, v3179, v3301, v3424, v3547, v3669, v3796, v3921, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1932(v1931);

      OUTLINED_FUNCTION_9_2();
      v1934 = v1933 + 1848;
      v1935 = *(v1933 + 1848);
      v1935();
      v1936 = v1934;
      OUTLINED_FUNCTION_2_1();
      (*(v1937 + 1792))(4);

      (v1935)(v1938);
      OUTLINED_FUNCTION_2_1();
      v1939 = OUTLINED_FUNCTION_15_8();
      v1940(v1939);

      (v1935)(v1941);
      *__dst = 1;
      OUTLINED_FUNCTION_120_7();
      v1942 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00(v1942);
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00(v1942);
      OUTLINED_FUNCTION_17_102();
      v1943 = sub_1E3C3DE00(v1942);
      LOBYTE(v3974[1]) = v3983[1];
      v1951 = OUTLINED_FUNCTION_0_222(v1943, v1944, v1945, v1946, v1947, v1948, v1949, v1950, v2811, v2934, v3056, v3180, v3302, v3425, v3548, v3670, v3797, v3922, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3983[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      sub_1E3C2FCB8(v1951, v1952);
      v1961 = OUTLINED_FUNCTION_49_43(v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960, v2812, v2935, v3057, v3181, v3303, v3426, v3549, v3671, v3798, v3923, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      memcpy(v1961, v1962, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1971 = OUTLINED_FUNCTION_37_53(v1963, v1964, v1965, v1966, v1967, v1968, v1969, v1970, v2813, v2936, v3058, v3182, v3304, v3427, v3550, v3672, v3799, v3924, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1972(v1971);

      (v1935)(v1973);
      OUTLINED_FUNCTION_2_1();
      v1974 = OUTLINED_FUNCTION_10_7();
      v1975(v1974);

      (v1935)(v1976);
      OUTLINED_FUNCTION_70_23();
      LOBYTE(v3995[0]) = 11;
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_57_26();
      OUTLINED_FUNCTION_1_199(v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v2814, v1936, v3059, v3183, v3305, v3428, v1935, v3673, v3800, v3925, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      sub_1E3C2FCB8(v1985, v1986);
      OUTLINED_FUNCTION_36_48();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1995 = OUTLINED_FUNCTION_30_60(v1987, v1988, v1989, v1990, v1991, v1992, v1993, v1994, v2815, v2937, v3060, v3184, v3306, v3429, v3551, v3674, v3801, v3926, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v1996(v1995);

      (v1935)(v1997);
      *__dst = *v3061;
      *&v4005 = 0;
      v4002[0] = 0;
      v1998 = *__dst;
      v1999 = OUTLINED_FUNCTION_112_11();
      OUTLINED_FUNCTION_11_12();
      v2000 = sub_1E4206F24();
      v2001 = [v2000 colorWithAlphaComponent_];

      v2002 = sub_1E3E5F2F8(v1999, v2001);
      v3995[0] = v2002;
      sub_1E3C3DE00(v1772);
      OUTLINED_FUNCTION_89_11();
      v2003 = sub_1E3C3DE00(v1772);
      v3987 = v3988;
      OUTLINED_FUNCTION_1_199(v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2010, v2816, v2938, v3061, v3185, v3307, v3430, v3552, v3675, v3802, v3927, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      sub_1E3C2FCB8(v2011, v2012);
      v2013 = *v3998;
      v2014 = *&v3998[8];
      v2015 = v3999[0];
      v2016 = v3999[1];
      v2017 = v4000;
      v2018 = v4001;
      *__dst = *v3998;
      *&__dst[8] = *&v3998[8];
      v3980[0] = v3999[0];
      v3980[1] = v3999[1];
      v3981 = v4000;
      v3982 = v4001;
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_3_11();
      v2027 = OUTLINED_FUNCTION_45_48(v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2817, v2939, v3062, v3186, v3308, v3431, v3553, v3676, v3803, v3928, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      v2028(v2027, 21);

      v3554();
      *__dst = xmmword_1E42CC9A0;
      *v3980 = xmmword_1E42B9700;
      LOBYTE(v3981) = 0;
      OUTLINED_FUNCTION_44_43();
      *v3995 = *v3309;
      *v3996 = xmmword_1E42CC9B0;
      LOBYTE(v3997) = 0;
      sub_1E3C3DE00(v3804);
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00(v3804);
      OUTLINED_FUNCTION_14_7();
      OUTLINED_FUNCTION_1_199(v2029, v2030, v2031, v2032, v2033, v2034, v2035, v2036, v2818, v2940, v3063, v3187, v3309[0], v3309[1], v3554, v3677, v3804, v3929, v3959, v3960, v3961, v3962, v3963, v3964, v3965, v3966, v3967, v3968, v3969[0], v3969[1], v3970, v3971, v3972, v3973, v3974[0], v3974[1], v3975, v3976, v3977, v3978, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      goto LABEL_67;
  }
}

uint64_t sub_1E3D2E28C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 208);
  *(v1 + 208) = a1;
  OUTLINED_FUNCTION_5_0();
  result = *(v1 + 208);
  if (result == 20)
  {
    if (v3 == 20)
    {
      return result;
    }

    return sub_1E3D247D8();
  }

  if (v3 == 20)
  {
    return sub_1E3D247D8();
  }

  v5 = sub_1E3D241D0(result);
  v7 = v6;
  if (v5 == sub_1E3D241D0(v3) && v7 == v8)
  {
  }

  v10 = sub_1E42079A4();

  if ((v10 & 1) == 0)
  {
    return sub_1E3D247D8();
  }

  return result;
}

void (*sub_1E3D2E374(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_5_0();
  *(v3 + 32) = *(v1 + 208);
  return sub_1E3D2E3E4;
}

void sub_1E3D2E3E4(uint64_t a1)
{
  v1 = *a1;
  sub_1E3D2E28C(*(*a1 + 32));

  free(v1);
}

uint64_t sub_1E3D2E460(char a1)
{
  OUTLINED_FUNCTION_81_18();
  *(v1 + 208) = v3;
  swift_beginAccess();
  *(v1 + 208) = a1;
  v4 = sub_1E3C2F9A0();

  sub_1E3D247D8();

  return v4;
}

uint64_t sub_1E3D2E504()
{
  OUTLINED_FUNCTION_81_18();
  *(v0 + 208) = v1;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3D2E520(double a1, double a2)
{
  OUTLINED_FUNCTION_8();
  v4 += 240;
  v5 = *v4;
  (*v4)();
  OUTLINED_FUNCTION_8();
  (*(v6 + 256))();

  (v5)(v7);
  OUTLINED_FUNCTION_15_11();
  (*(*v2 + 360))(*&a2, 0);
}

void sub_1E3D2E620()
{

  v1 = *(v0 + 184);
}

uint64_t sub_1E3D2E698()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3D2E718()
{
  v0 = sub_1E3D2E698();

  return MEMORY[0x1EEE6BDC0](v0, 209, 7);
}

uint64_t getEnumTagSinglePayload for CardCollectionLayoutType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CardCollectionLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E3D2E8D4()
{
  v0 = *(MEMORY[0x1E69DDCE0] + 16);
  v355 = *MEMORY[0x1E69DDCE0];
  v356 = v0;
  v357 = 0;
  OUTLINED_FUNCTION_8();
  (*(v1 + 560))(&v355);
  v2 = sub_1E3755B54();
  OUTLINED_FUNCTION_11_12();
  sub_1E4206F24();
  OUTLINED_FUNCTION_13();
  (*(v3 + 752))();
  OUTLINED_FUNCTION_13();
  (*(v4 + 1920))();
  sub_1E3D308B8();

  OUTLINED_FUNCTION_13();
  v6 = *(v5 + 1824);
  v6();
  OUTLINED_FUNCTION_2_1();
  v7 = OUTLINED_FUNCTION_15_8();
  v8(v7);

  (v6)(v9);
  LOBYTE(v300) = 0;
  v346 = 0;
  v347 = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_96_3();
  v10 = OUTLINED_FUNCTION_95_16();
  v18 = OUTLINED_FUNCTION_94_16(v10, v11, v12, v13, v14, v15, v16, v17, v237, v252, v267, v283, 1, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, SBYTE8(v329));
  OUTLINED_FUNCTION_68_23(v18, v19, v20, v21);
  v30 = OUTLINED_FUNCTION_117_10(v22, v23, v24, v25, v26, v27, v28, v29, v238, v253, v268, v284, v299);
  memcpy(v30, v31, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_38();
  v32();

  (v6)(v33);
  OUTLINED_FUNCTION_2_1();
  v34 = OUTLINED_FUNCTION_10_7();
  v35(v34);

  (v6)(v36);
  OUTLINED_FUNCTION_2_1();
  (*(v37 + 1792))(10);

  (v6)(v38);
  OUTLINED_FUNCTION_2_1();
  (*(v39 + 1936))(2);

  (v6)(v40);
  OUTLINED_FUNCTION_85_15();
  LOBYTE(v299) = v41;
  LOBYTE(v346) = 21;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_87_12();
  v42 = sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_69_23(v42, v43, v44, v45, v46, v47, v48, v49, v239, v254, v269, v285, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329);
  OUTLINED_FUNCTION_93_13(v50, v51);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33_54();
  v52();

  (v6)(v53);
  OUTLINED_FUNCTION_133_6();
  OUTLINED_FUNCTION_126_6();
  OUTLINED_FUNCTION_109_7(v54, v55, v56, v57);
  v341 = v58;
  v342 = v59;
  v343 = v60;
  v344 = v61;
  v345 = 0;
  v338 = xmmword_1E42CC9C0;
  v339 = xmmword_1E429D540;
  v340 = 0;
  sub_1E3952C88();
  *&v335 = v62;
  *(&v335 + 1) = v63;
  *&v336 = v64;
  *(&v336 + 1) = v65;
  v337 = 0;
  type metadata accessor for UIEdgeInsets();
  v67 = v66;
  v68 = sub_1E3C3DE00(v66);
  v329 = v332;
  v330 = v333;
  v331 = v334;
  v76 = OUTLINED_FUNCTION_34_57(v68, v69, v70, v71, v72, v73, v74, v75, v240, v255, v270, v286, v348);
  sub_1E3C2FCB8(v76, v77);
  v86 = OUTLINED_FUNCTION_117_10(v78, v79, v80, v81, v82, v83, v84, v85, v241, v256, v271, v287, v299);
  memcpy(v86, v87, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_69();
  v88();

  v257 = sub_1E3E5FDEC();
  v89 = *v257;
  OUTLINED_FUNCTION_11_12();
  v90 = sub_1E4206F24();
  v91 = [v90 colorWithAlphaComponent_];

  v92 = sub_1E3E5F2F8(v89, v91);
  v6();
  v346 = 0;
  v341 = 0;
  *&v338 = v92;
  v288 = v89;
  v272 = v92;
  sub_1E3C3DE00(v2);
  *&v332 = v335;
  v93 = sub_1E3C3DE00(v2);
  v354 = v329;
  v101 = OUTLINED_FUNCTION_34_57(v93, v94, v95, v96, v97, v98, v99, v100, v242, v257, v272, v288, v89);
  sub_1E3C2FCB8(v101, v102);
  v300 = v349;
  v301 = v350;
  v302 = v351;
  v303 = v352;
  v304 = v353;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v111 = OUTLINED_FUNCTION_118_9(v103, v104, v105, v106, v107, v108, v109, v110, v243, v258, v273, v289, v348);
  v112(v111);

  OUTLINED_FUNCTION_13();
  v114 = *(v113 + 1848);
  v114();
  OUTLINED_FUNCTION_2_1();
  v115 = OUTLINED_FUNCTION_15_8();
  v116(v115);

  (v114)(v117);
  LOBYTE(v300) = 0;
  v346 = 11;
  v347 = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_96_3();
  v118 = OUTLINED_FUNCTION_95_16();
  v126 = OUTLINED_FUNCTION_94_16(v118, v119, v120, v121, v122, v123, v124, v125, v244, v259, v274, v290, 1, v300, v350, v351, v352, v353, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, SBYTE8(v329));
  OUTLINED_FUNCTION_68_23(v126, v127, v128, v129);
  v138 = OUTLINED_FUNCTION_117_10(v130, v131, v132, v133, v134, v135, v136, v137, v245, v260, v275, v291, v299);
  memcpy(v138, v139, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_38();
  v140();

  (v114)(v141);
  OUTLINED_FUNCTION_2_1();
  v142 = OUTLINED_FUNCTION_10_7();
  v143(v142);

  (v114)(v144);
  LOBYTE(v299) = 21;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_87_12();
  v145 = sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_69_23(v145, v146, v147, v148, v149, v150, v151, v152, v246, v261, v276, v292, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329);
  OUTLINED_FUNCTION_93_13(v153, v154);
  OUTLINED_FUNCTION_83_12();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33_54();
  v155();

  (v114)(v156);
  LOBYTE(v341) = 11;
  LOBYTE(v338) = 5;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  OUTLINED_FUNCTION_87_12();
  v157 = sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v354) = v329;
  v165 = OUTLINED_FUNCTION_34_57(v157, v158, v159, v160, v161, v162, v163, v164, v247, v262, v277, v293, 4);
  sub_1E3C2FCB8(v165, v166);
  OUTLINED_FUNCTION_83_12();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v167 + 1600))(&v299, 54, v168 & 1, &qword_1F5D54AF8);

  (v114)(v169);
  OUTLINED_FUNCTION_84_0();
  sub_1E3952C88();
  OUTLINED_FUNCTION_126_6();
  OUTLINED_FUNCTION_109_7(v170, v171, v172, v173);
  v341 = v174;
  v342 = v175;
  v343 = v176;
  v344 = v177;
  v345 = 0;
  __asm { FMOV            V1.2D, #16.0 }

  v338 = xmmword_1E42CC9D0;
  v339 = _Q1;
  v340 = 0;
  v335 = v355;
  v336 = v356;
  v337 = v357;
  v183 = sub_1E3C3DE00(v67);
  v329 = v332;
  v330 = v333;
  v331 = v334;
  v191 = OUTLINED_FUNCTION_34_57(v183, v184, v185, v186, v187, v188, v189, v190, v248, v263, v278, v294, v299);
  sub_1E3C2FCB8(v191, v192);
  v201 = OUTLINED_FUNCTION_117_10(v193, v194, v195, v196, v197, v198, v199, v200, v249, v264, v279, v295, v299);
  memcpy(v201, v202, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_69();
  v203();

  (v114)(v204);
  v299 = *sub_1E3E5FD88();
  v346 = 0;
  v341 = 0;
  v205 = v299;
  v206 = sub_1E4206F24();
  OUTLINED_FUNCTION_11_12();
  v207 = sub_1E4206F24();
  v208 = [v207 colorWithAlphaComponent_];

  v209 = sub_1E3E5F2F8(v206, v208);
  *&v338 = v209;
  *&v335 = *v265;
  v210 = v335;
  v211 = sub_1E3C3DE00(v2);
  *&v329 = v332;
  v219 = OUTLINED_FUNCTION_34_57(v211, v212, v213, v214, v215, v216, v217, v218, v250, v265, v280, v296, v299);
  sub_1E3C2FCB8(v219, v220);
  v221 = v348;
  v222 = v349;
  v223 = v350;
  v224 = v351;
  v225 = v352;
  v226 = v353;
  v299 = v348;
  v300 = v349;
  v301 = v350;
  v302 = v351;
  v303 = v352;
  v304 = v353;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13();
  v235 = OUTLINED_FUNCTION_118_9(v227, v228, v229, v230, v231, v232, v233, v234, v251, v266, v281, v297, v299);
  v236(v235);
}

uint64_t sub_1E3D2F414()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v2 += 240;
  v3 = *v2;
  (*v2)();
  sub_1E3D308B8();

  (v3)(v4);
  OUTLINED_FUNCTION_98_13();
  v590[0] = v5;
  v590[1] = v6;
  v590[2] = v7;
  v590[3] = v8;
  v591 = 0;
  (*(*v0 + 560))(v590);

  OUTLINED_FUNCTION_9_2();
  v10 = *(v9 + 2040);
  v11 = v10();
  v12 = [v11 textLayout];

  [v12 setTextStyle_];
  v13 = v10();
  v14 = [v13 textLayout];

  [v14 setTextTransform_];
  v10();
  OUTLINED_FUNCTION_133_6();
  [v1 setMargin_];

  OUTLINED_FUNCTION_9_2();
  v16 = *(v15 + 1824);
  v16();
  OUTLINED_FUNCTION_2_1();
  v17 = OUTLINED_FUNCTION_15_8();
  v18(v17);

  (v16)(v19);
  LOBYTE(v551) = 0;
  v585 = 17;
  LOBYTE(v586) = 0;
  v20 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  v578 = v580;
  v579 = v581;
  sub_1E3C3DE00(v20);
  *&v567 = v570;
  BYTE8(v567) = BYTE8(v570);
  sub_1E3C3DE00(v20);
  *&v561 = v564;
  BYTE8(v561) = BYTE8(v564);
  v21 = sub_1E3C3DE00(v20);
  *&v555 = v558;
  BYTE8(v555) = BYTE8(v558);
  v29 = OUTLINED_FUNCTION_74_17(v21, v22, v23, v24, v25, v26, v27, v28, v346, v363, v380, v397, v414, v431, v448, v465, v482, v499, v516, v533, 1);
  sub_1E3C2FCB8(v29, v30);
  v39 = OUTLINED_FUNCTION_104_11(v31, v32, v33, v34, v35, v36, v37, v38, v347, v364, v381, v398, v415, v432, v449, v466, v483, v500, v517, v534, v550);
  memcpy(v39, v40, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v49 = OUTLINED_FUNCTION_72_2(v41, v42, v43, v44, v45, v46, v47, v48, v348, v365, v382, v399, v416, v433, v450, v467, v484, v501, v518, v535, v550);
  v50(v49, 63);

  (v16)(v51);
  OUTLINED_FUNCTION_2_1();
  v52 = OUTLINED_FUNCTION_10_7();
  v53(v52);

  (v16)(v54);
  LOBYTE(v580) = 19;
  sub_1E3C2FC98();
  LOBYTE(v570) = v578;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v564) = v567;
  v55 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v558) = v561;
  v63 = OUTLINED_FUNCTION_74_17(v55, v56, v57, v58, v59, v60, v61, v62, v349, v366, v383, v400, v417, v434, v451, v468, v485, v502, v519, v536, 22);
  sub_1E3C2FCB8(v63, v64);
  OUTLINED_FUNCTION_54_31();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v73 = OUTLINED_FUNCTION_72_2(v65, v66, v67, v68, v69, v70, v71, v72, v350, v367, v384, v401, v418, v435, v452, v469, v486, v503, v520, v537, v550);
  v74(v73, 48);

  (v16)(v75);
  OUTLINED_FUNCTION_2_1();
  (*(v76 + 1792))(10);

  (v16)(v77);
  OUTLINED_FUNCTION_2_1();
  (*(v78 + 1936))(2);

  v80 = (v16)(v79);
  v368 = sub_1E3E5FDEC();
  v81 = *v368;
  v82 = *(*v80 + 680);
  v83 = *v368;
  v82(v81);

  (v16)(v84);
  OUTLINED_FUNCTION_2_1();
  (*(v85 + 2008))(1);

  v86 = objc_opt_self();
  [v86 isSUIEnabled];
  v16();
  sub_1E3952C88();
  v585 = v87;
  v586 = v88;
  v587 = v89;
  v588 = v90;
  v589 = 0;
  OUTLINED_FUNCTION_8();
  (*(v91 + 160))();

  OUTLINED_FUNCTION_9_2();
  v93 = *(v92 + 1848);
  v93();
  OUTLINED_FUNCTION_2_1();
  v94 = OUTLINED_FUNCTION_15_8();
  v95(v94);

  (v93)(v96);
  LOBYTE(v551) = 0;
  v580 = 0;
  LOBYTE(v581) = 0;
  v97 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  *&v570 = v578;
  BYTE8(v570) = v579;
  sub_1E3C3DE00(v97);
  OUTLINED_FUNCTION_102();
  sub_1E3C3DE00(v97);
  OUTLINED_FUNCTION_101_0();
  sub_1E3C3DE00(v97);
  OUTLINED_FUNCTION_119_8();
  v106 = OUTLINED_FUNCTION_74_17(v98, v99, v100, v101, v102, v103, v104, v105, v351, v368, v385, v402, v419, v436, v453, v470, v487, v504, v521, v538, 1);
  sub_1E3C2FCB8(v106, v107);
  v116 = OUTLINED_FUNCTION_104_11(v108, v109, v110, v111, v112, v113, v114, v115, v352, v369, v386, v403, v420, v437, v454, v471, v488, v505, v522, v539, v550);
  memcpy(v116, v117, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v126 = OUTLINED_FUNCTION_72_2(v118, v119, v120, v121, v122, v123, v124, v125, v353, v370, v387, v404, v421, v438, v455, v472, v489, v506, v523, v540, v550);
  v127(v126, 63);

  (v93)(v128);
  OUTLINED_FUNCTION_2_1();
  v129 = OUTLINED_FUNCTION_10_7();
  v130(v129);

  (v93)(v131);
  OUTLINED_FUNCTION_2_1();
  (*(v132 + 2008))(1);

  (v93)(v133);
  LOBYTE(v580) = 17;
  LOBYTE(v578) = 17;
  LOBYTE(v570) = 3;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v564) = v567;
  v134 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v558) = v561;
  v142 = OUTLINED_FUNCTION_74_17(v134, v135, v136, v137, v138, v139, v140, v141, v354, v371, v388, v405, v422, v439, v456, v473, v490, v507, v524, v541, 15);
  sub_1E3C2FCB8(v142, v143);
  OUTLINED_FUNCTION_54_31();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v152 = OUTLINED_FUNCTION_72_2(v144, v145, v146, v147, v148, v149, v150, v151, v355, v372, v389, v406, v423, v440, v457, v474, v491, v508, v525, v542, v550);
  v153(v152, 48);

  v155 = (v93)(v154);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_121_10();
  v156 = *(*v155 + 680);
  v157 = &qword_1F5D549D8;
  v156(&qword_1F5D549D8);

  LODWORD(v97) = [v86 isSUIEnabled];
  v93();
  sub_1E3952C88();
  if (v97)
  {
    v580 = v158;
    v581 = v159;
    v582 = v160;
    v583 = v161;
    v584 = 0;
    OUTLINED_FUNCTION_8();
    (*(v162 + 160))(&v580);
  }

  else
  {
    LOBYTE(v550) = v158;
    v551 = v159;
    v552 = v160;
    v553 = v161;
    v554 = 0;
    sub_1E3952C88();
    v580 = v163;
    v581 = v164;
    v582 = v165;
    v583 = v166;
    v584 = 0;
    sub_1E3952C88();
    OUTLINED_FUNCTION_88_14(v167, v168, v169, v170);
    type metadata accessor for UIEdgeInsets();
    v172 = v171;
    sub_1E3C3DE00(v171);
    v567 = v570;
    v568 = v571;
    v569 = v572;
    sub_1E3C3DE00(v172);
    v561 = v564;
    v562 = v565;
    v563 = v566;
    v173 = sub_1E3C3DE00(v172);
    v555 = v558;
    v556 = v559;
    v557 = v560;
    v181 = OUTLINED_FUNCTION_74_17(v173, v174, v175, v176, v177, v178, v179, v180, v356, v373, v390, v407, v424, v441, v458, v475, v492, v509, v526, v543, v550);
    sub_1E3C2FCB8(v181, v182);
    v191 = OUTLINED_FUNCTION_104_11(v183, v184, v185, v186, v187, v188, v189, v190, v357, v374, v391, v408, v425, v442, v459, v476, v493, v510, v527, v544, v550);
    memcpy(v191, v192, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_69();
    v193();
  }

  OUTLINED_FUNCTION_111();
  v194 += 225;
  v195 = *v194;
  v196 = (*v194)();
  OUTLINED_FUNCTION_111();
  v197 += 261;
  v198 = *v197;
  (*v197)();
  OUTLINED_FUNCTION_80_15();
  if (v203)
  {
    goto LABEL_6;
  }

  v201 = sub_1E3D241D0(v199);
  v203 = v201 == 0x4C65646F73697065 && v202 == 0xED000070756B636FLL;
  if (!v203)
  {
    v204 = sub_1E42079A4();

    if (v204)
    {
      goto LABEL_14;
    }

LABEL_6:
    v200 = 4;
    goto LABEL_15;
  }

LABEL_14:
  v200 = 3;
LABEL_15:
  (*(*v196 + 2056))(v200, 0);

  v206 = (v195)(v205);
  v198();
  OUTLINED_FUNCTION_80_15();
  if (v203)
  {
    goto LABEL_17;
  }

  sub_1E3D241D0(v207);
  OUTLINED_FUNCTION_79_18();
  if (v209)
  {
    v211 = v210 == 0xED000070756B636FLL;
  }

  else
  {
    v211 = 0;
  }

  if (!v211)
  {
    v212 = sub_1E42079A4();

    if (v212)
    {
      goto LABEL_25;
    }

LABEL_17:
    v208 = 4;
    goto LABEL_26;
  }

LABEL_25:
  v208 = 3;
LABEL_26:
  (*(*v206 + 2080))(v208, 0);

  (v195)(v213);
  OUTLINED_FUNCTION_2_1();
  v214 = OUTLINED_FUNCTION_10_7();
  v215(v214);

  (v195)(v216);
  OUTLINED_FUNCTION_2_1();
  (*(v217 + 2008))(1);

  (v195)(v218);
  OUTLINED_FUNCTION_85_15();
  LOBYTE(v550) = v219;
  LOBYTE(v578) = 21;
  LOBYTE(v570) = 21;
  LOBYTE(v567) = 14;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v561) = v564;
  v220 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v555) = v558;
  v228 = OUTLINED_FUNCTION_74_17(v220, v221, v222, v223, v224, v225, v226, v227, v356, v373, v390, v407, v424, v441, v458, v475, v492, v509, v526, v543, v550);
  sub_1E3C2FCB8(v228, v229);
  OUTLINED_FUNCTION_54_31();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v238 = OUTLINED_FUNCTION_72_2(v230, v231, v232, v233, v234, v235, v236, v237, v358, v375, v392, v409, v426, v443, v460, v477, v494, v511, v528, v545, v550);
  v239(v238, 48);

  (v195)(v240);
  OUTLINED_FUNCTION_15_11();
  v241 = *v376;
  v243 = *(*v242 + 680);
  v244 = *v376;
  v243(v241);

  [v86 isSUIEnabled];
  OUTLINED_FUNCTION_116_9();
  v195();
  if (v241)
  {
    sub_1E3952C88();
    OUTLINED_FUNCTION_88_14(v245, v246, v247, v248);
    OUTLINED_FUNCTION_8();
    (*(v249 + 160))(&v578);
  }

  else
  {
    sub_1E3952C58();
    LOBYTE(v550) = v250;
    v551 = v251;
    v552 = v252;
    v553 = v253;
    v554 = 0;
    sub_1E3952C88();
    OUTLINED_FUNCTION_88_14(v254, v255, v256, v257);
    sub_1E3952C88();
    *&v570 = v258;
    *(&v570 + 1) = v259;
    *&v571 = v260;
    *(&v571 + 1) = v261;
    v572 = 0;
    type metadata accessor for UIEdgeInsets();
    v263 = v262;
    sub_1E3C3DE00(v262);
    v564 = v567;
    v565 = v568;
    v566 = v569;
    sub_1E3C3DE00(v263);
    v558 = v561;
    v559 = v562;
    v560 = v563;
    v264 = sub_1E3C3DE00(v263);
    LOBYTE(v529) = v557;
    v272 = OUTLINED_FUNCTION_74_17(v264, v265, v266, v267, v268, v269, v270, v271, v359, v376, v393, v410, v427, v444, v555, *(&v555 + 1), v556, *(&v556 + 1), v529, v546, v550);
    sub_1E3C2FCB8(v272, v273);
    v282 = OUTLINED_FUNCTION_104_11(v274, v275, v276, v277, v278, v279, v280, v281, v360, v377, v394, v411, v428, v445, v462, v479, v496, v513, v530, v547, v550);
    memcpy(v282, v283, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_69();
    v284();
  }

  OUTLINED_FUNCTION_111();
  v285 += 237;
  v286 = *v285;
  (*v285)();
  OUTLINED_FUNCTION_30();
  v287 = OUTLINED_FUNCTION_15_8();
  v288(v287);

  (v286)(v289);
  LOBYTE(v551) = 0;
  *&v570 = 0;
  BYTE8(v570) = 0;
  v290 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_102();
  sub_1E3C3DE00(v290);
  OUTLINED_FUNCTION_101_0();
  sub_1E3C3DE00(v290);
  OUTLINED_FUNCTION_119_8();
  v291 = sub_1E3C3DE00(v290);
  LOBYTE(v410) = v444;
  v299 = OUTLINED_FUNCTION_74_17(v291, v292, v293, v294, v295, v296, v297, v298, v359, v376, v427, v410, v427, v444, v461, v478, v495, v512, v529, v546, 1);
  sub_1E3C2FCB8(v299, v300);
  v309 = OUTLINED_FUNCTION_104_11(v301, v302, v303, v304, v305, v306, v307, v308, v361, v378, v395, v412, v429, v446, v463, v480, v497, v514, v531, v548, v550);
  memcpy(v309, v310, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_38();
  v311();

  (v286)(v312);
  OUTLINED_FUNCTION_2_1();
  v313 = OUTLINED_FUNCTION_10_7();
  v314(v313);

  v316 = (v198)(v315);
  v317 = 17;
  if (v316 != 20)
  {
    sub_1E3D241D0(v316);
    OUTLINED_FUNCTION_79_18();
    if (v203 && v318 == 0xED000070756B636FLL)
    {

      v317 = 21;
    }

    else
    {
      v320 = sub_1E42079A4();

      if (v320)
      {
        v317 = 21;
      }

      else
      {
        v317 = 17;
      }
    }
  }

  (v286)(v316);
  LOBYTE(v570) = v317;
  LOBYTE(v567) = v317;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v561) = v564;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v555) = v558;
  v321 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v430) = v464;
  v329 = OUTLINED_FUNCTION_74_17(v321, v322, v323, v324, v325, v326, v327, v328, v362, v379, v396, v413, v430, v447, v464, v481, v498, v515, v532, v549, 17);
  sub_1E3C2FCB8(v329, v330);
  OUTLINED_FUNCTION_54_31();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33_54();
  v331();

  (v286)(v332);
  OUTLINED_FUNCTION_2_1();
  (*(v333 + 2008))(1);

  v335 = (v286)(v334);
  sub_1E3E60700();
  OUTLINED_FUNCTION_81_12();
  v336 = *(*v335 + 680);
  v337 = &qword_1F5D549D8;
  v336(&qword_1F5D549D8);

  [v86 isSUIEnabled];
  v286();
  sub_1E3952C88();
  v573 = v338;
  v574 = v339;
  v575 = v340;
  v576 = v341;
  v577 = 0;
  OUTLINED_FUNCTION_8();
  (*(v342 + 160))();

  OUTLINED_FUNCTION_9_2();
  (*(v343 + 1968))();
  v550 = 0;
  v551 = 0;
  v552 = 0;
  v553 = 0x401C000000000000;
  v554 = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v344 + 160))(&v550);
}

uint64_t sub_1E3D308B8()
{
  v2 = v0;
  OUTLINED_FUNCTION_8();
  v3 += 240;
  v4 = *v3;
  (*v3)();
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 512))(2);

  (v4)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 1808))(3);

  v9 = (v4)(v8);
  sub_1E3E60A14();
  OUTLINED_FUNCTION_7_16();
  v10 = *(*v9 + 872);
  v11 = v1;
  v10(v1);

  v13 = (v4)(v12);
  v14 = sub_1E418A524();
  v15 = OUTLINED_FUNCTION_105_0(v14);
  (*(*v13 + 440))(v15, 0);

  (v4)(v16);
  OUTLINED_FUNCTION_98_13();
  v39[0] = v17;
  v39[1] = v18;
  v39[2] = v19;
  v39[3] = v20;
  v40 = 0;
  (*(*v2 + 560))(v39);

  v22 = (v4)(v21);
  sub_1E3E6097C();
  OUTLINED_FUNCTION_7_16();
  v23 = *(*v22 + 1832);
  v24 = v1;
  v23(v1);

  (v4)(v25);
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  [v26 setShadowOffset_];
  [v26 setShadowBlurRadius_];
  sub_1E3755B54();
  v27 = sub_1E4206F24();
  [v26 setShadowColor_];

  OUTLINED_FUNCTION_13();
  (*(v28 + 608))(v26);

  (v4)(v29);
  v30.n128_f64[0] = OUTLINED_FUNCTION_84_0();
  v37[0] = j__OUTLINED_FUNCTION_7_78(v30);
  v37[1] = v31;
  v37[2] = v32;
  v37[3] = v33;
  v38 = 0;
  (*(*v2 + 1856))(v37);

  (v4)(v34);
  OUTLINED_FUNCTION_2_1();
  (*(v35 + 2000))(0);
}

void OUTLINED_FUNCTION_32_61(double a1, double a2, double a3, double a4)
{
  *&STACK[0x310] = a1;
  *&STACK[0x318] = a2;
  *&STACK[0x320] = a3;
  *&STACK[0x328] = a4;
  LOBYTE(STACK[0x330]) = 0;
}

void *OUTLINED_FUNCTION_48_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x310], 0xE9uLL);
}

void OUTLINED_FUNCTION_68_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 - 152);
  *(v4 - 176) = *(v4 - 160);
  *(v4 - 168) = v6;

  sub_1E3C2FCB8(va, &STACK[0x220]);
}

uint64_t OUTLINED_FUNCTION_86_10()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_88_14(double a1, double a2, double a3, double a4)
{
  *(v4 - 248) = a1;
  *(v4 - 240) = a2;
  *(v4 - 232) = a3;
  *(v4 - 224) = a4;
  *(v4 - 216) = 0;
}

uint64_t OUTLINED_FUNCTION_94_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  *(v45 - 144) = a43;
  *(v45 - 136) = a44;

  return sub_1E3C3DE00(v44);
}

uint64_t OUTLINED_FUNCTION_95_16()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_109_7(double a1, double a2, double a3, double a4)
{
  *&STACK[0x200] = a2;
  *&STACK[0x208] = a3;
  *&STACK[0x210] = a4;
  LOBYTE(STACK[0x218]) = 0;

  sub_1E3952C88();
}

uint64_t OUTLINED_FUNCTION_110_10()
{

  return sub_1E3C2FC98();
}

void OUTLINED_FUNCTION_111_8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_112_11()
{

  return sub_1E4206F24();
}

void OUTLINED_FUNCTION_113_10(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

id OUTLINED_FUNCTION_114_8(void *a1)
{

  return sub_1E3E5F2F8(v1, a1);
}

void OUTLINED_FUNCTION_127_8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_128_8()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_130_12(__n128 a1)
{
  a1.n128_u64[0] = 0.5;

  return j__OUTLINED_FUNCTION_7_78(a1);
}

void OUTLINED_FUNCTION_131_11()
{

  sub_1E3952C88();
}

void OUTLINED_FUNCTION_132_9()
{

  sub_1E3952C88();
}

void OUTLINED_FUNCTION_133_6()
{

  sub_1E3952C88();
}

id sub_1E3D310A4()
{
  v0 = sub_1E3D310E8();
  v1 = [v0 imageProxy];

  return v1;
}

id sub_1E3D310E8()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
    [v4 setVuiContentMode_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E3D31190(void *a1)
{
  v2 = sub_1E3D310E8();
  [v2 setImageProxy_];
}

id sub_1E3D311E8()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = [objc_opt_self() blackColor];
    v7 = [v6 colorWithAlphaComponent_];

    [v5 setBackgroundColor_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1E3D31310()
{
  v1 = sub_1E3D31388();
  v2 = OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView_isDimmed;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2))
  {
    v3 = 1.0;
  }

  [v1 setAlpha_];
}

id sub_1E3D31388()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() blackColor];
    v6 = [v5 colorWithAlphaComponent_];

    [v4 setBackgroundColor_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setUserInteractionEnabled_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3D31490(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView_isDimmed;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1E3D31310();
}

char *sub_1E3D31514()
{
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView] = 0;
  v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView_isDimmed] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView_layout] = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;

  v3 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = sub_1E3D310E8();
  [v3 insertSubview:v4 atIndex:{0, v8.receiver, v8.super_class}];

  v5 = sub_1E3D311E8();
  [v3 insertSubview:v5 aboveSubview:*&v3[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView]];

  v6 = sub_1E3D31388();
  [v3 insertSubview:v6 aboveSubview:*&v3[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView]];

  [*&v3[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView] setAlpha_];

  return v3;
}

uint64_t sub_1E3D3165C()
{
  OUTLINED_FUNCTION_12_1();
  swift_getObjectType();

  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView_isDimmed) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView) = 0;
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3D31700()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = sub_1E3D310E8();
  [v0 bounds];
  [v1 setFrame_];

  v2 = sub_1E3D311E8();
  [v0 bounds];
  [v2 setFrame_];

  v3 = sub_1E3D31388();
  [v0 bounds];
  [v3 setFrame_];
}

uint64_t *sub_1E3D31904()
{
  type metadata accessor for ViewLayout();
  v0[13] = sub_1E3C2F968();
  v0[14] = sub_1E3C2F968();
  type metadata accessor for ImageLayout();
  v0[15] = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  v0[16] = sub_1E383BCC0();
  v0[17] = sub_1E383BCC0();
  v0[18] = sub_1E383BCC0();
  v0[19] = 0x4000000000000000;
  v1 = sub_1E3C2F9A0();

  *&__dst[0] = sub_1E3952C28(2.0);
  *(&__dst[0] + 1) = v2;
  *&__dst[1] = v3;
  *(&__dst[1] + 1) = v4;
  LOBYTE(__dst[2]) = 0;
  type metadata accessor for UIEdgeInsets();
  v6 = v5;
  sub_1E3C2FC98();
  *v270 = *v245;
  *v271 = *&v245[16];
  LOBYTE(v272) = v245[32];
  sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_4_175();
  sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_37_0();
  sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_1_200();
  v7 = sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_9_117(v7, v8, v9, v10, v11, v12, v13, v14, v179, v190, v201, v212, v223, v234, *v245, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252);
  sub_1E3C2FCB8(__dst, __src);
  OUTLINED_FUNCTION_8_126(v15, v16, v17, v18, v19, v20, v21, v22, v180, v191, v202, v213, v224, v235, *v245, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v31 = OUTLINED_FUNCTION_5_57(v23, v24, v25, v26, v27, v28, v29, v30, v181, v192, v203, v214, v225, v236, *v245, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, __dst[0]);
  v32(v31, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1E42A73A0;
  result = v1[16];
  *(v33 + 32) = result;
  v35 = v1[17];
  *(v33 + 40) = v35;
  v36 = v1[18];
  *(v33 + 48) = v36;
  if ((v33 & 0xC000000000000001) == 0)
  {
    v37 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      if (v37 > 2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_4:
  v226 = v6;
  v237 = v1;
  v182 = result;

  v204 = v35;

  v215 = v36;

  v38 = 0;
  v39 = MEMORY[0x1E69E7DE0];
  do
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1E6911E60](v38, v33);
    }

    else
    {
      v40 = *(v33 + 8 * v38 + 32);
    }

    ++v38;
    (*(*v40 + 2056))(1, 0);
    OUTLINED_FUNCTION_36();
    (*(v41 + 1984))(0);
    OUTLINED_FUNCTION_36();
    (*(v42 + 2008))(1);

    v43 = *sub_1E3E5FD88();
    v44 = *(*v40 + 680);
    v45 = v43;
    v44(v43);

    LOBYTE(__dst[0]) = 3;
    v245[0] = 6;
    sub_1E3C2FC98();
    LOBYTE(v268) = v270[0];
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v264) = v266;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v260) = v262;
    v46 = sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v252) = v258;
    v54 = OUTLINED_FUNCTION_3_169(v46, v47, v48, v49, v50, v51, v52, v53, v182, v193, v204, v215, v226, v237, *v245, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, __dst[0]);
    sub_1E3C2FCB8(v54, v55);
    LODWORD(__dst[0]) = __src[0];
    WORD2(__dst[0]) = WORD2(__src[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v57 = *(v56 + 1600);
    v66 = OUTLINED_FUNCTION_5_57(v58, v59, v60, v61, v62, v63, v64, v65, v183, v194, v205, v216, v227, v238, *v245, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, __dst[0]);
    v57(v66, 48);
    OUTLINED_FUNCTION_36();
    (*(v67 + 1792))(10);
    OUTLINED_FUNCTION_36();
    (*(v68 + 1720))(7);
    *&__dst[0] = 0;
    BYTE8(__dst[0]) = 1;
    v245[8] = 0;
    sub_1E3C2FC98();
    v268 = v270[0];
    LOBYTE(v269) = v270[1];
    sub_1E3C3DE00(v39);
    v264 = v266;
    LOBYTE(v265) = v267;
    sub_1E3C3DE00(v39);
    v260 = v262;
    LOBYTE(v261) = v263;
    v69 = sub_1E3C3DE00(v39);
    BYTE8(v252) = v259;
    v77 = OUTLINED_FUNCTION_3_169(v69, v70, v71, v72, v73, v74, v75, v76, v184, v195, v206, v217, v228, v239, 0x4072C00000000000, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v258, *(&v252 + 1), v253, v254, v255, v256, __dst[0]);
    sub_1E3C2FCB8(v77, v78);
    memcpy(__dst, __src, 0x59uLL);
    v79 = OUTLINED_FUNCTION_18();
    v87 = OUTLINED_FUNCTION_5_57(v79, v80, v81, v82, v83, v84, v85, v86, v185, v196, v207, v218, v229, v240, *v245, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, __dst[0]);
    v57(v87, 4);
  }

  while (v38 != 3);
  swift_setDeallocating();
  sub_1E377D458();
  if (TVAppFeature.isEnabled.getter(20))
  {
    (*(*v182 + 1936))(2);
  }

  *v270 = xmmword_1E42CC340;
  *v271 = 0u;
  LOBYTE(v272) = 0;
  v88 = v226;
  if (TVAppFeature.isEnabled.getter(20))
  {
    sub_1E3952C78();
    *(&v90 + 1) = v89;
    *(&v92 + 1) = v91;
  }

  else
  {
    v90 = xmmword_1E42AE100;
    v92 = 0uLL;
  }

  __dst[0] = v90;
  __dst[1] = v92;
  LOBYTE(__dst[2]) = 0;
  sub_1E3952C78();
  *v245 = v93;
  *&v245[8] = v94;
  *&v245[16] = v95;
  *&v245[24] = v96;
  v245[32] = 0;
  sub_1E3C3DE00(v226);
  OUTLINED_FUNCTION_4_175();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_37_0();
  sub_1E3C3DE00(v226);
  OUTLINED_FUNCTION_1_200();
  sub_1E3C2FCB8(&v266, __src);
  OUTLINED_FUNCTION_8_126(v97, v98, v99, v100, v101, v102, v103, v104, 0, 0x4044000000000000, v204, v215, v226, v237, *v245, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v113 = OUTLINED_FUNCTION_5_57(v105, v106, v107, v108, v109, v110, v111, v112, v186, v197, v208, v219, v230, v241, *v245, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, __dst[0]);
  v114(v113, 1);
  v245[32] = 0;
  sub_1E3952C78();
  OUTLINED_FUNCTION_7_161(v115, v116, v117, v118);
  sub_1E3952C78();
  OUTLINED_FUNCTION_6_146(v119, v120, v121, v122);
  sub_1E3C3DE00(v88);
  OUTLINED_FUNCTION_37_0();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_1_200();
  v123 = sub_1E3C3DE00(v88);
  OUTLINED_FUNCTION_9_117(v123, v124, v125, v126, v127, v128, v129, v130, v187, v198, v209, v220, v231, v242, v187, v198, 0, 0, *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252);
  sub_1E3C2FCB8(&v262, __dst);
  memcpy(v245, __dst, 0xE9uLL);
  v131 = OUTLINED_FUNCTION_18();
  (*(*v221 + 1600))(v245, 1, v131 & 1, v88);
  v132 = *sub_1E3E5FDEC();
  v133 = *(*v221 + 680);
  v134 = v132;
  v133(v132);
  v135 = v243;
  OUTLINED_FUNCTION_36();
  (*(v136 + 1808))(1);
  *&v252 = 0x404E000000000000;
  BYTE8(v252) = 0;
  v137 = TVAppFeature.isEnabled.getter(20);
  v138 = 0x4053000000000000;
  if ((v137 & 1) == 0)
  {
    v138 = 0x404E000000000000;
  }

  v246 = v138;
  LOBYTE(v247) = 0;
  v139 = TVAppFeature.isEnabled.getter(20);
  v140 = 0x4049000000000000;
  if ((v139 & 1) == 0)
  {
    v140 = 0x4040000000000000;
  }

  __src[30] = v140;
  v274 = 0;
  v141 = TVAppFeature.isEnabled.getter(20);
  v142 = 0x404B000000000000;
  if (v141)
  {
    v142 = 0x404F000000000000;
  }

  __src[0] = v142;
  LOBYTE(__src[1]) = 0;
  v143 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v270[0] = *&__dst[0];
  LOBYTE(v270[1]) = BYTE8(__dst[0]);
  sub_1E3C3DE00(v143);
  v266 = v268;
  LOBYTE(v267) = v269;
  sub_1E3C2FCB8(&v252, v245);
  memcpy(__src, v245, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v145 = *(v144 + 1600);
  (v145)(__src, 2, v146 & 1, v143);
  v270[0] = sub_1E3952CA4();
  v270[1] = v147;
  v271[0] = v148;
  v271[1] = v149;
  LOBYTE(v272) = 0;
  TVAppFeature.isEnabled.getter(20);
  v150 = sub_1E3952CA4();
  OUTLINED_FUNCTION_7_161(v150, v151, v152, v153);
  TVAppFeature.isEnabled.getter(20);
  v154 = sub_1E3952CA4();
  OUTLINED_FUNCTION_6_146(v154, v155, v156, v157);
  TVAppFeature.isEnabled.getter(20);
  *&__dst[0] = sub_1E3952CA4();
  *(&__dst[0] + 1) = v158;
  *&__dst[1] = v159;
  *(&__dst[1] + 1) = v160;
  LOBYTE(__dst[2]) = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_37_0();
  sub_1E3C3DE00(v88);
  OUTLINED_FUNCTION_1_200();
  sub_1E3C2FCB8(v270, __src);
  OUTLINED_FUNCTION_8_126(v161, v162, v163, v164, v165, v166, v167, v168, v188, v199, v210, v221, v232, v243, *v245, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, *&__dst[0]);
  v169 = OUTLINED_FUNCTION_18();
  v177 = OUTLINED_FUNCTION_5_57(v169, v170, v171, v172, v173, v174, v175, v176, v189, v200, v211, v222, v233, v244, *v245, *&v245[8], *&v245[16], *&v245[24], *&v245[32], *&v245[40], *&v245[48], *&v245[56], *&v245[64], *&v245[72], *&v245[80], *&v245[88], *&v245[96], *&v245[104], *&v245[112], *&v245[120], *&v245[128], *&v245[136], *&v245[144], *&v245[152], *&v245[160], *&v245[168], *&v245[176], *&v245[184], *&v245[192], *&v245[200], *&v245[208], *&v245[216], *&v245[224], *&v245[232], v246, v247, v248, v249, v250, v251, v252, *(&v252 + 1), v253, v254, v255, v256, __dst[0]);
  v145(v177, 0);
  sub_1E3C37CBC(v135[13], 239);
  sub_1E3C37CBC(v135[14], 240);
  sub_1E3C37CBC(v135[15], 39);
  v178 = v135[16];
  sub_1E3C37CBC(v178, 23);
  sub_1E3C37CBC(v178, 25);
  sub_1E3C37CBC(v135[17], 237);

  return v135;
}

uint64_t sub_1E3D323D8()
{
  v0 = sub_1E3C5C6B8();

  return MEMORY[0x1EEE6BDC0](v0, 160, 7);
}

id LanguageAwareString.attributedString.getter()
{
  v1 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString;
  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  }

  else
  {
    v4 = sub_1E3D325DC(*(v0 + OBJC_IVAR___AMPLanguageAwareString_baseAttributedString), *(v0 + OBJC_IVAR___AMPLanguageAwareString_paragraphs), *(v0 + OBJC_IVAR___AMPLanguageAwareString_string), *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8));
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1E3D32554@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

id sub_1E3D325DC(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    if (sub_1E32AE9B0(a2) != 1 || !sub_1E32AE9B0(a2))
    {
      goto LABEL_13;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_37;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      for (i = *(a2 + 32); ; i = MEMORY[0x1E6911E60](0, a2))
      {
        v4 = i;
        [i directionalRangeValue];

        v10 = MEMORY[0x1E6910A60](a3, a4);
        if (!v26 && v27 == v10)
        {
          break;
        }

LABEL_13:
        sub_1E3280A90(0, &unk_1EE23AFE0);
        OUTLINED_FUNCTION_112();

        a4 = v4;
        v25 = sub_1E3763FC8();
        a3 = sub_1E32AE9B0(a2);
        v19 = 0;
        v20 = *MEMORY[0x1E69DB688];
        while (1)
        {
          if (a3 == v19)
          {
            v18 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

            return v18;
          }

          if ((a2 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1E6911E60](v19, a2);
          }

          else
          {
            if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v21 = *(a2 + 8 * v19 + 32);
          }

          v22 = v21;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          a4 = a2;
          [v21 directionalRangeValue];
          if (v28 == -1)
          {
            if (qword_1EE28AF78 != -1)
            {
              OUTLINED_FUNCTION_4_176();
              swift_once();
            }

            v23 = &qword_1EE2AA880;
          }

          else if (v28 == 1)
          {
            if (qword_1EE28AF80 != -1)
            {
              OUTLINED_FUNCTION_5_152();
              swift_once();
            }

            v23 = &qword_1ECF715F0;
          }

          else
          {
            if (v28)
            {
              goto LABEL_39;
            }

            if (_MergedGlobals_25 != -1)
            {
              OUTLINED_FUNCTION_3_170();
              swift_once();
            }

            v23 = &qword_1EE2AA8C8;
          }

          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          [v25 addAttribute:v20 value:*v23 range:{v26, v27}];

          ++v19;
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        ;
      }

      v11 = sub_1E3D3648C(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v13 = *MEMORY[0x1E69DB688];
      *(inited + 32) = *MEMORY[0x1E69DB688];
      *(inited + 64) = sub_1E3280A90(0, &qword_1EE23B298);
      *(inited + 40) = v11;
      type metadata accessor for Key(0);
      OUTLINED_FUNCTION_0_183(&qword_1EE23B100);

      v14 = v13;
      v15 = v11;
      OUTLINED_FUNCTION_75();
      v16 = sub_1E4205CB4();
      v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v18 = sub_1E3D36664(a3, a4, v16);

      return v18;
    }

    else
    {
      __break(1u);
LABEL_39:
      sub_1E42074B4();

      OUTLINED_FUNCTION_29_68();
      v24 = sub_1E4207944();
      MEMORY[0x1E69109E0](v24);

      result = OUTLINED_FUNCTION_34_58();
      __break(1u);
    }
  }

  return result;
}

uint64_t LanguageAwareString.string.getter()
{
  v1 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);

  return v1;
}

uint64_t sub_1E3D32B70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  OUTLINED_FUNCTION_33_55();
  v8 = OUTLINED_FUNCTION_124();
  return LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v8, v9, v5, a4, a5);
}

id sub_1E3D32CB8(uint64_t *a1, void (*a2)(void, unint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    v8 = sub_1E32822E0();
    a2(MEMORY[0x1E69E6158], v8);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v10 = OUTLINED_FUNCTION_19_94();
    v11 = *(v2 + v3);
    *(v7 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

uint64_t sub_1E3D32E00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

id LanguageAwareString.newlinesCollapsedToSpace.getter()
{
  v1 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  }

  else
  {
    v4 = v0;
    sub_1E32822E0();
    sub_1E42071F4();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v5 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v6 = OUTLINED_FUNCTION_19_94();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1E3D33060@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

id LanguageAwareString.trimmed.getter()
{
  v1 = v0;
  v2 = sub_1E41FDEC4();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed;
  v4 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  }

  else
  {

    sub_1E41FDE94();
    sub_1E32822E0();
    v6 = sub_1E42071E4();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_74();
    v10(v9);

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v11 = static LanguageAwareString.alwaysGenerateAttributedString;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v12 = static LanguageAwareString.keepStatisticsOnLanguageComponents;
    v13 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v14 = LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v6, v8, 0, v11, v12);
    v15 = *(v1 + v3);
    *(v1 + v3) = v14;
    v5 = v14;

    v4 = 0;
  }

  v16 = v4;
  return v5;
}

uint64_t sub_1E3D33348@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

id sub_1E3D33454(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1E3280A90(0, &unk_1EE23AE30);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062A4();
  OUTLINED_FUNCTION_50();

  return a1;
}

uint64_t LanguageAwareString.fullRange.getter()
{
  v1 = v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange + 16) != 1)
  {
    return *v1;
  }

  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))();
  result = 0;
  *v1 = 0;
  *(v1 + 1) = v2;
  v1[16] = 0;
  return result;
}

uint64_t LanguageAwareString.fullRange.setter(uint64_t result, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = 0;
  return result;
}

uint64_t sub_1E3D335F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t LanguageAwareString.isEmpty.getter()
{
  LODWORD(v1) = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty);
  if (v1 == 2)
  {
    v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
    if ((v2 & 0x2000000000000000) != 0)
    {
      v1 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v1 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string) & 0xFFFFFFFFFFFFLL;
    }

    LOBYTE(v1) = v1 == 0;
    *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty) = v1;
  }

  return v1 & 1;
}

uint64_t sub_1E3D33744@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3D33860@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3D33964@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

unint64_t sub_1E3D339F0(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return sub_1E3D36714(0xFuLL, v3 | (v2 << 16), a1, a2);
}

uint64_t sub_1E3D33A84(void *a1, uint64_t (*a2)(void, void))
{
  v3 = (v2 + *a1);
  if (v3[8] != 1)
  {
    return *v3;
  }

  result = a2(*(v2 + OBJC_IVAR___AMPLanguageAwareString_string), *(v2 + OBJC_IVAR___AMPLanguageAwareString_string + 8));
  *v3 = result;
  v3[8] = 0;
  return result;
}

uint64_t sub_1E3D33B10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))();
  *a2 = result;
  return result;
}

uint64_t static LanguageAwareString.alwaysGenerateAttributedString.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return static LanguageAwareString.alwaysGenerateAttributedString;
}

uint64_t static LanguageAwareString.alwaysGenerateAttributedString.setter(char a1)
{
  result = OUTLINED_FUNCTION_17_103();
  static LanguageAwareString.alwaysGenerateAttributedString = a1;
  return result;
}

uint64_t static LanguageAwareString.keepStatisticsOnLanguageComponents.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return static LanguageAwareString.keepStatisticsOnLanguageComponents;
}

uint64_t static LanguageAwareString.keepStatisticsOnLanguageComponents.setter(char a1)
{
  result = OUTLINED_FUNCTION_17_103();
  static LanguageAwareString.keepStatisticsOnLanguageComponents = a1;
  return result;
}

uint64_t static LanguageAwareString.delegate.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t static LanguageAwareString.delegate.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_17_103();
  static LanguageAwareString.delegate = a1;
  return swift_unknownObjectRelease();
}

id sub_1E3D33EEC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = static LanguageAwareString.alwaysGenerateAttributedString;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v1 = static LanguageAwareString.keepStatisticsOnLanguageComponents;
  v2 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  result = LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(0, 0xE000000000000000, 0, v0, v1);
  static LanguageAwareString.empty = result;
  return result;
}

uint64_t *LanguageAwareString.empty.unsafeMutableAddressor()
{
  if (qword_1ECF607C0 != -1)
  {
    OUTLINED_FUNCTION_15_111();
  }

  return &static LanguageAwareString.empty;
}

id static LanguageAwareString.empty.getter()
{
  if (qword_1ECF607C0 != -1)
  {
    OUTLINED_FUNCTION_15_111();
  }

  v1 = static LanguageAwareString.empty;

  return v1;
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(OUTLINED_FUNCTION_112());
  v5 = OUTLINED_FUNCTION_74();
  return LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v5, v6, a3);
}

id LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v4[v8] = v9;
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_20_78(&v4[*(v10 + 96)]);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = static LanguageAwareString.delegate;
  if (static LanguageAwareString.delegate && ([static LanguageAwareString.delegate respondsToSelector_] & 1) != 0)
  {
    v12 = [v11 preprocessForLanguageAwarenessAttributedString_];
  }

  else
  {
    v12 = a1;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v15 = v14;
  sub_1E3CA6DF4(v14, 0, 0, a2, a3 & 1, v33);

  if (v37)
  {
    v16._rawValue = v34;

    NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(v17, v16);
  }

  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = v15;
  v20 = [v18 initWithAttributedString_];
  *&v4[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v20;
  LOBYTE(v18) = v36;
  v21 = v20;
  if (v18)
  {
    NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()();
    v22 = [v19 string];

    countAndFlagsBits = sub_1E4205F14();
    object = v24;
  }

  else
  {

    v26 = NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
    countAndFlagsBits = v26._countAndFlagsBits;
    object = v26._object;
  }

  v27 = &v4[OBJC_IVAR___AMPLanguageAwareString_string];
  *v27 = countAndFlagsBits;
  v27[1] = object;
  v28 = v35;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v34;
  v29 = v33[1];
  *&v4[OBJC_IVAR___AMPLanguageAwareString_numbers] = v33[0];
  *&v4[OBJC_IVAR___AMPLanguageAwareString_words] = v29;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v28;

  v32.receiver = v4;
  v32.super_class = type metadata accessor for LanguageAwareString();
  v30 = objc_msgSendSuper2(&v32, sel_init);

  return v30;
}

id LanguageAwareString.__allocating_init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  OUTLINED_FUNCTION_33_55();
  v8 = OUTLINED_FUNCTION_124();
  return LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v8, v9, v5, a4, a5);
}

id LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  swift_getObjectType();
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v6[v11] = v12;
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_20_78(&v6[*(v13 + 96)]);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v14 = static LanguageAwareString.delegate;
  if (static LanguageAwareString.delegate)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_123_1();
    v15 = sub_1E4205ED4();

    v16 = [v14 preprocessForLanguageAwarenessString_];

    a1 = sub_1E4205F14();
    swift_unknownObjectRelease();
  }

  v17 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v18 = OUTLINED_FUNCTION_123_1();
  v20 = sub_1E3D36664(v18, v19, a3);
  v21 = v20;
  sub_1E3CA6DF4(v20, 0, 0, a4, a5 & 1, v36);

  if (v40)
  {
    v22._rawValue = v37;

    NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(v23, v22);
  }

  v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v25 = v21;
  v26 = [v24 initWithAttributedString_];
  *&v6[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v26;
  LOBYTE(v24) = v39;
  v27 = v26;
  if (v24)
  {
    v28 = v25;
    NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()();
    v29 = [v25 string];

    sub_1E4205F14();
    OUTLINED_FUNCTION_23_70();
  }

  else
  {

    v28 = v27;
    NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
    OUTLINED_FUNCTION_23_70();
  }

  v30 = &v6[OBJC_IVAR___AMPLanguageAwareString_string];
  *v30 = v28;
  v30[1] = a1;
  v31 = v38;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v37;
  v32 = v36[1];
  *&v6[OBJC_IVAR___AMPLanguageAwareString_numbers] = v36[0];
  *&v6[OBJC_IVAR___AMPLanguageAwareString_words] = v32;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v31;

  v35.receiver = v6;
  v35.super_class = type metadata accessor for LanguageAwareString();
  v33 = objc_msgSendSuper2(&v35, sel_init);

  return v33;
}

uint64_t LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = OUTLINED_FUNCTION_16_5();
  return LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v9, a2, a3, a4);
}

uint64_t LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a2)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = a3;
    v10 = ObjectType;
    (*(ObjectType + 536))(a1, a2, v9, a4 & 1, static LanguageAwareString.keepStatisticsOnLanguageComponents);
    OUTLINED_FUNCTION_50();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    OUTLINED_FUNCTION_19_3();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

id LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, unint64_t a2, void *a3, char a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v6[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v6[v13] = v14;
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_10_112();
  OUTLINED_FUNCTION_20_78(&v6[*(v15 + 96)]);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v16 = static LanguageAwareString.delegate;
  if (static LanguageAwareString.delegate)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_124();
    v17 = sub_1E4205ED4();

    v18 = [v16 preprocessForLanguageAwarenessString_];

    a1 = sub_1E4205F14();
    a2 = v19;
    swift_unknownObjectRelease();
  }

  if ((a4 & 1) != 0 || a3)
  {
    sub_1E3280A90(0, &unk_1EE23AFE0);
    OUTLINED_FUNCTION_16_5();

    OUTLINED_FUNCTION_124();
    v20 = sub_1E3763FC8();
    v23 = v20;
    v21 = 0;
    v22 = 0;
  }

  else
  {

    v20 = 0;
    v21 = a1;
    v22 = a2;
  }

  v24 = v20;
  v25 = v21;
  v26 = ObjectType;
  sub_1E3CA6DF4(v20, v25, v22, a3, a5 & 1, &v62);

  v35._rawValue = v67;
  if (v20)
  {
    if (v67)
    {
      v36._rawValue = v64;

      NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(v37, v36);
    }

    else
    {
    }

    [v24 copy];

    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3280A90(0, &qword_1EE23B1B0);
    v27 = swift_dynamicCast();
    if (v27)
    {
      v41 = v53;
    }

    else
    {
      v41 = 0;
    }

    if (v66)
    {

      *&v6[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v41;
      v42 = v41;
      NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()();
      v43 = [v24 string];
      countAndFlagsBits = sub_1E4205F14();
      object = v44;

      v24 = v42;
      goto LABEL_25;
    }

    *&v6[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v41;
    if (v41)
    {
      v45 = v41;
LABEL_24:
      v46 = v45;

      v47 = NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
      countAndFlagsBits = v47._countAndFlagsBits;
      object = v47._object;

      goto LABEL_25;
    }

LABEL_23:
    v45 = OUTLINED_FUNCTION_35_49(v27, v28, v29, v30, v31, v32, v33, v34, v53, v54.receiver, v54.super_class, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    goto LABEL_24;
  }

  if (v67)
  {

    OUTLINED_FUNCTION_124();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_16_5();

    [ObjectType mutableCopy];

    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3280A90(0, &qword_1ECF31E90);
    OUTLINED_FUNCTION_36_49();
    v26 = v53;
    NSMutableString.convertLineSeparatorsIntoLineFeeds(at:)(v35);

    [v53 copy];
    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3280A90(0, &qword_1EE23AD58);
    OUTLINED_FUNCTION_36_49();
    sub_1E4205F14();
  }

  if ((v66 & 1) == 0)
  {
    *&v6[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = 0;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_35_49(v27, v28, v29, v30, v31, v32, v33, v34, v53, v54.receiver, v54.super_class, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  OUTLINED_FUNCTION_16_5();

  *&v6[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v26;
  v24 = v26;
  v38 = NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
  countAndFlagsBits = v38._countAndFlagsBits;
  object = v38._object;
LABEL_25:

  v48 = &v6[OBJC_IVAR___AMPLanguageAwareString_string];
  *v48 = countAndFlagsBits;
  v48[1] = object;
  v49 = v65;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v64;
  v50 = v63;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_numbers] = v62;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_words] = v50;
  *&v6[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v49;
  v55 = v67;
  sub_1E3D365FC(&v55);
  v54.receiver = v6;
  v54.super_class = type metadata accessor for LanguageAwareString();
  v51 = objc_msgSendSuper2(&v54, sel_init);

  return v51;
}

id sub_1E3D34E30(void *a1, unsigned int a2)
{
  v3 = v2;
  swift_getObjectType();
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  v6 = OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v3[v7] = v8;
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_20_78(&v3[*(v9 + 96)]);
  OUTLINED_FUNCTION_25();
  sub_1E3CA6DF4(v10, v11, v12, v13, a2, v14);
  rawValue = v26._rawValue;
  if (v28)
  {

    NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(v16, v26);
  }

  *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = a1;
  v17 = a1;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_string] = NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
  v18 = *&v3[v6];
  *&v3[v6] = a1;
  v19 = v17;

  *&v3[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = rawValue;
  v20 = v25;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_numbers] = v24;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_words] = v20;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v27;

  v23.receiver = v3;
  v23.super_class = type metadata accessor for LanguageAwareString();
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

id LanguageAwareString.__allocating_init(_:attributes:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(OUTLINED_FUNCTION_112());
  v5 = OUTLINED_FUNCTION_74();
  return LanguageAwareString.init(_:attributes:keepStatisticsOnLanguageComponents:)(v5, v6, a3);
}

id LanguageAwareString.init(_:attributes:keepStatisticsOnLanguageComponents:)(char *a1, uint64_t a2, char a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v3[v8] = v9;
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_13_120();
  OUTLINED_FUNCTION_20_78(&v3[*(v10 + 96)]);
  v12 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0xE8))();
  v13 = v12;
  if (a2)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
    OUTLINED_FUNCTION_146();
    v15 = sub_1E4205C44();

    v16 = [v13 fullRange];
    [v14 addAttributes:v15 range:{v16, v17}];

    v18 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  }

  else
  {
    v18 = v12;
  }

  *&v4[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v18;
  v19 = v18;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_string] = NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
  if (a3)
  {
    *&v4[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = *&a1[OBJC_IVAR___AMPLanguageAwareString_paragraphs];
    *&v4[OBJC_IVAR___AMPLanguageAwareString_numbers] = *&a1[OBJC_IVAR___AMPLanguageAwareString_numbers];

    v20 = OBJC_IVAR___AMPLanguageAwareString_words;
    v21 = *&a1[OBJC_IVAR___AMPLanguageAwareString_words];
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    *&v4[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = MEMORY[0x1E69E7CC0];
    *&v4[OBJC_IVAR___AMPLanguageAwareString_numbers] = v21;

    v20 = OBJC_IVAR___AMPLanguageAwareString_words;
  }

  *&v4[v20] = v21;
  v22 = *&a1[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections];
  *&v4[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v22;
  v26.receiver = v4;
  v26.super_class = type metadata accessor for LanguageAwareString();
  v23 = v22;
  v24 = objc_msgSendSuper2(&v26, sel_init);

  return v24;
}

char *LanguageAwareString.init(from:)()
{
  v2 = v0;
  OUTLINED_FUNCTION_50();
  swift_getObjectType();
  v3 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString;
  *&v0[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  v4 = OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage;
  *&v0[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  v5 = OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage;
  *&v0[OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage] = 0;
  v6 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase;
  *&v0[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  v40 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase;
  *&v0[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  v41 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  *&v0[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  v42 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed;
  *&v0[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  OUTLINED_FUNCTION_2_168();
  v0[v7] = v8;
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_9_118();
  OUTLINED_FUNCTION_20_78(&v0[*(v9 + 96)]);
  v44 = v0;
  __swift_project_boxed_opaque_existential_1(v0, *(v0 + 3));
  OUTLINED_FUNCTION_146();
  sub_1E4207BF4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    OUTLINED_FUNCTION_146();
    v11 = sub_1E42079C4();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v14 = static LanguageAwareString.delegate;
    if (static LanguageAwareString.delegate)
    {
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_123_1();
      v15 = sub_1E4205ED4();

      v16 = [v14 preprocessForLanguageAwarenessString_];

      v11 = sub_1E4205F14();
      v13 = v17;
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v43 = v11;
    if (static LanguageAwareString.alwaysGenerateAttributedString == 1)
    {
      sub_1E3280A90(0, &unk_1EE23AFE0);

      OUTLINED_FUNCTION_123_1();
      v18 = sub_1E3763FC8();
      v19 = v18;
      v20 = 0;
      v21 = 0;
    }

    else
    {

      v18 = 0;
      v20 = v11;
      v21 = v13;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v22 = static LanguageAwareString.keepStatisticsOnLanguageComponents;
    v23 = v18;
    sub_1E3CA6DF4(v18, v20, v21, 0, v22, v48);

    v24._rawValue = v52;
    if (v18)
    {
      v21 = v43;
      if (v52)
      {
        v25._rawValue = v49;

        NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(v26, v25);
      }

      else
      {
      }

      [v23 copy];

      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E3280A90(0, &qword_1EE23B1B0);
      if (swift_dynamicCast())
      {
        v30 = v45;
      }

      else
      {
        v30 = 0;
      }

      if (v51)
      {

        *&v2[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v30;
        v31 = v30;
        v32 = v23;
        NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()();
        v33 = [v23 string];
        sub_1E4205F14();
        OUTLINED_FUNCTION_23_70();

        v23 = v31;
LABEL_29:

        v37 = &v2[OBJC_IVAR___AMPLanguageAwareString_string];
        *v37 = v32;
        *(v37 + 1) = v21;
        v38 = v50;
        *&v2[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v49;
        v39 = v48[1];
        *&v2[OBJC_IVAR___AMPLanguageAwareString_numbers] = v48[0];
        *&v2[OBJC_IVAR___AMPLanguageAwareString_words] = v39;
        *&v2[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v38;
        v53 = v52;
        sub_1E3D365FC(&v53);
        v46.receiver = v2;
        v46.super_class = type metadata accessor for LanguageAwareString();
        v2 = objc_msgSendSuper2(&v46, sel_init);
        __swift_destroy_boxed_opaque_existential_1(v44);
        return v2;
      }

      *&v2[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v30;
      if (v30)
      {
        v34 = v30;
LABEL_28:
        v36 = v34;

        v32 = v36;
        NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
        OUTLINED_FUNCTION_23_70();

        goto LABEL_29;
      }
    }

    else
    {
      if (v52)
      {

        v27 = sub_1E4205ED4();

        [v27 mutableCopy];

        sub_1E4207264();
        swift_unknownObjectRelease();
        sub_1E3280A90(0, &qword_1ECF31E90);
        OUTLINED_FUNCTION_32_62();
        NSMutableString.convertLineSeparatorsIntoLineFeeds(at:)(v24);

        [v45 copy];
        sub_1E4207264();
        swift_unknownObjectRelease();
        sub_1E3280A90(0, &qword_1EE23AD58);
        OUTLINED_FUNCTION_32_62();
        v21 = v45;
        v28 = sub_1E4205F14();
        v13 = v29;
      }

      else
      {
        v28 = v43;
      }

      if (v51)
      {
        v35 = sub_1E3D325DC(0, v49, v28, v13);

        *&v2[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v35;
        v23 = v35;
        v32 = v23;
        NSAttributedString.convertedWritingDirectionToBidiControlCharacters()();
        OUTLINED_FUNCTION_23_70();
        goto LABEL_29;
      }

      *&v2[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = 0;
      v21 = v28;
    }

    v34 = sub_1E3D325DC(0, v49, v21, v13);
    goto LABEL_28;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);

  type metadata accessor for LanguageAwareString();
  OUTLINED_FUNCTION_19_3();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t LanguageAwareString.baseWritingDirection(forCharacterAt:)()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))();
  OUTLINED_FUNCTION_50();
  v1 = NSAttributedString.baseWritingDirection(forCharacterAt:)();
  v3 = v2;

  if (v3)
  {
    return -1;
  }

  else
  {
    return v1;
  }
}

uint64_t LanguageAwareString.thresholdBaseWritingDirection.getter()
{
  v1 = (v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection);
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  if (*(v2 + OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts) == 1)
  {
    result = *(v2 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough);
  }

  else
  {
    result = -1;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_1E3D35B24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x240))();
  *a2 = result;
  return result;
}

uint64_t LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:lineNumberReported:)(uint64_t a1, id a2, id a3, char a4, void *a5, double a6)
{
  v8 = *(v6 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  if (*(v8 + OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts))
  {
    v14 = *(v8 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
    v15 = *(v8 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
    if (v14)
    {
      if (!v15)
      {
        result = 0;
        if (a5)
        {
          *a5 = -2;
        }

        return result;
      }

LABEL_13:
      if ((a4 & 1) == 0 || (v17 = *(v6 + OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage)) == 0)
      {
        v34 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
        v35 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xE8);
        v18 = v34;
        v36 = v35();
        [v18 setAttributedString_];

        v22 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
        [v18 addTextLayoutManager_];

        v37 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
        [v37 setLineFragmentPadding_];
        [v37 setMaximumNumberOfLines_];
        [v37 setLineBreakMode_];
        v38 = v37;
        [v22 setTextContainer_];

        if (a4)
        {
          v23 = *(v6 + OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage);
          *(v6 + OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage) = v18;
          v18 = v18;
        }

        else
        {
          v23 = *(v6 + OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage);
          *(v6 + OBJC_IVAR___AMPLanguageAwareString_cachedTextContentStorage) = 0;
        }

        goto LABEL_39;
      }

      v18 = v17;
      v19 = [v18 textLayoutManagers];
      sub_1E3280A90(0, &qword_1ECF311E0);
      v20 = sub_1E42062B4();
      if (sub_1E32AE9B0(v20))
      {

        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1E6911E60](0, v20);
LABEL_19:
          v22 = v21;

          result = [v22 textContainer];
          if (result)
          {
            v23 = result;
            [result size];
            v25 = v24;
            v27 = v26;
            [v23 lineFragmentPadding];
            v29 = v28;
            v30 = [v23 maximumNumberOfLines];
            v31 = [v23 lineBreakMode];
            v32 = v31;
            if (v25 == a6 && v27 == 1.79769313e308)
            {
              if (v29 == 0.0)
              {
                if (v30 == a2)
                {
                  if (v31 == a3)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_37;
                }

LABEL_35:
                [v23 setMaximumNumberOfLines_];
LABEL_36:
                if (v32 == a3)
                {
LABEL_38:
                  v39 = [v18 documentRange];
                  [v22 invalidateLayoutForRange_];

LABEL_39:
                  v40 = [v18 writingDirectionOfLine:a1 usingTextLayoutManager:v22 lineNumberReported:a5];

                  return v40;
                }

LABEL_37:
                [v23 setLineBreakMode_];
                goto LABEL_38;
              }
            }

            else
            {
              [v23 setSize_];
              if (v29 == 0.0)
              {
                goto LABEL_34;
              }
            }

            [v23 setLineFragmentPadding_];
LABEL_34:
            if (v30 == a2)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_44:
          __break(1u);
          return result;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v21 = *(v20 + 32);
          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_44;
    }

    if (!v15)
    {
      goto LABEL_13;
    }

    if (a5)
    {
      *a5 = -2;
    }

    return 1;
  }

  else
  {
    if (a5)
    {
      *a5 = -2;
    }

    return -1;
  }
}

id LanguageAwareString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguageAwareString.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3D36330@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 560))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E3D3638C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v5 setAlignment_];
  [v5 setBaseWritingDirection_];
  [v5 setLineBreakMode_];
  [v5 copy];
  sub_1E4207264();
  swift_unknownObjectRelease();

  sub_1E3280A90(0, &qword_1EE23B298);
  result = swift_dynamicCast();
  *a3 = v7;
  return result;
}

id sub_1E3D3648C(uint64_t a1)
{
  if (a1 == -1)
  {
    if (qword_1EE28AF78 != -1)
    {
      OUTLINED_FUNCTION_4_176();
      swift_once();
    }

    v1 = &qword_1EE2AA880;
  }

  else if (a1 == 1)
  {
    if (qword_1EE28AF80 != -1)
    {
      OUTLINED_FUNCTION_5_152();
      swift_once();
    }

    v1 = &qword_1ECF715F0;
  }

  else
  {
    if (a1)
    {
      sub_1E42074B4();

      OUTLINED_FUNCTION_29_68();
      v4 = sub_1E4207944();
      MEMORY[0x1E69109E0](v4);

      result = OUTLINED_FUNCTION_34_58();
      __break(1u);
      return result;
    }

    if (_MergedGlobals_25 != -1)
    {
      OUTLINED_FUNCTION_3_170();
      swift_once();
    }

    v1 = &qword_1EE2AA8C8;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3D365FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E3D36664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4205ED4();

  if (a3)
  {
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
    v6 = sub_1E4205C44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

unint64_t sub_1E3D36714(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_1E3D36920(a1, a3, a4);
  result = sub_1E3D36920(a2, a3, a4);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1E4205FE4();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_1E4207524();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1E4205FF4();
        v7 = result;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_1E4207524();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_38;
  }

  return 0;
}

unint64_t sub_1E3D36920(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1E3D369C0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1E39A5410(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1E3D369C0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1E3780B3C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_62()
{

  return swift_dynamicCast();
}

uint64_t sub_1E3D36A6C()
{
  v1 = v0;
  v2 = sub_1E3886250();
  v3 = TVAppFeature.isEnabled.getter(10);
  if (v2)
  {
    if ((v3 & 1) != 0 && sub_1E3CCE24C(*(v1 + 98)))
    {
      OUTLINED_FUNCTION_5_0();
      v4 = *(v1 + 120);
      OUTLINED_FUNCTION_3_0();
      *(v1 + 104) = v4;
    }

    OUTLINED_FUNCTION_4_55();
    if (OUTLINED_FUNCTION_20_9())
    {
      swift_endAccess();
      OUTLINED_FUNCTION_8();
      (*(v6 + 312))(0x405E000000000000, 0);
    }

    else
    {
      swift_endAccess();
    }

    OUTLINED_FUNCTION_4_55();
    OUTLINED_FUNCTION_20_9();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C740);
    v9 = sub_1E3D39A68;
  }

  else
  {
    if ((v3 & 1) != 0 && sub_1E3CCE24C(*(v1 + 98)))
    {
      OUTLINED_FUNCTION_5_0();
      v7 = *(v1 + 112);
      OUTLINED_FUNCTION_14_0();
      *(v1 + 104) = v7;
    }

    OUTLINED_FUNCTION_4_55();
    if (OUTLINED_FUNCTION_20_9())
    {
      swift_endAccess();
      OUTLINED_FUNCTION_8();
      (*(v8 + 312))(0x4064000000000000, 0);
    }

    else
    {
      swift_endAccess();
    }

    OUTLINED_FUNCTION_4_55();
    OUTLINED_FUNCTION_20_9();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C740);
    v9 = sub_1E3D39BFC;
  }

  sub_1E4148DE0(v9);
}

uint64_t sub_1E3D36CC8(char a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 99) = 2;
  *(v1 + 104) = v2;
  *(v1 + 112) = v2;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 98) = a1;
  v3 = sub_1E3C2F9A0();
  v4 = *(v3 + 98);

  switch(v4)
  {
    case 4:
    case 5:
    case 9:
    case 10:
      sub_1E3D38C30();
      break;
    case 6:
      v487 = type metadata accessor for ViewGradientLayout();
      v130 = sub_1E40C3088();
      OUTLINED_FUNCTION_9_119();
      OUTLINED_FUNCTION_25_73();
      v132 = v131;
      sub_1E3C3DE00(v131);
      OUTLINED_FUNCTION_2_169(v133, v134, v135, v136, v137, v138, v139, v140, *&v305, *&v330, *&v355, *&v380, *&v404, *&v428, *&v452, *&v487, v503, v526, *&v550, *&v575, *&v600, *&v622, *&v635, *&v648, *&v661, *&v674, *&v687, *&v700, *&v713, *&v726, *&v739, *&v752, *&v765, *&v778, *&v791, *&v804, *&v817, *&v830, *&v843, *&v855, *&v868, *&v881, *&v894, *&v906, *&v917, *&v928, *&v939, *&v949, *&v960, *&v971, *&v982, *&v992, *&v1001, *&v1010, *&v1019, *&v1026, *&v1031, *&v1036, v1041);
      sub_1E3C3DE00(v132);
      OUTLINED_FUNCTION_1_201(v141, v142, v143, v144, v145, v146, v147, v148, v315, v340, v365, v389, v414, v437, v462, v488, v511, v535, v560, v585, v608, v626, v639, v652, v665, v678, v691, v704, v717, v730, v743, v756, v769, v782, v795, v808, v821, v834, v847, v859, v872, v885, v897, v910, v921, v932, v943, v953, v964, v975, v985);
      v149 = sub_1E3C3DE00(v132);
      OUTLINED_FUNCTION_6_148(v149, v150, v151, v152, v153, v154, v155, v156, v316, v341, v366, v390, v415, v438, v463, v489, v512, v536, v561, v586, v609, v627, v640, v653, v666, v679, v692, v705, v718, v731, v744, v757, v770, v783, v796, v809, v822, v835, v848, v860, v873, v886, v898);
      v165 = OUTLINED_FUNCTION_5_153(v157, v158, v159, v160, v161, v162, v163, v164, v317, v342, v367, v391, v416, v439, v464, v490, v513, v537, v562, v587, v610, v628, v641, v654, v667, v680, v693, v706, v719, v732, v745, v758, v771, v784, v797, v810, v823, v836, v849, v861, v874, v887, v899, v911, v922, v933, v944, v954, v965, v976, v986, v996, v1005, v1014, v1023);
      sub_1E3C2FCB8(v165, v166);
      OUTLINED_FUNCTION_26_77(v167, v168, v169, v170, v171, v172, v173, v174, v318, v343, v368, v392, v417, v440, v465, v491, v514, v538, v563, v588, v611);
      v175 = OUTLINED_FUNCTION_18();
      v176 = (*v130 + 1600);
      v177 = *v176;
      v185 = OUTLINED_FUNCTION_37_54(v175, v178, v179, v180, v181, v182, v183, v184, v319, v344, v369, v393, v418, v441, v466, v492, v515, v539, v564, v589, v612);
      v177(v185);
      __asm { FMOV            V0.2D, #0.5 }

      OUTLINED_FUNCTION_9_119();
      sub_1E3C3DE00(v132);
      OUTLINED_FUNCTION_2_169(v187, v188, v189, v190, v191, v192, v193, v194, v320, v345, v370, v394, v419, v442, v467, v493, v516, v540, v565, v590, v613, v629, v642, v655, v668, v681, v694, v707, v720, v733, v746, v759, v772, v785, v798, v811, v824, v837, v850, v862, v875, v888, v900, v912, v923, v934, v945, v955, v966, v977, v987, v997, v1006, v1015, v1024, v1030, v1035, v1040, v1043);
      sub_1E3C3DE00(v132);
      OUTLINED_FUNCTION_1_201(v195, v196, v197, v198, v199, v200, v201, v202, v321, v346, v371, v395, v420, v443, v468, v494, v517, v541, v566, v591, v614, v630, v643, v656, v669, v682, v695, v708, v721, v734, v747, v760, v773, v786, v799, v812, v825, v838, v851, v863, v876, v889, v901, v913, v924, v935, v946, v956, v967, v978, v988);
      v203 = sub_1E3C3DE00(v132);
      OUTLINED_FUNCTION_6_148(v203, v204, v205, v206, v207, v208, v209, v210, v322, v347, v372, v396, v421, v444, v469, v495, v518, v542, v567, v592, v615, v631, v644, v657, v670, v683, v696, v709, v722, v735, v748, v761, v774, v787, v800, v813, v826, v839, v852, v864, v877, v890, v902);
      v219 = OUTLINED_FUNCTION_5_153(v211, v212, v213, v214, v215, v216, v217, v218, v323, v348, v373, v397, v422, v445, v470, v496, v519, v543, v568, v593, v616, v632, v645, v658, v671, v684, v697, v710, v723, v736, v749, v762, v775, v788, v801, v814, v827, v840, v853, v865, v878, v891, v903, v914, v925, v936, v947, v957, v968, v979, v989, v998, v1007, v1016, v1025);
      sub_1E3C2FCB8(v219, v220);
      OUTLINED_FUNCTION_26_77(v221, v222, v223, v224, v225, v226, v227, v228, v324, v349, v374, v398, v423, v446, v471, v497, v520, v544, v569, v594, v617);
      v229 = OUTLINED_FUNCTION_18();
      v237 = OUTLINED_FUNCTION_8_14(v229, v230, v231, v232, v233, v234, v235, v236, v325, v350, v375, v399, v424, v447, v472, v498, v521, v545, v570, v595, v618);
      (v177)(v237, 116);
      LOBYTE(v619) = 2;
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v948) = v990;
      v238 = sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v854) = v904;
      v246 = OUTLINED_FUNCTION_5_153(v238, v239, v240, v241, v242, v243, v244, v245, v326, v351, v376, v177, v176, v448, v473, v499, v522, v546, v571, v596, v619, v633, v646, v659, v672, v685, v698, v711, v724, v737, v750, v763, v776, v789, v802, v815, v828, v841, v854, v866, v879, v892, v904, v915, v926, v937, v948, v958, v969, v980, v990, v999, v1008, v1017, v1044);
      sub_1E3C2FCB8(v246, v247);
      v248 = OUTLINED_FUNCTION_32_63();
      v256 = OUTLINED_FUNCTION_8_14(v248, v249, v250, v251, v252, v253, v254, v255, v327, v352, v377, v400, v425, v449, v474, v500, v523, v547, v572, v597, v620);
      (v177)(v256, 117);
      v1046 = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      v257 = objc_opt_self();
      v258 = [v257 blackColor];
      v259 = [v258 colorWithAlphaComponent_];

      sub_1E4207544();
      OUTLINED_FUNCTION_17_104();
      OUTLINED_FUNCTION_33_56();
      sub_1E4207554();
      v260 = OUTLINED_FUNCTION_39_48();
      OUTLINED_FUNCTION_36_50();
      v263 = [v261 v262];

      sub_1E4207544();
      OUTLINED_FUNCTION_17_104();
      OUTLINED_FUNCTION_33_56();
      sub_1E4207554();
      v264 = OUTLINED_FUNCTION_39_48();
      OUTLINED_FUNCTION_36_50();
      v267 = [v265 v266];

      sub_1E4207544();
      OUTLINED_FUNCTION_17_104();
      OUTLINED_FUNCTION_33_56();
      sub_1E4207554();
      v268 = OUTLINED_FUNCTION_39_48();
      OUTLINED_FUNCTION_36_50();
      v271 = [v269 v270];

      sub_1E4207544();
      OUTLINED_FUNCTION_17_104();
      OUTLINED_FUNCTION_33_56();
      sub_1E4207554();
      v272 = OUTLINED_FUNCTION_39_48();
      OUTLINED_FUNCTION_36_50();
      v275 = [v273 v274];

      sub_1E4207544();
      OUTLINED_FUNCTION_17_104();
      OUTLINED_FUNCTION_33_56();
      sub_1E4207554();
      (*(*v130 + 1800))(v1046);
      v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90);
      sub_1E3C3DE00(v276);
      sub_1E3C3DE00(v276);
      v277 = sub_1E3C3DE00(v276);
      v285 = OUTLINED_FUNCTION_5_153(v277, v278, v279, v280, v281, v282, v283, v284, v328, v353, v378, v401, v426, v450, v475, v501, v524, v548, v573, v598, &unk_1F5D80790, v634, v647, v660, v673, v686, v699, v712, v725, v738, v751, v764, v777, v790, v803, v816, v829, v842, v905, v867, v880, v893, v905, v916, v927, v938, v991, v959, v970, v981, v991, v1000, v1009, v1018, v1044);
      sub_1E3C2FCB8(v285, v286);
      v621 = v1046;
      v287 = OUTLINED_FUNCTION_18();
      v295 = OUTLINED_FUNCTION_8_14(v287, v288, v289, v290, v291, v292, v293, v294, v329, v354, v379, v402, v427, v451, v476, v502, v525, v549, v574, v599, v621);
      v403(v295, 114);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v296 = OUTLINED_FUNCTION_31_54();
      *(v296 + 16) = xmmword_1E429DCC0;
      v297 = [v257 blackColor];
      v298 = [v297 colorWithAlphaComponent_];

      *(v296 + 32) = v298;
      v299 = [v257 blackColor];
      v300 = [v299 colorWithAlphaComponent_];

      *(v296 + 40) = v300;
      v301 = sub_1E40C2E40();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748);
      v302 = OUTLINED_FUNCTION_41_3();
      *(v302 + 16) = 2;
      *(v302 + 24) = xmmword_1E42CCC30;
      *(v302 + 40) = v130;
      *(v302 + 48) = 12;
      *(v302 + 56) = v301;
      type metadata accessor for VUIPosition(0);
      OUTLINED_FUNCTION_7_163(&qword_1EE23B3C0);
      v303 = sub_1E4205CB4();
      OUTLINED_FUNCTION_3_0();
      *(v3 + 104) = v303;
      goto LABEL_7;
    case 8:
      break;
    default:
      v477 = type metadata accessor for ViewGradientLayout();
      v5 = sub_1E40C3088();
      OUTLINED_FUNCTION_9_119();
      type metadata accessor for CGPoint(0);
      v7 = v6;
      sub_1E3C3DE00(v6);
      OUTLINED_FUNCTION_29_69();
      OUTLINED_FUNCTION_28_59();
      v8 = OUTLINED_FUNCTION_27_60();
      LOBYTE(v550) = v868;
      v16 = OUTLINED_FUNCTION_4_177(v8, v9, v10, v11, v12, v13, v14, v15, v305, v330, v355, v380, v404, v428, v452, v477, v843, v855, v550, v575, v600, v622, v635, v648, v661, v674, v687, v700, v713, v726, v739, v752, v765, v778, v791, v804, v817, v830, v843, v855, v868, v881, v894, v906, v917, v928, v939, v949, v960, v971, v982, v992, v1001, v1010, v1019, v1026, v1031, v1036, SLOBYTE(v1041));
      sub_1E3C2FCB8(v16, v17);
      OUTLINED_FUNCTION_26_77(v18, v19, v20, v21, v22, v23, v24, v25, v306, v331, v356, v381, v405, v429, v453, v478, v504, v527, v551, v576, v601);
      v26 = OUTLINED_FUNCTION_18();
      v27 = (*v5 + 1600);
      v28 = *v27;
      v36 = OUTLINED_FUNCTION_37_54(v26, v29, v30, v31, v32, v33, v34, v35, v307, v332, v357, v382, v406, v430, v454, v479, v505, v528, v552, v577, v602);
      v28(v36);
      __asm { FMOV            V0.2D, #0.5 }

      OUTLINED_FUNCTION_9_119();
      sub_1E3C3DE00(v7);
      OUTLINED_FUNCTION_29_69();
      OUTLINED_FUNCTION_28_59();
      v42 = OUTLINED_FUNCTION_27_60();
      LOBYTE(v553) = v869;
      v50 = OUTLINED_FUNCTION_4_177(v42, v43, v44, v45, v46, v47, v48, v49, v308, v333, v358, v383, v407, v431, v455, v480, v844, v856, v553, v578, v603, v623, v636, v649, v662, v675, v688, v701, v714, v727, v740, v753, v766, v779, v792, v805, v818, v831, v844, v856, v869, v882, v895, v907, v918, v929, v940, v950, v961, v972, v983, v993, v1002, v1011, v1020, v1027, v1032, v1037, v1042);
      sub_1E3C2FCB8(v50, v51);
      OUTLINED_FUNCTION_26_77(v52, v53, v54, v55, v56, v57, v58, v59, v309, v334, v359, v384, v408, v432, v456, v481, v506, v529, v554, v579, v604);
      v60 = OUTLINED_FUNCTION_18();
      v68 = OUTLINED_FUNCTION_8_14(v60, v61, v62, v63, v64, v65, v66, v67, v310, v335, v360, v385, v409, v433, v457, v482, v507, v530, v555, v580, v605);
      (v28)(v68, 116);
      LOBYTE(v606) = 1;
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v984) = v1021;
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v896) = v941;
      v69 = sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v508) = v845;
      v77 = OUTLINED_FUNCTION_4_177(v69, v70, v71, v72, v73, v74, v75, v76, v311, v336, v28, v27, v410, v434, v458, v483, v508, v531, v556, v581, v606, v624, v637, v650, v663, v676, v689, v702, v715, v728, v741, v754, v767, v780, v793, v806, v819, v832, v845, v857, v870, v883, v896, v908, v919, v930, v941, v951, v962, v973, v984, v994, v1003, v1012, v1021, v1028, v1033, v1038, v1045);
      sub_1E3C2FCB8(v77, v78);
      v79 = OUTLINED_FUNCTION_32_63();
      v87 = OUTLINED_FUNCTION_8_14(v79, v80, v81, v82, v83, v84, v85, v86, v312, v337, v361, v386, v411, v435, v459, v484, v509, v532, v557, v582, v607);
      (v28)(v87, 117);
      v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v88 = OUTLINED_FUNCTION_31_54();
      *(v88 + 16) = xmmword_1E429DCC0;
      v89 = objc_opt_self();
      v90 = [v89 blackColor];
      v91 = [v90 colorWithAlphaComponent_];

      *(v88 + 32) = v91;
      v92 = [v89 blackColor];
      v93 = [v92 &selRef:0.0 componentsSeparatedByString:?];

      *(v88 + 40) = v93;
      (*(*v5 + 1800))(v88);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90);
      sub_1E3C3DE00(v94);
      sub_1E3C3DE00(v94);
      sub_1E3C3DE00(v94);
      v95 = sub_1E3C3DE00(v94);
      v103 = OUTLINED_FUNCTION_4_177(v95, v96, v97, v98, v99, v100, v101, v102, v313, v338, v362, v387, 2, 5, v460, v485, v846, v533, v558, v583, &unk_1F5D80730, v625, v638, v651, v664, v677, v690, v703, v716, v729, v742, v755, v768, v781, v794, v807, v820, v833, v846, v858, v871, v884, v942, v909, v920, v931, v942, v952, v963, v974, v1022, v995, v1004, v1013, v1022, v1029, v1034, v1039, v1045);
      sub_1E3C2FCB8(v103, v104);
      v105 = OUTLINED_FUNCTION_18();
      v113 = OUTLINED_FUNCTION_8_14(v105, v106, v107, v108, v109, v110, v111, v112, v314, v339, v363, v388, v412, v436, v461, v486, v510, v534, v559, v584, v1046);
      v364(v113, 114);

      v114 = OUTLINED_FUNCTION_31_54();
      *(v114 + 16) = v413;
      v115 = [v89 blackColor];
      v116 = [v115 colorWithAlphaComponent_];

      *(v114 + 32) = v116;
      v117 = [v89 blackColor];
      v118 = [v117 colorWithAlphaComponent_];

      *(v114 + 40) = v118;
      v119 = sub_1E40C2E40();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748);
      v120 = OUTLINED_FUNCTION_41_3();
      v121 = OUTLINED_FUNCTION_35_50(v120, xmmword_1E4299720);
      v121[2].n128_u64[0] = v122;
      v121[2].n128_u64[1] = v5;
      v121[3].n128_u64[0] = 12;
      v121[3].n128_u64[1] = v119;
      type metadata accessor for VUIPosition(0);
      OUTLINED_FUNCTION_7_163(&qword_1EE23B3C0);

      v123 = sub_1E4205CB4();
      if (sub_1E3CCE274(*(v3 + 98), 2u))
      {
        v124 = OUTLINED_FUNCTION_31_54();
        *(v124 + 16) = v413;
        v125 = [v89 blackColor];
        v126 = [v125 colorWithAlphaComponent_];

        *(v124 + 32) = v126;
        v127 = [v89 blackColor];
        v128 = [v127 colorWithAlphaComponent_];

        *(v124 + 40) = v128;
        v129 = sub_1E40C2E40();

        swift_isUniquelyReferenced_nonNull_native();
        v1046 = v123;
        sub_1E3D39AD8(v129, 15);
      }

      OUTLINED_FUNCTION_3_0();
      *(v3 + 104) = v123;
LABEL_7:

      break;
  }

  return v3;
}