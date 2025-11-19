BOOL sub_268984BA0()
{
  v2 = v0;
  v3 = [v0 isEndpoint];
  OUTLINED_FUNCTION_182_0();
  sub_2688C063C();
  v4 = sub_268B38054();
  v5 = v4;
  if (!v1)
  {

    return 0;
  }

  OUTLINED_FUNCTION_100();
  v6 = sub_268B38074();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [v2 context];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = [v7 nowPlayingState];

  return v9 != 1;
}

uint64_t sub_268984C64()
{
  v1 = sub_26892D418(v0);
  v3 = v2;
  v4 = sub_268B37724();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_268B38444();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_268984D14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = sub_268B371E4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  sub_2688EF000(v1, &selRef_type);
  if (v18)
  {
    sub_268B37154();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      v20 = *(v11 + 32);
      v21 = OUTLINED_FUNCTION_100();
      v22(v21);
      sub_268B371A4();
      OUTLINED_FUNCTION_4_11();
      sub_268988A28(v23, v24);
      OUTLINED_FUNCTION_0_1();
      v19 = sub_268B380F4();
      v25 = *(v11 + 8);
      v25(v16, v8);
      v26 = OUTLINED_FUNCTION_0_1();
      (v25)(v26);
      return v19 & 1;
    }

    sub_2688C058C(v7, &qword_2802A58F8, &unk_268B3C510);
  }

  v19 = 0;
  return v19 & 1;
}

BOOL sub_268984EE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8 = sub_268B371E4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  sub_2688EF000(v1, &selRef_type);
  if (!v17)
  {
    return 0;
  }

  sub_268B37154();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2688C058C(v7, &qword_2802A58F8, &unk_268B3C510);
    return 0;
  }

  (*(v11 + 32))(v16, v7, v8);
  sub_268B371D4();
  OUTLINED_FUNCTION_4_11();
  sub_268988A28(v19, v20);
  sub_268B37CA4();
  sub_268B37CA4();
  v21 = *(v11 + 8);
  v22 = OUTLINED_FUNCTION_0_1();
  v21(v22);
  (v21)(v16, v8);
  return v23[1] == v23[0];
}

uint64_t sub_2689850E8()
{
  result = [v0 disambiguated];
  if (result || (result = [v0 skipConfirmation]) != 0)
  {

    return 1;
  }

  return result;
}

id sub_26898513C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_268B37BC4();
  sub_268B37894();
  v9 = objc_allocWithZone(v4);
  v10 = sub_268B37BC4();

  v11 = OUTLINED_FUNCTION_52_3();
  v13 = [v11 v12];

  v14 = v13;
  sub_268B37894();
  if (v15)
  {
    v16 = sub_268B37BC4();
  }

  else
  {
    v16 = 0;
  }

  v17 = OUTLINED_FUNCTION_52_3();
  [v17 v18];

  sub_268B378B4();
  if (v19)
  {
    v20 = sub_268B37BC4();
  }

  else
  {
    v20 = 0;
  }

  v21 = OUTLINED_FUNCTION_52_3();
  [v21 v22];

  sub_2689884A0(a2, a3, v14);
  sub_268B378A4();
  if (v23)
  {
    v24 = sub_268B37BC4();
  }

  else
  {
    v24 = 0;
  }

  [v14 setType_];

  sub_268B37884();
  if (v25)
  {
    v26 = sub_268B37BC4();
  }

  else
  {
    v26 = 0;
  }

  [v14 setMediaSystemId_];

  sub_268B37874();
  v27 = sub_268B37D64();
  [v14 setIsEndpoint_];

  v28 = sub_268B378C4();
  OUTLINED_FUNCTION_4(v28);
  (*(v29 + 8))(a1);
  return v14;
}

uint64_t Device.description.getter()
{
  v1 = v0;
  v2 = 0x65736C6166;
  v3 = 7104878;
  sub_268B381C4();
  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650]();
  v4 = sub_2688EF000(v0, &selRef_name);
  OUTLINED_FUNCTION_44_3(v4, v5);
  OUTLINED_FUNCTION_56_2();

  OUTLINED_FUNCTION_37_6();
  v6 = sub_2688EF000(v0, &selRef_roomName);
  OUTLINED_FUNCTION_44_3(v6, v7);
  OUTLINED_FUNCTION_56_2();

  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650]();
  v8 = sub_2688EF000(v0, &selRef_displayableName);
  OUTLINED_FUNCTION_44_3(v8, v9);
  OUTLINED_FUNCTION_56_2();

  OUTLINED_FUNCTION_35_5();
  v10 = sub_26892D418(v0);
  OUTLINED_FUNCTION_44_3(v10, v11);
  OUTLINED_FUNCTION_56_2();

  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650](0xD000000000000011);
  v12 = sub_2688EF000(v0, &selRef_mediaSystemId);
  OUTLINED_FUNCTION_44_3(v12, v13);
  OUTLINED_FUNCTION_56_2();

  MEMORY[0x26D625650](0x70646E457369202CLL, 0xEE00203A746E696FLL);
  v14 = [v0 isEndpoint];
  sub_2688C063C();
  v15 = sub_268B38054();
  v16 = v15;
  if (v14)
  {
    v17 = OUTLINED_FUNCTION_40_3();

    if (v17)
    {
      OUTLINED_FUNCTION_45_4();
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_65_2();

  OUTLINED_FUNCTION_47_1();
  v18 = sub_2688EF000(v1, &selRef_type);
  OUTLINED_FUNCTION_44_3(v18, v19);
  if (v21)
  {
    v22 = 0xE300000000000000;
  }

  else
  {
    v22 = v20;
  }

  OUTLINED_FUNCTION_65_2();

  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650](0xD000000000000011);
  v23 = [v1 disambiguated];
  v24 = OUTLINED_FUNCTION_53_3();
  v25 = v24;
  if (v22)
  {
    v26 = OUTLINED_FUNCTION_40_3();

    if (v26)
    {
      OUTLINED_FUNCTION_45_4();
      goto LABEL_13;
    }
  }

  else
  {
  }

  v22 = 0xE500000000000000;
LABEL_13:
  OUTLINED_FUNCTION_65_2();

  MEMORY[0x26D625650](0x7269666E6F63202CLL, 0xED0000203A64656DLL);
  v27 = [v1 confirmed];
  v28 = OUTLINED_FUNCTION_53_3();
  v29 = OUTLINED_FUNCTION_40_3();

  if (v29)
  {
    OUTLINED_FUNCTION_45_4();
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_65_2();

  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650]();
  v30 = [v1 skipConfirmation];
  v31 = OUTLINED_FUNCTION_53_3();
  v32 = OUTLINED_FUNCTION_40_3();

  if (v32)
  {
    v33 = 0xE400000000000000;
    v2 = 1702195828;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v2, v33);

  MEMORY[0x26D625650](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v34 = [v1 context];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 description];

    v3 = sub_268B37BF4();
    v38 = v37;
  }

  else
  {
    v38 = 0xE300000000000000;
  }

  MEMORY[0x26D625650](v3, v38);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_26898580C()
{
  v1 = [v0 context];
  v2 = [v1 silentPrimary];

  sub_2688C063C();
  v3 = sub_268B38054();
  if (v2)
  {
    v4 = sub_268B38074();

    v3 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_2689858AC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6828, &qword_268B40A38);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v98 = &v82 - v6;
  OUTLINED_FUNCTION_9();
  v97 = sub_268B35894();
  v7 = OUTLINED_FUNCTION_1(v97);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v96 = v13 - v12;
  OUTLINED_FUNCTION_9();
  v95 = sub_268B34674();
  v14 = OUTLINED_FUNCTION_1(v95);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v94 = v20 - v19;
  OUTLINED_FUNCTION_9();
  v93 = sub_268B37A94();
  v21 = OUTLINED_FUNCTION_1(v93);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v28 = v27 - v26;
  v29 = sub_268B37A54();
  v30 = OUTLINED_FUNCTION_1(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v41);
  v92 = &v82 - v43;
  v44 = *(v1 + 16);
  if (v44)
  {
    v88 = (v32 + 8);
    v89 = (v32 + 16);
    v87 = (v16 + 8);
    v86 = *MEMORY[0x277D5F638];
    v84 = (v9 + 8);
    v85 = (v9 + 104);
    v83 = v23 + 32;
    v45 = (v1 + 40);
    v102 = MEMORY[0x277D84F90];
    *&v42 = 136315138;
    v82 = v42;
    v99 = v37;
    v100 = v29;
    v90 = v28;
    v91 = v23;
    do
    {
      v46 = *(v45 - 1);
      v47 = *v45;

      OUTLINED_FUNCTION_138();
      sub_268985F20();
      v49 = v48;

      if (MEMORY[0x26D6237C0](v49))
      {
        sub_268B35BD4();
        v50 = v92;
        OUTLINED_FUNCTION_96();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
        v55 = MEMORY[0x26D623510](v49, v50);
        sub_2688C058C(v50, &unk_2802A62D0, &qword_268B3EDD0);
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v56 = __swift_project_value_buffer(v29, qword_2802CDA10);
        (*v89)(v37, v56, v29);

        v57 = sub_268B37A34();
        v58 = sub_268B37ED4();

        v59 = os_log_type_enabled(v57, v58);
        v101 = v49;
        if (v59)
        {
          OUTLINED_FUNCTION_68();
          v60 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v61 = swift_slowAlloc();
          v103 = v55;
          v104 = v61;
          *v60 = v82;
          sub_268B36624();
          OUTLINED_FUNCTION_20_9();
          sub_268988A28(&qword_2802A6830, v62);
          v63 = sub_268B38404();
          v65 = sub_26892CDB8(v63, v64, &v104);

          *(v60 + 4) = v65;
          _os_log_impl(&dword_2688BB000, v57, v58, "Device#toRREntitiesForZoneNames UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v61);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();

          (*v88)(v99, v100);
        }

        else
        {

          (*v88)(v37, v29);
        }

        v66 = v94;
        sub_268B34664();
        sub_268B34634();
        (*v87)(v66, v95);
        v67 = v96;
        v68 = v97;
        (*v85)(v96, v86, v97);
        sub_268B35884();
        (*v84)(v67, v68);
        sub_268B37A74();
        OUTLINED_FUNCTION_96();
        __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);

        v73 = v90;
        OUTLINED_FUNCTION_70_1();
        sub_268B37A84();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = *(v102 + 16);
          OUTLINED_FUNCTION_88();
          sub_268987774();
          v102 = v80;
        }

        v74 = v91;
        v75 = *(v102 + 16);
        v37 = v99;
        v29 = v100;
        if (v75 >= *(v102 + 24) >> 1)
        {
          sub_268987774();
          v102 = v81;
        }

        *(v102 + 16) = v75 + 1;
        v76 = *(v74 + 80);
        OUTLINED_FUNCTION_258();
        (*(v74 + 32))(v78 + v77 + *(v74 + 72) * v75, v73, v93);
      }

      else
      {
      }

      v45 += 2;
      --v44;
    }

    while (v44);
  }

  else
  {
    v102 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_23();
}

void sub_268985F20()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v4 = sub_268B358D4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v10 = sub_268B35754();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_268B35744();
  sub_268B35724();
  sub_268B35E54();

  v13 = sub_268B35B54();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  sub_2688EFD10(0, (v14 & 0xC000000000000001) == 0, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D625BD0](0, v14);
  }

  else
  {
    v15 = *(v14 + 32);
  }

  sub_268B357F4();
  sub_268B357B4();

  v16 = *(v7 + 8);
  v17 = OUTLINED_FUNCTION_0_1();
  v16(v17);
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D625BD0](0, v14);
  }

  else
  {
    v18 = *(v14 + 32);
  }

  MEMORY[0x26D623200](v3, v1);
  sub_268B357B4();

  v19 = OUTLINED_FUNCTION_0_1();
  v16(v19);
  sub_268B35874();
  sub_268B357B4();

  v20 = OUTLINED_FUNCTION_0_1();
  v16(v20);
  OUTLINED_FUNCTION_23();
}

uint64_t Device.deviceQuantifier.getter()
{
  sub_268B37464();
  v0 = OUTLINED_FUNCTION_14_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26898616C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_2688F1FA4(a1, &v7 - v4, &qword_2802A5BA8, &qword_268B3C690);
  return Device.deviceQuantifier.setter(v5);
}

uint64_t (*Device.deviceQuantifier.modify(void **a1))()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v2);
  *a1 = __swift_coroFrameAllocStub(*(v3 + 64));
  sub_268B37464();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  return sub_268988A74;
}

uint64_t sub_2689862B8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_2688F1FA4(a1, &v10 - v6, &qword_2802A58F0, &unk_268B3BEC0);
  v8 = *a2;
  return Device.deviceType.setter(v7);
}

uint64_t Device.deviceType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  sub_2688F1FA4(a1, &v15 - v6, &qword_2802A58F0, &unk_268B3BEC0);
  v8 = sub_268B37034();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v9 = sub_2688C058C(v7, &qword_2802A58F0, &unk_268B3BEC0);
    v10 = 0;
  }

  else
  {
    sub_268B37014();
    v11 = *(*(v8 - 8) + 8);
    v12 = OUTLINED_FUNCTION_138();
    v13(v12);
    OUTLINED_FUNCTION_70_1();
    v10 = sub_268B37BC4();
  }

  OUTLINED_FUNCTION_70_3(v9, sel_setType_);

  return sub_2688C058C(a1, &qword_2802A58F0, &unk_268B3BEC0);
}

void (*Device.deviceType.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  Device.deviceType.getter(v6);
  return sub_26898654C;
}

void sub_26898654C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_0_1();
    sub_2688F1FA4(v5, v6, &qword_2802A58F0, &unk_268B3BEC0);
    Device.deviceType.setter(v2);
    v7 = OUTLINED_FUNCTION_100();
    sub_2688C058C(v7, v8, &unk_268B3BEC0);
  }

  else
  {
    Device.deviceType.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

uint64_t Device.placeHint.getter()
{
  sub_268B378F4();
  v0 = OUTLINED_FUNCTION_14_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t Device.reference.getter()
{
  sub_268B37924();
  v0 = OUTLINED_FUNCTION_14_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void (*sub_2689866DC(void *a1))(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v3 = __swift_coroFrameAllocStub(*(*(v2 - 8) + 64));
  *a1 = v3;
  v4 = sub_268B37464();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  return sub_26898676C;
}

void sub_26898676C(uint64_t *a1)
{
  v1 = *a1;
  sub_2688C058C(*a1, &qword_2802A5BA8, &qword_268B3C690);

  free(v1);
}

void (*sub_268986800(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0) - 8) + 64);
  *a1 = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  Device.deviceType.getter(v4);
  return sub_26898689C;
}

void sub_26898689C(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_0_1();
    sub_2688F1FA4(v5, v6, &qword_2802A58F0, &unk_268B3BEC0);
    Device.deviceType.setter(v4);
    v7 = OUTLINED_FUNCTION_100();
    sub_2688C058C(v7, v8, &unk_268B3BEC0);
  }

  else
  {
    Device.deviceType.setter(*(a1 + 8));
  }

  free(v3);

  free(v4);
}

void sub_268986960(void **a1@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v37 = a3;
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = *a1;
  v15 = sub_26892D418(*a1);
  v17 = v16;
  sub_268B36C54();
  v18 = sub_268B36C24();
  if (!v17)
  {

    goto LABEL_16;
  }

  if (v15 == v18 && v17 == v19)
  {
  }

  else
  {
    v21 = sub_268B38444();

    if ((v21 & 1) == 0)
    {
LABEL_16:
      if (a2)
      {
        v31 = [v14 context];
        if (!v31 || (v32 = sub_268B0F784(v31), !v33))
        {
          v34 = [v14 routeId];
          if (v34)
          {
            v35 = v34;
            v24 = sub_268B37BF4();
            v25 = v36;
          }

          else
          {

            v24 = 0;
            v25 = 0;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v32 = sub_26892D418(v14);
      }

      v24 = v32;
      v25 = v33;
      goto LABEL_23;
    }
  }

  v22 = sub_268A3239C();
  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = v22;
  v25 = v23;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v26 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v8 + 16))(v13, v26, v5);

  v27 = sub_268B37A34();
  v28 = sub_268B37F04();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_68();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_26892CDB8(v24, v25, &v38);
    _os_log_impl(&dword_2688BB000, v27, v28, "Local SideKick device, using endpointId: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v8 + 8))(v13, v5);
LABEL_23:
  *v37 = v24;
  v37[1] = v25;
}

uint64_t sub_268986C68(uint64_t **a1, void **a2)
{
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  v16 = *a2;
  v17 = sub_268A52360(*a2);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v21 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = *a1;
      v23 = OUTLINED_FUNCTION_60_0();
      v26 = sub_26892E438(v23, v24, v25);
      if (v26)
      {
        v27 = v26;
        v68 = v19;
        v69 = a1;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v28 = __swift_project_value_buffer(v4, qword_2802CDA10);
        (*(v7 + 16))(v15, v28, v4);

        v29 = v27;
        v30 = v16;
        v66 = v27;
        v31 = v30;
        v32 = sub_268B37A34();
        v33 = sub_268B37EE4();
        v67 = v31;

        v70 = v29;

        if (os_log_type_enabled(v32, v33))
        {
          OUTLINED_FUNCTION_69();
          v34 = swift_slowAlloc();
          v63 = v32;
          v35 = v34;
          v65 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v64 = swift_slowAlloc();
          v71 = v64;
          *v35 = 136315650;
          v19 = v68;
          v36 = OUTLINED_FUNCTION_60_0();
          *(v35 + 4) = sub_26892CDB8(v36, v37, v38);
          *(v35 + 12) = 2112;
          v39 = v70;
          *(v35 + 14) = v70;
          *(v35 + 22) = 2112;
          v40 = v66;
          v41 = v67;
          *(v35 + 24) = v67;
          v42 = v65;
          *v65 = v40;
          v42[1] = v41;
          v70 = v39;
          v43 = v41;
          v44 = v33;
          v45 = v63;
          _os_log_impl(&dword_2688BB000, v63, v44, "Context contains duplicate routeId: %s with context: %@. Keeping only last processed context: %@", v35, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6420, &unk_268B3C680);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          __swift_destroy_boxed_opaque_existential_0Tm(v64);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();

          v46 = *(v7 + 8);
          v47 = OUTLINED_FUNCTION_138();
          v48(v47);
        }

        else
        {

          v57 = *(v7 + 8);
          v58 = OUTLINED_FUNCTION_138();
          v59(v58);
          v19 = v68;
        }

        a1 = v69;
      }

      v60 = v16;
      v61 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v71 = *a1;
      sub_268A0E5A4(v60, v19, v20);

      *a1 = v71;
      return result;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v49 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v7 + 16))(v12, v49, v4);
  v50 = v16;
  v51 = sub_268B37A34();
  v52 = sub_268B37EE4();

  if (os_log_type_enabled(v51, v52))
  {
    OUTLINED_FUNCTION_68();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v50;
    *v54 = v50;
    v55 = v50;
    _os_log_impl(&dword_2688BB000, v51, v52, "Context missing route ID while converting to Intent Device: %@. Skipping device.", v53, 0xCu);
    sub_2688C058C(v54, &qword_2802A6420, &unk_268B3C680);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  return (*(v7 + 8))(v12, v4);
}

void sub_2689870EC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v60 = a3;
  v58 = a2;
  v59 = sub_268B378C4();
  v4 = OUTLINED_FUNCTION_1(v59);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v24 = sub_268B37864();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = sub_26892E438(v24, v25, v58);
    type metadata accessor for Device();
    (*(v6 + 16))(v11, a1, v59);
    v29 = sub_26898513C(v11, v26, v27);
    sub_268B378B4();
    if (v30)
    {
      v31 = sub_268B37BC4();
    }

    else
    {
      v31 = 0;
    }

    [v29 setRoomName_];

    v49 = OUTLINED_FUNCTION_52_3();
    [v49 v50];
    v51 = sub_268B37D64();
    [v29 setIsDeviceSelectedUsingContext_];
  }

  else
  {
    v32 = v6;
    v33 = v59;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v34 = v15;
    v35 = __swift_project_value_buffer(v15, qword_2802CDA10);
    v36 = v18;
    v37 = v23;
    (*(v18 + 16))(v23, v35, v34);
    v38 = v14;
    v39 = a1;
    v40 = v33;
    (*(v32 + 16))(v14, v39, v33);
    v41 = sub_268B37A34();
    v42 = sub_268B37EE4();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_68();
      v43 = swift_slowAlloc();
      v58 = v37;
      v44 = v43;
      OUTLINED_FUNCTION_69();
      v57 = swift_slowAlloc();
      v61 = v57;
      *v44 = 136315138;
      sub_268988A28(&qword_2802A6860, MEMORY[0x277D5F998]);
      sub_268B38404();
      v56 = v34;
      (*(v32 + 8))(v38, v40);
      v45 = OUTLINED_FUNCTION_138();
      v48 = sub_26892CDB8(v45, v46, v47);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_2688BB000, v41, v42, "Device missing identifier, skipping conversion: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();

      (*(v36 + 8))(v58, v56);
    }

    else
    {

      (*(v32 + 8))(v14, v40);
      v52 = *(v36 + 8);
      v53 = OUTLINED_FUNCTION_138();
      v55(v53, v54);
    }

    v29 = 0;
  }

  *v60 = v29;
}

void sub_2689874FC()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A6898, qword_268B40A88);
  OUTLINED_FUNCTION_182_0();
  v9 = sub_268B37074();
  OUTLINED_FUNCTION_182(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5F790], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_2689875D4()
{
  OUTLINED_FUNCTION_223();
  if (v5)
  {
    OUTLINED_FUNCTION_49();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_145();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_86(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6848, &qword_268B40A50);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_62_2();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_2689876A4()
{
  OUTLINED_FUNCTION_223();
  if (v5)
  {
    OUTLINED_FUNCTION_49();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_145();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_86(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
    v9 = OUTLINED_FUNCTION_317();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_9();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_62_2();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268987774()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A6820, &qword_268B40A30);
  OUTLINED_FUNCTION_182_0();
  v9 = sub_268B37A94();
  OUTLINED_FUNCTION_182(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5FEB0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_26898784C()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A6838, &qword_268B40A40);
  OUTLINED_FUNCTION_182_0();
  v9 = sub_268B355B4();
  OUTLINED_FUNCTION_182(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5DB80], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_268987924()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_48_3(v2, v5, &unk_2802A57A0, &qword_268B3BDE8);
  OUTLINED_FUNCTION_182_0();
  v9 = sub_268B34DE4();
  OUTLINED_FUNCTION_182(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5BAF8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_2689879FC()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A6840, &qword_268B40A48);
  OUTLINED_FUNCTION_182_0();
  v9 = sub_268B36A44();
  OUTLINED_FUNCTION_182(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D55538], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_268987AD4()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A5A00, &qword_268B3C040);
  v9 = OUTLINED_FUNCTION_182_0();
  v10 = type metadata accessor for QuickStopContext(v9);
  OUTLINED_FUNCTION_182(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(type metadata accessor for QuickStopContext, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_268987BAC()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A5A28, qword_268B43980);
  OUTLINED_FUNCTION_182_0();
  v9 = sub_268B37594();
  OUTLINED_FUNCTION_182(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5F918], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_268987C84()
{
  OUTLINED_FUNCTION_223();
  if (v3)
  {
    OUTLINED_FUNCTION_49();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_145();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6850, &qword_268B40A58);
    v9 = OUTLINED_FUNCTION_317();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_9();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_268987D58()
{
  OUTLINED_FUNCTION_223();
  if (v5)
  {
    OUTLINED_FUNCTION_49();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_145();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_86(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59F0, &qword_268B3C030);
    v9 = OUTLINED_FUNCTION_317();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_9();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_62_2();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268987E28()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A6858, &qword_268B40A60);
  OUTLINED_FUNCTION_182_0();
  v9 = sub_268B35C14();
  OUTLINED_FUNCTION_182(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5E678], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_268987F00()
{
  OUTLINED_FUNCTION_223();
  if (v5)
  {
    OUTLINED_FUNCTION_49();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_145();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_86(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6868, &qword_268B40A68);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_62_2();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_268987FD0()
{
  OUTLINED_FUNCTION_223();
  if (v3)
  {
    OUTLINED_FUNCTION_49();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_145();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6870, &qword_268B40A70);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 24);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v7] <= v11)
    {
      memmove(v11, v12, 24 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_2689880CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  v4 = OUTLINED_FUNCTION_317();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_15_9();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_268988138(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v4 = OUTLINED_FUNCTION_317();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_2689881B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
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
  v8 = OUTLINED_FUNCTION_182_0();
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

char *sub_2689882A8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_16(a3, result);
  }

  return result;
}

char *sub_2689882C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_16(a3, result);
  }

  return result;
}

char *sub_268988330(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_16(a3, result);
  }

  return result;
}

uint64_t sub_268988388(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_4(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_59_1();

    return MEMORY[0x2821FE828](v12);
  }

  else if (a3 != a1)
  {
    v11 = OUTLINED_FUNCTION_59_1();

    return MEMORY[0x2821FE820](v11);
  }

  return result;
}

id sub_268988448(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_268B37BC4();
  v7 = [a4 initWithIdentifier:v6 displayString:a3];

  return v7;
}

void sub_2689884A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setRouteId_];
}

uint64_t sub_268988510(void *a1)
{
  v1 = [a1 zoneNames];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37CF4();

  return v3;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_2689885CC(uint64_t a1)
{
  result = sub_268988A28(&qword_2802A6818, type metadata accessor for Device);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268988A28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_10_11()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_19_7@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_268988388(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_35_5()
{

  JUMPOUT(0x26D625650);
}

void OUTLINED_FUNCTION_37_6()
{

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return sub_268B38074();
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return v2;
  }

  return result;
}

void OUTLINED_FUNCTION_47_1()
{

  JUMPOUT(0x26D625650);
}

size_t OUTLINED_FUNCTION_48_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2689881B0(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_268B38054();
}

void OUTLINED_FUNCTION_56_2()
{

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_64_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return v2;
  }

  return result;
}

void OUTLINED_FUNCTION_65_2()
{

  JUMPOUT(0x26D625650);
}

void OUTLINED_FUNCTION_66_1()
{

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_67_1(unint64_t *a1)
{

  return sub_26890CAA0(a1, v1, v2);
}

id OUTLINED_FUNCTION_70_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_71_4(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

Swift::String_optional __swiftcall UsoTask_resume_uso_NoEntity.verb()()
{
  v0 = 0x656D75736572;
  v1 = 0xE600000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_resume_uso_NoEntity.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268988F4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268988FA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268988FF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268989048(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_26898909C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689890F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268989144()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268989198(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689891FC()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268989250(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689892B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268989318()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_26898937C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689893E0(uint64_t a1)
{
  result = sub_26898948C(&qword_2802A68A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26898948C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F84();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2689894E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a8;
  v69 = a5;
  v70 = a7;
  v65 = a2;
  v66 = a6;
  v71 = a4;
  v67 = a1;
  v68 = a3;
  v8 = sub_268B367A4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v63 = v10;
  v64 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v74 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v25 = *(v17 + 16);
  v25(v23, v24, v14);
  v26 = sub_268B37A34();
  v27 = sub_268B37ED4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "SetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput...", v28, 2u);
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  v29 = *(v17 + 8);
  v29(v23, v14);
  sub_268B36754();
  v30 = sub_268B36734();
  if (!v30)
  {
    v30 = sub_268B36744();
  }

  v31 = v30;
  v32 = v74;
  v25(v74, v24, v14);

  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v61 = v29;
    v36 = v35;
    v37 = swift_slowAlloc();
    v75 = v37;
    *v36 = 136315138;
    sub_268B36714();
    v38 = v62;
    sub_268B36B14();

    v39 = sub_268B36784();
    v41 = v40;
    (*(v63 + 8))(v38, v64);
    v42 = sub_26892CDB8(v39, v41, &v75);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2688BB000, v33, v34, "SetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x26D6266E0](v37, -1, -1);
    MEMORY[0x26D6266E0](v36, -1, -1);

    v61(v74, v14);
  }

  else
  {

    v29(v32, v14);
  }

  v43 = swift_allocObject();
  v45 = v67;
  v44 = v68;
  v43[2] = v31;
  v43[3] = v44;
  v47 = v71;
  v46 = v72;
  v48 = v65;
  v49 = v66;
  v43[4] = v71;
  v43[5] = v48;
  v43[6] = v49;
  v43[7] = v46;
  v50 = v70;
  v43[8] = v45;
  v43[9] = v50;
  v51 = v73;
  v43[10] = v73;
  swift_retain_n();
  v52 = v48;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v53 = v49;
  v54 = v52;
  v55 = v53;

  v56 = v54;
  v57 = v55;

  sub_2689F9694(v58, v56, v44, v47, v69, v57, v46, v50, v51, v56, v44, v47, v46, v57, sub_26898AB0C, v43, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
}

uint64_t sub_268989A88(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v102 = a8;
  v89 = a7;
  v97 = a6;
  v87 = a5;
  v98 = a4;
  v86 = a3;
  v84 = a2;
  v93 = a1;
  v101 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v80 - v11;
  v12 = sub_268B37A54();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = &v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v88 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v85 = &v80 - v24;
  v25 = sub_268B34E24();
  v94 = *(v25 - 8);
  v26 = *(v94 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v90 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v80 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v80 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v80 - v40;
  sub_268935590(v93, &v80 - v40, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v41, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v42 = v100;
    v43 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v44 = v99;
    (*(v99 + 16))(v96, v43, v42);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "SetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v47, 2u);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    (*(v44 + 8))(v96, v42);
    sub_2688C2ECC();
    v48 = swift_allocError();
    *v49 = -82;
    v103[0] = v48;
    v104 = 1;
    v102(v103);
    return sub_2688EF38C(v103, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v41, v37);
    v82 = sub_2688E1B54(26, 3, v84, v86, v98, 0x6E776F6E6B6E75, 0xE700000000000000, v87);
    v83 = v51;
    v52 = __swift_project_boxed_opaque_existential_1(v97 + 13, v97[16]);
    v53 = *MEMORY[0x277D5BBE0];
    v54 = *(v94 + 104);
    v86 = v28;
    v87 = v25;
    v54(v28, v53, v25);
    sub_268935590(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);
    v96 = v29;

    v55 = sub_268B350F4();
    v56 = *(v55 - 8);
    v57 = v85;
    (*(v56 + 32))(v85, v35, v55);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
    v58 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v58);
    v59 = *v52;
    v60 = v88;
    sub_268935590(v57, v88, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v55);
    v84 = v37;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v60, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v56 + 8))(v60, v55);
    }

    v81 = v56;
    v93 = v55;
    v62 = v86;
    v63 = v95;
    sub_2688E2B50();

    sub_2688EF38C(v63, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v57, &unk_2802A57B0, &unk_268B3CE00);
    (*(v94 + 8))(v62, v87);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v64 = v100;
    v65 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v66 = v99;
    v67 = v91;
    (*(v99 + 16))(v91, v65, v64);
    v68 = sub_268B37A34();
    v69 = sub_268B37ED4();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v97;
    if (v70)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2688BB000, v68, v69, "SetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v72, 2u);
      MEMORY[0x26D6266E0](v72, -1, -1);
    }

    (*(v66 + 8))(v67, v64);
    v73 = v71[21];
    v74 = v71[22];
    __swift_project_boxed_opaque_existential_1(v71 + 18, v73);
    v75 = v84;
    v76 = v90;
    sub_268935590(v84, v90, &unk_2802A56E0, &unk_268B3CDF0);
    v77 = *(v76 + *(v96 + 12));
    v78 = v92;
    sub_268A82B50(v98, v92);
    v79 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v79);
    (*(v74 + 40))(v76, v77, v78, v102, v101, v73, v74);

    sub_2688EF38C(v78, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v75, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v81 + 8))(v76, v93);
  }
}

void sub_26898A44C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  sub_268935590(a1, v21, &unk_2802A57C0, &qword_268B3BE00);
  v16 = v21[40];
  sub_2688EF38C(v21, &unk_2802A57C0, &qword_268B3BE00);
  if (v16 == 1)
  {
    v17 = sub_2689B8400();
    v18 = a5 == 0x73656369766564 && a6 == 0xE700000000000000;
    if (v18 || (sub_268B38444() & 1) != 0)
    {
      sub_26898A618(a8, a9, a10, a2, a3);
LABEL_8:

      return;
    }

    v19 = a5 == 0x654C656D756C6F76 && a6 == 0xEB000000006C6576;
    if (v19 || (sub_268B38444() & 1) != 0)
    {
      sub_26898A7BC(v17, a8, a9, a10, a2, a3);
      goto LABEL_8;
    }

    sub_2688C2ECC();
    swift_allocError();
    OUTLINED_FUNCTION_1_20(v20, 105);
    a2();

    sub_2688EF38C(v21, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    (a2)(a1);
  }
}

uint64_t sub_26898A618(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v7 = SetVolumeLevelDevicesUnsupportedReason.init(rawValue:)([a1 unsupportedReason]);
  if (v8)
  {
LABEL_2:
    sub_2688C2ECC();
    v9 = swift_allocError();
    *v10 = 106;
    v17[0] = v9;
    BYTE8(v18) = 1;
    a4(v17);
    return sub_2688EF38C(v17, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    switch(v7)
    {
      case 1:
      case 4:
        BYTE4(v17[0]) = 0;
        LODWORD(v17[0]) = 0;
        v17[1] = 0;
        v17[2] = 0;
        v17[3] = 1;
        v18 = 0u;
        v19 = 0u;
        memset(v20, 0, sizeof(v20));
        sub_268B37B84();
        OUTLINED_FUNCTION_2_16();
        sub_268A328D8(v12);

        result = sub_26896F3AC(v17);
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_2_16();
        result = sub_2689CE88C(v13, v14, v15, v16, a4, a5);
        break;
      default:
        goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_26898A7BC(void *a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v9 = SetVolumeLevelVolumeLevelUnsupportedReason.init(rawValue:)([a2 unsupportedReason]);
  if (v10)
  {
LABEL_2:
    sub_2688C2ECC();
    swift_allocError();
    OUTLINED_FUNCTION_1_20(v11, 107);
    a5();
    return sub_2688EF38C(&v20, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    switch(v9)
    {
      case 1:
      case 4:
        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_2_16();
        result = sub_2689CE88C(v14, v15, v16, v17, a5, a6);
        break;
      case 2:
        if (a1)
        {
          v18 = [a1 context];
          if (v18)
          {
            v19 = v18;
            [v18 nowPlayingState];
          }
        }

        OUTLINED_FUNCTION_2_16();
        result = sub_268A32B60();
        break;
      case 3:
        v21 = 0;
        v20 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 1;
        v25 = 0u;
        v26 = 0u;
        memset(v27, 0, sizeof(v27));
        sub_268B37B84();
        OUTLINED_FUNCTION_2_16();
        sub_268A328D8(v13);

        result = sub_26896F3AC(&v20);
        break;
      default:
        goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_26898A9CC()
{
  v0 = sub_268A9AAA4();
  sub_2689542A4(v0 + 184);

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t type metadata accessor for SetVolumeLevelUnsupportedValueStrategy()
{
  result = qword_2802A68B8;
  if (!qword_2802A68B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26898AAA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26898AB0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  return sub_2689899CC();
}

uint64_t sub_26898ABC4(void *a1)
{
  type metadata accessor for PauseMediaIntent();
  if (OUTLINED_FUNCTION_1_21())
  {
    OUTLINED_FUNCTION_2_17();
    v3 = a1;
    OUTLINED_FUNCTION_0_18();
    v4 = sub_268B38074();

    if (v4)
    {
      if (OUTLINED_FUNCTION_4_12() && (v5 = v1, v6 = sub_268921060(), v5, (v6 & 1) != 0))
      {
        return 13;
      }

      else
      {
        return 2;
      }
    }
  }

  type metadata accessor for ResumeMediaIntent();
  if (OUTLINED_FUNCTION_3_15())
  {
    OUTLINED_FUNCTION_2_17();
    v8 = a1;
    OUTLINED_FUNCTION_0_18();
    v9 = sub_268B38074();

    if (v9)
    {
      return 19;
    }
  }

  type metadata accessor for AddSpeakerIntent();
  if (OUTLINED_FUNCTION_3_15())
  {
    OUTLINED_FUNCTION_2_17();
    v10 = a1;
    OUTLINED_FUNCTION_0_18();
    v11 = sub_268B38074();

    if (v11)
    {
      return 12;
    }
  }

  type metadata accessor for MoveSpeakerIntent();
  if (OUTLINED_FUNCTION_3_15())
  {
    OUTLINED_FUNCTION_2_17();
    v12 = a1;
    OUTLINED_FUNCTION_0_18();
    v13 = sub_268B38074();

    if (v13)
    {
      return 14;
    }
  }

  type metadata accessor for GetVolumeLevelIntent();
  if (OUTLINED_FUNCTION_3_15())
  {
    OUTLINED_FUNCTION_2_17();
    v14 = a1;
    OUTLINED_FUNCTION_0_18();
    v15 = sub_268B38074();

    if (v15)
    {
      return 18;
    }
  }

  type metadata accessor for SeekTimeIntent();
  if (OUTLINED_FUNCTION_3_15())
  {
    OUTLINED_FUNCTION_2_17();
    v16 = a1;
    OUTLINED_FUNCTION_0_18();
    v17 = sub_268B38074();

    if (v17)
    {
      return 20;
    }
  }

  type metadata accessor for SetAudioLanguageIntent();
  if (OUTLINED_FUNCTION_3_15())
  {
    OUTLINED_FUNCTION_2_17();
    v18 = a1;
    OUTLINED_FUNCTION_0_18();
    v19 = sub_268B38074();

    if (v19)
    {
      return 28;
    }
  }

  type metadata accessor for SetRepeatStateIntent();
  if (OUTLINED_FUNCTION_1_21())
  {
    OUTLINED_FUNCTION_2_17();
    v20 = a1;
    OUTLINED_FUNCTION_0_18();
    v21 = sub_268B38074();

    if (v21)
    {
      result = OUTLINED_FUNCTION_4_12();
      if (!result)
      {
        return result;
      }

      v22 = [result repeatState];
      if ((v22 - 1) < 3)
      {
        return dword_268B40CA0[(v22 - 1)];
      }

      return 0;
    }
  }

  type metadata accessor for SetShuffleStateIntent();
  if (OUTLINED_FUNCTION_3_15())
  {
    OUTLINED_FUNCTION_2_17();
    v23 = a1;
    OUTLINED_FUNCTION_0_18();
    v24 = sub_268B38074();

    if (v24)
    {
      return 22;
    }
  }

  type metadata accessor for SetSubtitleStateIntent();
  if (OUTLINED_FUNCTION_1_21() && (OUTLINED_FUNCTION_2_17(), v25 = a1, OUTLINED_FUNCTION_0_18(), v26 = sub_268B38074(), v1, (v26 & 1) != 0))
  {
    v27 = OUTLINED_FUNCTION_4_12();
    if (v27 && [v27 enable] == 2)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }

  else
  {
    type metadata accessor for SetVolumeLevelIntent();
    if (OUTLINED_FUNCTION_1_21() && (OUTLINED_FUNCTION_2_17(), v28 = a1, OUTLINED_FUNCTION_0_18(), v29 = sub_268B38074(), v1, (v29 & 1) != 0))
    {
      if (!OUTLINED_FUNCTION_4_12())
      {
        return 15;
      }

      v30 = v1;
      if (sub_2689B859C())
      {

        return 16;
      }

      v46 = v30;
      v47 = sub_2689B85F4();

      if (v47)
      {
        return 17;
      }

      else
      {
        return 15;
      }
    }

    else
    {
      type metadata accessor for SkipContentIntent();
      if (OUTLINED_FUNCTION_1_21() && (OUTLINED_FUNCTION_2_17(), v31 = a1, OUTLINED_FUNCTION_0_18(), v32 = sub_268B38074(), v1, (v32 & 1) != 0))
      {
        v33 = OUTLINED_FUNCTION_4_12();
        if (v33 && [v33 direction] == 1)
        {
          return 3;
        }

        else
        {
          return 30;
        }
      }

      else
      {
        type metadata accessor for SkipTimeIntent();
        if (!OUTLINED_FUNCTION_1_21() || (OUTLINED_FUNCTION_2_17(), v34 = a1, OUTLINED_FUNCTION_0_18(), v35 = sub_268B38074(), v1, (v35 & 1) == 0))
        {
          type metadata accessor for WhatDidTheySayIntent();
          if (OUTLINED_FUNCTION_3_15())
          {
            OUTLINED_FUNCTION_2_17();
            v42 = a1;
            OUTLINED_FUNCTION_0_18();
            v43 = sub_268B38074();

            if (v43)
            {
              return 29;
            }
          }

          type metadata accessor for SetPlaybackSpeedIntent();
          if (OUTLINED_FUNCTION_3_15())
          {
            OUTLINED_FUNCTION_2_17();
            v44 = a1;
            v45 = sub_268B38074();

            if (v45)
            {
              return 32;
            }
          }

          return 0;
        }

        v36 = OUTLINED_FUNCTION_4_12();
        if (v36)
        {
          v37 = v36;
          v38 = v1;
          v39 = [v37 duration];
          if (v39)
          {
            v40 = v39;
            v41 = [v39 direction];

            if (v41 == 1)
            {
              return 21;
            }
          }

          else
          {
          }
        }

        return 31;
      }
    }
  }
}

uint64_t sub_26898B0CC(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 0;
  }

  else
  {
    return dword_268B40CAC[a1 - 1];
  }
}

id sub_26898B0F0(unint64_t a1, char a2)
{
  result = [objc_allocWithZone(MEMORY[0x277D57740]) init];
  v5 = result;
  if (!result)
  {
    return v5;
  }

  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v6))
  {
    [result setEligibleDeviceCount_];
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_26898B16C()
{
  result = qword_2802A68C8;
  if (!qword_2802A68C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A68C8);
  }

  return result;
}

void *sub_26898B1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v14)
    {
      v15 = v14;
      [v14 setTaskType_];
      v16 = a4[3](a3, a4);
      [v15 setMediaType_];
      [v15 setIsWholeHouseAudio_];
      v17 = a4[2](a3, a4);
      v19 = sub_26898B0F0(v17, v18 & 1);
      [v15 setWholeHouseAudioDestinationContext_];

      [v13 setMediaPlayerContext_];
      return v13;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v11, v20, v7);
  v21 = sub_268B37A34();
  v22 = sub_268B37EE4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", v23, 2u);
    MEMORY[0x26D6266E0](v23, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return swift_dynamicCastClass();
}

unint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_26898B16C();
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return swift_dynamicCastClass();
}

uint64_t sub_26898B4FC(void (*a1)(uint64_t))
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v68 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v67 = v8 - v7;
  v9 = sub_268B34614();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  v18 = MEMORY[0x277D84F90];
  v71 = MEMORY[0x277D84F90];
  v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v20 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  if (v20)
  {
    v21 = v20;
    [v20 synchronize];
    v22 = sub_268B37BC4();
    v23 = [v21 arrayForKey_];

    if (v23)
    {
      v66 = v2;
      v24 = sub_268B37CF4();

      v25 = sub_268997584(v24);

      if (v25)
      {
        v26 = *(v25 + 16);
        if (v26)
        {
          v65 = v21;
          type metadata accessor for DeviceContext();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v27 = (v12 + 8);
          v69 = -v26;
          v28 = 4;
          while (1)
          {
            v29 = *(v25 + 8 * v28);
            v30 = objc_allocWithZone(ObjCClassFromMetadata);

            v31 = sub_26893A824(0, 0xE000000000000000);
            v32 = sub_26892E200(0x6979616C50776F6ELL, 0xEF6574617453676ELL, v29);
            if (!v33)
            {
              break;
            }

            v34 = v32;
            v35 = v33;
            v36 = v32 == 0x676E6979616C70 && v33 == 0xE700000000000000;
            if (v36 || (OUTLINED_FUNCTION_0_19() & 1) != 0)
            {

              v37 = 1;
              goto LABEL_21;
            }

            if (v34 == 0x646573756170 && v35 == 0xE600000000000000)
            {
            }

            else
            {
              v39 = OUTLINED_FUNCTION_0_19();

              if ((v39 & 1) == 0)
              {
                break;
              }
            }

            v37 = 2;
LABEL_21:
            [v31 setNowPlayingState_];
            v40 = sub_26892E200(0x74696D69786F7270, 0xE900000000000079, v29);
            if (!v41)
            {
              goto LABEL_45;
            }

            v42 = v40;
            v43 = v41;
            v44 = v40 == 0x7972616D697270 && v41 == 0xE700000000000000;
            if (v44 || (OUTLINED_FUNCTION_0_19() & 1) != 0)
            {

              v45 = 0;
            }

            else
            {
              v46 = v42 == 1918985582 && v43 == 0xE400000000000000;
              if (v46 || (OUTLINED_FUNCTION_0_19() & 1) != 0)
              {

                v45 = 2;
              }

              else
              {
                v47 = v42 == 7496038 && v43 == 0xE300000000000000;
                if (!v47 && (OUTLINED_FUNCTION_0_19() & 1) == 0)
                {
                  if (v42 == 0x74616964656D6D69 && v43 == 0xE900000000000065)
                  {

LABEL_57:
                    v45 = 1;
                    goto LABEL_46;
                  }

                  v49 = OUTLINED_FUNCTION_0_19();

                  if (v49)
                  {
                    goto LABEL_57;
                  }

LABEL_45:
                  v45 = 4;
                  goto LABEL_46;
                }

                v45 = 3;
              }
            }

LABEL_46:
            [v31 setProximity_];
            sub_26892E200(0x64496574756F72, 0xE700000000000000, v29);
            if (v50)
            {
              v51 = sub_268B37BC4();
            }

            else
            {
              v51 = 0;
            }

            [v31 setRouteId_];

            sub_26892E200(0x644970756F7267, 0xE700000000000000, v29);
            if (v52)
            {
              v53 = sub_268B37BC4();
            }

            else
            {
              v53 = 0;
            }

            [v31 setGroupId_];

            v54 = sub_26892E200(0xD000000000000013, 0x8000000268B58940, v29);
            v56 = v55;

            [v31 setNowPlayingMediaType_];
            sub_268B345C4();
            v57 = sub_268B34594();
            (*v27)(v17, v9);
            [v31 setNowPlayingTimestamp_];

            MEMORY[0x26D6256C0]();
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_268B37D14();
            }

            sub_268B37D44();
            ++v28;
            if (v69 + v28 == 4)
            {
              v18 = v71;

              goto LABEL_61;
            }
          }

          v37 = 0;
          goto LABEL_21;
        }
      }

      v18 = MEMORY[0x277D84F90];
LABEL_61:
      v2 = v66;
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }
  }

  if (qword_2802A5030 != -1)
  {
    swift_once();
  }

  v58 = __swift_project_value_buffer(v2, qword_2802CDB30);
  (*(v68 + 16))(v67, v58, v2);

  v59 = sub_268B37A34();
  v60 = sub_268B37F04();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 134218242;
    *(v61 + 4) = sub_2688EFD0C(v18);

    *(v61 + 12) = 2112;
    type metadata accessor for DeviceContext();
    v63 = sub_268B37CE4();
    *(v61 + 14) = v63;
    *v62 = v63;
    _os_log_impl(&dword_2688BB000, v59, v60, "Returning %ld contexts: %@", v61, 0x16u);
    sub_26898BED0(v62);
    MEMORY[0x26D6266E0](v62, -1, -1);
    MEMORY[0x26D6266E0](v61, -1, -1);
  }

  else
  {
  }

  (*(v68 + 8))(v67, v2);
  a1(v18);
}

uint64_t sub_26898BCF8(uint64_t (*a1)(void))
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v5 + 16))(v10, v11, v2);
  v12 = sub_268B37A34();
  v13 = sub_268B37EE4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "fetchQuickStopContext not implemented in SimulatedContextProvider", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v5 + 8))(v10, v2);
  return a1(MEMORY[0x277D84F90]);
}

uint64_t sub_26898BED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6420, &unk_268B3C680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return sub_268B38444();
}

id SkipTimeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SkipTimeIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v32 = sub_268B36C44();
  sub_268B37204();
  v31 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v39);
  sub_268AD33CC(v38);
  sub_268B36754();
  v30 = sub_268B36734();
  sub_268B36C44();
  OUTLINED_FUNCTION_86_1();
  v1 = type metadata accessor for MultiUserConnectionProvider();
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v2 + 16) = [v3 init];
  __swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
  OUTLINED_FUNCTION_3_8();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = (v8 - v7);
  (*(v10 + 16))(v8 - v7);
  v11 = *v9;
  v36 = v0;
  v37 = MEMORY[0x277D5F680];
  *&v35 = v0;
  v12 = type metadata accessor for AnalyticsServiceLogger();
  v34[4] = &off_28795F5E0;
  v34[3] = v12;
  v34[0] = v11;
  v33[4] = &off_287960608;
  v33[3] = v1;
  v33[0] = v2;
  type metadata accessor for AnalyticsServiceImpl();
  v13 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v34, v12);
  OUTLINED_FUNCTION_3_8();
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v19 = (v18 - v17);
  (*(v20 + 16))(v18 - v17);
  __swift_mutable_project_boxed_opaque_existential_1(v33, v1);
  OUTLINED_FUNCTION_3_8();
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v26 = (v25 - v24);
  (*(v27 + 16))(v25 - v24);
  v28 = *v19;
  v29 = *v26;
  v13[5] = v12;
  v13[6] = &off_28795F5E0;
  v13[2] = v28;
  v13[21] = v1;
  v13[22] = &off_287960608;
  v13[18] = v29;
  sub_2688E6514(v38, (v13 + 7));
  v13[12] = v30;
  sub_2688E6514(&v35, (v13 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  sub_268B34C64();
  sub_26898F0B8(v32, v31, &v40, v13, v39);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_26898C364()
{
  OUTLINED_FUNCTION_26();
  v24 = v1;
  v25 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  OUTLINED_FUNCTION_15_7();
  v18(v13, v15, v6);
  v19 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v20 = v19 + v11;
  v21 = (v19 + v11) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handleSkipTimeMedia";
  *(v22 + 24) = 19;
  *(v22 + 32) = 2;
  (*(v9 + 32))(v22 + v19, v13, v6);
  *(v22 + v20) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_26898C5BC(v24, v25, sub_268958A64, v22);

  (*(v9 + 8))(v15, v6);
  OUTLINED_FUNCTION_23();
}

void sub_26898C5BC(void *a1, char *a2, void (*a3)(char **), uint64_t a4)
{
  v75 = a2;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v73 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - v19;
  v21 = swift_allocObject();
  v76 = a3;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268958D98;
  *(v22 + 24) = v21;
  v77 = a4;

  v23 = sub_268B18100();
  if (!v23)
  {
    goto LABEL_8;
  }

  v24 = v23;
  if (!sub_2688EFD0C(v23))
  {

LABEL_8:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v20, v29, v7);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "No devices found in SkipTimeIntent, returning failure", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    (*(v8 + 8))(v20, v7);
    goto LABEL_20;
  }

  v25 = [a1 duration];
  if (!v25)
  {
LABEL_15:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v12, v33, v7);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "Unable to get time from intent, returning failure", v36, 2u);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
LABEL_20:
    v37 = sub_268B36EA4();
    v38 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
    v39 = v37;
    v40 = SkipTimeIntentResponse.init(code:userActivity:)(5, v37);
    v78 = v40;
    v76(&v78);

    return;
  }

  v74 = v25;
  v26 = [v25 duration];
  if (!v26)
  {
    v27 = v74;
    goto LABEL_14;
  }

  v27 = v26;
  sub_268B37DE4();
  if (v28)
  {

LABEL_14:
    goto LABEL_15;
  }

  v73 = v27;
  v41 = *&v75[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_aceServiceHelper];
  sub_268921344();
  if (!v42[2])
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v18, v53, v7);
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2688BB000, v54, v55, "Missing routeId in intent, returning failure", v56, 2u);
      MEMORY[0x26D6266E0](v56, -1, -1);
    }

    (*(v8 + 8))(v18, v7);
    goto LABEL_39;
  }

  v44 = v42[4];
  v43 = v42[5];

  v45 = [v74 direction];
  if (v45 == 1)
  {
    v57 = v75;
    v58 = *__swift_project_boxed_opaque_existential_1(&v75[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_analyticsService], *&v75[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_analyticsService + 24]);
    sub_268920C54();
    sub_268949478(0x656D695470696B73, 0xE800000000000000, v59, v24);

    v60 = *&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController], *&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_268B3BBC0;
    *(v61 + 32) = v44;
    *(v61 + 40) = v43;
    v62 = swift_allocObject();
    v62[2] = sub_2688E19F8;
    v62[3] = v22;
    v62[4] = v57;
    v63 = v57;
    sub_268B36CB4();
    goto LABEL_31;
  }

  if (v45 != 2)
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v65 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v15, v65, v7);
    v66 = sub_268B37A34();
    v67 = sub_268B37EE4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2688BB000, v66, v67, "Unknown skip direction provided in intent, returning failure", v68, 2u);
      MEMORY[0x26D6266E0](v68, -1, -1);
    }

    (*(v8 + 8))(v15, v7);
LABEL_39:
    v69 = sub_268B36EA4();
    v70 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
    v71 = v69;
    v72 = SkipTimeIntentResponse.init(code:userActivity:)(5, v69);
    v78 = v72;
    v76(&v78);

    return;
  }

  v46 = v75;
  v47 = *__swift_project_boxed_opaque_existential_1(&v75[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_analyticsService], *&v75[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_analyticsService + 24]);
  sub_268920C54();
  sub_268949478(0x656D695470696B73, 0xE800000000000000, v48, v24);

  v49 = *&v46[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController + 32];
  __swift_project_boxed_opaque_existential_1(&v46[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController], *&v46[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController + 24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_268B3BBC0;
  *(v50 + 32) = v44;
  *(v50 + 40) = v43;
  v51 = swift_allocObject();
  v51[2] = sub_2688E19F8;
  v51[3] = v22;
  v51[4] = v46;
  v52 = v46;
  sub_268B36E64();
LABEL_31:

  v64 = v74;
}

void sub_26898CFF8(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B36ED4();
  sub_26898ECBC();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
  v7 = v3;
  v8 = SkipTimeIntentResponse.init(code:userActivity:)(v5, v3);
  a2();
}

void sub_26898D0C0(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B36ED4();
  sub_26898ECBC();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
  v7 = v3;
  v8 = SkipTimeIntentResponse.init(code:userActivity:)(v5, v3);
  a2();
}

void sub_26898D228(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = [a1 duration];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for SignedDuration();
    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v5 = sub_26893A824(0, 0);
    [v5 setDirection_];
  }

  type metadata accessor for SignedDurationResolutionResult();
  v7 = sub_268B2E114(v5);
  (a3)[2](a3, v7);

  _Block_release(a3);
}

void sub_26898D2F0(void *a1, void (*a2)(void))
{
  v3 = [a1 duration];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for SignedDuration();
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v6 = OUTLINED_FUNCTION_86_1();
    v4 = sub_26893A824(v6, 0);
    [v4 setDirection_];
  }

  type metadata accessor for SignedDurationResolutionResult();
  v7 = sub_268B2E114(v4);
  a2();
}

void sub_26898D3CC(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_268B36C04();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v41 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v36 = v11[2];
  v37 = v17;
  v36(v16);
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = a1;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "Resolving devices for skip time", v21, 2u);
    v22 = v21;
    a1 = v20;
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = v11[1];
  v23(v16, v10);
  if ((sub_268921060() & 1) != 0 && (v24 = a1, v25 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState + 32), __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState + 24)), a1 = v24, (sub_2688C3240() & 1) == 0))
  {
    v30 = v38;
    (v36)(v38, v37, v10);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "Whole House Audio requests are unsupported on this platform", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    v23(v30, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SkipTimeDevicesResolutionResult();
    *(v34 + 32) = sub_268B17B04(2);
    v35 = sub_268B37CE4();
    v29 = v41;
    (v41)[2](v41, v35);
  }

  else
  {
    v26 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceSelector);
    v28 = v39;
    v27 = v40;
    (*(v39 + 104))(v9, *MEMORY[0x277D5F650], v40);
    [a1 mediaType];
    v29 = v41;
    _Block_copy(v41);
    sub_268906D70();
    (*(v28 + 8))(v9, v27);
  }

  _Block_release(v29);
  _Block_release(v29);
}

void sub_26898D824()
{
  OUTLINED_FUNCTION_26();
  v42 = v0;
  v43 = v1;
  v44 = v3;
  v45 = v2;
  v41 = sub_268B36C04();
  v4 = OUTLINED_FUNCTION_1(v41);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v40 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v39 = *(v15 + 16);
  v39(v22, v23, v12);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_14();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "Resolving devices for skip time", v26, 2u);
    OUTLINED_FUNCTION_12();
  }

  v27 = *(v15 + 8);
  v27(v22, v12);
  v28 = sub_268921060();
  v29 = v42;
  if ((v28 & 1) != 0 && (v30 = *&v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState + 32], __swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState], *&v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState + 24]), (sub_2688C3240() & 1) == 0))
  {
    v33 = v40;
    v39(v40, v23, v12);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v36);
      _os_log_impl(&dword_2688BB000, v34, v35, "Whole House Audio requests are unsupported on this platform", v29, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v27(v33, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_11_11(v37, xmmword_268B3BBA0);
    v37[2].n128_u64[0] = sub_268B17B04(2);
    v43(v37);
  }

  else
  {
    v31 = *&v29[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceSelector];
    v32 = v41;
    (*(v6 + 104))(v11, *MEMORY[0x277D5F650], v41);
    [v45 mediaType];

    sub_268907630();
    (*(v6 + 8))(v11, v32);
  }

  OUTLINED_FUNCTION_23();
}

void sub_26898DBC8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v15 = (v13 - v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  if (v4)
  {
    if (v4 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
      (*(v10 + 16))(v19);

      v23 = sub_268B37A34();
      v24 = sub_268B37F04();
      sub_268958D4C(v6, 1u);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_172_0();
        v26 = OUTLINED_FUNCTION_173_0();
        v69 = v26;
        *v25 = 136315138;
        v27 = type metadata accessor for Device();
        v28 = MEMORY[0x26D6256F0](v6, v27);
        OUTLINED_FUNCTION_30_3(v28, v29);
        v67 = v2;
        OUTLINED_FUNCTION_16_7();
        *(v25 + 4) = v10;
        _os_log_impl(&dword_2688BB000, v23, v24, "SkipTimeIntentHandler#resolveDevices Disambiguating between devices: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        (v2)[1](v19, v7);
        v2 = v67;
      }

      else
      {

        (*(v10 + 8))(v19, v7);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v51 = swift_allocObject();
      OUTLINED_FUNCTION_11_11(v51, xmmword_268B3BBA0);
      v52 = sub_268B2CCFC(v6);
    }

    else
    {
      v67 = v2;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
      v65 = *(v10 + 16);
      v66 = v37;
      v65(v22);
      v38 = sub_268B37A34();
      v39 = sub_268B37EE4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_172_0();
        v64 = v10;
        v41 = v40;
        v63 = OUTLINED_FUNCTION_173_0();
        v69 = v63;
        *v41 = 136315138;
        v68 = v6 & 1;
        sub_26890C84C();
        v42 = sub_268B384A4();
        v44 = sub_26892CDB8(v42, v43, &v69);

        *(v41 + 4) = v44;
        _os_log_impl(&dword_2688BB000, v38, v39, "SkipTimeIntentHandler#resolveDevices Error resolving devices: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        OUTLINED_FUNCTION_12();
        v10 = v64;
        OUTLINED_FUNCTION_12();
      }

      v45 = *(v10 + 8);
      v45(v22, v7);
      v2 = v67;
      if ((v6 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v59 = swift_allocObject();
        OUTLINED_FUNCTION_11_11(v59, xmmword_268B3BBA0);
        v59[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v65)(v15, v66, v7);
      v46 = sub_268B37A34();
      v47 = sub_268B37EE4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v48);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v49, v50, "SkipTimeIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v45(v15, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v51 = swift_allocObject();
      OUTLINED_FUNCTION_11_11(v51, xmmword_268B3BBA0);
      v52 = sub_268B17B04(1);
    }

    v51[2].n128_u64[0] = v52;
LABEL_32:
    v60 = sub_268B37CE4();
    OUTLINED_FUNCTION_15_7();
    v61(v2, v60);

    _Block_release(v2);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
  (*(v10 + 16))(v0);

  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  sub_268958D4C(v6, 0);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_172_0();
    v33 = OUTLINED_FUNCTION_173_0();
    v69 = v33;
    *v32 = 136315138;
    v34 = type metadata accessor for Device();
    v35 = MEMORY[0x26D6256F0](v6, v34);
    OUTLINED_FUNCTION_30_3(v35, v36);
    v67 = v2;
    OUTLINED_FUNCTION_16_7();
    *(v32 + 4) = v10;
    _os_log_impl(&dword_2688BB000, v30, v31, "SkipTimeIntentHandler#resolveDevices Success resolving devices: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v2[1](v0, v7);
    v2 = v67;
  }

  else
  {

    (*(v10 + 8))(v0, v7);
  }

  v53 = sub_2688EFD0C(v6);
  if (!v53)
  {
LABEL_30:
    type metadata accessor for SkipTimeDevicesResolutionResult();
    goto LABEL_32;
  }

  v54 = v53;
  v69 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v54 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SkipTimeDevicesResolutionResult();
    v55 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x26D625BD0](v55, v6);
      }

      else
      {
        v56 = *(v6 + 8 * v55 + 32);
      }

      v57 = v56;
      ++v55;
      sub_268B2CC98(v56);

      sub_268B38214();
      v58 = v69[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v54 != v55);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_26898E2C4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v67 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      OUTLINED_FUNCTION_15_7();
      v24(v16);

      v25 = sub_268B37A34();
      v26 = sub_268B37F04();
      sub_268958D4C(v7, 1u);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_172_0();
        v28 = OUTLINED_FUNCTION_173_0();
        v69 = v28;
        *v27 = 136315138;
        v29 = type metadata accessor for Device();
        v30 = MEMORY[0x26D6256F0](v7, v29);
        OUTLINED_FUNCTION_30_3(v30, v31);
        v66 = v8;
        OUTLINED_FUNCTION_16_7();
        *(v27 + 4) = v2;
        _os_log_impl(&dword_2688BB000, v25, v26, "SkipTimeIntentHandler#resolveDevices Disambiguating between devices: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v11 + 8))(v16, v66);
      }

      else
      {

        (*(v11 + 8))(v16, v8);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v54 = swift_allocObject();
      OUTLINED_FUNCTION_11_11(v54, xmmword_268B3BBA0);
      v55 = sub_268B2CCFC(v7);
    }

    else
    {
      v66 = v2;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      v64 = *(v11 + 16);
      v65 = v40;
      v64(v23);
      v41 = sub_268B37A34();
      v42 = sub_268B37EE4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_172_0();
        v63 = v11;
        v44 = v43;
        v62 = OUTLINED_FUNCTION_173_0();
        v69 = v62;
        *v44 = 136315138;
        v68 = v7 & 1;
        sub_26890C84C();
        v45 = sub_268B384A4();
        v47 = sub_26892CDB8(v45, v46, &v69);

        *(v44 + 4) = v47;
        _os_log_impl(&dword_2688BB000, v41, v42, "SkipTimeIntentHandler#resolveDevices Error resolving devices: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        OUTLINED_FUNCTION_12();
        v11 = v63;
        OUTLINED_FUNCTION_12();
      }

      v48 = *(v11 + 8);
      v48(v23, v8);
      if (v7)
      {
        (v64)(v0, v65, v8);
        v49 = sub_268B37A34();
        v50 = sub_268B37EE4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v51);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v52, v53, "SkipTimeIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v48(v0, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v54 = swift_allocObject();
        OUTLINED_FUNCTION_11_11(v54, xmmword_268B3BBA0);
        v55 = sub_268B17B04(1);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v54 = swift_allocObject();
        OUTLINED_FUNCTION_11_11(v54, xmmword_268B3BBA0);
        v55 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v54[2].n128_u64[0] = v55;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
  OUTLINED_FUNCTION_15_7();
  v32(v20);

  v33 = sub_268B37A34();
  v34 = sub_268B37F04();
  sub_268958D4C(v7, 0);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_172_0();
    v36 = OUTLINED_FUNCTION_173_0();
    v69 = v36;
    *v35 = 136315138;
    v37 = type metadata accessor for Device();
    v38 = MEMORY[0x26D6256F0](v7, v37);
    OUTLINED_FUNCTION_30_3(v38, v39);
    v66 = v8;
    OUTLINED_FUNCTION_16_7();
    *(v35 + 4) = v2;
    _os_log_impl(&dword_2688BB000, v33, v34, "SkipTimeIntentHandler#resolveDevices Success resolving devices: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v11 + 8))(v20, v66);
  }

  else
  {

    (*(v11 + 8))(v20, v8);
  }

  v56 = sub_2688EFD0C(v7);
  v54 = MEMORY[0x277D84F90];
  if (!v56)
  {
    goto LABEL_32;
  }

  v57 = v56;
  v69 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v57 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SkipTimeDevicesResolutionResult();
    v58 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x26D625BD0](v58, v7);
      }

      else
      {
        v59 = *(v7 + 8 * v58 + 32);
      }

      v60 = v59;
      ++v58;
      sub_268B2CC98(v59);

      sub_268B38214();
      v61 = v69[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v57 != v58);
    v54 = v69;
LABEL_32:
    v67(v54);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_26898E99C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_86_1();
  type metadata accessor for SkipTimeDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_26898EA04(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = [a1 duration];
  if (v4)
  {
    v5 = v4;
    if ([v4 direction])
    {
      v6 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
      v7 = 1;
      v8 = 0;
      goto LABEL_6;
    }
  }

  v9 = sub_268B36EA4();
  objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
  v5 = v9;
  v7 = 5;
  v8 = v9;
LABEL_6:
  v10 = SkipTimeIntentResponse.init(code:userActivity:)(v7, v8);
  (a3)[2](a3, v10);

  _Block_release(a3);
}

void sub_26898EB0C(void *a1, void (*a2)(void))
{
  v4 = [a1 duration];
  if (v4)
  {
    v5 = v4;
    if ([v4 direction])
    {
      v6 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
      v7 = 1;
      v8 = 0;
      goto LABEL_6;
    }
  }

  sub_268B36EA4();
  OUTLINED_FUNCTION_86_1();
  objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
  v5 = v2;
  v7 = 5;
  v8 = v2;
LABEL_6:
  v9 = SkipTimeIntentResponse.init(code:userActivity:)(v7, v8);
  a2();
}

void sub_26898EC30(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_26898ECBC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B36F24();
  v3 = OUTLINED_FUNCTION_1(v2);
  v37 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v38 = (v7 - v8);
  v10 = MEMORY[0x28223BE20](v9);
  v36 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = sub_268B37A54();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v18, qword_2802CDA10);
  (*(v21 + 16))(v26);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_14();
    v35 = v14;
    OUTLINED_FUNCTION_81(v29);
    _os_log_impl(&dword_2688BB000, v27, v28, "responseCodeFromResult for SkipTimeIntentResponseCode", v1, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v21 + 8))(v26, v18);
  sub_26893B66C(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v37;
    v31 = *(v37 + 32);
    v31(v13, v17, v2);
    v32 = v36;
    sub_268B36EC4();
    v33 = *(v30 + 8);
    v33(v13, v2);
    v34 = v38;
    v31(v38, v32, v2);
    if ((*(v30 + 88))(v34, v2) != *MEMORY[0x277D5F6B0])
    {
      v33(v34, v2);
    }
  }

  OUTLINED_FUNCTION_23();
}

id SkipTimeIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SkipTimeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26898F0B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v30[3] = type metadata accessor for AnalyticsServiceImpl();
  v30[4] = &off_2879539D0;
  v30[0] = a4;
  sub_26890C900(a3, v29);
  sub_26890C900(v30, v27);
  sub_26890C900(a5, v26);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = v28;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_26892D53C(a2, v29, *v15, v26, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  sub_26890C900(a3, v29);
  sub_26890C900(v30, v27);
  sub_26890C900(a5, v26);
  v18 = v28;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = sub_26898F348(a1, v17, v29, *v22, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v24;
}

uint64_t sub_26898F310()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_26898F348(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v28[3] = sub_268B36C54();
  v28[4] = MEMORY[0x277D5F680];
  v28[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v27[3] = v10;
  v27[4] = &off_2879539D0;
  v27[0] = a4;
  v11 = type metadata accessor for SkipTimeIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v26[3] = v10;
  v26[4] = &off_2879539D0;
  v26[0] = v18;
  sub_26890C900(v28, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceSelector] = a2;
  sub_26890C900(v26, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_analyticsService]);
  sub_26890C900(a3, v25);
  sub_26890C900(a5, v24);
  type metadata accessor for AceServiceHelper();
  v19 = swift_allocObject();
  sub_2688E6514(v25, v19 + 16);
  sub_2688E6514(v24, v19 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_aceServiceHelper] = v19;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState]);
  v23.receiver = v12;
  v23.super_class = v11;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v20;
}

uint64_t sub_26898F570()
{
  v1 = sub_268B37A24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_26898F718()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26898F754(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_26898D0C0(a1, *(v1 + 16));
}

void sub_26898F760(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_26898CFF8(a1, *(v1 + 16));
}

uint64_t OUTLINED_FUNCTION_11_11(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SkipTimeDevicesResolutionResult();
}

id sub_26898F790()
{
  result = [objc_allocWithZone(type metadata accessor for MoveSpeakerIntentHandler()) init];
  qword_2802CD930 = result;
  return result;
}

uint64_t sub_26898F7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v2 = sub_268B35494();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - v9;
  v52 = type metadata accessor for MediaPlayerIntent();
  v11 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_0();
  v49 = (v13 - v12);
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v48 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v50 = &v47 - v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v26 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v51 = *(v17 + 16);
  v51(v25, v26, v14);
  v27 = sub_268B37A34();
  v28 = sub_268B37F04();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_14();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "MoveSpeakerFlowStrategy#actionForInput called", v29, 2u);
    OUTLINED_FUNCTION_12();
  }

  v30 = *(v17 + 8);
  v30(v25, v14);
  sub_268B35414();
  sub_26893BA8C(v6);
  if (__swift_getEnumTagSinglePayload(v10, 1, v52) != 1)
  {
    v37 = v10;
    v38 = v49;
    sub_2688C0464(v37, v49);
    v39 = *v38;
    if (v39 == 24)
    {
LABEL_10:
      v51(v50, v26, v14);
      v40 = sub_268B37A34();
      v41 = sub_268B37EE4();
      if (os_log_type_enabled(v40, v41))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_23_4(&dword_2688BB000, v42, v43, "MoveSpeakerFlowStrategy#actionForInput not a moveSpeaker request, ignoring...");
        OUTLINED_FUNCTION_12();
      }

      v30(v50, v14);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_3_16();
      static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
      sub_268B34ED4();
      return sub_2688C2F6C(v38);
    }

    if (sub_26893E3F8(v39) == 0x6165705365766F6DLL && v44 == 0xEB0000000072656BLL)
    {
    }

    else
    {
      v46 = sub_268B38444();

      if ((v46 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_268B34EC4();
    return sub_2688C2F6C(v38);
  }

  sub_2688C2E64(v10);
  v31 = v48;
  v51(v48, v26, v14);
  v32 = sub_268B37A34();
  v33 = sub_268B37EE4();
  if (os_log_type_enabled(v32, v33))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_23_4(&dword_2688BB000, v34, v35, "MoveSpeakerFlowStrategy#actionForInput not a MediaPlayerIntent, ignoring...");
    OUTLINED_FUNCTION_12();
  }

  v30(v31, v14);
  type metadata accessor for ErrorFilingHelper();
  OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_6_14();
  static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
  return sub_268B34ED4();
}

void sub_26898FCB8(uint64_t a1, uint64_t *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v70 = a3;
  v71 = a4;
  v72 = a2;
  v67 = a1;
  v69 = sub_268B35494();
  v4 = OUTLINED_FUNCTION_1(v69);
  v73 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v64 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v61 - v14;
  v66 = type metadata accessor for MediaPlayerIntent();
  v16 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v20 = sub_268B37A54();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v68 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  v29 = &v61 - v28;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v30 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v61 = *(v23 + 16);
  v62 = v30;
  v61(v29);
  v31 = sub_268B37A34();
  v32 = sub_268B37F04();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_14();
    *v33 = 0;
    _os_log_impl(&dword_2688BB000, v31, v32, "MoveSpeakerFlowStrategy#makeIntentFromParse called", v33, 2u);
    OUTLINED_FUNCTION_12();
  }

  v63 = *(v23 + 8);
  v63(v29, v20);
  v34 = *(v73 + 16);
  v35 = v67;
  v36 = v69;
  v34(v11, v67, v69);
  sub_26893BA8C(v11);
  if (__swift_getEnumTagSinglePayload(v15, 1, v66) == 1)
  {
    sub_2688C2E64(v15);
    (v61)(v68, v62, v20);
    v37 = v64;
    v34(v64, v35, v36);
    v38 = v36;
    v39 = sub_268B37A34();
    v40 = sub_268B37EE4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v74 = v72;
      *v41 = 136315138;
      v34(v11, v37, v38);
      v42 = sub_268B37C24();
      v44 = v43;
      v45 = OUTLINED_FUNCTION_7_11();
      v46(v45);
      v47 = sub_26892CDB8(v42, v44, &v74);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_2688BB000, v39, v40, "MoveSpeakerFlowStrategy#makeIntentFromParse received unexpected parse: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      v49 = OUTLINED_FUNCTION_7_11();
      v50(v49);
    }

    v63(v68, v20);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_6_14();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v51 = swift_allocError();
    *v52 = 28;
    v70(v51, 1);
  }

  else
  {
    sub_2688C0464(v15, v19);
    if (v72)
    {
      v48 = v72;
    }

    else
    {
      v48 = [objc_allocWithZone(type metadata accessor for MoveSpeakerIntent()) init];
    }

    v53 = v72;
    sub_268991714(v19);
    v54 = v65;
    v55 = v65[5];
    v56 = v65[6];
    __swift_project_boxed_opaque_existential_1(v65 + 2, v55);
    v57 = v19;
    v58 = swift_allocObject();
    v59 = v71;
    v58[2] = v70;
    v58[3] = v59;
    v58[4] = v48;
    v60 = v48;

    sub_268AD35F4(v60, &off_287953CA8, (v54 + 7), sub_268990B70, v58, v55, v56);

    sub_2688C2F6C(v57);
  }
}

uint64_t sub_2689902B8(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "MoveSpeakerFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_268990474()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3C5A0;
  v1 = sub_268B34BB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_268B34BA4();
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_268B34BA4();
  return v0;
}

uint64_t sub_26899058C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

id sub_268990634()
{
  if (qword_2802A4D78 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD930;

  return v1;
}

uint64_t sub_268990690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689906FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268990768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689907D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268990824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268990878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689908E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268990960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268990A78(uint64_t a1)
{
  result = sub_268990AF0(&qword_2802A6900);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268990AF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MoveSpeakerFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268990B30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268990BC4(uint64_t *a1)
{
  v79 = a1;
  v1 = sub_268B35494();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v74 = (v7 - v8);
  MEMORY[0x28223BE20](v9);
  v83 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = &v72 - v13;
  v82 = type metadata accessor for MediaPlayerIntent();
  v14 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_20_0();
  v72 = v15 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v73 = &v72 - v19;
  MEMORY[0x28223BE20](v18);
  v75 = &v72 - v20;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_0();
  v29 = v27 - v28;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v72 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v72 - v34;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v37 = *(v24 + 16);
  v76 = v36;
  v77 = v37;
  (v37)(v35);
  v38 = sub_268B37A34();
  v39 = sub_268B37F04();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v81 = v33;
    *v40 = 0;
    _os_log_impl(&dword_2688BB000, v38, v39, "Making flow from parse", v40, 2u);
    v33 = v81;
    OUTLINED_FUNCTION_12();
  }

  v80 = *(v24 + 8);
  v81 = (v24 + 8);
  v80(v35, v21);
  v41 = *(v4 + 16);
  v42 = v83;
  v43 = v79;
  v41(v83, v79, v1);
  v44 = v42;
  v45 = v78;
  sub_26893BA8C(v44);
  if (__swift_getEnumTagSinglePayload(v45, 1, v82) == 1)
  {
    sub_2688EF38C(v45, &qword_2802A5650, &unk_268B3BAC0);
    v77(v29, v76, v21);
    v46 = v74;
    v41(v74, v43, v1);
    v47 = sub_268B37A34();
    v48 = sub_268B37EE4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v84 = v79;
      *v49 = 136315138;
      v82 = v29;
      v41(v83, v46, v1);
      v50 = sub_268B37C24();
      v51 = v1;
      v52 = v50;
      v54 = v53;
      (*(v4 + 8))(v46, v51);
      v55 = sub_26892CDB8(v52, v54, &v84);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_2688BB000, v47, v48, "MediaPlayerFlowProvider.makeFlow Received unexpected parse: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v56 = v82;
    }

    else
    {

      (*(v4 + 8))(v46, v1);
      v56 = v29;
    }

    v80(v56, v21);
    return 0;
  }

  else
  {
    v57 = v75;
    sub_2688C0464(v45, v75);
    v77(v33, v76, v21);
    v58 = v73;
    sub_268946C8C(v57, v73);
    v59 = sub_268B37A34();
    v60 = sub_268B37F04();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v33;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v84 = v63;
      *v62 = 136315138;
      sub_268946C8C(v58, v72);
      v64 = sub_268B37C24();
      v66 = v65;
      sub_2688C2F6C(v58);
      v67 = sub_26892CDB8(v64, v66, &v84);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_2688BB000, v59, v60, "MediaPlayerIntent: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v68 = v61;
    }

    else
    {

      sub_2688C2F6C(v58);
      v68 = v33;
    }

    v80(v68, v21);
    sub_268991280(v57);
    v69 = v70;
    sub_2688C2F6C(v57);
  }

  return v69;
}

void sub_268991280(_BYTE *a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  switch(*a1)
  {
    case 1:
    case 3:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B03D2C();
      return;
    case 2:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B041A4();
      return;
    case 4:
    case 5:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B0533C();
      return;
    case 6:
    case 0xA:
      goto LABEL_26;
    case 7:
    case 8:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B04CDC();
      return;
    case 9:
      v19 = a1[*(type metadata accessor for MediaPlayerIntent() + 32)];
      if (v19 == 2)
      {
        goto LABEL_21;
      }

      if (v19)
      {
        v20 = sub_268B38444();

        if ((v20 & 1) == 0)
        {
LABEL_21:
          __swift_project_boxed_opaque_existential_1(v1, v1[3]);
          sub_268B0566C();
          return;
        }
      }

      else
      {
      }

LABEL_26:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B0500C();
      return;
    case 0xB:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B0599C();
      return;
    case 0xC:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B07BBC();
      return;
    case 0xD:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      goto LABEL_19;
    case 0xE:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B0366C();
      return;
    case 0xF:
    case 0x18:
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v12 = __swift_project_value_buffer(v3, qword_2802CDA10);
      (*(v4 + 16))(v7, v12, v3);
      v13 = sub_268B37A34();
      v14 = sub_268B37F04();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2688BB000, v13, v14, "Unable to make flow for mediaPlayer intent", v15, 2u);
        MEMORY[0x26D6266E0](v15, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
      return;
    case 0x10:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B0869C();
      return;
    case 0x11:
    case 0x12:
    case 0x17:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B089CC();
      return;
    default:
      v16 = type metadata accessor for MediaPlayerIntent();
      sub_2689916A4(&a1[*(v16 + 40)], v11);
      v17 = sub_268B37924();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v17);
      sub_2688EF38C(v11, &qword_2802A5CA8, &unk_268B3CE30);
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      if (EnumTagSinglePayload == 1)
      {
        sub_268B0461C();
      }

      else
      {
LABEL_19:
        sub_268B074FC();
      }

      return;
  }
}

uint64_t sub_2689916A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_268991714(uint64_t a1)
{
  sub_26899178C(a1);
  v3 = type metadata accessor for MediaPlayerIntent();
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + *(v3 + 48));
  if (v6 != 26)
  {
    v4 = sub_268942D54(v6);
  }

  v7 = sub_268A7528C(v4, v5);

  return [v1 setMediaType_];
}

uint64_t sub_26899178C(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v10);
  sub_268965BF8();
  v11 = sub_268B37854();
  v12 = *(v11 + 16);
  if (v12)
  {
    v26 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v25);
      sub_26890C900(v25, v24);
      sub_268AC88F0(v24);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      sub_268B38214();
      v14 = *(v26 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v26;
    v16 = off_28795BC58;
    v17 = type metadata accessor for MoveSpeakerIntent();
    v16(v15, v17, &off_28795BC48);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Home Automation entities are empty, skip adding to intent.", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return sub_2688C2F6C(v10);
}

id AddSpeakerIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void AddSpeakerIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v33 = sub_268B36C44();
  sub_268B37204();
  v32 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v40);
  sub_268AD33CC(v39);
  sub_268B36754();
  v31 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  OUTLINED_FUNCTION_3_8();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v37 = v0;
  v38 = MEMORY[0x277D5F680];
  *&v36 = v1;
  v13 = type metadata accessor for AnalyticsServiceLogger();
  v35[4] = &off_28795F5E0;
  v35[3] = v13;
  v35[0] = v12;
  v34[4] = &off_287960608;
  v34[3] = v2;
  v34[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v35, v13);
  OUTLINED_FUNCTION_3_8();
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v2);
  OUTLINED_FUNCTION_3_8();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = (v26 - v25);
  (*(v28 + 16))(v26 - v25);
  v29 = *v20;
  v30 = *v27;
  v14[5] = v13;
  v14[6] = &off_28795F5E0;
  v14[2] = v29;
  v14[21] = v2;
  v14[22] = &off_287960608;
  v14[18] = v30;
  sub_2688E6514(v39, (v14 + 7));
  v14[12] = v31;
  sub_2688E6514(&v36, (v14 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);

  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  sub_268B34C64();
  sub_2689962E4(v33, v32, &v41, v14, v40);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268991EA8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_12(v2);
  OUTLINED_FUNCTION_3_8();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v0;
  v8 = qword_2802A5028;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v9 = OUTLINED_FUNCTION_4_13();
  v10(v9);
  OUTLINED_FUNCTION_5_5();
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_0_20(v11, 22);
  v13(v12);
  OUTLINED_FUNCTION_9_10();
  *(v14 + 8) = sub_268958724;
  *(v14 + 16) = v7;

  sub_268B38004();
  sub_268B37A04();

  sub_26899207C(v17, v18, sub_268996618, v11);

  v15 = OUTLINED_FUNCTION_11_12();
  v16(v15);
  OUTLINED_FUNCTION_23();
}

void sub_26899207C(char *a1, uint64_t a2, objc_class *a3, unint64_t a4)
{
  v120 = a2;
  v127 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v117 = (&v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v118 = (&v108 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v119 = (&v108 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v126 = (&v108 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v108 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = (&v108 - v20);
  v22 = swift_allocObject();
  v22[2].isa = a3;
  v22[3].isa = a4;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_268958D98;
  *(v23 + 24) = v22;
  v121 = v23;
  v24 = qword_2802A4F30;

  if (v24 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v25 = __swift_project_value_buffer(v6, qword_2802CDA10);
    v26 = *(v7 + 16);
    v122 = v25;
    v123 = v26;
    v124 = v7 + 16;
    (v26)(v21);
    v27 = sub_268B37A34();
    v28 = sub_268B37F04();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "AddSpeakerIntentHandler.handle() called", v29, 2u);
      MEMORY[0x26D6266E0](v29, -1, -1);
    }

    v31 = *(v7 + 8);
    v30 = v7 + 8;
    v125 = v31;
    v31(v21, v6);
    v32 = v127;
    v33 = [v127 source];
    if (!v33)
    {
      goto LABEL_18;
    }

    v21 = v33;
    v34 = sub_268B0F7F4(v32);
    if (!v34)
    {

      goto LABEL_18;
    }

    v35 = v34;
    v36 = sub_2688F42F4(v21);
    if (!v36)
    {

LABEL_18:

LABEL_19:
      v123(v19, v122, v6);
      v41 = sub_268B37A34();
      v42 = sub_268B37EE4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2688BB000, v41, v42, "Could not find a valid source and/or destinations in the intent", v43, 2u);
        MEMORY[0x26D6266E0](v43, -1, -1);
      }

      v125(v19, v6);
      v44 = sub_268B36EA4();
      v45 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
      v46 = v44;
      v47 = AddSpeakerIntentResponse.init(code:userActivity:)(5, v44);
      v128[0] = v47;
      (a3)(v128);

      goto LABEL_22;
    }

    v37 = v36;
    v114 = v30;
    v115 = v6;
    v111 = a3;
    v112 = v22;
    v113 = a4;
    v38 = sub_2688EFD0C(v36);
    v6 = 0;
    a4 = v37 & 0xC000000000000001;
    v7 = v37 & 0xFFFFFFFFFFFFFF8;
LABEL_8:
    if (v38 == v6)
    {

      a3 = v111;
      v6 = v115;
      goto LABEL_19;
    }

    if (a4)
    {
      v39 = MEMORY[0x26D625BD0](v6, v37);
    }

    else
    {
      if (v6 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v39 = *(v37 + 8 * v6 + 32);
    }

    v22 = v39;
    if (!__OFADD__(v6, 1))
    {
      break;
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  sub_26892D418(v39);
  if (!v40)
  {

    ++v6;
    goto LABEL_8;
  }

  a3 = v126;
  v48 = v115;
  v123(v126, v122, v115);
  v49 = v21;

  v19 = sub_268B37A34();
  v50 = sub_268B37F04();

  v51 = os_log_type_enabled(v19, v50);
  v109 = v49;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v128[0] = v53;
    *v52 = 136315394;
    v54 = sub_2688F3970();
    v56 = sub_26892CDB8(v54, v55, v128);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    v57 = type metadata accessor for DeviceGroup();
    v58 = MEMORY[0x26D625710](v35, v57);
    v60 = v59;

    v61 = sub_26892CDB8(v58, v60, v128);

    *(v52 + 14) = v61;
    _os_log_impl(&dword_2688BB000, v19, v50, "Resolved Source: %s, Resolved Destinations: %s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v53, -1, -1);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  else
  {
  }

  v125(a3, v48);
  v126 = *(v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_aceServiceHelper);
  v21 = v127;
  sub_268A581C0(v126);
  v63 = v62;
  v6 = 0;
  a4 = *(v62 + 16);
  v64 = v62 + 40;
  v116 = MEMORY[0x277D84F90];
  v110 = v62 + 40;
LABEL_28:
  v7 = v64 + 16 * v6;
  while (a4 != v6)
  {
    if (v6 >= *(v63 + 16))
    {
      goto LABEL_66;
    }

    v19 = v22;
    v65 = *(v7 - 8);
    a3 = *v7;
    swift_bridgeObjectRetain_n();
    v66 = sub_268AA3CE8(v126);
    if (!v67)
    {

LABEL_41:
      v70 = v116;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v128[0] = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = *(v70 + 16);
        sub_26894470C();
        v70 = v128[0];
      }

      v73 = *(v70 + 16);
      if (v73 >= *(v70 + 24) >> 1)
      {
        sub_26894470C();
        v70 = v128[0];
      }

      ++v6;
      *(v70 + 16) = v73 + 1;
      v116 = v70;
      v74 = v70 + 16 * v73;
      *(v74 + 32) = v65;
      *(v74 + 40) = a3;
      v21 = v127;
      v64 = v110;
      goto LABEL_28;
    }

    if (v65 == v66 && v67 == a3)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v69 = sub_268B38444();

      if ((v69 & 1) == 0)
      {
        goto LABEL_41;
      }

      v21 = v127;
    }

    v7 += 16;
    ++v6;
  }

  if (!*(v116 + 16))
  {

    v80 = v119;
    v81 = v115;
    v123(v119, v122, v115);
    v82 = sub_268B37A34();
    v83 = sub_268B37EE4();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_2688BB000, v82, v83, "Empty destination ids found after filtration. Returning error", v84, 2u);
      MEMORY[0x26D6266E0](v84, -1, -1);
    }

    v125(v80, v81);
    v85 = sub_268B36EA4();
    v86 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
    v87 = v85;
    v88 = AddSpeakerIntentResponse.init(code:userActivity:)(5, v85);
    v128[0] = v88;
    (v111)(v128);

LABEL_63:

    return;
  }

  v75 = (v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState);
  v76 = *(v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState), *(v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState + 24));
  v77 = sub_268B34D04();
  v78 = v115;
  if (v77)
  {
    v79 = 1;
  }

  else
  {
    v89 = v75[4];
    __swift_project_boxed_opaque_existential_1(v75, v75[3]);
    v79 = sub_268B34D24();
  }

  if (sub_268983434() & 1) == 0 || (v79)
  {
    sub_268AA3CE8(v126);
    if (v97)
    {
      v98 = *(v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController + 32);
      __swift_project_boxed_opaque_existential_1((v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController), *(v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController + 24));
      v99 = swift_allocObject();
      v100 = v121;
      *(v99 + 16) = sub_2688E19F8;
      *(v99 + 24) = v100;
      sub_268B36D94();

      goto LABEL_22;
    }

    v101 = v117;
    v123(v117, v122, v78);
    v102 = sub_268B37A34();
    v103 = sub_268B37EE4();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_2688BB000, v102, v103, "Failed to get the device id of the source. Returning error", v104, 2u);
      MEMORY[0x26D6266E0](v104, -1, -1);
    }

    v125(v101, v78);
    v105 = sub_268B36EA4();
    v106 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
    v107 = v105;
    v88 = AddSpeakerIntentResponse.init(code:userActivity:)(5, v105);
    v128[0] = v88;
    (v111)(v128);

    goto LABEL_63;
  }

  v90 = v118;
  v123(v118, v122, v78);
  v91 = sub_268B37A34();
  v92 = sub_268B37F04();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_2688BB000, v91, v92, "Source device doesn't support add command, sending a move command instead", v93, 2u);
    MEMORY[0x26D6266E0](v93, -1, -1);
  }

  v125(v90, v78);
  v94 = *(v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController + 32);
  __swift_project_boxed_opaque_existential_1((v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController), *(v120 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController + 24));
  v95 = swift_allocObject();
  v96 = v121;
  *(v95 + 16) = sub_2688E19F8;
  *(v95 + 24) = v96;
  sub_268B36DC4();

LABEL_22:
}

void sub_268992E08(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v73 = a3;
  v74 = a2;
  v75 = sub_268B37A54();
  v72 = *(v75 - 8);
  v4 = *(v72 + 64);
  v5 = MEMORY[0x28223BE20](v75);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v65 - v8;
  v9 = sub_268B36F24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v69 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - v21;
  v70 = a1;
  sub_2688F1FA4(a1, &v65 - v21, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v18, v22, v9);
    v23 = v9;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v24 = v75;
    v25 = __swift_project_value_buffer(v75, qword_2802CDA10);
    v26 = v71;
    v27 = v72;
    (*(v72 + 16))(v71, v25, v24);
    v28 = v10;
    v66 = *(v10 + 16);
    v67 = v18;
    v66(v16, v18, v23);
    v29 = sub_268B37A34();
    v30 = sub_268B37EE4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v68 = v23;
      v32 = v31;
      v65 = swift_slowAlloc();
      v76 = v65;
      *v32 = 136315138;
      sub_26899693C(&qword_2802A5F88, MEMORY[0x277D5F6E0]);
      v33 = sub_268B384A4();
      v34 = v27;
      v36 = v35;
      v37 = *(v10 + 8);
      v37(v16, v68);
      v38 = sub_26892CDB8(v33, v36, &v76);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_2688BB000, v29, v30, "Failed to move output devices to group. Error: %s", v32, 0xCu);
      v39 = v65;
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x26D6266E0](v39, -1, -1);
      v40 = v32;
      v23 = v68;
      MEMORY[0x26D6266E0](v40, -1, -1);

      (*(v34 + 8))(v71, v75);
    }

    else
    {

      v37 = *(v10 + 8);
      v37(v16, v23);
      (*(v27 + 8))(v26, v75);
    }

    v49 = v69;
    v50 = v67;
    v66(v69, v67, v23);
    v51 = (*(v28 + 88))(v49, v23);
    if (v51 == *MEMORY[0x277D5F6C0])
    {
      v52 = sub_268B36ED4();
      v53 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
      v54 = v52;
      v55 = AddSpeakerIntentResponse.init(code:userActivity:)(101, v52);
      v74();

      v37(v50, v23);
    }

    else
    {
      if (v51 == *MEMORY[0x277D5F6A8])
      {
        v56 = sub_268B36ED4();
        v57 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
        v58 = v56;
        v59 = AddSpeakerIntentResponse.init(code:userActivity:)(102, v56);
        v74();

        v60 = v50;
      }

      else
      {
        v61 = sub_268B36ED4();
        v62 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
        v63 = v61;
        v64 = AddSpeakerIntentResponse.init(code:userActivity:)(5, v61);
        v74();

        v37(v50, v23);
        v60 = v49;
      }

      v37(v60, v23);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v75;
    v42 = __swift_project_value_buffer(v75, qword_2802CDA10);
    v43 = v72;
    (*(v72 + 16))(v7, v42, v41);
    v44 = sub_268B37A34();
    v45 = sub_268B37F04();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v45, "Success moving output devices to group", v46, 2u);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    (*(v43 + 8))(v7, v41);
    v47 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
    v48 = AddSpeakerIntentResponse.init(code:userActivity:)(100, 0);
    v74();
  }
}

void sub_268993590(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v73 = a3;
  v74 = a2;
  v75 = sub_268B37A54();
  v72 = *(v75 - 8);
  v4 = *(v72 + 64);
  v5 = MEMORY[0x28223BE20](v75);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v65 - v8;
  v9 = sub_268B36F24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v69 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - v21;
  v70 = a1;
  sub_2688F1FA4(a1, &v65 - v21, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v18, v22, v9);
    v23 = v9;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v24 = v75;
    v25 = __swift_project_value_buffer(v75, qword_2802CDA10);
    v26 = v71;
    v27 = v72;
    (*(v72 + 16))(v71, v25, v24);
    v28 = v10;
    v66 = *(v10 + 16);
    v67 = v18;
    v66(v16, v18, v23);
    v29 = sub_268B37A34();
    v30 = sub_268B37EE4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v68 = v23;
      v32 = v31;
      v65 = swift_slowAlloc();
      v76 = v65;
      *v32 = 136315138;
      sub_26899693C(&qword_2802A5F88, MEMORY[0x277D5F6E0]);
      v33 = sub_268B384A4();
      v34 = v27;
      v36 = v35;
      v37 = *(v10 + 8);
      v37(v16, v68);
      v38 = sub_26892CDB8(v33, v36, &v76);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_2688BB000, v29, v30, "Failed to add output devices to group. Error: %s", v32, 0xCu);
      v39 = v65;
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x26D6266E0](v39, -1, -1);
      v40 = v32;
      v23 = v68;
      MEMORY[0x26D6266E0](v40, -1, -1);

      (*(v34 + 8))(v71, v75);
    }

    else
    {

      v37 = *(v10 + 8);
      v37(v16, v23);
      (*(v27 + 8))(v26, v75);
    }

    v49 = v69;
    v50 = v67;
    v66(v69, v67, v23);
    v51 = (*(v28 + 88))(v49, v23);
    if (v51 == *MEMORY[0x277D5F6C0])
    {
      v52 = sub_268B36ED4();
      v53 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
      v54 = v52;
      v55 = AddSpeakerIntentResponse.init(code:userActivity:)(101, v52);
      v74();

      v37(v50, v23);
    }

    else
    {
      if (v51 == *MEMORY[0x277D5F6A8])
      {
        v56 = sub_268B36ED4();
        v57 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
        v58 = v56;
        v59 = AddSpeakerIntentResponse.init(code:userActivity:)(102, v56);
        v74();

        v60 = v50;
      }

      else
      {
        v61 = sub_268B36ED4();
        v62 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
        v63 = v61;
        v64 = AddSpeakerIntentResponse.init(code:userActivity:)(5, v61);
        v74();

        v37(v50, v23);
        v60 = v49;
      }

      v37(v60, v23);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v75;
    v42 = __swift_project_value_buffer(v75, qword_2802CDA10);
    v43 = v72;
    (*(v72 + 16))(v7, v42, v41);
    v44 = sub_268B37A34();
    v45 = sub_268B37F04();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v45, "Success adding output devices to group", v46, 2u);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    (*(v43 + 8))(v7, v41);
    v47 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
    v48 = AddSpeakerIntentResponse.init(code:userActivity:)(4, 0);
    v74();
  }
}

void sub_268993D4C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_12(v2);
  OUTLINED_FUNCTION_3_8();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v0;
  v8 = qword_2802A5028;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v9 = OUTLINED_FUNCTION_4_13();
  v10(v9);
  OUTLINED_FUNCTION_5_5();
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_0_20(v11, 23);
  v13(v12);
  OUTLINED_FUNCTION_9_10();
  *(v14 + 8) = sub_2689969C0;
  *(v14 + 16) = v7;

  sub_268B38004();
  sub_268B37A04();

  sub_268993F20(v18, v17, sub_268996618, v11);

  v15 = OUTLINED_FUNCTION_11_12();
  v16(v15);
  OUTLINED_FUNCTION_23();
}

void sub_268993F20(uint64_t a1, uint64_t a2, void (*a3)(id *), uint64_t a4)
{
  v43[1] = a2;
  v46 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v43[0] = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = v43 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v43 - v13;
  v15 = swift_allocObject();
  v45 = a3;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_268958D98;
  *(v16 + 24) = v15;
  v17 = qword_2802A4F30;
  v48 = a4;

  v47 = v15;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v19 = v7[2];
  v19(v14, v18, v6);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "AddSpeakerIntentHandler.resolveSource()", v22, 2u);
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = v7[1];
  v23(v14, v6);
  v24 = v46;
  v25 = *(v46 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState), *(v46 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState + 24));
  if ((sub_2688C3240() & 1) == 0)
  {

    v29 = v44;
    v19(v44, v18, v6);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "Whole House Audio requests are unsupported on this platform", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    v23(v29, v6);
    type metadata accessor for AddSpeakerSourceResolutionResult();
    v33 = 4;
    goto LABEL_17;
  }

  v26 = sub_268B1CC90();
  if (!v26)
  {
LABEL_14:

    v34 = v43[0];
    v19(v43[0], v18, v6);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "Could not find any device queries in the intent. Returning error", v37, 2u);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    v23(v34, v6);
    type metadata accessor for AddSpeakerSourceResolutionResult();
    v33 = 3;
LABEL_17:
    v38 = sub_268B17B04(v33);
    v49 = v38;
    v45(&v49);

    return;
  }

  if (!sub_2688EFD0C(v26))
  {

    goto LABEL_14;
  }

  if (sub_268B1CCB0())
  {
    sub_268AA4074();
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v39 = *(v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceSelector);
  sub_268920A60();
  v41 = v40;

  v42 = swift_allocObject();
  *(v42 + 16) = sub_268958EA4;
  *(v42 + 24) = v16;
  sub_2688F9A5C(v41, v28, 0, sub_268996924, v42);
}

void sub_26899444C(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  if (!sub_2688EFD0C(a1))
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v9, v25, v4);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "Could not find a source stream for the add request.", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    type metadata accessor for AddSpeakerSourceResolutionResult();
    v29 = 2;
    goto LABEL_20;
  }

  if (sub_2688EFD0C(a1) != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v12, v30, v4);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "Multiple sources found for add request.", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
    type metadata accessor for AddSpeakerSourceResolutionResult();
    v29 = 1;
LABEL_20:
    v24 = sub_268B17B04(v29);
    a2();
    goto LABEL_21;
  }

  sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    v15 = *(a1 + 32);
  }

  v16 = v15;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v14, v17, v4);
  v18 = v16;
  v19 = sub_268B37A34();
  v20 = sub_268B37F04();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_2688BB000, v19, v20, "Success resolving source: %@.", v21, 0xCu);
    sub_2688C058C(v22, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v22, -1, -1);
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v5 + 8))(v14, v4);
  type metadata accessor for AddSpeakerSourceResolutionResult();
  v24 = sub_268B32628(v18);
  a2();

LABEL_21:
}

uint64_t sub_268994948(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_2689949F0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_12(v2);
  OUTLINED_FUNCTION_3_8();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v0;
  v8 = qword_2802A5028;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v9 = OUTLINED_FUNCTION_4_13();
  v10(v9);
  OUTLINED_FUNCTION_5_5();
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_0_20(v11, 29);
  v13(v12);
  OUTLINED_FUNCTION_9_10();
  *(v14 + 8) = sub_2688E19C4;
  *(v14 + 16) = v7;

  sub_268B38004();
  sub_268B37A04();

  sub_268994BC4(v17, v18, sub_268996618, v11);

  v15 = OUTLINED_FUNCTION_11_12();
  v16(v15);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268994BC4(void *a1, char *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v37 = a2;
  v41 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = swift_allocObject();
  v40 = a3;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_268958D98;
  *(v15 + 24) = v14;
  v16 = qword_2802A4F30;
  v43 = a4;

  v42 = v14;

  if (v16 != -1)
  {
    swift_once();
  }

  v39 = v11;
  v17 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v38 = v7[2];
  v38(v13, v17, v6);
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "AddSpeakerIntentHandler.resolveDestination() called", v20, 2u);
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v21 = v7[1];
  v21(v13, v6);
  v22 = v41;
  v23 = sub_268B1CC90();
  if (v23)
  {
    v24 = v23;
    if (sub_2688EFD0C(v23))
    {
      v25 = [v22 source];
      if (v25)
      {
        v26 = v25;
        v27 = v37;
        v28 = *&v37[OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceSelector];
        sub_268920A60();
        sub_268B1CCB0();
        v29 = swift_allocObject();
        v29[2] = sub_2688E19F8;
        v29[3] = v15;
        v29[4] = v27;
        v29[5] = v24;
        v30 = v27;
        sub_2688FC9D4();
      }
    }
  }

  v31 = v39;
  v38(v39, v17, v6);
  v32 = sub_268B37A34();
  v33 = sub_268B37EE4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "Could not find a device query or could not find add source in the intent. Returning error", v34, 2u);
    MEMORY[0x26D6266E0](v34, -1, -1);
  }

  v21(v31, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_268B3BBA0;
  type metadata accessor for AddSpeakerDestinationsResolutionResult();
  *(v35 + 32) = sub_268B1CD38(2);
  v44 = v35;
  v40(&v44);
}

uint64_t sub_268995024(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v130 = a5;
  v133 = sub_268B37464();
  v118 = *(v133 - 8);
  v9 = *(v118 + 64);
  MEMORY[0x28223BE20](v133);
  v120 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  v11 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v13 = &v111 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v123 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v132 = &v111 - v19;
  MEMORY[0x28223BE20](v18);
  v131 = &v111 - v20;
  v21 = sub_268B37A54();
  v121 = *(v21 - 8);
  v122 = v21;
  v22 = *(v121 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v119 = &v111 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v114 = &v111 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v111 - v30;
  v134 = a1;
  v32 = sub_2688EFD0C(a1);
  if (v32)
  {
    v33 = v32;
    v116 = a3;
    v117 = a2;
    v34 = (a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState);
    v35 = *(a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState + 32);
    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState), *(a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState + 24));
    v36 = sub_268B34C74();
    sub_268AA43C8(v134);
    if (v37)
    {
      v38 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      if ((sub_268B34D04() & 1) == 0)
      {
        v39 = v34[4];
        __swift_project_boxed_opaque_existential_1(v34, v34[3]);
        if (((sub_268B34D24() | v36) & 1) == 0)
        {
          if (qword_2802A4F30 != -1)
          {
            goto LABEL_65;
          }

          goto LABEL_37;
        }
      }
    }

    v40 = 0;
    v41 = (v134 & 0xC000000000000001);
    v42 = v134 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v33 == v40)
      {
        goto LABEL_46;
      }

      if (v41)
      {
        v43 = MEMORY[0x26D625BD0](v40, v134);
      }

      else
      {
        if (v40 >= *(v42 + 16))
        {
          goto LABEL_60;
        }

        v43 = *(v134 + 8 * v40 + 32);
      }

      v44 = v43;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ([v43 type] == 7)
      {
        v52 = sub_2689CB550();
        v53 = sub_2688EFD0C(v52);

        if (v53 >= 2)
        {
          v111 = v41;
          v54 = v130;
          v55 = sub_2688EFD0C(v130);
          v56 = 0;
          v127 = v54 & 0xC000000000000001;
          v128 = v55;
          v126 = v54 & 0xFFFFFFFFFFFFFF8;
          v125 = *MEMORY[0x277D5F868];
          v124 = (v118 + 104);
          v113 = (v118 + 32);
          v118 += 8;
          v57 = &qword_2802A5BA8;
          v41 = &qword_268B3C690;
          v112 = v13;
          while (1)
          {
            if (v128 == v56)
            {
              if (qword_2802A4F30 != -1)
              {
                swift_once();
              }

              v82 = v122;
              v83 = __swift_project_value_buffer(v122, qword_2802CDA10);
              v84 = v121;
              v85 = v114;
              (*(v121 + 16))(v114, v83, v82);
              v86 = sub_268B37A34();
              v87 = sub_268B37EE4();
              v88 = os_log_type_enabled(v86, v87);
              v89 = v117;
              if (v88)
              {
                v90 = swift_slowAlloc();
                *v90 = 0;
                _os_log_impl(&dword_2688BB000, v86, v87, "User asked for a single device matching a deviceType, but multiple devices were found. Returning an error", v90, 2u);
                MEMORY[0x26D6266E0](v90, -1, -1);
              }

              (*(v84 + 8))(v85, v82);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
              v91 = swift_allocObject();
              *(v91 + 16) = xmmword_268B3BBA0;
              type metadata accessor for AddSpeakerDestinationsResolutionResult();
              *(v91 + 32) = sub_268B1CD38(1);
              v89(v91);
            }

            if (v127)
            {
              v58 = MEMORY[0x26D625BD0](v56, v130);
            }

            else
            {
              if (v56 >= *(v126 + 16))
              {
                goto LABEL_62;
              }

              v58 = *(v130 + 8 * v56 + 32);
            }

            v59 = v58;
            if (__OFADD__(v56, 1))
            {
              goto LABEL_61;
            }

            v60 = v131;
            DeviceQuery.deviceQuantifier.getter();
            v62 = v132;
            v61 = v133;
            (*v124)(v132, v125, v133);
            __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
            v63 = *(v129 + 48);
            sub_2688F1FA4(v60, v13, v57, v41);
            sub_2688F1FA4(v62, &v13[v63], v57, v41);
            if (__swift_getEnumTagSinglePayload(v13, 1, v61) == 1)
            {
              break;
            }

            v64 = v132;
            v65 = v133;
            v66 = v123;
            sub_2688F1FA4(v13, v123, v57, v41);
            if (__swift_getEnumTagSinglePayload(&v13[v63], 1, v65) == 1)
            {

              sub_2688C058C(v64, v57, v41);
              sub_2688C058C(v131, v57, v41);
              (*v118)(v66, v65);
LABEL_31:
              sub_2688C058C(v13, &qword_2802A5BA0, &unk_268B41020);
              goto LABEL_33;
            }

            v67 = &v13[v63];
            v68 = v41;
            v69 = v57;
            v70 = v120;
            (*v113)(v120, v67, v65);
            sub_26899693C(&qword_2802A5BB0, MEMORY[0x277D5F880]);
            v115 = sub_268B37BB4();

            v71 = *v118;
            v72 = v70;
            v57 = v69;
            v41 = v68;
            v13 = v112;
            (*v118)(v72, v65);
            sub_2688C058C(v64, v57, v41);
            sub_2688C058C(v131, v57, v41);
            v71(v66, v65);
            sub_2688C058C(v13, v57, v41);
            if (v115)
            {
              goto LABEL_45;
            }

LABEL_33:
            ++v56;
          }

          sub_2688C058C(v132, v57, v41);
          sub_2688C058C(v60, v57, v41);
          if (__swift_getEnumTagSinglePayload(&v13[v63], 1, v133) == 1)
          {
            sub_2688C058C(v13, &qword_2802A5BA8, &qword_268B3C690);
LABEL_45:

            v41 = v111;
            goto LABEL_46;
          }

          goto LABEL_31;
        }

LABEL_46:
        if (qword_2802A4F30 == -1)
        {
LABEL_47:
          v92 = v122;
          v93 = __swift_project_value_buffer(v122, qword_2802CDA10);
          v94 = v121;
          v95 = v119;
          (*(v121 + 16))(v119, v93, v92);

          v96 = sub_268B37A34();
          v97 = sub_268B37F04();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v135 = v99;
            *v98 = 136315138;
            v100 = type metadata accessor for DeviceGroup();
            v101 = MEMORY[0x26D6256F0](v134, v100);
            v103 = sub_26892CDB8(v101, v102, &v135);

            *(v98 + 4) = v103;
            _os_log_impl(&dword_2688BB000, v96, v97, "Success resolving destination: %s.", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v99);
            MEMORY[0x26D6266E0](v99, -1, -1);
            MEMORY[0x26D6266E0](v98, -1, -1);
          }

          (*(v94 + 8))(v95, v92);
          v104 = sub_2688EFD0C(v134);
          v31 = MEMORY[0x277D84F90];
          if (!v104)
          {
            goto LABEL_57;
          }

          v105 = v104;
          v135 = MEMORY[0x277D84F90];
          sub_268B38234();
          if ((v105 & 0x8000000000000000) == 0)
          {
            type metadata accessor for AddSpeakerDestinationsResolutionResult();
            v106 = 0;
            do
            {
              if (v41)
              {
                v107 = MEMORY[0x26D625BD0](v106, v134);
              }

              else
              {
                v107 = *(v134 + 8 * v106 + 32);
              }

              v108 = v107;
              ++v106;
              sub_268B319C8(v107);

              sub_268B38214();
              v109 = v135[2];
              sub_268B38244();
              sub_268B38254();
              sub_268B38224();
            }

            while (v105 != v106);
            v31 = v135;
LABEL_57:
            v117(v31);
          }

          __break(1u);
LABEL_65:
          swift_once();
LABEL_37:
          v73 = v122;
          v74 = __swift_project_value_buffer(v122, qword_2802CDA10);
          v75 = v121;
          (*(v121 + 16))(v31, v74, v73);
          v76 = sub_268B37A34();
          v77 = sub_268B37EE4();
          v78 = os_log_type_enabled(v76, v77);
          v79 = v117;
          if (v78)
          {
            v80 = swift_slowAlloc();
            *v80 = 0;
            _os_log_impl(&dword_2688BB000, v76, v77, "AddSpeaker destination device is not TV, HomePod, or other supported device. Returning an error", v80, 2u);
            MEMORY[0x26D6266E0](v80, -1, -1);
          }

          (*(v75 + 8))(v31, v73);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
          v81 = swift_allocObject();
          *(v81 + 16) = xmmword_268B3BBA0;
          type metadata accessor for AddSpeakerDestinationsResolutionResult();
          *(v81 + 32) = sub_268B1CD38(3);
          v79(v81);
        }

LABEL_63:
        swift_once();
        goto LABEL_47;
      }

      ++v40;
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v45 = v122;
  v46 = __swift_project_value_buffer(v122, qword_2802CDA10);
  v47 = v121;
  (*(v121 + 16))(v25, v46, v45);
  v48 = sub_268B37A34();
  v49 = sub_268B37EE4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2688BB000, v48, v49, "Could not resolve any destination for add speaker request.", v50, 2u);
    MEMORY[0x26D6266E0](v50, -1, -1);
  }

  (*(v47 + 8))(v25, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_268B3BBA0;
  type metadata accessor for AddSpeakerDestinationsResolutionResult();
  *(v51 + 32) = sub_268B1CD38(1);
  a2(v51);
}

void sub_268995DC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AddSpeakerDestinationsResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_268995E2C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "AddSpeakerIntentHandler.confirm() called", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
  v14 = AddSpeakerIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v14);

  _Block_release(a3);
}

void sub_268996004(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_3_8();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v5 + 16))(v11, v12, v3);
  v13 = sub_268B37A34();
  v14 = sub_268B37F04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "AddSpeakerIntentHandler.confirm() called", v15, 2u);
    MEMORY[0x26D6266E0](v15, -1, -1);
  }

  (*(v5 + 8))(v11, v3);
  v16 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
  v17 = AddSpeakerIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

id AddSpeakerIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddSpeakerIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2689962E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v37[3] = sub_268B36C54();
  v37[4] = MEMORY[0x277D5F680];
  v37[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v36[3] = v10;
  v36[4] = &off_2879539D0;
  v36[0] = a4;
  v11 = type metadata accessor for AddSpeakerIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v36, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v35[3] = v10;
  v35[4] = &off_2879539D0;
  v35[0] = v18;
  sub_26890C900(a3, v34);
  sub_26890C900(v35, &v32);
  sub_26890C900(a5, v31);
  sub_268B376A4();
  v19 = sub_268B37694();
  v20 = v33;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = sub_26892D53C(a2, v34, *v24, v31, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceSelector] = v26;
  sub_26890C900(v37, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController]);
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState]);
  sub_26890C900(a3, v34);
  sub_26890C900(a5, &v32);
  type metadata accessor for AceServiceHelper();
  v27 = swift_allocObject();
  sub_2688E6514(v34, v27 + 16);
  sub_2688E6514(&v32, v27 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_aceServiceHelper] = v27;
  v30.receiver = v12;
  v30.super_class = v11;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  return v28;
}

uint64_t sub_2689965E4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_268B37A24();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_2689966C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268B37A24() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

uint64_t sub_268996890()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2689968D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26899693C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;
  *(a1 + 32) = 2;
  v5 = *(v4 + 32);
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  return sub_268B37A24();
}

id sub_268996A94(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_268996F40(a2);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
    sub_268B37CE4();
    OUTLINED_FUNCTION_0_21();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_1_23(v6, sel_setConfirmCommands_);

  v7 = sub_268996F40(a1);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
    sub_268B37CE4();
    OUTLINED_FUNCTION_0_21();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_1_23(v7, sel_setDenyCommands_);

  v8 = sub_268996FAC(a2);
  if (v9)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_0_21();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_1_23(v8, sel_setConfirmText_);

  v10 = sub_268996FAC(a1);
  if (v11)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_0_21();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_1_23(v10, sel_setDenyText_);

  v12 = *MEMORY[0x277D48BA0];
  v13 = sub_268B37BF4();
  sub_268997010(v13, v14, v5, &selRef_setCancelTrigger_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_268B3C5A0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v16 = a1;
  v17 = a2;
  sub_26899707C(v15, v5);

  return v5;
}

id sub_268996C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_268997010(a1, a2, v14, &selRef_setLabel_);
  sub_268997010(a3, a4, v14, &selRef_setType_);
  sub_268997010(a5, a6, v14, &selRef_setIconType_);
  sub_268996EC0(a7, v14);

  return v14;
}

id sub_268996D44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v7 setCentered_];
  [objc_allocWithZone(MEMORY[0x277D47770]) init];
  v8 = OUTLINED_FUNCTION_0_21();
  sub_268996EC0(v8, a4);
  [v7 setAction_];

  v9 = [objc_allocWithZone(MEMORY[0x277D47A40]) init];
  sub_268997010(a1, a2, v9, &selRef_setText_);
  [v7 setDecoratedLabel_];

  return v7;
}

id sub_268996E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_268997010(a1, a2, v6, &selRef_setText_);
  sub_268996EC0(a3, v6);

  return v6;
}

void sub_268996EC0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
  v3 = sub_268B37CE4();

  [a2 setCommands_];
}

uint64_t sub_268996F40(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_268996FAC(void *a1)
{
  v1 = [a1 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

void sub_268997010(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_268B37BC4();

  [a3 *a4];
}

void sub_26899707C(uint64_t a1, void *a2)
{
  sub_2689970F0();
  v3 = sub_268B37CE4();

  [a2 setAllConfirmationOptions_];
}

unint64_t sub_2689970F0()
{
  result = qword_2802A6940;
  if (!qword_2802A6940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A6940);
  }

  return result;
}

id OUTLINED_FUNCTION_1_23(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_268997354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_26();
  v59 = v26;
  v60 = v25;
  v52 = v27;
  v53 = v28;
  v51 = v29;
  v55 = v30;
  v32 = v31;
  v54 = v33;
  v57 = a23;
  v58 = a24;
  v56 = a22;
  v34 = sub_268B37A24();
  v35 = OUTLINED_FUNCTION_1(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v35);
  v41 = v50 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_136();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  v50[1] = qword_2802CDB28;
  sub_268B37A14();
  OUTLINED_FUNCTION_43_4();
  v42(v50 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v34);
  v43 = (*(v37 + 80) + 33) & ~*(v37 + 80);
  v44 = v43 + v39;
  v45 = (v43 + v39) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v54;
  *(v46 + 24) = v32;
  *(v46 + 32) = v55;
  (*(v37 + 32))(v46 + v43, v41);
  *(v46 + v44) = v51 & 1;
  v47 = v46 + v45;
  v48 = v53;
  *(v47 + 8) = v52;
  *(v47 + 16) = v48;

  sub_268B38004();
  sub_268B37A04();
  OUTLINED_FUNCTION_0_3();
  v49 = swift_allocObject();
  *(v49 + 16) = v57;
  *(v49 + 24) = v46;

  v60(v58, v49);

  (*(v37 + 8))(v24, v34);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268997584(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  sub_26894474C();
  v3 = v9;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_2688EF2C0(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v9 = v3;
      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        sub_26894474C();
        v3 = v9;
      }

      *(v3 + 16) = v5 + 1;
      *(v3 + 8 * v5 + 32) = v7;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2689976AC(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_268B38234();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_2688EF2C0(v3, v6);
    type metadata accessor for Device();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_268B38214();
    v4 = *(v7 + 16);
    sub_268B38244();
    sub_268B38254();
    sub_268B38224();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_268997798()
{
  v0 = sub_268B37A24();
  __swift_allocate_value_buffer(v0, qword_2802A6950);
  __swift_project_value_buffer(v0, qword_2802A6950);
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB28;
  return sub_268B37A14();
}

uint64_t sub_268997824()
{
  if (*(v0 + 464))
  {
    v1 = *(v0 + 464);
  }

  else
  {
    v1 = sub_268997870(v0);
    *(v0 + 464) = v1;
  }

  return v1;
}

uint64_t sub_268997870(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2688BB000, v8, v9, "ControlsFlowProvider#deviceSelector initializing device selecting util...", v10, 2u);
    MEMORY[0x26D6266E0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v12 = *(a1 + 408);
  v11 = *(a1 + 416);

  v14 = v12(v13);

  return v14;
}

void *sub_268997A2C()
{
  sub_268B354A4();
  sub_2689209D0(v39);
  sub_268AD33CC(v38);
  sub_268B36754();
  v0 = sub_268B36734();
  v1 = sub_268B36C54();
  v2 = sub_268B36C44();
  v3 = type metadata accessor for MultiUserConnectionProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v5 = v40;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v36 = v1;
  v37 = MEMORY[0x277D5F680];
  *&v35 = v2;
  v12 = type metadata accessor for AnalyticsServiceLogger();
  v34[3] = v12;
  v34[4] = &off_28795F5E0;
  v34[0] = v11;
  v33 = &off_287960608;
  v32 = v3;
  v31[0] = v4;
  type metadata accessor for AnalyticsServiceImpl();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v34, v12);
  v15 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = v32;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v17;
  v26 = *v23;
  v13[5] = v12;
  v13[6] = &off_28795F5E0;
  v13[2] = v25;
  v13[21] = v3;
  v13[22] = &off_287960608;
  v13[18] = v26;
  sub_2688E6514(v38, (v13 + 7));
  v13[12] = v0;
  sub_2688E6514(&v35, (v13 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  sub_268B34C64();
  sub_268B37204();
  v27 = sub_268B371F4();
  sub_2688E4594(v41, v38);
  sub_2688E4594(v39, &v35);
  sub_268B376A4();

  v28 = sub_268B37694();

  v29 = sub_26892D53C(v27, v38, v13, &v35, v28);

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  return v29;
}

void ControlsFlowProvider.init()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  sub_268B354A4();
  sub_2689209D0(v65);
  sub_268AD33CC(&v62);
  sub_268B36754();
  v46 = sub_268B36734();
  v2 = sub_268B36C54();
  v3 = sub_268B36C44();
  v4 = type metadata accessor for MultiUserConnectionProvider();
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(MEMORY[0x277CEF318]);
  v7 = v3;

  *(v5 + 16) = [v6 init];
  __swift_mutable_project_boxed_opaque_existential_1(v65, v65[3]);
  OUTLINED_FUNCTION_3_8();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = (v12 - v11);
  (*(v14 + 16))(v12 - v11);
  v15 = *v13;
  v60 = v2;
  v61 = MEMORY[0x277D5F680];
  *&v59 = v7;
  v16 = type metadata accessor for AnalyticsServiceLogger();
  v58[3] = v16;
  v58[4] = &off_28795F5E0;
  v58[0] = v15;
  v56 = v4;
  v57 = &off_287960608;
  v55[0] = v5;
  v17 = type metadata accessor for AnalyticsServiceImpl();
  v18 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v58, v16);
  OUTLINED_FUNCTION_3_8();
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v24 = (v23 - v22);
  (*(v25 + 16))(v23 - v22);
  __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  OUTLINED_FUNCTION_3_8();
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v30 = OUTLINED_FUNCTION_78_3(v29);
  v31(v30);
  v32 = *v24;
  v33 = *v15;
  v18[5] = v16;
  v18[6] = &off_28795F5E0;
  v18[2] = v32;
  v18[21] = v4;
  v18[22] = &off_287960608;
  v18[18] = v33;
  sub_2688E6514(&v62, (v18 + 7));
  v18[12] = v46;
  sub_2688E6514(&v59, (v18 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  __swift_destroy_boxed_opaque_existential_0Tm(v58);

  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  sub_268B34C64();
  v63 = &type metadata for ControlsFlowFactoryImpl;
  v64 = &off_28795FF48;
  v34 = sub_268B36C44();
  v60 = v2;
  v61 = MEMORY[0x277D5F680];
  *&v59 = v34;
  sub_268AD33CC(v58);
  v1[49] = v17;
  v1[50] = &off_2879539D0;
  v1[46] = v18;
  sub_2688E4594(v66, v55);
  v54[3] = sub_268B36F44();
  v54[4] = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(v54);

  sub_268B36F34();
  sub_2688E4594(v65, (v1 + 53));
  v1[58] = 0;
  sub_2688E4594(&v62, v1);
  sub_2688E4594(&v59, (v1 + 5));
  sub_2688E4594(v58, (v1 + 10));
  sub_2688E4594((v1 + 46), v52);
  sub_2688E4594(v55, v51);
  sub_268B376A4();
  v35 = sub_268B37694();
  __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  OUTLINED_FUNCTION_3_8();
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v41 = (v40 - v39);
  (*(v42 + 16))(v40 - v39);
  v43 = sub_2689A52C0(*v41, v51, v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  v1[15] = v43;
  sub_2688E4594(&v62, (v1 + 16));
  sub_2688E4594(&v62, (v1 + 21));
  sub_2688E4594(&v62, (v1 + 26));
  sub_2688E4594(v55, (v1 + 31));
  sub_2688E4594(v54, (v1 + 36));
  sub_2688E4594(&v62, v52);
  sub_2688E4594(v58, v51);
  sub_2688E4594(v55, v50);
  sub_2688E4594(&v59, v49);
  sub_2688E4594(v54, v48);
  __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  v47[3] = &type metadata for ControlsFlowFactoryImpl;
  v47[4] = &off_28795FF48;
  v44 = type metadata accessor for QuickStopUtil();
  v45 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v47, &type metadata for ControlsFlowFactoryImpl);
  *(v45 + 40) = &type metadata for ControlsFlowFactoryImpl;
  *(v45 + 48) = &off_28795FF48;
  sub_2688E6514(v51, v45 + 56);
  sub_2688E6514(v50, v45 + 96);
  sub_2688E6514(v49, v45 + 136);
  sub_2688E6514(v48, v45 + 176);
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  v1[44] = v44;
  v1[45] = &off_28795AF78;

  v1[41] = v45;
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  __swift_destroy_boxed_opaque_existential_0Tm(&v59);
  __swift_destroy_boxed_opaque_existential_0Tm(&v62);
  v1[51] = sub_268998418;
  v1[52] = 0;
  OUTLINED_FUNCTION_23();
}

void ControlsFlowProvider.findFlowFor(parse:)()
{
  OUTLINED_FUNCTION_26();
  v114 = v0;
  v115 = v1;
  v3 = v2;
  v4 = sub_268B35494();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v106 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v113 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v117 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v103 - v16;
  v18 = sub_268B37A54();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v104 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v107 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  v108 = v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v103 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  v33 = &v103 - v32;
  sub_268B38014();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  if (qword_2802A4D80 != -1)
  {
    OUTLINED_FUNCTION_40_4();
  }

  v34 = sub_268B37A24();
  __swift_project_value_buffer(v34, qword_2802A6950);
  sub_268B379F4();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v18, qword_2802CDA10);
  OUTLINED_FUNCTION_152();
  v118 = v35;
  v109 = v37;
  v110 = v36;
  (v37)(v33);
  v38 = v3;
  v39 = *(v7 + 16);
  v39(v17, v38, v4);
  v119 = v21;
  v112 = v33;
  v40 = sub_268B37A34();
  v41 = sub_268B37F04();
  v42 = OUTLINED_FUNCTION_196(v41);
  v111 = v38;
  v116 = v18;
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_172_0();
    v105 = v39;
    v44 = v43;
    v45 = OUTLINED_FUNCTION_173_0();
    v120 = v45;
    *v44 = 136315138;
    v105(v117, v17, v4);
    v46 = sub_268B37C24();
    v48 = v47;
    v49 = OUTLINED_FUNCTION_60_1();
    v50(v49);
    v51 = sub_26892CDB8(v46, v48, &v120);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_2688BB000, v40, v41, "ControlsFlowProvider#findFlowFor Recieved parse: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    OUTLINED_FUNCTION_20_2();
    v39 = v105;
    v38 = v111;
    OUTLINED_FUNCTION_12();

    v52 = *(v119 + 8);
    v53 = v112;
    v54 = v116;
  }

  else
  {

    v55 = OUTLINED_FUNCTION_60_1();
    v56(v55);
    v52 = *(v119 + 8);
    v53 = v112;
    v54 = v18;
  }

  v112 = v52;
  v52(v53, v54);
  v39(v113, v38, v4);
  v57 = *(v7 + 88);
  v58 = OUTLINED_FUNCTION_60_0();
  v59 = v57(v58);
  v60 = *MEMORY[0x277D5C150];
  v61 = *MEMORY[0x277D5C160];
  v105 = (v7 + 88);
  v62 = OUTLINED_FUNCTION_60_0();
  v117(v62);
  v63 = v59 == v60 || v59 == v61;
  v64 = v114;
  if (v63)
  {
    v39(v106, v38, v4);
    v65 = OUTLINED_FUNCTION_60_0();
    v66 = v57(v65);
    v67 = OUTLINED_FUNCTION_60_0();
    v117(v67);
    if (v66 == v61)
    {
      v68 = v64[40];
      __swift_project_boxed_opaque_existential_1(v64 + 36, v64[39]);
      OUTLINED_FUNCTION_129();
      if ((sub_268B36F64() & 1) == 0)
      {
        v96 = v103;
        v97 = v116;
        v109(v103, v118, v116);
        v98 = sub_268B37A34();
        v99 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v99))
        {
          v100 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v100);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v101, v102, "ControlsFlowProvider#findFlowFor Received a uso parse but Media Controls on Siri X feature is disabled, returning .noFlow");
          OUTLINED_FUNCTION_83_0();
        }

        v112(v96, v97);
        goto LABEL_32;
      }
    }

    v69 = v111;
    if (sub_268A409F0())
    {
      sub_268998C0C();
      sub_268998DAC(v69, v115);
      sub_268999344();
      goto LABEL_33;
    }
  }

  v70 = v108;
  v71 = v109;
  v72 = v116;
  v109(v108, v118, v116);
  v73 = sub_268B37A34();
  v74 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v74))
  {
    v75 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v75);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v76, v77, "ControlsFlowProvider#findFlowFor Calling ControlsFlowProvider().makeFlow for a flow to return");
    OUTLINED_FUNCTION_83_0();
  }

  v78 = v70;
  v79 = v112;
  v112(v78, v72);
  ControlsFlowProvider.makeFlow(for:)();
  if (!v80)
  {
    v89 = v104;
    v71(v104, v118, v72);
    v90 = sub_268B37A34();
    v91 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v91))
    {
      v92 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v92);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v93, v94, "ControlsFlowProvider#findFlowFor Didn't recieve a flow, returning .noFlow");
      OUTLINED_FUNCTION_83_0();
    }

    v79(v89, v72);
LABEL_32:
    sub_268B34AB4();
    goto LABEL_33;
  }

  v71(v107, v118, v72);
  v81 = sub_268B37A34();
  v82 = sub_268B37F04();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = v79;
    v84 = OUTLINED_FUNCTION_172_0();
    v85 = OUTLINED_FUNCTION_173_0();
    v120 = v85;
    *v84 = 136315138;
    v86 = sub_268B34924();
    v88 = sub_26892CDB8(v86, v87, &v120);

    *(v84 + 4) = v88;
    _os_log_impl(&dword_2688BB000, v81, v82, "ControlsFlowProvider#findFlowFor Returning flow: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_20_2();

    v83(v107, v72);
  }

  else
  {

    v95 = OUTLINED_FUNCTION_230_0();
    (v79)(v95);
  }

  sub_268B34AE4();

LABEL_33:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268998C0C()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2802CDA10);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_268B37A34();
  v7 = sub_268B37F04();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2688BB000, v6, v7, "ControlsFlowProvider#preWarmHomeKit Pre-warming HomeKit...", v8, 2u);
    MEMORY[0x26D6266E0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_268B37204();
  sub_268B371F4();
}

unint64_t sub_268998DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v5 = sub_268B35224();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = *__swift_project_boxed_opaque_existential_1((v2 + 328), *(v2 + 352));
  v21 = sub_268A7C750(a1);
  if (v21 >> 62)
  {
    if (v21 >> 62 == 1)
    {
      v22 = *__swift_project_boxed_opaque_existential_1((v3 + 328), *(v3 + 352));
      sub_268A7EA00(v21);
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v9, qword_2802CDA10);
      (*(v10 + 16))(v17, v23, v9);
      v24 = sub_268B37A34();
      v25 = sub_268B37F04();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v45 = v27;
        *v26 = 136315138;
        v28 = 0xE500000000000000;
        v29 = 0x6D72616C61;
        switch(v21)
        {
          case 1:
            v29 = 0x72656D6974;
            break;
          case 2:
            v28 = 0x8000000268B58FF0;
            v29 = 0xD000000000000010;
            break;
          case 3:
            v29 = 0x656E6F6870;
            break;
          default:
            break;
        }

        v39 = sub_26892CDB8(v29, v28, &v45);

        *(v26 + 4) = v39;
        _os_log_impl(&dword_2688BB000, v24, v25, "ControlsFlowProvider#quickStopFlowResult QuickStop reforming to %s domain", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x26D6266E0](v27, -1, -1);
        MEMORY[0x26D6266E0](v26, -1, -1);
      }

      (*(v10 + 8))(v17, v9);
      v40 = v43;
      v41 = v42;
      sub_268B34AF4();
      return (*(v41 + 8))(v8, v40);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v9, qword_2802CDA10);
      (*(v10 + 16))(v14, v35, v9);
      v36 = sub_268B37A34();
      v37 = sub_268B37EE4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2688BB000, v36, v37, "ControlsFlowProvider#quickStopFlowResult QuickStop received an unsupported QuickStop parse. Returning .noFlow", v38, 2u);
        MEMORY[0x26D6266E0](v38, -1, -1);
      }

      (*(v10 + 8))(v14, v9);
      return sub_268B34AB4();
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v19, v30, v9);
    v31 = sub_268B37A34();
    v32 = sub_268B37F04();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "ControlsFlowProvider#quickStopFlowResult QuickStop returned flow", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    (*(v10 + 8))(v19, v9);
    sub_268B34AE4();
    return sub_2689A7D70(v21);
  }
}

uint64_t sub_268999344()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6970, qword_268B41130);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16[-v4 - 8];
  if (sub_268B34AD4())
  {
  }

  else
  {
    sub_268B34AC4();
    v6 = sub_268B35224();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
    result = sub_2689A7CD8(v5, &qword_2802A6970, qword_268B41130);
    if (EnumTagSinglePayload == 1)
    {
      return result;
    }
  }

  v9 = v1[13];
  v10 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_268B3BBC0;
  if (qword_2802A50C0 != -1)
  {
    swift_once();
  }

  v12 = unk_2802CDB50;
  *(v11 + 32) = qword_2802CDB48;
  *(v11 + 40) = v12;
  sub_2689A563C(v1, v16);
  v13 = swift_allocObject();
  memcpy((v13 + 16), v16, 0x1D8uLL);
  v14 = *(v10 + 24);

  v14(v11, sub_2689A7D68, v13, v9, v10);
}

void ControlsFlowProvider.makeFlow(for:)()
{
  OUTLINED_FUNCTION_26();
  v70 = v0;
  v2 = v1;
  v3 = sub_268B35494();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v64 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v63 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v69 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v13, qword_2802CDA10);
  v25 = *(v16 + 16);
  v65 = v26;
  v66 = v25;
  v67 = v16 + 16;
  (v25)(v24);
  v27 = *(v6 + 16);
  v68 = v2;
  v27(v12, v2, v3);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_172_0();
    v61 = v16;
    v31 = v30;
    v32 = OUTLINED_FUNCTION_173_0();
    v62 = v13;
    v60 = v32;
    v71 = v32;
    *v31 = 136315138;
    v33 = OUTLINED_FUNCTION_64_3();
    (v27)(v33);
    v34 = sub_268B37C24();
    v36 = v35;
    (*(v6 + 8))(v12, v3);
    v37 = sub_26892CDB8(v34, v36, &v71);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2688BB000, v28, v29, "ControlsFlowProvider#makeFlow Recieved parse: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    v13 = v62;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_83_0();

    v38 = *(v61 + 8);
  }

  else
  {

    (*(v6 + 8))(v12, v3);
    v38 = *(v16 + 8);
  }

  v39 = OUTLINED_FUNCTION_190();
  v38(v39);
  type metadata accessor for ErrorFilingHelper();
  static ErrorFilingHelper.setupTrialClient()();
  ControlsFlowProvider.makeFlowWithoutWarmup(for:)(v68, v40, v41, v42, v43, v44, v45, v46, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v47 = v69;
  if (v48)
  {
    v66(v69, v65, v13);
    v49 = sub_268B37A34();
    v50 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v50))
    {
      v51 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v51);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v52, v53, "ControlsFlowProvider#makeFlow flow returned. Pre-warming HomeKit");
      OUTLINED_FUNCTION_6();
    }

    (v38)(v47, v13);
    sub_268998C0C();
  }

  else
  {
    v54 = v63;
    v66(v63, v65, v13);
    v55 = sub_268B37A34();
    v56 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v56))
    {
      v57 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v57);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v58, v59, "ControlsFlowProvider#makeFlow No flow returned");
      OUTLINED_FUNCTION_6();
    }

    (v38)(v54, v13);
  }

  OUTLINED_FUNCTION_23();
}

void ControlsFlowProvider.makeFlowWithoutWarmup(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v23;
  a20 = v24;
  v314 = v25;
  v26 = sub_268B35474();
  v27 = OUTLINED_FUNCTION_1(v26);
  v302 = v28;
  v303 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_78();
  v304 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6968, &qword_268B41030);
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_136();
  v38 = sub_268B366C4();
  v39 = OUTLINED_FUNCTION_1(v38);
  v309 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  v307 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_78();
  v308 = v45;
  OUTLINED_FUNCTION_9();
  v312 = sub_268B37A54();
  v46 = OUTLINED_FUNCTION_1(v312);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18();
  v301 = v53;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18();
  v305 = v55;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18();
  v300 = v59;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_78();
  v292 = v69;
  OUTLINED_FUNCTION_9();
  v310 = sub_268B35494();
  v70 = OUTLINED_FUNCTION_1(v310);
  v72 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_20_0();
  v77 = v75 - v76;
  v79 = MEMORY[0x28223BE20](v78);
  v81 = &v289 - v80;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_78();
  v313 = v82;
  sub_268B38014();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  v306 = v20;
  v311 = v48;
  if (qword_2802A4D80 != -1)
  {
    OUTLINED_FUNCTION_40_4();
  }

  v83 = sub_268B37A24();
  __swift_project_value_buffer(v83, qword_2802A6950);
  sub_268B379F4();
  v84 = (v72 + 16);
  v85 = *(v72 + 16);
  v86 = v313;
  v87 = v310;
  v85(v313, v314, v310);
  v88 = (*(v72 + 88))(v86, v87);
  if (v88 == *MEMORY[0x277D5C128])
  {
    (*(v72 + 96))(v86, v87);
    v89 = v308;
    v90 = v309;
    v91 = v86;
    v92 = v38;
    (*(v309 + 4))(v308, v91, v38);
    sub_268B36694();
    v93 = sub_268B35CB4();
    if (__swift_getEnumTagSinglePayload(v22, 1, v93) == 1)
    {
      v94 = sub_2689A7CD8(v22, &qword_2802A6968, &qword_268B41030);
      v95 = v311;
      v96 = v312;
      v97 = v307;
LABEL_8:
      if (qword_2802A4F30 != -1)
      {
        v94 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_13_8(v94, qword_2802CDA10);
      OUTLINED_FUNCTION_43_4();
      v98 = v305;
      v99(v305);
      OUTLINED_FUNCTION_51_1();
      v100(v97, v89, v92);
      v101 = sub_268B37A34();
      v102 = v89;
      v103 = sub_268B37EE4();
      if (os_log_type_enabled(v101, v103))
      {
        v104 = OUTLINED_FUNCTION_172_0();
        v105 = OUTLINED_FUNCTION_173_0();
        v315[0] = v105;
        *v104 = 136315138;
        v106 = v299;
        sub_268B36694();
        if (__swift_getEnumTagSinglePayload(v106, 1, v93) == 1)
        {
          sub_2689A7CD8(v106, &qword_2802A6968, &qword_268B41030);
          v107 = 0xE500000000000000;
          v108 = 0x3E6C696E3CLL;
        }

        else
        {
          v108 = sub_268B35C94();
          v107 = v186;
          OUTLINED_FUNCTION_70(v93);
          (*(v187 + 8))(v188, v93);
        }

        v189 = *(v309 + 1);
        v189(v307, v92);
        v190 = sub_26892CDB8(v108, v107, v315);

        *(v104 + 4) = v190;
        _os_log_impl(&dword_2688BB000, v101, v103, "ControlsFlowProvider#makeFlow Unexpected NL domain: %s, returning no flow", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v105);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_6();

        (*(v311 + 8))(v305, v312);
        v189(v308, v92);
      }

      else
      {

        v148 = *(v90 + 1);
        v148(v97, v92);
        (*(v95 + 8))(v98, v96);
        v148(v102, v92);
      }

      goto LABEL_101;
    }

    v133 = sub_268B35C94();
    v135 = v134;
    OUTLINED_FUNCTION_70(v93);
    (*(v136 + 8))(v22, v93);
    v137 = v133 == 0x616964656DLL && v135 == 0xE500000000000000;
    v95 = v311;
    v96 = v312;
    v97 = v307;
    if (v137 || (OUTLINED_FUNCTION_67_2() & 1) != 0)
    {

      v159 = v300;
      if (qword_2802A4F30 != -1)
      {
        v158 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_13_8(v158, qword_2802CDA10);
      OUTLINED_FUNCTION_43_4();
      v160(v159);
      v161 = sub_268B37A34();
      v162 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v162))
      {
        v163 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v163);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v164, v165, "ControlsFlowProvider#makeFlow Attempting to make frame from media NL intent");
        OUTLINED_FUNCTION_83_0();
      }

      v166 = OUTLINED_FUNCTION_56_3();
      v167(v166);
      sub_268A02860(v314);
    }

    else
    {
      v191 = v133 == 0x616C50616964656DLL && v135 == 0xEB00000000726579;
      if (v191 || (OUTLINED_FUNCTION_67_2() & 1) != 0)
      {

        v193 = v295;
        if (qword_2802A4F30 != -1)
        {
          v192 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_13_8(v192, qword_2802CDA10);
        OUTLINED_FUNCTION_43_4();
        v194(v193);
        v195 = sub_268B37A34();
        v196 = sub_268B37F04();
        if (OUTLINED_FUNCTION_19(v196))
        {
          v197 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v197);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v198, v199, "ControlsFlowProvider#makeFlow Attempting to make frame from mediaPlayer NL intent");
          OUTLINED_FUNCTION_83_0();
        }

        v200 = OUTLINED_FUNCTION_56_3();
        v201(v200);
        sub_268990BC4(v314);
      }

      else
      {
        if (v133 == 0x676E6974746573 && v135 == 0xE700000000000000)
        {
        }

        else
        {
          v238 = OUTLINED_FUNCTION_67_2();

          if ((v238 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        if (qword_2802A4F30 != -1)
        {
          v94 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_13_8(v94, qword_2802CDA10);
        OUTLINED_FUNCTION_43_4();
        v264(v291);
        v265 = sub_268B37A34();
        v266 = sub_268B37F04();
        if (OUTLINED_FUNCTION_19(v266))
        {
          v267 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v267);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v268, v269, "ControlsFlowProvider#makeFlow Attempting to make frame from settings NL intent");
          OUTLINED_FUNCTION_83_0();
        }

        v270 = OUTLINED_FUNCTION_56_3();
        v271(v270);
        sub_26891DC50(v314);
      }
    }

    (*(v90 + 1))(v89, v92);
    goto LABEL_101;
  }

  v109 = v72;
  if (v88 == *MEMORY[0x277D5C150])
  {
    v110 = *(v72 + 96);
    v111 = v313;
    v110(v313, v87);
    v112 = v302;
    v113 = v303;
    v114 = v304;
    (*(v302 + 32))(v304, v111, v303);
    v116 = sub_268B35454() == 0xD00000000000003ALL && 0x8000000268B58F50 == v115;
    v117 = v311;
    if (v116)
    {

      v120 = v312;
      v121 = v301;
    }

    else
    {
      v118 = sub_268B38444();

      v120 = v312;
      v121 = v301;
      if ((v118 & 1) == 0)
      {
        if (qword_2802A4F30 != -1)
        {
          v119 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_13_8(v119, qword_2802CDA10);
        OUTLINED_FUNCTION_51_1();
        v122 = v298;
        v123(v298);
        v124 = v296;
        (*(v112 + 16))(v296, v114, v113);
        v125 = sub_268B37A34();
        v126 = sub_268B37EE4();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = OUTLINED_FUNCTION_172_0();
          v314 = OUTLINED_FUNCTION_173_0();
          v315[0] = v314;
          *v127 = 136315138;
          v313 = sub_268B35454();
          v129 = v128;
          v130 = *(v112 + 8);
          v131 = OUTLINED_FUNCTION_230_0();
          v130(v131);
          v132 = sub_26892CDB8(v313, v129, v315);

          *(v127 + 4) = v132;
          _os_log_impl(&dword_2688BB000, v125, v126, "ControlsFlowProvider#makeFlow Unexpected invocation identifier: %s", v127, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v314);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_83_0();

          (*(v117 + 8))(v298, v120);
          (v130)(v304, v113);
        }

        else
        {

          v222 = *(v112 + 8);
          v222(v124, v113);
          (*(v117 + 8))(v122, v120);
          v223 = OUTLINED_FUNCTION_64_3();
          (v222)(v223);
        }

        goto LABEL_101;
      }
    }

    if (qword_2802A4F30 != -1)
    {
      v119 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_13_8(v119, qword_2802CDA10);
    OUTLINED_FUNCTION_51_1();
    v149(v121);
    v150 = sub_268B37A34();
    v151 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v151))
    {
      v152 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v152);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v153, v154, "ControlsFlowProvider#makeFlow Returning PauseMediaFlow for stop direct invocation");
      OUTLINED_FUNCTION_6();
    }

    (*(v117 + 8))(v121, v120);
    __swift_project_boxed_opaque_existential_1(v306, v306[3]);
    sub_268B0366C();
    v155 = *(v112 + 8);
    v156 = OUTLINED_FUNCTION_64_3();
    v157(v156);
    goto LABEL_101;
  }

  if (v88 != *MEMORY[0x277D5C148])
  {
    v168 = v312;
    if (v88 != *MEMORY[0x277D5C160])
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v168, qword_2802CDA10);
      v202 = v311;
      v203 = v297;
      (*(v311 + 16))(v297);
      v85(v81, v314, v87);
      v204 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_13();
      if (os_log_type_enabled(v204, v205))
      {
        v206 = OUTLINED_FUNCTION_172_0();
        v314 = OUTLINED_FUNCTION_173_0();
        v315[0] = v314;
        *v206 = 136315138;
        v207 = v310;
        v85(v77, v81, v310);
        v208 = sub_268B37C24();
        v210 = v209;
        v211 = OUTLINED_FUNCTION_65_3();
        (v84)(v211, v207);
        v212 = sub_26892CDB8(v208, v210, v315);

        *(v206 + 4) = v212;
        _os_log_impl(&dword_2688BB000, v204, v21, "ControlsFlowProvider#makeFlow Received unexpected parse: %s", v206, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v314);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        v213 = *(v202 + 8);
        v214 = OUTLINED_FUNCTION_61_2();
        v215(v214);
        v216 = v207;
      }

      else
      {

        v235 = OUTLINED_FUNCTION_65_3();
        v236 = v310;
        (v84)(v235, v310);
        (*(v202 + 8))(v203, v312);
        v216 = v236;
      }

      (v84)(v313, v216);
      goto LABEL_101;
    }

    v169 = v306[40];
    __swift_project_boxed_opaque_existential_1(v306 + 36, v306[39]);
    OUTLINED_FUNCTION_129();
    if ((sub_268B36F64() & 1) == 0)
    {
      v224 = v311;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v168, qword_2802CDA10);
      (*(v224 + 16))(v294);
      v225 = sub_268B37A34();
      v226 = sub_268B37EE4();
      v227 = OUTLINED_FUNCTION_19(v226);
      v228 = v313;
      if (v227)
      {
        v229 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v229);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v230, v231, "ControlsFlowProvider#makeFlow Received a .uso parse but Media Controls on Siri X feature is disabled, returning nil");
        OUTLINED_FUNCTION_83_0();
      }

      v232 = *(v224 + 8);
      v233 = OUTLINED_FUNCTION_64_3();
      v234(v233);
      (*(v109 + 8))(v228, v310);
      goto LABEL_101;
    }

    v170 = sub_268A40454();
    v171 = v311;
    if (v170)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v168, qword_2802CDA10);
      v172 = *(v171 + 16);
      v173 = v293;
      v308 = v174;
      v309 = v172;
      v172(v293);

      v175 = sub_268B37A34();
      v176 = sub_268B37F04();

      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        v315[0] = swift_slowAlloc();
        *v177 = 136446466;
        v178 = sub_268B36684();
        v180 = sub_26892CDB8(v178, v179, v315);

        *(v177 + 4) = v180;
        *(v177 + 12) = 2082;
        v181 = sub_268B36674();
        v183 = sub_26892CDB8(v181, v182, v315);

        *(v177 + 14) = v183;
        _os_log_impl(&dword_2688BB000, v175, v176, "ControlsFlowProvider#makeFlow uso parse input is entity=%{public}s verb=%{public}s", v177, 0x16u);
        swift_arrayDestroy();
        v184 = v311;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_20_2();

        v185 = *(v184 + 8);
        v185(v293, v168);
      }

      else
      {

        v185 = *(v171 + 8);
        v185(v173, v168);
      }

      sub_26899B144(v315);
      v246 = OUTLINED_FUNCTION_70_4();
      if (sub_2689CCD18(v246))
      {
        v247 = OUTLINED_FUNCTION_20_10(&a11);
        v248(v247);
        v249 = sub_268B37A34();
        v250 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v250))
        {
          v251 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v251);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v252, v253, "ControlsFlowProvider#makeFlow Attempting to make flow from mediaPlayer uso parse");
          OUTLINED_FUNCTION_6();
        }

        v254 = OUTLINED_FUNCTION_61_2();
        (v185)(v254);
        sub_268990BC4(v314);
LABEL_121:
        OUTLINED_FUNCTION_129();

        sub_2689A53D0(v315);
        (*(v72 + 8))(v313, v310);
        goto LABEL_101;
      }

      v255 = OUTLINED_FUNCTION_70_4();
      if (sub_2689CCD44(v255))
      {
        v256 = OUTLINED_FUNCTION_20_10(&v318);
        v257(v256);
        v258 = sub_268B37A34();
        v259 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v259))
        {
          v260 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v260);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v261, v262, "ControlsFlowProvider#makeFlow Attempting to make flow from settings uso parse");
          OUTLINED_FUNCTION_6();
        }

        v263 = OUTLINED_FUNCTION_61_2();
        (v185)(v263);
        sub_26891DC50(v314);
        goto LABEL_121;
      }

      v272 = OUTLINED_FUNCTION_70_4();
      if (sub_2689CD174(v272))
      {
        v273 = OUTLINED_FUNCTION_20_10(&v316);
        v274(v273);
        v275 = sub_268B37A34();
        v276 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v276))
        {
          v277 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v277);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v278, v279, "ControlsFlowProvider#makeFlow Attempting to make flow from media uso parse");
          OUTLINED_FUNCTION_6();
        }

        v280 = OUTLINED_FUNCTION_61_2();
        (v185)(v280);
        sub_268A02860(v314);
        goto LABEL_121;
      }

      v281 = OUTLINED_FUNCTION_20_10(&v317);
      v282(v281);
      v283 = sub_268B37A34();
      v284 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v284))
      {
        v285 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v285);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v286, v287, "ControlsFlowProvider#makeFlow Unsupported task, returning no flow");
        OUTLINED_FUNCTION_6();
      }

      v288 = OUTLINED_FUNCTION_61_2();
      (v185)(v288);
      sub_2689A53D0(v315);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v168, qword_2802CDA10);
      OUTLINED_FUNCTION_51_1();
      v239 = v290;
      v240(v290);
      v241 = sub_268B37A34();
      v242 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v242))
      {
        v243 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v243);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v244, v245, "ControlsFlowProvider#makeFlow Did not receive a task from uso's UserParse, returning nil");
        OUTLINED_FUNCTION_83_0();
      }

      (*(v171 + 8))(v239, v168);
    }

    (*(v109 + 8))(v313, v310);
    goto LABEL_101;
  }

  (*(v72 + 8))(v313, v87);
  v138 = sub_268A40454();
  v139 = v311;
  if (v138)
  {
    v84 = v306[39];
    __swift_project_boxed_opaque_existential_1(v306 + 36, v84);
    if (sub_268B36F54())
    {
      sub_26899B144(v315);
      v140 = OUTLINED_FUNCTION_70_4();
      if (sub_2689CCD18(v140))
      {
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_82(v312, qword_2802CDA10);
        OUTLINED_FUNCTION_43_4();
        v141 = v292;
        v142(v292);
        v143 = sub_268B37A34();
        v144 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v144))
        {
          v145 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v145);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v146, v147, "ControlsFlowProvider#makeFlow Attempting to make flow from mediaPlayer pommesResponse");
          OUTLINED_FUNCTION_6();
        }

        (*(v139 + 8))(v141, v312);
        sub_268990BC4(v314);
        OUTLINED_FUNCTION_129();

        sub_2689A53D0(v315);
      }

      else
      {
        sub_2689A53D0(v315);
      }

      goto LABEL_101;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v217 = v312;
  OUTLINED_FUNCTION_82(v312, qword_2802CDA10);
  OUTLINED_FUNCTION_43_4();
  v218(v21);
  v219 = sub_268B37A34();
  v220 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_19(v220))
  {
    v221 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v221);
    _os_log_impl(&dword_2688BB000, v219, v21, "ControlsFlowProvider#makeFlow Did not receive a task from PommesResponse's UserParse", v84, 2u);
    OUTLINED_FUNCTION_6();
  }

  (*(v139 + 8))(v21, v217);
LABEL_101:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26899B144@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2688EA03C(0, &qword_2802A5C90, 0x277D85C98);
  sub_2689A563C(v1, v27);
  v9 = swift_allocObject();
  memcpy((v9 + 16), v27, 0x1D8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6888, &qword_268B40A80);
  sub_268B38024();

  v10 = v27[0];
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v11, v4);

  v12 = sub_268B37A34();
  v13 = sub_268B37F04();

  if (os_log_type_enabled(v12, v13))
  {
    v24 = v4;
    v25 = v2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315138;
    v26 = a1;
    v27[0] = v15;
    if (v10)
    {
      v16 = type metadata accessor for DeviceContext();
      v17 = MEMORY[0x26D625710](v10, v16);
      v19 = v18;
    }

    else
    {
      v19 = 0xE500000000000000;
      v17 = 0x3E6C696E3CLL;
    }

    v20 = sub_26892CDB8(v17, v19, v27);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2688BB000, v12, v13, "ControlsFlowProvider#makeRequestContext making RequestContext with deviceContexts: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x26D6266E0](v15, -1, -1);
    MEMORY[0x26D6266E0](v14, -1, -1);

    (*(v5 + 8))(v8, v24);
    v2 = v25;
    a1 = v26;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if (v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  result = sub_2688E4594(v2 + 288, (a1 + 1));
  *a1 = v21;
  return result;
}

uint64_t ControlsFlowProvider.makeResumeAppFlow(for:with:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v7 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
  sub_2689A51F0(a1, a2, v7);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_268B0494C();
  a3();
}

uint64_t ControlsFlowProvider.makeAmbiguousPlayFlow(for:with:)()
{
  OUTLINED_FUNCTION_0_3();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_79_2(v1);
  OUTLINED_FUNCTION_35_6();
  sub_268997354("makeFrameForPlayMediaIntent", 27, 2, 1, sub_26890D788, v0, sub_2689A5458, var50, &unk_287955450, &unk_287955478, sub_2689A7210, v3, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
}

uint64_t sub_26899B5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_2802A4F30;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v10, v13, v6);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "Determining if this is a play, resume or addSpeaker request", v16, 2u);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_2689A563C(a3, v19);
  v17 = swift_allocObject();
  memcpy(v17 + 2, v19, 0x1D8uLL);
  v17[61] = sub_26890DF14;
  v17[62] = v11;
  sub_26899BA2C();
}

uint64_t sub_26899B828(void *a1, char a2, uint64_t a3, uint64_t (*a4)(void *, void), uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0 && a1)
  {
    v14 = qword_2802A4F30;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v13, v15, v9);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v21[1] = a5;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "PlaybackControls will handle ambiguous play request. Pre-warming HomeKit...", v18, 2u);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    sub_268998C0C();
    sub_2689A7CC0(a1, 0);
  }

  return a4(a1, a2 & 1);
}

void sub_26899BA2C()
{
  OUTLINED_FUNCTION_26();
  v225 = v0;
  v236 = v2;
  v237 = v3;
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v238 = v8;
  v239 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v234 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v228 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v221 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v232 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v230 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v219 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v218 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_78();
  v233 = v25;
  OUTLINED_FUNCTION_9();
  v26 = sub_268B35494();
  v27 = OUTLINED_FUNCTION_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77_3();
  v231 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_78();
  v235 = v34;
  v224 = v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v216 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v40 = OUTLINED_FUNCTION_22(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v216 - v43;
  v45 = type metadata accessor for MediaPlayerIntent();
  v46 = OUTLINED_FUNCTION_1(v45);
  v223 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_77_3();
  v226 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_78();
  v220 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_78();
  v227 = v54;
  v222 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_136();
  v57 = v29;
  v60 = *(v29 + 16);
  v59 = (v29 + 16);
  v58 = v60;
  v60(v38, v5, v26);
  v229 = v38;
  sub_26893BA8C(v38);
  v61 = v45;
  if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
  {
    sub_2689A7CD8(v44, &qword_2802A5650, &unk_268B3BAC0);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v62 = v239;
    OUTLINED_FUNCTION_82(v239, qword_2802CDA10);
    v63 = v238;
    OUTLINED_FUNCTION_43_4();
    v64 = v234;
    v65(v234);
    v66 = sub_268B37A34();
    v67 = sub_268B37EE4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v68);
      OUTLINED_FUNCTION_75_1(&dword_2688BB000, v66, v67, "Unable to make MediaPlayerIntent from parse, returning nil flow");
      OUTLINED_FUNCTION_20_2();
    }

    (v63[1])(v64, v62);
    v69 = OUTLINED_FUNCTION_30_5();
    v70(v69);
    goto LABEL_54;
  }

  v234 = v1;
  sub_2688C0464(v44, v1);
  v71 = v235;
  v72 = v5;
  v58(v235, v5, v26);
  v73 = (*(v57 + 88))(v71, v26);
  v74 = *MEMORY[0x277D5C158];
  v75 = v26;
  v217 = v57;
  if (v73 == v74)
  {
    v231 = v58;
    v232 = v59;
    v76 = *(v57 + 96);
    v230 = v26;
    v76(v71, v26);
    v77 = *(v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E20, qword_268B3D940) + 48));
    v78 = v71;
    v79 = sub_268B35484();
    objc_opt_self();
    v80 = swift_dynamicCastObjCClass();
    v81 = v239;
    if (v80)
    {
      v82 = [v80 privatePlayMediaIntentData];
      if (v82)
      {
        v83 = v82;
        v84 = [v82 isAmbiguousPlay];
        sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
        v85 = sub_268B38054();
        v86 = v85;
        if (v84)
        {
          v87 = sub_268B38074();

          v89 = v239;
          if (v87)
          {

            v90 = sub_268B366C4();
            OUTLINED_FUNCTION_11_13(v90);
            v92 = (*(v91 + 8))(v78);
            v93 = v238;
            v94 = v234;
            v75 = v230;
LABEL_56:
            v163 = v227;
            v162 = v228;
            if (*(v94 + *(v61 + 48)) == 26)
            {
              v230 = v75;
              v164 = sub_268A7528C(0, 0);
              v235 = v164;
              if (qword_2802A4F30 != -1)
              {
                v164 = OUTLINED_FUNCTION_0_0();
              }

              OUTLINED_FUNCTION_13_8(v164, qword_2802CDA10);
              OUTLINED_FUNCTION_120();
              v165(v162);
              sub_268946C8C(v94, v163);
              v166 = v89;
              v167 = v163;
              v168 = v220;
              sub_268946C8C(v94, v220);
              v169 = sub_268B37A34();
              v170 = sub_268B37F04();
              if (os_log_type_enabled(v169, v170))
              {
                v171 = swift_slowAlloc();
                LODWORD(v221) = v170;
                v172 = v171;
                v173 = OUTLINED_FUNCTION_173_0();
                v233 = v72;
                v174 = v173;
                *&v240 = v173;
                *v172 = 136315394;
                sub_268946C8C(v167, v226);
                sub_268B37C24();
                sub_2688C2F6C(v167);
                v175 = OUTLINED_FUNCTION_230_0();
                v178 = sub_26892CDB8(v175, v176, v177);

                *(v172 + 4) = v178;
                *(v172 + 12) = 1024;
                sub_2689A7B24(&qword_2802A58E0, type metadata accessor for MediaPlayerIntent);
                LODWORD(v178) = sub_268B37834() & 1;
                sub_2688C2F6C(v168);
                *(v172 + 14) = v178;
                _os_log_impl(&dword_2688BB000, v169, v221, "Checking context for ambiguous play request with intent: %s, hasHomeAutomationNodes: %{BOOL}d", v172, 0x12u);
                __swift_destroy_boxed_opaque_existential_0Tm(v174);
                OUTLINED_FUNCTION_12();
                OUTLINED_FUNCTION_12();

                (v238[1])(v228, v166);
                v72 = v233;
              }

              else
              {
                sub_2688C2F6C(v168);

                sub_2688C2F6C(v167);
                v182 = v93[1];
                v183 = OUTLINED_FUNCTION_230_0();
                v184(v183);
              }

              v185 = v225;
              v186 = v225[14];
              v239 = v225[13];
              v233 = v186;
              v238 = __swift_project_boxed_opaque_existential_1(v225 + 10, v239);
              sub_2689A563C(v185, &v240);
              v187 = v226;
              sub_268946C8C(v234, v226);
              v189 = v229;
              v188 = v230;
              v231(v229, v72, v230);
              v190 = (*(v223 + 80) + 488) & ~*(v223 + 80);
              v191 = (v222 + v190 + 7) & 0xFFFFFFFFFFFFFFF8;
              v192 = v217;
              v193 = (*(v217 + 80) + v191 + 8) & ~*(v217 + 80);
              v194 = (v224 + v193 + 7) & 0xFFFFFFFFFFFFFFF8;
              v195 = swift_allocObject();
              OUTLINED_FUNCTION_80_3(v195);
              sub_2688C0464(v187, v168 + v190);
              *(v168 + v191) = v235;
              (*(v192 + 32))(v168 + v193, v189, v188);
              v196 = (v168 + v194);
              v197 = v237;
              *v196 = v236;
              v196[1] = v197;
              v198 = v233;
              v199 = *(v233 + 8);

              v199(sub_2689A7288, v168, v239, v198);

              v161 = v234;
              goto LABEL_53;
            }

            if (qword_2802A4F30 != -1)
            {
              v92 = OUTLINED_FUNCTION_0_0();
            }

            OUTLINED_FUNCTION_13_8(v92, qword_2802CDA10);
            OUTLINED_FUNCTION_120();
            v151 = v221;
            v179(v221);
            v153 = sub_268B37A34();
            v180 = sub_268B37EE4();
            if (!OUTLINED_FUNCTION_115_0(v180))
            {
LABEL_52:

              (v93[1])(v151, v89);
              v159 = OUTLINED_FUNCTION_30_5();
              v160(v159);
              v161 = v94;
LABEL_53:
              sub_2688C2F6C(v161);
              goto LABEL_54;
            }

            v181 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_10(v181);
            v158 = "ControlsFlowProvider.shouldHandleAmbiguousPlay This is a play + mediaType request. Rejecting since we want don't want to treat those as smartPlay";
LABEL_51:
            OUTLINED_FUNCTION_7(&dword_2688BB000, v156, v157, v158);
            OUTLINED_FUNCTION_6();
            goto LABEL_52;
          }

          goto LABEL_41;
        }

        v81 = v239;
      }
    }

    v89 = v81;
LABEL_41:
    v140 = v238;
    if (qword_2802A4F30 != -1)
    {
      v88 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_13_8(v88, qword_2802CDA10);
    OUTLINED_FUNCTION_51_1();
    v141 = v233;
    v142(v233);
    v143 = sub_268B37A34();
    v144 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v144))
    {
      v145 = OUTLINED_FUNCTION_14();
      *v145 = 0;
      _os_log_impl(&dword_2688BB000, v143, v144, "ControlsFlowProvider.shouldHandleAmbiguousPlay Non ambiguous play request. Returning a nil flow for SiriAudio to handle the play request", v145, 2u);
      OUTLINED_FUNCTION_12();
    }

    (v140[1])(v141, v89);
    v146 = OUTLINED_FUNCTION_30_5();
    v147(v146);

    sub_2688C2F6C(v234);
    v148 = sub_268B366C4();
    OUTLINED_FUNCTION_11_13(v148);
    (*(v149 + 8))(v78);
    goto LABEL_54;
  }

  v95 = v73 == *MEMORY[0x277D5C148] || v73 == *MEMORY[0x277D5C160];
  v89 = v239;
  if (v95)
  {
    v231 = v58;
    v232 = v59;
    (*(v57 + 8))(v235, v26);
    v96 = sub_268A40454();
    v93 = v238;
    if (v96)
    {
      sub_2689CD68C(&v244);

      v94 = v234;
      if (*(&v245 + 1))
      {
        v97 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5930, &qword_268B3BEF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6108, &qword_268B3E800);
        if (swift_dynamicCast())
        {
          if (*(&v241 + 1))
          {
            sub_2688E6514(&v240, v247);
            v98 = OUTLINED_FUNCTION_33_5();
            if (sub_268A5D430(v98, v99) & 1) != 0 || (v100 = OUTLINED_FUNCTION_33_5(), v102 = sub_268A5D510(v100, v101), (v102))
            {
              v103 = OUTLINED_FUNCTION_33_5();
              if ((sub_268A5D510(v103, v104) & 1) == 0 || (v105 = v225[40], __swift_project_boxed_opaque_existential_1(v225 + 36, v225[39]), v106 = sub_268B36F54(), (v106 & 1) == 0))
              {
                v92 = __swift_destroy_boxed_opaque_existential_0Tm(v247);
                goto LABEL_56;
              }

              if (qword_2802A4F30 != -1)
              {
                v106 = OUTLINED_FUNCTION_0_0();
              }

              OUTLINED_FUNCTION_13_8(v106, qword_2802CDA10);
              OUTLINED_FUNCTION_120();
              v107 = v218;
              v108(v218);
              v109 = sub_268B37A34();
              v110 = sub_268B37F04();
              if (OUTLINED_FUNCTION_115_0(v110))
              {
                v111 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_279(v111);
                OUTLINED_FUNCTION_75_1(&dword_2688BB000, v109, v61, "This is a Play this in [room] request, handling in playback controls");
                OUTLINED_FUNCTION_20_2();
              }

              (v93[1])(v107, v89);
              v112 = v225;
              v113 = v225[13];
              v114 = v225[14];
              __swift_project_boxed_opaque_existential_1(v225 + 10, v113);
              sub_2689A563C(v112, &v240);
              v115 = v229;
              v231(v229, v97, v75);
              v116 = v217;
              v117 = (*(v217 + 80) + 504) & ~*(v217 + 80);
              v118 = swift_allocObject();
              OUTLINED_FUNCTION_80_3(v118);
              v119 = v237;
              *(v97 + 488) = v236;
              *(v97 + 496) = v119;
              (*(v116 + 32))(v97 + v117, v115, v75);
              v120 = *(v114 + 8);

              v120(sub_2689A7364, v97, v113, v114);

              v121 = v234;
            }

            else
            {
              if (qword_2802A4F30 != -1)
              {
                v102 = OUTLINED_FUNCTION_0_0();
              }

              OUTLINED_FUNCTION_13_8(v102, qword_2802CDA10);
              OUTLINED_FUNCTION_120();
              v200 = v219;
              v201(v219);
              sub_2688E4594(v247, &v240);
              v202 = sub_268B37A34();
              v203 = sub_268B37F04();
              if (OUTLINED_FUNCTION_196(v203))
              {
                v204 = OUTLINED_FUNCTION_172_0();
                v205 = OUTLINED_FUNCTION_173_0();
                v243 = v205;
                *v204 = 136315138;
                sub_2688E4594(&v240, &v244);
                v206 = sub_268B37C24();
                v208 = v207;
                __swift_destroy_boxed_opaque_existential_0Tm(&v240);
                v209 = sub_26892CDB8(v206, v208, &v243);
                v94 = v234;

                *(v204 + 4) = v209;
                _os_log_impl(&dword_2688BB000, v202, v203, "ControlsFlowProvider.shouldHandleAmbiguousPlay Non-ambiguous play: %s, not handling in controls", v204, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v205);
                OUTLINED_FUNCTION_12();
                OUTLINED_FUNCTION_20_2();

                v210 = v93[1];
                v211 = OUTLINED_FUNCTION_64_3();
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_0Tm(&v240);
                v213 = v93[1];
                v211 = v200;
                v212 = v89;
              }

              v213(v211, v212);
              v214 = OUTLINED_FUNCTION_30_5();
              v215(v214);
              v121 = v94;
            }

            sub_2688C2F6C(v121);
            __swift_destroy_boxed_opaque_existential_0Tm(v247);
            goto LABEL_54;
          }
        }

        else
        {
          v242 = 0;
          v240 = 0u;
          v241 = 0u;
        }

LABEL_47:
        v150 = sub_2689A7CD8(&v240, &qword_2802A6100, &qword_268B3E7F8);
        if (qword_2802A4F30 != -1)
        {
          v150 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_13_8(v150, qword_2802CDA10);
        OUTLINED_FUNCTION_120();
        v151 = v230;
        v152(v230);
        v153 = sub_268B37A34();
        v154 = sub_268B37EE4();
        if (!OUTLINED_FUNCTION_115_0(v154))
        {
          goto LABEL_52;
        }

        v155 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v155);
        v158 = "ControlsFlowProvider.shouldHandleAmbiguousPlay Did not receive a controls mediaPlayer task from uso's UserParse";
        goto LABEL_51;
      }
    }

    else
    {
      v246 = 0;
      v244 = 0u;
      v245 = 0u;
      v94 = v234;
    }

    sub_2689A7CD8(&v244, &qword_2802A5928, &unk_268B41110);
    v240 = 0u;
    v241 = 0u;
    v242 = 0;
    goto LABEL_47;
  }

  if (qword_2802A4F30 != -1)
  {
    v73 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_13_8(v73, qword_2802CDA10);
  v122 = v238;
  v123 = v232;
  (v238[2])(v232);
  v124 = v89;
  v125 = v231;
  v58(v231, v72, v75);
  v126 = v58;
  v127 = sub_268B37A34();
  v128 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v128))
  {
    v129 = OUTLINED_FUNCTION_172_0();
    LODWORD(v233) = v128;
    v130 = v129;
    v230 = OUTLINED_FUNCTION_173_0();
    *&v240 = v230;
    *v130 = 136315138;
    v126(v229, v125, v75);
    v131 = v75;
    v132 = sub_268B37C24();
    v134 = v133;
    v135 = OUTLINED_FUNCTION_63_3();
    v59(v135, v131);
    v136 = sub_26892CDB8(v132, v134, &v240);

    *(v130 + 4) = v136;
    v75 = v131;
    _os_log_impl(&dword_2688BB000, v127, v233, "ControlsFlowProvider.shouldHandleAmbiguousPlay Received unexpected parse: %s", v130, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v230);
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_12();

    (v122[1])(v232, v239);
  }

  else
  {

    v137 = OUTLINED_FUNCTION_63_3();
    v59(v137, v75);
    (v122[1])(v123, v124);
  }

  v138 = OUTLINED_FUNCTION_30_5();
  v139(v138);
  sub_2688C2F6C(v234);
  v59(v235, v75);
LABEL_54:
  OUTLINED_FUNCTION_23();
}