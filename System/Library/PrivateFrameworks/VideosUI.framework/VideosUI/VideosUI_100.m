void sub_1E3E70274()
{
  v0 = OUTLINED_FUNCTION_22_80();
  OUTLINED_FUNCTION_8_0(v0);
  sub_1E3E6EE0C();
}

unint64_t sub_1E3E70300()
{
  result = qword_1EE288F60;
  if (!qword_1EE288F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A630);
    sub_1E3E703A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F60);
  }

  return result;
}

unint64_t sub_1E3E703A4()
{
  result = qword_1EE289BE0;
  if (!qword_1EE289BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A638);
    swift_getOpaqueTypeConformance2();
    sub_1E3E70478(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BE0);
  }

  return result;
}

uint64_t sub_1E3E70478(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3E704BC()
{
  result = qword_1EE2883E0;
  if (!qword_1EE2883E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A628);
    sub_1E328FCF4(&qword_1EE288548, &qword_1ECF3A640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883E0);
  }

  return result;
}

unint64_t sub_1E3E7056C()
{
  result = qword_1EE2883F0;
  if (!qword_1EE2883F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A618);
    sub_1E3E70300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883F0);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  type metadata accessor for StackTemplateView();
  OUTLINED_FUNCTION_144();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  OUTLINED_FUNCTION_27_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v0 + v3 + v1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_124();
  if (v5)
  {
  }

  return swift_deallocObject();
}

void sub_1E3E70764()
{
  v1 = OUTLINED_FUNCTION_22_80();
  OUTLINED_FUNCTION_8_0(v1);
  *v0 = sub_1E4201D44();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A648);
  sub_1E3E6EE0C();
}

uint64_t sub_1E3E70824()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1ECF71720);
  __swift_project_value_buffer(v0, qword_1ECF71720);
  return sub_1E3287754(11);
}

void sub_1E3E70874()
{
  v1 = v0;
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267();
  }

  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_13_25(v2, qword_1ECF71720);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_161(v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    *v5 = 0;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v6, v7, v8, v9, v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v10 = [objc_opt_self() sharedScheduler];
  v11 = sub_1E4205ED4();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = sub_1E3E70A70;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1E377674C;
  v15[3] = &block_descriptor_127;
  v13 = _Block_copy(v15);

  [v10 registerForTaskWithIdentifier:v11 usingQueue:0 launchHandler:v13];
  _Block_release(v13);

  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v1 selector:sel_handleAutomaticDownloadsSwitchDidChange name:@"VUIAutomaticDownloadsSwitchDidChangeNotification" object:0];
}

void sub_1E3E70A70(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_5_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = a1;
      sub_1E3E70AF4(v3);
    }
  }
}

uint64_t sub_1E3E70AF4(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = aBlock - v5;
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267();
  }

  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_13_25(v7, qword_1ECF71720);
  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_125_0();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v9, "BackgroundTaskManager:: handleAutoDownloadTask", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  aBlock[4] = sub_1E3E72E70;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_34_1;
  v13 = _Block_copy(aBlock);

  v14 = OUTLINED_FUNCTION_4_199();
  [v14 v15];
  _Block_release(v13);
  v16 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = ObjectType;
  v18 = a1;
  sub_1E376FE58(0, 0, v6, &unk_1E42D7CB0, v17);
}

void sub_1E3E70D80()
{
  sub_1E3E70DA8();

  sub_1E3E70EA0();
}

void sub_1E3E70DA8()
{
  v0 = [objc_opt_self() sharedScheduler];
  [v0 cancelAllTaskRequests];

  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267();
  }

  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_13_25(v1, qword_1ECF71720);
  oslog = sub_1E41FFC94();
  v2 = sub_1E4206814();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = OUTLINED_FUNCTION_125_0();
    *v3 = 0;
    _os_log_impl(&dword_1E323F000, oslog, v2, "BackgroundTaskManager:: cancel all scheduled task requests", v3, 2u);
    OUTLINED_FUNCTION_6_0();
  }
}

void sub_1E3E70EA0()
{
  OUTLINED_FUNCTION_31_1();
  ObjectType = swift_getObjectType();
  v0 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v43 = v15;
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = [objc_opt_self() sharedPreferences];
  v20 = [v19 useAutomaticDownloads];

  v21 = [objc_opt_self() userHasActiveAccount];
  if (v20 && v21)
  {
    if (qword_1ECF65AC8 != -1)
    {
      OUTLINED_FUNCTION_0_267();
    }

    v22 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v22, qword_1ECF71720);
    v23 = sub_1E41FFC94();
    v24 = sub_1E4206814();
    v40 = v9;
    if (OUTLINED_FUNCTION_161(v24))
    {
      v25 = OUTLINED_FUNCTION_125_0();
      *v25 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v26, v27, v28, v29, v25, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    sub_1E3280A90(0, &qword_1ECF3A6E0);
    v30 = sub_1E3E71460();
    [v30 setRequiresNetworkConnectivity_];
    [v30 setRequiresExternalPower_];
    v41 = v7;
    if (sub_1E3E713C8())
    {
      sub_1E41FE5C4();
    }

    else
    {
      sub_1E41FE544();
    }

    v31 = v30;
    v32 = sub_1E41FE514();
    [v31 setEarliestBeginDate_];

    OUTLINED_FUNCTION_4_0();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = v31;
    v34[4] = 0xD00000000000001ALL;
    v34[5] = 0x80000001E4286700;
    v34[6] = ObjectType;
    v45[4] = sub_1E3E72CF4;
    v45[5] = v34;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v45[2] = v35;
    v45[3] = &block_descriptor_19_3;
    v36 = _Block_copy(v45);
    v37 = v31;

    sub_1E4203FE4();
    OUTLINED_FUNCTION_7_190();
    sub_1E328FCAC(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v13, v6, v36);
    _Block_release(v36);

    (*(v2 + 8))(v6, v0);
    (*(v40 + 8))(v13, v41);
    (*(v43 + 8))(v18, v44);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3E713C8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = OUTLINED_FUNCTION_4_199();
  v4 = [v2 v3];

  return v4;
}

id sub_1E3E71460()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

void sub_1E3E714D4()
{
  OUTLINED_FUNCTION_31_1();
  v75 = v0;
  v2 = v1;
  v80 = v3;
  v5 = v4;
  v82[9] = *MEMORY[0x1E69E9840];
  v6 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v74 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v76 = v10 - v9;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v77 = v11;
  v78 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  v16 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v70 - v23;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v79 = Strong;
    v72 = v6;
    v73 = v24;
    v26 = objc_opt_self();
    v27 = [v26 sharedScheduler];
    v82[0] = 0;
    v28 = [v27 submitTaskRequest:v5 error:v82];

    v29 = &unk_1ECF65000;
    if (v28)
    {
      v30 = v82[0];
    }

    else
    {
      v31 = v82[0];
      OUTLINED_FUNCTION_50();
      v32 = sub_1E41FE274();

      swift_willThrow();
      if (qword_1ECF65AC8 != -1)
      {
        OUTLINED_FUNCTION_0_267();
      }

      v33 = sub_1E41FFCB4();
      __swift_project_value_buffer(v33, qword_1ECF71720);
      v34 = OUTLINED_FUNCTION_50();
      v35 = sub_1E41FFC94();
      v36 = sub_1E42067F4();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_6_21();
        v71 = v15;
        v38 = v37;
        v39 = OUTLINED_FUNCTION_160();
        v70 = v16;
        v40 = v39;
        *v38 = 138412290;
        v41 = v32;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v42;
        *v40 = v42;
        OUTLINED_FUNCTION_136();
        _os_log_impl(v43, v44, v45, v46, v38, 0xCu);
        sub_1E325F6F0(v40, &unk_1ECF28E30);
        v16 = v70;
        OUTLINED_FUNCTION_6_0();
        v15 = v71;
        OUTLINED_FUNCTION_6_0();

        v29 = &unk_1ECF65000;
      }

      else
      {
      }
    }

    if (sub_1E3E713C8())
    {
      v47 = [v26 sharedScheduler];
      v48 = sub_1E4205ED4();
      v49 = OUTLINED_FUNCTION_4_199();
      [v49 v50];

      if (v29[345] != -1)
      {
        OUTLINED_FUNCTION_0_267();
      }

      v51 = sub_1E41FFCB4();
      OUTLINED_FUNCTION_13_25(v51, qword_1ECF71720);

      v52 = sub_1E41FFC94();
      v53 = sub_1E42067E4();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_6_21();
        v55 = OUTLINED_FUNCTION_100();
        v82[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_1E3270FC8(v80, v2, v82);
        _os_log_impl(&dword_1E323F000, v52, v53, "BackgroundTaskManager:: simulate launch task %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }
    }

    v56 = [objc_opt_self() standardUserDefaults];
    v57 = sub_1E4205ED4();
    v58 = OUTLINED_FUNCTION_4_199();
    v60 = [v58 v59];

    if (v60)
    {
      v70 = *&v79[OBJC_IVAR____TtC8VideosUI21BackgroundTaskManager_taskQueue];
      sub_1E4204004();
      sub_1E4204074();
      v61 = v74;
      v71 = *(v18 + 8);
      v71(v21, v16);
      v62 = swift_allocObject();
      v62[2] = v80;
      v62[3] = v2;
      v62[4] = v75;
      v82[4] = sub_1E3E72D04;
      v82[5] = v62;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 1107296256;
      OUTLINED_FUNCTION_0_48();
      v82[2] = v63;
      v82[3] = &block_descriptor_25_0;
      v64 = _Block_copy(v82);

      sub_1E4203FE4();
      v81 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_7_190();
      sub_1E328FCAC(v65, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
      sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730);
      v67 = v76;
      v68 = v72;
      sub_1E42072E4();
      v69 = v73;
      MEMORY[0x1E69112E0](v73, v15, v67, v64);
      _Block_release(v64);
      (*(v61 + 8))(v67, v68);
      (*(v78 + 8))(v15, v77);
      v71(v69, v16);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E71C00()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E3FBA090();
  v0[7] = v1;
  v0[8] = *v1;

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_56_1(v2);

  return sub_1E3FBB118();
}

uint64_t sub_1E3E71CA4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = sub_1E3E7241C;
  }

  else
  {

    v7 = sub_1E3E71DA8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3E71DA8()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 88) = **(v0 + 56);
  sub_1E4206434();

  *(v0 + 96) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3E71E48, v2, v1);
}

uint64_t sub_1E3E71E48()
{
  OUTLINED_FUNCTION_24();

  sub_1E3FBC0E4();
  *(v0 + 128) = v1 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1E3E71EC0, 0, 0);
}

uint64_t sub_1E3E71EC0()
{
  if (*(v0 + 128) == 1)
  {
    if (qword_1ECF65AC8 != -1)
    {
      OUTLINED_FUNCTION_0_267();
    }

    v1 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v1, qword_1ECF71720);
    v2 = sub_1E41FFC94();
    v3 = sub_1E4206814();
    if (os_log_type_enabled(v2, v3))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v9 = *(v0 + 56);

    *(v0 + 104) = *v9;

    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_56_1(v10);

    return sub_1E3FBA0E0();
  }

  else
  {
    if (qword_1ECF65AC8 != -1)
    {
      OUTLINED_FUNCTION_0_267();
    }

    v12 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v12, qword_1ECF71720);
    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();
    if (OUTLINED_FUNCTION_161(v14))
    {
      v15 = OUTLINED_FUNCTION_125_0();
      *v15 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v16, v17, v18, v19, v15, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    [*(v0 + 48) setTaskCompletedWithSuccess_];
    if (qword_1ECF65AC8 != -1)
    {
      OUTLINED_FUNCTION_0_267();
    }

    v20 = *(v0 + 48);
    OUTLINED_FUNCTION_13_25(v12, qword_1ECF71720);
    v21 = v20;
    v22 = sub_1E41FFC94();
    v23 = sub_1E4206814();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 48);
      v25 = OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_160();
      *v25 = 138412290;
      *(v25 + 4) = v24;
      *v26 = v24;
      v27 = v24;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      sub_1E325F6F0(v26, &unk_1ECF28E30);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_54();

    return v33();
  }
}

uint64_t sub_1E3E72194(char a1)
{
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 120) = v1;

  if (v1)
  {
    v9 = sub_1E3E72588;
  }

  else
  {
    *(v5 + 129) = a1 & 1;
    v9 = sub_1E3E722D0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E3E722D0()
{
  [*(v0 + 48) setTaskCompletedWithSuccess_];
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267();
  }

  v1 = *(v0 + 48);
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_13_25(v2, qword_1ECF71720);
  v3 = v1;
  v4 = sub_1E41FFC94();
  LOBYTE(v1) = sub_1E4206814();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = *(v0 + 48);
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_160();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1E325F6F0(v7, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_54();

  return v14();
}

uint64_t sub_1E3E7241C()
{
  v16 = v0;

  v1 = *(v0 + 80);
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267();
  }

  v2 = sub_1E41FFCB4();
  __swift_project_value_buffer(v2, qword_1ECF71720);
  v3 = OUTLINED_FUNCTION_50();
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v15 = v7;
    OUTLINED_FUNCTION_31_63(4.8149e-34);
    v8 = sub_1E4207AB4();
    v10 = sub_1E3270FC8(v8, v9, &v15);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_29_82(&dword_1E323F000, v11, v12, "BackgroundTaskManager:: error = %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_54();

  return v13();
}

uint64_t sub_1E3E72588()
{
  v16 = v0;
  v1 = *(v0 + 120);
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267();
  }

  v2 = sub_1E41FFCB4();
  __swift_project_value_buffer(v2, qword_1ECF71720);
  v3 = OUTLINED_FUNCTION_50();
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v15 = v7;
    OUTLINED_FUNCTION_31_63(4.8149e-34);
    v8 = sub_1E4207AB4();
    v10 = sub_1E3270FC8(v8, v9, &v15);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_29_82(&dword_1E323F000, v11, v12, "BackgroundTaskManager:: error = %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_54();

  return v13();
}

void sub_1E3E726EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 useAutomaticDownloads];

  if ((v6 & 1) == 0)
  {
    v7 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    sub_1E4206434();
    v8 = v0;
    v9 = sub_1E4206424();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    sub_1E37748D8(0, 0, v4, &unk_1E42D7C98, v10);
  }
}

uint64_t sub_1E3E72824()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  sub_1E4206434();
  v0[3] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();
  v0[4] = v3;
  v0[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3E728B4, v3, v2);
}

uint64_t sub_1E3E728B4()
{
  OUTLINED_FUNCTION_24();
  sub_1E3E70DA8();
  *(v0 + 48) = *sub_1E3FBA090();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3FBBB04();
}

uint64_t sub_1E3E72958()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[4];
    v8 = v3[5];
    v9 = sub_1E3E72AB8;
  }

  else
  {

    v7 = v3[4];
    v8 = v3[5];
    v9 = sub_1E3E72A5C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E3E72A5C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3E72AB8()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

unint64_t sub_1E3E72B6C()
{
  result = qword_1ECF3A668;
  if (!qword_1ECF3A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A668);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BackgroundTaskManager.BackgroundTask(_BYTE *result, int a2, int a3)
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

uint64_t sub_1E3E72C6C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E72824();
}

void sub_1E3E72D04()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [objc_opt_self() sharedScheduler];
  v4 = sub_1E4205ED4();
  [v3 _simulateExpirationForTaskWithIdentifier_];

  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267();
  }

  v5 = sub_1E41FFCB4();
  __swift_project_value_buffer(v5, qword_1ECF71720);
  OUTLINED_FUNCTION_50();

  oslog = sub_1E41FFC94();
  v6 = sub_1E42067E4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = OUTLINED_FUNCTION_6_21();
    v8 = OUTLINED_FUNCTION_100();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1E3270FC8(v2, v1, &v10);
    _os_log_impl(&dword_1E323F000, oslog, v6, "BackgroundTaskManager:: simulate task expiration %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }
}

void sub_1E3E72E70()
{
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267();
  }

  v0 = sub_1E41FFCB4();
  __swift_project_value_buffer(v0, qword_1ECF71720);
  OUTLINED_FUNCTION_50();

  v1 = sub_1E41FFC94();
  v2 = sub_1E4206814();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_6_21();
    v4 = OUTLINED_FUNCTION_160();
    *v3 = 138412290;
    OUTLINED_FUNCTION_5_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v3 + 4) = Strong;
    *v4 = Strong;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v6, v7, v8, v9, v3, 0xCu);
    sub_1E325F6F0(v4, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_5_0();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 setTaskCompletedWithSuccess_];
  }
}

uint64_t objectdestroy_8Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E3E73008()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_56_1(v3);

  return sub_1E3E71BE0(v5, v6, v7, v1);
}

id sub_1E3E730A8()
{
  v1 = [objc_allocWithZone(VUIFavoriteBannerLayout) init];
  (*(*v0 + 552))(&v7, [v1 setIsPreModeBanner_]);
  if (v8)
  {
    v2 = *MEMORY[0x1E69DF800];
    v3 = *(MEMORY[0x1E69DF800] + 8);
    v4 = *(MEMORY[0x1E69DF800] + 16);
    v5 = *(MEMORY[0x1E69DF800] + 24);
  }

  else
  {
    sub_1E3952BF8();
  }

  [v1 setBorderRadii_];
  [v1 setMargin_];
  [v1 setBackgroundColor_];
  [v1 setHighlightedBackgroundColor_];
  [v1 setBannerMinHeight_];
  [v1 setMaxTextWidth_];
  [v1 setBannerStyle_];
  return v1;
}

uint64_t sub_1E3E7326C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_1E3E732E8(char a1)
{
  *(v1 + 104) = 2;
  type metadata accessor for ImageLayout();
  *(v1 + 112) = sub_1E3BD61D8();
  *(v1 + 120) = 1;
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v1 + 128) = *MEMORY[0x1E69DDCE0];
  *(v1 + 144) = v3;
  type metadata accessor for TextLayout();
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 160) = 0;
  *(v1 + 184) = sub_1E383BCC0();
  *(v1 + 192) = sub_1E383BCC0();
  sub_1E3755B54();
  *(v1 + 200) = sub_1E4206F24();
  *(v1 + 208) = sub_1E4206F24();
  v4 = sub_1E3C2F9A0();
  *(v4 + 120) = a1;
  v5 = objc_opt_self();

  v6 = [v5 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8.n128_u64[0] = 0x4048000000000000;
  if (v7 == 2)
  {
    v9 = 51.0;
  }

  else
  {
    v8.n128_f64[0] = 24.0;
    v9 = 24.0;
  }

  v10 = qword_1E42D7CE0[v7 == 2];
  *(v4 + 128) = j__OUTLINED_FUNCTION_7_78(v8);
  *(v4 + 136) = v11;
  *(v4 + 144) = v12;
  *(v4 + 152) = v13;
  *(v4 + 160) = v10;
  *(v4 + 168) = 0x4071D00000000000;
  *(v4 + 176) = v9;

  sub_1E39537A8();
  v59[0] = v14;
  v59[1] = v15;
  v59[2] = v16;
  v59[3] = v17;
  v60 = 0;
  (*(*v4 + 560))(v59);

  OUTLINED_FUNCTION_1_240();
  v19 = *(v18 + 1696);

  v19(3);

  OUTLINED_FUNCTION_1_240();
  v21 = *(v20 + 1792);

  v21(10);

  OUTLINED_FUNCTION_1_240();
  v23 = *(v22 + 2056);

  v23(0, 0);

  v24 = *(v4 + 184);

  v25 = sub_1E4206F24();
  (*(*v24 + 680))(v25);

  OUTLINED_FUNCTION_1_240();
  v27 = *(v26 + 2128);

  v27(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_1_240();
  v29 = *(v28 + 1720);

  v29(9);

  OUTLINED_FUNCTION_0_268();
  v31 = *(v30 + 2056);

  v31(0, 0);

  OUTLINED_FUNCTION_0_268();
  v33 = *(v32 + 1792);

  v33(4);

  v34 = *(v4 + 192);
  LOBYTE(v48) = 27;
  v56 = 18;
  v55 = 17;
  v54 = 27;

  sub_1E3C3DE00(&qword_1F5D549D8);
  v52 = v53;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v50 = v51;
  sub_1E3C2FCB8(&v48, &v57);
  v48 = v57;
  v49 = v58;
  v35 = OUTLINED_FUNCTION_18();
  (*(*v34 + 1600))(&v48, 48, v35 & 1, &qword_1F5D549D8);

  v36 = *(v4 + 192);

  v37 = sub_1E4206F24();
  (*(*v36 + 680))(v37);

  OUTLINED_FUNCTION_0_268();
  v39 = *(v38 + 2128);

  v39(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_0_268();
  v41 = *(v40 + 1720);

  v41(9);

  OUTLINED_FUNCTION_0_268();
  v43 = *(v42 + 1936);

  v43(0);

  sub_1E3C37CBC(v44, 23);

  sub_1E3C37CBC(v45, 15);

  sub_1E3C37CBC(v46, 40);

  return v4;
}

uint64_t sub_1E3E73A30()
{
  *(v0 + 104) = 2;
  type metadata accessor for ImageLayout();
  *(v0 + 112) = sub_1E3BD61D8();
  *(v0 + 120) = 1;
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 128) = *MEMORY[0x1E69DDCE0];
  *(v0 + 144) = v1;
  type metadata accessor for TextLayout();
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 160) = 0;
  *(v0 + 184) = sub_1E383BCC0();
  *(v0 + 192) = sub_1E383BCC0();
  sub_1E3755B54();
  *(v0 + 200) = sub_1E4206F24();
  *(v0 + 208) = sub_1E4206F24();

  return sub_1E3C2F9A0();
}

uint64_t sub_1E3E73B0C()
{
  v1 = *(v0 + 120);
  v2 = sub_1E373F630();
  if (v1 == 1)
  {
    if ((v2 & 1) == 0)
    {
      return (sub_1E373F630() & 1) == 0;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  if (sub_1E373F630())
  {
    return 0;
  }

  if (sub_1E373F630())
  {
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      return 0;
    }
  }

  return 2;
}

uint64_t sub_1E3E73BCC(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 2)
  {
    *(v2 + 168) = qword_1E42D7CF0[a1 == 2];
  }

  v6 = a1 != 2;
  v7 = *(**(v2 + 184) + 1984);

  v7(v6);

  OUTLINED_FUNCTION_0_268();
  v9 = *(v8 + 1984);

  v9(v6);
}

void sub_1E3E73CF8()
{

  v1 = *(v0 + 208);
}

uint64_t sub_1E3E73D40()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3E73D90()
{
  v0 = sub_1E3E73D40();

  return MEMORY[0x1EEE6BDC0](v0, 216, 7);
}

id sub_1E3E73DF8()
{
  result = [v0 vuiView];
  if (result)
  {
    v2 = result;
    type metadata accessor for AlertTemplateView();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3E73EC4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = (*((*v1 & *v2) + 0xA8))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  result = swift_allocObject();
  *(result + 16) = xmmword_1E4298880;
  *(result + 32) = v4;
  return result;
}

void sub_1E3E73F8C()
{
  type metadata accessor for AlertTemplateView();
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = sub_1E3A9C1F4(v3, v5, v7, v9);
  sub_1E373BCD8(v10);
  v11 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  [v0 setVuiView_];
}

uint64_t sub_1E3E740E0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AlertTemplateController();
  result = objc_msgSendSuper2(&v3, sel_vui_viewDidLayoutSubviews);
  v2 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_updateAutoHighlight;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_updateAutoHighlight) == 1)
  {
    result = sub_1E3E74188();
    *(v0 + v2) = 0;
  }

  return result;
}

uint64_t type metadata accessor for AlertTemplateController()
{
  result = qword_1ECF65C50;
  if (!qword_1ECF65C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E74188()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E3C9C4AC(v1 + v13, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1E325F748(v5, &qword_1ECF309A0);
  }

  v15 = (*(v8 + 32))(v12, v5, v6);
  v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  if ((v16)(v15))
  {
    OUTLINED_FUNCTION_7_191();
    v18 = (*(v17 + 168))();

    [v18 layoutIfNeeded];
  }

  v19 = v1;
  if (v16())
  {
    OUTLINED_FUNCTION_7_191();
    v21 = (*(v20 + 168))();

    v22 = sub_1E41FE7E4();
    [v21 scrollToItemAtIndexPath:v22 atScrollPosition:2 animated:0];
  }

  return (*(v8 + 8))(v12, v6);
}

void sub_1E3E74434(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v184 - v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  v18 = (*(*a1 + 464))();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v187 = v10;
  v188 = a1;
  if (a2)
  {
    type metadata accessor for AlertTemplateController();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = a2;
    }
  }

  else
  {
    v20 = 0;
  }

  v185 = v7;
  *&v208[0] = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A6F0);
  sub_1E4148C68(sub_1E3E75680, v22, &v210);

  v23 = v210;
  v24 = MEMORY[0x1E69E7CC0];
  v209 = MEMORY[0x1E69E7CC0];
  v25 = sub_1E32AE9B0(v19);
  v197 = v23;
  if (!v25)
  {
    v193 = 0;
    OUTLINED_FUNCTION_8_160();
LABEL_80:

    *(v23 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionViewModels) = v24;

    v108 = *(v23 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionViewModels);
    v109 = sub_1E32AE9B0(v108);
    v110 = MEMORY[0x1E69E7CC0];
    if (v109)
    {
      v111 = v109;
      *&v210 = MEMORY[0x1E69E7CC0];

      sub_1E4207574();
      if (v111 < 0)
      {
        goto LABEL_151;
      }

      v112 = 0;
      do
      {
        if ((v108 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v112, v108);
        }

        else
        {
        }

        ++v112;
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v111 != v112);

      v110 = v210;
    }

    v201 = v24;
    v113 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionTableItems;
    *(v23 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionTableItems) = v110;

    v114 = *(v23 + v113);
    v115 = *(v114 + 16);

    if (v115)
    {
      v24 = v114 + 32;
      v116 = 0.0;
      v117 = 0.0;
      while (1)
      {
        v118 = *v24;
        v119 = *(*v24 + 98);
        if (v119 == 182)
        {
          break;
        }

        if (v119 == 59)
        {

          v120 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v121 = OUTLINED_FUNCTION_3_205(v120);
          OUTLINED_FUNCTION_12_138();
          v126 = sub_1E393D9C4(v122, v123, v124, v125);

          v127 = sub_1E325F748(&v210, &qword_1ECF296C0);
          if (!v126)
          {
            goto LABEL_98;
          }

          v128 = (*(*v118 + 392))(v127);
          v129 = sub_1E3C8B764(v128, 0.0, 0.0);
          v131 = v130;

          v117 = fmax(v117, v129);
          v116 = fmax(v116, v131);
        }

LABEL_99:
        v24 += 8;
        if (!--v115)
        {
          goto LABEL_103;
        }
      }

      v132 = *(*v118 + 392);

      v134 = v132(v133);
      if (v134)
      {
        v135 = v134;
        *&v136 = COERCE_DOUBLE((*(*v134 + 200))(v134));
        if ((v137 & 1) == 0)
        {
          v138 = *&v136;
          *&v139 = COERCE_DOUBLE((*(*v135 + 304))());
          if ((v140 & 1) == 0)
          {
            v141 = *&v139;

            v117 = fmax(v117, v138);
            v116 = fmax(v116, v141);
            goto LABEL_99;
          }
        }
      }

LABEL_98:

      goto LABEL_99;
    }

    v116 = 0.0;
    v117 = 0.0;
LABEL_103:

    v143 = v116 > 0.0 && v117 > 0.0;
    v144 = MEMORY[0x1E69E7D40];
    if (!v143)
    {
      v145 = v197;
      OUTLINED_FUNCTION_15_131();
LABEL_115:
      v151 = *((*v144 & *v145) + 0xE0);
      if (v151())
      {
        OUTLINED_FUNCTION_12_3();
        v153 = (*(v152 + 168))();

        if (v143)
        {
          v154 = v145;
        }

        else
        {
          v154 = 0;
        }

        [v153 setDataSource_];
      }

      if (v151())
      {
        OUTLINED_FUNCTION_12_3();
        v156 = (*(v155 + 168))();

        if (v143)
        {
          v157 = v145;
        }

        else
        {
          v157 = 0;
        }

        [v156 setDelegate_];
      }

      v158 = *((*v144 & *v145) + 0xE0);
      if (v158())
      {
        OUTLINED_FUNCTION_12_3();
        (*(v159 + 248))(v195);
      }

      else
      {
      }

      if ((v158)(v160))
      {
        OUTLINED_FUNCTION_12_3();
        (*(v161 + 272))(v198);
      }

      else
      {
      }

      if ((v158)(v162))
      {
        OUTLINED_FUNCTION_12_3();
        (*(v163 + 296))(v17);
      }

      else
      {
      }

      if (v193)
      {

        v165 = sub_1E3841D9C(v164, v24);
        v167 = v166;

        if (v167)
        {
          v168 = 0;
        }

        else
        {
          v168 = v165;
        }

        v169 = v187;
        MEMORY[0x1E6909190](v168, 0);
        v170 = sub_1E41FE874();
        __swift_storeEnumTagSinglePayload(v169, 0, 1, v170);
        v171 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath;
        swift_beginAccess();
        sub_1E3C9C51C(v169, v145 + v171);
        swift_endAccess();
        if ([v145 vuiIsViewLoaded])
        {
          sub_1E3E74188();
        }

        else
        {

          *(v145 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_updateAutoHighlight) = 1;
        }
      }

      else
      {
        v173 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v174 = v185;
        sub_1E3C9C4AC(v145 + v173, v185);
        v175 = sub_1E41FE874();
        v176 = 0;
        if (!__swift_getEnumTagSinglePayload(v174, 1, v175))
        {
          v176 = sub_1E41FE844();
        }

        sub_1E325F748(v174, &qword_1ECF309A0);
        v177 = sub_1E32AE9B0(v24);

        if (v176 >= v177)
        {
          v178 = v187;
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v179, v180, v181, v175);
          swift_beginAccess();
          sub_1E3C9C51C(v178, v145 + v173);
          v172 = swift_endAccess();
        }
      }

      if ((v158)(v172))
      {
        OUTLINED_FUNCTION_12_3();
        v183 = (*(v182 + 168))();

        [v183 reloadData];
      }

      *(v145 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_templateViewModel) = v188;

      return;
    }

    v145 = v197;
    v146 = (*((*MEMORY[0x1E69E7D40] & *v197) + 0xE0))(v142);
    v147 = v146;
    if (v146)
    {
      v148 = (*((*v144 & *v146) + 0xA8))();

      v149 = [v148 collectionViewLayout];
      if (v149)
      {
        objc_opt_self();
        v147 = swift_dynamicCastObjCClass();
        OUTLINED_FUNCTION_15_131();
        if (!v150)
        {
        }

        goto LABEL_114;
      }

      v147 = 0;
    }

    OUTLINED_FUNCTION_15_131();
LABEL_114:
    [v147 setItemSize_];

    goto LABEL_115;
  }

  v27 = v25;
  v191 = v17;
  v194 = v11;
  v192 = 0;
  v193 = 0;
  v28 = 0;
  v204 = v19 & 0xC000000000000001;
  v200 = v19 & 0xFFFFFFFFFFFFFF8;
  v199 = v19 + 32;
  v190 = (v13 + 16);
  v189 = v13 + 8;
  *&v26 = 136315138;
  v186 = v26;
  OUTLINED_FUNCTION_8_160();
  v196 = v19;
  v202 = v29;
  while (1)
  {
    if (v204)
    {
      v205 = MEMORY[0x1E6911E60](v28, v19);
    }

    else
    {
      if (v28 >= *(v200 + 16))
      {
        goto LABEL_149;
      }

      v205 = *(v199 + 8 * v28);
    }

    if (__OFADD__(v28++, 1))
    {
      break;
    }

    v31 = v205[49];
    switch(v31)
    {
      case 182:

        MEMORY[0x1E6910BF0](v62);
        OUTLINED_FUNCTION_13_146();
        if (v35)
        {
          OUTLINED_FUNCTION_35(v63);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_23_16();
        sub_1E4206324();

        v24 = v209;
        break;
      case 73:
        v203 = v28;
        v39 = (*(*v205 + 464))();
        if (v39)
        {
          v40 = v39;
        }

        else
        {
          v40 = MEMORY[0x1E69E7CC0];
        }

        if (v40 >> 62)
        {
          v41 = sub_1E4207384();
          if (v41)
          {
LABEL_31:
            if (v41 < 1)
            {
              goto LABEL_150;
            }

            v201 = v24;
            v42 = 0;
            v24 = v40 & 0xC000000000000001;
            do
            {
              if (v24)
              {
                v43 = MEMORY[0x1E6911E60](v42, v40);
              }

              else
              {
                v43 = *(v40 + 8 * v42 + 32);
              }

              v44 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
              v45 = OUTLINED_FUNCTION_3_205(v44);
              OUTLINED_FUNCTION_12_138();
              v50 = sub_1E393D9C4(v46, v47, v48, v49);

              v51 = sub_1E325F748(&v210, &qword_1ECF296C0);
              if (v50)
              {
                v52 = (*(*v43 + 392))(v51);
                if (!v52)
                {
                  type metadata accessor for ViewLayout();
                  v52 = sub_1E3C2F968();
                }

                v53 = v52;
                v54 = v50;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v58 = OUTLINED_FUNCTION_27();
                  v17 = sub_1E3A9BED8(v58, v59, v60, v17);
                }

                v56 = v17[2];
                v55 = v17[3];
                if (v56 >= v55 >> 1)
                {
                  v61 = OUTLINED_FUNCTION_35(v55);
                  v17 = sub_1E3A9BED8(v61, v56 + 1, 1, v17);
                }

                v17[2] = v56 + 1;
                v57 = &v17[2 * v56];
                v57[4] = v54;
                v57[5] = v53;
              }

              else
              {
              }

              ++v42;
            }

            while (v41 != v42);

            v23 = v197;
            OUTLINED_FUNCTION_15_131();
            v19 = v196;
            v27 = v202;
            v28 = v203;
            break;
          }
        }

        else
        {
          v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v41)
          {
            goto LABEL_31;
          }
        }

        v19 = v196;
        v28 = v203;
        break;
      case 59:
        v32 = v205;

        MEMORY[0x1E6910BF0](v33);
        OUTLINED_FUNCTION_13_146();
        if (v35)
        {
          OUTLINED_FUNCTION_35(v34);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_23_16();
        sub_1E4206324();
        v24 = v209;
        LOBYTE(v208[0]) = 5;
        (*(*v32 + 776))(&v210, v208, &unk_1F5D5DAC8, &off_1F5D5C998);
        v208[0] = v210;
        v208[1] = v211;
        if (*(&v211 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_61;
          }

          v37 = v206;
          v36 = v207;

          v38 = HIBYTE(v36) & 0xF;
          if ((v36 & 0x2000000000000000) == 0)
          {
            v38 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (v38)
          {
            if (v192)
            {

              v192 = 1;
            }

            else
            {

              v192 = 1;
              v193 = v205;
            }
          }

          else
          {
LABEL_61:
          }
        }

        else
        {

          sub_1E325F748(v208, &unk_1ECF296E0);
        }

        break;
      default:
        v64 = v24;
        v65 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        v66 = OUTLINED_FUNCTION_3_205(v65);
        v67 = v205;
        OUTLINED_FUNCTION_12_138();
        v72 = sub_1E393D9C4(v68, v69, v70, v71);

        v73 = sub_1E325F748(&v210, &qword_1ECF296C0);
        if (v72)
        {
          v74 = (*(*v67 + 392))(v73);
          if (!v74)
          {
            type metadata accessor for ViewLayout();
            v74 = sub_1E3C2F968();
          }

          v75 = v74;
          v24 = v64;
          v76 = v28;
          if (v24 >> 62)
          {
            v77 = sub_1E4207384();
          }

          else
          {
            v77 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v78 = v72;

          if (v77)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v98 = OUTLINED_FUNCTION_27();
              v198 = sub_1E3A9BED8(v98, v99, v100, v101);
            }

            OUTLINED_FUNCTION_14_140();
            if (v35)
            {
              v102 = OUTLINED_FUNCTION_35(v79);
              v198 = sub_1E3A9BED8(v102, v72, 1, v198);
            }

            v80 = &v213;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = OUTLINED_FUNCTION_27();
              v195 = sub_1E3A9BED8(v103, v104, v105, v106);
            }

            OUTLINED_FUNCTION_14_140();
            if (v35)
            {
              v107 = OUTLINED_FUNCTION_35(v95);
              v195 = sub_1E3A9BED8(v107, v72, 1, v195);
            }

            v80 = &v212;
          }

          v96 = *(v80 - 32);
          *(v96 + 16) = v72;
          v97 = v96 + 16 * v77;
          *(v97 + 32) = v78;
          *(v97 + 40) = v75;
          v27 = v202;
          v28 = v76;
        }

        else
        {
          v81 = sub_1E324FBDC();
          v82 = v194;
          (*v190)(v191, v81, v194);

          v83 = sub_1E41FFC94();
          v84 = sub_1E4206814();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v203 = v28;
            v86 = v85;
            v87 = swift_slowAlloc();
            *&v210 = v87;
            *v86 = v186;
            sub_1E384EE08(v31);
            v90 = sub_1E3270FC8(v88, v89, &v210);

            *(v86 + 4) = v90;
            v19 = v196;
            _os_log_impl(&dword_1E323F000, v83, v84, "AlertTemplateController: failed to handle type [%s]", v86, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v87);
            MEMORY[0x1E69143B0](v87, -1, -1);
            v91 = v86;
            v28 = v203;
            MEMORY[0x1E69143B0](v91, -1, -1);

            v92 = OUTLINED_FUNCTION_19_117();
            v94 = v194;
          }

          else
          {

            v92 = OUTLINED_FUNCTION_19_117();
            v94 = v82;
          }

          v93(v92, v94);
          v27 = v202;
          v23 = v197;
          v24 = v64;
        }

        break;
    }

    if (v28 == v27)
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

id sub_1E3E75680@<X0>(void *a1@<X8>)
{
  type metadata accessor for AlertTemplateController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3E756C0(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_4_207(&OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionViewModels);
  sub_1E41FE874();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v3[OBJC_IVAR____TtC8VideosUI23AlertTemplateController_updateAutoHighlight] = 0;
  if (a2)
  {
    v10 = sub_1E4205ED4();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for AlertTemplateController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_1E3E757F8(void *a1)
{
  OUTLINED_FUNCTION_4_207(&OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionViewModels);
  sub_1E41FE874();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v1[OBJC_IVAR____TtC8VideosUI23AlertTemplateController_updateAutoHighlight] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AlertTemplateController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_1E3E758CC()
{

  return sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath, &qword_1ECF309A0);
}

id sub_1E3E75934()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3E75A18(void *a1)
{
  result = sub_1E41FE824();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionTableItems;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionTableItems);
  if (result >= *(v5 + 16))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v6 = *(v5 + 8 * result + 32);
  v7 = *(v6 + 98);
  if (v7 == 182)
  {

    sub_1E384EE08(182);
    v26 = sub_1E4205ED4();

    v27 = sub_1E41FE7E4();
    v28 = [a1 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:v27];

    type metadata accessor for OfferListLockupCell();
    *&v30[0] = 2;
    memset(v30 + 8, 0, 35);
    v10 = v28;
    v21 = sub_1E3B93B04(v6, v28);

    goto LABEL_12;
  }

  if (v7 == 59)
  {

    sub_1E3A9A0EC();

    v8 = sub_1E4205ED4();

    v9 = sub_1E41FE7E4();
    v10 = [a1 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v9];

    v11 = [v10 layer];
    v12 = *(*(v1 + v4) + 16);
    result = sub_1E41FE844();
    if (!__OFSUB__(v12, result))
    {
      [v11 setZPosition_];

      type metadata accessor for AlertTemplateView.AlertActionCell();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
LABEL_10:

        return v10;
      }

      v14 = v13;
      v10 = v10;
      v15 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      memset(v30, 0, 40);
      v16 = v15;
      OUTLINED_FUNCTION_12_138();
      v21 = sub_1E393D9C4(v17, v18, v19, v20);

      sub_1E325F748(v30, &qword_1ECF296C0);
      if (!v21)
      {

        return v10;
      }

      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        v24 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x60);
        v25 = v21;
        v24(v23);

        goto LABEL_10;
      }

LABEL_12:
      return v10;
    }

    goto LABEL_21;
  }

  v29 = objc_allocWithZone(MEMORY[0x1E69DC7F8]);

  return [v29 init];
}

uint64_t sub_1E3E75F04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  v16 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E3C9C4AC(v2 + v16, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1E325F748(v8, &qword_1ECF309A0);
LABEL_6:
    v20 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v20, 1, v9);
  }

  v17 = *(v11 + 32);
  v17(v15, v8, v9);
  v18 = sub_1E41FE7E4();
  v19 = [a1 vui:v18 isIndexPathValid:?];

  if (!v19)
  {
    (*(v11 + 8))(v15, v9);
    goto LABEL_6;
  }

  v17(a2, v15, v9);
  v20 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v20, 1, v9);
}

id sub_1E3E761F8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v23 - v16;
  result = [a2 nextFocusedIndexPath];
  if (result)
  {
    v19 = result;
    sub_1E41FE804();

    v20 = *(v10 + 32);
    v20(v17, v13, v8);
    v21 = OUTLINED_FUNCTION_23_16();
    (v20)(v21);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    v22 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath;
    swift_beginAccess();
    sub_1E3C9C51C(v7, v2 + v22);
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_1E3E7643C()
{
  result = sub_1E41FE844();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionTableItems);
  if (result >= *(v2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *(**(v2 + 8 * result + 32) + 800);

  OUTLINED_FUNCTION_25();
  v3();
}

uint64_t sub_1E3E764F8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E41FE804();
  v12 = a3;
  v13 = a1;
  sub_1E3E7643C();

  return (*(v7 + 8))(v11, v5);
}

void sub_1E3E765F4()
{
  sub_1E3CA2E5C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3E766A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1E3E766E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3E76734@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v103 = a6;
  v104 = a4;
  HIDWORD(v101) = a5;
  v100 = a2;
  v102 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60);
  sub_1E42038E4();
  HIDWORD(v99) = LOBYTE(v115[0]);
  v98 = v115[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A9A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E4297BE0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 32) = MEMORY[0x1E69E7CC0];
  v12 = sub_1E4205CB4();
  v114 = a1;
  v13 = sub_1E32AE9B0(a1);
  v105 = a7;
  v106 = v10;
  if (v13)
  {
    v14 = v13;
    if (v13 >= 1)
    {
      v15 = 0;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = a1 & 0xC000000000000001;
      v111 = xmmword_1E4298880;
      v107 = a1 & 0xC000000000000001;
      v108 = v13;
      while (1)
      {
        if (v17)
        {
          v18 = MEMORY[0x1E6911E60](v15, v114);
        }

        else
        {
          v18 = *(v114 + 8 * v15 + 32);
        }

        if (a3 == 2 || (v115[3] = &unk_1F5D5D0A8, v115[4] = &off_1F5D5C758, LOBYTE(v115[0]) = 1, a1 = v18, v19 = sub_1E39C29A4(v115), v21 = v20, __swift_destroy_boxed_opaque_existential_1(v115), !v21))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
          v30 = swift_allocObject();
          OUTLINED_FUNCTION_68_28(v30, v31, v32, v33, v34, v35, v36, v37, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v111);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = OUTLINED_FUNCTION_27();
            v16 = sub_1E3E7CE18(v61, v62, v63, v16, &qword_1ECF39A28, &unk_1E42D55A0, &unk_1ECF2C790);
          }

          v39 = v16[2];
          v38 = v16[3];
          if (v39 >= v38 >> 1)
          {
            OUTLINED_FUNCTION_35(v38);
            OUTLINED_FUNCTION_54_35();
            v16 = sub_1E3E7CE18(v64, v65, v66, v16, &qword_1ECF39A28, &unk_1E42D55A0, &unk_1ECF2C790);
          }

          v16[2] = v39 + 1;
          v16[v39 + 4] = a1;
          goto LABEL_35;
        }

        if (!v12[2])
        {
          break;
        }

        v22 = OUTLINED_FUNCTION_75();
        a1 = v12;
        v24 = sub_1E327D33C(v22, v23);
        if ((v25 & 1) == 0)
        {
          break;
        }

        v26 = v24;

        v27 = *(v12[7] + 8 * v26);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v16 = sub_1E3E7CDD0(v16);
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_88;
          }
        }

        if (v27 >= v16[2])
        {
          goto LABEL_89;
        }

        v28 = &v16[v27];
        MEMORY[0x1E6910BF0]();
        v29 = *((v28[4] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v28[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v29 >> 1)
        {
          OUTLINED_FUNCTION_35(v29);
          sub_1E42062F4();
        }

        a1 = (v28 + 4);
        sub_1E4206324();

LABEL_35:
        if (v14 == ++v15)
        {
          goto LABEL_40;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_68_28(v40, v41, v42, v43, v44, v45, v46, v47, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v111);
      v109 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = OUTLINED_FUNCTION_27();
        v16 = sub_1E3E7CE18(v67, v68, v69, v16, &qword_1ECF39A28, &unk_1E42D55A0, &unk_1ECF2C790);
      }

      v49 = v16[2];
      v48 = v16[3];
      if (v49 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_35(v48);
        OUTLINED_FUNCTION_54_35();
        v16 = sub_1E3E7CE18(v70, v71, v72, v16, &qword_1ECF39A28, &unk_1E42D55A0, &unk_1ECF2C790);
      }

      v16[2] = v49 + 1;
      v16[v49 + 4] = a1;
      swift_isUniquelyReferenced_nonNull_native();
      v115[0] = v12;
      v50 = sub_1E327D33C(v19, v21);
      if (__OFADD__(v12[2], (v51 & 1) == 0))
      {
        goto LABEL_86;
      }

      v52 = v50;
      v53 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4E8);
      a1 = v115;
      v54 = sub_1E4207644();
      v12 = v115[0];
      if (v54)
      {
        a1 = v115[0];
        v55 = sub_1E327D33C(v109, v21);
        if ((v53 & 1) != (v56 & 1))
        {
          goto LABEL_91;
        }

        v52 = v55;
        if ((v53 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((v53 & 1) == 0)
      {
LABEL_30:
        v12[(v52 >> 6) + 8] |= 1 << v52;
        v57 = (v12[6] + 16 * v52);
        *v57 = v109;
        v57[1] = v21;
        *(v12[7] + 8 * v52) = v49;
        v58 = v12[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_87;
        }

        v12[2] = v60;
        goto LABEL_34;
      }

      *(v12[7] + 8 * v52) = v49;

LABEL_34:

      v17 = v107;
      v14 = v108;
      goto LABEL_35;
    }
  }

  else
  {
    v16 = v11;
LABEL_40:

    v112 = v16[2];
    if (!v112)
    {

      v74 = v106;
LABEL_67:
      v93 = sub_1E32AE9B0(v114);
      v94 = 0;
      do
      {
        v95 = v94;
        if (v93 == v94)
        {
          break;
        }

        if ((v114 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v94, v114);
        }

        else
        {
          if (v94 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }
        }

        if (__OFADD__(v95, 1))
        {
          goto LABEL_84;
        }

        if (sub_1E3E77A50(3))
        {

          break;
        }

        v96 = sub_1E3E77A50(2);

        v94 = v95 + 1;
      }

      while ((v96 & 1) == 0);

      *v102 = v114;
      *(v102 + 8) = v100;
      *(v102 + 16) = a3;
      *(v102 + 24) = v74;
      *(v102 + 32) = v93 != v95;
      *(v102 + 40) = v103;
      *(v102 + 48) = v105;
      *(v102 + 56) = v104;
      *(v102 + 64) = BYTE4(v101) & 1;
      *(v102 + 72) = BYTE4(v99);
      *(v102 + 80) = v98;
      return result;
    }

    v73 = 0;
    v110 = v16 + 4;
    v74 = v106;
    while (1)
    {
      if (v73 >= v16[2])
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v75 = v74[2];
      if (!v75)
      {
        goto LABEL_82;
      }

      v76 = v110[v73];
      if (*(v74[v75 + 3] + 16))
      {
        break;
      }

LABEL_60:
      v82 = v74 + 3;
      v83 = v74[v75 + 3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74[v75 + 3] = v83;
      v85 = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = OUTLINED_FUNCTION_27();
        v83 = sub_1E3E7CE18(v88, v89, v90, v83, &qword_1ECF39A28, &unk_1E42D55A0, &unk_1ECF2C790);
        v82[v75] = v83;
      }

      v87 = v83[2];
      v86 = v83[3];
      if (v87 >= v86 >> 1)
      {
        v91 = OUTLINED_FUNCTION_35(v86);
        v83 = sub_1E3E7CE18(v91, v87 + 1, 1, v83, &qword_1ECF39A28, &unk_1E42D55A0, &unk_1ECF2C790);
        v82[v75] = v83;
      }

      ++v73;
      v83[2] = v87 + 1;
      v83[v87 + 4] = v76;
      v74 = v85;
      if (v73 == v112)
      {

        goto LABEL_67;
      }
    }

    v77 = sub_1E32AE9B0(v110[v73]);

    for (i = 0; v77 != i; ++i)
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](i, v76);
      }

      else
      {
        if (i >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v79 = sub_1E39C408C(23);

      if (v79)
      {

        v81 = v74[2];
        v80 = v74[3];
        v75 = v81 + 1;
        if (v81 >= v80 >> 1)
        {
          v92 = OUTLINED_FUNCTION_35(v80);
          v74 = sub_1E3E7CE18(v92, v81 + 1, 1, v74, &qword_1ECF3A9A0, &unk_1E42D8630, &qword_1ECF3A920);
        }

        v74[2] = v75;
        v74[v81 + 4] = MEMORY[0x1E69E7CC0];
        goto LABEL_60;
      }
    }

    v75 = v74[2];
    if (v75)
    {
      goto LABEL_60;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  __break(1u);
LABEL_91:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E3E76FD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A768) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  sub_1E3E771C0();
  v8 = swift_allocObject();
  memcpy((v8 + 16), v2, 0x58uLL);
  v9 = &v7[*(v4 + 44)];
  *v9 = sub_1E3E777E8;
  v9[1] = v8;
  sub_1E3E77840(v2, v25);
  OUTLINED_FUNCTION_8();
  (*(v10 + 152))(v25);
  v11 = v25[1];
  v12 = v25[2];
  v13 = v26;
  if ((v26 & 1) == 0)
  {
    v28 = *(v2 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8F8);
    sub_1E42038F4();
    if (v27 == 2 || (v27 & 1) == 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  LOBYTE(v25[0]) = v13;
  if (v13)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v14.n128_f64[0] = OUTLINED_FUNCTION_75_22();
    j_nullsub_1(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_18_3();
  v19 = v18;
  v21 = v20;
  v22 = sub_1E4202734();
  sub_1E329E454(v7, a1, &qword_1ECF3A768);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A770);
  v24 = a1 + *(result + 36);
  *v24 = v22;
  *(v24 + 8) = v11;
  *(v24 + 16) = v12;
  *(v24 + 24) = v19;
  *(v24 + 32) = v21;
  *(v24 + 40) = 0;
  return result;
}

void sub_1E3E771C0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A828);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A900);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A7C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_5();
  v14 = *(v3 + 16) - 1;
  v15 = *(v3 + 16) != 1;
  v50 = v16;
  v51 = v6;
  if (v14 == 1 || !v15)
  {
    OUTLINED_FUNCTION_8();
    *v1 = (*(v17 + 1152))();
    *(v1 + 8) = v18 & 1;
    v49 = *(v12 + 44);
    v19 = v3[3];
    v52 = v19;
    v53 = *(v3 + 32);
    v20 = *(v19 + 16);
    swift_bridgeObjectRetain_n();
    v21 = sub_1E3E7D524(0, v20, v19);
    sub_1E3E7D7F8(&v52);
    v57 = v21;
    swift_getKeyPath();
    OUTLINED_FUNCTION_71_4();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    memcpy((v22 + 24), v3, 0x58uLL);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1E3E7D828;
    *(v23 + 24) = v22;
    sub_1E3E77840(v3, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A908);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A7F8);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v24, &qword_1ECF3A908);
    sub_1E3E786FC();
    sub_1E4203B34();
    v25 = &qword_1ECF3A7C8;
    sub_1E3294EE4(v1, v11, &qword_1ECF3A7C8);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_118();
    sub_1E3E785C8(v26, &qword_1ECF3A7C8, &unk_1E42D80F0, v27);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v28, v29);
    sub_1E4201F44();
    v30 = v1;
LABEL_13:
    sub_1E325F6F0(v30, v25);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v31 = sub_1E4201B64();
  v32 = *v3;
  v33 = sub_1E32AE9B0(*v3);
  v48[2] = v5;
  v48[1] = v8;
  if (!v33)
  {
    goto LABEL_11;
  }

  if ((v32 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v32);
LABEL_7:
    OUTLINED_FUNCTION_8();
    v35 = (*(v34 + 392))();

    if (v35)
    {
      (*(*v35 + 152))(&v52, v36);

      v37 = v54;
      v38 = v55;
      if (v55)
      {
        v37 = 0;
      }

      goto LABEL_12;
    }

LABEL_11:
    v37 = 0;
    v38 = 1;
LABEL_12:
    *v0 = v31;
    *(v0 + 8) = v37;
    *(v0 + 16) = v38 & 1;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A988) + 44);
    v57 = sub_1E3E7D524(0, *(v3[3] + 16), v3[3]);
    swift_getKeyPath();
    v39 = swift_allocObject();
    memcpy((v39 + 16), v3, 0x58uLL);
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1E3E7DE60;
    *(v40 + 24) = v39;
    sub_1E3E77840(v3, v56);
    v41 = OUTLINED_FUNCTION_27_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A990);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v42, &qword_1ECF3A908);
    sub_1E3E785C8(&qword_1ECF3A998, &qword_1ECF3A990, &unk_1E42D8628, sub_1E3E786FC);
    sub_1E4203B34();
    v25 = &qword_1ECF3A828;
    sub_1E3294EE4(v0, v11, &qword_1ECF3A828);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_118();
    sub_1E3E785C8(v43, v44, v45, v46);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v47, &qword_1ECF3A828);
    sub_1E4201F44();
    v30 = v0;
    goto LABEL_13;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1E3E77878()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    result = sub_1E4207384();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 392))();

  if (!v4)
  {
    return 0;
  }

  (*(*v4 + 152))(v6, v5);

  if (v7)
  {
    return 0;
  }

  else
  {
    return v6[3];
  }
}

uint64_t sub_1E3E77990(uint64_t a1, uint64_t a2)
{
  if (sub_1E3E77A50(3))
  {
    v4 = *(v2 + 48);
  }

  else
  {
    v4 = 0;
  }

  if (sub_1E3E77A50(2))
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v2 + 16) == 1 && a2 == 0;
  if (!v6 || *(*(v2 + 24) + 16) < 2uLL)
  {
    v7 = 0;
    if (!v4)
    {
      return v7;
    }

LABEL_16:

    return v7;
  }

  v7 = v4;
  if (v4)
  {
    goto LABEL_16;
  }

  return v5;
}

uint64_t sub_1E3E77A50(char a1)
{
  v4[3] = &unk_1F5D5D0A8;
  v4[4] = &off_1F5D5C758;
  LOBYTE(v4[0]) = a1;
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E39C29F0(v4, v1 & 1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

void sub_1E3E77AB0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v31 = v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A960);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A978);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A950);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_5();
  v20 = *v8;
  if (sub_1E32AE9B0(v20) <= 1)
  {
    v33 = v20;
    swift_getKeyPath();
    OUTLINED_FUNCTION_71_4();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_87_14(v24);
    *(v2 + 104) = v4;

    sub_1E3E77840(v6, v32);
    v25 = OUTLINED_FUNCTION_13_26();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v26, &unk_1ECF2C790);
    sub_1E375BEF4();
    sub_1E3E7DC40();
    OUTLINED_FUNCTION_86_14();
    (*(v18 + 16))(v15, v0, v16);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    sub_1E3E7DBBC();
    sub_1E3E7DC94();
    sub_1E4201F44();
    v27 = OUTLINED_FUNCTION_45_1();
    v28(v27);
  }

  else
  {
    sub_1E4201B64();
    *v12 = sub_1E4201B54() & 1;
    *(v12 + 1) = 0;
    v12[16] = 1;
    v29[1] = *(v30 + 44);
    v33 = v20;
    swift_getKeyPath();
    OUTLINED_FUNCTION_71_4();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_87_14(v21);
    *(v2 + 104) = v4;

    sub_1E3E77840(v6, v32);
    v22 = OUTLINED_FUNCTION_13_26();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v23, &unk_1ECF2C790);
    sub_1E375BEF4();
    sub_1E3E7DC40();
    OUTLINED_FUNCTION_86_14();
    sub_1E3294EE4(v12, v15, &qword_1ECF3A960);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    sub_1E3E7DBBC();
    sub_1E3E7DC94();
    sub_1E4201F44();
    sub_1E325F6F0(v12, &qword_1ECF3A960);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E77EB8()
{
  sub_1E3E7D4D0();
  result = sub_1E4201B94();
  qword_1ECF71738 = result;
  return result;
}

uint64_t *sub_1E3E77EE8()
{
  if (qword_1ECF65C70 != -1)
  {
    OUTLINED_FUNCTION_8_161();
  }

  return &qword_1ECF71738;
}

void *sub_1E3E77F60(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  if (v5 != 2)
  {
    if (v5)
    {
      v4 = (*a1 == 2) | *a1;
    }

    else
    {
      v4 = 0;
    }

    *a1 = v4 & 1;
  }

  return result;
}

uint64_t sub_1E3E77FC8@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_70_25();
  result = swift_beginAccess();
  *a1 = byte_1ECF3A760;
  return result;
}

uint64_t sub_1E3E78010@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_70_25();
  result = swift_beginAccess();
  *a1 = byte_1ECF3A761;
  return result;
}

unint64_t sub_1E3E78070()
{
  result = qword_1ECF65C78;
  if (!qword_1ECF65C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF65C78);
  }

  return result;
}

unint64_t sub_1E3E780C8()
{
  result = qword_1ECF3A778;
  if (!qword_1ECF3A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A778);
  }

  return result;
}

unint64_t sub_1E3E78134(uint64_t a1)
{
  result = sub_1E3E7815C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3E7815C()
{
  result = qword_1ECF3A780;
  if (!qword_1ECF3A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A780);
  }

  return result;
}

unint64_t sub_1E3E781B0(uint64_t a1)
{
  result = sub_1E3E781D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3E781D8()
{
  result = qword_1ECF3A788;
  if (!qword_1ECF3A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A788);
  }

  return result;
}

_BYTE *sub_1E3E78238(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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

unint64_t sub_1E3E7831C()
{
  result = qword_1ECF3A790;
  if (!qword_1ECF3A790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A770);
    sub_1E3E783A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A790);
  }

  return result;
}

unint64_t sub_1E3E783A8()
{
  result = qword_1ECF3A798;
  if (!qword_1ECF3A798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A768);
    sub_1E3E78460();
    sub_1E32752B0(&qword_1ECF3A830, &qword_1ECF3A838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A798);
  }

  return result;
}

unint64_t sub_1E3E78460()
{
  result = qword_1ECF3A7A0;
  if (!qword_1ECF3A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A7A8);
    sub_1E3E784E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A7A0);
  }

  return result;
}

unint64_t sub_1E3E784E4()
{
  result = qword_1ECF3A7B0;
  if (!qword_1ECF3A7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A7B8);
    sub_1E3E785C8(&qword_1ECF3A7C0, &qword_1ECF3A7C8, &unk_1E42D80F0, sub_1E3E78678);
    sub_1E32752B0(&qword_1ECF3A820, &qword_1ECF3A828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A7B0);
  }

  return result;
}

uint64_t sub_1E3E785C8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1E32752B0(&qword_1ECF3A7D0, &qword_1ECF3A7D8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3E78678()
{
  result = qword_1ECF3A7E0;
  if (!qword_1ECF3A7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A7E8);
    sub_1E3E786FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A7E0);
  }

  return result;
}

unint64_t sub_1E3E786FC()
{
  result = qword_1ECF3A7F0;
  if (!qword_1ECF3A7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A7F8);
    sub_1E32752B0(&qword_1ECF3A800, &qword_1ECF3A808);
    sub_1E32752B0(&qword_1ECF3A810, &qword_1ECF3A818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A7F0);
  }

  return result;
}

unint64_t sub_1E3E787E0()
{
  result = qword_1ECF66000[0];
  if (!qword_1ECF66000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF66000);
  }

  return result;
}

uint64_t sub_1E3E78834(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 9))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3E7887C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E3E78910(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_13_147(result, a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3E789E0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *a1;
    v4 = v3 >= 2;
    v5 = v3 - 2;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

_BYTE *sub_1E3E78A18(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    result[16] = 0;
    *result = a2 - 255;
    *(result + 1) = 0;
    if (a3 >= 0xFF)
    {
      result[17] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      result[17] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_13_147(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3E78A68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 74))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3E78AA4(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 36) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 74) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3E78AFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_17_7(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ButtonDisclaimerVStack(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

void sub_1E3E78B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A840);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_42_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A848);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  if (v24)
  {
    if (qword_1ECF65C70 != -1)
    {
      OUTLINED_FUNCTION_8_161();
    }

    v32 = qword_1ECF71738;
    v33 = OUTLINED_FUNCTION_39_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33);
    OUTLINED_FUNCTION_2();
    v34 = OUTLINED_FUNCTION_124();
    v35(v34);
    v36 = &v31[*(v28 + 36)];
    *v36 = v32;
    v36[1] = sub_1E3E77F28;
    v36[2] = 0;
    v37 = OUTLINED_FUNCTION_138_0();
    sub_1E3294EE4(v37, v38, &qword_1ECF3A848);
    swift_storeEnumTagMultiPayload();
    sub_1E3E7CD00();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v39, &qword_1ECF3A850);
    OUTLINED_FUNCTION_31_64();
    sub_1E4201F44();
    v40 = OUTLINED_FUNCTION_124();
    sub_1E325F6F0(v40, v41);
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A850);
    OUTLINED_FUNCTION_2();
    (*(v43 + 16))(v20, v26, v42);
    OUTLINED_FUNCTION_54_35();
    swift_storeEnumTagMultiPayload();
    sub_1E3E7CD00();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v44, &qword_1ECF3A850);
    OUTLINED_FUNCTION_31_64();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E78DB0()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A868);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A870);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_3();
  if (*(v0 + 16) || *(v0 + 24))
  {
    if (*(v0 + 40))
    {
      v5 = *(v0 + 72);
      v6 = *(v0 + 56);
      v7 = *(v0 + 64);
      v8 = *(v0 + 48);
      v11 = 0;
      LOBYTE(v12) = 0;
      v13 = v8;
      v14 = v6 & 1;
      v15 = v7;
      v16 = v5 & 1;
      sub_1E3E7D298();
    }

    else
    {
      v11 = sub_1E4201D44();
      v12 = 0;
      LOBYTE(v13) = 0;
      sub_1E37E65E0();
    }

    *v2 = sub_1E4203E84();

    sub_1E3E79160();

    sub_1E3294EE4(v2, v1, &qword_1ECF3A868);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A878);
    sub_1E3E7D068();
    sub_1E3E7D0F4();
    OUTLINED_FUNCTION_53_39();
    sub_1E4201F44();
    v9 = v2;
    v10 = &qword_1ECF3A868;
  }

  else
  {
    sub_1E3E79008(&v11);
    v17 = *(v0 + 73) & 1;
    sub_1E3294EE4(&v11, v1, &qword_1ECF3A878);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A878);
    sub_1E3E7D068();
    sub_1E3E7D0F4();
    OUTLINED_FUNCTION_53_39();
    sub_1E4201F44();
    v9 = &v11;
    v10 = &qword_1ECF3A878;
  }

  sub_1E325F6F0(v9, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E79008(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_retain_n();
  v5 = v1[1];
  if (!v5)
  {
    if ((*(*v3 + 392))(v4))
    {
      type metadata accessor for ButtonLayout();
      v5 = swift_dynamicCastClass();
      if (!v5)
      {
      }
    }

    else
    {
      v5 = 0;
    }
  }

  memset(v9, 0, sizeof(v9));
  v10 = 2;
  v11 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 1;
  v15 = 0;

  v8[3] = &unk_1F5D89BC0;
  v8[4] = &off_1F5D89D80;
  v8[0] = v3;
  v6 = sub_1E383C8A8();
  v7 = sub_1E383C8B0();
  sub_1E383C8FC(v3, v5, v9, v7, &v12, 0, 1, v8, a1, v6);
}

void sub_1E3E79160()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v67 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8A0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v63 = v7 - v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v62 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8A8);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v65 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8B0);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v61 = v17 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58[-v20];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8B8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v60 = v23 - v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_28_6();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8C8);
  v35 = OUTLINED_FUNCTION_17_2(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  v64 = v36 - v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25_3();
  v69 = v39;
  v40 = *(v3 + 16);
  v66 = v1;
  if (v40)
  {
    v59 = v5;

    sub_1E3E79840(v21);
    sub_1E4203D94();
    OUTLINED_FUNCTION_38_51();

    sub_1E329E454(v21, v27, &qword_1ECF3A8B0);
    memcpy(&v27[*(v68 + 36)], v72, 0x70uLL);
    v41 = OUTLINED_FUNCTION_34();
    sub_1E329E454(v41, v42, v43);
    *(v32 + *(v28 + 36)) = 1;
    sub_1E329E454(v32, v0, &qword_1ECF3A8C0);
    v44 = v0;
    v45 = v69;
    sub_1E329E454(v44, v69, &qword_1ECF3A8C0);
    v46 = 0;
    v5 = v59;
  }

  else
  {
    v46 = 1;
    v45 = v69;
  }

  v47 = 1;
  __swift_storeEnumTagSinglePayload(v45, v46, 1, v28);
  sub_1E3E79008(v71);
  v71[248] = *(v3 + 73) & 1;
  if (*(v3 + 24))
  {

    v48 = v61;
    sub_1E3E79840(v61);
    sub_1E4203D84();
    OUTLINED_FUNCTION_38_51();

    v49 = v60;
    sub_1E329E454(v48, v60, &qword_1ECF3A8B0);
    memcpy((v49 + *(v68 + 36)), v73, 0x70uLL);
    v50 = v63;
    sub_1E329E454(v49, v63, &qword_1ECF3A8B8);
    *(v50 + *(v5 + 36)) = 1;
    v51 = v50;
    v52 = v62;
    sub_1E329E454(v51, v62, &qword_1ECF3A8A0);
    v53 = v65;
    sub_1E329E454(v52, v65, &qword_1ECF3A8A0);
    v47 = 0;
  }

  else
  {
    v53 = v65;
  }

  __swift_storeEnumTagSinglePayload(v53, v47, 1, v5);
  v54 = v64;
  sub_1E3294EE4(v45, v64, &qword_1ECF3A8C8);
  sub_1E3294EE4(v71, v70, &qword_1ECF3A878);
  v55 = v66;
  sub_1E3294EE4(v53, v66, &qword_1ECF3A8A8);
  v56 = v67;
  sub_1E3294EE4(v54, v67, &qword_1ECF3A8C8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8D0);
  sub_1E3294EE4(v70, v56 + *(v57 + 48), &qword_1ECF3A878);
  sub_1E3294EE4(v55, v56 + *(v57 + 64), &qword_1ECF3A8A8);
  sub_1E325F6F0(v53, &qword_1ECF3A8A8);
  sub_1E325F6F0(v71, &qword_1ECF3A878);
  sub_1E325F6F0(v69, &qword_1ECF3A8C8);
  sub_1E325F6F0(v55, &qword_1ECF3A8A8);
  sub_1E325F6F0(v70, &qword_1ECF3A878);
  sub_1E325F6F0(v54, &qword_1ECF3A8C8);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3E79840@<X0>(uint64_t a1@<X8>)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8D8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28[-1] - v8;
  v10 = *(v1 + 32);
  if (!v10)
  {
    if (sub_1E3C27528())
    {
      type metadata accessor for TextLayout();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
      }
    }

    else
    {
      v10 = 0;
    }
  }

  sub_1E3E79A0C(v4);
  if (v10 && (OUTLINED_FUNCTION_8(), v12 = *(v11 + 152), v13 = , v12(v28, v13), v2 = v28[0], v3 = v28[1], v14 = v28[2], v15 = v28[3], , (v29 & 1) == 0))
  {
    v16.n128_u64[0] = v2;
    v17.n128_u64[0] = v3;
    v18.n128_u64[0] = v14;
    v19.n128_u64[0] = v15;
    j_nullsub_1(v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_18_3();
  v21 = v20;
  v23 = v22;
  v24 = sub_1E4202734();

  sub_1E329E454(v9, a1, &qword_1ECF3A8D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8B0);
  v26 = a1 + *(result + 36);
  *v26 = v24;
  *(v26 + 8) = v2;
  *(v26 + 16) = v3;
  *(v26 + 24) = v21;
  *(v26 + 32) = v23;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_1E3E79A0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_42_1();
  type metadata accessor for FittedTextView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  LOBYTE(a1) = *(a1 + 40);

  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_124();
  if (a1)
  {
    sub_1E3C131D0(v8, v9, v10, v11);
    sub_1E3E7D1D8(v7, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21_94();
    sub_1E3E7DAE8(v12, v13);
    sub_1E3BD9530();
    OUTLINED_FUNCTION_31_64();
    sub_1E4201F44();
    return sub_1E3E7D23C(v7);
  }

  else
  {
    sub_1E3FAC790(v8, v9, v10, v11);
    *v1 = v17;
    v1[1] = *v18;
    *(v1 + 25) = *&v18[9];
    OUTLINED_FUNCTION_54_35();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21_94();
    sub_1E3E7DAE8(v15, v16);
    sub_1E3BD9530();
    OUTLINED_FUNCTION_31_64();
    return sub_1E4201F44();
  }
}

uint64_t sub_1E3E79BE8(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  [a5 intrinsicContentSize];
  if ((a2 & 1) == 0)
  {
    v10 = *&a1;
  }

  if ((a4 & 1) == 0)
  {
    v11 = *&a3;
  }

  sub_1E3C8B764(0, v10, v11);
  OUTLINED_FUNCTION_18_3();
  if (sub_1E39C408C(23))
  {

    v12 = 0.0;
    if ((a2 & 1) == 0)
    {
      v12 = *&a1;
    }

    if (v5 <= v12)
    {
      v5 = v12;
    }
  }

  return *&v5;
}

uint64_t sub_1E3E79CD8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  result = sub_1E3A79350();
  if ((result & 1) == 0)
  {
    sub_1E3A7992C();
    OUTLINED_FUNCTION_109();
    MEMORY[0x1EEE9AC00](v12);
    OUTLINED_FUNCTION_30_68();
    *(v13 - 32) = a3;
    *(v13 - 24) = a4 & 1;
    *(v13 - 16) = a5;
    *(v13 - 8) = a6 & 1;
    v18 = OUTLINED_FUNCTION_64_26(v14, v15, v16, v17);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 32);
      v21 = 0.0;
      do
      {
        v22 = *v20++;
        v21 = v21 + v22;
        --v19;
      }

      while (v19);
    }

    if ((a2 & 1) == 0)
    {
      sub_1E4201044();
      OUTLINED_FUNCTION_0_269();
      sub_1E3E7DAE8(v23, v24);
      sub_1E42066B4();
      sub_1E4206724();
      OUTLINED_FUNCTION_57_30();
      sub_1E4206714();
    }

    OUTLINED_FUNCTION_16_0();
    sub_1E3E79ECC();
    sub_1E4201044();
    OUTLINED_FUNCTION_0_269();
    sub_1E3E7DAE8(v25, v26);
    OUTLINED_FUNCTION_27_0();
    sub_1E42066B4();
    OUTLINED_FUNCTION_27_0();
    sub_1E4206724();
    OUTLINED_FUNCTION_57_30();
    return sub_1E4206714();
  }

  return result;
}

void sub_1E3E79ECC()
{
  OUTLINED_FUNCTION_93();
  v28 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v6 = sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  v9 = sub_1E3E7DAE8(v7, v8);
  v10 = sub_1E42066D4();
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v10;
    v29 = MEMORY[0x1E69E7CC0];
    v13 = OUTLINED_FUNCTION_55_41();
    sub_1E3A79F84(v13, v14, v15);
    v11 = v29;
    sub_1E42066B4();
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    do
    {
      v16 = sub_1E4206764();
      v17 = v9;
      v18 = v6;
      (*(v4 + 16))(v0);
      v19 = OUTLINED_FUNCTION_28_73();
      v16(v19);
      sub_1E4200EF4();
      OUTLINED_FUNCTION_18_3();
      (*(v4 + 8))(v0, v28);
      v21 = *(v29 + 16);
      v20 = *(v29 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_35(v20);
        sub_1E3A79F84(v23, v21 + 1, 1);
      }

      *(v29 + 16) = v21 + 1;
      v22 = v29 + 16 * v21;
      *(v22 + 32) = v1;
      *(v22 + 40) = v2;
      sub_1E4206734();
      --v12;
      v6 = v18;
      v9 = v17;
    }

    while (v12);
  }

  v24 = *(v11 + 16);
  if (v24)
  {
    v25 = (v11 + 32);
    v26 = 0uLL;
    do
    {
      v27 = *v25++;
      v26 = vbslq_s8(vcgeq_f64(v27, v26), v27, v26);
      --v24;
    }

    while (v24);
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3E7A14C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = OUTLINED_FUNCTION_34_64();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  result = sub_1E3A79350();
  if ((result & 1) == 0)
  {
    sub_1E3A7992C();
    OUTLINED_FUNCTION_109();
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_30_68();
    *(v15 - 32) = a1;
    *(v15 - 24) = a2 & 1;
    *(v15 - 16) = a3;
    *(v15 - 8) = a4 & 1;
    v20 = OUTLINED_FUNCTION_64_26(v16, v17, v18, v19);
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      v23 = (v20 + 32);
      v24 = 0.0;
      do
      {
        v25 = *v23++;
        v24 = v24 + v25;
        --v22;
      }

      while (v22);
    }

    v41.origin.x = OUTLINED_FUNCTION_2_0();
    CGRectGetWidth(v41);
    sub_1E4201044();
    OUTLINED_FUNCTION_0_269();
    sub_1E3E7DAE8(v26, v27);
    sub_1E42066B4();
    sub_1E4206724();
    sub_1E4206714();
    sub_1E3E79ECC();
    v29 = v28;
    v42.origin.x = OUTLINED_FUNCTION_2_0();
    MinX = CGRectGetMinX(v42);
    v31 = OUTLINED_FUNCTION_2_0();
    if (a2)
    {
      CGRectGetMinY(*&v31);
      sub_1E4203F34();
    }

    else
    {
      CGRectGetMaxY(*&v31);
      sub_1E4203F54();
    }

    result = sub_1E3A7992C();
    if (result == v35)
    {
    }

    v36 = result;
    v37 = v35;
    if (v35 < result)
    {
      __break(1u);
    }

    else if (result < v35)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        v38 = *(v21 + 16);
        if (result < v38 && v35 - 1 < v38)
        {
          v40 = MinX + v29 * 0.5;
          do
          {
            sub_1E4201054();
            OUTLINED_FUNCTION_75_22();
            sub_1E4200F04();
            (*(v11 + 8))(v4, v9);
            v40 = v40 + v29 + *(v21 + 32 + 8 * v36++);
          }

          while (v37 != v36);
        }

LABEL_23:
        __break(1u);
        return result;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

  return result;
}

void sub_1E3E7A460()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_52_42(v4, v5, v6);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_6();
  v9 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v21 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_93_0();
  v13 = *v1;
  sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  sub_1E3E7DAE8(v14, v15);
  OUTLINED_FUNCTION_51_38();
  OUTLINED_FUNCTION_45_1();
  sub_1E42066B4();
  OUTLINED_FUNCTION_45_1();
  sub_1E4206724();
  OUTLINED_FUNCTION_57_30();
  v16 = sub_1E4206714();
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    if (v13 >= v16 - 1)
    {
      *v24 = 0;
    }

    else if (v23)
    {
      sub_1E4201054();
      sub_1E4200F14();
      v17 = *(v21 + 8);
      v18 = OUTLINED_FUNCTION_13_26();
      v17(v18);
      sub_1E4201054();
      sub_1E4200F14();
      (v17)(v2, v9);
      sub_1E4200C54();
      v19 = OUTLINED_FUNCTION_16_125();
      v0(v19);
      v20 = OUTLINED_FUNCTION_138_0();
      v0(v20);
      *v24 = v3;
    }

    else
    {
      *v24 = v22;
    }

    OUTLINED_FUNCTION_54_0();
  }
}

void (*sub_1E3E7A76C())(void *)
{
  v1 = OUTLINED_FUNCTION_32_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *(v0 + 32) = OUTLINED_FUNCTION_39_53(v2);
  return sub_1E37C55D4;
}

uint64_t sub_1E3E7A7C4(uint64_t a1, char a2, uint64_t a3)
{
  result = sub_1E3A79350();
  if ((result & 1) == 0)
  {
    sub_1E3E7A918(a3, a1, a2 & 1);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = (v8 + 32);
      v11 = 0.0;
      do
      {
        v12 = *v10++;
        v11 = v11 + v12;
        --v9;
      }

      while (v9);
    }

    sub_1E3A7992C();
    OUTLINED_FUNCTION_109();
    MEMORY[0x1EEE9AC00](v13);
    v22[2] = a3;
    v22[3] = v3;
    v17 = OUTLINED_FUNCTION_64_26(v14, v22, v15, v16);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 32);
      v20 = 0.0;
      do
      {
        v21 = *v19++;
        v20 = v20 + v21;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

uint64_t sub_1E3E7A918(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v88) = a3;
  v87 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v86 = (v8 - v9);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v85 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E50);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  v95 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v91 = v17 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35_3();
  v24 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v27 = *(v26 + 16);
  v90 = a1;
  v83 = v26 + 16;
  v81 = v27;
  v27(v3, a1, v24);
  v28 = MEMORY[0x1E697E3C0];
  sub_1E3E7DAE8(&qword_1EE289D90, MEMORY[0x1E697E3C0]);
  sub_1E4206194();
  v29 = *(v22 + 44);
  OUTLINED_FUNCTION_20_103();
  sub_1E3E7DAE8(v30, v28);
  v94 = (v15 + 16);
  v80[1] = v15;
  v89 = (v15 + 32);
  v92 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    OUTLINED_FUNCTION_114_1();
    sub_1E4206724();
    if (*(v4 + v29) == v104)
    {
      break;
    }

    v31 = sub_1E4206764();
    v32 = v95;
    (*v94)(v21);
    v31(&v104, 0);
    sub_1E4206734();
    sub_1E3E78070();
    sub_1E4200F44();
    if (v104 == 1)
    {
      v80[0] = *v89;
      (v80[0])(v91, v21, v32);
      v35 = v92;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98[0] = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3E7D014(0, *(v35 + 16) + 1, 1);
        v35 = v98[0];
      }

      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v42 = OUTLINED_FUNCTION_35(v37);
        v92 = v43;
        sub_1E3E7D014(v42, v43, 1);
        v39 = v92;
        v35 = v98[0];
      }

      *(v35 + 16) = v39;
      OUTLINED_FUNCTION_81();
      v92 = v35;
      (v80[0])(v35 + v40 + *(v41 + 72) * v38, v91);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_34();
      v34(v33);
    }
  }

  sub_1E325F6F0(v4, &qword_1ECF30E58);
  if ((v87 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v44 = v87;
  }

  else
  {
    v44 = 0;
  }

  if (v88)
  {
    v44 = v87;
  }

  v100 = v44;
  v101 = v88 & 1 | ((v87 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  v102 = 0;
  v103 = 1;
  v45 = v90;
  sub_1E3E7B428();
  v47 = v46;
  v49 = v48;

  v88 = v47;
  v100 = v47;
  LODWORD(v87) = v49;
  v101 = v49 & 1;
  v81(v5, v45, v24);
  OUTLINED_FUNCTION_33_67();
  v50 = sub_1E42066D4();
  if (!v50)
  {
LABEL_44:
    sub_1E325F6F0(v5, &qword_1ECF30E50);
    return v88;
  }

  v51 = v50;
  v99 = MEMORY[0x1E69E7CC0];
  v52 = OUTLINED_FUNCTION_55_41();
  sub_1E3887DC4(v52, v53, v54);
  v55 = v99;
  OUTLINED_FUNCTION_33_67();
  result = sub_1E42066B4();
  if (v51 < 0)
  {
    goto LABEL_51;
  }

  v57 = 0;
  v83 = v51 - 1;
  v84 = v5;
  v58 = v104;
  while (1)
  {
    v59 = *(v93 + 48);
    v97 = v58;
    OUTLINED_FUNCTION_33_67();
    result = sub_1E42066B4();
    if (v58 < v96[0])
    {
      break;
    }

    OUTLINED_FUNCTION_33_67();
    result = sub_1E4206724();
    if (v58 >= v96[0])
    {
      goto LABEL_46;
    }

    v91 = v58;
    v92 = v55;
    v60 = sub_1E4206764();
    v61 = v95;
    v62 = v85;
    (*v94)((v85 + v59));
    v60(v96, 0);
    v63 = v86;
    *v86 = v57;
    v64 = v62 + v59;
    v65 = v63;
    (*v89)(v63 + *(v93 + 48), v64, v61);
    sub_1E3C1363C();
    sub_1E4200F44();
    memcpy(v98, v96, 0x51uLL);
    if (v98[2])
    {
      v104 = *v96;
      v105 = v98[2];
      v106 = *&v96[3];
      v107 = *&v96[5];
      v108[0] = *&v96[7];
      *(v108 + 9) = *(&v96[8] + 1);
      OUTLINED_FUNCTION_60_28();
      sub_1E3C12A78(v88, v66);
      v68 = v67;
      OUTLINED_FUNCTION_114_1();
      sub_1E42066B4();
      OUTLINED_FUNCTION_114_1();
      result = sub_1E4206724();
      if (v97 < v96[0])
      {
        goto LABEL_48;
      }

      v5 = v84;
      v69 = v91;
      v55 = v92;
      if (v96[0] == v97)
      {
        goto LABEL_26;
      }

      if (v96[0] >= v97)
      {
        goto LABEL_50;
      }

      if (v57 != v97 - 1)
      {
LABEL_26:
        OUTLINED_FUNCTION_114_1();
        sub_1E42066B4();
        OUTLINED_FUNCTION_114_1();
        sub_1E4206724();
        result = sub_1E325F6F0(v98, &qword_1ECF355A0);
        if (v97 < v96[0])
        {
          goto LABEL_49;
        }

        if (v96[0] == v97 || v57 != v96[0])
        {
LABEL_37:
          v73 = v68;
          goto LABEL_39;
        }

        v70 = *(v82 + 32);
        v71 = *(v82 + 40);
      }

      else
      {
        sub_1E325F6F0(v98, &qword_1ECF355A0);
        v70 = *(v82 + 16);
        v71 = *(v82 + 24);
      }

      if (v71)
      {
        v73 = 0.0;
      }

      else
      {
        v73 = v70;
      }

      if (v68 > v73)
      {
        goto LABEL_37;
      }
    }

    else
    {
      OUTLINED_FUNCTION_60_28();
      sub_1E4200EF4();
      v73 = v74;
      v5 = v84;
      v69 = v91;
      v55 = v92;
    }

LABEL_39:
    sub_1E325F6F0(v65, &qword_1ECF30E40);
    v99 = v55;
    v76 = *(v55 + 16);
    v75 = *(v55 + 24);
    if (v76 >= v75 >> 1)
    {
      OUTLINED_FUNCTION_35(v75);
      OUTLINED_FUNCTION_54_35();
      sub_1E3887DC4(v77, v78, v79);
      v55 = v99;
    }

    *(v55 + 16) = v76 + 1;
    *(v55 + 8 * v76 + 32) = v73;
    v97 = v69;
    result = sub_1E42066E4();
    if (v57 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_47;
    }

    if (v83 == v57)
    {
      goto LABEL_44;
    }

    v58 = v96[0];
    ++v57;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void sub_1E3E7B1F8()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v33 = OUTLINED_FUNCTION_34_64();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (sub_1E3A79350())
  {
    goto LABEL_15;
  }

  v30 = v5;
  sub_1E3A7992C();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v7);
  v29[2] = v3;
  v29[3] = v0;
  v11 = OUTLINED_FUNCTION_64_26(v8, v29, v9, v10);
  v35.origin.x = OUTLINED_FUNCTION_2_0();
  *&v12 = CGRectGetWidth(v35);
  v31 = sub_1E3E7A918(v3, v12, 0);
  v14 = v13;
  v16 = v15;
  v36.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinY(v36);
  v32 = v3;
  v17 = sub_1E3A7992C();
  if (v17 == v18)
  {
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_20_0();
    return;
  }

  v19 = v17;
  v20 = v18;
  if (v18 < v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v17 >= v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    v21 = *(v11 + 16);
    if (v17 >= v21 || v18 - 1 >= v21)
    {
      goto LABEL_21;
    }

    v23 = (v30 + 8);
    v24 = *(v16 + 16);
    v25 = (v16 + 8 * v17 + 32);
    v26 = v14 & 1;
    while (v19 < v24)
    {
      sub_1E4201054();
      v37.origin.x = OUTLINED_FUNCTION_2_0();
      CGRectGetMidX(v37);
      sub_1E4203F34();
      v34 = v26;
      OUTLINED_FUNCTION_58_31();
      sub_1E4200F04();
      (*v23)(v1, v33);
      if (v19 >= *(v16 + 16))
      {
        goto LABEL_17;
      }

      v27 = *v25++;
      OUTLINED_FUNCTION_41_56(v27);
      if (v20 == v28)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1E3E7B428()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v47 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_6();
  v10 = *(v2 + 16);
  if (v10)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E3887DC4(0, v10, 0);
    v11 = v50;
    v12 = v4 + 16;
    OUTLINED_FUNCTION_81();
    v14 = v2 + v13;
    v45 = *(v12 + 56);
    v46 = v15;
    v16 = (v12 - 8);
    for (i = v10 - 1; ; --i)
    {
      v46(v8, v14, v47);
      sub_1E3C1363C();
      sub_1E4200F44();
      memcpy(v49, v48, 0x51uLL);
      if (v49[2])
      {
        OUTLINED_FUNCTION_72_24(v49[2]);
        *(v18 + 24) = *&v48[3];
        *(v18 + 40) = *&v48[5];
        *(v18 + 56) = *&v48[7];
        *(v18 + 65) = *(&v48[8] + 1);
        v19 = OUTLINED_FUNCTION_29_83();
        LOBYTE(v48[0]) = v20;
        v21 = sub_1E3C12A78(v19, v20);
        sub_1E325F6F0(v49, &qword_1ECF355A0);
      }

      else
      {
        OUTLINED_FUNCTION_29_83();
        LOBYTE(v48[0]) = v22;
        sub_1E4200EF4();
        v21 = v23;
      }

      (*v16)(v8, v47);
      v50 = v11;
      v25 = *(v11 + 16);
      v24 = *(v11 + 24);
      if (v25 >= v24 >> 1)
      {
        v26 = OUTLINED_FUNCTION_35(v24);
        sub_1E3887DC4(v26, v25 + 1, 1);
        v11 = v50;
      }

      *(v11 + 16) = v25 + 1;
      *(v11 + 8 * v25 + 32) = v21;
      if (!i)
      {
        break;
      }

      v14 += v45;
    }

    sub_1E39AB6F8(v11);

    goto LABEL_20;
  }

  v27 = v4;
  sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  sub_1E3E7DAE8(v28, v29);
  OUTLINED_FUNCTION_39_0();
  v30 = sub_1E42066D4();
  v31 = MEMORY[0x1E69E7CC0];
  if (!v30)
  {
LABEL_19:
    sub_1E39AB6F8(v31);

LABEL_20:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v32 = v30;
  v50 = MEMORY[0x1E69E7CC0];
  v33 = OUTLINED_FUNCTION_55_41();
  sub_1E3887DC4(v33, v34, v35);
  v31 = v50;
  OUTLINED_FUNCTION_39_0();
  sub_1E42066B4();
  if ((v32 & 0x8000000000000000) == 0)
  {
    do
    {
      v36 = sub_1E4206764();
      (*(v27 + 16))(v0);
      v36(v49, 0);
      sub_1E3C1363C();
      sub_1E4200F44();
      memcpy(v49, v48, 0x51uLL);
      if (v49[2])
      {
        OUTLINED_FUNCTION_72_24(v49[2]);
        v51 = *&v48[3];
        v52 = *&v48[5];
        v53[0] = *&v48[7];
        *(v53 + 9) = *(&v48[8] + 1);
        v37 = OUTLINED_FUNCTION_29_83();
        LOBYTE(v48[0]) = v38;
        v39 = sub_1E3C12A78(v37, v38);
        sub_1E325F6F0(v49, &qword_1ECF355A0);
      }

      else
      {
        OUTLINED_FUNCTION_29_83();
        LOBYTE(v48[0]) = v40;
        sub_1E4200EF4();
        v39 = v41;
      }

      (*(v27 + 8))(v0, v47);
      v50 = v31;
      v43 = *(v31 + 16);
      v42 = *(v31 + 24);
      if (v43 >= v42 >> 1)
      {
        v44 = OUTLINED_FUNCTION_35(v42);
        sub_1E3887DC4(v44, v43 + 1, 1);
        v31 = v50;
      }

      *(v31 + 16) = v43 + 1;
      *(v31 + 8 * v43 + 32) = v39;
      sub_1E4206734();
      --v32;
    }

    while (v32);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1E3E7B8D0()
{
  OUTLINED_FUNCTION_93();
  v24 = v2;
  v25 = v3;
  v5 = v4;
  sub_1E4200C74();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_6();
  v8 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v23 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_93_0();
  v15 = *v5;
  sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  sub_1E3E7DAE8(v16, v17);
  OUTLINED_FUNCTION_51_38();
  sub_1E42066B4();
  sub_1E4206724();
  OUTLINED_FUNCTION_57_30();
  v18 = sub_1E4206714();
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    if (v15 >= v18 - 1)
    {
      *v25 = 0;
    }

    else if (*(v24 + 8))
    {
      sub_1E4201054();
      sub_1E4200F14();
      v19 = *(v23 + 8);
      v20 = OUTLINED_FUNCTION_13_26();
      v19(v20);
      sub_1E4201054();
      sub_1E4200F14();
      (v19)(v13, v8);
      sub_1E4200C54();
      v21 = OUTLINED_FUNCTION_16_125();
      v0(v21);
      v22 = OUTLINED_FUNCTION_138_0();
      v0(v22);
      *v25 = v1;
    }

    else
    {
      *v25 = *v24;
    }

    OUTLINED_FUNCTION_54_0();
  }
}

void (*sub_1E3E7BBF8())(void *)
{
  v1 = OUTLINED_FUNCTION_32_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *(v0 + 32) = OUTLINED_FUNCTION_39_53(v2);
  return sub_1E37C55D4;
}

uint64_t sub_1E3E7BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_1E3A79350();
  if ((result & 1) == 0)
  {
    v9 = a5 & 1;
    OUTLINED_FUNCTION_16_0();
    sub_1E3E7BDA0();
    v11 = *(v10 + 16);
    v12 = 0.0;
    if (v11)
    {
      v13 = (v10 + 32);
      do
      {
        v14 = *v13++;
        v12 = v12 + v14;
        --v11;
      }

      while (v11);
    }

    sub_1E3A7992C();
    OUTLINED_FUNCTION_109();
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_30_68();
    *(v16 - 32) = a3;
    *(v16 - 24) = a4;
    *(v16 - 16) = v9;
    v21 = OUTLINED_FUNCTION_64_26(v17, v18, v19, v20);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = (v21 + 32);
      v24 = 0.0;
      do
      {
        v25 = *v23++;
        v24 = v24 + v25;
        --v22;
      }

      while (v22);
    }
  }

  return result;
}

void sub_1E3E7BDA0()
{
  sub_1E3E7C084();
  sub_1E3793CAC();
  min<A>(_:_:)();

  sub_1E3E7C084();
}

void sub_1E3E7BE48()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v29 = OUTLINED_FUNCTION_34_64();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (sub_1E3A79350())
  {
    goto LABEL_15;
  }

  sub_1E3A7992C();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30_68();
  *(v11 - 32) = v6;
  *(v11 - 24) = v4;
  *(v11 - 16) = v2 & 1;
  v16 = OUTLINED_FUNCTION_64_26(v12, v13, v14, v15);
  sub_1E3E7BDA0();
  v18 = v17;
  v30.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinY(v30);
  v19 = sub_1E3A7992C();
  if (v19 == v20)
  {
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_20_0();
    return;
  }

  v21 = v19;
  v22 = v20;
  if (v20 < v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v19 >= v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    v23 = *(v16 + 16);
    if (v19 >= v23 || v20 - 1 >= v23)
    {
      goto LABEL_21;
    }

    v25 = *(v18 + 16);
    v26 = (v18 + 8 * v19 + 32);
    while (v21 < v25)
    {
      sub_1E4201054();
      v31.origin.x = OUTLINED_FUNCTION_2_0();
      CGRectGetMidX(v31);
      sub_1E4203F34();
      OUTLINED_FUNCTION_58_31();
      sub_1E4200F04();
      (*(v8 + 8))(v0, v29);
      if (v21 >= *(v18 + 16))
      {
        goto LABEL_17;
      }

      v27 = *v26++;
      OUTLINED_FUNCTION_41_56(v27);
      if (v22 == v28)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1E3E7C084()
{
  OUTLINED_FUNCTION_93();
  v71 = v2;
  v70 = v3;
  v5 = v4;
  v72 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v69 = (v9 - v10);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v67 = v64 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_5();
  v18 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v21 = *(v20 + 16);
  v65 = v5;
  v21(v0, v5, v18);
  v22 = MEMORY[0x1E697E3C0];
  sub_1E3E7DAE8(&qword_1EE289D90, MEMORY[0x1E697E3C0]);
  sub_1E4206194();
  v23 = *(v16 + 44);
  OUTLINED_FUNCTION_20_103();
  sub_1E3E7DAE8(v24, v22);
  v25 = (v7 + 16);
  v26 = (v7 + 8);
  v64[2] = v7;
  v66 = (v7 + 32);
  v68 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    OUTLINED_FUNCTION_39_0();
    sub_1E4206724();
    if (*(v1 + v23) == v74)
    {
      break;
    }

    v27 = sub_1E4206764();
    v28 = v72;
    (*v25)(v15);
    v29 = OUTLINED_FUNCTION_28_73();
    v27(v29);
    sub_1E4206734();
    sub_1E3E78070();
    sub_1E4200F44();
    if (v74 == 1)
    {
      v30 = v28;
      v31 = *v66;
      (*v66)(v67, v15, v30);
      v32 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3E7D014(0, *(v32 + 16) + 1, 1);
        v32 = v75;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v40 = OUTLINED_FUNCTION_35(v34);
        v68 = v41;
        v64[1] = v42;
        sub_1E3E7D014(v40, v41, 1);
        v36 = v68;
        v32 = v75;
      }

      *(v32 + 16) = v36;
      OUTLINED_FUNCTION_81();
      v68 = v32;
      (v31)(v32 + v37 + *(v38 + 72) * v39, v67);
    }

    else
    {
      (*v26)(v15, v28);
    }
  }

  sub_1E325F6F0(v1, &qword_1ECF30E58);
  LOBYTE(v74) = v71 & 1;
  LOBYTE(v75) = 1;
  v43 = v65;
  sub_1E3E7C5F4();
  v45 = v44;
  v47 = v46;

  OUTLINED_FUNCTION_39_0();
  v48 = sub_1E42066D4();
  if (!v48)
  {
LABEL_16:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v49 = v48;
  v75 = MEMORY[0x1E69E7CC0];
  v50 = OUTLINED_FUNCTION_55_41();
  sub_1E3887DC4(v50, v51, v52);
  v53 = v75;
  OUTLINED_FUNCTION_39_0();
  sub_1E42066B4();
  if ((v49 & 0x8000000000000000) == 0)
  {
    LODWORD(v67) = v47;
    v68 = v45;
    do
    {
      v54 = sub_1E4206764();
      v55 = v69;
      v56 = v72;
      (*v25)(v69);
      v57 = OUTLINED_FUNCTION_28_73();
      v54(v57);
      LOBYTE(v74) = v71 & 1;
      v73 = 1;
      sub_1E4200EF4();
      v59 = v58;
      (*v26)(v55, v56);
      v75 = v53;
      v60 = v43;
      v62 = *(v53 + 16);
      v61 = *(v53 + 24);
      if (v62 >= v61 >> 1)
      {
        v63 = OUTLINED_FUNCTION_35(v61);
        sub_1E3887DC4(v63, v62 + 1, 1);
        v53 = v75;
      }

      *(v53 + 16) = v62 + 1;
      *(v53 + 8 * v62 + 32) = v59;
      sub_1E4206734();
      --v49;
      v43 = v60;
    }

    while (v49);
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1E3E7C5F4()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v43 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *(v3 + 16);
  if (v10)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1E3887DC4(0, v10, 0);
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v41 = v12;
    OUTLINED_FUNCTION_81();
    v14 = v3 + v13;
    v15 = *(v11 + 56);
    v16 = (v11 - 8);
    do
    {
      v17 = v11;
      v41(v9, v14, v43);
      OUTLINED_FUNCTION_81_22();
      v19 = v18;
      (*v16)(v9, v43);
      v21 = *(v44 + 16);
      v20 = *(v44 + 24);
      if (v21 >= v20 >> 1)
      {
        v22 = OUTLINED_FUNCTION_35(v20);
        sub_1E3887DC4(v22, v21 + 1, 1);
      }

      *(v44 + 16) = v21 + 1;
      *(v44 + 8 * v21 + 32) = v19;
      v14 += v15;
      --v10;
      v11 = v17;
    }

    while (v10);
    sub_1E39AB6F8(v44);

    goto LABEL_14;
  }

  sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  sub_1E3E7DAE8(v23, v24);
  OUTLINED_FUNCTION_34();
  v25 = sub_1E42066D4();
  v26 = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
LABEL_13:
    sub_1E39AB6F8(v26);

LABEL_14:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v27 = v25;
  v45 = MEMORY[0x1E69E7CC0];
  v28 = OUTLINED_FUNCTION_55_41();
  sub_1E3887DC4(v28, v29, v30);
  v26 = v45;
  sub_1E42066B4();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v42 = (v5 + 16);
    do
    {
      v31 = v1;
      v32 = sub_1E4206764();
      (*v42)(v9);
      v33 = OUTLINED_FUNCTION_28_73();
      v32(v33);
      OUTLINED_FUNCTION_81_22();
      v35 = v34;
      v36 = OUTLINED_FUNCTION_124();
      v37(v36);
      v39 = *(v45 + 16);
      v38 = *(v45 + 24);
      if (v39 >= v38 >> 1)
      {
        v40 = OUTLINED_FUNCTION_35(v38);
        sub_1E3887DC4(v40, v39 + 1, 1);
      }

      *(v45 + 16) = v39 + 1;
      *(v45 + 8 * v39 + 32) = v35;
      sub_1E4206734();
      --v27;
      v1 = v31;
    }

    while (v27);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1E3E7C93C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_52_42(v4, v5, v6);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_6();
  v9 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v21 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_93_0();
  v13 = *v1;
  sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  sub_1E3E7DAE8(v14, v15);
  OUTLINED_FUNCTION_51_38();
  OUTLINED_FUNCTION_45_1();
  sub_1E42066B4();
  OUTLINED_FUNCTION_45_1();
  sub_1E4206724();
  OUTLINED_FUNCTION_57_30();
  v16 = sub_1E4206714();
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    if (v13 >= v16 - 1)
    {
      *v24 = 0;
    }

    else if (v23)
    {
      sub_1E4201054();
      sub_1E4200F14();
      v17 = *(v21 + 8);
      v18 = OUTLINED_FUNCTION_13_26();
      v17(v18);
      sub_1E4201054();
      sub_1E4200F14();
      (v17)(v2, v9);
      sub_1E4200C54();
      v19 = OUTLINED_FUNCTION_16_125();
      v0(v19);
      v20 = OUTLINED_FUNCTION_138_0();
      v0(v20);
      *v24 = v3;
    }

    else
    {
      *v24 = v22;
    }

    OUTLINED_FUNCTION_54_0();
  }
}

void (*sub_1E3E7CBC8())(void *)
{
  v1 = OUTLINED_FUNCTION_32_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *(v0 + 32) = OUTLINED_FUNCTION_39_53(v2);
  return sub_1E37C4BF8;
}

unint64_t sub_1E3E7CC24()
{
  result = qword_1ECF66090[0];
  if (!qword_1ECF66090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF66090);
  }

  return result;
}

unint64_t sub_1E3E7CC94()
{
  result = qword_1ECF66220[0];
  if (!qword_1ECF66220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF66220);
  }

  return result;
}

unint64_t sub_1E3E7CD00()
{
  result = qword_1ECF3A858;
  if (!qword_1ECF3A858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A848);
    sub_1E32752B0(&qword_1ECF3A860, &qword_1ECF3A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A858);
  }

  return result;
}

void *sub_1E3E7CE18(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 8);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &a4[v12 + 4] <= v14 + 4)
    {
      v17 = OUTLINED_FUNCTION_39_0();
      memmove(v17, v18, v19);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    OUTLINED_FUNCTION_39_0();
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_1E3E7CF40(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E4200F34(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E4200F34();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1E3E7D014(size_t a1, int64_t a2, char a3)
{
  result = sub_1E3E7D31C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1E3E7D068()
{
  result = qword_1ECF3A880;
  if (!qword_1ECF3A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A878);
    sub_1E37ADF68();
    sub_1E3E787E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A880);
  }

  return result;
}

unint64_t sub_1E3E7D0F4()
{
  result = qword_1ECF3A888;
  if (!qword_1ECF3A888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A868);
    sub_1E32752B0(&qword_1EE289DD0, &qword_1ECF2AAA0);
    sub_1E32752B0(&qword_1ECF3A890, &qword_1ECF3A898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A888);
  }

  return result;
}

uint64_t sub_1E3E7D1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FittedTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E7D23C(uint64_t a1)
{
  v2 = type metadata accessor for FittedTextView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3E7D298()
{
  result = qword_1ECF663B0;
  if (!qword_1ECF663B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF663B0);
  }

  return result;
}

size_t sub_1E3E7D31C(size_t result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8F0);
  v10 = *(sub_1E4200F34() - 8);
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
  v15 = *(sub_1E4200F34() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E3E7CF40(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1E3E7D4D0()
{
  result = qword_1ECF663B8[0];
  if (!qword_1ECF663B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF663B8);
  }

  return result;
}

uint64_t sub_1E3E7D524(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v6 = result;
  v35 = *(a3 + 16);
  if (v35 >= v3)
  {
    v7 = a2 - result;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A980);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v7;
      v8[3] = 2 * ((v9 - 32) / 16);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = v8[3];

  if (v3 < 0)
  {
    goto LABEL_60;
  }

  v11 = v8 + 4;
  v12 = v10 >> 1;
  if (v7)
  {
    if (a2 < v6)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v13 = (a3 + 32);
    v12 -= v7;
    v14 = v7;
    v15 = v6;
    v16 = v35;
    v33 = v15;
    while (a2 != v15)
    {
      if (!v16)
      {
        goto LABEL_51;
      }

      v17 = *v13++;
      v18 = v15 + 1;
      *v11 = v15;
      v11[1] = v17;
      v11 += 2;

      --v16;
      v15 = v18;
      if (!--v14)
      {
        v6 = v33;
        goto LABEL_20;
      }
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
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v18 = v6;
LABEL_20:
  v34 = a3 + 32;
  for (i = v18; a2 != i; ++i)
  {
    if (a2 < v6)
    {
      goto LABEL_52;
    }

    if (v18 < v6)
    {
      goto LABEL_53;
    }

    if (i >= a2)
    {
      goto LABEL_54;
    }

    if (v35 == v7)
    {
      break;
    }

    if (v7 >= v35)
    {
      goto LABEL_55;
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_56;
    }

    v20 = *(v34 + 8 * v7);
    if (v12)
    {

      v21 = v8;
    }

    else
    {
      v22 = v8[3];
      if (((v22 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_58;
      }

      v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A980);
      v21 = swift_allocObject();
      v25 = (_swift_stdlib_malloc_size(v21) - 32) / 16;
      v21[2] = v24;
      v21[3] = 2 * v25;
      v26 = v21 + 4;
      v27 = v8[3] >> 1;
      v11 = &v21[2 * v27 + 4];
      v12 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;
      if (v8[2])
      {
        if (v21 != v8 || v26 >= &v8[2 * v27 + 4])
        {
          memmove(v26, v8 + 4, 16 * v27);
        }

        v8[2] = 0;
      }

      else
      {
      }
    }

    v29 = __OFSUB__(v12--, 1);
    if (v29)
    {
      goto LABEL_57;
    }

    *v11 = i;
    v11[1] = v20;
    v11 += 2;
    ++v7;
    v8 = v21;
  }

  v30 = v8[3];
  if (v30 < 2)
  {
    return v8;
  }

  v31 = v30 >> 1;
  v29 = __OFSUB__(v31, v12);
  v32 = v31 - v12;
  if (!v29)
  {
    v8[2] = v32;
    return v8;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1E3E7D828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (*(*(v3 + 16) + 16) >= 2uLL && a1 == 0)
  {
    v9 = sub_1E4201B74();
  }

  else
  {
    v9 = sub_1E4201B64();
  }

  v10 = v9;
  v11 = *(a2 + 16);
  v12 = 32;
  do
  {
    v13 = v11;
    if (!v11)
    {
      break;
    }

    v14 = *(a2 + v12);
    v15 = v14 >> 62 ? sub_1E4207384() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 += 8;
    v11 = v13 - 1;
  }

  while (v15 < 2);
  v16 = v13 == 0;
  v17 = sub_1E3E77878();
  *a3 = v10;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A918);
  v24 = a2;
  swift_getKeyPath();
  v19 = swift_allocObject();
  memcpy(v19 + 2, (v4 + 24), 0x58uLL);
  v19[13] = a1;
  v19[14] = v10;

  sub_1E3E77840(v4 + 24, v23);
  v20 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A928);
  OUTLINED_FUNCTION_14_11();
  sub_1E32752B0(v21, &qword_1ECF3A920);
  sub_1E3E7DA34();
  sub_1E3E7DB30();
  sub_1E4203B34();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A7F8);
  *(a3 + *(result + 36)) = v16;
  return result;
}

unint64_t sub_1E3E7DA34()
{
  result = qword_1ECF3A938;
  if (!qword_1ECF3A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C790);
    sub_1E3E7DAE8(qword_1EE23BA70, type metadata accessor for ViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A938);
  }

  return result;
}

uint64_t sub_1E3E7DAE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3E7DB30()
{
  result = qword_1ECF3A940;
  if (!qword_1ECF3A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A928);
    sub_1E3E7DBBC();
    sub_1E3E7DC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A940);
  }

  return result;
}

unint64_t sub_1E3E7DBBC()
{
  result = qword_1ECF3A948;
  if (!qword_1ECF3A948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A950);
    sub_1E3E7DC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A948);
  }

  return result;
}

unint64_t sub_1E3E7DC40()
{
  result = qword_1ECF663D0;
  if (!qword_1ECF663D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF663D0);
  }

  return result;
}

unint64_t sub_1E3E7DC94()
{
  result = qword_1ECF3A958;
  if (!qword_1ECF3A958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A960);
    sub_1E32752B0(&qword_1ECF3A968, &qword_1ECF3A970);
    sub_1E3E7DBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A958);
  }

  return result;
}

uint64_t sub_1E3E7DD5C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 104);
  v7 = *a1;
  v8 = OUTLINED_FUNCTION_124();
  v10 = sub_1E3E77990(v8, v9);
  v12 = v11;
  OUTLINED_FUNCTION_8();
  (*(v13 + 152))(v21);
  v14 = v21[0];
  v15 = v22 & 1;
  if (v22)
  {
    v14 = 0;
  }

  v16 = *(v3 + 72);
  v17 = *(v3 + 32);
  v18 = *(*(v3 + 40) + 16) - 1 == v6;
  v20 = *(v3 + 80);
  *a3 = v7;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = 0;
  *(a3 + 40) = a2;
  *(a3 + 41) = v17;
  *(a3 + 48) = v16;
  *(a3 + 56) = v20;
  *(a3 + 64) = v14;
  *(a3 + 72) = v15;
  *(a3 + 73) = v18;
}

uint64_t sub_1E3E7DE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A990) + 44);
  v9 = sub_1E4201B64();
  v10 = *(a2 + 16);
  v11 = 32;
  do
  {
    v12 = v10;
    if (!v10)
    {
      break;
    }

    v13 = *(a2 + v11);
    v14 = v13 >> 62 ? sub_1E4207384() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 += 8;
    v10 = v12 - 1;
  }

  while (v14 < 2);
  v15 = v12 == 0;
  v16 = a3 + v8;
  v17 = sub_1E3E77878();
  *v16 = v9;
  *(v16 + 8) = v17;
  *(v16 + 16) = v18 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A918);
  v24 = a2;
  swift_getKeyPath();
  v19 = swift_allocObject();
  memcpy(v19 + 2, (v4 + 16), 0x58uLL);
  v19[13] = a1;
  v19[14] = v9;

  sub_1E3E77840(v4 + 16, v23);
  v20 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A928);
  OUTLINED_FUNCTION_14_11();
  sub_1E32752B0(v21, &qword_1ECF3A920);
  sub_1E3E7DA34();
  sub_1E3E7DB30();
  sub_1E4203B34();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A7F8);
  *(v16 + *(result + 36)) = v15;
  return result;
}

uint64_t objectdestroyTm_46()
{

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

uint64_t sub_1E3E7E118(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return OUTLINED_FUNCTION_17_7(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3E7E134(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E3E7E18C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[34])
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

_BYTE *sub_1E3E7E1D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 2) = 0;
    *(result + 3) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 1) = 0;
    if (a3 >= 0xFF)
    {
      result[34] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      result[34] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_13_147(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1E3E7E220(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_13_147(result, a2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3E7E2E4()
{
  result = qword_1ECF3A9A8;
  if (!qword_1ECF3A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A9B0);
    sub_1E3E7CD00();
    sub_1E32752B0(&qword_1ECF3A860, &qword_1ECF3A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A9A8);
  }

  return result;
}

unint64_t sub_1E3E7E39C()
{
  result = qword_1ECF3A9B8;
  if (!qword_1ECF3A9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A9C0);
    sub_1E3E7D068();
    sub_1E3E7D0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A9B8);
  }

  return result;
}

unint64_t sub_1E3E7E42C()
{
  result = qword_1ECF663E0[0];
  if (!qword_1ECF663E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF663E0);
  }

  return result;
}

unint64_t sub_1E3E7E484()
{
  result = qword_1ECF665F0[0];
  if (!qword_1ECF665F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF665F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_68_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  *(a1 + 16) = a21;
  *(a1 + 32) = v21;
}

uint64_t OUTLINED_FUNCTION_86_14()
{

  return sub_1E4203B34();
}

uint64_t sub_1E3E7E630()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = xmmword_1E42D88B0;
  *(v0 + 144) = xmmword_1E42D88C0;
  *(v0 + 160) = 0x4000000000000000;
  v1 = sub_1E3C2F9A0();

  sub_1E3E7E690();
  sub_1E3E7EBE8();

  return v1;
}

uint64_t sub_1E3E7E690()
{
  v1 = v0;
  (*(*v0 + 1752))();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1808))(1);

  OUTLINED_FUNCTION_9_2();
  (*(v3 + 1184))(0x4014000000000000, 0);
  OUTLINED_FUNCTION_9_2();
  v5 = *(v4 + 1776);
  v5();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 2056))(2, 0);

  v8 = (v5)(v7);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v8 + 680);
  v11 = v9;
  v10(v9);

  (v5)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1696))(1);

  (v5)(v14);
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 1984))(1);

  (v5)(v16);
  v17 = objc_opt_self();
  v18 = [v17 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v19 + 680))();

  OUTLINED_FUNCTION_9_2();
  v21 = *(v20 + 1800);
  v21();
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 2056))(2, 0);

  v24 = (v21)(v23);
  v25 = *sub_1E3E5FDEC();
  v26 = *(*v24 + 680);
  v27 = v25;
  v26(v25);

  (v21)(v28);
  OUTLINED_FUNCTION_2_1();
  (*(v29 + 1696))(22);

  (v21)(v30);
  OUTLINED_FUNCTION_2_1();
  (*(v31 + 1984))(1);

  (v21)(v32);
  v33 = [v17 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v34 + 680))();

  v35 = [v17 blackColor];
  OUTLINED_FUNCTION_9_2();
  (*(v36 + 752))();
  sub_1E3952C94();
  v42[0] = v37;
  v42[1] = v38;
  v42[2] = v39;
  v42[3] = v40;
  v43 = 0;
  return (*(*v1 + 184))(v42);
}

uint64_t sub_1E3E7EBE8()
{
  v1 = (*(*v0 + 1752))();
  sub_1E3C37CBC(v1, 39);

  OUTLINED_FUNCTION_36();
  v3 = (*(v2 + 1776))();
  sub_1E3C37CBC(v3, 23);

  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1800))();
  sub_1E3C37CBC(v5, 15);
}

uint64_t sub_1E3E7ECE0()
{
  v0 = sub_1E37DB800();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

void sub_1E3E7ED34(char a1, double a2, double a3)
{
  v4 = v3;
  v59.receiver = v4;
  v59.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v59, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a1)
  {
    return;
  }

  v8 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts;
  OUTLINED_FUNCTION_5_0();
  v9 = *&v4[v8];
  v10 = sub_1E32AE9B0(v9);
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v10;
  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  v12 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientViews;
  v13 = v9 & 0xC000000000000001;

  v14 = 0;
  v58 = v11;
  do
  {
    if (v13)
    {
      v15 = MEMORY[0x1E6911E60](v14, v9);
    }

    else
    {
      v15 = *(v9 + 8 * v14 + 32);
    }

    swift_beginAccess();
    v16 = *&v4[v12];
    if (!*(v16 + 16) || (v17 = sub_1E39E6224(v15 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id), (v18 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_21;
    }

    v19 = v13;
    v20 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    v21 = *(*v15 + 504);
    v22 = v20;

    if ((v21)(v23) != 18)
    {
      sub_1E39E67F4();
      if (sub_1E4205E84())
      {
        v24 = (*(*v15 + 304))();
        if ((v25 & 1) == 0)
        {
          v32 = *&v24;

          v33 = v32;
          v34 = v22;
          [v4 bounds];
          v36 = v35 - v33;
          [v4 bounds];
          [v34 setFrame_];
          v13 = v19;
          goto LABEL_20;
        }
      }
    }

    if (v21() == 18 || (sub_1E39E67F4(), (sub_1E4205E84() & 1) == 0))
    {

      v13 = v19;
LABEL_19:
      v29 = v22;
      [v4 bounds];
      [v29 setFrame_];
      goto LABEL_20;
    }

    (*(*v15 + 304))();
    v27 = v26;

    v13 = v19;
    if (v27)
    {
      goto LABEL_19;
    }

    v28 = v22;
    [v4 bounds];
    [v28 setFrame_];
LABEL_20:
    v11 = v58;

    sub_1E396030C(v15);

LABEL_21:
    ++v14;
  }

  while (v11 != v14);

LABEL_24:
  v37 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_imageView;
  OUTLINED_FUNCTION_5_0();
  v38 = *&v4[v37];
  if (v38)
  {
    [v38 setFrame_];
  }

  v39 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayout;
  v40 = *&v4[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayout];
  if (v40)
  {
    v41 = *(*v40 + 504);

    if (v41(v42) == 18 || (sub_1E39E67F4(), (sub_1E4205E84() & 1) == 0) || ((*(*v40 + 304))(), (v43 & 1) != 0))
    {

      goto LABEL_31;
    }

    [v4 bounds];
    CGRectGetHeight(v60);
    [v4 bounds];
    CGRectGetWidth(v61);
  }

  else
  {
LABEL_31:
    [v4 bounds];
  }

  v44 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView;
  v45 = *&v4[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView];
  if (v45)
  {
    OUTLINED_FUNCTION_11_147(v45, sel_setFrame_);
  }

  v46 = *&v4[v39];
  if (v46 && (v47 = *(*v46 + 1888), v48 = , v49 = v47(v48), , v49))
  {

    v50 = *&v4[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayer];
    if (v50)
    {
      v51 = *&v4[v44];
      v52 = v50;
      if (v51)
      {
        [v51 bounds];
      }

      else
      {
        v53 = 0.0;
        v54 = 0.0;
        v55 = 0.0;
        v56 = 0.0;
      }

      sub_1E3D54B34(v53, v54, v55, v56);
    }
  }

  else
  {
    v57 = *&v4[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayer];
    if (v57)
    {
      OUTLINED_FUNCTION_11_147(v57, sel_setFrame_);
    }
  }
}

uint64_t sub_1E3E7F3A0()
{
  OUTLINED_FUNCTION_5_0();

  v1 = sub_1E39E4ACC(v0);
  sub_1E3E7F41C(v1);

  OUTLINED_FUNCTION_5_0();

  sub_1E3E80074(v2);
}

uint64_t sub_1E3E7F41C(unint64_t a1)
{
  v103 = sub_1E41FE624();
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts;
  OUTLINED_FUNCTION_5_0();
  v112 = v4;
  v113 = v1;
  v5 = *&v1[v4];
  v107 = MEMORY[0x1E69E7CC0];
  v117 = MEMORY[0x1E69E7CC0];
  v6 = sub_1E32AE9B0(v5);
  v7 = v5 & 0xC000000000000001;
  v108 = v5 + 32;
  v114 = a1 & 0xC000000000000001;
  v109 = a1 + 32;
  v110 = v6;
  v111 = v5;

  v8 = 0;
  v106 = 0;
LABEL_2:
  if (v8 != v110)
  {
    sub_1E34AF4E4(v8, v7 == 0, v111);
    if (v7)
    {
      MEMORY[0x1E6911E60](v8, v111);
    }

    else
    {
    }

    v9 = __OFADD__(v8++, 1);
    if (!v9)
    {
      v10 = sub_1E32AE9B0(a1);
      v11 = 0;
      while (1)
      {
        if (v10 == v11)
        {
          sub_1E4207544();
          OUTLINED_FUNCTION_7_91();
          sub_1E4207594();
          sub_1E4207554();
          goto LABEL_2;
        }

        if (v114)
        {
          MEMORY[0x1E6911E60](v11, a1);
        }

        else
        {
          if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_141;
          }
        }

        if (__OFADD__(v11, 1))
        {
          break;
        }

        v5 = sub_1E41FE604();

        ++v11;
        if (v5)
        {

          goto LABEL_2;
        }
      }

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
    }

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
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v108 = v117;
  v117 = MEMORY[0x1E69E7CC0];
  v110 = sub_1E32AE9B0(a1);
  v12 = 0;
LABEL_18:
  while (v12 != v110)
  {
    OUTLINED_FUNCTION_6_72();
    if (v5)
    {
      MEMORY[0x1E6911E60](v12, a1);
    }

    else
    {
    }

    v9 = __OFADD__(v12, 1);
    v13 = v12 + 1;
    if (v9)
    {
      goto LABEL_147;
    }

    v111 = v13;
    v14 = *&v113[v112];
    v15 = sub_1E32AE9B0(v14);

    v16 = 0;
    while (v15 != v16)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_142;
      }

      v5 = sub_1E41FE604();

      ++v16;
      if (v5)
      {

        v12 = v111;
        goto LABEL_18;
      }
    }

    sub_1E4207544();
    OUTLINED_FUNCTION_7_91();
    sub_1E4207594();
    sub_1E4207554();
    v12 = v111;
  }

  v17 = 0;
  v104 = v117;
  v18 = MEMORY[0x1E69E7CC0];
  v117 = MEMORY[0x1E69E7CC0];
  while (v17 != v110)
  {
    OUTLINED_FUNCTION_6_72();
    if (v5)
    {
      MEMORY[0x1E6911E60](v17, a1);
    }

    else
    {
    }

    v9 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v9)
    {
      goto LABEL_148;
    }

    v111 = v19;
    v20 = *&v113[v112];
    v21 = sub_1E32AE9B0(v20);

    v22 = 0;
    while (v21 != v22)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_144;
      }

      v5 = sub_1E41FE604();

      ++v22;
      if (v5)
      {

        sub_1E4207544();
        OUTLINED_FUNCTION_7_91();
        sub_1E4207594();
        sub_1E4207554();
        goto LABEL_48;
      }
    }

LABEL_48:
    v18 = MEMORY[0x1E69E7CC0];
    v17 = v111;
  }

  v101 = v117;
  v115 = v18;
  v23 = v108;
  v24 = 0;
  v110 = sub_1E32AE9B0(v108);
  v111 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientViews;
  v109 = v23 & 0xC000000000000001;
  v100 = (v105 + 16);
  v99 = (v105 + 8);
  v26 = v112;
  v25 = v113;
  while (v110 != v24)
  {
    if (v109)
    {
      v27 = MEMORY[0x1E6911E60](v24, v23);
    }

    else
    {
      if (v24 >= *(v23 + 16))
      {
        goto LABEL_150;
      }

      v27 = *(v23 + 8 * v24 + 32);
    }

    if (__OFADD__(v24, 1))
    {
      goto LABEL_149;
    }

    OUTLINED_FUNCTION_27_11();

    v28 = v106;
    v29 = sub_1E39E6450(&v25[v26]);
    if (v28)
    {
      goto LABEL_162;
    }

    v30 = v29;
    v106 = 0;
    v31 = *&v25[v26];
    v32 = v31 >> 62;
    if (v31 >> 62)
    {
      OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
      v33 = sub_1E4207384();
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v33 - v30;
    if (v33 < v30)
    {
      goto LABEL_151;
    }

    if (v30 < 0)
    {
      goto LABEL_152;
    }

    if (v32)
    {
      OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
      v35 = sub_1E4207384();
    }

    else
    {
      v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35 < v33)
    {
      goto LABEL_153;
    }

    v36 = v30 - v33;
    if (__OFSUB__(0, v34))
    {
      goto LABEL_154;
    }

    if (v32)
    {
      OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
      v37 = sub_1E4207384();
    }

    else
    {
      v37 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v37 - v34;
    if (__OFADD__(v37, v36))
    {
      goto LABEL_155;
    }

    v105 = v24 + 1;
    v114 = v27;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v113[v112] = v31;
    if (v32)
    {
      v40 = 0;
    }

    else
    {
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v40 != 1 || (v41 = v31 & 0xFFFFFFFFFFFFFF8, v38 > *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v32)
      {
        OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
        sub_1E4207384();
      }

      v31 = sub_1E4207514();
      *&v113[v112] = v31;
      v41 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    type metadata accessor for ViewGradientLayout();
    swift_arrayDestroy();
    if (v34)
    {
      if (v31 >> 62)
      {
        v42 = sub_1E4207384();
      }

      else
      {
        v42 = *(v41 + 16);
      }

      v43 = v42 - v33;
      if (__OFSUB__(v42, v33))
      {
        goto LABEL_156;
      }

      v44 = (v41 + 32 + 8 * v33);
      if (v33 != v30 || v41 + 32 + 8 * v30 >= v44 + 8 * v43)
      {
        memmove((v41 + 32 + 8 * v30), v44, 8 * v43);
      }

      if (v31 >> 62)
      {
        v46 = sub_1E4207384();
      }

      else
      {
        v46 = *(v41 + 16);
      }

      if (__OFADD__(v46, v36))
      {
        goto LABEL_157;
      }

      *(v41 + 16) = v46 - v34;
    }

    v26 = v112;
    v25 = v113;
    *&v113[v112] = v31;
    swift_endAccess();
    v47 = v111;
    swift_beginAccess();
    v48 = *&v25[v47];
    v49 = v114;
    if (*(v48 + 16) && (v50 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id, v51 = sub_1E39E6224(v114 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id), (v52 & 1) != 0))
    {
      v53 = *(*(v48 + 56) + 8 * v51);
      swift_endAccess();
      v54 = v49 + v50;
      v55 = v102;
      v56 = v103;
      (*v100)(v102, v54, v103);
      OUTLINED_FUNCTION_27_11();
      v57 = v53;
      v58 = sub_1E39E66C8(v55);
      (*v99)(v55, v56);
      swift_endAccess();

      v59 = v57;
      MEMORY[0x1E6910BF0]();
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v107 = v115;
      v24 = v105;
      v26 = v112;
      v25 = v113;
      v23 = v108;
    }

    else
    {
      swift_endAccess();

      ++v24;
      v23 = v108;
    }
  }

  v60 = sub_1E32AE9B0(v104);
  if (v60)
  {
    v61 = v60;
    if (v60 < 1)
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v62 = 0;
    v114 = v104 & 0xC000000000000001;
    do
    {
      if (v114)
      {
        v63 = MEMORY[0x1E6911E60](v62, v104);
      }

      else
      {
        v63 = *(v104 + 8 * v62 + 32);
      }

      v64 = v107 >> 62;
      if (v107 >> 62)
      {
        if (!sub_1E4207384())
        {
LABEL_118:
          v71 = v113;
LABEL_119:
          type metadata accessor for GradientView();
          [v71 bounds];
          v70 = sub_1E3890DAC();
          v69 = 0;
          goto LABEL_120;
        }
      }

      else if (!*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_118;
      }

      v65 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v64 || (v65 & 1) == 0)
      {
        v66 = sub_1E37EFA58(v107);
      }

      else
      {
        v66 = v107;
      }

      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v67)
      {
        goto LABEL_158;
      }

      v107 = v66;
      v68 = v67 - 1;
      v69 = *((v66 & 0xFFFFFFFFFFFFFF8) + 8 * (v67 - 1) + 0x20);
      *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) = v68;
      v70 = v69;
      v71 = v113;
      if (!v69)
      {
        goto LABEL_119;
      }

LABEL_120:
      ++v62;
      v72 = v69;
      [v71 addSubview_];
      v73 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts;
      OUTLINED_FUNCTION_27_11();

      MEMORY[0x1E6910BF0](v74);
      sub_1E38C5A18(*((*(v71 + v73) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1E4206324();
      swift_endAccess();
      v75 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id;
      v76 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientViews;
      OUTLINED_FUNCTION_27_11();
      v77 = v70;
      swift_isUniquelyReferenced_nonNull_native();
      v116 = *(v71 + v76);
      sub_1E39E68B0(v77, v63 + v75);
      *(v71 + v76) = v116;
      swift_endAccess();
      [v71 vui_setNeedsLayout];
    }

    while (v61 != v62);
  }

  v78 = v107;
  v79 = sub_1E32AE9B0(v107);
  v80 = v78;
  v81 = v101;
  if (!v79)
  {
LABEL_128:

    v87 = sub_1E32AE9B0(v81);
    if (v87)
    {
      v88 = v87;
      if (v87 < 1)
      {
        goto LABEL_161;
      }

      for (i = 0; i != v88; ++i)
      {
        if ((v81 & 0xC000000000000001) != 0)
        {
          v90 = MEMORY[0x1E6911E60](i, v81);
        }

        else
        {
          v90 = *(v81 + 8 * i + 32);
        }

        v91 = v113;
        v92 = v111;
        swift_beginAccess();
        v93 = *&v91[v92];
        if (*(v93 + 16) && (v94 = sub_1E39E6224(v90 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id), (v95 & 1) != 0))
        {
          v96 = *(*(v93 + 56) + 8 * v94);
          swift_endAccess();
          v97 = v96;
          sub_1E396030C(v90);
        }

        else
        {
          swift_endAccess();
        }
      }
    }
  }

  v82 = v79;
  if (v79 >= 1)
  {
    v83 = 0;
    v84 = v78 & 0xC000000000000001;
    do
    {
      if (v84)
      {
        v85 = MEMORY[0x1E6911E60](v83, v80);
      }

      else
      {
        v85 = *(v80 + 8 * v83 + 32);
      }

      v86 = v85;
      ++v83;
      [v85 removeFromSuperview];

      v80 = v107;
    }

    while (v82 != v83);
    goto LABEL_128;
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1E3E80074(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    goto LABEL_5;
  }

  v4 = *(*a1 + 936);

  v5 = v4();
  if (v5 == 2 || (v5 & 1) == 0)
  {
    *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayout] = a1;

    v10 = (*(*a1 + 1888))(v9);
    v11 = v10;
    if (v10)
    {
      v12 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView;
      v32 = *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView];
      MEMORY[0x1EEE9AC00](v10);
      v14 = v13;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF389B0);
      sub_1E4148C68(sub_1E39E686C, v15, &v33);

      v16 = v33;
      [v16 setHidden_];
      [v16 setEffect_];
      [v2 vui:v16 addSubview:0 oldView:?];

      v17 = *&v2[v12];
      *&v2[v12] = v16;
    }

    v18 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayer;
    v19 = *&v2[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayer];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8);
    sub_1E4148C68(sub_1E38E2AD0, v20, &v33);

    v21 = v33;
    [v21 setHidden_];
    sub_1E3E805E8(v21);
    [v2 bounds];
    sub_1E3D54B34(v22, v23, v24, v25);
    if (v11)
    {
      v26 = *&v2[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView];
      if (!v26)
      {
LABEL_20:

        v30 = *&v2[v18];
        *&v2[v18] = v21;
        v31 = v21;

        [v2 vui_setNeedsLayout];
      }

      v27 = [v26 vuiLayer];
    }

    else
    {
      v27 = [v2 vuiLayer];
    }

    v28 = v27;
    if (v28)
    {
      v29 = v28;
      [v28 setMask_];
    }

    goto LABEL_20;
  }

LABEL_5:
  v6 = *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView];
  if (v6)
  {
    [v6 setHidden_];
  }

  v7 = *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayer];
  if (v7)
  {
    [v7 setHidden_];
  }

  *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayout] = 0;
}

id sub_1E3E803F8()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_270(&OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts);
  *(v0 + OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_imageView) = 0;
  v6 = v1;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3E804A0(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_270(&OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts);
  *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_imageView] = 0;
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

char *sub_1E3E805E8(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions_];
  OUTLINED_FUNCTION_3_11();
  v6 = (*(v5 + 1792))();
  v7 = v6;
  v8 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v9 = sub_1E32AE9B0(v6);
    if (v9)
    {
      v10 = v9;
      v44 = v8;
      result = sub_1E37EBF70(0, v9 & ~(v9 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v40 = v1;
      v41 = v4;
      v12 = 0;
      v13 = v44;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E6911E60](v12, v7);
        }

        else
        {
          v14 = *(v7 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = [v14 CGColor];
        type metadata accessor for CGColor();
        v43 = v17;

        *&v42 = v16;
        v44 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1E37EBF70((v18 > 1), v19 + 1, 1);
          v13 = v44;
        }

        ++v12;
        *(v13 + 16) = v19 + 1;
        sub_1E329504C(&v42, (v13 + 32 * v19 + 32));
      }

      while (v10 != v12);

      v2 = v40;
      v4 = v41;
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    v7 = sub_1E42062A4();
  }

  [a1 setColors_];

  OUTLINED_FUNCTION_3_11();
  v21 = (*(v20 + 1816))();
  v22 = v21;
  if (v21)
  {
    v23 = *(v21 + 16);
    if (v23)
    {
      v40 = v2;
      v41 = v4;
      *&v42 = v8;
      sub_1E4207574();
      v24 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        v24 += 8;
        --v23;
      }

      while (v23);

      v4 = v41;
      v2 = v40;
    }

    else
    {
    }

    sub_1E3280A90(0, &qword_1EE23ADD0);
    v22 = sub_1E42062A4();
  }

  [a1 setLocations_];

  OUTLINED_FUNCTION_3_11();
  v26 = (*(v25 + 1720))();
  v29 = OUTLINED_FUNCTION_5_89(v26, v27, v28);
  MEMORY[0x1EEE9AC00](v29);
  v39[2] = a1;
  v39[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED20);
  sub_1E4148DE0(sub_1E39E6C34);
  OUTLINED_FUNCTION_3_11();
  v31 = (*(v30 + 1744))();
  v34 = OUTLINED_FUNCTION_5_89(v31, v32, v33);
  MEMORY[0x1EEE9AC00](v34);
  v39[-2] = a1;
  v39[-1] = v2;
  sub_1E4148DE0(sub_1E39E6C40);
  OUTLINED_FUNCTION_3_11();
  v36 = (*(v35 + 1768))();
  if (v36 == 5)
  {
    v37 = *MEMORY[0x1E6979DA0];
  }

  else
  {
    v37 = sub_1E40C2190(v36);
  }

  v38 = v37;
  [a1 setType_];

  return [v4 commit];
}

void sub_1E3E80B0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for StandardExtrasLockup(0);
  sub_1E3929B88();
  sub_1E4200CD4();
  v14 = *(v13 + 36);
  *(v5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *v5 = v3;
  v15 = *(*v3 + 392);

  v17 = v15(v16);
  if (!v17)
  {
    goto LABEL_4;
  }

  if (*v17 != _TtC8VideosUI30StandardExtrasLockupCellLayout)
  {

LABEL_4:
    type metadata accessor for StandardExtrasLockupCellLayout();
    v17 = sub_1E3890648(v3[49]);
  }

  *(v5 + *(v13 + 40)) = v17;
  memcpy((v5 + 8), v1, 0xC3uLL);
  type metadata accessor for ContextMenuModel();

  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v8 + 104))(v12, *MEMORY[0x1E697E660], v6);
  v18 = OUTLINED_FUNCTION_35_5();
  v20 = sub_1E4188148(v18, v19);
  *(v5 + 208) = v20;
  v22 = (*(*v3 + 488))(v20, v21);

  if (v22 && (v23 = sub_1E373E010(67, v22), , v23))
  {

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  *(v5 + 216) = v24;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E80DBC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v17[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A9D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A9D8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  sub_1E3E80F70();
  v9 = *(v1 + 208);
  v10 = sub_1E3E81428();
  sub_1E4187EA8(v9, v3, v10);
  sub_1E325F69C(v6, &qword_1ECF3A9D0);
  v11 = *(v1 + *(type metadata accessor for StandardExtrasLockup(0) + 40));
  v17[2] = v3;
  v17[3] = v10;
  OUTLINED_FUNCTION_3_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_35_5();
  LOBYTE(v3) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  v13 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  v14 = OUTLINED_FUNCTION_51_1() & 1;
  sub_1E383F6D4(v11, v3 & 1, v13 & 1, 0, v14, v7, OpaqueTypeConformance2);
  v15 = OUTLINED_FUNCTION_74();
  v16(v15);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E80F70()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v3 = type metadata accessor for LockupCard(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_3();
  v9 = type metadata accessor for LockupList(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA00);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v39 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v40 = v18;
  v19 = *(v2 + *(type metadata accessor for StandardExtrasLockup(0) + 40));
  OUTLINED_FUNCTION_5_0();
  if (*(v19 + 172) == 1)
  {
    v20 = *v2;
    v21 = v2[26];
    *v13 = v20;
    v13[1] = v19;
    v13[2] = v21;
    v22 = *(v9 + 28);
    *(v13 + v22) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;

    LOBYTE(v20) = sub_1E4202764();
    *(inited + 32) = v20;
    v24 = sub_1E4202784();
    *(inited + 33) = v24;
    v25 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v20)
    {
      v25 = sub_1E4202774();
    }

    sub_1E4202774();
    if (sub_1E4202774() != v24)
    {
      v25 = sub_1E4202774();
    }

    OUTLINED_FUNCTION_8();
    (*(v26 + 176))(v42);
    if ((v42[4] & 1) == 0)
    {
      v29.n128_u64[0] = v42[2];
      v30.n128_u64[0] = v42[3];
      v27.n128_u64[0] = v42[0];
      v28.n128_u64[0] = v42[1];
      j_nullsub_1(v27, v28, v29, v30);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3E851DC(v13, v39);
    v31 = (v39 + *(v14 + 36));
    *v31 = v25;
    OUTLINED_FUNCTION_11_4(v31);
    sub_1E3741EA0(v39, v40, &qword_1ECF3AA00);
    sub_1E3743538(v40, v0, &qword_1ECF3AA00);
    swift_storeEnumTagMultiPayload();
    sub_1E3E81568();
    OUTLINED_FUNCTION_15_132();
    sub_1E3E81644(v32);
    OUTLINED_FUNCTION_40_13();
    sub_1E4201F44();
    sub_1E325F69C(v40, &qword_1ECF3AA00);
  }

  else
  {
    v33 = *v2;
    memcpy(v42, v2 + 1, 0xC3uLL);
    v34 = v2[26];
    *v7 = v33;
    v7[1] = v19;
    memcpy(v7 + 2, v2 + 1, 0xC3uLL);
    v7[27] = v34;
    v35 = *(v3 + 32);
    *(v7 + v35) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
    swift_storeEnumTagMultiPayload();
    sub_1E3E856D4(v7, v0, type metadata accessor for LockupCard);
    swift_storeEnumTagMultiPayload();

    sub_1E375C1CC(v42, &v41);
    sub_1E3E81568();
    OUTLINED_FUNCTION_15_132();
    sub_1E3E81644(v36);

    sub_1E4201F44();
    v37 = OUTLINED_FUNCTION_74();
    sub_1E3E85730(v37, v38);
  }

  OUTLINED_FUNCTION_10_3();
}

unint64_t sub_1E3E81428()
{
  result = qword_1ECF3A9E0;
  if (!qword_1ECF3A9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A9D0);
    sub_1E3E814AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A9E0);
  }

  return result;
}

unint64_t sub_1E3E814AC()
{
  result = qword_1ECF3A9E8;
  if (!qword_1ECF3A9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A9F0);
    sub_1E3E81568();
    sub_1E3E81644(&unk_1ECF66690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A9E8);
  }

  return result;
}

unint64_t sub_1E3E81568()
{
  result = qword_1ECF3A9F8;
  if (!qword_1ECF3A9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA00);
    sub_1E3E81644(&unk_1ECF66688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A9F8);
  }

  return result;
}

unint64_t sub_1E3E81644(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1E3E816EC()
{
  OUTLINED_FUNCTION_58_32();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel();
    if (v1 <= 0x3F)
    {
      sub_1E3BFC284();
      if (v2 <= 0x3F)
      {
        sub_1E38D5D68();
        if (v3 <= 0x3F)
        {
          type metadata accessor for StandardExtrasLockupCellLayout();
          if (v4 <= 0x3F)
          {
            OUTLINED_FUNCTION_72();
            swift_cvw_initStructMetadataWithLayoutString();
            OUTLINED_FUNCTION_165();
          }
        }
      }
    }
  }
}

void sub_1E3E817DC()
{
  OUTLINED_FUNCTION_58_32();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StandardExtrasLockupCellLayout();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel();
      if (v2 <= 0x3F)
      {
        sub_1E38D5D68();
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_165();
        }
      }
    }
  }
}

void sub_1E3E818C8()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v0;
  v44 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA08);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v38 = v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v39 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA28);
  OUTLINED_FUNCTION_0_10();
  v40 = v15;
  v41 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_4();
  v17 = *v0;
  memcpy(v48, v4 + 2, 0xC3uLL);

  sub_1E375C1CC(v48, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA30);
  sub_1E3E84D7C();
  v18 = sub_1E390F194(v17, v48, 0, sub_1E3E84D58, v3);
  (*(*v4[1] + 552))(v47, v18);
  OUTLINED_FUNCTION_32_1();
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  v23 = sub_1E3743478(&unk_1ECF3AA60);
  sub_1E391F8C0(v12, v23, v22);
  sub_1E325F69C(v3, &qword_1ECF3AA20);
  *v1 = sub_1E4201B84();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA68);
  sub_1E3E82868();
  OUTLINED_FUNCTION_8();
  v25 = *(v24 + 152);

  v25(v45, v26);

  if (v46)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    OUTLINED_FUNCTION_13_3(v27, v28, v29, v30);
  }

  OUTLINED_FUNCTION_3();
  v31 = sub_1E4202734();
  sub_1E3741EA0(v1, v38, &qword_1ECF3AA08);
  v32 = (v38 + *(v43 + 36));
  *v32 = v31;
  OUTLINED_FUNCTION_11_4(v32);
  sub_1E3741EA0(v38, v39, &qword_1ECF3AA10);
  *(v39 + *(v42 + 36)) = 0;
  v33 = sub_1E4203D44();
  v35 = v34;
  v36 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA70) + 36);
  sub_1E3741EA0(v39, v36, &qword_1ECF3AA18);
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA78) + 36));
  *v37 = v33;
  v37[1] = v35;
  (*(v40 + 32))(v44, v2, v41);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3E81D1C()
{
  OUTLINED_FUNCTION_9_4();
  v24 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA88);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  *v3 = sub_1E4201D54();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA90);
  sub_1E3E8200C();
  sub_1E42036A4();
  OUTLINED_FUNCTION_1();
  sub_1E3743478(v12);
  OUTLINED_FUNCTION_32_0();
  sub_1E3D414C8(v13, v14);

  sub_1E325F69C(v3, &qword_1ECF3AA50);
  OUTLINED_FUNCTION_8();
  (*(v15 + 176))(v25);
  if (v26)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v18.n128_u64[0] = v25[2];
    v19.n128_u64[0] = v25[3];
    v16.n128_u64[0] = v25[0];
    v17.n128_u64[0] = v25[1];
    j_nullsub_1(v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_3();
  v20 = sub_1E4202734();
  (*(v8 + 32))(v1, v2, v6);
  v21 = (v1 + *(v10 + 36));
  *v21 = v20;
  OUTLINED_FUNCTION_11_4(v21);
  if (!*(v0 + 200) || (type metadata accessor for ViewModel(), sub_1E3E85198(&qword_1EE23BA60), , v22 = sub_1E4205E84(), , v23 = 0.0, (v22 & 1) == 0))
  {
    v23 = 1.0;
  }

  sub_1E3741EA0(v1, v24, &qword_1ECF3AA48);
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA30) + 36)) = v23;
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3E8200C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v71 = v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v66 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAA0);
  OUTLINED_FUNCTION_0_10();
  v69 = v7;
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v76 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v75 = v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v63 - v12);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAB0);
  OUTLINED_FUNCTION_0_10();
  v65 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v64 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v73 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338A0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338A8);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  v74 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_78();
  type metadata accessor for LockupCard(0);
  sub_1E3746E10(v29);
  v34 = sub_1E3B02B0C();
  (*(v25 + 8))(v29, v23);
  if (v34)
  {
    v35 = 1;
  }

  else
  {
    v77 = 0;
    v78 = 0;
    sub_1E42036F4();
    sub_1E3D414F8(MEMORY[0x1E6981840], v22);

    v36 = OUTLINED_FUNCTION_74();
    v37(v36);
    v35 = 0;
  }

  v72 = v0;
  __swift_storeEnumTagSinglePayload(v0, v35, 1, v19);
  v38 = v2[1];
  *v13 = *v2;
  v13[1] = v38;
  v39 = *(type metadata accessor for SubtitleView(0) + 24);
  *(v13 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v40 = v63;
  *(v13 + *(v63 + 36)) = 0x3FF0000000000000;

  sub_1E4203694();
  sub_1E3E84F24();
  v41 = v73;
  sub_1E3D414C8(v40, v73);

  v42 = sub_1E325F69C(v13, &qword_1ECF3AAA8);
  MEMORY[0x1EEE9AC00](v42);
  *(&v63 - 2) = v2;
  MEMORY[0x1EEE9AC00](v43);
  *(&v63 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAC0);
  type metadata accessor for ExtrasContextMenuButton(0);
  OUTLINED_FUNCTION_40_13();
  sub_1E3E859C4(v44);
  sub_1E3E81644(&unk_1ECF667D8);
  sub_1E3DE5EA0(sub_1E3E8500C, sub_1E3E85014, v66);
  sub_1E4203714();
  OUTLINED_FUNCTION_40_13();
  sub_1E3743478(v45);
  v46 = v75;
  sub_1E3D414C8(v67, v75);

  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v47, v48);
  v49 = v74;
  sub_1E3743538(v72, v74, &qword_1ECF338A8);
  v50 = v64;
  v51 = v65;
  v67 = *(v65 + 16);
  v52 = v68;
  v67(v64, v41, v68);
  v53 = v69;
  v54 = *(v69 + 16);
  v55 = v46;
  v56 = v70;
  v54(v76, v55, v70);
  v57 = v71;
  sub_1E3743538(v49, v71, &qword_1ECF338A8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAE8);
  v67(v57 + *(v58 + 48), v50, v52);
  v59 = v57 + *(v58 + 64);
  v60 = v76;
  v54(v59, v76, v56);
  v61 = *(v53 + 8);
  v61(v75, v56);
  v62 = *(v51 + 8);
  v62(v73, v52);
  sub_1E325F69C(v72, &qword_1ECF338A8);
  v61(v60, v56);
  v62(v50, v52);
  sub_1E325F69C(v74, &qword_1ECF338A8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E82778@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = sub_1E39C408C(96);
  if (v5)
  {
    sub_1E413D6F4(v5, v1);
    *(v1 + *(v3 + 36)) = 256;
    sub_1E3741EA0(v1, a1, &qword_1ECF3AAD8);
    OUTLINED_FUNCTION_8_11();
    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_8_11();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

void sub_1E3E82868()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  if (!sub_1E39C408C(40))
  {
    goto LABEL_5;
  }

  type metadata accessor for ImageViewModel();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

LABEL_5:
    v16 = 1;
    goto LABEL_6;
  }

  v14 = v13;
  sub_1E3EB9BB4(v18);
  v15 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v14, v18, 0, v15 & 1, 0, 0, v1);

  sub_1E375C31C(v18);
  (*(v6 + 32))(v12, v1, v4);
  v16 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v12, v16, 1, v4);
  sub_1E3743538(v12, v0, &qword_1ECF29938);
  *v3 = 0;
  *(v3 + 8) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA80);
  sub_1E3743538(v0, v3 + *(v17 + 48), &qword_1ECF29938);
  sub_1E325F69C(v12, &qword_1ECF29938);
  sub_1E325F69C(v0, &qword_1ECF29938);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3E82AAC@<D0>(uint64_t a1@<X8>)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  type metadata accessor for LockupList(0);
  sub_1E3746E10(v5);
  sub_1E3B02A04();
  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
  sub_1E3E84CB0();
  sub_1E3E84D04();

  sub_1E4201F44();
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  return result;
}

void sub_1E3E82C20()
{
  OUTLINED_FUNCTION_9_4();
  v41 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB20);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB38);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v40 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  *v2 = sub_1E4201D54();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB40);
  sub_1E3E83034();
  v17 = sub_1E4202744();
  v18 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v17)
  {
    v18 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v20 = *(v19 + 176);
  v20(v42);
  OUTLINED_FUNCTION_43_54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v9, &qword_1ECF3AB20);
  v21 = &v9[*(v6 + 36)];
  *v21 = v18;
  OUTLINED_FUNCTION_11_4(v21);
  v22 = sub_1E4202754();
  v23 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v22)
  {
    v23 = sub_1E4202774();
  }

  v20(v43);
  OUTLINED_FUNCTION_43_54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v9, v1, &qword_1ECF3AB28);
  v24 = (v1 + *(v38 + 36));
  *v24 = v23;
  OUTLINED_FUNCTION_11_4(v24);
  sub_1E4203D84();
  OUTLINED_FUNCTION_17_82();
  OUTLINED_FUNCTION_33_7();
  sub_1E3741EA0(v1, v15, &qword_1ECF3AB30);
  memcpy(&v15[*(v39 + 36)], v44, 0x70uLL);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v25, v26, v27);
  v28 = sub_1E3FFE5B8(0, 1);
  v29 = v40;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v30, v31, v32);
  v33 = v41;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v34, v35, v36);
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB48) + 48)) = v28;
  sub_1E325F69C(v0, &qword_1ECF3AB38);
  sub_1E325F69C(v29, &qword_1ECF3AB38);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3E83034()
{
  OUTLINED_FUNCTION_9_4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for ExtrasContextMenuButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_8();
  swift_retain_n();
  swift_retain_n();
  sub_1E4202754();
  v19 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v20)
  {
    v19 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  (*(v21 + 152))(v35);
  OUTLINED_FUNCTION_32_1();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v33[119] = 0;
  sub_1E4203DB4();
  OUTLINED_FUNCTION_17_82();
  OUTLINED_FUNCTION_33_7();
  memcpy(&v34[7], v36, 0x70uLL);
  *v0 = v10;
  v0[1] = v8;
  v0[2] = v6;
  v22 = *(v13 + 28);
  *(v0 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  sub_1E3E856D4(v0, v17, type metadata accessor for ExtrasContextMenuButton);
  v24[0] = v10;
  v24[1] = v8;
  LOWORD(v24[2]) = 0;
  LOBYTE(v24[3]) = v19;
  v24[4] = v1;
  v24[5] = v2;
  v24[6] = v3;
  v24[7] = v4;
  LOBYTE(v24[8]) = 0;
  memcpy(&v24[8] + 1, v34, 0x77uLL);
  memcpy(v12, v24, 0xB8uLL);
  v12[23] = v10;
  v12[24] = v8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB50);
  sub_1E3E856D4(v17, v12 + *(v23 + 64), type metadata accessor for ExtrasContextMenuButton);

  sub_1E3743538(v24, v25, &qword_1ECF3AB58);

  sub_1E3E85730(v0, type metadata accessor for ExtrasContextMenuButton);
  sub_1E3E85730(v17, type metadata accessor for ExtrasContextMenuButton);

  v25[0] = v10;
  v25[1] = v8;
  v26 = 0;
  v27 = v19;
  v28 = v1;
  v29 = v2;
  v30 = v3;
  v31 = v4;
  v32 = 0;
  memcpy(v33, v34, 0x77uLL);
  sub_1E325F69C(v25, &qword_1ECF3AB58);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3E8335C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  *a7 = a4();
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  return a6(a1, a2, a3);
}

void sub_1E3E833E4()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v1;
  v4 = v3;
  v42 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB68);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v9 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_8();

  sub_1E4202784();
  v11 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v12)
  {
    v11 = sub_1E4202774();
  }

  v41 = v11;
  OUTLINED_FUNCTION_8();
  (*(v13 + 152))(v70);
  OUTLINED_FUNCTION_32_1();
  sub_1E4200A54();
  v39 = v15;
  v40 = v14;
  v37 = v17;
  v38 = v16;
  v67 = 0;
  sub_1E4202744();
  v18 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v12)
  {
    v18 = sub_1E4202774();
  }

  v36 = v18;
  v19 = *(*v2 + 176);
  v19(v71);
  OUTLINED_FUNCTION_43_54();
  v44 = v21;
  v45 = v20;
  v43 = v22;
  v35 = v23;
  v68 = 0;
  sub_1E4202754();
  v24 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v12)
  {
    v24 = sub_1E4202774();
  }

  v19(v72);
  OUTLINED_FUNCTION_43_54();
  v26 = v25;
  v33 = v27;
  v34 = v25;
  v29 = v28;
  v31 = v30;
  v69 = 0;
  *v0 = sub_1E4201D54();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB70);
  sub_1E3E8378C();
  sub_1E3743538(v0, v9, &qword_1ECF3AB68);
  v46[0] = v4;
  v46[1] = v2;
  LOWORD(v46[2]) = 0;
  LOBYTE(v46[3]) = v41;
  v46[4] = v40;
  v46[5] = v39;
  v46[6] = v38;
  v46[7] = v37;
  LOBYTE(v46[8]) = 0;
  LOBYTE(v46[9]) = v36;
  v46[10] = v45;
  v46[11] = v44;
  v46[12] = v43;
  v46[13] = v35;
  LOBYTE(v46[14]) = 0;
  LOBYTE(v46[15]) = v24;
  v46[16] = v26;
  v46[17] = v29;
  v46[18] = v33;
  v46[19] = v31;
  LOBYTE(v46[20]) = 0;
  memcpy(v42, v46, 0xA1uLL);
  v32 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB78) + 48);
  sub_1E3743538(v9, v32, &qword_1ECF3AB68);
  sub_1E3743538(v46, v47, &qword_1ECF3AB80);
  sub_1E325F69C(v0, &qword_1ECF3AB68);
  sub_1E325F69C(v9, &qword_1ECF3AB68);
  v47[0] = v4;
  v47[1] = v2;
  v48 = 0;
  v49 = v41;
  v50 = v40;
  v51 = v39;
  v52 = v38;
  v53 = v37;
  v54 = 0;
  v55 = v36;
  v56 = v45;
  v57 = v44;
  v58 = v43;
  v59 = v35;
  v60 = 0;
  v61 = v24;
  v62 = v34;
  v63 = v29;
  v64 = v33;
  v65 = v31;
  v66 = 0;
  sub_1E325F69C(v47, &qword_1ECF3AB80);
  OUTLINED_FUNCTION_42();
}

void sub_1E3E8378C()
{
  OUTLINED_FUNCTION_41_5();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB88);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  v13 = sub_1E4202744();
  v14 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v13)
  {
    v14 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v16 = *(v15 + 176);
  v16(&v42);
  OUTLINED_FUNCTION_43_54();
  v41 = v17;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  *v1 = sub_1E4201B84();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB90);
  sub_1E3E83A44(v7, v5, v3, v1 + *(v24 + 44));
  v25 = sub_1E4202754();
  v26 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v25)
  {
    v26 = sub_1E4202774();
  }

  v16(&v43);
  OUTLINED_FUNCTION_43_54();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_1E3FFE5B8(0, 1);
  v36 = OUTLINED_FUNCTION_74();
  sub_1E3743538(v36, v37, v38);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = v14;
  *(v9 + 24) = v41;
  *(v9 + 32) = v19;
  *(v9 + 40) = v21;
  *(v9 + 48) = v23;
  *(v9 + 56) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB98);
  sub_1E3743538(v0, v9 + v39[12], &qword_1ECF3AB88);
  v40 = v9 + v39[16];
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = v26;
  *(v40 + 24) = v28;
  *(v40 + 32) = v30;
  *(v40 + 40) = v32;
  *(v40 + 48) = v34;
  *(v40 + 56) = 0;
  *(v9 + v39[20]) = v35;
  sub_1E325F69C(v1, &qword_1ECF3AB88);
  sub_1E325F69C(v0, &qword_1ECF3AB88);
  OUTLINED_FUNCTION_42();
}

uint64_t sub_1E3E83A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ExtrasContextMenuButton(0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v20 - v14);
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v17 = *(v16 + 36);
  *(v15 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  sub_1E3E856D4(v15, v12, type metadata accessor for ExtrasContextMenuButton);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ABA0);
  sub_1E3E856D4(v12, a4 + *(v18 + 64), type metadata accessor for ExtrasContextMenuButton);
  swift_retain_n();
  swift_retain_n();

  sub_1E3E85730(v15, type metadata accessor for ExtrasContextMenuButton);
  sub_1E3E85730(v12, type metadata accessor for ExtrasContextMenuButton);
}

uint64_t sub_1E3E83C1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  if (sub_1E39C408C(39))
  {
    type metadata accessor for ImageViewModel();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      if ((*(*v7 + 392))())
      {
        type metadata accessor for ImageLayout();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          OUTLINED_FUNCTION_5_0();
          (*(*v9 + 2240))(*(a1 + 172));
        }

        else
        {
        }
      }

      else
      {
        v9 = 0;
      }

      j__OUTLINED_FUNCTION_51_1();
      v15 = j__OUTLINED_FUNCTION_18();
      v26 = j__OUTLINED_FUNCTION_18() & 1;
      v16 = OUTLINED_FUNCTION_17_82();
      sub_1E3EB9C0C(v16, 0, 1, 0, 0, 1, v17, 2, v18, v24, v25, 0, 1, 0, 1, v15 & 1, v26);
      v19 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v8, v27, v9, v19 & 1, 0, 0, v2);

      sub_1E375C31C(v27);
      *(v2 + *(v5 + 36)) = 256;
      sub_1E3741EA0(v2, a2, &qword_1ECF2FEC0);
      OUTLINED_FUNCTION_8_11();
      return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    }
  }

  OUTLINED_FUNCTION_8_11();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1E3E83EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1E4201D54();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ABE8);
  return sub_1E3E83F08(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_1E3E83F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for SubtitleView(0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v16 - v10);
  *v11 = a1;
  v11[1] = a2;
  v13 = *(v12 + 32);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  sub_1E3E856D4(v11, v3, type metadata accessor for SubtitleView);
  *a3 = a1;
  a3[1] = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ABF0);
  sub_1E3E856D4(v3, a3 + *(v14 + 48), type metadata accessor for SubtitleView);
  swift_retain_n();
  swift_retain_n();
  sub_1E3E85730(v11, type metadata accessor for SubtitleView);
  sub_1E3E85730(v3, type metadata accessor for SubtitleView);
}

void sub_1E3E84068()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v39 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37528);
  OUTLINED_FUNCTION_0_10();
  v40 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_5_0();
  LODWORD(v2) = *(v2 + 172);
  v19 = sub_1E39C408C(23);
  if (v2 == 1)
  {
    if (!v19)
    {
      goto LABEL_16;
    }

    v41 = v4;
    v20 = j__OUTLINED_FUNCTION_18();
    sub_1E39C26D0(0, v20 & 1);
    OUTLINED_FUNCTION_59_29();
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v19)
    {
      goto LABEL_16;
    }

    v41 = v4;
    v21 = j__OUTLINED_FUNCTION_18();
    sub_1E39C26D0(1, v21 & 1);
    OUTLINED_FUNCTION_59_29();
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  if (*v4 == _TtC8VideosUI13TextViewModel)
  {
    v22 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E38838AC(v22, 2u, 2, OpaqueTypeConformance2, v0);
    (*(v39 + 8))(v9, v5);
    sub_1E4202744();
    v24 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v25)
    {
      v24 = sub_1E4202774();
    }

    if (v22)
    {
      v39 = *(*v22 + 152);

      (v39)(&v42, v26);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    (*(v40 + 32))(v17, v0, v10);
    v27 = (v17 + *(v13 + 36));
    *v27 = v24;
    OUTLINED_FUNCTION_11_4(v27);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v28, v29, v30);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v31, v32, v33);
  }

  else
  {
  }

LABEL_16:
  OUTLINED_FUNCTION_8_11();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3E8443C()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v66 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37528);
  OUTLINED_FUNCTION_0_10();
  v69 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v68 = v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ABA8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v72 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v71 = v16;
  v17 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = *(v0 + 8);
  OUTLINED_FUNCTION_5_0();
  if (*(v24 + 172) == 1)
  {
    if (!sub_1E39C408C(15))
    {
      goto LABEL_12;
    }

    v73 = v3;
    v25 = j__OUTLINED_FUNCTION_18();
    sub_1E39C26D0(0, v25 & 1);
    OUTLINED_FUNCTION_59_29();
    if (!v3)
    {
      goto LABEL_12;
    }

    v65 = v12;
  }

  else
  {
    if (!sub_1E39C408C(15))
    {
      goto LABEL_12;
    }

    v65 = v12;
    v73 = v3;
    v26 = j__OUTLINED_FUNCTION_18();
    sub_1E39C26D0(1, v26 & 1);
    OUTLINED_FUNCTION_59_29();
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (*v3 == _TtC8VideosUI13TextViewModel)
  {
    v27 = sub_1E3C27528();
    type metadata accessor for SubtitleView(0);
    sub_1E3746E10(v23);
    v28 = sub_1E3B0352C();
    (*(v19 + 8))(v23, v17);
    if (v28)
    {
      v29 = 0;
      v30 = v68;
    }

    else
    {
      v30 = v68;
      if (v27)
      {
        OUTLINED_FUNCTION_71_2();
        v36 = *(v35 + 328);

        v36(v37);
        v39 = v38;

        if (v39)
        {
          OUTLINED_FUNCTION_71_2();
          v41 = *(v40 + 352);

          v41(v42);
          v29 = v43;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 1;
      }
    }

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    if (*(v24 + 172))
    {
      v44 = 2;
    }

    else
    {
      v44 = v29 & 1;
    }

    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E38838AC(v27, 2u, v44, OpaqueTypeConformance2, v30);
    (*(v66 + 8))(v1, v4);
    sub_1E4202744();
    v46 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v47)
    {
      v46 = sub_1E4202774();
    }

    if (v27)
    {
      OUTLINED_FUNCTION_71_2();
      v49 = *(v48 + 152);

      v49(&v75, v50);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v51 = v65;
    (*(v69 + 32))(v65, v30, v70);
    v52 = (v51 + *(v67 + 36));
    *v52 = v46;
    OUTLINED_FUNCTION_11_4(v52);
    sub_1E4202754();
    v53 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v47)
    {
      v53 = sub_1E4202774();
    }

    if (v27)
    {
      OUTLINED_FUNCTION_71_2();
      v55 = *(v54 + 152);

      v55(&v76, v56);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v57 = v72;
    sub_1E3741EA0(v51, v72, &qword_1ECF37530);
    v58 = (v57 + *(v74 + 36));
    *v58 = v53;
    OUTLINED_FUNCTION_11_4(v58);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v59, v60, v61);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v62, v63, v64);
  }

  else
  {
  }

LABEL_12:
  OUTLINED_FUNCTION_8_11();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  OUTLINED_FUNCTION_10_3();
}