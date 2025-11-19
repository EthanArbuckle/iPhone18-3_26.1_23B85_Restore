void sub_268AC8384(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6828, &qword_268B40A38);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - v6;
  v8 = sub_268B35894();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v79 = v14;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B34674();
  v16 = OUTLINED_FUNCTION_1(v15);
  v77 = v17;
  v78 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_268B37A54();
  v23 = OUTLINED_FUNCTION_1(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v33);
  v35 = &v70 - v34;
  sub_268AC964C();
  v37 = v36;
  v38 = MEMORY[0x26D6237C0]();
  if (v38)
  {
    v74 = v38;
    v76 = v11;
    sub_268B35BD4();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    v75 = v37;
    v43 = MEMORY[0x26D623510](v37, v35);
    sub_2688C058C(v35, &unk_2802A62D0, &qword_268B3EDD0);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v44 = __swift_project_value_buffer(v22, qword_2802CDA10);
    (*(v25 + 16))(v29, v44, v22);

    v45 = sub_268B37A34();
    v46 = sub_268B37ED4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v71 = v8;
      v48 = v47;
      v49 = swift_slowAlloc();
      v72 = v7;
      v50 = v49;
      v80 = v43;
      v81 = v49;
      *v48 = 136315138;
      sub_268B36624();
      v73 = a1;
      sub_268ACBB20(&qword_2802A6830, MEMORY[0x277D5F428]);
      v70 = v43;
      v51 = sub_268B38404();
      v53 = sub_26892CDB8(v51, v52, &v81);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_2688BB000, v45, v46, "DeviceQuery#toRREntity UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x26D6266E0](v50, -1, -1);
      v54 = v48;
      v8 = v71;
      MEMORY[0x26D6266E0](v54, -1, -1);
    }

    (*(v25 + 8))(v29, v22);
    sub_268B34664();
    sub_268B34634();
    (*(v77 + 8))(v21, v78);
    v60 = v76;
    v61 = v79;
    (*(v76 + 104))(v79, *MEMORY[0x277D5F638], v8);
    sub_268B35884();
    (*(v60 + 8))(v61, v8);
    sub_268B37A74();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    sub_268B37A84();

    sub_268B37A94();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    OUTLINED_FUNCTION_23();
  }

  else
  {
    sub_268B37A94();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
    OUTLINED_FUNCTION_23();
  }
}

void sub_268AC88F0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  v26 = sub_268AC915C();
  v27 = a1[4];
  v28 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = v26;
  v30 = v28;
  v31 = sub_268B37614();
  if (v32)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    v30 = 0;
  }

  OUTLINED_FUNCTION_36_12(v31, sel_setRoomName_);

  OUTLINED_FUNCTION_6_40();
  v33 = sub_268B37624();
  if (v34)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    v30 = 0;
  }

  OUTLINED_FUNCTION_36_12(v33, sel_setZoneName_);

  OUTLINED_FUNCTION_6_40();
  v35 = sub_268B375F4();
  if (v36)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    v30 = 0;
  }

  OUTLINED_FUNCTION_36_12(v35, sel_setAccessoryName_);

  OUTLINED_FUNCTION_6_40();
  v37 = sub_268B375D4();
  if (v38)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    v30 = 0;
  }

  OUTLINED_FUNCTION_36_12(v37, sel_setServiceName_);

  OUTLINED_FUNCTION_6_40();
  v39 = sub_268B375E4();
  if (v40)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    v30 = 0;
  }

  OUTLINED_FUNCTION_36_12(v39, sel_setServiceGroup_);

  OUTLINED_FUNCTION_6_40();
  v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_36_12(v41, sel_setFromEntity_);

  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_186();
  sub_268B37604();
  v43 = sub_268B37464();
  OUTLINED_FUNCTION_135(v25, 1, v43);
  if (v44)
  {
    v47 = sub_2688C058C(v25, &qword_2802A5BA8, &qword_268B3C690);
    v46 = 0;
  }

  else
  {
    sub_268B37454();
    OUTLINED_FUNCTION_70(v43);
    (*(v45 + 8))(v25, v43);
    v46 = sub_268B37BC4();
  }

  OUTLINED_FUNCTION_36_12(v47, sel_setDeviceQuantifierString_);

  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268B375C4();
  v49 = sub_268B37034();
  OUTLINED_FUNCTION_135(v19, 1, v49);
  if (v44)
  {
    v52 = sub_2688C058C(v19, &qword_2802A58F0, &unk_268B3BEC0);
    v50 = 0;
  }

  else
  {
    v50 = sub_268B37014();
    OUTLINED_FUNCTION_70(v49);
    (*(v51 + 8))(v19, v49);
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  OUTLINED_FUNCTION_36_12(v52, sel_setDeviceTypeString_);

  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_226();
  sub_268B37634();
  v54 = sub_268B378F4();
  OUTLINED_FUNCTION_135(v13, 1, v54);
  if (v44)
  {
    v60 = sub_2688C058C(v13, &qword_2802A5908, &qword_268B3D920);
    v59 = 0;
  }

  else
  {
    sub_268B378E4();
    OUTLINED_FUNCTION_70(v54);
    v56 = *(v55 + 8);
    v57 = OUTLINED_FUNCTION_70_1();
    v58(v57);
    v59 = sub_268B37BC4();
  }

  OUTLINED_FUNCTION_36_12(v60, sel_setPlaceHintString_);

  v61 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_70_1();
  sub_268B37644();
  v62 = sub_268B37924();
  OUTLINED_FUNCTION_135(v7, 1, v62);
  if (v44)
  {
    v65 = sub_2688C058C(v7, &qword_2802A5CA8, &unk_268B3CE30);
    v63 = 0;
  }

  else
  {
    v63 = sub_268B37914();
    OUTLINED_FUNCTION_70(v62);
    (*(v64 + 8))(v7, v62);
    sub_268B37BC4();
    OUTLINED_FUNCTION_226();
  }

  OUTLINED_FUNCTION_36_12(v65, sel_setReferenceString_);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  OUTLINED_FUNCTION_23();
}

uint64_t DeviceQuery.hasReferenceOnly.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  DeviceQuery.reference.getter();
  v8 = sub_268B37924();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  sub_2688C058C(v7, &qword_2802A5CA8, &unk_268B3CE30);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  sub_2688EF000(v1, &selRef_roomName);
  if (!v10)
  {
    sub_2688EF000(v1, &selRef_zoneName);
    if (!v11)
    {
      sub_2688EF000(v1, &selRef_accessoryName);
      if (!v12)
      {
        sub_2688EF000(v1, &selRef_serviceName);
        if (!v13)
        {
          sub_2688EF000(v1, &selRef_serviceGroup);
          if (!v14)
          {
            v15 = [v1 fromEntity];
            sub_2688C063C();
            v16 = sub_268B38054();
            v17 = v16;
            if (v15)
            {
              v18 = sub_268B38074();

              if (v18)
              {
                return 0;
              }
            }

            else
            {
            }

            sub_2688EF000(v1, &selRef_deviceQuantifierString);
            if (!v19)
            {
              sub_2688EF000(v1, &selRef_deviceTypeString);
              if (!v20)
              {
                sub_2688EF000(v1, &selRef_placeHintString);
                if (!v21)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_268AC90C0(SEL *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v5 = sub_2688EF000(v3, a1);
  if (v6)
  {

    return a2(v5);
  }

  else
  {
    a3(0);
    OUTLINED_FUNCTION_39_9();
    OUTLINED_FUNCTION_96();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

id sub_268AC915C()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_268B37BC4();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  return v3;
}

uint64_t DeviceQuery.isFromEntity.getter()
{
  v1 = [v0 fromEntity];
  sub_2688C063C();
  v2 = sub_268B38054();
  if (v1)
  {
    v3 = sub_268B38074();

    v2 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t DeviceQuery.deviceQuantifier.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_33_17(v8, v13);
  v9 = sub_268B37464();
  OUTLINED_FUNCTION_135(v1, 1, v9);
  if (v10)
  {
    sub_2688C058C(v1, &qword_2802A5BA8, &qword_268B3C690);
    v1 = 0;
  }

  else
  {
    sub_268B37454();
    OUTLINED_FUNCTION_70(v9);
    (*(v11 + 8))(v1, v9);
    OUTLINED_FUNCTION_70_1();
    sub_268B37BC4();
    OUTLINED_FUNCTION_226();
  }

  [v2 setDeviceQuantifierString_];

  return sub_2688C058C(a1, &qword_2802A5BA8, &qword_268B3C690);
}

void (*DeviceQuery.deviceQuantifier.modify(void *a1))()
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  DeviceQuery.deviceQuantifier.getter();
  return sub_268AC9408;
}

uint64_t sub_268AC9430(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  v17 = OUTLINED_FUNCTION_70_1();
  sub_2688F1FA4(v17, v18, a5, a6);
  v19 = *a2;
  return a7(v16);
}

void (*DeviceQuery.deviceType.modify(void *a1))()
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  DeviceQuery.deviceType.getter();
  return sub_268AC9568;
}

void sub_268AC9590(uint64_t *a1, uint64_t a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_38_7(a1, a2, a3, a4, a5);
    a3(v8);
    sub_2688C058C(v9, v6, v5);
  }

  else
  {
    a3(a1[2]);
  }

  free(v9);

  free(v8);
}

void sub_268AC964C()
{
  v0 = sub_268B37A54();
  v1 = OUTLINED_FUNCTION_1(v0);
  v345 = v2;
  v346 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v344 = v5;
  OUTLINED_FUNCTION_9();
  v341 = sub_268B371E4();
  v6 = OUTLINED_FUNCTION_1(v341);
  v340 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v11);
  v350 = sub_268B37034();
  v12 = OUTLINED_FUNCTION_1(v350);
  v361 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v16);
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6128, &qword_268B3E808);
  v17 = OUTLINED_FUNCTION_4(v358);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v348 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_78();
  v357 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v25 = OUTLINED_FUNCTION_22(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v343 = v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  v355 = v36;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_78();
  v347 = v38;
  OUTLINED_FUNCTION_9();
  v312 = sub_268B35F54();
  v39 = OUTLINED_FUNCTION_1(v312);
  v311 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v43);
  v316 = sub_268B37464();
  v44 = OUTLINED_FUNCTION_1(v316);
  v321 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v48);
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  OUTLINED_FUNCTION_4(v315);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_79(&v307[-v52]);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v54 = OUTLINED_FUNCTION_22(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v59);
  v360 = sub_268B358D4();
  v60 = OUTLINED_FUNCTION_1(v360);
  v354 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_2();
  v359 = v64;
  OUTLINED_FUNCTION_9();
  v338 = sub_268B356F4();
  v65 = OUTLINED_FUNCTION_1(v338);
  v337 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v69);
  v70 = sub_268B378F4();
  v71 = OUTLINED_FUNCTION_1(v70);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0);
  v78 = OUTLINED_FUNCTION_4(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v83);
  v85 = &v307[-v84];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v87 = OUTLINED_FUNCTION_22(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v97 = MEMORY[0x28223BE20](v96);
  v99 = &v307[-v98];
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_18();
  v342 = v100;
  OUTLINED_FUNCTION_8();
  v102 = MEMORY[0x28223BE20](v101);
  v104 = &v307[-v103];
  v105 = MEMORY[0x28223BE20](v102);
  v107 = &v307[-v106];
  MEMORY[0x28223BE20](v105);
  v109 = &v307[-v108];
  v110 = sub_268B35754();
  v111 = *(v110 + 48);
  v112 = *(v110 + 52);
  swift_allocObject();
  v356 = sub_268B35744();
  DeviceQuery.placeHint.getter();
  v113 = *MEMORY[0x277D5F9A8];
  v349 = v73;
  v351 = *(v73 + 104);
  v352 = v73 + 104;
  v351(v107, v113, v70);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v70);
  v353 = v77;
  v117 = *(v77 + 48);
  sub_2688F1FA4(v109, v85, &qword_2802A5908, &qword_268B3D920);
  sub_2688F1FA4(v107, v85 + v117, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_11_21(v85);
  if (v120)
  {
    OUTLINED_FUNCTION_12_2(v107);
    OUTLINED_FUNCTION_12_2(v109);
    OUTLINED_FUNCTION_11_21(v85 + v117);
    v118 = v355;
    if (v120)
    {
      v119 = v357;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  sub_2688F1FA4(v85, v104, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_11_21(v85 + v117);
  if (v120)
  {
    sub_2688C058C(v107, &qword_2802A5908, &qword_268B3D920);
    sub_2688C058C(v109, &qword_2802A5908, &qword_268B3D920);
    v121 = *(v349 + 8);
    v122 = OUTLINED_FUNCTION_106_2();
    v123(v122);
    v118 = v355;
LABEL_9:
    sub_2688C058C(v85, &qword_2802A5900, &unk_268B3BED0);
    v119 = v357;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_18();
  v141 = v332;
  v142(v332, v85 + v117, v70);
  OUTLINED_FUNCTION_0_51();
  sub_268ACBB20(v143, v144);
  OUTLINED_FUNCTION_39_9();
  v308 = OUTLINED_FUNCTION_59_4();
  v145 = *(v77 + 8);
  v145(v141, v70);
  sub_2688C058C(v107, &qword_2802A5908, &qword_268B3D920);
  sub_2688C058C(v109, &qword_2802A5908, &qword_268B3D920);
  v146 = OUTLINED_FUNCTION_106_2();
  (v145)(v146);
  sub_2688C058C(v85, &qword_2802A5908, &qword_268B3D920);
  v119 = v357;
  v118 = v355;
  if (v308)
  {
    goto LABEL_37;
  }

LABEL_10:
  v124 = v342;
  DeviceQuery.placeHint.getter();
  v351(v99, *MEMORY[0x277D5F9B8], v70);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_61_6(v125, v126, v127);
  v128 = v336;
  OUTLINED_FUNCTION_37_16(v124, v336);
  OUTLINED_FUNCTION_37_16(v99, v85 + v128);
  OUTLINED_FUNCTION_11_21(v128);
  if (v120)
  {
    OUTLINED_FUNCTION_12_2(v99);
    OUTLINED_FUNCTION_12_2(v124);
    OUTLINED_FUNCTION_11_21(v85 + v128);
    if (!v120)
    {
      goto LABEL_19;
    }

    v85 = v128;
LABEL_15:
    sub_2688C058C(v85, &qword_2802A5908, &qword_268B3D920);
LABEL_37:
    v166 = *MEMORY[0x277D5E238];
    v167 = OUTLINED_FUNCTION_19_18();
    v168(v167);
    sub_268B35714();
    v170 = v85[1];
    v169 = (v85 + 1);
    v171 = OUTLINED_FUNCTION_153_0();
    v172(v171);
LABEL_38:
    v140 = v350;
LABEL_39:
    v173 = v347;
    goto LABEL_40;
  }

  v129 = v323;
  sub_2688F1FA4(v128, v323, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_11_21(v85 + v128);
  if (v130)
  {
    v85 = v129;
    OUTLINED_FUNCTION_12_2(v99);
    OUTLINED_FUNCTION_12_2(v342);
    v131 = *(v349 + 8);
    v132 = OUTLINED_FUNCTION_40_11();
    v133(v132);
LABEL_19:
    sub_2688C058C(v128, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_24_18();
  v159 = OUTLINED_FUNCTION_21_18();
  v160(v159);
  OUTLINED_FUNCTION_0_51();
  sub_268ACBB20(v161, v162);
  v308 = OUTLINED_FUNCTION_59_4();
  v163 = *(v128 + 8);
  v164 = OUTLINED_FUNCTION_40_11();
  v163(v164);
  v85 = &qword_268B3D920;
  OUTLINED_FUNCTION_31_19(v99);
  OUTLINED_FUNCTION_31_19(v342);
  v165 = OUTLINED_FUNCTION_106_2();
  v163(v165);
  v118 = v355;
  OUTLINED_FUNCTION_31_19(v128);
  if (v308)
  {
    goto LABEL_37;
  }

LABEL_20:
  v134 = v334;
  DeviceQuery.placeHint.getter();
  v135 = v333;
  v351(v333, *MEMORY[0x277D5F9B0], v70);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_61_6(v136, v137, v138);
  v139 = v326;
  OUTLINED_FUNCTION_37_16(v134, v326);
  OUTLINED_FUNCTION_37_16(v135, v85 + v139);
  OUTLINED_FUNCTION_11_21(v139);
  if (v120)
  {
    OUTLINED_FUNCTION_12_2(v135);
    OUTLINED_FUNCTION_12_2(v134);
    OUTLINED_FUNCTION_11_21(v85 + v139);
    v119 = v357;
    if (v120)
    {
      sub_2688C058C(v139, &qword_2802A5908, &qword_268B3D920);
      v140 = v350;
      goto LABEL_95;
    }

    goto LABEL_30;
  }

  v147 = v317;
  sub_2688F1FA4(v139, v317, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_11_21(v85 + v139);
  if (v148)
  {
    v85 = v147;
    OUTLINED_FUNCTION_29_16(v363);
    OUTLINED_FUNCTION_29_16(&v364);
    v149 = *(v349 + 8);
    v150 = OUTLINED_FUNCTION_40_11();
    v151(v150);
    v119 = v357;
LABEL_30:
    sub_2688C058C(v139, &qword_2802A5900, &unk_268B3BED0);
    v140 = v350;
    v245 = v329;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_24_18();
  v238 = OUTLINED_FUNCTION_21_18();
  v239(v238);
  OUTLINED_FUNCTION_0_51();
  sub_268ACBB20(v240, v241);
  OUTLINED_FUNCTION_39_9();
  LODWORD(v342) = OUTLINED_FUNCTION_59_4();
  v242 = *(v135 + 8);
  v243 = OUTLINED_FUNCTION_40_11();
  v242(v243);
  v85 = &qword_268B3D920;
  OUTLINED_FUNCTION_18_19(v363);
  OUTLINED_FUNCTION_18_19(&v364);
  v244 = OUTLINED_FUNCTION_106_2();
  v242(v244);
  v245 = v329;
  v118 = v355;
  OUTLINED_FUNCTION_31_19(v139);
  v140 = v350;
  v119 = v357;
  if ((v342 & 1) == 0)
  {
LABEL_31:
    DeviceQuery.placeHint.getter();
    v152 = v325;
    v351(v325, *MEMORY[0x277D5F9C0], v70);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_61_6(v153, v154, v155);
    v156 = v245;
    v157 = v245;
    v158 = v330;
    OUTLINED_FUNCTION_37_16(v156, v330);
    sub_2688F1FA4(v152, v85 + v158, &qword_2802A5908, &qword_268B3D920);
    OUTLINED_FUNCTION_11_21(v158);
    if (v120)
    {
      OUTLINED_FUNCTION_12_2(v152);
      OUTLINED_FUNCTION_54_7(v157);
      OUTLINED_FUNCTION_11_21(&qword_2802A5908 + v85);
      v118 = v355;
      if (v120)
      {
        sub_2688C058C(&qword_2802A5908, &qword_2802A5908, &qword_268B3D920);
LABEL_122:
        v279 = *MEMORY[0x277D5E230];
        v280 = OUTLINED_FUNCTION_19_18();
        v281(v280);
        sub_268B35714();
        v282 = v85[1];
        v169 = (v85 + 1);
        v283 = OUTLINED_FUNCTION_153_0();
        v284(v283);
        goto LABEL_39;
      }
    }

    else
    {
      v227 = v314;
      sub_2688F1FA4(v158, v314, &qword_2802A5908, &qword_268B3D920);
      OUTLINED_FUNCTION_11_21(v85 + v158);
      if (!v228)
      {
        OUTLINED_FUNCTION_24_18();
        v273 = OUTLINED_FUNCTION_21_18();
        v274(v273);
        OUTLINED_FUNCTION_0_51();
        sub_268ACBB20(v275, v276);
        LODWORD(v353) = OUTLINED_FUNCTION_59_4();
        v277 = *(v158 + 8);
        v278 = OUTLINED_FUNCTION_40_11();
        v277(v278);
        v85 = &qword_268B3D920;
        OUTLINED_FUNCTION_18_19(&v354);
        OUTLINED_FUNCTION_18_19(&v358);
        (v277)(v227, v70);
        OUTLINED_FUNCTION_31_19(v158);
        v118 = v355;
        if (v353)
        {
          goto LABEL_122;
        }

LABEL_89:
        v229 = v320;
        DeviceQuery.deviceQuantifier.getter();
        v230 = v319;
        v231 = v316;
        (*(v321 + 104))(v319, *MEMORY[0x277D5F868], v316);
        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v232, v233, v234, v231);
        v169 = *(v315 + 48);
        v235 = v322;
        sub_2688F1FA4(v229, v322, &qword_2802A5BA8, &qword_268B3C690);
        sub_2688F1FA4(v230, v235 + v169, &qword_2802A5BA8, &qword_268B3C690);
        OUTLINED_FUNCTION_135(v235, 1, v231);
        if (v120)
        {
          OUTLINED_FUNCTION_12_2(v230);
          OUTLINED_FUNCTION_55_8(v229);
          OUTLINED_FUNCTION_135(&qword_2802A5BA8 + v169, 1, v231);
          v236 = v356;
          v119 = v357;
          v237 = v362;
          if (v120)
          {
            sub_2688C058C(&qword_2802A5BA8, &qword_2802A5BA8, &qword_268B3C690);
LABEL_124:
            v289 = sub_268B36364();
            v290 = *(v289 + 48);
            v291 = *(v289 + 52);
            swift_allocObject();
            sub_268B36354();
            v292 = v311;
            v293 = v310;
            v169 = v312;
            (*(v311 + 104))(v310, *MEMORY[0x277D5EA28], v312);
            sub_268B36344();
            (*(v292 + 8))(v293, v169);

            sub_268B35E84();

            goto LABEL_38;
          }
        }

        else
        {
          v266 = v313;
          sub_2688F1FA4(v235, v313, &qword_2802A5BA8, &qword_268B3C690);
          OUTLINED_FUNCTION_135(v235 + v169, 1, v231);
          if (!v267)
          {
            v285 = v321;
            v286 = v235 + v169;
            v287 = v309;
            (*(v321 + 32))(v309, v286, v231);
            sub_268ACBB20(&qword_2802A5BB0, MEMORY[0x277D5F880]);
            LODWORD(v353) = sub_268B37BB4();
            v288 = *(v285 + 8);
            v288(v287, v231);
            v169 = &qword_268B3C690;
            OUTLINED_FUNCTION_18_19(&v348);
            OUTLINED_FUNCTION_18_19(&v349);
            v288(v266, v231);
            OUTLINED_FUNCTION_31_19(v235);
            v236 = v356;
            v119 = v357;
            v237 = v362;
            if (v353)
            {
              goto LABEL_124;
            }

LABEL_113:
            v268 = sub_2688EF000(v237, &selRef_zoneName);
            if (v269)
            {
              v353 = v268;
              sub_268B35724();
              sub_268B35E54();
              v270 = OUTLINED_FUNCTION_9_27();
              if (v270)
              {
                v271 = v270;
              }

              else
              {
                v271 = MEMORY[0x277D84F90];
              }

              OUTLINED_FUNCTION_32_12();
              if (v236)
              {
                OUTLINED_FUNCTION_45_8();
              }

              else
              {
                v169 = v360;
                OUTLINED_FUNCTION_44_8();
              }

              sub_268B357F4();
              sub_268B357B4();

              v272 = OUTLINED_FUNCTION_25_18();
              (v237)(v272);
              if (v236)
              {
                MEMORY[0x26D625BD0](0, v271);
              }

              else
              {
                OUTLINED_FUNCTION_44_8();
              }

              v140 = v350;

              v298 = OUTLINED_FUNCTION_47_9();
              MEMORY[0x26D623200](v298);
            }

            else
            {
              v294 = sub_2688EF000(v237, &selRef_roomName);
              if (v295)
              {
                v353 = v294;
                sub_268B35724();
                sub_268B35E54();
                v296 = OUTLINED_FUNCTION_9_27();
                if (v296)
                {
                  v271 = v296;
                }

                else
                {
                  v271 = MEMORY[0x277D84F90];
                }

                OUTLINED_FUNCTION_32_12();
                if (v236)
                {
                  OUTLINED_FUNCTION_45_8();
                }

                else
                {
                  v169 = v360;
                  OUTLINED_FUNCTION_44_8();
                }

                sub_268B357E4();
                sub_268B357B4();

                v297 = OUTLINED_FUNCTION_25_18();
                (v237)(v297);
                if (v236)
                {
                  MEMORY[0x26D625BD0](0, v271);
                }

                else
                {
                  OUTLINED_FUNCTION_44_8();
                }

                v140 = v350;

                v306 = OUTLINED_FUNCTION_47_9();
                MEMORY[0x26D6231F0](v306);
              }

              else
              {
                v299 = sub_2688EF000(v237, &selRef_accessoryName);
                v140 = v350;
                v173 = v347;
                if (!v300)
                {
                  goto LABEL_40;
                }

                v301 = v300;
                v302 = v299;
                sub_268B35724();
                sub_268B35E54();
                v303 = OUTLINED_FUNCTION_9_27();
                if (v303)
                {
                  v304 = v303;
                }

                else
                {
                  v304 = MEMORY[0x277D84F90];
                }

                OUTLINED_FUNCTION_32_12();
                if (v236)
                {
                  OUTLINED_FUNCTION_45_8();
                }

                else
                {
                  v169 = v360;
                  OUTLINED_FUNCTION_44_8();
                }

                sub_268B35824();
                sub_268B357B4();

                v305 = OUTLINED_FUNCTION_25_18();
                (v237)(v305);
                if (v236)
                {
                  MEMORY[0x26D625BD0](0, v304);
                }

                else
                {
                  OUTLINED_FUNCTION_44_8();
                }

                v140 = v350;

                v271 = v359;
                MEMORY[0x26D623230](v302, v301);
              }
            }

            sub_268B357B4();

            (v237)(v271, v360);
            v118 = v355;
            goto LABEL_39;
          }

          v169 = v231;
          OUTLINED_FUNCTION_29_16(&v348);
          OUTLINED_FUNCTION_55_8(v320);
          (*(v321 + 8))(v266, v231);
          v236 = v356;
          v119 = v357;
          v237 = v362;
        }

        sub_2688C058C(&qword_2802A5BA8, &qword_2802A5BA0, &unk_268B41020);
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_29_16(&v354);
      OUTLINED_FUNCTION_54_7(v329);
      (*(v349 + 8))(v227, v70);
      v118 = v355;
    }

    sub_2688C058C(&qword_2802A5908, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_89;
  }

LABEL_95:
  sub_268B35724();
  sub_268B35E54();
  v246 = OUTLINED_FUNCTION_9_27();
  if (v246)
  {
    v247 = v246;
  }

  else
  {
    v247 = MEMORY[0x277D84F90];
  }

  sub_2688EFD10(0, (v247 & 0xC000000000000001) == 0, v247);
  if ((v247 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D625BD0](0, v247);
  }

  else
  {
    v248 = *(v247 + 32);
  }

  v169 = v354;
  v173 = v347;

  OUTLINED_FUNCTION_51_7();
  sub_268B35834();
  sub_268B357B4();

  (*(v169 + 8))(v247, v360);
LABEL_40:
  DeviceQuery.deviceType.getter();
  v174 = *MEMORY[0x277D5F720];
  v353 = *(v361 + 104);
  v353(v118, v174, v140);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_60_4(v175, v176, v177);
  OUTLINED_FUNCTION_37_16(v173, v119);
  OUTLINED_FUNCTION_37_16(v118, v119 + v169);
  OUTLINED_FUNCTION_8_32(v119);
  if (v120)
  {
    OUTLINED_FUNCTION_12_2(v118);
    OUTLINED_FUNCTION_12_2(v173);
    OUTLINED_FUNCTION_8_32(v119 + v169);
    if (v120)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  v178 = v331;
  sub_2688F1FA4(v119, v331, &qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_8_32(v119 + v169);
  if (v179)
  {
    v169 = v178;
    OUTLINED_FUNCTION_12_2(v118);
    OUTLINED_FUNCTION_12_2(v173);
    (*(v361 + 8))(v178, v140);
LABEL_48:
    sub_2688C058C(v119, &qword_2802A6128, &qword_268B3E808);
    v202 = v339;
    goto LABEL_49;
  }

  v195 = *(v361 + 32);
  v196 = OUTLINED_FUNCTION_20_20();
  v197(v196);
  OUTLINED_FUNCTION_5_28();
  sub_268ACBB20(v198, v199);
  OUTLINED_FUNCTION_39_9();
  LODWORD(v352) = OUTLINED_FUNCTION_46_10();
  v200 = OUTLINED_FUNCTION_49_6();
  v119(v200);
  v169 = &unk_268B3BEC0;
  OUTLINED_FUNCTION_31_19(v118);
  v201 = v173;
  v202 = v339;
  OUTLINED_FUNCTION_31_19(v201);
  (v119)(v178, v140);
  OUTLINED_FUNCTION_31_19(v357);
  if (v352)
  {
    goto LABEL_70;
  }

LABEL_49:
  DeviceQuery.deviceType.getter();
  v180 = v343;
  v353(v343, *MEMORY[0x277D5F738], v140);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_60_4(v181, v182, v183);
  v184 = v348;
  sub_2688F1FA4(v202, v348, &qword_2802A58F0, &unk_268B3BEC0);
  sub_2688F1FA4(v180, v184 + v169, &qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_8_32(v184);
  if (v120)
  {
    OUTLINED_FUNCTION_12_2(v180);
    OUTLINED_FUNCTION_56_7();
    OUTLINED_FUNCTION_8_32(v119 + v169);
    if (!v120)
    {
      goto LABEL_57;
    }

LABEL_53:
    sub_2688C058C(v119, &qword_2802A58F0, &unk_268B3BEC0);
LABEL_70:
    sub_268B371B4();
    sub_268B37174();
    v213 = OUTLINED_FUNCTION_153_0();
    sub_26892E340(v213, v214);
    v216 = v215;

    v217 = OUTLINED_FUNCTION_35_13();
    v218(v217);
    sub_268B35724();

    sub_268B35E54();
    v219 = OUTLINED_FUNCTION_9_27();
    if (v219)
    {
      v193 = v219;
    }

    else
    {
      v193 = MEMORY[0x277D84F90];
    }

    v220 = sub_2688EFD0C(v193);
    v221 = v220 - 1;
    if (__OFSUB__(v220, 1))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_57_5();
      if (!v216)
      {
        v222 = *(v193 + 8 * v221 + 32);

LABEL_76:
        v205 = v354;

        OUTLINED_FUNCTION_51_7();
        sub_268B35864();
LABEL_77:
        sub_268B357B4();

        (*(v205 + 8))(v193, v360);
        goto LABEL_78;
      }
    }

    MEMORY[0x26D625BD0](v221, v193);
    goto LABEL_76;
  }

  v185 = v324;
  sub_2688F1FA4(v184, v324, &qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_8_32(v184 + v169);
  if (v186)
  {
    OUTLINED_FUNCTION_12_2(v343);
    OUTLINED_FUNCTION_56_7();
    (*(v361 + 8))(v185, v140);
LABEL_57:
    sub_2688C058C(v119, &qword_2802A6128, &qword_268B3E808);
    goto LABEL_58;
  }

  v206 = *(v361 + 32);
  v207 = OUTLINED_FUNCTION_20_20();
  v208(v207);
  OUTLINED_FUNCTION_5_28();
  sub_268ACBB20(v209, v210);
  v211 = OUTLINED_FUNCTION_46_10();
  v212 = OUTLINED_FUNCTION_49_6();
  v119(v212);
  v169 = &unk_268B3BEC0;
  OUTLINED_FUNCTION_31_19(v343);
  OUTLINED_FUNCTION_31_19(v202);
  (v119)(v185, v140);
  OUTLINED_FUNCTION_31_19(v184);
  if (v211)
  {
    goto LABEL_70;
  }

LABEL_58:
  v187 = v335;
  DeviceQuery.deviceType.getter();
  v188 = v327;
  v353(v327, *MEMORY[0x277D5F740], v140);
  v189 = v187;
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_60_4(v190, v191, v192);
  v193 = &qword_2802A58F0;
  v194 = v328;
  OUTLINED_FUNCTION_37_16(v189, v328);
  OUTLINED_FUNCTION_37_16(v188, v194 + v169);
  OUTLINED_FUNCTION_8_32(v194);
  if (v120)
  {
    OUTLINED_FUNCTION_12_2(v188);
    OUTLINED_FUNCTION_12_2(v189);
    OUTLINED_FUNCTION_8_32(v194 + v169);
    if (v120)
    {
      sub_2688C058C(v194, &qword_2802A58F0, &unk_268B3BEC0);
LABEL_102:
      sub_268B371B4();
      sub_268B371D4();
      v256 = OUTLINED_FUNCTION_153_0();
      sub_26892E340(v256, v257);
      v259 = v258;

      v260 = OUTLINED_FUNCTION_35_13();
      v261(v260);
      sub_268B35724();

      sub_268B35E54();
      v262 = OUTLINED_FUNCTION_9_27();
      if (v262)
      {
        v193 = v262;
      }

      else
      {
        v193 = MEMORY[0x277D84F90];
      }

      v263 = sub_2688EFD0C(v193);
      v264 = v263 - 1;
      if (__OFSUB__(v263, 1))
      {
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_57_5();
        if (!v259)
        {
          v265 = *(v193 + 8 * v264 + 32);

LABEL_108:
          v205 = v354;

          OUTLINED_FUNCTION_51_7();
          sub_268B357D4();
          goto LABEL_77;
        }
      }

      MEMORY[0x26D625BD0](v264, v193);
      goto LABEL_108;
    }

LABEL_68:
    sub_2688C058C(v194, &qword_2802A6128, &qword_268B3E808);
    v205 = v354;
    goto LABEL_78;
  }

  v203 = v318;
  sub_2688F1FA4(v194, v318, &qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_8_32(v194 + v169);
  if (v204)
  {
    OUTLINED_FUNCTION_12_2(v188);
    OUTLINED_FUNCTION_29_16(&v365);
    (*(v361 + 8))(v203, v140);
    goto LABEL_68;
  }

  v249 = v361;
  v250 = *(v361 + 32);
  v251 = OUTLINED_FUNCTION_20_20();
  v252(v251);
  OUTLINED_FUNCTION_5_28();
  sub_268ACBB20(v253, v254);
  v193 = OUTLINED_FUNCTION_46_10();
  v255 = *(v249 + 8);
  v255(v169, v140);
  OUTLINED_FUNCTION_31_19(v188);
  OUTLINED_FUNCTION_18_19(&v365);
  v255(v203, v140);
  OUTLINED_FUNCTION_31_19(v194);
  v205 = v354;
  if (v193)
  {
    goto LABEL_102;
  }

LABEL_78:
  if (DeviceQuery.isFromEntity.getter())
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v223 = v346;
    v224 = __swift_project_value_buffer(v346, qword_2802CDA10);
    (*(v345 + 16))(v344, v224, v223);
    v193 = sub_268B37A34();
    v225 = sub_268B37EE4();
    if (os_log_type_enabled(v193, v225))
    {
      v226 = swift_slowAlloc();
      *v226 = 0;
      _os_log_impl(&dword_2688BB000, v193, v225, "DeviceQuery#toUsoBuilder From entity found, but donation blocked by rdar://88971898", v226, 2u);
      MEMORY[0x26D6266E0](v226, -1, -1);
    }

    (*(v345 + 8))(v344, v346);
  }

  OUTLINED_FUNCTION_51_7();
  sub_268B35854();
  sub_268B357B4();

  (*(v205 + 8))(v193, v360);
  OUTLINED_FUNCTION_23();
}

void (*sub_268ACB7B4(void **a1))()
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690) - 8) + 64);
  *a1 = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  DeviceQuery.deviceQuantifier.getter();
  return sub_268ACB850;
}

void (*sub_268ACB8C0(void **a1))()
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0) - 8) + 64);
  *a1 = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  DeviceQuery.deviceType.getter();
  return sub_268ACB95C;
}

void sub_268ACB984(void **a1, uint64_t a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v9 = a1[1];
  v8 = a1[2];
  v10 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_38_7(a1, a2, a3, a4, a5);
    a3(v10);
    sub_2688C058C(v9, v6, v5);
  }

  else
  {
    a3(a1[1]);
  }

  free(v9);

  free(v10);
}

uint64_t sub_268ACBB20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_40()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_27()
{

  return sub_268B35B54();
}

uint64_t OUTLINED_FUNCTION_18_19@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_2688C058C(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_19_18()
{
  v1 = *(*(v0 - 296) + 104);
  result = *(v0 - 304);
  v3 = *(v0 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_16@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_2688C058C(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_31_19(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_12()
{

  return sub_2688EFD10(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_33_17@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2688F1FA4(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_35_13()
{
  v2 = *(*(v1 - 272) + 8);
  result = v0;
  v4 = *(v1 - 264);
  return result;
}

id OUTLINED_FUNCTION_36_12(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_37_16(uint64_t a1, uint64_t a2)
{

  return sub_2688F1FA4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_38_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return sub_2688F1FA4(v6, v5, a4, a5);
}

uint64_t OUTLINED_FUNCTION_44_8()
{
  v2 = *(v0 + 32);
}

void OUTLINED_FUNCTION_45_8()
{
  v2 = *(v0 - 112);

  JUMPOUT(0x26D625BD0);
}

uint64_t OUTLINED_FUNCTION_46_10()
{

  return sub_268B37BB4();
}

uint64_t OUTLINED_FUNCTION_54_7(uint64_t a1)
{
  v5 = v1;
  v6 = *(v3 - 376);

  return sub_2688C058C(a1, v5, v2);
}

uint64_t OUTLINED_FUNCTION_55_8(uint64_t a1)
{
  v5 = v1;
  v6 = *(v3 - 440);

  return sub_2688C058C(a1, v5, v2);
}

uint64_t OUTLINED_FUNCTION_56_7()
{
  v5 = *(v3 - 208);

  return sub_2688C058C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_57_5()
{

  return sub_2688EFD10(v1, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_59_4()
{

  return sub_268B37BB4();
}

uint64_t OUTLINED_FUNCTION_60_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v6 = *(*(v4 - 128) + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v6 = *(*(v4 - 168) + 48);
  return result;
}

Swift::String_optional __swiftcall UsoTask_seekForward_common_MediaItem.verb()()
{
  v0 = 0x77726F4670696B73;
  v1 = 0xEB00000000647261;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268ACBFB4(uint64_t a1)
{
  result = sub_268ACC060(&qword_2802A8858);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268ACC060(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36454();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268ACC0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268ACC13C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268ACC190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268ACC1E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268ACC238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268ACC28C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268ACC2E0()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268ACC334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268ACC398()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268ACC3EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268ACC450(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268ACC4B4()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268ACC518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

unint64_t sub_268ACC57C()
{
  if ([v0 volumeSettingType] == 2 && (v1 = objc_msgSend(v0, sel_currentVolumeOutput)) != 0 && (v2 = v1, objc_msgSend(v1, sel_floatValue), v4 = v3, v2, (v5 = objc_msgSend(v0, sel_resolvedVolumeOutput)) != 0))
  {
    v6 = v5;
    [v5 floatValue];
    v8 = v7;

    v9 = [v0 volumeSettingState];
    v10 = 0;
    v11 = -v8;
    if (v9 == 5)
    {
      v11 = v8;
    }

    v12 = v4 + v11;
  }

  else
  {
    v13 = [v0 resolvedVolumeOutput];
    if (v13)
    {
      v14 = v13;
      [v13 floatValue];
      v16 = v15;

      v10 = 0;
      v12 = v16;
    }

    else
    {
      v12 = 0.0;
      v10 = 1;
    }
  }

  return LODWORD(v12) | (v10 << 32);
}

uint64_t sub_268ACC6A8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v69 = a5;
  v70 = a4;
  v71 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v5 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v68 = (&v63 - v6);
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v66 = &v63 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v63 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - v17;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    __swift_project_value_buffer(v7, qword_2802CDA10);
    v19 = v8[2];
    OUTLINED_FUNCTION_30_8();
    v19();
    v20 = sub_268B37A34();
    v21 = sub_268B37ED4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2688BB000, v20, v21, "SetShuffleStateConfirmIntentStrategy.makeDialogForConfirmation()", v22, 2u);
      OUTLINED_FUNCTION_12();
    }

    v24 = v8[1];
    ++v8;
    v23 = v24;
    (v24)(v18, v7);
    v25 = v71;
    v26 = sub_268B18100();
    if (!v26)
    {
      break;
    }

    v27 = v26;
    v28 = sub_2688EFD0C(v26);
    if (!v28)
    {

      break;
    }

    v29 = v28;
    v30 = [v25 shuffleState];
    if (v30 == 2)
    {
      LODWORD(v71) = 0;
      v31 = v66;
    }

    else
    {
      v31 = v66;
      if (v30 != 1)
      {
        v58 = v23;

        v59 = v64;
        OUTLINED_FUNCTION_30_8();
        v19();
        v60 = sub_268B37A34();
        v61 = sub_268B37EE4();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_2688BB000, v60, v61, "Unexpected shuffle state found", v62, 2u);
          OUTLINED_FUNCTION_12();
        }

        v58(v59, v7);
        sub_2688C2ECC();
        v35 = swift_allocError();
        v37 = 84;
        goto LABEL_13;
      }

      LODWORD(v71) = 1;
    }

    OUTLINED_FUNCTION_30_8();
    v19();

    v40 = sub_268B37A34();
    v18 = sub_268B37EC4();

    if (os_log_type_enabled(v40, v18))
    {
      v41 = swift_slowAlloc();
      v68 = v23;
      v42 = v41;
      v43 = swift_slowAlloc();
      v72 = v43;
      *v42 = 136315138;
      v44 = type metadata accessor for Device();
      v45 = MEMORY[0x26D6256F0](v27, v44);
      v8 = sub_26892CDB8(v45, v46, &v72);

      *(v42 + 4) = v8;
      _os_log_impl(&dword_2688BB000, v40, v18, "Confirming devices: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v68(v66, v7);
    }

    else
    {

      (v23)(v31, v7);
    }

    v12 = 0;
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29 == v12)
      {

        v57 = *(v65 + 56);
        sub_268AB9068(v47, v71, v70, v69);
      }

      if ((v27 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x26D625BD0](v12, v27);
      }

      else
      {
        if (v12 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v48 = *(v27 + 8 * v12 + 32);
      }

      v7 = v48;
      v8 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v49 = sub_268988580(v48);
      if (v50)
      {
        v18 = v49;
        v52 = v50;

        goto LABEL_28;
      }

      v18 = sub_268988568(v7);
      v52 = v51;

      ++v12;
      if (v52)
      {
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v47 + 16);
          sub_2689876A4();
          v47 = v55;
        }

        v7 = *(v47 + 16);
        if (v7 >= *(v47 + 24) >> 1)
        {
          sub_2689876A4();
          v47 = v56;
        }

        *(v47 + 16) = v7 + 1;
        v53 = v47 + 16 * v7;
        *(v53 + 32) = v18;
        *(v53 + 40) = v52;
        v12 = v8;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  OUTLINED_FUNCTION_30_8();
  v19();
  v32 = sub_268B37A34();
  v33 = sub_268B37EE4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "Could not find any devices in the intent for confirmation", v34, 2u);
    OUTLINED_FUNCTION_12();
  }

  (v23)(v12, v7);
  sub_2688C2ECC();
  v35 = swift_allocError();
  v37 = 83;
LABEL_13:
  *v36 = v37;
  v38 = v68;
  *v68 = v35;
  swift_storeEnumTagMultiPayload();
  v70(v38);
  return sub_268919854(v38);
}

void sub_268ACCDC0()
{
  type metadata accessor for SetShuffleStateConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268ACCE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268ACCF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SetShuffleStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268ACCF9C(uint64_t a1)
{
  result = sub_268ACCFC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268ACCFC4()
{
  result = qword_2802A8870;
  if (!qword_2802A8870)
  {
    type metadata accessor for SetShuffleStateConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8870);
  }

  return result;
}

BOOL sub_268ACD018()
{
  OUTLINED_FUNCTION_7_33();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

BOOL sub_268ACD0C0()
{
  OUTLINED_FUNCTION_7_33();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v10 = *v4;

    v7 = v1(&v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;

    ++v4;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_268ACD16C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
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

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920) - 8);
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

BOOL sub_268ACD25C()
{
  OUTLINED_FUNCTION_7_33();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v11 = *v4;
    v7 = v11;
    v8 = v1(&v11);
    if (v0)
    {

      return v5 != 0;
    }

    v9 = v8;

    ++v4;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_268ACD2FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15[-v3];
  v18 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  inited[1] = xmmword_268B3BBD0;
  inited[2] = xmmword_268B48200;
  inited[3] = xmmword_268B48210;
  v17 = UsoTask_play_uso_NoEntity.verb()();
  v16 = &v17;
  v6 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (!v6)
  {
    goto LABEL_3;
  }

  v17.value._countAndFlagsBits = v0;
  sub_268B35E64();
  OUTLINED_FUNCTION_2_35();
  sub_268ACE950(v7, v8);
  sub_268B37364();
  v9 = sub_268B37924();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v9);
  sub_268ACE800(v4);
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_2_35();
    sub_268ACE950(v12, v13);
    v11 = sub_268B37834();
  }

  else
  {
LABEL_3:
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_268ACD4D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12[-v3];
  v15 = v0;
  v5 = UsoTask_play_common_MediaItem.hasMediaItemsToPlay()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  inited[1] = xmmword_268B3BBD0;
  inited[2] = xmmword_268B48200;
  inited[3] = xmmword_268B48210;
  v14 = UsoTask_play_common_MediaItem.verb()();
  v13 = &v14;
  v7 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v7 && (v14.value._countAndFlagsBits = v0, sub_268B36024(), sub_268ACE950(&qword_2802A8878, MEMORY[0x277D5ECC8]), sub_268B37364(), v8 = sub_268B37924(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v8), sub_268ACE800(v4), EnumTagSinglePayload != 1))
  {
    sub_268ACE950(&qword_2802A8880, MEMORY[0x277D5ECC8]);
    v10 = sub_268B37834() & !v5;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

Swift::Bool __swiftcall UsoTask_play_common_MediaItem.hasMediaItemsToPlay()()
{
  sub_268B36314();
  if (v6 && (sub_268B35EF4(), v1 = v0, , v1) || (sub_268B36314(), v6) && (v2 = sub_268B35EB4(), , v2))
  {

    return 1;
  }

  sub_268B36314();
  if (v6 && (v3 = sub_268B35B84(), , v3) || (sub_268B36314(), v6) && (v4 = sub_268B35ED4(), , v4))
  {

    return 1;
  }

  return 0;
}

Swift::String_optional __swiftcall UsoTask_play_common_MediaItem.verb()()
{
  v0 = 2036427888;
  if (UsoTask_play_common_MediaItem.referencedSetting()() && (sub_268962A68(), v2 = v1, v3 = v1, , v3 != 24))
  {
    v0 = sub_26893E3F8(v2);
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = v0;
  result.value._object = v4;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t UsoTask_play_common_MediaItem.referencedSetting()()
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

uint64_t sub_268ACD8D8@<X0>(uint64_t a1@<X8>)
{
  if (UsoTask_play_common_MediaItem.referencedSetting()())
  {
    sub_268964750();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

uint64_t sub_268ACD960()
{
  if (!UsoTask_play_common_MediaItem.referencedSetting()())
  {
    return 0;
  }

  v0 = sub_268B35DA4();

  if (!v0)
  {
    return 0;
  }

  v1 = sub_268B35FD4();

  return v1;
}

uint64_t UsoTask_play_common_MediaItem.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v70 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v68 - v4;
  v6 = sub_268B37A54();
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v68 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v68 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v68 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v68 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v68 - v23;
  if (sub_268ACD4D0())
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v25 = v6;
    __swift_project_value_buffer(v6, qword_2802CDA10);
    OUTLINED_FUNCTION_1_54();
    v26(v24);
    v27 = sub_268B37A34();
    v28 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v28))
    {
      v29 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v29);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v30, v31, "UsoTask_play_common_MediaItem#shouldHandle This is an addSpeaker request, handling in controls");
      OUTLINED_FUNCTION_83_0();
    }

    v32 = 0;
  }

  else
  {
    v33 = UsoTask_play_common_MediaItem.referencedSetting()();
    if (v33)
    {
      v34 = v33;
      sub_2689633E8();
      if (v35)
      {
        v68[2] = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
        inited = swift_initStackObject();
        inited[1] = xmmword_268B3BBD0;
        inited[2] = xmmword_268B3F0D0;
        inited[3] = xmmword_268B3F0E0;
        v37 = UsoTask_play_common_MediaItem.verb()();
        v68[1] = v68;
        v71 = v37;
        MEMORY[0x28223BE20](v37.value._countAndFlagsBits);
        v68[-2] = &v71;
        v38 = sub_268ACD0C0();
        swift_setDeallocating();
        sub_268ACE6C0();

        if (v38)
        {
          v71.value._countAndFlagsBits = v1;
          sub_268B36024();
          sub_268ACE950(&qword_2802A8878, MEMORY[0x277D5ECC8]);
          sub_268B37364();
          v39 = sub_268B37924();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v39);
          sub_268ACE800(v5);
          if (EnumTagSinglePayload == 1)
          {
            v25 = v6;
            if (qword_2802A4F30 != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            __swift_project_value_buffer(v6, qword_2802CDA10);
            OUTLINED_FUNCTION_1_54();
            v41(v19);
            v42 = sub_268B37A34();
            v43 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v43))
            {
              v44 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v44);
              OUTLINED_FUNCTION_112_1(&dword_2688BB000, v45, v46, "UsoTask_play_common_MediaItem#shouldHandle Verb is shuffle/repeat without a reference, rejecting");
              OUTLINED_FUNCTION_83_0();
            }

            v32 = 3;
            v24 = v19;
          }

          else
          {
            v25 = v6;
            if (qword_2802A4F30 != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            __swift_project_value_buffer(v6, qword_2802CDA10);
            OUTLINED_FUNCTION_1_54();
            v61(v22);
            v62 = sub_268B37A34();
            v63 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v63))
            {
              v64 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v64);
              OUTLINED_FUNCTION_112_1(&dword_2688BB000, v65, v66, "UsoTask_play_common_MediaItem#shouldHandle Verb is shuffle/repeat with a reference, handling in controls");
              OUTLINED_FUNCTION_83_0();
            }

            v32 = 0;
            v24 = v22;
          }
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v25 = v6;
          __swift_project_value_buffer(v6, qword_2802CDA10);
          OUTLINED_FUNCTION_1_54();
          v55(v16);
          v56 = sub_268B37A34();
          v57 = sub_268B37F04();
          if (OUTLINED_FUNCTION_19(v57))
          {
            v58 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v58);
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v59, v60, "UsoTask_play_common_MediaItem#shouldHandle Task is mediaPlayer. Handling in controls");
            OUTLINED_FUNCTION_83_0();
          }

          v32 = 0;
          v24 = v16;
        }
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v25 = v6;
        __swift_project_value_buffer(v6, qword_2802CDA10);
        OUTLINED_FUNCTION_1_54();
        v51(v13);
        v52 = sub_268B37A34();
        v53 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v53))
        {
          v54 = OUTLINED_FUNCTION_14();
          *v54 = 0;
          _os_log_impl(&dword_2688BB000, v52, v13, "UsoTask_play_common_MediaItem#shouldHandle Task is not mediaPlayer: Not handling in controls", v54, 2u);
          MEMORY[0x26D6266E0](v54, -1, -1);
        }

        v32 = 3;
        v24 = v13;
      }
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v25 = v6;
      __swift_project_value_buffer(v6, qword_2802CDA10);
      OUTLINED_FUNCTION_1_54();
      v47(v10);
      v48 = sub_268B37A34();
      v49 = sub_268B37EE4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = OUTLINED_FUNCTION_14();
        *v50 = 0;
        _os_log_impl(&dword_2688BB000, v48, v49, "UsoTask_play_common_MediaItem#shouldHandle no referenced setting found in task. Not handling in Controls", v50, 2u);
        MEMORY[0x26D6266E0](v50, -1, -1);
      }

      v32 = 3;
      v24 = v10;
    }
  }

  result = (*(v6 + 8))(v24, v25);
  *v70 = v32;
  return result;
}

uint64_t sub_268ACE1F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268ACE244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268ACE298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268ACE2EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268ACE340(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268ACE394(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268ACE3E8()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268ACE43C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268ACE4A0()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268ACE4F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268ACE558(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268ACE5BC()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268ACE620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268ACE684()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_4_41();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_268ACE6C0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_4_41();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_268ACE718()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_4_41();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_268ACE758()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  v3 = OUTLINED_FUNCTION_4_41();

  return MEMORY[0x2821FE8D8](v3, v4, v5);
}

uint64_t sub_268ACE800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268ACE868(uint64_t a1)
{
  result = sub_268ACE950(&qword_2802A8878, MEMORY[0x277D5ECC8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268ACE950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268ACE9E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v82 = a5;
  v83 = a4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v6 = OUTLINED_FUNCTION_4(v80);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v81 = (&v72 - v9);
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v79 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v76 = &v72 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = (&v72 - v23);
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    __swift_project_value_buffer(v10, qword_2802CDA10);
    v84 = v13;
    v25 = *(v13 + 16);
    OUTLINED_FUNCTION_5_29();
    v25();
    v26 = sub_268B37A34();
    v27 = sub_268B37ED4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_14();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "SkipContentConfirmIntentStrategy.makeDialogForConfirmation()", v28, 2u);
      OUTLINED_FUNCTION_12();
    }

    v30 = v84 + 8;
    v29 = *(v84 + 8);
    v29(v24, v10);
    v78 = a2;
    v31 = sub_268B18100();
    if (!v31)
    {
      break;
    }

    a2 = v31;
    v32 = sub_2688EFD0C(v31);
    if (!v32)
    {

      break;
    }

    v33 = v32;
    v84 = v30;
    OUTLINED_FUNCTION_5_29();
    v25();
    v24 = sub_268B37A34();
    v34 = sub_268B37EC4();
    if (os_log_type_enabled(v24, v34))
    {
      v35 = swift_slowAlloc();
      v74 = v34;
      v36 = v35;
      v75 = swift_slowAlloc();
      v85 = v75;
      *v36 = 136315138;
      v37 = type metadata accessor for Device();
      v38 = MEMORY[0x26D6256F0](a2, v37);
      v79 = v10;
      v40 = sub_26892CDB8(v38, v39, &v85);
      v73 = v22;
      v41 = v40;
      v10 = v79;

      *(v36 + 4) = v41;
      _os_log_impl(&dword_2688BB000, v24, v74, "Confirming devices: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v42 = v73;
    }

    else
    {

      v42 = v22;
    }

    v29(v42, v10);
    v53 = [v78 direction];
    if (v53 == 1)
    {
      LODWORD(v84) = 0;
    }

    else
    {
      if (v53 != 2)
      {
        v66 = v29;

        v67 = v76;
        OUTLINED_FUNCTION_5_29();
        v25();
        v68 = sub_268B37A34();
        v69 = sub_268B37EE4();
        if (os_log_type_enabled(v68, v69))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v70, v71, "Unexpected skip content direction");
          OUTLINED_FUNCTION_12();
        }

        v66(v67, v10);
        sub_2688C2ECC();
        v48 = swift_allocError();
        v50 = 116;
        goto LABEL_12;
      }

      LODWORD(v84) = 1;
    }

    v22 = 0;
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v33 == v22)
      {

        v65 = *(v77 + 56);
        sub_268AB860C(v54, v84, v83, v82);
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x26D625BD0](v22, a2);
      }

      else
      {
        if (v22 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v55 = *(a2 + 8 * v22 + 32);
      }

      v10 = v55;
      v56 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v57 = sub_268988580(v55);
      if (v58)
      {
        v24 = v57;
        v60 = v58;

        goto LABEL_28;
      }

      v24 = sub_268988568(v10);
      v60 = v59;

      ++v22;
      if (v60)
      {
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = *(v54 + 16);
          sub_2689876A4();
          v54 = v63;
        }

        v10 = *(v54 + 16);
        if (v10 >= *(v54 + 24) >> 1)
        {
          sub_2689876A4();
          v54 = v64;
        }

        *(v54 + 16) = v10 + 1;
        v61 = v54 + 16 * v10;
        *(v61 + 32) = v24;
        *(v61 + 40) = v60;
        v22 = v56;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    OUTLINED_FUNCTION_0_0();
  }

  v43 = v79;
  OUTLINED_FUNCTION_5_29();
  v25();
  v44 = sub_268B37A34();
  v45 = sub_268B37EE4();
  if (os_log_type_enabled(v44, v45))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v46, v47, "Could not find any devices in the intent for confirmation");
    OUTLINED_FUNCTION_12();
  }

  v29(v43, v10);
  sub_2688C2ECC();
  v48 = swift_allocError();
  v50 = 115;
LABEL_12:
  *v49 = v50;
  v51 = v81;
  *v81 = v48;
  swift_storeEnumTagMultiPayload();
  v83(v51);
  return sub_2688C058C(v51, &qword_2802A6300, &unk_268B3BD80);
}

uint64_t sub_268ACF088(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v63 = a2;
  v59 = a1;
  v7 = sub_268B35044();
  v8 = OUTLINED_FUNCTION_1(v7);
  v60 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v54 - v13;
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v57 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v24 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v55 = *(v17 + 16);
  v56 = v24;
  v55(v23);
  v25 = sub_268B37A34();
  v26 = sub_268B37ED4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_14();
    v54 = v7;
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "SkipContentConfirmIntentStrategy.makePromptForConfirmation() called", v27, 2u);
    v7 = v54;
    OUTLINED_FUNCTION_12();
  }

  v28 = *(v17 + 8);
  v28(v23, v14);
  v29 = [v63 direction];
  if (v29 == 2)
  {
    v30 = a5;
    v34 = sub_268B36574();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_268B36564();
    goto LABEL_9;
  }

  if (v29 == 1)
  {
    v30 = a5;
    v31 = sub_268B36504();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_268B364F4();
LABEL_9:

    v37 = v62;
    sub_2689D9FD4();

    v38 = v60;
    v39 = v58;
    (*(v60 + 16))(v58, v37, v7);
    v40 = (*(v38 + 80) + 56) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = a4;
    *(v41 + 3) = v30;
    v42 = v63;
    v43 = v61;
    *(v41 + 4) = v63;
    *(v41 + 5) = v43;
    *(v41 + 6) = v59;
    (*(v38 + 32))(&v41[v40], v39, v7);

    v44 = v42;

    sub_268ACE9E4(v45, v44, v46, sub_268AD00FC, v41);

    return (*(v38 + 8))(v62, v7);
  }

  v63 = a4;
  v48 = v57;
  (v55)(v57, v56, v14);
  v49 = sub_268B37A34();
  v50 = sub_268B37EE4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_14();
    *v51 = 0;
    _os_log_impl(&dword_2688BB000, v49, v50, "Unexpected skip content direction", v51, 2u);
    OUTLINED_FUNCTION_12();
  }

  v28(v48, v14);
  sub_2688C2ECC();
  v52 = swift_allocError();
  *v53 = 117;
  v64[0] = v52;
  v65 = 1;
  (v63)(v64);
  return sub_2688C058C(v64, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_268ACF548(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v72 = a5;
  v79 = a4;
  v80 = a2;
  v81 = a3;
  v76 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v65 - v17;
  v18 = sub_268B34E24();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = *(v77 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_268B37A54();
  v67 = *(v22 - 8);
  v23 = *(v67 + 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v71 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v65 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v65 - v37;
  sub_2688F1FA4(v76, v29, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v29, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v22, qword_2802CDA10);
    v40 = v67;
    (*(v67 + 2))(v25, v39, v22);
    v41 = sub_268B37A34();
    v42 = sub_268B37EE4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "SkipContentConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    v40[1](v25, v22);
    sub_2688C2ECC();
    v44 = swift_allocError();
    *v45 = -71;
    v82[0] = v44;
    v83 = 1;
    v80(v82);
    return sub_2688C058C(v82, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v29, v38);
    sub_268947F08();
    v65 = v47;
    v48 = v72;
    v49 = __swift_project_boxed_opaque_existential_1(v72 + 8, v72[11]);
    v50 = *MEMORY[0x277D5BB48];
    v51 = *(v77 + 104);
    v67 = v21;
    v51(v21, v50, v78);
    sub_2688F1FA4(v38, v36, &unk_2802A56E0, &unk_268B3CDF0);
    v66 = v30;

    v52 = sub_268B350F4();
    v76 = *(v52 - 8);
    v53 = v68;
    (*(v76 + 32))(v68, v36, v52);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
    v54 = sub_268B34B94();
    v55 = v70;
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v54);
    v56 = *v49;
    v57 = v69;
    sub_2688F1FA4(v53, v69, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v57, 1, v52) == 1)
    {
      sub_2688C058C(v57, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v76 + 8))(v57, v52);
    }

    v58 = v67;
    sub_2688E36A0();

    sub_2688C058C(v55, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v53, &unk_2802A57B0, &unk_268B3CE00);
    (*(v77 + 8))(v58, v78);
    v59 = v48[16];
    v60 = v48[17];
    __swift_project_boxed_opaque_existential_1(v48 + 13, v59);
    v61 = v71;
    sub_2688F1FA4(v38, v71, &unk_2802A56E0, &unk_268B3CDF0);
    v62 = *(v61 + *(v66 + 48));
    v63 = sub_268B35044();
    v64 = v75;
    (*(*(v63 - 8) + 16))(v75, v74, v63);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v63);
    (*(v60 + 16))(v61, v62, v64, v80, v81, v59, v60);

    sub_2688C058C(v64, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v38, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v76 + 8))(v61, v52);
  }
}

void sub_268ACFDD4()
{
  type metadata accessor for SkipContentConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268ACFE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268ACFF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SkipContentConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268ACFFB0(uint64_t a1)
{
  result = sub_268ACFFD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268ACFFD8()
{
  result = qword_2802A88A0;
  if (!qword_2802A88A0)
  {
    type metadata accessor for SkipContentConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A88A0);
  }

  return result;
}

uint64_t sub_268AD002C()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  v9 = *(v0 + 40);

  v10 = *(v0 + 48);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_268AD00FC(uint64_t a1)
{
  v3 = *(sub_268B35044() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_268ACF548(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_268AD0184()
{
  v9[0] = sub_268B37F44();
  v0 = *(v9[0] - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v9[0]);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37F34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268B37B14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2688EA03C(0, &qword_2802A7320, 0x277D85C78);
  sub_268B37AD4();
  v9[1] = MEMORY[0x277D84F90];
  sub_268A0E800(&unk_2802A5890, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v9[0]);
  result = sub_268B37F74();
  qword_2802A88A8 = result;
  return result;
}

uint64_t sub_268AD03EC()
{
  sub_268B34B04();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_268B34B14();
  return __swift_destroy_boxed_opaque_existential_0Tm(v1);
}

void sub_268AD0450()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37AB4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v26 = OUTLINED_FUNCTION_10_27();
  v12 = OUTLINED_FUNCTION_1(v26);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_30();
  if (qword_2802A50B8 != -1)
  {
    OUTLINED_FUNCTION_4_42();
  }

  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = v3;
  v15[4] = v1;
  OUTLINED_FUNCTION_0_52(v15);
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v27[2] = v16;
  v27[3] = &block_descriptor_42;
  v17 = _Block_copy(v27);

  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  OUTLINED_FUNCTION_7_34();
  sub_268B38124();
  v20 = OUTLINED_FUNCTION_9_28();
  MEMORY[0x26D625950](v20);
  _Block_release(v17);
  v21 = *(v9 + 8);
  v22 = OUTLINED_FUNCTION_0_1();
  v23(v22);
  v24 = OUTLINED_FUNCTION_14_24();
  v25(v24);

  OUTLINED_FUNCTION_23();
}

void sub_268AD0694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268B37BC4();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_268AD3274;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_268AD0774;
  v7[3] = &block_descriptor_48;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

id sub_268AD0774(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2688EA03C(0, &qword_2802A6258, 0x277D82BB8);
    v5 = sub_268B37B54();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_268AD0810()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v4 = sub_268B37AB4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v24 = OUTLINED_FUNCTION_10_27();
  v10 = OUTLINED_FUNCTION_1(v24);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_30();
  if (qword_2802A50B8 != -1)
  {
    OUTLINED_FUNCTION_4_42();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v1;
  OUTLINED_FUNCTION_0_52(v13);
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v25[2] = v14;
  v25[3] = &block_descriptor_36;
  v15 = _Block_copy(v25);

  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  OUTLINED_FUNCTION_7_34();
  sub_268B38124();
  v18 = OUTLINED_FUNCTION_9_28();
  MEMORY[0x26D625950](v18);
  _Block_release(v15);
  v19 = *(v7 + 8);
  v20 = OUTLINED_FUNCTION_0_1();
  v21(v20);
  v22 = OUTLINED_FUNCTION_14_24();
  v23(v22);

  OUTLINED_FUNCTION_23();
}

void sub_268AD0A44(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedAnalytics];
  if (v4)
  {
    v5 = v4;
    sub_268AD3170(a1, a2, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_268AD0AC0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37AB4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v23 = OUTLINED_FUNCTION_10_27();
  v8 = OUTLINED_FUNCTION_1(v23);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_30();
  if (qword_2802A50B8 != -1)
  {
    OUTLINED_FUNCTION_4_42();
  }

  OUTLINED_FUNCTION_168_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  OUTLINED_FUNCTION_0_52(v11);
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v24[2] = v12;
  v24[3] = &block_descriptor_30_0;
  v13 = _Block_copy(v24);
  v14 = v1;
  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  OUTLINED_FUNCTION_7_34();
  sub_268B38124();
  v17 = OUTLINED_FUNCTION_9_28();
  MEMORY[0x26D625950](v17);
  _Block_release(v13);
  v18 = *(v5 + 8);
  v19 = OUTLINED_FUNCTION_0_1();
  v20(v19);
  v21 = OUTLINED_FUNCTION_14_24();
  v22(v21);

  OUTLINED_FUNCTION_23();
}

void sub_268AD0CE8(uint64_t a1)
{
  v2 = [objc_opt_self() sharedLoggingService];
  [v2 logToCoreAnalyticsCrossDeviceRequestEvent_];
}

void sub_268AD0D58()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v30 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37AB4();
  v11 = OUTLINED_FUNCTION_1(v10);
  v32 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v31 = OUTLINED_FUNCTION_10_27();
  v15 = OUTLINED_FUNCTION_1(v31);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_30();
  if (qword_2802A50B8 != -1)
  {
    OUTLINED_FUNCTION_4_42();
  }

  OUTLINED_FUNCTION_168_0();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v30;
  v21[4] = v2;
  v21[5] = v9;
  v21[6] = v7;
  v21[7] = v5;
  OUTLINED_FUNCTION_0_52(v21);
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v33[2] = v22;
  v33[3] = &block_descriptor_24;
  v23 = _Block_copy(v33);

  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  OUTLINED_FUNCTION_13_22();
  v26 = OUTLINED_FUNCTION_9_28();
  MEMORY[0x26D625950](v26);
  _Block_release(v23);
  v27 = *(v32 + 8);
  v28 = OUTLINED_FUNCTION_0_1();
  v29(v28);
  (*(v17 + 8))(v0, v31);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AD0FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v61 = a4;
  v62 = a5;
  v69 = a2;
  v70 = a3;
  v6 = sub_268B37954();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88B0, &qword_268B502A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v60 - v11;
  v12 = sub_268B379D4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_268B379E4();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v16);
  v72 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802A6EF0, &unk_268B502B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v60 - v21;
  v23 = sub_268B34674();
  v71 = *(v23 - 8);
  v24 = *(v71 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v60 - v28;
  v30 = sub_268B37A54();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v60 - v36;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    sub_268B34624();
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
    {
      sub_2688EF38C(v22, qword_2802A6EF0, &unk_268B502B0);
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v40 = __swift_project_value_buffer(v30, qword_2802CDA10);
      (*(v31 + 16))(v35, v40, v30);
      v41 = sub_268B37A34();
      v42 = sub_268B37EE4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2688BB000, v41, v42, "AnalyticsServiceLogger.logSELFCrossDeviceCommandStartedEvent expects a valid requestId. Returning.", v43, 2u);
        MEMORY[0x26D6266E0](v43, -1, -1);
      }

      return (*(v31 + 8))(v35, v30);
    }

    else
    {
      v49 = v71;
      (*(v71 + 32))(v29, v22, v23);
      (*(v49 + 16))(v27, v29, v23);
      sub_268AD28C4(v61, v62, v15);
      v50 = sub_268B379B4();
      __swift_storeEnumTagSinglePayload(v60, 1, 1, v50);
      v51 = v72;
      sub_268B379A4();
      sub_26890C900(v39 + 16, v73);
      v70 = v73[4];
      __swift_project_boxed_opaque_existential_1(v73, v73[3]);
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88D0, &qword_268B502D8) + 64);
      v54 = v65;
      v53 = v66;
      *v65 = 0;
      *(v54 + 1) = v53;
      v69 = v39;
      v55 = v63;
      v56 = v51;
      v57 = v64;
      (*(v63 + 16))(&v54[v52], v56, v64);
      v59 = v67;
      v58 = v68;
      (*(v67 + 104))(v54, *MEMORY[0x277D61ED0], v68);

      sub_268B37994();

      (*(v59 + 8))(v54, v58);
      (*(v55 + 8))(v72, v57);
      (*(v71 + 8))(v29, v23);
      return __swift_destroy_boxed_opaque_existential_0Tm(v73);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v30, qword_2802CDA10);
    (*(v31 + 16))(v37, v45, v30);
    v46 = sub_268B37A34();
    v47 = sub_268B37EE4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2688BB000, v46, v47, "Couldn't find strong self. Exiting", v48, 2u);
      MEMORY[0x26D6266E0](v48, -1, -1);
    }

    return (*(v31 + 8))(v37, v30);
  }
}

void sub_268AD1708()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v31 = v9;
  v10 = sub_268B37AB4();
  v11 = OUTLINED_FUNCTION_1(v10);
  v33 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v32 = OUTLINED_FUNCTION_10_27();
  v15 = OUTLINED_FUNCTION_1(v32);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_30();
  if (qword_2802A50B8 != -1)
  {
    OUTLINED_FUNCTION_4_42();
  }

  OUTLINED_FUNCTION_168_0();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v6;
  v21[4] = v4;
  v21[5] = v31;
  v21[6] = v8;
  v21[7] = v2;
  OUTLINED_FUNCTION_0_52(v21);
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v34[2] = v22;
  v34[3] = &block_descriptor_13;
  v23 = _Block_copy(v34);

  v24 = v2;
  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  OUTLINED_FUNCTION_13_22();
  v27 = OUTLINED_FUNCTION_9_28();
  MEMORY[0x26D625950](v27);
  _Block_release(v23);
  v28 = *(v33 + 8);
  v29 = OUTLINED_FUNCTION_0_1();
  v30(v29);
  (*(v17 + 8))(v0, v32);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AD19A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), void (*a5)(void, void, void), uint64_t a6)
{
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v93 = a2;
  v94 = a3;
  v92 = sub_268B37954();
  v104 = *(v92 - 8);
  v6 = *(v104 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_268B37944();
  v91 = *(v103 - 8);
  v8 = *(v91 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_268B379B4();
  v84 = *(v86 - 8);
  v10 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88B0, &qword_268B502A8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v85 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v83 - v16;
  v105 = sub_268B379E4();
  v101 = *(v105 - 8);
  v18 = *(v101 + 64);
  MEMORY[0x28223BE20](v105);
  v98 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_268B379D4();
  v99 = *(v20 - 8);
  v100 = v20;
  v21 = *(v99 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v97 = &v83 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802A6EF0, &unk_268B502B0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v83 - v28;
  v30 = sub_268B34674();
  v96 = *(v30 - 8);
  v31 = *(v96 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v95 = &v83 - v35;
  v36 = sub_268B37A54();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v83 - v42;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    sub_268B34624();
    if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
    {
      sub_2688EF38C(v29, qword_2802A6EF0, &unk_268B502B0);
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v46 = __swift_project_value_buffer(v36, qword_2802CDA10);
      (*(v37 + 16))(v41, v46, v36);
      v47 = sub_268B37A34();
      v48 = sub_268B37EE4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2688BB000, v47, v48, "AnalyticsServiceLogger.logSELFCrossDeviceCommandEndedEvent expects a valid requestId. Returning.", v49, 2u);
        MEMORY[0x26D6266E0](v49, -1, -1);
      }

      return (*(v37 + 8))(v41, v36);
    }

    else
    {
      v94 = v45;
      v56 = v95;
      v55 = v96;
      (*(v96 + 32))(v95, v29, v30);
      v57 = v97;
      v58 = v87;
      v59 = v88;
      sub_268AD28C4(v87, v88, v97);
      v60 = *(v55 + 16);
      v93 = v30;
      v60(v34, v56, v30);
      (*(v99 + 16))(v24, v57, v100);
      v61 = v86;
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v86);
      v62 = v98;
      sub_268B379A4();
      v63 = v85;
      sub_268AD2D20(v58, v59, v85);
      if (__swift_getEnumTagSinglePayload(v63, 1, v61) == 1)
      {
        sub_2688EF38C(v63, &qword_2802A88B0, &qword_268B502A8);
      }

      else
      {
        v64 = v84;
        v65 = v83;
        (*(v84 + 32))(v83, v63, v61);
        (*(v64 + 16))(v17, v65, v61);
        __swift_storeEnumTagSinglePayload(v17, 0, 1, v61);
        sub_268B379C4();
        (*(v64 + 8))(v65, v61);
      }

      v66 = v102;
      v67 = v103;
      v68 = v91;
      v69 = v101;
      v70 = MEMORY[0x277D61EB8];
      v71 = v89;
      if (v89)
      {
        v70 = MEMORY[0x277D61EC0];
      }

      (*(v91 + 104))(v102, *v70, v103);
      sub_26890C900(v94 + 16, v106);
      v91 = v108;
      __swift_project_boxed_opaque_existential_1(v106, v107);
      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88C0, &qword_268B502C0) + 48);
      v73 = v90;
      v87 = *(v69 + 16);
      v87(v90, v62, v105);
      (*(v68 + 16))(&v73[v72], v66, v67);
      v74 = *MEMORY[0x277D61EB0];
      v75 = v104;
      v76 = v92;
      v88 = *(v104 + 104);
      v88(v73, v74, v92);
      sub_268B37994();
      v77 = *(v75 + 8);
      v77(v73, v76);
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      if (v71)
      {
        sub_26890C900(v94 + 16, v106);
        v91 = v108;
        __swift_project_boxed_opaque_existential_1(v106, v107);
        v104 = v75 + 8;
        v78 = v76;
        v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88C8, &unk_268B502C8) + 48);
        v80 = v98;
        v87(v73, v98, v105);
        v81 = *MEMORY[0x277D61EA8];
        v82 = sub_268B37934();
        (*(*(v82 - 8) + 104))(&v73[v79], v81, v82);
        v88(v73, *MEMORY[0x277D61EC8], v78);
        sub_268B37994();

        v77(v73, v78);
        (*(v68 + 8))(v102, v103);
        (*(v101 + 8))(v80, v105);
        (*(v99 + 8))(v97, v100);
        (*(v96 + 8))(v95, v93);
        return __swift_destroy_boxed_opaque_existential_0Tm(v106);
      }

      else
      {

        (*(v68 + 8))(v102, v103);
        (*(v101 + 8))(v98, v105);
        (*(v99 + 8))(v97, v100);
        return (*(v96 + 8))(v95, v93);
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v36, qword_2802CDA10);
    (*(v37 + 16))(v43, v51, v36);
    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "Couldn't find strong self. Exiting", v54, 2u);
      MEMORY[0x26D6266E0](v54, -1, -1);
    }

    return (*(v37 + 8))(v43, v36);
  }
}

uint64_t sub_268AD25A0()
{
  sub_2688EA03C(0, &qword_2802A88B8, 0x277CEF390);
  v0 = sub_268B37CE4();
  v1 = sub_268B37BC4();
  v2 = AFAnalyticsContextCreateForCrossDeviceCommandHandledWithServiceDeviceContexts();

  if (!v2)
  {
    return 0;
  }

  sub_2688EA03C(0, &qword_2802A6258, 0x277D82BB8);
  v3 = sub_268B37B64();

  return v3;
}

id sub_268AD2674(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802A6EF0, &unk_268B502B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  if (a1[2])
  {
    v16 = a1[4];
    v15 = a1[5];
  }

  else
  {
    v16 = 0;
    v15 = 0xE000000000000000;
  }

  v17 = objc_allocWithZone(MEMORY[0x277CEF230]);
  v18 = sub_268AD2E94(v16, v15);
  if (v18)
  {
    if (sub_2688EFD0C(a2))
    {
      sub_2688EFD10(0, (a2 & 0xC000000000000001) == 0, a2);
      if ((a2 & 0xC000000000000001) != 0)
      {
        v30 = v18;
        v21 = MEMORY[0x26D625BD0](0, a2);
      }

      else
      {
        v19 = *(a2 + 32);
        v20 = v18;
        v21 = v19;
      }

      v22 = v21;
      v23 = [v21 identifier];

      if (v23)
      {
        sub_268B34654();

        v24 = sub_268B34674();
        v25 = 0;
      }

      else
      {
        v24 = sub_268B34674();
        v25 = 1;
      }

      __swift_storeEnumTagSinglePayload(v12, v25, 1, v24);
      sub_268AD2EF8(v12, v14);
    }

    else
    {
      v26 = v18;
      sub_268B34624();
    }

    v27 = sub_268B34674();
    v28 = 0;
    if (__swift_getEnumTagSinglePayload(v14, 1, v27) != 1)
    {
      v28 = sub_268B34644();
      (*(*(v27 - 8) + 8))(v14, v27);
    }

    sub_268AD2F68(v28, a3, a4, v18);
  }

  return v18;
}

uint64_t sub_268AD28C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *MEMORY[0x277D61FB8];
  v7 = sub_268B379D4();
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v31 = *(v10 + 104);
  v31(a3, v6, v7);
  v11 = a1 == 0x64654D6573756170 && a2 == 0xEA00000000006169;
  if (v11 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F60];
LABEL_7:
    (*(v9 + 8))(a3, v7);
    v13 = *v12;

    return (v31)(a3, v13, v7);
  }

  v15 = a1 == 0x654D656D75736572 && a2 == 0xEB00000000616964;
  if (v15 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F68];
    goto LABEL_7;
  }

  v16 = a1 == 0x746E6F4370696B73 && a2 == 0xEB00000000746E65;
  if (v16 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F88];
    goto LABEL_7;
  }

  v17 = a1 == 0x656D695470696B73 && a2 == 0xE800000000000000;
  if (v17 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F78];
    goto LABEL_7;
  }

  v18 = a1 == 0x656D69546B656573 && a2 == 0xE800000000000000;
  if (v18 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F70];
    goto LABEL_7;
  }

  v19 = a1 == 0x6165706552746573 && a2 == 0xEE00657461745374;
  if (v19 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F90];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_31();
  v21 = a1 == 0xD000000000000010 && v20 == a2;
  if (v21 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61FB0];
    goto LABEL_7;
  }

  v22 = a1 == 0x6666756853746573 && a2 == 0xEF6574617453656CLL;
  if (v22 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61FA0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_31();
  v24 = a1 == 0xD000000000000010 && v23 == a2;
  if (v24 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61FA8];
    goto LABEL_7;
  }

  v25 = a1 == 0x5464694474616877 && a2 == 0xEE00796153796568;
  if (v25 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F98];
    goto LABEL_7;
  }

  if (a1 == 0x6F74536B63697551 && a2 == 0xE900000000000070)
  {
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_152_0();
  if (sub_268B38444())
  {
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_11_31();
  v28 = a1 == 0xD000000000000019 && v27 == a2;
  if (v28 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0) || ((OUTLINED_FUNCTION_11_31(), a1 == 0xD00000000000001ALL) ? (v30 = v29 == a2) : (v30 = 0), v30 || (OUTLINED_FUNCTION_152_0(), result = sub_268B38444(), (result & 1) != 0)))
  {
LABEL_79:
    v12 = MEMORY[0x277D61F58];
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_268AD2D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_268B379B4();
  __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  OUTLINED_FUNCTION_11_31();
  v8 = a1 == 0xD000000000000019 && v7 == a2;
  if (v8 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v9 = MEMORY[0x277D61F48];
LABEL_7:
    sub_2688EF38C(a3, &qword_2802A88B0, &qword_268B502A8);
    (*(*(v6 - 8) + 104))(a3, *v9, v6);

    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  OUTLINED_FUNCTION_11_31();
  v12 = a1 == 0xD00000000000001ALL && v11 == a2;
  if (v12 || (OUTLINED_FUNCTION_152_0(), result = sub_268B38444(), (result & 1) != 0))
  {
    v9 = MEMORY[0x277D61F40];
    goto LABEL_7;
  }

  return result;
}

id sub_268AD2E94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithNearbyDevicesLoggingID_];

  return v4;
}

uint64_t sub_268AD2EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802A6EF0, &unk_268B502B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_268AD2F68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_268B37BC4();
  [a4 addCoreAnalyticsDeviceTargetedWithContextIdentifier:a1 commandResultDescription:v6];
}

uint64_t sub_268AD2FD0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_16Tm_0(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[4];

  v5 = v1[6];

  a1(v1[7]);

  return MEMORY[0x2821FE8E8](v1, 64, 7);
}

uint64_t sub_268AD30F4()
{
  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268AD3130()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_268AD3170(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_268B37B54();
  [a3 logEventWithType:a1 context:v5];
}

uint64_t sub_268AD31F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268AD3240()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_0_52(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_27()
{

  return sub_268B37B14();
}

uint64_t OUTLINED_FUNCTION_13_22()
{

  return sub_268B38124();
}

uint64_t OUTLINED_FUNCTION_14_24()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 144);
  return result;
}

void sub_268AD33CC(uint64_t *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  v14 = sub_268B37BC4();
  v15 = [v13 BOOLForKey_];

  if (!v15)
  {

LABEL_9:
    a1[3] = &type metadata for DeviceContextProvider;
    a1[4] = &off_287951A98;
    *a1 = swift_allocObject();
    sub_268B36AE4();
    return;
  }

  if (qword_2802A5030 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_82(v2, qword_2802CDB30);
  (*(v5 + 16))(v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37EF4();
  if (OUTLINED_FUNCTION_196(v17))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_50_0(&dword_2688BB000, v18, v19, "!!!!! Simulated context is being used !!!!!");
    OUTLINED_FUNCTION_12_8();
  }

  (*(v5 + 8))(v10, v2);
  a1[3] = &type metadata for SimulatedContextProvider;
  a1[4] = &off_287954CD0;
}

uint64_t sub_268AD35F4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  if ((*(a2 + 8))(ObjectType, a2))
  {

    return a4(v15);
  }

  else
  {
    sub_26890C900(a3, v20);
    v17 = swift_allocObject();
    sub_2688E6514(v20, (v17 + 2));
    v17[7] = a1;
    v17[8] = a2;
    v17[9] = a4;
    v17[10] = a5;
    v18 = *(a7 + 8);
    v19 = a1;

    v18(sub_268AE1CA8, v17, a6, a7);
  }
}

BOOL sub_268AD3708(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_268AD3738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  while (2)
  {
    if (v2)
    {
      v4 = *v3;
      if (*v3 < 5)
      {
        switch(a1)
        {
          case 0:
            if (!v4)
            {
              return v2 != 0;
            }

            goto LABEL_14;
          case 1:
            if (v4 != 1)
            {
              goto LABEL_14;
            }

            return v2 != 0;
          case 2:
            if (v4 == 2)
            {
              return v2 != 0;
            }

            goto LABEL_14;
          case 3:
            if (v4 == 3)
            {
              return v2 != 0;
            }

            goto LABEL_14;
          case 4:
            if (v4 == 4)
            {
              return v2 != 0;
            }

LABEL_14:
            ++v3;
            --v2;
            continue;
          default:
            goto LABEL_17;
        }
      }

      v6 = *v3;
LABEL_17:
      sub_268B38474();
      __break(1u);
      JUMPOUT(0x268AD3810);
    }

    return v2 != 0;
  }
}

void sub_268AD3824()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    if (v3-- == 0)
    {
      break;
    }

    v6 = 0xE400000000000000;
    v7 = 2036427888;
    switch(*v4)
    {
      case 1:
        v6 = 0xE500000000000000;
        v7 = 0x6573756170;
        break;
      case 2:
        v6 = 0xE600000000000000;
        v7 = 0x656D75736572;
        break;
      case 3:
        v7 = 1886352499;
        break;
      case 4:
        v7 = 1885956979;
        break;
      case 5:
        v6 = 0xE800000000000000;
        v7 = 0x73756F6976657270;
        break;
      case 6:
        v7 = 1801807219;
        break;
      case 7:
        v7 = 0x77726F4670696B73;
        v8 = 6582881;
        goto LABEL_16;
      case 8:
        v7 = 0x6B63614270696B73;
        v6 = 0xEC00000064726177;
        break;
      case 9:
        v6 = 0xE600000000000000;
        v7 = 0x746165706572;
        break;
      case 0xA:
        v6 = 0xE700000000000000;
        v10 = 0x726174736572;
        goto LABEL_25;
      case 0xB:
        v6 = 0xE700000000000000;
        v7 = 0x656C6666756873;
        break;
      case 0xC:
        v7 = 0x6165705365766F6DLL;
        v8 = 7497067;
LABEL_16:
        v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 0xD:
        v6 = 0xEA00000000007265;
        v7 = 0x6B61657053646461;
        break;
      case 0xE:
        v7 = 0x705365766F6D6572;
        v6 = 0xED000072656B6165;
        break;
      case 0xF:
        v6 = 0xE600000000000000;
        v7 = 0x627265566F6ELL;
        break;
      case 0x10:
        v7 = 0xD000000000000017;
        v6 = 0x8000000268B56230;
        break;
      case 0x11:
        v6 = 0xE900000000000065;
        v7 = 0x736972616D6D7573;
        break;
      case 0x12:
        v6 = 0xE700000000000000;
        v10 = 0x736575716572;
LABEL_25:
        v7 = v10 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        break;
      case 0x13:
        v7 = 0xD000000000000016;
        v6 = 0x8000000268B56260;
        break;
      case 0x14:
        v7 = 0xD000000000000016;
        v6 = 0x8000000268B56280;
        break;
      case 0x15:
        OUTLINED_FUNCTION_16_11();
        v7 = v9 + 2309;
        v6 = 0xE800000000000000;
        break;
      case 0x16:
        v6 = 0xE800000000000000;
        v7 = 0x6573616572636564;
        break;
      case 0x17:
        v7 = 1701079400;
        break;
      default:
        break;
    }

    v11 = 0xE400000000000000;
    v12 = 2036427888;
    switch(v1)
    {
      case 1:
        v11 = 0xE500000000000000;
        v12 = 0x6573756170;
        break;
      case 2:
        v11 = 0xE600000000000000;
        v12 = 0x656D75736572;
        break;
      case 3:
        v12 = 1886352499;
        break;
      case 4:
        v12 = 1885956979;
        break;
      case 5:
        v11 = 0xE800000000000000;
        v12 = 0x73756F6976657270;
        break;
      case 6:
        v12 = 1801807219;
        break;
      case 7:
        v12 = 0x77726F4670696B73;
        v13 = 6582881;
        goto LABEL_42;
      case 8:
        v12 = 0x6B63614270696B73;
        v11 = 0xEC00000064726177;
        break;
      case 9:
        v11 = 0xE600000000000000;
        v12 = 0x746165706572;
        break;
      case 10:
        v11 = 0xE700000000000000;
        v15 = 0x726174736572;
        goto LABEL_51;
      case 11:
        v11 = 0xE700000000000000;
        v12 = 0x656C6666756873;
        break;
      case 12:
        v12 = 0x6165705365766F6DLL;
        v13 = 7497067;
LABEL_42:
        v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 13:
        v11 = 0xEA00000000007265;
        v12 = 0x6B61657053646461;
        break;
      case 14:
        v12 = 0x705365766F6D6572;
        v11 = 0xED000072656B6165;
        break;
      case 15:
        v11 = 0xE600000000000000;
        v12 = 0x627265566F6ELL;
        break;
      case 16:
        v12 = 0xD000000000000017;
        v11 = 0x8000000268B56230;
        break;
      case 17:
        v11 = 0xE900000000000065;
        v12 = 0x736972616D6D7573;
        break;
      case 18:
        v11 = 0xE700000000000000;
        v15 = 0x736575716572;
LABEL_51:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        break;
      case 19:
        v12 = 0xD000000000000016;
        v11 = 0x8000000268B56260;
        break;
      case 20:
        v12 = 0xD000000000000016;
        v11 = 0x8000000268B56280;
        break;
      case 21:
        OUTLINED_FUNCTION_16_11();
        v12 = v14 + 2309;
        v11 = 0xE800000000000000;
        break;
      case 22:
        v11 = 0xE800000000000000;
        v12 = 0x6573616572636564;
        break;
      case 23:
        v12 = 1701079400;
        break;
      default:
        break;
    }

    if (v7 == v12 && v6 == v11)
    {

      break;
    }

    v17 = OUTLINED_FUNCTION_86_6();

    ++v4;
  }

  while ((v17 & 1) == 0);
  OUTLINED_FUNCTION_23();
}

BOOL sub_268AD3DDC(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = (a3 + 40);
  while (v3)
  {
    if (*v4)
    {
      if (a2)
      {
        return v3 != 0;
      }
    }

    else if ((a2 & 1) == 0)
    {
      v5 = *(v4 - 1);
      if (v5 < 5)
      {
        switch(a1)
        {
          case 0:
            if (!v5)
            {
              return v3 != 0;
            }

            goto LABEL_7;
          case 1:
            if (v5 == 1)
            {
              return v3 != 0;
            }

            goto LABEL_7;
          case 2:
            if (v5 == 2)
            {
              return v3 != 0;
            }

            goto LABEL_7;
          case 3:
            if (v5 == 3)
            {
              return v3 != 0;
            }

            goto LABEL_7;
          case 4:
            if (v5 == 4)
            {
              return v3 != 0;
            }

            goto LABEL_7;
          default:
            goto LABEL_21;
        }
      }

      v7 = *(v4 - 1);
LABEL_21:
      sub_268B38474();
      __break(1u);
      JUMPOUT(0x268AD3EC8);
    }

LABEL_7:
    v4 += 16;
    --v3;
  }

  return v3 != 0;
}

BOOL sub_268AD3EDC(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE400000000000000;
    v8 = 1684104562;
    switch(*v4)
    {
      case 1:
        v7 = 0xE300000000000000;
        v8 = 7628147;
        break;
      case 2:
        v8 = 0x6573616572636E69;
        v7 = 0xE800000000000000;
        break;
      case 3:
        v7 = 0xE800000000000000;
        v8 = 0x6573616572636564;
        break;
      default:
        break;
    }

    v9 = 0xE400000000000000;
    v10 = 1684104562;
    switch(a1)
    {
      case 1:
        v9 = 0xE300000000000000;
        v10 = 7628147;
        break;
      case 2:
        v10 = 0x6573616572636E69;
        v9 = 0xE800000000000000;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x6573616572636564;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = OUTLINED_FUNCTION_86_6();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_268AD404C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_268AD4078(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v33 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v33 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v34 = *i;
    v5 = *(i - 1);
    v6 = sub_268988580(v5);
    if (!v7)
    {
      v6 = sub_268988568(v5);
    }

    v8 = v6;
    v9 = v7;
    v11 = sub_268A759D0();
    v12 = v3[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_21;
    }

    v15 = v10;
    if (v3[3] < v14)
    {
      sub_268ADF148(v14);
      v3 = v35;
      v16 = sub_268A759D0();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_23;
      }

      v11 = v16;
    }

    if (v15)
    {

      v18 = v3[7];
      v19 = *(v18 + 8 * v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v18 + 8 * v11) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = *(v19 + 16);
        sub_268987D58();
        v19 = v29;
        *(v18 + 8 * v11) = v29;
      }

      v21 = *(v19 + 16);
      if (v21 >= *(v19 + 24) >> 1)
      {
        sub_268987D58();
        v19 = v30;
        *(v18 + 8 * v11) = v30;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v5;
      *(v22 + 40) = v34;
      v1 = a1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59F0, &qword_268B3C030);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_268B3BBC0;
      *(v23 + 32) = v5;
      *(v23 + 40) = v34;
      v3[(v11 >> 6) + 8] |= 1 << v11;
      v24 = (v3[6] + 16 * v11);
      *v24 = v8;
      v24[1] = v9;
      *(v3[7] + 8 * v11) = v23;
      v25 = v3[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_22;
      }

      v3[2] = v27;
    }

    ++v2;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

uint64_t sub_268AD42E4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F98];
  v3 = sub_2688EFD0C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 context];
    if (v7)
    {
      v8 = sub_268AE10A4(v7);
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v12 = sub_268A759D0();
    v13 = v2[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_25;
    }

    v16 = v11;
    if (v2[3] < v15)
    {
      sub_268ADF148(v15);
      v2 = v27;
      v17 = sub_268A759D0();
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_27;
      }

      v12 = v17;
    }

    if (v16)
    {

      v20 = (v2[7] + 8 * v12);
      MEMORY[0x26D6256C0](v19);
      if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_268B3BBA0;
      *(v21 + 32) = v6;
      v2[(v12 >> 6) + 8] |= 1 << v12;
      v22 = (v2[6] + 16 * v12);
      *v22 = v8;
      v22[1] = v10;
      *(v2[7] + 8 * v12) = v21;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      v2[2] = v25;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

uint64_t sub_268AD455C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v26 = MEMORY[0x277D84F98];
  v3 = sub_2688EFD0C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_26898858C(v5);
    v9 = v8;
    v11 = sub_268A759D0();
    v12 = v2[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v15 = v10;
    if (v2[3] < v14)
    {
      sub_268ADF148(v14);
      v2 = v26;
      v16 = sub_268A759D0();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

      v11 = v16;
    }

    if (v15)
    {

      v19 = (v2[7] + 8 * v11);
      MEMORY[0x26D6256C0](v18);
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_268B3BBA0;
      *(v20 + 32) = v6;
      v2[(v11 >> 6) + 8] |= 1 << v11;
      v21 = (v2[6] + 16 * v11);
      *v21 = v7;
      v21[1] = v9;
      *(v2[7] + 8 * v11) = v20;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v2[2] = v24;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

uint64_t sub_268AD47A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_2689880CC(*(a1 + 16), 0);
  sub_268AE1274();
  v4 = v3;

  sub_2689475B8();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  v6 = v2;
  sub_268ADF3A4(&v6);
  return v6;
}

void sub_268AD488C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v54 - v16);
  if (qword_2802A4F30 != -1)
  {
LABEL_27:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v6, qword_2802CDA10);
  v18 = *(v9 + 16);
  v57 = v19;
  v58 = v18;
  (v18)(v17);

  v20 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_13();
  v22 = os_log_type_enabled(v20, v21);
  v61 = v6;
  v62 = v9;
  v55 = v15;
  v56 = v1;
  v59 = v9 + 16;
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_238();
    v1 = OUTLINED_FUNCTION_173_0();
    v63 = v1;
    *v23 = 134218242;
    *(v23 + 4) = sub_2688EFD0C(v3);

    *(v23 + 12) = 2080;
    v24 = NowPlayingState.description.getter(v5);
    v26 = sub_26892CDB8(v24, v25, &v63);

    *(v23 + 14) = v26;
    _os_log_impl(&dword_2688BB000, v20, v0, "Filtering %ld context(s) by playstate: %s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_12();

    v27 = *(v62 + 8);
  }

  else
  {

    v30 = *(v9 + 8);
  }

  v28 = OUTLINED_FUNCTION_103();
  v60 = v29;
  (v29)(v28);
  v63 = MEMORY[0x277D84F90];
  v31 = sub_2688EFD0C(v3);
  v32 = 0;
  v9 = v3 & 0xC000000000000001;
  v15 = (v3 & 0xFFFFFFFFFFFFFF8);
  v6 = &unk_279C42000;
  while (v31 != v32)
  {
    if (v9)
    {
      v33 = MEMORY[0x26D625BD0](v32, v3);
    }

    else
    {
      if (v32 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v33 = *(v3 + 8 * v32 + 32);
    }

    v0 = v33;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if ([v33 nowPlayingState] == v5)
    {
      v17 = &v63;
      sub_268B38214();
      v1 = *(v63 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v32;
  }

  v34 = v63;
  v35 = sub_2688EFD0C(v63);
  if (v35 != sub_2688EFD0C(v3))
  {
    v36 = v56;
    v37 = v61;
    v58(v56, v57, v61);

    v38 = sub_268B37A34();
    v44 = sub_268B37EC4();
    if (!OUTLINED_FUNCTION_2_19(v44))
    {

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_172_0();
    v63 = OUTLINED_FUNCTION_118_0();
    *v0 = 136315138;
    v45 = type metadata accessor for DeviceContext();
    MEMORY[0x26D6256F0](v34, v45);

    v46 = OUTLINED_FUNCTION_97();
    v49 = sub_26892CDB8(v46, v47, v48);

    *(v0 + 1) = v49;
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_204(v50, v51, v52, v53);
    OUTLINED_FUNCTION_36_13();
    goto LABEL_21;
  }

  v36 = v55;
  v37 = v61;
  v58(v55, v57, v61);
  v38 = sub_268B37A34();
  v39 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v39))
  {
    OUTLINED_FUNCTION_172_0();
    v40 = OUTLINED_FUNCTION_118_0();
    v63 = v40;
    *v0 = 136315138;
    v41 = NowPlayingState.description.getter(v5);
    v43 = sub_26892CDB8(v41, v42, &v63);

    *(v0 + 1) = v43;
    OUTLINED_FUNCTION_204(&dword_2688BB000, v38, v39, "All contexts matched playstate: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_21:
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

LABEL_24:
  v60(v36, v37);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AD4D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v82 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = (&v71 - v15);
  if (qword_2802A4F30 != -1)
  {
LABEL_33:
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v18 = v5[2];
  v79 = v17;
  v80 = v18;
  v81 = v5 + 2;
  (v18)(v16);

  v19 = sub_268B37A34();
  v20 = sub_268B37F04();
  v21 = os_log_type_enabled(v19, v20);
  v76 = a1;
  v78 = a2;
  v72 = v12;
  v73 = v9;
  if (v21)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v87 = v22;
    *v12 = 134218242;
    *(v12 + 4) = sub_2688EFD0C(a2);

    *(v12 + 6) = 2080;
    v23 = NowPlayingState.description.getter(v76);
    v25 = sub_26892CDB8(v23, v24, &v87);
    a2 = v78;

    *(v12 + 14) = v25;
    _os_log_impl(&dword_2688BB000, v19, v20, "Filtering %ld context(s) by playstate: %s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v26 = v22;
    a1 = v76;
    MEMORY[0x26D6266E0](v26, -1, -1);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  else
  {
  }

  v28 = v5[1];
  ++v5;
  v27 = v28;
  v28(v16, v4);
  v87 = MEMORY[0x277D84F90];
  v29 = sub_2688EFD0C(a2);
  v30 = 0;
  v84 = a2 & 0xC000000000000001;
  v85 = v29;
  v83 = a2 & 0xFFFFFFFFFFFFFF8;
  *&v31 = 136315138;
  v75 = v31;
  v9 = v82;
  v74 = v5;
  while (v85 != v30)
  {
    if (v84)
    {
      v32 = MEMORY[0x26D625BD0](v30, a2);
    }

    else
    {
      if (v30 >= *(v83 + 16))
      {
        goto LABEL_32;
      }

      v32 = *(a2 + 8 * v30 + 32);
    }

    v33 = v32;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v34 = [v32 context];
    if (v34)
    {
      v16 = v34;
      v12 = [v34 nowPlayingState];

      if (v12 == a1)
      {
        v16 = &v87;
        sub_268B38214();
        v35 = v87[2];
        sub_268B38244();
        v9 = v82;
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }
    }

    else
    {
      v80(v9, v79, v4);
      v36 = v33;
      v16 = sub_268B37A34();
      v37 = sub_268B37EE4();
      if (os_log_type_enabled(v16, v37))
      {
        v12 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v86 = v77;
        *v12 = v75;
        v38 = [v36 description];
        v39 = v27;
        v40 = v4;
        v41 = sub_268B37BF4();
        v43 = v42;

        v44 = v41;
        v4 = v40;
        v27 = v39;
        v45 = sub_26892CDB8(v44, v43, &v86);
        v5 = v74;

        *(v12 + 4) = v45;
        v9 = v82;
        _os_log_impl(&dword_2688BB000, v16, v37, "Excluding item %s with no context", v12, 0xCu);
        v46 = v77;
        __swift_destroy_boxed_opaque_existential_0Tm(v77);
        v47 = v46;
        a1 = v76;
        MEMORY[0x26D6266E0](v47, -1, -1);
        MEMORY[0x26D6266E0](v12, -1, -1);
      }

      else
      {
      }

      v27(v9, v4);

      a2 = v78;
    }

    ++v30;
  }

  v85 = v27;
  v48 = v87;
  v49 = sub_2688EFD0C(v87);
  if (v49 != sub_2688EFD0C(a2))
  {
    v50 = v73;
    v80(v73, v79, v4);

    v51 = sub_268B37A34();
    v60 = sub_268B37EC4();
    if (os_log_type_enabled(v51, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v87 = v62;
      *v61 = v75;
      v63 = type metadata accessor for Device();
      v64 = MEMORY[0x26D6256F0](v48, v63);
      v57 = v4;
      v66 = v65;

      v67 = sub_26892CDB8(v64, v66, &v87);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_2688BB000, v51, v60, "Contexts matching playState: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x26D6266E0](v62, -1, -1);
      v59 = v61;
      goto LABEL_26;
    }

LABEL_29:
    v68 = v50;
    v69 = v4;
    goto LABEL_30;
  }

  v50 = v72;
  v80(v72, v79, v4);
  v51 = sub_268B37A34();
  v52 = sub_268B37F04();
  if (!os_log_type_enabled(v51, v52))
  {

    goto LABEL_29;
  }

  v53 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v87 = v54;
  *v53 = v75;
  v55 = NowPlayingState.description.getter(a1);
  v57 = v4;
  v58 = sub_26892CDB8(v55, v56, &v87);

  *(v53 + 4) = v58;
  _os_log_impl(&dword_2688BB000, v51, v52, "All contexts matched playstate: %s", v53, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  MEMORY[0x26D6266E0](v54, -1, -1);
  v59 = v53;
LABEL_26:
  MEMORY[0x26D6266E0](v59, -1, -1);

  v68 = v50;
  v69 = v57;
LABEL_30:
  v85(v68, v69);
  return v48;
}

void sub_268AD550C()
{
  OUTLINED_FUNCTION_26();
  v84 = v0;
  v88 = v1;
  v89 = v2;
  v92 = v3;
  v5 = v4;
  v96 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v81 - v9;
  v11 = sub_268B34614();
  v12 = OUTLINED_FUNCTION_1(v11);
  v94 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v93 = v17 - v16;
  OUTLINED_FUNCTION_9();
  v18 = sub_268B37A54();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_20_0();
  v85 = v24 - v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  v87 = v27;
  OUTLINED_FUNCTION_8();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v81 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v81 - v32;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v18, qword_2802CDA10);
  v34 = *(v21 + 16);
  v90 = v35;
  v91 = v34;
  (v34)(v33);

  v36 = sub_268B37A34();
  v37 = sub_268B37F04();
  v38 = os_log_type_enabled(v36, v37);
  v95 = v11;
  if (v38)
  {
    v82 = v31;
    v83 = v21;
    OUTLINED_FUNCTION_238();
    v39 = OUTLINED_FUNCTION_53_1();
    v97[0] = v39;
    *v31 = 134218242;
    *(v31 + 4) = v92(v5);

    *(v31 + 6) = 2080;
    v86 = v18;
    if (v96)
    {
      if (v96 == 1)
      {
        v40 = 0x646E6957676E6F4CLL;
      }

      else
      {
        v40 = 1701736270;
      }

      if (v96 == 1)
      {
        v11 = 0xEA0000000000776FLL;
      }

      else
      {
        v11 = 0xE400000000000000;
      }
    }

    else
    {
      v40 = OUTLINED_FUNCTION_33_18();
    }

    v42 = sub_26892CDB8(v40, v11, v97);

    *(v31 + 14) = v42;
    _os_log_impl(&dword_2688BB000, v36, v37, "Filtering %ld by window: %s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_20_2();

    v41 = *(v83 + 8);
    v18 = v86;
    v41(v33, v86);
    v11 = v95;
    v31 = v82;
  }

  else
  {

    v41 = *(v21 + 8);
    v41(v33, v18);
  }

  sub_268A4CF10(v96, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v47 = v93;
    v48 = (*(v94 + 32))(v93, v10, v11);
    MEMORY[0x28223BE20](v48);
    *(&v81 - 2) = v47;

    v49 = v89(v88, &v81 - 4, v5);
    v50 = v92;
    v51 = (v92)();
    if (v51 == v50(v5))
    {
      v52 = v87;
      v91(v87, v90, v18);
      v53 = sub_268B37A34();
      v54 = sub_268B37F04();
      if (OUTLINED_FUNCTION_2_19(v54))
      {
        v55 = v18;
        v56 = OUTLINED_FUNCTION_172_0();
        v57 = OUTLINED_FUNCTION_173_0();
        v97[0] = v57;
        *v56 = 136315138;
        if (v96)
        {
          if (v96 == 1)
          {
            v58 = 0x646E6957676E6F4CLL;
          }

          else
          {
            v58 = 1701736270;
          }

          if (v96 == 1)
          {
            v52 = 0xEA0000000000776FLL;
          }

          else
          {
            v52 = 0xE400000000000000;
          }
        }

        else
        {
          v58 = OUTLINED_FUNCTION_33_18();
        }

        v76 = sub_26892CDB8(v58, v52, v97);

        *(v56 + 4) = v76;
        OUTLINED_FUNCTION_44_9();
        OUTLINED_FUNCTION_60_5(v77, v78, v79, v80);
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_6();

        v74 = v87;
        v75 = v55;
        goto LABEL_34;
      }
    }

    else
    {
      v52 = v85;
      v91(v85, v90, v18);

      v59 = sub_268B37A34();
      v60 = sub_268B37EC4();
      if (OUTLINED_FUNCTION_2_19(v60))
      {
        v61 = OUTLINED_FUNCTION_172_0();
        v86 = v18;
        v62 = v61;
        v63 = v52;
        v64 = OUTLINED_FUNCTION_173_0();
        v97[0] = v64;
        *v62 = 136315138;
        v65 = v84(0);
        MEMORY[0x26D6256F0](v49, v65);

        v66 = OUTLINED_FUNCTION_97();
        v69 = sub_26892CDB8(v66, v67, v68);

        *(v62 + 4) = v69;
        OUTLINED_FUNCTION_44_9();
        OUTLINED_FUNCTION_60_5(v70, v71, v72, v73);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_6();

        v74 = v63;
        v75 = v86;
LABEL_34:
        v41(v74, v75);
        (*(v94 + 8))(v93, v95);
        goto LABEL_35;
      }
    }

    v74 = v52;
    v75 = v18;
    goto LABEL_34;
  }

  sub_2688EF38C(v10, &unk_2802A7350, qword_268B3FF10);
  v91(v31, v90, v18);
  v43 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v43, v44))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_78_0(&dword_2688BB000, v45, v46, "Window start date not specified. Returning all contexts");
    OUTLINED_FUNCTION_84_0();
  }

  v41(v31, v18);

LABEL_35:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AD5C08(void *a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B34614();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = [v12 nowPlayingTimestamp];
  if (v13)
  {
    v14 = v13;
    sub_268B345D4();

    v15 = sub_268B345A4();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v16, v2);
    v17 = v12;
    v18 = sub_268B37A34();
    v19 = sub_268B37EE4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_2688BB000, v18, v19, "Excluding context %@ with no timestamp", v20, 0xCu);
      sub_2688EF38C(v21, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v21, -1, -1);
      MEMORY[0x26D6266E0](v20, -1, -1);
    }

    else
    {
      v22 = v18;
      v18 = v17;
    }

    (*(v3 + 8))(v6, v2);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_268AD5F00(void *a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B34614();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 context];
  if (!v13)
  {
LABEL_10:
    v17 = 0;
    return v17 & 1;
  }

  v14 = v13;
  v26[1] = v1;
  v15 = [v13 nowPlayingTimestamp];
  if (!v15)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v3, qword_2802CDA10);
    (*(v4 + 16))(v7, v18, v3);
    v19 = v14;
    v20 = sub_268B37A34();
    v21 = sub_268B37EE4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v14;
      v24 = v19;
      _os_log_impl(&dword_2688BB000, v20, v21, "Excluding context %@ with no timestamp", v22, 0xCu);
      sub_2688EF38C(v23, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v23, -1, -1);
      MEMORY[0x26D6266E0](v22, -1, -1);
    }

    else
    {
      v24 = v20;
      v20 = v19;
    }

    (*(v4 + 8))(v7, v3);
    goto LABEL_10;
  }

  v16 = v15;
  sub_268B345D4();

  v17 = sub_268B345A4();
  (*(v9 + 8))(v12, v8);
  return v17 & 1;
}

uint64_t sub_268AD621C(void *a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = [a1 context];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 nowPlayingTimestamp];

    if (v17)
    {
      sub_268B345D4();

      v18 = sub_268B34614();
      v19 = 0;
    }

    else
    {
      v18 = sub_268B34614();
      v19 = 1;
    }

    __swift_storeEnumTagSinglePayload(v12, v19, 1, v18);
    sub_2688EF3EC(v12, v14);
    sub_268B34614();
    if (__swift_getEnumTagSinglePayload(v14, 1, v18) != 1)
    {
      sub_2688EF38C(v14, &unk_2802A7350, qword_268B3FF10);
      return 1;
    }
  }

  else
  {
    v20 = sub_268B34614();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v20);
  }

  sub_2688EF38C(v14, &unk_2802A7350, qword_268B3FF10);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v7, v21, v3);
  v22 = a1;
  v23 = sub_268B37A34();
  v24 = sub_268B37EE4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v38 = v7;
    v26 = v25;
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136315138;
    v28 = v4;
    v29 = [v22 description];
    v30 = sub_268B37BF4();
    v39 = v1;
    v31 = v30;
    v37 = v3;
    v33 = v32;

    v34 = sub_26892CDB8(v31, v33, &v40);

    *(v26 + 4) = v34;
    _os_log_impl(&dword_2688BB000, v23, v24, "Item: %s has invalid timestamp. Discarding...", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x26D6266E0](v27, -1, -1);
    MEMORY[0x26D6266E0](v26, -1, -1);

    (*(v28 + 8))(v38, v37);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  return 0;
}

void sub_268AD6600(void *a1, void *a2)
{
  v4 = sub_268B34614();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = [a1 context];
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v12 nowPlayingTimestamp];

  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_268B345D4();

  v15 = [a2 context];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v15 nowPlayingTimestamp];

  if (v17)
  {
    sub_268B345D4();

    sub_268B345A4();
    v18 = *(v5 + 8);
    v18(v9, v4);
    v18(v11, v4);
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_268AD67D0(void *a1, void *a2)
{
  v6 = sub_268B34614();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_7();
  result = [a1 nowPlayingTimestamp];
  if (result)
  {
    v14 = result;
    sub_268B345D4();

    result = [a2 nowPlayingTimestamp];
    if (result)
    {
      v15 = result;
      sub_268B345D4();

      LOBYTE(v15) = sub_268B345A4();
      v16 = *(v9 + 8);
      v16(v2, v6);
      v16(v3, v6);
      return (v15 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_268AD6928(void *a1, void *a2)
{
  v30 = a1;
  v29 = sub_268B34744();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_268B34614();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v28);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v27 = sub_268B34754();
  v14 = *(v27 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v27);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B34734();
  v18 = [a2 context];
  if (!v18)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = v18;
  v20 = [v18 nowPlayingTimestamp];

  if (!v20)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_268B345D4();

  v21 = [v30 context];
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v22 = v21;
  v23 = [v21 nowPlayingTimestamp];

  if (v23)
  {
    sub_268B345D4();

    v24 = v29;
    (*(v3 + 104))(v6, *MEMORY[0x277CC99A8], v29);
    sub_268B34724();
    (*(v3 + 8))(v6, v24);
    (*(v14 + 8))(v17, v27);
    v25 = *(v7 + 8);
    v26 = v28;
    v25(v11, v28);
    v25(v13, v26);
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_268AD6C64(void *a1, void *a2)
{
  v40 = a1;
  v3 = sub_268B34744();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v39 = sub_268B34614();
  v12 = OUTLINED_FUNCTION_1(v39);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  v23 = sub_268B34754();
  v24 = OUTLINED_FUNCTION_1(v23);
  v37 = v25;
  v38 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  sub_268B34734();
  result = [a2 nowPlayingTimestamp];
  if (result)
  {
    v32 = result;
    sub_268B345D4();

    result = [v40 nowPlayingTimestamp];
    if (result)
    {
      v33 = result;
      sub_268B345D4();

      (*(v6 + 104))(v11, *MEMORY[0x277CC99A8], v3);
      v34 = sub_268B34724();
      (*(v6 + 8))(v11, v3);
      v35 = *(v14 + 8);
      v36 = v39;
      v35(v19, v39);
      v35(v22, v36);
      (*(v37 + 8))(v30, v38);
      return (v34 == 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_268AD6F0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = sub_268B382A4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D625BD0](v4, a2);
      }

      else
      {
        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = sub_268B37D64();
      [v6 setSkipConfirmation_];
    }

    while (v3 != v4);
  }
}

uint64_t sub_268AD6FE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_26894A7E4();
  ObjectType = swift_getObjectType();
  v9 = *(a4 + 16);

  v11 = v9(v10, ObjectType, a4);
  return a5(v11);
}

uint64_t sub_268AD7090()
{
  sub_268B36C54();
  result = sub_268B36C24();
  qword_2802CDB48 = result;
  unk_2802CDB50 = v1;
  return result;
}

uint64_t sub_268AD70C8(uint64_t a1)
{
  v3 = sub_268B37A54();
  v86 = *(v3 - 8);
  v4 = v86[8];
  v5 = MEMORY[0x28223BE20](v3);
  v82 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v92 = &v79 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v79 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v79 - v12;
  v14 = sub_2688EFD0C(a1);
  v15 = 0;
  v16 = a1 & 0xC000000000000001;
  v93 = a1 & 0xC000000000000001;
  v94 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v14 == v15)
    {
      v81 = 0;
      goto LABEL_12;
    }

    if (v16)
    {
      v17 = MEMORY[0x26D625BD0](v15, a1);
    }

    else
    {
      if (v15 >= *(v94 + 16))
      {
        goto LABEL_68;
      }

      v17 = *(a1 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_67;
    }

    v19 = [v17 context];
    if (v19)
    {
      v20 = v19;
      v1 = [v19 proximity];

      if (v1 - 1 >= 4)
      {
        break;
      }
    }

    ++v15;
    v16 = v93;
  }

  if (v1)
  {
    while (1)
    {
      v96[0] = v1;
LABEL_73:
      sub_268B38474();
      __break(1u);
    }
  }

  v69 = v18;
  v70 = [v69 context];
  if (!v70 || (v71 = v70, v72 = [v70 nowPlayingState], v71, v72 != 1))
  {
    v81 = v69;

    v16 = v93;
LABEL_12:
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    v96[0] = MEMORY[0x277D84F90];
    while (v14 != v21)
    {
      if (v16)
      {
        v23 = MEMORY[0x26D625BD0](v21, a1);
      }

      else
      {
        if (v21 >= *(v94 + 16))
        {
          goto LABEL_66;
        }

        v23 = *(a1 + 8 * v21 + 32);
      }

      v24 = v23;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v25 = [v23 context];
      if (v25)
      {
        v26 = v25;
        v1 = [v25 proximity];

        switch(v1)
        {
          case 0uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
            goto LABEL_20;
          case 1uLL:
            v27 = [v24 context];
            if (!v27)
            {
              goto LABEL_20;
            }

            v28 = v27;
            v1 = [v27 nowPlayingState];

            if (v1 != 1)
            {
              goto LABEL_20;
            }

            sub_268B38214();
            v1 = *(v96[0] + 2);
            sub_268B38244();
            sub_268B38254();
            sub_268B38224();
            break;
          default:
            v95 = v1;
            goto LABEL_73;
        }
      }

      else
      {
LABEL_20:
      }

      ++v21;
    }

    v80 = v96[0];
    if (sub_2688EFD0C(v96[0]))
    {
      v16 = v80;
      goto LABEL_51;
    }

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v1 = __swift_project_value_buffer(v3, qword_2802CDA10);
    v90 = v86[2];
    v91 = v86 + 2;
    v90(v11, v1, v3);
    v29 = sub_268B37A34();
    v30 = sub_268B37F04();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2688BB000, v29, v30, "Could not find immediate devices, look near and far", v31, 2u);
      MEMORY[0x26D6266E0](v31, -1, -1);
    }

    v88 = v86[1];
    v89 = v86 + 1;
    v32 = v88(v11, v3);
    v11 = 0;
    v96[0] = v22;
    v32.n128_u64[0] = 136315138;
    v83 = v32;
    v33 = v92;
    v84 = v1;
    v85 = a1;
    while (1)
    {
      if (v14 == v11)
      {

        v16 = v96[0];
LABEL_51:
        v1 = v86;
        v11 = v82;
        if (qword_2802A4F30 == -1)
        {
LABEL_52:
          v56 = __swift_project_value_buffer(v3, qword_2802CDA10);
          (v1[2])(v11, v56, v3);
          v57 = sub_268B37A34();
          v58 = sub_268B37EC4();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v96[0] = v60;
            *v59 = 136315138;
            v61 = type metadata accessor for Device();

            v63 = MEMORY[0x26D6256F0](v62, v61);
            v64 = v3;
            v66 = v65;

            v67 = sub_26892CDB8(v63, v66, v96);

            *(v59 + 4) = v67;
            _os_log_impl(&dword_2688BB000, v57, v58, "Selected pausable devices: %s", v59, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v60);
            MEMORY[0x26D6266E0](v60, -1, -1);
            MEMORY[0x26D6266E0](v59, -1, -1);

            (v1[1])(v11, v64);
          }

          else
          {

            (v1[1])(v11, v3);
          }

          return v16;
        }

LABEL_71:
        swift_once();
        goto LABEL_52;
      }

      if (v16)
      {
        v34 = MEMORY[0x26D625BD0](v11, a1);
      }

      else
      {
        if (v11 >= *(v94 + 16))
        {
          goto LABEL_70;
        }

        v34 = *(a1 + 8 * v11 + 32);
      }

      v35 = v34;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_69;
      }

      v36 = [v34 context];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 proximity];

        if (sub_268AD3738(v38, &unk_28794F0A0))
        {
          v39 = [v35 context];
          if (v39)
          {
            v40 = v39;
            v41 = [v39 nowPlayingState];

            if (v41 == 1)
            {
              sub_268B38214();
              v42 = *(v96[0] + 2);
              sub_268B38244();
              v33 = v92;
              sub_268B38254();
              sub_268B38224();
              goto LABEL_48;
            }
          }
        }
      }

      else
      {
        v90(v33, v1, v3);
        v35 = v35;
        v43 = sub_268B37A34();
        v44 = sub_268B37F04();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v95 = v87;
          *v45 = v83.n128_u32[0];
          v46 = [v35 description];
          v47 = v14;
          v48 = v3;
          v49 = sub_268B37BF4();
          v51 = v50;

          v52 = v49;
          v3 = v48;
          v14 = v47;
          v53 = sub_26892CDB8(v52, v51, &v95);
          a1 = v85;

          *(v45 + 4) = v53;
          v33 = v92;
          _os_log_impl(&dword_2688BB000, v43, v44, "Skipping item with missing proximity: %s", v45, 0xCu);
          v54 = v87;
          __swift_destroy_boxed_opaque_existential_0Tm(v87);
          v16 = v93;
          MEMORY[0x26D6266E0](v54, -1, -1);
          v55 = v45;
          v1 = v84;
          MEMORY[0x26D6266E0](v55, -1, -1);
        }

        else
        {
        }

        v88(v33, v3);
      }

LABEL_48:
      ++v11;
    }
  }

  v73 = v69;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v74 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v75 = v86;
  (v86[2])(v13, v74, v3);
  v76 = sub_268B37A34();
  v77 = sub_268B37F04();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_2688BB000, v76, v77, "Selecting primary device context", v78, 2u);
    MEMORY[0x26D6266E0](v78, -1, -1);
  }

  (v75[1])(v13, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_268B3BBA0;
  *(v16 + 32) = v73;

  return v16;
}

void sub_268AD7AE8()
{
  OUTLINED_FUNCTION_26();
  v47 = v1;
  v48 = v2;
  v4 = v3;
  v50 = sub_268B34714();
  v5 = OUTLINED_FUNCTION_1(v50);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v49 = sub_268B37474();
  v8 = OUTLINED_FUNCTION_1(v49);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = sub_268B37434();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v17 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v17);
  v18 = *(v14 + 104);
  if (v4 == 1)
  {
    v19 = *MEMORY[0x277D5F858];
    v20 = OUTLINED_FUNCTION_78_8();
    v21(v20);
    v22 = *MEMORY[0x277D5F8A8];
    v23 = OUTLINED_FUNCTION_81_3();
    v24(v23);
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_58_8();
    v25 = OUTLINED_FUNCTION_46_11();
    v26(v25);
    v27 = OUTLINED_FUNCTION_79_8();
    v28(v27);
    v29 = OUTLINED_FUNCTION_50_9();
    v30(v29);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88E8, &qword_268B50378);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_268B3BBC0;
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = sub_268AE1C0C();
      *(v31 + 32) = v47;
      *(v31 + 40) = v48;
LABEL_6:

      sub_268B37C04();
    }
  }

  else
  {
    v32 = *MEMORY[0x277D5F848];
    v33 = OUTLINED_FUNCTION_78_8();
    v34(v33);
    v35 = *MEMORY[0x277D5F8A8];
    v36 = OUTLINED_FUNCTION_81_3();
    v37(v36);
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_58_8();
    v38 = OUTLINED_FUNCTION_46_11();
    v39(v38);
    v40 = OUTLINED_FUNCTION_79_8();
    v41(v40);
    v42 = OUTLINED_FUNCTION_50_9();
    v43(v42);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88E8, &qword_268B50378);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_268B3BBD0;
      *(v44 + 56) = MEMORY[0x277D837D0];
      v45 = sub_268AE1C0C();
      *(v44 + 32) = v47;
      *(v44 + 40) = v48;
      v46 = MEMORY[0x277D83C10];
      *(v44 + 96) = MEMORY[0x277D83B88];
      *(v44 + 104) = v46;
      *(v44 + 64) = v45;
      *(v44 + 72) = v4;
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AD7E78(uint64_t a1, void *a2)
{
  v4 = sub_268B37A54();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = &v40 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = sub_2688EFD0C(a1);
  v15 = 0;
  v16 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v14 == v15)
    {
      if (a2)
      {
        v20 = [a2 context];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 nowPlayingState];

          if (v22 == 1)
          {
            if (qword_2802A4F30 != -1)
            {
              swift_once();
            }

            v23 = v45;
            v24 = __swift_project_value_buffer(v45, qword_2802CDA10);
            v25 = v44;
            v13 = v41;
            (*(v44 + 16))(v41, v24, v23);
            v26 = sub_268B37A34();
            v27 = sub_268B37EC4();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              v29 = "Local device is playing. Don't disambiguate with local device since it is already resumed.";
              goto LABEL_41;
            }

            goto LABEL_43;
          }
        }
      }

      if (v14)
      {
        v31 = 0;
        while (1)
        {
          if (v14 == v31)
          {
            return 1;
          }

          if (v16)
          {
            v32 = MEMORY[0x26D625BD0](v31, a1);
          }

          else
          {
            if (v31 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_50;
            }

            v32 = *(a1 + 8 * v31 + 32);
          }

          v33 = v32;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_49;
          }

          if (sub_268ADA114(v32))
          {
            break;
          }

          v34 = sub_268ADA06C(v33);

          ++v31;
          if (v34)
          {
            goto LABEL_37;
          }
        }

LABEL_37:
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v23 = v45;
        v38 = __swift_project_value_buffer(v45, qword_2802CDA10);
        v13 = v43;
        v25 = v44;
        (*(v44 + 16))(v43, v38, v23);
        v26 = sub_268B37A34();
        v27 = sub_268B37EC4();
        if (!os_log_type_enabled(v26, v27))
        {
          goto LABEL_43;
        }

        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "Auto resumable device found, don't disambiguate with local!";
LABEL_41:
        _os_log_impl(&dword_2688BB000, v26, v27, v29, v28, 2u);
        v37 = 0;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v23 = v45;
        v35 = __swift_project_value_buffer(v45, qword_2802CDA10);
        v25 = v44;
        v13 = v42;
        (*(v44 + 16))(v42, v35, v23);
        v26 = sub_268B37A34();
        v36 = sub_268B37EC4();
        if (!os_log_type_enabled(v26, v36))
        {
          v37 = 1;
          goto LABEL_44;
        }

        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2688BB000, v26, v36, "No resumable device found in long resumable window. Include local device", v28, 2u);
        v37 = 1;
      }

      MEMORY[0x26D6266E0](v28, -1, -1);
      goto LABEL_44;
    }

    if (v16)
    {
      v17 = MEMORY[0x26D625BD0](v15, a1);
    }

    else
    {
      if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v17 = *(a1 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v19 = sub_268983434();

    ++v15;
    if (v19)
    {
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_51;
      }

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_18:
  v23 = v45;
  v30 = __swift_project_value_buffer(v45, qword_2802CDA10);
  v25 = v44;
  (*(v44 + 16))(v13, v30, v23);
  v26 = sub_268B37A34();
  v27 = sub_268B37EC4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "The resumable devices contain the primary device. Don't include local device again";
    goto LABEL_41;
  }

LABEL_43:
  v37 = 0;
LABEL_44:

  (*(v25 + 8))(v13, v23);
  return v37;
}

void sub_268AD8430()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v219 = v3;
  v218 = v4;
  v6 = v5;
  v7 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v15 = v13 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v212 - v18);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v212 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v235 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  v217 = &v212 - v32;
  if (!sub_2688EFD0C(v6))
  {
    if (qword_2802A4F30 == -1)
    {
LABEL_138:
      OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
      (*(v10 + 16))(v15);
      v209 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_13();
      if (os_log_type_enabled(v209, v210))
      {
        v211 = OUTLINED_FUNCTION_14();
        *v211 = 0;
        _os_log_impl(&dword_2688BB000, v209, v7, "Cannot group empty device list", v211, 2u);
        OUTLINED_FUNCTION_6();
      }

      (*(v10 + 8))(v15, v7);
      goto LABEL_141;
    }

LABEL_149:
    OUTLINED_FUNCTION_0_2();
    swift_once();
    goto LABEL_138;
  }

  v213 = v24;
  v215 = v1;

  v240 = v7;
  v7 = 0;
  v34 = sub_268AD42E4(v33);
  v35 = v240;
  v37 = (v34 + 64);
  v36 = *(v34 + 64);
  v38 = OUTLINED_FUNCTION_7_35(v34);
  v239 = v40 & v39;
  v232 = (v41 + 63) >> 6;
  v243 = (v10 + 16);
  v244 = (v10 + 8);
  v238 = v38;

  v42 = 0;
  *&v43 = 136315138;
  v225 = v43;
  *&v43 = 136315394;
  v224 = v43;
  *&v43 = 134217984;
  v214 = v43;
  *&v43 = 138412802;
  v233 = v43;
  v226 = MEMORY[0x277D84F90];
  v241 = v2;
  v227 = v19;
  v10 = 0x2802A4000uLL;
  v229 = v37;
LABEL_3:
  while (2)
  {
    v44 = v232;
    while (1)
    {
      isa = v239;
      if (!v239)
      {
        v46 = MEMORY[0x277D84F90];
        while (1)
        {
          v47 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v47 >= v44)
          {

            OUTLINED_FUNCTION_53_8();
            v15 = v2;
            sub_268ADA9B8();
            v204 = v203;
            v10 = 0;
            v252[0] = v46;
            v205 = *(v203 + 16);
            v206 = (v203 + 40);
            while (v205 != v10)
            {
              if (v10 >= *(v204 + 16))
              {
                goto LABEL_143;
              }

              v207 = *v206;
              v250 = *(v206 - 1);
              v251 = v207;
              v15 = v250;
              sub_268AD9ADC(&v250, &v249);

              if (v249)
              {
                v15 = v252;
                MEMORY[0x26D6256C0]();
                v208 = *((v252[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
                if (*((v252[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v208 >> 1)
                {
                  OUTLINED_FUNCTION_23_11(v208);
                  sub_268B37D14();
                }

                sub_268B37D44();
              }

              v206 += 2;
              ++v10;
            }

            OUTLINED_FUNCTION_53_8();

LABEL_141:
            OUTLINED_FUNCTION_23();
            return;
          }

          isa = v37[v47].isa;
          ++v42;
          if (isa)
          {
            v42 = v47;
            goto LABEL_11;
          }
        }

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
        goto LABEL_149;
      }

      v46 = MEMORY[0x277D84F90];
LABEL_11:
      v239 = (isa - 1) & isa;
      v48 = *(v238 + 48);
      v234 = v42;
      OUTLINED_FUNCTION_69_8();
      v50 = v49[1];
      v236 = *v49;
      v52 = *(v51 + 16);
      v242 = v50;

      if (!v52 || (v15 = v238, v53 = sub_268A759D0(), (v54 & 1) == 0))
      {
LABEL_90:
        OUTLINED_FUNCTION_26_17();
        if (!v64)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        __swift_project_value_buffer(v35, qword_2802CDA10);
        OUTLINED_FUNCTION_11_32();
        v139(v19);
        v140 = v242;

        v37 = sub_268B37A34();
        v15 = sub_268B37EE4();

        if (OUTLINED_FUNCTION_210())
        {
          OUTLINED_FUNCTION_172_0();
          v35 = OUTLINED_FUNCTION_53_1();
          v251 = v140;
          v252[0] = v35;
          OUTLINED_FUNCTION_10_28();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
          v141 = sub_268B37C24();
          v19 = sub_26892CDB8(v141, v142, v252);

          *(v10 + 4) = v19;
          OUTLINED_FUNCTION_74_6();
          OUTLINED_FUNCTION_56_8(&dword_2688BB000, v37, v15, "Could not find device contexts for group %s...skipping this group");
          __swift_destroy_boxed_opaque_existential_0Tm(v35);
          OUTLINED_FUNCTION_15_25();
          v10 = 0x2802A4000;
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        OUTLINED_FUNCTION_66_7();
        v143 = OUTLINED_FUNCTION_97();
        v144(v143);
        goto LABEL_96;
      }

      v55 = *(*(v238 + 56) + 8 * v53);
      if (v55 >> 62)
      {
        OUTLINED_FUNCTION_67_6(v55 & 0xFFFFFFFFFFFFFF8);
        v56 = sub_268B382A4();
        if (!v56)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v56)
        {
          goto LABEL_90;
        }
      }

      v246 = v55 & 0xC000000000000001;
      if ((v55 & 0xC000000000000001) != 0)
      {

        v57 = MEMORY[0x26D625BD0](0, v55);
      }

      else
      {
        if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_148;
        }

        v15 = *(v55 + 32);

        v57 = v15;
      }

      v216 = v57;
      if (v55 >> 62)
      {
        OUTLINED_FUNCTION_67_6(v55 & 0xFFFFFFFFFFFFFF8);
        v58 = sub_268B382A4();
      }

      else
      {
        v58 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v58 == 1)
      {

        OUTLINED_FUNCTION_26_17();
        if (!v64)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        __swift_project_value_buffer(v35, qword_2802CDA10);
        OUTLINED_FUNCTION_11_32();
        v166 = v217;
        v167(v217);
        v168 = sub_268B37A34();
        v169 = sub_268B37EC4();
        if (OUTLINED_FUNCTION_19(v169))
        {
          v170 = OUTLINED_FUNCTION_14();
          *v170 = 0;
          _os_log_impl(&dword_2688BB000, v168, v166, "Single device in group, adding it to grouped device list", v170, 2u);
          OUTLINED_FUNCTION_15_25();
        }

        OUTLINED_FUNCTION_66_7();
        v171(v217, v35);
        OUTLINED_FUNCTION_53_8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_16_30();
          OUTLINED_FUNCTION_41_7(v199);
        }

        OUTLINED_FUNCTION_42_11();
        v15 = *(v172 + 16);
        v173 = *(v172 + 24);
        v37 = (v15 + 1);
        if (v15 >= v173 >> 1)
        {
          OUTLINED_FUNCTION_23_11(v173);
          OUTLINED_FUNCTION_55_9();
          OUTLINED_FUNCTION_41_7(v200);
        }

        OUTLINED_FUNCTION_42_11();
        *(v174 + 16) = v37;
        v175 = v174 + 16 * v15;
        *(v175 + 32) = v216;
        *(v175 + 40) = 1;
        OUTLINED_FUNCTION_73_6();
        goto LABEL_3;
      }

      v59 = 0;
      v250 = v46;
      v237 = (v55 & 0xFFFFFFFFFFFFFF8);
      v60 = v235;
      v245 = v56;
      v247 = v55;
      while (1)
      {
        v248 = v7;
        if (v56 == v59)
        {
          break;
        }

        if (v246)
        {
          v61 = MEMORY[0x26D625BD0](v59, v55);
        }

        else
        {
          if (v59 >= *(v237 + 2))
          {
            goto LABEL_146;
          }

          v61 = *(v55 + 8 * v59 + 32);
        }

        v62 = v61;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_144;
        }

        if ((sub_26898580C() & 1) == 0)
        {
          goto LABEL_36;
        }

        v63 = sub_268984D14();
        OUTLINED_FUNCTION_26_17();
        if (!v64)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        __swift_project_value_buffer(v35, qword_2802CDA10);
        OUTLINED_FUNCTION_11_32();
        v65(v60);
        v66 = v62;
        v15 = v60;
        v67 = sub_268B37A34();
        v68 = sub_268B37F04();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = v233;
          *(v69 + 4) = v66;
          *v70 = v66;
          *(v69 + 12) = 1024;
          v15 = v66;
          v35 = sub_268984D14();

          *(v69 + 14) = v35 & 1;
          *(v69 + 18) = 1024;
          *(v69 + 20) = v63 & 1;
          _os_log_impl(&dword_2688BB000, v67, v68, "Device %@ is silent primary, isTV: %{BOOL}d. keepSilentPrimary: %{BOOL}d", v69, 0x18u);
          sub_2688EF38C(v70, &qword_2802A6420, &unk_268B3C680);
          OUTLINED_FUNCTION_12_26();
          v60 = v235;
          OUTLINED_FUNCTION_12();
        }

        else
        {

          v67 = v66;
        }

        v2 = v241;

        OUTLINED_FUNCTION_66_7();
        v71(v60, v35);
        v10 = 0x2802A4000;
        if ((v63 & 1) == 0)
        {
        }

        else
        {
LABEL_36:
          v15 = &v250;
          sub_268B38214();
          v72 = *(v250 + 2);
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
        }

        v55 = v247;
        v7 = v248;
        v56 = v245;
        ++v59;
      }

      v73 = v250;
      v74 = sub_2688EFD0C(v250);
      if (!v74)
      {

        OUTLINED_FUNCTION_26_17();
        v19 = v227;
        if (!v64)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        __swift_project_value_buffer(v35, qword_2802CDA10);
        OUTLINED_FUNCTION_11_32();
        v90 = v215;
        v91(v215);
        v15 = v90;
        v37 = sub_268B37A34();
        v92 = sub_268B37EE4();
        v93 = OUTLINED_FUNCTION_19(v92);
        v7 = v248;
        if (v93)
        {
          v94 = OUTLINED_FUNCTION_14();
          *v94 = 0;
          _os_log_impl(&dword_2688BB000, v37, v90, "No devices found in group after final primary filtration. Skipping this group", v94, 2u);
          OUTLINED_FUNCTION_15_25();
        }

        OUTLINED_FUNCTION_87_5();
        OUTLINED_FUNCTION_66_7();
        v95(v90, v35);
        v10 = 0x2802A4000;
        goto LABEL_96;
      }

      v75 = v74;
      sub_2688EFD10(0, (v73 & 0xC000000000000001) == 0, v73);
      v76 = v221;
      v246 = v73 & 0xC000000000000001;
      if ((v73 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x26D625BD0](0, v73);
      }

      else
      {
        v77 = *(v73 + 4);
      }

      v212 = v77;
      OUTLINED_FUNCTION_26_17();
      if (!v64)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v35, qword_2802CDA10);
      v78 = *v243;
      v231 = v79;
      v237 = v78;
      v78(v76);

      v80 = sub_268B37A34();
      v15 = sub_268B37F04();

      v81 = OUTLINED_FUNCTION_210();
      v245 = v73;
      if (v81)
      {
        OUTLINED_FUNCTION_172_0();
        v82 = v76;
        v83 = OUTLINED_FUNCTION_53_1();
        v250 = v83;
        *v10 = v225;
        v84 = type metadata accessor for Device();
        v85 = MEMORY[0x26D6256F0](v73, v84);
        v87 = sub_26892CDB8(v85, v86, &v250);
        v73 = v245;

        *(v10 + 4) = v87;
        OUTLINED_FUNCTION_56_8(&dword_2688BB000, v80, v15, "Devices in group after silent primary filtration: %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        OUTLINED_FUNCTION_12_26();
        OUTLINED_FUNCTION_20_2();

        v88 = *v244;
        v89 = v82;
      }

      else
      {

        v88 = *v244;
        v89 = v76;
      }

      v230 = v88;
      v88(v89, v35);
      v7 = v222;
      v10 = &selRef_groupLeader;
      v96 = 0;
LABEL_53:
      if (v75 != v96)
      {
        break;
      }

      OUTLINED_FUNCTION_2_36();
      v102();
      v103 = v242;

      v104 = sub_268B37A34();
      v15 = sub_268B37ED4();

      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v105 = OUTLINED_FUNCTION_53_1();
        v251 = v103;
        v252[0] = v105;
        OUTLINED_FUNCTION_10_28();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
        v106 = sub_268B37C24();
        v108 = sub_26892CDB8(v106, v107, v252);

        *(&selRef_groupLeader + 4) = v108;
        OUTLINED_FUNCTION_56_8(&dword_2688BB000, v104, v15, "Grouping devices in group %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v105);
        OUTLINED_FUNCTION_12_26();
        OUTLINED_FUNCTION_20_2();
      }

      OUTLINED_FUNCTION_6_41();
      v109();
      v110 = v228;
      v252[0] = MEMORY[0x277D84FA0];
      v111 = v245;
      if (v75 < 1)
      {
        __break(1u);
        goto LABEL_151;
      }

      v112 = 0;
      v113 = 7104878;
      if (v242)
      {
        v113 = v236;
      }

      v236 = v113;
      v114 = 0xE300000000000000;
      if (v242)
      {
        v114 = v242;
      }

      v247 = v114;
      do
      {
        if (v246)
        {
          v115 = OUTLINED_FUNCTION_192();
          v116 = MEMORY[0x26D625BD0](v115);
        }

        else
        {
          v116 = v111[v112 + 4];
        }

        v117 = v116;
        sub_268988568(v116);
        if (v118)
        {
          sub_268ADD5F8();
        }

        else
        {
          OUTLINED_FUNCTION_2_36();
          v119();

          v120 = v117;
          v121 = sub_268B37A34();
          v122 = sub_268B37ED4();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = OUTLINED_FUNCTION_238();
            swift_slowAlloc();
            v250 = OUTLINED_FUNCTION_118_0();
            *v123 = v224;

            v35 = v247;
            v124 = sub_26892CDB8(v236, v247, &v250);

            *(v123 + 4) = v124;
            v2 = v241;
            *(v123 + 12) = 2112;
            *(v123 + 14) = v120;
            *v110 = v120;
            v125 = v120;
            _os_log_impl(&dword_2688BB000, v121, v122, "Group %s: Skipping context %@", v123, 0x16u);
            sub_2688EF38C(v110, &qword_2802A6420, &unk_268B3C680);
            OUTLINED_FUNCTION_12_26();
            OUTLINED_FUNCTION_36_13();
            v110 = v228;
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();
          }

          else
          {
          }

          OUTLINED_FUNCTION_6_41();
          v126();
          v111 = v245;
        }

        ++v112;
      }

      while (v75 != v112);
      v19 = sub_268AD47A8(v252[0]);

      OUTLINED_FUNCTION_2_36();
      v127();

      v128 = sub_268B37A34();
      v129 = sub_268B37F04();

      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v250 = OUTLINED_FUNCTION_118_0();
        *v110 = v225;
        v130 = MEMORY[0x26D6256F0](v19, MEMORY[0x277D837D0]);
        v132 = sub_26892CDB8(v130, v131, &v250);

        *(v110 + 4) = v132;
        v2 = v241;
        OUTLINED_FUNCTION_204(&dword_2688BB000, v128, v129, "Unique rooms in group: %s");
        OUTLINED_FUNCTION_36_13();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12_26();
      }

      OUTLINED_FUNCTION_6_41();
      v133();
      v7 = v248;
      v10 = 0x2802A4000;
      v134 = v19[2];
      if (v134)
      {
        v176 = v19[5];
        v246 = v19[4];
        v177 = v213;
        OUTLINED_FUNCTION_2_36();
        v178();

        v237 = v176;

        v179 = sub_268B37A34();
        v180 = sub_268B37ED4();

        if (OUTLINED_FUNCTION_210())
        {
          v181 = OUTLINED_FUNCTION_238();
          v250 = swift_slowAlloc();
          *v181 = v224;
          v182 = sub_26892CDB8(v236, v247, &v250);

          *(v181 + 4) = v182;
          *(v181 + 12) = 2080;
          v183 = MEMORY[0x26D6256F0](v19, MEMORY[0x277D837D0]);
          v185 = v184;

          v186 = sub_26892CDB8(v183, v185, &v250);

          *(v181 + 14) = v186;
          _os_log_impl(&dword_2688BB000, v179, v180, "Group %s: unique rooms: %s", v181, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_12_8();
          v10 = 0x2802A4000;
          OUTLINED_FUNCTION_12();

          v187 = v177;
          v188 = v240;
        }

        else
        {

          v187 = v177;
          v188 = v35;
        }

        v230(v187, v188);
        v189 = v212;
        sub_268ADA198();
        v37 = v190;

        sub_268AE1114(v246, v237, v37);
        OUTLINED_FUNCTION_53_8();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_74_6();
        if ((v191 & 1) == 0)
        {
          OUTLINED_FUNCTION_16_30();
          OUTLINED_FUNCTION_41_7(v201);
        }

        v7 = v248;
        OUTLINED_FUNCTION_42_11();
        v194 = *(v192 + 16);
        v193 = *(v192 + 24);
        v15 = v194 + 1;
        if (v194 >= v193 >> 1)
        {
          OUTLINED_FUNCTION_23_11(v193);
          OUTLINED_FUNCTION_55_9();
          OUTLINED_FUNCTION_41_7(v202);
        }

        OUTLINED_FUNCTION_87_5();
        OUTLINED_FUNCTION_42_11();
        *(v195 + 16) = v15;
        v196 = v195 + 16 * v194;
        *(v196 + 32) = v37;
        *(v196 + 40) = v134;
        v35 = v240;
        goto LABEL_110;
      }

      v15 = v223;
      OUTLINED_FUNCTION_2_36();
      v135();
      v37 = sub_268B37A34();
      v136 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v136))
      {
        v137 = OUTLINED_FUNCTION_172_0();
        *v137 = v214;
        *(v137 + 4) = 0;
        OUTLINED_FUNCTION_60_5(&dword_2688BB000, v37, v15, "Error getting the first room name in a group. groupRoomCount %ld...skipping this group");
        OUTLINED_FUNCTION_15_25();
      }

      OUTLINED_FUNCTION_87_5();
      OUTLINED_FUNCTION_6_41();
      v138();
      OUTLINED_FUNCTION_74_6();
LABEL_96:
      OUTLINED_FUNCTION_73_6();
      v44 = v232;
      v42 = v234;
    }

    if (v246)
    {
      v97 = MEMORY[0x26D625BD0](v96, v73);
    }

    else
    {
      if (v96 >= *(v73 + 2))
      {
        goto LABEL_147;
      }

      v97 = *(v73 + v96 + 4);
    }

    v19 = v97;
    if (__OFADD__(v96, 1))
    {
      goto LABEL_145;
    }

    v98 = [v97 context];
    if (!v98 || (v99 = v98, v15 = [v98 proximity], v99, v15 - 1 < 4))
    {
      v100 = [v19 context];
      if (v100)
      {
        v101 = v100;
        v15 = [v100 proximity];

        if (v15 - 2 >= 3)
        {
          if (v15)
          {
            v145 = v2;
            if (v15 != 1)
            {
              break;
            }

            goto LABEL_102;
          }
        }
      }

      ++v96;
      v73 = v245;
      goto LABEL_53;
    }

    v145 = v2;
    if (!v15)
    {
LABEL_102:

      v146 = v220;
      OUTLINED_FUNCTION_2_36();
      v147();
      v148 = v242;

      v149 = sub_268B37A34();
      v150 = sub_268B37EC4();

      v151 = OUTLINED_FUNCTION_210();
      v7 = v248;
      if (v151)
      {
        OUTLINED_FUNCTION_172_0();
        v152 = OUTLINED_FUNCTION_53_1();
        v251 = v148;
        v252[0] = v152;
        OUTLINED_FUNCTION_10_28();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
        v153 = sub_268B37C24();
        v155 = sub_26892CDB8(v153, v154, v252);

        *(&selRef_groupLeader + 4) = v155;
        OUTLINED_FUNCTION_56_8(&dword_2688BB000, v149, v150, "Group %s has primary or immediate device. Adding it.");
        __swift_destroy_boxed_opaque_existential_0Tm(v152);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_20_2();

        v156 = v220;
        v157 = v240;
      }

      else
      {

        v156 = v146;
        v157 = v35;
      }

      v230(v156, v157);
      v10 = 0x2802A4000;
      sub_268ADA198();
      v37 = v158;
      OUTLINED_FUNCTION_53_8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2 = v145;
      v160 = v212;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_16_30();
        OUTLINED_FUNCTION_41_7(v197);
      }

      OUTLINED_FUNCTION_42_11();
      v163 = *(v161 + 16);
      v162 = *(v161 + 24);
      v15 = v163 + 1;
      if (v163 >= v162 >> 1)
      {
        OUTLINED_FUNCTION_23_11(v162);
        OUTLINED_FUNCTION_55_9();
        OUTLINED_FUNCTION_41_7(v198);
      }

      OUTLINED_FUNCTION_87_5();
      OUTLINED_FUNCTION_42_11();
      *(v164 + 16) = v15;
      v165 = v164 + 16 * v163;
      *(v165 + 32) = v37;
      *(v165 + 40) = 1;
      v35 = v240;
      OUTLINED_FUNCTION_74_6();
LABEL_110:
      OUTLINED_FUNCTION_73_6();
      v42 = v234;
      continue;
    }

    break;
  }

LABEL_151:
  v250 = v15;
  sub_268B38474();
  __break(1u);
}

id sub_268AD9ADC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*(a1 + 8) < 2)
  {
    goto LABEL_6;
  }

  sub_268988580(v9);
  if (!v10)
  {
    sub_268988568(v9);
  }

  sub_268AD7AE8();
  v12 = v11;
  v14 = v13;

  if (v14)
  {
    sub_268AE1114(v12, v14, v9);
LABEL_6:
    *a2 = v9;
    return v9;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v16, v4);
  v17 = sub_268B37A34();
  v18 = sub_268B37EE4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "Error generating group name...skipping this group", v19, 2u);
    MEMORY[0x26D6266E0](v19, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  *a2 = 0;
  return result;
}

BOOL sub_268AD9D10(void *a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_268B3BBA0;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_268AD4D4C(2, v8);

  sub_268AD550C();
  v12 = v11;
  v13 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2688EFD0C(v10);

  sub_2688EFD0C(v12);
  v14 = *v13;
  sub_26894AE34();
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v7, v15, v3);

  v16 = sub_268B37A34();
  v17 = sub_268B37EC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136446210;
    v20 = type metadata accessor for Device();
    v21 = MEMORY[0x26D6256F0](v12, v20);
    v23 = v22;

    v24 = sub_26892CDB8(v21, v23, &v28);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_2688BB000, v16, v17, "Most recent resumable context in short window = %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x26D6266E0](v19, -1, -1);
    MEMORY[0x26D6266E0](v18, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v7, v3);
  v25 = sub_2688EFD0C(v12);

  return v25 != 0;
}

BOOL sub_268ADA06C(void *a1)
{
  if (!sub_268AD9D10(a1))
  {
    return 0;
  }

  v3 = *(v1 + 144);
  v4 = [a1 context];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 proximity];
  }

  else
  {
    v6 = 0;
  }

  return sub_268AD3DDC(v6, v5 == 0, v3);
}

BOOL sub_268ADA114(void *a1)
{
  v2 = *(v1 + 136);
  v3 = [a1 context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 proximity];
  }

  else
  {
    v5 = 0;
  }

  return sub_268AD3DDC(v5, v4 == 0, v2);
}

void sub_268ADA198()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v49 = v4;
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1(v5);
  v46 = v7;
  v47 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v48 = v11 - v10;
  OUTLINED_FUNCTION_9();
  v12 = sub_268B36C04();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  (*(v15 + 104))(v19 - v18, *MEMORY[0x277D5F640], v12);
  v21 = sub_268920878(v1, v20);
  (*(v15 + 8))(v20, v12);
  if (v21)
  {
    v22 = sub_2688EFD0C(v3);
    v23 = 0;
    v24 = v3 & 0xC000000000000001;
    v25 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v22 == v23)
      {
        goto LABEL_29;
      }

      if (v24)
      {
        v26 = MEMORY[0x26D625BD0](v23, v3);
      }

      else
      {
        if (v23 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v26 = *(v3 + 8 * v23 + 32);
      }

      v21 = v26;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v27 = [v26 context];
      if (v27)
      {
        v28 = sub_268AE10A4(v27);
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v31 = [v49 context];
      if (!v31)
      {
        break;
      }

      v32 = sub_268AE10A4(v31);
      if (!v30)
      {
        if (v33)
        {
LABEL_23:

          goto LABEL_27;
        }

        goto LABEL_25;
      }

      if (!v33)
      {
        goto LABEL_23;
      }

      if (v28 == v32 && v30 == v33)
      {

LABEL_25:
        if (sub_268984D14())
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      v35 = sub_268B38444();

      if (v35)
      {
        goto LABEL_25;
      }

LABEL_26:

LABEL_27:
      ++v23;
    }

    if (v30)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_29:
  v21 = v49;
LABEL_30:
  v25 = v46;
  v24 = v47;
  if (qword_2802A4F30 != -1)
  {
LABEL_36:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v24, qword_2802CDA10);
  (*(v25 + 16))(v48);
  v36 = v21;
  v37 = sub_268B37A34();
  v38 = sub_268B37EC4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_172_0();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    *(v39 + 4) = v36;
    *v40 = v36;
    v41 = v36;
    OUTLINED_FUNCTION_44_9();
    _os_log_impl(v42, v43, v44, v45, v39, 0xCu);
    sub_2688EF38C(v40, &qword_2802A6420, &unk_268B3C680);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_12();
  }

  (*(v25 + 8))(v48, v24);
  OUTLINED_FUNCTION_23();
}

void sub_268ADA55C()
{
  OUTLINED_FUNCTION_26();
  v63 = v0;
  v72 = v2;
  v73 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B34714();
  v9 = OUTLINED_FUNCTION_1(v8);
  v70 = v10;
  v71 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v67 = v14 - v13;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37474();
  v16 = OUTLINED_FUNCTION_1(v15);
  v68 = v17;
  v69 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v66 = v21 - v20;
  OUTLINED_FUNCTION_9();
  v74 = sub_268B37434();
  v22 = OUTLINED_FUNCTION_1(v74);
  v65 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v64 = v27 - v26;
  OUTLINED_FUNCTION_9();
  v28 = sub_268B371E4();
  v29 = OUTLINED_FUNCTION_1(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v34);
  v36 = &v62 - v35;
  v37 = sub_268B371B4();
  sub_268B371C4();
  v38 = sub_26892E340(v36, v37);
  v40 = v39;

  v41 = *(v31 + 8);
  v41(v36, v28);
  if (!v40)
  {
    goto LABEL_7;
  }

  if (v38 == v7 && v40 == v5)
  {

    goto LABEL_15;
  }

  v43 = OUTLINED_FUNCTION_57_6();

  if (v43)
  {
LABEL_15:
    OUTLINED_FUNCTION_89_7();
    v50 = MEMORY[0x277D5F830];
    goto LABEL_18;
  }

LABEL_7:
  v44 = sub_268B371B4();
  sub_268B371D4();
  v45 = sub_26892E340(v1, v44);
  v47 = v46;

  v41(v1, v28);
  if (!v47)
  {
LABEL_13:

    goto LABEL_20;
  }

  if (v45 == v7 && v47 == v5)
  {
  }

  else
  {
    v49 = OUTLINED_FUNCTION_57_6();

    if ((v49 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_89_7();
  v50 = MEMORY[0x277D5F838];
LABEL_18:
  v52 = v64;
  v51 = v65;
  (*(v65 + 104))(v64, *v50, v74);
  v54 = v68;
  v53 = v69;
  v55 = v66;
  (*(v68 + 104))(v66, *MEMORY[0x277D5F8A8], v69);
  v56 = v7[11];
  __swift_project_boxed_opaque_existential_1(v7 + 7, v7[10]);
  v57 = v67;
  sub_268B34C94();
  sub_268B376E4();
  v59 = v58;
  (*(v70 + 8))(v57, v71);
  (*(v54 + 8))(v55, v53);
  (*(v51 + 8))(v52, v74);
  if (v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88E8, &qword_268B50378);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_268B3BBC0;
    *(v60 + 56) = MEMORY[0x277D837D0];
    *(v60 + 64) = sub_268AE1C0C();
    v61 = v73;
    *(v60 + 32) = v72;
    *(v60 + 40) = v61;

    OUTLINED_FUNCTION_103();
    sub_268B37C04();
  }

LABEL_20:
  OUTLINED_FUNCTION_23();
}

void sub_268ADA9B8()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B37A54();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;

  v10 = sub_268AD4078(v9);
  v72 = MEMORY[0x277D84F90];
  v12 = v10 + 8;
  v11 = v10[8];
  OUTLINED_FUNCTION_7_35(v10);
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v63 = (v3 + 8);
  v18 = 0;
  v68 = v17;
  v69 = v10 + 8;
  v65 = v8;
  v66 = v0;

  if (v15)
  {
LABEL_6:
    while (1)
    {
      v20 = v10[6];
      OUTLINED_FUNCTION_69_8();
      v23 = *v21;
      v22 = v21[1];
      v24 = v10[2];

      if (!v24)
      {
        break;
      }

      v70 = (v15 - 1) & v15;
      v25 = sub_268A759D0();
      if ((v26 & 1) != 0 && (v27 = *(v10[7] + 8 * v25), v28 = *(v27 + 16), v28 >= 2))
      {
        v29 = qword_2802A4F30;

        if (v29 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        __swift_project_value_buffer(v0, qword_2802CDA10);
        OUTLINED_FUNCTION_11_32();
        v30(v8);

        v31 = sub_268B37A34();
        v32 = sub_268B37ED4();

        v67 = v27;
        if (os_log_type_enabled(v31, v32))
        {
          v33 = OUTLINED_FUNCTION_172_0();
          v34 = OUTLINED_FUNCTION_173_0();
          v71 = v34;
          *v33 = 136315138;
          if (v22)
          {
            v35 = v23;
          }

          else
          {
            v35 = 7104878;
          }

          if (!v22)
          {
            v22 = 0xE300000000000000;
          }

          v36 = sub_26892CDB8(v35, v22, &v71);

          *(v33 + 4) = v36;
          OUTLINED_FUNCTION_60_5(&dword_2688BB000, v31, v32, "Adding device types for devices in room %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v34);
          OUTLINED_FUNCTION_20_2();
          v27 = v67;
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        (*v63)(v8, v0);
        v71 = MEMORY[0x277D84F90];
        sub_2689447AC(0, v28, 0);
        v49 = v71;
        v50 = (v27 + 40);
        do
        {
          v51 = *v50;
          v52 = *(v50 - 1);
          sub_268988574(v52);
          sub_268988580(v52);
          if (!v53)
          {
            sub_268988568(v52);
          }

          sub_268ADA55C();
          v55 = v54;

          if (v55)
          {
            v56 = sub_268B37BC4();
          }

          else
          {
            v56 = 0;
          }

          v57 = OUTLINED_FUNCTION_78_8();
          [v57 v58];

          v71 = v49;
          v60 = *(v49 + 16);
          v59 = *(v49 + 24);
          if (v60 >= v59 >> 1)
          {
            v62 = OUTLINED_FUNCTION_23_11(v59);
            sub_2689447AC(v62, v60 + 1, 1);
            v49 = v71;
          }

          v50 += 2;
          *(v49 + 16) = v60 + 1;
          v61 = v49 + 16 * v60;
          *(v61 + 32) = v52;
          *(v61 + 40) = v51;
          --v28;
        }

        while (v28);

        sub_2689849D8(v49);
        v8 = v65;
        v0 = v66;
        v10 = v64;
      }

      else
      {
        if (!v10[2])
        {
          break;
        }

        v37 = sub_268A759D0();
        v39 = v38;

        if ((v39 & 1) == 0)
        {
          goto LABEL_46;
        }

        v40 = *(v10[7] + 8 * v37);
        v41 = *(v40 + 16);
        v42 = v72;
        v43 = *(v72 + 16);
        if (__OFADD__(v43, v41))
        {
          goto LABEL_47;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v44 = *(v42 + 24) >> 1, v44 < v43 + v41))
        {
          sub_268987D58();
          v42 = v45;
          v44 = *(v45 + 24) >> 1;
        }

        if (*(v40 + 16))
        {
          if (v44 - *(v42 + 16) < v41)
          {
            goto LABEL_49;
          }

          swift_arrayInitWithCopy();

          if (v41)
          {
            v46 = *(v42 + 16);
            v47 = __OFADD__(v46, v41);
            v48 = v46 + v41;
            if (v47)
            {
              goto LABEL_50;
            }

            *(v42 + 16) = v48;
          }
        }

        else
        {

          if (v41)
          {
            goto LABEL_48;
          }
        }

        v72 = v42;
      }

      v17 = v68;
      v12 = v69;
      v15 = v70;
      if (!v70)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        OUTLINED_FUNCTION_23();
        return;
      }

      v15 = v12[v19];
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_6;
      }
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
  }

  __break(1u);
}

void sub_268ADAEEC()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v51 = (v10 - v11);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_7();
  v13 = sub_268B36C04();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_192();
  sub_268ADBF40();
  sub_268AD8430();
  v23 = v22;

  (*(v16 + 104))(v21, *MEMORY[0x277D5F640], v13);
  LOBYTE(v3) = sub_268920878(v3, v21);
  (*(v16 + 8))(v21, v13);
  if (v3)
  {
    v24 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    OUTLINED_FUNCTION_97();
    if (sub_268B34D24())
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
      OUTLINED_FUNCTION_15_7();
      v25(v1);
      v26 = sub_268B37A34();
      v27 = sub_268B37EC4();
      if (OUTLINED_FUNCTION_196(v27))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_50_0(&dword_2688BB000, v28, v29, "Video control received on homepod! Removing this device (primary) if it was selected");
        OUTLINED_FUNCTION_12_8();
      }

      v49 = v7;
      v50 = v4;
      (v7[1])(v1, v4);
      v52 = MEMORY[0x277D84F90];
      v1 = sub_2688EFD0C(v23);
      v4 = v23 & 0xFFFFFFFFFFFFFF8;

      v30 = 0;
      v7 = &selRef_groupLeader;
      v31 = &unk_279C42000;
      while (1)
      {
        if (v1 == v30)
        {
          swift_bridgeObjectRelease_n();
          v7 = v49;
          v4 = v50;
          v31 = v51;
          goto LABEL_22;
        }

        if ((v23 & 0xC000000000000001) != 0)
        {
          v38 = OUTLINED_FUNCTION_192();
          v32 = MEMORY[0x26D625BD0](v38);
        }

        else
        {
          if (v30 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v32 = *(v23 + 8 * v30 + 32);
        }

        v33 = v32;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v34 = [v32 context];
        if (v34 && (v35 = v34, v36 = [v34 proximity], v35, (v36 - 1) >= 4))
        {
          if (v36)
          {
            sub_268B38474();
            __break(1u);
            return;
          }
        }

        else
        {
          sub_268B38214();
          v37 = v52[2];
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
        }

        ++v30;
      }
    }
  }

  v31 = v51;
LABEL_22:
  if (qword_2802A4F30 != -1)
  {
LABEL_28:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
  OUTLINED_FUNCTION_15_7();
  v39(v31);
  v40 = sub_268B37A34();
  v41 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_196(v41))
  {
    OUTLINED_FUNCTION_172_0();
    v42 = OUTLINED_FUNCTION_53_1();
    v52 = v42;
    *v1 = 136315138;
    v43 = type metadata accessor for Device();

    v45 = MEMORY[0x26D6256F0](v44, v43);
    v47 = v46;

    v48 = sub_26892CDB8(v45, v47, &v52);

    *(v1 + 4) = v48;
    OUTLINED_FUNCTION_56_8(&dword_2688BB000, v40, v41, "Selected and grouped devices: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_20_2();
  }

  (v7[1])(v31, v4);
  OUTLINED_FUNCTION_23();
}

void sub_268ADB3A4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v128 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_49_7();
  v17 = sub_268B371E4();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v127 = v24 - v23;
  v25 = sub_2688EFD0C(v3);
  if (!v25)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
    OUTLINED_FUNCTION_15_7();
    v113(v12);
    v114 = sub_268B37A34();
    v115 = sub_268B37EE4();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = OUTLINED_FUNCTION_14();
      *v116 = 0;
      _os_log_impl(&dword_2688BB000, v114, v115, "Cannot group empty device list by media system", v116, 2u);
      OUTLINED_FUNCTION_20_2();
    }

    v117 = *(v7 + 8);
    v118 = OUTLINED_FUNCTION_103();
    v119(v118);
    goto LABEL_98;
  }

  v26 = v25;
  v132 = v20;
  v134 = v0;
  v125 = v17;
  v137 = v4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v138 = MEMORY[0x277D84F90];
  v29 = v3 & 0xC000000000000001;
  while (v26 != v27)
  {
    if (v29)
    {
      v30 = MEMORY[0x26D625BD0](v27, v3);
    }

    else
    {
      if (v27 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v30 = *(v3 + 8 * v27 + 32);
    }

    v31 = v30;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    sub_26898858C(v30);
    if (v32)
    {
    }

    else
    {
      sub_268B38214();
      v0 = *(v138 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    ++v27;
  }

  v33 = 0;
  v140 = v138;
  v138 = v28;
  while (v26 != v33)
  {
    if (v29)
    {
      v34 = MEMORY[0x26D625BD0](v33, v3);
    }

    else
    {
      if (v33 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v34 = *(v3 + 8 * v33 + 32);
    }

    v35 = v34;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_102;
    }

    sub_26898858C(v34);
    if (v36)
    {

      sub_268B38214();
      v0 = *(v138 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v33;
  }

  v3 = sub_268AD455C(v138);
  v38 = v3 + 64;
  v37 = *(v3 + 64);
  OUTLINED_FUNCTION_7_35(v3);
  v41 = v40 & v39;
  v129 = (v42 + 63) >> 6;
  v136 = (v7 + 16);
  v0 = (v7 + 8);
  v124 = (v132 + 8);
  v43 = 0;
  v131 = 136315138;
  v130 = v0;
  v133 = v3 + 64;

LABEL_25:
  v44 = v43;
  if (!v41)
  {
    goto LABEL_27;
  }

  do
  {
    v43 = v44;
LABEL_30:
    v41 &= v41 - 1;
    v45 = *(v3 + 48);
    OUTLINED_FUNCTION_69_8();
    v48 = *v46;
    v47 = v46[1];
    v49 = *(v3 + 16);

    if (!v49)
    {
      goto LABEL_34;
    }

    v50 = sub_268A759D0();
    if ((v51 & 1) == 0)
    {
      goto LABEL_34;
    }

    v52 = *(*(v3 + 56) + 8 * v50);
    if (v52 >> 62)
    {
      OUTLINED_FUNCTION_67_6(v52 & 0xFFFFFFFFFFFFFF8);
      v53 = sub_268B382A4();
      if (!v53)
      {
        goto LABEL_34;
      }

LABEL_42:
      if ((v52 & 0xC000000000000001) != 0)
      {

        v62 = MEMORY[0x26D625BD0](0, v52);
      }

      else
      {
        if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_107:
          __break(1u);
          return;
        }

        v61 = *(v52 + 32);

        v62 = v61;
      }

      v120 = v62;
      v63 = v127;
      if (v52 >> 62)
      {
        OUTLINED_FUNCTION_67_6(v52 & 0xFFFFFFFFFFFFFF8);
        v64 = sub_268B382A4();
      }

      else
      {
        v64 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v64 < 2)
      {

        OUTLINED_FUNCTION_26_17();
        if (!v75)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        OUTLINED_FUNCTION_82(v137, qword_2802CDA10);
        v77 = *v136;
        v78 = OUTLINED_FUNCTION_78_8();
        v79(v78);

        v80 = sub_268B37A34();
        v81 = sub_268B37EC4();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = OUTLINED_FUNCTION_172_0();
          v83 = OUTLINED_FUNCTION_173_0();
          OUTLINED_FUNCTION_51_8(v83);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
          v84 = sub_268B37C24();
          v86 = sub_26892CDB8(v84, v85, v139);

          *(v82 + 4) = v86;
          _os_log_impl(&dword_2688BB000, v80, v81, "Only one device is in the group for mediaSystemId: %s. Adding it", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v137);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_12();

          (*v130)(v1, v137);
        }

        else
        {

          v87 = OUTLINED_FUNCTION_50_9();
          v89(v87, v88);
        }

        v90 = v120;
        MEMORY[0x26D6256C0]();
        OUTLINED_FUNCTION_61_7();
        v3 = v135;
        if (v92)
        {
          OUTLINED_FUNCTION_23_11(v91);
          sub_268B37D14();
        }

        OUTLINED_FUNCTION_192();
        sub_268B37D44();

        goto LABEL_86;
      }

      for (i = 0; ; ++i)
      {
        if (v53 == i)
        {

          v93 = 0;
          v94 = v120;
          v95 = v120;
          v3 = v135;
          goto LABEL_83;
        }

        if ((v52 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x26D625BD0](i, v52);
        }

        else
        {
          if (i >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_106;
          }

          v66 = *(v52 + 8 * i + 32);
        }

        v67 = v66;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        v122 = sub_268988574(v66);
        v123 = v68;
        v69 = sub_268B371B4();
        sub_268B371D4();
        v126 = v67;
        if (*(v69 + 16) && (v70 = sub_268A75A50(), (v71 & 1) != 0))
        {
          v72 = (*(v69 + 56) + 16 * v70);
          v74 = *v72;
          v73 = v72[1];
          v121 = *v124;

          v121(v127, v125);
        }

        else
        {

          (*v124)(v63, v125);
          v74 = 0;
          v73 = 0;
        }

        v3 = v135;
        if (!v123)
        {
          break;
        }

        if (!v73)
        {
          goto LABEL_69;
        }

        v75 = v122 == v74 && v123 == v73;
        if (v75)
        {

LABEL_82:

          v95 = v126;
          v93 = v126;
          v94 = v120;
LABEL_83:
          v96 = v95;
          MEMORY[0x26D6256C0]();
          OUTLINED_FUNCTION_61_7();
          if (v92)
          {
            OUTLINED_FUNCTION_23_11(v97);
            sub_268B37D14();
          }

          OUTLINED_FUNCTION_192();
          sub_268B37D44();
          v98 = v140;

          v140 = v98;
LABEL_86:
          v0 = v130;
          v38 = v133;
          goto LABEL_25;
        }

        v76 = sub_268B38444();

        if (v76)
        {
          goto LABEL_82;
        }

LABEL_70:
        v63 = v127;
      }

      if (!v73)
      {
        goto LABEL_82;
      }

LABEL_69:

      goto LABEL_70;
    }

    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
      goto LABEL_42;
    }

LABEL_34:
    OUTLINED_FUNCTION_26_17();
    if (!v75)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v137, qword_2802CDA10);
    (*v136)(v134);

    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_172_0();
      v57 = OUTLINED_FUNCTION_173_0();
      OUTLINED_FUNCTION_51_8(v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
      v58 = sub_268B37C24();
      v60 = sub_26892CDB8(v58, v59, v139);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_2688BB000, v54, v55, "No devices in group for mediaSystemId: %s...skipping it", v56, 0xCu);
      OUTLINED_FUNCTION_36_13();
      v0 = v130;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }

    (*v0)(v134, v137);
    v44 = v43;
    v3 = v135;
    v38 = v133;
  }

  while (v41);
LABEL_27:
  while (1)
  {
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v43 >= v129)
    {

      OUTLINED_FUNCTION_26_17();
      if (v75)
      {
        goto LABEL_90;
      }

      goto LABEL_104;
    }

    v41 = *(v38 + 8 * v43);
    ++v44;
    if (v41)
    {
      goto LABEL_30;
    }
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_90:
  OUTLINED_FUNCTION_82(v137, qword_2802CDA10);
  (*v136)(v128);
  v99 = sub_268B37A34();
  v100 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_2_19(v100))
  {
    OUTLINED_FUNCTION_172_0();
    v101 = OUTLINED_FUNCTION_118_0();
    v138 = v101;
    *v3 = v131;
    v102 = v0;
    v103 = type metadata accessor for Device();

    v105 = MEMORY[0x26D6256F0](v104, v103);
    v107 = v106;

    v108 = sub_26892CDB8(v105, v107, &v138);

    *(v3 + 4) = v108;
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_204(v109, v110, v111, v112);
    __swift_destroy_boxed_opaque_existential_0Tm(v101);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (*v102)(v128, v137);
  }

  else
  {

    (*v0)(v128, v137);
  }

LABEL_98:
  OUTLINED_FUNCTION_23();
}

void sub_268ADBF40()
{
  OUTLINED_FUNCTION_26();
  v110 = v0;
  v101 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37034();
  v7 = OUTLINED_FUNCTION_1(v6);
  v100 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v111 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v115 = (&v91 - v15);
  OUTLINED_FUNCTION_9();
  v16 = sub_268B36C04();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v108 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v102 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  v113 = &v91 - v27;
  OUTLINED_FUNCTION_9();
  v28 = sub_268B37A54();
  v29 = OUTLINED_FUNCTION_1(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v35);
  v112 = (&v91 - v36);
  if (qword_2802A4F30 != -1)
  {
LABEL_56:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v114 = v6;
  OUTLINED_FUNCTION_82(v28, qword_2802CDA10);
  v37 = *(v31 + 16);
  v97 = v38;
  v98 = v37;
  v99 = v31 + 16;
  (v37)(v112);
  v39 = *(v19 + 16);
  v106 = v5;
  v39(v113, v5, v16);
  v5 = sub_268B37A34();
  v40 = sub_268B37F04();
  v41 = os_log_type_enabled(v5, v40);
  v109 = v16;
  v103 = v31;
  v104 = v39;
  v107 = v19;
  v105 = v19 + 16;
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_172_0();
    v92 = v28;
    v43 = v42;
    v91 = OUTLINED_FUNCTION_173_0();
    v117 = v91;
    *v43 = 136446210;
    v44 = v102;
    v45 = v113;
    v39(v102, v113, v16);
    v46 = sub_268B37C24();
    v47 = v16;
    v48 = v46;
    v16 = v49;
    v93 = *(v19 + 8);
    v93(v45, v47);
    v50 = sub_26892CDB8(v48, v16, &v117);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_2688BB000, v5, v40, "Smart Selecting devices of type: %{public}s", v43, 0xCu);
    OUTLINED_FUNCTION_73_6();
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    v51 = v110;
    OUTLINED_FUNCTION_12();
    v28 = v92;
    OUTLINED_FUNCTION_12();

    v113 = *(v103 + 8);
    (v113)(v112, v28);
  }

  else
  {

    v93 = *(v19 + 8);
    v93(v113, v16);
    v113 = *(v31 + 8);
    (v113)(v112, v28);
    v51 = v110;
  }

  v19 = sub_2688EFD0C(v3);
  v6 = 0;
  v52 = v3 & 0xC000000000000001;
  v31 = v3 & 0xFFFFFFFFFFFFFF8;
  while (v19 != v6)
  {
    if (v52)
    {
      v53 = MEMORY[0x26D625BD0](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v53 = *(v3 + 8 * v6 + 32);
    }

    v5 = v53;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (sub_268983434())
    {
      goto LABEL_15;
    }

    ++v6;
  }

  v5 = 0;
LABEL_15:
  v54 = MEMORY[0x277D84F90];
  v117 = MEMORY[0x277D84F90];
  v56 = v108;
  v55 = v109;
  v104(v108, v106, v109);
  v57 = (*(v107 + 88))(v56, v55);
  if (v57 == *MEMORY[0x277D5F658])
  {
    v58 = sub_268AD70C8(v3);

    v117 = v58;
    goto LABEL_47;
  }

  if (v57 == *MEMORY[0x277D5F660])
  {
    v59 = __swift_project_boxed_opaque_existential_1((v51 + 16), *(v51 + 40));
    v60 = sub_268AE15A4(v101, *v59, v3);
    v61 = v60;
    v116 = v60;
    if (v5 && (sub_268AD7E78(v60, v5) & 1) != 0)
    {
      v62 = v96;
      v98(v96, v97, v28);
      v63 = sub_268B37A34();
      v64 = sub_268B37EC4();
      if (OUTLINED_FUNCTION_19(v64))
      {
        v65 = OUTLINED_FUNCTION_14();
        *v65 = 0;
        _os_log_impl(&dword_2688BB000, v63, v62, "Adding back local device to the filtered resumable devices", v65, 2u);
        OUTLINED_FUNCTION_12();
      }

      (v113)(v62, v28);
      v66 = v5;
      MEMORY[0x26D6256C0]();
      v67 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v67 >> 1)
      {
        OUTLINED_FUNCTION_23_11(v67);
        sub_268B37D14();
      }

      sub_268B37D44();
      v61 = v116;
    }

    v117 = v61;

    sub_268ADCB40();

LABEL_46:

    goto LABEL_47;
  }

  if (v57 == *MEMORY[0x277D5F640])
  {
    v68 = 0;
    v116 = v54;
    v112 = (v100 + 8);
    v113 = (v100 + 16);
    v16 = v114;
    while (1)
    {
      v6 = v115;
      if (v19 == v68)
      {
        sub_268ADCDE0();
        v74 = v73;

        v75 = v74;
        goto LABEL_45;
      }

      if (v52)
      {
        v69 = MEMORY[0x26D625BD0](v68, v3);
      }

      else
      {
        if (v68 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v69 = *(v3 + 8 * v68 + 32);
      }

      v28 = v69;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_54;
      }

      Device.deviceType.getter(v6);
      if (__swift_getEnumTagSinglePayload(v6, 1, v16))
      {
        break;
      }

      v70 = v111;
      (*v113)(v111, v6, v16);
      sub_2688EF38C(v6, &qword_2802A58F0, &unk_268B3BEC0);
      v71 = sub_268B37024();
      (*v112)(v70, v16);
      if (v71)
      {
        goto LABEL_36;
      }

LABEL_37:
      ++v68;
    }

    sub_2688EF38C(v6, &qword_2802A58F0, &unk_268B3BEC0);
LABEL_36:
    sub_268B38214();
    v72 = *(v116 + 16);
    sub_268B38244();
    v16 = v114;
    sub_268B38254();
    sub_268B38224();
    goto LABEL_37;
  }

  if (v57 == *MEMORY[0x277D5F648])
  {

    v117 = v3;

    goto LABEL_47;
  }

  if (v57 == *MEMORY[0x277D5F650])
  {
    sub_268ADCDE0();
LABEL_45:
    sub_2689848D8(v75);
    goto LABEL_46;
  }

  v76 = v95;
  v98(v95, v97, v28);
  v77 = v94;
  v78 = v109;
  v79 = v104;
  v104(v94, v106, v109);
  v80 = sub_268B37A34();
  sub_268B37EE4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = OUTLINED_FUNCTION_172_0();
    v115 = OUTLINED_FUNCTION_173_0();
    v116 = v115;
    *v82 = 136315138;
    v79(v102, v77, v78);
    OUTLINED_FUNCTION_192();
    v83 = sub_268B37C24();
    v85 = v84;
    OUTLINED_FUNCTION_64_8();
    v86 = v93;
    v93(v87, v78);
    v88 = sub_26892CDB8(v83, v85, &v116);

    *(v82 + 4) = v88;
    _os_log_impl(&dword_2688BB000, v80, v3, "Unknown controlType: %s, no selectedDeviceContexts", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v115);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v89 = v86;
    v90 = v95;
  }

  else
  {

    OUTLINED_FUNCTION_64_8();
    v89 = v93;
    v93(v77, v78);
    v90 = v76;
  }

  (v113)(v90, v28);
  v89(v108, v78);
LABEL_47:
  OUTLINED_FUNCTION_23();
}