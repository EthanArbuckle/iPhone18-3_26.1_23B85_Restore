void sub_26896C360()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v76 = v2;
  v77 = v3;
  v74 = v5;
  v75 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v78 = v14;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = OUTLINED_FUNCTION_1(v24);
  v69 = v26;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v25);
  v70 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v65 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v65 - v33;
  v35 = sub_268B350F4();
  v71 = *(v35 - 8);
  v36 = *(v71 + 16);
  v73 = v35;
  v36(v34, v9);
  v37 = *(v24 + 48);
  v72 = v34;
  *&v34[v37] = v7;
  v38 = qword_2802A4F30;
  v39 = v7;
  if (v38 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v40 = __swift_project_value_buffer(v15, qword_2802CDA10);
  (*(v18 + 16))(v23, v40, v15);
  v41 = sub_268B37A34();
  v42 = sub_268B37ED4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "SetVolumeLevelHandleIntentStrategy#intentHandledResponse...", v43, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v18 + 8))(v23, v15);
  v44 = v1;
  v45 = *(v1 + 280);
  v46 = *(v1 + 288);
  v68 = v45;
  v67 = __swift_project_boxed_opaque_existential_1((v44 + 256), v45);
  v47 = v72;
  sub_2688F1FA4(v72, v32, &unk_2802A56E0, &unk_268B3CDF0);
  v48 = *&v32[*(v24 + 48)];
  v65 = v32;
  v66 = v48;
  v49 = v78;
  v50 = v75;
  sub_268A82B50(v75, v78);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v55 = v70;
  sub_2688F1FA4(v47, v70, &unk_2802A56E0, &unk_268B3CDF0);
  v56 = (*(v69 + 80) + 40) & ~*(v69 + 80);
  v57 = swift_allocObject();
  v57[2] = v50;
  v57[3] = v44;
  v57[4] = v76;
  sub_2689186C8(v55, v57 + v56);
  v58 = (v57 + ((v28 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
  v59 = v77;
  *v58 = v74;
  v58[1] = v59;
  v60 = *(v46 + 8);
  v61 = v50;

  v64 = v46;
  v63 = v65;
  v62 = v66;
  v60(v65, v66, v49, MEMORY[0x277D84F90], 1, sub_26896F564, v57, v68, v64);

  sub_2688C058C(v49, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v47, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v71 + 8))(v63, v73);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26896C7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v65 = a7;
  v66 = a6;
  v61 = a4;
  v71 = a2;
  v72 = a3;
  v64 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = v56 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v13 = v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v56 - v19;
  v21 = sub_268B34E24();
  v68 = *(v21 - 8);
  v69 = v21;
  v22 = *(v68 + 64);
  MEMORY[0x28223BE20](v21);
  v67 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v62 = v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v56 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v59 = v25[2];
  v60 = v31;
  v59(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v63 = v13;
    v35 = a5;
    v36 = v25;
    v37 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "SetVolumeLevelHandleIntentStrategy#intentHandledResponse output has been created.", v34, 2u);
    v38 = v37;
    v25 = v36;
    a5 = v35;
    v13 = v63;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v39 = v25[1];
  v63 = (v25 + 1);
  v58 = v39;
  v39(v30, v24);
  sub_268947F08();
  v56[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1((v72 + 96), *(v72 + 120));
  (*(v68 + 104))(v67, *MEMORY[0x277D5BC10], v69);
  sub_2688F1FA4(a5, v13, &unk_2802A56E0, &unk_268B3CDF0);

  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v20, v13, v42);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v44 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v44);
  v45 = *v41;
  sub_2688F1FA4(v20, v18, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
  {
    sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v43 + 8))(v18, v42);
  }

  v46 = v67;
  v47 = v70;
  sub_2688E2B50();

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  (*(v68 + 8))(v46, v69);
  v48 = v72;
  v49 = *__swift_project_boxed_opaque_existential_1((v72 + 96), *(v72 + 120));
  sub_26894B450();
  v50 = *__swift_project_boxed_opaque_existential_1((v48 + 96), *(v48 + 120));
  sub_268948308(MEMORY[0x277D84F90]);
  v51 = v62;
  (v59)(v62, v60, v24);
  v52 = sub_268B37A34();
  v53 = sub_268B37ED4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_2688BB000, v52, v53, "SetVolumeLevelHandleIntentStrategy#intentHandledResponse returning output", v54, 2u);
    MEMORY[0x26D6266E0](v54, -1, -1);
  }

  v58(v51, v24);
  return v66(v64);
}

void sub_26896CEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v133 = v21;
  v135 = v22;
  LODWORD(v123) = v23;
  v134 = v24;
  v127 = v25;
  v122 = v26;
  v128 = v27;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v131 = v36;
  OUTLINED_FUNCTION_9();
  v132 = sub_268B35044();
  v37 = OUTLINED_FUNCTION_1(v132);
  v130 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v129 = v42 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_74();
  v126 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v49 = OUTLINED_FUNCTION_22(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_78();
  v137 = v53;
  OUTLINED_FUNCTION_9();
  v138 = sub_268B34E24();
  v54 = OUTLINED_FUNCTION_1(v138);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1_0();
  v136 = v60 - v59;
  OUTLINED_FUNCTION_9();
  v61 = sub_268B37A54();
  v62 = OUTLINED_FUNCTION_1(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_0();
  v69 = v68 - v67;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v71 = OUTLINED_FUNCTION_4(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_20_0();
  v76 = v74 - v75;
  MEMORY[0x28223BE20](v77);
  v79 = &v120 - v78;
  v80 = sub_268B350F4();
  v121 = *(v80 - 8);
  (*(v121 + 16))(v79, v31, v80);
  v81 = *(v70 + 48);
  v139 = v79;
  *&v79[v81] = v29;
  v82 = qword_2802A4F30;
  v83 = v29;
  if (v82 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v84 = __swift_project_value_buffer(v61, qword_2802CDA10);
  (*(v64 + 16))(v69, v84, v61);
  v85 = sub_268B37A34();
  v86 = sub_268B37ED4();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = OUTLINED_FUNCTION_14();
    *v87 = 0;
    _os_log_impl(&dword_2688BB000, v85, v86, "SetVolumeLevelHandleIntentStrategy#legacyHandledResponse...", v87, 2u);
    OUTLINED_FUNCTION_12();
  }

  v124 = a21;

  (*(v64 + 8))(v69, v61);
  v88 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
  v89 = v122;
  swift_beginAccess();
  v142[0] = *(v89 + v88);
  sub_268B38404();
  v90 = v128;
  sub_268947F08();
  v92 = v91;

  if (v123)
  {

    sub_268947F08();
    v123 = v93;
  }

  else
  {
    v123 = v92;
  }

  v94 = v133;
  v95 = v121;
  v96 = OUTLINED_FUNCTION_22_5();
  v97 = *MEMORY[0x277D5BC10];
  v133 = v56;
  (*(v56 + 104))(v136, v97, v138);
  sub_2688F1FA4(v139, v76, &unk_2802A56E0, &unk_268B3CDF0);

  v98 = v137;
  (*(v95 + 32))(v137, v76, v80);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v80);
  sub_268B34B94();
  v102 = v126;
  v103 = OUTLINED_FUNCTION_17_8();
  __swift_storeEnumTagSinglePayload(v103, v104, 1, v105);
  v106 = *v96;
  v107 = v98;
  v108 = v125;
  sub_2688F1FA4(v107, v125, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v108, 1, v80) == 1)
  {
    sub_2688C058C(v108, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v95 + 8))(v108, v80);
  }

  v109 = v136;
  sub_2688E2B50();

  sub_2688C058C(v102, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v137, &unk_2802A57B0, &unk_268B3CE00);
  (*(v133 + 8))(v109, v138);
  v110 = *OUTLINED_FUNCTION_22_5();
  sub_268948308(MEMORY[0x277D84F90]);
  v111 = v129;
  sub_268A82B50(v90, v129);
  v142[3] = sub_268B354F4();
  v142[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v142);
  v112 = v94[11];
  __swift_project_boxed_opaque_existential_1(v94 + 7, v94[10]);
  sub_268B34CA4();
  v113 = v130;
  v114 = v131;
  v115 = v132;
  (*(v130 + 16))(v131, v111, v132);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
  v141 = 0;
  memset(v140, 0, sizeof(v140));
  v119 = v139;
  sub_268B34EF4();
  sub_2688C058C(v140, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v114, &qword_2802A57F0, &qword_268B3DDB0);
  (*(v113 + 8))(v111, v115);
  v143 = 0;
  v135(v142);
  sub_2688C058C(v119, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v142, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_26896D748()
{
  OUTLINED_FUNCTION_26();
  v89 = v0;
  v90 = v1;
  v91 = v2;
  v92 = v3;
  v93 = v5;
  v94 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  v84 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v83 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_78();
  v87 = v18;
  OUTLINED_FUNCTION_9();
  v88 = sub_268B34E24();
  v19 = OUTLINED_FUNCTION_1(v88);
  v86 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v85 = v24 - v23;
  OUTLINED_FUNCTION_9();
  v25 = sub_268B37A54();
  v26 = OUTLINED_FUNCTION_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v35 = __swift_project_value_buffer(v25, qword_2802CDA10);
    v36 = *(v28 + 16);
    v36(v0, v35, v25);
    v37 = sub_268B37A34();
    v38 = sub_268B37ED4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v39);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v37, v38, "SetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse called");
      OUTLINED_FUNCTION_12();
    }

    v40 = *(v28 + 8);
    v40(v0, v25);
    v41 = v94;
    v42 = sub_2689B8400();
    if (!v42)
    {
      break;
    }

    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_268B3BBC0;
    *(v44 + 32) = 0xD000000000000010;
    *(v44 + 40) = 0x8000000268B572E0;
    v45 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
    v46 = v93;
    swift_beginAccess();
    v86 = v45;
    v100[0] = *(v93 + v45);
    sub_268B38404();
    v47 = sub_268B36E94();
    v49 = v48;

    *(v44 + 72) = MEMORY[0x277D837D0];
    *(v44 + 48) = v47;
    *(v44 + 56) = v49;
    v87 = sub_268B37B84();
    BYTE4(v96[0]) = 0;
    LODWORD(v96[0]) = 0;
    *(v96 + 5) = v97;
    HIBYTE(v96[0]) = v98;
    v96[1] = 0;
    v96[2] = 0;
    v96[3] = 1;
    memset(&v96[4], 0, 58);
    memcpy(v99, &v96[1], 0x51uLL);
    sub_2688C058C(v99, &qword_2802A5C88, qword_268B418C0);
    LODWORD(v96[1]) = 0;
    memset(&v96[2], 0, 72);
    LOBYTE(v96[11]) = 1;
    v0 = v96;
    v88 = v43;
    sub_268A4271C(v43);
    v50 = sub_268B18120();
    if (!v50)
    {
LABEL_24:
      v72 = sub_268B36E84();
      if (v73)
      {
        v74 = v72;
        v75 = v73;
      }

      else
      {
        v100[0] = *(v46 + v86);
        sub_268B38404();
        sub_268947F08();
        v74 = v76;
        v75 = v77;
      }

      memcpy(v100, v96, 0x5AuLL);
      v78 = swift_allocObject();
      v78[2] = v89;
      v78[3] = v90;
      v78[4] = v41;
      v78[5] = v74;
      v78[6] = v75;
      v78[7] = v91;
      v78[8] = v92;

      v79 = v41;

      sub_268A328D8(v100);

      memcpy(v95, v96, 0x5AuLL);
      sub_26896F3AC(v95);
      goto LABEL_30;
    }

    v28 = v50;
    v51 = sub_2688EFD0C(v50);
    v25 = 0;
    v33 = v28 & 0xC000000000000001;
    while (1)
    {
      if (v51 == v25)
      {
        goto LABEL_23;
      }

      if (v33)
      {
        v52 = MEMORY[0x26D625BD0](v25, v28);
      }

      else
      {
        if (v25 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v52 = *(v28 + 8 * v25 + 32);
      }

      v53 = v52;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v100[0] = v52;
      type metadata accessor for DeviceQuery();
      sub_26896F400(&qword_2802A5B68, 255, type metadata accessor for DeviceQuery);
      sub_268B37684();
      v0 = v54;

      if (v0)
      {

LABEL_23:

        BYTE1(v96[11]) = v51 != v25;
        v46 = v93;
        v41 = v94;
        goto LABEL_24;
      }

      ++v25;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_0_0();
  }

  v36(v33, v35, v25);
  v55 = sub_268B37A34();
  v56 = sub_268B37EE4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v57);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v55, v56, "SetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse Did not receive devices in intent");
    OUTLINED_FUNCTION_12();
  }

  v40(v33, v25);
  sub_268B36E84();
  if (!v58)
  {
    sub_268947F08();
  }

  v59 = __swift_project_boxed_opaque_existential_1(v89 + 12, v89[15]);
  (*(v86 + 104))(v85, *MEMORY[0x277D5BC00], v88);
  v60 = sub_268B350F4();
  v61 = OUTLINED_FUNCTION_17_8();
  __swift_storeEnumTagSinglePayload(v61, v62, 1, v60);
  v63 = *MEMORY[0x277D5B908];
  v64 = sub_268B34B94();
  OUTLINED_FUNCTION_4(v64);
  (*(v65 + 104))(v84, v63, v64);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v64);
  v69 = *v59;
  sub_2688F1FA4(v87, v83, &unk_2802A57B0, &unk_268B3CE00);
  v70 = OUTLINED_FUNCTION_17_8();
  if (__swift_getEnumTagSinglePayload(v70, v71, v60) == 1)
  {
    sub_2688C058C(v83, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    OUTLINED_FUNCTION_20_7();
    (*(v80 + 8))(v83, v60);
  }

  sub_2688E2B50();

  sub_2688C058C(v84, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v87, &unk_2802A57B0, &unk_268B3CE00);
  (*(v86 + 8))(v85, v88);
  sub_2688C2ECC();
  v81 = swift_allocError();
  *v82 = 104;
  v100[0] = v81;
  LOBYTE(v100[5]) = 1;
  v91(v100);
  sub_2688C058C(v100, &unk_2802A57C0, &qword_268B3BE00);
LABEL_30:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26896E0A8(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v124 = a7;
  v125 = a8;
  v122 = a5;
  v123 = a6;
  v126 = a4;
  v127 = a2;
  v121 = a3;
  v117 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v107 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v120 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v120);
  v115 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v107 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v107 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v113 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v112 = &v107 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v110 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v119 = &v107 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v107 - v30;
  MEMORY[0x28223BE20](v29);
  v111 = &v107 - v32;
  v33 = sub_268B34E24();
  v128 = *(v33 - 8);
  v129 = v33;
  v34 = *(v128 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v118 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v108 = &v107 - v37;
  v38 = sub_268B37A54();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v114 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v107 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v107 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = (&v107 - v50);
  sub_2688F1FA4(v117, &v107 - v50, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v51;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v38, qword_2802CDA10);
    (*(v39 + 16))(v47, v53, v38);
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v127;
    v58 = v108;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2688BB000, v54, v55, "SetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse failed to execute dialog", v59, 2u);
      MEMORY[0x26D6266E0](v59, -1, -1);
    }

    (*(v39 + 8))(v47, v38);
    v60 = __swift_project_boxed_opaque_existential_1(v57 + 12, v57[15]);
    (*(v128 + 104))(v58, *MEMORY[0x277D5BC00], v129);
    v61 = sub_268B350F4();
    v62 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v61);
    v63 = *MEMORY[0x277D5B8E0];
    v64 = sub_268B34B94();
    v65 = v112;
    (*(*(v64 - 8) + 104))(v112, v63, v64);
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v64);
    v66 = *v60;
    sub_2688F1FA4(v62, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v61) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v61 - 8) + 8))(v31, v61);
    }

    sub_2688E2B50();

    sub_2688C058C(v65, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v62, &unk_2802A57B0, &unk_268B3CE00);
    (*(v128 + 8))(v58, v129);
    v83 = __swift_project_boxed_opaque_existential_1(v57 + 12, v57[15]);
    sub_2688C2ECC();
    v84 = swift_allocError();
    *v85 = -63;
    v86 = *v83;
    sub_26894B450();

    v87 = swift_allocError();
    *v88 = -63;
    v130[0] = v87;
    v131 = 1;
    v124(v130);

    return sub_2688C058C(v130, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v51, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v67 = __swift_project_value_buffer(v38, qword_2802CDA10);
    v68 = *(v39 + 16);
    v108 = v67;
    v107 = v68;
    (v68)(v45);
    v69 = sub_268B37A34();
    v70 = sub_268B37ED4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2688BB000, v69, v70, "SetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse executed failure dialog creating output", v71, 2u);
      MEMORY[0x26D6266E0](v71, -1, -1);
    }

    v72 = *(v39 + 8);
    v112 = (v39 + 8);
    v72(v45, v38);
    v73 = __swift_project_boxed_opaque_existential_1(v127 + 12, v127[15]);
    (*(v128 + 104))(v118, *MEMORY[0x277D5BC00], v129);
    v117 = v17;
    v74 = v109;
    sub_2688F1FA4(v17, v109, &unk_2802A56E0, &unk_268B3CDF0);

    v75 = sub_268B350F4();
    v76 = *(v75 - 8);
    v77 = v119;
    (*(v76 + 32))(v119, v74, v75);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v75);
    v78 = sub_268B34B94();
    v79 = v113;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v78);
    v80 = *v73;
    v81 = v110;
    sub_2688F1FA4(v77, v110, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v75);
    v111 = v76;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v81, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v76 + 8))(v81, v75);
    }

    v90 = v114;
    v91 = v118;
    sub_2688E2B50();

    sub_2688C058C(v79, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v119, &unk_2802A57B0, &unk_268B3CE00);
    (*(v128 + 8))(v91, v129);
    v92 = v127;
    v93 = __swift_project_boxed_opaque_existential_1(v127 + 12, v127[15]);
    sub_2688C2ECC();
    v94 = swift_allocError();
    *v95 = 79;
    v96 = *v93;
    sub_26894B450();

    v107(v90, v108, v38);
    v97 = sub_268B37A34();
    v98 = sub_268B37ED4();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_2688BB000, v97, v98, "SetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse returning failure output", v99, 2u);
      MEMORY[0x26D6266E0](v99, -1, -1);
    }

    v72(v90, v38);
    v100 = v92[35];
    v101 = v92[36];
    __swift_project_boxed_opaque_existential_1(v92 + 32, v100);
    v102 = v117;
    v103 = v115;
    sub_2688F1FA4(v117, v115, &unk_2802A56E0, &unk_268B3CDF0);
    v104 = *(v103 + *(v120 + 48));
    v105 = v116;
    sub_268A82B50(v126, v116);
    v106 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v105, 0, 1, v106);
    (*(v101 + 40))(v103, v104, v105, v124, v125, v100, v101);

    sub_2688C058C(v105, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v102, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v111 + 8))(v103, v75);
  }
}

uint64_t *sub_26896EDD8()
{
  sub_2689542A4((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  return v0;
}

uint64_t sub_26896EE28()
{
  sub_26896EDD8();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

uint64_t sub_26896EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896EEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896F018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896F094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_26896F134()
{
  if (qword_2802A4D70 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD918;

  return v1;
}

uint64_t sub_26896F190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_26896F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_26896F234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896F2A0(uint64_t a1, uint64_t a2)
{
  result = sub_26896F400(&qword_2802A6508, a2, type metadata accessor for SetVolumeLevelHandleIntentStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26896F340()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26896F400(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26896F448()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v8);
  (*(v9 + 8))(v7);

  v10 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_26896F564(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_26896C7E4(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void OUTLINED_FUNCTION_21_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void *OUTLINED_FUNCTION_22_5()
{
  v2 = *(v0 + 120);

  return __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
}

uint64_t sub_26896F760@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v17 - v13);
  sub_2688F1FA4(v2, &v17 - v13, &qword_2802A6300, &unk_268B3BD80);
  result = swift_getEnumCaseMultiPayload();
  v16 = result;
  if (result == 1)
  {
    *a2 = *v14;
  }

  else
  {
    sub_2689186C8(v14, v8);
    a1(v8);
    result = sub_2688C058C(v8, &unk_2802A56E0, &unk_268B3CDF0);
  }

  *(a2 + 40) = v16 == 1;
  return result;
}

uint64_t sub_26896F8C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v68 = a8;
  v65 = a3;
  v66 = a4;
  v64 = a2;
  v9 = sub_268B35044();
  v10 = OUTLINED_FUNCTION_1(v9);
  v61 = v11;
  v62 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v57 - v15;
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v63 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - v24;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v27 = *(v19 + 16);
  v27(v25, v26, v16);
  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "VolumeLevelNeedsConfirmationStrategy.makePromptForConfirmation()", v30, 2u);
    MEMORY[0x26D6266E0](v30, -1, -1);
  }

  v67 = a9;

  v31 = *(v19 + 8);
  v31(v25, v16);
  v32 = v65 == 0x654C656D756C6F76 && v66 == 0xEB000000006C6576;
  if (v32 || (sub_268B38444() & 1) != 0)
  {
    v33 = v64;
    v34 = sub_268B18100();
    if (v34)
    {
      v35 = sub_2688EFD0C(v34);

      if (v35)
      {
        v36 = [v33 volumeLevel];
        if (v36)
        {
          v37 = v36;
          v38 = [v36 resolvedVolumeOutput];

          if (v38)
          {

            sub_2689702C8();
            v39 = v59;
            sub_2689D9C28();

            v41 = v61;
            v40 = v62;
            v42 = v58;
            (*(v61 + 16))(v58, v39, v62);
            v43 = (*(v41 + 80) + 40) & ~*(v41 + 80);
            v44 = swift_allocObject();
            v45 = v67;
            *(v44 + 2) = v68;
            *(v44 + 3) = v45;
            v46 = v60;
            *(v44 + 4) = v60;
            (*(v41 + 32))(&v44[v43], v42, v40);
            v47 = v46[21];
            v48 = v46[22];
            __swift_project_boxed_opaque_existential_1(v46 + 18, v47);

            sub_2689CE88C(0xD000000000000023, 0x8000000268B58690, sub_268972250, v44, v47, v48);

            return (*(v41 + 8))(v39, v40);
          }
        }
      }
    }

    v50 = v63;
    v27(v63, v26, v16);
    v51 = sub_268B37A34();
    v52 = sub_268B37EE4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2688BB000, v51, v52, "Could not find any devices or volume level in the intent for confirmation", v53, 2u);
      MEMORY[0x26D6266E0](v53, -1, -1);
    }

    v31(v50, v16);
    sub_2688C2ECC();
    v54 = swift_allocError();
    v56 = 108;
  }

  else
  {
    sub_2688C2ECC();
    v54 = swift_allocError();
    v56 = 110;
  }

  *v55 = v56;
  v69[0] = v54;
  v70 = 1;
  v68(v69);
  return sub_2688C058C(v69, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_26896FE14(uint64_t a1, void (*a2)(void *), uint64_t a3, void *a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v43 = a1;
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = sub_268B37A54();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  sub_2688F1FA4(v43, v17, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v17, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = v42;
    v26 = __swift_project_value_buffer(v42, qword_2802CDA10);
    v27 = v41;
    (*(v41 + 16))(v13, v26, v25);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2688BB000, v28, v29, "VolumeLevelNeedsConfirmationStrategy.makePromptForConfirmation Unable to generate dialog.", v30, 2u);
      MEMORY[0x26D6266E0](v30, -1, -1);
    }

    (*(v27 + 8))(v13, v25);
    sub_2688C2ECC();
    v31 = swift_allocError();
    *v32 = -72;
    v45[0] = v31;
    v46 = 1;
    a2(v45);
    return sub_2688C058C(v45, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v17, v24);
    v34 = v39[16];
    v35 = v39[17];
    __swift_project_boxed_opaque_existential_1(v39 + 13, v34);
    sub_2688F1FA4(v24, v22, &unk_2802A56E0, &unk_268B3CDF0);
    v36 = *&v22[*(v18 + 48)];
    v37 = sub_268B35044();
    (*(*(v37 - 8) + 16))(v9, v40, v37);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v37);
    (*(v35 + 16))(v22, v36, v9, a2, v44, v34, v35);

    sub_2688C058C(v9, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v24, &unk_2802A56E0, &unk_268B3CDF0);
    v38 = sub_268B350F4();
    return (*(*(v38 - 8) + 8))(v22, v38);
  }
}

uint64_t sub_2689702C8()
{
  v0 = sub_268B358D4();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B36554();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_268B36544();
  v12 = sub_268B36124();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_268B36114();
  sub_268B360F4();
  sub_268B358A4();
  sub_268B357B4();
  (*(v3 + 8))(v7, v0);
  sub_268B365D4();

  return v11;
}

uint64_t *sub_268970444()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  sub_2689542A4((v0 + 18));
  return v0;
}

uint64_t sub_268970484()
{
  sub_268970444();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_2689704E4()
{
  v0 = sub_268B35494();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v44 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for SettingsIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v40 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v20 = v11[2];
  v41 = v19;
  v42 = v20;
  (v20)(v18);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = v7;
    v24 = v23;
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "DefaultNeedsConfirmationStrategy.actionForInput()", v23, 2u);
    v7 = v38;
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  v25 = v11[1];
  v25(v18, v10);
  v26 = v44;
  sub_268B35414();
  sub_26897BBA8(v26, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2688C058C(v6, &qword_2802A5D40, &qword_268B3FFE0);
    return sub_268B34ED4();
  }

  else
  {
    v28 = v43;
    sub_26891E594(v6, v43);
    if (sub_26897E154())
    {
      v29 = v40;
      v42(v40, v41, v10);
      v30 = sub_268B37A34();
      v31 = sub_268B37F04();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2688BB000, v30, v31, "Cancelling due to confirmation value in intent", v32, 2u);
        MEMORY[0x26D6266E0](v32, -1, -1);
      }

      v25(v29, v10);
      sub_268B34EB4();
    }

    else if ((*(v28 + *(v7 + 40)) & 0xFE) == 2)
    {
      v33 = v39;
      v42(v39, v41, v10);
      v34 = sub_268B37A34();
      v35 = sub_268B37F04();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2688BB000, v34, v35, "No confirmation response in the intent, ignoring input", v36, 2u);
        MEMORY[0x26D6266E0](v36, -1, -1);
      }

      v25(v33, v10);
      sub_268B34ED4();
    }

    else
    {
      sub_268B34EC4();
    }

    return sub_26891E5F8(v28);
  }
}

uint64_t sub_2689709F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v96 = a8;
  v90 = sub_268B35434();
  v11 = *(v90 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6528, &qword_268B421F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v88 = &v81 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6530, &unk_268B3F850);
  v17 = *(*(v95 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v95);
  v91 = (&v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v87 = &v81 - v20;
  v82 = sub_268B35494();
  v21 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v97 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v81 - v25;
  v93 = type metadata accessor for SettingsIntent();
  v27 = *(*(v93 - 1) + 64);
  MEMORY[0x28223BE20](v93);
  v85 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_268B37A54();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = MEMORY[0x28223BE20](v29);
  v92 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v81 - v34;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v94 = a9;
  v36 = __swift_project_value_buffer(v29, qword_2802CDA10);
  v83 = v30[2];
  v84 = v36;
  v83(v35);
  v37 = sub_268B37A34();
  v38 = sub_268B37ED4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v86 = v30;
    v40 = v29;
    v41 = a7;
    v42 = v11;
    v43 = a2;
    v44 = v39;
    *v39 = 0;
    _os_log_impl(&dword_2688BB000, v37, v38, "DefaultNeedsConfirmationStrategy.parseConfirmationResponse()", v39, 2u);
    v45 = v44;
    a2 = v43;
    v11 = v42;
    a7 = v41;
    v29 = v40;
    v30 = v86;
    MEMORY[0x26D6266E0](v45, -1, -1);
  }

  v48 = v30[1];
  v47 = v30 + 1;
  v46 = v48;
  (v48)(v35, v29);
  v49 = v97;
  sub_268B35414();
  sub_26897BBA8(v49, v26);
  v50 = v93;
  if (__swift_getEnumTagSinglePayload(v26, 1, v93) == 1)
  {
    sub_2688C058C(v26, &qword_2802A5D40, &qword_268B3FFE0);
    v51 = v92;
    (v83)(v92, v84, v29);
    v52 = v89;
    v53 = a7;
    v54 = v90;
    (*(v11 + 16))(v89, v53, v90);
    v55 = sub_268B37A34();
    v56 = sub_268B37EE4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v11;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v86 = v47;
      v60 = v59;
      v98 = v59;
      *v58 = 136315138;
      v93 = v46;
      sub_268B35414();
      v61 = sub_268B37C24();
      v62 = v52;
      v63 = v61;
      v65 = v64;
      (*(v57 + 8))(v62, v54);
      v66 = sub_26892CDB8(v63, v65, &v98);

      *(v58 + 4) = v66;
      _os_log_impl(&dword_2688BB000, v55, v56, "Unexpected parse: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x26D6266E0](v60, -1, -1);
      MEMORY[0x26D6266E0](v58, -1, -1);

      (v93)(v92, v29);
    }

    else
    {

      (*(v11 + 8))(v52, v54);
      (v46)(v51, v29);
    }

    sub_2688C2ECC();
    v71 = swift_allocError();
    *v72 = 4;
    v73 = v91;
    *v91 = v71;
    swift_storeEnumTagMultiPayload();
    v96(v73);
    return sub_2688C058C(v73, &qword_2802A6530, &unk_268B3F850);
  }

  else
  {
    v67 = v85;
    sub_26891E594(v26, v85);
    if (*(v67 + v50[10]) - 2 >= 2)
    {
      v75 = v88;
      if (*(v67 + v50[10]))
      {
        v76 = MEMORY[0x277D5BED0];
      }

      else
      {
        v76 = MEMORY[0x277D5BED8];
      }

      v77 = *v76;
      v78 = sub_268B351D4();
      (*(*(v78 - 8) + 104))(v75, v77, v78);
      v69 = v75;
      v70 = 0;
      v68 = v78;
    }

    else
    {
      v68 = sub_268B351D4();
      v69 = v88;
      v70 = 1;
    }

    __swift_storeEnumTagSinglePayload(v69, v70, 1, v68);
    type metadata accessor for SetVolumeLevelIntent();
    v79 = a2;
    v80 = v87;
    sub_268B352A4();
    swift_storeEnumTagMultiPayload();
    v96(v80);
    sub_2688C058C(v80, &qword_2802A6530, &unk_268B3F850);
    return sub_26891E5F8(v67);
  }
}

uint64_t sub_2689711A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return MEMORY[0x2821B9E48](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

void sub_26897128C()
{
  type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  JUMPOUT(0x26D622250);
}

uint64_t sub_26897133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return MEMORY[0x2821B9E68](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_2689713EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return MEMORY[0x2821B9E60](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268971484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return MEMORY[0x2821B9E70](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268971540(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v37 = a3;
  v38 = a6;
  v13 = sub_268B37A54();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_2802CDA10);
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_268B37A34();
  v20 = sub_268B37ED4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v8;
    v22 = a2;
    v23 = a7;
    v24 = a1;
    v25 = a4;
    v26 = v21;
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "DefaultNeedsConfirmationStrategy.makeConfirmationRejectedResponse()", v21, 2u);
    v27 = v26;
    a4 = v25;
    a1 = v24;
    a7 = v23;
    a2 = v22;
    v8 = v36;
    MEMORY[0x26D6266E0](v27, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v28 = sub_2688E1B54(2, 0, v37, a4, a2, 0x6E776F6E6B6E75, 0xE700000000000000, 0);
  v30 = v29;
  v31 = *(v8 + 56);
  v32 = swift_allocObject();
  v32[2] = v38;
  v32[3] = a7;
  v32[4] = v8;
  v32[5] = a1;
  v32[6] = a2;
  v32[7] = v28;
  v32[8] = v30;

  v33 = a2;
  sub_268ABDE34(sub_268972164, v32);
}

uint64_t sub_2689717C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return MEMORY[0x2821BB9B8](a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_26897184C()
{
  type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return sub_268B353B4();
}

uint64_t sub_2689718E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_2689719C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_268971B04(uint64_t a1)
{
  result = sub_268971B48(&qword_2802A6520);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268971B48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VolumeLevelNeedsConfirmationStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268971B88(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  v7 = a4;
  sub_26896F760(sub_268972180, v6);
  a2(v6);
  return sub_2688C058C(v6, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_268971C1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v51 = a5;
  v52 = a6;
  v49 = a3;
  v50 = a4;
  v56 = a1;
  v53 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v47 - v25;
  v27 = sub_268B34E24();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2[11];
  v54 = a2;
  v33 = __swift_project_boxed_opaque_existential_1(a2 + 8, v32);
  v34 = *MEMORY[0x277D5BBD0];
  v35 = *(v28 + 104);
  v48 = v27;
  v35(v31, v34, v27);
  sub_2688F1FA4(v56, v19, &unk_2802A56E0, &unk_268B3CDF0);

  v36 = sub_268B350F4();
  v37 = *(v36 - 8);
  (*(v37 + 32))(v26, v19, v36);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v36);
  v38 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v38);
  v39 = *v33;
  sub_2688F1FA4(v26, v24, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v24, 1, v36) == 1)
  {
    sub_2688C058C(v24, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v37 + 8))(v24, v36);
  }

  sub_2688E2B50();

  sub_2688C058C(v14, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v26, &unk_2802A57B0, &unk_268B3CE00);
  (*(v28 + 8))(v31, v48);
  v40 = v54[6];
  __swift_project_boxed_opaque_existential_1(v54 + 2, v54[5]);
  sub_268B34CA4();
  v41 = sub_268B35044();
  v42 = v55;
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v41);
  v43 = sub_268B354F4();
  memset(v57, 0, sizeof(v57));
  v58 = 0;
  v44 = MEMORY[0x277D5C1D8];
  v45 = v53;
  v53[3] = v43;
  v45[4] = v44;
  __swift_allocate_boxed_opaque_existential_1(v45);
  sub_268B34EE4();
  sub_2688C058C(v57, &unk_2802A5800, &unk_268B3CE10);
  return sub_2688C058C(v42, &qword_2802A57F0, &qword_268B3DDB0);
}

uint64_t sub_26897210C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_268972164(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  return sub_268972104(a1, *(v1 + 16), *(v1 + 24), (v1 + 32));
}

uint64_t sub_268972190()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_268972250(uint64_t a1)
{
  v3 = *(sub_268B35044() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_26896FE14(a1, v4, v5, v6, v7);
}

uint64_t sub_2689722C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v33 = a6;
  v37 = a7;
  v38 = a8;
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v35 = a1;
  v36 = a2;
  OUTLINED_FUNCTION_3_8();
  v13 = v12;
  v15 = *(v14 + 64);
  v34 = a10;
  MEMORY[0x28223BE20](v16);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  v19 = OUTLINED_FUNCTION_19_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v33 - v24;
  sub_26894D5AC(v33, &v33 - v24, &unk_2802A7360, &qword_268B3F860);
  (*(v13 + 16))(v17, v11, a9);
  v26 = (*(v21 + 80) + 64) & ~*(v21 + 80);
  v27 = (v23 + *(v13 + 80) + v26) & ~*(v13 + 80);
  v28 = swift_allocObject();
  v29 = v34;
  *(v28 + 2) = a9;
  *(v28 + 3) = v29;
  v30 = v38;
  *(v28 + 4) = v37;
  *(v28 + 5) = v30;
  v31 = v36;
  *(v28 + 6) = v35;
  *(v28 + 7) = v31;
  sub_268972EA0(v25, &v28[v26]);
  (*(v13 + 32))(&v28[v27], v17, a9);

  sub_268B36D44();
}

uint64_t sub_268972504(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void (*a4)(char *, char *, uint64_t), unint64_t a5, _DWORD *a6, uint64_t *a7, char *a8)
{
  v70 = a8;
  v71 = a7;
  v68 = a5;
  v69 = a6;
  v72 = a4;
  v75 = a3;
  v76 = a2;
  v77 = sub_268B37A54();
  v74 = *(v77 - 8);
  v9 = v74[8];
  v10 = MEMORY[0x28223BE20](v77);
  v73 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - v12;
  v14 = sub_268B37134();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6538, &unk_268B3F868);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v68 - v24);
  sub_26894D5AC(a1, &v68 - v24, &qword_2802A6538, &unk_268B3F868);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v15 + 32))(v21, v25, v14);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v27 = v77;
    v28 = __swift_project_value_buffer(v77, qword_2802CDA10);
    v29 = v74;
    (v74[2])(v13, v28, v27);
    v72 = *(v15 + 16);
    v73 = (v15 + 16);
    v72(v19, v21, v14);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v69 = v32;
      v71 = swift_slowAlloc();
      v78 = v71;
      *v32 = 136446210;
      sub_268975F38(&qword_2802A6540, MEMORY[0x277D5F7C0]);
      LODWORD(v68) = v31;
      v33 = sub_268B384A4();
      v35 = v34;
      v70 = v13;
      v36 = *(v15 + 8);
      v36(v19, v14);
      v37 = sub_26892CDB8(v33, v35, &v78);

      v38 = v69;
      *(v69 + 1) = v37;
      v39 = v38;
      _os_log_impl(&dword_2688BB000, v30, v68, "Error when getting language options: %{public}s", v38, 0xCu);
      v40 = v71;
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x26D6266E0](v40, -1, -1);
      MEMORY[0x26D6266E0](v39, -1, -1);

      v41 = v36;
      (v29[1])(v70, v77);
    }

    else
    {

      v41 = *(v15 + 8);
      v41(v19, v14);
      (v29[1])(v13, v27);
    }

    sub_268975F38(&qword_2802A6540, MEMORY[0x277D5F7C0]);
    v50 = swift_allocError();
    v72(v51, v21, v14);
    v76(v50, 2);

    return (v41)(v21, v14);
  }

  else
  {
    v42 = *v25;
    v43 = v68;
    if (v68)
    {
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v68 - 4) = v72;
      *(&v68 - 3) = v43;
      v44 = v69;
      *(&v68 - 2) = v69;

      sub_2688C90CC();
      v46 = v45;
      v47 = v77;
      v49 = v73;
      v48 = v74;
    }

    else
    {
      v53 = *v25;

      v46 = v42;
      v47 = v77;
      v49 = v73;
      v48 = v74;
      v44 = v69;
    }

    v54 = sub_268972FF0(v46, v44);

    v55 = qword_2802A4F30;

    if (v55 != -1)
    {
      swift_once();
    }

    v56 = __swift_project_value_buffer(v47, qword_2802CDA10);
    (v48[2])(v49, v56, v47);

    v57 = sub_268B37A34();
    v58 = sub_268B37EC4();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v78 = v74;
      *v59 = 134218498;
      *(v59 + 4) = *(v42 + 16);

      *(v59 + 12) = 2082;
      if (v43)
      {
        v61 = v72;
      }

      else
      {
        v61 = 0x3E6C696E3CLL;
      }

      v62 = v48;
      if (v43)
      {
        v63 = v43;
      }

      else
      {
        v63 = 0xE500000000000000;
      }

      v64 = sub_26892CDB8(v61, v63, &v78);

      *(v59 + 14) = v64;
      *(v59 + 22) = 2114;
      sub_268B372A4();
      v65 = sub_268B37CE4();
      *(v59 + 24) = v65;
      *v60 = v65;
      _os_log_impl(&dword_2688BB000, v57, v58, "Filtered %ld options against %{public}s to: %{public}@", v59, 0x20u);
      sub_26894DD8C(v60, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v60, -1, -1);
      v66 = v74;
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x26D6266E0](v66, -1, -1);
      MEMORY[0x26D6266E0](v59, -1, -1);

      (v62[1])(v73, v77);
    }

    else
    {

      (v48[1])(v49, v47);
    }

    v67 = *(v54 + 2);

    if (v67)
    {
      v76(v54, 1);
    }

    else
    {
      v76(v42, 0);
    }
  }
}

uint64_t sub_268972D28()
{
  v1 = *(v0 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  OUTLINED_FUNCTION_19_0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 64) & ~v4;
  OUTLINED_FUNCTION_3_8();
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 5);

  v14 = *(v0 + 7);

  v15 = sub_268B37704();
  if (!__swift_getEnumTagSinglePayload(&v0[v7], 1, v15))
  {
    OUTLINED_FUNCTION_70(v15);
    (*(v16 + 8))(&v0[v7], v15);
  }

  v17 = v4 | v10;
  v18 = (v7 + v6 + v10) & ~v10;
  (*(v9 + 8))(&v0[v18], v1);

  return MEMORY[0x2821FE8E8](v0, v18 + v12, v17 | 7);
}

uint64_t sub_268972EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268972F10(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  return sub_268972504(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), (v1 + v10), (v1 + ((v10 + *(v9 + 64) + *(*(v3 - 1) + 80)) & ~*(*(v3 - 1) + 80))), v3);
}

char *sub_268972FF0(char *a1, void (**a2)(char *, uint64_t))
{
  v143 = sub_268B372A4();
  v141 = *(v143 - 8);
  v4 = *(v141 + 64);
  v5 = MEMORY[0x28223BE20](v143);
  v124 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v130 = &v119 - v7;
  v8 = sub_268B37704();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v140 = (&v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v142 = &v119 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  v14 = *(*(v135 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v135);
  v138 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v119 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v119 - v20;
  v22 = sub_268B37A54();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v22);
  v127 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v125 = &v119 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v126 = &v119 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v131 = &v119 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v119 - v33;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v22, qword_2802CDA10);
  v36 = v23[2];
  v132 = v35;
  v133 = v36;
  v134 = v23 + 2;
  (v36)(v34);
  v139 = a2;
  sub_26894D5AC(a2, v21, &unk_2802A7360, &qword_268B3F860);

  v37 = sub_268B37A34();
  v38 = sub_268B37ED4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v128 = v9;
    v40 = v39;
    v41 = swift_slowAlloc();
    v129 = v8;
    v123 = v41;
    v144 = v41;
    *v40 = 136446466;
    v136 = v23;
    v137 = v22;
    sub_26894D5AC(v21, v19, &unk_2802A7360, &qword_268B3F860);
    v42 = sub_268B37C24();
    v44 = v43;
    sub_26894DD8C(v21, &unk_2802A7360, &qword_268B3F860);
    v45 = sub_26892CDB8(v42, v44, &v144);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2082;
    v46 = v143;
    v47 = MEMORY[0x26D6256F0](a1, v143);
    v49 = sub_26892CDB8(v47, v48, &v144);

    *(v40 + 14) = v49;
    v23 = v136;
    v22 = v137;
    _os_log_impl(&dword_2688BB000, v37, v38, "PlaybackControlling#filterOptionsByCharacteristic using characteristic: %{public}s to filter language options: %{public}s", v40, 0x16u);
    v50 = v123;
    swift_arrayDestroy();
    v8 = v129;
    MEMORY[0x26D6266E0](v50, -1, -1);
    v51 = v40;
    v9 = v128;
    MEMORY[0x26D6266E0](v51, -1, -1);

    v52 = v23[1];
    v52(v34, v22);
  }

  else
  {

    sub_26894DD8C(v21, &unk_2802A7360, &qword_268B3F860);
    v52 = v23[1];
    v52(v34, v22);
    v46 = v143;
  }

  v53 = v138;
  sub_26894D5AC(v139, v138, &unk_2802A7360, &qword_268B3F860);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v8);
  v55 = v142;
  v56 = v140;
  if (EnumTagSinglePayload == 1)
  {
    sub_26894DD8C(v53, &unk_2802A7360, &qword_268B3F860);

    return a1;
  }

  (*(v9 + 32))(v142, v53, v8);
  v135 = *(a1 + 2);
  if (v135 < 2)
  {
    v71 = *(v9 + 8);

    v71(v55, v8);
    return a1;
  }

  v123 = v52;
  v136 = v23;
  v137 = v22;
  v57 = *(v9 + 104);
  v57(v56, *MEMORY[0x277D5F938], v8);
  v58 = sub_268920988(v55, v56);
  v61 = *(v9 + 8);
  v60 = v9 + 8;
  v59 = v61;
  (v61)(v56, v8);
  if (v58 & 1) != 0 || (v57(v56, *MEMORY[0x277D5F940], v8), v62 = sub_268920988(v55, v56), (v59)(v56, v8), (v62))
  {
    v63 = v131;
    v64 = v137;
    v133(v131, v132, v137);
    v65 = sub_268B37A34();
    v66 = sub_268B37ED4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2688BB000, v65, v66, "PlaybackControlling#filterOptionsByCharacteristic returning options filtered by CC/SDH", v67, 2u);
      v68 = v67;
      v64 = v137;
      MEMORY[0x26D6266E0](v68, -1, -1);
    }

    v69 = v123(v63, v64);
    MEMORY[0x28223BE20](v69);
    *(&v119 - 2) = v55;

    sub_2688C90CC();
    a1 = v70;
    (v59)(v55, v8);
    return a1;
  }

  v57(v56, *MEMORY[0x277D5F948], v8);
  v73 = sub_268920988(v55, v56);
  v131 = v59;
  (v59)(v56, v8);
  if (v73)
  {
    v128 = v60;
    v129 = v8;
    v74 = 0;
    v140 = *(v141 + 16);
    v75 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v76 = *(v141 + 72);
    v121 = (v141 + 32);
    v141 += 16;
    v139 = (v141 - 8);
    v122 = a1;
    v120 = v75;
    v77 = &a1[v75];
    v127 = MEMORY[0x277D84F90];
    v138 = v76;
    v119 = &a1[v75];
LABEL_18:
    v78 = ~v74;
    v79 = &v77[v76 * v74];
    v80 = v135 - v74;
    v81 = v130;
    if (v135 == v74)
    {
LABEL_36:
      a1 = v127;
      if (*(v127 + 2))
      {
        v101 = v126;
        v102 = v137;
        v133(v126, v132, v137);
        v103 = sub_268B37A34();
        v104 = sub_268B37ED4();
        v105 = os_log_type_enabled(v103, v104);
        v106 = v129;
        v107 = v131;
        if (v105)
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&dword_2688BB000, v103, v104, "PlaybackControlling#filterOptionsByCharacteristic returning options filtered by subtitles", v108, 2u);
          v109 = v108;
          v102 = v137;
          MEMORY[0x26D6266E0](v109, -1, -1);
        }

        v123(v101, v102);
        v107(v142, v106);
      }

      else
      {

        v110 = v125;
        v111 = v137;
        v133(v125, v132, v137);
        v112 = sub_268B37A34();
        v113 = sub_268B37ED4();
        v114 = os_log_type_enabled(v112, v113);
        v115 = v129;
        v116 = v131;
        if (v114)
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_2688BB000, v112, v113, "PlaybackControlling#filterOptionsByCharacteristic options empty after filtering by subtitles, returning all options", v117, 2u);
          v118 = v117;
          v111 = v137;
          MEMORY[0x26D6266E0](v118, -1, -1);
        }

        v123(v110, v111);
        a1 = v122;

        v116(v142, v115);
      }

      return a1;
    }

    while (1)
    {
      v140(v81, v79, v46);
      v82 = *(sub_268B37244() + 16);

      if (v82)
      {
        sub_268B37244();
        v144 = sub_268B37274();
        v145 = v83;
        MEMORY[0x28223BE20](v144);
        *(&v119 - 2) = &v144;
        v84 = sub_268ACD018();

        if (v84)
        {
          goto LABEL_22;
        }

        sub_268B37244();
        v144 = sub_268B37264();
        v145 = v85;
        MEMORY[0x28223BE20](v144);
        *(&v119 - 2) = &v144;
        v86 = sub_268ACD018();

        if (v86)
        {
LABEL_22:
          v46 = v143;
        }

        else
        {
          sub_268B37244();
          v144 = sub_268B37254();
          v145 = v87;
          MEMORY[0x28223BE20](v144);
          *(&v119 - 2) = &v144;
          v88 = sub_268ACD018();

          if (!v88)
          {
            v89 = *v121;
            v46 = v143;
            (*v121)(v124, v130, v143);
            v90 = v127;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v146 = v90;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v92 = *(v90 + 2);
              sub_26894482C();
              v90 = v146;
            }

            v77 = v119;
            v93 = *(v90 + 2);
            if (v93 >= *(v90 + 3) >> 1)
            {
              sub_26894482C();
              v90 = v146;
            }

            v74 = -v78;
            *(v90 + 2) = v93 + 1;
            v127 = v90;
            v94 = &v90[v120 + v93 * v138];
            v76 = v138;
            v89(v94, v124, v46);
            goto LABEL_18;
          }

          v46 = v143;
          v81 = v130;
        }

        v76 = v138;
      }

      (*v139)(v81, v46);
      --v78;
      v79 += v76;
      if (!--v80)
      {
        goto LABEL_36;
      }
    }
  }

  v95 = v127;
  v96 = v137;
  v133(v127, v132, v137);
  v97 = sub_268B37A34();
  v98 = sub_268B37ED4();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_2688BB000, v97, v98, "PlaybackControlling#filterOptionsByCharacteristic unknown characteristic, returning all options", v99, 2u);
    v100 = v99;
    v96 = v137;
    MEMORY[0x26D6266E0](v100, -1, -1);
  }

  v123(v95, v96);

  (v131)(v55, v8);
  return a1;
}

uint64_t sub_268973E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a6;
  v33 = a8;
  v31 = a5;
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  v12 = OUTLINED_FUNCTION_19_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v31 - v17;
  OUTLINED_FUNCTION_3_8();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v24 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24, v8, a7);
  sub_26894D5AC(a4, v18, &unk_2802A7360, &qword_268B3F860);
  v25 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v26 = (v22 + v25 + *(v14 + 80)) & ~*(v14 + 80);
  v27 = swift_allocObject();
  v29 = v32;
  v28 = v33;
  *(v27 + 2) = a7;
  *(v27 + 3) = v28;
  *(v27 + 4) = v31;
  *(v27 + 5) = v29;
  (*(v20 + 32))(&v27[v25], v24, a7);
  sub_268972EA0(v18, &v27[v26]);

  sub_268B36D44();
}

uint64_t sub_268974084(uint64_t *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, void (**a5)(char *, uint64_t), uint64_t (*a6)(char *, uint64_t), uint64_t a7)
{
  v235 = a7;
  v232 = a6;
  v233 = a4;
  v237 = a5;
  v240 = a2;
  v241 = a3;
  v242 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6548, &qword_268B3F878);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v222 = &v212 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6550, &qword_268B3F880);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v214 = &v212 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v226 = &v212 - v14;
  v234 = sub_268B346F4();
  v231 = *(v234 - 8);
  v15 = v231[8];
  MEMORY[0x28223BE20](v234);
  v230 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_268B34714();
  v239 = *(v236 - 8);
  v17 = *(v239 + 8);
  v18 = MEMORY[0x28223BE20](v236);
  v220 = &v212 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v228 = &v212 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6558, &qword_268B3F888);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v229 = &v212 - v23;
  v24 = sub_268B372A4();
  v25 = *(v24 - 1);
  v245 = v24;
  v246 = v25;
  v26 = *(v25 + 8);
  v27 = MEMORY[0x28223BE20](v24);
  v213 = &v212 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v212 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v221 = &v212 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v223 = &v212 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v217 = &v212 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v212 - v39;
  MEMORY[0x28223BE20](v38);
  v219 = &v212 - v41;
  v42 = sub_268B37A54();
  v243 = *(v42 - 8);
  v244 = v42;
  v43 = *(v243 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v227 = &v212 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v215 = &v212 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v216 = &v212 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v224 = &v212 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v225 = &v212 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v218 = &v212 - v55;
  MEMORY[0x28223BE20](v54);
  v238 = &v212 - v56;
  v57 = sub_268B37134();
  v58 = *(v57 - 8);
  v59 = *(v58 + 8);
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v212 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v64 = &v212 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6538, &unk_268B3F868);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v68 = &v212 - v67;
  sub_26894D5AC(v242, &v212 - v67, &qword_2802A6538, &unk_268B3F868);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v58 + 4))(v64, v68, v57);
    if (qword_2802A4F30 != -1)
    {
LABEL_59:
      swift_once();
    }

    v69 = v244;
    v70 = __swift_project_value_buffer(v244, qword_2802CDA10);
    v71 = v243;
    v72 = v238;
    (*(v243 + 16))(v238, v70, v69);
    v245 = *(v58 + 2);
    v246 = v58 + 16;
    v245(v62, v64, v57);
    v73 = sub_268B37A34();
    v74 = sub_268B37EE4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v239 = v75;
      v242 = swift_slowAlloc();
      v247 = v242;
      *v75 = 136446210;
      sub_268975F38(&qword_2802A6540, MEMORY[0x277D5F7C0]);
      LODWORD(v237) = v74;
      v76 = sub_268B384A4();
      v78 = v77;
      v79 = *(v58 + 1);
      v79(v62, v57);
      v80 = sub_26892CDB8(v76, v78, &v247);

      v81 = v239;
      *(v239 + 4) = v80;
      v82 = v81;
      _os_log_impl(&dword_2688BB000, v73, v237, "Error when getting language options: %{public}s", v81, 0xCu);
      v83 = v242;
      __swift_destroy_boxed_opaque_existential_0Tm(v242);
      MEMORY[0x26D6266E0](v83, -1, -1);
      v84 = v240;
      MEMORY[0x26D6266E0](v82, -1, -1);

      (*(v71 + 8))(v238, v244);
    }

    else
    {

      v79 = *(v58 + 1);
      v79(v62, v57);
      (*(v71 + 8))(v72, v244);
      v84 = v240;
    }

    sub_268975F38(&qword_2802A6540, MEMORY[0x277D5F7C0]);
    v102 = swift_allocError();
    v245(v103, v64, v57);
    v84(v102, 2);

    return (v79)(v64, v57);
  }

  v238 = v31;
  v57 = *v68;
  v85 = *(*v68 + 16);
  v58 = v245;
  if (!v85)
  {
LABEL_17:
    v242 = sub_268972FF0(v57, v237);

    v92 = objc_opt_self();
    v93 = [v92 autoupdatingCurrentLocale];
    v94 = v228;
    sub_268B346A4();

    v95 = v230;
    sub_268B34704();
    v96 = (v239 + 8);
    v97 = *(v239 + 1);
    v97(v94, v236);
    v98 = v229;
    sub_268B346E4();
    (v231[1])(v95, v234);
    v99 = sub_268B34694();
    if (__swift_getEnumTagSinglePayload(v98, 1, v99) == 1)
    {
      sub_26894DD8C(v98, &qword_2802A6558, &qword_268B3F888);
      v100 = v240;
      v101 = v244;
LABEL_46:
      v183 = v227;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v184 = __swift_project_value_buffer(v101, qword_2802CDA10);
      (*(v243 + 16))(v183, v184, v101);

      v185 = sub_268B37A34();
      v186 = sub_268B37F04();

      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v187 = 138412290;
        v189 = sub_268B37CE4();
        *(v187 + 4) = v189;
        *v188 = v189;
        _os_log_impl(&dword_2688BB000, v185, v186, "Unable to autoselect a language, returning filteredOptions: %@", v187, 0xCu);
        sub_26894DD8C(v188, &qword_2802A6420, &unk_268B3C680);
        MEMORY[0x26D6266E0](v188, -1, -1);
        MEMORY[0x26D6266E0](v187, -1, -1);
      }

      (*(v243 + 8))(v183, v101);
      v100(v242, 0);
    }

    v230 = v97;
    v231 = v92;
    v239 = v96;
    v235 = sub_268B34684();
    v106 = v105;
    (*(*(v99 - 8) + 8))(v98, v99);
    v101 = v244;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v107 = __swift_project_value_buffer(v101, qword_2802CDA10);
    v108 = *(v243 + 16);
    v109 = v225;
    v233 = v243 + 16;
    v234 = v107;
    v108(v225);

    v110 = sub_268B37A34();
    v111 = sub_268B37F04();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v247 = v113;
      v114 = v235;
      v115 = v243;
      *v112 = 136446210;
      *(v112 + 4) = sub_26892CDB8(v114, v106, &v247);
      _os_log_impl(&dword_2688BB000, v110, v111, "Searching for matching language using systemLanguage: %{public}s", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v113);
      v116 = v113;
      v101 = v244;
      MEMORY[0x26D6266E0](v116, -1, -1);
      MEMORY[0x26D6266E0](v112, -1, -1);

      v232 = *(v115 + 8);
      v117 = v232(v109, v101);
    }

    else
    {

      v232 = *(v243 + 8);
      v117 = v232(v109, v101);
      v114 = v235;
    }

    MEMORY[0x28223BE20](v117);
    *(&v212 - 4) = v114;
    *(&v212 - 3) = v106;
    *(&v212 - 2) = v237;
    v118 = v226;
    sub_2688C9440();
    v119 = v245;
    if (__swift_getEnumTagSinglePayload(v118, 1, v245) == 1)
    {
      sub_26894DD8C(v118, &qword_2802A6550, &qword_268B3F880);
      v120 = [v231 autoupdatingCurrentLocale];
      v121 = v220;
      sub_268B346A4();

      v122 = v222;
      sub_268B346D4();
      (v230)(v121, v236);
      v123 = sub_268B346C4();
      if (__swift_getEnumTagSinglePayload(v122, 1, v123) == 1)
      {

        sub_26894DD8C(v122, &qword_2802A6548, &qword_268B3F878);
LABEL_45:
        v100 = v240;
        goto LABEL_46;
      }

      v156 = sub_268B34684();
      v158 = v157;
      (*(*(v123 - 8) + 8))(v122, v123);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
      v159 = swift_allocObject();
      *(v159 + 16) = xmmword_268B3BBD0;
      *(v159 + 32) = v114;
      *(v159 + 40) = v106;
      *(v159 + 48) = v156;
      *(v159 + 56) = v158;
      v247 = v159;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
      sub_268975ED4();
      v160 = sub_268B37BA4();
      v162 = v161;

      v163 = sub_268B36C14();
      v164 = sub_26892E200(v160, v162, v163);
      v166 = v165;

      if (!v166)
      {

        v101 = v244;
        goto LABEL_45;
      }

      v167 = v216;
      v168 = v244;
      v239 = v108;
      (v108)(v216, v234, v244);

      v169 = sub_268B37A34();
      v170 = sub_268B37F04();

      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        LODWORD(v231) = v170;
        v172 = v171;
        v247 = swift_slowAlloc();
        v236 = v164;
        v173 = v247;
        *v172 = 136315650;
        v174 = sub_26892CDB8(v235, v106, &v247);

        *(v172 + 4) = v174;
        *(v172 + 12) = 2082;
        v175 = sub_26892CDB8(v160, v162, &v247);

        *(v172 + 14) = v175;
        *(v172 + 22) = 2082;
        *(v172 + 24) = sub_26892CDB8(v236, v166, &v247);
        _os_log_impl(&dword_2688BB000, v169, v231, "Unable to find matching language using system language: %s. Searching for match with system language/region: %{public}s using mapped languageIdentifier: %{public}s", v172, 0x20u);
        swift_arrayDestroy();
        v176 = v173;
        v164 = v236;
        MEMORY[0x26D6266E0](v176, -1, -1);
        MEMORY[0x26D6266E0](v172, -1, -1);

        v177 = v216;
      }

      else
      {

        v177 = v167;
      }

      v190 = v232(v177, v168);
      v101 = v168;
      v119 = v245;
      v191 = v215;
      MEMORY[0x28223BE20](v190);
      *(&v212 - 4) = v164;
      *(&v212 - 3) = v166;
      *(&v212 - 2) = v237;
      v192 = v214;
      sub_2688C9440();

      if (__swift_getEnumTagSinglePayload(v192, 1, v119) == 1)
      {
        sub_26894DD8C(v192, &qword_2802A6550, &qword_268B3F880);
        goto LABEL_45;
      }

      v193 = v246;
      v194 = v238;
      (*(v246 + 4))(v238, v192, v119);
      (v239)(v191, v234, v101);
      v195 = v213;
      v245 = *(v193 + 2);
      v245(v213, v194, v119);
      v196 = sub_268B37A34();
      v197 = sub_268B37F04();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v247 = v199;
        *v198 = 136446210;
        sub_268975F38(&qword_2802A7370, MEMORY[0x277D5F818]);
        v200 = sub_268B38404();
        v201 = v195;
        v203 = v202;
        v134 = *(v246 + 1);
        v134(v201, v119);
        v204 = sub_26892CDB8(v200, v203, &v247);

        *(v198 + 4) = v204;
        _os_log_impl(&dword_2688BB000, v196, v197, "Auto selected %{public}s", v198, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v199);
        MEMORY[0x26D6266E0](v199, -1, -1);
        v205 = v198;
        v193 = v246;
        MEMORY[0x26D6266E0](v205, -1, -1);

        v206 = v244;
        v207 = v215;
      }

      else
      {

        v134 = *(v193 + 1);
        v134(v195, v119);
        v207 = v191;
        v206 = v101;
      }

      v232(v207, v206);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A70, qword_268B3F890);
      v208 = *(v193 + 9);
      v209 = (v193[80] + 32) & ~v193[80];
      v210 = swift_allocObject();
      *(v210 + 16) = xmmword_268B3BBC0;
      v211 = v238;
      v245(v210 + v209, v238, v119);
      v240(v210, 1);

      v181 = v211;
    }

    else
    {

      v124 = v246;
      v125 = v223;
      (*(v246 + 4))(v223, v118, v119);
      (v108)(v224, v234, v101);
      v126 = v221;
      v242 = *(v124 + 2);
      (v242)(v221, v125, v119);
      v127 = sub_268B37A34();
      v128 = sub_268B37F04();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v247 = v130;
        *v129 = 136446210;
        sub_268975F38(&qword_2802A7370, MEMORY[0x277D5F818]);
        v131 = sub_268B38404();
        v133 = v132;
        v134 = *(v246 + 1);
        v134(v126, v119);
        v135 = sub_26892CDB8(v131, v133, &v247);
        v125 = v223;

        *(v129 + 4) = v135;
        _os_log_impl(&dword_2688BB000, v127, v128, "Auto selected %{public}s", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v130);
        MEMORY[0x26D6266E0](v130, -1, -1);
        v136 = v129;
        v124 = v246;
        MEMORY[0x26D6266E0](v136, -1, -1);

        v137 = v244;
        v138 = v224;
      }

      else
      {

        v134 = *(v124 + 1);
        v134(v126, v119);
        v138 = v224;
        v137 = v101;
      }

      v232(v138, v137);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A70, qword_268B3F890);
      v178 = *(v124 + 9);
      v179 = (v124[80] + 32) & ~v124[80];
      v180 = swift_allocObject();
      *(v180 + 16) = xmmword_268B3BBC0;
      (v242)(v180 + v179, v125, v119);
      v240(v180, 1);

      v181 = v125;
    }

    v182 = v119;
    return (v134)(v181, v182);
  }

  v62 = 0;
  v86 = v57 + ((v246[80] + 32) & ~v246[80]);
  v64 = v246 + 16;
  v87 = (v246 + 8);
  while (1)
  {
    if (v62 >= *(v57 + 16))
    {
      __break(1u);
      goto LABEL_59;
    }

    v88 = *(v246 + 2);
    v88(v40, v86 + *(v246 + 9) * v62, v58);
    if (sub_268B37294())
    {
      if (sub_268B37214() == 1869903201 && v89 == 0xE400000000000000)
      {

        v58 = v245;
        goto LABEL_16;
      }

      v91 = sub_268B38444();

      v58 = v245;
      if ((v91 & 1) == 0)
      {
        break;
      }
    }

LABEL_16:
    ++v62;
    (*v87)(v40, v58);
    if (v85 == v62)
    {
      goto LABEL_17;
    }
  }

  v139 = v219;
  (*(v246 + 4))(v219, v40, v58);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v140 = v244;
  v141 = __swift_project_value_buffer(v244, qword_2802CDA10);
  v142 = v243;
  v143 = v218;
  (*(v243 + 16))(v218, v141, v140);
  v144 = v217;
  v88(v217, v139, v58);
  v145 = sub_268B37A34();
  v146 = v58;
  v147 = sub_268B37F04();
  if (os_log_type_enabled(v145, v147))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v247 = v149;
    *v148 = 136315138;
    sub_268975F38(&qword_2802A7370, MEMORY[0x277D5F818]);
    v150 = sub_268B38404();
    v151 = v144;
    v153 = v152;
    LODWORD(v246) = v147;
    v134 = *v87;
    (*v87)(v151, v146);
    v154 = sub_26892CDB8(v150, v153, &v247);

    *(v148 + 4) = v154;
    _os_log_impl(&dword_2688BB000, v145, v246, "Found already enabled language: %s", v148, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v149);
    MEMORY[0x26D6266E0](v149, -1, -1);
    v155 = v148;
    v139 = v219;
    MEMORY[0x26D6266E0](v155, -1, -1);

    (*(v142 + 8))(v218, v244);
  }

  else
  {

    v134 = *v87;
    (*v87)(v144, v146);
    (*(v142 + 8))(v143, v244);
  }

  v240(0, 3);
  v181 = v139;
  v182 = v146;
  return (v134)(v181, v182);
}

uint64_t sub_268975B78()
{
  sub_268B37214();
  sub_268B37C34();

  sub_268B376F4();
  sub_26895EF2C();
  v0 = sub_268B380C4();

  return v0 & 1;
}

uint64_t sub_268975C48()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_3_8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 80);
  v11 = (v5 + v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  v14 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);
  v15 = sub_268B37704();
  if (!__swift_getEnumTagSinglePayload(v0 + v11, 1, v15))
  {
    OUTLINED_FUNCTION_70(v15);
    (*(v16 + 8))(v0 + v11, v15);
  }

  return MEMORY[0x2821FE8E8](v0, v11 + v13, v4 | v10 | 7);
}

uint64_t sub_268975DB0(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  OUTLINED_FUNCTION_3_8();
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860) - 8);
  v10 = v1[4];
  v11 = v1[5];
  v12 = (v1 + ((v6 + v8 + *(v9 + 80)) & ~*(v9 + 80)));

  return sub_268974084(a1, v10, v11, v1 + v6, v12, v3, v4);
}

uint64_t sub_268975E98()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_268B37284() & 1;
}

unint64_t sub_268975ED4()
{
  result = qword_2802A5B50;
  if (!qword_2802A5B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5B48, &qword_268B416A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5B50);
  }

  return result;
}

uint64_t sub_268975F38(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String_optional __swiftcall UsoTask_increaseBy_common_Setting.verb()()
{
  v0 = 0x6573616572636E69;
  v1 = 0xE800000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268975FB4()
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v81 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v80 = v7;
  v8 = sub_268B360B4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v86 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v84 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6578, &qword_268B3FA60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  v83 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v74[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6580, &qword_268B3FA68);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_20_0();
  v82 = v23 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v74[-v27];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v74[-v30];
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v74[-v33];
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_35_0();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v74[-v37];
  v85 = v0;
  v39 = sub_268A9EA48(v36) - 2;
  result = 0;
  switch(v39)
  {
    case 0:
      return result;
    case 1:
      return 2;
    case 2:
      return 1;
    case 4:
      v79 = v2;
      sub_268B36534();
      if (v87 && (v41 = sub_268B35B94(), , v41))
      {
        sub_268B360A4();
      }

      else
      {
        OUTLINED_FUNCTION_12_10(v38, 1);
      }

      v42 = *(v86 + 104);
      v77 = *MEMORY[0x277D5EE50];
      v78 = v86 + 104;
      v76 = v42;
      v42(v1);
      OUTLINED_FUNCTION_12_10(v1, 0);
      v43 = *(v14 + 48);
      sub_26897743C(v38, v20);
      sub_26897743C(v1, &v20[v43]);
      OUTLINED_FUNCTION_1_17(v20);
      if (v45)
      {
        sub_2688EF38C(v1, &qword_2802A6580, &qword_268B3FA68);
        sub_2688EF38C(v38, &qword_2802A6580, &qword_268B3FA68);
        OUTLINED_FUNCTION_1_17(&v20[v43]);
        if (v45)
        {
          v44 = v20;
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      sub_26897743C(v20, v34);
      OUTLINED_FUNCTION_1_17(&v20[v43]);
      if (v45)
      {
        sub_2688EF38C(v1, &qword_2802A6580, &qword_268B3FA68);
        sub_2688EF38C(v38, &qword_2802A6580, &qword_268B3FA68);
        (*(v86 + 8))(v34, v8);
LABEL_16:
        sub_2688EF38C(v20, &qword_2802A6578, &qword_268B3FA60);
        goto LABEL_17;
      }

      (*(v86 + 32))(v84, &v20[v43], v8);
      OUTLINED_FUNCTION_2_14();
      sub_2689774AC(v65, v66);
      v75 = sub_268B37BB4();
      v67 = *(v86 + 8);
      v67(v84, v8);
      sub_2688EF38C(v1, &qword_2802A6580, &qword_268B3FA68);
      sub_2688EF38C(v38, &qword_2802A6580, &qword_268B3FA68);
      v67(v34, v8);
      sub_2688EF38C(v20, &qword_2802A6580, &qword_268B3FA68);
      if (v75)
      {
        return 0;
      }

LABEL_17:
      v46 = v85;
      sub_268B36534();
      if (v87 && (v47 = sub_268B35B94(), , v47))
      {
        sub_268B360A4();
      }

      else
      {
        OUTLINED_FUNCTION_12_10(v31, 1);
      }

      v48 = v79;
      v49 = v82;
      v50 = v83;
      v76(v28, v77, v8);
      OUTLINED_FUNCTION_12_10(v28, 0);
      v51 = *(v14 + 48);
      sub_26897743C(v31, v50);
      sub_26897743C(v28, v50 + v51);
      OUTLINED_FUNCTION_1_17(v50);
      if (!v45)
      {
        sub_26897743C(v50, v49);
        OUTLINED_FUNCTION_1_17(v50 + v51);
        if (!v52)
        {
          v68 = v86;
          v69 = v50 + v51;
          v70 = v84;
          (*(v86 + 32))(v84, v69, v8);
          OUTLINED_FUNCTION_2_14();
          sub_2689774AC(v71, v72);
          LODWORD(v83) = sub_268B37BB4();
          v73 = *(v68 + 8);
          v73(v70, v8);
          sub_2688EF38C(v28, &qword_2802A6580, &qword_268B3FA68);
          sub_2688EF38C(v31, &qword_2802A6580, &qword_268B3FA68);
          v48 = v79;
          v73(v49, v8);
          sub_2688EF38C(v50, &qword_2802A6580, &qword_268B3FA68);
          if (v83)
          {
            return 0;
          }

LABEL_31:
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v53 = __swift_project_value_buffer(v48, qword_2802CDA10);
          v55 = v80;
          v54 = v81;
          (*(v81 + 16))(v80, v53, v48);

          v56 = sub_268B37A34();
          v57 = sub_268B37EE4();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v87 = v59;
            *v58 = 136315138;
            v60 = *v46;
            v61 = sub_268B385B4();
            v63 = v48;
            v64 = sub_26892CDB8(v61, v62, &v87);

            *(v58 + 4) = v64;
            _os_log_impl(&dword_2688BB000, v56, v57, "Unable to determine setting name for task %s", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v59);
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();

            (*(v54 + 8))(v55, v63);
          }

          else
          {

            (*(v54 + 8))(v55, v48);
          }

          return 3;
        }

        OUTLINED_FUNCTION_11_9(v28);
        OUTLINED_FUNCTION_11_9(v31);
        (*(v86 + 8))(v49, v8);
LABEL_30:
        sub_2688EF38C(v50, &qword_2802A6578, &qword_268B3FA60);
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_11_9(v28);
      OUTLINED_FUNCTION_11_9(v31);
      OUTLINED_FUNCTION_1_17(v50 + v51);
      if (!v45)
      {
        goto LABEL_30;
      }

      v44 = v50;
LABEL_26:
      sub_2688EF38C(v44, &qword_2802A6580, &qword_268B3FA68);
      return 0;
    default:
      return 3;
  }
}

uint64_t sub_2689768CC@<X0>(uint64_t a1@<X8>)
{
  if (sub_268B36524())
  {
    sub_2689BB2D8(a1);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

uint64_t sub_268976954()
{
  if (!sub_268B36524())
  {
    return 4;
  }

  v0 = sub_2689BC188();

  if (v0 == 7)
  {
    return 4;
  }

  return v0;
}

uint64_t sub_2689769A8()
{
  if (!sub_268B36524())
  {
    return 2;
  }

  v0 = sub_2689BC314();

  return v0;
}

uint64_t sub_2689769F4@<X0>(char *a1@<X8>)
{
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  v11 = (v9 - v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v40 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v16);
  v18 = v40 - v17;
  v19 = sub_268B36534();
  if (v40[1])
  {
    sub_268963658();
    if (v20)
    {
      if (qword_2802A4F30 != -1)
      {
        v20 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_1_14(v20, qword_2802CDA10);
      v21(v18);
      v22 = sub_268B37A34();
      v23 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v23))
      {
        v24 = OUTLINED_FUNCTION_14();
        *v24 = 0;
        _os_log_impl(&dword_2688BB000, v22, v23, "UsoTask_increaseBy_common_Setting#shouldHandle Task is settings. Handling in controls", v24, 2u);
        OUTLINED_FUNCTION_12();
      }

      v25 = 2;
    }

    else
    {
      sub_2689633E8();
      if (v30)
      {
        if (qword_2802A4F30 != -1)
        {
          v30 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_14(v30, qword_2802CDA10);
        v31(v1);
        v32 = sub_268B37A34();
        v33 = sub_268B37F04();
        if (OUTLINED_FUNCTION_196(v33))
        {
          v34 = OUTLINED_FUNCTION_14();
          *v34 = 0;
          _os_log_impl(&dword_2688BB000, v32, v33, "UsoTask_increaseBy_common_Setting#shouldHandle Task is mediaPlayer. Handling in controls", v34, 2u);
          OUTLINED_FUNCTION_12();
        }

        v25 = 0;
        v18 = v1;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v30 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_14(v30, qword_2802CDA10);
        v35(v15);
        v36 = sub_268B37A34();
        v37 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_196(v37))
        {
          v38 = OUTLINED_FUNCTION_14();
          *v38 = 0;
          _os_log_impl(&dword_2688BB000, v36, v37, "UsoTask_increaseBy_common_Setting#shouldHandle Task is not setting: Not handling in controls", v38, 2u);
          OUTLINED_FUNCTION_12();
        }

        v25 = 3;
        v18 = v15;
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v19 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_1_14(v19, qword_2802CDA10);
    v26(v11);
    v27 = sub_268B37A34();
    v28 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v28))
    {
      v29 = OUTLINED_FUNCTION_14();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "UsoTask_increaseBy_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v29, 2u);
      OUTLINED_FUNCTION_12();
    }

    v25 = 3;
    v18 = v11;
  }

  result = (*(v6 + 8))(v18, v3);
  *a1 = v25;
  return result;
}

uint64_t sub_268976E60(uint64_t a1)
{
  result = sub_2689774AC(&qword_2802A6560, MEMORY[0x277D5F158]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268976FA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268976FFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268977050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689770A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689770F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_26897714C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689771A0()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689771F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268977258()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689772AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268977310(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268977374()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689773D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_26897743C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6580, &qword_268B3FA68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2689774AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1)
{

  return sub_2688EF38C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_268977560(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v50 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v49 = (&v45 - v10);
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v47 = v12[2];
  v48 = v18;
  v47(v17);
  v19 = sub_268B37A34();
  v20 = sub_268B37ED4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v46 = a1;
    v22 = a4;
    v23 = a5;
    v24 = v21;
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "SkipTimeDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v21, 2u);
    v25 = v24;
    a5 = v23;
    a4 = v22;
    a1 = v46;
    MEMORY[0x26D6266E0](v25, -1, -1);
  }

  v26 = v12[1];
  v26(v17, v11);
  v27 = [a1 duration];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 direction];

    v30 = sub_2688F06FC();
    sub_268AE2278(v30);
    v32 = v31;
    sub_268AE23DC(v30);
    v34 = v33;

    if (v34)
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v51 + 56);
    if (v29 == 1)
    {
      v37 = v35 + 1;
    }

    else
    {
      v37 = v35;
    }

    sub_268AB745C(v32, v37, a4, a5);
  }

  else
  {
    (v47)(v52, v48, v11);
    v39 = sub_268B37A34();
    v40 = sub_268B37EE4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2688BB000, v39, v40, "Missing direction in intent", v41, 2u);
      MEMORY[0x26D6266E0](v41, -1, -1);
    }

    v26(v52, v11);
    sub_2688C2ECC();
    v42 = swift_allocError();
    *v43 = -125;
    v44 = v49;
    *v49 = v42;
    swift_storeEnumTagMultiPayload();
    a4(v44);
    return sub_268919854(v44);
  }
}

void sub_268977958()
{
  type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268977A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268977AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268977BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268977C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268977CF8()
{
  type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268977D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_268977E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_26897805C(uint64_t a1, uint64_t a2)
{
  result = sub_2689780B4(&qword_2802A6598, a2, type metadata accessor for SkipTimeDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689780B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CloseAccessoryItemAppIntent.init(destination:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5688, &qword_268B3BAF0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_268B369C4();
  *a1 = result;
  return result;
}

void sub_26897820C()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v84 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v85 = v24;
  OUTLINED_FUNCTION_8();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v81 - v27;
  if (v6(v26))
  {
    v29 = v4(v1);
    if (v29)
    {
      v30 = v29;
      v81 = v0;
      v82 = v14;
      v83 = v17;
      v2 = sub_2688EFD0C(v29);
      v31 = 0;
      v17 = v30 & 0xC000000000000001;
      v14 = v30 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v2 == v31)
        {

          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v42 = v82;
          OUTLINED_FUNCTION_82(v82, qword_2802CDA10);
          v43 = v83;
          OUTLINED_FUNCTION_32_3();
          v44(v28);
          v45 = sub_268B37A34();
          v46 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_19(v46))
          {
            v47 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v47);
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v48, v49, "HomeAutomationRedirectableIntent#shouldCheckForHomeAutomationRedirect queries don't contain an accessory name, returning false");
            OUTLINED_FUNCTION_83_0();
          }

          (*(v43 + 8))(v28, v42);
          goto LABEL_34;
        }

        if (v17)
        {
          v32 = MEMORY[0x26D625BD0](v31, v30);
        }

        else
        {
          if (v31 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v32 = *(v30 + 8 * v31 + 32);
        }

        v33 = v32;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        sub_268ACBA54(v32);
        v35 = v34;

        ++v31;
        if (v35)
        {

          for (i = 0; v2 != i; ++i)
          {
            if (v17)
            {
              v51 = MEMORY[0x26D625BD0](i, v30);
            }

            else
            {
              if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_50;
              }

              v51 = *(v30 + 8 * i + 32);
            }

            v52 = v51;
            if (__OFADD__(i, 1))
            {
              goto LABEL_49;
            }

            DeviceQuery.deviceType.getter();

            v53 = sub_268B37034();
            if (__swift_getEnumTagSinglePayload(v13, 1, v53) == 1)
            {

              sub_2688C058C(v13, &qword_2802A58F0, &unk_268B3BEC0);
              if ([v7 mediaType])
              {
                v63 = v83;
                if (qword_2802A4F30 != -1)
                {
                  OUTLINED_FUNCTION_0_0();
                }

                v64 = v82;
                OUTLINED_FUNCTION_82(v82, qword_2802CDA10);
                v65 = v81;
                (*(v63 + 16))(v81);
                v66 = v63;
                v67 = v7;
                v68 = sub_268B37A34();
                v69 = sub_268B37ED4();
                if (OUTLINED_FUNCTION_115_0(v69))
                {
                  v70 = swift_slowAlloc();
                  v71 = swift_slowAlloc();
                  v86 = v71;
                  *v70 = 136315138;
                  v72 = NLMediaType.description.getter([v67 mediaType]);
                  v74 = v73;

                  v75 = sub_26892CDB8(v72, v74, &v86);

                  *(v70 + 4) = v75;
                  _os_log_impl(&dword_2688BB000, v68, &qword_2802A58F0, "HomeAutomationRedirectableIntent#shouldCheckForHomeAutomationRedirect we have a mediaType specified %s, returning false", v70, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v71);
                  OUTLINED_FUNCTION_12();
                  OUTLINED_FUNCTION_12();
                }

                else
                {
                }

                (*(v66 + 8))(v65, v64);
                goto LABEL_34;
              }

              v55 = v83;
              if (qword_2802A4F30 != -1)
              {
                OUTLINED_FUNCTION_0_0();
              }

              v54 = v82;
              OUTLINED_FUNCTION_82(v82, qword_2802CDA10);
              OUTLINED_FUNCTION_32_3();
              v56 = v84;
              v76(v84);
              v58 = sub_268B37A34();
              v77 = sub_268B37ED4();
              if (OUTLINED_FUNCTION_19(v77))
              {
                v78 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_81(v78);
                OUTLINED_FUNCTION_112_1(&dword_2688BB000, v79, v80, "HomeAutomationRedirectableIntent#shouldCheckForHomeAutomationRedirect intent can potentially redirect to HomeAutomation, returning true");
                OUTLINED_FUNCTION_83_0();
              }

LABEL_33:

              (*(v55 + 8))(v56, v54);
              goto LABEL_34;
            }

            sub_2688C058C(v13, &qword_2802A58F0, &unk_268B3BEC0);
          }

          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v54 = v82;
          OUTLINED_FUNCTION_82(v82, qword_2802CDA10);
          v55 = v83;
          OUTLINED_FUNCTION_32_3();
          v56 = v85;
          v57(v85);
          v58 = sub_268B37A34();
          v59 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_19(v59))
          {
            v60 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v60);
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v61, v62, "HomeAutomationRedirectableIntent#shouldCheckForHomeAutomationRedirect all queries specify a deviceType, pushing PauseMediaFlow, returning false");
            OUTLINED_FUNCTION_83_0();
          }

          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  if (qword_2802A4F30 != -1)
  {
LABEL_51:
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v14, qword_2802CDA10);
  OUTLINED_FUNCTION_32_3();
  v36(v2);
  v37 = sub_268B37A34();
  v38 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_19(v38))
  {
    v39 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v39);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v40, v41, "HomeAutomationRedirectableIntent#shouldCheckForHomeAutomationRedirect this is an implicit request, returning false");
    OUTLINED_FUNCTION_83_0();
  }

  (*(v17 + 8))(v2, v14);
LABEL_34:
  OUTLINED_FUNCTION_23();
}

void sub_2689788B0()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v113 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  v101 = &v98 - v8;
  OUTLINED_FUNCTION_9();
  v9 = sub_268B35434();
  v10 = OUTLINED_FUNCTION_1(v9);
  v111 = v11;
  v112 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v104 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_7();
  MEMORY[0x28223BE20](v19);
  v102 = &v98 - v20;
  OUTLINED_FUNCTION_9();
  v103 = type metadata accessor for MediaPlayerIntent();
  v21 = OUTLINED_FUNCTION_4(v103);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v99 = v24;
  OUTLINED_FUNCTION_9();
  v25 = sub_268B35494();
  v26 = OUTLINED_FUNCTION_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_0();
  v106 = v31 - v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  v35 = &v98 - v34;
  v36 = sub_268B37A54();
  v37 = OUTLINED_FUNCTION_1(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_20_0();
  v100 = v42 - v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  v107 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_18();
  v98 = v47;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v36, qword_2802CDA10);
  v49 = *(v39 + 16);
  v108 = v50;
  v109 = v49;
  v110 = v39 + 16;
  (v49)(v0);
  v51 = sub_268B37A34();
  v52 = sub_268B37F04();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_14();
    v105 = v28;
    *v53 = 0;
    _os_log_impl(&dword_2688BB000, v51, v52, "PauseMediaRoutingFlow#on called", v53, 2u);
    v2 = v0;
    v28 = v105;
    OUTLINED_FUNCTION_12();
  }

  v54 = *(v39 + 8);
  v54(v0, v36);
  sub_268B35414();
  v55 = (*(v28 + 88))(v35, v25);
  if (v55 == *MEMORY[0x277D5C128] || v55 == *MEMORY[0x277D5C160])
  {
    (*(v28 + 8))(v35, v25);
    v57 = v106;
    sub_268B35414();
    v58 = v102;
    sub_26893BC0C(v57, 1, v59, v60, v61, v62, v63, v64, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
    v65 = v103;
    if (__swift_getEnumTagSinglePayload(v58, 1, v103) == 1)
    {
      sub_2688C058C(v58, &qword_2802A5650, &unk_268B3BAC0);
      v66 = v98;
      v109(v98, v108, v36);
      v67 = sub_268B37A34();
      v68 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v68))
      {
        v69 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v69);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v70, v71, "PauseMediaRoutingFlow#on unable to create MediaPlayerIntent from parse");
        OUTLINED_FUNCTION_6();
      }

      v54(v66, v36);
    }

    else
    {
      v86 = v58;
      v87 = v99;
      sub_2688C0464(v86, v99);
      sub_2688C0464(v87, v1);
      __swift_storeEnumTagSinglePayload(v1, 0, 1, v65);
      v88 = OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_mediaPlayerIntent;
      OUTLINED_FUNCTION_24();
      sub_2688C06A8(v1, v2 + v88, &qword_2802A5650, &unk_268B3BAC0);
      swift_endAccess();
      v89 = v100;
      v109(v100, v108, v36);
      v90 = sub_268B37A34();
      v91 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v91))
      {
        v92 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v92);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v93, v94, "PauseMediaRoutingFlow#on supported parse");
        OUTLINED_FUNCTION_12();
      }

      v54(v89, v36);
      v95 = v112;
      v96 = v101;
      (*(v111 + 16))(v101, v113, v112);
      __swift_storeEnumTagSinglePayload(v96, 0, 1, v95);
      v97 = OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_input;
      OUTLINED_FUNCTION_24();
      sub_2688C06A8(v96, v2 + v97, &qword_2802A5660, &qword_268B3B8E8);
      swift_endAccess();
    }
  }

  else
  {
    v102 = v25;
    v103 = v35;
    v72 = v107;
    v109(v107, v108, v36);
    v73 = v104;
    (*(v111 + 16))(v104, v113, v112);
    v74 = sub_268B37A34();
    v75 = sub_268B37EE4();
    if (os_log_type_enabled(v74, v75))
    {
      v77 = v73;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v113 = v54;
      v114 = v79;
      v80 = v79;
      *v78 = 136315138;
      sub_268B35414();
      v81 = v102;
      v82 = sub_268B37C24();
      v105 = v28;
      v84 = v83;
      (*(v111 + 8))(v77, v112);
      v85 = sub_26892CDB8(v82, v84, &v114);

      *(v78 + 4) = v85;
      _os_log_impl(&dword_2688BB000, v74, v75, "PauseMediaRoutingFlow#on received an unsupported parse type %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_6();

      v113(v107, v36);
      v28 = v105;
    }

    else
    {

      (*(v111 + 8))(v73, v112);
      v54(v72, v36);
      v81 = v102;
    }

    (*(v28 + 8))(v103, v81);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268979084()
{
  OUTLINED_FUNCTION_26();
  v63 = v2;
  v64 = v3;
  v4 = *v0;
  v65 = v0;
  v57 = v4;
  v58 = sub_268B36C04();
  v5 = OUTLINED_FUNCTION_1(v58);
  v56 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v55 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v62 = type metadata accessor for MediaPlayerIntent();
  v16 = OUTLINED_FUNCTION_4(v62);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v61 = v19;
  OUTLINED_FUNCTION_9();
  v20 = sub_268B37A54();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  v59 = v27;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v29 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v60 = *(v23 + 16);
  v60(v0, v29, v20);
  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_14();
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "PauseMediaRoutingFlow#execute called", v32, 2u);
    OUTLINED_FUNCTION_12();
  }

  v33 = *(v23 + 8);
  v33(v0, v20);
  v34 = [objc_allocWithZone(type metadata accessor for PauseMediaIntent()) init];
  sub_2688C063C();
  v35 = sub_268B38054();
  [v34 setIsDirectInvocation_];

  v36 = OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_mediaPlayerIntent;
  v37 = v65;
  swift_beginAccess();
  sub_2688C053C(v37 + v36, v15, &qword_2802A5650, &unk_268B3BAC0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v62) == 1)
  {
    sub_2688C058C(v15, &qword_2802A5650, &unk_268B3BAC0);
    v60(v1, v29, v20);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v39))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_33_3(&dword_2688BB000, v40, v41, "PauseMediaRoutingFlow#execute mediaPlayerIntent is nil, falling back to PauseMediaFlow");
      OUTLINED_FUNCTION_12();
    }

    v33(v1, v20);
    sub_26897A3F4();
  }

  else
  {
    v42 = v61;
    sub_2688C0464(v15, v61);
    sub_268982750(v42);
    sub_26897820C();
    if (v43)
    {
      v45 = v55;
      v44 = v56;
      v46 = v58;
      (*(v56 + 104))(v55, *MEMORY[0x277D5F658], v58);
      v47 = *(v37 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_deviceSelector);
      v48 = v34;

      sub_26894E93C();

      (*(v44 + 8))(v45, v46);
      OUTLINED_FUNCTION_7_8();
      v50 = v42;
    }

    else
    {
      v60(v59, v29, v20);
      v51 = sub_268B37A34();
      v52 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v52))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_33_3(&dword_2688BB000, v53, v54, "PauseMediaRoutingFlow#execute not necessary to check for HomeAutomation redirect, pushing PauseMediaFlow");
        OUTLINED_FUNCTION_12();
      }

      v33(v59, v20);
      sub_26897A3F4();

      OUTLINED_FUNCTION_7_8();
      v50 = v61;
    }

    sub_2688C05E4(v50, v49);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689795F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v193 = v24;
  v194 = v25;
  v195 = v26;
  v192 = v27;
  v29 = v28;
  v31 = v30;
  v32 = sub_268B34F84();
  v33 = OUTLINED_FUNCTION_1(v32);
  v185 = v34;
  v186 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2();
  v182 = v37;
  OUTLINED_FUNCTION_9();
  v38 = sub_268B34E44();
  v39 = OUTLINED_FUNCTION_1(v38);
  v183 = v40;
  v184 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2();
  v181 = v43;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5658, &qword_268B3B8E0);
  OUTLINED_FUNCTION_1(v177);
  v176 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v47);
  v175 = v171 - v48;
  OUTLINED_FUNCTION_9();
  v174 = type metadata accessor for DevicesWithParse();
  v49 = OUTLINED_FUNCTION_4(v174);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2();
  v180 = v52;
  OUTLINED_FUNCTION_9();
  v189 = sub_268B35494();
  v53 = OUTLINED_FUNCTION_1(v189);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_20_0();
  v173 = v58 - v59;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18();
  v172 = v61;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18();
  v179 = v63;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v64);
  v188 = v171 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  OUTLINED_FUNCTION_22(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v69);
  v71 = v171 - v70;
  v191 = sub_268B35434();
  v72 = OUTLINED_FUNCTION_1(v191);
  v187 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_20_0();
  v178 = v76 - v77;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v78);
  v190 = v171 - v79;
  OUTLINED_FUNCTION_9();
  v80 = sub_268B37A54();
  v81 = OUTLINED_FUNCTION_1(v80);
  v83 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_20_0();
  v87 = MEMORY[0x28223BE20](v86);
  v88 = MEMORY[0x28223BE20](v87);
  v90 = v171 - v89;
  v91 = MEMORY[0x28223BE20](v88);
  v93 = v171 - v92;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_15();
  if (!v29)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v80, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v105(v21);
    v106 = sub_268B37A34();
    v93 = sub_268B37F04();
    if (os_log_type_enabled(v106, v93))
    {
      v107 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v107);
      OUTLINED_FUNCTION_20(&dword_2688BB000, v108, v93, "PauseMediaRoutingFlow#execute setting devices in intent and pushing PauseMediaFlow");
      OUTLINED_FUNCTION_6();
    }

    v109 = *(v83 + 8);
    v83 += 8;
    v109(v21, v80);
    v110 = sub_2688EFD0C(v31);
    v111 = MEMORY[0x277D84F90];
    if (v110)
    {
      v197 = MEMORY[0x277D84F90];
      sub_268B38234();
      if (v110 < 0)
      {
        __break(1u);
        goto LABEL_40;
      }

      sub_2688C063C();
      v112 = 0;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v113 = MEMORY[0x26D625BD0](v112, v31);
        }

        else
        {
          v113 = *(v31 + 8 * v112 + 32);
        }

        v114 = v113;
        ++v112;
        v115 = sub_268B38054();
        [v114 setIsPreResolved_];

        sub_268B38214();
        v116 = *(v197 + 16);
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
      }

      while (v110 != v112);
      v111 = v197;
    }

    sub_2688C04C8(v111, v192);
LABEL_26:
    sub_26897A3F4();
    goto LABEL_27;
  }

  if (v29 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v80, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v117(v20);
    v118 = sub_268B37A34();
    v119 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v119))
    {
      v120 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v120);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v121, v122, "PauseMediaRoutingFlow#execute pushing PauseMediaFlow so we can dialog a relevant error");
      OUTLINED_FUNCTION_6();
    }

    (*(v83 + 8))(v20, v80);
    goto LABEL_26;
  }

  v171[5] = v96;
  v171[4] = v95;
  v97 = OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_input;
  v98 = v195;
  swift_beginAccess();
  sub_2688C053C(v98 + v97, v71, &qword_2802A5660, &qword_268B3B8E8);
  v99 = v191;
  if (__swift_getEnumTagSinglePayload(v71, 1, v191) == 1)
  {
    sub_2688C058C(v71, &qword_2802A5660, &qword_268B3B8E8);
    if (qword_2802A4F30 == -1)
    {
LABEL_5:
      __swift_project_value_buffer(v80, qword_2802CDA10);
      OUTLINED_FUNCTION_17();
      v100(v93);
      v101 = sub_268B37A34();
      v102 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v102))
      {
        v103 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v103);
        OUTLINED_FUNCTION_20(&dword_2688BB000, v104, v93, "PauseMediaRoutingFlow#execute input is nil, can't redirect to HomeAutomation");
        OUTLINED_FUNCTION_6();
      }

      (*(v83 + 8))(v93, v80);
      goto LABEL_26;
    }

LABEL_40:
    OUTLINED_FUNCTION_0_0();
    goto LABEL_5;
  }

  v195 = v80;
  v123 = v187;
  v124 = v190;
  (*(v187 + 32))(v190, v71, v99);
  v125 = v188;
  sub_268B35414();
  v126 = v189;
  if ((*(v55 + 88))(v125, v189) == *MEMORY[0x277D5C128])
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v195, qword_2802CDA10);
    v127 = *(v83 + 16);
    v171[1] = v128;
    v171[2] = v127;
    v127(v90);
    v129 = sub_268B37A34();
    v130 = sub_268B37EC4();
    v131 = v55;
    if (OUTLINED_FUNCTION_19(v130))
    {
      v132 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v132);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v133, v134, "PauseMediaRoutingFlow#execute input is NLv3IntentOnly, transform to HomeAutomationNLV3Intent parse");
      v126 = v189;
      OUTLINED_FUNCTION_12();
    }

    v192 = *(v83 + 8);
    v171[3] = v83 + 8;
    (v192)(v90, v195);
    v135 = v180;
    sub_268B35414();
    *(v135 + *(v174 + 20)) = v31;
    v136 = v135;

    v137 = v175;
    sub_268B36764();
    v138 = v177;
    v139 = sub_268B36774();
    (v176[1])(v137, v138);
    v140 = v179;
    v141 = v126;
    v139(v136);

    v145 = OUTLINED_FUNCTION_11(&a9);
    v146(v145);
    v147 = v172;
    v148 = v140;
    v149 = *(v131 + 16);
    v149(v172, v148, v126);
    v150 = sub_268B37A34();
    v151 = sub_268B37EC4();
    if (os_log_type_enabled(v150, v151))
    {
      v153 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v196 = v176;
      *v153 = 136315138;
      v154 = v173;
      v149(v173, v147, v141);
      v155 = sub_268B37C24();
      v156 = v147;
      v157 = v155;
      v177 = v149;
      v159 = v158;
      v189 = *(v131 + 8);
      v189(v156, v141);
      v160 = sub_26892CDB8(v157, v159, &v196);
      v149 = v177;

      *(v153 + 4) = v160;
      _os_log_impl(&dword_2688BB000, v150, v151, "PauseMediaRoutingFlow#execute transformed home automation NLV3 parse %s", v153, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v176);
      OUTLINED_FUNCTION_83_0();
      OUTLINED_FUNCTION_12();

      OUTLINED_FUNCTION_16();
      v161();
      v163 = v185;
      v162 = v186;
      v164 = v183;
    }

    else
    {

      v189 = *(v131 + 8);
      v189(v147, v126);
      OUTLINED_FUNCTION_16();
      v165();
      v163 = v185;
      v162 = v186;
      v164 = v183;
      v154 = v173;
    }

    v166 = v179;
    v149(v154, v179, v141);
    sub_268B35424();
    v167 = v181;
    sub_268B34E34();
    v168 = v182;
    sub_268B34F74();
    v193(v168);
    (*(v163 + 8))(v168, v162);
    (*(v164 + 8))(v167, v184);
    v169 = v189;
    v189(v166, v141);
    OUTLINED_FUNCTION_5();
    sub_2688C05E4(v180, v170);
    (*(v187 + 8))(v190, v191);
    v169(v188, v141);
  }

  else
  {
    v142 = v99;
    (*(v123 + 16))(v178, v124, v99);
    v143 = v181;
    sub_268B34E34();
    v144 = v182;
    sub_268B34F74();
    v193(v144);
    (*(v185 + 8))(v144, v186);
    (*(v183 + 8))(v143, v184);
    (*(v123 + 8))(v124, v142);
    (*(v55 + 8))(v125, v126);
  }

LABEL_27:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26897A3F4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_contextProvider + 24);
  v8 = *(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_contextProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_contextProvider), v7);
  v9 = OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_analyticsService;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v2;
  v10[4] = v0;
  v10[5] = v6;

  sub_268AD35F4(v6, &off_287953B08, v0 + v9, sub_26897A938, v10, v7, v8);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26897A4CC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B34F84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_flowFactory), *(a3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_flowFactory + 24));
  sub_268B0399C();
  sub_268B34F54();

  a1(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26897A5E4()
{
  sub_2688C058C(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_input, &qword_2802A5660, &qword_268B3B8E8);
  sub_2688C058C(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_mediaPlayerIntent, &qword_2802A5650, &unk_268B3BAC0);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_contextProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_analyticsService));
  v1 = *(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_deviceSelector);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_flowFactory));
  return v0;
}

uint64_t sub_26897A69C()
{
  sub_26897A5E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PauseMediaRoutingFlow()
{
  result = qword_2802A65D0;
  if (!qword_2802A65D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26897A748()
{
  sub_2688BFEF0(319, &qword_2802A5640, MEMORY[0x277D5C118]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2688BFEF0(319, &qword_2802A5648, type metadata accessor for MediaPlayerIntent);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_26897A868()
{
  v1 = *v0;
  sub_2689788B0();
  return v2 & 1;
}

uint64_t sub_26897A8B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PauseMediaRoutingFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_26897A8F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void OUTLINED_FUNCTION_33_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

Swift::String_optional __swiftcall UsoTask_seekBackward_common_MediaItem.verb()()
{
  v0 = 0x6B63614270696B73;
  v1 = 0xEC00000064726177;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_26897AA2C(uint64_t a1)
{
  result = sub_26897AAD8(&qword_2802A65E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26897AAD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B364A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26897AB60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_26897ABB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_26897AC08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_26897AC5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_26897ACB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_26897AD04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_26897AD58()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_26897ADAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_26897AE10()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_26897AE64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_26897AEC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_26897AF2C()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_26897AF90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_26897B01C@<X0>(char *a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_20_0();
  v52 = v7 - v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - v10;
  OUTLINED_FUNCTION_8();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = sub_268B34614();
  v18 = OUTLINED_FUNCTION_2_15(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_0();
  v50 = v23 - v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  v51 = &v48 - v26;
  OUTLINED_FUNCTION_8();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v48 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v48 - v31;
  v33 = type metadata accessor for QuickStopContext(0);
  v34 = *(v33 + 32);
  sub_2688F33D8(v3 + v34, v16);
  OUTLINED_FUNCTION_13_2(v16);
  if (v37)
  {
    v14 = v16;
  }

  else
  {
    v49 = a1;
    v35 = v16;
    v36 = *(v20 + 32);
    v36(v32, v35, v2);
    sub_2688F33D8(v3 + *(v33 + 36), v14);
    OUTLINED_FUNCTION_13_2(v14);
    if (!v37)
    {
      v36(v30, v14, v2);
      v43 = sub_268B345A4();
      v44 = *(v20 + 8);
      if (v43)
      {
        v44(v30, v2);
        v36(v49, v32, v2);
      }

      else
      {
        v44(v32, v2);
        v36(v49, v30, v2);
      }

      goto LABEL_16;
    }

    (*(v20 + 8))(v32, v2);
    a1 = v49;
  }

  sub_2688F3448(v14);
  v38 = v3 + v34;
  v39 = v53;
  sub_2688F33D8(v38, v53);
  OUTLINED_FUNCTION_13_2(v39);
  if (v37)
  {
    sub_2688F3448(v39);
    v40 = v52;
    sub_2688F33D8(v3 + *(v33 + 36), v52);
    OUTLINED_FUNCTION_13_2(v40);
    if (v37)
    {
      sub_2688F3448(v40);
    }

    else
    {
      v45 = *(v20 + 32);
      v46 = v50;
      v45(v50, v40, v2);
      v45(a1, v46, v2);
    }
  }

  else
  {
    v41 = *(v20 + 32);
    v42 = v51;
    v41(v51, v39, v2);
    v41(a1, v42, v2);
  }

LABEL_16:
  type metadata accessor for QuickStopContext.FiringItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26897B408@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for QuickStopContext.FiringItem(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26897B674(v2, v7);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    return sub_268B34574();
  }

  v8 = sub_268B34614();
  return (*(*(v8 - 8) + 32))(a1, v7, v8);
}

uint64_t sub_26897B508(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v5 = sub_268B34614();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  sub_26897B408(&v19 - v15);
  sub_26897B408(v13);
  LOBYTE(a3) = a3(v16, v13);
  v17 = *(v8 + 8);
  v17(v13, v3);
  v17(v16, v3);
  return a3 & 1;
}

uint64_t sub_26897B674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickStopContext.FiringItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26897B6F8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26897B744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268B34674();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 24));
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
    v8 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26897B840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_268B34674();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_26897B914()
{
  sub_268B34674();
  if (v0 <= 0x3F)
  {
    sub_2688F3310();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26897B9C8()
{
  sub_26897BA28();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_26897BA28()
{
  if (!qword_2802A6618)
  {
    v0 = sub_268B34614();
    if (!v1)
    {
      atomic_store(v0, &qword_2802A6618);
    }
  }
}

unint64_t sub_26897BAB0()
{
  result = qword_2802A6620;
  if (!qword_2802A6620)
  {
    type metadata accessor for QuickStopContext.FiringItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6620);
  }

  return result;
}

uint64_t sub_26897BB20(char a1)
{
  result = 1684104562;
  switch(a1)
  {
    case 1:
      result = 7628147;
      break;
    case 2:
      result = 0x6573616572636E69;
      break;
    case 3:
      result = 0x6573616572636564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26897BBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_268B35494();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - v17;
  (*(v7 + 16))(v12, a1, v4);
  sub_26897BD30(v12, 0, v18);
  (*(v7 + 8))(a1, v4);
  v19 = type metadata accessor for SettingsIntent();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19))
  {
    sub_2688C058C(v18, &qword_2802A5D40, &qword_268B3FFE0);
    v20 = 1;
  }

  else
  {
    sub_26891E594(v18, a2);
    v20 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v20, 1, v19);
}

uint64_t sub_26897BD30@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v420 = a2;
  v440 = a1;
  v436 = a3;
  v421 = sub_268B35474();
  v3 = OUTLINED_FUNCTION_1(v421);
  v419 = v4;
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
  OUTLINED_FUNCTION_79(&v399 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E08, &unk_268B3D910);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v15);
  v408 = sub_268B355B4();
  v16 = OUTLINED_FUNCTION_1(v408);
  v406 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79(v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
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
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v46);
  v418 = type metadata accessor for SettingNLv3Intent();
  v47 = OUTLINED_FUNCTION_4(v418);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1_0();
  v52 = v51 - v50;
  v438 = sub_268B37A54();
  v53 = OUTLINED_FUNCTION_1(v438);
  v439 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3();
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
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_79(&v399 - v66);
  v67 = sub_268B366C4();
  v68 = OUTLINED_FUNCTION_1(v67);
  v437 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_1_0();
  v74 = (v73 - v72);
  v75 = sub_268B35494();
  v76 = OUTLINED_FUNCTION_1(v75);
  v78 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v82);
  v84 = &v399 - v83;
  v85 = type metadata accessor for SettingsIntent();
  v86 = OUTLINED_FUNCTION_4(v85);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_1_0();
  v91 = (v90 - v89);
  *(v90 - v89) = 772;
  v93 = *(v92 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);
  v423 = v93;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  v422 = v85[7];
  v91[v422] = 7;
  v424 = v85[8];
  v91[v424] = 2;
  v425 = v85[9];
  v91[v425] = 1;
  v432 = v85[10];
  v91[v432] = 3;
  OUTLINED_FUNCTION_45_1(v85[11]);
  v98 = &v91[v85[12]];
  *v98 = 0;
  v98[1] = 0;
  v426 = v98;
  OUTLINED_FUNCTION_45_1(v85[13]);
  OUTLINED_FUNCTION_45_1(v85[14]);
  v99 = v85[15];
  sub_268B37924();
  v427 = v99;
  OUTLINED_FUNCTION_96();
  v417 = v100;
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v100);
  OUTLINED_FUNCTION_45_1(v85[16]);
  OUTLINED_FUNCTION_45_1(v85[17]);
  OUTLINED_FUNCTION_45_1(v85[18]);
  v104 = v85[19];
  sub_268B37464();
  v428 = v104;
  v105 = OUTLINED_FUNCTION_25_5();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
  v109 = &v91[v85[20]];
  *v109 = 0;
  v109[1] = 0;
  v415 = v109;
  v110 = v85[21];
  sub_268B37034();
  v429 = v110;
  v111 = OUTLINED_FUNCTION_25_5();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
  v435 = v85;
  v115 = v85[22];
  sub_268B378F4();
  v430 = v115;
  v116 = OUTLINED_FUNCTION_25_5();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
  v120 = *(v78 + 2);
  v120(v84, v440, v75);
  v121 = (*(v78 + 11))(v84, v75);
  if (v121 == *MEMORY[0x277D5C128])
  {
    (*(v78 + 12))(v84, v75);
    v122 = *(v437 + 32);
    v433 = v74;
    v421 = v67;
    v123 = v122(v74, v84, v67);
    if (qword_2802A4F30 != -1)
    {
      v123 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_40_2(v123, qword_2802CDA10);
    OUTLINED_FUNCTION_176();
    (*(v124 + 16))(v434);
    v125 = sub_268B37A34();
    v126 = sub_268B37ED4();
    v127 = OUTLINED_FUNCTION_183_0(v126);
    v128 = v440;
    if (v127)
    {
      v129 = OUTLINED_FUNCTION_14();
      *v129 = 0;
      _os_log_impl(&dword_2688BB000, v125, v126, "Creating SettingsNLv3Intent", v129, 2u);
      OUTLINED_FUNCTION_21_8();
    }

    OUTLINED_FUNCTION_153(&v458);
    v130 = OUTLINED_FUNCTION_46_3();
    v131(v130);
    (*(v437 + 16))(v52, v433, v421);
    if (qword_2802A4E70 != -1)
    {
      swift_once();
    }

    sub_26897FB8C(&qword_2802A5A90, type metadata accessor for SettingNLv3Intent);
    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    *v91 = v446;
    if (qword_2802A4E68 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    v91[1] = v446;
    if (qword_2802A4E78 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_35_4(&v445);
    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_20_8(&v443);
    sub_268932694(v126, v132, v133, v134);
    if (qword_2802A4E80 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_38_1(v446);
    if (qword_2802A4E90 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_38_1(v446);
    if (qword_2802A4E60 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_38_1(v446);
    if (qword_2802A4E88 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_38_1(v446);
    if (qword_2802A4D88 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    v135 = sub_268B35C74();
    OUTLINED_FUNCTION_15_8(v135, &v444 + 8);
    if (qword_2802A4D90 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    *v426 = v446;
    if (qword_2802A4D98 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    v136 = sub_268B35C74();
    OUTLINED_FUNCTION_15_8(v136, &v446);
    if (qword_2802A4DA0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    v137 = sub_268B35C74();
    OUTLINED_FUNCTION_15_8(v137, &v446 + 8);
    if (qword_2802A4DA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    v138 = sub_268B35C74();
    OUTLINED_FUNCTION_15_8(v138, v447);
    if (qword_2802A4DB0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    v139 = sub_268B35C74();
    OUTLINED_FUNCTION_15_8(v139, &v448);
    sub_26893F318();
    OUTLINED_FUNCTION_15_8(v140, &v449);
    if (qword_2802A4DC0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_35_4(v454);
    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_20_8(v451);
    sub_268932694(v126, v141, v142, v143);
    if (qword_2802A4DD0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_35_4(&v455);
    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_20_8(v452);
    sub_268932694(v126, v144, v145, v146);
    if (qword_2802A4DD8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_35_4(&v456);
    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_20_8(v453);
    sub_268932694(v126, v147, v148, v149);
    sub_2688C058C(&v91[v427], &qword_2802A5CA8, &unk_268B3CE30);
    v150 = OUTLINED_FUNCTION_25_5();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v417);
    if (v420)
    {
      v153 = sub_2689405DC();
      v155 = v154;
      (*(v78 + 1))(v128, v75);
      OUTLINED_FUNCTION_19_6();
      OUTLINED_FUNCTION_153(&v457);
      v156 = OUTLINED_FUNCTION_46_3();
      v157(v156);
      v158 = v415;
      *v415 = v153;
      v158[1] = v155;
    }

    else
    {
      (*(v78 + 1))(v128, v75);
      OUTLINED_FUNCTION_19_6();
      OUTLINED_FUNCTION_153(&v457);
      v178 = OUTLINED_FUNCTION_46_3();
      v179(v178);
    }

    goto LABEL_65;
  }

  v434 = v84;
  v437 = v75;
  if (v121 == *MEMORY[0x277D5C150])
  {
    v400 = v78;
    v159 = v434;
    (*(v78 + 12))(v434, v437);
    v160 = v419;
    v161 = v433;
    v162 = v421;
    v163 = (*(v419 + 32))(v433, v159, v421);
    v164 = v439;
    if (qword_2802A4F30 != -1)
    {
      v163 = OUTLINED_FUNCTION_0_0();
    }

    v165 = OUTLINED_FUNCTION_40_2(v163, qword_2802CDA10);
    v166 = *(v164 + 16);
    v431[0] = v165;
    v431[2] = v164 + 16;
    v431[1] = v166;
    v166(v416);
    v167 = *(v160 + 16);
    v168 = v414;
    v167(v414, v161, v162);
    v169 = sub_268B37A34();
    v170 = sub_268B37EE4();
    v171 = os_log_type_enabled(v169, v170);
    v430 = v160 + 16;
    v429 = v167;
    if (v171)
    {
      v84 = OUTLINED_FUNCTION_172_0();
      v428 = OUTLINED_FUNCTION_173_0();
      *&v446 = v428;
      *v84 = 136315138;
      v167(v412, v168, v162);
      OUTLINED_FUNCTION_45_3();
      v172 = sub_268B37C24();
      v174 = v173;
      v175 = OUTLINED_FUNCTION_37_5();
      v176(v175);
      v177 = sub_26892CDB8(v172, v174, &v446);
      v164 = v439;

      *(v84 + 4) = v177;
      _os_log_impl(&dword_2688BB000, v169, v170, "SettingsIntent#init directInvocation: %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v428);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_21_8();
    }

    else
    {

      v203 = OUTLINED_FUNCTION_37_5();
      v204(v203);
    }

    v205 = *(v164 + 8);
    v205(v416, v84);
    v206 = sub_268B35454();
    v208 = v207;
    v209 = v206 == 0xD00000000000003CLL && 0x8000000268B57880 == v207;
    if (v209 || (v210 = v206, (sub_268B38444() & 1) != 0))
    {

      type metadata accessor for DirectInvocationHelper();
      sub_268A69384();
      if (v211)
      {
        v212 = sub_268AA3904();
        v213 = OUTLINED_FUNCTION_1_18();
        v214(v213);
        v215 = OUTLINED_FUNCTION_7_9();
        v216(v215);
        v91[v432] = v212;
LABEL_65:
        v217 = v436;
        sub_26897EC08(v91, v436);
        __swift_storeEnumTagSinglePayload(v217, 0, 1, v435);
        return OUTLINED_FUNCTION_18_4();
      }

      v235 = v410;
      OUTLINED_FUNCTION_8_9();
      v236();
      v237 = sub_268B37A34();
      v238 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_183_0(v238))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_28_3(&dword_2688BB000, v239, v240, "SettingsIntent#init returning nil for intent since we could not find a button pressed.");
        OUTLINED_FUNCTION_12();
      }

      v241 = OUTLINED_FUNCTION_1_18();
      v242(v241);
      v243 = v235;
    }

    else
    {
      if (v210 == 0xD000000000000046 && 0x8000000268B56FE0 == v208)
      {

        v248 = v433;
      }

      else
      {
        v247 = sub_268B38444();

        v248 = v433;
        if ((v247 & 1) == 0)
        {
          v249 = v407;
          OUTLINED_FUNCTION_8_9();
          v250();
          v251 = v404;
          v252 = v421;
          v429(v404, v248, v421);
          v253 = sub_268B37A34();
          v254 = sub_268B37EE4();
          if (OUTLINED_FUNCTION_183_0(v254))
          {
            v255 = OUTLINED_FUNCTION_172_0();
            v256 = OUTLINED_FUNCTION_173_0();
            *&v446 = v256;
            *v255 = 136315138;
            v257 = sub_268B35454();
            v259 = v258;
            v260 = v252;
            v261 = v434;
            (v434)(v251, v260);
            v262 = sub_26892CDB8(v257, v259, &v446);

            *(v255 + 4) = v262;
            _os_log_impl(&dword_2688BB000, v253, v254, "SettingsIntent#init unexpected direct invocation identifier: %s", v255, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v256);
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();

            OUTLINED_FUNCTION_153(&v426);
            v263(v440, v437);
            OUTLINED_FUNCTION_176();
            v205(v407, v438);
            (v261)(v433, v421);
          }

          else
          {

            v317 = OUTLINED_FUNCTION_1_18();
            v318(v317);
            v319 = OUTLINED_FUNCTION_45_3();
            v320 = v434;
            (v434)(v319);
            OUTLINED_FUNCTION_176();
            v205(v249, v84);
            (v320)(v433, v252);
          }

          goto LABEL_98;
        }
      }

      type metadata accessor for DirectInvocationHelper();
      sub_268A69394();
      v276 = v248;
      if (v275)
      {
        v277 = v274;
        v278 = v275;
        v279 = OUTLINED_FUNCTION_1_18();
        v280(v279);
        (v434)(v276, v421);
        v281 = v415;
        *v415 = v277;
        v281[1] = v278;
        goto LABEL_65;
      }

      sub_268A693B4();
      if (v308)
      {
        v309 = v307;
        v310 = v308;
        v311 = OUTLINED_FUNCTION_1_18();
        v312(v311);
        v313 = OUTLINED_FUNCTION_7_9();
        v314(v313);
        v315 = v415;
        *v415 = v309;
        v315[1] = v310;
        goto LABEL_65;
      }

      v391 = v401;
      OUTLINED_FUNCTION_8_9();
      v392();
      v393 = sub_268B37A34();
      v394 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_183_0(v394))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_28_3(&dword_2688BB000, v395, v396, "SettingsIntent#init returning nil for intent since we could not find a DeviceID.");
        OUTLINED_FUNCTION_12();
      }

      v397 = OUTLINED_FUNCTION_1_18();
      v398(v397);
      OUTLINED_FUNCTION_176();
      v243 = v391;
    }

    v205(v243, v84);
    v244 = OUTLINED_FUNCTION_7_9();
    v245(v244);
  }

  else
  {
    v180 = v439;
    if (v121 == *MEMORY[0x277D5C160])
    {
      v181 = v440;
      if (qword_2802A4F30 != -1)
      {
        v121 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_40_2(v121, qword_2802CDA10);
      v182 = *(v180 + 16);
      OUTLINED_FUNCTION_44_2();
      v182();
      v183 = sub_268B37A34();
      v184 = sub_268B37ED4();
      if (os_log_type_enabled(v183, v184))
      {
        v185 = OUTLINED_FUNCTION_14();
        *v185 = 0;
        _os_log_impl(&dword_2688BB000, v183, v184, "Creating SettingsUsoIntent", v185, 2u);
        OUTLINED_FUNCTION_21_8();
      }

      OUTLINED_FUNCTION_176();
      v187 = *(v186 + 8);
      v188 = OUTLINED_FUNCTION_46_3();
      v439 = v189;
      v433 = v190;
      (v190)(v188);
      v191 = sub_268A40454();
      if (v191)
      {
        v192 = v191;
        sub_268B35DC4();
        sub_268932738(v450, v442, &byte_2802A6450, &byte_268B3BE10);
        v400 = v78;
        if (v442[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6630, &qword_268B3FFF0);
          if (swift_dynamicCast())
          {
            if (*(&v444 + 1))
            {
              sub_2688E6514(&v443, &v446);
              v193 = v402;
              OUTLINED_FUNCTION_44_2();
              v182();
              sub_268932738(v450, &v443, &byte_2802A6450, &byte_268B3BE10);
              v194 = sub_268B37A34();
              v195 = sub_268B37F04();
              v196 = OUTLINED_FUNCTION_183_0(v195);
              v421 = v192;
              if (v196)
              {
                v197 = OUTLINED_FUNCTION_172_0();
                v198 = OUTLINED_FUNCTION_173_0();
                v441 = v198;
                *v197 = 136315138;
                v193 = &byte_2802A6450;
                sub_268932738(&v443, v442, &byte_2802A6450, &byte_268B3BE10);
                __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
                v199 = sub_268B37C24();
                v201 = v200;
                sub_2688C058C(&v443, &byte_2802A6450, &byte_268B3BE10);
                v202 = sub_26892CDB8(v199, v201, &v441);
                v181 = v440;

                *(v197 + 4) = v202;
                _os_log_impl(&dword_2688BB000, v194, v195, "Setting attributes for SettingsIntent from task: %s", v197, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v198);
                OUTLINED_FUNCTION_12();
                OUTLINED_FUNCTION_12();
              }

              else
              {

                sub_2688C058C(&v443, &byte_2802A6450, &byte_268B3BE10);
              }

              OUTLINED_FUNCTION_11_10();
              v321();
              v322 = v437;
              v323 = v449;
              v324 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v324, v325);
              v326 = *(v323 + 8);
              OUTLINED_FUNCTION_129();
              sub_268B37324();
              *v91 = sub_26897E110();
              v327 = v449;
              v328 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v328, v329);
              v330 = *(v327 + 16);
              v331 = OUTLINED_FUNCTION_129();
              v91[1] = v332(v331, v327);
              v333 = v449;
              v334 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v334, v335);
              v336 = *(v333 + 32);
              v337 = OUTLINED_FUNCTION_129();
              v339 = v338(v337, v333);
              v91[v422] = v339;
              v340 = v449;
              v341 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v341, v342);
              v343 = *(v340 + 40);
              v344 = OUTLINED_FUNCTION_129();
              v346 = v345(v344, v340);
              v91[v424] = v346;
              v347 = v449;
              v348 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v348, v349);
              v350 = *(v347 + 24);
              v351 = OUTLINED_FUNCTION_10_10(&v445);
              v352(v351, v347);
              OUTLINED_FUNCTION_20_8(&v443);
              sub_268932694(v193, v353, v354, v355);
              v356 = v449;
              v357 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v357, v358);
              v359 = *(v356 + 48);
              v360 = OUTLINED_FUNCTION_129();
              v362 = v361(v360, v356);
              OUTLINED_FUNCTION_38_1(v362 & 1);
              v363 = v449;
              v364 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v364, v365);
              v366 = *(v363 + 8);
              v367 = v403;
              sub_268B37364();
              OUTLINED_FUNCTION_20_8(v450);
              sub_268932694(v367, v368, v369, v370);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v371 = sub_268B377B4();
              OUTLINED_FUNCTION_15_8(v371, &v444 + 8);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v372 = sub_268B37784();
              v373 = v426;
              *v426 = v372;
              *(v373 + 1) = v374;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v375 = sub_268B377C4();
              OUTLINED_FUNCTION_15_8(v375, &v446);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v376 = sub_268B37814();
              OUTLINED_FUNCTION_15_8(v376, &v446 + 8);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v377 = sub_268B377F4();
              OUTLINED_FUNCTION_15_8(v377, v447);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v378 = sub_268B37804();
              OUTLINED_FUNCTION_15_8(v378, &v448);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v379 = sub_268B377E4();
              OUTLINED_FUNCTION_15_8(v379, &v449);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_10_10(v454);
              sub_268B37824();
              OUTLINED_FUNCTION_20_8(v451);
              sub_268932694(v367, v380, v381, v382);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_10_10(&v455);
              sub_268B377D4();
              OUTLINED_FUNCTION_20_8(v452);
              sub_268932694(v367, v383, v384, v385);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_10_10(&v456);
              sub_268B37794();

              v386 = *(v400 + 1);
              v386(v181, v322);
              sub_2688C058C(v450, &byte_2802A6450, &byte_268B3BE10);
              OUTLINED_FUNCTION_20_8(v453);
              sub_268932694(v367, v387, v388, v389);
              __swift_destroy_boxed_opaque_existential_0Tm(&v446);
              v390 = OUTLINED_FUNCTION_36_3();
              v386(v390, v322);
              goto LABEL_65;
            }
          }

          else
          {
            v445 = 0;
            v443 = 0u;
            v444 = 0u;
          }
        }

        else
        {
          sub_2688C058C(v442, &byte_2802A6450, &byte_268B3BE10);
          v443 = 0u;
          v444 = 0u;
          v445 = 0;
        }

        sub_2688C058C(&v443, &qword_2802A6628, &qword_268B3FFE8);
        OUTLINED_FUNCTION_44_2();
        v182();
        sub_268932738(v450, &v446, &byte_2802A6450, &byte_268B3BE10);
        v282 = sub_268B37A34();
        v283 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_183_0(v283))
        {
          v284 = OUTLINED_FUNCTION_172_0();
          v285 = OUTLINED_FUNCTION_173_0();
          v442[0] = v285;
          *v284 = 136315138;
          v78 = &byte_268B3BE10;
          sub_268932738(&v446, &v443, &byte_2802A6450, &byte_268B3BE10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
          sub_268B37C24();
          v192 = v286;
          sub_2688C058C(&v446, &byte_2802A6450, &byte_268B3BE10);
          v287 = OUTLINED_FUNCTION_45_3();
          v290 = sub_26892CDB8(v287, v288, v289);

          *(v284 + 4) = v290;
          _os_log_impl(&dword_2688BB000, v282, v283, "Fatal: Unable to cast task: %s to ControlsSettingsTask", v284, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v285);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          v291 = OUTLINED_FUNCTION_24_7();
          v192(v291);
        }

        else
        {

          v293 = OUTLINED_FUNCTION_24_7();
          v192(v293);
          v294 = OUTLINED_FUNCTION_23_3();
          sub_2688C058C(v294, v295, &byte_268B3BE10);
        }

        OUTLINED_FUNCTION_11_10();
        v292();
        sub_2688C058C(v450, &byte_2802A6450, &byte_268B3BE10);
        v296 = OUTLINED_FUNCTION_36_3();
        (v192)(v296, v78);
      }

      else
      {
        OUTLINED_FUNCTION_44_2();
        v182();
        v265 = sub_268B37A34();
        v266 = sub_268B37ED4();
        if (os_log_type_enabled(v265, v266))
        {
          v267 = OUTLINED_FUNCTION_14();
          *v267 = 0;
          _os_log_impl(&dword_2688BB000, v265, v266, "No tasks found in usoTasks input, might be a confirmation response.", v267, 2u);
          OUTLINED_FUNCTION_12();
        }

        OUTLINED_FUNCTION_11_10();
        v268();
        OUTLINED_FUNCTION_35_4(v431);
        sub_268A3FD3C(v269);
        v270 = v408;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v266, 1, v408);
        v272 = v437;
        if (EnumTagSinglePayload == 1)
        {
          v273 = *(v78 + 1);
          v273(v181, v437);
          sub_2688C058C(v266, &qword_2802A5E08, &unk_268B3D910);
        }

        else
        {
          v297 = v406;
          v298 = *(v406 + 32);
          v299 = v405;
          v300 = OUTLINED_FUNCTION_45_3();
          v301(v300);
          v302 = sub_2689F8358();
          v273 = *(v78 + 1);
          v273(v181, v272);
          (*(v297 + 8))(v299, v270);
          if (v302 != 3)
          {
            v91[v432] = v302;
            v316 = OUTLINED_FUNCTION_36_3();
            v273(v316, v272);
            goto LABEL_65;
          }
        }

        v303 = OUTLINED_FUNCTION_36_3();
        v273(v303, v272);
      }
    }

    else
    {
      v219 = v440;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v220 = v438;
      v221 = __swift_project_value_buffer(v438, qword_2802CDA10);
      v222 = v413;
      (*(v180 + 16))(v413, v221, v220);
      v223 = v411;
      v224 = v437;
      v120(v411, v219, v437);
      v225 = sub_268B37A34();
      v226 = sub_268B37ED4();
      if (os_log_type_enabled(v225, v226))
      {
        v227 = OUTLINED_FUNCTION_172_0();
        v433 = OUTLINED_FUNCTION_173_0();
        *&v446 = v433;
        *v227 = 136315138;
        v120(v409, v223, v224);
        v432 = sub_268B37C24();
        v229 = v228;
        v230 = *(v78 + 1);
        v230(v223, v224);
        v231 = sub_26892CDB8(v432, v229, &v446);

        *(v227 + 4) = v231;
        _os_log_impl(&dword_2688BB000, v225, v226, "Unexpected parse type: %s, returning nil SettingsIntent", v227, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v433);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v230(v440, v224);
        OUTLINED_FUNCTION_153(&v458);
        v233 = v413;
        v234 = v438;
      }

      else
      {

        v230 = *(v78 + 1);
        v230(v440, v224);
        v230(v223, v224);
        OUTLINED_FUNCTION_153(&v458);
        v233 = v222;
        v234 = v220;
      }

      v232(v233, v234);
      v264 = OUTLINED_FUNCTION_36_3();
      v230(v264, v224);
    }
  }

LABEL_98:
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_96();
  return __swift_storeEnumTagSinglePayload(v304, v305, v306, v435);
}

uint64_t type metadata accessor for SettingsIntent()
{
  result = qword_2802A6638;
  if (!qword_2802A6638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26897E0CC()
{
  sub_268B37924();
  OUTLINED_FUNCTION_96();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26897E110()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26897E154()
{
  v1 = *(v0 + *(type metadata accessor for SettingsIntent() + 40));
  v2 = 1;
  v3 = 0;
  switch(v1)
  {
    case 2:
      goto LABEL_6;
    case 3:
      return v3 & 1;
    default:
      v4 = sub_268B38444();

      if (v4)
      {
        v3 = 1;
      }

      else
      {
        if (!v1)
        {
          v2 = sub_268B38444();
        }

LABEL_6:

        v3 = v2;
      }

      break;
  }

  return v3 & 1;
}

uint64_t sub_26897E25C()
{
  OUTLINED_FUNCTION_71_3();
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

uint64_t sub_26897E2AC(char a1)
{
  if (!a1)
  {
    return 0x656D756C6F76;
  }

  if (a1 == 1)
  {
    return 0x6563696F76;
  }

  return 0x707954616964656DLL;
}

BOOL sub_26897E300()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  return v0 != 0;
}

uint64_t sub_26897E364()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26897E3B4(char a1)
{
  result = 1936942444;
  switch(a1)
  {
    case 1:
      v3 = 1769496941;
      goto LABEL_6;
    case 2:
      result = 1851876717;
      break;
    case 3:
      v3 = 1768843629;
LABEL_6:
      result = v3 | 0x6D756D00000000;
      break;
    case 4:
      result = 1701998445;
      break;
    case 5:
      result = 1702131053;
      break;
    case 6:
      result = 0x6574756D6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26897E464()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26897E4BC(char a1)
{
  if (a1)
  {
    return 0x746F6C5F61;
  }

  else
  {
    return 0x656C7474696C5F61;
  }
}

BOOL sub_26897E4F0()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  return v0 != 0;
}

uint64_t sub_26897E584@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26897E110();
  *a2 = result;
  return result;
}

uint64_t sub_26897E5B4()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_26897BB20(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26897E650@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26897E25C();
  *a2 = result;
  return result;
}

uint64_t sub_26897E680()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_26897E2AC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_26897E704@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26897E300();
  *a2 = result;
  return result;
}

uint64_t sub_26897E7C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26897E364();
  *a2 = result;
  return result;
}

uint64_t sub_26897E7F8()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_26897E3B4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26897E894@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26897E464();
  *a2 = result;
  return result;
}

uint64_t sub_26897E8C4()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_26897E4BC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_26897E948@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26897E4F0();
  *a2 = result;
  return result;
}

uint64_t sub_26897E9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_26897EA8C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_123();
}

uint64_t sub_26897EBA0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 80));
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_123();
}

uint64_t sub_26897EC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26897EC6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SettingsIntent.SettingVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26897ED90);
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

_BYTE *storeEnumTagSinglePayload for SettingsIntent.FloatSettingName(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26897EE94);
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

uint64_t getEnumTagSinglePayload for SettingsIntent.NumericSettingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SettingsIntent.NumericSettingState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x26897F020);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SettingsIntent.NumericSettingQualifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26897F124);
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

_BYTE *sub_26897F174(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x26897F210);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26897F25C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  v7 = OUTLINED_FUNCTION_182(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
    v14 = OUTLINED_FUNCTION_182(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = a3[15];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
      v17 = OUTLINED_FUNCTION_182(v16);
      if (*(v18 + 84) == a2)
      {
        v9 = v17;
        v10 = a3[19];
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
        v20 = OUTLINED_FUNCTION_182(v19);
        if (*(v21 + 84) == a2)
        {
          v9 = v20;
          v10 = a3[21];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
          v10 = a3[22];
        }
      }
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v12 = *(a1 + a3[11]);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t sub_26897F438(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  result = OUTLINED_FUNCTION_182(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
    v14 = OUTLINED_FUNCTION_182(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[15];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
      v17 = OUTLINED_FUNCTION_182(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = v17;
        v12 = a4[19];
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
        v20 = OUTLINED_FUNCTION_182(v19);
        if (*(v21 + 84) == a3)
        {
          v11 = v20;
          v12 = a4[21];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
          v12 = a4[22];
        }
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_26897F5FC()
{
  sub_26897FA80(319, &qword_2802A6648, &type metadata for SettingsIntent.SettingVerb, MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26897FA80(319, &qword_2802A6650, &type metadata for SettingsIntent.FloatSettingName, MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26897FA1C();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26897FA80(319, &qword_2802A6660, &type metadata for SettingsIntent.NumericSettingState, MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_26897FA80(319, &qword_2802A6668, &type metadata for SettingsIntent.NumericSettingQualifier, MEMORY[0x277D83D88]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_26897FA80(319, &qword_2802A6670, &type metadata for SettingsIntent.SettingAttribute, MEMORY[0x277D83D88]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_26897FA80(319, &qword_2802A5E58, &type metadata for ConfirmationStateValue, MEMORY[0x277D83D88]);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_26897FA80(319, &qword_2802A5E68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  sub_26897FA80(319, &qword_2802A5E50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                  if (v18 > 0x3F)
                  {
                    return v17;
                  }

                  else
                  {
                    sub_26897FAD0(319, &qword_2802A5E70, MEMORY[0x277D5FA18], MEMORY[0x277D83D88]);
                    if (v20 > 0x3F)
                    {
                      return v19;
                    }

                    else
                    {
                      sub_26897FAD0(319, &qword_2802A5E78, MEMORY[0x277D5F790], MEMORY[0x277D83940]);
                      v1 = v21;
                      if (v22 <= 0x3F)
                      {
                        sub_26897FAD0(319, &qword_2802A5E80, MEMORY[0x277D5F880], MEMORY[0x277D83D88]);
                        v1 = v23;
                        if (v24 <= 0x3F)
                        {
                          sub_26897FAD0(319, &qword_2802A5E88, MEMORY[0x277D5F748], MEMORY[0x277D83D88]);
                          v1 = v25;
                          if (v26 <= 0x3F)
                          {
                            sub_26897FAD0(319, &qword_2802A5E90, MEMORY[0x277D5F9D0], MEMORY[0x277D83D88]);
                            v1 = v27;
                            if (v28 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_26897FA1C()
{
  if (!qword_2802A6658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5D00, &unk_268B51080);
    v0 = sub_268B380A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2802A6658);
    }
  }
}

void sub_26897FA80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26897FAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26897FB34(uint64_t a1)
{
  result = sub_26897FB8C(&qword_2802A6678, type metadata accessor for SettingsIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26897FB8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26897FBD8()
{
  result = qword_2802A6680;
  if (!qword_2802A6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6680);
  }

  return result;
}

unint64_t sub_26897FC60()
{
  result = qword_2802A6698;
  if (!qword_2802A6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6698);
  }

  return result;
}

unint64_t sub_26897FCB8()
{
  result = qword_2802A66A0;
  if (!qword_2802A66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66A0);
  }

  return result;
}

unint64_t sub_26897FD40()
{
  result = qword_2802A66B8;
  if (!qword_2802A66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66B8);
  }

  return result;
}

unint64_t sub_26897FD98()
{
  result = qword_2802A66C0;
  if (!qword_2802A66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66C0);
  }

  return result;
}

unint64_t sub_26897FDF0()
{
  result = qword_2802A66C8;
  if (!qword_2802A66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66C8);
  }

  return result;
}

unint64_t sub_26897FE78()
{
  result = qword_2802A66E0;
  if (!qword_2802A66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66E0);
  }

  return result;
}

unint64_t sub_26897FED0()
{
  result = qword_2802A66E8;
  if (!qword_2802A66E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66E8);
  }

  return result;
}

unint64_t sub_26897FF28()
{
  result = qword_2802A66F0;
  if (!qword_2802A66F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66F0);
  }

  return result;
}

unint64_t sub_26897FFB0()
{
  result = qword_2802A6708;
  if (!qword_2802A6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6708);
  }

  return result;
}

unint64_t sub_268980008()
{
  result = qword_2802A6710;
  if (!qword_2802A6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6710);
  }

  return result;
}

unint64_t sub_268980060()
{
  result = qword_2802A6718;
  if (!qword_2802A6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6718);
  }

  return result;
}

unint64_t sub_2689800E8()
{
  result = qword_2802A6730;
  if (!qword_2802A6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6730);
  }

  return result;
}

unint64_t sub_268980140()
{
  result = qword_2802A6738;
  if (!qword_2802A6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6738);
  }

  return result;
}

unint64_t sub_268980198()
{
  result = qword_2802A6740;
  if (!qword_2802A6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6740);
  }

  return result;
}

unint64_t sub_268980220()
{
  result = qword_2802A6758;
  if (!qword_2802A6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6758);
  }

  return result;
}

unint64_t sub_268980278()
{
  result = qword_2802A6760;
  if (!qword_2802A6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6760);
  }

  return result;
}

unint64_t sub_2689802D0()
{
  result = qword_2802A6768;
  if (!qword_2802A6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6768);
  }

  return result;
}

unint64_t sub_268980324()
{
  result = qword_2802A6770;
  if (!qword_2802A6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6770);
  }

  return result;
}

unint64_t sub_268980378()
{
  result = qword_2802A6778;
  if (!qword_2802A6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6778);
  }

  return result;
}

unint64_t sub_2689803CC()
{
  result = qword_2802A6780;
  if (!qword_2802A6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6780);
  }

  return result;
}

unint64_t sub_268980420()
{
  result = qword_2802A6788;
  if (!qword_2802A6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6788);
  }

  return result;
}

unint64_t sub_268980474()
{
  result = qword_2802A6790;
  if (!qword_2802A6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6790);
  }

  return result;
}

unint64_t sub_2689804C8()
{
  result = qword_2802A6798;
  if (!qword_2802A6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6798);
  }

  return result;
}

unint64_t sub_26898051C()
{
  result = qword_2802A67A0;
  if (!qword_2802A67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67A0);
  }

  return result;
}

unint64_t sub_268980570()
{
  result = qword_2802A67A8;
  if (!qword_2802A67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67A8);
  }

  return result;
}

unint64_t sub_2689805C4()
{
  result = qword_2802A67B0;
  if (!qword_2802A67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67B0);
  }

  return result;
}

unint64_t sub_268980618()
{
  result = qword_2802A67B8;
  if (!qword_2802A67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67B8);
  }

  return result;
}

unint64_t sub_26898066C()
{
  result = qword_2802A67C0;
  if (!qword_2802A67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67C0);
  }

  return result;
}

unint64_t sub_2689806C0()
{
  result = qword_2802A67C8;
  if (!qword_2802A67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67C8);
  }

  return result;
}

unint64_t sub_268980714()
{
  result = qword_2802A67D0;
  if (!qword_2802A67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67D0);
  }

  return result;
}

unint64_t sub_268980768()
{
  result = qword_2802A67D8;
  if (!qword_2802A67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67D8);
  }

  return result;
}

unint64_t sub_2689807BC()
{
  result = qword_2802A67E0;
  if (!qword_2802A67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67E0);
  }

  return result;
}

unint64_t sub_268980810()
{
  result = qword_2802A67E8;
  if (!qword_2802A67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67E8);
  }

  return result;
}

unint64_t sub_268980864()
{
  result = qword_2802A67F0;
  if (!qword_2802A67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67F0);
  }

  return result;
}

unint64_t sub_2689808B8()
{
  result = qword_2802A67F8;
  if (!qword_2802A67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_18()
{
  v2 = *(*(v1 - 680) + 8);
  result = v0;
  v4 = *(v1 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_9()
{
  v2 = *(v1 - 496) + 8;
  result = v0;
  v4 = *(v1 - 480);
  v5 = *(v1 - 304);
  return result;
}

void OUTLINED_FUNCTION_8_9()
{
  v1 = *(v0 - 344);
  v2 = *(v0 - 328);
  v3 = *(v0 - 336);
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return sub_26897EC6C(v0, type metadata accessor for SettingsIntent);
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return sub_26897EC6C(v0, type metadata accessor for SettingNLv3Intent);
}

void OUTLINED_FUNCTION_21_8()
{
  v2 = *(v0 - 272);

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_24_7()
{
  v1 = *(*(v0 - 680) + 8);
  result = *(v0 - 256);
  v3 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_37_5()
{
  result = v1;
  *(v2 - 304) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 272);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_268980B04(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v70 = a7;
  v67 = a8;
  v68 = a4;
  v63 = a6;
  v64 = a2;
  v69 = a5;
  v65 = a1;
  v66 = a3;
  v8 = sub_268B367A4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v61 = v10;
  v62 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v72 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
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
    _os_log_impl(&dword_2688BB000, v26, v27, "SetSubtitleStateUnsupportedValueStrategy.makeUnsupportedValueOutput()", v28, 2u);
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
  v32 = v72;
  v25(v72, v24, v14);

  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v59 = v29;
    v36 = v35;
    v37 = swift_slowAlloc();
    v73 = v37;
    *v36 = 136315138;
    sub_268B36714();
    v38 = v60;
    sub_268B36B14();

    v39 = sub_268B36784();
    v41 = v40;
    (*(v61 + 8))(v38, v62);
    v42 = sub_26892CDB8(v39, v41, &v73);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2688BB000, v33, v34, "SetSubtitleStateUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x26D6266E0](v37, -1, -1);
    MEMORY[0x26D6266E0](v36, -1, -1);

    v59(v72, v14);
  }

  else
  {

    v29(v32, v14);
  }

  OUTLINED_FUNCTION_1_19();
  v43 = swift_allocObject();
  v45 = v65;
  v44 = v66;
  v43[2] = v31;
  v43[3] = v44;
  v47 = v67;
  v46 = v68;
  v48 = v63;
  v49 = v64;
  v43[4] = v68;
  v43[5] = v49;
  v51 = v70;
  v50 = v71;
  v43[6] = v48;
  v43[7] = v50;
  v43[8] = v45;
  v43[9] = v51;
  v43[10] = v47;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v52 = v48;
  v53 = v49;
  swift_retain_n();
  swift_retain_n();

  v54 = v53;
  v55 = v52;

  sub_2689F8CEC(v45, v54, v44, v46, v69, v55, v50, v51, v47, v44, v46, v55, v54, v50, sub_268982638, v43, v45, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
}

uint64_t sub_26898107C(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
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
      _os_log_impl(&dword_2688BB000, v45, v46, "SetSubtitleStateUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v47, 2u);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    (*(v44 + 8))(v96, v42);
    sub_2688C2ECC();
    v48 = swift_allocError();
    *v49 = -83;
    v103[0] = v48;
    v104 = 1;
    v102(v103);
    return sub_2688EF38C(v103, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v41, v37);
    v82 = sub_2688E1B9C(15, 3, v84, v86, v98, 0x6E776F6E6B6E75, 0xE700000000000000, v87);
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
    sub_2688E2F3C();

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
      _os_log_impl(&dword_2688BB000, v68, v69, "SetSubtitleStateUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v72, 2u);
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

uint64_t sub_268981A40(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_268935590(a1, v37, &unk_2802A57C0, &qword_268B3BE00);
  v18 = v38;
  sub_2688EF38C(v37, &unk_2802A57C0, &qword_268B3BE00);
  if (v18 == 1)
  {
    v19 = a4 == 0x65676175676E616CLL && a5 == 0xE800000000000000;
    if (v19 || (sub_268B38444() & 1) != 0)
    {
      v20 = SetSubtitleStateLanguageUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
      if (v21)
      {
LABEL_8:
        sub_2688C2ECC();
        v22 = OUTLINED_FUNCTION_28_5();
        v24 = 98;
LABEL_9:
        *v23 = v24;
        v37[0] = v22;
        v38 = 1;
        a2(v37);
        return sub_2688EF38C(v37, &unk_2802A57C0, &qword_268B3BE00);
      }

      if (v20 == 4)
      {
        v32 = sub_268AAC1F4(a8 + 2);
        OUTLINED_FUNCTION_1_19();
        v33 = swift_allocObject();
        v33[2] = a2;
        v33[3] = a3;
        v33[4] = a4;
        v33[5] = a5;
        v33[6] = a7;
        v33[7] = a6;
        v33[8] = a8;
        v33[9] = a11;
        v33[10] = v32;

        v34 = a7;
        v35 = a6;

        sub_268A365F4(0, 0, sub_2689826B4, v33);
      }

      if (v20 == 2)
      {
        v30 = a8[26];
        v31 = a8[27];
        __swift_project_boxed_opaque_existential_1(a8 + 23, v30);
        return sub_2689CE88C(0xD000000000000028, 0x8000000268B587A0, a9, a10, v30, v31);
      }

      if (v20 != 1)
      {
        goto LABEL_8;
      }

      v26 = [a7 type] == 2 || objc_msgSend(a7, sel_type) == 3;
      sub_268B37B84();
      sub_268A363C0(0, 0, v26);
    }

    v27 = a4 == 0x656369766564 && a5 == 0xE600000000000000;
    if (!v27 && (sub_268B38444() & 1) == 0)
    {
      sub_2688C2ECC();
      v22 = OUTLINED_FUNCTION_28_5();
      v24 = 101;
      goto LABEL_9;
    }

    v28 = SetSubtitleStateDeviceUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
    if ((v29 & 1) == 0)
    {
      if ((v28 - 2) < 2)
      {
        sub_268B37B84();
        sub_268A367E4();
      }

      if (v28 == 1)
      {
        sub_2688C2ECC();
        v22 = OUTLINED_FUNCTION_28_5();
        v24 = 99;
        goto LABEL_9;
      }
    }

    sub_2688C2ECC();
    v22 = OUTLINED_FUNCTION_28_5();
    v24 = 100;
    goto LABEL_9;
  }

  return a2(a1);
}

uint64_t sub_268981E24(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v64 = a8;
  v61 = a7;
  v68 = a6;
  v60 = a5;
  v59 = a4;
  v69 = a3;
  v70 = a2;
  v66 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v62 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v57 - v20;
  v22 = sub_268B34E24();
  v67 = *(v22 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = v57 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (v57 - v35);
  sub_268935590(v66, v57 - v35, &qword_2802A6300, &unk_268B3BD80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v73[0] = *v36;
  }

  else
  {
    v58 = EnumCaseMultiPayload;
    v57[2] = a10;
    v57[1] = a9;
    sub_2689186C8(v36, v32);
    v57[0] = sub_2688E1B9C(15, 3, v59, v60, v68, 0x6E776F6E6B6E75, 0xE700000000000000, v61);
    v59 = v38;
    v39 = v64;
    v40 = __swift_project_boxed_opaque_existential_1(v64 + 13, v64[16]);
    v41 = *MEMORY[0x277D5BBE0];
    v42 = *(v67 + 104);
    v60 = v25;
    v61 = v22;
    v42(v25, v41, v22);
    v66 = v32;
    sub_268935590(v32, v30, &unk_2802A56E0, &unk_268B3CDF0);

    v43 = sub_268B350F4();
    v44 = *(v43 - 8);
    (*(v44 + 32))(v21, v30, v43);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v43);
    v45 = sub_268B34B94();
    v46 = v63;
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v45);
    v47 = *v40;
    v48 = v62;
    sub_268935590(v21, v62, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v48, 1, v43) == 1)
    {
      sub_2688EF38C(v48, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v44 + 8))(v48, v43);
    }

    v49 = v60;
    v50 = v68;
    sub_2688E2F3C();

    sub_2688EF38C(v46, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v21, &unk_2802A57B0, &unk_268B3CE00);
    (*(v67 + 8))(v49, v61);
    v51 = v39[6];
    __swift_project_boxed_opaque_existential_1(v39 + 2, v39[5]);
    sub_268B34CA4();
    v52 = v65;
    sub_268A82B50(v50, v65);
    v53 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
    v54 = sub_268B354F4();
    memset(v71, 0, sizeof(v71));
    v72 = 0;
    v73[3] = v54;
    v73[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v73);
    v55 = v66;
    sub_268B34F44();
    sub_2688EF38C(v71, &unk_2802A5800, &unk_268B3CE10);
    sub_2688EF38C(v52, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v55, &unk_2802A56E0, &unk_268B3CDF0);
    EnumCaseMultiPayload = v58;
  }

  v74 = EnumCaseMultiPayload == 1;
  v70(v73);
  return sub_2688EF38C(v73, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_2689824FC()
{
  v0 = sub_268A9AAA4();
  sub_26895F84C(v0 + 184);

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t type metadata accessor for SetSubtitleStateUnsupportedValueStrategy()
{
  result = qword_2802A6800;
  if (!qword_2802A6800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2689825D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_268982650()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

void sub_268982750(uint64_t a1)
{
  v2 = v1;
  sub_268982938(a1);
  sub_268982CFC(a1);
  v4 = type metadata accessor for MediaPlayerIntent();
  v5 = 0;
  v6 = 0;
  if (*(a1 + *(v4 + 48)) != 26)
  {
    v5 = sub_268942D54(*(a1 + *(v4 + 48)));
  }

  [v2 setMediaType_];
  v7 = *(a1 + *(v4 + 56));
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for ControlsSettingAttribute();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = (v7 + 32);
    do
    {
      v12 = *v11++;
      v13 = objc_allocWithZone(ObjCClassFromMetadata);
      v14 = sub_26893A824(0, 0);
      if (v12)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      [v14 setSettingName_];
      sub_268B38214();
      v16 = *(v17 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      --v8;
    }

    while (v8);
    v9 = v17;
  }

  sub_2689828C4(v9, v2);
}

void sub_2689828C4(uint64_t a1, void *a2)
{
  type metadata accessor for ControlsSettingAttribute();
  v3 = sub_268B37CE4();

  [a2 setSettingAttributes_];
}

void sub_268982938(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = var50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v8 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688C2F6C(v11);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v19 = sub_268B18100();
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C(v19))
      {
        sub_2688EFD10(0, (v20 & 0xC000000000000001) == 0, v20);
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10]);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_287959E18;
    v30 = type metadata accessor for PauseMediaIntent();
    v24 = v26;
    v29(v28, v30, &off_287959DF8);
LABEL_13:
  }
}

void sub_268982CFC(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v10);
  sub_268965BF8();
  v11 = sub_268B37854();
  sub_2688C2F6C(v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v24);
      sub_26890C900(v24, v23);
      sub_268AC88F0(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_268B38214();
      v14 = *(v25 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v25;
    v16 = off_28795BAD8;
    v17 = type metadata accessor for PauseMediaIntent();
    v16(v15, v17, &off_28795BAC8);
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
}

uint64_t sub_268982FF8(uint64_t a1)
{
  v2 = sub_268B35494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v51 = v4;
  v52 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - v10;
  v49 = type metadata accessor for SettingsIntent();
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v45 - v24;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v47 = *(v18 + 16);
  v48 = v26;
  v47(v25);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v46 = v15;
    v30 = v18;
    v31 = a1;
    v32 = v23;
    v33 = v14;
    v34 = v29;
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "SetVolumeLevel.shouldHandle() called", v29, 2u);
    v35 = v34;
    v14 = v33;
    v23 = v32;
    a1 = v31;
    v18 = v30;
    v15 = v46;
    MEMORY[0x26D6266E0](v35, -1, -1);
  }

  v36 = *(v18 + 8);
  v36(v25, v15);
  v37 = v50;
  (*(v51 + 16))(v50, a1, v52);
  sub_26897BBA8(v37, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v49) == 1)
  {
    sub_26891E52C(v11);
  }

  else
  {
    sub_26891E594(v11, v14);
    v38 = *v14;
    if (v38 != 4 && sub_268AD3EDC(v38, &unk_28794FF08))
    {
      sub_26891E5F8(v14);
      return 1;
    }

    (v47)(v23, v48, v15);
    v40 = sub_268B37A34();
    v41 = sub_268B37EC4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v14;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v40, v41, "Incorrect verb in intent for flow, ignoring input", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);

      v36(v23, v15);
      v44 = v42;
    }

    else
    {

      v36(v23, v15);
      v44 = v14;
    }

    sub_26891E5F8(v44);
  }

  return 0;
}

uint64_t sub_268983434()
{
  v1 = sub_2689840D4();
  if ((v1 - 1) < 4)
  {
    v2 = sub_26892D418(v0);
    v4 = v3;
    sub_268B36C54();
    v5 = sub_268B36C24();
    if (v4)
    {
      if (v2 == v5 && v4 == v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = sub_268B38444();
      }
    }

    else
    {
      v8 = 0;
    }

    return v8 & 1;
  }

  if (!v1)
  {
    v8 = 1;
    return v8 & 1;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t Device.namedEntities.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v3 = sub_268988510(v0);
  if (v3)
  {
    sub_268984918(v3);
    v2 = v23;
  }

  v4 = sub_2688EF000(v0, &selRef_roomName);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = *(v2 + 16);
      OUTLINED_FUNCTION_88();
      sub_2689876A4();
      v2 = v18;
    }

    v8 = *(v2 + 16);
    if (v8 >= *(v2 + 24) >> 1)
    {
      sub_2689876A4();
      v2 = v19;
    }

    *(v2 + 16) = v8 + 1;
    v9 = v2 + 16 * v8;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
  }

  v10 = sub_2688EF000(v1, &selRef_name);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = *(v2 + 16);
      OUTLINED_FUNCTION_88();
      sub_2689876A4();
      v2 = v21;
    }

    v14 = *(v2 + 16);
    if (v14 >= *(v2 + 24) >> 1)
    {
      sub_2689876A4();
      v2 = v22;
    }

    *(v2 + 16) = v14 + 1;
    v15 = v2 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
  }

  return v2;
}

uint64_t Device.deviceType.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2688EF000(v1, &selRef_type);
  if (v3)
  {
    sub_268B37004();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_268B37034();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

void Device.isPlayingOrHasPausedContentOnScreen.getter()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B371E4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v68 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v65 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5AF0, &unk_268B3C500);
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  v14 = sub_268B37034();
  v15 = OUTLINED_FUNCTION_1(v14);
  v66 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v25);
  v27 = &v63 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_20_0();
  v67 = v32 - v33;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v63 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v63 - v38;
  v40 = [v0 context];
  if (!v40)
  {
    goto LABEL_16;
  }

  v41 = v40;
  v64 = v13;
  v42 = v1;
  v43 = [v40 nowPlayingState];

  if (v43 <= 1)
  {
    goto LABEL_16;
  }

  if (v43 == 2)
  {
    Device.deviceType.getter(v27);
    v44 = v42;
    if (__swift_getEnumTagSinglePayload(v27, 1, v14))
    {
      sub_2688C058C(v27, &qword_2802A58F0, &unk_268B3BEC0);
      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v42);
    }

    else
    {
      v48 = v66;
      (*(v66 + 16))(v21, v27, v14);
      sub_2688C058C(v27, &qword_2802A58F0, &unk_268B3BEC0);
      sub_268B36FE4();
      (*(v48 + 8))(v21, v14);
    }

    v49 = v64;
    sub_268B371A4();
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v44);
    v50 = *(v8 + 48);
    sub_2688F1FA4(v39, v49, &qword_2802A58F8, &unk_268B3C510);
    sub_2688F1FA4(v37, v49 + v50, &qword_2802A58F8, &unk_268B3C510);
    OUTLINED_FUNCTION_1_17(v49);
    if (v52)
    {
      OUTLINED_FUNCTION_12_2(v37);
      OUTLINED_FUNCTION_12_2(v39);
      OUTLINED_FUNCTION_1_17(v49 + v50);
      if (v52)
      {
        sub_2688C058C(v49, &qword_2802A58F8, &unk_268B3C510);
LABEL_16:
        OUTLINED_FUNCTION_23();
        return;
      }
    }

    else
    {
      v51 = v67;
      sub_2688F1FA4(v49, v67, &qword_2802A58F8, &unk_268B3C510);
      OUTLINED_FUNCTION_1_17(v49 + v50);
      if (!v52)
      {
        v53 = v68;
        v54 = *(v68 + 32);
        v55 = v65;
        v56 = OUTLINED_FUNCTION_52_3();
        v57(v56);
        OUTLINED_FUNCTION_4_11();
        sub_268988A28(v58, v59);
        sub_268B37BB4();
        v60 = *(v53 + 8);
        v60(v55, v44);
        sub_2688C058C(v37, &qword_2802A58F8, &unk_268B3C510);
        sub_2688C058C(v39, &qword_2802A58F8, &unk_268B3C510);
        v60(v51, v44);
        v61 = OUTLINED_FUNCTION_0_1();
        sub_2688C058C(v61, v62, &unk_268B3C510);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_12_2(v37);
      OUTLINED_FUNCTION_12_2(v39);
      (*(v68 + 8))(v51, v44);
    }

    sub_2688C058C(v49, &qword_2802A5AF0, &unk_268B3C500);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6810, &qword_268B40978);
  sub_268B38434();
  __break(1u);
}

uint64_t sub_268983C00()
{
  sub_268B381C4();
  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650]();
  sub_2688EF000(v0, &selRef_name);
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_37_6();
  v1 = sub_2688EF000(v0, &selRef_roomName);
  OUTLINED_FUNCTION_64_2(v1, v2);
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650](0xD000000000000013);
  v3 = sub_2688EF000(v0, &selRef_displayableName);
  OUTLINED_FUNCTION_64_2(v3, v4);
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_35_5();
  v5 = sub_26892D418(v0);
  OUTLINED_FUNCTION_64_2(v5, v6);
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_47_1();
  v7 = sub_2688EF000(v0, &selRef_type);
  v9 = OUTLINED_FUNCTION_64_2(v7, v8);
  if (v11)
  {
    v12 = 0xE300000000000000;
  }

  else
  {
    v12 = v10;
  }

  MEMORY[0x26D625650](v9, v12);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return 0;
}

void sub_268983D74(uint64_t a1)
{
  v3 = [v1 context];
  if (v3)
  {
LABEL_24:

    return;
  }

  v4 = sub_2688EFD0C(a1);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      v14 = 0;
      goto LABEL_23;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = v6;
    v7 = sub_268A52360(v6);
    v9 = v8;
    v10 = sub_26892D418(v1);
    if (!v9)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

LABEL_17:

      continue;
    }

    if (!v11)
    {
      goto LABEL_17;
    }

    if (v7 == v10 && v9 == v11)
    {

LABEL_22:
      v14 = v15;
LABEL_23:
      v16 = v14;
      [v1 setContext_];
      v3 = v16;
      goto LABEL_24;
    }

    v13 = sub_268B38444();

    if (v13)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_268983F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = objc_allocWithZone(v21);
  OUTLINED_FUNCTION_182_0();
  v30 = sub_268B37BC4();
  v31 = OUTLINED_FUNCTION_60_0();
  v33 = sub_268988448(v31, v32, v30, v22);

  v34 = v33;
  if (v28)
  {
    v35 = sub_268B37BC4();
  }

  else
  {
    v35 = 0;
  }

  [v33 setName_];

  v36 = OUTLINED_FUNCTION_60_0();
  sub_2689884A0(v36, v37, v33);
  if (v26)
  {
    v38 = sub_268B37BC4();
  }

  else
  {
    v38 = 0;
  }

  [v33 setRoomName_];

  [v33 setContext_];
  sub_2688C063C();
  v39 = sub_268B38054();
  OUTLINED_FUNCTION_70_3(v39, sel_setIsDeviceSelectedUsingContext_);

  v40 = sub_268B38054();
  OUTLINED_FUNCTION_70_3(v40, sel_setIsPreResolved_);

  if (a21)
  {
    sub_268A3239C();
    if (v41)
    {

      v42 = sub_268B38054();
      OUTLINED_FUNCTION_70_3(v42, sel_setIsEndpoint_);
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689840D4()
{
  v1 = sub_26892D418(v0);
  v3 = v2;
  sub_268B36C54();
  v4 = sub_268B36C24();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {

      return 0;
    }

    v7 = sub_268B38444();

    if (v7)
    {
      return 0;
    }
  }

  else
  {
  }

  v8 = [v0 context];
  if (!v8)
  {
    return 4;
  }

  v9 = v8;
  v10 = [v8 proximity];

  return v10;
}

void sub_2689841C4()
{
  OUTLINED_FUNCTION_26();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6828, &qword_268B40A38);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v4);
  v6 = &v68 - v5;
  v7 = sub_268B35894();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v77 = v14 - v13;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B34674();
  v16 = OUTLINED_FUNCTION_1(v15);
  v75 = v17;
  v76 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v23 = sub_268B37A54();
  v24 = OUTLINED_FUNCTION_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v35);
  v37 = &v68 - v36;
  v38 = sub_268988510(v0);
  if (v38)
  {
    if (*(v38 + 16))
    {
      sub_2689858AC();

      goto LABEL_12;
    }
  }

  sub_268B35754();
  v39 = sub_26894E030(v0);
  v40 = MEMORY[0x26D6237C0]();
  if (v40)
  {
    v72 = v40;
    v74 = v10;
    sub_268B35BD4();
    v41 = OUTLINED_FUNCTION_14_7();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    v73 = v39;
    v45 = MEMORY[0x26D623510](v39, v37);
    sub_2688C058C(v37, &unk_2802A62D0, &qword_268B3EDD0);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v46 = __swift_project_value_buffer(v23, qword_2802CDA10);
    (*(v26 + 16))(v31, v46, v23);

    v47 = sub_268B37A34();
    v48 = sub_268B37ED4();

    v49 = os_log_type_enabled(v47, v48);
    v71 = v45;
    if (v49)
    {
      v50 = v45;
      OUTLINED_FUNCTION_68();
      v51 = swift_slowAlloc();
      v70 = v6;
      v52 = v51;
      OUTLINED_FUNCTION_69();
      v53 = swift_slowAlloc();
      v78 = v50;
      v79 = v53;
      *v52 = 136315138;
      sub_268B36624();
      v69 = v7;
      OUTLINED_FUNCTION_20_9();
      sub_268988A28(v54, v55);
      v56 = sub_268B38404();
      v58 = sub_26892CDB8(v56, v57, &v79);

      *(v52 + 4) = v58;
      v7 = v69;
      _os_log_impl(&dword_2688BB000, v47, v48, "Device#toRREntities UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    (*(v26 + 8))(v31, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6820, &qword_268B40A30);
    v59 = *(sub_268B37A94() - 8);
    v60 = *(v59 + 72);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    *(swift_allocObject() + 16) = xmmword_268B3BBC0;
    sub_268B34664();
    sub_268B34634();
    (*(v75 + 8))(v22, v76);
    v62 = v74;
    v63 = v77;
    (*(v74 + 104))(v77, *MEMORY[0x277D5F638], v7);
    sub_268B35884();
    (*(v62 + 8))(v63, v7);
    sub_268B37A74();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);

    sub_268B37A84();
  }

  else
  {
  }

LABEL_12:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689847C0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_268984918(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2688E1508(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2689849D8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2688E1520(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_268984AD8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}