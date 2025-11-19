void sub_268929DC0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0;
  v3 = v2;
  v27 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_268B37A54();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v11, qword_2802CDA10);
  v17 = OUTLINED_FUNCTION_139(v14);
  v18(v17);

  v19 = sub_268B37A34();
  v20 = sub_268B37ED4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_238();
    v26 = OUTLINED_FUNCTION_173_0();
    v28[0] = v26;
    *v21 = 134218242;
    *(v21 + 4) = v8;
    *(v21 + 12) = 2080;
    v22 = MEMORY[0x26D6256F0](v10, MEMORY[0x277D837D0]);
    v24 = sub_26892CDB8(v22, v23, v28);

    *(v21 + 14) = v24;
    _os_log_impl(&dword_2688BB000, v19, v20, "SetVolumeLevelIntentHandler#setRelativeVolume attempting to change the volume by %f for routeIds: %s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    OUTLINED_FUNCTION_132_0();
    v1 = v0;
    OUTLINED_FUNCTION_12();

    (*(v14 + 8))(v0, v11);
  }

  else
  {

    (*(v14 + 8))(v0, v11);
  }

  sub_26890C900(v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController, v28);
  OUTLINED_FUNCTION_59_0(v28, v28[3]);
  v25 = swift_allocObject();
  *(v25 + 16) = v27;
  *(v25 + 24) = v3;
  *(v25 + 32) = v6;

  sub_268B36D84();

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  OUTLINED_FUNCTION_28_2();
}

void sub_26892A078(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v49 = a3;
  v47 = sub_268B37A54();
  v45 = *(v47 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B36F24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v46 = a1;
  sub_26892DB34(a1, &v41 - v17, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v14, v18, v7);
    v19 = v14;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v44 = a2;
    v20 = v47;
    v21 = __swift_project_value_buffer(v47, qword_2802CDA10);
    v22 = v45;
    (*(v45 + 16))(v48, v21, v20);
    (*(v8 + 16))(v12, v19, v7);
    v23 = sub_268B37A34();
    v24 = sub_268B37EE4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50 = v42;
      *v25 = 136446210;
      sub_26892DA98(&qword_2802A5DE0, MEMORY[0x277D5F6E0]);
      v26 = sub_268B38404();
      v43 = v19;
      v28 = v27;
      v29 = v12;
      v30 = *(v8 + 8);
      v30(v29, v7);
      v31 = sub_26892CDB8(v26, v28, &v50);
      v19 = v43;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_2688BB000, v23, v24, "SetVolumeLevelIntentHandler#setRelativeVolume an error occurred in the SetVolumeLevel media remote call: %{public}s", v25, 0xCu);
      v32 = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x26D6266E0](v32, -1, -1);
      MEMORY[0x26D6266E0](v25, -1, -1);

      (*(v22 + 8))(v48, v47);
    }

    else
    {

      v36 = v12;
      v30 = *(v8 + 8);
      v30(v36, v7);
      (*(v22 + 8))(v48, v20);
    }

    v37 = sub_268B36ED4();
    v38 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v39 = v37;
    v40 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v37);
    v44();

    v30(v19, v7);
  }

  else
  {
    v33 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v34 = SetVolumeLevelIntentResponse.init(code:userActivity:)(4, 0);
    v35 = sub_268B37E04();
    [v34 setVolumeLevel_];

    (a2)(v34);
  }
}

void sub_26892A584()
{
  OUTLINED_FUNCTION_27_2();
  v117 = v0;
  v119 = v4;
  v120 = v3;
  OUTLINED_FUNCTION_85_1();
  v5 = sub_268B37714();
  v6 = OUTLINED_FUNCTION_1(v5);
  v115 = v7;
  v116 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v114 = v11 - v10;
  OUTLINED_FUNCTION_9();
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v113 = v18 - v19;
  OUTLINED_FUNCTION_8();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v111 - v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v112 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_80_1();
  MEMORY[0x28223BE20](v26);
  v28 = &v111 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_20_0();
  v33 = (v31 - v32);
  MEMORY[0x28223BE20](v34);
  v118 = &v111 - v35;
  v36 = [v1 volumeLevel];
  if (v36)
  {
    v37 = v36;
    v38 = v15;
    v39 = v23;
    v40 = sub_268B37E04();
    [v37 setCurrentVolumeOutput_];

    v23 = v39;
    v15 = v38;
  }

  if (sub_2689B859C())
  {
    v41 = v118;
    v42 = OUTLINED_FUNCTION_37_1();
    sub_26892C368(v43, v44, v42);
    v45 = [v1 volumeLevel];
    goto LABEL_7;
  }

  if (sub_2689B85F4())
  {
    v41 = v118;
    OUTLINED_FUNCTION_37_1();
    sub_26892C6D0(v46, v47, v48, v49, v50, v51, v52, v53, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0], v121[1], v121[2], v122);
    v45 = [v1 volumeLevel];
LABEL_7:
    v54 = v45;
    if (v54)
    {
      v55 = v54;
      [v54 setVolumeSettingType_];
    }

LABEL_21:
    sub_26892DB34(v41, v33, &qword_2802A5DC0, &unk_268B3D770);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v73 = v114;
      v72 = v115;
      v74 = v116;
      v75 = (*(v115 + 32))(v114, v33, v116);
      if (qword_2802A4F30 != -1)
      {
        v75 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_14_3(v75, qword_2802CDA10);
      v76(v23);
      v77 = sub_268B37A34();
      v78 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v78))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_73_1(&dword_2688BB000, v79, v33, "SetVolumeLevelIntentHandler#resolveVolumeLevelCompletionHandler error getting the volume resolution result");
        OUTLINED_FUNCTION_12();
      }

      (*(v15 + 8))(v23, v12);
      sub_26892AED0(v73, v120);
      (*(v72 + 8))(v73, v74);
    }

    else
    {
      v80 = *v33;
      if (qword_2802A4F30 != -1)
      {
        EnumCaseMultiPayload = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_14_3(EnumCaseMultiPayload, qword_2802CDA10);
      v81(v113);
      v82 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = OUTLINED_FUNCTION_172_0();
        OUTLINED_FUNCTION_9_6(v84, 3.852e-34);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
        OUTLINED_FUNCTION_12();
      }

      v90 = *(v15 + 8);
      v91 = OUTLINED_FUNCTION_192();
      v92(v91);
      v93 = [v1 volumeLevel];
      if (!v93)
      {
        type metadata accessor for VolumeLevel();
        v94 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v95 = OUTLINED_FUNCTION_86_1();
        v93 = sub_26893A824(v95, 0xE000000000000000);
      }

      v96 = sub_268B37E04();
      [v93 setResolvedVolumeOutput_];

      sub_268927990();
      v98 = v97;
      type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
      if (v98)
      {
        v122 = type metadata accessor for VolumeLevel();
        v121[0] = v93;
        v93 = v93;
        v99 = sub_26892AD88(v121);
      }

      else
      {
        v99 = sub_268B30DF8(v93);
      }

      v100 = v99;
      v120();
    }

    sub_2688EF38C(v41, &qword_2802A5DC0, &unk_268B3D770);
    goto LABEL_38;
  }

  v56 = sub_2689B864C();
  if (v56)
  {
    if (qword_2802A4F30 != -1)
    {
      v56 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_14_3(v56, qword_2802CDA10);
    v57(v28);
    v58 = sub_268B37A34();
    v59 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v59))
    {
      v60 = OUTLINED_FUNCTION_14();
      v112 = v23;
      *v60 = 0;
      OUTLINED_FUNCTION_73_1(&dword_2688BB000, v61, v59, "SetVolumeLevelIntentHandler#resolveVolumeLevelCompletionHandler user specified a numeric value in the intent. Trying to resolve the volume level from numeric input");
      v23 = v112;
      OUTLINED_FUNCTION_12();
    }

    v62 = *(v15 + 8);
    v63 = OUTLINED_FUNCTION_46_1();
    v64(v63);
    v41 = v118;
    OUTLINED_FUNCTION_37_1();
    sub_26892B068();
    goto LABEL_21;
  }

  v65 = sub_2689B86B8();
  if (v65)
  {
    if (qword_2802A4F30 != -1)
    {
      v65 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_14_3(v65, qword_2802CDA10);
    v66 = v112;
    v67(v112);
    v68 = sub_268B37A34();
    v69 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v69))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_73_1(&dword_2688BB000, v70, v69, "SetVolumeLevelIntentHandler#resolveVolumeLevelCompletionHandler user did not specify a numeric volume level in the intent, but intent has qualifiers. Trying to resolve volume level using qualifiers");
      OUTLINED_FUNCTION_12();
    }

    (*(v15 + 8))(v66, v12);
    v41 = v118;
    sub_26892B5B0();
    goto LABEL_21;
  }

  if (qword_2802A4F30 != -1)
  {
    v65 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_14_3(v65, qword_2802CDA10);
  v101(v2);
  v102 = sub_268B37A34();
  sub_268B37EE4();
  OUTLINED_FUNCTION_39_1();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v104);
    OUTLINED_FUNCTION_27();
    _os_log_impl(v105, v106, v107, v108, v109, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v15 + 8))(v2, v12);
  type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
  v110 = [swift_getObjCClassFromMetadata() needsValue];
  v120();

LABEL_38:
  OUTLINED_FUNCTION_28_2();
}

id sub_26892AD88(uint64_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = *(v1 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_268B38424();
    (*(v4 + 8))(v7, v1);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [swift_getObjCClassFromMetadata() resolutionResultConfirmationRequiredWithItemToConfirm_];
  swift_unknownObjectRelease();
  return v9;
}

void sub_26892AED0(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_86_1();
  v4 = sub_268B37714();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  (*(v7 + 16))(v11 - v10, v2, v4);
  v13 = (*(v7 + 88))(v12, v4);
  if (v13 == *MEMORY[0x277D5F960])
  {
    type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
    v14 = 1;
LABEL_5:
    v17 = sub_268B17B04(v14);
    a2();

    return;
  }

  v15 = v13;
  v16 = *MEMORY[0x277D5F968];
  type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
  if (v15 == v16)
  {
    v14 = 2;
    goto LABEL_5;
  }

  v18 = [swift_getObjCClassFromMetadata() unsupported];
  a2();

  (*(v7 + 8))(v12, v4);
}

void sub_26892B068()
{
  OUTLINED_FUNCTION_27_2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  v19 = [v7 volumeLevel];
  if (v19 && (v20 = v19, v21 = [v19 volumeSettingValue], v20, v21))
  {
    v59 = v3;
    v60 = v9;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
    v57 = v22;
    v58 = *(v13 + 16);
    v58(v0);
    v23 = v21;
    v24 = sub_268B37A34();
    LOBYTE(v25) = sub_268B37F04();
    v61 = v23;

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_172_0();
      v27 = OUTLINED_FUNCTION_236();
      *v26 = 138412290;
      *(v26 + 4) = v61;
      *v27 = v21;
      v28 = v61;
      _os_log_impl(&dword_2688BB000, v24, v25, "SetVolumeLevelIntentHandler#resolveVolumeLevelFromNumericInput user specified a numeric value in the intent: %@", v26, 0xCu);
      sub_2688EF38C(v27, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_33_1();
      OUTLINED_FUNCTION_20_2();
    }

    v29 = *(v13 + 8);
    v29(v0, v10);
    v30 = [v7 volumeLevel];
    if (v30)
    {
      v25 = v30;
      v31 = [v30 volumeSettingUnit];

      v32 = v31 == 1;
    }

    else
    {
      v32 = 0;
    }

    if (sub_2689B8710())
    {
      (v58)(v2, v57, v10);
      v44 = sub_268B37A34();
      v45 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v45))
      {
        v46 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_279(v46);
        OUTLINED_FUNCTION_75_1(&dword_2688BB000, v44, v25, "SetVolumeLevelIntentHandler#resolveVolumeLevelFromNumericInput this is a relative volume adjust intent");
        OUTLINED_FUNCTION_20_2();
      }

      v29(v2, v10);
      v47 = [v7 volumeLevel];
      if (v47)
      {
        v48 = v47;
        [v47 setVolumeSettingType_];
      }

      v49 = sub_26892BD54(v7, v61, v32, v5);
    }

    else
    {
      (v58)(v59, v57, v10);
      v50 = sub_268B37A34();
      v51 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v51))
      {
        v52 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_279(v52);
        OUTLINED_FUNCTION_75_1(&dword_2688BB000, v50, v25, "SetVolumeLevelIntentHandler#resolveVolumeLevelFromNumericInput this is an absolute volume adjust intent");
        OUTLINED_FUNCTION_20_2();
      }

      v29(v59, v10);
      v53 = [v7 volumeLevel];
      if (v53)
      {
        v54 = v53;
        [v53 setVolumeSettingType_];
      }

      [v61 floatValue];
      v56 = v55;

      v49 = v56 / 100.0;
    }

    *v60 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
    OUTLINED_FUNCTION_148();
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
    (*(v13 + 16))(v1);
    v33 = sub_268B37A34();
    v34 = sub_268B37F04();
    if (OUTLINED_FUNCTION_139_0(v34))
    {
      v35 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v35);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_6();
    }

    (*(v13 + 8))(v1, v10);
    v41 = *MEMORY[0x277D5F970];
    v42 = sub_268B37714();
    OUTLINED_FUNCTION_8_7(v42);
    (*(v43 + 104))(v9, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_2();
}

void sub_26892B5B0()
{
  OUTLINED_FUNCTION_27_2();
  v91 = v5;
  v6 = sub_268B37A54();
  v92 = OUTLINED_FUNCTION_1(v6);
  v93 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_80_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v90 - v15;
  v17 = OUTLINED_FUNCTION_72_1();
  v18 = v17;
  if (v17)
  {
    v19 = [v17 volumeSettingState];
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_2689B88E0();
  if (v18)
  {
    v21 = v20 * 0.1;
    switch(v19)
    {
      case 1uLL:
        v22 = OUTLINED_FUNCTION_72_1();
        v24 = v92;
        v23 = v93;
        if (v22)
        {
          v25 = v22;
          [v22 setVolumeSettingType_];
        }

        v26 = v91;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_82(v24, qword_2802CDA10);
        OUTLINED_FUNCTION_152();
        v27(v16);
        v28 = sub_268B37A34();
        v29 = sub_268B37ED4();
        if (!OUTLINED_FUNCTION_139_0(v29))
        {
          goto LABEL_43;
        }

        v30 = OUTLINED_FUNCTION_172_0();
        OUTLINED_FUNCTION_9_6(v30, 3.852e-34);
        OUTLINED_FUNCTION_12_4();
        _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
        goto LABEL_42;
      case 2uLL:
        v77 = OUTLINED_FUNCTION_72_1();
        v24 = v92;
        if (v77)
        {
          v78 = v77;
          [v77 setVolumeSettingType_];
        }

        v26 = v91;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_82(v24, qword_2802CDA10);
        (*(v93 + 16))(v3);
        v28 = sub_268B37A34();
        v79 = sub_268B37ED4();
        v21 = 1.0;
        if (OUTLINED_FUNCTION_139_0(v79))
        {
          v80 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v80);
          OUTLINED_FUNCTION_12_4();
          _os_log_impl(v81, v82, v83, v84, v85, 2u);
          v16 = v3;
          v23 = v93;
          goto LABEL_42;
        }

        v1 = v3;
        v23 = v93;
        break;
      case 3uLL:
        v57 = OUTLINED_FUNCTION_72_1();
        v24 = v92;
        v23 = v93;
        if (v57)
        {
          v58 = v57;
          [v57 setVolumeSettingType_];
        }

        v26 = v91;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_82(v24, qword_2802CDA10);
        OUTLINED_FUNCTION_152();
        v59(v2);
        v28 = sub_268B37A34();
        v60 = sub_268B37ED4();
        v21 = 0.5;
        if (OUTLINED_FUNCTION_139_0(v60))
        {
          v61 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v61);
          OUTLINED_FUNCTION_12_4();
          _os_log_impl(v62, v63, v64, v65, v66, 2u);
          v16 = v2;
          goto LABEL_42;
        }

        v1 = v2;
        break;
      case 4uLL:
        v67 = OUTLINED_FUNCTION_72_1();
        v24 = v92;
        v23 = v93;
        if (v67)
        {
          v68 = v67;
          [v67 setVolumeSettingType_];
        }

        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_82(v24, qword_2802CDA10);
        OUTLINED_FUNCTION_152();
        v69(v1);
        v28 = sub_268B37A34();
        v70 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_139_0(v70))
        {
          v71 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v71);
          OUTLINED_FUNCTION_12_4();
          _os_log_impl(v72, v73, v74, v75, v76, 2u);
          v21 = 0.05;
          v16 = v1;
          v26 = v91;
          goto LABEL_42;
        }

        v21 = 0.05;
        v26 = v91;
        break;
      case 5uLL:
        v47 = OUTLINED_FUNCTION_72_1();
        v23 = v93;
        if (v47)
        {
          v48 = v47;
          [v47 setVolumeSettingType_];
        }

        v26 = v91;
        if (qword_2802A4F30 != -1)
        {
          v47 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_61(v47, qword_2802CDA10);
        OUTLINED_FUNCTION_152();
        v49(v4);
        v28 = sub_268B37A34();
        v50 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_139_0(v50))
        {
          v51 = OUTLINED_FUNCTION_172_0();
          OUTLINED_FUNCTION_9_6(v51, 3.852e-34);
          OUTLINED_FUNCTION_12_4();
          _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
          v16 = v4;
          v24 = v92;
LABEL_42:
          OUTLINED_FUNCTION_6();
LABEL_43:
          v1 = v16;
        }

        else
        {
          v1 = v4;
          v24 = v92;
        }

        break;
      default:
        goto LABEL_12;
    }

    (*(v23 + 8))(v1, v24);
    *v26 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  }

  else
  {
LABEL_12:
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v36 = v92;
    OUTLINED_FUNCTION_82(v92, qword_2802CDA10);
    v37 = v93;
    (*(v93 + 16))(v0);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v91;
    if (v40)
    {
      v42 = OUTLINED_FUNCTION_172_0();
      v43 = OUTLINED_FUNCTION_173_0();
      v95 = v43;
      *v42 = 136446210;
      if (v18)
      {
        v94 = v19;
        sub_2688E4434();
        v44 = sub_268B380D4();
        v46 = v45;
      }

      else
      {
        v46 = 0xE300000000000000;
        v44 = 7104878;
      }

      v86 = sub_26892CDB8(v44, v46, &v95);

      *(v42 + 4) = v86;
      _os_log_impl(&dword_2688BB000, v38, v39, "SetVolumeLevelIntentHandler#resolveVolumeLevelUsingQualifiers found unexpected volumeSettingState: %{public}s. Returning failure", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      OUTLINED_FUNCTION_33_1();
      OUTLINED_FUNCTION_132_0();

      (*(v93 + 8))(v0, v36);
    }

    else
    {

      (*(v37 + 8))(v0, v36);
    }

    v87 = *MEMORY[0x277D5F970];
    v88 = sub_268B37714();
    OUTLINED_FUNCTION_8_7(v88);
    (*(v89 + 104))(v41, v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_2();
}

float sub_26892BD54(void *a1, void *a2, char a3, float a4)
{
  v75 = a1;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v76 = (v16 - v17);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_58_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_35_0();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  v27 = [a2 floatValue];
  v29 = v28;
  if (a3)
  {
    goto LABEL_2;
  }

  if (v28 > 4.0 || v28 < 1.0)
  {
    if (v28 < 1.0)
    {
LABEL_7:
      if (v29 < 0.5 || a4 == 0.0)
      {
        if (qword_2802A4F30 != -1)
        {
          v27 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_61(v27, qword_2802CDA10);
        v35 = *(v13 + 16);
        v35(v5);
        v44 = sub_268B37A34();
        v45 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_196(v45))
        {
          v46 = OUTLINED_FUNCTION_14();
          *v46 = 0;
          _os_log_impl(&dword_2688BB000, v44, v45, "SetVolumeLevelIntentHandler#resolveRelativeNumericChange using value directly as delta because value is less than normalizedMinimumValueToUseAsMultiplier or current volume is 0", v46, 2u);
          OUTLINED_FUNCTION_33_1();
        }

        v41 = *(v13 + 8);
        v41(v5, v10);
        v42 = v29;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v27 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_61(v27, qword_2802CDA10);
        v35 = *(v13 + 16);
        v35(v6);
        v36 = sub_268B37A34();
        v37 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_196(v37))
        {
          v38 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_52_1(v38);
          OUTLINED_FUNCTION_50_0(&dword_2688BB000, v39, v40, "SetVolumeLevelIntentHandler#resolveRelativeNumericChange calculating delta based on percent of current value");
          OUTLINED_FUNCTION_12();
        }

        v41 = *(v13 + 8);
        v41(v6, v10);
        v42 = v29 * a4;
      }

      v47 = v76;
      v48 = [v75 volumeLevel];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 volumeSettingState];

        if (v50 == 1 && v42 >= a4)
        {
          if (qword_2802A4F30 != -1)
          {
            v48 = OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_61(v48, qword_2802CDA10);
          v35(v4);
          v52 = sub_268B37A34();
          v53 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_196(v53))
          {
            v54 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_52_1(v54);
            OUTLINED_FUNCTION_50_0(&dword_2688BB000, v55, v56, "SetVolumeLevelIntentHandler#resolveRelativeNumericChange recalculating delta based on percent of current value");
            OUTLINED_FUNCTION_12();
          }

          v48 = (v41)(v4, v10);
          v42 = v29 * a4;
        }
      }

      goto LABEL_41;
    }

LABEL_2:
    if (qword_2802A4F30 != -1)
    {
      v27 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v27, qword_2802CDA10);
    v30 = OUTLINED_FUNCTION_139(v13);
    v31(v30);
    v32 = sub_268B37A34();
    sub_268B37ED4();
    OUTLINED_FUNCTION_66_0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_14();
      *v34 = 0;
      _os_log_impl(&dword_2688BB000, v32, v26, "SetVolumeLevelIntentHandler#resolveRelativeNumericChange normalizing floatSettingValue percentage value", v34, 2u);
      OUTLINED_FUNCTION_12();
    }

    v27 = (*(v13 + 8))(v24, v10);
    v29 = v29 / 100.0;
    goto LABEL_7;
  }

  if (qword_2802A4F30 != -1)
  {
    v27 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_61(v27, qword_2802CDA10);
  v35 = *(v13 + 16);
  v35(v26);
  v57 = sub_268B37A34();
  v58 = sub_268B37ED4();
  v59 = OUTLINED_FUNCTION_196(v58);
  v47 = v76;
  if (v59)
  {
    v60 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_89_1(v60);
    OUTLINED_FUNCTION_34_0();
    _os_log_impl(v61, v62, v63, v64, v65, 2u);
    OUTLINED_FUNCTION_132_0();
  }

  v41 = *(v13 + 8);
  v48 = (v41)(v26, v10);
  v42 = v29 * 0.1;
LABEL_41:
  if (qword_2802A4F30 != -1)
  {
    v48 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_61(v48, qword_2802CDA10);
  v35(v47);
  v66 = sub_268B37A34();
  v67 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v67))
  {
    v68 = OUTLINED_FUNCTION_172_0();
    *v68 = 134217984;
    *(v68 + 4) = v42;
    OUTLINED_FUNCTION_34_0();
    _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
    OUTLINED_FUNCTION_132_0();
  }

  v41(v47, v10);
  return v42;
}

uint64_t sub_26892C368@<X0>(uint8_t *a1@<X0>, _DWORD *a2@<X8>, float a3@<S0>)
{
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  if (a3 == 0.0)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v8, qword_2802CDA10);
    OUTLINED_FUNCTION_11_4();
    v17(v16);
    v18 = sub_268B37A34();
    v19 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v19))
    {
      v20 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v20);
      OUTLINED_FUNCTION_34_0();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_132_0();
    }

    (*(v11 + 8))(v16, v8);
    v26 = MEMORY[0x277D5F960];
LABEL_7:
    v27 = *v26;
    v28 = sub_268B37714();
    OUTLINED_FUNCTION_8_7(v28);
    (*(v29 + 104))(a2, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
    OUTLINED_FUNCTION_148();
    return swift_storeEnumTagMultiPayload();
  }

  if (a3 > 0.0)
  {
    v31 = sub_268B18100();
    if (v31)
    {
      a1 = v31;
      v32 = *(v3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_aceServiceHelper);
      sub_268921344();
      v34 = v33;

      if (v34[2])
      {
        v35 = v34[4];
        v36 = v34[5];

        v37 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider), *(v3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider + 24));
        sub_26891E810(a3, v35, v36, *v37);

        goto LABEL_12;
      }
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v8, qword_2802CDA10);
    OUTLINED_FUNCTION_11_4();
    v38(v4);
    v39 = sub_268B37A34();
    v40 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v40))
    {
      v41 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v41);
      OUTLINED_FUNCTION_247();
      _os_log_impl(v42, v43, v44, v45, a1, 2u);
      OUTLINED_FUNCTION_132_0();
    }

    (*(v11 + 8))(v4, v8);
    v26 = MEMORY[0x277D5F970];
    goto LABEL_7;
  }

LABEL_12:
  *a2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  OUTLINED_FUNCTION_148();

  return swift_storeEnumTagMultiPayload();
}

void sub_26892C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_27_2();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  v30 = sub_268B37A54();
  v31 = OUTLINED_FUNCTION_1(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  if (v27 == 0.0 && sub_268B18100())
  {
    v39 = *(v22 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_aceServiceHelper);
    sub_268921344();
    v41 = v40;

    if (v41[2])
    {
      v43 = v41[4];
      v42 = v41[5];

      v44 = (v22 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider);
      v45 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
      v46 = sub_26891EA2C(v43, v42, *v45);
      if ((v46 & 0x100000000) == 0)
      {
        v47 = v46;
        if (*&v46 > 0.0)
        {
          v48 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
          sub_26891ED94(v43, v42, *v48);

          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          __swift_project_value_buffer(v30, qword_2802CDA10);
          OUTLINED_FUNCTION_6_2();
          v49(v38);
          v50 = sub_268B37A34();
          v51 = sub_268B37F04();
          if (OUTLINED_FUNCTION_196(v51))
          {
            v52 = OUTLINED_FUNCTION_172_0();
            OUTLINED_FUNCTION_9_6(v52, 3.852e-34);
            OUTLINED_FUNCTION_247();
            _os_log_impl(v53, v54, v55, v56, v52, 0xCu);
            OUTLINED_FUNCTION_12();
          }

          (*(v33 + 8))(v38, v30);
          *v29 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
          OUTLINED_FUNCTION_148();
          goto LABEL_17;
        }
      }
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v30, qword_2802CDA10);
  OUTLINED_FUNCTION_6_2();
  v57(v23);
  v58 = sub_268B37A34();
  v59 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v59))
  {
    v60 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_89_1(v60);
    OUTLINED_FUNCTION_34_0();
    _os_log_impl(v61, v62, v63, v64, v65, 2u);
    OUTLINED_FUNCTION_132_0();
  }

  (*(v33 + 8))(v23, v30);
  v66 = *MEMORY[0x277D5F968];
  v67 = sub_268B37714();
  OUTLINED_FUNCTION_8_7(v67);
  (*(v68 + 104))(v29, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC0, &unk_268B3D770);
  OUTLINED_FUNCTION_148();
LABEL_17:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_2();
}

id SetVolumeLevelIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetVolumeLevelIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

id sub_26892CB58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_26892CBBC()
{
  result = qword_2802A5D50;
  if (!qword_2802A5D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5D48, &qword_268B3D700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5D50);
  }

  return result;
}

uint64_t sub_26892CC44(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26892CCD8(uint64_t result, void (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      OUTLINED_FUNCTION_148();
      result = sub_268B37D34();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26892CD5C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26892CDB8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26892CDB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26892CE7C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2688EF2C0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_26892CE7C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26892CF7C(a5, a6);
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
    result = sub_268B38204();
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

uint64_t sub_26892CF7C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26892CFC8(a1, a2);
  sub_26892D0E0(&unk_28794DFD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26892CFC8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_268B37C74())
  {
    result = sub_26892D1C4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268B381A4();
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
          result = sub_268B38204();
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

uint64_t sub_26892D0E0(uint64_t result)
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

    result = sub_26892D234(result, v8, 1, v3);
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

void *sub_26892D1C4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DF0, qword_268B3D798);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26892D234(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DF0, qword_268B3D798);
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

_BYTE **sub_26892D328(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_26892D338(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26892D3B0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26892D418(void *a1)
{
  v1 = [a1 routeId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

uint64_t sub_26892D47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_6_8(a1, a2, a3);
  sub_2688EFD10(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_96_0();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_71_1();
    v8 = MEMORY[0x26D625BD0](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_83_1();
}

uint64_t sub_26892D4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_6_8(a1, a2, a3);
  sub_2688EFD10(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_96_0();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_71_1();
    v8 = MEMORY[0x26D625BD0](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_83_1();
}

void *sub_26892D53C(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v37 = sub_268B37204();
  v38 = MEMORY[0x277D5F810];
  *&v36 = a1;
  v35[3] = sub_268B376A4();
  v35[4] = MEMORY[0x277D5F928];
  v35[0] = a5;
  v11 = type metadata accessor for AnalyticsServiceImpl();
  v34[3] = v11;
  v34[4] = &off_2879539D0;
  v34[0] = a3;
  type metadata accessor for DeviceSelectingUtil();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v34, v11);
  OUTLINED_FUNCTION_3_8();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v17 = OUTLINED_FUNCTION_69_1(v16);
  v18(v17);
  v19 = *v5;
  v12[17] = v11;
  v12[18] = &off_2879539D0;
  v12[14] = v19;
  sub_26890C900(&v36, (v12 + 2));
  sub_26890C900(a2, (v12 + 7));
  sub_26890C900(v35, (v12 + 24));
  sub_26890C900((v12 + 14), &v32);
  sub_26890C900(a2, v31);
  __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  OUTLINED_FUNCTION_3_8();
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v24 = OUTLINED_FUNCTION_69_1(v23);
  v25(v24);
  v26 = *v5;

  v27 = sub_2689A52C0(v26, v31, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  v12[12] = v27;
  sub_26890C900(a4, &v32);
  type metadata accessor for GroupingUtil();
  v28 = swift_allocObject();
  sub_2688E6514(&v36, v28 + 16);
  sub_2688E6514(&v32, v28 + 56);
  v12[13] = v28;
  sub_26890C900(a4, (v12 + 19));
  type metadata accessor for AceServiceHelper();
  v29 = swift_allocObject();
  sub_2688E6514(a2, v29 + 16);
  sub_2688E6514(a4, v29 + 56);
  v12[29] = v29;
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  return v12;
}

uint64_t sub_26892D904(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2688E6514(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_26892D99C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_26892DA34(unint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_2689271DC(a1 | ((HIDWORD(a1) & 1) << 32), *(v1 + 16));
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26892DA98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26892DAE0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_79_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

float sub_26892DB14(char a1)
{
  v2 = *(v1 + 40);
  sub_268928C00(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
  return result;
}

float sub_26892DB24(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_2689290A8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
  return result;
}

uint64_t sub_26892DB34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_8_7(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26892DB90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

float sub_26892DBC8(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_26892A078(a1, *(v1 + 16), *(v1 + 24));
  return result;
}

float sub_26892DBD4(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_268929894(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
  return result;
}

double OUTLINED_FUNCTION_9_6(uint64_t a1, float a2)
{
  *a1 = a2;
  result = v2;
  *(a1 + 4) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_268B38444();
}

double OUTLINED_FUNCTION_19_1(float a1)
{
  *v1 = a1;
  result = v2;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_20_2()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_21_2()
{
  v1 = *(v0 - 184);
  v2 = *(v0 - 176);
  v3 = *(v0 - 168);
}

void OUTLINED_FUNCTION_33_1()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_50_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 112) = a3;

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1)
{
  v5 = *(v2 - 120);
  *(a1 + 16) = *(v2 - 112);
  *(a1 + 24) = v1;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
}

id OUTLINED_FUNCTION_72_1()
{

  return [v0 (v1 + 3448)];
}

void OUTLINED_FUNCTION_73_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_75_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_94_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_95_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SetVolumeLevelDevicesResolutionResult();
}

id OUTLINED_FUNCTION_96_0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_26892E0A8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 26;
  }

  v3 = sub_268A757B8();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 26;
  }
}

double sub_26892E0F4@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_268A75754(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_2688EF2C0(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_26892E170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_2_4();
  }

  v3 = sub_268A75754();
  if (v4)
  {
    return OUTLINED_FUNCTION_0_12(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26892E1B8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_2_4();
  }

  v2 = sub_268A75868(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_0_12(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26892E200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268A75754();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8(v4);
  return v3;
}

uint64_t sub_26892E248(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 7;
  }

  v3 = sub_268A75894(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 7;
  }
}

double sub_26892E294@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_268A758DC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_2688EF2C0(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26892E2F8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_268A76C60();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8(v3);
  return v2;
}

uint64_t sub_26892E340(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_268A75A50();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8(v3);
  return v2;
}

uint64_t sub_26892E388(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 3;
  }

  v3 = sub_268A75B00(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_26892E3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_2_4();
  }

  v3 = a3();
  if (v4)
  {
    return OUTLINED_FUNCTION_0_12(v3);
  }

  else
  {
    return 0;
  }
}

void *sub_26892E438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268A75754();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_26892E484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268A75754();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_26892E4D4()
{
  sub_26892E760();
  result = sub_268B37B84();
  qword_2802CD900 = result;
  return result;
}

uint64_t NowPlayingState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E752ELL;
    case 2:
      return 0x6465737561702ELL;
    case 1:
      return 0x676E6979616C702ELL;
  }

  sub_268B381C4();

  v2 = sub_268B38404();
  MEMORY[0x26D625650](v2);

  MEMORY[0x26D625650](41, 0xE100000000000000);
  return 0x64657070616D6E75;
}

BOOL static NowPlayingState.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (qword_2802A4D50 != -1)
  {
    swift_once();
  }

  v4 = qword_2802CD900;
  v5 = sub_26892E3EC(a1, qword_2802CD900, sub_268A76C60);
  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = v5;
  }

  v8 = sub_26892E3EC(a2, v4, sub_268A76C60);
  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8;
  }

  return v7 < v10;
}

unint64_t sub_26892E6DC()
{
  result = qword_2802A5DF8;
  if (!qword_2802A5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5DF8);
  }

  return result;
}

unint64_t sub_26892E760()
{
  result = qword_2802A5E00;
  if (!qword_2802A5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5E00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_26892E7E8(char a1)
{
  if (!a1)
  {
    return 0x656C62616E65;
  }

  if (a1 == 1)
  {
    return 0x656C6261736964;
  }

  return 0xD000000000000013;
}

uint64_t sub_26892E840(uint64_t a1)
{
  OUTLINED_FUNCTION_232();
  v3 = sub_268B35494();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  (*(v6 + 16))(v11, a1, v3);
  sub_26892E9C4(v11, 0, v17);
  (*(v6 + 8))(a1, v3);
  v18 = type metadata accessor for MediaIntent();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    sub_2688C058C(v17, &qword_2802A59A0, &unk_268B3F0C0);
    v19 = 1;
  }

  else
  {
    sub_26893207C(v17, v1);
    v19 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v1, v19, 1, v18);
}

uint64_t sub_26892E9C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v440) = a2;
  v456 = a1;
  v452 = a3;
  v436 = sub_268B35474();
  v3 = OUTLINED_FUNCTION_1(v436);
  v435 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_79(v419 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E08, &unk_268B3D910);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v15);
  v424 = sub_268B355B4();
  v16 = OUTLINED_FUNCTION_1(v424);
  v423 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79(v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v41);
  v42 = type metadata accessor for MediaNLv3Intent();
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v48 = (v47 - v46);
  v454 = sub_268B37A54();
  v49 = OUTLINED_FUNCTION_1(v454);
  v455 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v62);
  v64 = v419 - v63;
  v65 = sub_268B35494();
  v66 = OUTLINED_FUNCTION_1(v65);
  v457 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v71);
  v73 = v419 - v72;
  v438 = sub_268B366C4();
  v74 = OUTLINED_FUNCTION_1(v438);
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79(v80 - v79);
  v81 = type metadata accessor for MediaIntent();
  v82 = OUTLINED_FUNCTION_4(v81);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_1_0();
  v87 = v86 - v85;
  *v87 = 259;
  *(v87 + 2) = 5;
  v88 = v86 - v85;
  *(v88 + 8) = 0;
  v439 = (v88 + 8);
  *(v87 + 16) = 0;
  *(v87 + 24) = 3;
  v90 = *(v89 + 36);
  sub_268B37124();
  OUTLINED_FUNCTION_71_2(&v444);
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
  OUTLINED_FUNCTION_45_1(v81[10]);
  v95 = (v87 + v81[11]);
  *v95 = 0;
  v95[1] = 0;
  v441 = v95;
  OUTLINED_FUNCTION_45_1(v81[12]);
  OUTLINED_FUNCTION_45_1(v81[13]);
  v96 = v81[14];
  sub_268B37924();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  OUTLINED_FUNCTION_45_1(v81[15]);
  OUTLINED_FUNCTION_45_1(v81[16]);
  OUTLINED_FUNCTION_45_1(v81[17]);
  v101 = v81[18];
  sub_268B37464();
  OUTLINED_FUNCTION_71_2(v469);
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
  v106 = (v87 + v81[19]);
  *v106 = 0;
  v106[1] = 0;
  v437 = v106;
  v107 = v81[20];
  sub_268B37034();
  OUTLINED_FUNCTION_71_2(v470);
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
  v451 = v81;
  v112 = v81[21];
  sub_268B378F4();
  v450 = v87;
  OUTLINED_FUNCTION_71_2(v471);
  v113 = v65;
  v114 = v457;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
  v119 = *(v114 + 16);
  v119(v73, v456, v113);
  v120 = *(v114 + 88);
  v121 = OUTLINED_FUNCTION_46_1();
  v123 = v122(v121);
  v124 = 0x2802A4000uLL;
  v214 = v123 == *MEMORY[0x277D5C128];
  v449 = v113;
  if (v214)
  {
    v125 = *(v457 + 96);
    v126 = OUTLINED_FUNCTION_46_1();
    v127(v126);
LABEL_6:
    v132 = v454;
    v133 = *(v76 + 32);
    v134 = v73;
    v135 = v438;
    v133(v453, v134, v438);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v132, qword_2802CDA10);
    OUTLINED_FUNCTION_35_1();
    (*(v136 + 16))(v64);
    v137 = sub_268B37A34();
    v138 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_183_0(v138))
    {
      v139 = OUTLINED_FUNCTION_14();
      *v139 = 0;
      _os_log_impl(&dword_2688BB000, v137, v138, "MediaIntent#init creating MediaIntent from .NLv3IntentOnly parse", v139, 2u);
      v132 = v454;
      OUTLINED_FUNCTION_12();
    }

    (*(v455 + 8))(v64, v132);
    v133(v48, v453, v135);
    if (qword_2802A50D0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_13();
    sub_2689339FC(v140, v141);
    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    v142 = v450;
    *v450 = v464;
    if (qword_2802A50E8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    *(v142 + 1) = v464;
    if (qword_2802A50D8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    *(v142 + 2) = v464;
    if (qword_2802A50E0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    *v439 = v464;
    if (qword_2802A50F8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    *(v142 + 24) = v464;
    if (qword_2802A4D88 != -1)
    {
      OUTLINED_FUNCTION_7_5();
    }

    OUTLINED_FUNCTION_12_5();
    v143 = sub_268B35C74();
    OUTLINED_FUNCTION_27_3(v143, v463);
    if (qword_2802A4D90 != -1)
    {
      OUTLINED_FUNCTION_31_1();
    }

    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    *v441 = v464;
    if (qword_2802A4D98 != -1)
    {
      OUTLINED_FUNCTION_6_9();
    }

    OUTLINED_FUNCTION_12_5();
    v144 = sub_268B35C74();
    OUTLINED_FUNCTION_27_3(v144, &v464 + 8);
    if (qword_2802A4DA0 != -1)
    {
      OUTLINED_FUNCTION_5_3();
    }

    OUTLINED_FUNCTION_12_5();
    v145 = sub_268B35C74();
    OUTLINED_FUNCTION_27_3(v145, v465);
    if (qword_2802A4DA8 != -1)
    {
      OUTLINED_FUNCTION_4_5();
    }

    OUTLINED_FUNCTION_12_5();
    v146 = sub_268B35C74();
    OUTLINED_FUNCTION_27_3(v146, &v466);
    if (qword_2802A4DB0 != -1)
    {
      OUTLINED_FUNCTION_9_7();
    }

    OUTLINED_FUNCTION_12_5();
    v147 = sub_268B35C74();
    OUTLINED_FUNCTION_27_3(v147, &v467);
    sub_26893F2D0();
    OUTLINED_FUNCTION_27_3(v148, v468);
    if (qword_2802A4DC0 != -1)
    {
      OUTLINED_FUNCTION_36_1();
    }

    OUTLINED_FUNCTION_69_2(v472);
    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    OUTLINED_FUNCTION_43_1(v469);
    sub_268932694(v138, v149, v150, v151);
    if (qword_2802A4DD0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_69_2(&v473);
    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    OUTLINED_FUNCTION_43_1(v470);
    sub_268932694(v138, v152, v153, v154);
    if (qword_2802A4DD8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_69_2(&v474);
    OUTLINED_FUNCTION_12_5();
    sub_268B35C64();
    OUTLINED_FUNCTION_43_1(v471);
    sub_268932694(v138, v155, v156, v157);
    if (v440)
    {
      v158 = sub_268940390();
      v160 = v159;
      v161 = OUTLINED_FUNCTION_13_4();
      v162(v161);
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_67_0();
      *v163 = v158;
      v163[1] = v160;
    }

    else
    {
      v164 = OUTLINED_FUNCTION_13_4();
      v165(v164);
      OUTLINED_FUNCTION_30_1();
    }

    goto LABEL_41;
  }

  v419[0] = v73;
  if (v123 == *MEMORY[0x277D5C158])
  {
    v128 = *(v457 + 96);
    v73 = v419[0];
    v129 = OUTLINED_FUNCTION_46_1();
    v130(v129);
    v131 = *&v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E20, qword_268B3D940) + 48)];

    goto LABEL_6;
  }

  if (v123 == *MEMORY[0x277D5C150])
  {
    v168 = v419[0];
    (*(v457 + 96))(v419[0], v113);
    v169 = v435;
    v170 = v433;
    v171 = v436;
    (*(v435 + 32))(v433, v168, v436);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v454, qword_2802CDA10);
    OUTLINED_FUNCTION_69_2(&v475);
    v173 = *(v172 + 16);
    v174 = v434;
    v447 = v175;
    v453 = (v172 + 16);
    v448 = v173;
    v173(v434);
    v176 = *(v169 + 16);
    v142 = v431;
    v176(v431, v170, v171);
    v177 = sub_268B37A34();
    v178 = sub_268B37EE4();
    v179 = OUTLINED_FUNCTION_19(v178);
    v446 = (v169 + 16);
    v445 = v176;
    if (v179)
    {
      v180 = OUTLINED_FUNCTION_172_0();
      v181 = OUTLINED_FUNCTION_173_0();
      *&v464 = v181;
      *v180 = 136315138;
      v176(v428, v142, v171);
      v182 = sub_268B37C24();
      v183 = v171;
      v185 = v184;
      v186 = *(v169 + 8);
      v186(v142, v183);
      v187 = sub_26892CDB8(v182, v185, &v464);

      *(v180 + 4) = v187;
      v124 = v455;
      _os_log_impl(&dword_2688BB000, v177, v174, "MediaIntent#init directInvocation: %s", v180, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v181);
      OUTLINED_FUNCTION_12();
      v170 = v433;
      OUTLINED_FUNCTION_12();
    }

    else
    {

      v186 = *(v169 + 8);
      v186(v142, v171);
    }

    v210 = *(v124 + 8);
    v210(v434, v454);
    v211 = sub_268B35454();
    v213 = v212;
    v214 = v211 == 0xD00000000000003CLL && 0x8000000268B57880 == v212;
    v215 = v432;
    if (v214 || (v216 = v211, (OUTLINED_FUNCTION_58_1() & 1) != 0))
    {

      type metadata accessor for DirectInvocationHelper();
      sub_268A69384();
      if (v217)
      {
        v218 = sub_268AA3904();
        v219 = OUTLINED_FUNCTION_17_3();
        v220(v219, v449);
        OUTLINED_FUNCTION_50_1();
        v186(v170, v436);
        OUTLINED_FUNCTION_39_2();
        *(v142 + 24) = v218;
LABEL_41:
        v166 = v452;
        sub_268932630(v142, v452);
        __swift_storeEnumTagSinglePayload(v166, 0, 1, v451);
        return OUTLINED_FUNCTION_29_1();
      }

      v446 = v186;
      OUTLINED_FUNCTION_24_2(&v451);
      v237 = *(v236 - 256);
      OUTLINED_FUNCTION_19_2();
      v238();
      v239 = sub_268B37A34();
      v240 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v240))
      {
        v241 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_37_2(v241);
        OUTLINED_FUNCTION_28_3(&dword_2688BB000, v242, v243, "MediaIntent#init returning nil for intent since we could not find a button pressed.");
        OUTLINED_FUNCTION_20_2();

        v244 = OUTLINED_FUNCTION_68_2();
        v245(v244);
        (v176)(v210, v237);
      }

      else
      {

        v264 = OUTLINED_FUNCTION_68_2();
        v265(v264);
        v266 = OUTLINED_FUNCTION_70_1();
        (v210)(v266);
      }

      v267 = OUTLINED_FUNCTION_63_1();
      v446(v267);
      goto LABEL_93;
    }

    v246 = v216 == 0xD000000000000048 && 0x8000000268B578C0 == v213;
    if (v246 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
    {

      type metadata accessor for DirectInvocationHelper();
      sub_268A69394();
      if (v248)
      {
        v249 = v247;
        v250 = v248;
        v251 = OUTLINED_FUNCTION_17_3();
        v252(v251, v449);
        OUTLINED_FUNCTION_50_1();
        v253 = OUTLINED_FUNCTION_32_2();
        (v186)(v253);
        OUTLINED_FUNCTION_39_2();
        *(v142 + 8) = v249;
        *(v142 + 16) = v250;
        goto LABEL_41;
      }

      sub_268A693A4();
      OUTLINED_FUNCTION_64_1();
      if (v292)
      {
        v293 = v291;
        v294 = v292;
        v295 = OUTLINED_FUNCTION_13_4();
        v296(v295);
        v297 = OUTLINED_FUNCTION_32_2();
        (v186)(v297);
        OUTLINED_FUNCTION_39_2();
        *(v142 + 8) = v293;
        *(v142 + 16) = v294;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_24_2(v443);
      v382 = *(v381 - 256);
      OUTLINED_FUNCTION_19_2();
      v383();
      v384 = sub_268B37A34();
      v385 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v385))
      {
        v386 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_37_2(v386);
        OUTLINED_FUNCTION_28_3(&dword_2688BB000, v387, v388, "MediaIntent#init returning nil for intent since we could not find a language.");
        OUTLINED_FUNCTION_20_2();

        v389 = OUTLINED_FUNCTION_13_4();
        v390(v389);
        v391 = v210;
        v392 = v382;
LABEL_114:
        (v176)(v391, v392);
LABEL_120:
        v404 = OUTLINED_FUNCTION_63_1();
        (v186)(v404);
LABEL_93:
        OUTLINED_FUNCTION_39_2();
        goto LABEL_94;
      }

      v401 = OUTLINED_FUNCTION_13_4();
      v402(v401);
      v403 = OUTLINED_FUNCTION_70_1();
      goto LABEL_119;
    }

    if (v216 == 0xD000000000000046 && 0x8000000268B56FE0 == v213)
    {

      v300 = v449;
    }

    else
    {
      v299 = OUTLINED_FUNCTION_58_1();

      v300 = v449;
      if ((v299 & 1) == 0)
      {
        v444 = v210;
        v301 = v186;
        v302 = v420;
        v303 = v454;
        OUTLINED_FUNCTION_19_2();
        v304();
        v305 = OUTLINED_FUNCTION_70_1();
        v306 = v436;
        v445(v305);
        v307 = sub_268B37A34();
        v308 = v170;
        v309 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_183_0(v309))
        {
          v310 = v215;
          v311 = OUTLINED_FUNCTION_172_0();
          v312 = OUTLINED_FUNCTION_173_0();
          *&v464 = v312;
          *v311 = 136315138;
          v313 = sub_268B35454();
          v315 = v314;
          v301(v310, v306);
          v316 = sub_26892CDB8(v313, v315, &v464);

          *(v311 + 4) = v316;
          _os_log_impl(&dword_2688BB000, v307, v309, "MediaIntent#init unexpected direct invocation identifier: %s", v311, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v312);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_20_2();

          v317 = OUTLINED_FUNCTION_17_3();
          v318(v317, v300);
          OUTLINED_FUNCTION_35_1();
          v444(v420, v454);
          v301(v433, v436);
        }

        else
        {

          v405 = OUTLINED_FUNCTION_17_3();
          v406(v405, v300);
          v301(v215, v306);
          v444(v302, v303);
          v301(v308, v306);
        }

        goto LABEL_93;
      }
    }

    type metadata accessor for DirectInvocationHelper();
    sub_268A69394();
    if (v321)
    {
      v322 = v320;
      v323 = v321;
      v324 = OUTLINED_FUNCTION_17_3();
      v325(v324, v300);
      OUTLINED_FUNCTION_50_1();
      v326 = OUTLINED_FUNCTION_32_2();
      (v186)(v326);
      OUTLINED_FUNCTION_67_0();
      *v327 = v322;
      v327[1] = v323;
    }

    else
    {
      sub_268A693B4();
      OUTLINED_FUNCTION_64_1();
      if (!v394)
      {
        OUTLINED_FUNCTION_24_2(v442);
        v408 = *(v407 - 256);
        OUTLINED_FUNCTION_19_2();
        v409();
        v410 = sub_268B37A34();
        v411 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v411))
        {
          v412 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_37_2(v412);
          OUTLINED_FUNCTION_28_3(&dword_2688BB000, v413, v414, "MediaIntent#init returning nil for intent since we could not find a DeviceID.");
          OUTLINED_FUNCTION_20_2();

          v415 = OUTLINED_FUNCTION_16_4();
          v416(v415, v300);
          OUTLINED_FUNCTION_35_1();
          v391 = v210;
          v392 = v408;
          goto LABEL_114;
        }

        v417 = OUTLINED_FUNCTION_16_4();
        v418(v417, v300);
        OUTLINED_FUNCTION_35_1();
        v403 = v170;
LABEL_119:
        (v210)(v403);
        goto LABEL_120;
      }

      v395 = v393;
      v396 = v394;
      v397 = OUTLINED_FUNCTION_16_4();
      v398(v397, v300);
      v399 = OUTLINED_FUNCTION_32_2();
      (v186)(v399);
      OUTLINED_FUNCTION_67_0();
      *v400 = v395;
      v400[1] = v396;
    }

    OUTLINED_FUNCTION_39_2();
    goto LABEL_41;
  }

  if (v123 != *MEMORY[0x277D5C160])
  {
    v221 = v455;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v222 = v454;
    v223 = __swift_project_value_buffer(v454, qword_2802CDA10);
    v224 = v429;
    (*(v221 + 16))(v429, v223, v222);
    v225 = v427;
    v119(v427, v456, v113);
    v226 = sub_268B37A34();
    v227 = sub_268B37ED4();
    if (os_log_type_enabled(v226, v227))
    {
      v228 = OUTLINED_FUNCTION_172_0();
      v453 = OUTLINED_FUNCTION_173_0();
      *&v464 = v453;
      *v228 = 136315138;
      v119(v426, v225, v113);
      OUTLINED_FUNCTION_46_1();
      v229 = sub_268B37C24();
      v231 = v230;
      v232 = *(v457 + 8);
      v233 = v113;
      v232(v225, v113);
      v234 = sub_26892CDB8(v229, v231, &v464);

      *(v228 + 4) = v234;
      _os_log_impl(&dword_2688BB000, v226, v227, "MediaIntent#init unexpected parse type: %s, returning nil MediaIntent", v228, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v453);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_20_2();

      v235 = OUTLINED_FUNCTION_65_0();
      v232(v235, v113);
      (*(v455 + 8))(v429, v454);
    }

    else
    {

      v232 = *(v457 + 8);
      v233 = v113;
      v254 = OUTLINED_FUNCTION_65_0();
      v232(v254, v113);
      v232(v225, v113);
      (*(v221 + 8))(v224, v222);
    }

    v232(v419[0], v233);
    goto LABEL_93;
  }

  v188 = v455;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v189 = v454;
  __swift_project_value_buffer(v454, qword_2802CDA10);
  v191 = *(v188 + 16);
  v142 = v188 + 16;
  v190 = v191;
  v192 = OUTLINED_FUNCTION_72_2(&v457);
  (v191)(v192);
  v193 = sub_268B37A34();
  v194 = sub_268B37ED4();
  if (os_log_type_enabled(v193, v194))
  {
    v195 = OUTLINED_FUNCTION_14();
    *v195 = 0;
    _os_log_impl(&dword_2688BB000, v193, v194, "MediaIntent#init creating MediaIntent from .uso parse", v195, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_35_1();
  v197 = *(v196 + 8);
  v455 = v196 + 8;
  v453 = v197;
  (v197)(v430, v189);
  v198 = sub_268A40454();
  if (v198)
  {
    v199 = v198;
    sub_268B35DC4();
    sub_268932738(v468, v459, &byte_2802A6450, &byte_268B3BE10);
    if (v459[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E18, &qword_268B3D938);
      if (swift_dynamicCast())
      {
        if (*(&v461 + 1))
        {
          v440 = v199;
          sub_2688E6514(&v460, &v464);
          v200 = v421;
          v201 = OUTLINED_FUNCTION_70_1();
          (v190)(v201);
          sub_268932738(v468, &v460, &byte_2802A6450, &byte_268B3BE10);
          v202 = sub_268B37A34();
          v203 = sub_268B37F04();
          if (OUTLINED_FUNCTION_183_0(v203))
          {
            v204 = OUTLINED_FUNCTION_172_0();
            v205 = OUTLINED_FUNCTION_173_0();
            v458 = v205;
            *v204 = 136315138;
            v142 = &byte_2802A6450;
            sub_268932738(&v460, v459, &byte_2802A6450, &byte_268B3BE10);
            __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
            v206 = sub_268B37C24();
            v208 = v207;
            sub_2688C058C(&v460, &byte_2802A6450, &byte_268B3BE10);
            v209 = sub_26892CDB8(v206, v208, &v458);

            *(v204 + 4) = v209;
            _os_log_impl(&dword_2688BB000, v202, v203, "Setting attributes for MediaIntent from task: %s", v204, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v205);
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();
          }

          else
          {

            sub_2688C058C(&v460, &byte_2802A6450, &byte_268B3BE10);
          }

          OUTLINED_FUNCTION_21_3();
          v328();
          OUTLINED_FUNCTION_39_2();
          v329 = v467;
          v330 = OUTLINED_FUNCTION_23_3();
          __swift_project_boxed_opaque_existential_1(v330, v331);
          v332 = *(v329 + 8);
          OUTLINED_FUNCTION_129();
          sub_268B37324();
          *v142 = sub_268930CE4();
          v333 = v467;
          v334 = OUTLINED_FUNCTION_23_3();
          __swift_project_boxed_opaque_existential_1(v334, v335);
          v336 = *(v333 + 16);
          v337 = OUTLINED_FUNCTION_129();
          *(v142 + 1) = v338(v337, v333) & 1;
          v339 = v467;
          v340 = OUTLINED_FUNCTION_23_3();
          __swift_project_boxed_opaque_existential_1(v340, v341);
          v342 = *(v339 + 24);
          v343 = OUTLINED_FUNCTION_129();
          *(v142 + 2) = v344(v343, v339);
          v345 = v467;
          v346 = OUTLINED_FUNCTION_23_3();
          __swift_project_boxed_opaque_existential_1(v346, v347);
          v348 = *(v345 + 32);
          v349 = OUTLINED_FUNCTION_129();
          *(v142 + 8) = v350(v349, v345);
          *(v142 + 16) = v351;
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v352 = sub_268B377B4();
          OUTLINED_FUNCTION_27_3(v352, v463);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v353 = sub_268B37784();
          v354 = v441;
          *v441 = v353;
          *(v354 + 1) = v355;
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v356 = sub_268B377C4();
          OUTLINED_FUNCTION_27_3(v356, &v464 + 8);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v357 = sub_268B37814();
          OUTLINED_FUNCTION_27_3(v357, v465);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v358 = sub_268B377F4();
          OUTLINED_FUNCTION_27_3(v358, &v466);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v359 = sub_268B37804();
          OUTLINED_FUNCTION_27_3(v359, &v467);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_129();
          v360 = sub_268B377E4();
          OUTLINED_FUNCTION_27_3(v360, v468);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_20_3(v472);
          sub_268B37824();
          OUTLINED_FUNCTION_43_1(v469);
          sub_268932694(v200, v361, v362, v363);
          OUTLINED_FUNCTION_67_0();
          *v364 = 0;
          v364[1] = 0;
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_20_3(&v473);
          sub_268B377D4();
          OUTLINED_FUNCTION_43_1(v470);
          sub_268932694(v200, v365, v366, v367);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_20_3(&v474);
          sub_268B37794();
          OUTLINED_FUNCTION_43_1(v471);
          sub_268932694(v200, v368, v369, v370);
          v371 = v467;
          v372 = OUTLINED_FUNCTION_23_3();
          __swift_project_boxed_opaque_existential_1(v372, v373);
          v374 = *(*(v371 + 8) + 16);
          OUTLINED_FUNCTION_20_3(&v445);
          sub_268B376D4();

          v375 = *(v457 + 8);
          v376 = OUTLINED_FUNCTION_65_0();
          v375(v376, v113);
          sub_2688C058C(v468, &byte_2802A6450, &byte_268B3BE10);
          OUTLINED_FUNCTION_43_1(&v444);
          sub_268932694(v200, v377, v378, v379);
          __swift_destroy_boxed_opaque_existential_0Tm(&v464);
          v380 = OUTLINED_FUNCTION_49_0();
          (v375)(v380);
          goto LABEL_41;
        }
      }

      else
      {
        v462 = 0;
        v460 = 0u;
        v461 = 0u;
      }
    }

    else
    {
      sub_2688C058C(v459, &byte_2802A6450, &byte_268B3BE10);
      v460 = 0u;
      v461 = 0u;
      v462 = 0;
    }

    sub_2688C058C(&v460, &qword_2802A5E10, &qword_268B3D930);
    v190();
    sub_268932738(v468, &v464, &byte_2802A6450, &byte_268B3BE10);
    v268 = sub_268B37A34();
    v269 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_183_0(v269))
    {
      v270 = OUTLINED_FUNCTION_172_0();
      v271 = v457;
      v272 = v270;
      v273 = OUTLINED_FUNCTION_173_0();
      v459[0] = v273;
      *v272 = 136315138;
      sub_268932738(&v464, &v460, &byte_2802A6450, &byte_268B3BE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
      v274 = sub_268B37C24();
      v276 = v275;
      sub_2688C058C(&v464, &byte_2802A6450, &byte_268B3BE10);
      v277 = sub_26892CDB8(v274, v276, v459);

      *(v272 + 4) = v277;
      _os_log_impl(&dword_2688BB000, v268, v269, "Fatal: Unable to cast task: %s to ControlsMediaTask", v272, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v273);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v278 = *(v271 + 8);
      v279 = OUTLINED_FUNCTION_65_0();
      v280 = v449;
      v278(v279, v449);
    }

    else
    {

      v278 = *(v457 + 8);
      v280 = v449;
      v278(v456, v449);
      v282 = OUTLINED_FUNCTION_23_3();
      sub_2688C058C(v282, v283, &byte_268B3BE10);
    }

    OUTLINED_FUNCTION_21_3();
    v281();
    sub_2688C058C(v468, &byte_2802A6450, &byte_268B3BE10);
    v278(v419[0], v280);
    goto LABEL_93;
  }

  v255 = OUTLINED_FUNCTION_72_2(&v452);
  (v190)(v255);
  v256 = sub_268B37A34();
  v257 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_19(v257))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_28_3(&dword_2688BB000, v258, v259, "No tasks found in usoTasks input, might be a confirmation response.");
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_21_3();
  v260();
  v261 = v425;
  sub_268A3FD3C(v425);
  v262 = v424;
  if (__swift_getEnumTagSinglePayload(v261, 1, v424) == 1)
  {
    v263 = *(v457 + 8);
    v263(v456, v113);
    sub_2688C058C(v261, &qword_2802A5E08, &unk_268B3D910);
  }

  else
  {
    v287 = v423;
    v288 = v422;
    (*(v423 + 32))(v422, v261, v262);
    v289 = sub_2689F8358();
    v142 = v289;
    v263 = *(v457 + 8);
    v263(v456, v113);
    (*(v287 + 8))(v288, v262);
    if (v289 != 3)
    {
      OUTLINED_FUNCTION_39_2();
      *(v289 + 0x18) = v289;
      v319 = OUTLINED_FUNCTION_49_0();
      (v263)(v319);
      goto LABEL_41;
    }
  }

  OUTLINED_FUNCTION_39_2();
  v290 = OUTLINED_FUNCTION_49_0();
  (v263)(v290);
LABEL_94:
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_96();
  return __swift_storeEnumTagSinglePayload(v284, v285, v286, v451);
}

uint64_t sub_268930CE4()
{
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268930D34(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_268930ECC(uint64_t a1)
{
  result = sub_2689339FC(&qword_2802A59A8, type metadata accessor for MediaIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MediaIntent()
{
  result = qword_2802A5E28;
  if (!qword_2802A5E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268930F74()
{
  v1 = *(v0 + *(type metadata accessor for MediaIntent() + 40));
}

uint64_t sub_268930FA8()
{
  v1 = *(v0 + *(type metadata accessor for SettingsIntent() + 44));
}

uint64_t sub_268930FDC()
{
  if (qword_2802A4D88 != -1)
  {
    OUTLINED_FUNCTION_7_5();
  }

  type metadata accessor for MediaNLv3Intent();
  OUTLINED_FUNCTION_0_13();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931084()
{
  if (qword_2802A4D88 != -1)
  {
    OUTLINED_FUNCTION_7_5();
  }

  type metadata accessor for SettingNLv3Intent();
  OUTLINED_FUNCTION_2_9();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931114()
{
  if (qword_2802A4D88 != -1)
  {
    OUTLINED_FUNCTION_7_5();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  OUTLINED_FUNCTION_1_9();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_2689311A8()
{
  v1 = (v0 + *(type metadata accessor for MediaIntent() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2689311E8()
{
  v0 = type metadata accessor for SettingsIntent();
  OUTLINED_FUNCTION_242(*(v0 + 48));
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_268931260()
{
  v0 = type metadata accessor for MediaPlayerIntent();
  OUTLINED_FUNCTION_242(*(v0 + 64));
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_2689312D8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  if (qword_2802A4D90 != -1)
  {
    OUTLINED_FUNCTION_31_1();
  }

  a1(0);
  sub_2689339FC(a2, a3);
  sub_268B35C64();
  return v7;
}

uint64_t sub_2689313C8()
{
  v1 = *(v0 + *(type metadata accessor for MediaIntent() + 48));
}

uint64_t sub_268931414()
{
  if (qword_2802A4D98 != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  type metadata accessor for MediaNLv3Intent();
  OUTLINED_FUNCTION_0_13();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_2689314BC()
{
  if (qword_2802A4D98 != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  type metadata accessor for SettingNLv3Intent();
  OUTLINED_FUNCTION_2_9();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_26893154C()
{
  if (qword_2802A4D98 != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  OUTLINED_FUNCTION_1_9();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931620()
{
  v1 = OUTLINED_FUNCTION_54_2();
  v3 = *(v0 + *(v2(v1) + 52));
}

uint64_t sub_268931658()
{
  v1 = *(v0 + *(type metadata accessor for SettingsIntent() + 56));
}

uint64_t sub_26893168C()
{
  if (qword_2802A4DA0 != -1)
  {
    OUTLINED_FUNCTION_5_3();
  }

  type metadata accessor for MediaNLv3Intent();
  OUTLINED_FUNCTION_0_13();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931734()
{
  if (qword_2802A4DA0 != -1)
  {
    OUTLINED_FUNCTION_5_3();
  }

  type metadata accessor for SettingNLv3Intent();
  OUTLINED_FUNCTION_2_9();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_2689317C4()
{
  if (qword_2802A4DA0 != -1)
  {
    OUTLINED_FUNCTION_5_3();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  OUTLINED_FUNCTION_1_9();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931898()
{
  v1 = OUTLINED_FUNCTION_54_2();
  v3 = *(v0 + *(v2(v1) + 60));
}

uint64_t sub_2689318E8()
{
  if (qword_2802A4DA8 != -1)
  {
    OUTLINED_FUNCTION_4_5();
  }

  type metadata accessor for MediaNLv3Intent();
  OUTLINED_FUNCTION_0_13();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931978()
{
  v1 = *(v0 + *(type metadata accessor for MediaPlayerIntent() + 76));
}

uint64_t sub_2689319AC()
{
  if (qword_2802A4DA8 != -1)
  {
    OUTLINED_FUNCTION_4_5();
  }

  type metadata accessor for SettingNLv3Intent();
  OUTLINED_FUNCTION_2_9();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931A3C()
{
  if (qword_2802A4DA8 != -1)
  {
    OUTLINED_FUNCTION_4_5();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  OUTLINED_FUNCTION_1_9();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931AF8()
{
  v1 = OUTLINED_FUNCTION_54_2();
  v3 = *(v0 + *(v2(v1) + 64));
}

uint64_t sub_268931B48()
{
  if (qword_2802A4DB0 != -1)
  {
    OUTLINED_FUNCTION_9_7();
  }

  type metadata accessor for MediaNLv3Intent();
  OUTLINED_FUNCTION_0_13();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931BD8()
{
  v1 = *(v0 + *(type metadata accessor for MediaPlayerIntent() + 80));
}

uint64_t sub_268931C0C()
{
  if (qword_2802A4DB0 != -1)
  {
    OUTLINED_FUNCTION_9_7();
  }

  type metadata accessor for SettingNLv3Intent();
  OUTLINED_FUNCTION_2_9();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931C9C()
{
  if (qword_2802A4DB0 != -1)
  {
    OUTLINED_FUNCTION_9_7();
  }

  type metadata accessor for MediaPlayerNLv3Intent();
  OUTLINED_FUNCTION_1_9();
  sub_2689339FC(v0, v1);
  OUTLINED_FUNCTION_11_5();

  return sub_268B35C74();
}

uint64_t sub_268931D58()
{
  v1 = OUTLINED_FUNCTION_54_2();
  v3 = *(v0 + *(v2(v1) + 68));
}

uint64_t sub_268931DA8()
{
  v1 = OUTLINED_FUNCTION_54_2();
  v3 = *(v0 + *(v2(v1) + 72));
}

uint64_t sub_268931DE4()
{
  v1 = *(v0 + *(type metadata accessor for MediaPlayerIntent() + 84));
}

uint64_t sub_268931E6C()
{
  OUTLINED_FUNCTION_232();
  v0 = type metadata accessor for SettingsIntent();
  return OUTLINED_FUNCTION_74_1(&qword_2802A5BA8, &qword_268B3C690, *(v0 + 76));
}

uint64_t sub_268931EF0()
{
  OUTLINED_FUNCTION_232();
  v0 = type metadata accessor for MediaPlayerIntent();
  return OUTLINED_FUNCTION_74_1(&qword_2802A5BA8, &qword_268B3C690, *(v0 + 88));
}

uint64_t sub_268931F74(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  if (qword_2802A4DC0 != -1)
  {
    OUTLINED_FUNCTION_36_1();
  }

  a1(0);
  sub_2689339FC(a2, a3);

  return sub_268B35C64();
}

uint64_t sub_26893207C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268932128()
{
  OUTLINED_FUNCTION_232();
  v0 = type metadata accessor for MediaPlayerIntent();
  return OUTLINED_FUNCTION_74_1(&qword_2802A5CA8, &unk_268B3CE30, *(v0 + 40));
}

uint64_t sub_268932164()
{
  OUTLINED_FUNCTION_232();
  v0 = type metadata accessor for SettingsIntent();
  return OUTLINED_FUNCTION_74_1(&qword_2802A5CA8, &unk_268B3CE30, *(v0 + 60));
}

uint64_t sub_2689321A0()
{
  OUTLINED_FUNCTION_232();
  sub_268B37924();
  OUTLINED_FUNCTION_96();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_268932214@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268930CE4();
  *a2 = result;
  return result;
}

uint64_t sub_268932244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26892E7E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2689322C0()
{
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268932314(char a1)
{
  result = 25697;
  switch(a1)
  {
    case 1:
      result = 0x6F69647561;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 25443;
      break;
    case 4:
      result = 6841459;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_2689323A0()
{
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  return v0 != 0;
}

uint64_t sub_268932438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2689322C0();
  *a2 = result;
  return result;
}

uint64_t sub_268932468@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268932314(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_2689324F4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2689323A0();
  *a2 = result;
  return result;
}

uint64_t sub_2689325A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_268932630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268932694(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_25(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_123();
  v9(v8);
  return v4;
}

uint64_t sub_2689326E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_268932738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_25(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_123();
  v9(v8);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for MediaVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268932850);
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

uint64_t getEnumTagSinglePayload for MediaQuestionAttributes(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for MediaQuestionAttributes(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268932978);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaViewOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaViewOption(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268932B04);
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

uint64_t sub_268932B50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  v7 = OUTLINED_FUNCTION_182(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[9];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
    v14 = OUTLINED_FUNCTION_182(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = a3[14];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
      v17 = OUTLINED_FUNCTION_182(v16);
      if (*(v18 + 84) == a2)
      {
        v9 = v17;
        v10 = a3[18];
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
        v20 = OUTLINED_FUNCTION_182(v19);
        if (*(v21 + 84) == a2)
        {
          v9 = v20;
          v10 = a3[20];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
          v10 = a3[21];
        }
      }
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v12 = *(a1 + a3[10]);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t sub_268932D2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  result = OUTLINED_FUNCTION_182(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a4[9];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[10]) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
    v14 = OUTLINED_FUNCTION_182(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[14];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
      v17 = OUTLINED_FUNCTION_182(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = v17;
        v12 = a4[18];
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
        v20 = OUTLINED_FUNCTION_182(v19);
        if (*(v21 + 84) == a3)
        {
          v11 = v20;
          v12 = a4[20];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
          v12 = a4[21];
        }
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_268932EF0()
{
  sub_2689332AC(319, &qword_2802A5E38, &type metadata for MediaVerb, MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2689332AC(319, &qword_2802A5E40, &type metadata for MediaQuestionAttributes, MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2689332AC(319, &qword_2802A5E48, &type metadata for MediaViewOption, MEMORY[0x277D83D88]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_2689332AC(319, &qword_2802A5E50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2689332AC(319, &qword_2802A5E58, &type metadata for ConfirmationStateValue, MEMORY[0x277D83D88]);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_2689332FC(319, &qword_2802A5E60, MEMORY[0x277D5F7B8], MEMORY[0x277D83D88]);
          if (v11 > 0x3F)
          {
            return v9;
          }

          sub_2689332AC(319, &qword_2802A5E68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v13 > 0x3F)
          {
            return v12;
          }

          sub_2689332FC(319, &qword_2802A5E70, MEMORY[0x277D5FA18], MEMORY[0x277D83D88]);
          if (v14 > 0x3F)
          {
            return v9;
          }

          sub_2689332FC(319, &qword_2802A5E78, MEMORY[0x277D5F790], MEMORY[0x277D83940]);
          if (v15 > 0x3F)
          {
            return v9;
          }

          sub_2689332FC(319, &qword_2802A5E80, MEMORY[0x277D5F880], MEMORY[0x277D83D88]);
          if (v16 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_2689332FC(319, &qword_2802A5E88, MEMORY[0x277D5F748], MEMORY[0x277D83D88]);
            v1 = v17;
            if (v18 <= 0x3F)
            {
              sub_2689332FC(319, &qword_2802A5E90, MEMORY[0x277D5F9D0], MEMORY[0x277D83D88]);
              v1 = v19;
              if (v20 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_2689332AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2689332FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_268933364()
{
  result = qword_2802A5E98;
  if (!qword_2802A5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5E98);
  }

  return result;
}

unint64_t sub_2689333EC()
{
  result = qword_2802A5EB0;
  if (!qword_2802A5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5EB0);
  }

  return result;
}

unint64_t sub_268933444()
{
  result = qword_2802A5EB8;
  if (!qword_2802A5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5EB8);
  }

  return result;
}

unint64_t sub_26893349C()
{
  result = qword_2802A5EC0;
  if (!qword_2802A5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5EC0);
  }

  return result;
}

unint64_t sub_268933524()
{
  result = qword_2802A5ED8;
  if (!qword_2802A5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5ED8);
  }

  return result;
}

unint64_t sub_26893357C()
{
  result = qword_2802A5EE0;
  if (!qword_2802A5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5EE0);
  }

  return result;
}

unint64_t sub_2689335D4()
{
  result = qword_2802A5EE8;
  if (!qword_2802A5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5EE8);
  }

  return result;
}

unint64_t sub_26893365C()
{
  result = qword_2802A5F00;
  if (!qword_2802A5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F00);
  }

  return result;
}

unint64_t sub_2689336B4()
{
  result = qword_2802A5F08;
  if (!qword_2802A5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F08);
  }

  return result;
}

unint64_t sub_268933708()
{
  result = qword_2802A5F10;
  if (!qword_2802A5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F10);
  }

  return result;
}

unint64_t sub_26893375C()
{
  result = qword_2802A5F18;
  if (!qword_2802A5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F18);
  }

  return result;
}

unint64_t sub_2689337B0()
{
  result = qword_2802A5F20;
  if (!qword_2802A5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F20);
  }

  return result;
}

unint64_t sub_268933804()
{
  result = qword_2802A5F28;
  if (!qword_2802A5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F28);
  }

  return result;
}

unint64_t sub_268933858()
{
  result = qword_2802A5F30;
  if (!qword_2802A5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F30);
  }

  return result;
}

unint64_t sub_2689338AC()
{
  result = qword_2802A5F38;
  if (!qword_2802A5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F38);
  }

  return result;
}

unint64_t sub_268933900()
{
  result = qword_2802A5F40;
  if (!qword_2802A5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F40);
  }

  return result;
}

unint64_t sub_268933954()
{
  result = qword_2802A5F48;
  if (!qword_2802A5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F48);
  }

  return result;
}

unint64_t sub_2689339A8()
{
  result = qword_2802A5F50;
  if (!qword_2802A5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F50);
  }

  return result;
}

uint64_t sub_2689339FC(unint64_t *a1, void (*a2)(uint64_t))
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

void *OUTLINED_FUNCTION_3_9()
{
  v1 = *(v0 - 128);
  result = __swift_project_boxed_opaque_existential_1((v0 - 160), *(v0 - 136));
  v3 = *(*(v1 + 8) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_4()
{
  v2 = *(*(v1 - 256) + 8);
  result = v0;
  v4 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_2@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 336);
  return result;
}

void OUTLINED_FUNCTION_28_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return sub_2689326E0(v0, type metadata accessor for MediaIntent);
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return sub_2689326E0(v0, type metadata accessor for MediaNLv3Intent);
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  result = v0;
  v3 = *(v1 - 464);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_63_1()
{
  result = *(v0 - 488);
  v2 = *(v0 - 464);
  return result;
}

uint64_t OUTLINED_FUNCTION_74_1@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_268932738(v4 + a3, v3, a1, a2);
}

uint64_t sub_268933E68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v72 = a8;
  v69 = a5;
  v70 = a7;
  v64 = a6;
  v65 = a2;
  v67 = a3;
  v68 = a4;
  v66 = a1;
  v8 = sub_268B367A4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v62 = v10;
  v63 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v25 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v26 = *(v17 + 16);
  v26(v24, v25, v14);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "SetPlaybackSpeedUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v29, 2u);
    OUTLINED_FUNCTION_12();
  }

  v30 = *(v17 + 8);
  v30(v24, v14);
  sub_268B36754();
  v31 = sub_268B36734();
  if (!v31)
  {
    v31 = sub_268B36744();
  }

  v32 = v31;
  v26(v22, v25, v14);

  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v60 = v22;
    v36 = v35;
    v37 = swift_slowAlloc();
    v59 = v30;
    v38 = v37;
    v73 = v37;
    *v36 = 136315138;
    sub_268B36714();
    v39 = v61;
    sub_268B36B14();

    v40 = sub_268B36784();
    v42 = v41;
    (*(v62 + 8))(v39, v63);
    v43 = sub_26892CDB8(v40, v42, &v73);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_2688BB000, v33, v34, "SetPlaybackSpeedUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v59(v60, v14);
  }

  else
  {

    v30(v22, v14);
  }

  v44 = swift_allocObject();
  v46 = v67;
  v45 = v68;
  v44[2] = v32;
  v44[3] = v46;
  v47 = v64;
  v48 = v65;
  v44[4] = v45;
  v44[5] = v48;
  v50 = v70;
  v49 = v71;
  v44[6] = v47;
  v44[7] = v49;
  v44[8] = v66;
  v44[9] = v50;
  v51 = v72;
  v44[10] = v72;
  swift_retain_n();
  v52 = v47;
  swift_retain_n();
  v53 = v52;

  v54 = v53;

  v55 = v48;

  sub_2689F8C54(v56, v55, v46, v45, v69, v54, v49, v50, v51, v54, v49, sub_268935520, v44);
}

uint64_t sub_2689343C4(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v102 = a8;
  v88 = a7;
  v98 = a6;
  v86 = a5;
  v97 = a4;
  v85 = a3;
  v84 = a2;
  v92 = a1;
  v101 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = v83 - v11;
  v12 = sub_268B37A54();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = v83 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v87 = v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v83 - v24;
  v26 = sub_268B34E24();
  v94 = *(v26 - 8);
  v27 = *(v94 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v30 = *(*(v93 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v93);
  v89 = v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v83 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = v83 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = v83 - v40;
  sub_268935590(v92, v83 - v40, &qword_2802A6300, &unk_268B3BD80);
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
      _os_log_impl(&dword_2688BB000, v45, v46, "SetPlaybackSpeedUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v47, 2u);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    (*(v44 + 8))(v96, v42);
    sub_2688C2ECC();
    v48 = swift_allocError();
    *v49 = -80;
    v103[0] = v48;
    v104 = 1;
    v102(v103);
    return sub_2688EF38C(v103, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v41, v37);
    v83[0] = sub_2688E1B0C(19, 3, v84, v85, v97, 0x6E776F6E6B6E75, 0xE700000000000000, v86);
    v83[1] = v51;
    v52 = __swift_project_boxed_opaque_existential_1(v98 + 13, v98[16]);
    v53 = *MEMORY[0x277D5BBE0];
    v54 = *(v94 + 104);
    v84 = v29;
    v85 = v26;
    v54(v29, v53, v26);
    v96 = v37;
    sub_268935590(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);

    v55 = sub_268B350F4();
    v56 = *(v55 - 8);
    (*(v56 + 32))(v25, v35, v55);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v55);
    v57 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v57);
    v58 = *v52;
    v59 = v87;
    sub_268935590(v25, v87, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v55);
    v61 = v25;
    v92 = v55;
    v86 = v56;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v59, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v56 + 8))(v59, v55);
    }

    v62 = v99;
    v63 = v84;
    v64 = v95;
    sub_2688E2964();

    sub_2688EF38C(v64, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v61, &unk_2802A57B0, &unk_268B3CE00);
    (*(v94 + 8))(v63, v85);
    v65 = v98;
    v66 = *__swift_project_boxed_opaque_existential_1(v98 + 13, v98[16]);
    sub_268948308(MEMORY[0x277D84F90]);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v67 = v100;
    v68 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v69 = v90;
    (*(v62 + 16))(v90, v68, v67);
    v70 = sub_268B37A34();
    v71 = sub_268B37ED4();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v96;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2688BB000, v70, v71, "SetPlaybackSpeedUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v74, 2u);
      MEMORY[0x26D6266E0](v74, -1, -1);
    }

    (*(v62 + 8))(v69, v67);
    v75 = v65[21];
    v76 = v65[22];
    __swift_project_boxed_opaque_existential_1(v65 + 18, v75);
    v77 = v73;
    v78 = v73;
    v79 = v89;
    sub_268935590(v77, v89, &unk_2802A56E0, &unk_268B3CDF0);
    v80 = *(v79 + *(v93 + 48));
    v81 = v91;
    sub_268A82B50(v97, v91);
    v82 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v81, 0, 1, v82);
    (*(v76 + 40))(v79, v80, v81, v102, v101, v75, v76);

    sub_2688EF38C(v81, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v78, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v86 + 8))(v79, v92);
  }
}

uint64_t sub_268934D98(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v65 = a7;
  v64 = a6;
  v63 = a5;
  v67 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v67);
  v66 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v62 - v21;
  sub_268935590(a1, v68, &unk_2802A57C0, &qword_268B3BE00);
  v23 = v69;
  sub_2688EF38C(v68, &unk_2802A57C0, &qword_268B3BE00);
  if (v23 != 1)
  {
    return a2(a1);
  }

  v62[1] = a3;
  v24 = SetPlaybackSpeedSpeedMagnitudeUnsupportedReason.init(rawValue:)([a4 unsupportedReason]);
  if ((v25 & 1) == 0)
  {
    if (v24 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
      *(swift_initStackObject() + 16) = xmmword_268B3BBC0;
      OUTLINED_FUNCTION_3_10();
      *(v51 + 32) = 0xD000000000000010;
      *(v51 + 40) = v52;
      OUTLINED_FUNCTION_3_10();
      v53[9] = MEMORY[0x277D837D0];
      v53[6] = 0xD000000000000012;
      v53[7] = v54;
      v30 = sub_268B37B84();
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v55 = v67;
      v56 = __swift_project_value_buffer(v67, qword_2802CDA10);
      v57 = v66;
      (*(v66 + 16))(v20, v56, v55);
      v58 = sub_268B37A34();
      v59 = sub_268B37ED4();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_2688BB000, v58, v59, "Sending unsupportedCommand dialog", v60, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v57 + 8))(v20, v67);
      v61 = *(v63 + 56);
      v37 = "unsupportedCommand";
      v38 = v61[5];
      v39 = v61[6];
      __swift_project_boxed_opaque_existential_1(v61 + 2, v38);
      v40 = 0xD000000000000035;
      goto LABEL_22;
    }

    if (v24 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
      *(swift_initStackObject() + 16) = xmmword_268B3BBC0;
      OUTLINED_FUNCTION_3_10();
      *(v26 + 32) = 0xD000000000000010;
      *(v26 + 40) = v27;
      OUTLINED_FUNCTION_3_10();
      v28[9] = MEMORY[0x277D837D0];
      v28[6] = 0xD000000000000021;
      v28[7] = v29;
      v30 = sub_268B37B84();
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v31 = v67;
      v32 = __swift_project_value_buffer(v67, qword_2802CDA10);
      (*(v66 + 16))(v22, v32, v31);
      v33 = sub_268B37A34();
      v34 = sub_268B37ED4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2688BB000, v33, v34, "Sending unsupportedPlaybackSpeedRequested dialog", v35, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v66 + 8))(v22, v67);
      v36 = *(v63 + 56);
      v37 = "ackSpeedRequested";
      v38 = v36[5];
      v39 = v36[6];
      __swift_project_boxed_opaque_existential_1(v36 + 2, v38);
      v40 = 0xD000000000000032;
LABEL_22:
      sub_2689CE860(v40, v37 | 0x8000000000000000, v30, v64, v65, v38, v39);
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v42 = v67;
  v43 = __swift_project_value_buffer(v67, qword_2802CDA10);
  v44 = v66;
  (*(v66 + 16))(v17, v43, v42);
  v45 = a4;
  v46 = sub_268B37A34();
  v47 = sub_268B37EE4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = [v45 &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer + 4];

    _os_log_impl(&dword_2688BB000, v46, v47, "Received unrecognized unsupported Reason: %ld", v48, 0xCu);
    OUTLINED_FUNCTION_12();
  }

  else
  {

    v46 = v45;
  }

  (*(v44 + 8))(v17, v42);
  sub_2688C2ECC();
  v49 = swift_allocError();
  *v50 = 70;
  v68[0] = v49;
  v69 = 1;
  a2(v68);
  return sub_2688EF38C(v68, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_268935404()
{
  v0 = sub_268A9AAA4();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t type metadata accessor for SetPlaybackSpeedUnsupportedValueStrategy()
{
  result = qword_2802A5F58;
  if (!qword_2802A5F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2689354B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268935520()
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
  return sub_268934308();
}

uint64_t sub_268935590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id SetPlaybackSpeedIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetPlaybackSpeedIntentHandler.init()()
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
  sub_26893B1C4(v33, v32, &v41, v14, v40);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268935A1C(void *a1, char *a2, void (**a3)(void, char *))
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v60 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v61 = &v60 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - v17;
  v64 = swift_allocObject();
  v65 = a3;
  *(v64 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v20 = v7[2];
  v62 = v19;
  v63 = v20;
  (v20)(v18);
  v21 = sub_268B37A34();
  v22 = sub_268B37F04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v60 = v14;
    v24 = v6;
    v25 = a2;
    v26 = a1;
    v27 = v7;
    v28 = v11;
    v29 = v23;
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.handle() called", v23, 2u);
    v30 = v29;
    v11 = v28;
    v7 = v27;
    a1 = v26;
    a2 = v25;
    v6 = v24;
    v14 = v60;
    MEMORY[0x26D6266E0](v30, -1, -1);
  }

  v31 = v7[1];
  v31(v18, v6);
  v32 = sub_268B18100();
  if (!v32)
  {
    goto LABEL_14;
  }

  if (!sub_2688EFD0C(v32))
  {

LABEL_14:
    v44 = v61;
    v63(v61, v62, v6);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "No devices found in SetPlaybackSpeedIntent, returning failure", v47, 2u);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    v31(v44, v6);
    goto LABEL_21;
  }

  v33 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_aceServiceHelper];
  sub_268921344();
  v35 = v34;

  if (!v35[2])
  {

    v63(v14, v62, v6);
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2688BB000, v54, v55, "Missing routeId in intent, returning failure", v56, 2u);
      MEMORY[0x26D6266E0](v56, -1, -1);
    }

    v31(v14, v6);
    goto LABEL_21;
  }

  v36 = v35[4];
  v37 = v35[5];

  if ([a1 playbackSpeedType] == 3)
  {
    [a1 speedMagnitude];
    if (v38 == 0.0)
    {

      v63(v11, v62, v6);
      v39 = sub_268B37A34();
      v40 = sub_268B37EE4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = v11;
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2688BB000, v39, v40, "Missing playbackSpeed in intent, returning failure", v42, 2u);
        v43 = v42;
        v11 = v41;
        MEMORY[0x26D6266E0](v43, -1, -1);
      }

      v31(v11, v6);
LABEL_21:
      v57 = sub_268B36EA4();
      objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
      v58 = v57;
      v59 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(5, v57);
      v53 = v65;
      v65[2](v65, v59);

      goto LABEL_22;
    }
  }

  v48 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 32];
  __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24]);
  v49 = swift_allocObject();
  v50 = v64;
  v49[2] = sub_26892D9D4;
  v49[3] = v50;
  v49[4] = a2;
  v49[5] = a1;
  v49[6] = v35;

  v51 = a2;
  v52 = a1;
  sub_268B36CA4();

  v53 = v65;
LABEL_22:
  _Block_release(v53);
}

void sub_26893608C()
{
  OUTLINED_FUNCTION_26();
  v59 = v0;
  v60 = v1;
  v61 = v2;
  v62 = v3;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v58 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v57 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v18 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v19 = *(v7 + 16);
  v19(v0, v18, v4);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.handle() called", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v7 + 8);
  v23(v0, v4);
  v24 = sub_268B18100();
  if (!v24)
  {
    goto LABEL_14;
  }

  if (!sub_2688EFD0C(v24))
  {

LABEL_14:
    v37 = OUTLINED_FUNCTION_11_6();
    (v19)(v37);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v39))
    {
      v40 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v40);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v41, v42, "No devices found in SetPlaybackSpeedIntent, returning failure");
      OUTLINED_FUNCTION_12();
    }

    v23(v12, v4);
    goto LABEL_21;
  }

  v25 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_aceServiceHelper];
  sub_268921344();
  v27 = v26;

  if (!v27[2])
  {

    v47 = OUTLINED_FUNCTION_11_6();
    (v19)(v47);
    v48 = sub_268B37A34();
    v49 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v49))
    {
      v50 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v50);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v51, v52, "Missing routeId in intent, returning failure");
      OUTLINED_FUNCTION_12();
    }

    v23(v58, v4);
    goto LABEL_21;
  }

  v28 = v27[4];
  v29 = v27[5];

  if ([v60 playbackSpeedType] == 3)
  {
    [v60 speedMagnitude];
    if (v30 == 0.0)
    {

      v31 = OUTLINED_FUNCTION_11_6();
      (v19)(v31);
      v32 = sub_268B37A34();
      v33 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_196(v33))
      {
        v34 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v34);
        OUTLINED_FUNCTION_10_7(&dword_2688BB000, v35, v36, "Missing playbackSpeed in intent, returning failure");
        OUTLINED_FUNCTION_12();
      }

      v23(v57, v4);
LABEL_21:
      v53 = sub_268B36EA4();
      v54 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
      v55 = v53;
      v56 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(5, v53);
      v61();

      goto LABEL_22;
    }
  }

  v43 = *&v59[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 32];
  __swift_project_boxed_opaque_existential_1(&v59[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController], *&v59[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24]);
  v44 = swift_allocObject();
  v44[2] = v61;
  v44[3] = v62;
  v44[4] = v59;
  v44[5] = v60;
  v44[6] = v27;

  v45 = v59;
  v46 = v60;
  sub_268B36CA4();

LABEL_22:
  OUTLINED_FUNCTION_23();
}

void sub_268936580(char a1, int a2, void (*a3)(void), uint64_t a4, int a5, id a6, uint64_t a7)
{
  if (a1)
  {
    v11 = [a6 playbackSpeedType];
    [a6 speedMagnitude];
    sub_26893988C(v11, a7, a3, a4, v12);
  }

  else
  {
    v13 = sub_268B36EA4();
    v14 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
    v15 = v13;
    v16 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(5, v13);
    a3();
  }
}

void sub_2689366BC(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
  v5 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268936728(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
  v4 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689367B4(void *a1, char *a2, void (**a3)(void, id))
{
  v47 = a2;
  v50 = a1;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v48 = swift_allocObject();
  v49 = a3;
  *(v48 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v15 = v5[2];
  v15(v13, v14, v4);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.resolveSpeedMagnitude() called", v18, 2u);
    MEMORY[0x26D6266E0](v18, -1, -1);
  }

  v19 = v5[1];
  v19(v13, v4);
  v20 = v50;
  if ([v50 playbackSpeedType] == 3)
  {
    v21 = sub_268B18100();
    v22 = v46;
    if (v21)
    {
      v23 = *&v47[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_aceServiceHelper];
      sub_268921344();
      v25 = v24;

      if (v25[2])
      {
        v26 = v25[4];
        v27 = v25[5];

LABEL_16:
        v38 = v47;
        v39 = *&v47[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 32];
        __swift_project_boxed_opaque_existential_1(&v47[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController], *&v47[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24]);
        v40 = swift_allocObject();
        v41 = v48;
        v40[2] = sub_26892DC18;
        v40[3] = v41;
        v42 = v50;
        v40[4] = v50;
        v40[5] = v38;

        v43 = v42;
        v44 = v38;
        sub_268B36CA4();

        v34 = v49;
        goto LABEL_17;
      }
    }

    v15(v22, v14, v4);
    v35 = sub_268B37A34();
    v36 = sub_268B37F04();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "intent.devices is empty, using localDevice to check supported speeds", v37, 2u);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    v19(v22, v4);
    sub_268B36C54();
    sub_268B36C24();
    goto LABEL_16;
  }

  v15(v11, v14, v4);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "No need to resolve speed magnitude for relative speed change. Returning success.", v30, 2u);
    v31 = v30;
    v20 = v50;
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  v19(v11, v4);
  type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v20 speedMagnitude];
  v33 = [ObjCClassFromMetadata successWithResolvedValue_];
  v34 = v49;
  v49[2](v49, v33);

LABEL_17:
  _Block_release(v34);
}

void sub_268936CC0()
{
  OUTLINED_FUNCTION_26();
  v43 = v0;
  v44 = v1;
  v45 = v2;
  v4 = v3;
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_0();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v42 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v17 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v18 = *(v8 + 16);
  v18(v0, v17, v5);
  v19 = sub_268B37A34();
  v20 = sub_268B37F04();
  v46 = v4;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.resolveSpeedMagnitude() called", v21, 2u);
    OUTLINED_FUNCTION_12();
  }

  v22 = *(v8 + 8);
  v22(v0, v5);
  if ([v4 playbackSpeedType] == 3)
  {
    if (sub_268B18100())
    {
      v23 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_aceServiceHelper];
      sub_268921344();
      v25 = v24;

      if (v25[2])
      {
        v26 = v25[4];
        v27 = v25[5];

LABEL_16:
        v38 = *&v43[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 32];
        __swift_project_boxed_opaque_existential_1(&v43[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController], *&v43[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24]);
        v39 = swift_allocObject();
        v39[2] = v44;
        v39[3] = v45;
        v39[4] = v4;
        v39[5] = v43;

        v40 = v4;
        v41 = v43;
        sub_268B36CA4();

        goto LABEL_17;
      }
    }

    v18(v42, v17, v5);
    v34 = sub_268B37A34();
    v35 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v35))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_78_0(&dword_2688BB000, v36, v37, "intent.devices is empty, using localDevice to check supported speeds");
      OUTLINED_FUNCTION_12();
    }

    v22(v42, v5);
    sub_268B36C54();
    sub_268B36C24();
    goto LABEL_16;
  }

  v18(v13, v17, v5);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v29))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_78_0(&dword_2688BB000, v30, v31, "No need to resolve speed magnitude for relative speed change. Returning success.");
    OUTLINED_FUNCTION_12();
  }

  v22(v13, v5);
  type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v46 speedMagnitude];
  v33 = [ObjCClassFromMetadata successWithResolvedValue_];
  v44();

LABEL_17:
  OUTLINED_FUNCTION_23();
}

void sub_2689370CC(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v34 = a3;
    v15 = *(a2 + 16);
    v16 = 32;
    while (v15)
    {
      v17 = *(a2 + v16);
      [a5 speedMagnitude];
      v16 += 8;
      --v15;
      if (v17 == v18)
      {
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
        (*(v11 + 16))(v14, v19, v10);
        v20 = a5;
        v21 = sub_268B37A34();
        v22 = sub_268B37F04();

        v23 = os_log_type_enabled(v21, v22);
        v24 = v34;
        if (v23)
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          [v20 speedMagnitude];
          *(v25 + 4) = v26;
          _os_log_impl(&dword_2688BB000, v21, v22, "%f speed is supported", v25, 0xCu);
          MEMORY[0x26D6266E0](v25, -1, -1);
        }

        (*(v11 + 8))(v14, v10);
        type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        [v20 speedMagnitude];
        v28 = [ObjCClassFromMetadata successWithResolvedValue_];
        v24();

        return;
      }
    }

    v30 = swift_allocObject();
    v31 = v34;
    v30[2] = a5;
    v30[3] = v31;
    v30[4] = a4;
    v32 = a5;

    sub_268939174(v32, a2, sub_26893B88C, v30, 0.5);
  }

  else
  {
    type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
    v34 = sub_268B1CD38(2);
    a3();
    v29 = v34;
  }
}

void sub_268937428(uint64_t a1, char a2, void *a3, void (*a4)(void))
{
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  if (a2)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v9 + 16))(v13, v16, v8);
    v17 = a3;
    v18 = sub_268B37A34();
    v19 = sub_268B37EE4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      [v17 speedMagnitude];
      *(v20 + 4) = v21;
      *(v20 + 12) = 2048;
      [v17 speedMagnitude];
      *(v20 + 14) = v22;
      _os_log_impl(&dword_2688BB000, v18, v19, "%f speed is not supported. No supported speed is within 0.5 of the requested speed: %f", v20, 0x16u);
      MEMORY[0x26D6266E0](v20, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
    v23 = sub_268B1CD38(1);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v9 + 16))(v15, v24, v8);
    v25 = a3;
    v26 = sub_268B37A34();
    v27 = sub_268B37F04();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      [v25 speedMagnitude];
      *(v28 + 4) = v29;
      *(v28 + 12) = 2048;
      *(v28 + 14) = a1;
      _os_log_impl(&dword_2688BB000, v26, v27, "%f speed is not supported. Returning closest speed: %f", v28, 0x16u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    type metadata accessor for SetPlaybackSpeedSpeedMagnitudeResolutionResult();
    v23 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];
  }

  v30 = v23;
  a4();
}

void sub_2689377CC(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v13 = v6[2];
  v13(v11, v12, v5);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v12;
    v17 = v13;
    v18 = a1;
    v19 = a3;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.resolvePlaybackSpeedType() called", v16, 2u);
    v21 = v20;
    a3 = v19;
    a1 = v18;
    v13 = v17;
    v12 = v29;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  v22 = v6[1];
  v22(v11, v5);
  if ([a1 playbackSpeedType])
  {
    type metadata accessor for PlaybackSpeedTypeResolutionResult();
    v23 = [a1 playbackSpeedType];
  }

  else
  {
    v24 = v30;
    v13(v30, v12, v5);
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2688BB000, v25, v26, "Received unknown playbackSpeed type.", v27, 2u);
      MEMORY[0x26D6266E0](v27, -1, -1);
    }

    v22(v24, v5);
    type metadata accessor for PlaybackSpeedTypeResolutionResult();
    v23 = 1;
  }

  v28 = sub_268B28C94(v23);
  (a3)[2](a3, v28);

  _Block_release(a3);
}

void sub_268937AC4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v15 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v25 = *(v8 + 16);
  v26 = v15;
  v25(v0);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v18, v19, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.resolvePlaybackSpeedType() called");
    OUTLINED_FUNCTION_12();
  }

  v20 = *(v8 + 8);
  v20(v0, v5);
  if ([v4 playbackSpeedType])
  {
    type metadata accessor for PlaybackSpeedTypeResolutionResult();
    v21 = sub_268B28C94([v4 playbackSpeedType]);
  }

  else
  {
    (v25)(v13, v26, v5);
    v22 = sub_268B37A34();
    v23 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v23))
    {
      v24 = OUTLINED_FUNCTION_14();
      *v24 = 0;
      _os_log_impl(&dword_2688BB000, v22, v23, "Received unknown playbackSpeed type.", v24, 2u);
      OUTLINED_FUNCTION_12();
    }

    v20(v13, v5);
    type metadata accessor for PlaybackSpeedTypeResolutionResult();
    v21 = sub_268B28C94(1);
  }

  v2(v21);

  OUTLINED_FUNCTION_23();
}

void sub_268937D60(void *a1, char *a2, void (**a3)(void, void))
{
  v69 = a2;
  v5 = sub_268B36C04();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v63 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v61 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  v68 = swift_allocObject();
  *(v68 + 16) = a3;
  v70 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v21 = v9[2];
  v21(v19, v20, v8);
  v22 = sub_268B37A34();
  v23 = sub_268B37F04();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v62 = v20;
    v25 = v21;
    v26 = v8;
    v27 = v9;
    v28 = v17;
    v29 = v24;
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "SetPlaybackSpeedIntentHandler.resolveDevices() called", v24, 2u);
    v30 = v29;
    v17 = v28;
    v9 = v27;
    v8 = v26;
    v21 = v25;
    v20 = v62;
    MEMORY[0x26D6266E0](v30, -1, -1);
  }

  v31 = v9[1];
  v31(v19, v8);
  if ((sub_268921060() & 1) != 0 && (v32 = *&v69[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState + 32], __swift_project_boxed_opaque_existential_1(&v69[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState], *&v69[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState + 24]), (sub_2688C3240() & 1) == 0))
  {
    v21(v17, v20, v8);
    v56 = sub_268B37A34();
    v57 = sub_268B37EE4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2688BB000, v56, v57, "Whole House Audio requests are unsupported on this platform", v58, 2u);
      MEMORY[0x26D6266E0](v58, -1, -1);
    }

    v31(v17, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
    *(v59 + 32) = sub_268B17B04(1);
    v60 = sub_268B37CE4();
    (v70)[2](v70, v60);
  }

  else if (sub_268B18120())
  {
    v21(v67, v20, v8);
    v33 = sub_268B37A34();
    v34 = sub_268B37F04();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2688BB000, v33, v34, "SetPlaybackSpeedIntentHandler#resolveDevices resolving devices from device queries", v35, 2u);
      MEMORY[0x26D6266E0](v35, -1, -1);
    }

    v31(v67, v8);
    v36 = v69;
    v37 = *&v69[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceSelector];
    sub_268920A60();

    v39 = v64;
    v38 = v65;
    v40 = v66;
    (*(v65 + 104))(v64, *MEMORY[0x277D5F650], v66);
    [a1 mediaType];
    v41 = swift_allocObject();
    v42 = v68;
    v41[2] = sub_26893B7E4;
    v41[3] = v42;
    v41[4] = v36;

    v43 = v36;
    sub_2688F80CC();

    (*(v38 + 8))(v39, v40);
  }

  else
  {
    v44 = v63;
    v21(v63, v20, v8);
    v45 = sub_268B37A34();
    v46 = sub_268B37F04();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "SetPlaybackSpeedIntentHandler#resolveDevices intent does not have disambiguated devices or device queries. Sending local device.", v47, 2u);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    v31(v44, v8);
    type metadata accessor for DeviceContext();
    v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v49 = sub_26893A824(0, 0xE000000000000000);
    [v49 setProximity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
    v51 = *&v69[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceSelector];
    v52 = v49;
    v53 = sub_268901CB8(v49);

    v54 = sub_268B2CC98(v53);
    *(v50 + 32) = v54;
    v55 = sub_268B37CE4();
    (v70)[2](v70, v55);
  }

  _Block_release(v70);
}

void sub_2689384F8()
{
  OUTLINED_FUNCTION_26();
  v67 = v1;
  v68 = v0;
  v66 = v2;
  v4 = v3;
  v5 = sub_268B36C04();
  v6 = OUTLINED_FUNCTION_1(v5);
  v63 = v7;
  v64 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v62 = v11 - v10;
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v61 = (v18 - v19);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v65 = v21;
  OUTLINED_FUNCTION_8();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v60 - v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v26 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v27 = *(v15 + 16);
  OUTLINED_FUNCTION_20_4();
  v27();
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_14();
    v60[1] = v26;
    *v30 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "SetPlaybackSpeedIntentHandler.resolveDevices() called", v30, 2u);
    OUTLINED_FUNCTION_12();
  }

  v31 = *(v15 + 8);
  v31(v0, v12);
  if (sub_268921060())
  {
    v32 = *&v68[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState + 32];
    __swift_project_boxed_opaque_existential_1(&v68[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState], *&v68[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState + 24]);
    if ((sub_2688C3240() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_4();
      v27();
      v55 = sub_268B37A34();
      v56 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v56))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_23_4(&dword_2688BB000, v57, v58, "Whole House Audio requests are unsupported on this platform");
        OUTLINED_FUNCTION_12();
      }

      v31(v25, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_268B3BBA0;
      type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
      *(v59 + 32) = sub_268B17B04(1);
      v67(v59);
      goto LABEL_17;
    }
  }

  if (!sub_268B18120())
  {
    v44 = v61;
    OUTLINED_FUNCTION_20_4();
    v27();
    v45 = sub_268B37A34();
    v46 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v46))
    {
      v47 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v47);
      _os_log_impl(&dword_2688BB000, v45, v44, "SetPlaybackSpeedIntentHandler#resolveDevices intent does not have disambiguated devices or device queries. Sending local device.", v4, 2u);
      OUTLINED_FUNCTION_12();
    }

    v31(v44, v12);
    type metadata accessor for DeviceContext();
    v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v49 = sub_26893A824(0, 0xE000000000000000);
    [v49 setProximity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
    v51 = *&v68[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceSelector];
    v52 = v49;
    v53 = sub_268901CB8(v49);

    v54 = sub_268B2CC98(v53);
    *(v50 + 32) = v54;
    v67(v50);

LABEL_17:

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_20_4();
  v27();
  v33 = sub_268B37A34();
  v34 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v34))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_23_4(&dword_2688BB000, v35, v36, "SetPlaybackSpeedIntentHandler#resolveDevices resolving devices from device queries");
    OUTLINED_FUNCTION_12();
  }

  v31(v65, v12);
  v37 = v68;
  v38 = *&v68[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceSelector];
  sub_268920A60();

  v40 = v62;
  v39 = v63;
  v41 = v64;
  (*(v63 + 104))(v62, *MEMORY[0x277D5F650], v64);
  [(uint8_t *)v4 mediaType];
  OUTLINED_FUNCTION_220();
  v42 = swift_allocObject();
  v42[2] = v67;
  v42[3] = v66;
  v42[4] = v37;

  v43 = v37;
  sub_2688F80CC();

  (*(v39 + 8))(v40, v41);
LABEL_18:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268938B04(uint64_t a1, char a2, void (*a3)(void), uint64_t *a4, uint64_t a5)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  if (a2)
  {
    v53 = a4;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v15, v18, v10);
    v19 = sub_268B37A34();
    v20 = sub_268B37EE4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v52 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      v55 = v23;
      *v22 = 136315138;
      v54 = a1 & 1;
      sub_26890C84C();
      v24 = sub_268B384A4();
      v26 = sub_26892CDB8(v24, v25, &v55);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_2688BB000, v19, v20, "SetPlaybackSpeedIntentHandler#resolveDevices Error resolving devices: %s. Returning local device", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x26D6266E0](v23, -1, -1);
      v27 = v22;
      a3 = v52;
      MEMORY[0x26D6266E0](v27, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    type metadata accessor for DeviceContext();
    v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v29 = sub_26893A824(0, 0xE000000000000000);
    [v29 setProximity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
    v31 = *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceSelector);
    v32 = v29;
    v33 = sub_268901CB8(v29);

    v34 = sub_268B2CC98(v33);
    *(v30 + 32) = v34;
    a3(v30);
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v17, v35, v10);

  v36 = sub_268B37A34();
  v37 = sub_268B37F04();
  sub_26890C840(a1, 0);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55 = v53;
    *v38 = 136315138;
    v39 = type metadata accessor for Device();
    v40 = MEMORY[0x26D6256F0](a1, v39);
    LODWORD(v52) = v37;
    v42 = sub_26892CDB8(v40, v41, &v55);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_2688BB000, v36, v52, "SetPlaybackSpeedIntentHandler#resolveDevices Success resolving devices: %s", v38, 0xCu);
    v43 = v53;
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x26D6266E0](v43, -1, -1);
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  (*(v11 + 8))(v17, v10);
  v44 = sub_2688EFD0C(a1);
  v45 = MEMORY[0x277D84F90];
  if (!v44)
  {
LABEL_19:
    a3(v45);
  }

  v46 = v44;
  v55 = MEMORY[0x277D84F90];
  result = sub_268B38234();
  if ((v46 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
    v48 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x26D625BD0](v48, a1);
      }

      else
      {
        v49 = *(a1 + 8 * v48 + 32);
      }

      v50 = v49;
      ++v48;
      sub_268B2CC98(v49);

      sub_268B38214();
      v51 = v55[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v46 != v48);
    v45 = v55;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_26893907C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268939108(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetPlaybackSpeedDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_268939174(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v21 = __swift_project_value_buffer(v12, qword_2802CDA10);
  (*(v15 + 16))(v20, v21, v12);
  v22 = sub_268B37A34();
  v23 = sub_268B37F04();
  if (os_log_type_enabled(v22, v23))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v24, v25, "SetPlaybackSpeed.SetPlaybackSpeedIntentHandler.getClosestPlaybackSpeed() called");
    OUTLINED_FUNCTION_12();
  }

  (*(v15 + 8))(v20, v12);
  v33 = a2;

  sub_26893A8B8(&v33);
  v26 = v33;
  v27 = (v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController);
  v28 = *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24);
  v29 = *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 32);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  *(v30 + 32) = v26;
  *(v30 + 40) = a1;
  *(v30 + 48) = a2;
  *(v30 + 56) = a5;

  v31 = a1;
  sub_268B36C94();
}

id sub_2689393C8(uint64_t a1, uint64_t (*a2)(void, void), double a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = sub_268B37A54();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v59 - v20;
  if ((a1 & 0x100000000) != 0)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v13, qword_2802CDA10);
    (*(v14 + 16))(v21, v26, v13);
    v27 = sub_268B37A34();
    v28 = sub_268B37F04();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "PlaybackRate is nil", v29, 2u);
      MEMORY[0x26D6266E0](v29, -1, -1);
    }

    (*(v14 + 8))(v21, v13);
    goto LABEL_13;
  }

  LODWORD(v19) = a1;
  if (*&a1 == 0.0)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v13, qword_2802CDA10);
    (*(v14 + 16))(v18, v22, v13);
    v23 = sub_268B37A34();
    v24 = sub_268B37F04();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2688BB000, v23, v24, "PlaybackRate is 0", v25, 2u);
      MEMORY[0x26D6266E0](v25, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
    goto LABEL_13;
  }

  v60 = a2;
  v33 = 0;
  v34 = 0;
  v35 = *&a1;
  v36 = *(a5 + 16);
  v37 = a5 + 32;
  v38 = -1;
  while (v36 != v34)
  {
    v39 = v34 + 1;
    v40 = *(v37 + 8 * v34);
    v38 = v34 - 1;
    [a6 speedMagnitude];
    v33 = v34++;
    if (v19 < v40)
    {
      v38 = v39 - 2;
      v33 = v39 - 1;
      break;
    }
  }

  if (v33 >= v36)
  {
    result = [a6 speedMagnitude];
    if (v38 >= v36)
    {
      __break(1u);
      goto LABEL_61;
    }

    a2 = v60;
    if (vabdd_f64(v50, *(v37 + 8 * v38)) > a3)
    {
      goto LABEL_13;
    }

    v30 = *(v37 + 8 * v38);
LABEL_59:
    v31 = 0;
    return a2(*&v30, v31);
  }

  result = [a6 speedMagnitude];
  v42 = v41;
  if ((v38 & 0x8000000000000000) != 0)
  {
    if (v33 >= v36)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v51 = *(v37 + 8 * v33);
    a2 = v60;
    if (vabdd_f64(v42, v51) > a3)
    {
      goto LABEL_13;
    }

    v30 = v51;
    goto LABEL_59;
  }

  v43 = *(v37 + 8 * v33);
  result = [a6 speedMagnitude];
  if (v38 >= v36)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v45 = *(a7 + 16);
  if (v33 >= v45)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v46 = *(v37 + 8 * v38);
  v47 = vabdd_f64(v44, v46);
  if (*(a7 + 32 + 8 * v33) != v35)
  {
    a2 = v60;
    if (v38 < v45)
    {
      v52 = vabdd_f64(v42, v43);
      if (*(a7 + 32 + 8 * v38) == v35)
      {
        if (v52 <= a3)
        {
LABEL_57:
          v30 = v43;
          goto LABEL_59;
        }
      }

      else
      {
        if (v52 < v47 && v52 <= a3)
        {
          goto LABEL_57;
        }

        v54 = v47 >= v52 || v47 > a3;
        if (!v54 || (([a6 speedMagnitude], v55 < v35) ? (v56 = v47 > a3) : (v56 = 1), !v56))
        {
          v30 = v46;
          goto LABEL_59;
        }

        [a6 speedMagnitude];
        if (v57 > v35 && v52 <= a3)
        {
          goto LABEL_57;
        }
      }

LABEL_13:
      v30 = 0.0;
      v31 = 1;
      return a2(*&v30, v31);
    }

LABEL_64:
    __break(1u);
    return result;
  }

  if (v47 <= a3)
  {
    v48 = *(v37 + 8 * v38);
    v49 = 0;
  }

  else
  {
    v48 = 0;
    v49 = 1;
  }

  return v60(v48, v49);
}

uint64_t sub_26893988C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v44[1] = a2;
  v11 = sub_268B37A54();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v44 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v44 - v24;
  OUTLINED_FUNCTION_220();
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a1;
  v27 = qword_2802A4F30;

  if (a1 == 1)
  {
    if (v27 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v11, qword_2802CDA10);
    OUTLINED_FUNCTION_13_5();
    v33(v23);
    v34 = sub_268B37A34();
    v35 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "Calling setPlaybackSpeedFaster", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v14 + 8))(v23, v11);
    v37 = *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 32);
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController), *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24));
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_12_6();
    sub_268B36C74();
  }

  else if (a1 == 2)
  {
    if (v27 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v11, qword_2802CDA10);
    OUTLINED_FUNCTION_13_5();
    v28(v25);
    v29 = sub_268B37A34();
    v30 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v30))
    {
      v31 = OUTLINED_FUNCTION_14();
      *v31 = 0;
      _os_log_impl(&dword_2688BB000, v29, v30, "Calling setPlaybackSpeedSlower", v31, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v14 + 8))(v25, v11);
    v32 = *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 32);
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController), *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24));
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_12_6();
    sub_268B36C84();
  }

  else
  {
    if (v27 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v11, qword_2802CDA10);
    OUTLINED_FUNCTION_13_5();
    v38(v19);
    v39 = sub_268B37A34();
    v40 = sub_268B37F04();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a5;
      _os_log_impl(&dword_2688BB000, v39, v40, "Setting playback rate: %f for playbackSpeedType: setToValue", v41, 0xCu);
      OUTLINED_FUNCTION_12();
    }

    (*(v14 + 8))(v19, v11);
    v42 = *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 32);
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController), *(v6 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController + 24));
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_12_6();
    sub_268B36C64();
  }
}

void sub_268939C78(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v116 = a4;
  v122 = a3;
  v6 = sub_268B36F24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v117 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v109 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v109 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v109 - v17;
  v123 = sub_268B37A54();
  v121 = *(v123 - 8);
  v19 = *(v121 + 64);
  v20 = MEMORY[0x28223BE20](v123);
  v120 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v114 = &v109 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v113 = &v109 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v112 = &v109 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v109 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v109 - v32;
  v119 = a1;
  sub_26893B66C(a1, &v109 - v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v115 = a2;
    (*(v7 + 32))(v18, v33, v6);
    v118 = v18;
    sub_268B36EC4();
    v34 = *(v7 + 16);
    v111 = v16;
    v34(v13, v16, v6);
    v35 = (*(v7 + 88))(v13, v6);
    v36 = *MEMORY[0x277D5F6D0];
    v37 = v13;
    v38 = v6;
    v110 = *(v7 + 8);
    v110(v37, v6);
    v39 = v7 + 8;
    if (v35 == v36)
    {
      v40 = v121;
      if (v116 == 1)
      {
        v85 = v115;
        v86 = v118;
        v87 = v123;
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v88 = __swift_project_value_buffer(v87, qword_2802CDA10);
        v89 = v113;
        (*(v40 + 16))(v113, v88, v87);
        v90 = sub_268B37A34();
        v91 = sub_268B37F04();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_2688BB000, v90, v91, "Received requestParametersOutOfBounds while setting the playback rate to faster.", v92, 2u);
          MEMORY[0x26D6266E0](v92, -1, -1);
        }

        (*(v40 + 8))(v89, v123);
        v93 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
        v94 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(100, 0);
        v85();

        v95 = v110;
        v110(v111, v38);
        v95(v86, v38);
      }

      else
      {
        v41 = v115;
        v42 = v118;
        v43 = v123;
        if (v116 == 2)
        {
          if (qword_2802A4F30 != -1)
          {
            swift_once();
          }

          v44 = __swift_project_value_buffer(v43, qword_2802CDA10);
          v45 = v112;
          (*(v40 + 16))(v112, v44, v43);
          v46 = sub_268B37A34();
          v47 = sub_268B37F04();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_2688BB000, v46, v47, "Received requestParametersOutOfBounds while setting the playback rate to slower.", v48, 2u);
            MEMORY[0x26D6266E0](v48, -1, -1);
          }

          (*(v40 + 8))(v45, v43);
          v49 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
          v50 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(101, 0);
          v41();

          v51 = v110;
          v110(v111, v38);
          v51(v42, v38);
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            swift_once();
          }

          v96 = __swift_project_value_buffer(v43, qword_2802CDA10);
          v97 = v114;
          (*(v40 + 16))(v114, v96, v43);
          v98 = sub_268B37A34();
          v99 = sub_268B37EE4();
          v100 = os_log_type_enabled(v98, v99);
          v101 = v38;
          v102 = v111;
          if (v100)
          {
            v103 = swift_slowAlloc();
            *v103 = 0;
            _os_log_impl(&dword_2688BB000, v98, v99, "Received requestParametersOutOfBounds while setting the playback rate", v103, 2u);
            MEMORY[0x26D6266E0](v103, -1, -1);
          }

          (*(v40 + 8))(v97, v123);
          v104 = sub_268B36ED4();
          v105 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
          v106 = v104;
          v107 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(5, v104);
          v41();

          v108 = v110;
          v110(v102, v101);
          v108(v42, v101);
        }
      }
    }

    else
    {
      v61 = v121;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v62 = v123;
      v63 = __swift_project_value_buffer(v123, qword_2802CDA10);
      v64 = v120;
      (*(v61 + 16))(v120, v63, v62);
      v65 = v117;
      v66 = v38;
      v34(v117, v118, v38);
      v67 = sub_268B37A34();
      v68 = sub_268B37EE4();
      v69 = os_log_type_enabled(v67, v68);
      v70 = v115;
      if (v69)
      {
        v71 = v65;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v116 = v39;
        v74 = v73;
        v124 = v73;
        *v72 = 136315138;
        sub_26893B6DC();
        v75 = sub_268B384A4();
        v77 = v76;
        v78 = v71;
        v79 = v110;
        v110(v78, v66);
        v80 = sub_26892CDB8(v75, v77, &v124);
        v70 = v115;

        *(v72 + 4) = v80;
        _os_log_impl(&dword_2688BB000, v67, v68, "Unknown Error while setting the playback rate: %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);
        MEMORY[0x26D6266E0](v74, -1, -1);
        MEMORY[0x26D6266E0](v72, -1, -1);

        (*(v61 + 8))(v120, v62);
      }

      else
      {

        v79 = v110;
        v110(v65, v66);
        (*(v61 + 8))(v64, v62);
      }

      v81 = sub_268B36ED4();
      v82 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
      v83 = v81;
      v84 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(5, v81);
      v70();

      v79(v111, v66);
      v79(v118, v66);
    }
  }

  else
  {
    v52 = a2;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v53 = v123;
    v54 = __swift_project_value_buffer(v123, qword_2802CDA10);
    v55 = v121;
    (*(v121 + 16))(v29, v54, v53);
    v56 = sub_268B37A34();
    v57 = sub_268B37F04();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2688BB000, v56, v57, "Playback rate updated.", v58, 2u);
      MEMORY[0x26D6266E0](v58, -1, -1);
    }

    (*(v55 + 8))(v29, v53);
    v59 = objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentResponse());
    v60 = SetPlaybackSpeedIntentResponse.init(code:userActivity:)(4, 0);
    v52();
  }
}

id SetPlaybackSpeedIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetPlaybackSpeedIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26893A824(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  return v5;
}

uint64_t sub_26893A8B8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2688E170C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_26893A924(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_26893A924(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_268B383F4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_268B37D34();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26893AA74(v7, v8, a1, v4);
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
    return sub_26893AA18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26893AA18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26893AA74(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_268987C84();
        v7 = v73;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_268987C84();
        v7 = v74;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
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
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_26893B050((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_26893AF24(&v80, *a1, a3);
LABEL_89:
}

uint64_t sub_26893AF24(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_268AE0F64(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_26893B050((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_26893B050(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_2689882C8(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_2689882C8(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

id sub_26893B1C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v37[3] = sub_268B36C54();
  v37[4] = MEMORY[0x277D5F680];
  v37[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v36[3] = v10;
  v36[4] = &off_2879539D0;
  v36[0] = a4;
  v11 = type metadata accessor for SetPlaybackSpeedIntentHandler();
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
  sub_26890C900(v37, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_playbackController]);
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
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceSelector] = v26;
  sub_26890C900(a3, v34);
  sub_26890C900(a5, &v32);
  type metadata accessor for AceServiceHelper();
  v27 = swift_allocObject();
  sub_2688E6514(v34, v27 + 16);
  sub_2688E6514(&v32, v27 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_aceServiceHelper] = v27;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetPlaybackSpeedIntentHandler_deviceState]);
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

uint64_t sub_26893B62C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26893B66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26893B6DC()
{
  result = qword_2802A5F88;
  if (!qword_2802A5F88)
  {
    sub_268B36F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5F88);
  }

  return result;
}

uint64_t sub_26893B734()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26893B7AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26893B850()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void OUTLINED_FUNCTION_10_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_23_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_24_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_26893B978()
{
  result = sub_268B35EC4();
  if (result)
  {

    if (!sub_268B35ED4() && !sub_268B35B94() && !sub_268B35B64())
    {
      if (sub_268B35EB4())
      {

        return 0;
      }

      if (!sub_268B35B84() && !sub_268B35B74() && !sub_268B35BA4() && !sub_268B35BB4() && !sub_268B35EE4() && !sub_268B35F04())
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_26893BA00()
{
  result = sub_268B35EC4();
  if (result)
  {

    result = sub_268B35B94();
    if (result)
    {

      if (!sub_268B35ED4() && !sub_268B35B64())
      {
        if (sub_268B35EB4())
        {

          return 0;
        }

        if (!sub_268B35B84() && !sub_268B35B74() && !sub_268B35BA4() && !sub_268B35BB4() && !sub_268B35EE4() && !sub_268B35F04())
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_26893BC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  HIDWORD(v546) = v23;
  v555 = v24;
  v554 = v25;
  v540 = sub_268B35474();
  v26 = OUTLINED_FUNCTION_1(v540);
  v539 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E08, &unk_268B3D910);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v38);
  v532 = sub_268B355B4();
  v39 = OUTLINED_FUNCTION_1(v532);
  v531 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79(v44 - v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
  OUTLINED_FUNCTION_22(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  OUTLINED_FUNCTION_22(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_22(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_22(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v79);
  v552 = sub_268B37A54();
  v80 = OUTLINED_FUNCTION_1(v552);
  v551 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_18();
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
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v95);
  v548 = sub_268B366C4();
  v96 = OUTLINED_FUNCTION_1(v548);
  v549 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v104);
  v105 = sub_268B35494();
  v106 = OUTLINED_FUNCTION_1(v105);
  v108 = v107;
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_20_0();
  v113 = v111 - v112;
  v115 = MEMORY[0x28223BE20](v114);
  v117 = (&v512 - v116);
  MEMORY[0x28223BE20](v115);
  v119 = &v512 - v118;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v121 = OUTLINED_FUNCTION_22(v120);
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_20_0();
  v126 = v124 - v125;
  v128 = MEMORY[0x28223BE20](v127);
  v130 = &v512 - v129;
  MEMORY[0x28223BE20](v128);
  v132 = &v512 - v131;
  v133 = type metadata accessor for MediaPlayerIntent();
  v134 = OUTLINED_FUNCTION_4(v133);
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_100_0();
  sub_268940828(v132);
  v137 = OUTLINED_FUNCTION_162();
  v553 = v133;
  if (!__swift_getEnumTagSinglePayload(v137, v138, v133))
  {
    v512 = v113;
    v513 = v117;
    v515 = v130;
    v514 = v126;
    v139 = v550;
    v517 = v20;
    sub_2688C0464(v132, v20);
    v140 = *(v108 + 16);
    v140(v119, v555, v105);
    v141 = (*(v108 + 88))(v119, v105);
    v255 = v141 == *MEMORY[0x277D5C128];
    v142 = v119;
    v516 = v105;
    v518 = v108;
    if (v255)
    {
      v143 = *(v108 + 96);
      v144 = OUTLINED_FUNCTION_102_1();
      v145(v144);
      v146 = v549;
      v147 = v547;
      v117 = v548;
      (*(v549 + 4))(v547, v119, v548);
      v148 = v551;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v149 = v552;
      __swift_project_value_buffer(v552, qword_2802CDA10);
      OUTLINED_FUNCTION_13_5();
      v150 = v139;
      v151(v139);
      v544 = *(v146 + 2);
      v544(v543, v147, v117);
      v152 = sub_268B37A34();
      v153 = sub_268B37ED4();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = OUTLINED_FUNCTION_172_0();
        v541 = v154;
        v542 = OUTLINED_FUNCTION_173_0();
        v561[0] = v542;
        *v154 = 136315138;
        OUTLINED_FUNCTION_21_4();
        sub_268946DBC(v155, v156);
        v157 = sub_268B38404();
        v150 = v158;
        v159 = *(v146 + 1);
        v160 = OUTLINED_FUNCTION_104_1();
        (v159)(v160);
        v161 = v159;
        v162 = sub_26892CDB8(v157, v150, v561);

        v163 = v541;
        *(v541 + 1) = v162;
        _os_log_impl(&dword_2688BB000, v152, v153, "Creating MediaPlayerNLv3Intent from NLv3IntentOnly: %s", v163, 0xCu);
        v164 = OUTLINED_FUNCTION_175(&v564);
        __swift_destroy_boxed_opaque_existential_0Tm(v164);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v165 = *(v148 + 8);
        OUTLINED_FUNCTION_77_2();
      }

      else
      {

        v193 = *(v146 + 1);
        v194 = OUTLINED_FUNCTION_104_1();
        (v193)(v194);
        v161 = v193;
        v168 = *(v148 + 8);
        v166 = v150;
        v167 = v149;
      }

      v168(v166, v167);
      OUTLINED_FUNCTION_55_3();
      v195 = v555;
      v196 = BYTE4(v546);
      v197 = v545;
      v198 = v547;
      v544(v545, v547, v117);
      v199 = v196 & 1;
      v200 = v515;
      sub_2689409CC(v197, v199, v201, v202, v203, v204, v205, v206, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523);
      (*(v518 + 8))(v195, v516);
      (v161)(v198, v117);
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_47_0();
      if (!__swift_getEnumTagSinglePayload(v207, v208, v117))
      {
        OUTLINED_FUNCTION_69_3();
        sub_268946CF0(v238, v161);
        goto LABEL_124;
      }

      sub_2688C058C(v200, &qword_2802A5650, &unk_268B3BAC0);
LABEL_17:
      OUTLINED_FUNCTION_69_3();
LABEL_91:
      OUTLINED_FUNCTION_22_3();
      sub_268946E74(v161, v384);
      goto LABEL_92;
    }

    v169 = v551;
    v117 = v548;
    if (v141 == *MEMORY[0x277D5C158])
    {
      v170 = *(v108 + 96);
      v171 = OUTLINED_FUNCTION_102_1();
      v172(v171);
      v550 = *(v142 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E20, qword_268B3D940) + 48));
      OUTLINED_FUNCTION_88_1(&a13);
      v174 = v544;
      (*(v173 + 32))(v544);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v175 = v552;
      __swift_project_value_buffer(v552, qword_2802CDA10);
      OUTLINED_FUNCTION_49_1();
      v540 = v176;
      v542 = v177;
      v539 = v178;
      (v178)(v541);
      v179 = v169;
      v161 = v537;
      v543 = v142[2];
      v543(v537, v174, v117);
      v180 = sub_268B37A34();
      v150 = sub_268B37ED4();
      if (os_log_type_enabled(v180, v150))
      {
        v161 = OUTLINED_FUNCTION_172_0();
        v181 = OUTLINED_FUNCTION_173_0();
        v561[0] = v181;
        *v161 = 136315138;
        OUTLINED_FUNCTION_21_4();
        sub_268946DBC(v182, v183);
        v184 = sub_268B38404();
        v185 = v117;
        v117 = v186;
        v187 = *(v549 + 1);
        v188 = OUTLINED_FUNCTION_74_2();
        v547 = v189;
        (v189)(v188);
        v190 = sub_26892CDB8(v184, v117, v561);

        *(v161 + 4) = v190;
        _os_log_impl(&dword_2688BB000, v180, v150, "Creating MediaPlayerNLv3Intent from NLv3IntentPlusServerConversion: %s", v161, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v181);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        OUTLINED_FUNCTION_46_2();
        v192 = *(v191 + 8);
        (v192)(v541, v175);
      }

      else
      {

        v547 = v142[1];
        (v547)(v161, v117);
        v192 = *(v179 + 8);
        v239 = OUTLINED_FUNCTION_278();
        v192(v239);
        v185 = v117;
      }

      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_69_3();
      v240 = BYTE4(v546);
      v241 = v545;
      v242 = v544;
      v543(v545, v544, v185);
      v243 = v240 & 1;
      v244 = v514;
      sub_2689409CC(v241, v243, v245, v246, v247, v248, v249, v250, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523);
      v251 = OUTLINED_FUNCTION_162();
      __swift_getEnumTagSinglePayload(v251, v252, v117);
      OUTLINED_FUNCTION_55_3();
      if (v253)
      {
        OUTLINED_FUNCTION_70_2();

        OUTLINED_FUNCTION_25_3();
        OUTLINED_FUNCTION_56_1();
        v254();
        OUTLINED_FUNCTION_43_2(&a13);
        (v547)(v242, v185);
        sub_2688C058C(v244, &qword_2802A5650, &unk_268B3BAC0);
        goto LABEL_91;
      }

      sub_268946CF0(v244, v161);
      v281 = sub_268B35484();
      objc_opt_self();
      v282 = swift_dynamicCastObjCClass();
      if (v282)
      {
        v283 = [v282 privatePlayMediaIntentData];
        if (v283)
        {
          v284 = v283;
          v285 = [v283 privateMediaIntentData];

          if (v285)
          {
            v150 = [v285 homeAutomationEntityProvider];

            if (v150)
            {
              v561[0] = v150;
              sub_2688EA03C(0, &qword_2802A6110, 0x277CD3CD8);
              sub_268946D54();
              if (sub_268B37834())
              {
                v286 = OUTLINED_FUNCTION_175(&v553);
                (v539)(v286, v540, v552);
                v287 = v150;
                v288 = sub_268B37A34();
                v289 = sub_268B37ED4();

                if (os_log_type_enabled(v288, v289))
                {
                  v161 = OUTLINED_FUNCTION_172_0();
                  v290 = swift_slowAlloc();
                  *v161 = 138412290;
                  *(v161 + 4) = v287;
                  *v290 = v150;
                  v291 = v287;
                  _os_log_impl(&dword_2688BB000, v288, v289, "Amending HomeAutomation nodes using homeAutomationEntityProvider from the server conversion: %@", v161, 0xCu);
                  sub_2688C058C(v290, &qword_2802A6420, &unk_268B3C680);
                  OUTLINED_FUNCTION_12();
                  OUTLINED_FUNCTION_69_3();
                  OUTLINED_FUNCTION_12();
                }

                OUTLINED_FUNCTION_43_2(&a15);
                OUTLINED_FUNCTION_77_2();
                (v192)();
                v292 = sub_2689452B0(v287, &selRef_roomNames);
                v293 = MEMORY[0x277D84F90];
                if (v292)
                {
                  v294 = v292;
                }

                else
                {
                  v294 = MEMORY[0x277D84F90];
                }

                v295 = *(v117 + 15);
                v296 = *&v161[v295];

                *&v161[v295] = v294;
                v297 = sub_268945374(v287, &selRef_homeName);
                v299 = v298;
                v300 = &v161[*(v117 + 16)];
                v301 = v300[1];

                *v300 = v297;
                v300[1] = v299;
                v302 = sub_2689452B0(v287, &selRef_zoneNames);
                if (v302)
                {
                  v303 = v302;
                }

                else
                {
                  v303 = v293;
                }

                v304 = *(v117 + 17);
                v305 = *&v161[v304];

                *&v161[v304] = v303;
                v306 = sub_2689452B0(v287, &selRef_accessoryNames);
                if (v306)
                {
                  v307 = v306;
                }

                else
                {
                  v307 = v293;
                }

                v308 = *(v117 + 18);
                v309 = *&v161[v308];

                *&v161[v308] = v307;
                INHomeAutomationEntityProvider.haServiceNames()();
                v311 = v310;
                v312 = *(v117 + 19);
                v313 = *&v161[v312];

                *&v161[v312] = v311;
                v314 = sub_2689452B0(v287, &selRef_serviceGroups);
                if (v314)
                {
                  v293 = v314;
                }

                v315 = *(v117 + 20);
                v316 = *&v161[v315];

                *&v161[v315] = v293;
                INHomeAutomationEntityProvider.haFromEntities()();
                v318 = v317;
                v319 = *(v117 + 21);
                v320 = *&v161[v319];

                *&v161[v319] = v318;
                OUTLINED_FUNCTION_88_1(&v555);
                INHomeAutomationEntityProvider.haDeviceQuantifier()();
                sub_268932694(v319, &v161[*(v117 + 22)], &qword_2802A5BA8, &qword_268B3C690);
                OUTLINED_FUNCTION_88_1(&v556);
                INHomeAutomationEntityProvider.haDeviceType()();
                sub_268932694(v319, &v161[*(v117 + 24)], &qword_2802A58F0, &unk_268B3BEC0);
                OUTLINED_FUNCTION_88_1(v557);
                INHomeAutomationEntityProvider.haPlaceHint()();

                OUTLINED_FUNCTION_70_2();

                OUTLINED_FUNCTION_25_3();
                OUTLINED_FUNCTION_56_1();
                v321();
                v322 = OUTLINED_FUNCTION_26_2();
                v323(v322);
                sub_268932694(v319, &v161[*(v117 + 25)], &qword_2802A5908, &qword_268B3D920);
                goto LABEL_123;
              }
            }

            OUTLINED_FUNCTION_70_2();

            OUTLINED_FUNCTION_25_3();
            v426 = OUTLINED_FUNCTION_74_2();
            v427(v426);
            v428 = OUTLINED_FUNCTION_26_2();
            v429(v428);
LABEL_123:
            OUTLINED_FUNCTION_55_3();
            goto LABEL_124;
          }
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_25_3();
      v355 = OUTLINED_FUNCTION_74_2();
      v356(v355);
      v357 = OUTLINED_FUNCTION_26_2();
      v358(v357);
LABEL_124:
      sub_268946C8C(v161, v150);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v508, v509, v510, v117);
      OUTLINED_FUNCTION_22_3();
      sub_268946E74(v161, v511);
      goto LABEL_93;
    }

    if (v141 == *MEMORY[0x277D5C150])
    {
      v209 = *(v108 + 96);
      v210 = OUTLINED_FUNCTION_102_1();
      v211(v210);
      OUTLINED_FUNCTION_76_1(&v562);
      v213 = v542;
      v214 = v540;
      (*(v212 + 32))(v542, v142, v540);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v215 = v552;
      __swift_project_value_buffer(v552, qword_2802CDA10);
      OUTLINED_FUNCTION_49_1();
      v216 = v538;
      v548 = v217;
      v550 = v218;
      v549 = v219;
      (v219)(v538);
      v220 = v105 + 16;
      v117 = *(v105 + 16);
      v221 = v169;
      v150 = v536;
      (v117)(v536, v213, v214);
      v222 = sub_268B37A34();
      v223 = sub_268B37EE4();
      v224 = OUTLINED_FUNCTION_115_0(v223);
      v547 = v117;
      if (v224)
      {
        v225 = v105;
        v226 = OUTLINED_FUNCTION_172_0();
        v227 = OUTLINED_FUNCTION_173_0();
        v561[0] = v227;
        *v226 = 136315138;
        v228 = OUTLINED_FUNCTION_175(&v560);
        (v117)(v228, v150, v214);
        OUTLINED_FUNCTION_97();
        sub_268B37C24();
        v229 = *(v225 + 8);
        (v229)(v150, v214);
        v230 = OUTLINED_FUNCTION_97();
        v233 = sub_26892CDB8(v230, v231, v232);

        *(v226 + 4) = v233;
        _os_log_impl(&dword_2688BB000, v222, v216, "MediaPlayerIntent#init directInvocation: %s", v226, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v227);
        v234 = v229;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        OUTLINED_FUNCTION_46_2();
        v161 = *(v235 + 8);
        OUTLINED_FUNCTION_77_2();
      }

      else
      {

        v234 = *(v105 + 8);
        (v234)(v150, v214);
        v161 = *(v221 + 8);
        v236 = v538;
        v237 = v215;
      }

      (v161)(v236, v237);
      OUTLINED_FUNCTION_55_3();
      v324 = sub_268B35454();
      v326 = v325;
      v327 = v324 == 0xD00000000000003CLL && 0x8000000268B57880 == v325;
      if (v327 || (v328 = v324, (sub_268B38444() & 1) != 0))
      {

        type metadata accessor for DirectInvocationHelper();
        sub_268A69384();
        if (v329)
        {
          v330 = sub_268AA3904();
          v331 = OUTLINED_FUNCTION_24_4();
          v332(v331);
          OUTLINED_FUNCTION_43_2(&v562);
          OUTLINED_FUNCTION_108_1();
          v234();
          OUTLINED_FUNCTION_47_0();
          v333 = *(v117 + 9);
          v161 = v517;
LABEL_69:
          v161[v333] = v330;
          goto LABEL_124;
        }

        v554 = v234;
        v359 = OUTLINED_FUNCTION_45_2(&v559);
        v360(v359);
        v361 = sub_268B37A34();
        v362 = sub_268B37EE4();
        OUTLINED_FUNCTION_183_0(v362);
        OUTLINED_FUNCTION_47_0();
        if (!v363)
        {
          goto LABEL_80;
        }

        *OUTLINED_FUNCTION_14() = 0;
        v366 = "MediaIntent#init returning nil for intent since we could not find a button pressed.";
        goto LABEL_79;
      }

      if (v328 == 0xD000000000000046 && 0x8000000268B56FE0 == v326)
      {

        v370 = v542;
      }

      else
      {
        v369 = sub_268B38444();

        v370 = v542;
        if ((v369 & 1) == 0)
        {
          v117 = v526;
          (v549)(v526, v548, v552);
          v371 = v525;
          v372 = v540;
          (v547)(v525, v370, v540);
          v373 = sub_268B37A34();
          sub_268B37EE4();
          OUTLINED_FUNCTION_89_2();
          if (os_log_type_enabled(v373, v374))
          {
            v375 = v371;
            v376 = OUTLINED_FUNCTION_172_0();
            v550 = OUTLINED_FUNCTION_173_0();
            v561[0] = v550;
            *v376 = 136315138;
            v377 = sub_268B35454();
            v379 = v378;
            v117 = (v539 + 8);
            (v234)(v375, v372);
            v380 = sub_26892CDB8(v377, v379, v561);

            *(v376 + 4) = v380;
            _os_log_impl(&dword_2688BB000, v373, v370, "MediaPlayerIntent#init unexpected direct invocation identifier: %s", v376, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v550);
            OUTLINED_FUNCTION_55_3();
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();

            v381 = OUTLINED_FUNCTION_24_4();
            v382(v381);
            OUTLINED_FUNCTION_43_2(&a15);
            OUTLINED_FUNCTION_77_2();
            (v161)();
            (v234)(v542, v372);
          }

          else
          {

            v430 = OUTLINED_FUNCTION_24_4();
            v431(v430);
            (v234)(v371, v372);
            OUTLINED_FUNCTION_43_2(&a15);
            OUTLINED_FUNCTION_77_2();
            (v161)();
            (v234)(v370, v372);
          }

LABEL_108:
          OUTLINED_FUNCTION_47_0();
          goto LABEL_17;
        }
      }

      type metadata accessor for DirectInvocationHelper();
      sub_268A69394();
      v400 = v370;
      if (v399)
      {
        v401 = v398;
        v402 = v399;
        v403 = OUTLINED_FUNCTION_24_4();
        v404(v403);
        OUTLINED_FUNCTION_43_2(&v562);
        OUTLINED_FUNCTION_108_1();
        v234();
        OUTLINED_FUNCTION_47_0();
        OUTLINED_FUNCTION_95_1();
        *v400 = v401;
        v400[1] = v402;
        goto LABEL_124;
      }

      sub_268A693B4();
      OUTLINED_FUNCTION_47_0();
      if (v422)
      {
        v423 = v421;
        v424 = v422;
        OUTLINED_FUNCTION_25_3();
        OUTLINED_FUNCTION_56_1();
        v425();
        OUTLINED_FUNCTION_43_2(&v562);
        OUTLINED_FUNCTION_108_1();
        v234();
        OUTLINED_FUNCTION_95_1();
        *v370 = v423;
        v370[1] = v424;
        goto LABEL_124;
      }

      v554 = v234;
      v502 = OUTLINED_FUNCTION_45_2(&v546);
      v503(v502);
      v361 = sub_268B37A34();
      v504 = sub_268B37EE4();
      if (!OUTLINED_FUNCTION_183_0(v504))
      {
        goto LABEL_80;
      }

      *OUTLINED_FUNCTION_14() = 0;
      v366 = "MediaIntent#init returning nil for intent since we could not find a DeviceID.";
LABEL_79:
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v364, v365, v366);
      OUTLINED_FUNCTION_12();
LABEL_80:

      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_56_1();
      v367();
      OUTLINED_FUNCTION_43_2(&a15);
      (v161)(v220, v234);
      OUTLINED_FUNCTION_43_2(&v562);
      OUTLINED_FUNCTION_108_1();
      v554();
      goto LABEL_17;
    }

    v255 = v141 == *MEMORY[0x277D5C148] || v141 == *MEMORY[0x277D5C160];
    if (v255)
    {
      v256 = *(v108 + 8);
      v257 = OUTLINED_FUNCTION_102_1();
      v518 = v108 + 8;
      (v256)(v257);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v258 = v552;
      v259 = __swift_project_value_buffer(v552, qword_2802CDA10);
      v161 = *(v169 + 16);
      (v161)(v535, v259, v258);
      v260 = sub_268B37A34();
      v261 = sub_268B37ED4();
      v262 = OUTLINED_FUNCTION_115_0(v261);
      v150 = v555;
      v263 = v534;
      if (v262)
      {
        v264 = OUTLINED_FUNCTION_14();
        *v264 = 0;
        _os_log_impl(&dword_2688BB000, v260, v126, "Handling USO/Pommes parse in MediaPlayerIntent", v264, 2u);
        v258 = v552;
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_46_2();
      v117 = *(v265 + 8);
      v551 = v265 + 8;
      (v117)(v535, v258);
      v266 = sub_268A40454();
      if (v266)
      {
        v267 = v266;
        sub_268B35DC4();
        sub_268932738(v563, v557, &byte_2802A6450, &byte_268B3BE10);
        if (v557[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6108, &qword_268B3E800);
          if (swift_dynamicCast())
          {
            if (*(&v559 + 1))
            {
              v550 = v267;
              v549 = v256;
              sub_2688E6514(&v558, v561);
              v268 = v520;
              v269 = OUTLINED_FUNCTION_74_2();
              (v161)(v269);
              sub_268932738(v563, &v558, &byte_2802A6450, &byte_268B3BE10);
              v270 = v268;
              v271 = sub_268B37A34();
              v272 = sub_268B37F04();
              if (OUTLINED_FUNCTION_183_0(v272))
              {
                v270 = OUTLINED_FUNCTION_172_0();
                v273 = OUTLINED_FUNCTION_173_0();
                v556 = v273;
                *v270 = 136315138;
                v161 = &byte_268B3BE10;
                sub_268932738(&v558, v557, &byte_2802A6450, &byte_268B3BE10);
                v274 = OUTLINED_FUNCTION_97();
                __swift_instantiateConcreteTypeFromMangledNameV2(v274, v275);
                v276 = sub_268B37C24();
                v278 = v277;
                sub_2688C058C(&v558, &byte_2802A6450, &byte_268B3BE10);
                v279 = v276;
                v150 = v555;
                v280 = sub_26892CDB8(v279, v278, &v556);

                *(v270 + 4) = v280;
                _os_log_impl(&dword_2688BB000, v271, v272, "Setting attributes for MediaPlayerIntent from task: %s", v270, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v273);
                OUTLINED_FUNCTION_12();
                OUTLINED_FUNCTION_12();
              }

              else
              {

                sub_2688C058C(&v558, &byte_2802A6450, &byte_268B3BE10);
                OUTLINED_FUNCTION_278();
              }

              OUTLINED_FUNCTION_46_2();
              v117();
              OUTLINED_FUNCTION_69_3();
              v432 = v529;
              v433 = v528;
              v434 = v527;
              v435 = v524;
              OUTLINED_FUNCTION_34_1();
              v436 = *(v270 + 8);
              OUTLINED_FUNCTION_129();
              sub_268B37324();
              *v161 = sub_268942CA4();
              v437 = v562;
              v438 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v438, v439);
              v440 = *(v437 + 8);
              v441 = sub_268B37344();
              v443 = v442;
              OUTLINED_FUNCTION_47_0();
              v444 = &v161[*(v117 + 26)];
              v445 = v444[1];

              *v444 = v441;
              v444[1] = v443;
              v446 = v562;
              v447 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v447, v448);
              v449 = *(v446 + 8);
              v161[*(v117 + 12)] = sub_268A36358();
              v450 = v562;
              v451 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v451, v452);
              v453 = *(v450 + 8);
              v454 = v521;
              sub_268B37364();
              sub_268932694(v454, &v161[*(v117 + 10)], &qword_2802A5CA8, &unk_268B3CE30);
              v455 = v562;
              v456 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v456, v457);
              v458 = *(v455 + 16);
              v459 = OUTLINED_FUNCTION_129();
              v161[1] = v460(v459, v455);
              v461 = v562;
              v462 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v462, v463);
              v464 = *(v461 + 32);
              v465 = OUTLINED_FUNCTION_129();
              v161[*(v117 + 8)] = v466(v465, v461);
              OUTLINED_FUNCTION_34_1();
              v467 = v522;
              OUTLINED_FUNCTION_123();
              sub_268A5D240(v468, v469);
              sub_268932694(v467, &v161[*(v117 + 7)], &qword_2802A5FA8, &unk_268B3DEF0);
              OUTLINED_FUNCTION_34_1();
              v470 = v523;
              v471 = OUTLINED_FUNCTION_123();
              sub_268A5D2E4(v471, v472);
              sub_268932694(v470, &v161[*(v117 + 13)], &qword_2802A5FB0, &unk_268B3DF00);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v473 = sub_268B377B4();
              v474 = *(v117 + 15);
              v475 = *&v161[v474];

              *&v161[v474] = v473;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v476 = sub_268B37784();
              v478 = v477;
              v479 = &v161[*(v117 + 16)];
              v480 = v479[1];

              *v479 = v476;
              v479[1] = v478;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v481 = sub_268B377C4();
              v482 = *(v117 + 17);
              v483 = *&v161[v482];

              *&v161[v482] = v481;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v484 = sub_268B37814();
              v485 = *(v117 + 18);
              v486 = *&v161[v485];

              *&v161[v485] = v484;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v487 = sub_268B377F4();
              v488 = *(v117 + 19);
              v489 = *&v161[v488];

              *&v161[v488] = v487;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v490 = sub_268B37804();
              v491 = *(v117 + 20);
              v492 = *&v161[v491];

              *&v161[v491] = v490;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v493 = sub_268B377E4();
              v494 = *(v117 + 21);
              v495 = *&v161[v494];

              *&v161[v494] = v493;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              sub_268B37824();
              sub_268932694(v434, &v161[*(v117 + 22)], &qword_2802A5BA8, &qword_268B3C690);
              v496 = &v161[*(v117 + 23)];
              v497 = *(v496 + 1);

              *v496 = 0;
              *(v496 + 1) = 0;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              sub_268B377D4();
              sub_268932694(v433, &v161[*(v117 + 24)], &qword_2802A58F0, &unk_268B3BEC0);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              sub_268B37794();
              sub_268932694(v432, &v161[*(v117 + 25)], &qword_2802A5908, &qword_268B3D920);
              OUTLINED_FUNCTION_34_1();
              v498 = *(*(v494 + 8) + 16);
              OUTLINED_FUNCTION_129();
              sub_268B376D4();
              sub_268932694(v435, &v161[*(v117 + 11)], &qword_2802A58C0, &unk_268B3F080);
              OUTLINED_FUNCTION_34_1();
              v499 = *(v494 + 8);
              OUTLINED_FUNCTION_129();
              if (sub_268B372F4())
              {
                sub_268962590();
                v501 = v500;
              }

              else
              {
                v501 = MEMORY[0x277D84F90];
              }

              v505 = v549;
              OUTLINED_FUNCTION_70_2();

              OUTLINED_FUNCTION_28_4();
              v505();
              sub_2688C058C(v563, &byte_2802A6450, &byte_268B3BE10);
              v506 = *(v117 + 14);
              v507 = *&v161[v506];

              *&v161[v506] = v501;
              __swift_destroy_boxed_opaque_existential_0Tm(v561);
              goto LABEL_123;
            }
          }

          else
          {
            v560 = 0;
            v558 = 0u;
            v559 = 0u;
          }
        }

        else
        {
          sub_2688C058C(v557, &byte_2802A6450, &byte_268B3BE10);
          v558 = 0u;
          v559 = 0u;
          v560 = 0;
        }

        sub_2688C058C(&v558, &qword_2802A6100, &qword_268B3E7F8);
        (v161)(v263, v259, v258);
        sub_268932738(v563, v561, &byte_2802A6450, &byte_268B3BE10);
        v405 = sub_268B37A34();
        v406 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_183_0(v406))
        {
          v407 = OUTLINED_FUNCTION_172_0();
          v161 = OUTLINED_FUNCTION_173_0();
          v557[0] = v161;
          *v407 = 136315138;
          v550 = v267;
          OUTLINED_FUNCTION_103_1();
          sub_268932738(v408, v409, v410, v411);
          v412 = OUTLINED_FUNCTION_189();
          __swift_instantiateConcreteTypeFromMangledNameV2(v412, v413);
          v414 = sub_268B37C24();
          v549 = v117;
          v117 = v256;
          v415 = v414;
          v417 = v416;
          sub_2688C058C(v561, &byte_2802A6450, &byte_268B3BE10);
          v418 = sub_26892CDB8(v415, v417, v557);

          *(v407 + 4) = v418;
          _os_log_impl(&dword_2688BB000, v405, v406, "Fatal: Unable to cast task: %s to ControlsMediaPlayerTask", v407, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v161);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          OUTLINED_FUNCTION_70_2();

          OUTLINED_FUNCTION_28_4();
          v256();
          OUTLINED_FUNCTION_46_2();
          v549();
        }

        else
        {

          OUTLINED_FUNCTION_28_4();
          v256();
          v419 = OUTLINED_FUNCTION_23_3();
          sub_2688C058C(v419, v420, &byte_268B3BE10);
          OUTLINED_FUNCTION_46_2();
          v117();
        }

        sub_2688C058C(v563, &byte_2802A6450, &byte_268B3BE10);
        OUTLINED_FUNCTION_55_3();
        goto LABEL_108;
      }

      v388 = v256;
      v389 = OUTLINED_FUNCTION_74_2();
      (v161)(v389);
      v390 = sub_268B37A34();
      v391 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_183_0(v391))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v392, v393, "No tasks found in usoTasks input, might be a confirmation response.");
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_278();
      OUTLINED_FUNCTION_46_2();
      v117();
      OUTLINED_FUNCTION_88_1(&v558);
      sub_268A3FD3C(v394);
      v395 = v532;
      OUTLINED_FUNCTION_135(v390, 1, v532);
      v150 = v554;
      v161 = v517;
      v396 = v531;
      v397 = v530;
      if (!v255)
      {
        (*(v531 + 32))(v530, v390, v395);
        v330 = sub_2689F8358();
        OUTLINED_FUNCTION_28_4();
        v388();
        (*(v396 + 8))(v397, v395);
        v117 = v553;
        if (v330 == 3)
        {
          goto LABEL_91;
        }

        v333 = *(v553 + 9);
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_28_4();
      v388();
      sub_2688C058C(v390, &qword_2802A5E08, &unk_268B3D910);
    }

    else
    {
      v550 = v142;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v161 = v552;
      __swift_project_value_buffer(v552, qword_2802CDA10);
      OUTLINED_FUNCTION_49_1();
      v334 = v533;
      v335(v533);
      v336 = OUTLINED_FUNCTION_175(&v540);
      v140(v336, v555, v105);
      v117 = v140;
      v337 = v105;
      v338 = sub_268B37A34();
      sub_268B37ED4();
      OUTLINED_FUNCTION_89_2();
      v340 = os_log_type_enabled(v338, v339);
      v341 = v512;
      if (v340)
      {
        v342 = OUTLINED_FUNCTION_172_0();
        LODWORD(v549) = v105;
        v343 = v342;
        v548 = OUTLINED_FUNCTION_173_0();
        v561[0] = v548;
        *v343 = 136315138;
        (v117)(v341, v139, v337);
        sub_268B37C24();
        v161 = v344;
        v117 = (v518 + 8);
        v345 = *(v518 + 8);
        v345(v139, v337);
        v346 = OUTLINED_FUNCTION_97();
        v349 = sub_26892CDB8(v346, v347, v348);

        *(v343 + 4) = v349;
        _os_log_impl(&dword_2688BB000, v338, v549, "MediaPlayerIntent#init Unexpected parse type: %s, returning nil MediaPlayerIntent", v343, 0xCu);
        v350 = OUTLINED_FUNCTION_175(&a12);
        __swift_destroy_boxed_opaque_existential_0Tm(v350);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v345(v555, v337);
        v351 = *(v169 + 8);
        OUTLINED_FUNCTION_77_2();
      }

      else
      {

        v345 = *(v518 + 8);
        v345(v555, v105);
        v345(v139, v105);
        v354 = *(v169 + 8);
        v352 = v334;
        v353 = v161;
      }

      v354(v352, v353);
      OUTLINED_FUNCTION_69_3();
      v383 = OUTLINED_FUNCTION_70_2();
      v345(v383, v337);
      OUTLINED_FUNCTION_55_3();
    }

    OUTLINED_FUNCTION_47_0();
    goto LABEL_91;
  }

  (*(v108 + 8))(v555, v105);
  sub_2688C058C(v132, &qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_55_3();
LABEL_92:
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v385, v386, v387, v117);
LABEL_93:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26893E3F8(char a1)
{
  result = 2036427888;
  switch(a1)
  {
    case 1:
      result = 0x6573756170;
      break;
    case 2:
      result = 0x656D75736572;
      break;
    case 3:
      result = 1886352499;
      break;
    case 4:
      result = 1885956979;
      break;
    case 5:
      result = 0x73756F6976657270;
      break;
    case 6:
      result = 1801807219;
      break;
    case 7:
      result = 0x77726F4670696B73;
      break;
    case 8:
      result = 0x6B63614270696B73;
      break;
    case 9:
      result = 0x746165706572;
      break;
    case 10:
      v3 = 0x726174736572;
      goto LABEL_21;
    case 11:
      result = 0x656C6666756873;
      break;
    case 12:
      result = 0x6165705365766F6DLL;
      break;
    case 13:
      result = 0x6B61657053646461;
      break;
    case 14:
      result = 0x705365766F6D6572;
      break;
    case 15:
      result = 0x627265566F6ELL;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0x736972616D6D7573;
      break;
    case 18:
      v3 = 0x736575716572;
LABEL_21:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0x6573616572636E69;
      break;
    case 22:
      result = 0x6573616572636564;
      break;
    case 23:
      result = 1701079400;
      break;
    default:
      return result;
  }

  return result;
}

void sub_26893E6A8(uint64_t a1)
{
  MEMORY[0x26D625820](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_107_1();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v6 = *(v3 - 1);
    v5 = *v3;

    OUTLINED_FUNCTION_106_0(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
    sub_268ADD5F8();

    v3 += 2;
  }

  __break(1u);
}

void sub_26893E750(uint64_t a1)
{
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  sub_2689474F0();
  v6 = OUTLINED_FUNCTION_189();
  MEMORY[0x26D625820](v6);
  OUTLINED_FUNCTION_107_1();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v8 = *(v3 - 1);
    v7 = *v3;

    OUTLINED_FUNCTION_106_0(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    sub_268ADD6FC();

    v3 += 2;
  }

  __break(1u);
}