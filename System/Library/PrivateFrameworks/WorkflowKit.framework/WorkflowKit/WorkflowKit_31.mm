void static WFLocationTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v3 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v4 = sub_1CA94AF78();
  v6 = sub_1CA578CD0(v4, v5, &qword_1EC446660, off_1E836EB58);
  if (v0)
  {
  }

  else
  {
    v7 = v6;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
    v9 = OUTLINED_FUNCTION_18_0(v8);
    v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v9);
    v26 = v2;
    sub_1CA579774(v2, &v25 - v11);
    v12 = sub_1CA948CB8();
    v13 = 0;
    if (__swift_getEnumTagSinglePayload(&v25 - v11, 1, v12) != 1)
    {
      v13 = sub_1CA948C58();
      OUTLINED_FUNCTION_39(v12);
      (*(v14 + 8))(&v25 - v11, v12);
    }

    [v7 setStartTime_];

    MEMORY[0x1EEE9AC00](v15);
    sub_1CA579774(v26, &v25 - v11);
    if (__swift_getEnumTagSinglePayload(&v25 - v11, 1, v12) == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_1CA948C58();
      OUTLINED_FUNCTION_39(v12);
      (*(v17 + 8))(&v25 - v11, v12);
    }

    [v7 setEndTime_];

    v18 = [v7 serializedData];
    if (v18)
    {
      sub_1CA948C08();
      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_72_0();
      v18 = sub_1CA948BF8();
      v19 = OUTLINED_FUNCTION_72_0();
      sub_1CA266F2C(v19, v20);
    }

    [v3 setTriggerData_];

    v21 = sub_1CA294A78();
    v22 = OUTLINED_FUNCTION_93_4(v21, sel_setShouldPrompt_);
    v23 = OUTLINED_FUNCTION_65_5(v22, sel_setShouldNotify_);
    v24 = OUTLINED_FUNCTION_65_5(v23, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v24, sel_setSource_);
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

uint64_t WFLocationTrigger.resolveParameter(withKey:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[43] = a4;
  v5[44] = v4;
  v5[41] = a2;
  v5[42] = a3;
  v5[40] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA57D1CC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[40] == 0x6E6F697461636F6CLL && v0[41] == 0xE800000000000000;
  if (v1 || (sub_1CA94D7F8() & 1) != 0)
  {
    v3 = v0[42];
    v2 = v0[43];
    sub_1CA25B3D0(0, &qword_1EC4466D8, 0x1E696F260);
    sub_1CA94C218();
    v4 = sub_1CA57E7F4();
    v0[45] = v4;
    v5 = [objc_allocWithZone(MEMORY[0x1E696F248]) initWithRequest_];
    v0[46] = v5;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_1CA57D394;
    v6 = swift_continuation_init();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466E0, &qword_1CA98B838);
    OUTLINED_FUNCTION_29_15(v7);
    OUTLINED_FUNCTION_127_4(COERCE_DOUBLE(1107296256));
    v0[28] = sub_1CA3CD588;
    v0[29] = &block_descriptor_6_0;
    v0[30] = v6;
    [v5 startWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_3_6();

    return v8();
  }
}

uint64_t sub_1CA57D394()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 376) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA57D494()
{
  v1 = v0[34];
  v0[48] = v1;
  v2 = [v1 mapItems];
  sub_1CA25B3D0(0, &unk_1EC4466E8, 0x1E696F270);
  v3 = sub_1CA94C658();

  if (sub_1CA25B410())
  {
    sub_1CA275D70(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1CCAA22D0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v7 = v0[45];
    v6 = v0[46];
    v9 = v0[43];
    v8 = v0[44];
    v10 = v0[42];

    v11 = sub_1CA57E660(v5);
    [v8 setRegion_];

LABEL_16:
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_68();

    __asm { BRAA            X1, X16 }
  }

  objc_opt_self();
  v12 = *MEMORY[0x1E6998F78];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  OUTLINED_FUNCTION_123();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CA981310;
  v14 = *MEMORY[0x1E6998F58];
  *(v13 + 32) = sub_1CA94C3A8();
  *(v13 + 40) = v15;
  v16 = sub_1CA94C648();

  v17 = OUTLINED_FUNCTION_121_3();
  v19 = [v17 v18];

  sub_1CA94D258();
  swift_unknownObjectRelease();
  sub_1CA25B3D0(0, &unk_1EC4466F8, 0x1E6998FD0);
  if ((OUTLINED_FUNCTION_51_7() & 1) == 0)
  {
    v57 = v0[45];
    v56 = v0[46];

LABEL_15:
    goto LABEL_16;
  }

  v20 = v0[42];
  v21 = v0[43];
  v22 = v0[34];
  v0[49] = v22;
  v23 = *MEMORY[0x1E6998F80];
  v24 = sub_1CA94C368();
  v25 = OUTLINED_FUNCTION_101();
  v27 = [v25 v26];

  sub_1CA94D258();
  swift_unknownObjectRelease();
  if ((OUTLINED_FUNCTION_51_7() & 1) == 0)
  {
    v57 = v0[45];
    v58 = v0[46];

LABEL_14:
    goto LABEL_15;
  }

  v77 = v22;
  v28 = v0[42];
  v29 = v0[43];
  v30 = v0[34];
  v0[50] = v30;
  v31 = *MEMORY[0x1E6998F70];
  v32 = sub_1CA94C368();
  v33 = OUTLINED_FUNCTION_101();
  v35 = [v33 v34];

  sub_1CA94D258();
  swift_unknownObjectRelease();
  if ((OUTLINED_FUNCTION_51_7() & 1) == 0)
  {
    v62 = v0[45];
    v61 = v0[46];

    goto LABEL_16;
  }

  v36 = v0[34];
  v0[51] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  OUTLINED_FUNCTION_123();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CA981360;
  *(v37 + 32) = v30;
  *(v37 + 40) = v36;
  v22 = v30;
  v76 = v36;
  v38 = sub_1CA94C648();

  v39 = OUTLINED_FUNCTION_101();
  v41 = [v39 v40];

  sub_1CA94D258();
  swift_unknownObjectRelease();
  if ((OUTLINED_FUNCTION_51_7() & 1) == 0)
  {
    v57 = v0[45];
    v63 = v0[46];

    goto LABEL_14;
  }

  v74 = v22;
  v42 = v0[34];
  v0[52] = v42;
  OUTLINED_FUNCTION_123();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1CA981360;
  *(v43 + 32) = v77;
  *(v43 + 40) = v42;
  v44 = v77;
  v45 = v42;
  v46 = sub_1CA94C648();

  v47 = OUTLINED_FUNCTION_121_3();
  v49 = [v47 v48];

  sub_1CA94D258();
  swift_unknownObjectRelease();
  if ((OUTLINED_FUNCTION_51_7() & 1) == 0)
  {
    v57 = v0[45];
    v64 = v0[46];

    goto LABEL_15;
  }

  v75 = v45;
  v78 = v44;
  v50 = v0[34];
  v0[53] = v50;
  v51 = [objc_allocWithZone(MEMORY[0x1E6998FD8]) init];
  v0[54] = v51;
  [v51 setSearchPredicate_];
  sub_1CA588BC4(&unk_1F4A07268, v51, &selRef_setDomains_);
  v52 = [objc_opt_self() frecencyComparator];
  v53 = v74;
  if (v52)
  {
    v54 = swift_allocObject();
    *(v54 + 16) = v52;
    v0[30] = sub_1CA588AFC;
    v0[31] = v54;
    v0[26] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_127_4(COERCE_DOUBLE(1107296256));
    v0[28] = sub_1CA57E8F8;
    v0[29] = &block_descriptor_19_0;
    v52 = _Block_copy(v0 + 26);
    v55 = v0[31];
  }

  [v51 setComparator_];
  _Block_release(v52);
  v65 = [objc_opt_self() currentQueue];
  if (!v65 || (v66 = v65, v67 = [v65 underlyingQueue], v0[55] = v67, v66, !v67))
  {
    v57 = v0[45];
    v72 = v0[46];

    goto LABEL_15;
  }

  v68 = [objc_opt_self() defaultInstance];
  v0[56] = v68;
  if (v68)
  {
    v69 = v68;
    v0[18] = v0;
    v0[23] = v0 + 34;
    v0[19] = sub_1CA57DC64;
    v70 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446708, &unk_1CA98B840);
    v0[26] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_127_4(COERCE_DOUBLE(1107296256));
    v0[28] = sub_1CA57E99C;
    v0[29] = &block_descriptor_10;
    v0[30] = v70;
    [v69 performRecentsSearch:v51 queue:v67 completion:v0 + 26];
    OUTLINED_FUNCTION_68();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v68);
}

uint64_t sub_1CA57DC64()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 456) = *(v3 + 176);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA57DD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v21 = *(v15 + 440);
  v20 = *(v15 + 448);
  v22 = *(v15 + 432);
  if (!*(v15 + 272))
  {
    v36 = *(v15 + 416);
    v35 = *(v15 + 424);
    OUTLINED_FUNCTION_150_2();

    goto LABEL_19;
  }

  sub_1CA4F88B4(*(v15 + 272));
  OUTLINED_FUNCTION_11();

  if (!v14)
  {
    v37 = *(v15 + 432);
    v38 = *(v15 + 440);
    v40 = *(v15 + 416);
    v39 = *(v15 + 424);
    v42 = *(v15 + 400);
    v41 = *(v15 + 408);
    v43 = *(v15 + 392);
    v45 = *(v15 + 360);
    v44 = *(v15 + 368);

    goto LABEL_19;
  }

  if (!sub_1CA25B410())
  {
    v46 = *(v15 + 432);
    a11 = *(v15 + 440);
    v48 = *(v15 + 416);
    v47 = *(v15 + 424);
    v50 = *(v15 + 400);
    v49 = *(v15 + 408);
    v52 = *(v15 + 384);
    v51 = *(v15 + 392);
    v53 = *(v15 + 368);

    goto LABEL_19;
  }

  v23 = (v15 + 272);
  sub_1CA275D70(0, (v14 & 0xC000000000000001) == 0, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1CCAA22D0](0, v14);
  }

  else
  {
    v24 = *(v14 + 32);
  }

  v25 = v24;
  *(v15 + 464) = v24;

  v26 = sub_1CA588A78(v25);
  if (!v26)
  {
    a10 = *(v15 + 432);
    a11 = *(v15 + 440);
    v55 = *(v15 + 416);
    v54 = *(v15 + 424);
    v57 = *(v15 + 400);
    v56 = *(v15 + 408);
    v58 = *(v15 + 384);
    v59 = *(v15 + 392);
    v60 = *(v15 + 368);

    *v23 = 0u;
    *(v15 + 288) = 0u;
LABEL_17:
    sub_1CA2E9314(v15 + 272, &unk_1EC444650, &unk_1CA981C70);
    goto LABEL_19;
  }

  v27 = v26;
  strcpy((v15 + 304), "mapKitHandle");
  *(v15 + 317) = 0;
  *(v15 + 318) = -5120;
  sub_1CA94D3A8();
  sub_1CA311E28(v27, (v15 + 272));

  sub_1CA323ADC(v15 + 208);
  if (!*(v15 + 296))
  {
    v62 = *(v15 + 432);
    v61 = *(v15 + 440);
    v64 = *(v15 + 416);
    v63 = *(v15 + 424);
    v65 = *(v15 + 408);
    v66 = *(v15 + 392);
    v67 = *(v15 + 368);
    a10 = *(v15 + 360);
    a11 = *(v15 + 400);

    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    v28 = *(v15 + 216);
    *(v15 + 472) = *(v15 + 208);
    *(v15 + 480) = v28;
    v29 = objc_opt_self();
    v30 = sub_1CA948BF8();
    *(v15 + 488) = v30;
    *(v15 + 80) = v15;
    *(v15 + 120) = v23;
    *(v15 + 88) = sub_1CA57E198;
    v31 = swift_continuation_init();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446718, &unk_1CA98B850);
    OUTLINED_FUNCTION_29_15(v32);
    OUTLINED_FUNCTION_127_4(COERCE_DOUBLE(1107296256));
    *(v15 + 224) = sub_1CA57EA40;
    *(v15 + 232) = &block_descriptor_13_0;
    *(v15 + 240) = v31;
    [v29 _mapItemFromHandle_completionHandler_];
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DEC8](v33);
  }

  v69 = *(v15 + 432);
  v68 = *(v15 + 440);
  v71 = *(v15 + 416);
  v70 = *(v15 + 424);
  OUTLINED_FUNCTION_150_2();

LABEL_19:
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1CA57E198()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 496) = *(v3 + 112);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA57E298()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v6 = *(v0 + 432);
  v5 = *(v0 + 440);
  v8 = *(v0 + 416);
  v7 = *(v0 + 424);
  v9 = *(v0 + 408);
  v10 = *(v0 + 392);
  v27 = v10;
  v28 = *(v0 + 400);
  v25 = *(v0 + 384);
  v26 = *(v0 + 368);
  if (v1)
  {
    v21 = *(v0 + 424);
    v22 = *(v0 + 416);
    v11 = *(v0 + 464);
    v12 = *(v0 + 440);
    v14 = *(v0 + 344);
    v13 = *(v0 + 352);
    v23 = *(v0 + 408);
    v24 = *(v0 + 360);
    v15 = *(v0 + 432);
    v16 = *(v0 + 336);

    v17 = sub_1CA57E660(v1);
    [v13 setRegion_];

    sub_1CA266F2C(v3, v2);
  }

  else
  {
    v18 = *(v0 + 488);

    sub_1CA266F2C(v3, v2);
  }

  OUTLINED_FUNCTION_3_6();

  return v19();
}

uint64_t sub_1CA57E438()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  swift_willThrow();

  v4 = v0[47];
  OUTLINED_FUNCTION_5();

  return v5();
}

void sub_1CA57E4AC()
{
  v1 = v0[57];
  v3 = v0[54];
  v2 = v0[55];
  v14 = v0[53];
  v15 = v0[56];
  v13 = v0[52];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[48];
  v7 = v0[49];
  v9 = v0[45];
  v8 = v0[46];
  swift_willThrow();

  v10 = v0[57];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99();

  __asm { BRAA            X1, X16 }
}

void sub_1CA57E57C()
{
  v1 = v0[62];
  v15 = v0[59];
  v16 = v0[60];
  v17 = v0[58];
  v18 = v0[61];
  v13 = v0[54];
  v14 = v0[55];
  v3 = v0[52];
  v2 = v0[53];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[48];
  v7 = v0[49];
  v9 = v0[45];
  v8 = v0[46];
  swift_willThrow();

  sub_1CA266F2C(v15, v16);
  v10 = v0[62];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68();

  __asm { BRAA            X1, X16 }
}

id sub_1CA57E660(void *a1)
{
  v1 = [a1 placemark];
  v2 = [v1 location];
  if (v2)
  {
    v3 = v2;
    sub_1CA3AC3E8(v1, &selRef_name);
    if (!v4)
    {
      sub_1CA94C218();
    }

    sub_1CA25B3D0(0, &qword_1EC4468E0, 0x1E695FBB0);
    [v3 coordinate];
    v5 = sub_1CA57E758(v6, v7, 100.0);
  }

  else
  {

    return 0;
  }

  return v5;
}

id sub_1CA57E758(double a1, double a2, double a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1CA94C368();

  v8 = [v6 initWithCenter:v7 radius:a1 identifier:{a2, a3}];

  return v8;
}

id sub_1CA57E7F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA94C368();

  v2 = [v0 initWithNaturalLanguageQuery_];

  return v2;
}

uint64_t sub_1CA57E868(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1CA94D7D8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1CA94D7D8();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1CA57E8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  v9[3] = swift_getObjectType();
  v9[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v6(v10, v9);

  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

uint64_t sub_1CA57E99C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1CA35FF80(v5, v6);
  }

  else
  {
    if (a2)
    {
      v8 = sub_1CA94C658();
    }

    else
    {
      v8 = 0;
    }

    return sub_1CA35FF6C(v5, v8);
  }
}

uint64_t sub_1CA57EA40(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1CA35FF80(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_1CA35FF6C(v5, a2);
  }
}

uint64_t sub_1CA57EAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2C99BC;

  return WFLocationTrigger.resolveParameter(withKey:searchTerm:)(a1, a2, a3, a4);
}

void static WFMessageTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v81 = v3;
  v82 = v0;
  v77 = sub_1CA94AD08();
  v4 = OUTLINED_FUNCTION_1_0(v77);
  v73 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v74 = v9 - v8;
  OUTLINED_FUNCTION_25_0();
  v10 = sub_1CA94ADC8();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_19();
  v84 = sub_1CA94B258();
  v75 = *(v84 - 1);
  v76 = v84 - 8;
  v80 = v75;
  v16 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v84 - 8);
  OUTLINED_FUNCTION_19();
  v83 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  v79 = &v68 - v20;
  v22 = sub_1CA94AD98();
  v23 = swift_allocBox();
  v24 = *MEMORY[0x1E69DB058];
  OUTLINED_FUNCTION_39(v22);
  v71 = *(v25 + 104);
  v72 = v25 + 104;
  v71();
  *v2 = v23;
  v26 = *MEMORY[0x1E69DB0B0];
  v27 = *(v13 + 104);
  v27(v2, v26, v10);
  OUTLINED_FUNCTION_144_3();
  sub_1CA57BE3C(v2, v28, 0xE700000000000000, v21);
  v29 = *(v13 + 8);
  v30 = OUTLINED_FUNCTION_141_4();
  v31(v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446720, &qword_1CA98AD70);
  v33 = swift_allocBox();
  v35 = v34;
  v69 = *(v32 + 48);
  *&v70 = v33;
  v36 = swift_allocBox();
  v38 = v37;
  v39 = swift_allocBox();
  (v71)(v40, *MEMORY[0x1E69DB060], v22);
  *v38 = v39;
  v27(v38, v26, v10);
  *v35 = v36;
  v41 = v73;
  v42 = *(v73 + 104);
  v43 = v77;
  v42(v35, *MEMORY[0x1E69DAF30], v77);
  v44 = sub_1CA94AC88();
  __swift_storeEnumTagSinglePayload(&v69[v35], 1, 1, v44);
  v45 = v74;
  *v74 = v70;
  v42(v45, *MEMORY[0x1E69DAF48], v43);
  OUTLINED_FUNCTION_143_3();
  sub_1CA57ABD8(v45, v46, 0xEA00000000006D72, v83);
  v47 = *(v41 + 8);
  v48 = OUTLINED_FUNCTION_187();
  v49(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  v73 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v73);
  v51 = v50;
  v53 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v74 = *(v52 + 72);
  v54 = OUTLINED_FUNCTION_107_3();
  *(v54 + 16) = xmmword_1CA9813C0;
  v77 = v54;
  v55 = v54 + v53;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v57 = v80;
  v58 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v71 = *(v75 + 72);
  v76 = v56;
  v59 = swift_allocObject();
  v70 = xmmword_1CA981310;
  *(v59 + 16) = xmmword_1CA981310;
  v75 = *(v57 + 16);
  (v75)(v59 + v58);
  OUTLINED_FUNCTION_62_6();
  v72 = v55;
  sub_1CA578170();
  if (v1)
  {
    swift_setDeallocating();
    sub_1CA32E40C();
    v60 = *(v57 + 8);
    OUTLINED_FUNCTION_24_16();
    v60();
    v61 = OUTLINED_FUNCTION_142_4();
    (v60)(v61);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    v78 = v51;
    swift_setDeallocating();
    sub_1CA32E40C();
    v62 = v71;
    *(swift_allocObject() + 16) = v70;
    OUTLINED_FUNCTION_49_6();
    (v75)();
    v63 = v72;
    OUTLINED_FUNCTION_74_6();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v69 = "message_contains";
    *&v70 = v63 + 2 * v74;
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1CA97EDF0;
    v65 = v75;
    (v75)(v64 + v58, v79, v84);
    v65(v62 + v64 + v58, v83, v84);
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v66 = OUTLINED_FUNCTION_7_34();
    v84(v66);
    v67 = OUTLINED_FUNCTION_25_15();
    v84(v67);
  }

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_107();
}

void static WFEmailTrigger.toolkitTriggerDefinitions(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  a19 = v21;
  a20 = v22;
  v145 = v23;
  v24 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_4_12();
  v150 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_0();
  v139 = v30 - v29;
  OUTLINED_FUNCTION_25_0();
  v154 = sub_1CA94B258();
  v140 = *(v154 - 8);
  v32 = v140;
  v31 = v140;
  v33 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_19();
  v153 = v34 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v141 = &v130 - v37;
  OUTLINED_FUNCTION_25_0();
  v38 = sub_1CA94AD08();
  v39 = OUTLINED_FUNCTION_1_0(v38);
  v155 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6_0();
  v149 = (v44 - v43);
  OUTLINED_FUNCTION_25_0();
  v45 = sub_1CA94AD48();
  v46 = OUTLINED_FUNCTION_1_0(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_6_0();
  v53 = v52 - v51;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v152 = *(v31 + 72);
  v54 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v142 = *(v32 + 80);
  v143 = v54;
  v131 = v54 + 2 * v152;
  v55 = swift_allocObject();
  v130 = xmmword_1CA97EDF0;
  v151 = v55;
  OUTLINED_FUNCTION_134_4(v55, xmmword_1CA97EDF0);
  v138 = v54;
  v56 = OUTLINED_FUNCTION_52_9();
  sub_1CA57FEF8(v56, v57, v58);
  (*(v48 + 104))(v53, *MEMORY[0x1E69DAF98], v45);
  OUTLINED_FUNCTION_176();
  sub_1CA57FD10(v59, 0xE800000000000000, v60);
  (*(v48 + 8))(v53, v45);
  v61 = v38;
  v132 = swift_allocBox();
  v63 = v62;
  v133 = v24;
  v64 = swift_allocBox();
  v66 = v65;
  v67 = sub_1CA94AD98();
  v68 = swift_allocBox();
  v69 = *MEMORY[0x1E69DB058];
  OUTLINED_FUNCTION_39(v67);
  v147 = *(v70 + 104);
  *&v148 = v70 + 104;
  v147();
  *v66 = v68;
  LODWORD(v146) = *MEMORY[0x1E69DB0B0];
  v71 = *(v150 + 104);
  v71(v66);
  v134 = v71;
  *v63 = v64;
  v137 = *MEMORY[0x1E69DAF30];
  v72 = v155;
  v73 = *(v155 + 104);
  v136 = v73;
  v73(v63);
  v74 = v149;
  *v149 = v132;
  v75 = *MEMORY[0x1E69DAF18];
  v135 = v61;
  (v73)(v74, v75, v61);
  sub_1CA57ABD8(v74, 0x6E65697069636572, 0xEA00000000007374, v138 + v152);
  v76 = *(v72 + 8);
  v155 = v72 + 8;
  v138 = v76;
  (v76)(v74, v61);
  v77 = swift_allocBox();
  (v147)(v78, v69, v67);
  v79 = v139;
  *v139 = v77;
  v80 = v133;
  (v71)(v79, v146, v133);
  OUTLINED_FUNCTION_144_3();
  v81 = v141;
  sub_1CA57BE3C(v79, v82, 0xE700000000000000, v141);
  (*(v150 + 8))(v79, v80);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446720, &qword_1CA98AD70);
  v150 = swift_allocBox();
  v85 = v84;
  v139 = *(v83 + 48);
  v86 = swift_allocBox();
  v88 = v87;
  v89 = swift_allocBox();
  (v147)(v90, *MEMORY[0x1E69DB060], v67);
  *v88 = v89;
  v91 = v81;
  v92 = v88;
  v93 = v140;
  (v134)(v92, v146, v80);
  *v85 = v86;
  v94 = v136;
  (v136)(v85, v137, v135);
  v95 = sub_1CA94AC88();
  __swift_storeEnumTagSinglePayload(v85 + v139, 1, 1, v95);
  v96 = v149;
  *v149 = v150;
  v97 = *MEMORY[0x1E69DAF48];
  v98 = OUTLINED_FUNCTION_50_6();
  v94(v98);
  OUTLINED_FUNCTION_143_3();
  sub_1CA57ABD8(v96, v99, 0xEA00000000006D72, v153);
  v100 = OUTLINED_FUNCTION_23();
  v138(v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  v101 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v101);
  v103 = v102;
  v105 = *(v104 + 72);
  OUTLINED_FUNCTION_118_3();
  v108 = v107 & ~v106;
  v150 = v109;
  v110 = OUTLINED_FUNCTION_107_3();
  *(v110 + 16) = xmmword_1CA9813C0;
  v155 = v110;
  v111 = (v110 + v108);
  v112 = v143;
  OUTLINED_FUNCTION_47_11();
  v113 = swift_allocObject();
  v114 = OUTLINED_FUNCTION_140_4(v113, xmmword_1CA981310);
  v115 = v91;
  v116 = *(v93 + 16);
  v116(v114 + v112, v115, v154);
  a10 = v113;
  sub_1CA94C218();
  sub_1CA2B895C();
  OUTLINED_FUNCTION_62_6();
  v149 = v111;
  sub_1CA578170();
  if (v20)
  {

    v117 = *(v93 + 8);
    v117(v153, v154);
    v118 = OUTLINED_FUNCTION_25_15();
    (v117)(v118);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    v146 = v101;
    v147 = v103;

    v119 = v143;
    OUTLINED_FUNCTION_47_11();
    v120 = swift_allocObject();
    *(v120 + 16) = v148;
    v116((v120 + v119), v153, v154);
    a10 = v120;
    sub_1CA94C218();
    sub_1CA2B895C();
    OUTLINED_FUNCTION_74_6();
    sub_1CA578170();

    *&v148 = "subject_contains";
    OUTLINED_FUNCTION_38_10();
    v121 = swift_allocObject();
    v122 = OUTLINED_FUNCTION_42_8(v121, &a9);
    v125 = v123 + v124;
    v126 = v154;
    (v116)(v123 + v124, v141, v154, v122);
    v116((v125 + v152), v153, v126);
    a10 = v121;
    sub_1CA2B895C();
    v127 = a10;
    sub_1CA578170();

    v128 = OUTLINED_FUNCTION_120_5();
    v127(v128);
    v129 = OUTLINED_FUNCTION_176();
    v127(v129);
  }

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA57FD10@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1CA94AD08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CA588760(a1, a2, v10);
  sub_1CA57ABD8(v10, a1, a2, a3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t static WFEmailTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  OUTLINED_FUNCTION_30();
  v0 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 72);
  v3 = OUTLINED_FUNCTION_14_24();
  *(v3 + 16) = xmmword_1CA981310;
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v4, v5, v6);
  v7 = *MEMORY[0x1E69DAF98];
  v8 = OUTLINED_FUNCTION_39_9();
  v9(v8);
  return v3;
}

uint64_t sub_1CA57FEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CA94AED8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1CA94B5D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1CA94ADC8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1CA5885BC(a2, a3, (v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)));
  v12 = MEMORY[0x1E69E7CC0];
  sub_1CA94B5C8();
  v14[1] = v12;
  sub_1CA589348(&qword_1EC4468C8, MEMORY[0x1E69DB100]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468D0, &qword_1CA98BEE8);
  sub_1CA25C3BC(&qword_1EC4468D8, &qword_1EC4468D0, &qword_1CA98BEE8);
  sub_1CA94D2A8();
  return sub_1CA94AEB8();
}

char *sub_1CA580164(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_cancellable] = 0;
  v5 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  __swift_storeEnumTagSinglePayload(&v2[v5], 1, 1, v6);
  v7 = &v2[OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E6996330]) init];
  v9 = [objc_allocWithZone(MEMORY[0x1E6996338]) init];
  sub_1CA588B04(a1, a2, v9);
  [v9 setSearchType_];
  [v9 setIncludeContacts_];
  [v9 setIncludePredictions_];
  [v9 setShouldIncludeGroupResults_];
  [v9 setIncludeRecents_];
  [v9 setIncludeSuggestions_];
  [v9 setIncludeLocalExtensions_];
  [v9 setIncludeDirectoryServers_];
  [v9 setIncludeCalendarServers_];
  [v9 setFetchContext_];
  *&v2[OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_fetchRequest] = v9;
  v16.receiver = v2;
  v16.super_class = _s14AddressFetcherCMa();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = sub_1CA580388();

  if (v12)
  {
    v13 = &v11[OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue];
    v14 = *&v11[OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue + 8];
    *v13 = a1;
    v13[1] = a2;
  }

  else
  {
  }

  return v11;
}

id sub_1CA580388()
{
  sub_1CA25B3D0(0, &qword_1EC441AA8, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA981310;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1CA282DB4();
  *(v0 + 32) = 0xD000000000000029;
  *(v0 + 40) = 0x80000001CA9CF460;
  v1 = sub_1CA94CBA8();
  v2 = sub_1CA94C368();
  v3 = [v1 evaluateWithObject_];

  return v3;
}

uint64_t sub_1CA5804B4()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
  *v4 = v0;
  v4[1] = sub_1CA5805AC;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA5805AC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA5806D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  swift_beginAccess();
  sub_1CA589228(v7, a2 + v9);
  swift_endAccess();
  if (qword_1EC442DA0 != -1)
  {
    swift_once();
  }

  v10 = [qword_1EC446600 scheduleFetchRequest:*(a2 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_fetchRequest) delegate:a2];
  v11 = *(a2 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_cancellable);
  *(a2 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_cancellable) = v10;
  return swift_unknownObjectRelease();
}

uint64_t sub_1CA580854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v30 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  if (!sub_1CA25B410())
  {
    goto LABEL_9;
  }

  sub_1CA275D70(0, (a2 & 0xC000000000000001) == 0, a2);
  v20 = (a2 & 0xC000000000000001) != 0 ? MEMORY[0x1CCAA22D0](0, a2) : *(a2 + 32);
  v21 = v20;
  v22 = [v20 value];

  if (!v22)
  {
    goto LABEL_9;
  }

  if ([v22 addressType] != 1)
  {

LABEL_9:
    v25 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
    swift_beginAccess();
    sub_1CA5891B8(v3 + v25, v17);
    if (__swift_getEnumTagSinglePayload(v17, 1, v5))
    {
      v24 = v17;
      goto LABEL_11;
    }

    (*(v6 + 16))(v9, v17, v5);
    sub_1CA2E9314(v17, &unk_1EC446860, &qword_1CA98BED0);
    v26 = *(v3 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue + 8);
    v30 = *(v3 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue);
    v31 = v26;
    sub_1CA94C218();
    sub_1CA94C7E8();
LABEL_13:
    (*(v6 + 8))(v9, v5);
    goto LABEL_14;
  }

  v23 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  swift_beginAccess();
  sub_1CA5891B8(v3 + v23, v19);
  if (!__swift_getEnumTagSinglePayload(v19, 1, v5))
  {
    (*(v6 + 16))(v9, v19, v5);
    sub_1CA2E9314(v19, &unk_1EC446860, &qword_1CA98BED0);
    v30 = sub_1CA3F132C(v22, &selRef_address);
    v31 = v29;
    sub_1CA94C7E8();

    goto LABEL_13;
  }

  v24 = v19;
LABEL_11:
  sub_1CA2E9314(v24, &unk_1EC446860, &qword_1CA98BED0);
LABEL_14:
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v5);
  v27 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  swift_beginAccess();
  sub_1CA589228(v14, v3 + v27);
  return swift_endAccess();
}

uint64_t sub_1CA580C80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v14 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  swift_beginAccess();
  sub_1CA5891B8(v1 + v14, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2))
  {
    sub_1CA2E9314(v13, &unk_1EC446860, &qword_1CA98BED0);
  }

  else
  {
    (*(v3 + 16))(v6, v13, v2);
    sub_1CA2E9314(v13, &unk_1EC446860, &qword_1CA98BED0);
    v15 = *(v1 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue + 8);
    v17[0] = *(v1 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue);
    v17[1] = v15;
    sub_1CA94C218();
    sub_1CA94C7E8();
    (*(v3 + 8))(v6, v2);
  }

  __swift_storeEnumTagSinglePayload(v11, 1, 1, v2);
  swift_beginAccess();
  sub_1CA589228(v11, v1 + v14);
  return swift_endAccess();
}

uint64_t sub_1CA580F20(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v14 = sub_1CA949F78();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *MEMORY[0x1E69E10B8];
  sub_1CA949C58();
  v20 = a2;
  v21 = sub_1CA949F68();
  v22 = sub_1CA94CC18();

  v23 = os_log_type_enabled(v21, v22);
  v43 = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v40 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v39 = v5;
    v27 = v26;
    v46[0] = v26;
    *v25 = 136315138;
    swift_getErrorValue();
    v28 = sub_1CA94D8B8();
    v30 = sub_1CA26B54C(v28, v29, v46);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1CA256000, v21, v22, "Email trigger parameter resolution failed with: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v31 = v27;
    v5 = v39;
    MEMORY[0x1CCAA4BF0](v31, -1, -1);
    v32 = v25;
    v3 = v40;
    MEMORY[0x1CCAA4BF0](v32, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v33 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  swift_beginAccess();
  sub_1CA5891B8(v3 + v33, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5))
  {
    sub_1CA2E9314(v13, &unk_1EC446860, &qword_1CA98BED0);
  }

  else
  {
    v34 = v41;
    v35 = v42;
    (*(v42 + 16))(v41, v13, v5);
    sub_1CA2E9314(v13, &unk_1EC446860, &qword_1CA98BED0);
    v45 = v43;
    v36 = v43;
    sub_1CA94C7D8();
    (*(v35 + 8))(v34, v5);
  }

  v37 = v44;
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v5);
  swift_beginAccess();
  sub_1CA589228(v37, v3 + v33);
  return swift_endAccess();
}

id sub_1CA5813DC()
{
  v2.receiver = v0;
  v2.super_class = _s14AddressFetcherCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA581494()
{
  result = [objc_allocWithZone(MEMORY[0x1E6996378]) initWithDelegate_];
  qword_1EC446600 = result;
  return result;
}

uint64_t WFEmailTrigger.resolveParameter(withKey:searchTerm:)()
{
  OUTLINED_FUNCTION_0();
  v11 = *MEMORY[0x1E69E9840];
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

id sub_1CA58155C()
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 56) == 0x737265646E6573 && *(v1 + 64) == 0xE700000000000000;
  if (v2 || (sub_1CA94D7F8() & 1) != 0)
  {
    v3 = *(v1 + 72);
    v4 = *(v1 + 80);
    v5 = objc_allocWithZone(_s14AddressFetcherCMa());
    OUTLINED_FUNCTION_11();
    sub_1CA94C218();
    v6 = OUTLINED_FUNCTION_23();
    *(v1 + 96) = sub_1CA580164(v6, v7);
    v8 = swift_task_alloc();
    *(v1 + 104) = v8;
    *v8 = v1;
    v9 = sub_1CA581C48;
LABEL_7:
    v8[1] = v9;
    v10 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_99();

    return sub_1CA580494();
  }

  v13 = *(v1 + 56) == 0x6E65697069636572 && *(v1 + 64) == 0xEA00000000007374;
  if (v13 || (sub_1CA94D7F8() & 1) != 0)
  {
    v14 = *(v1 + 72);
    v15 = *(v1 + 80);
    v16 = objc_allocWithZone(_s14AddressFetcherCMa());
    OUTLINED_FUNCTION_11();
    sub_1CA94C218();
    v17 = OUTLINED_FUNCTION_23();
    *(v1 + 136) = sub_1CA580164(v17, v18);
    v8 = swift_task_alloc();
    *(v1 + 144) = v8;
    *v8 = v1;
    v9 = sub_1CA581EC8;
    goto LABEL_7;
  }

  v19 = *(v1 + 56) == 0x73746E756F636361 && *(v1 + 64) == 0xE800000000000000;
  if (!v19 && (sub_1CA94D7F8() & 1) == 0)
  {
    goto LABEL_53;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1CA981300;
  v22 = *MEMORY[0x1E69597F8];
  *(v21 + 32) = sub_1CA94C3A8();
  *(v21 + 40) = v23;
  v24 = *MEMORY[0x1E6959840];
  *(v21 + 48) = sub_1CA94C3A8();
  *(v21 + 56) = v25;
  v26 = *MEMORY[0x1E6959868];
  *(v21 + 64) = sub_1CA94C3A8();
  *(v21 + 72) = v27;
  v28 = *MEMORY[0x1E6959918];
  *(v21 + 80) = sub_1CA94C3A8();
  *(v21 + 88) = v29;
  v30 = *MEMORY[0x1E69597F0];
  *(v21 + 96) = sub_1CA94C3A8();
  *(v21 + 104) = v31;
  v32 = *MEMORY[0x1E6959878];
  *(v21 + 112) = sub_1CA94C3A8();
  *(v21 + 120) = v33;
  v34 = *MEMORY[0x1E6959890];
  *(v21 + 128) = sub_1CA94C3A8();
  *(v21 + 136) = v35;
  v36 = *MEMORY[0x1E69598D8];
  *(v21 + 144) = sub_1CA94C3A8();
  *(v21 + 152) = v37;
  *(v1 + 48) = 0;
  v38 = sub_1CA588B5C(v21, v1 + 48, v20);
  v39 = *(v1 + 48);
  if (!v38)
  {
    v52 = v39;
    OUTLINED_FUNCTION_111_5();
    sub_1CA948AD8();

    swift_willThrow();
    OUTLINED_FUNCTION_5();
    v53 = *MEMORY[0x1E69E9840];
    goto LABEL_54;
  }

  v40 = v38;
  v87 = v20;
  sub_1CA25B3D0(0, &unk_1EC446730, 0x1E6959A28);
  v41 = sub_1CA94C658();
  v42 = v39;

  v43 = sub_1CA25B410();
  v44 = 0;
  v45 = MEMORY[0x1E69E6158];
  while (1)
  {
    if (v43 == v44)
    {

      goto LABEL_53;
    }

    if ((v41 & 0xC000000000000001) != 0)
    {
      v51 = OUTLINED_FUNCTION_137();
      v46 = MEMORY[0x1CCAA22D0](v51);
    }

    else
    {
      if (v44 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v46 = *(v41 + 8 * v44 + 32);
    }

    v20 = v46;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      OUTLINED_FUNCTION_20_23();
      v64 = v83;
LABEL_41:
      v66 = *(v64 + 16);
      v67 = (v66 + 1);
      if (v66 >= *(v64 + 24) >> 1)
      {
        OUTLINED_FUNCTION_75_6();
        v64 = v84;
      }

      v68 = *(v1 + 88);
      *(v64 + 16) = v67;
      v69 = v64 + 16 * v66;
      *(v69 + 32) = v41;
      *(v69 + 40) = v43;
      sub_1CA94C648();
      OUTLINED_FUNCTION_153_4();
      [v68 setSelectedAccountIdentifiers_];

LABEL_45:
      v70 = sub_1CA3F14BC(*(v1 + 88), &selRef_selectedAccountDescriptions);
      if (v70)
      {
        v71 = v70;
        result = sub_1CA3F132C(v20, &selRef_accountDescription);
        if (!v72)
        {
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_194();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_20_23();
          v71 = v85;
        }

        v73 = *(v71 + 16);
        v74 = (v73 + 1);
        if (v73 >= *(v71 + 24) >> 1)
        {
          OUTLINED_FUNCTION_75_6();
          v71 = v86;
        }

        v75 = *(v1 + 88);
        *(v71 + 16) = v74;
        v76 = v71 + 16 * v73;
        *(v76 + 32) = v41;
        *(v76 + 40) = v43;
        sub_1CA94C648();
        OUTLINED_FUNCTION_153_4();
        v77 = OUTLINED_FUNCTION_76_5();
        [v77 v78];
      }

      else
      {
        v79 = *(v1 + 88);

        [v79 setSelectedAccountDescriptions_];
      }

LABEL_53:
      OUTLINED_FUNCTION_5();
      v80 = *MEMORY[0x1E69E9840];
LABEL_54:
      OUTLINED_FUNCTION_99();

      __asm { BRAA            X1, X16 }
    }

    result = sub_1CA3F132C(v46, &selRef_accountDescription);
    if (!v47)
    {
      __break(1u);
      goto LABEL_61;
    }

    v49 = *(v1 + 72);
    v48 = *(v1 + 80);
    *(v1 + 16) = result;
    *(v1 + 24) = v47;
    *(v1 + 32) = v49;
    *(v1 + 40) = v48;
    sub_1CA27BAF0();
    v50 = sub_1CA94D208();

    if (v50)
    {
      break;
    }

    ++v44;
  }

  v54 = *(v1 + 88);

  if (sub_1CA3F14BC(v54, &selRef_selectedAccountIdentifiers) && (v55 = *(v1 + 88), , sub_1CA3F14BC(v55, &selRef_selectedAccountDescriptions)))
  {
  }

  else
  {
    v56 = *(v1 + 88);
    v57 = OUTLINED_FUNCTION_23();
    sub_1CA588BC4(v57, v58, v59);
    v60 = OUTLINED_FUNCTION_23();
    sub_1CA588BC4(v60, v61, v62);
  }

  v45 = v87;
  v63 = sub_1CA3F14BC(*(v1 + 88), &selRef_selectedAccountIdentifiers);
  if (!v63)
  {
    [*(v1 + 88) setSelectedAccountIdentifiers_];
    goto LABEL_45;
  }

  v64 = v63;
  result = [v20 identifier];
  if (result)
  {
    v65 = result;
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_194();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1CA581C48()
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  *v3 = *v1;
  *(v2 + 112) = v6;
  *(v2 + 120) = v7;
  *(v2 + 128) = v0;

  if (!v0)
  {
  }

  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA581D94()
{
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x1E69E9840];
  if (*(v0 + 120))
  {
    v1 = [*(v0 + 88) selectedSenders];
    v2 = sub_1CA94C658();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_23();
      v2 = v9;
    }

    v3 = *(v2 + 16);
    if (v3 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_75_6();
    }

    OUTLINED_FUNCTION_136_4(*(v0 + 112));
    sub_1CA94C648();
    OUTLINED_FUNCTION_153_4();
    v4 = OUTLINED_FUNCTION_76_5();
    [v4 v5];
  }

  OUTLINED_FUNCTION_5();
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1CA581EC8()
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v1;
  *(v2 + 152) = v6;
  *(v2 + 160) = v7;
  *(v2 + 168) = v0;

  if (!v0)
  {
  }

  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA582014()
{
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x1E69E9840];
  if (*(v0 + 160))
  {
    v1 = [*(v0 + 88) selectedRecipients];
    v2 = sub_1CA94C658();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_23();
      v2 = v9;
    }

    v3 = *(v2 + 16);
    if (v3 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_75_6();
    }

    OUTLINED_FUNCTION_136_4(*(v0 + 152));
    sub_1CA94C648();
    OUTLINED_FUNCTION_153_4();
    v4 = OUTLINED_FUNCTION_76_5();
    [v4 v5];
  }

  OUTLINED_FUNCTION_5();
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1CA582148()
{
  OUTLINED_FUNCTION_0();
  v5 = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_5();
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_1CA5821D0()
{
  OUTLINED_FUNCTION_0();
  v5 = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_5();
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_1CA58228C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C99BC;

  return WFEmailTrigger.resolveParameter(withKey:searchTerm:)();
}

void static WFWorkoutTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_116_4(v2);
  v3 = sub_1CA94AD48();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_37_10();
  v9 = sub_1CA94B258();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v15, v16, v17);
  v18 = *MEMORY[0x1E69DAF98];
  v19 = *(v6 + 104);
  v20 = OUTLINED_FUNCTION_121_3();
  v21(v20);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(v22, v23, v24);
  (*(v6 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_102_3();
  v44 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v44);
  v26 = *(v25 + 72);
  v28 = *(v27 + 80);
  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_22_17();
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v29 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v45 = *(v10 + 72);
  v30 = swift_allocObject();
  v31 = OUTLINED_FUNCTION_140_4(v30, xmmword_1CA981310);
  (*(v10 + 16))(v31 + v29, v14, v9);
  OUTLINED_FUNCTION_78_7();
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    v32 = *(v10 + 8);
    v33 = OUTLINED_FUNCTION_30_16();
    v34(v33);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    v35 = swift_allocObject();
    v36 = OUTLINED_FUNCTION_5_37(v35);
    v37(v36);
    OUTLINED_FUNCTION_78_7();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    OUTLINED_FUNCTION_89_2();
    v38 = swift_allocObject();
    v39 = OUTLINED_FUNCTION_5_37(v38);
    v40(v39);
    OUTLINED_FUNCTION_8_26();
    OUTLINED_FUNCTION_78_7();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v41 = *(v10 + 8);
    v42 = OUTLINED_FUNCTION_30_16();
    v43(v42);
  }

  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_107();
}

uint64_t static WFWorkoutTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  OUTLINED_FUNCTION_30();
  v0 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 72);
  v3 = OUTLINED_FUNCTION_14_24();
  *(v3 + 16) = xmmword_1CA981310;
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v4, v5, v6);
  v7 = *MEMORY[0x1E69DAF98];
  v8 = OUTLINED_FUNCTION_39_9();
  v9(v8);
  return v3;
}

Swift::Void __swiftcall WFWorkoutTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  countAndFlagsBits = withIdentifierSuffix._countAndFlagsBits;
  v2 = withIdentifierSuffix._countAndFlagsBits == 0x7472617473 && withIdentifierSuffix._object == 0xE500000000000000;
  if (v2 || (object = withIdentifierSuffix._object, (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v4 = &selRef_setOnStart_;
LABEL_19:
    v9 = OUTLINED_FUNCTION_17_17(v4);

    [v9 v10];
    return;
  }

  v5 = countAndFlagsBits == 1886352499 && object == 0xE400000000000000;
  if (v5 || (OUTLINED_FUNCTION_13_29() & 1) != 0)
  {
LABEL_18:
    v4 = &selRef_setOnEnd_;
    goto LABEL_19;
  }

  v6 = countAndFlagsBits == OUTLINED_FUNCTION_8_26() && object == 0xE600000000000000;
  if (v6 || (OUTLINED_FUNCTION_13_29() & 1) != 0)
  {
    v7 = OUTLINED_FUNCTION_32_12();
    [v7 v8];
    goto LABEL_18;
  }
}

uint64_t WFWorkoutTrigger.resolveParameter(withKey:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5829C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v17 = v14[6] == 0x5474756F6B726F77 && v14[7] == 0xEC00000073657079;
  if (v17 || (sub_1CA94D7F8() & 1) != 0)
  {
    v18 = [objc_opt_self() allTypes];
    sub_1CA25B3D0(0, &qword_1EC446740, off_1E836F5D0);
    v19 = sub_1CA94C658();

    v20 = sub_1CA25B410();
    v21 = 0;
    a9 = v19 & 0xFFFFFFFFFFFFFF8;
    a10 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v20 == v21)
      {

        goto LABEL_18;
      }

      if (a10)
      {
        v26 = OUTLINED_FUNCTION_68_3();
        v22 = MEMORY[0x1CCAA22D0](v26);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v18 = v22;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v23 = v14[8];
      v24 = v14[9];
      v25 = [v22 name];
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_63_8();

      v14[2] = v15;
      v14[3] = v16;
      v14[4] = v23;
      v14[5] = v24;
      sub_1CA27BAF0();
      LOBYTE(v25) = sub_1CA94D208();

      if (v25)
      {
        break;
      }

      ++v21;
    }

    v27 = v14[10];

    v28 = [v18 activityType];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v29 = [v27 selectedWorkoutTypes];
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    OUTLINED_FUNCTION_57_7();
    v30 = sub_1CA94C658();

    a11 = v30;
    MEMORY[0x1CCAA1490]();
    if (*((a11 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((a11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

LABEL_23:
    sub_1CA94C698();
LABEL_17:
    v31 = v14[10];
    OUTLINED_FUNCTION_68_3();
    sub_1CA94C6E8();
    sub_1CA94C648();
    OUTLINED_FUNCTION_11();

    [v31 setSelectedWorkoutTypes_];
  }

LABEL_18:
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1CA582CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2C99BC;

  return WFWorkoutTrigger.resolveParameter(withKey:searchTerm:)(a1, a2, a3, a4);
}

void static WFPredictedLocationTransitionTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v42 = sub_1CA94AD08();
  v1 = OUTLINED_FUNCTION_1_0(v42);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v8 = (v7 - v6);
  v41 = sub_1CA94AD48();
  OUTLINED_FUNCTION_4_12();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  v17 = sub_1CA94AF88();
  OUTLINED_FUNCTION_12(v17);
  v19 = *(v18 + 72);
  OUTLINED_FUNCTION_45_9();
  *(swift_allocObject() + 16) = xmmword_1CA981310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  OUTLINED_FUNCTION_30();
  v20 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v20);
  v44 = *(v21 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v43 = OUTLINED_FUNCTION_107_3();
  *(v43 + 16) = xmmword_1CA97EDF0;
  v24 = v43 + v23;
  v39 = v43 + v23;
  v25 = *MEMORY[0x1E69DAFF0];
  v26 = sub_1CA94AD98();
  OUTLINED_FUNCTION_0_1(v26);
  (*(v27 + 104))(v16, v25);
  v28 = *MEMORY[0x1E69DAFA8];
  v29 = OUTLINED_FUNCTION_113_3();
  v30(v29);
  v31 = sub_1CA94ADC8();
  v32 = swift_allocBox();
  sub_1CA94AD38();
  *v8 = v32;
  v40 = *MEMORY[0x1E69DAF30];
  v33 = *(v3 + 104);
  v33(v8);
  sub_1CA57ABD8(v8, 0x4872656767697274, 0xEE00705573646165, v24);
  v38 = *(v3 + 8);
  v34 = OUTLINED_FUNCTION_130();
  v35(v34);
  v36 = *(v10 + 8);
  v36(v16, v41);
  sub_1CA5831B8(v16);
  swift_allocBox();
  OUTLINED_FUNCTION_99_4();
  sub_1CA94AD38();
  *v8 = v31;
  (v33)(v8, v40, v42);
  sub_1CA57ABD8(v8, 0x74616E6974736564, 0xEF657079546E6F69, v39 + v44);
  v37 = OUTLINED_FUNCTION_130();
  v38(v37);
  v36(v16, v41);
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    OUTLINED_FUNCTION_69_8();
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA5831B8@<X0>(uint64_t a1@<X8>)
{
  sub_1CA583310();
  v2 = *MEMORY[0x1E69DAF80];
  v3 = sub_1CA94AD48();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static WFPredictedLocationTransitionTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  OUTLINED_FUNCTION_30();
  v0 = sub_1CA94AD48();
  OUTLINED_FUNCTION_12(v0);
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_45_9();
  v5 = v4 & ~v3;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CA981310;
  sub_1CA5831B8(v6 + v5);
  return v6;
}

void sub_1CA583310()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37_10();
  v45 = sub_1CA94B5A8();
  v12 = OUTLINED_FUNCTION_1_0(v45);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_19();
  v17 = sub_1CA94B5D8();
  v18 = OUTLINED_FUNCTION_18_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_0();
  v21 = sub_1CA94B478();
  v22 = OUTLINED_FUNCTION_1_0(v21);
  v43 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_0();
  v44 = v27 - v26;
  OUTLINED_FUNCTION_25_0();
  v28 = sub_1CA94ADC8();
  v29 = OUTLINED_FUNCTION_18_0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6_0();
  sub_1CA588438(v7, v5, (v33 - v32));
  v34 = *(v3 + 16);
  if (v34)
  {
    v42 = v21;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1CA2B90B0();
    v35 = sub_1CA94B458();
    v36 = (v3 + 40);
    do
    {
      v38 = *(v36 - 1);
      v37 = *v36;
      __swift_storeEnumTagSinglePayload(v0, 1, 1, v35);
      sub_1CA94C218();
      OUTLINED_FUNCTION_68_3();
      sub_1CA94B588();
      v39 = *(v46 + 16);
      if (v39 >= *(v46 + 24) >> 1)
      {
        sub_1CA2B90B0();
      }

      *(v46 + 16) = v39 + 1;
      OUTLINED_FUNCTION_118_3();
      (*(v14 + 32))(v46 + (v41 & ~v40) + *(v14 + 72) * v39, v1, v45);
      v36 += 2;
      --v34;
    }

    while (v34);

    v21 = v42;
  }

  else
  {
  }

  (*(v43 + 104))(v44, *MEMORY[0x1E69DB3B0], v21);
  sub_1CA94B5C8();
  sub_1CA94B468();
  OUTLINED_FUNCTION_36();
}

void static WFPredictedLocationTransitionTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_9_29();
  v1 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v2 = sub_1CA94AF78();
  v4 = v3;
  v5 = sub_1CA578CD0(v2, v3, &qword_1EC446680, off_1E836EE60);
  if (v0)
  {

    goto LABEL_24;
  }

  v6 = v5;

  OUTLINED_FUNCTION_141_4();
  sub_1CA579AE8();
  if (v7)
  {
    OUTLINED_FUNCTION_61_7();
    v8 = v8 && v4 == 0xEC000000656D6F68;
    if (v8 || (OUTLINED_FUNCTION_34_14() & 1) != 0)
    {
      v9 = 0;
LABEL_10:

LABEL_11:
      [v6 setDestinationType_];
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_106_4();
    if (v8 && v4 == v22)
    {
      v9 = 1;
      goto LABEL_10;
    }

    v24 = OUTLINED_FUNCTION_34_14();

    if (v24)
    {
      v9 = 1;
      goto LABEL_11;
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_141_4();
  sub_1CA579AE8();
  if (v10)
  {
    OUTLINED_FUNCTION_61_7();
    v11 = v8 && v4 == 0xEC000000656D6F68;
    if (v11 || (OUTLINED_FUNCTION_34_14() & 1) != 0)
    {
      v12 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_106_4();
      if (!v8 || v4 != v25)
      {
        v27 = OUTLINED_FUNCTION_34_14();

        if ((v27 & 1) == 0)
        {
          goto LABEL_21;
        }

        v12 = 1;
        goto LABEL_20;
      }

      v12 = 1;
    }

LABEL_20:
    [v6 setDestinationType_];
  }

LABEL_21:
  v13 = [v6 serializedData];
  if (v13)
  {
    sub_1CA948C08();
    OUTLINED_FUNCTION_63_8();

    OUTLINED_FUNCTION_72_0();
    v13 = sub_1CA948BF8();
    v14 = OUTLINED_FUNCTION_72_0();
    sub_1CA266F2C(v14, v15);
  }

  v16 = OUTLINED_FUNCTION_50_6();
  [v16 v17];

  v18 = sub_1CA294A78();
  v19 = OUTLINED_FUNCTION_93_4(v18, sel_setShouldPrompt_);
  v20 = OUTLINED_FUNCTION_65_5(v19, sel_setShouldNotify_);
  v21 = OUTLINED_FUNCTION_65_5(v20, sel_setEnabled_);
  OUTLINED_FUNCTION_95_6(v21, sel_setSource_);

LABEL_24:
  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

void static WFBatteryLevelTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v3 = sub_1CA94AD08();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_19();
  v9 = sub_1CA94AD48();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_97_5();
  v49 = sub_1CA94B258();
  v48 = *(v49 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_6_0();
  v18 = v17 - v16;
  v19 = *MEMORY[0x1E69DB050];
  v20 = sub_1CA94AD98();
  OUTLINED_FUNCTION_0_1(v20);
  (*(v21 + 104))(v0, v19);
  v22 = *MEMORY[0x1E69DAFA8];
  v23 = OUTLINED_FUNCTION_96_6(v12);
  v24(v23);
  sub_1CA94ADC8();
  v25 = swift_allocBox();
  sub_1CA94AD38();
  *v2 = v25;
  v26 = *MEMORY[0x1E69DAF30];
  v27 = OUTLINED_FUNCTION_113_3();
  v28(v27);
  sub_1CA57ABD8(v2, 0x6C6576656CLL, 0xE500000000000000, v18);
  (*(v6 + 8))(v2, v3);
  v29 = *(v12 + 8);
  v30 = OUTLINED_FUNCTION_135_2();
  v31(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_40();
  v32 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v32);
  v34 = *(v33 + 72);
  v36 = *(v35 + 80);
  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_22_17();
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v37 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v47 = *(v48 + 72);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CA981310;
  (*(v48 + 16))(v38 + v37, v18, v49);
  OUTLINED_FUNCTION_87_4();
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v1)
  {
    (*(v48 + 8))(v18, v49);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    v39 = swift_allocObject();
    v40 = OUTLINED_FUNCTION_56_7(v39);
    v41(v40);
    OUTLINED_FUNCTION_87_4();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v42 = swift_allocObject();
    v43 = OUTLINED_FUNCTION_56_7(v42);
    v44(v43);
    OUTLINED_FUNCTION_87_4();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v45 = OUTLINED_FUNCTION_88_2();
    v46(v45);
  }

  OUTLINED_FUNCTION_107();
}

Swift::Void __swiftcall WFBatteryLevelTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  countAndFlagsBits = withIdentifierSuffix._countAndFlagsBits;
  v3 = withIdentifierSuffix._countAndFlagsBits == 0x6C61757165 && withIdentifierSuffix._object == 0xE500000000000000;
  if (v3 || (object = withIdentifierSuffix._object, (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v5 = 0;
LABEL_7:

    [v1 setSelection_];
    return;
  }

  v6 = countAndFlagsBits == 0x65766F6261 && object == 0xE500000000000000;
  if (v6 || (OUTLINED_FUNCTION_13_29() & 1) != 0)
  {
    v5 = 1;
    goto LABEL_7;
  }

  v7 = countAndFlagsBits == 0x776F6C6562 && object == 0xE500000000000000;
  if (v7 || (OUTLINED_FUNCTION_13_29() & 1) != 0)
  {
    v5 = 2;
    goto LABEL_7;
  }
}

uint64_t static WFBatteryLevelTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_9_29();
  v3 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v4 = sub_1CA94AF78();
  sub_1CA578AE4(v4, v5, &qword_1EC446688, off_1E836DEA8, WFBatteryLevelTrigger.updateVariant(withIdentifierSuffix:));
  if (v0)
  {

LABEL_11:
    *&result = COERCE_DOUBLE(OUTLINED_FUNCTION_44_8());
    return result;
  }

  OUTLINED_FUNCTION_57_7();

  *&result = COERCE_DOUBLE(sub_1CA57914C(0x6C6576656CLL, 0xE500000000000000, v2));
  if (v7)
  {
LABEL_8:
    v8 = [v1 serializedData];
    if (v8)
    {
      sub_1CA948C08();
      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_72_0();
      v8 = sub_1CA948BF8();
      v9 = OUTLINED_FUNCTION_72_0();
      sub_1CA266F2C(v9, v10);
    }

    v11 = OUTLINED_FUNCTION_50_6();
    [v11 v12];

    v13 = OUTLINED_FUNCTION_152_3();
    v14 = OUTLINED_FUNCTION_93_4(v13, sel_setShouldPrompt_);
    v15 = OUTLINED_FUNCTION_65_5(v14, sel_setShouldNotify_);
    v16 = OUTLINED_FUNCTION_65_5(v15, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v16, sel_setSource_);

    goto LABEL_11;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*&result <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*&result < 9.22337204e18)
  {
    [v1 setLevel_];
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t static WFSleepTrigger.toolkitTriggerDefinitions(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  v1 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = OUTLINED_FUNCTION_107_3();
  *(v6 + 16) = xmmword_1CA9813C0;
  OUTLINED_FUNCTION_74_6();
  sub_1CA578170();
  if (v0)
  {
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_128_1();
    sub_1CA578170();
    OUTLINED_FUNCTION_123_4();
    sub_1CA578170();
  }

  return v6;
}

Swift::Void __swiftcall WFSleepTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  object = withIdentifierSuffix._object;
  v3 = withIdentifierSuffix._countAndFlagsBits == 0xD000000000000010 && 0x80000001CA9CF200 == withIdentifierSuffix._object;
  if (v3 || (countAndFlagsBits = withIdentifierSuffix._countAndFlagsBits, OUTLINED_FUNCTION_74_6(), (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v5 = 0;
LABEL_7:

    [v1 setSelection_];
    return;
  }

  OUTLINED_FUNCTION_128_1();
  v7 = countAndFlagsBits == OUTLINED_FUNCTION_132_1() && object == v6;
  if (v7 || (OUTLINED_FUNCTION_13_29() & 1) != 0)
  {
    v5 = 1;
    goto LABEL_7;
  }

  v9 = countAndFlagsBits == OUTLINED_FUNCTION_123_4() && object == v8;
  if (v9 || (OUTLINED_FUNCTION_13_29() & 1) != 0)
  {
    v5 = 2;
    goto LABEL_7;
  }
}

void static WFNFCTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v35 = sub_1CA94AD08();
  v3 = OUTLINED_FUNCTION_1_0(v35);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_85_5();
  v8 = sub_1CA94AD48();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_97_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  v14 = sub_1CA94AF88();
  OUTLINED_FUNCTION_12(v14);
  v16 = *(v15 + 72);
  OUTLINED_FUNCTION_45_9();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1CA981310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v18 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v18);
  v20 = *(v19 + 72);
  OUTLINED_FUNCTION_45_9();
  v23 = v22 & ~v21;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1CA981310;
  v25 = *MEMORY[0x1E69DB060];
  v26 = sub_1CA94AD98();
  OUTLINED_FUNCTION_0_1(v26);
  (*(v27 + 104))(v0, v25);
  v28 = *MEMORY[0x1E69DAFA8];
  v29 = OUTLINED_FUNCTION_96_6(v11);
  v30(v29);
  sub_1CA94ADC8();
  v31 = swift_allocBox();
  sub_1CA94AD38();
  *v2 = v31;
  (*(v5 + 104))(v2, *MEMORY[0x1E69DAF30], v35);
  sub_1CA57ABD8(v2, 0x746E656449676174, 0xED00007265696669, v24 + v23);
  (*(v5 + 8))(v2, v35);
  v32 = *(v11 + 8);
  v33 = OUTLINED_FUNCTION_119();
  v34(v33);
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v1)
  {
    *(v17 + 16) = 0;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

uint64_t static WFNFCTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_9_29();
  v3 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v4 = sub_1CA94AF78();
  sub_1CA578CD0(v4, v5, &qword_1EC446698, off_1E836EBF8);
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_57_7();

    sub_1CA579460(0x746E656449676174, 0xED00007265696669, v2);
    if (v6)
    {
      v7 = sub_1CA94C368();
    }

    else
    {
      v7 = 0;
    }

    [v1 setTagIdentifier_];

    v8 = [v1 serializedData];
    if (v8)
    {
      sub_1CA948C08();
      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_72_0();
      v8 = sub_1CA948BF8();
      v9 = OUTLINED_FUNCTION_72_0();
      sub_1CA266F2C(v9, v10);
    }

    v11 = OUTLINED_FUNCTION_50_6();
    [v11 v12];

    v13 = OUTLINED_FUNCTION_152_3();
    v14 = OUTLINED_FUNCTION_93_4(v13, sel_setShouldPrompt_);
    v15 = OUTLINED_FUNCTION_65_5(v14, sel_setShouldNotify_);
    v16 = OUTLINED_FUNCTION_65_5(v15, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v16, sel_setSource_);
  }

  return OUTLINED_FUNCTION_44_8();
}

void static WFSoundRecognitionTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v1 = sub_1CA94AD48();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_102_3();
  v7 = sub_1CA94AF88();
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 72);
  OUTLINED_FUNCTION_45_9();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CA981310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v11 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v11);
  v13 = *(v12 + 72);
  OUTLINED_FUNCTION_45_9();
  *(swift_allocObject() + 16) = xmmword_1CA981310;
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v14, v15, v16);
  v17 = *MEMORY[0x1E69DAF98];
  v18 = *(v4 + 104);
  v19 = OUTLINED_FUNCTION_101();
  v20(v19);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(v21, 0xE600000000000000, v22);
  v23 = *(v4 + 8);
  v24 = OUTLINED_FUNCTION_195();
  v25(v24);
  OUTLINED_FUNCTION_104_4();
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    *(v10 + 16) = 0;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

uint64_t static WFSoundRecognitionTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  OUTLINED_FUNCTION_30();
  v0 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 72);
  v3 = OUTLINED_FUNCTION_14_24();
  *(v3 + 16) = xmmword_1CA981310;
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v4, v5, v6);
  v7 = *MEMORY[0x1E69DAF98];
  v8 = OUTLINED_FUNCTION_39_9();
  v9(v8);
  return v3;
}

uint64_t WFSoundRecognitionTrigger.resolveParameter(withKey:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA584C60()
{
  OUTLINED_FUNCTION_189();
  v19 = v0;
  v1 = v0[8] == 0x73646E756F73 && v0[9] == 0xE600000000000000;
  if (v1 || (sub_1CA94D7F8() & 1) != 0)
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    *(v4 + 16) = 0;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v2;
    v6[4] = v4;
    v0[6] = sub_1CA588C84;
    v0[7] = v6;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CA584F70;
    v0[5] = &block_descriptor_31_1;
    v7 = _Block_copy(v0 + 2);
    v8 = v0[7];
    sub_1CA94C218();

    v9 = [v5 mapLocalizedSupportedSoundDetectionTypesUsingBlock_];
    _Block_release(v7);

    swift_beginAccess();
    v10 = *(v4 + 24);
    if (v10)
    {
      v11 = v0[12];
      v12 = *(v4 + 16);
      v13 = *(v4 + 24);
      sub_1CA94C218();
      v14 = [v11 soundDetectionTypes];
      v15 = sub_1CA94C8F8();

      v18[2] = v15;
      sub_1CA368948(v18, v12, v10);

      OUTLINED_FUNCTION_119();
      sub_1CA94C8E8();
      OUTLINED_FUNCTION_57_7();

      [v11 setSoundDetectionTypes_];
    }
  }

  OUTLINED_FUNCTION_3_6();

  return v16();
}

uint64_t sub_1CA584EC4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  sub_1CA27BAF0();
  result = sub_1CA94D208();
  if (result)
  {
    swift_beginAccess();
    v9 = *(a3 + 24);
    *(a3 + 16) = a1;
    *(a3 + 24) = a2;

    result = sub_1CA94C218();
  }

  *(a4 + 24) = MEMORY[0x1E69E7CA8] + 8;
  return result;
}

id sub_1CA584F70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1CA94C3A8();
  v5 = v4;
  v6 = sub_1CA94C3A8();
  v8 = v7;

  v2(v11, v3, v5, v6, v8);

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v9 = sub_1CA94D7D8();
  __swift_destroy_boxed_opaque_existential_0(v11);

  return v9;
}

uint64_t sub_1CA585074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2C99BC;

  return WFSoundRecognitionTrigger.resolveParameter(withKey:searchTerm:)(a1, a2, a3, a4);
}

void static WFAlarmTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v3 = v0;
  OUTLINED_FUNCTION_116_4(v4);
  v5 = sub_1CA94AD48();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_85_5();
  v62 = sub_1CA94B258();
  v61 = *(v62 - 8);
  v60 = v61;
  v11 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_19();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  OUTLINED_FUNCTION_46_8();
  sub_1CA57FEF8(v3, v18, v19);
  v20 = *(v8 + 104);
  v20(v2, *MEMORY[0x1E69DAF98], v5);
  v59 = v17;
  OUTLINED_FUNCTION_137();
  sub_1CA57FD10(v21, 0xE800000000000000, v22);
  v23 = *(v8 + 8);
  v24 = OUTLINED_FUNCTION_204();
  v23(v24);
  OUTLINED_FUNCTION_10_27();
  sub_1CA583310();
  v20(v2, *MEMORY[0x1E69DAF80], v5);
  OUTLINED_FUNCTION_137();
  sub_1CA57FD10(v25, 0xEA00000000006574, v26);
  v27 = OUTLINED_FUNCTION_204();
  v23(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  v50 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v50);
  v29 = v28;
  v31 = *(v30 + 72);
  v32 = *(v28 + 80);
  OUTLINED_FUNCTION_105_5();
  v55 = v33;
  OUTLINED_FUNCTION_22_17();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CA9813C0;
  v58 = v34;
  v35 = v34 + v8 + 104;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v37 = v60;
  v38 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v54 = *(v61 + 72);
  v52 = v36;
  v39 = swift_allocObject();
  v51 = xmmword_1CA981310;
  *(v39 + 16) = xmmword_1CA981310;
  v40 = v37;
  v42 = *(v37 + 16);
  v41 = (v37 + 16);
  v61 = v14;
  v53 = v42;
  (v42)(v39 + v38, v14, v62);
  OUTLINED_FUNCTION_145_2();
  v56 = v35;
  OUTLINED_FUNCTION_84_1();
  sub_1CA578170();
  if (v1)
  {
    swift_setDeallocating();
    sub_1CA32E40C();
    v43 = *(v40 + 8);
    OUTLINED_FUNCTION_24_16();
    v43();
    (v43)(v59, v39);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    v57 = v29;
    swift_setDeallocating();
    sub_1CA32E40C();
    *(swift_allocObject() + 16) = v51;
    OUTLINED_FUNCTION_49_6();
    v53();
    OUTLINED_FUNCTION_124_5();
    OUTLINED_FUNCTION_84_1();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    *&v51 = v56 + 2 * v55;
    v44 = v54;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1CA97EDF0;
    v46 = v53;
    (v53)(v45 + v38, v61, v62);
    (v46)(v45 + v38 + v44, v59, v62);
    OUTLINED_FUNCTION_139_5();
    OUTLINED_FUNCTION_84_1();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v47 = OUTLINED_FUNCTION_7_34();
    v41(v47);
    v48 = OUTLINED_FUNCTION_176();
    v41(v48);
  }

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_107();
}

void static WFAlarmTrigger.toolkitParameters(context:)()
{
  OUTLINED_FUNCTION_108();
  v1 = sub_1CA94AD08();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v9 = (v8 - v7);
  v27 = sub_1CA94AD48();
  OUTLINED_FUNCTION_4_12();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_97_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  OUTLINED_FUNCTION_30();
  v15 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v15);
  v31 = *(v16 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v32 = OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_134_4(v32, xmmword_1CA97EDF0);
  OUTLINED_FUNCTION_53_10();
  sub_1CA583310();
  v30 = *MEMORY[0x1E69DAF80];
  v19 = *(v11 + 104);
  v19(v0);
  sub_1CA94ADC8();
  v20 = swift_allocBox();
  sub_1CA94AD38();
  *v9 = v20;
  v29 = *MEMORY[0x1E69DAF30];
  v28 = *(v4 + 104);
  v28(v9);
  v21 = v18;
  OUTLINED_FUNCTION_151_4(v9, 0x7079546D72616C61, v18);
  v22 = *(v4 + 8);
  v22(v9, v1);
  v23 = *(v11 + 8);
  v23(v0, v27);
  OUTLINED_FUNCTION_10_27();
  sub_1CA583310();
  (v19)(v0, v30, v27);
  v24 = swift_allocBox();
  sub_1CA94AD38();
  *v9 = v24;
  (v28)(v9, v29, v1);
  sub_1CA57ABD8(v9, 0x6174536D72616C61, 0xEA00000000006574, v21 + v31);
  v25 = OUTLINED_FUNCTION_130();
  (v22)(v25);
  v26 = OUTLINED_FUNCTION_135_2();
  (v23)(v26);
  OUTLINED_FUNCTION_107();
}

__n128 *static WFAlarmTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  v1 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_134_4(v6, xmmword_1CA9813C0);
  OUTLINED_FUNCTION_53_10();
  sub_1CA583310();
  v7 = *MEMORY[0x1E69DAF80];
  v8 = *(v3 + 104);
  v9 = OUTLINED_FUNCTION_90_5();
  v8(v9);
  OUTLINED_FUNCTION_10_27();
  sub_1CA583310();
  (v8)(v0 + v5, v7, v1);
  OUTLINED_FUNCTION_46_8();
  v10 = OUTLINED_FUNCTION_52_9();
  sub_1CA57FEF8(v10, v11, v12);
  (v8)(v0 + 2 * v5, *MEMORY[0x1E69DAF98], v1);
  return v6;
}

Swift::Void __swiftcall WFAlarmTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  countAndFlagsBits = withIdentifierSuffix._countAndFlagsBits;
  v5 = withIdentifierSuffix._countAndFlagsBits == OUTLINED_FUNCTION_145_2() && v3 == v4;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v7 = 0;
LABEL_7:

    [v1 setAlarmType_];
    return;
  }

  v8 = countAndFlagsBits == OUTLINED_FUNCTION_124_5() && v6 == 0xED00006D72616C61;
  if (v8 || (OUTLINED_FUNCTION_13_29() & 1) != 0)
  {
    v7 = 2;
    goto LABEL_7;
  }

  v9 = countAndFlagsBits == OUTLINED_FUNCTION_139_5() && v6 == 0xED00006D72616C61;
  if (v9 || (OUTLINED_FUNCTION_13_29() & 1) != 0)
  {
    v7 = 1;
    goto LABEL_7;
  }
}

uint64_t static WFAlarmTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_9_29();
  v2 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v3 = sub_1CA94AF78();
  sub_1CA578AE4(v3, v4, &qword_1EC4466A8, off_1E836DDF8, WFAlarmTrigger.updateVariant(withIdentifierSuffix:));
  if (v0)
  {

    return OUTLINED_FUNCTION_44_8();
  }

  OUTLINED_FUNCTION_57_7();

  sub_1CA579AE8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = v5 == 0x676E69726966 && v6 == 0xE600000000000000;
    if (v9 || (OUTLINED_FUNCTION_109_3() & 1) != 0)
    {
      v10 = 0;
    }

    else
    {
      v21 = v7 == 0x64657A6F6F6E73 && v8 == 0xE700000000000000;
      if (v21 || (OUTLINED_FUNCTION_109_3() & 1) != 0)
      {
        v10 = 1;
      }

      else
      {
        if (v7 != 0x646570706F7473 || v8 != 0xE700000000000000)
        {
          v23 = OUTLINED_FUNCTION_109_3();

          if ((v23 & 1) == 0)
          {
            goto LABEL_12;
          }

          v10 = 2;
          goto LABEL_11;
        }

        v10 = 2;
      }
    }

LABEL_11:
    [v1 setAlarmState_];
  }

LABEL_12:
  v11 = [v1 serializedData];
  if (v11)
  {
    sub_1CA948C08();
    OUTLINED_FUNCTION_63_8();

    OUTLINED_FUNCTION_72_0();
    v11 = sub_1CA948BF8();
    v12 = OUTLINED_FUNCTION_72_0();
    sub_1CA266F2C(v12, v13);
  }

  v14 = OUTLINED_FUNCTION_50_6();
  [v14 v15];

  v16 = OUTLINED_FUNCTION_152_3();
  v17 = OUTLINED_FUNCTION_93_4(v16, sel_setShouldPrompt_);
  v18 = OUTLINED_FUNCTION_65_5(v17, sel_setShouldNotify_);
  v19 = OUTLINED_FUNCTION_65_5(v18, sel_setEnabled_);
  OUTLINED_FUNCTION_95_6(v19, sel_setSource_);

  return OUTLINED_FUNCTION_44_8();
}

void static WFWalletTransactionTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v1 = sub_1CA94AD48();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_102_3();
  v7 = sub_1CA94AF88();
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 72);
  OUTLINED_FUNCTION_45_9();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1CA981310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v10 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v10);
  v42 = *(v11 + 72);
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_22_17();
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  v14 = OUTLINED_FUNCTION_23_15();
  sub_1CA57FEF8(v14, v15, v16);
  v17 = *MEMORY[0x1E69DAF98];
  v18 = v4;
  v19 = *(v4 + 104);
  v20 = OUTLINED_FUNCTION_86_3();
  v19(v20);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(v21, v22, v23);
  v41 = *(v18 + 8);
  v24 = OUTLINED_FUNCTION_195();
  v25(v24);
  v26 = OUTLINED_FUNCTION_23_15();
  sub_1CA57FEF8(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_86_3();
  v19(v29);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(0xD000000000000011, v30, v31);
  v32 = OUTLINED_FUNCTION_195();
  v41(v32);
  v33 = OUTLINED_FUNCTION_23_15();
  sub_1CA57FEF8(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_86_3();
  v19(v36);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_195();
  v41(v40);
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    *(v43 + 16) = 0;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

void static WFWalletTransactionTrigger.toolkitTypes(context:)()
{
  OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  v1 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_134_4(v6, xmmword_1CA9813C0);
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v7, v8, v9);
  v10 = *MEMORY[0x1E69DAF98];
  v11 = *(v3 + 104);
  v12 = OUTLINED_FUNCTION_90_5();
  v11(v12);
  v13 = OUTLINED_FUNCTION_52_9();
  sub_1CA57FEF8(v13, v14, v15);
  (v11)(v0 + v5, v10, v1);
  v16 = OUTLINED_FUNCTION_52_9();
  sub_1CA57FEF8(v16, v17, v18);
  v19 = OUTLINED_FUNCTION_90_5();
  v11(v19);
  OUTLINED_FUNCTION_36();
}

void sub_1CA5863D4()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v10 = sub_1CA94AF78();
  sub_1CA578CD0(v10, v11, v6, v4);
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_57_7();

    v12 = [v6 serializedData];
    if (v12)
    {
      sub_1CA948C08();

      OUTLINED_FUNCTION_177();
      v12 = sub_1CA948BF8();
      v13 = OUTLINED_FUNCTION_177();
      sub_1CA266F2C(v13, v14);
    }

    v15 = OUTLINED_FUNCTION_50_6();
    [v15 v16];

    v17 = v2(v8);
    v18 = OUTLINED_FUNCTION_93_4(v17, sel_setShouldPrompt_);
    v19 = OUTLINED_FUNCTION_65_5(v18, sel_setShouldNotify_);
    v20 = OUTLINED_FUNCTION_65_5(v19, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v20, sel_setSource_);
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

void static WFUserFocusActivityTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_116_4(v3);
  v4 = sub_1CA94AD48();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_37_10();
  v43 = sub_1CA94B258();
  v10 = *(v43 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6_0();
  v15 = v14 - v13;
  sub_1CA57FEF8(v0, 0x7375636F46, 0xE500000000000000);
  v16 = *MEMORY[0x1E69DAF98];
  v17 = *(v7 + 104);
  v18 = OUTLINED_FUNCTION_121_3();
  v19(v18);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(v20, 0xE900000000000065, v21);
  (*(v7 + 8))(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_102_3();
  v40 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v40);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v42 = *(v22 + 72);
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v41 = *(v10 + 72);
  v26 = swift_allocObject();
  v27 = OUTLINED_FUNCTION_140_4(v26, xmmword_1CA981310);
  (*(v11 + 16))(v27 + v25, v15, v43);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_78_7();
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v1)
  {
    v28 = *(v11 + 8);
    v29 = OUTLINED_FUNCTION_30_16();
    v30(v29);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    OUTLINED_FUNCTION_89_2();
    v31 = swift_allocObject();
    v32 = OUTLINED_FUNCTION_5_37(v31);
    v33(v32);
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_78_7();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    OUTLINED_FUNCTION_89_2();
    v34 = swift_allocObject();
    v35 = OUTLINED_FUNCTION_5_37(v34);
    v36(v35);
    OUTLINED_FUNCTION_8_26();
    OUTLINED_FUNCTION_78_7();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v37 = *(v11 + 8);
    v38 = OUTLINED_FUNCTION_30_16();
    v39(v38);
  }

  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_107();
}

uint64_t static WFUserFocusActivityTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  OUTLINED_FUNCTION_30();
  v1 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_14_24();
  *(v4 + 16) = xmmword_1CA981310;
  sub_1CA57FEF8(v0, 0x7375636F46, 0xE500000000000000);
  v5 = *MEMORY[0x1E69DAF98];
  v6 = OUTLINED_FUNCTION_39_9();
  v7(v6);
  return v4;
}

uint64_t _sSo12WFDNDTriggerC11WorkflowKitE13updateVariant20withIdentifierSuffixySS_tF_0(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 28271 && a2 == 0xE200000000000000;
  if (v2 || (OUTLINED_FUNCTION_104_4(), (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v5 = &selRef_setOnEnable_;
LABEL_19:
    v11 = OUTLINED_FUNCTION_17_17(v5);

    return [v11 v12];
  }

  v6 = a1 == 6710895 && a2 == 0xE300000000000000;
  if (v6 || (OUTLINED_FUNCTION_41_11(), (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
LABEL_18:
    v5 = &selRef_setOnDisable_;
    goto LABEL_19;
  }

  v7 = a1 == OUTLINED_FUNCTION_8_26() && a2 == 0xE600000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_13_29(), (result & 1) != 0))
  {
    v9 = OUTLINED_FUNCTION_32_12();
    [v9 v10];
    goto LABEL_18;
  }

  return result;
}

uint64_t WFUserFocusActivityTrigger.resolveParameter(withKey:searchTerm:)()
{
  OUTLINED_FUNCTION_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[4] = v5;
  v1[9] = swift_getObjectType();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA586C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v15 = *(v14 + 32) == 0x646F4D7375636F66 && *(v14 + 40) == 0xE900000000000065;
  if (v15 || (sub_1CA94D7F8() & 1) != 0)
  {
    v16 = *(v14 + 72);
    v18 = *(v14 + 48);
    v17 = *(v14 + 56);
    HIBYTE(a10) = 8;
    *(v14 + 24) = WFTriggerCategory.triggers()();
    *(swift_task_alloc() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443FA0, &qword_1CA9825F0);
    sub_1CA25C3BC(&qword_1EC446748, &qword_1EC443FA0, &qword_1CA9825F0);
    v19 = sub_1CA94C5B8();

    *(v14 + 24) = v19;
    v20 = swift_task_alloc();
    v20[2] = v18;
    v20[3] = v17;
    v20[4] = v16;
    sub_1CA94C758();
    OUTLINED_FUNCTION_130();
    swift_getWitnessTable();
    sub_1CA94C5F8();

    v21 = *(v14 + 16);
    if (v21)
    {
      v22 = [*(v14 + 16) activitySemanticIdentifier];
      if (!v22)
      {
        sub_1CA94C3A8();
        sub_1CA94C368();
        OUTLINED_FUNCTION_111_5();
      }

      [*(v14 + 64) setActivitySemanticIdentifier_];

      v23 = [v21 activityGlyphName];
      if (!v23)
      {
        sub_1CA94C3A8();
        sub_1CA94C368();
        OUTLINED_FUNCTION_111_5();
      }

      [*(v14 + 64) setActivityGlyphName_];

      v24 = [v21 activityName];
      if (!v24)
      {
        sub_1CA94C3A8();
        sub_1CA94C368();
        OUTLINED_FUNCTION_111_5();
      }

      v25 = *(v14 + 64);
      v26 = OUTLINED_FUNCTION_76_5();
      [v26 v27];

      v28 = [v21 activityTintColor];
      v29 = OUTLINED_FUNCTION_76_5();
      [v29 v30];

      v31 = [v21 activityUniqueIdentifier];
      if (!v31)
      {
        sub_1CA94C3A8();
        sub_1CA94C368();
        OUTLINED_FUNCTION_111_5();
      }

      [*(v14 + 64) setActivityUniqueIdentifier_];
    }
  }

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

id sub_1CA586F24@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_dynamicCastUnknownClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1CA586F70(id *a1)
{
  v1 = [*a1 activityName];
  sub_1CA94C3A8();

  sub_1CA27BAF0();
  v2 = sub_1CA94D208();

  return v2 & 1;
}

uint64_t sub_1CA587050()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C99BC;

  return WFUserFocusActivityTrigger.resolveParameter(withKey:searchTerm:)();
}

void static WFTimeOfDayTrigger.toolkitTriggerDefinitions(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  a19 = v22;
  a20 = v23;
  v221 = v21;
  a10 = v20;
  v225 = v24;
  v226 = sub_1CA94AD08();
  v25 = OUTLINED_FUNCTION_1_0(v226);
  v228 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6_0();
  v31 = (v30 - v29);
  v32 = sub_1CA94AD48();
  v223 = v32;
  OUTLINED_FUNCTION_4_12();
  v34 = v33;
  v227 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6_0();
  v40 = v39 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  v213 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v213);
  v212 = v42;
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v214 = *(v41 + 72);
  v44 = OUTLINED_FUNCTION_107_3();
  *(v44 + 16) = xmmword_1CA981380;
  v222 = v44;
  v224 = v44 + v43;
  v220 = "selectedMerchantTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  OUTLINED_FUNCTION_40();
  v45 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v45);
  v47 = *(v46 + 72);
  v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v215[1] = v43;
  v50 = swift_allocObject();
  v219 = v50;
  *(v50 + 16) = xmmword_1CA97EDF0;
  v215[0] = v49;
  v51 = v50 + v49;
  OUTLINED_FUNCTION_15_19();
  v208 = *MEMORY[0x1E69DAF80];
  (*(v34 + 104))(v40);
  v210 = sub_1CA94ADC8();
  swift_allocBox();
  OUTLINED_FUNCTION_99_4();
  sub_1CA94AD38();
  *v31 = v32;
  v209 = *MEMORY[0x1E69DAF30];
  v211 = *(v228 + 104);
  v211(v31);
  OUTLINED_FUNCTION_67_7(v31, v51);
  v52 = *(v228 + 8);
  v52(v31, v226);
  v53 = *(v227 + 8);
  v227 += 8;
  v207 = v53;
  (v53)(v40, v223);
  sub_1CA587F18(MEMORY[0x1E69DB188], v54, v55, v56, v57, v58, v59, v60, v166, v173, v180, v188);
  v218 = v47;
  OUTLINED_FUNCTION_66_5(v31, v51 + v47);
  v216 = v31;
  v217 = v52;
  v228 += 8;
  v52(v31, v226);
  v61 = v224;
  OUTLINED_FUNCTION_81_6();
  v62 = v225;
  sub_1CA578170();
  if (v221)
  {
    swift_setDeallocating();
    sub_1CA32E40C();
  }

  else
  {
    swift_setDeallocating();
    sub_1CA32E40C();
    v63 = v215[0];
    OUTLINED_FUNCTION_47_11();
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1CA981310;
    sub_1CA587F18(MEMORY[0x1E69DB188], v65, v66, v67, v68, v69, v70, v71, v167, v174, v181, v189);
    OUTLINED_FUNCTION_110_4(v216, v64 + v63);
    v217(v216, v226);
    OUTLINED_FUNCTION_138_5();
    sub_1CA578170();
    v206 = 2 * v218;
    swift_setDeallocating();
    sub_1CA32E40C();
    v219 = v61 + 2 * v214;
    v72 = v215[0];
    OUTLINED_FUNCTION_47_11();
    v190 = v73;
    v204 = swift_allocObject();
    *(v204 + 16) = xmmword_1CA9813C0;
    v220 = v204 + v72;
    v221 = 0;
    v74 = v226;
    v201 = swift_allocBox();
    v76 = v75;
    swift_allocBox();
    OUTLINED_FUNCTION_194();
    v77 = sub_1CA94AD98();
    v78 = swift_allocBox();
    v79 = *MEMORY[0x1E69DB050];
    OUTLINED_FUNCTION_39(v77);
    v199 = v81;
    v200 = v77;
    v198 = *(v80 + 104);
    v198();
    *v62 = v78;
    v82 = *MEMORY[0x1E69DB0B0];
    OUTLINED_FUNCTION_39(v210);
    v197 = v84;
    v196 = *(v83 + 104);
    v196(v62);
    *v76 = v64;
    (v211)(v76, v209, v74);
    v85 = v216;
    *v216 = v201;
    v202 = *MEMORY[0x1E69DAF18];
    v211(v85);
    sub_1CA57ABD8(v85, 1937334628, 0xE400000000000000, v220);
    v86 = OUTLINED_FUNCTION_177();
    (v217)(v86);
    OUTLINED_FUNCTION_15_19();
    OUTLINED_FUNCTION_133_3();
    v87();
    swift_allocBox();
    OUTLINED_FUNCTION_99_4();
    sub_1CA94AD38();
    *v85 = v76;
    (v211)(v85, v209, v74);
    OUTLINED_FUNCTION_67_7(v85, v220 + v218);
    v88 = OUTLINED_FUNCTION_177();
    (v217)(v88);
    v89 = OUTLINED_FUNCTION_119();
    v207(v89);
    sub_1CA587F18(MEMORY[0x1E69DB188], v90, v91, v92, v93, v94, v95, v96, 3, 6, v182, v190);
    OUTLINED_FUNCTION_66_5(v85, v220 + v206);
    v97 = OUTLINED_FUNCTION_177();
    (v217)(v97);
    OUTLINED_FUNCTION_138_5();
    sub_1CA578170();
    if (v221)
    {
      swift_setDeallocating();
      sub_1CA32E40C();
      v98 = v213;
      v99 = *(v212 + 8);
      v100 = v224;
      v99(v224 + v214, v213);
    }

    else
    {
      swift_setDeallocating();
      sub_1CA32E40C();
      v220 = 3 * v214;
      OUTLINED_FUNCTION_38_10();
      v101 = swift_allocObject();
      OUTLINED_FUNCTION_42_8(v101, &a9);
      v104 = v102 + v103;
      v221 = 0;
      v105 = v226;
      v106 = swift_allocBox();
      v108 = v107;
      v205 = swift_allocBox();
      v110 = v109;
      v111 = swift_allocBox();
      (v198)(v112, v199, v200);
      *v110 = v111;
      (v196)(v110, v197, v210);
      *v108 = v205;
      (v211)(v108, v209, v105);
      v113 = v216;
      *v216 = v106;
      (v211)(v113, v202, v105);
      sub_1CA57ABD8(v113, 1937334628, 0xE400000000000000, v104);
      v217(v113, v105);
      sub_1CA587F18(MEMORY[0x1E69DB188], v114, v115, v116, v117, v118, v119, v120, v168, v175, v183, v191);
      OUTLINED_FUNCTION_110_4(v113, v104 + v218);
      v217(v113, v105);
      OUTLINED_FUNCTION_138_5();
      v100 = v224;
      sub_1CA578170();
      if (v221)
      {
        swift_setDeallocating();
        sub_1CA32E40C();
        v98 = v213;
        v99 = *(v212 + 8);
        v99(v219, v213);
      }

      else
      {
        swift_setDeallocating();
        sub_1CA32E40C();
        OUTLINED_FUNCTION_38_10();
        v121 = swift_allocObject();
        OUTLINED_FUNCTION_42_8(v121, v215);
        v124 = v122 + v123;
        v203 = v122 + v123;
        v125 = v216;
        sub_1CA587F18(MEMORY[0x1E69DB180], v126, v127, v128, v129, v130, v131, v132, v169, v176, v184, v192);
        OUTLINED_FUNCTION_151_4(v125, 0x7461447472617473, v124);
        v221 = 0;
        v133 = v226;
        v134 = v217;
        v217(v125, v226);
        OUTLINED_FUNCTION_15_19();
        OUTLINED_FUNCTION_133_3();
        v135();
        swift_allocBox();
        OUTLINED_FUNCTION_99_4();
        sub_1CA94AD38();
        *v125 = v100;
        (v211)(v125, v209, v133);
        OUTLINED_FUNCTION_67_7(v125, v203 + v218);
        v134(v125, v133);
        v136 = OUTLINED_FUNCTION_135_2();
        v207(v136);
        sub_1CA587F18(MEMORY[0x1E69DB188], v137, v138, v139, v140, v141, v142, v143, v170, v177, v185, v193);
        OUTLINED_FUNCTION_66_5(v125, v203 + v206);
        v134(v125, v133);
        OUTLINED_FUNCTION_138_5();
        v144 = v221;
        sub_1CA578170();
        if (!v144)
        {
          swift_setDeallocating();
          sub_1CA32E40C();
          v227 = 5 * v214;
          OUTLINED_FUNCTION_38_10();
          v145 = swift_allocObject();
          OUTLINED_FUNCTION_42_8(v145, &a9);
          v148 = v146 + v147;
          v149 = v216;
          sub_1CA587F18(MEMORY[0x1E69DB180], v150, v151, v152, v153, v154, v155, v156, v171, v178, v186, v194);
          OUTLINED_FUNCTION_151_4(v149, 0x7461447472617473, v148);
          v157 = v226;
          v158 = v217;
          v217(v149, v226);
          sub_1CA587F18(MEMORY[0x1E69DB188], v159, v160, v161, v162, v163, v164, v165, v172, v179, v187, v195);
          OUTLINED_FUNCTION_110_4(v149, v148 + v218);
          v158(v149, v157);
          OUTLINED_FUNCTION_81_6();
          sub_1CA578170();
          swift_setDeallocating();
          sub_1CA32E40C();
          goto LABEL_12;
        }

        swift_setDeallocating();
        sub_1CA32E40C();
        v98 = v213;
        v99 = *(v212 + 8);
        v100 = v224;
        v99(v224 + v220, v213);
        v99(v219, v213);
      }

      v99(v100 + v214, v98);
    }

    v99(v100, v98);
  }

  OUTLINED_FUNCTION_69_8();
LABEL_12:
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA587F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445FD0, &qword_1CA989E10);
  v18 = swift_allocBox();
  v20 = v19;
  v21 = *(v17 + 48);
  v22 = sub_1CA94AD98();
  v23 = swift_allocBox();
  v24 = *MEMORY[0x1E69DAFF0];
  OUTLINED_FUNCTION_39(v22);
  (*(v25 + 104))();
  *v20 = v23;
  v26 = *MEMORY[0x1E69DB0B0];
  v27 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_0_1(v27);
  (*(v28 + 104))(v20, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439B0, qword_1CA98AD80);
  v29 = sub_1CA94B008();
  OUTLINED_FUNCTION_1_0(v29);
  v31 = v30;
  v33 = *(v32 + 72);
  v34 = *(v30 + 80);
  v35 = OUTLINED_FUNCTION_149_2();
  *(v35 + 16) = xmmword_1CA981310;
  v36 = *v14;
  v37 = sub_1CA94AFE8();
  OUTLINED_FUNCTION_0_1(v37);
  (*(v38 + 104))(v35 + v12, v36);
  (*(v31 + 104))(v35 + v12, *MEMORY[0x1E69DB148], v29);
  *(v20 + v21) = v35;
  *v16 = v18;
  v39 = *MEMORY[0x1E69DAF20];
  v40 = sub_1CA94AD08();
  OUTLINED_FUNCTION_39(v40);
  v42 = *(v41 + 104);
  OUTLINED_FUNCTION_36();

  return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

Swift::Void __swiftcall WFTimeOfDayTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  object = withIdentifierSuffix._object;
  OUTLINED_FUNCTION_55();
  v5 = v3 == 0xD000000000000016 && v4 == object;
  if (v5 || (v6 = v3, OUTLINED_FUNCTION_81_6(), (OUTLINED_FUNCTION_13_29() & 1) != 0) || ((OUTLINED_FUNCTION_55(), v6 == 0xD000000000000014) ? (v8 = v7 == object) : (v8 = 0), v8 || (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v9 = 0;
LABEL_12:

    [v1 setMode_];
    return;
  }

  OUTLINED_FUNCTION_55();
  v11 = v6 == 0xD000000000000017 && v10 == object;
  if (!v11 && (OUTLINED_FUNCTION_13_29() & 1) == 0)
  {
    OUTLINED_FUNCTION_55();
    v13 = v6 == 0xD000000000000015 && v12 == object;
    if (!v13 && (OUTLINED_FUNCTION_13_29() & 1) == 0)
    {
      OUTLINED_FUNCTION_55();
      v15 = v6 == 0xD000000000000018 && v14 == object;
      if (v15 || (OUTLINED_FUNCTION_13_29() & 1) != 0 || ((OUTLINED_FUNCTION_55(), v6 == 0xD000000000000016) ? (v17 = v16 == object) : (v17 = 0), v17 || (OUTLINED_FUNCTION_81_6(), (OUTLINED_FUNCTION_13_29() & 1) != 0)))
      {
        v9 = 1;
        goto LABEL_12;
      }
    }
  }
}

void sub_1CA5882BC()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v12 = sub_1CA94AF78();
  sub_1CA578AE4(v12, v13, v8, v6, v4);
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_57_7();

    v14 = [v6 serializedData];
    if (v14)
    {
      sub_1CA948C08();

      OUTLINED_FUNCTION_177();
      v14 = sub_1CA948BF8();
      v15 = OUTLINED_FUNCTION_177();
      sub_1CA266F2C(v15, v16);
    }

    v17 = OUTLINED_FUNCTION_50_6();
    [v17 v18];

    v19 = v2(v10);
    v20 = OUTLINED_FUNCTION_93_4(v19, sel_setShouldPrompt_);
    v21 = OUTLINED_FUNCTION_65_5(v20, sel_setShouldNotify_);
    v22 = OUTLINED_FUNCTION_65_5(v21, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v22, sel_setSource_);
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA588438@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_123();
  v6 = swift_allocObject();
  v7 = *MEMORY[0x1E69E0FB0];
  v6[2] = sub_1CA94C3A8();
  v6[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CA97EDF0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = NSStringFromClass(ObjCClassFromMetadata);
  v12 = sub_1CA94C3A8();
  v14 = v13;

  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  OUTLINED_FUNCTION_33_12();
  sub_1CA25C3BC(v15, &qword_1EC443E20, &qword_1CA986220);
  v16 = sub_1CA94C308();
  v18 = v17;

  v6[4] = v16;
  v6[5] = v18;
  *a3 = v6;
  v19 = *MEMORY[0x1E69DB098];
  v20 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_0_1(v20);
  return (*(v21 + 104))(a3, v19);
}

uint64_t sub_1CA5885BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = *MEMORY[0x1E69E0FB0];
  v6[2] = sub_1CA94C3A8();
  v6[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CA97EDF0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = NSStringFromClass(ObjCClassFromMetadata);
  v12 = sub_1CA94C3A8();
  v14 = v13;

  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA25C3BC(&qword_1EC441B20, &qword_1EC443E20, &qword_1CA986220);
  v15 = sub_1CA94C308();
  v17 = v16;

  v6[4] = v15;
  v6[5] = v17;
  *a3 = v6;
  v18 = *MEMORY[0x1E69DB098];
  v19 = sub_1CA94ADC8();
  return (*(*(v19 - 8) + 104))(a3, v18, v19);
}

uint64_t sub_1CA588760@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v36 = a3;
  v30 = sub_1CA94AFB8();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445FD0, &qword_1CA989E10);
  v8 = swift_allocBox();
  v31 = v9;
  v34 = *(v7 + 48);
  v35 = v8;
  sub_1CA94AD38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439B0, qword_1CA98AD80);
  v10 = sub_1CA94B008();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CA981310;
  v15 = v14 + v13;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4462F0, &qword_1CA989EB0) + 48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(ObjCClassFromMetadata);
  v19 = sub_1CA94C3A8();
  v21 = v20;

  *v6 = v19;
  v6[1] = v21;
  v22 = v33;
  v6[2] = v32;
  v6[3] = v22;
  (*(v3 + 104))(v6, *MEMORY[0x1E69DB168], v30);
  v23 = *MEMORY[0x1E69E0FB0];
  sub_1CA94C3A8();
  sub_1CA94C218();
  sub_1CA94AFC8();
  sub_1CA94AE38();
  (*(v11 + 104))(v15, *MEMORY[0x1E69DB1C0], v10);
  v24 = v35;
  *(v31 + v34) = v14;
  v25 = v36;
  *v36 = v24;
  v26 = *MEMORY[0x1E69DAF20];
  v27 = sub_1CA94AD08();
  return (*(*(v27 - 8) + 104))(v25, v26, v27);
}

uint64_t sub_1CA588A20(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CA57C3F0(a1);
}

uint64_t sub_1CA588A28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA588A78(void *a1)
{
  v1 = [a1 metadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C1C8();

  return v3;
}

void sub_1CA588B04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();
  [a3 setSearchString_];
}

id sub_1CA588B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C648();
  v6 = [a3 accountsWithAccountTypeIdentifiers:v5 error:a2];

  return v6;
}

void sub_1CA588BC4(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_1CA94C648();

  [a2 *a3];
}

uint64_t _s14AddressFetcherCMa()
{
  result = qword_1EC4467E0;
  if (!qword_1EC4467E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA588C84@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_1CA584EC4(a1, a2, v3[4], a3);
}

uint64_t sub_1CA588CAC(id *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1CA586F70(a1) & 1;
}

unint64_t sub_1CA588CD4()
{
  result = qword_1EC446750;
  if (!qword_1EC446750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446750);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriggerConfigurationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of ToolKitRepresentableTrigger.resolveParameter(withKey:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 48);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1CA2C756C;
  v10 = OUTLINED_FUNCTION_204();

  return v12(v10);
}

uint64_t _s22ToolKitConversionErrorOwet_0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t _s22ToolKitConversionErrorOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1CA5890A4()
{
  sub_1CA589154();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1CA589154()
{
  if (!qword_1EC4467F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4467F8, &qword_1CA98BEA8);
    v0 = sub_1CA94D098();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4467F0);
    }
  }
}

uint64_t sub_1CA5891B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA589228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA589298()
{
  result = qword_1EC446890;
  if (!qword_1EC446890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446890);
  }

  return result;
}

unint64_t sub_1CA5892EC()
{
  result = qword_1EC4468B8;
  if (!qword_1EC4468B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4468B8);
  }

  return result;
}

uint64_t sub_1CA589348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_88_2()
{
  result = *(v0 - 104);
  v2 = *(*(v0 - 112) + 8);
  v3 = *(v0 - 72);
  return result;
}

id OUTLINED_FUNCTION_93_4(char a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_107_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_111_5()
{
}

uint64_t OUTLINED_FUNCTION_120_5()
{
  v1 = *(*(v0 - 232) + 8);
  result = *(v0 - 112);
  v3 = *(v0 - 104);
  return result;
}

char *OUTLINED_FUNCTION_135_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  result = a1 + v2;
  v5 = *(v3 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_152_3()
{

  return sub_1CA294A78();
}

id sub_1CA589650()
{
  v123 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9CF530;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v129 = v12;
  v130 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v117 - v130;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v128 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v126 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v127 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v117 - v127;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v124 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v122 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v27 = sub_1CA94C438();
  v119 = v28;
  v120 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v121 = &v117;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v117 - v130;
  sub_1CA948D98();
  v33 = v128;
  v34 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v125 = inited;
  v35 = v127;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v120, v119, v29, v31, 0, 0, v32, &v117 - v35);
  v37 = v124;
  *(v24 + 64) = v124;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v119 = v40;
  v120 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v121 = &v117;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v117 - v130;
  sub_1CA948D98();
  v45 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v120, v119, v41, v43, 0, 0, v44, &v117 - v35);
  *(v24 + 104) = v37;
  *(v24 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v48 = v122;
  v49 = sub_1CA6B3784();
  v50 = v125;
  v125[20] = v49;
  v50[23] = v48;
  v50[24] = @"LocallyProcessesData";
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 200) = 1;
  v50[28] = v51;
  v50[29] = @"Name";
  v52 = @"LocallyProcessesData";
  v53 = @"Name";
  v54 = sub_1CA94C438();
  v56 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  v122 = &v117;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v117 - v130;
  sub_1CA948D98();
  v61 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v117 - v127;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  v65 = v125;
  v125[30] = v64;
  v65[33] = v124;
  v65[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_1CA981350;
  *(v66 + 32) = 0x75736F6C63736944;
  *(v66 + 40) = 0xEF6C6576654C6572;
  *(v66 + 48) = 0x63696C627550;
  *(v66 + 56) = 0xE600000000000000;
  *(v66 + 72) = MEMORY[0x1E69E6158];
  *(v66 + 80) = 0x656C7069746C754DLL;
  *(v66 + 88) = 0xE800000000000000;
  *(v66 + 96) = 1;
  *(v66 + 120) = MEMORY[0x1E69E6370];
  *(v66 + 128) = 0x614E74757074754FLL;
  *(v66 + 136) = 0xEA0000000000656DLL;
  v67 = @"Output";
  v68 = sub_1CA94C438();
  v121 = v69;
  v70 = sub_1CA94C438();
  v72 = v71;
  v122 = &v117;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v117 - v130;
  sub_1CA948D98();
  v74 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v117 - v127;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 144) = sub_1CA2F9F14(v68, v121, v70, v72, 0, 0, v73, v75);
  *(v66 + 168) = v124;
  *(v66 + 176) = 0x7365707954;
  *(v66 + 184) = 0xE500000000000000;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v66 + 216) = v122;
  *(v66 + 192) = &unk_1F4A073F8;
  v77 = MEMORY[0x1E69E6158];
  v78 = sub_1CA94C1E8();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v80 = v125;
  v125[35] = v78;
  v80[38] = v79;
  v80[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v121 = swift_allocObject();
  *(v121 + 1) = xmmword_1CA9813B0;
  v120 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_1CA9813C0;
  *(v81 + 32) = @"Class";
  *(v81 + 40) = 0xD00000000000001FLL;
  *(v81 + 48) = 0x80000001CA9CF680;
  *(v81 + 64) = v77;
  *(v81 + 72) = @"Key";
  *(v81 + 80) = 0x7265646C6F46;
  *(v81 + 88) = 0xE600000000000000;
  *(v81 + 104) = v77;
  *(v81 + 112) = @"Label";
  v82 = @"Parameters";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = sub_1CA94C438();
  v118 = v87;
  v88 = sub_1CA94C438();
  v90 = v89;
  v119 = &v117;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v117 - v130;
  sub_1CA948D98();
  v92 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v117 - v127;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v86, v118, v88, v90, 0, 0, v91, v93);
  *(v81 + 144) = v124;
  *(v81 + 120) = v95;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v96 = sub_1CA2F864C();
  v97 = v121;
  v121[4] = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v99 = v125;
  v125[40] = v97;
  v99[43] = v98;
  v99[44] = @"ParameterSummary";
  v100 = @"ParameterSummary";
  v101 = sub_1CA94C438();
  v103 = v102;
  v104 = sub_1CA94C438();
  v106 = v105;
  v124 = &v117;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v117 - v130;
  sub_1CA948D98();
  v108 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v117 - v127;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v101, v103, v104, v106, 0, 0, v107, v109);
  v112 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v113 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v114 = v125;
  v125[45] = v112;
  v114[48] = v113;
  v114[49] = @"RequiredResources";
  v114[53] = v122;
  v114[50] = &unk_1F4A07428;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v115 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA58A43C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3;
    sub_1CA25C3BC(&qword_1EC441BC8, &unk_1EC443950, &unk_1CA982580);
    if (sub_1CA94C358())
    {
      break;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_1CA58A568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1CA94D7F8() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

void sub_1CA58A5F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CA25B410();
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1CA3A2F84();
    v7 = sub_1CA94CFD8();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_1CA58A6D0(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1CA58A714(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA627894(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1CA58D30C(v6);
  *a1 = v2;
  return result;
}

Swift::Void __swiftcall WFWorkflowRecord.importLocalizedStrings(table:bundle:)(Swift::String table, NSBundle bundle)
{
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v2 actions];
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444050, &unk_1CA9842E0);
  sub_1CA94C658();

  sub_1CA3611E0();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
  v7 = sub_1CA94C648();

  v8 = [objc_opt_self() sharedRegistry];
  v9 = [v4 actionsFromSerializedRepresentations:v7 actionRegistry:v8];

  v196 = v9;
  if (!v9)
  {
    sub_1CA3A2F84();
    sub_1CA94C658();
    v196 = sub_1CA94C648();
  }

  sub_1CA3A2F84();
  v10 = sub_1CA94C658();
  v218 = v3;
  v11 = [v3 importQuestions];
  v12 = sub_1CA94C658();

  v13 = 0;
  v189 = MEMORY[0x1E69E7CC0];
  v233 = MEMORY[0x1E69E7CC0];
  v14 = *(v12 + 16);
LABEL_4:
  v15 = v13;
  while (v14 != v15)
  {
    if (v15 >= *(v12 + 16))
    {
      goto LABEL_110;
    }

    v13 = v15 + 1;
    v16 = *(v12 + 8 * v15 + 32);
    objc_allocWithZone(WFWorkflowImportQuestion);
    sub_1CA94C218();
    sub_1CA94C218();
    v17 = sub_1CA58D1CC();
    v15 = v13;
    if (v17)
    {
      MEMORY[0x1CCAA1490]();
      v18 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v233 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v18 >> 1)
      {
        OUTLINED_FUNCTION_64(v18);
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v189 = v233;
      goto LABEL_4;
    }
  }

  v204 = v6;

  v19 = sub_1CA25B410();
  v20 = 0;
  v21 = v189 & 0xC000000000000001;
  v22 = v189 & 0xFFFFFFFFFFFFFF8;
  v23 = v189 + 32;
  v214 = 0x80000001CA9CF720;
  v217 = v10;
  v194 = v189 & 0xC000000000000001;
  v195 = v19;
  v208 = v189 & 0xFFFFFFFFFFFFFF8;
  v193 = v189 + 32;
  while (v20 != v19)
  {
    if (v21)
    {
      v24 = MEMORY[0x1CCAA22D0](v20, v189);
    }

    else
    {
      if (v20 >= *(v22 + 16))
      {
        goto LABEL_112;
      }

      v24 = *(v23 + 8 * v20);
    }

    v25 = v24;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_111;
    }

    v26 = sub_1CA58DD54(v24);
    if (v27)
    {
      v28 = v27;
      v219 = v26;
      v29 = [v25 action];
      if (!v29)
      {

        goto LABEL_24;
      }

      v30 = v29;
      v224 = [v25 parameter];
      if (!v224)
      {

        goto LABEL_24;
      }

      sub_1CA58A5F4(v30, v10);
      v220 = v31;
      if (v32)
      {

        ++v20;
      }

      else
      {
        v201 = v28;
        v33 = [v25 defaultState];
        v197 = v25;
        v199 = v20 + 1;
        v202 = v30;
        if (v33)
        {
          v34 = v33;
          v35 = type metadata accessor for WFUserVisibleString();
          OUTLINED_FUNCTION_0_57();
          v37 = sub_1CA58DDB8(&qword_1EC4463C0, v36);
          swift_unknownObjectRetain();
          v38 = sub_1CA94C1E8();
          v39 = v224;
          v192 = v34;
          v40 = [v224 userVisibleStringsInParameterState:v34 forUseCase:0];
          OUTLINED_FUNCTION_14_0();
          v41 = sub_1CA94C8F8();

          v206 = v35;
          v191 = v37;
          if ((v41 & 0xC000000000000001) != 0)
          {
            sub_1CA94D2F8();
            OUTLINED_FUNCTION_14_0();
            sub_1CA94C948();
            v41 = v228;
            v42 = v229;
            v43 = v230;
            v44 = v231;
            v45 = v232;
          }

          else
          {
            v44 = 0;
            v47 = -1 << *(v41 + 32);
            v48 = *(v41 + 56);
            OUTLINED_FUNCTION_2_49();
            v45 = v49 & v50;
          }

          v190 = v43;
          v51 = (v43 + 64) >> 6;
          v211 = v42;
          v213 = v41;
          v209 = v51;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          while (1)
          {
            v52 = sub_1CA94D358();
            if (!v52)
            {
              break;
            }

            v227 = v52;
            swift_dynamicCast();
            v53 = v233;
            v54 = v44;
            v55 = v45;
            if (!v233)
            {
              break;
            }

            while (1)
            {
              v222 = v55;
              sub_1CA94D408();

              OUTLINED_FUNCTION_3_44(v61, v62, v63, v64, v65, v66, v67, v68, v189, v190, v191, v192, v193, v194, v195, v196, v197, v199, v201, v202, v204, v206, v208, v209, v211, v213, v214, v216, v217, v218, v219, v220);
              v69 = MEMORY[0x1E69E6530];
              v70 = sub_1CA94D798();
              MEMORY[0x1CCAA1300](v70);

              OUTLINED_FUNCTION_12_26();
              v71 = [v39 key];
              v72 = sub_1CA94C3A8();
              v74 = v73;

              MEMORY[0x1CCAA1300](v72, v74);

              OUTLINED_FUNCTION_10_28();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
              v75 = swift_allocObject();
              *(v75 + 16) = xmmword_1CA981310;
              v76 = [v53 hash];
              *(v75 + 56) = v69;
              *(v75 + 64) = MEMORY[0x1E69E65A8];
              *(v75 + 32) = v76;
              OUTLINED_FUNCTION_14_0();
              sub_1CA94C3C8();

              v77 = sub_1CA94C368();

              v78 = [v53 content];
              if (!v78)
              {
                sub_1CA94C3A8();
                v78 = sub_1CA94C368();
              }

              v79 = sub_1CA94C368();
              v80 = [(objc_class *)bundle.super.isa localizedStringForKey:v77 value:v78 table:v79];

              v81 = sub_1CA94C3A8();
              v83 = v82;

              swift_isUniquelyReferenced_nonNull_native();
              v233 = v38;
              v84 = sub_1CA3210B4();
              if (__OFADD__(v38[2], (v85 & 1) == 0))
              {
                goto LABEL_116;
              }

              v86 = v84;
              v87 = v85;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446920, &qword_1CA98BF08);
              if (sub_1CA94D588())
              {
                v88 = sub_1CA3210B4();
                v22 = v208;
                if ((v87 & 1) != (v89 & 1))
                {
                  goto LABEL_121;
                }

                v86 = v88;
              }

              else
              {
                v22 = v208;
              }

              if (v87)
              {
                v90 = (v38[7] + 16 * v86);
                v91 = v90[1];
                *v90 = v81;
                v90[1] = v83;
              }

              else
              {
                v38[(v86 >> 6) + 8] |= 1 << v86;
                *(v38[6] + 8 * v86) = v53;
                v92 = (v38[7] + 16 * v86);
                *v92 = v81;
                v92[1] = v83;
                v93 = v38[2];
                v94 = __OFADD__(v93, 1);
                v95 = v93 + 1;
                if (v94)
                {
                  goto LABEL_117;
                }

                v38[2] = v95;
              }

              v44 = v54;
              v45 = v222;
              v39 = v224;
              v10 = v217;
              v42 = v211;
              v41 = v213;
              v51 = v209;
              if (v213 < 0)
              {
                break;
              }

LABEL_34:
              v56 = v44;
              v54 = v44;
              if (!v45)
              {
                while (1)
                {
                  v54 = v56 + 1;
                  if (__OFADD__(v56, 1))
                  {
                    break;
                  }

                  if (v54 >= v51)
                  {
                    goto LABEL_52;
                  }

                  ++v56;
                  if (*(v42 + 8 * v54))
                  {
                    goto LABEL_38;
                  }
                }

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
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
LABEL_119:
                __break(1u);
                goto LABEL_120;
              }

LABEL_38:
              OUTLINED_FUNCTION_1_41();
              v55 = v58 & v57;
              v59 = *(v41 + 48);
              v53 = OUTLINED_FUNCTION_11_29(v60);
              if (!v53)
              {
                goto LABEL_52;
              }
            }
          }

LABEL_52:
          sub_1CA28A224();
          v96 = sub_1CA94C1A8();

          v46 = [v39 rewriteParameterState:v192 withStrings:v96];

          swift_unknownObjectRelease_n();
          goto LABEL_53;
        }

        v46 = 0;
        v39 = v224;
LABEL_53:
        v233 = 0;
        v234 = 0xE000000000000000;
        sub_1CA94D408();

        OUTLINED_FUNCTION_3_44(v97, v98, v99, v100, v101, v102, v103, v104, v189, v190, v191, v192, v193, v194, v195, v196, v197, v199, v201, v202, v204, v206, v208, v209, v211, v213, v214, v216, v217, v218, v219, v220);
        v105 = sub_1CA94D798();
        MEMORY[0x1CCAA1300](v105);

        OUTLINED_FUNCTION_12_26();
        v106 = [v39 key];
        v107 = sub_1CA94C3A8();
        v109 = v108;

        MEMORY[0x1CCAA1300](v107, v109);

        v110 = sub_1CA94C368();

        v111 = sub_1CA94C368();

        v112 = sub_1CA94C368();
        v113 = [(objc_class *)bundle.super.isa localizedStringForKey:v110 value:v111 table:v112];

        v114 = sub_1CA94C3A8();
        v116 = v115;

        objc_allocWithZone(WFWorkflowImportQuestion);
        swift_unknownObjectRetain();
        v117 = v203;
        v118 = v39;
        v119 = sub_1CA58D26C(v117, v118, v114, v116, v46);
        if (v119 && (v120 = v119, v121 = [v119 serializedRepresentationWithWorkflowActions_], v120, v121))
        {
          v122 = sub_1CA94C1C8();
        }

        else
        {
          v122 = sub_1CA94C1E8();
        }

        v123 = [v218 importQuestions];
        v124 = sub_1CA94C658();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA42B2D4(v124);
          v124 = v128;
        }

        if (v20 >= *(v124 + 16))
        {
          goto LABEL_118;
        }

        v125 = v124 + 8 * v20;
        v126 = *(v125 + 32);
        *(v125 + 32) = v122;

        v127 = sub_1CA94C648();

        [v218 setImportQuestions_];

        swift_unknownObjectRelease();
        v20 = v200;
        v21 = v194;
        v19 = v195;
        v23 = v193;
      }
    }

    else
    {
LABEL_24:

      ++v20;
    }
  }

  type metadata accessor for WFUserVisibleString();
  OUTLINED_FUNCTION_0_57();
  sub_1CA58DDB8(v129, v130);
  v131 = sub_1CA94C1E8();
  v215 = v10 & 0xC000000000000001;
  v207 = sub_1CA25B410();
  if (v207)
  {
    v132 = 0;
    v205 = v10 + 32;
    while (1)
    {
      sub_1CA275D70(v132, v215 == 0, v10);
      if (v215)
      {
        v133 = MEMORY[0x1CCAA22D0](v132, v10);
      }

      else
      {
        v133 = *(v205 + 8 * v132);
      }

      v212 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_115;
      }

      v210 = v133;
      v134 = [v133 userVisibleStringsForUseCase_];
      v135 = sub_1CA94C8F8();

      if ((v135 & 0xC000000000000001) != 0)
      {
        sub_1CA94D2F8();
        sub_1CA94C948();
        v135 = v233;
        v136 = v234;
        v137 = v235;
        v138 = v236;
        v139 = v237;
      }

      else
      {
        v138 = 0;
        v140 = -1 << *(v135 + 32);
        v136 = v135 + 56;
        v141 = *(v135 + 56);
        OUTLINED_FUNCTION_2_49();
        v139 = v142 & v143;
      }

      v144 = (v137 + 64) >> 6;
      v221 = v144;
      v223 = v136;
      v225 = v135;
      if (v135 < 0)
      {
        break;
      }

      while (1)
      {
        v148 = v138;
        v146 = v138;
        if (!v139)
        {
          while (1)
          {
            v146 = (v148 + 1);
            if (__OFADD__(v148, 1))
            {
              break;
            }

            if (v146 >= v144)
            {
              goto LABEL_94;
            }

            ++v148;
            if (*(v136 + 8 * v146))
            {
              goto LABEL_79;
            }
          }

          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

LABEL_79:
        OUTLINED_FUNCTION_1_41();
        v147 = v150 & v149;
        v151 = *(v135 + 48);
        v145 = OUTLINED_FUNCTION_11_29(v152);
        if (!v145)
        {
          break;
        }

LABEL_80:
        v153 = [objc_allocWithZone(MEMORY[0x1E69AA8A0]) init];

        v154 = [v145 content];
        if (!v154)
        {
          goto LABEL_119;
        }

        v155 = [v145 localizationComment];
        if (!v155)
        {
LABEL_120:
          __break(1u);
          while (1)
          {
LABEL_121:
            sub_1CA94D878();
            __break(1u);
          }
        }

        v156 = [v153 finalize];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
        v157 = swift_allocObject();
        *(v157 + 16) = xmmword_1CA981310;
        *(v157 + 56) = MEMORY[0x1E69E76D8];
        *(v157 + 64) = MEMORY[0x1E69E7738];
        *(v157 + 32) = v156;
        sub_1CA94C3C8();

        v158 = sub_1CA94C368();

        v159 = [v145 content];
        if (!v159)
        {
          sub_1CA94C3A8();
          v159 = sub_1CA94C368();
        }

        v160 = sub_1CA94C368();
        v161 = [(objc_class *)bundle.super.isa localizedStringForKey:v158 value:v159 table:v160];

        v162 = sub_1CA94C3A8();
        v164 = v163;

        swift_isUniquelyReferenced_nonNull_native();
        v227 = v131;
        v165 = sub_1CA3210B4();
        if (__OFADD__(v131[2], (v166 & 1) == 0))
        {
          goto LABEL_107;
        }

        v167 = v165;
        v168 = v166;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446920, &qword_1CA98BF08);
        if (sub_1CA94D588())
        {
          v169 = sub_1CA3210B4();
          if ((v168 & 1) != (v170 & 1))
          {
            goto LABEL_121;
          }

          v167 = v169;
        }

        if (v168)
        {
          v171 = (v131[7] + 16 * v167);
          v172 = v171[1];
          *v171 = v162;
          v171[1] = v164;
        }

        else
        {
          v131[(v167 >> 6) + 8] |= 1 << v167;
          *(v131[6] + 8 * v167) = v145;
          v173 = (v131[7] + 16 * v167);
          *v173 = v162;
          v173[1] = v164;
          v174 = v131[2];
          v94 = __OFADD__(v174, 1);
          v175 = v174 + 1;
          if (v94)
          {
            goto LABEL_109;
          }

          v131[2] = v175;
        }

        v138 = v146;
        v139 = v147;
        v136 = v223;
        v135 = v225;
        v144 = v221;
        if ((v225 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }
      }

LABEL_94:
      sub_1CA28A224();

      v132 = v212;
      v10 = v217;
      if (v212 == v207)
      {
        goto LABEL_95;
      }
    }

LABEL_72:
    if (!sub_1CA94D358())
    {
      goto LABEL_94;
    }

    swift_dynamicCast();
    v145 = v227;
    v146 = v138;
    v147 = v139;
    if (!v227)
    {
      goto LABEL_94;
    }

    goto LABEL_80;
  }

LABEL_95:
  v176 = v10 & 0xFFFFFFFFFFFFFF8;
  for (i = 4; i - v207 != 4; ++i)
  {
    v178 = i - 4;
    if (v215)
    {
      v179 = MEMORY[0x1CCAA22D0](i - 4, v217);
    }

    else
    {
      if (v178 >= *(v176 + 16))
      {
        goto LABEL_114;
      }

      v179 = *(v217 + 8 * i);
    }

    v180 = v179;
    v181 = sub_1CA94C1A8();
    [v180 rewriteWithStrings_];

    v182 = [v180 serializedRepresentation];
    type metadata accessor for WFWorkflowActionKey(0);
    sub_1CA58DDB8(&qword_1EC4433B8, type metadata accessor for WFWorkflowActionKey);
    v183 = sub_1CA94C1C8();

    v184 = [v218 actions];
    v185 = sub_1CA94C658();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA42B2BC(v185);
      v185 = v188;
    }

    if (v178 >= *(v185 + 16))
    {
      goto LABEL_113;
    }

    v186 = *(v185 + 8 * i);
    *(v185 + 8 * i) = v183;

    v187 = sub_1CA94C648();

    [v218 setActions_];
  }
}

uint64_t sub_1CA58BA10(uint64_t a1)
{
  *&v24[0] = a1;
  sub_1CA94C218();
  sub_1CA58A714(v24);
  v1 = *(*&v24[0] + 16);
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v23 = *&v24[0];
    sub_1CA271524();
    v2 = v23;
    v3 = 0;
    v4 = v28;
    v5 = (v23 + 72);
    while (v3 < *(v2 + 16))
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 1);
      v8 = *v5;
      v24[0] = *(v5 - 5);
      v24[1] = v6;
      v25 = v7;
      v26 = v8;
      sub_1CA58BBF4(v24, v27);
      v9 = v27[0];
      v10 = v27[1];
      v28 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_64(v11);
        sub_1CA271524();
        v2 = v23;
        v4 = v28;
      }

      ++v3;
      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v5 += 6;
      if (v1 == v3)
      {

        goto LABEL_9;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
LABEL_9:
    *&v24[0] = v4;
    v14 = OUTLINED_FUNCTION_52_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    OUTLINED_FUNCTION_14_0();
    sub_1CA25C3BC(v16, v17, v18);
    v19 = sub_1CA94C308();
    v21 = v20;

    *&v24[0] = v19;
    *(&v24[0] + 1) = v21;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](10, 0xE100000000000000);

    return *&v24[0];
  }

  return result;
}

uint64_t sub_1CA58BBF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[3];
  v17 = a1[4];
  v15 = a1[1];
  v16 = a1[5];
  sub_1CA94D408();

  sub_1CA27BAF0();
  sub_1CA94D1B8();
  v5 = sub_1CA94D1B8();
  v7 = v6;

  MEMORY[0x1CCAA1300](v5, v7);

  MEMORY[0x1CCAA1300](0x220A2F2A20, 0xE500000000000000);
  sub_1CA94D1B8();
  v8 = sub_1CA94D1B8();
  v10 = v9;

  MEMORY[0x1CCAA1300](v8, v10);

  MEMORY[0x1CCAA1300](0x22203D2022, 0xE500000000000000);
  sub_1CA94D1B8();
  v11 = sub_1CA94D1B8();
  v13 = v12;

  MEMORY[0x1CCAA1300](v11, v13);

  result = MEMORY[0x1CCAA1300](15138, 0xE200000000000000);
  *a2 = 2107951;
  a2[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_1CA58BF00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702129518 && a2 == 0xE400000000000000;
    if (v6 || (sub_1CA94D7F8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1CA94D7F8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1CA58C014(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 1702129518;
  }

  return 0x65756C6176;
}

uint64_t sub_1CA58C058(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446928, &qword_1CA98BF80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA58DE10();
  sub_1CA94D9B8();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  OUTLINED_FUNCTION_7_35(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    OUTLINED_FUNCTION_7_35(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    OUTLINED_FUNCTION_7_35(v15, v16, &v19);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CA58C1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA58BF00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA58C1F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA58C00C();
  *a1 = result;
  return result;
}

uint64_t sub_1CA58C218(uint64_t a1)
{
  v2 = sub_1CA58DE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA58C254(uint64_t a1)
{
  v2 = sub_1CA58DE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::String __swiftcall WFWorkflowRecord.exportLocalizedStringsFile()()
{
  sub_1CA58C2EC();
  sub_1CA58BA10(v0);

  v1 = OUTLINED_FUNCTION_52_0();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void sub_1CA58C2EC()
{
  v1 = sub_1CA4FC8DC(v0);
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0xE000000000000000;
  if (v2)
  {
    v4 = v2;
  }

  v186 = v3;
  v187 = v4;
  v5 = objc_opt_self();
  v6 = [v0 actions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444050, &unk_1CA9842E0);
  sub_1CA94C658();

  sub_1CA3611E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
  v7 = sub_1CA94C648();

  v8 = [objc_opt_self() sharedRegistry];
  v9 = [v5 actionsFromSerializedRepresentations:v7 actionRegistry:v8];

  sub_1CA3A2F84();
  v10 = sub_1CA94C658();

  v11 = [v0 importQuestions];
  v12 = sub_1CA94C658();

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v200 = MEMORY[0x1E69E7CC0];
  v15 = *(v12 + 16);
LABEL_7:
  v16 = v13;
  while (v15 != v16)
  {
    if (v16 >= *(v12 + 16))
    {
      goto LABEL_91;
    }

    v13 = v16 + 1;
    v17 = *(v12 + 8 * v16 + 32);
    objc_allocWithZone(WFWorkflowImportQuestion);
    sub_1CA94C218();
    sub_1CA94C218();
    v18 = sub_1CA58D1CC();
    v16 = v13;
    if (v18)
    {
      MEMORY[0x1CCAA1490]();
      v19 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v200 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
      {
        OUTLINED_FUNCTION_64(v19);
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v14 = v200;
      goto LABEL_7;
    }
  }

  v20 = sub_1CA25B410();
  if (!v20)
  {

    v192 = MEMORY[0x1E69E7CC0];
LABEL_56:
    if (sub_1CA25B410())
    {
      sub_1CA2E85F8();
      v109 = v108;
    }

    else
    {
      v109 = MEMORY[0x1E69E7CD0];
    }

    v194 = v109;
    v110 = sub_1CA25B410();
    if (v110)
    {
      v111 = v110;
      if (v110 < 1)
      {
        goto LABEL_95;
      }

      v112 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v113 = MEMORY[0x1CCAA22D0](v112, v10);
        }

        else
        {
          v113 = *(v10 + 8 * v112 + 32);
        }

        v114 = v113;
        ++v112;
        v115 = [v113 userVisibleStringsForUseCase_];
        type metadata accessor for WFUserVisibleString();
        OUTLINED_FUNCTION_0_57();
        sub_1CA58DDB8(&qword_1EC4463C0, v116);
        OUTLINED_FUNCTION_52_0();
        v117 = sub_1CA94C8F8();

        sub_1CA342840(v117);
      }

      while (v111 != v112);

      v109 = v194;
    }

    else
    {
    }

    if ((v109 & 0xC000000000000001) != 0)
    {
      sub_1CA94D2F8();
      type metadata accessor for WFUserVisibleString();
      OUTLINED_FUNCTION_0_57();
      sub_1CA58DDB8(v118, v119);
      sub_1CA94C948();
      v109 = v200;
      v120 = v201;
      v121 = v202;
      v122 = v203;
      v123 = v204;
    }

    else
    {
      v122 = 0;
      v124 = -1 << *(v109 + 32);
      v120 = v109 + 56;
      v121 = ~v124;
      v125 = -v124;
      if (v125 < 64)
      {
        v126 = ~(-1 << v125);
      }

      else
      {
        v126 = -1;
      }

      v123 = (v126 & *(v109 + 56));
    }

    v180 = v121;
    v182 = v120;
    v127 = (v121 + 64) >> 6;
    v185 = v109;
    if (v109 < 0)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v128 = v122;
      v129 = v122;
      if (!v123)
      {
        break;
      }

LABEL_79:
      OUTLINED_FUNCTION_1_41();
      v132 = (v131 & v130);
      v133 = *(v109 + 48);
      v135 = OUTLINED_FUNCTION_11_29(v134);
      if (!v135)
      {
LABEL_89:
        sub_1CA28A224();

        return;
      }

      while (1)
      {
        v191 = v132;
        v136 = sub_1CA58D04C(v135);
        v189 = v137;
        v193 = v186;
        sub_1CA94C218();
        MEMORY[0x1CCAA1300](2108704, 0xE300000000000000);
        v138 = [v135 localizationComment];
        v139 = sub_1CA94C3A8();
        v141 = v140;

        MEMORY[0x1CCAA1300](v139, v141);

        v142 = v186;
        v143 = v187;
        v144 = [v135 content];
        v145 = sub_1CA94C3A8();
        v147 = v146;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_6_39(isUniquelyReferenced_nonNull_native, v149, v150, v151, v152, v153, v154, v155, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, *(&v171 + 1), v172, v173, v174, v175, v176, v177, v178, v180, v182, v185, v186, v187, v189, v191, v192);
          v192 = v159;
        }

        v157 = *(v192 + 16);
        v156 = *(v192 + 24);
        if (v157 >= v156 >> 1)
        {
          OUTLINED_FUNCTION_64(v156);
          sub_1CA2E702C();
          v192 = v160;
        }

        *(v192 + 16) = v157 + 1;
        v158 = (v192 + 48 * v157);
        v123 = v191;
        v158[4] = v136;
        v158[5] = v189;
        v158[6] = v142;
        v158[7] = v143;
        v158[8] = v145;
        v158[9] = v147;
        v122 = v129;
        v120 = v182;
        v109 = v185;
        if ((v185 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_81:
        if (sub_1CA94D358())
        {
          type metadata accessor for WFUserVisibleString();
          swift_dynamicCast();
          v135 = v193;
          v129 = v122;
          v132 = v123;
          if (v193)
          {
            continue;
          }
        }

        goto LABEL_89;
      }
    }

    while (1)
    {
      v129 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        goto LABEL_92;
      }

      if (v129 >= v127)
      {
        goto LABEL_89;
      }

      ++v128;
      if (*(v120 + 8 * v129))
      {
        goto LABEL_79;
      }
    }
  }

  v21 = v20;
  v22 = 0;
  v23 = v14 & 0xC000000000000001;
  v24 = v14 & 0xFFFFFFFFFFFFFF8;
  v25 = v14 + 32;
  v177 = "import-question-";
  v178 = 0x80000001CA9CF720;
  v192 = MEMORY[0x1E69E7CC0];
  v171 = xmmword_1CA981310;
  v168 = v14;
  v169 = v10;
  v166 = v14 & 0xC000000000000001;
  v167 = v20;
  v164 = v14 + 32;
  v165 = v14 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v23)
    {
      v26 = MEMORY[0x1CCAA22D0](v22, v14);
    }

    else
    {
      if (v22 >= *(v24 + 16))
      {
        goto LABEL_94;
      }

      v26 = *(v25 + 8 * v22);
    }

    v27 = v26;
    if (__OFADD__(v22++, 1))
    {
      goto LABEL_93;
    }

    v29 = sub_1CA58DD54(v26);
    if (!v30)
    {
      goto LABEL_28;
    }

    v31 = v29;
    v32 = v30;
    v33 = [v27 action];
    if (!v33)
    {

LABEL_28:

      goto LABEL_29;
    }

    v188 = v33;
    v190 = [v27 parameter];
    if (!v190)
    {

      goto LABEL_28;
    }

    v183 = v31;
    sub_1CA58A5F4(v188, v10);
    if ((v35 & 1) == 0)
    {
      break;
    }

LABEL_29:
    if (v22 == v21)
    {

      goto LABEL_56;
    }
  }

  v179 = v27;
  v36 = v34;
  v37 = [v188 localizedName];
  v38 = sub_1CA94C3A8();
  v40 = v39;

  sub_1CA94D408();

  v176 = v36;
  v193 = v36;
  v41 = sub_1CA94D798();
  MEMORY[0x1CCAA1300](v41);

  OUTLINED_FUNCTION_12_26();
  v42 = [v190 key];
  v43 = sub_1CA94C3A8();
  v45 = v44;

  MEMORY[0x1CCAA1300](v43, v45);

  v46 = v178;
  sub_1CA94D408();
  sub_1CA94C218();

  v200 = v186;
  v201 = v187;
  MEMORY[0x1CCAA1300](0xD000000000000015, v177 | 0x8000000000000000);
  MEMORY[0x1CCAA1300](v38, v40);

  v47 = v186;
  v48 = v187;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  if ((v49 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_39(v49, v50, v51, v52, v53, v54, v55, v56, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, *(&v171 + 1), v172, v173, v174, v175, v176, v177, v178, v27, v181, v31, v186, v187, v188, v190, v192);
    v192 = v106;
  }

  v58 = *(v192 + 16);
  v57 = *(v192 + 24);
  v59 = v179;
  if (v58 >= v57 >> 1)
  {
    OUTLINED_FUNCTION_64(v57);
    sub_1CA2E702C();
    v192 = v107;
  }

  *(v192 + 16) = v58 + 1;
  v60 = (v192 + 48 * v58);
  v60[4] = 0xD000000000000010;
  v60[5] = v46;
  v60[6] = v47;
  v60[7] = v48;
  v60[8] = v183;
  v60[9] = v32;
  v61 = [v179 defaultState];
  if (!v61)
  {

LABEL_54:
    v14 = v168;
    v10 = v169;
    v23 = v166;
    v21 = v167;
    v25 = v164;
    v24 = v165;
    goto LABEL_29;
  }

  v163 = v61;
  v62 = [v190 userVisibleStringsInParameterState:v61 forUseCase:0];
  v63 = type metadata accessor for WFUserVisibleString();
  OUTLINED_FUNCTION_0_57();
  sub_1CA58DDB8(&qword_1EC4463C0, v64);
  OUTLINED_FUNCTION_52_0();
  v65 = sub_1CA94C8F8();

  v170 = v63;
  if ((v65 & 0xC000000000000001) != 0)
  {
    sub_1CA94D2F8();
    sub_1CA94C948();
    v65 = v195;
    v66 = v196;
    v67 = v197;
    v68 = v198;
    v69 = v199;
  }

  else
  {
    v68 = 0;
    v70 = -1 << *(v65 + 32);
    v66 = v65 + 56;
    v71 = *(v65 + 56);
    OUTLINED_FUNCTION_2_49();
    v69 = v72 & v73;
  }

  v162 = v67;
  v74 = (v67 + 64) >> 6;
  v174 = v66;
  v175 = v65;
  v173 = v74;
  if (v65 < 0)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v75 = v68;
    v76 = v68;
    if (!v69)
    {
      break;
    }

LABEL_45:
    OUTLINED_FUNCTION_1_41();
    v79 = v78 & v77;
    v80 = *(v65 + 48);
    v82 = OUTLINED_FUNCTION_11_29(v81);
    if (!v82)
    {
LABEL_53:
      sub_1CA28A224();

      swift_unknownObjectRelease();
      goto LABEL_54;
    }

    while (1)
    {
      v184 = v79;
      sub_1CA94D408();

      v193 = v176;
      v84 = MEMORY[0x1E69E6530];
      v85 = sub_1CA94D798();
      MEMORY[0x1CCAA1300](v85);

      OUTLINED_FUNCTION_12_26();
      v86 = [v190 key];
      v87 = sub_1CA94C3A8();
      v89 = v88;

      MEMORY[0x1CCAA1300](v87, v89);

      OUTLINED_FUNCTION_10_28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
      v90 = swift_allocObject();
      *(v90 + 16) = v171;
      v91 = [v82 hash];
      *(v90 + 56) = v84;
      *(v90 + 64) = MEMORY[0x1E69E65A8];
      *(v90 + 32) = v91;
      OUTLINED_FUNCTION_52_0();
      v181 = sub_1CA94C3C8();
      v93 = v92;

      sub_1CA94D408();
      sub_1CA94C218();

      v200 = v186;
      v201 = v187;
      MEMORY[0x1CCAA1300](0xD000000000000015, v177 | 0x8000000000000000);
      v94 = [v82 localizationComment];
      v95 = sub_1CA94C3A8();
      v97 = v96;

      MEMORY[0x1CCAA1300](v95, v97);

      v98 = [v82 content];
      v99 = sub_1CA94C3A8();
      v101 = v100;

      v103 = *(v192 + 16);
      v102 = *(v192 + 24);
      if (v103 >= v102 >> 1)
      {
        OUTLINED_FUNCTION_64(v102);
        sub_1CA2E702C();
        v192 = v105;
      }

      *(v192 + 16) = v103 + 1;
      v104 = (v192 + 48 * v103);
      v104[4] = v181;
      v104[5] = v93;
      v104[6] = v186;
      v104[7] = v187;
      v104[8] = v99;
      v104[9] = v101;
      v68 = v76;
      v69 = v184;
      v59 = v179;
      v66 = v174;
      v65 = v175;
      v74 = v173;
      if ((v175 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_47:
      v83 = sub_1CA94D358();
      if (v83)
      {
        v193 = v83;
        swift_dynamicCast();
        v82 = v200;
        v76 = v68;
        v79 = v69;
        if (v200)
        {
          continue;
        }
      }

      goto LABEL_53;
    }
  }

  while (1)
  {
    v76 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v76 >= v74)
    {
      goto LABEL_53;
    }

    ++v75;
    if (*(v66 + 8 * v76))
    {
      goto LABEL_45;
    }
  }

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
}

id sub_1CA58D04C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69AA8A0]) init];

  result = [a1 content];
  if (result)
  {
    v4 = result;

    result = [a1 localizationComment];
    if (result)
    {
      v5 = result;

      v6 = [v2 finalize];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
      v7 = swift_allocObject();
      v8 = MEMORY[0x1E69E76D8];
      *(v7 + 16) = xmmword_1CA981310;
      v9 = MEMORY[0x1E69E7738];
      *(v7 + 56) = v8;
      *(v7 + 64) = v9;
      *(v7 + 32) = v6;
      v10 = sub_1CA94C3C8();

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1CA58D1CC()
{
  v1 = sub_1CA94C1A8();

  sub_1CA3A2F84();
  v2 = sub_1CA94C648();

  v3 = [v0 initWithSerializedRepresentation:v1 workflowActions:v2];

  return v3;
}

id sub_1CA58D26C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a4)
  {
    v10 = sub_1CA94C368();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithAction:a1 parameter:a2 question:v10 defaultState:a5];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1CA58D30C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA58D4E4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CA58D400(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA58D400(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 48 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1CA94D7F8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 48);
        v10 = *(v12 + 56);
        v14 = *(v12 + 64);
        v15 = *(v12 + 80);
        v16 = *(v12 + 88);
        v17 = *(v12 + 16);
        *(v12 + 48) = *v12;
        *(v12 + 64) = v17;
        *(v12 + 80) = *(v12 + 32);
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 32) = v15;
        *(v12 + 40) = v16;
        v12 -= 48;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 48;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA58D4E4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 48 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 48 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1CA94D7F8();
        }

        v7 = v9 + 2;
        v17 = (v10 + 48 * v9 + 104);
        while (v7 < v6)
        {
          if (*(v17 - 1) == *(v17 - 7) && *v17 == *(v17 - 6))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1CA94D7F8()))
          {
            break;
          }

          ++v7;
          v17 += 6;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v19 = 48 * v7 - 24;
          v20 = 48 * v9 + 40;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v24 = (v23 + v20);
              v25 = *(v23 + v20 - 40);
              v26 = v23 + v19;
              v27 = *(v24 - 3);
              v28 = *(v24 - 1);
              v29 = *v24;
              v30 = *(v26 + 8);
              v31 = *(v26 - 8);
              *(v24 - 5) = *(v26 - 24);
              *(v24 - 3) = v31;
              *(v24 - 1) = v30;
              *(v26 - 24) = v25;
              *(v26 - 8) = v27;
              *(v26 + 8) = v28;
              *(v26 + 16) = v29;
            }

            ++v22;
            v19 -= 48;
            v20 += 48;
          }

          while (v22 < v21);
        }
      }

LABEL_28:
      v32 = a3[1];
      if (v7 < v32)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v9 + a4;
          }

          if (v33 < v9)
          {
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
            return;
          }

          if (v7 != v33)
          {
            v34 = *a3;
            v35 = *a3 + 48 * v7 - 48;
            v98 = v9;
            v36 = v9 - v7;
            do
            {
              v37 = (v34 + 48 * v7);
              v38 = *v37;
              v39 = v37[1];
              v40 = v36;
              v41 = v35;
              do
              {
                v42 = v38 == *v41 && v39 == *(v41 + 8);
                if (v42 || (sub_1CA94D7F8() & 1) == 0)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_125;
                }

                v38 = *(v41 + 48);
                v39 = *(v41 + 56);
                v43 = *(v41 + 64);
                v44 = *(v41 + 80);
                v45 = *(v41 + 88);
                v46 = *(v41 + 16);
                *(v41 + 48) = *v41;
                *(v41 + 64) = v46;
                *(v41 + 80) = *(v41 + 32);
                *v41 = v38;
                *(v41 + 8) = v39;
                *(v41 + 16) = v43;
                *(v41 + 32) = v44;
                *(v41 + 40) = v45;
                v41 -= 48;
              }

              while (!__CFADD__(v40++, 1));
              ++v7;
              v35 += 48;
              --v36;
            }

            while (v7 != v33);
            v7 = v33;
            v9 = v98;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = v8[2];
        sub_1CA2E49C0();
        v8 = v93;
      }

      v48 = v8[2];
      v49 = v48 + 1;
      if (v48 >= v8[3] >> 1)
      {
        sub_1CA2E49C0();
        v8 = v94;
      }

      v8[2] = v49;
      v50 = v8 + 4;
      v51 = &v8[2 * v48 + 4];
      *v51 = v9;
      v51[1] = v7;
      v99 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v48)
      {
        v97 = v8 + 4;
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v8[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v8[4];
            v56 = v8[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_70:
            if (v58)
            {
              goto LABEL_110;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_113;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_118;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v49 < 2)
          {
            goto LABEL_112;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_85:
          if (v73)
          {
            goto LABEL_115;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_117;
          }

          if (v80 < v72)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v84 = &v50[2 * v52 - 2];
          v85 = *v84;
          v86 = v52;
          v87 = &v50[2 * v52];
          v88 = v87[1];
          sub_1CA58DB8C((*a3 + 48 * *v84), (*a3 + 48 * *v87), (*a3 + 48 * v88), v99);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v88 < v85)
          {
            goto LABEL_105;
          }

          v89 = v8;
          v90 = v8[2];
          if (v86 > v90)
          {
            goto LABEL_106;
          }

          *v84 = v85;
          v84[1] = v88;
          if (v86 >= v90)
          {
            goto LABEL_107;
          }

          v49 = v90 - 1;
          memmove(v87, v87 + 2, 16 * (v90 - 1 - v86));
          v89[2] = v90 - 1;
          v91 = v90 > 2;
          v8 = v89;
          v5 = 0;
          v50 = v97;
          if (!v91)
          {
            goto LABEL_99;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_108;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_109;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_111;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_114;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_119;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v101 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1CA58DA54(&v101, *a1, a3);
LABEL_103:
}

uint64_t sub_1CA58DA54(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1CA627610(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1CA58DB8C((*a3 + 48 * *v4), (*a3 + 48 * *v9), (*a3 + 48 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1CA58DB8C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1CA278E64(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1CA94D7F8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 48;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 48;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 48;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1CA278E64(a2, (a3 - a2) / 48, a4);
  v10 = &v4[48 * v9];
LABEL_19:
  v16 = v6 - 48;
  for (v5 -= 48; v10 > v4 && v6 > v7; v5 -= 48)
  {
    v18 = *(v10 - 6) == *(v6 - 6) && *(v10 - 5) == *(v6 - 5);
    if (!v18 && (sub_1CA94D7F8() & 1) != 0)
    {
      v12 = v5 + 48 == v6;
      v6 -= 48;
      if (!v12)
      {
        v21 = *v16;
        v22 = *(v16 + 2);
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v22;
        *v5 = v21;
        v6 = v16;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 48)
    {
      v19 = *(v10 - 3);
      v20 = *(v10 - 1);
      *(v5 + 1) = *(v10 - 2);
      *(v5 + 2) = v20;
      *v5 = v19;
    }

    v10 -= 48;
  }

LABEL_36:
  v23 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v23])
  {
    memmove(v6, v4, 48 * v23);
  }

  return 1;
}

uint64_t sub_1CA58DD54(void *a1)
{
  v1 = [a1 question];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA58DDB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CA58DE10()
{
  result = qword_1EC446930;
  if (!qword_1EC446930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446930);
  }

  return result;
}

_BYTE *_s17LocalizableStringV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA58DF44()
{
  result = qword_1EC446938;
  if (!qword_1EC446938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446938);
  }

  return result;
}

unint64_t sub_1CA58DF9C()
{
  result = qword_1EC446940;
  if (!qword_1EC446940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446940);
  }

  return result;
}

unint64_t sub_1CA58DFF4()
{
  result = qword_1EC446948;
  if (!qword_1EC446948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446948);
  }

  return result;
}

id WFVariableStringParameterState.variableString.getter@<X0>(void *a1@<X8>)
{
  result = [v1 variableString];
  *a1 = result;
  return result;
}

WFVariableStringParameterState __swiftcall WFVariableStringParameterState.init(variableString:)(WorkflowKit::WFVariableString variableString)
{
  v1 = *variableString.variableString.super.isa;
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariableString_];

  v6 = v2;
  result._variable = v5;
  result._userInputInsertionIndex = v4;
  result._variableString = v3;
  result.super.isa = v6;
  return result;
}

id static WFVariableStringParameterState.from(variableString:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithVariableString_];
}

id sub_1CA58E148()
{
  v302 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CF770;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v309 = inited;
  v313 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA97EDF0;
  *(v6 + 32) = @"DescriptionInput";
  v7 = @"Description";
  v8 = @"DescriptionInput";
  v9 = sub_1CA94C438();
  v314 = v10;
  v315 = v9;
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA948E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v318 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v319 = v16;
  v17 = &v292 - v318;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDB9F690;
  v317 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v320 = v21;
  v316 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v292 - v316;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v315, v314, v11, v13, 0, 0, v17, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 40) = v24;
  *(v6 + 64) = v25;
  *(v6 + 72) = @"DescriptionSummary";
  v315 = v25;
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v312 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v314 = &v292;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v292 - v318;
  sub_1CA948D98();
  v33 = [v18 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v292 - v316;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v312, v29, v31, 0, 0, v32, v34);
  *(v6 + 104) = v25;
  *(v6 + 80) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v313;
  v38 = sub_1CA6B3784();
  v39 = v309;
  v309[15] = v38;
  v39[18] = v37;
  v39[19] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v307 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x776F646E69574657;
  *(v40 + 104) = 0xE800000000000000;
  *(v40 + 120) = MEMORY[0x1E69E6158];
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  *(v40 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 192) = &unk_1F4A07498;
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v39[20] = v43;
  v39[23] = v44;
  v39[24] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v314 = &v292;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v292 - v318;
  sub_1CA948D98();
  v53 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v292 - v316;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39[25] = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v39[28] = v315;
  v39[29] = @"Parameters";
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v313 = swift_allocObject();
  *(v313 + 16) = xmmword_1CA981560;
  v312 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *&v305 = v56;
  *(v56 + 16) = xmmword_1CA981370;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000016;
  *(v56 + 48) = 0x80000001CA99C4A0;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"DefaultValue";
  *(v56 + 80) = 0x6572635320746946;
  *(v56 + 88) = 0xEA00000000006E65;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Items";
  v314 = swift_allocObject();
  *(v314 + 1) = xmmword_1CA983CF0;
  v58 = @"Class";
  v59 = @"DefaultValue";
  v306 = v58;
  v301 = v59;
  v60 = @"Parameters";
  v61 = @"Items";
  v310 = sub_1CA94C438();
  v304 = v62;
  v63 = sub_1CA94C438();
  v303 = v64;
  MEMORY[0x1EEE9AC00](v63);
  v65 = v318;
  sub_1CA948D98();
  v66 = v317;
  v67 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v292 - v316;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v310, v304, v63, v303, 0, 0, &v292 - v65, v68);
  v71 = v314;
  v314[4] = v70;
  v72 = sub_1CA94C438();
  v303 = v73;
  v304 = v72;
  v300 = sub_1CA94C438();
  v75 = v74;
  v310 = &v292;
  MEMORY[0x1EEE9AC00](v300);
  sub_1CA948D98();
  v76 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = v316;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 40) = sub_1CA2F9F14(v304, v303, v300, v75, 0, 0, &v292 - v65, &v292 - v77);
  v79 = sub_1CA94C438();
  v303 = v80;
  v304 = v79;
  v81 = sub_1CA94C438();
  v300 = v82;
  v310 = &v292;
  MEMORY[0x1EEE9AC00](v81);
  v83 = v318;
  sub_1CA948D98();
  v84 = v317;
  v85 = [v317 bundleURL];
  v299 = &v292;
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v304, v303, v81, v300, 0, 0, &v292 - v83, &v292 - v77);
  v88 = v314;
  v314[6] = v87;
  v89 = sub_1CA94C438();
  v303 = v90;
  v304 = v89;
  v91 = sub_1CA94C438();
  v300 = v92;
  v310 = &v292;
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948D98();
  v93 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v316;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 56) = sub_1CA2F9F14(v304, v303, v91, v300, 0, 0, &v292 - v83, &v292 - v94);
  v96 = sub_1CA94C438();
  v303 = v97;
  v304 = v96;
  v98 = sub_1CA94C438();
  v300 = v99;
  v310 = &v292;
  MEMORY[0x1EEE9AC00](v98);
  v100 = v318;
  sub_1CA948D98();
  v101 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 64) = sub_1CA2F9F14(v304, v303, v98, v300, 0, 0, &v292 - v100, &v292 - v94);
  v103 = sub_1CA94C438();
  v303 = v104;
  v304 = v103;
  v105 = sub_1CA94C438();
  v300 = v106;
  v310 = &v292;
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v292 - v100;
  sub_1CA948D98();
  v108 = v317;
  v109 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v304, v303, v105, v300, 0, 0, v107, &v292 - v94);
  v314[9] = v111;
  v112 = sub_1CA94C438();
  v303 = v113;
  v304 = v112;
  v114 = sub_1CA94C438();
  v300 = v115;
  v310 = &v292;
  MEMORY[0x1EEE9AC00](v114);
  v116 = v318;
  sub_1CA948D98();
  v117 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v304, v303, v114, v300, 0, 0, &v292 - v116, &v292 - v94);
  v120 = v314;
  v314[10] = v119;
  v121 = sub_1CA94C438();
  v303 = v122;
  v304 = v121;
  v123 = sub_1CA94C438();
  v300 = v124;
  v310 = &v292;
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v292 - v116;
  sub_1CA948D98();
  v126 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = v316;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v120 + 88) = sub_1CA2F9F14(v304, v303, v123, v300, 0, 0, v125, &v292 - v127);
  v129 = sub_1CA94C438();
  v303 = v130;
  v304 = v129;
  v131 = sub_1CA94C438();
  v300 = v132;
  v310 = &v292;
  MEMORY[0x1EEE9AC00](v131);
  v133 = v318;
  sub_1CA948D98();
  v134 = v317;
  v135 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v304, v303, v131, v300, 0, 0, &v292 - v133, &v292 - v127);
  v314[12] = v137;
  v138 = sub_1CA94C438();
  v303 = v139;
  v304 = v138;
  v300 = sub_1CA94C438();
  v141 = v140;
  v310 = &v292;
  MEMORY[0x1EEE9AC00](v300);
  sub_1CA948D98();
  v142 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v304, v303, v300, v141, 0, 0, &v292 - v133, &v292 - v127);
  v145 = v314;
  v314[13] = v144;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v147 = v305;
  *(v305 + 120) = v145;
  v147[18] = v146;
  v147[19] = @"Key";
  v147[20] = 0x6769666E6F434657;
  v147[21] = 0xEF6E6F6974617275;
  v147[23] = MEMORY[0x1E69E6158];
  v147[24] = @"Label";
  v148 = @"Key";
  v149 = @"Label";
  v150 = v148;
  v151 = v149;
  v299 = v150;
  v300 = v151;
  v152 = sub_1CA94C438();
  v154 = v153;
  v155 = sub_1CA94C438();
  v157 = v156;
  v314 = &v292;
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v292 - v318;
  sub_1CA948D98();
  v159 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v292 - v316;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v152, v154, v155, v157, 0, 0, v158, v160);
  v147[28] = v315;
  v147[25] = v162;
  _s3__C3KeyVMa_0(0);
  v314 = v163;
  v310 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v313 + 32) = sub_1CA2F864C();
  v164 = swift_allocObject();
  v305 = xmmword_1CA981380;
  *(v164 + 16) = xmmword_1CA981380;
  *(v164 + 32) = @"AllowsDecimalNumbers";
  *(v164 + 40) = 0;
  v165 = v306;
  *(v164 + 64) = MEMORY[0x1E69E6370];
  *(v164 + 72) = v165;
  v304 = 0x80000001CA99C180;
  *(v164 + 80) = 0xD000000000000016;
  *(v164 + 88) = 0x80000001CA99C180;
  v166 = MEMORY[0x1E69E6158];
  v167 = v299;
  v168 = v300;
  *(v164 + 104) = MEMORY[0x1E69E6158];
  *(v164 + 112) = v167;
  *(v164 + 120) = 0x68746469574657;
  *(v164 + 128) = 0xE700000000000000;
  *(v164 + 144) = v166;
  *(v164 + 152) = v168;
  v169 = @"AllowsDecimalNumbers";
  v303 = v165;
  v299 = v167;
  v300 = v168;
  v298 = v169;
  v297 = sub_1CA94C438();
  *&v296 = v170;
  v171 = sub_1CA94C438();
  v173 = v172;
  v306 = &v292;
  MEMORY[0x1EEE9AC00](v171);
  v174 = &v292 - v318;
  sub_1CA948D98();
  v175 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  v176 = v316;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v164 + 160) = sub_1CA2F9F14(v297, v296, v171, v173, 0, 0, v174, &v292 - v176);
  v178 = v315;
  *(v164 + 184) = v315;
  *(v164 + 192) = @"Placeholder";
  v306 = @"Placeholder";
  v179 = sub_1CA94C438();
  v295 = v180;
  *&v296 = v179;
  v181 = sub_1CA94C438();
  v183 = v182;
  v297 = &v292;
  MEMORY[0x1EEE9AC00](v181);
  v184 = &v292 - v318;
  sub_1CA948D98();
  v185 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v185);
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v164 + 200) = sub_1CA2F9F14(v296, v295, v181, v183, 0, 0, v184, &v292 - v176);
  *(v164 + 224) = v178;
  *(v164 + 232) = @"RequiredResources";
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v187 = swift_allocObject();
  v296 = xmmword_1CA981310;
  *(v187 + 16) = xmmword_1CA981310;
  v295 = @"RequiredResources";
  v188 = MEMORY[0x1E69E6158];
  *(v187 + 32) = sub_1CA94C1E8();
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v164 + 264) = v294;
  *(v164 + 240) = v187;
  sub_1CA94C1E8();
  *(v313 + 40) = sub_1CA2F864C();
  v189 = swift_allocObject();
  *(v189 + 16) = v305;
  v190 = v299;
  *(v189 + 32) = v298;
  *(v189 + 40) = 0;
  v191 = v303;
  *(v189 + 64) = MEMORY[0x1E69E6370];
  *(v189 + 72) = v191;
  *(v189 + 80) = 0xD000000000000016;
  *(v189 + 88) = v304;
  *(v189 + 104) = v188;
  *(v189 + 112) = v190;
  *(v189 + 120) = 0x7468676965484657;
  *(v189 + 128) = 0xE800000000000000;
  *(v189 + 144) = v188;
  v192 = v300;
  *(v189 + 152) = v300;
  v303 = v191;
  v304 = v190;
  *&v305 = v192;
  v193 = sub_1CA94C438();
  v298 = v194;
  v299 = v193;
  v195 = sub_1CA94C438();
  v293 = v196;
  v300 = &v292;
  MEMORY[0x1EEE9AC00](v195);
  v197 = v318;
  sub_1CA948D98();
  v198 = v317;
  v199 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v199);
  v200 = v316;
  sub_1CA948B68();

  v201 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v189 + 160) = sub_1CA2F9F14(v299, v298, v195, v293, 0, 0, &v292 - v197, &v292 - v200);
  v202 = v315;
  v203 = v306;
  *(v189 + 184) = v315;
  *(v189 + 192) = v203;
  v204 = sub_1CA94C438();
  v298 = v205;
  v299 = v204;
  v206 = sub_1CA94C438();
  v208 = v207;
  v300 = &v292;
  MEMORY[0x1EEE9AC00](v206);
  v209 = &v292 - v197;
  sub_1CA948D98();
  v210 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v189 + 200) = sub_1CA2F9F14(v299, v298, v206, v208, 0, 0, v209, &v292 - v200);
  v212 = v295;
  *(v189 + 224) = v202;
  *(v189 + 232) = v212;
  v213 = swift_allocObject();
  *(v213 + 16) = v296;
  v214 = MEMORY[0x1E69E6158];
  *(v213 + 32) = sub_1CA94C1E8();
  *(v189 + 264) = v294;
  *(v189 + 240) = v213;
  sub_1CA94C1E8();
  *(v313 + 48) = sub_1CA2F864C();
  v215 = swift_allocObject();
  *(v215 + 16) = v307;
  *(v215 + 32) = v303;
  *(v215 + 40) = 0xD000000000000019;
  *(v215 + 48) = 0x80000001CA99B030;
  v216 = v304;
  *(v215 + 64) = v214;
  *(v215 + 72) = v216;
  *(v215 + 80) = 0x776F646E69574657;
  *(v215 + 88) = 0xE800000000000000;
  v217 = v305;
  *(v215 + 104) = v214;
  *(v215 + 112) = v217;
  v218 = sub_1CA94C438();
  v298 = v219;
  v299 = v218;
  v220 = sub_1CA94C438();
  v297 = v221;
  v300 = &v292;
  MEMORY[0x1EEE9AC00](v220);
  v222 = &v292 - v318;
  sub_1CA948D98();
  v223 = v317;
  v224 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v224);
  v225 = v316;
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v215 + 120) = sub_1CA2F9F14(v299, v298, v220, v297, 0, 0, v222, &v292 - v225);
  v227 = v315;
  v228 = v306;
  *(v215 + 144) = v315;
  *(v215 + 152) = v228;
  v229 = sub_1CA94C438();
  v299 = v230;
  v300 = v229;
  v231 = sub_1CA94C438();
  v233 = v232;
  v306 = &v292;
  MEMORY[0x1EEE9AC00](v231);
  v234 = &v292 - v318;
  sub_1CA948D98();
  v235 = [v223 bundleURL];
  MEMORY[0x1EEE9AC00](v235);
  sub_1CA948B68();

  v236 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v237 = sub_1CA2F9F14(v300, v299, v231, v233, 0, 0, v234, &v292 - v225);
  *(v215 + 184) = v227;
  *(v215 + 160) = v237;
  sub_1CA94C1E8();
  *(v313 + 56) = sub_1CA2F864C();
  v238 = swift_allocObject();
  *(v238 + 16) = v307;
  *(v238 + 32) = v303;
  *(v238 + 40) = 0xD000000000000011;
  *(v238 + 48) = 0x80000001CA99E620;
  v239 = MEMORY[0x1E69E6158];
  v240 = v301;
  *(v238 + 64) = MEMORY[0x1E69E6158];
  *(v238 + 72) = v240;
  *(v238 + 80) = 1;
  v241 = v304;
  *(v238 + 104) = MEMORY[0x1E69E6370];
  *(v238 + 112) = v241;
  strcpy((v238 + 120), "WFBringToFront");
  *(v238 + 135) = -18;
  v242 = v305;
  *(v238 + 144) = v239;
  *(v238 + 152) = v242;
  v243 = sub_1CA94C438();
  v245 = v244;
  v246 = sub_1CA94C438();
  v248 = v247;
  v311 = &v292;
  MEMORY[0x1EEE9AC00](v246);
  v249 = &v292 - v318;
  sub_1CA948D98();
  v250 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v250);
  v251 = &v292 - v316;
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v253 = sub_1CA2F9F14(v243, v245, v246, v248, 0, 0, v249, v251);
  *(v238 + 184) = v315;
  *(v238 + 160) = v253;
  sub_1CA94C1E8();
  v254 = sub_1CA2F864C();
  v255 = v313;
  *(v313 + 64) = v254;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v257 = v309;
  v309[30] = v255;
  v257[33] = v256;
  v257[34] = @"ParameterSummary";
  v314 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v315 = swift_allocObject();
  *(v315 + 16) = xmmword_1CA981360;
  v313 = "FConfiguration)";
  v258 = @"ParameterSummary";
  v259 = sub_1CA94C438();
  v261 = v260;
  v262 = sub_1CA94C438();
  v264 = v263;
  v312 = &v292;
  MEMORY[0x1EEE9AC00](v262);
  v265 = v318;
  sub_1CA948D98();
  v266 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v266);
  v267 = &v292 - v316;
  sub_1CA948B68();

  v268 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v269 = sub_1CA2F9F14(v259, v261, v262, v264, 0, 0, &v292 - v265, v267);
  v270 = objc_allocWithZone(WFActionParameterSummaryValue);
  v271 = sub_1CA65DD78(0xD000000000000027, v313 | 0x8000000000000000, v269);
  *(v315 + 32) = v271;
  v313 = "w} to ${WFConfiguration}";
  v272 = sub_1CA94C438();
  v274 = v273;
  v275 = sub_1CA94C438();
  v277 = v276;
  v312 = &v292;
  MEMORY[0x1EEE9AC00](v275);
  sub_1CA948D98();
  v278 = [v317 bundleURL];
  MEMORY[0x1EEE9AC00](v278);
  v279 = &v292 - v316;
  sub_1CA948B68();

  v280 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v281 = sub_1CA2F9F14(v272, v274, v275, v277, 0, 0, &v292 - v265, v279);
  v282 = objc_allocWithZone(WFActionParameterSummaryValue);
  v283 = sub_1CA65DD78(0xD000000000000044, v313 | 0x8000000000000000, v281);
  v284 = v314;
  *(v315 + 40) = v283;
  v285 = sub_1CA65AF90();
  v286 = v309;
  v309[35] = v285;
  v286[38] = v284;
  v286[39] = @"RequiredResources";
  v287 = swift_allocObject();
  *(v287 + 16) = xmmword_1CA9813B0;
  v321 = 2;
  v322 = 0;
  v288 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v289 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v321);
  *(v287 + 32) = v290;
  v286[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v286[40] = v287;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA5904CC(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  sub_1CA4F3484();
  v3 = sub_1CA94C658();

  v4 = sub_1CA25B410();
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCAA22D0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = sub_1CA94D158();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = *(v6 + 16);
      sub_1CA2E575C();
      v6 = v12;
    }

    v10 = *(v6 + 16);
    if (v10 >= *(v6 + 24) >> 1)
    {
      sub_1CA2E575C();
      v6 = v13;
    }

    *(v6 + 16) = v10 + 1;
    *(v6 + 8 * v10 + 32) = v9;
    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1CA59068C(uint64_t (*a1)(void), uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v3 = a1();
  sub_1CA4F3484();
  v4 = sub_1CA94C658();

  result = sub_1CA25B410();
  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v7)
    {

      return v8;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCAA22D0](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = *(v4 + 8 * v7 + 32);
    }

    v9 = result;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v10 = sub_1CA94D158();

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = a2(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      result = a2(v11 > 1, v12 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v12 + 1;
    *(v8 + 8 * v12 + 32) = v10;
    ++v7;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t WFVariableString.userVisibleStrings(for:)(uint64_t a1)
{
  v2 = [*v1 userVisibleStringsForUseCase_];
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v3 = sub_1CA94C8F8();

  return v3;
}

{
  v2 = v1;
  v15 = MEMORY[0x1E69E7CD0];
  v4 = [v1 variables];
  sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
  v5 = sub_1CA94C658();

  result = sub_1CA25B410();
  if (result)
  {
    v7 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCAA22D0](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = [v9 userVisibleStringsForUseCase_];
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v12 = sub_1CA94C8F8();

      sub_1CA342840(v12);
    }

    while (v7 != v8);
  }

  v13 = [v2 computeUserVisibleString];
  if ([v13 isEmpty])
  {
  }

  else
  {
    sub_1CA368D08(&v14);
  }

  return v15;
}

WorkflowKit::WFVariableString __swiftcall WFVariableString.rewritten(withStrings:)(Swift::OpaquePointer withStrings)
{
  v3 = v1;
  v4 = *v2;
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C1A8();
  v6 = [v4 rewrittenWithStrings_];

  *v3 = v6;
  result.variableString._stringsAndVariables = v8;
  result.variableString.super.isa = v7;
  return result;
}

unint64_t sub_1CA5908E4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1CA94C588();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA590930()
{
  sub_1CA27BAF0();
  sub_1CA94D1B8();
  sub_1CA94D1B8();

  sub_1CA94D1B8();

  v0 = sub_1CA94D1B8();

  return v0;
}

uint64_t sub_1CA590AD0()
{
  sub_1CA435BD4();
  sub_1CA27BAF0();
  sub_1CA94D1B8();
  sub_1CA94D1B8();

  sub_1CA94D1B8();

  v0 = sub_1CA94D1B8();

  return v0;
}

uint64_t WFVariableString.computeUserVisibleString()()
{
  v1 = v0;
  v60 = sub_1CA949F78();
  v2 = OUTLINED_FUNCTION_1_0(v60);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = 0;
  v69 = 0xE000000000000000;
  v9 = [v1 stringsAndVariables];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446360, &qword_1CA98AFF8);
  v10 = sub_1CA94C658();

  result = sub_1CA25B410();
  v13 = result;
  if (!result)
  {

    v16 = MEMORY[0x1E69E7CC0];
    v50 = 0xE000000000000000;
LABEL_24:
    if (*(v16 + 16))
    {
      v65 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
      sub_1CA25C3BC(&qword_1EC441B20, &qword_1EC443E20, &qword_1CA986220);
      v51 = sub_1CA94C308();
      v53 = v52;
    }

    else
    {

      v51 = 0;
      v53 = 0;
    }

    v54 = objc_allocWithZone(WFUserVisibleString);
    return sub_1CA5920A8(v13, v50, 2, v51, v53);
  }

  if (result < 1)
  {
    goto LABEL_29;
  }

  v14 = 0;
  v63 = 0;
  v64 = v10 & 0xC000000000000001;
  v15 = *MEMORY[0x1E69E10B0];
  v58 = (v4 + 8);
  v59 = v15;
  v16 = MEMORY[0x1E69E7CC0];
  *&v12 = 136315138;
  v55 = v12;
  v61 = v10;
  v62 = result;
  while (1)
  {
    if (v64)
    {
      v17 = MEMORY[0x1CCAA22D0](v14, v10);
    }

    else
    {
      v17 = *(v10 + 8 * v14 + 32);
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      swift_unknownObjectRetain();
      if ([v19 length] >= 1)
      {
        sub_1CA94C3A8();
        v20 = sub_1CA590930();
        v22 = v21;

        MEMORY[0x1CCAA1300](v20, v22);
        v13 = v62;
      }

      swift_unknownObjectRelease_n();
      goto LABEL_21;
    }

    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (!v23)
    {
      sub_1CA949C58();
      swift_unknownObjectRetain();
      v38 = sub_1CA949F68();
      v39 = sub_1CA94CC28();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v65 = v57;
        *v40 = v55;
        v67 = v17;
        swift_unknownObjectRetain();
        v41 = sub_1CA94C408();
        v43 = v8;
        v44 = v16;
        v45 = v1;
        v46 = sub_1CA26B54C(v41, v42, &v65);
        v10 = v61;

        *(v40 + 4) = v46;
        v1 = v45;
        v16 = v44;
        v8 = v43;
        _os_log_impl(&dword_1CA256000, v38, v39, "Invalid content in WFVariableString: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        OUTLINED_FUNCTION_26();
        v13 = v62;
        OUTLINED_FUNCTION_26();
      }

      swift_unknownObjectRelease();

      (*v58)(v8, v60);
      goto LABEL_21;
    }

    v24 = v23;
    v65 = 0x6261697261767B24;
    v66 = 0xEB000000002D656CLL;
    v67 = v63;
    v25 = sub_1CA94D798();
    MEMORY[0x1CCAA1300](v25);

    MEMORY[0x1CCAA1300](125, 0xE100000000000000);
    v26 = v65;
    v27 = v66;
    MEMORY[0x1CCAA1300](v65, v66);
    v65 = v26;
    v66 = v27;
    MEMORY[0x1CCAA1300](656424224, 0xE400000000000000);
    v28 = [v24 name];
    v29 = sub_1CA94C3A8();
    v31 = v30;

    MEMORY[0x1CCAA1300](v29, v31);

    MEMORY[0x1CCAA1300](39, 0xE100000000000000);
    v32 = v65;
    v33 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = *(v16 + 16);
      sub_1CA26DADC();
      v16 = v48;
    }

    v35 = *(v16 + 16);
    v34 = *(v16 + 24);
    if (v35 >= v34 >> 1)
    {
      OUTLINED_FUNCTION_64(v34);
      sub_1CA26DADC();
      v16 = v49;
    }

    result = swift_unknownObjectRelease();
    *(v16 + 16) = v35 + 1;
    v36 = v16 + 16 * v35;
    *(v36 + 32) = v32;
    *(v36 + 40) = v33;
    if (__OFADD__(v63++, 1))
    {
      break;
    }

    v10 = v61;
    v13 = v62;
LABEL_21:
    if (v13 == ++v14)
    {

      v13 = v68;
      v50 = v69;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

WFVariableString __swiftcall WFVariableString.rewritten(withStrings:)(Swift::OpaquePointer withStrings)
{
  v2 = sub_1CA949F78();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v100 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445890, &qword_1CA988360);
  v12 = OUTLINED_FUNCTION_1_0(v111);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446950, &unk_1CA98C0A8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v100 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A58, &qword_1CA988490);
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v29 = &v100 - v28;
  v30 = [v116 computeUserVisibleString];
  if ([v30 isEmpty])
  {
    v31 = v116;

LABEL_38:
    v97 = v31;
  }

  else
  {
    v102 = v5;
    v114 = sub_1CA311D98(v30, withStrings._rawValue);
    v115 = v33;
    if (v33)
    {
      v109 = v21;
      v100 = v2;
      v101 = v30;
      v113 = 0;
      v112 = MEMORY[0x1E69E7CC0];
      v119 = MEMORY[0x1E69E7CC0];
      v107 = (v14 + 8);
      v108 = "th} × ${WFHeight}";
      v106 = (v25 + 32);
      v104 = v25 + 8;
      v34 = 15;
      v105 = v22;
      while (1)
      {
        v35 = sub_1CA5908E4(v34, v114, v115);
        v37 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458A0, &qword_1CA988370);
        v38 = v110;
        sub_1CA949648();
        v39 = v109;
        sub_1CA591E28(v38, v35, v37);

        (*v107)(v38, v111);
        if (__swift_getEnumTagSinglePayload(v39, 1, v22) == 1)
        {
          break;
        }

        (*v106)(v29, v39, v22);
        if (sub_1CA949688() >> 14 < v34 >> 14)
        {
          __break(1u);
LABEL_40:

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          OUTLINED_FUNCTION_64(v61);
          sub_1CA94C698();
LABEL_36:
          sub_1CA94C6E8();
          v87 = v101;
          goto LABEL_37;
        }

        v40 = sub_1CA94C588();
        if ((v40 ^ v41) >= 0x4000)
        {
          sub_1CA590AD0();
          sub_1CA94C368();

          MEMORY[0x1CCAA1490](v42);
          v43 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v43 >> 1)
          {
            OUTLINED_FUNCTION_64(v43);
            sub_1CA94C698();
          }

          sub_1CA94C6E8();
          v112 = v119;
        }

        sub_1CA949698();

        if (!((v118 ^ v117) >> 14))
        {
          goto LABEL_40;
        }

        v44 = v29;
        rawValue = withStrings._rawValue;
        v46 = OUTLINED_FUNCTION_2_50();
        v47 = v113;
        v52 = sub_1CA592B64(v46, v48, v49, v50, v51);
        v113 = v47;
        if ((v53 & 0x100) != 0)
        {
          v54 = OUTLINED_FUNCTION_2_50();
          v52 = sub_1CA5925D0(v54, v55, v56, v57, v58);
        }

        v59 = v52;
        v60 = v53;

        if (v60)
        {
          goto LABEL_41;
        }

        withStrings._rawValue = rawValue;
        v29 = v44;

        v62 = [v116 variables];
        sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
        sub_1CA94C658();

        v63 = sub_1CA25B410();

        v61 = &v120;
        v22 = v105;
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if ((v59 & 0x8000000000000000) != 0 || v59 >= v63)
        {

          v88 = *MEMORY[0x1E69E1138];
          v89 = v103;
          sub_1CA949C58();
          v90 = sub_1CA949F68();
          v91 = sub_1CA94CC28();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&dword_1CA256000, v90, v91, "Variable string count does not match", v92, 2u);
            OUTLINED_FUNCTION_26();
          }

          (*(v102 + 8))(v89, v100);
          v93 = OUTLINED_FUNCTION_1_42();
          v95(v93, v94);
          goto LABEL_32;
        }

        v64 = [v116 variables];
        v65 = sub_1CA94C658();

        sub_1CA275D70(v59, (v65 & 0xC000000000000001) == 0, v65);
        if ((v65 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x1CCAA22D0](v59, v65);
        }

        else
        {
          v66 = *(v65 + 8 * v59 + 32);
        }

        v67 = v66;

        type metadata accessor for WFUserVisibleString();
        sub_1CA3434EC();
        v68 = sub_1CA94C1A8();
        v69 = [v67 rewrittenWithStrings_];

        v70 = v69;
        MEMORY[0x1CCAA1490]();
        v71 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v71 >> 1)
        {
          OUTLINED_FUNCTION_64(v71);
          sub_1CA94C698();
        }

        sub_1CA94C6E8();
        v112 = v119;
        sub_1CA949688();
        v34 = v72;

        v73 = OUTLINED_FUNCTION_1_42();
        v74(v73);
      }

      sub_1CA30F7DC(v39, &unk_1EC446950, &unk_1CA98C0A8);
      v84 = sub_1CA5908E4(v34, v114, v115);
      v86 = v85;

      if ((v84 ^ v86) >= 0x4000)
      {
        sub_1CA590AD0();

        sub_1CA94C368();

        MEMORY[0x1CCAA1490](v98);
        v61 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v61 >> 1)
        {
          goto LABEL_43;
        }

        goto LABEL_36;
      }

      v87 = v101;
LABEL_37:
      sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
      v31 = sub_1CA538154();

      goto LABEL_38;
    }

    v75 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v116 = v116;
    v76 = sub_1CA949F68();
    v77 = sub_1CA94CC28();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = v30;
      v79 = swift_slowAlloc();
      v80 = v2;
      v81 = swift_slowAlloc();
      *v79 = 138412290;
      v82 = v116;
      *(v79 + 4) = v116;
      *v81 = v82;
      v83 = v82;
      _os_log_impl(&dword_1CA256000, v76, v77, "Missing string for %@", v79, 0xCu);
      sub_1CA30F7DC(v81, &qword_1EC444AE0, &qword_1CA985B70);
      v2 = v80;
      OUTLINED_FUNCTION_26();
      v30 = v78;
      OUTLINED_FUNCTION_26();
    }

    (*(v102 + 8))(v10, v2);
LABEL_32:
    v96 = v116;

    v97 = v96;
  }

  result._stringsAndVariables = v32;
  result.super.isa = v97;
  return result;
}

uint64_t sub_1CA591E28(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445890, &qword_1CA988360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v11 - v9;
  if (a3 >> 14 < a2 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_1CA94D128();
    sub_1CA25C3BC(&qword_1EC4458A8, &qword_1EC445890, &qword_1CA988360);
    sub_1CA949618();
    sub_1CA949668();
    (*(v6 + 8))(v10, v5);
  }

  return result;
}

id sub_1CA5920A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CA94C368();

  if (a5)
  {
    v9 = sub_1CA94C368();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithContent:v8 ofKind:a3 comment:v9];

  return v10;
}

uint64_t sub_1CA592144()
{
  v0 = sub_1CA5921B0();
  v4 = sub_1CA5921E4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1CA5921E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1CA94C448();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1CA94D0E8();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1CA26B874(v9, 0);
  v12 = sub_1CA592344(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_1CA94C218();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1CA94C448();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1CA94D4B8();
LABEL_4:

  return sub_1CA94C448();
}

unint64_t sub_1CA592344(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1CA592554(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1CA94C508();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1CA94D4B8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1CA592554(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1CA94C4D8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CA592554(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1CA94C518();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1CCAA1340](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1CA5925D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1CA435C28();
  sub_1CA94C218();
  result = sub_1CA94C578();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1CA592144();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1CA94D4B8();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}