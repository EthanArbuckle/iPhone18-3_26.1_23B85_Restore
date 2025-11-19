void sub_266C1E5C0()
{
  sub_266C18324();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_266C1E62C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C9A30);
  v1 = __swift_project_value_buffer(v0, qword_2800C9A30);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_266C1E6F4(uint64_t *a1, uint64_t a2)
{
  sub_266C233D0(a1, v2 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState);
  OUTLINED_FUNCTION_4_2();
  sub_266C23434(a2, v2 + v5, v6);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SetGeoFenceIntentHandler();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  OUTLINED_FUNCTION_1_2();
  sub_266C23494(a2, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

void sub_266C1E788(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_2800C9148 != -1)
  {
    swift_once();
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_2800C9A30);
  v8 = a1;
  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();

  if (os_log_type_enabled(v9, v10))
  {
    v33 = v6;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315138;
    [v8 friend];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A50, &qword_266DAE3C0);
    v13 = sub_266DAA72C();
    v15 = sub_266C22A3C(v13, v14, &v34);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_266C08000, v9, v10, "Starting friend resolve on %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D5F2480](v12, -1, -1);
    v16 = v11;
    v6 = v33;
    MEMORY[0x26D5F2480](v16, -1, -1);
  }

  v17 = [v8 friend];
  if (!v17)
  {
    v26 = sub_266DA948C();
    v27 = sub_266DAAAEC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266C08000, v26, v27, "friend parameter on intent is nil", v28, 2u);
      MEMORY[0x26D5F2480](v28, -1, -1);
    }

    type metadata accessor for SetGeoFenceFriendResolutionResult();
    v29 = [swift_getObjCClassFromMetadata() unsupported];
    (a3)[2](a3, v29);

    goto LABEL_17;
  }

  v18 = v17;
  sub_266C22F60(v18, &selRef_identifier);
  if (v19)
  {

    v20 = sub_266DA948C();
    v21 = sub_266DAAB0C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266C08000, v20, v21, "Friend parameter is fully resolved to a contact.", v22, 2u);
      MEMORY[0x26D5F2480](v22, -1, -1);
    }

    v23 = [v8 notifyMe];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 BOOLValue];
    }

    else
    {
      v25 = 0;
    }

    v29 = sub_266C224D0(v18, v25);
    (a3)[2](a3, v29);

LABEL_17:
    goto LABEL_18;
  }

  v30 = swift_allocObject();
  v30[2] = sub_266C23638;
  v30[3] = v6;
  v30[4] = a2;
  v30[5] = v8;
  v31 = v8;

  v32 = a2;
  sub_266C34174();

LABEL_18:
  _Block_release(a3);
}

void sub_266C1EBA8(void *a1, void (*a2)(void), uint64_t a3)
{
  if (qword_2800C9148 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_2800C9A30);
  v8 = a1;
  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();

  if (os_log_type_enabled(v9, v10))
  {
    v33 = a3;
    v11 = OUTLINED_FUNCTION_14_0();
    v12 = a2;
    v13 = OUTLINED_FUNCTION_13_0();
    v34 = v13;
    *v11 = 136315138;
    [v8 friend];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A50, &qword_266DAE3C0);
    v14 = sub_266DAA72C();
    v16 = sub_266C22A3C(v14, v15, &v34);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_266C08000, v9, v10, "Starting friend resolve on %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    a2 = v12;
    OUTLINED_FUNCTION_6_1();
    a3 = v33;
    OUTLINED_FUNCTION_6_1();
  }

  v17 = [v8 friend];
  if (v17)
  {
    v18 = v17;
    sub_266C22F60(v18, &selRef_identifier);
    if (!v19)
    {
      v30 = swift_allocObject();
      v30[2] = a2;
      v30[3] = a3;
      v30[4] = v3;
      v30[5] = v8;
      v31 = v8;

      v32 = v3;
      sub_266C34174();

      return;
    }

    v20 = sub_266DA948C();
    v21 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v21))
    {
      v22 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v22);
      _os_log_impl(&dword_266C08000, v20, v21, "Friend parameter is fully resolved to a contact.", &off_279C03000, 2u);
      OUTLINED_FUNCTION_5_1();
    }

    v23 = [v8 notifyMe];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 BOOLValue];
    }

    else
    {
      v25 = 0;
    }

    v29 = sub_266C224D0(v18, v25);
    a2();
  }

  else
  {
    v26 = sub_266DA948C();
    v27 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_16_0(v27))
    {
      v28 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v28);
      _os_log_impl(&dword_266C08000, v26, v27, "friend parameter on intent is nil", &off_279C03000, 2u);
      OUTLINED_FUNCTION_5_1();
    }

    type metadata accessor for SetGeoFenceFriendResolutionResult();
    v29 = [swift_getObjCClassFromMetadata() unsupported];
    a2();
  }
}

void sub_266C1EF00(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  switch(a2)
  {
    case 1:
      type metadata accessor for SetGeoFenceFriendResolutionResult();
      v16 = sub_266DA5B8C(a1);
      goto LABEL_14;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_266DAE3B0;
      *(inited + 32) = a1;
      type metadata accessor for SetGeoFenceFriendResolutionResult();
      v14 = a1;
      sub_266C6A318(inited);
      swift_setDeallocating();
      sub_266C6F074();
      v15 = sub_266C6AA38(2);
      a3();

      return;
    case 4:
      type metadata accessor for SetGeoFenceFriendResolutionResult();
      sub_266C6A318(a1);
      v17 = 2;
      goto LABEL_13;
    case 5:
      if (!a1)
      {
        type metadata accessor for SetGeoFenceFriendResolutionResult();
        sub_266C6A318(MEMORY[0x277D84F90]);
        v17 = 1;
        goto LABEL_13;
      }

      if (a1 == 1)
      {
        type metadata accessor for SetGeoFenceFriendResolutionResult();
        sub_266C6A318(MEMORY[0x277D84F90]);
        v17 = 3;
LABEL_13:
        v16 = sub_266C6AA38(v17);
        goto LABEL_14;
      }

      if (qword_2800C9148 != -1)
      {
        swift_once();
      }

      v18 = sub_266DA94AC();
      __swift_project_value_buffer(v18, qword_2800C9A30);
      v19 = sub_266DA948C();
      v20 = sub_266DAAAFC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_266C08000, v19, v20, "Friend resolver returned an unexpected error", v21, 2u);
        MEMORY[0x26D5F2480](v21, -1, -1);
      }

      type metadata accessor for SetGeoFenceFriendResolutionResult();
      v16 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_14:
      v22 = v16;
LABEL_15:
      (a3)(v16);

      return;
    default:
      sub_266C235B0(a1, a2);
      v10 = [a6 notifyMe];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 BOOLValue];
      }

      else
      {
        v12 = 0;
      }

      v22 = sub_266C224D0(a1, v12);
      sub_266C235EC(a1, a2);
      v16 = v22;
      goto LABEL_15;
  }
}

void sub_266C1F218(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v139 = a2;
  v5 = sub_266DA947C();
  v153 = *(v5 - 8);
  v154 = v5;
  v6 = *(v153 + 64);
  MEMORY[0x28223BE20](v5);
  v152 = v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A58, &qword_266DAE3C8);
  v146 = *(v148 - 8);
  v8 = *(v146 + 64);
  MEMORY[0x28223BE20](v148);
  v144 = v130 - v9;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A60, &unk_266DAE3D0);
  v147 = *(v149 - 8);
  v10 = *(v147 + 64);
  MEMORY[0x28223BE20](v149);
  v145 = v130 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v140 = v130 - v14;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A68, &qword_266DAE3E0);
  v142 = *(v143 - 8);
  v15 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v141 = v130 - v16;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A70, &qword_266DAE3E8);
  v17 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v151 = (v130 - v18);
  FriendSessionManager = type metadata accessor for FindFriendSessionManager();
  v19 = *(*(FriendSessionManager - 8) + 64);
  MEMORY[0x28223BE20](FriendSessionManager);
  v21 = (v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  v22[2] = a3;
  _Block_copy(a3);
  if (qword_2800C9148 != -1)
  {
    swift_once();
  }

  v23 = sub_266DA94AC();
  v24 = __swift_project_value_buffer(v23, qword_2800C9A30);
  v25 = a1;
  v26 = sub_266DA948C();
  v27 = sub_266DAAB0C();

  v28 = os_log_type_enabled(v26, v27);
  v29 = &off_279C03000;
  v155 = v21;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v163 = v31;
    *v30 = 136315138;
    v159[0] = [v25 location];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AD0, &unk_266DB32B0);
    v32 = sub_266DAA72C();
    v34 = v25;
    v35 = a3;
    v36 = v22;
    v37 = sub_266C22A3C(v32, v33, &v163);

    *(v30 + 4) = v37;
    v22 = v36;
    a3 = v35;
    v25 = v34;
    _os_log_impl(&dword_266C08000, v26, v27, "Starting location resolve on %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v38 = v31;
    v29 = &off_279C03000;
    MEMORY[0x26D5F2480](v38, -1, -1);
    MEMORY[0x26D5F2480](v30, -1, -1);
  }

  v39 = [v25 v29[404]];
  if (!v39)
  {
    v46 = sub_266DA948C();
    v47 = sub_266DAAAFC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_266C08000, v46, v47, "Cannot resolve location from a nil location.", v48, 2u);
      MEMORY[0x26D5F2480](v48, -1, -1);
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v49 = [swift_getObjCClassFromMetadata() unsupported];
    (a3)[2](a3, v49);

    goto LABEL_26;
  }

  v40 = v39;
  sub_266C22F60(v40, &selRef_identifier);
  if (v41)
  {

    v42 = sub_266DA948C();
    v43 = sub_266DAAB0C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_266C08000, v42, v43, "Location is fully resolved.", v44, 2u);
      MEMORY[0x26D5F2480](v44, -1, -1);
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v45 = sub_266DA4F44(v40);
LABEL_25:
    v49 = v45;
    (a3)[2](a3, v45);

LABEL_26:
    goto LABEL_27;
  }

  v50 = [v25 friend];
  if (!v50 || (v51 = sub_266C22F60(v50, &selRef_identifier), !v52))
  {
LABEL_22:
    v74 = sub_266DA948C();
    v75 = sub_266DAAAFC();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_266C08000, v74, v75, "The friend parameter was not fully resolved before resolving location.", v76, 2u);
      MEMORY[0x26D5F2480](v76, -1, -1);
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v45 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_25;
  }

  v53 = v51;
  v54 = v52;
  v55 = [v25 friend];
  if (!v55 || (v56 = v55, v57 = [v55 person], v56, !v57) || (v58 = sub_266C22F60(v57, &selRef_contactIdentifier), !v59))
  {

    goto LABEL_22;
  }

  v130[0] = v58;
  v131 = v59;
  v135 = v25;
  v60 = v40;
  v130[1] = v24;
  v61 = sub_266DA948C();
  v62 = sub_266DAAB0C();

  v63 = os_log_type_enabled(v61, v62);
  v134 = v60;
  v133 = v54;
  v132 = v53;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v157[0] = v136;
    v137 = v64;
    *v64 = 136315138;
    sub_266D6CDF4(&v163);
    v65 = v165;
    if (v165 == 255)
    {
      v72 = 0xE400000000000000;
      v70 = 1701736302;
    }

    else
    {
      v66 = v62;
      v67 = v22;
      v69 = v163;
      v68 = v164;
      v159[0] = v163;
      v159[1] = v164;
      v160 = v165;
      v70 = LocationLabel.rawValue.getter();
      v72 = v71;
      v73 = v69;
      v22 = v67;
      v62 = v66;
      sub_266C23130(v73, v68, v65);
    }

    v77 = sub_266C22A3C(v70, v72, v157);

    v78 = v137;
    *(v137 + 1) = v77;
    _os_log_impl(&dword_266C08000, v61, v62, "Staring location resolve with location label: %s", v78, 0xCu);
    v79 = v136;
    __swift_destroy_boxed_opaque_existential_0(v136);
    MEMORY[0x26D5F2480](v79, -1, -1);
    MEMORY[0x26D5F2480](v78, -1, -1);
  }

  sub_266D6CDF4(&v163);
  if (v165 == 255)
  {
    v80 = 2;
  }

  else
  {
    v80 = v163;
  }

  if (v165 == 255)
  {
    v81 = 0;
  }

  else
  {
    v81 = v164;
  }

  if (v165 == 255)
  {
    v82 = 2;
  }

  else
  {
    v82 = v165;
  }

  sub_266C186A4(v80, v81, v82);
  v83 = v82;
  v84 = sub_266DA948C();
  v85 = sub_266DAAB0C();
  sub_266C17E24(v80, v81, v82);
  v86 = os_log_type_enabled(v84, v85);
  v137 = v81;
  LODWORD(v136) = v82;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v159[0] = v88;
    *v87 = 136315138;
    v163 = v80;
    v164 = v81;
    v165 = v83;
    v89 = LocationLabel.rawValue.getter();
    v91 = v80;
    v92 = sub_266C22A3C(v89, v90, v159);

    *(v87 + 4) = v92;
    v80 = v91;
    _os_log_impl(&dword_266C08000, v84, v85, "Starting location resolve for label: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x26D5F2480](v88, -1, -1);
    MEMORY[0x26D5F2480](v87, -1, -1);
  }

  v93 = v155;
  sub_266C23434(v139 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_sessionManager, v155, type metadata accessor for FindFriendSessionManager);
  v94 = [v135 notifyMe];
  v95 = v132;
  if (v94)
  {
    v96 = v94;
    v97 = [v94 BOOLValue];
  }

  else
  {
    v97 = 0;
  }

  v98 = [v135 trigger];
  v99 = swift_allocObject();
  *(v99 + 16) = sub_266C23638;
  *(v99 + 24) = v22;
  v139 = v99;
  v101 = *(v93 + 1);
  v100 = *(v93 + 2);
  v102 = *v93;

  v101(&v163, v103, v102);
  v104 = v166;
  v105 = v167;
  __swift_project_boxed_opaque_existential_1(&v163, v166);
  (*(v105 + 24))(v159, v104, v105);
  v106 = v161;
  v107 = v162;
  __swift_project_boxed_opaque_existential_1(v159, v161);
  v157[0] = v80;
  v157[1] = v137;
  v158 = v136;
  v108 = (*(v107 + 16))(v95, v133, v130[0], v131, v157, v97, v98, v106, v107);

  v135 = v22;
  v109 = *(FriendSessionManager + 28);
  v156 = *(v93 + 3);
  v110 = v156;
  v157[0] = v108;
  v111 = sub_266DAAB1C();
  v112 = v140;
  __swift_storeEnumTagSinglePayload(v140, 1, 1, v111);
  v113 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A78, &qword_266DAE3F0);
  sub_266C22FD4();
  FriendSessionManager = v80;
  sub_266C230E8(&qword_2800C9A88, &qword_2800C9A78, &qword_266DAE3F0);
  sub_266C23060();
  v114 = v141;
  sub_266DA98EC();
  sub_266C1825C(v112, &qword_2800CC360, &qword_266DB00D0);

  __swift_destroy_boxed_opaque_existential_0(v159);
  __swift_destroy_boxed_opaque_existential_0(&v163);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A98, &qword_266DAE3F8);
  sub_266C230E8(&qword_2800C9AA0, &qword_2800C9A68, &qword_266DAE3E0);
  v115 = v144;
  v116 = v143;
  sub_266DA984C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AA8, &unk_266DAE400);
  sub_266C230E8(&qword_2800C9AB0, &qword_2800C9A58, &qword_266DAE3C8);
  sub_266C230E8(&qword_2800C9AB8, &qword_2800C9AA8, &unk_266DAE400);
  v117 = v145;
  v118 = v148;
  sub_266DA987C();
  (*(v146 + 8))(v115, v118);
  sub_266C230E8(&qword_2800C9AC0, &qword_2800C9A60, &unk_266DAE3D0);
  v119 = v149;
  v120 = sub_266DA97EC();
  (*(v147 + 8))(v117, v119);
  (*(v142 + 8))(v114, v116);
  if (qword_2800C9130 != -1)
  {
    swift_once();
  }

  v121 = qword_2800C9818;
  v122 = v152;
  sub_266DA946C();
  v123 = v151;
  *v151 = v120;
  v124 = v123 + *(v150 + 48);
  sub_266DA946C();
  (*(v153 + 8))(v122, v154);
  *(v123 + 24) = "Resolve Labelled Location";
  *(v123 + 32) = 25;
  *(v123 + 40) = 2;
  *(v123 + 8) = &dword_266C08000;
  *(v123 + 16) = v121;
  v125 = swift_allocObject();
  *(v125 + 16) = 0;
  v126 = swift_allocObject();
  v126[2] = v125;
  v126[3] = sub_266C23644;
  v126[4] = v139;
  sub_266C230E8(&qword_2800C9AC8, &qword_2800C9A70, &qword_266DAE3E8);
  swift_retain_n();
  v127 = v121;

  v128 = sub_266DA986C();

  sub_266C17E24(FriendSessionManager, v137, v136);

  sub_266C1825C(v123, &qword_2800C9A70, &qword_266DAE3E8);
  swift_beginAccess();
  v129 = *(v125 + 16);
  *(v125 + 16) = v128;

  sub_266C23494(v155, type metadata accessor for FindFriendSessionManager);

LABEL_27:
  _Block_release(a3);
}

void sub_266C203A0(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_266DA947C();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v170 = v8;
  v171 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v169 = &v146[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A58, &qword_266DAE3C8);
  OUTLINED_FUNCTION_0_2(v12);
  v165 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A60, &unk_266DAE3D0);
  OUTLINED_FUNCTION_0_2(v18);
  v166 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v23);
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v26);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A68, &qword_266DAE3E0);
  OUTLINED_FUNCTION_0_2(v162);
  v161 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10();
  v172 = v31;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A70, &qword_266DAE3E8);
  OUTLINED_FUNCTION_0(v167);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v35);
  FriendSessionManager = type metadata accessor for FindFriendSessionManager();
  v36 = OUTLINED_FUNCTION_0(FriendSessionManager);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v146[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2800C9148 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v41 = sub_266DA94AC();
  __swift_project_value_buffer(v41, qword_2800C9A30);
  v42 = a1;
  v43 = sub_266DA948C();
  v44 = sub_266DAAB0C();

  v45 = os_log_type_enabled(v43, v44);
  v173 = v40;
  if (v45)
  {
    v46 = OUTLINED_FUNCTION_14_0();
    v47 = OUTLINED_FUNCTION_13_0();
    v157 = v12;
    v156 = v18;
    v48 = a2;
    v49 = v47;
    v181 = v47;
    *v46 = 136315138;
    v177[0] = [v42 location];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AD0, &unk_266DB32B0);
    v50 = sub_266DAA72C();
    v52 = sub_266C22A3C(v50, v51, &v181);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_266C08000, v43, v44, "Starting location resolve on %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    a2 = v48;
    v18 = v156;
    v12 = v157;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v53 = [v42 location];
  if (!v53)
  {
    v62 = sub_266DA948C();
    v63 = sub_266DAAAFC();
    if (OUTLINED_FUNCTION_12_0(v63))
    {
      v64 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v64);
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v65, v66, "Cannot resolve location from a nil location.");
      OUTLINED_FUNCTION_5_1();
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v67 = [swift_getObjCClassFromMetadata() unsupported];
    a2();
    goto LABEL_26;
  }

  v54 = v53;
  sub_266C22F60(v54, &selRef_identifier);
  if (v55)
  {

    v56 = sub_266DA948C();
    v57 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_12_0(v57))
    {
      v58 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v58);
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v59, v60, "Location is fully resolved.");
      OUTLINED_FUNCTION_5_1();
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v61 = sub_266DA4F44(v54);
LABEL_25:
    v67 = v61;
    a2();

LABEL_26:
    return;
  }

  v68 = [v42 friend];
  if (!v68 || (v69 = sub_266C22F60(v68, &selRef_identifier), !v70))
  {
LABEL_22:
    v91 = sub_266DA948C();
    v92 = sub_266DAAAFC();
    if (OUTLINED_FUNCTION_12_0(v92))
    {
      v93 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v93);
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v94, v95, "The friend parameter was not fully resolved before resolving location.");
      OUTLINED_FUNCTION_5_1();
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v61 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_25;
  }

  v71 = v70;
  v157 = v69;
  v72 = [v42 friend];
  if (!v72 || (v73 = v72, v74 = [v72 person], v73, !v74) || (v75 = sub_266C22F60(v74, &selRef_contactIdentifier), !v76))
  {

    goto LABEL_22;
  }

  v149 = v75;
  v150 = v76;
  v151 = v71;
  v156 = v42;
  v77 = v54;
  v78 = sub_266DA948C();
  v79 = sub_266DAAB0C();

  v80 = os_log_type_enabled(v78, v79);
  v153 = v77;
  v152 = a2;
  if (v80)
  {
    v81 = OUTLINED_FUNCTION_14_0();
    v154 = OUTLINED_FUNCTION_13_0();
    v175[0] = v154;
    v155 = v81;
    *v81 = 136315138;
    sub_266D6CDF4(&v181);
    v82 = v183;
    if (v183 == 255)
    {
      v88 = 0xE400000000000000;
      v86 = 1701736302;
    }

    else
    {
      v148 = a3;
      v83 = v79;
      v84 = v181;
      v85 = v182;
      v177[0] = v181;
      v177[1] = v182;
      v178 = v183;
      v86 = LocationLabel.rawValue.getter();
      v88 = v87;
      v89 = v84;
      v79 = v83;
      v90 = v85;
      a3 = v148;
      sub_266C23130(v89, v90, v82);
    }

    v96 = sub_266C22A3C(v86, v88, v175);

    v97 = v155;
    *(v155 + 1) = v96;
    _os_log_impl(&dword_266C08000, v78, v79, "Staring location resolve with location label: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v154);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

    a2 = v152;
  }

  else
  {
  }

  sub_266D6CDF4(&v181);
  if (v183 == 255)
  {
    v98 = 2;
  }

  else
  {
    v98 = v181;
  }

  if (v183 == 255)
  {
    v99 = 0;
  }

  else
  {
    v99 = v182;
  }

  if (v183 == 255)
  {
    v100 = 2;
  }

  else
  {
    v100 = v183;
  }

  sub_266C186A4(v98, v99, v100);
  v101 = sub_266DA948C();
  v102 = sub_266DAAB0C();
  sub_266C17E24(v98, v99, v100);
  v103 = os_log_type_enabled(v101, v102);
  LODWORD(v155) = v100;
  if (v103)
  {
    v104 = OUTLINED_FUNCTION_14_0();
    v105 = OUTLINED_FUNCTION_13_0();
    v148 = a3;
    v106 = v105;
    v177[0] = v105;
    *v104 = 136315138;
    v181 = v98;
    v182 = v99;
    v183 = v100;
    v147 = v102;
    v107 = LocationLabel.rawValue.getter();
    v109 = sub_266C22A3C(v107, v108, v177);

    *(v104 + 4) = v109;
    _os_log_impl(&dword_266C08000, v101, v147, "Starting location resolve for label: %s", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v106);
    a3 = v148;
    OUTLINED_FUNCTION_6_1();
    a2 = v152;
    OUTLINED_FUNCTION_6_1();
  }

  v110 = v173;
  OUTLINED_FUNCTION_4_2();
  sub_266C23434(v159 + v111, v110, v112);
  v113 = [v156 notifyMe];
  v154 = v99;
  if (v113)
  {
    v114 = v113;
    LODWORD(v148) = [v113 BOOLValue];
  }

  else
  {
    LODWORD(v148) = 0;
  }

  v115 = [v156 trigger];
  v116 = swift_allocObject();
  *(v116 + 16) = a2;
  *(v116 + 24) = a3;
  v159 = v116;
  v117 = v110;
  v119 = *(v110 + 8);
  v118 = *(v110 + 16);
  v120 = *v117;

  v119(&v181, v121, v120);
  v122 = v184;
  v123 = v185;
  __swift_project_boxed_opaque_existential_1(&v181, v184);
  (*(v123 + 24))(v177, v122, v123);
  v124 = v179;
  v125 = v180;
  __swift_project_boxed_opaque_existential_1(v177, v179);
  v175[0] = v98;
  v175[1] = v154;
  v176 = v155;
  v126 = (*(v125 + 16))(v157, v151, v149, v150, v175, v148, v115, v124, v125);

  v157 = *(FriendSessionManager + 28);
  v174 = *(v117 + 3);
  v127 = v174;
  v175[0] = v126;
  v128 = sub_266DAAB1C();
  FriendSessionManager = v98;
  v129 = v160;
  __swift_storeEnumTagSinglePayload(v160, 1, 1, v128);
  v130 = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A78, &qword_266DAE3F0);
  sub_266C22FD4();
  sub_266C230E8(&qword_2800C9A88, &qword_2800C9A78, &qword_266DAE3F0);
  sub_266C23060();
  sub_266DA98EC();
  sub_266C1825C(v129, &qword_2800CC360, &qword_266DB00D0);

  __swift_destroy_boxed_opaque_existential_0(v177);
  __swift_destroy_boxed_opaque_existential_0(&v181);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A98, &qword_266DAE3F8);
  sub_266C230E8(&qword_2800C9AA0, &qword_2800C9A68, &qword_266DAE3E0);
  v131 = v163;
  v132 = v162;
  v133 = v172;
  sub_266DA984C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AA8, &unk_266DAE400);
  sub_266C230E8(&qword_2800C9AB0, &qword_2800C9A58, &qword_266DAE3C8);
  sub_266C230E8(&qword_2800C9AB8, &qword_2800C9AA8, &unk_266DAE400);
  v134 = v164;
  sub_266DA987C();
  (*(v165 + 8))(v131, v12);
  sub_266C230E8(&qword_2800C9AC0, &qword_2800C9A60, &unk_266DAE3D0);
  v135 = sub_266DA97EC();
  (*(v166 + 8))(v134, v18);
  (*(v161 + 8))(v133, v132);
  if (qword_2800C9130 != -1)
  {
    swift_once();
  }

  v136 = qword_2800C9818;
  v137 = v169;
  sub_266DA946C();
  v138 = v168;
  *v168 = v135;
  v139 = v138 + *(v167 + 48);
  sub_266DA946C();
  (*(v170 + 8))(v137, v171);
  *(v138 + 24) = "Resolve Labelled Location";
  *(v138 + 32) = 25;
  *(v138 + 40) = 2;
  *(v138 + 8) = &dword_266C08000;
  *(v138 + 16) = v136;
  v140 = swift_allocObject();
  *(v140 + 16) = 0;
  v141 = swift_allocObject();
  v141[2] = v140;
  v141[3] = sub_266C22FCC;
  v141[4] = v159;
  sub_266C230E8(&qword_2800C9AC8, &qword_2800C9A70, &qword_266DAE3E8);
  swift_retain_n();
  v142 = v136;

  v143 = sub_266DA986C();

  sub_266C17E24(FriendSessionManager, v154, v155);

  sub_266C1825C(v138, &qword_2800C9A70, &qword_266DAE3E8);
  OUTLINED_FUNCTION_17_0();
  v144 = *(v140 + 16);
  *(v140 + 16) = v143;

  OUTLINED_FUNCTION_1_2();
  sub_266C23494(v173, v145);
}

void sub_266C2136C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v57 = a3;
  v5 = sub_266DA74AC();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Location();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A98, &qword_266DAE3F8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v53 - v19;
  sub_266C186BC(a1, v53 - v19, &qword_2800C9A98, &qword_266DAE3F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = a2;
    v22 = *v20;
    if (v22 == 1)
    {
      if (qword_2800C9148 != -1)
      {
        swift_once();
      }

      v23 = sub_266DA94AC();
      __swift_project_value_buffer(v23, qword_2800C9A30);
      v24 = sub_266DA948C();
      v25 = sub_266DAAAEC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_266C08000, v24, v25, "Resolving location failed due to geoCodingFailed (location not valid)", v26, 2u);
        MEMORY[0x26D5F2480](v26, -1, -1);
      }

      type metadata accessor for SetGeoFenceLocationResolutionResult();
      v27 = sub_266DA2674(1);
    }

    else
    {
      if (qword_2800C9148 != -1)
      {
        swift_once();
      }

      v41 = sub_266DA94AC();
      __swift_project_value_buffer(v41, qword_2800C9A30);
      v42 = sub_266DA948C();
      v43 = sub_266DAAAEC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v61 = v45;
        *v44 = 136315138;
        v60 = v22;
        v46 = sub_266DAA72C();
        v48 = sub_266C22A3C(v46, v47, &v61);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_266C08000, v42, v43, "Resolving location failed with %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x26D5F2480](v45, -1, -1);
        MEMORY[0x26D5F2480](v44, -1, -1);
      }

      type metadata accessor for SetGeoFenceLocationResolutionResult();
      v27 = [swift_getObjCClassFromMetadata() unsupported];
    }

    v49 = v27;
    v21();
    goto LABEL_22;
  }

  type metadata accessor for LabeledLocationResult();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_266C234EC(v20, v16);
    type metadata accessor for SetGeoFenceLocationResolutionResult();
    type metadata accessor for SpeakableLocation();
    sub_266C23434(v16, v14, type metadata accessor for Location);
    v50 = sub_266D6CE4C(v14);
    v51 = sub_266DA4F44(v50);

    (a2)(v51);
    sub_266C23494(v16, type metadata accessor for Location);
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v49 = sub_266DA2674(1);
    a2();
LABEL_22:

    return;
  }

  v29 = *v20;
  v30 = *(v29 + 16);
  if (v30)
  {
    v54 = a2;
    v61 = MEMORY[0x277D84F90];
    sub_266DAAE8C();
    v31 = type metadata accessor for SpeakableLocation();
    v32 = *(v10 + 80);
    v53[1] = v29;
    v33 = v29 + ((v32 + 32) & ~v32);
    v58 = *(v10 + 72);
    v59 = v31;
    v34 = v56;
    v35 = (v55 + 8);
    do
    {
      sub_266C23434(v33, v16, type metadata accessor for Location);
      sub_266C23434(v16, v14, type metadata accessor for Location);
      sub_266DA749C();
      v36 = sub_266DA747C();
      v38 = v37;
      (*v35)(v8, v34);
      sub_266D6CEE8(v14, v36, v38);
      sub_266C23494(v16, type metadata accessor for Location);
      sub_266DAAE6C();
      v39 = v61[2];
      sub_266DAAE9C();
      sub_266DAAEAC();
      sub_266DAAE7C();
      v33 += v58;
      --v30;
    }

    while (v30);

    v40 = v61;
    a2 = v54;
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  type metadata accessor for SetGeoFenceLocationResolutionResult();
  v52 = sub_266DA4FA8(v40);

  (a2)(v52);
}

void sub_266C219D8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  if (qword_2800C9148 != -1)
  {
    swift_once();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_2800C9A30);
  v6 = a1;
  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_266DAA70C();
    v15 = v14;

    v16 = sub_266C22A3C(v13, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_266C08000, v7, v8, "Intent to confirm: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D5F2480](v10, -1, -1);
    MEMORY[0x26D5F2480](v9, -1, -1);
  }

  v17 = objc_allocWithZone(type metadata accessor for SetGeoFenceIntentResponse());
  v18 = SetGeoFenceIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v18);

  _Block_release(a3);
}

void sub_266C21BBC(void *a1, void (*a2)(void))
{
  if (qword_2800C9148 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800C9A30);
  v5 = a1;
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_14_0();
    v9 = OUTLINED_FUNCTION_13_0();
    v18 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_266DAA70C();
    v14 = v13;

    v15 = sub_266C22A3C(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_266C08000, v6, v7, "Intent to confirm: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v16 = objc_allocWithZone(type metadata accessor for SetGeoFenceIntentResponse());
  v17 = SetGeoFenceIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_266C21D80(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = *(a2 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState + 24));
  _Block_copy(a3);
  if (sub_266DA7B2C())
  {
    if (qword_2800C9148 != -1)
    {
      swift_once();
    }

    v7 = sub_266DA94AC();
    __swift_project_value_buffer(v7, qword_2800C9A30);
    v8 = sub_266DA948C();
    v9 = sub_266DAAB0C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_266C08000, v8, v9, "Device is locked, attempting to unlock before handling the intent.", v10, 2u);
      MEMORY[0x26D5F2480](v10, -1, -1);
    }

    v11 = [objc_allocWithZone(type metadata accessor for SetGeoFenceIntentResponse()) init];
    [v11 _setRequiresAuthentication_];
    (a3)[2](a3, v11);
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_266C23320;
    *(v12 + 24) = v5;

    sub_266C3441C();
  }

  _Block_release(a3);
}

void sub_266C21F98(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState), *(v3 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState + 24));
  if (sub_266DA7B2C())
  {
    if (qword_2800C9148 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v7 = sub_266DA94AC();
    __swift_project_value_buffer(v7, qword_2800C9A30);
    v8 = sub_266DA948C();
    v9 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v9))
    {
      v10 = OUTLINED_FUNCTION_11();
      *v10 = 0;
      _os_log_impl(&dword_266C08000, v8, v9, "Device is locked, attempting to unlock before handling the intent.", v10, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v12 = [objc_allocWithZone(type metadata accessor for SetGeoFenceIntentResponse()) init];
    [v12 _setRequiresAuthentication_];
    a2(v12);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    sub_266C3441C();
  }
}

void sub_266C2216C(__int16 a1, void (*a2)(void))
{
  if (qword_2800C9148 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800C9A30);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B00, &qword_266DAE468);
    v9 = sub_266DAA72C();
    v11 = a2;
    v12 = sub_266C22A3C(v9, v10, &v23);

    *(v7 + 4) = v12;
    a2 = v11;
    _os_log_impl(&dword_266C08000, v5, v6, "Set geo fence finished with: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  if ((a1 & 0x100) != 0)
  {
    v13 = sub_266DA948C();
    v14 = sub_266DAAAEC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      v17 = sub_266DAA72C();
      v19 = sub_266C22A3C(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_266C08000, v13, v14, "Setting geo fence failed with: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D5F2480](v16, -1, -1);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    v20 = 5;
  }

  else
  {
    v20 = 4;
  }

  v21 = objc_allocWithZone(type metadata accessor for SetGeoFenceIntentResponse());
  v22 = SetGeoFenceIntentResponse.init(code:userActivity:)(v20, 0);
  a2();
}

void sub_266C22444(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

id sub_266C224D0(id a1, char a2)
{
  if ((a2 & 1) == 0 || (v3 = [a1 sharesLocation]) != 0 && (v4 = v3, v5 = objc_msgSend(v3, sel_BOOLValue), v4, v5))
  {
    type metadata accessor for SetGeoFenceFriendResolutionResult();
    return sub_266DA5B28(a1);
  }

  else
  {
    if (qword_2800C9148 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v7 = sub_266DA94AC();
    __swift_project_value_buffer(v7, qword_2800C9A30);
    v8 = sub_266DA948C();
    v9 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v9))
    {
      v10 = OUTLINED_FUNCTION_11();
      *v10 = 0;
      _os_log_impl(&dword_266C08000, v8, v9, "The resolved friend does not share their location with us, so we are not able to set a fence on them.", v10, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266DAE3B0;
    *(inited + 32) = a1;
    type metadata accessor for SetGeoFenceFriendResolutionResult();
    v12 = a1;
    sub_266C6A318(inited);
    swift_setDeallocating();
    sub_266C6F074();
    return sub_266C6AA38(4);
  }
}

id SetGeoFenceIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetGeoFenceIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetGeoFenceIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266C22738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266C23434(a1, a2, type metadata accessor for LabeledLocationResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A98, &qword_266DAE3F8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_266C227A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
}

uint64_t sub_266C227EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266C186BC(a1, a2, &qword_2800C9AF0, &unk_266DAF8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AF8, &qword_266DAE460);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_266C22854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
}

uint64_t sub_266C22868(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v9 = a1;
  v10 = a2;
  swift_beginAccess();
  if (*(a3 + 16))
  {
    v6 = *(a3 + 16);

    sub_266DA969C();
  }

  OUTLINED_FUNCTION_17_0();
  v7 = *(a3 + 16);
  *(a3 + 16) = 0;

  return a4(&v9);
}

uint64_t sub_266C22904(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v6 = *(a2 + 16);

    sub_266DA969C();
  }

  OUTLINED_FUNCTION_17_0();
  v7 = *(a2 + 16);
  *(a2 + 16) = 0;

  return a3(a1);
}

uint64_t sub_266C229A0(__int16 a1, uint64_t a2, uint64_t (*a3)(__int16 *))
{
  v8 = a1 & 0x1FF;
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v5 = *(a2 + 16);

    sub_266DA969C();
  }

  OUTLINED_FUNCTION_17_0();
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;

  return a3(&v8);
}

uint64_t sub_266C22A3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266C22B00(v11, 0, 0, 1, a1, a2);
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
    sub_266C23550(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_266C22B00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_266C22C00(a5, a6);
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
    result = sub_266DAAE5C();
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

uint64_t sub_266C22C00(uint64_t a1, unint64_t a2)
{
  v4 = sub_266C22C4C(a1, a2);
  sub_266C22D64(&unk_28785BE30);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_266C22C4C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_266DAA81C())
  {
    result = sub_266CFACA8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266DAADDC();
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
          result = sub_266DAAE5C();
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

uint64_t sub_266C22D64(uint64_t result)
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

    result = sub_266C22E48(result, v8, 1, v3);
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

char *sub_266C22E48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B08, &unk_266DAE470);
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

uint64_t sub_266C22F60(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_266DAA70C();

  return v4;
}

unint64_t sub_266C22FD4()
{
  result = qword_2800C9A80;
  if (!qword_2800C9A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800C9A80);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_266C23060()
{
  result = qword_2800C9A90;
  if (!qword_2800C9A90)
  {
    sub_266C22FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9A90);
  }

  return result;
}

uint64_t sub_266C230E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_266C23130(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_266C17E24(a1, a2, a3);
  }

  return a1;
}

uint64_t type metadata accessor for SetGeoFenceIntentHandler()
{
  result = qword_2800C9AE0;
  if (!qword_2800C9AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266C2319C()
{
  result = type metadata accessor for FindFriendSessionManager();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266C233D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_266C23434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266C23494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266C234EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C23550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_266C235B0(id result, char a2)
{
  switch(a2)
  {
    case 0:
    case 2:
    case 3:
      result = result;
      break;
    case 1:
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

void sub_266C235EC(id a1, char a2)
{
  switch(a2)
  {
    case 0:
    case 2:
    case 3:

      break;
    case 1:
    case 4:

      break;
    default:
      return;
  }
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_1()
{

  JUMPOUT(0x26D5F2480);
}

void OUTLINED_FUNCTION_6_1()
{

  JUMPOUT(0x26D5F2480);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_12_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_16_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_beginAccess();
}

uint64_t sub_266C23798(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v107 = a4;
  v112 = a3;
  v115 = a2;
  v6 = sub_266DA947C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v106[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
LABEL_59:
    swift_once();
  }

  v11 = qword_28156EF98;
  sub_266DA946C();
  sub_266DA945C();
  v13 = *(v7 + 8);
  v12 = v7 + 8;
  *&v106[1] = v13;
  v13(v10, v6);
  v14 = sub_266DA948C();
  v15 = sub_266DAAB0C();
  v16 = os_log_type_enabled(v14, v15);
  v113 = v4;
  v110 = v6;
  *&v106[3] = v11;
  if (v16)
  {
    OUTLINED_FUNCTION_14_0();
    v17 = OUTLINED_FUNCTION_2_2();
    *&v120[0] = v17;
    *v6 = 136446210;
    *(v6 + 4) = sub_266C22A3C(7105601, 0xE300000000000000, v120);
    _os_log_impl(&dword_266C08000, v14, v15, "**** %{public}s Devices List ****", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v4 = v113;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_2();
  }

  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_4();
  *(v19 - 16) = v112;
  *(v19 - 8) = v4;
  sub_266CB7BEC(sub_266C24694, v20, a1);
  v21 = sub_266DA948C();
  v22 = sub_266DAAB0C();
  v23 = os_log_type_enabled(v21, v22);
  v108 = v10;
  if (v23)
  {
    OUTLINED_FUNCTION_14_0();
    v24 = OUTLINED_FUNCTION_2_2();
    *&v120[0] = v24;
    v105 = 136446210;
    *v106 = sub_266C22A3C(0x746C75736552, 0xE600000000000000, v120);
    OUTLINED_FUNCTION_5_2(&dword_266C08000, v25, v26, "**** %{public}s Devices List ****");
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_2();
  }

  v4 = &v105;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_4();
  v28 = v113;
  *(v29 - 16) = v112;
  *(v29 - 8) = v28;
  sub_266CB7BEC(sub_266C24B08, v30, v31);
  v111 = 0;
  v32 = 0;
  v33 = *(a1 + 16);
  v34 = (a1 + 32);
  v10 = MEMORY[0x277D84F90];
  v35 = (a1 + 32);
  v109 = v12;
  while (1)
  {
    if (v33 == v32)
    {
      goto LABEL_37;
    }

    v6 = v35[3];
    a1 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v6);
    v36 = OUTLINED_FUNCTION_1_3(a1);
    result = v37(v36, a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v32;
    v35 += 5;
  }

  v39 = 0;
  v7 = 40;
LABEL_11:
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
    goto LABEL_61;
  }

  v114 = v41;
  while (1)
  {
    v42 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v42 == v33)
    {
      break;
    }

    if (v42 >= v33)
    {
      goto LABEL_57;
    }

    v43 = &v34[5 * v42];
    v6 = v43[3];
    v10 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v6);
    v44 = OUTLINED_FUNCTION_1_3(v10);
    result = v45(v44, v10);
    ++v32;
    if ((result & 1) == 0)
    {
      v32 = v42;
      v39 = v114;
      goto LABEL_11;
    }
  }

  v10 = MEMORY[0x277D84F90];
  if (!v114)
  {
    goto LABEL_37;
  }

  *&v120[0] = MEMORY[0x277D84F90];
  v4 = v120;
  result = sub_266C387DC(0, v114 & ~(v114 >> 63), 0);
  v7 = 0;
  v10 = *&v120[0];
  v46 = v34;
  while (v33 != v7)
  {
    v6 = v46[3];
    a1 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v6);
    v47 = OUTLINED_FUNCTION_1_3(a1);
    result = v48(v47, a1);
    if ((result & 1) == 0)
    {
      goto LABEL_24;
    }

    ++v7;
    v46 += 5;
  }

  v7 = v33;
LABEL_24:
  if (v114 < 0)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v115 = 0;
  while (2)
  {
    if (v7 >= v33)
    {
      goto LABEL_58;
    }

    v49 = &v34[5 * v7];
    v50 = v49[3];
    v51 = v49[4];
    v4 = __swift_project_boxed_opaque_existential_1(v49, v50);
    v52 = (*(v51 + 80))(v50, v51);
    v54 = v53;
    *&v120[0] = v10;
    v55 = v10;
    v56 = *(v10 + 2);
    v57 = *(v55 + 3);
    v6 = v56 + 1;
    if (v56 >= v57 >> 1)
    {
      v4 = v120;
      sub_266C387DC(v57 > 1, v56 + 1, 1);
      v55 = *&v120[0];
    }

    ++v115;
    *(v55 + 2) = v6;
    v58 = &v55[16 * v56];
    *(v58 + 4) = v52;
    *(v58 + 5) = v54;
    v10 = v55;
    while (1)
    {
      a1 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (a1 == v33)
      {
        break;
      }

      if (a1 >= v33)
      {
        goto LABEL_54;
      }

      v59 = &v34[5 * a1];
      v6 = v59[3];
      v60 = v59[4];
      __swift_project_boxed_opaque_existential_1(v59, v6);
      v61 = OUTLINED_FUNCTION_1_3(v60);
      ++v7;
      if ((v62(v61, v60) & 1) == 0)
      {
        v7 = a1;
        goto LABEL_36;
      }
    }

    v7 = v33;
LABEL_36:
    if (v115 != v114)
    {
      continue;
    }

    break;
  }

LABEL_37:
  *&v120[0] = MEMORY[0x277D84FA0];
  v63 = v111;
  v64 = sub_266C247F0(v10);

  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_0_4();
  v66 = v112;
  *(v67 - 16) = v112;
  v69 = sub_266C241C8(sub_266C24948, v68, v64);
  v115 = v63;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B10, &unk_266DB6F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  v71 = v66[3];
  v72 = v66[4];
  __swift_project_boxed_opaque_existential_1(v66, v71);
  (*(v72 + 8))(v71, v72);
  v73 = sub_266C6A330(v69);

  *&v120[0] = inited;
  sub_266C37F90(v73);
  v6 = 0;
  v74 = *&v120[0];
  v7 = *(*&v120[0] + 16);
  v75 = *&v120[0] + 88;
  v10 = MEMORY[0x277D84F90];
LABEL_38:
  v76 = (v75 + (v6 << 6));
  v4 = v113;
  a1 = &unk_266DAE000;
  while (v7 != v6)
  {
    if (v6 >= *(v74 + 16))
    {
      goto LABEL_55;
    }

    v77 = *(v76 - 5);
    v123 = *(v76 - 7);
    v124 = v77;
    v125 = *(v76 - 3);
    v78 = *v76;
    v126 = *(v76 - 1);
    if (v78)
    {
      v120[0] = v123;
      v120[1] = v124;
      v120[2] = v125;
      v121 = v126;
      v122 = v78;
      sub_266C24964(v120, &v116);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = *(v10 + 2);
        sub_266CF9984();
        v10 = v85;
      }

      v79 = *(v10 + 2);
      if (v79 >= *(v10 + 3) >> 1)
      {
        sub_266CF9984();
        v10 = v86;
      }

      ++v6;
      v117 = v124;
      v118 = v125;
      v119 = v126;
      v80 = v123;
      v116 = v123;
      *(v10 + 2) = v79 + 1;
      v81 = &v10[64 * v79];
      v82 = v118;
      v83 = v119;
      *(v81 + 3) = v117;
      *(v81 + 4) = v82;
      *(v81 + 2) = v80;
      *(v81 + 10) = v83;
      *(v81 + 11) = v78;
      goto LABEL_38;
    }

    v76 += 8;
    ++v6;
  }

  v87 = sub_266DA948C();
  v88 = sub_266DAAB0C();
  if (os_log_type_enabled(v87, v88))
  {
    OUTLINED_FUNCTION_14_0();
    v89 = OUTLINED_FUNCTION_2_2();
    *&v120[0] = v89;
    *v6 = 136446210;
    *(v6 + 4) = sub_266C22A3C(0x7372656E774FLL, 0xE600000000000000, v120);
    OUTLINED_FUNCTION_5_2(&dword_266C08000, v90, v91, "**** %{public}s ****");
    __swift_destroy_boxed_opaque_existential_0(v89);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_2();
  }

  v92 = v107;
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_0_4();
  v94 = v113;
  *(v95 - 16) = v113;
  sub_266CB7C40(sub_266C249C0, v96, v10);

  v97 = sub_266DA948C();
  v98 = sub_266DAAB0C();
  if (os_log_type_enabled(v97, v98))
  {
    OUTLINED_FUNCTION_14_0();
    v99 = OUTLINED_FUNCTION_2_2();
    *&v120[0] = v99;
    v105 = 136446210;
    *v106 = sub_266C22A3C(0x4D20796C696D6146, 0xEE00737265626D65, v120);
    _os_log_impl(&dword_266C08000, v97, v98, "**** %{public}s ****", &v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    v94 = v113;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_2();
  }

  v100 = v110;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_0_4();
  *(v102 - 16) = v94;
  sub_266CB7C40(sub_266C24B20, v103, v92);
  sub_266DAABCC();
  v104 = v108;
  sub_266DA946C();
  sub_266DA945C();
  return (*&v106[1])(v104, v100);
}

uint64_t sub_266C2414C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 16))(v2, v3, v4, v5);
}

uint64_t sub_266C241C8(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v8 = *v6;
      v27[0] = *(v6 - 1);
      v27[1] = v8;

      a1(&v23, v27);
      if (v3)
      {
        break;
      }

      if (*(&v26 + 1))
      {
        v19 = v23;
        v20 = v24;
        v21 = v25;
        v22 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = *(v7 + 16);
          sub_266CF9984();
          v7 = v13;
        }

        v9 = *(v7 + 16);
        if (v9 >= *(v7 + 24) >> 1)
        {
          sub_266CF9984();
          v7 = v14;
        }

        v17 = v21;
        v18 = v22;
        v10 = v19;
        v16 = v20;
        *(v7 + 16) = v9 + 1;
        v11 = (v7 + (v9 << 6));
        v11[4] = v17;
        v11[5] = v18;
        v11[2] = v10;
        v11[3] = v16;
      }

      else
      {
        v19 = v23;
        v20 = v24;
        v21 = v25;
        v22 = v26;
        sub_266C24A30(&v19);
      }

      v6 += 2;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

void sub_266C2436C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v13 = MEMORY[0x277D84F90];
  v6 = a4(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D5F1780](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v12 = v8;
    a1(&v11, &v12);
    if (v4)
    {

      return;
    }

    if (v11)
    {
      MEMORY[0x26D5F1270]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      sub_266DAA96C();
    }
  }
}

void sub_266C244C4(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  SFMContactDataProvider.ownerContact(of:)(a1, v3, v4);
  sub_266C233D0(a1, v16);
  sub_266C24A98(v19, v15);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136446466;
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v11 = sub_266CDA8CC(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0(v16);
    v14 = sub_266C22A3C(v11, v13, v15);

    *(v7 + 4) = v14;
    *(v7 + 12) = 1024;
    LODWORD(v14) = v20 != 0;
    sub_266C24A30(v19);
    *(v7 + 14) = v14;
    sub_266C24A30(v19);
    _os_log_impl(&dword_266C08000, v5, v6, "%{public}s ownerFound?: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  else
  {
    sub_266C24A30(v19);
    sub_266C24A30(v19);

    __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

void sub_266C246B0(__int128 *a1)
{
  v1 = a1[1];
  v11 = *a1;
  v12 = v1;
  v2 = a1[3];
  v13 = a1[2];
  v14 = v2;
  sub_266C24964(&v11, v10);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  sub_266C249DC(&v11);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v10[0] = v11;
    v10[1] = v12;
    v10[2] = v13;
    v10[3] = v14;
    v7 = SFMPerson.debugDescription.getter();
    v9 = sub_266C22A3C(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_266C08000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D5F2480](v6, -1, -1);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }
}

uint64_t sub_266C247F0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 40;
  v5 = MEMORY[0x277D84F90];
  v14 = result + 40;
LABEL_2:
  for (i = (v4 + 16 * v2); ; i += 2)
  {
    if (v3 == v2)
    {

      return v5;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v8 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v9 = sub_266C51548();

    if (v9)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_266C387DC(0, *(v5 + 16) + 1, 1);
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_266C387DC(v10 > 1, v11 + 1, 1);
        v12 = v11 + 1;
      }

      ++v2;
      *(v5 + 16) = v12;
      v13 = v5 + 16 * v11;
      *(v13 + 32) = v8;
      *(v13 + 40) = v7;
      v4 = v14;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C24A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266C24A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_3_2()
{

  JUMPOUT(0x26D5F2480);
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

id CLLocation.init(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (*(a1 + 32))
  {
    v7 = -1.0;
  }

  else
  {
    v7 = *(a1 + 24);
  }

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = a1 + *(type metadata accessor for Location() + 28);
  v10 = sub_266DA73FC();
  v11 = [v8 initWithCoordinate:v10 altitude:v2 horizontalAccuracy:v3 verticalAccuracy:0.0 timestamp:{v6, v7}];

  sub_266C24C6C(a1);
  return v11;
}

uint64_t sub_266C24C6C(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266C24CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = type metadata accessor for Location();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_5();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_3();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v36 = OUTLINED_FUNCTION_4_3(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &a9 - v39;
  if (*(v26 + 8))
  {
    v41 = *v26;
    v42 = sub_266DAA6FC();
  }

  else
  {
    v42 = 0;
  }

  v43 = objc_allocWithZone(v24);
  v44 = sub_266DAA6FC();
  v45 = OUTLINED_FUNCTION_6_2();
  v47 = [v45 v46];

  v48 = *(v26 + 16);
  v49 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v50 = v47;
  v51 = [v49 initWithBool_];
  v52 = OUTLINED_FUNCTION_6_2();
  [v52 v53];

  v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v55 = OUTLINED_FUNCTION_6_2();
  [v55 v56];

  v57 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v58 = OUTLINED_FUNCTION_6_2();
  [v58 v59];

  v60 = type metadata accessor for FriendLocation();
  sub_266C186BC(v26 + *(v60 + 32), v40, &qword_2800C9B20, &unk_266DB1EC0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v27);
  v62 = 0;
  if (EnumTagSinglePayload != 1)
  {
    sub_266C234EC(v40, v21);
    type metadata accessor for SpeakableLocation();
    sub_266C24F5C(v21, v33);
    v62 = sub_266D6CE4C(v33);
    OUTLINED_FUNCTION_1_4();
    sub_266C24FC0(v21, v63);
  }

  [v50 setLocation_];

  sub_266C24FC0(v26, type metadata accessor for FriendLocation);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C24F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C24FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_266C25018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v26 = sub_266DA746C();
  v27 = OUTLINED_FUNCTION_5_3(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_5();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_3();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B28, &qword_266DAE4B8);
  v37 = OUTLINED_FUNCTION_4_3(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_5();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &a9 - v44;
  v46 = [v25 location];
  if (v46 && (v47 = v46, v48 = [v46 location], v47, v48))
  {
    v49 = [v48 timestamp];

    sub_266DA744C();
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  __swift_storeEnumTagSinglePayload(v45, v50, 1, v20);
  sub_266C186BC(v45, v42, &qword_2800C9B28, &qword_266DAE4B8);
  if (__swift_getEnumTagSinglePayload(v42, 1, v20) != 1)
  {
    v51 = OUTLINED_FUNCTION_7_1(v29);
    v52(v51);
    sub_266DA741C();
    sub_266DA740C();
    v53 = *(v29 + 8);
    v53(v34, v20);
    v53(v22, v20);
  }

  sub_266C1825C(v45, &qword_2800C9B28, &qword_266DAE4B8);
  OUTLINED_FUNCTION_5();
}

void sub_266C25268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v27 = OUTLINED_FUNCTION_4_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &a9 - v30;
  v32 = v23;
  v33 = sub_266C22F3C(v32);
  v35 = v34;
  v36 = [v32 locateInProgress];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 BOOLValue];
  }

  else
  {
    v38 = 1;
  }

  v39 = [v32 isProactiveLocation];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 BOOLValue];
  }

  else
  {
    v41 = 0;
  }

  v42 = [v32 isInaccurate];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 BOOLValue];
  }

  else
  {
    v44 = 1;
  }

  v45 = [v32 location];
  if (v45)
  {
    sub_266C5FF68(v45, v31);
  }

  else
  {

    v46 = type metadata accessor for Location();
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v46);
  }

  v47 = type metadata accessor for FriendLocation();
  v48 = *(v47 + 32);
  v49 = type metadata accessor for Location();
  __swift_storeEnumTagSinglePayload(v25 + v48, 1, 1, v49);
  *v25 = v33;
  *(v25 + 8) = v35;
  *(v25 + 16) = v38;
  *(v25 + 17) = v41;
  *(v25 + 18) = v44;
  sub_266C25700(v31, v25 + v48);
  *(v25 + *(v47 + 36)) = 0;
  OUTLINED_FUNCTION_5();
}

void sub_266C25444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v23;
  a20 = v24;
  v25 = sub_266DA746C();
  v26 = OUTLINED_FUNCTION_5_3(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_5();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_3();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v36 = OUTLINED_FUNCTION_4_3(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &a9 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B28, &qword_266DAE4B8);
  v42 = OUTLINED_FUNCTION_4_3(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_0_5();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &a9 - v49;
  v51 = type metadata accessor for FriendLocation();
  sub_266C186BC(v21 + *(v51 + 32), v40, &qword_2800C9B20, &unk_266DB1EC0);
  v52 = type metadata accessor for Location();
  if (__swift_getEnumTagSinglePayload(v40, 1, v52) == 1)
  {
    sub_266C1825C(v40, &qword_2800C9B20, &unk_266DB1EC0);
    v53 = 1;
  }

  else
  {
    (*(v28 + 16))(v50, &v40[*(v52 + 28)], v20);
    OUTLINED_FUNCTION_1_4();
    sub_266C24FC0(v40, v54);
    v53 = 0;
  }

  __swift_storeEnumTagSinglePayload(v50, v53, 1, v20);
  sub_266C186BC(v50, v47, &qword_2800C9B28, &qword_266DAE4B8);
  if (__swift_getEnumTagSinglePayload(v47, 1, v20) != 1)
  {
    v55 = OUTLINED_FUNCTION_7_1(v28);
    v56(v55);
    sub_266DA741C();
    sub_266DA740C();
    v57 = *(v28 + 8);
    v57(v33, v20);
    v57(v22, v20);
  }

  sub_266C1825C(v50, &qword_2800C9B28, &qword_266DAE4B8);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C25700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C257EC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C9B30);
  v1 = __swift_project_value_buffer(v0, qword_2800C9B30);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C258B4(uint64_t *a1)
{
  if (a1[3])
  {
    return 0;
  }

  v13[7] = v1;
  v13[8] = v2;
  v4 = *a1;
  if (*a1 == -1)
  {
    if (qword_2800C9150 != -1)
    {
      swift_once();
    }

    v9 = sub_266DA94AC();
    __swift_project_value_buffer(v9, qword_2800C9B30);
    v10 = sub_266DA948C();
    v11 = sub_266DAAB0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_266C08000, v10, v11, "Current platform is explicitly unsupported.", v12, 2u);
      MEMORY[0x26D5F2480](v12, -1, -1);
    }

    return 1;
  }

  else
  {
    v5 = a1[1];
    v6 = a1[2];
    v7 = [objc_opt_self() processInfo];
    v13[0] = v4;
    v13[1] = v5;
    v13[2] = v6;
    v8 = [v7 isOperatingSystemAtLeastVersion_];

    if (v8)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266C25A20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v130 = a7;
  v131 = a8;
  v136 = a6;
  v137 = a2;
  v124 = a4;
  v122 = a3;
  v139 = a1;
  sub_266DAAB7C();
  OUTLINED_FUNCTION_1_5();
  v120 = v12;
  v121 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  v119 = v16 - v15;
  OUTLINED_FUNCTION_3_4();
  v117 = sub_266DAAB6C();
  v17 = OUTLINED_FUNCTION_0(v117);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_6();
  v118 = v21 - v20;
  OUTLINED_FUNCTION_3_4();
  v22 = sub_266DA9FDC();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_0_6();
  v115 = v25 - v24;
  v26 = OUTLINED_FUNCTION_3_4();
  v116 = type metadata accessor for DeviceLocationDescriptionProvider(v26);
  v27 = OUTLINED_FUNCTION_0(v116);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_6();
  v123 = (v31 - v30);
  OUTLINED_FUNCTION_3_4();
  v32 = type metadata accessor for GEOServicesReverseGeocoder();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v114 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v135 = &v109 - v36;
  OUTLINED_FUNCTION_3_4();
  sub_266DA750C();
  OUTLINED_FUNCTION_1_5();
  v133 = v38;
  v134 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_6();
  v132 = v42 - v41;
  OUTLINED_FUNCTION_3_4();
  v43 = sub_266DA926C();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  OUTLINED_FUNCTION_0_6();
  type metadata accessor for FindDeviceAndPlaySoundIntent();
  type metadata accessor for FindDeviceAndPlaySoundIntentResponse();
  sub_266DA796C();
  type metadata accessor for FindDeviceAndPlaySoundCATsSimple();
  sub_266DA925C();
  v45 = sub_266DA91CC();
  sub_266DA7FEC();
  v46 = sub_266DA7E7C();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_266DA7E6C();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B48, &qword_266DAE520);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v138 = sub_266DAA46C();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B50, &qword_266DAE528);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = sub_266DAA2AC();
  if (qword_2800C93E0 != -1)
  {
    swift_once();
  }

  sub_266DA78BC();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B58, &qword_266DB5D50);
  sub_266DA791C();
  sub_266C233D0(a5, v163);
  v57 = v139;
  sub_266C233D0(v139, v164);
  sub_266C233D0(v131, &v165);
  v164[5] = v45;
  v164[6] = v49;
  v128 = v49;
  sub_266C269D4();

  sub_266DA78FC();
  sub_266DA794C();
  sub_266C233D0(a5, v140);
  sub_266C233D0(v57, v148);
  sub_266C233D0(v166, v147);
  sub_266C233D0(v130, v162);
  __swift_mutable_project_boxed_opaque_existential_1(v140, *(&v140[1] + 1));
  __swift_mutable_project_boxed_opaque_existential_1(v162, v162[3]);
  v113 = &v109;
  OUTLINED_FUNCTION_1_5();
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_0_6();
  v125 = a9;
  v63 = (v62 - v61);
  (*(v64 + 16))(v62 - v61);
  v129 = a5;
  v161[3] = &unk_287867FA0;
  v161[4] = &off_287867FB0;
  v159 = &type metadata for FMIPDeviceImageProvider;
  v160 = &off_287868930;
  *&v158 = v138;
  v126 = v56;
  *(&v158 + 1) = v56;
  v157[3] = &type metadata for DisambiguationTask.Parser;
  v157[4] = &off_2878672C8;
  v65 = swift_allocObject();
  v157[0] = v65;
  v66 = v63[1];
  v65[1] = *v63;
  v65[2] = v66;
  v65[3] = v63[2];
  _s22DisambiguationStrategyCMa();
  v67 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v161, &unk_287867FA0);
  __swift_mutable_project_boxed_opaque_existential_1(v157, &type metadata for DisambiguationTask.Parser);
  OUTLINED_FUNCTION_1_5();
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_0_6();
  v73 = (v72 - v71);
  (*(v74 + 16))(v72 - v71);
  v155 = &unk_287867FA0;
  v156 = &off_287867FB0;
  v152 = &type metadata for DisambiguationTask.Parser;
  v153 = &off_2878672C8;
  v75 = swift_allocObject();
  *&v151 = v75;
  v76 = v73[1];
  v75[1] = *v73;
  v75[2] = v76;
  v75[3] = v73[2];
  *(v67 + 232) = 0;
  sub_266C0B0D8(&v154, v67 + 16);
  sub_266C0B0D8(v148, v67 + 56);
  sub_266C0B0D8(v147, v67 + 96);
  v77 = v128;
  *(v67 + 136) = v45;
  *(v67 + 144) = v77;
  sub_266C0B0D8(&v158, v67 + 152);
  v112 = v67;
  sub_266C0B0D8(&v151, v67 + 192);
  v78 = v45;

  v79 = v138;

  v80 = v126;

  __swift_destroy_boxed_opaque_existential_0(v157);
  __swift_destroy_boxed_opaque_existential_0(v161);
  __swift_destroy_boxed_opaque_existential_0(v162);
  __swift_destroy_boxed_opaque_existential_0(v140);
  *&v140[0] = v67;
  sub_266C26D14(&qword_2800C9B68, _s22DisambiguationStrategyCMa);
  sub_266DA78DC();
  sub_266DA795C();
  sub_266C233D0(v129, v148);
  v81 = v139;
  sub_266C233D0(v139, v149);
  v149[10] = &type metadata for FMIPDeviceImageProvider;
  v149[11] = &off_287868930;
  v149[7] = v79;
  v149[8] = v80;
  sub_266C233D0(v136, &v150);
  v110 = v78;
  v149[5] = v78;
  v149[6] = v77;
  sub_266C26A78();

  v82 = sub_266DA78EC();
  v84 = v83;
  v113 = v83;
  sub_266C26ACC(v148, v140);
  v85 = swift_allocObject();
  v85[2] = v82;
  v85[3] = v84;
  memcpy(v85 + 4, v140, 0xB0uLL);

  sub_266DA792C();
  v86 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v87 = v132;
  sub_266DA7AFC();
  v88 = v134;
  v89 = *(v133 + 16);
  v90 = v135;
  v89(v135, v87, v134);
  sub_266C233D0(v137, &v140[2]);
  v91 = *MEMORY[0x277D47D70];
  *&v140[0] = sub_266DAA70C();
  *(&v140[0] + 1) = v92;
  v140[1] = xmmword_266DAE510;
  sub_266C26B34(v140, v147);
  v111 = type metadata accessor for GEOServicesReverseGeocoder;
  v93 = v90;
  v94 = v114;
  sub_266C26DBC(v93, v114, type metadata accessor for GEOServicesReverseGeocoder);
  v95 = sub_266C26B90(v147, v94);
  sub_266C26CC0(v140);
  v96 = type metadata accessor for GeocodingUserLocationProvider();
  v97 = v123;
  v123[3] = v96;
  v97[4] = &off_2878624E0;
  *v97 = v95;
  v98 = v116;
  v89(v97 + *(v116 + 24), v87, v88);
  v114 = *(v98 + 28);
  v109 = sub_266C22FD4();
  v99 = v110;

  v100 = v115;
  sub_266DA9FBC();
  *&v140[0] = MEMORY[0x277D84F90];
  sub_266C26D14(&qword_28156EFC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C230E8(&qword_28156EFE8, &qword_2800CC440, &qword_266DAF890);
  v101 = v118;
  sub_266DAAD0C();
  v102 = v119;
  (*(v120 + 104))(v119, *MEMORY[0x277D85260], v121);
  v103 = sub_266D689A4(0xD000000000000034, 0x8000000266DC16D0, v100, v101, v102, 0);
  *(v97 + v114) = v103;
  v97[5] = v99;
  v104 = v129;
  sub_266C233D0(v129, v140);
  v105 = v139;
  sub_266C233D0(v139, &v140[2] + 8);
  *&v140[7] = v98;
  *(&v140[7] + 1) = &off_287864B08;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v140[5] + 1);
  sub_266C26DBC(v97, boxed_opaque_existential_1, type metadata accessor for DeviceLocationDescriptionProvider);
  *(&v140[10] + 1) = &type metadata for SFMUserDefaultsSettingProvider;
  v141 = &protocol witness table for SFMUserDefaultsSettingProvider;
  v144 = &type metadata for FMIPDeviceImageProvider;
  v145 = &off_287868930;
  v142 = v138;
  v143 = v126;
  v107 = v131;
  sub_266C233D0(v131, &v146);
  *&v140[5] = v122;
  *&v140[8] = v99;
  *(&v140[8] + 1) = v128;
  sub_266C26E1C();
  sub_266DA78AC();
  sub_266DA790C();
  sub_266C26E70();
  sub_266DA78CC();
  sub_266DA793C();

  __swift_destroy_boxed_opaque_existential_0(v107);
  __swift_destroy_boxed_opaque_existential_0(v130);
  __swift_destroy_boxed_opaque_existential_0(v136);
  __swift_destroy_boxed_opaque_existential_0(v104);
  __swift_destroy_boxed_opaque_existential_0(v124);
  __swift_destroy_boxed_opaque_existential_0(v137);
  sub_266C26F6C(v135, v111);
  (*(v133 + 8))(v132, v134);
  sub_266C26EC4(v163);
  __swift_destroy_boxed_opaque_existential_0(v166);
  sub_266C26F18(v140);
  sub_266C26F6C(v97, type metadata accessor for DeviceLocationDescriptionProvider);
  sub_266C26FC4(v148);
  return __swift_destroy_boxed_opaque_existential_0(v105);
}

id sub_266C266CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v0 = sub_266DA7FBC();
  v1 = [v0 needsConfirmPlaySound];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 BOOLValue];

  return v2;
}

void *sub_266C2674C(void *__src, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(v6 + 2, __src, 0xB0uLL);
  sub_266C0B0D8(a2, (v6 + 29));
  sub_266C0B0D8(a3, (v6 + 24));
  v6[34] = a4;
  v12 = (v6 + *(*v6 + 128));
  *v12 = a5;
  v12[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BC0, &unk_266DAE550);
  swift_storeEnumTagMultiPayload();
  return v6;
}

uint64_t sub_266C267FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v6 = a3();
  if (v6)
  {
    __src[0] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BA8, &qword_266DAE540);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BB0, &qword_266DAE548);
    v11 = sub_266C230E8(&qword_2800C9BB8, &qword_2800C9BB0, &qword_266DAE548);
    v12 = MEMORY[0x26D5EE030](__src, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  sub_266C26ACC(a5, __src);
  sub_266DA7FEC();
  sub_266DA81BC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v13 = sub_266DA7FCC();
  v14 = sub_266DA7FBC();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B98, &qword_266DAE538);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  __src[0] = sub_266C2674C(__src, &v21, &v20, v12, v13, v14);
  sub_266C230E8(&qword_2800C9BA0, &qword_2800C9B98, &qword_266DAE538);
  v18 = sub_266DA799C();

  return v18;
}

unint64_t sub_266C269D4()
{
  result = qword_2800C9B60;
  if (!qword_2800C9B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9B60);
  }

  return result;
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

unint64_t sub_266C26A78()
{
  result = qword_2800C9B70;
  if (!qword_2800C9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9B70);
  }

  return result;
}

uint64_t sub_266C26B90(uint64_t a1, uint64_t a2)
{
  v17 = type metadata accessor for GEOServicesReverseGeocoder();
  v18 = &off_287868A70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  sub_266C27018(a2, boxed_opaque_existential_1);
  type metadata accessor for GeocodingUserLocationProvider();
  v5 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_1_5();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9);
  sub_266C26B34(a1, v15);
  v13 = sub_266C2707C(v15, v11, v5);
  sub_266C26CC0(a1);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

uint64_t sub_266C26D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266C26DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_266C26E1C()
{
  result = qword_2800C9B78;
  if (!qword_2800C9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9B78);
  }

  return result;
}

unint64_t sub_266C26E70()
{
  result = qword_2800C9B80;
  if (!qword_2800C9B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9B80);
  }

  return result;
}

uint64_t sub_266C26F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266C27018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GEOServicesReverseGeocoder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C2707C(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v20 = &type metadata for AceUserLocationProvider;
  v21 = &off_287867C00;
  *&v19 = swift_allocObject();
  memcpy((v19 + 16), a1, 0x48uLL);
  v17 = type metadata accessor for GEOServicesReverseGeocoder();
  v18 = &off_287868A70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  sub_266C27018(a2, boxed_opaque_existential_1);
  v11 = type metadata accessor for Location();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B88, &qword_266DAE530);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(a3 + 96) = sub_266DA973C();
  *(a3 + 104) = 0;
  sub_266C0B0D8(&v19, a3 + 16);
  sub_266C0B0D8(&v16, a3 + 56);
  return a3;
}

uint64_t ProductNameConstants.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_266DAAF8C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_266C2727C@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ProductNameConstants.init(rawValue:)(a1);
}

SiriFindMy::DeviceTypeConstants_optional __swiftcall DeviceTypeConstants.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceTypeConstants.rawValue.getter()
{
  if (*v0)
  {
    return 0x746375646F7270;
  }

  else
  {
    return 0x73646F70726961;
  }
}

uint64_t sub_266C2733C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_266C1985C();
}

uint64_t sub_266C2736C@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceTypeConstants.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

unint64_t sub_266C273C8()
{
  result = qword_2800C9BC8;
  if (!qword_2800C9BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9BC8);
  }

  return result;
}

unint64_t sub_266C27420()
{
  result = qword_2800C9BD0;
  if (!qword_2800C9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9BD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceTypeConstants(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_266C27558(_BYTE *result, int a2, int a3)
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

uint64_t sub_266C27600()
{
  result = sub_266DAA5AC();
  qword_28156FC98 = result;
  unk_28156FCA0 = v1;
  return result;
}

void sub_266C27634(uint64_t a1)
{
  v47 = sub_266DA74AC();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v40 = v1;
    v56 = MEMORY[0x277D84F90];
    sub_266C38868();
    v7 = v56;
    v10 = sub_266C293FC(a1);
    v11 = 0;
    v12 = a1 + 64;
    v44 = (v3 + 8);
    v45 = a1;
    v41 = a1 + 72;
    v42 = v6;
    v43 = a1 + 64;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v13 = v10 >> 6;
        if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_39;
        }

        v48 = v9;
        v14 = *(*(a1 + 56) + 8 * v10);
        if (v14 >> 62)
        {
          if (v14 < 0)
          {
            v38 = *(*(a1 + 56) + 8 * v10);
          }

          v39 = v8;
          v15 = sub_266DAAD5C();
          v8 = v39;
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v49 = v11;
        v50 = v8;
        if (v15)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v16 = v7;

            v18 = MEMORY[0x26D5F1780](0, v14);
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = v7;
            v17 = *(v14 + 32);

            v18 = v17;
          }

          v19 = v18;
        }

        else
        {
          v16 = v7;

          v19 = 0;
        }

        v51 = 1 << v10;
        v20 = [v19 deviceOwner];

        if (!v20)
        {
          sub_266C29814(0, &qword_2800C9BD8, 0x277CD3E90);
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          sub_266C367A4();
          v20 = v21;
        }

        v22 = v46;
        sub_266DA749C();
        v23 = sub_266DA747C();
        v25 = v24;
        (*v44)(v22, v47);

        v7 = v16;
        v56 = v16;
        v26 = *(v16 + 16);
        if (v26 >= *(v16 + 24) >> 1)
        {
          sub_266C38868();
          v7 = v56;
        }

        *(v7 + 16) = v26 + 1;
        v27 = v7 + 48 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v25;
        *(v27 + 48) = v20;
        *(v27 + 56) = 0;
        *(v27 + 64) = 258;
        *(v27 + 72) = v14;
        a1 = v45;
        v28 = 1 << *(v45 + 32);
        if (v10 >= v28)
        {
          goto LABEL_40;
        }

        v12 = v43;
        v29 = *(v43 + 8 * v13);
        if ((v29 & v51) == 0)
        {
          goto LABEL_41;
        }

        if (*(v45 + 36) != v50)
        {
          goto LABEL_42;
        }

        v30 = v29 & (-2 << (v10 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v31 = v42;
        }

        else
        {
          v32 = v7;
          v33 = v13 << 6;
          v34 = v13 + 1;
          v31 = v42;
          v35 = (v41 + 8 * v13);
          while (v34 < (v28 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              sub_266C2943C(v10, v50, v48 & 1);
              v28 = __clz(__rbit64(v36)) + v33;
              goto LABEL_28;
            }
          }

          sub_266C2943C(v10, v50, v48 & 1);
LABEL_28:
          v7 = v32;
        }

        v11 = v49 + 1;
        if (v49 + 1 == v31)
        {
          return;
        }

        v9 = 0;
        v8 = *(a1 + 36);
        v10 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

void sub_266C27A3C(uint64_t a1, char a2)
{
  v49 = sub_266DA74AC();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v41 = v2;
    v55 = MEMORY[0x277D84F90];
    sub_266C38868();
    v9 = v55;
    v12 = sub_266C293FC(a1);
    v13 = 0;
    v14 = a1 + 64;
    v46 = (v5 + 8);
    v47 = a1;
    v45 = a2 & 1;
    v42 = a1 + 72;
    v43 = v8;
    v44 = a1 + 64;
    if ((v12 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v12 >= 1 << *(a1 + 32))
        {
          break;
        }

        v15 = v12 >> 6;
        if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_37;
        }

        if (*(a1 + 36) != v10)
        {
          goto LABEL_38;
        }

        v50 = v11;
        v16 = *(*(a1 + 56) + 8 * v12);
        if (v16 >> 62)
        {
          if (v16 < 0)
          {
            v39 = *(*(a1 + 56) + 8 * v12);
          }

          v40 = v10;
          v17 = sub_266DAAD5C();
          v10 = v40;
        }

        else
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v51 = v13;
        v52 = v10;
        v53 = 1 << v12;
        if (v17)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {

            v19 = MEMORY[0x26D5F1780](0, v16);
          }

          else
          {
            if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v18 = *(v16 + 32);

            v19 = v18;
          }

          v20 = sub_266C479D8(v19);
          if (v21)
          {
            v22 = v21;
            v54 = v20;
            goto LABEL_16;
          }
        }

        else
        {
        }

        v54 = 0;
        v22 = 0xE000000000000000;
LABEL_16:

        v23 = v48;
        sub_266DA749C();
        v24 = sub_266DA747C();
        v26 = v25;
        (*v46)(v23, v49);

        v55 = v9;
        v27 = *(v9 + 16);
        v28 = v9;
        if (v27 >= *(v9 + 24) >> 1)
        {
          sub_266C38868();
          v28 = v55;
        }

        *(v28 + 16) = v27 + 1;
        v29 = v28 + 48 * v27;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        *(v29 + 48) = v54;
        *(v29 + 56) = v22;
        *(v29 + 64) = 1;
        *(v29 + 65) = v45;
        *(v29 + 72) = v16;
        a1 = v47;
        v30 = 1 << *(v47 + 32);
        if (v12 >= v30)
        {
          goto LABEL_39;
        }

        v9 = v28;
        v14 = v44;
        v31 = *(v44 + 8 * v15);
        if ((v31 & v53) == 0)
        {
          goto LABEL_40;
        }

        if (*(v47 + 36) != v52)
        {
          goto LABEL_41;
        }

        v32 = v31 & (-2 << (v12 & 0x3F));
        if (v32)
        {
          v30 = __clz(__rbit64(v32)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v33 = v43;
        }

        else
        {
          v34 = v15 << 6;
          v35 = v15 + 1;
          v33 = v43;
          v36 = (v42 + 8 * v15);
          while (v35 < (v30 + 63) >> 6)
          {
            v38 = *v36++;
            v37 = v38;
            v34 += 64;
            ++v35;
            if (v38)
            {
              sub_266C2943C(v12, v52, v50 & 1);
              v30 = __clz(__rbit64(v37)) + v34;
              goto LABEL_28;
            }
          }

          sub_266C2943C(v12, v52, v50 & 1);
        }

LABEL_28:
        v13 = v51 + 1;
        if (v51 + 1 == v33)
        {
          return;
        }

        v11 = 0;
        v10 = *(a1 + 36);
        v12 = v30;
      }

      while ((v30 & 0x8000000000000000) == 0);
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

void sub_266C27E04(uint64_t a1)
{
  v46 = sub_266DA74AC();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v39[1] = v1;
    v52 = MEMORY[0x277D84F90];
    sub_266C38868();
    v7 = v52;
    v9 = sub_266C293FC(a1);
    v11 = v10;
    v12 = 0;
    v13 = a1 + 64;
    v43 = (v3 + 8);
    v44 = a1;
    v40 = a1 + 72;
    v41 = v6;
    v42 = a1 + 64;
    if ((v9 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v9 >= 1 << *(a1 + 32))
        {
          break;
        }

        v14 = v9 >> 6;
        if ((*(v13 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_35;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_36;
        }

        v15 = *(*(a1 + 56) + 8 * v9);
        if (v15 >> 62)
        {
          v38 = v8;
          v16 = sub_266DAAD5C();
          v8 = v38;
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v48 = v12;
        v49 = v8;
        v47 = v11;
        v50 = 1 << v9;
        if (v16)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {

            v18 = MEMORY[0x26D5F1780](0, v15);
          }

          else
          {
            if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v17 = *(v15 + 32);

            v18 = v17;
          }

          v19 = sub_266CC58B0(v18);
          if (v20)
          {
            v21 = v20;
            v51 = v19;
            goto LABEL_16;
          }
        }

        else
        {
        }

        v51 = 0;
        v21 = 0xE000000000000000;
LABEL_16:

        v22 = v45;
        sub_266DA749C();
        v23 = sub_266DA747C();
        v25 = v24;
        (*v43)(v22, v46);

        v52 = v7;
        v26 = *(v7 + 16);
        v27 = v7;
        if (v26 >= *(v7 + 24) >> 1)
        {
          sub_266C38868();
          v27 = v52;
        }

        *(v27 + 16) = v26 + 1;
        v28 = v27 + 48 * v26;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        *(v28 + 48) = v51;
        *(v28 + 56) = v21;
        *(v28 + 64) = 256;
        *(v28 + 72) = v15;
        a1 = v44;
        v29 = 1 << *(v44 + 32);
        if (v9 >= v29)
        {
          goto LABEL_37;
        }

        v7 = v27;
        v13 = v42;
        v30 = *(v42 + 8 * v14);
        if ((v30 & v50) == 0)
        {
          goto LABEL_38;
        }

        if (*(v44 + 36) != v49)
        {
          goto LABEL_39;
        }

        v31 = v30 & (-2 << (v9 & 0x3F));
        if (v31)
        {
          v29 = __clz(__rbit64(v31)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v32 = v41;
        }

        else
        {
          v33 = v14 << 6;
          v34 = v14 + 1;
          v32 = v41;
          v35 = (v40 + 8 * v14);
          while (v34 < (v29 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              sub_266C2943C(v9, v49, v47 & 1);
              v29 = __clz(__rbit64(v36)) + v33;
              goto LABEL_28;
            }
          }

          sub_266C2943C(v9, v49, v47 & 1);
        }

LABEL_28:
        v12 = v48 + 1;
        if (v48 + 1 == v32)
        {
          return;
        }

        v11 = 0;
        v8 = *(a1 + 36);
        v9 = v29;
      }

      while ((v29 & 0x8000000000000000) == 0);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }
}

id sub_266C281C4(void *a1, uint64_t a2)
{
  [a1 setDeviceOwner_];

  return a1;
}

id sub_266C28208(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_8(a1, a2);
  sub_266C292DC(v2, v3, v4);

  return v6;
}

id sub_266C28240(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_8(a1, a2);
  sub_266C29334(v2, v3, v4);

  return v6;
}

uint64_t sub_266C28278(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x614E656369766564;
  }

  return 0x72656E776FLL;
}

uint64_t sub_266C282D4()
{
  v0 = sub_266DAAF8C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266C28344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266C282D4();
  *a2 = result;
  return result;
}

uint64_t sub_266C28374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C28278(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266C283A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      if (a6 == 2)
      {
        sub_266C29814(0, &qword_28156EFA8, 0x277D82BB8);
        return sub_266DAABFC() & 1;
      }

      return 0;
    }

    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_266DAB17C();
}

uint64_t sub_266C2848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v8 = *(v3 + 40);
    }

    v5 = sub_266DAAD5C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 1)
  {
    return 0;
  }

  result = sub_266C3A14C(v4, a2, a3);
  if (result)
  {
    sub_266CB9F54(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D5F1780](0, v4);
    }

    else
    {
      v7 = *(v4 + 32);
    }

    return sub_266C22F3C(v7);
  }

  return result;
}

uint64_t sub_266C28524()
{
  v2 = v0;
  v3 = sub_266DA85BC();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_6();
  v9 = sub_266DA845C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_266DA844C();
  v13 = v0[5];
  if (sub_266C3A14C(v13, v14, v15))
  {
    sub_266CB9F54(0, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x26D5F1780](0, v13);
    }

    else
    {
      v16 = *(v13 + 32);
    }

    v17 = v16;
    sub_266C2938C(v17);
    if (v18)
    {
      sub_266DA843C();
    }

    v19 = v17;
    sub_266C479D8(v19);
    if (v20)
    {
      sub_266DA843C();
    }

    v21 = [v19 deviceOwner];
    if (v21)
    {
      v22 = v21;
      v23 = sub_266DA895C();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      sub_266DA894C();
      v26 = [v22 displayName];
      sub_266DAA70C();

      sub_266DA893C();

      sub_266DA842C();
    }
  }

  else
  {
    v19 = 0;
  }

  v28 = *v2;
  v27 = v2[1];
  swift_bridgeObjectRetain_n();
  sub_266DA858C();
  sub_266DA852C();
  (*(v6 + 8))(v1, v3);
  v29 = MEMORY[0x26D5EF140](v12);

  if (!v29)
  {

    return 1;
  }

  return v29;
}

uint64_t sub_266C287D8(unint64_t a1)
{

  v5 = sub_266C28A48(v2, v3, v4);

  v8 = sub_266C28CF8(v6, &selRef_deviceName, v7);

  v11 = sub_266C28CF8(v9, &selRef_productNameSemantic, v10);
  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  sub_266D99E68();
  v13 = v12;

  if (v13 & 1) != 0 || !*(v5 + 16) || (, sub_266D99E68(), v15 = v14, , (v15) || *(v5 + 16) < 2uLL)
  {
LABEL_7:

    v18 = *(v11 + 16);
    if (v18 && (v18 == 1 || (, sub_266D99E68(), v20 = v19, , (v20 & 1) != 0)))
    {
      v21 = 1;
    }

    else
    {
      Array<A>.hasItems.getter(a1);
      v21 = v22;
    }

    sub_266C27A3C(v8, v21 & 1);
    v17 = v23;

    if ((v21 & 1) == 0)
    {
      sub_266C27E04(v11);
      v25 = v24;

      sub_266C38034(v17);
      return v25;
    }
  }

  else
  {

    sub_266C27634(v5);
    v17 = v16;
  }

  return v17;
}

uint64_t sub_266C28980()
{
  v2 = sub_266DA7F0C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  v8 = *(v0 + 8);
  sub_266DA7EFC();
  v9 = sub_266D54DE8(v8, (v0 + 16));
  (*(v5 + 8))(v1, v2);
  return v9 & 1;
}

uint64_t sub_266C28A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v5 = sub_266C3A14C(a1, a2, a3);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v4;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D5F1780](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v7;
    v9 = [v8 deviceOwner];
    if (v9)
    {
      v10 = v9;
      v11 = [v10 contactIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = sub_266DAA70C();
        v15 = v14;

        goto LABEL_13;
      }
    }

    else
    {
    }

    v13 = 0;
    v15 = 0;
LABEL_13:
    v17 = sub_266D99E68();
    v18 = v4[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_28;
    }

    v21 = v16;
    if (v4[3] < v20)
    {
      sub_266D2EA80(v20);
      v4 = v32;
      v22 = sub_266D99E68();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_30;
      }

      v17 = v22;
    }

    if (v21)
    {

      v25 = (v4[7] + 8 * v17);
      MEMORY[0x26D5F1270](v24);
      if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      sub_266DAA96C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_266DAE3B0;
      *(v26 + 32) = v8;
      v4[(v17 >> 6) + 8] |= 1 << v17;
      v27 = (v4[6] + 16 * v17);
      *v27 = v13;
      v27[1] = v15;
      *(v4[7] + 8 * v17) = v26;
      v28 = v4[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_29;
      }

      v4[2] = v30;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  result = sub_266DAB1FC();
  __break(1u);
  return result;
}

uint64_t sub_266C28CF8(uint64_t a1, SEL *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v5 = sub_266C3A14C(a1, a2, a3);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v4;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D5F1780](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = [v7 *a2];
    if (v9)
    {
      v10 = v9;
      v11 = sub_266DAA70C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v15 = sub_266D99E68();
    v16 = v4[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_25;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_266D2EA80(v18);
      v4 = v31;
      v20 = sub_266D99E68();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_27;
      }

      v15 = v20;
    }

    if (v19)
    {

      v23 = (v4[7] + 8 * v15);
      MEMORY[0x26D5F1270](v22);
      if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      sub_266DAA96C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_266DAE3B0;
      *(v24 + 32) = v8;
      v4[(v15 >> 6) + 8] |= 1 << v15;
      v25 = (v4[6] + 16 * v15);
      *v25 = v11;
      v25[1] = v13;
      *(v4[7] + 8 * v15) = v24;
      v26 = v4[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_26;
      }

      v4[2] = v28;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  result = sub_266DAB1FC();
  __break(1u);
  return result;
}

void sub_266C28F78(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 - 16;
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (v3 + 48 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_50;
    }

    v8 = *(v6 + 81);
    ++v1;
    v6 += 6;
    if (v8)
    {
      v9 = v6[1];
      v35 = *v6;
      v10 = v6[2];
      v11 = v6[3];
      v12 = *(v6 + 32);
      v13 = v6[5];

      sub_266C292B4(v10, v11, v12);

      v36 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v5 + 16);
        sub_266C38868();
      }

      v15 = *(v5 + 16);
      if (v15 >= *(v5 + 24) >> 1)
      {
        sub_266C38868();
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 48 * v15;
      *(v16 + 32) = v35;
      *(v16 + 40) = v9;
      *(v16 + 48) = v10;
      *(v16 + 56) = v11;
      *(v16 + 64) = v12;
      *(v16 + 65) = 1;
      v3 = v36;
      *(v16 + 72) = v13;
      v1 = v7;
      goto LABEL_2;
    }
  }

  v17 = *(v5 + 16);
  if (v17)
  {
    sub_266C388B4(0, v17, 0);
    v18 = *(v4 + 16);
    v19 = 64;
    do
    {
      v20 = *(v5 + v19);
      v21 = *(v4 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_266C388B4(v21 > 1, v18 + 1, 1);
      }

      *(v4 + 16) = v18 + 1;
      *(v4 + v18 + 32) = v20;
      v19 += 48;
      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v22 = *(v4 + 16);
  if (!v22)
  {
LABEL_48:

    return;
  }

  v23 = 0;
  v24 = *(v4 + 32);
  while (v23 < *(v4 + 16))
  {
    v25 = v23 + 1;
    v26 = *(v4 + 32 + v23);
    v27 = 0x614E656369766564;
    if (v26 != 1)
    {
      v27 = 0x72656E776FLL;
    }

    v28 = 0xEA0000000000656DLL;
    if (v26 != 1)
    {
      v28 = 0xE500000000000000;
    }

    if (v26)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xD000000000000013;
    }

    if (v26)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0x8000000266DC1020;
    }

    if (v24)
    {
      if (v24 == 1)
      {
        v31 = 0x614E656369766564;
      }

      else
      {
        v31 = 0x72656E776FLL;
      }

      if (v24 == 1)
      {
        v32 = 0xEA0000000000656DLL;
      }

      else
      {
        v32 = 0xE500000000000000;
      }
    }

    else
    {
      v31 = 0xD000000000000013;
      v32 = 0x8000000266DC1020;
    }

    if (v29 == v31 && v30 == v32)
    {
    }

    else
    {
      v34 = sub_266DAB17C();

      if ((v34 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v23 = v25;
    if (v22 == v25)
    {
      goto LABEL_48;
    }
  }

LABEL_51:
  __break(1u);
}

id sub_266C292B4(id result, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_266C292DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();
  [a3 setDeviceName_];
}

void sub_266C29334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();
  [a3 setDeviceType_];
}

uint64_t sub_266C2938C(void *a1)
{
  v2 = [a1 productName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266C293FC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_266DAAD1C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_266C2943C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_266C29454(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_266C29494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTagSinglePayload for DeviceDisambiguationType.Case(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceDisambiguationType.Case(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_266C29668(uint64_t a1, int a2)
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

uint64_t sub_266C296A8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_266C29720(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_266C29760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266C297C0()
{
  result = qword_2800C9BE8;
  if (!qword_2800C9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9BE8);
  }

  return result;
}

uint64_t sub_266C29814(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_266C29884(void *a1)
{
  v2 = sub_266DA746C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 coordinate];
  v8 = v7;
  [a1 coordinate];
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGEOCoordinate_];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [a1 timestamp];
  sub_266DA744C();

  sub_266DA742C();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  [v11 setTimestamp_];
  [a1 horizontalAccuracy];
  [v11 setHorizontalAccuracy_];
  [a1 verticalAccuracy];
  [v11 setVerticalAccuracy_];
  [a1 course];
  [v11 setCourse_];
  [a1 courseAccuracy];
  [v11 setCourseAccuracy_];
  [a1 speed];
  [v11 setSpeed_];
  [a1 speedAccuracy];
  [v11 setSpeedAccuracy_];
  [a1 altitude];
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v15 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v15 >= 2147483650.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v11 setAltitude_];
  v16 = [a1 floor];
  if (!v16)
  {
    v18 = 0;
LABEL_11:
    [v11 setLevelOrdinal_];
    [v11 setReferenceFrame_];

    return;
  }

  v17 = v16;
  v18 = [v16 level];

  if (v18 >= 0xFFFFFFFF80000000)
  {
    if (v18 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_9:

      return;
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_266C29BAC(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D47CE0];
  v5 = sub_266DAA70C();
  if (a2)
  {
    if (v5 == a1 && v6 == a2)
    {

LABEL_17:

      return 1;
    }

    v8 = OUTLINED_FUNCTION_0_9();

    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v9 = *MEMORY[0x277D47CE8];
  v10 = sub_266DAA70C();
  if (a2)
  {
    if (v10 == a1 && v11 == a2)
    {

LABEL_27:

      return 2;
    }

    v13 = OUTLINED_FUNCTION_0_9();

    if (v13)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v15 = *MEMORY[0x277D47CF0];
  v16 = sub_266DAA70C();
  if (a2)
  {
    if (v16 != a1 || v17 != a2)
    {
      OUTLINED_FUNCTION_0_9();
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return sub_266DAB17C();
}

uint64_t sub_266C29D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B3F8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266C29DCC;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

uint64_t sub_266C29DCC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

BOOL sub_266C29EC0()
{
  v0 = sub_266DAAF8C();

  return v0 != 0;
}

BOOL sub_266C29F14@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266C29EC0();
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FindMyAttribute(_BYTE *result, int a2, int a3)
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

unint64_t sub_266C2A00C()
{
  result = qword_2800C9BF0;
  if (!qword_2800C9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9BF0);
  }

  return result;
}

uint64_t sub_266C2A070(uint64_t a1, uint64_t a2)
{
  v4 = sub_266C2A1FC();
  v5 = sub_266C2A250();
  v6 = sub_266C2A2A4();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266C2A0E8()
{
  result = qword_2800C9BF8;
  if (!qword_2800C9BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800C9C00, &qword_266DAEA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9BF8);
  }

  return result;
}

unint64_t sub_266C2A150()
{
  result = qword_2800C9C08;
  if (!qword_2800C9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C08);
  }

  return result;
}

unint64_t sub_266C2A1A8()
{
  result = qword_2800C9C10;
  if (!qword_2800C9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C10);
  }

  return result;
}

unint64_t sub_266C2A1FC()
{
  result = qword_2800C9C18;
  if (!qword_2800C9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C18);
  }

  return result;
}

unint64_t sub_266C2A250()
{
  result = qword_2800C9C20;
  if (!qword_2800C9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C20);
  }

  return result;
}

unint64_t sub_266C2A2A4()
{
  result = qword_2800C9C28;
  if (!qword_2800C9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C28);
  }

  return result;
}

uint64_t sub_266C2A2F8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C9C30);
  v1 = __swift_project_value_buffer(v0, qword_2800C9C30);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C2A3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = type metadata accessor for ConfigurationFiles();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_266CBD110(0xD00000000000002ALL, 0x8000000266DC1730, a1);

  if (v18)
  {
    v19 = [v18 metadata];
    v20 = sub_266DAA6AC();

    v21 = sub_266CBD158(0x6E6F6973726576, 0xE700000000000000, v20);
    v23 = v22;

    v24 = &v17[*(v14 + 20)];
    *v24 = v21;
    v24[1] = v23;
    v25 = [v18 location];
    if (v25)
    {
      v26 = v25;
      sub_266DA734C();

      v27 = sub_266DA737C();
      v28 = 0;
    }

    else
    {
      v27 = sub_266DA737C();
      v28 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v28, 1, v27);
    sub_266C2A7E8(v8, v11);
    sub_266DA737C();
    if (__swift_getEnumTagSinglePayload(v11, 1, v27) == 1)
    {

      sub_266C2A858(v11);
      v34 = 1;
    }

    else
    {
      sub_266CEEC60(v21, v23);

      (*(*(v27 - 8) + 8))(v11, v27);
      v34 = 0;
    }

    __swift_storeEnumTagSinglePayload(v13, v34, 1, v27);
    sub_266C2A7E8(v13, v17);
    sub_266C2A8C0(v17, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v14);
  }

  else
  {
    if (qword_2800C9160 != -1)
    {
      swift_once();
    }

    v29 = sub_266DA94AC();
    __swift_project_value_buffer(v29, qword_2800C9C30);
    v30 = sub_266DA948C();
    v31 = sub_266DAAAEC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_266C08000, v30, v31, "Primary device files asset is missing.", v32, 2u);
      MEMORY[0x26D5F2480](v32, -1, -1);
    }

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
  }
}

uint64_t type metadata accessor for ConfigurationFiles()
{
  result = qword_2800C9C50;
  if (!qword_2800C9C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266C2A7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C2A858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266C2A8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationFiles();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_266C2A94C()
{
  sub_266C2A9D0();
  if (v0 <= 0x3F)
  {
    sub_266C2AA28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266C2A9D0()
{
  if (!qword_2800C9C60)
  {
    sub_266DA737C();
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800C9C60);
    }
  }
}

void sub_266C2AA28()
{
  if (!qword_2800C9C68)
  {
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800C9C68);
    }
  }
}

uint64_t Snippets.PlaySoundResult.device.getter()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_2_3();
  memcpy(v3, v4, v5);
  return sub_266C2AAC4(v8, &v7);
}

void *Snippets.PlaySoundResult.device.setter(const void *a1)
{
  OUTLINED_FUNCTION_2_3();
  memcpy(v3, v4, v5);
  sub_266C2AB6C(v7);
  return memcpy(v1, a1, 0x58uLL);
}

uint64_t Snippets.PlaySoundResult.message.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t Snippets.PlaySoundResult.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

void *Snippets.PlaySoundResult.init(device:message:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = memcpy(a4, __src, 0x58uLL);
  a4[11] = a2;
  a4[12] = a3;
  return result;
}

uint64_t static Snippets.PlaySoundResult.== infix(_:_:)(void *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *(__src + 11);
  v5 = *(__src + 12);
  memcpy(v14, a2, sizeof(v14));
  v6 = a2[11];
  v7 = a2[12];
  memcpy(__srca, __src, sizeof(__srca));
  memcpy(v11, a2, sizeof(v11));
  sub_266C2AAC4(__dst, v16);
  sub_266C2AAC4(v14, v16);
  LOBYTE(a2) = static Snippets.Device.== infix(_:_:)(__srca, v11);
  memcpy(v15, v11, sizeof(v15));
  sub_266C2AB6C(v15);
  memcpy(v16, __srca, sizeof(v16));
  sub_266C2AB6C(v16);
  if (a2)
  {
    if (v4 == v6 && v5 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_266DAB17C();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_266C2ADCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

uint64_t sub_266C2AE90(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x656369766564;
  }
}

uint64_t sub_266C2AED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C2ADCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C2AEFC(uint64_t a1)
{
  v2 = sub_266C2B134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C2AF38(uint64_t a1)
{
  v2 = sub_266C2B134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.PlaySoundResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C70, &qword_266DAEBC8);
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v18 - v10;
  OUTLINED_FUNCTION_2_3();
  memcpy(v12, v13, v14);
  v15 = *(v1 + 88);
  v18[0] = *(v1 + 96);
  v18[1] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C2AAC4(v21, v20);
  sub_266C2B134();
  sub_266DAB36C();
  OUTLINED_FUNCTION_3_5(v20);
  v21[111] = 0;
  sub_266C2B188();
  sub_266DAB11C();
  memcpy(v19, v20, sizeof(v19));
  sub_266C2AB6C(v19);
  if (!v2)
  {
    v21[110] = 1;
    sub_266DAB0EC();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_266C2B134()
{
  result = qword_2800C9C78;
  if (!qword_2800C9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C78);
  }

  return result;
}

unint64_t sub_266C2B188()
{
  result = qword_2800C9C80;
  if (!qword_2800C9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C80);
  }

  return result;
}

uint64_t Snippets.PlaySoundResult.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C88, &qword_266DAEBD0);
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C2B134();
  sub_266DAB34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __dst[111] = 0;
  sub_266C2B404();
  sub_266DAB05C();
  memcpy(__dst, v18, 0x58uLL);
  __dst[110] = 1;
  v9 = sub_266DAB01C();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_0_10();
  v13(v12);
  OUTLINED_FUNCTION_3_5(v16);
  v16[11] = v9;
  v16[12] = v11;
  memcpy(a2, v16, 0x68uLL);
  sub_266C2B458(v16, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  OUTLINED_FUNCTION_3_5(v17);
  v17[11] = v9;
  v17[12] = v11;
  return sub_266C2B490(v17);
}

unint64_t sub_266C2B404()
{
  result = qword_2800C9C90;
  if (!qword_2800C9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C90);
  }

  return result;
}

unint64_t sub_266C2B4C4()
{
  result = qword_2800C9C98;
  if (!qword_2800C9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9C98);
  }

  return result;
}

unint64_t sub_266C2B51C()
{
  result = qword_2800C9CA0;
  if (!qword_2800C9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C2B5F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_266C2B630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s15PlaySoundResultV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266C2B778()
{
  result = qword_2800C9CA8;
  if (!qword_2800C9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CA8);
  }

  return result;
}

unint64_t sub_266C2B7D0()
{
  result = qword_2800C9CB0;
  if (!qword_2800C9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CB0);
  }

  return result;
}

unint64_t sub_266C2B828()
{
  result = qword_2800C9CB8;
  if (!qword_2800C9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CB8);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_5(void *a1)
{

  return memcpy(a1, (v1 - 176), 0x58uLL);
}

uint64_t static Snippets.Device.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v30 = *(a1 + 64);
  v31 = *(a1 + 56);
  v26 = *(a1 + 80);
  v27 = *(a1 + 72);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v28 = *(a2 + 64);
  v29 = *(a2 + 56);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v24 = *(a2 + 80);
  v25 = *(a2 + 72);
  if (!v12 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v14 = sub_266DAB17C();
    result = 0;
    if (v14 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if (v5 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      v16 = OUTLINED_FUNCTION_2_4();
      sub_266C2BAF0(v16, v17);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v10 >> 60 == 15)
  {
LABEL_18:
    v18 = OUTLINED_FUNCTION_2_4();
    sub_266C2BAF0(v18, v19);
    sub_266C2BAF0(v11, v10);
    return 0;
  }

  v20 = OUTLINED_FUNCTION_2_4();
  v21 = MEMORY[0x26D5EDD20](v20);
  sub_266C2BAF0(v11, v10);
  sub_266C2BAF0(v6, v5);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v22 = v31 == v29 && v30 == v28;
  if (!v22 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  if (v27 == v25 && v26 == v24)
  {
    return 1;
  }

  return sub_266DAB17C();
}

uint64_t sub_266C2BA84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_266C2BA98(a1, a2);
  }

  return a1;
}

uint64_t sub_266C2BA98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_266C2BAF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_266C2BB04(a1, a2);
  }

  return a1;
}

uint64_t sub_266C2BB04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Snippets.Device.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Snippets.Device.identifier.setter()
{
  OUTLINED_FUNCTION_6_3();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippets.Device.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Snippets.Device.label.setter()
{
  OUTLINED_FUNCTION_6_3();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippets.Device.imageData.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = OUTLINED_FUNCTION_4_4();
  sub_266C2BA84(v3, v4);
  return OUTLINED_FUNCTION_4_4();
}

uint64_t Snippets.Device.imageData.setter()
{
  OUTLINED_FUNCTION_6_3();
  result = sub_266C2BAF0(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Snippets.Device.id.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Snippets.Device.emphasisId.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Snippets.Device.emphasisId.setter()
{
  OUTLINED_FUNCTION_6_3();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Snippets.Device.init(identifier:label:isItem:imageData:emphasisId:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a7;
  v36 = a8;
  v32 = a4;
  v33 = a10;
  v34 = a6;
  v15 = sub_266DA74AC();
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = sub_266C2BAF0(0, 0xF000000000000000);
  v24 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v24 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v25 = a1;
  v26 = a2;
  if (!v24)
  {

    sub_266DA749C();
    v25 = sub_266DA747C();
    v26 = v27;
    result = (*(v18 + 8))(v22, v15);
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  v28 = v32;
  *(a9 + 16) = a3;
  *(a9 + 24) = v28;
  *(a9 + 32) = a5 & 1;
  v29 = v35;
  *(a9 + 40) = v34;
  *(a9 + 48) = v29;
  *(a9 + 56) = v25;
  *(a9 + 64) = v26;
  v30 = v33;
  *(a9 + 72) = v36;
  *(a9 + 80) = v30;
  return result;
}

uint64_t sub_266C2BF1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D6574497369 && a2 == 0xE600000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461446567616D69 && a2 == 0xE900000000000061;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 25705 && a2 == 0xE200000000000000;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7369736168706D65 && a2 == 0xEA00000000006449)
          {

            return 5;
          }

          else
          {
            v11 = sub_266DAB17C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_266C2C110(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x6D6574497369;
      break;
    case 3:
      result = 0x7461446567616D69;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 0x7369736168706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C2C1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C2BF1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C2C1F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C2C108();
  *a1 = result;
  return result;
}

uint64_t sub_266C2C218(uint64_t a1)
{
  v2 = sub_266C2C910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C2C254(uint64_t a1)
{
  v2 = sub_266C2C910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.Device.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9CC0, &qword_266DAEE80);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v22 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v25 = v1[3];
  v26 = v13;
  v30 = *(v1 + 32);
  v14 = v1[5];
  v23 = v1[6];
  v24 = v14;
  v15 = v1[7];
  v22[3] = v1[8];
  v22[4] = v15;
  v16 = v1[10];
  v22[1] = v1[9];
  v22[2] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C2C910();
  sub_266DAB36C();
  LOBYTE(v28) = 0;
  v18 = v27;
  sub_266DAB0EC();
  if (!v18)
  {
    v20 = v23;
    v19 = v24;
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0EC();
    LOBYTE(v28) = 2;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0FC();
    v28 = v19;
    v29 = v20;
    v31 = 3;
    sub_266C2BA84(v19, v20);
    sub_266C2C964();
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0DC();
    sub_266C2BAF0(v28, v29);
    LOBYTE(v28) = 4;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0EC();
    LOBYTE(v28) = 5;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0EC();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t Snippets.Device.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9CD8, &qword_266DAEE88);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v30 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C2C910();
  sub_266DAB34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_266C2BAF0(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v38) = 0;
    OUTLINED_FUNCTION_0_11();
    v14 = sub_266DAB01C();
    v36 = v15;
    LOBYTE(v38) = 1;
    OUTLINED_FUNCTION_0_11();
    v16 = sub_266DAB01C();
    v35 = v17;
    LOBYTE(v38) = 2;
    OUTLINED_FUNCTION_0_11();
    v49 = sub_266DAB02C();
    LOBYTE(__src[0]) = 3;
    sub_266C2C9B8();
    sub_266DAB00C();
    v34 = v16;
    v33 = a2;
    v18 = v38;
    v19 = v39;
    sub_266C2BAF0(0, 0xF000000000000000);
    LOBYTE(v38) = 4;
    OUTLINED_FUNCTION_0_11();
    v32 = sub_266DAB01C();
    v31 = v14;
    v21 = v20;
    v50 = 5;
    v22 = sub_266DAB01C();
    v49 &= 1u;
    v23 = v22;
    v24 = v12;
    v26 = v25;
    (*(v8 + 8))(v24, v5);
    v27 = v31;
    __src[0] = v31;
    v28 = v36;
    __src[1] = v36;
    __src[2] = v34;
    __src[3] = v35;
    LOBYTE(__src[4]) = v49;
    __src[5] = v18;
    __src[6] = v19;
    __src[7] = v32;
    __src[8] = v21;
    __src[9] = v23;
    __src[10] = v26;
    memcpy(v33, __src, 0x58uLL);
    sub_266C2AAC4(__src, &v38);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v38 = v27;
    v39 = v28;
    v40 = v34;
    v41 = v35;
    v42 = v49;
    v43 = v18;
    v44 = v19;
    v45 = v32;
    v46 = v21;
    v47 = v23;
    v48 = v26;
    return sub_266C2AB6C(&v38);
  }
}

uint64_t sub_266C2C8B4@<X0>(uint64_t *a1@<X8>)
{
  result = Snippets.Device.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_266C2C910()
{
  result = qword_2800C9CC8;
  if (!qword_2800C9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CC8);
  }

  return result;
}

unint64_t sub_266C2C964()
{
  result = qword_2800C9CD0;
  if (!qword_2800C9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CD0);
  }

  return result;
}

unint64_t sub_266C2C9B8()
{
  result = qword_2800C9CE0;
  if (!qword_2800C9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CE0);
  }

  return result;
}

uint64_t sub_266C2CA28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_266C2CA68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s6DeviceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s6DeviceV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266C2CC34()
{
  result = qword_2800C9CE8;
  if (!qword_2800C9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CE8);
  }

  return result;
}

unint64_t sub_266C2CC8C()
{
  result = qword_2800C9CF0;
  if (!qword_2800C9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CF0);
  }

  return result;
}

unint64_t sub_266C2CCE4()
{
  result = qword_2800C9CF8;
  if (!qword_2800C9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9CF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4()
{
  sub_266C2BA84(v3, v2);
  sub_266C2BA84(v1, v0);
  return v3;
}

unint64_t sub_266C2CDB0(char a1)
{
  sub_266DAADFC();

  if (qword_2800C9308 != -1)
  {
    swift_once();
  }

  v2 = sub_266C2CEA4(a1);
  v4 = v3;
  v5 = sub_266DA750C();
  v6 = __swift_project_value_buffer(v5, qword_2800E6350);
  v7 = String.firstLetterCapitalized(with:)(v6, v2, v4);
  v9 = v8;

  MEMORY[0x26D5F1170](v7, v9);

  return 0xD000000000000012;
}

unint64_t sub_266C2CEA4(char a1)
{
  result = 0x794D646E6966;
  switch(a1)
  {
    case 1:
      result = 0x6F43794D646E6966;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x7441794D646E6966;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6449794D646E6966;
      break;
    case 9:
      result = 0x6556794D646E6966;
      break;
    default:
      return result;
  }

  return result;
}

SiriFindMy::DevicePingError_optional __swiftcall DevicePingError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue + 127;
  if ((rawValue - 73601) >= 6)
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_266C2D028()
{
  result = qword_2800C9D00;
  if (!qword_2800C9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9D00);
  }

  return result;
}

uint64_t sub_266C2D09C@<X0>(uint64_t *a1@<X8>)
{
  result = DevicePingError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_266C2D0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266C2D204();
  v5 = sub_266C2D258();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for DevicePingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266C2D204()
{
  result = qword_2800C9D08;
  if (!qword_2800C9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9D08);
  }

  return result;
}

unint64_t sub_266C2D258()
{
  result = qword_2800C9D10;
  if (!qword_2800C9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9D10);
  }

  return result;
}

uint64_t sub_266C2D2AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_266DA7EEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v29[-v13];
  v15 = (v5 + 16);
  v16 = *(v5 + 16);
  v16(&v29[-v13], a1, v4);
  v17 = (*(v5 + 88))(v14, v4);
  if (v17 != *MEMORY[0x277D5BE70])
  {
    if (v17 == *MEMORY[0x277D5BE80])
    {
      v16(v12, v14, v4);
      (*(v5 + 96))(v12, v4);
      v23 = *v12;
      v15 = &off_279C03000;
      DevicePingError.init(rawValue:)([*v12 errorCode]);
      v22 = v30;
      if (v30 != 6)
      {
        v26 = OUTLINED_FUNCTION_0_12();
        (off_279C03000)(v26);

        goto LABEL_13;
      }

      v24 = [v23 errorCode];
      if (*MEMORY[0x277D47CF8] == v24)
      {
        v25 = OUTLINED_FUNCTION_0_12();
        (off_279C03000)(v25);

        v22 = 1;
        goto LABEL_13;
      }
    }

    v27 = OUTLINED_FUNCTION_0_12();
    v15(v27);
LABEL_12:
    v22 = 5;
    goto LABEL_13;
  }

  v16(v9, v14, v4);
  (*(v5 + 96))(v9, v4);
  v18 = sub_266C5FE48(*v9);
  v20 = v19;
  v21 = OUTLINED_FUNCTION_0_12();
  v15(v21);
  if ((v20 & 1) != 0 || v18 != 103)
  {
    goto LABEL_12;
  }

  v22 = 4;
LABEL_13:
  result = (v15)(v14, v4);
  *a2 = v22;
  return result;
}

void sub_266C2D574(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_266DAAD4C();
    sub_266C33D4C();
    sub_266C33D90();
    sub_266DAAA4C();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_266DAAD6C() || (sub_266C33D4C(), swift_dynamicCast(), (v12 = v29) == 0))
    {
LABEL_24:
      sub_266C33DE8();
      return;
    }

LABEL_17:
    v13 = v12;
    v14 = [v13 role];
    if (v14)
    {

      v15 = [v13 name];
      v22 = sub_266DAA70C();
      v23 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v9 + 16);
        sub_266CF9AAC();
        v9 = v20;
      }

      v17 = *(v9 + 16);
      if (v17 >= *(v9 + 24) >> 1)
      {
        sub_266CF9AAC();
        v9 = v21;
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 48 * v17;
      *(v18 + 32) = v22;
      *(v18 + 40) = v23;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_266C2D810@<X0>(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  result = v2[3];
  if (result)
  {
    v6 = v2[4];
    v7 = v2[2];
    v8 = *(v2 + 2);
    v9 = *v2;
    v10 = v8 & 1;
    v11 = v7;
    v12 = result;
    v13 = v6;

    a1(&v9);

    if (v3)
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_266C2D8D8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F880);
  v1 = __swift_project_value_buffer(v0, qword_28156F880);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFMSyncDeviceData.pushToken.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_4_4();
}

void sub_266C2D9D4()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v38 = sub_266DAA4CC();
  v4 = OUTLINED_FUNCTION_0_2(v38);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  v12 = sub_266DAA4FC();
  v13 = *(v12 + 16);
  if (v13)
  {
    v33 = v1;
    v34 = v3;
    v15 = *(v6 + 16);
    v14 = v6 + 16;
    v16 = *(v14 + 64);
    v32 = v12;
    v17 = v12 + ((v16 + 32) & ~v16);
    v35 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      v19 = v38;
      v20 = v14;
      v37(v11, v17, v38);
      v21 = sub_266DAA49C();
      MEMORY[0x28223BE20](v21);
      *(&v32 - 2) = v11;
      sub_266D69554(sub_266C33EC0, (&v32 - 4), v21);
      OUTLINED_FUNCTION_17_1();

      (*v36)(v11, v19);
      v22 = *(v11 + 16);
      v23 = *(v18 + 16);
      if (__OFADD__(v23, v22))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v18 + 24) >> 1)
      {
        sub_266CF9AAC();
        v18 = v24;
      }

      if (*(v11 + 16))
      {
        if ((*(v18 + 24) >> 1) - *(v18 + 16) < v22)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v25 = *(v18 + 16);
          v26 = __OFADD__(v25, v22);
          v27 = v25 + v22;
          if (v26)
          {
            goto LABEL_20;
          }

          *(v18 + 16) = v27;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_18;
        }
      }

      v17 += v35;
      --v13;
      v14 = v20;
      if (!v13)
      {

        v1 = v33;
        v3 = v34;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_16:
    v28 = sub_266DAA50C();
    v30 = v29;
    v31 = sub_266DAA51C();
    (*(*(v31 - 8) + 8))(v1, v31);
    *v3 = v28;
    v3[1] = v30;
    v3[2] = v18;
    OUTLINED_FUNCTION_5();
  }
}

uint64_t sub_266C2DC8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = sub_266DAA4BC();
  v7 = v6;
  result = sub_266DAA4AC();
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v7;
  a2[4] = result;
  a2[5] = v9;
  return result;
}

void __swiftcall SyncDevice.init(name:ownerFirstName:ownerLastName:)(SiriFindMy::SyncDevice *__return_ptr retstr, Swift::String name, Swift::String_optional ownerFirstName, Swift::String_optional ownerLastName)
{
  retstr->name = name;
  retstr->ownerFirstName = ownerFirstName;
  retstr->ownerLastName = ownerLastName;
}

uint64_t sub_266C2DD08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B6F5468737570 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69766544636E7973 && a2 == 0xEB00000000736563)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

uint64_t sub_266C2DDDC(char a1)
{
  if (a1)
  {
    return 0x69766544636E7973;
  }

  else
  {
    return 0x656B6F5468737570;
  }
}

uint64_t sub_266C2DE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C2DD08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C2DE50(uint64_t a1)
{
  v2 = sub_266C2E074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C2DE8C(uint64_t a1)
{
  v2 = sub_266C2E074();

  return MEMORY[0x2821FE720](a1, v2);
}

void SFMSyncDeviceData.encode(to:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D18, &qword_266DAF2A0);
  OUTLINED_FUNCTION_0_2(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v15 = v0[2];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_266C2E074();
  sub_266DAB36C();
  OUTLINED_FUNCTION_5_4();
  sub_266DAB0EC();
  if (!v1)
  {
    v17 = v15;
    OUTLINED_FUNCTION_15_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D20, &qword_266DAF2A8);
    sub_266C2E310(&qword_28156F7F8, sub_266C2E0C8);
    OUTLINED_FUNCTION_5_4();
    sub_266DAB11C();
  }

  (*(v16 + 8))(v10, v4);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_266C2E074()
{
  result = qword_28156FAA8;
  if (!qword_28156FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FAA8);
  }

  return result;
}

unint64_t sub_266C2E0C8()
{
  result = qword_28156FAB0;
  if (!qword_28156FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FAB0);
  }

  return result;
}

void SFMSyncDeviceData.init(from:)()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D28, &qword_266DAF2B0);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_266C2E074();
  OUTLINED_FUNCTION_14_1();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    v10 = sub_266DAB01C();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D20, &qword_266DAF2A8);
    OUTLINED_FUNCTION_15_1();
    sub_266C2E310(&unk_28156F000, sub_266C2E388);
    OUTLINED_FUNCTION_20_0();
    sub_266DAB05C();
    v13 = OUTLINED_FUNCTION_10_0();
    v14(v13);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v15;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_266C2E310(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800C9D20, &qword_266DAF2A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266C2E388()
{
  result = qword_28156F7D0;
  if (!qword_28156F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F7D0);
  }

  return result;
}

uint64_t SyncDevice.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_4_4();
}

uint64_t SyncDevice.ownerFirstName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t SyncDevice.ownerLastName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t static SyncDevice.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6)
    {
      return 0;
    }

    v11 = v2 == v7 && v4 == v6;
    if (!v11 && (sub_266DAB17C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v3 == v9 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_4_4();
      if (sub_266DAB17C())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_266C2E574(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72694672656E776FLL && a2 == 0xEE00656D614E7473;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73614C72656E776FLL && a2 == 0xED0000656D614E74)
    {

      return 2;
    }

    else
    {
      v8 = sub_266DAB17C();

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

uint64_t sub_266C2E69C(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x72694672656E776FLL;
  }

  return 0x73614C72656E776FLL;
}

uint64_t sub_266C2E70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C2E574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C2E734@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C2E694();
  *a1 = result;
  return result;
}

uint64_t sub_266C2E75C(uint64_t a1)
{
  v2 = sub_266C2E958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C2E798(uint64_t a1)
{
  v2 = sub_266C2E958();

  return MEMORY[0x2821FE720](a1, v2);
}

void SyncDevice.encode(to:)()
{
  OUTLINED_FUNCTION_27();
  v19 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D30, &qword_266DAF2B8);
  OUTLINED_FUNCTION_0_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v18[3] = v0[3];
  v18[4] = v14;
  v15 = v0[4];
  v18[1] = v0[5];
  v18[2] = v15;
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_266C2E958();
  sub_266DAB36C();
  v17 = v19;
  sub_266DAB0EC();
  if (!v17)
  {
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_5_4();
    sub_266DAB09C();
    OUTLINED_FUNCTION_5_4();
    sub_266DAB09C();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_266C2E958()
{
  result = qword_28156FAC8[0];
  if (!qword_28156FAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28156FAC8);
  }

  return result;
}

uint64_t SyncDevice.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_266DAA7BC();
  if (!v4)
  {
    sub_266DAB2CC();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_266DAB2CC();
  }

  sub_266DAB2CC();
  sub_266DAA7BC();
  if (!v6)
  {
    return sub_266DAB2CC();
  }

LABEL_3:
  sub_266DAB2CC();

  return sub_266DAA7BC();
}

uint64_t SyncDevice.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_266DAB2AC();
  sub_266DAA7BC();
  sub_266DAB2CC();
  if (v4)
  {
    sub_266DAA7BC();
  }

  sub_266DAB2CC();
  if (v6)
  {
    sub_266DAA7BC();
  }

  return sub_266DAB2DC();
}

void SyncDevice.init(from:)()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D38, &qword_266DAF2C0);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_266C2E958();
  OUTLINED_FUNCTION_14_1();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    v12 = sub_266DAB01C();
    v24 = v13;
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_20_0();
    v22 = sub_266DAAFCC();
    v23 = v14;
    v15 = sub_266DAAFCC();
    v17 = v16;
    v18 = *(v7 + 8);
    v19 = v15;
    v20 = OUTLINED_FUNCTION_4_5();
    v21(v20);
    *v4 = v12;
    v4[1] = v24;
    v4[2] = v22;
    v4[3] = v23;
    v4[4] = v19;
    v4[5] = v17;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_266C2ED58()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  sub_266DAB2AC();
  SyncDevice.hash(into:)();
  return sub_266DAB2DC();
}

uint64_t FMIPSyncDeviceProvider.__allocating_init(fmipSiriController:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_17_1();
  FMIPSyncDeviceProvider.init(fmipSiriController:)(v1);
  return v0;
}

void *FMIPSyncDeviceProvider.init(fmipSiriController:)(uint64_t a1)
{
  v1[2] = MEMORY[0x277D84FA0];
  v1[3] = [objc_allocWithZone(MEMORY[0x277D49698]) init];
  v1[7] = &type metadata for SFMUserDefaultsSettingProvider;
  v1[8] = &protocol witness table for SFMUserDefaultsSettingProvider;
  v1[9] = a1;
  return v1;
}

void sub_266C2EE78()
{
  OUTLINED_FUNCTION_6();
  v48 = v0;
  v52 = v1;
  v53 = v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D40, &qword_266DAF2C8);
  OUTLINED_FUNCTION_0_2(v46);
  v50 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v45 = &v44 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D48, &qword_266DAF2D0);
  OUTLINED_FUNCTION_0_2(v47);
  v49 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D50, &qword_266DAF2D8);
  OUTLINED_FUNCTION_0_2(v44);
  v51 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_6_0();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  sub_266C2FF3C(v18, v21, v22, v23, v24, v25, v26, v27, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  sub_266C2F3B4(v28, v29, v30, v31, v32, v33, v34, v35, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v28, v55);
  v56 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D58, &qword_266DAF2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D60, &qword_266DAF2E8);
  sub_266C230E8(&qword_28156F830, &qword_2800C9D58, &qword_266DAF2E0);
  sub_266C230E8(&qword_28156F828, &qword_2800C9D60, &qword_266DAF2E8);
  sub_266DA982C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D68, &qword_266DAF2F0);
  sub_266C230E8(&qword_28156F858, &qword_2800C9D50, &qword_266DAF2D8);
  v37 = v44;
  v38 = v45;
  sub_266DA984C();
  v39 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
  sub_266C230E8(&qword_28156F840, &qword_2800C9D40, &qword_266DAF2C8);
  sub_266C230E8(&qword_28156F818, &qword_2800C9D70, &qword_266DAF2F8);
  v41 = v46;
  sub_266DA987C();
  (*(v50 + 8))(v38, v41);
  sub_266C230E8(&qword_28156F838, &qword_2800C9D48, &qword_266DAF2D0);
  v42 = v47;
  v43 = sub_266DA97EC();
  (*(v49 + 8))(v13, v42);
  v54 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D78, &qword_266DAF300);
  sub_266C230E8(&qword_28156F820, &qword_2800C9D78, &qword_266DAF300);
  sub_266DA994C();
  OUTLINED_FUNCTION_17_1();

  swift_beginAccess();
  sub_266DA968C();
  swift_endAccess();

  (*(v51 + 8))(v20, v37);
  OUTLINED_FUNCTION_5();
}

void sub_266C2F340(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v8 = a1[2];

  sub_266C380C8(v7);
  *a3 = v5;
  a3[1] = v4;
  a3[2] = v8;
}

void sub_266C2F3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DA0, &qword_266DAF828);
  OUTLINED_FUNCTION_0_2(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DA8, &qword_266DAF830);
  OUTLINED_FUNCTION_0_2(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DB0, &qword_266DAF838);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();

  sub_266DA97AC();
  sub_266C2FCAC(sub_266C2FA68, 0);

  v38 = v20[8];
  __swift_project_boxed_opaque_existential_1(v20 + 4, v20[7]);
  v39 = OUTLINED_FUNCTION_11_0();
  v41 = v40(v39);
  v42 = swift_allocObject();
  *(v42 + 16) = v41 & 1;
  v43 = swift_allocObject();
  v43[2] = sub_266C33CD0;
  v43[3] = v42;
  v43[4] = sub_266C2FDBC;
  v43[5] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D20, &qword_266DAF2A8);
  sub_266C230E8(&qword_28156F860, &qword_2800C9DA0, &qword_266DAF828);
  sub_266DA984C();

  (*(v25 + 8))(v30, v23);
  sub_266C230E8(&qword_28156F848, &qword_2800C9DA8, &qword_266DAF830);
  sub_266DA97EC();
  v44 = OUTLINED_FUNCTION_19_0();
  v45(v44);
  OUTLINED_FUNCTION_5();
}

void sub_266C2F6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = qword_28156F878;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_266DA94AC();
  __swift_project_value_buffer(v8, qword_28156F880);
  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_266C08000, v9, v10, "Fetching items from SPOwnerSession", v11, 2u);
    MEMORY[0x26D5F2480](v11, -1, -1);
  }

  v12 = *(a3 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_266C33CEC;
  *(v13 + 24) = v6;
  v15[4] = sub_266C33D2C;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_266C2F9E8;
  v15[3] = &block_descriptor;
  v14 = _Block_copy(v15);

  [v12 allBeaconsWithCompletion_];
  _Block_release(v14);
}

uint64_t sub_266C2F874(uint64_t a1, void (*a2)(void))
{
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_28156F880);

  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = sub_266DAAD5C();
    }

    else
    {
      v8 = *(a1 + 16);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&dword_266C08000, v5, v6, "Found %ld beacons", v7, 0xCu);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  else
  {
  }

  sub_266C2D574(a1);
  a2();
}

uint64_t sub_266C2F9E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_266C33D4C();
  sub_266C33D90();
  v3 = sub_266DAAA2C();

  v2(v3);
}

void sub_266C2FA68(uint64_t *a1)
{
  v1 = *a1;
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_28156F880);

  oslog = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_266C08000, oslog, v3, "SyncDeviceProvider: found %ld items", v4, 0xCu);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_266C2FBAC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_266C230E8(&qword_28156F810, &qword_2800C9DC8, &qword_266DAF850);

  sub_266DA984C();
}

uint64_t sub_266C2FCAC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D20, &qword_266DAF2A8);
  sub_266C230E8(&qword_28156F808, &qword_2800C9DB0, &qword_266DAF838);
  sub_266DA984C();
}

uint64_t sub_266C2FDBC(uint64_t *a1)
{
  v1 = *a1;
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  v3 = __swift_project_value_buffer(v2, qword_28156F880);
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_266C22A3C(0x736D657449, 0xE500000000000000, &v11);
    _os_log_impl(&dword_266C08000, v4, v5, "**** %{public}s ****", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26D5F2480](v7, -1, -1);
    MEMORY[0x26D5F2480](v6, -1, -1);
  }

  MEMORY[0x28223BE20](v8);
  v10[2] = v3;
  return sub_266CB7CEC(sub_266C33EEC, v10, v1);
}

void sub_266C2FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DB8, &qword_266DAF840);
  OUTLINED_FUNCTION_0_2(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DC0, &qword_266DAF848);
  OUTLINED_FUNCTION_0_2(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DC8, &qword_266DAF850);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();

  sub_266DA97AC();
  sub_266C2FBAC(sub_266C30588, 0);

  v38 = v20[8];
  __swift_project_boxed_opaque_existential_1(v20 + 4, v20[7]);
  v39 = OUTLINED_FUNCTION_11_0();
  v41 = v40(v39);
  v42 = swift_allocObject();
  *(v42 + 16) = v41 & 1;
  v43 = swift_allocObject();
  v43[2] = sub_266C33DF8;
  v43[3] = v42;
  v43[4] = sub_266C306E4;
  v43[5] = 0;
  sub_266C230E8(&qword_28156F868, &qword_2800C9DB8, &qword_266DAF840);

  sub_266DA984C();

  (*(v25 + 8))(v30, v23);
  sub_266C230E8(&qword_28156F850, &qword_2800C9DC0, &qword_266DAF848);
  sub_266DA97EC();
  v44 = OUTLINED_FUNCTION_19_0();
  v45(v44);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C30220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v6 = sub_266DA94AC();
  __swift_project_value_buffer(v6, qword_28156F880);
  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_266C08000, v7, v8, "Fetching devices from syncDevice endpoint", v9, 2u);
    MEMORY[0x26D5F2480](v9, -1, -1);
  }

  v10 = *(a3 + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  sub_266DAA2CC();
}

void sub_266C30364(uint64_t a1, void (*a2)(void **))
{
  v19 = a2;
  v3 = sub_266DAA51C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9DD0, &qword_266DAF858);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v18 - v13);
  sub_266C33E5C(a1, &v18 - v13, &qword_2800C9DD0, &qword_266DAF858);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *v14;
    v17 = 0uLL;
  }

  else
  {
    (*(v4 + 32))(v10, v14, v3);
    (*(v4 + 16))(v8, v10, v3);
    sub_266C2D9D4();
    v16 = v20;
    v18 = v21;
    (*(v4 + 8))(v10, v3);
    v17 = v18;
  }

  v20 = v16;
  v21 = v17;
  v22 = EnumCaseMultiPayload == 1;
  v19(&v20);
  sub_266C33B08(v20, v21, *(&v21 + 1), v22);
}

void sub_266C30588(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v3 = sub_266DA94AC();
  __swift_project_value_buffer(v3, qword_28156F880);

  oslog = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v2 + 16);

    _os_log_impl(&dword_266C08000, oslog, v4, "SyncDeviceProvider: found %ld devices", v5, 0xCu);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_266C306E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (qword_28156F878 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  v3 = __swift_project_value_buffer(v2, qword_28156F880);
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_266C22A3C(0x73656369766544, 0xE700000000000000, &v11);
    _os_log_impl(&dword_266C08000, v4, v5, "**** %{public}s ****", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26D5F2480](v7, -1, -1);
    MEMORY[0x26D5F2480](v6, -1, -1);
  }

  MEMORY[0x28223BE20](v8);
  v10[2] = v3;
  return sub_266CB7CEC(sub_266C33EEC, v10, v1);
}

uint64_t FMIPSyncDeviceProvider.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v2 = *(v0 + 72);

  return v0;
}

uint64_t FMIPSyncDeviceProvider.__deallocating_deinit()
{
  FMIPSyncDeviceProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void sub_266C3094C()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = *(v6 + 24);
  v8 = *(v6 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v6, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12);
  v16 = v5[3];
  v17 = v5[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v5, v16);
  v19 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_6();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20);
  v2(v14, v22, v3, v9, v16, v8, v17);
  __swift_destroy_boxed_opaque_existential_0(v5);
  __swift_destroy_boxed_opaque_existential_0(v7);
  OUTLINED_FUNCTION_5();
}

uint64_t CachingSyncDeviceProvider.__allocating_init()()
{
  v0 = sub_266DAA2EC();
  v1 = sub_266DAA2DC();
  type metadata accessor for FMIPSyncDeviceProvider();
  swift_allocObject();
  OUTLINED_FUNCTION_17_1();

  FMIPSyncDeviceProvider.init(fmipSiriController:)(v2);
  type metadata accessor for CachingSyncDeviceProvider();
  v3 = swift_allocObject();

  return sub_266C332B8(v0, v1, v3);
}

uint64_t sub_266C30B5C(uint64_t a1, uint64_t a2)
{
  v5 = v2[19];
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  OUTLINED_FUNCTION_18_1();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v7 = *(v5 + 8);

  v8 = OUTLINED_FUNCTION_12_1();
  v7(v8);
}

void sub_266C30C14(void *a1, uint64_t a2, char a3, void (*a4)(void **))
{
  if (a3)
  {
    if (qword_28156F878 != -1)
    {
      swift_once();
    }

    v7 = sub_266DA94AC();
    __swift_project_value_buffer(v7, qword_28156F880);
    v8 = a1;
    v9 = sub_266DA948C();
    v10 = sub_266DAAAEC();
    sub_266C33C64(a1, a2, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
      v14 = sub_266DAA72C();
      v16 = sub_266C22A3C(v14, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_266C08000, v9, v10, "Could not get push token due to %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26D5F2480](v12, -1, -1);
      MEMORY[0x26D5F2480](v11, -1, -1);
    }

    v19 = 0;
    v20 = 0;
    v18 = a1;
    v21 = 1;
    v17 = a1;
    a4(&v18);
    sub_266C33B08(v18, v19, v20, v21);
  }

  else
  {
    sub_266C30E28();
  }
}

void sub_266C30E28()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0[9];
  sub_266C31288(&v46);
  v9 = v47;
  if (!v47)
  {
    if (qword_28156F878 != -1)
    {
      OUTLINED_FUNCTION_1_8();
    }

    v20 = sub_266DA94AC();
    __swift_project_value_buffer(v20, qword_28156F880);
    v21 = sub_266DA948C();
    v22 = sub_266DAAB0C();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_28;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Could not find any syncDevices in cache, getting syncDevices from the inner sync device provider.";
    goto LABEL_27;
  }

  v10 = v46;
  v11 = v48;
  v12 = v46 == v7 && v47 == v5;
  if (v12 || (OUTLINED_FUNCTION_4_5(), (sub_266DAB17C() & 1) != 0))
  {
    if (qword_28156F878 != -1)
    {
      OUTLINED_FUNCTION_1_8();
    }

    v13 = sub_266DA94AC();
    v14 = __swift_project_value_buffer(v13, qword_28156F880);

    v15 = sub_266DA948C();
    v16 = sub_266DAAB0C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(v11 + 16);
      v18 = OUTLINED_FUNCTION_2_5();
      sub_266C33B58(v18, v19);
      _os_log_impl(&dword_266C08000, v15, v16, "Found %ld SyncDevices in cache.", v17, 0xCu);
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
      v25 = OUTLINED_FUNCTION_2_5();
      sub_266C33B58(v25, v26);
    }

    v46 = v10;
    v47 = v9;
    v48 = v11;
    v49 = 0;

    v3(&v46);
    sub_266C33B08(v46, v47, v48, v49);
    v27 = v1[13];
    v28 = v1[14];
    __swift_project_boxed_opaque_existential_1(v1 + 10, v27);
    if ((*(v28 + 8))(v27, v28))
    {
      v29 = sub_266DA948C();
      v30 = sub_266DAAB0C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v46 = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_266C22A3C(0x636E7953206C6C41, 0xEF73656369766544, &v46);
        _os_log_impl(&dword_266C08000, v29, v30, "**** %{public}s ****", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      MEMORY[0x28223BE20](v33);
      v45[2] = v14;
      sub_266CB7CEC(sub_266C33B9C, v45, v11);
      v34 = OUTLINED_FUNCTION_2_5();
      sub_266C33B58(v34, v35);
      OUTLINED_FUNCTION_5();
    }

    else
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_5();

      sub_266C33B58(v36, v37);
    }

    return;
  }

  v39 = OUTLINED_FUNCTION_2_5();
  sub_266C33B58(v39, v40);
  if (qword_28156F878 != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  v41 = sub_266DA94AC();
  __swift_project_value_buffer(v41, qword_28156F880);
  v21 = sub_266DA948C();
  v22 = sub_266DAAAEC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Cached push token is not equal to push token from FMIPCore, getting syncDevices from the inner sync device provider.";
LABEL_27:
    _os_log_impl(&dword_266C08000, v21, v22, v24, v23, 2u);
    OUTLINED_FUNCTION_6_1();
  }

LABEL_28:

  OUTLINED_FUNCTION_5();

  sub_266C31318(v42, v43);
}

uint64_t sub_266C31288@<X0>(void *a1@<X8>)
{
  sub_266C3215C(&v3);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  sub_266C2D810(sub_266C33C00, a1);
  return sub_266C33C20(v3, *(&v3 + 1), v4, *(&v4 + 1));
}

uint64_t sub_266C31318(uint64_t a1, uint64_t a2)
{
  v5 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  OUTLINED_FUNCTION_18_1();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(v5 + 8);

  v8 = OUTLINED_FUNCTION_12_1();
  v7(v8);
}

uint64_t sub_266C313D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if ((v7 & 1) == 0)
  {
    if (qword_28156F878 != -1)
    {
      swift_once();
    }

    v9 = sub_266DA94AC();
    __swift_project_value_buffer(v9, qword_28156F880);

    v10 = sub_266DA948C();
    v11 = sub_266DAAB0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v6 + 16);
      sub_266C33B08(v4, v5, v6, 0);
      _os_log_impl(&dword_266C08000, v10, v11, "Caching %ld SyncDevices from inner provider", v12, 0xCu);
      MEMORY[0x26D5F2480](v12, -1, -1);
    }

    else
    {
      sub_266C33B08(v4, v5, v6, 0);
    }

    v13 = *(a2 + 72);
    sub_266C31568(v4, v5, v6, *(a2 + 16), *(a2 + 24));
  }

  v15[0] = v4;
  v15[1] = v5;
  v15[2] = v6;
  v16 = v7;
  return a3(v15);
}