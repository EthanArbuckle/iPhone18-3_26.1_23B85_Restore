uint64_t sub_2689134D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8, char a9, uint64_t a10)
{
  v70 = a8;
  v71 = a7;
  v69 = a6;
  v63 = a5;
  v68 = a4;
  v62 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v60 - v20;
  v67 = sub_268B34E24();
  v65 = *(v67 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v60 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v60 - v32);
  sub_2688F1FA4(a1, &v60 - v32, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *v33;
    v35 = sub_268B36E84();
    if (v36)
    {
      v63 = v35;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v63 = v48;
    }

    v37 = a2;
    v49 = __swift_project_boxed_opaque_existential_1(v37 + 13, v37[16]);
    (*(v65 + 104))(v64, *MEMORY[0x277D5BC00], v67);
    v50 = sub_268B350F4();
    v51 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v50);
    v52 = sub_268B34B94();
    v53 = v61;
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v52);
    v54 = *v49;
    sub_2688F1FA4(v51, v19, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v19, 1, v50) == 1)
    {
      sub_2688C058C(v19, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v50 - 8) + 8))(v19, v50);
    }

    v55 = v64;
    sub_2688E2778();

    sub_2688C058C(v53, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v66, &unk_2802A57B0, &unk_268B3CE00);
    (*(v65 + 8))(v55, v67);
    v56 = *__swift_project_boxed_opaque_existential_1(v37 + 13, v37[16]);
    v57 = v34;
    sub_26894B450();

    v72[0] = v34;
    v73 = 1;
    v58 = v34;
    v71(v72);

    return sub_2688C058C(v72, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v38 = v63;
    sub_2689186C8(v33, v29);
    v39 = v62;
    swift_beginAccess();
    v40 = sub_268AAC0B4(a2 + 2, *(v39 + 16));
    v41 = a2[22];
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    v42 = sub_268B36FA4();
    sub_2688F1FA4(v29, v27, &unk_2802A56E0, &unk_268B3CDF0);
    v43 = *(v23 + 48);
    v44 = *&v27[v43];
    if (v42)
    {
      v45 = *&v27[v43];
      sub_268913BA8();
    }

    else
    {
      swift_beginAccess();
      sub_2689147E8(v27, v44, v68, v38, v69, 0, a9 & 1, a10, v40, v71, v70, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    }

    sub_2688C058C(v29, &unk_2802A56E0, &unk_268B3CDF0);
    v46 = sub_268B350F4();
    return (*(*(v46 - 8) + 8))(v27, v46);
  }
}

void sub_268913BA8()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v77 = v3;
  v78 = v4;
  v76 = v5;
  v80 = v6;
  v84 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_268B35044();
  v13 = OUTLINED_FUNCTION_1(v12);
  v81 = v14;
  v82 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v79 = v18 - v17;
  OUTLINED_FUNCTION_9();
  v19 = sub_268B37A54();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v29 = OUTLINED_FUNCTION_1(v28);
  v72 = v30;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v73 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_78();
  v83 = v34;
  MEMORY[0x28223BE20](v35);
  v36 = OUTLINED_FUNCTION_27_1();
  v74 = *(v36 - 8);
  v75 = v36;
  (*(v74 + 16))(v1, v11);
  *(v1 + *(v28 + 48)) = v9;
  v37 = qword_2802A4F30;
  v38 = v9;
  if (v37 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v19, qword_2802CDA10);
  OUTLINED_FUNCTION_8_4();
  v39(v27);
  v40 = sub_268B37A34();
  v41 = sub_268B37ED4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_14();
    *v42 = 0;
    _os_log_impl(&dword_2688BB000, v40, v41, "PauseMediaHandleIntentStrategy#intentHandledResponse...", v42, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v22 + 8))(v27, v19);
  sub_26890C900((v2 + 33), v85);
  v68 = v87;
  v69 = v86;
  v71 = __swift_project_boxed_opaque_existential_1(v85, v86);
  v43 = v83;
  sub_2688F1FA4(v1, v83, &unk_2802A56E0, &unk_268B3CDF0);
  v70 = *(v43 + *(v28 + 48));
  if (sub_268B18100())
  {
    v44 = v2[38];
    sub_268921344();
    v46 = v45;

    if (v46[2])
    {
      v47 = v46[5];
      v66 = v46[4];
      v67 = v47;
    }

    else
    {
      OUTLINED_FUNCTION_16_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_3();
  }

  v48 = *__swift_project_boxed_opaque_existential_1(v2 + 8, v2[11]);
  if (v48)
  {
    v49 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v65) = [v48 BOOLForKey_];
  }

  else
  {
    HIDWORD(v65) = 0;
  }

  v50 = v79;
  v51 = v84;
  sub_268A82B50(v84, v79);
  v52 = sub_2689F0948();
  v53 = v73;
  sub_2688F1FA4(v1, v73, &unk_2802A56E0, &unk_268B3CDF0);
  v54 = (*(v72 + 80) + 40) & ~*(v72 + 80);
  v55 = (v32 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v56[2] = v51;
  v56[3] = v2;
  v56[4] = v77;
  sub_2689186C8(v53, v56 + v54);
  v57 = (v56 + v55);
  v58 = v78;
  *v57 = v76;
  v57[1] = v58;
  v59 = v68;
  v76 = v1;
  v60 = *(v68 + 64);
  v61 = v51;

  v62 = v2 + 23;
  v63 = v83;
  v64 = v70;
  v60(v83, v70, v66, v67, HIDWORD(v65), v80, v50, v62, v52 & 1, v51, sub_268918B44, v56, v69, v59);

  (*(v81 + 8))(v50, v82);
  sub_2688C058C(v76, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v74 + 8))(v63, v75);
  __swift_destroy_boxed_opaque_existential_0Tm(v85);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26891412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v69 = a2;
  v70 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v54 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v13 = v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v21 = sub_268B34E24();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v59 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v54 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v57 = v25[2];
  v58 = v31;
  v57(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = v13;
    v35 = a5;
    v36 = v25;
    v37 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "PauseMediaHandleIntentStrategy#intentHandledResponse output has been created.", v34, 2u);
    v38 = v37;
    v25 = v36;
    a5 = v35;
    v13 = v61;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v39 = v25[1];
  v61 = (v25 + 1);
  v56 = v39;
  v39(v30, v24);
  sub_268947F08();
  v54[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1((v70 + 104), *(v70 + 128));
  (*(v66 + 104))(v65, *MEMORY[0x277D5BC10], v67);
  sub_2688F1FA4(a5, v13, &unk_2802A56E0, &unk_268B3CDF0);

  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v20, v13, v42);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v44 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v44);
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

  v46 = v65;
  v47 = v68;
  sub_2688E2778();

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  (*(v66 + 8))(v46, v67);
  v48 = *__swift_project_boxed_opaque_existential_1((v70 + 104), *(v70 + 128));
  sub_26894B450();
  v49 = v59;
  (v57)(v59, v58, v24);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "PauseMediaHandleIntentStrategy#intentHandledResponse returning output", v52, 2u);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  v56(v49, v24);
  return v64(v62);
}

void sub_2689147E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_26();
  v99 = v23;
  v100 = v25;
  v94 = v27;
  v95 = v26;
  HIDWORD(v98) = v28;
  v96 = v30;
  v97 = v29;
  v32 = v31;
  v33 = sub_268B35044();
  v34 = OUTLINED_FUNCTION_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  v93 = v39;
  v40 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_268B37A54();
  v42 = OUTLINED_FUNCTION_1(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v51 = v50 - 8;
  v89 = *(v50 - 8);
  v52 = *(v89 + 8);
  v53 = MEMORY[0x28223BE20](v50);
  v92 = &v87 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v54 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4(v54);
  (*(v55 + 16))(v24, v100);
  v56 = *(v51 + 56);
  v100 = v24;
  *(v24 + v56) = v32;
  v57 = qword_2802A4F30;
  v58 = v32;
  if (v57 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v88 = a22;
  v90 = a23;
  v91 = a21;
  v59 = __swift_project_value_buffer(v41, qword_2802CDA10);
  (*(v44 + 16))(v49, v59, v41);
  v60 = sub_268B37A34();
  v61 = sub_268B37ED4();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_14();
    *v62 = 0;
    _os_log_impl(&dword_2688BB000, v60, v61, "PauseMediaHandleIntentStrategy#legacyHandledResponse...", v62, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v44 + 8))(v49, v41);
  v63 = v92;
  sub_2688F1FA4(v100, v92, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v36 + 16))(v40, v94, v33);
  v64 = (v89[80] + 40) & ~v89[80];
  v65 = (v52 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (*(v36 + 80) + v65 + 16) & ~*(v36 + 80);
  v94 = (v93 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v93 = v33;
  v69 = v95;
  v70 = v96;
  v89 = v40;
  v71 = v99;
  *(v68 + 2) = v95;
  *(v68 + 3) = v71;
  *(v68 + 4) = v70;
  sub_2689186C8(v63, &v68[v64]);
  v72 = &v68[v65];
  v73 = v89;
  v74 = v90;
  *v72 = v88;
  *(v72 + 1) = v74;
  (*(v36 + 32))(&v68[v66], v73, v93);
  *&v68[v94] = v91;
  v75 = v97;
  v94 = v68;
  *&v68[v67] = v97;
  v76 = v69;

  v77 = v75;
  v78 = sub_268B18100();
  v79 = v78;
  if (!v78)
  {
    v83 = 0;
    goto LABEL_14;
  }

  if (!sub_2688EFD0C(v78))
  {

LABEL_13:
    v83 = 0;
    v79 = 0;
    goto LABEL_14;
  }

  sub_2688EFD10(0, (v79 & 0xC000000000000001) == 0, v79);
  if ((v79 & 0xC000000000000001) != 0)
  {
    v80 = MEMORY[0x26D625BD0](0, v79);
  }

  else
  {
    v80 = *(v79 + 32);
  }

  v81 = v80;

  v82 = [v81 routeId];

  if (!v82)
  {
    goto LABEL_13;
  }

  v83 = sub_268B37BF4();
  v79 = v84;

LABEL_14:
  v85 = v99;
  v86 = __swift_project_boxed_opaque_existential_1((v99 + 224), *(v99 + 248));
  sub_268AED0F0(v76, v83, v79, 0, 0, BYTE4(v98) & 1, v85 + 16, v85 + 144, v85 + 184, *v86, sub_2689188FC, v94, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);

  sub_2688C058C(v100, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268914D1C(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, char *a10)
{
  v87 = a8;
  v88 = a7;
  v90 = a6;
  v86 = a5;
  v92 = a3;
  LODWORD(v83) = a2;
  v89 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v85 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v80 = &v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v79 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v81 = &v79 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v79 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v79 - v36;
  v38 = sub_268B34E24();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v84 = &v79 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v79 - v43;
  v91 = a4;
  if (v83)
  {
    v45 = v19;
    v83 = v38;
    v46 = v90;
    sub_268B36E84();
    if (!v47)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v66 = v39;
    v67 = v81;
    v68 = __swift_project_boxed_opaque_existential_1(v91 + 13, v91[16]);
    (*(v39 + 104))(v84, *MEMORY[0x277D5BC00], v83);
    sub_2688F1FA4(v46, v23, &unk_2802A56E0, &unk_268B3CDF0);

    v69 = sub_268B350F4();
    v70 = *(v69 - 8);
    (*(v70 + 32))(v67, v23, v69);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v69);
    v71 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v71);
    v72 = *v68;
    sub_2688F1FA4(v67, v30, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v30, 1, v69) == 1)
    {
      sub_2688C058C(v30, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v70 + 8))(v30, v69);
    }

    v73 = v84;
    v74 = v85;
    sub_2688E2778();

    sub_2688C058C(v74, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v67, &unk_2802A57B0, &unk_268B3CE00);
    (*(v66 + 8))(v73, v83);
    v75 = *__swift_project_boxed_opaque_existential_1(v91 + 13, v91[16]);
    v76 = v89;
    sub_26894B450();
    v95[0] = v76;
    v98 = 1;
    v77 = v76;
  }

  else
  {
    v84 = a10;
    v83 = a9;
    sub_268947F08();
    v79 = v48;
    v81 = v49;
    v50 = __swift_project_boxed_opaque_existential_1(a4 + 13, a4[16]);
    v51 = *MEMORY[0x277D5BC10];
    v85 = v39;
    (*(v39 + 104))(v44, v51, v38);
    sub_2688F1FA4(v90, v25, &unk_2802A56E0, &unk_268B3CDF0);

    v52 = sub_268B350F4();
    v53 = *(v52 - 8);
    (*(v53 + 32))(v37, v25, v52);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v52);
    v54 = sub_268B34B94();
    v55 = v80;
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v54);
    v56 = *v50;
    sub_2688F1FA4(v37, v35, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v35, 1, v52) == 1)
    {
      sub_2688C058C(v35, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v53 + 8))(v35, v52);
    }

    sub_2688E2778();

    sub_2688C058C(v55, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v37, &unk_2802A57B0, &unk_268B3CE00);
    (*(v85 + 8))(v44, v38);
    v57 = v91;
    v58 = __swift_project_boxed_opaque_existential_1(v91 + 13, v91[16]);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v95[0] = v89;
    v59 = *v58;

    sub_268948494(v95);
    sub_2688C058C(v95, &byte_2802A6450, &byte_268B3BE10);
    v60 = *__swift_project_boxed_opaque_existential_1(v57 + 13, v57[16]);
    sub_26894B450();
    v96 = sub_268B354F4();
    v97 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v95);
    v61 = 0;
    if (sub_2689F0948())
    {
      v61 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v62 = sub_268B38064();
      [v61 setMinimumAutoDismissalTimeInMs_];

      [v61 setPremptivelyResumeMedia_];
    }

    v63 = v57[6];
    __swift_project_boxed_opaque_existential_1(v57 + 2, v57[5]);
    sub_268B34CA4();
    v64 = sub_268B35044();
    v65 = v82;
    (*(*(v64 - 8) + 16))(v82, v83, v64);
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v64);
    v94 = 0;
    memset(v93, 0, sizeof(v93));
    sub_268B34EF4();

    sub_2688C058C(v93, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v65, &qword_2802A57F0, &qword_268B3DDB0);
    v98 = 0;
  }

  v88(v95);
  return sub_2688C058C(v95, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_2689157E0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v112 = v2;
  v113 = v3;
  v5 = v4;
  v7 = v6;
  v109 = v8;
  v105 = sub_268B367A4();
  v9 = OUTLINED_FUNCTION_1(v105);
  v104 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v102 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v25 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  v28 = v99 - v27;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v16, qword_2802CDA10);
  OUTLINED_FUNCTION_8_4();
  v115 = v29;
  v116 = v30;
  v114 = v31;
  v31(v28);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  v34 = os_log_type_enabled(v32, v33);
  v111 = v1;
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_14();
    *v35 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "PauseMediaHandleIntentStrategy.makeFailureHandlingIntentResponse()", v35, 2u);
    OUTLINED_FUNCTION_12();
  }

  v117 = *(v19 + 8);
  v117(v28, v16);
  v36 = sub_268B36E84();
  v110 = v7;
  if (v37)
  {
    v106 = v37;
    v107 = v36;
  }

  else
  {
    v38 = OBJC_IVAR___PauseMediaIntentResponse_code;
    swift_beginAccess();
    v118[0] = *&v5[v38];
    sub_268B38404();
    sub_268947F08();
    v107 = v39;
    v106 = v40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v42 = OBJC_IVAR___PauseMediaIntentResponse_code;
  swift_beginAccess();
  v103 = v42;
  v118[0] = *&v5[v42];
  sub_268B38404();
  v43 = sub_268B36E94();
  v45 = v44;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v43;
  *(inited + 56) = v45;
  v108 = sub_268B37B84();
  sub_268B36754();
  v46 = sub_268B36734();
  if (!v46)
  {
    v46 = sub_268B36744();
  }

  v47 = v46;
  OUTLINED_FUNCTION_9_3();
  v48();

  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v99[1] = v25;
    v52 = v51;
    v53 = swift_slowAlloc();
    v101 = v16;
    v54 = v53;
    v118[0] = v53;
    *v52 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v55 = sub_268B36784();
    v100 = v5;
    v57 = v56;
    (*(v104 + 8))(v15, v105);
    v58 = sub_26892CDB8(v55, v57, v118);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_2688BB000, v49, v50, "PauseMediaHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    v16 = v101;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    OUTLINED_FUNCTION_23_2();
    v59();
    v5 = v100;
  }

  else
  {

    OUTLINED_FUNCTION_23_2();
    v60();
  }

  v61 = swift_allocObject();
  v62 = v111;
  v61[2] = v47;
  v61[3] = v62;
  v63 = v110;
  v61[4] = v109;
  v61[5] = v63;
  v64 = v106;
  v61[6] = v107;
  v61[7] = v64;
  v65 = v112;
  v61[8] = v113;
  v61[9] = v65;

  v66 = v63;

  v67 = sub_268B18100();
  v68 = sub_268A90E50(v67);

  if (v68)
  {
    v69 = *(v62 + 56);
    v70 = v69[6];
    __swift_project_boxed_opaque_existential_1(v69 + 2, v69[5]);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_10_4(v71 + 26, v72, v73, v74);

LABEL_21:

    goto LABEL_22;
  }

  v75 = v103;
  v76 = *&v5[v103];
  switch(v76)
  {
    case 102:
    case 100:
      v84 = *(v62 + 56);
      v85 = v84[6];
      __swift_project_boxed_opaque_existential_1(v84 + 2, v84[5]);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_10_4(v86 + 17, v87, v88, v89);

      goto LABEL_21;
    case 101:
      v90 = *(v62 + 56);
      v118[0] = 0;
      v118[1] = 0;
      v118[2] = 1;
      v119 = 0u;
      v120 = 0u;
      memset(v121, 0, sizeof(v121));
      sub_268AB2B1C();

      sub_26891864C(v118);
      goto LABEL_22;
    case 5:
      type metadata accessor for ErrorFilingHelper();
      static ErrorFilingHelper.setupAdditionalTTRInfo(intentResponse:params:)();
      v78 = v77;

      v79 = *(v62 + 56);
      v80 = v79[5];
      v81 = v79[6];
      __swift_project_boxed_opaque_existential_1(v79 + 2, v80);
      OUTLINED_FUNCTION_2_5();
      sub_2689CE860(v82 + 12, 0x8000000268B57330, v78, v83, v61, v80, v81);

      goto LABEL_21;
  }

  v91 = v102;
  OUTLINED_FUNCTION_9_3();
  v92();
  v93 = v5;
  v94 = sub_268B37A34();
  v95 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_19(v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 134349056;
    *(v96 + 4) = *&v5[v75];

    _os_log_impl(&dword_2688BB000, v94, v91, "Unrecognized intentresponse code %{public}ld", v96, 0xCu);
    OUTLINED_FUNCTION_12();
  }

  else
  {

    v94 = v93;
  }

  v117(v102, v16);
  sub_2688C2ECC();
  v97 = swift_allocError();
  *v98 = 42;
  v118[0] = v97;
  LOBYTE(v120) = 1;
  v113(v118);

  sub_2688C058C(v118, &unk_2802A57C0, &qword_268B3BE00);
LABEL_22:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689161A4(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v125 = a8;
  v123 = a6;
  v124 = a7;
  v121 = a3;
  v122 = a5;
  v126 = a4;
  v128 = a2;
  v115 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v114 = &v105 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v119 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v119);
  v113 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v105 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v105 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v111 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v110 = &v105 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v108 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v118 = &v105 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v105 - v30;
  MEMORY[0x28223BE20](v29);
  v109 = &v105 - v32;
  v120 = sub_268B34E24();
  v127 = *(v120 - 8);
  v33 = *(v127 + 64);
  v34 = MEMORY[0x28223BE20](v120);
  v117 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v116 = &v105 - v36;
  v37 = sub_268B37A54();
  v131 = *(v37 - 8);
  v38 = *(v131 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v112 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v105 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v105 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v105 - v48);
  sub_2688F1FA4(v115, &v105 - v48, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v37, qword_2802CDA10);
    (*(v131 + 16))(v45, v51, v37);
    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v120;
    v56 = v109;
    if (v54)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "PauseMediaHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v57, 2u);
      MEMORY[0x26D6266E0](v57, -1, -1);
    }

    (*(v131 + 8))(v45, v37);
    v58 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    (*(v127 + 104))(v116, *MEMORY[0x277D5BC00], v55);
    v59 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v59);
    v60 = *MEMORY[0x277D5B8E0];
    v61 = sub_268B34B94();
    v62 = v110;
    (*(*(v61 - 8) + 104))(v110, v60, v61);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    v63 = *v58;
    sub_2688F1FA4(v56, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v59) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v59 - 8) + 8))(v31, v59);
    }

    v81 = v116;
    sub_2688E2778();

    sub_2688C058C(v62, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v56, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v81, v55);
    v82 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    sub_2688C2ECC();
    v83 = swift_allocError();
    *v84 = -92;
    v85 = *v82;
    sub_26894B450();

    v86 = swift_allocError();
    *v87 = -92;
    v129[0] = v86;
    v130 = 1;
    v124(v129);

    return sub_2688C058C(v129, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v49, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v64 = __swift_project_value_buffer(v37, qword_2802CDA10);
    v65 = *(v131 + 16);
    v110 = v64;
    v109 = v65;
    (v65)(v43);
    v66 = sub_268B37A34();
    v67 = sub_268B37ED4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2688BB000, v66, v67, "PauseMediaHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v68, 2u);
      MEMORY[0x26D6266E0](v68, -1, -1);
    }

    v69 = *(v131 + 8);
    v131 += 8;
    v106 = v69;
    v69(v43, v37);
    v70 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    v71 = v120;
    (*(v127 + 104))(v117, *MEMORY[0x277D5BC00], v120);
    v116 = v17;
    v72 = v107;
    sub_2688F1FA4(v17, v107, &unk_2802A56E0, &unk_268B3CDF0);

    v73 = sub_268B350F4();
    v74 = *(v73 - 8);
    v75 = v118;
    (*(v74 + 32))(v118, v72, v73);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v73);
    v76 = sub_268B34B94();
    v77 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v76);
    v78 = *v70;
    v79 = v108;
    sub_2688F1FA4(v75, v108, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v73);
    v115 = v74;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v79, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v107 = v78;
      sub_268B350B4();
      (*(v74 + 8))(v79, v73);
    }

    v89 = v117;
    sub_2688E2778();

    sub_2688C058C(v77, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v118, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v89, v71);
    v90 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    sub_2688C2ECC();
    v91 = swift_allocError();
    *v92 = 41;
    v93 = *v90;
    sub_26894B450();

    v94 = v112;
    (v109)(v112, v110, v37);
    v95 = sub_268B37A34();
    v96 = sub_268B37ED4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2688BB000, v95, v96, "PauseMediaHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v97, 2u);
      MEMORY[0x26D6266E0](v97, -1, -1);
    }

    v106(v94, v37);
    v98 = v128[36];
    v99 = v128[37];
    __swift_project_boxed_opaque_existential_1(v128 + 33, v98);
    v100 = v116;
    v101 = v113;
    sub_2688F1FA4(v116, v113, &unk_2802A56E0, &unk_268B3CDF0);
    v102 = *(v101 + *(v119 + 48));
    v103 = v114;
    sub_268A82B50(v126, v114);
    v104 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v103, 0, 1, v104);
    (*(v99 + 40))(v101, v102, v103, v124, v125, v98, v99);

    sub_2688C058C(v103, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v100, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v115 + 8))(v101, v73);
  }
}

uint64_t *sub_268916F40()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  v2 = v0[38];

  return v0;
}

uint64_t sub_268916FA0()
{
  sub_268916F40();

  return MEMORY[0x2821FE8D8](v0, 312, 7);
}

uint64_t sub_268916FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268917078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689170F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268917194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268917210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_2689172B0()
{
  if (qword_2802A4D40 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD8F0;

  return v1;
}

uint64_t sub_26891730C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseMediaHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_26891735C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PauseMediaHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689173B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891741C(uint64_t a1, uint64_t a2)
{
  result = sub_268918E34(&qword_2802A5C68, a2, type metadata accessor for PauseMediaHandleIntentStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689174BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = (a1 + 40); v1; --v1)
  {
    v3 = *(i - 1);
    v4 = *i;
    MEMORY[0x28223BE20](a1);

    v5 = sub_268ACD018();
    if (!v5)
    {
      MEMORY[0x28223BE20](v5);
      sub_268ACD018();
    }

    sub_268ADD5F8();

    i += 2;
  }
}

uint64_t sub_268917650(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v131 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v130 = &v127 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v127 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v127 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v134 = &v127 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v127 - v19;
  v142[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B58, &unk_268B3C660);
  sub_268918DC0();
  sub_268918E34(&qword_2802A5B68, 255, type metadata accessor for DeviceQuery);
  v21 = sub_268B37E74();
  if (qword_2802A4F30 != -1)
  {
LABEL_78:
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v23 = *(v5 + 16);
  v135 = v22;
  v137 = (v5 + 16);
  v136 = v23;
  (v23)(v20);

  v24 = sub_268B37A34();
  v25 = sub_268B37F04();

  v26 = os_log_type_enabled(v24, v25);
  v140 = v4;
  v139 = v5;
  v129 = v13;
  v128 = v16;
  v133 = v21;
  if (v26)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v142[0] = v27;
    *v13 = 136315138;
    v28 = MEMORY[0x26D6256F0](v21, MEMORY[0x277D837D0]);
    v16 = v29;
    v30 = sub_26892CDB8(v28, v29, v142);

    *(v13 + 4) = v30;
    _os_log_impl(&dword_2688BB000, v24, v25, "All entities mentioned in the user's intent: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x26D6266E0](v27, -1, -1);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  v138 = *(v5 + 8);
  v138(v20, v4);
  v21 = sub_2688EFD0C(a1);
  v5 = 0;
  v132 = 0;
  v4 = a1 & 0xC000000000000001;
  v141 = MEMORY[0x277D84F90];
  while (v21 != v5)
  {
    if (v4)
    {
      v31 = MEMORY[0x26D625BD0](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      v31 = *(a1 + 8 * v5 + 32);
    }

    v16 = v31;
    v32 = (v5 + 1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v13 = sub_268988504(v31);
    v34 = v33;

    ++v5;
    if (v34)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = v141[2];
        sub_2689876A4();
        v141 = v39;
      }

      v35 = v141[2];
      v16 = v35 + 1;
      if (v35 >= v141[3] >> 1)
      {
        sub_2689876A4();
        v141 = v40;
      }

      v36 = v141;
      v141[2] = v16;
      v37 = &v36[2 * v35];
      v37[4] = v13;
      v37[5] = v34;
      v5 = v32;
    }
  }

  v16 = 0;
  v20 = MEMORY[0x277D84F90];
  while (v21 != v16)
  {
    if (v4)
    {
      v41 = MEMORY[0x26D625BD0](v16, a1);
    }

    else
    {
      if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v41 = *(a1 + 8 * v16 + 32);
    }

    v42 = v41;
    v5 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_76;
    }

    v43 = sub_268988568(v41);
    v13 = v44;

    ++v16;
    if (v13)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = *(v20 + 2);
        sub_2689876A4();
        v20 = v48;
      }

      v45 = *(v20 + 2);
      if (v45 >= *(v20 + 3) >> 1)
      {
        sub_2689876A4();
        v20 = v49;
      }

      *(v20 + 2) = v45 + 1;
      v46 = &v20[16 * v45];
      *(v46 + 4) = v43;
      *(v46 + 5) = v13;
      v16 = v5;
    }
  }

  v142[11] = MEMORY[0x277D84FA0];
  v142[12] = MEMORY[0x277D84FA0];

  sub_2689174BC(v133);

  v50 = v134;
  v51 = v140;
  v136(v134, v135, v140);
  v52 = sub_268B37A34();
  v53 = sub_268B37F04();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v142[0] = v55;
    *v54 = 136315394;
    swift_beginAccess();

    v56 = sub_268B37E24();
    v58 = v57;

    v59 = sub_26892CDB8(v56, v58, v142);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    swift_beginAccess();

    v60 = sub_268B37E24();
    v62 = v61;

    v63 = sub_26892CDB8(v60, v62, v142);

    *(v54 + 14) = v63;
    _os_log_impl(&dword_2688BB000, v52, v53, "Final speaker names: %s, Final room names: %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v55, -1, -1);
    MEMORY[0x26D6266E0](v54, -1, -1);

    v64 = v134;
  }

  else
  {

    v64 = v50;
  }

  v138(v64, v51);
  swift_beginAccess();

  v65 = sub_268943C44(v134);
  swift_beginAccess();

  v66 = sub_268943C44(v133);
  v67 = v65[2];
  v141 = v65;
  v68 = v65 + 5;
  for (i = MEMORY[0x277D84F90]; v67; --v67)
  {
    v70 = *(v68 - 1);
    v71 = *v68;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = *(i + 16);
      sub_268987FD0();
      i = v75;
    }

    v72 = *(i + 16);
    if (v72 >= *(i + 24) >> 1)
    {
      sub_268987FD0();
      i = v76;
    }

    *(i + 16) = v72 + 1;
    v73 = i + 24 * v72;
    *(v73 + 32) = v70;
    *(v73 + 40) = v71;
    *(v73 + 48) = 1;

    v68 += 2;
  }

  v77 = v66[2];
  for (j = v66 + 5; v77; --v77)
  {
    v79 = *(j - 1);
    v80 = *j;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = *(i + 16);
      sub_268987FD0();
      i = v84;
    }

    v81 = *(i + 16);
    if (v81 >= *(i + 24) >> 1)
    {
      sub_268987FD0();
      i = v85;
    }

    *(i + 16) = v81 + 1;
    v82 = i + 24 * v81;
    *(v82 + 32) = v79;
    *(v82 + 40) = v80;
    *(v82 + 48) = 0;

    j += 2;
  }

  if (*(i + 16))
  {
    v86 = *(i + 32);
    v87 = *(i + 40);
    if (*(i + 48))
    {
      v88 = v131;
      v136(v131, v135, v140);
      sub_268918E24();

      v89 = sub_268B37A34();
      v90 = sub_268B37F04();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_2688BB000, v89, v90, "Destination #1: Destination is a room or zone. Setting speaker.firstRoom to the groupName", v91, 2u);
        MEMORY[0x26D6266E0](v91, -1, -1);
      }

      v138(v88, v140);
      sub_268A37C8C();
      v94 = v93;
      if (v92[2] == 1)
      {
LABEL_54:
        sub_268918E2C();
LABEL_58:
        v94(v142, 0);
        sub_268918E2C();
        goto LABEL_59;
      }

      v101 = v92[6];
      v92[5] = v86;
      v92[6] = v87;
    }

    else
    {
      v95 = v130;
      v136(v130, v135, v140);
      sub_268918E24();

      v96 = sub_268B37A34();
      v97 = sub_268B37F04();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_2688BB000, v96, v97, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName", v98, 2u);
        MEMORY[0x26D6266E0](v98, -1, -1);
      }

      v138(v95, v140);
      sub_268A37C8C();
      v94 = v100;
      if (*(v99 + 16) == 1)
      {
        goto LABEL_54;
      }

      *(v99 + 8) = v86;
      *(v99 + 16) = v87;
    }

    goto LABEL_58;
  }

LABEL_59:
  result = sub_268A67CAC(1, i);
  if (v104 == v105 >> 1)
  {

    return swift_unknownObjectRelease();
  }

  if (v104 < (v105 >> 1))
  {
    v106 = (v103 + 24 * v104);
    v108 = *v106;
    v107 = v106[1];
    v109 = *(v106 + 16);
    sub_268918E24();
    swift_unknownObjectRelease();
    if (v109)
    {
      v110 = v129;
      v111 = v140;
      v136(v129, v135, v140);

      v112 = sub_268B37A34();
      v113 = sub_268B37F04();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_2688BB000, v112, v113, "Destination #2: Destination is a room or zone. Setting speaker.secondRoom to the groupName", v114, 2u);
        MEMORY[0x26D6266E0](v114, -1, -1);
      }

      v138(v110, v111);
      sub_268A37C8C();
      v117 = v116;
      if (v115[2] != 1)
      {
        v125 = v115[8];
        v115[7] = v108;
        v115[8] = v107;

        goto LABEL_73;
      }
    }

    else
    {
      v118 = v128;
      v119 = v140;
      v136(v128, v135, v140);

      v120 = sub_268B37A34();
      v121 = sub_268B37F04();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_2688BB000, v120, v121, "Destination #2: Destination is an accesory. Setting speaker.secondSpeakerName to the groupName", v122, 2u);
        MEMORY[0x26D6266E0](v122, -1, -1);
      }

      v138(v118, v119);
      sub_268A37C8C();
      v117 = v124;
      if (v123[2] != 1)
      {
        v126 = v123[4];
        v123[3] = v108;
        v123[4] = v107;

        goto LABEL_73;
      }
    }

    sub_268918E2C();
LABEL_73:
    v117(v142, 0);
    sub_268918E2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_2689185B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268918618()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  return sub_2689160EC();
}

uint64_t sub_2689186C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268918738()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_268B35044();
  OUTLINED_FUNCTION_1(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 16) & ~v13;
  v24 = v4 | v13;
  v15 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;

  v17 = *(v1 + 24);

  v18 = *(v1 + 32);

  v19 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v19);
  (*(v20 + 8))(v1 + v5);

  v21 = *(v1 + v7 + 8);

  (*(v10 + 8))(v1 + v14, v8);
  v22 = *(v1 + v15);

  return MEMORY[0x2821FE8E8](v1, v16 + 8, v24 | 7);
}

uint64_t sub_2689188FC(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_268B35044();
  OUTLINED_FUNCTION_19_0(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v9 + *(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v2 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_268914D1C(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v7, *(v2 + v9), *(v2 + v9 + 8), v2 + v15, *(v2 + v16));
}

uint64_t sub_268918A34()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 8))(v10);

  v13 = *(v1 + v7 + 8);

  return MEMORY[0x2821FE8E8](v1, v7 + 16, v4 | 7);
}

uint64_t sub_268918B44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 1);

  return sub_26891412C(a1, v9, v10, v11, v1 + v8, v13, v14);
}

uint64_t sub_268918C00()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 73) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  v10 = *(v0 + 48);

  v11 = *(v0 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_268918CE0(uint64_t a1)
{
  v3 = sub_268B35044();
  OUTLINED_FUNCTION_22(v3);
  return sub_2689134D4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + ((*(v4 + 80) + 73) & ~*(v4 + 80)));
}

unint64_t sub_268918DC0()
{
  result = qword_2802A5B60;
  if (!qword_2802A5B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5B58, &unk_268B3C660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5B60);
  }

  return result;
}

uint64_t sub_268918E34(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_4()
{
  v1 = *(v0 + 256);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  return v2;
}

void OUTLINED_FUNCTION_9_3()
{
  v1 = *(v0 - 328);
  v2 = *(v0 - 320);
  v3 = *(v0 - 336);
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v8 - 384);

  return sub_2689CE860(a1, v6 | 0x8000000000000000, v10, a4, v7, v4, v5);
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return sub_268B350F4();
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return sub_268B37BC4();
}

uint64_t sub_268918FF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = v2[15];
  v7 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v6);

  v8 = sub_268B37B84();
  (*(v7 + 8))(0xD000000000000016, 0x8000000268B573E0, v8, 1, sub_2689197D8, v5, v6, v7);
}

uint64_t sub_268919110(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v49 = a4;
  v50 = a3;
  v48 = sub_268B34F84();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  sub_2689197E4(a1, &v47 - v20);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_268919854(v21);
  if (a1 == 1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v15, v22, v10);
    v23 = sub_268B37A34();
    v24 = sub_268B37EE4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2688BB000, v23, v24, "QuickStopLocalStoppedFlow#execute DialogEngine returned an error", v25, 2u);
      MEMORY[0x26D6266E0](v25, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    v26 = __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    sub_2688C2ECC();
    v27 = swift_allocError();
    *v28 = 14;
    v29 = *v26;
    sub_26894B450();

    sub_268947F08();
    v31 = v30;
    v33 = v32;
    v34 = *__swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    sub_268948620(0xD000000000000051, 0x8000000268B57400, 4, 59, 0, 0, 0, v31, v33);
  }

  else
  {
    sub_268AAC1F4(a2 + 7);
    v35 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    sub_268B35114();

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v17, v36, v10);
    v37 = sub_268B37A34();
    v38 = sub_268B37F04();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2688BB000, v37, v38, "QuickStopLocalStoppedFlow#execute dialog generated successfully", v39, 2u);
      MEMORY[0x26D6266E0](v39, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
    v40 = *__swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    sub_26894B450();
    sub_268947F08();
    v42 = v41;
    v44 = v43;
    v45 = *__swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    sub_268948620(0xD000000000000051, 0x8000000268B57400, 2, 1, 0, 0, 0, v42, v44);
  }

  sub_268B34F64();
  v50(v9);
  return (*(v6 + 8))(v9, v48);
}

uint64_t *sub_2689196AC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_2689198BC((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  return v0;
}

uint64_t sub_2689196E4()
{
  sub_2689196AC();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_268919760(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for QuickStopLocalStoppedFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_268919798()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2689197E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268919854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268919910(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t), uint64_t a21)
{
  v138 = a8;
  v137 = a7;
  v145 = a3;
  v146 = a4;
  v151 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5798, &qword_268B3BDE0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v156 = v123 - v26;
  v155 = sub_268B34DE4();
  v27 = OUTLINED_FUNCTION_1(v155);
  v150 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v33);
  v140 = v123 - v34;
  v35 = sub_268B34EA4();
  v158 = OUTLINED_FUNCTION_1(v35);
  v159 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_3();
  v154 = v39;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = v123 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = v123 - v44;
  v46 = sub_268B37A54();
  v47 = OUTLINED_FUNCTION_1(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  v53 = v123 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
LABEL_50:
    swift_once();
  }

  v123[1] = a21;
  v124 = a20;
  v128 = a19;
  v127 = a18;
  v126 = a17;
  v125 = a16;
  v132 = a15;
  v131 = a14;
  v130 = a13;
  v129 = a12;
  v136 = a10;
  v135 = a9;
  v54 = __swift_project_value_buffer(v46, qword_2802CDA10);
  (*(v49 + 16))(v53, v54, v46);

  v55 = sub_268B37A34();
  v56 = sub_268B37F04();

  LODWORD(v157) = v56;
  v57 = os_log_type_enabled(v55, v56);
  v148 = a1;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v153 = v53;
    v59 = v58;
    v152 = swift_slowAlloc();
    v160 = v152;
    *v59 = 136315138;
    v60 = MEMORY[0x26D6256F0](a1, MEMORY[0x277D837D0]);
    v62 = sub_26892CDB8(v60, v61, &v160);
    a1 = v148;

    *(v59 + 4) = v62;
    _os_log_impl(&dword_2688BB000, v55, v157, "Encoded route ids: %s", v59, 0xCu);
    v63 = v152;
    __swift_destroy_boxed_opaque_existential_0Tm(v152);
    MEMORY[0x26D6266E0](v63, -1, -1);
    MEMORY[0x26D6266E0](v59, -1, -1);

    (*(v49 + 8))(v153, v46);
  }

  else
  {

    (*(v49 + 8))(v53, v46);
  }

  v46 = a11;
  v53 = v151;
  v149 = sub_2688EFD0C(v151);
  v49 = 0;
  v147 = v53 & 0xC000000000000001;
  v144 = v53 & 0xFFFFFFFFFFFFFF8;
  v152 = (v150 + 32);
  v153 = v159 + 16;
  v142 = (v159 + 8);
  v64 = (a1 + 40);
  v134 = a6;
  v133 = a5;
  v143 = v45;
  while (v149 != v49)
  {
    if (v147)
    {
      v65 = MEMORY[0x26D625BD0](v49, v151);
    }

    else
    {
      if (v49 >= *(v144 + 16))
      {
        goto LABEL_49;
      }

      v65 = *&v151[8 * v49 + 32];
    }

    v66 = v65;
    sub_268B34E94();
    sub_268B34E94();

    v53 = v45;
    sub_268B34E64();
    if (v49 >= *(a1 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v67 = v66;
    v68 = *(v64 - 1);
    v69 = *v64;

    sub_268B34E74();

    sub_268B34E84();
    v159 = v67;
    a1 = sub_26892D418(v67);
    v71 = v70;
    v72 = sub_268B37724();
    v157 = v64;
    if (v71)
    {
      if (a1 == v72 && v71 == v73)
      {

LABEL_26:
        OUTLINED_FUNCTION_9_4(&v168);
        OUTLINED_FUNCTION_0_8(&v167);
        sub_268B34E64();
        sub_268B374A4();
        sub_268B34E74();
        OUTLINED_FUNCTION_9_4(&v166);
        OUTLINED_FUNCTION_0_8(&v165);
        sub_268B34E84();
        v85 = *v153;
        v86 = v156;
        v87 = v158;
        (*v153)(v156, v45, v158);
        __swift_storeEnumTagSinglePayload(v86, 0, 1, v87);
        v85(v154, v43, v87);
        sub_268B34DC4();
        OUTLINED_FUNCTION_7_2();
        v88 = *(a11 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a11 + 16) = v88;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_13_3(v112);
        }

        v91 = *(v88 + 16);
        v90 = *(v88 + 24);
        v139 = v49;
        if (v91 >= v90 >> 1)
        {
          OUTLINED_FUNCTION_1_6();
          v88 = v113;
        }

        OUTLINED_FUNCTION_4_3();
        v94 = v93 & ~v92;
        v96 = *(v95 + 72);
        v97 = v88 + v94 + v96 * v91;
        v98 = *(v95 + 32);
        v98(v97, v140, v155);
        *(a11 + 16) = v88;
        swift_endAccess();
        OUTLINED_FUNCTION_9_4(&v160);
        OUTLINED_FUNCTION_0_8(&v159);
        sub_268B34E64();
        sub_268B37484();
        sub_268B34E74();
        OUTLINED_FUNCTION_9_4(v162);
        OUTLINED_FUNCTION_0_8(v161);
        sub_268B34E84();
        v99 = v156;
        v85(v156, v45, v158);
        v100 = OUTLINED_FUNCTION_3_4(v99);
        (v85)(v100);
        sub_268B34DC4();
        swift_beginAccess();
        v101 = *(a11 + 16);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        *(a11 + 16) = v101;
        if ((v102 & 1) == 0)
        {
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_13_3(v114);
        }

        v49 = v139;
        v103 = *(v101 + 16);
        v45 = v143;
        if (v103 >= *(v101 + 24) >> 1)
        {
          OUTLINED_FUNCTION_1_6();
          v101 = v115;
        }

        *(v101 + 16) = v103 + 1;
        v98(v101 + v94 + v103 * v96, v141, v155);
        *(a11 + 16) = v101;
        swift_endAccess();
        a6 = v134;
        a5 = v133;
        a1 = v148;
        goto LABEL_44;
      }

      a1 = sub_268B38444();

      if (a1)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v75 = v159;
    if (sub_268983434())
    {
      OUTLINED_FUNCTION_9_4(&v168);
      OUTLINED_FUNCTION_0_8(&v167);
      sub_268B34E64();
      sub_268B37494();
      sub_268B34E74();
      OUTLINED_FUNCTION_9_4(&v166);
      OUTLINED_FUNCTION_0_8(&v165);
      sub_268B34E84();
      v76 = OUTLINED_FUNCTION_6_5();
      v75(v76);
      v77 = OUTLINED_FUNCTION_3_4(v64);
      v75(v77);
      sub_268B34DC4();
      OUTLINED_FUNCTION_7_2();
      v78 = *(a11 + 16);
      v79 = swift_isUniquelyReferenced_nonNull_native();
      *(a11 + 16) = v78;
      if ((v79 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_13_3(v116);
      }

      OUTLINED_FUNCTION_11_3();
      v45 = v143;
      if (v80)
      {
        OUTLINED_FUNCTION_1_6();
        v78 = v117;
      }

      OUTLINED_FUNCTION_4_3();
      v82 = OUTLINED_FUNCTION_10_5(v81);
      v84 = &v163;
    }

    else
    {
      v104 = sub_268988580(v75);
      if (v105 || (v104 = sub_268988568(v75), v106))
      {
        a1 = v104;
      }

      else
      {
        a1 = 0;
      }

      OUTLINED_FUNCTION_9_4(&v156);
      OUTLINED_FUNCTION_0_8(&v155);
      sub_268B34E64();
      sub_268B34E74();
      OUTLINED_FUNCTION_9_4(&v158);
      OUTLINED_FUNCTION_0_8(&v157);
      sub_268B34E84();
      v107 = OUTLINED_FUNCTION_6_5();
      v75(v107);
      v108 = OUTLINED_FUNCTION_3_4(v64);
      v75(v108);
      sub_268B34DC4();
      OUTLINED_FUNCTION_7_2();
      v78 = *(a11 + 16);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      *(a11 + 16) = v78;
      if ((v109 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_13_3(v118);
      }

      OUTLINED_FUNCTION_11_3();
      v45 = v143;
      if (v80)
      {
        OUTLINED_FUNCTION_1_6();
        v78 = v119;
      }

      OUTLINED_FUNCTION_4_3();
      v82 = OUTLINED_FUNCTION_10_5(v110);
      v84 = &v164;
    }

    v83(v82, *(v84 - 32), v155);
    *(a11 + 16) = v78;
    swift_endAccess();
LABEL_44:
    v53 = *v142;
    v111 = v158;
    (*v142)(v43, v158);
    (v53)(v45, v111);

    v64 = v157 + 2;
    ++v49;
  }

  swift_beginAccess();
  v120 = *(a11 + 16);

  v124(v121);
}

void OUTLINED_FUNCTION_1_6()
{

  sub_268987924();
}

void OUTLINED_FUNCTION_2_6()
{
  v2 = *(v0 + 16) + 1;

  sub_268987924();
}

uint64_t OUTLINED_FUNCTION_6_5()
{
  v1 = **(v0 - 168);
  result = *(v0 - 144);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
}

uint64_t OUTLINED_FUNCTION_10_5@<X0>(uint64_t a1@<X8>)
{
  result = v3 + (v1 & ~a1) + *(v2 + 72) * v4;
  v6 = *(v2 + 32);
  return result;
}

void OUTLINED_FUNCTION_11_3()
{
  v2 = *(v1 - 208);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16) + 1;
}

uint64_t sub_26891A510(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 81))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_26891A564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_26891A5E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574756F52736168 && a2 == 0xE900000000000073;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000268B57460 == a2;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6570536C6C417369 && a2 == 0xED00007372656B61;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657265486E497369 && a2 == 0xE800000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000268B57480 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x8000000268B574A0 == a2;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6F527473726966 && a2 == 0xE90000000000006DLL;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F52646E6F636573 && a2 == 0xEA00000000006D6FLL;
                if (v12 || (sub_268B38444() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6F6F52726568746FLL && a2 == 0xEF746E756F43736DLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_268B38444();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_26891A8D0(char a1)
{
  result = 0x6574756F52736168;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x6570536C6C417369;
      break;
    case 3:
      result = 0x657265486E497369;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6F6F527473726966;
      break;
    case 7:
      result = 0x6F52646E6F636573;
      break;
    case 8:
      result = 0x6F6F52726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26891AA2C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CC8, &qword_268B3CFE8);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v29[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26891B2B0();
  sub_268B38584();
  v14 = *v3;
  v29[15] = 0;
  OUTLINED_FUNCTION_6_6();
  sub_268B383B4();
  if (!v2)
  {
    v15 = v3[1];
    v29[14] = 1;
    OUTLINED_FUNCTION_6_6();
    sub_268B383B4();
    v16 = v3[2];
    v29[13] = 2;
    OUTLINED_FUNCTION_6_6();
    sub_268B383B4();
    v17 = v3[3];
    v29[12] = 3;
    OUTLINED_FUNCTION_6_6();
    sub_268B383B4();
    v18 = *(v3 + 1);
    v19 = *(v3 + 2);
    v29[11] = 4;
    OUTLINED_FUNCTION_5_2();
    sub_268B38374();
    v20 = *(v3 + 3);
    v21 = *(v3 + 4);
    v29[10] = 5;
    OUTLINED_FUNCTION_5_2();
    sub_268B38374();
    v22 = *(v3 + 5);
    v23 = *(v3 + 6);
    v29[9] = 6;
    OUTLINED_FUNCTION_5_2();
    sub_268B38374();
    v24 = *(v3 + 7);
    v25 = *(v3 + 8);
    v29[8] = 7;
    OUTLINED_FUNCTION_5_2();
    sub_268B38374();
    v26 = *(v3 + 9);
    v27 = v3[80];
    v29[7] = 8;
    OUTLINED_FUNCTION_5_2();
    sub_268B38394();
  }

  return (*(v8 + 8))(v12, v5);
}

void *sub_26891AC68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CB8, &qword_268B3CFE0);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = 1;
  v11 = a1[3];
  v12 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_26891B2B0();
  sub_268B38574();
  if (v2)
  {
    OUTLINED_FUNCTION_0_9();
    OUTLINED_FUNCTION_7_3();
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = v11;
    v42 = v8;
    v43 = v12;
    v44 = a1;
    v45 = a2;
    v46 = v2;
    v47 = v32;
    OUTLINED_FUNCTION_10_6();
    v48 = 0;
    v49 = v50;
    return sub_26891B304(&v38);
  }

  else
  {
    v38 = 0;
    v31 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_3_5(1);
    v30 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_3_5(2);
    v29 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_3_5(3);
    v13 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_3_5(4);
    v27 = sub_268B38304();
    v28 = v14;
    OUTLINED_FUNCTION_3_5(5);
    v26 = sub_268B38304();
    v25 = v15;
    OUTLINED_FUNCTION_3_5(6);
    v16 = sub_268B38304();
    v33 = v17;
    OUTLINED_FUNCTION_3_5(7);
    v35 = sub_268B38304();
    v36 = v18;
    v51 = 8;
    v19 = sub_268B38324();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_9_5();
    v23(v22);
    v21 &= 1u;
    v50 = v21;
    LOBYTE(__src[0]) = v31;
    BYTE1(__src[0]) = v30;
    BYTE2(__src[0]) = v29;
    BYTE3(__src[0]) = v13;
    __src[1] = v27;
    __src[2] = v28;
    __src[3] = v26;
    __src[4] = v25;
    __src[5] = v16;
    __src[6] = v33;
    __src[7] = v35;
    __src[8] = v36;
    __src[9] = v19;
    LOBYTE(__src[10]) = v21;
    sub_26891B334(__src, &v38);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v38 = v31;
    v39 = v30;
    v40 = v29;
    v41 = v13;
    v42 = v27;
    v43 = v28;
    v44 = v26;
    v45 = v25;
    v46 = v16;
    v47 = v33;
    OUTLINED_FUNCTION_10_6();
    v48 = v19;
    v49 = v21;
    sub_26891B304(&v38);
    return memcpy(a2, __src, 0x51uLL);
  }
}

uint64_t sub_26891B184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26891A5E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26891B1AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26891A8C8();
  *a1 = result;
  return result;
}

uint64_t sub_26891B1D4(uint64_t a1)
{
  v2 = sub_26891B2B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26891B210(uint64_t a1)
{
  v2 = sub_26891B2B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26891B24C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26891AC68(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x51uLL);
  }

  return result;
}

unint64_t sub_26891B2B0()
{
  result = qword_2802A5CC0;
  if (!qword_2802A5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5CC0);
  }

  return result;
}

uint64_t _s7SpeakerV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7SpeakerV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x26891B4C0);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26891B4FC()
{
  result = qword_2802A5CD0;
  if (!qword_2802A5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5CD0);
  }

  return result;
}

unint64_t sub_26891B554()
{
  result = qword_2802A5CD8;
  if (!qword_2802A5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5CD8);
  }

  return result;
}

unint64_t sub_26891B5AC()
{
  result = qword_2802A5CE0;
  if (!qword_2802A5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5CE0);
  }

  return result;
}

void OUTLINED_FUNCTION_0_9()
{
  *(v0 - 272) = 0;
  *(v0 - 280) = 0;
  *(v0 - 304) = 0;
}

uint64_t OUTLINED_FUNCTION_1_7()
{
  *(v3 - 296) = v0;
  v4 = *(v2 + 8);
  return v1;
}

void OUTLINED_FUNCTION_4_4()
{
  v1 = *(v0 - 308);
  v2 = *(v0 - 312);
  v3 = *(v0 - 316);
}

void OUTLINED_FUNCTION_8_5()
{
  v1 = *(v0 - 320);
  v2 = *(v0 - 328);
  v3 = *(v0 - 336);
}

void OUTLINED_FUNCTION_10_6()
{
  v1 = *(v0 - 272);
  *(v0 - 120) = *(v0 - 280);
  *(v0 - 112) = v1;
}

Swift::String_optional __swiftcall UsoTask_summarise_common_Setting.verb()()
{
  v0 = 1684104562;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_26891B704()
{
  v0 = sub_268A9D2E8();
  if (v0 == 6)
  {
    return 3;
  }

  return sub_2689ABD4C(v0);
}

uint64_t sub_26891B744@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_26891B81C(uint64_t a1)
{
  result = sub_26891B8C8(&qword_2802A5CE8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26891B8C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36204();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26891B940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_26891B994(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_26891B9E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_26891BA3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_26891BA90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_26891BAE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_26891BB38()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_26891BB8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_26891BBF0()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_26891BC44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_26891BCA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_26891BD0C()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_26891BD70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

id sub_26891BDD4()
{
  result = [objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntentHandler()) init];
  qword_2802CD8F8 = result;
  return result;
}

uint64_t sub_26891BE08@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_268B35494();
  v1 = OUTLINED_FUNCTION_1(v34);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v33 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v32 = *(v11 + 16);
  v32(v18, v19, v8);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = v3;
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "SetPlaybackSpeedFlowStrategy#actionForInput called", v22, 2u);
    v3 = v31;
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v11 + 8);
  v23(v18, v8);
  sub_268B35414();
  v24 = sub_2688F29A4(v7);
  (*(v3 + 8))(v7, v34);
  if (v24)
  {
    return sub_268B34EC4();
  }

  v26 = v33;
  v32(v33, v19, v8);
  v27 = sub_268B37A34();
  v28 = sub_268B37EE4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "SetPlaybackSpeedFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v29, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23(v26, v8);
  type metadata accessor for ErrorFilingHelper();
  OUTLINED_FUNCTION_3_6();
  return sub_268B34ED4();
}

void sub_26891C154(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v81 = a3;
  v82 = a4;
  v85 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D28, &unk_268B3D420);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v71 - v7;
  v8 = sub_268B35494();
  v9 = OUTLINED_FUNCTION_1(v8);
  v84 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v83 = &v71 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v79 = &v71 - v20;
  v78 = type metadata accessor for MediaPlayerIntent();
  v21 = *(*(v78 - 1) + 64);
  MEMORY[0x28223BE20](v78);
  v73 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_268B37A54();
  v24 = OUTLINED_FUNCTION_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_20_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v71 - v33;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v35 = __swift_project_value_buffer(v23, qword_2802CDA10);
  v74 = *(v26 + 16);
  v75 = v35;
  v74(v34);
  v36 = sub_268B37A34();
  v37 = sub_268B37F04();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v77 = v31;
    *v38 = 0;
    _os_log_impl(&dword_2688BB000, v36, v37, "SetPlaybackSpeedFlowStrategy#makeIntentFromParse called", v38, 2u);
    v31 = v77;
    OUTLINED_FUNCTION_12();
  }

  v80 = v15;

  v40 = *(v26 + 8);
  v39 = v26 + 8;
  v76 = v40;
  v40(v34, v23);
  if (a2)
  {
    v41 = a2;
  }

  else
  {
    v41 = [objc_allocWithZone(type metadata accessor for SetPlaybackSpeedIntent()) init];
  }

  v42 = a2;
  v43 = v83;
  v44 = *(v84 + 16);
  v44(v83, v85, v8);
  v45 = v42;
  v46 = v79;
  sub_26893BA8C(v43);
  if (__swift_getEnumTagSinglePayload(v46, 1, v78) == 1)
  {
    v78 = v41;
    sub_2688EF38C(v46, &qword_2802A5650, &unk_268B3BAC0);
    v47 = v80;
  }

  else
  {
    v48 = v73;
    sub_2688C0464(v46, v73);
    v47 = v80;
    if (*v48 != 24)
    {
      v63 = v48;
      v64 = v71;
      v44(v71, v85, v8);
      __swift_storeEnumTagSinglePayload(v64, 0, 1, v8);
      sub_268B0B834(v63, v64);
      sub_2688EF38C(v64, &qword_2802A5D28, &unk_268B3D420);
      sub_2688C2F6C(v63);
      v65 = v72;
      v66 = v72[5];
      v67 = v72[6];
      __swift_project_boxed_opaque_existential_1(v72 + 2, v66);
      v68 = swift_allocObject();
      v69 = v82;
      v68[2] = v81;
      v68[3] = v69;
      v68[4] = v41;
      v70 = v41;

      sub_268AD35F4(v70, &off_287953CC8, (v65 + 7), sub_26891D098, v68, v66, v67);

      return;
    }

    v78 = v41;
    sub_2688C2F6C(v48);
  }

  (v74)(v31, v75, v23);
  v44(v47, v85, v8);
  v49 = v31;
  v50 = v8;
  v51 = sub_268B37A34();
  v52 = sub_268B37EE4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v77 = v49;
    v54 = v53;
    v55 = swift_slowAlloc();
    v85 = v39;
    v86 = v55;
    v56 = v55;
    *v54 = 136315138;
    v44(v83, v47, v50);
    v57 = sub_268B37C24();
    v59 = v58;
    (*(v84 + 8))(v47, v50);
    v60 = sub_26892CDB8(v57, v59, &v86);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_2688BB000, v51, v52, "SetPlaybackSpeedFlowStrategy#makeIntentFromParse received unexpected parse: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v76(v77, v23);
  }

  else
  {

    (*(v84 + 8))(v47, v50);
    v76(v49, v23);
  }

  type metadata accessor for ErrorFilingHelper();
  OUTLINED_FUNCTION_3_6();
  sub_2688C2ECC();
  v61 = swift_allocError();
  *v62 = 69;
  v81(v61, 1);
}

uint64_t sub_26891C888(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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
    _os_log_impl(&dword_2688BB000, v11, v12, "SetPlaybackSpeedFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_26891CA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891CB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_26891CB5C()
{
  if (qword_2802A4D48 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD8F8;

  return v1;
}

uint64_t sub_26891CBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891CC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891CCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_26891CD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_26891CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26891CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26891CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26891CFA0(uint64_t a1)
{
  result = sub_26891D018(&qword_2802A5D10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26891D018(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SetPlaybackSpeedFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26891D058()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
}

uint64_t sub_26891D0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a4;
  v34 = a5;
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2802A4F30 != -1)
  {
LABEL_25:
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_268B37A34();
  v15 = sub_268B37ED4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "PauseMediaDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v16, 2u);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v12 = a3;
  a3 = sub_268B35244();
  v35 = MEMORY[0x277D84F90];
  v8 = sub_2688EFD0C(a3);
  v17 = 0;
  v9 = a3 & 0xC000000000000001;
  while (v8 != v17)
  {
    if (v9)
    {
      v18 = MEMORY[0x26D625BD0](v17, a3);
    }

    else
    {
      if (v17 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v18 = *(a3 + 8 * v17 + 32);
    }

    v19 = v18;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = sub_26892D418(v18);
    v22 = v21;
    v23 = sub_268B37724();
    v12 = v24;
    if (!v22)
    {

LABEL_18:
      v12 = &v35;
      sub_268B38214();
      v27 = *(v35 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      goto LABEL_20;
    }

    if (v20 != v23 || v22 != v24)
    {
      v26 = sub_268B38444();

      if (v26)
      {

        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_20:
    ++v17;
  }

  sub_268AE2278(v35);
  v29 = v28;

  v30 = *(v6 + 56);
  sub_268AAEE94(v29, v33, v34);
}

void sub_26891D40C()
{
  type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_26891D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_26891D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_26891D67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_26891D714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_26891D7D0()
{
  type metadata accessor for PauseMediaDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_26891D864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_26891D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for PauseMediaDeviceDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

unint64_t sub_26891DA88()
{
  result = qword_2802A56A0;
  if (!qword_2802A56A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A56A8, &qword_268B3BCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A56A0);
  }

  return result;
}

uint64_t sub_26891DB9C(uint64_t a1, uint64_t a2)
{
  result = sub_26891DBF4(&qword_2802A5D38, a2, type metadata accessor for PauseMediaDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26891DBF4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_26891DC50(uint64_t a1)
{
  v2 = sub_268B35494();
  v66 = OUTLINED_FUNCTION_1(v2);
  v67 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v66);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v59 - v13;
  v65 = type metadata accessor for SettingsIntent();
  v15 = *(*(v65 - 1) + 64);
  MEMORY[0x28223BE20](v65);
  v61 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B37A54();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v64 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v59 = *(v20 + 16);
  v60 = v27;
  v59(v26);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v63 = a1;
    v31 = v10;
    v32 = v17;
    v33 = v8;
    v34 = v20;
    v35 = v30;
    *v30 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "SettingsFlowProvider#makeFlowFor Making flow from parse", v30, 2u);
    v36 = v35;
    v20 = v34;
    v8 = v33;
    v17 = v32;
    v10 = v31;
    a1 = v63;
    MEMORY[0x26D6266E0](v36, -1, -1);
  }

  v37 = *(v20 + 8);
  v63 = v20 + 8;
  v37(v26, v17);
  v38 = v66;
  v39 = *(v67 + 16);
  v39(v10, a1, v66);
  sub_26897BBA8(v10, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v65) == 1)
  {
    v65 = v10;
    sub_26891E52C(v14);
    v40 = v64;
    (v59)(v64, v60, v17);
    v39(v8, a1, v38);
    v41 = v38;
    v42 = sub_268B37A34();
    v43 = sub_268B37EE4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v68 = v62;
      *v44 = 136315138;
      v39(v65, v8, v41);
      v45 = sub_268B37C24();
      v47 = v46;
      v48 = OUTLINED_FUNCTION_0_11();
      v49(v48);
      v50 = sub_26892CDB8(v45, v47, &v68);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v42, v43, "SettingsFlowProvider#makeFlowFor Received unexpected parse: %s", v44, 0xCu);
      v51 = v62;
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x26D6266E0](v51, -1, -1);
      MEMORY[0x26D6266E0](v44, -1, -1);

      v52 = v64;
    }

    else
    {

      v56 = OUTLINED_FUNCTION_0_11();
      v57(v56);
      v52 = v40;
    }

    v37(v52, v17);
    return 0;
  }

  else
  {
    v53 = v61;
    sub_26891E594(v14, v61);
    sub_26891E15C(v53);
    v55 = v54;
    sub_26891E5F8(v53);
  }

  return v55;
}

void sub_26891E15C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = a1[1];
  switch(a1[1])
  {
    case 1u:
    case 2u:
      v13 = sub_268B38444();

      if (v13)
      {
        goto LABEL_5;
      }

      if (v12 == 2)
      {
        goto LABEL_4;
      }

      v18 = sub_268B38444();

      if (v18)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    case 3u:
LABEL_15:
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v4, qword_2802CDA10);
      (*(v5 + 16))(v9, v19, v4);
      v20 = sub_268B37A34();
      v21 = sub_268B37F04();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2688BB000, v20, v21, "SettingsFlowProvider#makeFlowFrom Not a media volume request", v22, 2u);
        MEMORY[0x26D6266E0](v22, -1, -1);
      }

      (*(v5 + 8))(v9, v4);
      break;
    default:
LABEL_4:

LABEL_5:
      if (*a1 - 1 >= 3)
      {
        if (*a1)
        {
          if (qword_2802A4F30 != -1)
          {
            swift_once();
          }

          v14 = __swift_project_value_buffer(v4, qword_2802CDA10);
          (*(v5 + 16))(v11, v14, v4);
          v15 = sub_268B37A34();
          v16 = sub_268B37EC4();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_2688BB000, v15, v16, "SettingsFlowProvider#makeFlowFrom Could not find any verbs in the setting intent for the volume request. Returning getVolume flow", v17, 2u);
            MEMORY[0x26D6266E0](v17, -1, -1);
          }

          (*(v5 + 8))(v11, v4);
        }

        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        sub_268B0300C();
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        sub_268B0333C();
      }

      break;
  }
}

uint64_t sub_26891E52C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26891E594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26891E5F8(uint64_t a1)
{
  v2 = type metadata accessor for SettingsIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26891E708(uint64_t *a1, unsigned int a2)
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

uint64_t sub_26891E75C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26891E7BC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD00000000000001BLL;
}

void sub_26891E810(float a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_3_7();
  v30 = v16;
  v31 = v15;
  v17 = OUTLINED_FUNCTION_192();
  MEMORY[0x26D625650](v17);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v6, qword_2802CDA10);
  v18 = OUTLINED_FUNCTION_6_7();
  v19(v18);

  v20 = sub_268B37A34();
  v21 = sub_268B37F04();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v22 = 136315138;
    v23 = OUTLINED_FUNCTION_192();
    *(v22 + 4) = sub_26892CDB8(v23, v24, v25);
    OUTLINED_FUNCTION_8_6(&dword_2688BB000, v26, v27, "UserDefaultsProvider#setPreviousVolumeLevel for key: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v9 + 8))(v14, v6);
  if (a4)
  {
    OUTLINED_FUNCTION_192();
    v28 = sub_268B37BC4();

    *&v29 = a1;
    [a4 setFloat:v28 forKey:{v29, v30, v31}];
  }

  else
  {
  }
}

unint64_t sub_26891EA2C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_3_7();
  *&v37 = v16;
  *(&v37 + 1) = v15;
  MEMORY[0x26D625650](a1, a2);
  v17 = v37;
  if (a3)
  {
    v18 = sub_268B37BC4();
    v19 = [a3 objectForKey_];

    if (v19)
    {
      sub_268B380E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v20 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v9 + 16))(v14, v20, v6);
  sub_26891F428(&v37, &v35);

  v21 = sub_268B37A34();
  v22 = sub_268B37F04();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = sub_26892CDB8(v17, *(&v17 + 1), &v34);

    *(v23 + 4) = v24;
    *(v23 + 12) = 2080;
    sub_26891F428(&v35, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
    v25 = sub_268B37C24();
    v27 = v26;
    sub_26891F498(&v35);
    v28 = sub_26892CDB8(v25, v27, &v34);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_2688BB000, v21, v22, "UserDefaultsProvider#getPreviousVolumeLevel for key: %s volume: %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    sub_26891F498(&v35);
  }

  (*(v9 + 8))(v14, v6);
  v35 = v37;
  v36 = v38;
  if (*(&v38 + 1))
  {
    v29 = swift_dynamicCast();
    v30 = v33[0];
    v31 = v29 ^ 1;
    if (!v29)
    {
      v30 = 0;
    }
  }

  else
  {
    sub_26891F498(&v35);
    v30 = 0;
    v31 = 1;
  }

  return v30 | (v31 << 32);
}

void sub_26891ED94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_3_7();
  v27 = v14;
  v28 = v13;
  v15 = OUTLINED_FUNCTION_192();
  MEMORY[0x26D625650](v15);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v4, qword_2802CDA10);
  v16 = OUTLINED_FUNCTION_6_7();
  v17(v16);

  v18 = sub_268B37A34();
  v19 = sub_268B37F04();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v20 = 136315138;
    v21 = OUTLINED_FUNCTION_192();
    *(v20 + 4) = sub_26892CDB8(v21, v22, v23);
    OUTLINED_FUNCTION_8_6(&dword_2688BB000, v24, v25, "UserDefaultsProvider#clearPreviousVolumeLevel for key: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v7 + 8))(v12, v4);
  if (a3)
  {
    OUTLINED_FUNCTION_192();
    v26 = sub_268B37BC4();

    [a3 removeObjectForKey_];
  }

  else
  {
  }
}

uint64_t sub_26891EFA0(void *a1)
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  if (a1)
  {
    v11 = OUTLINED_FUNCTION_7_4();
    v12 = [a1 objectForKey_];

    if (v12)
    {
      sub_268B380E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v5 + 16))(v10, v13, v2);
  sub_26891F428(&v27, &v25);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    sub_26891F428(&v25, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
    v18 = sub_268B37C24();
    v20 = v19;
    sub_26891F498(&v25);
    v21 = sub_26892CDB8(v18, v20, &v24);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2688BB000, v14, v15, "UserDefaultsProvider#getLoudVolumeConfirmationCount %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    sub_26891F498(&v25);
  }

  (*(v5 + 8))(v10, v2);
  v25 = v27;
  v26 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      return v23[0];
    }
  }

  else
  {
    sub_26891F498(&v25);
  }

  return 0;
}

void sub_26891F278(void *a1)
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = sub_26891EFA0(a1);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v11 + 1;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v5 + 16))(v10, v13, v2);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "UserDefaultsProvider#incrementLoudVolumeConfirmationCount Setting loudVolumeConfirmationCount to incrementedConfirmationCount", v16, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v5 + 8))(v10, v2);
  if (a1)
  {
    v17 = OUTLINED_FUNCTION_7_4();
    [a1 setInteger:v12 forKey:v17];
  }
}

uint64_t sub_26891F428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26891F498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_268B37BC4();
}

void OUTLINED_FUNCTION_8_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_26891F56C()
{
  v0 = sub_268B37BF4();
  v2 = v1;
  if (v0 == sub_268B37BF4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_3();
  }

  return v5 & 1;
}

uint64_t sub_26891F5E4(char a1, char a2)
{
  v2 = 0x656C62616E65;
  if (a1)
  {
    OUTLINED_FUNCTION_48_1();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x656C62616E65;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_48_1();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v12;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_3();
  }

  return v18 & 1;
}

uint64_t sub_26891F6C4(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000726579;
  v3 = 0x616C50616964656DLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x616964656DLL;
    }

    else
    {
      v5 = 0x73676E6974746573;
    }

    if (v4 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x616C50616964656DLL;
    v6 = 0xEB00000000726579;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x616964656DLL;
    }

    else
    {
      v3 = 0x73676E6974746573;
    }

    if (a2 == 1)
    {
      v2 = 0xE500000000000000;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1();
  }

  return v8 & 1;
}

uint64_t sub_26891F7B0(char a1)
{
  if (a1)
  {
    v1 = 0xE300000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_68_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_26891F82C(unsigned __int8 a1, char a2)
{
  v2 = 0x656C67676F74;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656C67676F74;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7628147;
      break;
    case 2:
      v5 = 0x656C62616E65;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x656C6261736964;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7628147;
      break;
    case 2:
      v2 = 0x656C62616E65;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x656C6261736964;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_26891F96C()
{
  OUTLINED_FUNCTION_68_1();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_268B38444();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_26891F9D8(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_26891FAA4(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_68_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_26891FB2C(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_68_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_26891FBB8(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 28271;
  switch(a1)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6570706F7473;
      goto LABEL_5;
    case 2:
      v3 = 0xE600000000000000;
      v4 = 0x646573756170;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x656D75736572;
LABEL_5:
      v4 = v5 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE200000000000000;
  v7 = 28271;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v8 = 0x6570706F7473;
      goto LABEL_10;
    case 2:
      v6 = 0xE600000000000000;
      v7 = 0x646573756170;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v8 = 0x656D75736572;
LABEL_10:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_15_3();
  }

  return v10 & 1;
}

uint64_t sub_26891FD00(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x746174735F746573;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x746174735F746567;
    }

    else
    {
      v5 = 0x6174735F646C6F68;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xEA00000000006574;
    }
  }

  else
  {
    v5 = 0x746174735F746573;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x746174735F746567 : 0x6174735F646C6F68;
    if (a2 != 1)
    {
      v2 = 0xEA00000000006574;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1();
  }

  return v8 & 1;
}

uint64_t sub_26891FDD8(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25697;
  switch(a1)
  {
    case 1:
      v3 = 0xE500000000000000;
      v4 = 0x6F69647561;
      break;
    case 2:
      v4 = 0x656C746974627573;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v4 = 25443;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v4 = 6841459;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25697;
  switch(a2)
  {
    case 1:
      v5 = 0xE500000000000000;
      v6 = 0x6F69647561;
      break;
    case 2:
      v6 = 0x656C746974627573;
      v5 = 0xE900000000000073;
      break;
    case 3:
      v6 = 25443;
      break;
    case 4:
      v5 = 0xE300000000000000;
      v6 = 6841459;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_26891FF50(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_68_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_26891FFDC(unsigned __int8 a1, char a2)
{
  v2 = 1936942444;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1936942444;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v6 = 1769496941;
      goto LABEL_6;
    case 2:
      v5 = 1851876717;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 1768843629;
LABEL_6:
      v5 = v6 | 0x6D756D00000000;
      break;
    case 4:
      v5 = 1701998445;
      break;
    case 5:
      v5 = 1702131053;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x6574756D6E75;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE700000000000000;
      v8 = 1769496941;
      goto LABEL_14;
    case 2:
      v2 = 1851876717;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 1768843629;
LABEL_14:
      v2 = v8 | 0x6D756D00000000;
      break;
    case 4:
      v2 = 1701998445;
      break;
    case 5:
      v2 = 1702131053;
      break;
    case 6:
      v7 = 0xE600000000000000;
      v2 = 0x6574756D6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_15_3();
  }

  return v10 & 1;
}

uint64_t sub_268920180(unsigned __int8 a1, char a2)
{
  v2 = 0x656D756C6F76;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6563696F76;
    }

    else
    {
      v4 = 0x707954616964656DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656D756C6F76;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6563696F76;
    }

    else
    {
      v2 = 0x707954616964656DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_26892026C(unsigned __int8 a1, char a2)
{
  v2 = 1684104562;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1684104562;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7628147;
      break;
    case 2:
      v5 = 0x6573616572636E69;
      v3 = 0xE800000000000000;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x6573616572636564;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7628147;
      break;
    case 2:
      v2 = 0x6573616572636E69;
      v6 = 0xE800000000000000;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x6573616572636564;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_2689203B0(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x6B61657053646461;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6165705365766F6DLL;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 1)
    {
      v6 = 0xEB0000000072656BLL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0x6B61657053646461;
    v6 = 0xEA00000000007265;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6165705365766F6DLL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (a2 == 1)
    {
      v2 = 0xEB0000000072656BLL;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1();
  }

  return v8 & 1;
}

uint64_t sub_2689204B4(char a1, char a2)
{
  v2 = 1701736302;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 6647407;
    }

    else
    {
      v3 = 7105633;
    }

    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1701736302;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 6647407;
    }

    else
    {
      v2 = 7105633;
    }

    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_3();
  }

  return v7 & 1;
}

uint64_t sub_268920580(unsigned __int8 a1, char a2)
{
  v2 = 0x656E6F6870;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656E6F6870;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6578544;
      break;
    case 2:
      v5 = 0x6863746177;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 6513005;
      break;
    case 4:
      v5 = 0x69736976656C6574;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x646F70656D6F68;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x6563697665447278;
      break;
    case 7:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6578544;
      break;
    case 2:
      v2 = 0x6863746177;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 6513005;
      break;
    case 4:
      v2 = 0x69736976656C6574;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x646F70656D6F68;
      break;
    case 6:
      v6 = 0xE800000000000000;
      v2 = 0x6563697665447278;
      break;
    case 7:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_2689207AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_15_3();
  }

  return v10 & 1;
}

uint64_t sub_2689208C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v3 = OUTLINED_FUNCTION_71_1();
  sub_26892DA98(v3, v4);
  sub_268B37CA4();
  sub_268B37CA4();
  if (v10 == v8 && v11 == v9)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_54_1();
  }

  return v6 & 1;
}

uint64_t sub_2689209D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_268B37984();
  sub_268B37974();
  OUTLINED_FUNCTION_86_1();
  v7 = sub_268B37964();
  v8 = MEMORY[0x277D61F08];
  *&v6 = v2;
  v3 = type metadata accessor for AnalyticsServiceLogger();
  v4 = swift_allocObject();
  result = sub_2688E6514(&v6, v4 + 16);
  a1[3] = v3;
  a1[4] = &off_28795F5E0;
  *a1 = v4;
  return result;
}

void sub_268920A60()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_268B382A4();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
LABEL_14:
    OUTLINED_FUNCTION_23();
    return;
  }

  v17 = MEMORY[0x277D84F90];
  sub_26894472C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v17;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      OUTLINED_FUNCTION_85_1();
      v7 = type metadata accessor for DeviceQuery();
      v15 = v7;
      v8 = sub_26892DA98(&qword_2802A5B68, type metadata accessor for DeviceQuery);
      v16 = v8;
      v17 = v5;
      v14[0] = v0;
      v0 = v5[2];
      if (v0 >= v5[3] >> 1)
      {
        v5 = &v17;
        sub_26894472C();
        v7 = v15;
        v9 = v16;
      }

      else
      {
        v9 = v8;
      }

      ++v4;
      __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
      OUTLINED_FUNCTION_3_8();
      v11 = *(v10 + 64);
      MEMORY[0x28223BE20](v12);
      OUTLINED_FUNCTION_2_8();
      (*(v13 + 16))(v5);
      sub_26892D904(v0, v5, &v17, v7, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      v5 = v17;
    }

    while (v3 != v4);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_268920CE4()
{
  OUTLINED_FUNCTION_26();
  v22 = v1;
  v21 = v2;
  v4 = v3;
  v5 = v0;
  if (v0 >> 62)
  {
    v6 = sub_268B382A4();
  }

  else
  {
    v6 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
LABEL_14:
    OUTLINED_FUNCTION_23();
    return;
  }

  v26 = MEMORY[0x277D84F90];
  sub_26894480C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v26;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D625BD0](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v4(0);
      v24 = v11;
      v12 = sub_26892DA98(v21, v22);
      v25 = v12;
      v26 = v8;
      v23[0] = v10;
      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        sub_26894480C();
        v11 = v24;
        v14 = v25;
      }

      else
      {
        v14 = v12;
      }

      ++v7;
      __swift_mutable_project_boxed_opaque_existential_1(v23, v11);
      OUTLINED_FUNCTION_3_8();
      v16 = *(v15 + 64);
      MEMORY[0x28223BE20](v17);
      OUTLINED_FUNCTION_1_0();
      v19 = OUTLINED_FUNCTION_77_1(v18);
      v20(v19);
      sub_26892D904(v13, v8, &v26, v11, v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v8 = v26;
    }

    while (v6 != v7);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_268920EBC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B35C14();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = *(v1 + 16);
  if (v11)
  {
    v26 = MEMORY[0x277D84F90];
    sub_26894486C();
    v12 = v26;
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = v1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v22 = *(v13 + 56);
    do
    {
      v14(v10, v16, v2);
      v26 = v12;
      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_26894486C();
      }

      v24 = v2;
      v25 = MEMORY[0x277D5E670];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      v14(boxed_opaque_existential_1, v10, v2);
      v12 = v26;
      *(v26 + 16) = v17 + 1;
      sub_2688E6514(&v23, v12 + 40 * v17 + 32);
      v19 = *(v13 - 8);
      v20 = OUTLINED_FUNCTION_0_1();
      v21(v20);
      v16 += v22;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268921078(uint64_t (*a1)(uint64_t))
{
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v13 = a1(v1);
  if (v13)
  {
    v14 = v13;
    if (sub_2688EFBD0(v13) == 1 && sub_2688EFD0C(v14))
    {
      sub_2688EFD10(0, (v14 & 0xC000000000000001) == 0, v14);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x26D625BD0](0, v14);
      }

      else
      {
        v15 = *(v14 + 32);
      }

      v16 = v15;

      v17 = DeviceQuery.hasReferenceOnly.getter();

      v19 = v17 ^ 1;
    }

    else
    {

      v19 = 1;
    }

    if (qword_2802A4F30 != -1)
    {
      v18 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v18, qword_2802CDA10);
    (*(v6 + 16))(v11);
    v20 = sub_268B37A34();
    sub_268B37ED4();
    OUTLINED_FUNCTION_39_1();
    if (!os_log_type_enabled(v20, v21))
    {
      v1 = v11;
      goto LABEL_19;
    }

    v22 = OUTLINED_FUNCTION_236();
    *v22 = 67109120;
    *(v22 + 4) = v19 & 1;
    _os_log_impl(&dword_2688BB000, v20, v11, "DeviceQueryableIntent#isWholeHouseAudio: %{BOOL}d", v22, 8u);
    v1 = v11;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v13 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v13, qword_2802CDA10);
    v23 = OUTLINED_FUNCTION_139(v6);
    v24(v23);
    v20 = sub_268B37A34();
    v25 = sub_268B37ED4();
    if (!os_log_type_enabled(v20, v25))
    {
      v19 = 0;
      goto LABEL_19;
    }

    v26 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v26);
    OUTLINED_FUNCTION_75_1(&dword_2688BB000, v20, v25, "DeviceQueryableIntent#isWholeHouseAudio No deviceQueries found in the intent. This is not a WHA intent");
    v19 = 0;
  }

  OUTLINED_FUNCTION_20_2();
LABEL_19:

  (*(v6 + 8))(v1, v3);
  return v19 & 1;
}

void sub_268921344()
{
  OUTLINED_FUNCTION_26();
  v25 = v1;
  v24 = v2;
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
LABEL_21:
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v3, qword_2802CDA10);
  OUTLINED_FUNCTION_6_2();
  v9(v0);
  v10 = sub_268B37A34();
  v11 = sub_268B37ED4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_236();
    *v12 = 67109120;
    *(v12 + 4) = v24 & 1;
    _os_log_impl(&dword_2688BB000, v10, v11, "Getting routeIds from intent. PreferContextRouteId: %{BOOL}d", v12, 8u);
    OUTLINED_FUNCTION_33_1();
  }

  (*(v6 + 8))(v0, v3);
  v0 = sub_2688EFD0C(v25);
  v13 = 0;
  v3 = 0;
  v6 = v25 & 0xC000000000000001;
  v14 = MEMORY[0x277D84F90];
  while (v0 != v13)
  {
    if (v6)
    {
      v15 = MEMORY[0x26D625BD0](v13, v25);
    }

    else
    {
      if (v13 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v15 = *(v25 + 8 * v13 + 32);
    }

    v16 = v15;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v28 = v15;
    sub_268986960(&v28, v24 & 1, &v26);

    v17 = v27;
    if (v27)
    {
      v18 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v14 + 16);
        sub_2689876A4();
        v14 = v22;
      }

      v19 = *(v14 + 16);
      if (v19 >= *(v14 + 24) >> 1)
      {
        sub_2689876A4();
        v14 = v23;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v18;
      *(v20 + 40) = v17;
    }

    ++v13;
  }

  OUTLINED_FUNCTION_23();
}

id SetVolumeLevelIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetVolumeLevelIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B36F44();
  v81 = OUTLINED_FUNCTION_1(v1);
  v82 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_1_0();
  v79 = (v6 - v5);
  OUTLINED_FUNCTION_9();
  v7 = sub_268B36C54();
  v80 = sub_268B36C44();
  sub_268B37204();
  v78 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(&v105);
  sub_268AD33CC(&v102);
  sub_268B36754();
  v76 = sub_268B36734();
  sub_268B36C44();
  OUTLINED_FUNCTION_86_1();
  v8 = type metadata accessor for MultiUserConnectionProvider();
  v9 = swift_allocObject();
  v10 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v9 + 16) = [v10 init];
  __swift_mutable_project_boxed_opaque_existential_1(&v105, v106);
  OUTLINED_FUNCTION_3_8();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  v18 = *v16;
  v100 = v7;
  v101 = MEMORY[0x277D5F680];
  *&v99 = v7;
  v19 = type metadata accessor for AnalyticsServiceLogger();
  v97 = v19;
  v98 = &off_28795F5E0;
  v96[0] = v18;
  v94 = v8;
  v95 = &off_287960608;
  v93[0] = v9;
  v73 = type metadata accessor for AnalyticsServiceImpl();
  v20 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v96, v19);
  OUTLINED_FUNCTION_3_8();
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v25 = OUTLINED_FUNCTION_77_1(v24);
  v26(v25);
  __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  OUTLINED_FUNCTION_3_8();
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_0();
  v31 = OUTLINED_FUNCTION_78_1(v30);
  v32(v31);
  v33 = *v0;
  v34 = *v18;
  v20[5] = v19;
  v20[6] = &off_28795F5E0;
  v20[2] = v33;
  v20[21] = v8;
  v20[22] = &off_287960608;
  v20[18] = v34;
  sub_2688E6514(&v102, (v20 + 7));
  v20[12] = v76;
  sub_2688E6514(&v99, (v20 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v93);
  __swift_destroy_boxed_opaque_existential_0Tm(v96);

  __swift_destroy_boxed_opaque_existential_0Tm(&v105);
  v35 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v74 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  v36 = [objc_allocWithZone(MEMORY[0x277CB83F8]) init];
  sub_268B354A4();
  v37 = type metadata accessor for AudioSessionProvider();
  v38 = swift_allocObject();
  *(v38 + 56) = v36;
  sub_2688E6514(&v105, v38 + 16);
  sub_268B34C64();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D48, &qword_268B3D700);
  v40 = sub_268B37754();
  sub_268B36F34();
  v103 = v7;
  v104 = MEMORY[0x277D5F680];
  *&v102 = v80;
  v101 = &off_2879539D0;
  v100 = v73;
  *&v99 = v20;
  v97 = &type metadata for UserDefaultsProviderImpl;
  v98 = &off_287952DF0;
  v96[0] = v74;
  v94 = v37;
  v95 = &off_287958998;
  v93[0] = v38;
  v92[3] = v39;
  v92[4] = sub_26892CBBC();
  v92[0] = v40;
  v91[3] = v81;
  v91[4] = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
  (*(v82 + 16))(boxed_opaque_existential_1, v79, v81);
  v77 = type metadata accessor for SetVolumeLevelIntentHandler();
  v42 = objc_allocWithZone(v77);
  __swift_mutable_project_boxed_opaque_existential_1(&v99, v100);
  OUTLINED_FUNCTION_3_8();
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_8();
  (*(v46 + 16))(v81);
  __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  OUTLINED_FUNCTION_3_8();
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  v52 = (v51 - v50);
  (*(v53 + 16))(v51 - v50);
  __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  OUTLINED_FUNCTION_3_8();
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  v58 = OUTLINED_FUNCTION_78_1(v57);
  v59(v58);
  v60 = *v81;
  v61 = *v52;
  v62 = *v79;
  v90[4] = &off_2879539D0;
  v90[3] = v73;
  v90[0] = v60;
  v89[4] = &off_287952DF0;
  v89[3] = &type metadata for UserDefaultsProviderImpl;
  v89[0] = v61;
  v88[3] = v37;
  v88[4] = &off_287958998;
  v88[0] = v62;
  sub_26890C900(v107, v87);
  sub_26890C900(v90, &v85);
  sub_26890C900(&v105, v84);
  sub_268B376A4();
  v75 = v74;

  v63 = sub_268B37694();
  __swift_mutable_project_boxed_opaque_existential_1(&v85, v86);
  OUTLINED_FUNCTION_3_8();
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_1_0();
  v69 = (v68 - v67);
  (*(v70 + 16))(v68 - v67);
  v71 = sub_26892D53C(v78, v87, *v69, v84, v63);
  __swift_destroy_boxed_opaque_existential_0Tm(&v85);
  *&v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceSelector] = v71;
  sub_26890C900(v107, &v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState]);
  sub_26890C900(&v102, &v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController]);
  sub_26890C900(v89, &v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider]);
  sub_26890C900(v88, &v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_audioSession]);
  sub_26890C900(v107, v87);
  sub_26890C900(&v105, &v85);
  type metadata accessor for AceServiceHelper();
  v72 = swift_allocObject();
  sub_2688E6514(v87, v72 + 16);
  sub_2688E6514(&v85, v72 + 56);
  *&v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_aceServiceHelper] = v72;
  sub_26890C900(v92, &v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController]);
  sub_26890C900(v91, &v42[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider]);
  v83.receiver = v42;
  v83.super_class = v77;
  objc_msgSendSuper2(&v83, sel_init);

  (*(v82 + 8))(v79, v81);
  __swift_destroy_boxed_opaque_existential_0Tm(&v105);
  __swift_destroy_boxed_opaque_existential_0Tm(v107);
  __swift_destroy_boxed_opaque_existential_0Tm(v91);
  __swift_destroy_boxed_opaque_existential_0Tm(v92);
  __swift_destroy_boxed_opaque_existential_0Tm(&v102);
  __swift_destroy_boxed_opaque_existential_0Tm(v88);
  __swift_destroy_boxed_opaque_existential_0Tm(v89);
  __swift_destroy_boxed_opaque_existential_0Tm(v90);
  __swift_destroy_boxed_opaque_existential_0Tm(v93);
  __swift_destroy_boxed_opaque_existential_0Tm(v96);
  __swift_destroy_boxed_opaque_existential_0Tm(&v99);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268921FD0(void *a1, void *a2, void (**a3)(void, void))
{
  v188 = a2;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v183 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v186 = &v174 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v184 = &v174 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v185 = &v174 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v187 = (&v174 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v174 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v174 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v174 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v174 - v27;
  v189 = swift_allocObject();
  *(v189 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v30 = v6[2];
  v190 = v29;
  v191 = v30;
  v192 = v6 + 2;
  v193 = v5;
  (v30)(v28);
  v31 = sub_268B37A34();
  v32 = sub_268B37ED4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v6;
    v34 = v20;
    v35 = a3;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v31, v32, "SetVolumeLevelIntentHandler#handle called", v36, 2u);
    v37 = v36;
    a3 = v35;
    v20 = v34;
    v6 = v33;
    MEMORY[0x26D6266E0](v37, -1, -1);
  }

  v40 = v6[1];
  v38 = v6 + 1;
  v39 = v40;
  v41 = v193;
  (v40)(v28, v193);
  v42 = sub_268B18100();
  if (!v42)
  {
    goto LABEL_11;
  }

  v43 = v42;
  if (!sub_2688EFD0C(v42))
  {

LABEL_11:
    v191(v26, v190, v41);
    v49 = sub_268B37A34();
    v50 = sub_268B37EE4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2688BB000, v49, v50, "SetVolumeLevelIntentHandler#handle no devices resolved, returning failure", v51, 2u);
      v52 = v51;
      v41 = v193;
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    (v39)(v26, v41);
    goto LABEL_54;
  }

  v44 = *(v188 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_aceServiceHelper);
  sub_268921344();
  v46 = v45;
  if (!v45[2])
  {
    v188 = v38;

    v191(v23, v190, v41);
    v53 = a1;
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v41;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v187 = v39;
      v59 = v58;
      v194 = v58;
      *v57 = 136315138;
      v196[0] = sub_268B18100();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
      v60 = sub_268B38094();
      v61 = a3;
      v63 = v62;

      v64 = sub_26892CDB8(v60, v63, &v194);
      a3 = v61;

      *(v57 + 4) = v64;
      _os_log_impl(&dword_2688BB000, v54, v55, "SetVolumeLevelIntentHandler#handle unable to get route ids for the intent devices: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x26D6266E0](v59, -1, -1);
      MEMORY[0x26D6266E0](v57, -1, -1);

      v187(v23, v56);
    }

    else
    {

      (v39)(v23, v41);
    }

LABEL_54:
    v115 = sub_268B36EA4();
    v116 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v117 = v115;
    v118 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v115);
    (a3)[2](a3, v118);

LABEL_55:
    goto LABEL_56;
  }

  v47 = [a1 volumeLevel];
  v48 = v47;
  if (v47)
  {
    v178 = [v47 volumeSettingType];
  }

  else
  {
    v178 = 0;
  }

  v65 = [a1 volumeLevel];
  v179 = v48;
  v181 = v65;
  v182 = v46;
  if (v65)
  {
    v66 = v65;
    v180 = [v65 volumeSettingState];
  }

  else
  {
    v180 = 0;
  }

  v191(v20, v190, v41);
  v67 = a1;
  v68 = sub_268B37A34();
  v69 = sub_268B37ED4();

  if (os_log_type_enabled(v68, v69))
  {
    v175 = v20;
    v176 = a3;
    v70 = v181 != 0;
    v71 = v179 == 0;
    v72 = v67;
    v73 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v196[0] = v174;
    *v73 = 136315906;
    v194 = v178;
    v195 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v74 = sub_268B37C24();
    v76 = sub_26892CDB8(v74, v75, v196);

    *(v73 + 4) = v76;
    *(v73 + 12) = 1024;
    v77 = v180;
    v78 = v180 == 5 && v70;
    *(v73 + 14) = v78;
    *(v73 + 18) = 1024;
    v79 = v77 == 1 && v70;
    *(v73 + 20) = v79;
    *(v73 + 24) = 2080;
    v177 = v72;
    v80 = [v72 volumeLevel];
    if (v80 && (v81 = v80, v82 = [v80 resolvedVolumeOutput], v81, v82))
    {
      [v82 floatValue];

      v83 = sub_268B37E14();
      v85 = v84;
      a3 = v176;
      v86 = v175;
    }

    else
    {
      v85 = 0xE300000000000000;
      a3 = v176;
      v86 = v175;
      v83 = 7104878;
    }

    v87 = sub_26892CDB8(v83, v85, v196);

    *(v73 + 26) = v87;
    _os_log_impl(&dword_2688BB000, v68, v69, "SetVolumeLevelIntentHandler#handle volume settingType: %s, increase: %{BOOL}d, decrease: %{BOOL}d, resolved output: %s", v73, 0x22u);
    v88 = v174;
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v88, -1, -1);
    MEMORY[0x26D6266E0](v73, -1, -1);

    v41 = v193;
    (v39)(v86, v193);
    v67 = v177;
  }

  else
  {

    (v39)(v20, v41);
  }

  v89 = [v67 volumeLevel];
  if (!v89)
  {
    goto LABEL_51;
  }

  v90 = v89;
  v91 = [v89 resolvedVolumeOutput];

  if (!v91)
  {
    goto LABEL_51;
  }

  [v91 floatValue];
  v93 = v92;

  v94 = [v67 volumeLevel];
  if (!v94)
  {
    goto LABEL_51;
  }

  v95 = v94;
  v96 = [v94 currentVolumeOutput];

  if (!v96 || ([v96 floatValue], v98 = v97, v96, (v99 = objc_msgSend(v67, sel_volumeLevel)) == 0) || (v100 = v99, v101 = sub_268ACC57C(), v100, (v101 & 0x100000000) != 0))
  {
LABEL_51:

    v110 = v187;
    v191(v187, v190, v41);
    v111 = sub_268B37A34();
    v112 = sub_268B37EE4();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_2688BB000, v111, v112, "SetVolumeLevelIntentHandler#handle resolvedVolumeOutput or currentVolume is undefined or could not be cast to float. Returning failure", v113, 2u);
      v114 = v113;
      v41 = v193;
      MEMORY[0x26D6266E0](v114, -1, -1);
    }

    (v39)(v110, v41);
    goto LABEL_54;
  }

  if (v98 == 1.0)
  {
    v102 = v180 != 5 || v181 == 0;
    if (!v102 || v93 == 1.0)
    {

      v104 = v185;
      v191(v185, v190, v41);
      v105 = sub_268B37A34();
      v106 = sub_268B37ED4();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_2688BB000, v105, v106, "SetVolumeLevelIntentHandler#handle volume is already at 100%%. Skip setting volume.", v107, 2u);
        v41 = v193;
        MEMORY[0x26D6266E0](v107, -1, -1);
      }

      (v39)(v104, v41);
      v108 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
      v109 = 100;
      goto LABEL_77;
    }
  }

  if (v98 == 0.0)
  {
    v119 = v180 != 1 || v181 == 0;
    if (!v119 || v93 == 0.0)
    {

      v134 = v184;
      v191(v184, v190, v41);
      v135 = sub_268B37A34();
      v136 = sub_268B37ED4();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        *v137 = 0;
        _os_log_impl(&dword_2688BB000, v135, v136, "SetVolumeLevelIntentHandler#handle volume is already at 0%%. Skip setting volume.", v137, 2u);
        v41 = v193;
        MEMORY[0x26D6266E0](v137, -1, -1);
      }

      (v39)(v134, v41);
      v138 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
      v109 = 101;
LABEL_77:
      v118 = SetVolumeLevelIntentResponse.init(code:userActivity:)(v109, 0);
      (a3)[2](a3, v118);

      goto LABEL_55;
    }
  }

  v187 = v39;
  v120 = (v188 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState);
  v121 = *(v188 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((v188 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState), *(v188 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24));
  v122 = sub_268B34C74();
  v123 = v67;
  v124 = v122;
  v177 = v123;
  v125 = sub_268B18100();
  if (!v125)
  {
    goto LABEL_80;
  }

  v126 = sub_2688EFBD0(v125);

  if (v126 != 1)
  {
    goto LABEL_80;
  }

  v127 = sub_268B18100();
  if (!v127)
  {
    goto LABEL_80;
  }

  v128 = v127;
  if (!sub_2688EFD0C(v127))
  {

    goto LABEL_80;
  }

  sub_2688EFD10(0, (v128 & 0xC000000000000001) == 0, v128);
  if ((v128 & 0xC000000000000001) != 0)
  {
    goto LABEL_124;
  }

  for (i = *(v128 + 32); ; i = MEMORY[0x26D625BD0](0, v128))
  {
    v130 = i;

    if (sub_268984BA0())
    {

      v131 = v182;
      if (!v182[2])
      {
        __break(1u);
LABEL_126:

        _Block_release(a3);
        v194 = v131;
        sub_268B38474();
        __break(1u);
        return;
      }

      v132 = v182[4];
      v133 = v182[5];

      sub_268928A18();

LABEL_112:

      goto LABEL_56;
    }

LABEL_80:
    v139 = *(v188 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 32);
    __swift_project_boxed_opaque_existential_1((v188 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider), *(v188 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24));
    if (sub_268B36F74())
    {
      v140 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v120[3]);
      v141 = sub_2688C32AC();
      v142 = v193;
      v143 = v179;
      if ((v141 | v124))
      {
        goto LABEL_97;
      }
    }

    else
    {
      v142 = v193;
      v143 = v179;
      if (v124)
      {
        goto LABEL_97;
      }
    }

    if (sub_2688EFBD0(v43) != 1)
    {
      goto LABEL_97;
    }

    sub_2688EFD10(0, (v43 & 0xC000000000000001) == 0, v43);
    if ((v43 & 0xC000000000000001) != 0)
    {
      v144 = MEMORY[0x26D625BD0](0, v43);
    }

    else
    {
      v144 = *(v43 + 32);
    }

    v120 = v144;
    v145 = sub_2689840D4();
    if ((v145 - 1) < 4)
    {
      v146 = sub_26892D418(v120);
      v148 = v147;
      sub_268B36C54();
      v149 = sub_268B36C24();
      if (v148)
      {
        if (v146 == v149 && v148 == v150)
        {
        }

        else
        {
          v152 = sub_268B38444();

          if ((v152 & 1) == 0)
          {
            goto LABEL_96;
          }
        }

        goto LABEL_117;
      }

LABEL_96:

      v142 = v193;
      v143 = v179;
LABEL_97:
      if (sub_2688EFBD0(v43) == 1)
      {
        sub_2688EFD10(0, (v43 & 0xC000000000000001) == 0, v43);
        v153 = v177;
        if ((v43 & 0xC000000000000001) != 0)
        {
          v154 = MEMORY[0x26D625BD0](0, v43);
        }

        else
        {
          v154 = *(v43 + 32);
        }

        v155 = v154;

        sub_268983434();

        v143 = v179;
      }

      else
      {

        v153 = v177;
      }

      v156 = v186;
      if (v143)
      {
        if (v178 == 1)
        {
          sub_2689295D4();
          goto LABEL_111;
        }

        if (v178 == 2)
        {
          sub_268929DC0();
LABEL_111:

          goto LABEL_112;
        }
      }

      v191(v156, v190, v142);
      v157 = v153;
      v158 = sub_268B37A34();
      v159 = sub_268B37EE4();

      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v196[0] = v161;
        *v160 = 136315138;
        v162 = [v157 &selRef_encodedClassName];
        v163 = v162;
        if (v162)
        {
          v164 = [v162 volumeSettingType];
        }

        else
        {
          v164 = 0;
        }

        v194 = v164;
        v195 = v163 == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D98, &unk_268B3D708);
        v165 = sub_268B37C24();
        v167 = sub_26892CDB8(v165, v166, v196);

        *(v160 + 4) = v167;
        _os_log_impl(&dword_2688BB000, v158, v159, "SetVolumeLevelIntentHandler#handle unknown volume setting type: %s, returning failure.", v160, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v161);
        MEMORY[0x26D6266E0](v161, -1, -1);
        MEMORY[0x26D6266E0](v160, -1, -1);

        v187(v156, v193);
      }

      else
      {

        v187(v156, v142);
      }

      goto LABEL_54;
    }

    v131 = v145;
    if (v145)
    {
      goto LABEL_126;
    }

LABEL_117:

    v128 = v182;
    v43 = v183;
    if (v182[2])
    {
      break;
    }

    __break(1u);
LABEL_124:
    ;
  }

  v168 = a3;
  v169 = v182[4];
  v170 = v182[5];

  v191(v43, v190, v193);
  v171 = sub_268B37A34();
  v172 = sub_268B37EE4();
  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    *v173 = 0;
    _os_log_impl(&dword_2688BB000, v171, v172, "SetVolumeLevelIntentHandler#handle setting volume for single local device", v173, 2u);
    MEMORY[0x26D6266E0](v173, -1, -1);
  }

  v187(v43, v193);
  sub_268928EC0();

  a3 = v168;
LABEL_56:
  _Block_release(a3);
}

void sub_2689233AC()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  v207 = v3;
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v201 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v203 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v200 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v199 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v204 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v25 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v26 = *(v9 + 16);
  v27 = OUTLINED_FUNCTION_212_0();
  v26(v27);
  v28 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_66_0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v30);
    _os_log_impl(&dword_2688BB000, v28, v1, "SetVolumeLevelIntentHandler#handle called", v5, 2u);
    v2 = v0;
    OUTLINED_FUNCTION_12();
  }

  v31 = *(v9 + 8);
  v32 = OUTLINED_FUNCTION_138();
  v31(v32);
  v33 = sub_268B18100();
  if (!v33)
  {
    goto LABEL_11;
  }

  v34 = v33;
  if (!sub_2688EFD0C(v33))
  {

LABEL_11:
    v39 = OUTLINED_FUNCTION_32_1();
    v26(v39);
    v40 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_39_1();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v42);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      OUTLINED_FUNCTION_12();
    }

    v48 = OUTLINED_FUNCTION_46_1();
    v31(v48);
    OUTLINED_FUNCTION_62_1();
    goto LABEL_58;
  }

  v35 = *(v2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_aceServiceHelper);
  sub_268921344();
  if (!v36[2])
  {

    (v26)(v201, v25, v6);
    v49 = v207;
    v40 = sub_268B37A34();
    v50 = sub_268B37EE4();

    if (os_log_type_enabled(v40, v50))
    {
      OUTLINED_FUNCTION_172_0();
      v197 = v5;
      v51 = OUTLINED_FUNCTION_53_1();
      v209 = v51;
      *v25 = 136315138;
      v211[0] = sub_268B18100();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
      v52 = sub_268B38094();
      v53 = v31;
      v55 = v54;

      v56 = sub_26892CDB8(v52, v55, &v209);

      *(v25 + 4) = v56;
      _os_log_impl(&dword_2688BB000, v40, v50, "SetVolumeLevelIntentHandler#handle unable to get route ids for the intent devices: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      v5 = v197;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_20_2();

      v57 = OUTLINED_FUNCTION_192();
      v53(v57);
    }

    else
    {

      v79 = OUTLINED_FUNCTION_192();
      v31(v79);
    }

    OUTLINED_FUNCTION_62_1();
LABEL_58:
    OUTLINED_FUNCTION_25_2();
    sub_268B36EA4();
    OUTLINED_FUNCTION_142_0();
    v112 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v113 = v40;
    v114 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v40);
    (v5)();
    goto LABEL_59;
  }

  v206 = v36;
  v37 = [v207 volumeLevel];
  v38 = v37;
  if (v37)
  {
    v193 = [v37 volumeSettingType];
  }

  else
  {
    v193 = 0;
  }

  v202 = v34;
  v58 = [v207 volumeLevel];
  v194 = v38;
  v195 = v58;
  v59 = v5;
  if (v58)
  {
    v60 = v58;
    v196 = [v58 volumeSettingState];
  }

  else
  {
    v196 = 0;
  }

  v191 = v2;
  v205 = v25;
  (v26)(v204, v25, v6);
  v61 = v207;
  v62 = sub_268B37A34();
  v63 = sub_268B37ED4();

  v192 = v63;
  v208 = v61;
  if (os_log_type_enabled(v62, v63))
  {
    v189 = v26;
    v187 = v31;
    v198 = v59;
    v64 = swift_slowAlloc();
    v211[0] = swift_slowAlloc();
    *v64 = 136315906;
    v209 = v193;
    v210 = v194 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v65 = sub_268B37C24();
    v67 = sub_26892CDB8(v65, v66, v211);

    *(v64 + 4) = v67;
    *(v64 + 12) = 1024;
    v68 = v196 == 5 && v195 != 0;
    *(v64 + 14) = v68;
    *(v64 + 18) = 1024;
    v69 = v196 == 1 && v195 != 0;
    *(v64 + 20) = v69;
    *(v64 + 24) = 2080;
    v70 = [v61 volumeLevel];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 resolvedVolumeOutput];

      v73 = v204;
      v74 = v202;
      if (v72)
      {
        [v72 floatValue];

        v75 = sub_268B37E14();
        v77 = v76;
LABEL_36:
        v80 = sub_26892CDB8(v75, v77, v211);

        *(v64 + 26) = v80;
        _os_log_impl(&dword_2688BB000, v62, v192, "SetVolumeLevelIntentHandler#handle volume settingType: %s, increase: %{BOOL}d, decrease: %{BOOL}d, resolved output: %s", v64, 0x22u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_132_0();

        v31 = v187;
        (v187)(v73, v6);
        v5 = v198;
        v26 = v189;
        v61 = v208;
        goto LABEL_37;
      }

      v77 = 0xE300000000000000;
    }

    else
    {
      v77 = 0xE300000000000000;
      v73 = v204;
      v74 = v202;
    }

    v75 = 7104878;
    goto LABEL_36;
  }

  v78 = OUTLINED_FUNCTION_138();
  v31(v78);
  v5 = v59;
  v74 = v202;
LABEL_37:
  v81 = [v61 volumeLevel];
  if (!v81)
  {
    goto LABEL_55;
  }

  v82 = v81;
  v83 = [v81 resolvedVolumeOutput];

  if (!v83)
  {
    goto LABEL_55;
  }

  [v83 floatValue];
  v85 = v84;

  v86 = [v208 volumeLevel];
  if (!v86)
  {
    goto LABEL_55;
  }

  v87 = v86;
  v88 = [v86 currentVolumeOutput];

  if (!v88 || ([v88 floatValue], v90 = v89, v88, (v91 = objc_msgSend(v208, sel_volumeLevel)) == 0) || (v92 = v91, v93 = sub_268ACC57C(), v92, (v93 & 0x100000000) != 0))
  {
LABEL_55:

    v108 = OUTLINED_FUNCTION_32_1();
    v26(v108);
    v40 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_39_1();
    if (os_log_type_enabled(v40, v109))
    {
      v110 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v110);
      OUTLINED_FUNCTION_75_1(&dword_2688BB000, v40, v203, "SetVolumeLevelIntentHandler#handle resolvedVolumeOutput or currentVolume is undefined or could not be cast to float. Returning failure");
      OUTLINED_FUNCTION_20_2();
    }

    v111 = OUTLINED_FUNCTION_46_1();
    v31(v111);
    goto LABEL_58;
  }

  if (v90 == 1.0)
  {
    v94 = v196 != 5 || v195 == 0;
    if (!v94 || v85 == 1.0)
    {

      v96 = OUTLINED_FUNCTION_32_1();
      v26(v96);
      v97 = sub_268B37A34();
      sub_268B37ED4();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v99);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v100, v101, v102, v103, v104, 2u);
        OUTLINED_FUNCTION_12();
      }

      v105 = OUTLINED_FUNCTION_46_1();
      v31(v105);
      v106 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
      v107 = 100;
      goto LABEL_81;
    }
  }

  if (v90 == 0.0)
  {
    v115 = v196 != 1 || v195 == 0;
    if (!v115 || v85 == 0.0)
    {

      v130 = OUTLINED_FUNCTION_32_1();
      v26(v130);
      v131 = sub_268B37A34();
      sub_268B37ED4();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v133);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v134, v135, v136, v137, v138, 2u);
        OUTLINED_FUNCTION_12();
      }

      v139 = OUTLINED_FUNCTION_46_1();
      v31(v139);
      v140 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
      v107 = 101;
LABEL_81:
      v114 = SetVolumeLevelIntentResponse.init(code:userActivity:)(v107, 0);
      (v5)();
      goto LABEL_60;
    }
  }

  v190 = v26;
  v188 = v31;
  v116 = v5;
  v117 = (v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState);
  v118 = *(v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 32);
  OUTLINED_FUNCTION_59_0((v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState), *(v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24));
  v119 = sub_268B34C74();
  v120 = sub_268B18100();
  if (!v120)
  {
    goto LABEL_84;
  }

  v121 = sub_2688EFBD0(v120);

  if (v121 != 1)
  {
    goto LABEL_84;
  }

  v122 = sub_268B18100();
  if (!v122)
  {
    goto LABEL_84;
  }

  v123 = v122;
  if (!sub_2688EFD0C(v122))
  {

    goto LABEL_84;
  }

  v124 = OUTLINED_FUNCTION_90_1();
  sub_2688EFD10(v124, v125, v123);
  if ((v123 & 0xC000000000000001) != 0)
  {
    goto LABEL_128;
  }

  for (i = *(v123 + 32); ; i = MEMORY[0x26D625BD0](0, v123))
  {
    v127 = i;

    if (sub_268984BA0())
    {

      if (v206[2])
      {
        v128 = v206[4];
        v129 = v206[5];

        OUTLINED_FUNCTION_61_1();
        sub_268928A18();

LABEL_124:

        goto LABEL_61;
      }

      __break(1u);
LABEL_130:
      sub_268B38474();
      __break(1u);
      return;
    }

LABEL_84:
    v141 = *(v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 32);
    OUTLINED_FUNCTION_59_0((v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider), *(v191 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24));
    if (sub_268B36F74())
    {
      v142 = v117[4];
      __swift_project_boxed_opaque_existential_1(v117, v117[3]);
      OUTLINED_FUNCTION_212_0();
      v143 = v194;
      if ((sub_2688C32AC() | v119))
      {
        goto LABEL_101;
      }
    }

    else
    {
      v143 = v194;
      if (v119)
      {
        goto LABEL_101;
      }
    }

    if (sub_2688EFBD0(v74) != 1)
    {
      goto LABEL_101;
    }

    v144 = OUTLINED_FUNCTION_90_1();
    sub_2688EFD10(v144, v145, v74);
    v146 = (v74 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](0, v74) : *(v74 + 32);
    v117 = v146;
    v147 = sub_2689840D4();
    v119 = v116;
    if ((v147 - 1) < 4)
    {
      break;
    }

    if (v147)
    {
      goto LABEL_130;
    }

LABEL_120:

    v123 = v206;
    v74 = v199;
    if (v206[2])
    {
      v179 = v206[4];
      v180 = v206[5];

      v190(v199, v205, v6);
      v181 = sub_268B37A34();
      v182 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_196(v182))
      {
        v183 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_52_1(v183);
        OUTLINED_FUNCTION_50_0(&dword_2688BB000, v184, v185, "SetVolumeLevelIntentHandler#handle setting volume for single local device");
        OUTLINED_FUNCTION_12();
      }

      v186 = OUTLINED_FUNCTION_46_1();
      v188(v186);
      OUTLINED_FUNCTION_61_1();
      sub_268928EC0();

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    ;
  }

  v148 = sub_26892D418(v117);
  v150 = v149;
  sub_268B36C54();
  v151 = sub_268B36C24();
  if (v150)
  {
    if (v148 == v151 && v150 == v152)
    {
    }

    else
    {
      v154 = sub_268B38444();

      if ((v154 & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    goto LABEL_120;
  }

LABEL_100:

  v143 = v194;
LABEL_101:
  if (sub_2688EFBD0(v74) == 1)
  {
    v155 = OUTLINED_FUNCTION_90_1();
    sub_2688EFD10(v155, v156, v74);
    v157 = v116;
    v158 = v26;
    if ((v74 & 0xC000000000000001) != 0)
    {
      v159 = MEMORY[0x26D625BD0](0, v74);
    }

    else
    {
      v159 = *(v74 + 32);
    }

    v160 = v159;

    sub_268983434();

    v143 = v194;
  }

  else
  {

    v157 = v116;
    v158 = v26;
  }

  if (v143)
  {
    if (v193 == 1)
    {
      OUTLINED_FUNCTION_61_1();
      sub_2689295D4();
      goto LABEL_124;
    }

    if (v193 == 2)
    {
      sub_268929DC0();
      goto LABEL_124;
    }
  }

  v158(v200, v205, v6);
  v161 = v208;
  v162 = sub_268B37A34();
  v163 = sub_268B37EE4();

  if (os_log_type_enabled(v162, v163))
  {
    v164 = OUTLINED_FUNCTION_172_0();
    v165 = OUTLINED_FUNCTION_173_0();
    v211[0] = v165;
    *v164 = 136315138;
    v166 = [v161 volumeLevel];
    v167 = v166;
    if (v166)
    {
      v168 = [v166 volumeSettingType];
    }

    else
    {
      v168 = 0;
    }

    v209 = v168;
    v210 = v167 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D98, &unk_268B3D708);
    v170 = sub_268B37C24();
    v172 = sub_26892CDB8(v170, v171, v211);

    *(v164 + 4) = v172;
    OUTLINED_FUNCTION_27();
    _os_log_impl(v173, v174, v175, v176, v177, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v165);
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_12();

    (v188)(v200, v6);
    v157 = v116;
  }

  else
  {

    v169 = OUTLINED_FUNCTION_46_1();
    v188(v169);
  }

  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_25_2();
  sub_268B36EA4();
  OUTLINED_FUNCTION_142_0();
  v178 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
  v113 = v162;
  v114 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v162);
  v157();
LABEL_59:

LABEL_60:
LABEL_61:
  OUTLINED_FUNCTION_28_2();
}

void sub_268924560(uint64_t a1, uint64_t a2, void (**a3)(void, void))
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
  v11 = sub_268B37ED4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "SetVolumeLevelIntentHandler#confirm setVolumeLevel.SetVolumeLevelIntentHandler.confirm() called", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
  v14 = SetVolumeLevelIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v14);

  _Block_release(a3);
}

void sub_268924738(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
  v10 = OUTLINED_FUNCTION_139(v7);
  v11(v10);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v14);
    _os_log_impl(&dword_2688BB000, v12, v13, "SetVolumeLevelIntentHandler#confirm setVolumeLevel.SetVolumeLevelIntentHandler.confirm() called", v2, 2u);
    OUTLINED_FUNCTION_12();
  }

  v15 = *(v7 + 8);
  v16 = OUTLINED_FUNCTION_138();
  v17(v16);
  v18 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
  v19 = SetVolumeLevelIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689248D0(uint64_t a1, char *a2, void (**a3)(uint64_t, void *))
{
  v87 = a1;
  v88 = a2;
  v4 = sub_268B371E4();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v4);
  v77 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B36C04();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = *(v83 + 64);
  MEMORY[0x28223BE20](v7);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v80 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v81 = (&v77 - v19);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - v20;
  v85 = swift_allocObject();
  v86 = a3;
  *(v85 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v23 = v11[2];
  v23(v21, v22, v10);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v11;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "SetVolumeLevelIntentHandler#resolveDevices resolving devices for SetVolume", v27, 2u);
    v28 = v27;
    v11 = v26;
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  v29 = v11[1];
  v29(v21, v10);
  if (sub_268921078(sub_268B18120))
  {
    v30 = *&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 32];
    __swift_project_boxed_opaque_existential_1(&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState], *&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24]);
    if ((sub_2688C3240() & 1) == 0)
    {
      v47 = v81;
      v23(v81, v22, v10);
      v48 = sub_268B37A34();
      v49 = sub_268B37EE4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2688BB000, v48, v49, "SetVolumeLevelIntentHandler#resolveDevices whole House Audio requests are unsupported on this platform", v50, 2u);
        MEMORY[0x26D6266E0](v50, -1, -1);
      }

      v29(v47, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_268B3BBA0;
      type metadata accessor for SetVolumeLevelDevicesResolutionResult();
      v37 = 5;
      goto LABEL_21;
    }
  }

  v81 = v29;
  v31 = &v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState];
  v32 = *&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 32];
  __swift_project_boxed_opaque_existential_1(&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState], *&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24]);
  if (sub_268B34D14())
  {
    v23(v17, v22, v10);
    v33 = sub_268B37A34();
    v34 = sub_268B37EE4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2688BB000, v33, v34, "SetVolumeLevelIntentHandler#resolveDevices can't do volume controls on CarPlay, returning unsupported.", v35, 2u);
      MEMORY[0x26D6266E0](v35, -1, -1);
    }

    v81(v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    v37 = 3;
    goto LABEL_21;
  }

  v38 = sub_268B18140();
  if (v38)
  {
    if (sub_2688EFD0C(v38))
    {
      if (!sub_268B18120())
      {
        v67 = v88;
        v68 = *&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceSelector];
        v70 = v82;
        v69 = v83;
        v71 = v84;
        (*(v83 + 104))(v82, *MEMORY[0x277D5F648], v84);
        v72 = swift_allocObject();
        v73 = v85;
        v72[2] = sub_26892DA54;
        v72[3] = v73;
        v72[4] = v67;

        v74 = v67;
        v75 = v77;
        sub_268B37164();
        sub_2688F4CD4();

        (*(v78 + 8))(v75, v79);
        (*(v69 + 8))(v70, v71);
        goto LABEL_29;
      }
    }
  }

  if (sub_268B18120())
  {
    sub_268B18140();
    v39 = v88;
    v40 = *&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceSelector];
    sub_268920A60();

    v42 = v82;
    v41 = v83;
    v43 = v84;
    (*(v83 + 104))(v82, *MEMORY[0x277D5F648], v84);
    v44 = swift_allocObject();
    v45 = v85;
    v44[2] = sub_26892DA54;
    v44[3] = v45;
    v44[4] = v39;

    v46 = v39;
    sub_2688F80CC();

    (*(v41 + 8))(v42, v43);
LABEL_29:

    v52 = v86;
    goto LABEL_30;
  }

  v53 = v80;
  v23(v80, v22, v10);
  v54 = sub_268B37A34();
  v55 = sub_268B37F04();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_2688BB000, v54, v55, "SetVolumeLevelIntentHandler#resolveDevices no context or device query, falling back to local device", v56, 2u);
    MEMORY[0x26D6266E0](v56, -1, -1);
  }

  v81(v53, v10);
  v57 = *(v31 + 4);
  __swift_project_boxed_opaque_existential_1(v31, *(v31 + 3));
  if (sub_268B34D04() & 1) == 0 || (v58 = *&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 32], __swift_project_boxed_opaque_existential_1(&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider], *&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24]), (sub_268B36F94()))
  {
    type metadata accessor for Device();
    sub_268B36C54();
    v59 = sub_268B36C24();
    v61 = v60;
    v62 = *&v88[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_aceServiceHelper];

    LOBYTE(v76) = 0;
    sub_268983F14(v59, v61, 0, 0, 0, 0, 0, 0, v63, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
    v65 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    *(v66 + 32) = sub_268B2CC98(v65);
    v51 = sub_268B37CE4();
    v52 = v86;
    v86[2](v86, v51);

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_268B3BBA0;
  type metadata accessor for SetVolumeLevelDevicesResolutionResult();
  v37 = 2;
LABEL_21:
  *(v36 + 32) = sub_268B1CD38(v37);
  v51 = sub_268B37CE4();
  v52 = v86;
  v86[2](v86, v51);

LABEL_22:

LABEL_30:
  _Block_release(v52);
}

void sub_268925338()
{
  OUTLINED_FUNCTION_26();
  v96 = v3;
  v97 = v0;
  v94 = v4;
  OUTLINED_FUNCTION_85_1();
  v5 = sub_268B371E4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v85 = v7;
  v86 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v84 = v11 - v10;
  OUTLINED_FUNCTION_9();
  v12 = sub_268B36C04();
  v13 = OUTLINED_FUNCTION_1(v12);
  v91 = v14;
  v92 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v90 = v18 - v17;
  OUTLINED_FUNCTION_9();
  v19 = sub_268B37A54();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_20_0();
  v93 = v25 - v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  v87 = v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v88 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v19, qword_2802CDA10);
  v32 = *(v22 + 16);
  OUTLINED_FUNCTION_84_1();
  v32();
  v33 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_66_0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v35);
    _os_log_impl(&dword_2688BB000, v33, v2, "SetVolumeLevelIntentHandler#resolveDevices resolving devices for SetVolume", v1, 2u);
    OUTLINED_FUNCTION_12();
  }

  v36 = *(v22 + 8);
  v37 = OUTLINED_FUNCTION_212_0();
  v36(v37);
  if (sub_268921078(sub_268B18120))
  {
    v38 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 32];
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState], *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24]);
    OUTLINED_FUNCTION_138();
    if ((sub_2688C3240() & 1) == 0)
    {
      OUTLINED_FUNCTION_84_1();
      v32();
      v60 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v62);
        _os_log_impl(&dword_2688BB000, v60, v88, "SetVolumeLevelIntentHandler#resolveDevices whole House Audio requests are unsupported on this platform", v32, 2u);
        OUTLINED_FUNCTION_12();
      }

      (v36)(v88, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v52 = swift_allocObject();
      OUTLINED_FUNCTION_95_0(v52, xmmword_268B3BBA0);
      v53 = 5;
      goto LABEL_21;
    }
  }

  v89 = v36;
  v39 = &v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState];
  v40 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24];
  v41 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 32];
  v42 = OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_59_0(v42, v43);
  if (sub_268B34D14())
  {
    OUTLINED_FUNCTION_84_1();
    v32();
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v45))
    {
      v46 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v46);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      OUTLINED_FUNCTION_6();
    }

    v89(v93, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v52 = swift_allocObject();
    OUTLINED_FUNCTION_95_0(v52, xmmword_268B3BBA0);
    v53 = 3;
    goto LABEL_21;
  }

  v54 = sub_268B18140();
  if (v54)
  {
    v40 = v54;
    if (sub_2688EFD0C(v54))
    {
      v55 = sub_268B18120();
      if (!v55)
      {
        v79 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceSelector];
        (*(v91 + 104))(v90, *MEMORY[0x277D5F648], v92);
        OUTLINED_FUNCTION_220();
        v80 = swift_allocObject();
        v80[2] = v94;
        v80[3] = v96;
        v80[4] = v97;

        v81 = v97;
        sub_268B37164();
        sub_2688F4CD4();

        (*(v85 + 8))(v84, v86);
        (*(v91 + 8))(v90, v92);
        goto LABEL_23;
      }

      v56 = v55;

      v40 = v56;
    }
  }

  if (!sub_268B18120())
  {
    OUTLINED_FUNCTION_84_1();
    v32();
    v63 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_39_1();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v65);
      _os_log_impl(&dword_2688BB000, v63, v87, "SetVolumeLevelIntentHandler#resolveDevices no context or device query, falling back to local device", v40, 2u);
      OUTLINED_FUNCTION_6();
    }

    v89(v87, v19);
    v66 = *(v39 + 4);
    OUTLINED_FUNCTION_59_0(v39, *(v39 + 3));
    if (sub_268B34D04() & 1) == 0 || (v67 = *&v97[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 32], OUTLINED_FUNCTION_59_0(&v97[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider], *&v97[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24]), (sub_268B36F94()))
    {
      type metadata accessor for Device();
      OUTLINED_FUNCTION_142_0();
      sub_268B36C54();
      sub_268B36C24();
      v68 = *&v97[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_aceServiceHelper];
      LOBYTE(v83) = 0;

      OUTLINED_FUNCTION_25_2();
      sub_268983F14(v69, v70, v71, v72, v73, v74, v75, 0, v82, v83, v84, v85, v86, v87, v89, v90, v91, v92, v93, v94, v96);
      v77 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v78 = swift_allocObject();
      OUTLINED_FUNCTION_95_0(v78, xmmword_268B3BBA0);
      v78[2].n128_u64[0] = sub_268B2CC98(v77);
      v95(v78);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v52 = swift_allocObject();
    OUTLINED_FUNCTION_95_0(v52, xmmword_268B3BBA0);
    v53 = 2;
LABEL_21:
    v52[2].n128_u64[0] = sub_268B1CD38(v53);
    v94(v52);
LABEL_22:

    goto LABEL_23;
  }

  sub_268B18140();
  v57 = *&v97[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceSelector];
  sub_268920A60();

  (*(v91 + 104))(v90, *MEMORY[0x277D5F648], v92);
  OUTLINED_FUNCTION_220();
  v58 = swift_allocObject();
  v58[2] = v94;
  v58[3] = v96;
  v58[4] = v97;

  v59 = v97;
  sub_2688F80CC();

  (*(v91 + 8))(v90, v92);
LABEL_23:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268925B98(unint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    v15 = 4;
LABEL_19:
    *(v14 + 32) = sub_268B1CD38(v15);
    a3(v14);
LABEL_31:
  }

  if (!sub_2688EFD0C(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    v15 = 1;
    goto LABEL_19;
  }

  v16 = sub_2688EFBD0(a1);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    goto LABEL_27;
  }

  v18 = v16;
  if (v16 != 1)
  {
    v39 = MEMORY[0x277D84F90];
    sub_268B38234();
    if (v18 < 0)
    {
      __break(1u);
LABEL_40:
      swift_once();
      goto LABEL_35;
    }

    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    v26 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x26D625BD0](v26, a1);
      }

      else
      {
        v27 = *(a1 + 8 * v26 + 32);
      }

      v28 = v27;
      ++v26;
      sub_268B2CC98(v27);

      sub_268B38214();
      v29 = *(v39 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v18 != v26);
    v17 = v39;
LABEL_27:
    a3(v17);
    goto LABEL_31;
  }

  sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    v19 = *(a1 + 32);
  }

  a1 = v19;
  v20 = sub_268988574(v19);
  if (v21)
  {
    if (v20 == 0x7674656C707061 && v21 == 0xE700000000000000)
    {

      goto LABEL_29;
    }

    v23 = sub_268B38444();

    if (v23)
    {
      goto LABEL_29;
    }
  }

  v24 = sub_2689840D4();
  if ((v24 - 1) < 4)
  {
    goto LABEL_30;
  }

  if (v24)
  {
    v39 = v24;
    result = sub_268B38474();
    __break(1u);
    return result;
  }

  v25 = *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24));
  if ((sub_268B34D04() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_29:
  v30 = *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24));
  if (sub_268B36F94())
  {
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    *(v31 + 32) = sub_268B2CC98(a1);
    a3(v31);

    goto LABEL_31;
  }

  if (qword_2802A4F30 != -1)
  {
    goto LABEL_40;
  }

LABEL_35:
  v33 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v10 + 16))(v13, v33, v9);
  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "SetVolumeLevelIntentHandler#resolveDevices can't do volume controls on Apple TV, returning unsupported.", v36, 2u);
    MEMORY[0x26D6266E0](v36, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_268B3BBA0;
  type metadata accessor for SetVolumeLevelDevicesResolutionResult();
  *(v37 + 32) = sub_268B1CD38(2);
  a3(v37);
}

uint64_t sub_2689260E8(unint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v46 - v15);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    if ((a1 & 1) == 0)
    {
      v18 = 4;
LABEL_20:
      *(v17 + 32) = sub_268B1CD38(v18);
      a3(v17);
      goto LABEL_21;
    }

LABEL_19:
    v18 = 1;
    goto LABEL_20;
  }

  if (!sub_2688EFD0C(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    goto LABEL_19;
  }

  v19 = sub_2688EFBD0(a1);
  if (v19 != 1)
  {
    v28 = v19;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v14, v29, v9);
    v16 = sub_268B37A34();
    v30 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2688BB000, v16, v30, "SetVolumeLevelIntentHandler#resolveDevices multiple devices selected.", v31, 2u);
      MEMORY[0x26D6266E0](v31, -1, -1);
    }

    v32 = *(v10 + 8);
    v10 += 8;
    v32(v14, v9);
    v9 = MEMORY[0x277D84F90];
    if (v28)
    {
      v47 = MEMORY[0x277D84F90];
      sub_268B38234();
      if (v28 < 0)
      {
        __break(1u);
        goto LABEL_46;
      }

      type metadata accessor for SetVolumeLevelDevicesResolutionResult();
      v33 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x26D625BD0](v33, a1);
        }

        else
        {
          v34 = *(a1 + 8 * v33 + 32);
        }

        v35 = v34;
        ++v33;
        sub_268B2CC98(v34);

        sub_268B38214();
        v36 = *(v47 + 16);
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
      }

      while (v28 != v33);
      v9 = v47;
    }

    a3(v9);
  }

  sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    v20 = *(a1 + 32);
  }

  a1 = v20;
  v21 = sub_268988574(v20);
  if (v22)
  {
    if (v21 == 0x7674656C707061 && v22 == 0xE700000000000000)
    {

      goto LABEL_38;
    }

    v24 = sub_268B38444();

    if (v24)
    {
      goto LABEL_38;
    }
  }

  v25 = sub_2689840D4();
  if ((v25 - 1) < 4)
  {
LABEL_39:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetVolumeLevelDevicesResolutionResult();
    *(v40 + 32) = sub_268B2CC98(a1);
    a3(v40);

LABEL_21:
  }

  if (!v25)
  {
    v26 = *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 32);
    __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_deviceState + 24));
    if ((sub_268B34D04() & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_38:
    v37 = (a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider);
    v38 = *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 24);
    v39 = *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_featureFlagProvider + 32);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    if (sub_268B36F94())
    {
      goto LABEL_39;
    }

    if (qword_2802A4F30 == -1)
    {
LABEL_41:
      v41 = __swift_project_value_buffer(v9, qword_2802CDA10);
      (*(v10 + 16))(v16, v41, v9);
      v42 = sub_268B37A34();
      v43 = sub_268B37EE4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_2688BB000, v42, v43, "SetVolumeLevelIntentHandler#resolveDevices can't do volume controls on Apple TV, returning unsupported.", v44, 2u);
        MEMORY[0x26D6266E0](v44, -1, -1);
      }

      (*(v10 + 8))(v16, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_268B3BBA0;
      type metadata accessor for SetVolumeLevelDevicesResolutionResult();
      *(v45 + 32) = sub_268B1CD38(2);
      a3(v45);
    }

LABEL_46:
    swift_once();
    goto LABEL_41;
  }

  v47 = v25;
  result = sub_268B38474();
  __break(1u);
  return result;
}

void sub_268926750(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetVolumeLevelDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_2689267BC(void *a1, char *a2, void (**a3)(void, id))
{
  v57 = a2;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v58 = swift_allocObject();
  v59 = a3;
  *(v58 + 16) = a3;
  _Block_copy(a3);
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
    v55 = v5;
    v17 = a1;
    v18 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "SetVolumeLevelIntentHandler#resolveVolumeLevel resolving volume level for SetVolume", v16, 2u);
    v19 = v18;
    a1 = v17;
    v5 = v55;
    MEMORY[0x26D6266E0](v19, -1, -1);
  }

  v20 = v6[1];
  v20(v11, v5);
  if (sub_268B18100())
  {
    v21 = *&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_aceServiceHelper];
    sub_268921344();
    v23 = v22;

    if (v23[2])
    {
      v24 = v12;
      v25 = v13;
      v26 = v23[4];
      v27 = v23[5];

      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = a1;
        v30 = sub_268B18100();
        v31 = v59;
        if (v30)
        {
          v32 = sub_2688EFBD0(v30);

          if (v32 == 1)
          {
            v33 = sub_268B18100();
            if (v33)
            {
              v34 = v33;
              if (sub_2688EFD0C(v33))
              {
                sub_2688EFD10(0, (v34 & 0xC000000000000001) == 0, v34);
                if ((v34 & 0xC000000000000001) != 0)
                {
                  v35 = MEMORY[0x26D625BD0](0, v34);
                }

                else
                {
                  v35 = *(v34 + 32);
                }

                v36 = v35;

                if (sub_268984BA0())
                {
                  v37 = v57;
                  v38 = *&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController + 24];
                  v56 = *&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController + 32];
                  __swift_project_boxed_opaque_existential_1(&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController], v38);
                  v39 = swift_allocObject();
                  v40 = v58;
                  v39[2] = sub_26892D9D4;
                  v39[3] = v40;
                  v39[4] = v37;
                  v39[5] = v29;

                  v41 = v37;
                  v42 = v29;
                  sub_268B37764();

LABEL_26:

                  goto LABEL_27;
                }
              }

              else
              {
              }
            }
          }
        }

        v48 = v57;
        v49 = *&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 32];
        __swift_project_boxed_opaque_existential_1(&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController], *&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 24]);
        v50 = swift_allocObject();
        v51 = v58;
        v50[2] = sub_26892D9D4;
        v50[3] = v51;
        v50[4] = v48;
        v50[5] = v29;

        v52 = v48;
        v53 = v29;
        sub_268B36CD4();

        goto LABEL_26;
      }

      v13 = v25;
      v12 = v24;
    }

    else
    {
    }
  }

  v43 = v56;
  v13(v56, v12, v5);
  v44 = sub_268B37A34();
  v45 = sub_268B37EE4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_2688BB000, v44, v45, "SetVolumeLevelIntentHandler#resolveVolumeLevel no devices resolved. Returning failure", v46, 2u);
    MEMORY[0x26D6266E0](v46, -1, -1);
  }

  v20(v43, v5);
  type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
  v47 = [swift_getObjCClassFromMetadata() unsupported];
  v31 = v59;
  v59[2](v59, v47);

LABEL_27:
  _Block_release(v31);
}

void sub_268926D48()
{
  OUTLINED_FUNCTION_26();
  v54 = v0;
  v55 = v2;
  v56 = v3;
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v53 = (v12 - v13);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v15 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v16 = *(v9 + 16);
  v16(v0, v15, v6);
  v17 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_66_0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v19);
    _os_log_impl(&dword_2688BB000, v17, v1, "SetVolumeLevelIntentHandler#resolveVolumeLevel resolving volume level for SetVolume", v5, 2u);
    OUTLINED_FUNCTION_12();
  }

  v20 = *(v9 + 8);
  v20(v0, v6);
  if (sub_268B18100())
  {
    v21 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_aceServiceHelper];
    sub_268921344();
    v23 = v22;

    if (v23[2])
    {
      v24 = v16;
      v25 = v23[4];
      v26 = v23[5];

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        v28 = v5;
        v29 = sub_268B18100();
        if (v29)
        {
          v30 = sub_2688EFBD0(v29);

          if (v30 == 1)
          {
            v31 = sub_268B18100();
            if (v31)
            {
              v32 = v31;
              if (sub_2688EFD0C(v31))
              {
                v33 = OUTLINED_FUNCTION_90_1();
                sub_2688EFD10(v33, v34, v32);
                if ((v32 & 0xC000000000000001) != 0)
                {
                  v35 = MEMORY[0x26D625BD0](0, v32);
                }

                else
                {
                  v35 = *(v32 + 32);
                }

                v36 = v35;

                if (sub_268984BA0())
                {
                  v37 = *&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController + 32];
                  OUTLINED_FUNCTION_59_0(&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController], *&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController + 24]);
                  v38 = swift_allocObject();
                  v38[2] = v55;
                  v38[3] = v56;
                  v38[4] = v54;
                  v38[5] = v28;

                  v39 = v54;
                  v40 = v28;
                  sub_268B37764();

LABEL_26:

                  goto LABEL_27;
                }
              }

              else
              {
              }
            }
          }
        }

        v49 = *&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 32];
        OUTLINED_FUNCTION_59_0(&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController], *&v54[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 24]);
        v50 = swift_allocObject();
        v50[2] = v55;
        v50[3] = v56;
        v50[4] = v54;
        v50[5] = v28;

        v51 = v54;
        v52 = v28;
        sub_268B36CD4();

        goto LABEL_26;
      }

      v16 = v24;
    }

    else
    {
    }
  }

  v16(v53, v15, v6);
  v41 = sub_268B37A34();
  v42 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_196(v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v43);
    OUTLINED_FUNCTION_247();
    _os_log_impl(v44, v45, v46, v47, v5, 2u);
    OUTLINED_FUNCTION_12();
  }

  v20(v53, v6);
  type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
  v48 = [swift_getObjCClassFromMetadata() unsupported];
  v55();

LABEL_27:
  OUTLINED_FUNCTION_23();
}

void sub_2689271DC(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100000000) != 0)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v8, v12, v4);
    v13 = sub_268B37A34();
    v14 = sub_268B37EE4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2688BB000, v13, v14, "SetVolumeLevelIntentHandler#resolveVolumeLevel failed to get volume for accessory", v15, 2u);
      MEMORY[0x26D6266E0](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
    v16 = sub_268B17B04(3);
    a2();
  }

  else
  {
    v9 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
    v18 = GetVolumeLevelIntentResponse.init(code:userActivity:)(4, 0);
    v10 = sub_268B37E04();
    [v18 setCurrentVolumeLevel_];

    sub_26892A584();
    v11 = v18;
  }
}

void sub_268927458(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v44 = a5;
  v47 = a4;
  v8 = sub_268B37A54();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B36F24();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v45 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DD8, qword_268B42E80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v41 - v20);
  sub_26892DB34(a1, &v41 - v20, &qword_2802A5DD8, qword_268B42E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = a2;
    v47 = a3;
    (*(v12 + 32))(v17, v21, v11);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v22 = v49;
    v23 = __swift_project_value_buffer(v49, qword_2802CDA10);
    v24 = v48;
    v25 = v46;
    (*(v48 + 16))(v46, v23, v22);
    v26 = *(v12 + 16);
    v27 = v45;
    v43 = v17;
    v26(v45, v17, v11);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    v30 = v11;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50 = v42;
      *v31 = 136446210;
      sub_26892DA98(&qword_2802A5DE0, MEMORY[0x277D5F6E0]);
      v32 = sub_268B38404();
      v34 = v33;
      v35 = *(v12 + 8);
      v35(v27, v30);
      v36 = sub_26892CDB8(v32, v34, &v50);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_2688BB000, v28, v29, "SetVolumeLevelIntentHandler#resolveVolumeLevel an error occurred in the GetVolumeLevel media remote call: %{public}s", v31, 0xCu);
      v37 = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x26D6266E0](v37, -1, -1);
      MEMORY[0x26D6266E0](v31, -1, -1);

      (*(v48 + 8))(v25, v49);
    }

    else
    {

      v35 = *(v12 + 8);
      v35(v27, v30);
      (*(v24 + 8))(v25, v22);
    }

    v39 = v44;
    type metadata accessor for SetVolumeLevelVolumeLevelResolutionResult();
    v40 = sub_268B17B04(3);
    v39();

    v35(v43, v30);
  }

  else
  {
    v38 = *v21;
    sub_26892A584();
  }
}

void sub_268927904(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268927990()
{
  OUTLINED_FUNCTION_27_2();
  v5 = v0;
  OUTLINED_FUNCTION_85_1();
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v136 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v134 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_58_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v135 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v123 - v25;
  v27 = (v5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider);
  v28 = __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider), *(v5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_userDefaultsProvider + 24));
  v29 = sub_26891EFA0(*v28);
  if (v29 > 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v29 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v29, qword_2802CDA10);
    v58 = OUTLINED_FUNCTION_139(v9);
    v59(v58);
    v60 = sub_268B37A34();
    v61 = sub_268B37EC4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v62);
      OUTLINED_FUNCTION_75_1(&dword_2688BB000, v60, v61, "SetVolumeLevelIntentHandler#shouldPresentLoudVolumeWarning loud volume confirmation already presented twice on this device, skipping confirmation");
      OUTLINED_FUNCTION_20_2();
    }

    (*(v9 + 8))(v14, v6);
    goto LABEL_25;
  }

  v133 = v3;
  v30 = sub_2689B8400();
  if (!v30)
  {
LABEL_20:
    if (qword_2802A4F30 != -1)
    {
      v30 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v30, qword_2802CDA10);
    (*(v9 + 16))(v1);
    v64 = sub_268B37A34();
    v65 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v65))
    {
      v66 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v66);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v67, v68, v69, v70, v71, 2u);
      OUTLINED_FUNCTION_6();
    }

    (*(v9 + 8))(v1, v6);
    goto LABEL_25;
  }

  v31 = v30;
  v32 = [v2 volumeLevel];
  if (!v32)
  {
    v33 = v31;
LABEL_19:

    goto LABEL_20;
  }

  v33 = v32;
  v34 = [v32 currentVolumeOutput];
  if (!v34)
  {
    v63 = v33;
    v33 = v31;
LABEL_18:

    goto LABEL_19;
  }

  v35 = v34;
  [v34 floatValue];
  v37 = v36;

  v38 = sub_268ACC57C();
  if ((v38 & 0x100000000) != 0)
  {
    v63 = v31;
    goto LABEL_18;
  }

  v39 = *&v38;
  if (qword_2802A4F30 != -1)
  {
    v38 = OUTLINED_FUNCTION_0_0();
  }

  v40 = v39;
  OUTLINED_FUNCTION_61(v38, qword_2802CDA10);
  v41 = *(v9 + 16);
  v128 = v42;
  v129 = v41;
  v130 = v9 + 16;
  v41(v26);
  v132 = v33;
  v43 = v31;
  v44 = sub_268B37A34();
  v45 = sub_268B37ED4();
  v131 = v43;

  v126 = v45;
  v127 = v44;
  v46 = os_log_type_enabled(v44, v45);
  v47 = &selRef_groupLeader;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v125 = OUTLINED_FUNCTION_236();
    v124 = OUTLINED_FUNCTION_173_0();
    v138 = v124;
    v49 = [v132 currentVolumeOutput];
    v137 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC8, &unk_268B3D780);
    v123 = sub_268B38094();
    v51 = v50;

    v52 = sub_26892CDB8(v123, v51, &v138);

    *(v48 + 14) = v52;
    *(v48 + 22) = 2112;
    v53 = v131;
    *(v48 + 24) = v131;
    *v125 = v31;
    *(v48 + 32) = 2048;
    v54 = v53;
    v55 = [v132 volumeSettingState];

    *(v48 + 34) = v55;
    v47 = &selRef_groupLeader;

    v56 = v127;
    _os_log_impl(&dword_2688BB000, v127, v126, "SetVolumeLevelIntentHandler#shouldPresentLoudVolumeWarning checking if we should be presenting loud volume warning for expectedOutputVolume = %f, currentVolumeOutput = %s, device = %@, volumeSettingState: %ld", v48, 0x2Au);
    sub_2688EF38C(v125, &qword_2802A6420, &unk_268B3C680);
    OUTLINED_FUNCTION_33_1();
    __swift_destroy_boxed_opaque_existential_0Tm(v124);
    OUTLINED_FUNCTION_33_1();
    v57 = v132;
    OUTLINED_FUNCTION_12();
  }

  else
  {

    v57 = v132;
  }

  v72 = *(v9 + 8);
  v73 = OUTLINED_FUNCTION_0_1();
  v72(v73);
  v74 = v131;
  if ([v57 v47[23]] == 1 || objc_msgSend(v57, v47[23]) == 4 || objc_msgSend(v57, v47[23]) == 6)
  {
    OUTLINED_FUNCTION_21_2();
    v75();
    v76 = sub_268B37A34();
    v77 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_115_0(v77))
    {
      v78 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v78);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v84 = v4;
    goto LABEL_34;
  }

  if (v40 < 0.9)
  {
    v85 = v136;
    OUTLINED_FUNCTION_21_2();
    v86();
    v87 = sub_268B37A34();
    v88 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_115_0(v88))
    {
      v89 = OUTLINED_FUNCTION_238();
      *v89 = 134218240;
      *(v89 + 4) = v40;
      *(v89 + 12) = 2048;
      *(v89 + 14) = 0x3FECCCCCC0000000;
LABEL_41:
      OUTLINED_FUNCTION_57();
      _os_log_impl(v94, v95, v96, v97, v98, 0x16u);
      OUTLINED_FUNCTION_6();
      v99 = v57;
      v57 = v74;
LABEL_43:

      v84 = v85;
LABEL_34:
      (v72)(v84, v6);
      goto LABEL_25;
    }

    goto LABEL_42;
  }

  if ((v40 - v37) < 0.3)
  {
    v85 = v134;
    OUTLINED_FUNCTION_21_2();
    v90();
    v87 = sub_268B37A34();
    v91 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_115_0(v91))
    {
      v92 = OUTLINED_FUNCTION_238();
      OUTLINED_FUNCTION_9_6(v92, 3.8521e-34);
      *(v93 + 12) = 2048;
      *(v93 + 14) = 0x3FD3333340000000;
      goto LABEL_41;
    }

LABEL_42:
    v99 = v87;
    v87 = v74;
    goto LABEL_43;
  }

  v100 = v74;
  v101 = v57;
  v102 = *__swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_audioSession), *(v5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_audioSession + 24));
  v103 = v100;
  v104 = sub_26892826C(v100);
  OUTLINED_FUNCTION_21_2();
  v105();
  v106 = sub_268B37A34();
  v107 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_196(v107))
  {
    v108 = OUTLINED_FUNCTION_236();
    *v108 = 67109120;
    *(v108 + 4) = v104 & 1;
    OUTLINED_FUNCTION_247();
    _os_log_impl(v109, v110, v111, v112, v108, 8u);
    OUTLINED_FUNCTION_20_2();
  }

  (v72)(v135, v6);
  if (v104)
  {
    OUTLINED_FUNCTION_21_2();
    v113();
    v114 = sub_268B37A34();
    v115 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_115_0(v115))
    {
      v116 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v116);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v117, v118, v119, v120, v121, 2u);
      OUTLINED_FUNCTION_6();
    }

    (v72)(v133, v6);
    v122 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    sub_26891F278(*v122);
  }

  else
  {
  }

LABEL_25:
  OUTLINED_FUNCTION_28_2();
}

uint64_t sub_26892826C(void *a1)
{
  v47 = sub_268B371E4();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v47);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v15 = v7[2];
  v50 = v14;
  v51 = v7 + 2;
  v49 = v15;
  (v15)(v13);
  v16 = a1;
  v17 = sub_268B37A34();
  v18 = sub_268B37F04();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v52 = v11;
    v20 = v7;
    v21 = v19;
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v16;
    *v22 = v16;
    v23 = v16;
    _os_log_impl(&dword_2688BB000, v17, v18, "Determining if device: %@ has very loud audio output", v21, 0xCu);
    sub_2688EF38C(v22, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v22, -1, -1);
    v24 = v21;
    v7 = v20;
    v11 = v52;
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  v25 = v7[1];
  v52 = (v7 + 1);
  v48 = v25;
  v25(v13, v6);
  v26 = [v16 type];
  if (v26)
  {
    v27 = v26;
    v28 = sub_268B37BF4();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = sub_268B371B4();
  sub_268B371D4();
  v32 = sub_26892E340(v5, v31);
  v34 = v33;

  (*(v2 + 8))(v5, v47);
  if (v30)
  {
    if (v34)
    {
      if (v28 == v32 && v30 == v34)
      {

        v36 = 1;
      }

      else
      {
        v36 = sub_268B38444();
      }
    }

    else
    {
      v36 = 0;
    }

    goto LABEL_19;
  }

  if (v34)
  {
    v36 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v36 = 1;
LABEL_20:
  v37 = sub_2689840D4();
  if ((v37 - 1) >= 4)
  {
    if (v37)
    {
      goto LABEL_32;
    }

    sub_26890C900(v46 + 16, v53);
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    v38 = sub_268B34D24();
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }

  else
  {
    v38 = 0;
  }

  v37 = sub_2689840D4();
  if ((v37 - 1) >= 4)
  {
    if (!v37)
    {
      v45 = sub_268A3609C();
      v40 = v36 | v38 | v45;
      v39 = v45 & 1;
      goto LABEL_24;
    }

LABEL_32:
    v53[0] = v37;
    result = sub_268B38474();
    __break(1u);
    return result;
  }

  v39 = 0;
  v40 = v36 | v38;
LABEL_24:
  v49(v11, v50, v6);
  v41 = sub_268B37A34();
  v42 = sub_268B37F04();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 67110144;
    *(v43 + 4) = v36 & 1;
    *(v43 + 8) = 1024;
    *(v43 + 10) = v38 & 1;
    *(v43 + 14) = 1024;
    *(v43 + 16) = v39;
    *(v43 + 20) = 1024;
    *(v43 + 22) = 0;
    *(v43 + 26) = 1024;
    *(v43 + 28) = v40 & 1;
    _os_log_impl(&dword_2688BB000, v41, v42, "isHomePodFromDeviceType: %{BOOL}d, isHomePodFromDeviceState: %{BOOL}d, isAudioRouteToHeadphone: %{BOOL}d, isLoudVolumeDevice: %{BOOL}d. hasVeryLoudAudioOutput=%{BOOL}d", v43, 0x20u);
    MEMORY[0x26D6266E0](v43, -1, -1);
  }

  v48(v11, v6);
  return v40 & 1;
}

float sub_2689287B4(float a1)
{
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  if (a1 <= 1.0)
  {
    if (a1 >= 0.0)
    {
      return a1;
    }

    if (qword_2802A4F30 != -1)
    {
      v10 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v10, qword_2802CDA10);
    (*(v6 + 16))(v1);
    v13 = sub_268B37A34();
    v20 = sub_268B37EC4();
    if (!OUTLINED_FUNCTION_115_0(v20))
    {
      a1 = 0.0;
      goto LABEL_15;
    }

    v21 = OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_9_6(v21, 3.852e-34);
    _os_log_impl(&dword_2688BB000, v13, v12, "SetVolumeLevelIntentHandler#boundVolumeLevel floatVolumeLevel: %f deceeds minimum level. This is okay, we'll still try to set it to the min value", v21, 0xCu);
    a1 = 0.0;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v10 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v10, qword_2802CDA10);
    (*(v6 + 16))(v12);
    v13 = sub_268B37A34();
    v14 = sub_268B37EC4();
    if (!OUTLINED_FUNCTION_196(v14))
    {
      a1 = 1.0;
      goto LABEL_15;
    }

    v15 = OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_9_6(v15, 3.852e-34);
    OUTLINED_FUNCTION_247();
    _os_log_impl(v16, v17, v18, v19, v15, 0xCu);
    a1 = 1.0;
  }

  OUTLINED_FUNCTION_132_0();
LABEL_15:

  v22 = *(v6 + 8);
  v23 = OUTLINED_FUNCTION_0_1();
  v24(v23);
  return a1;
}

void sub_268928A18()
{
  OUTLINED_FUNCTION_27_2();
  v6 = OUTLINED_FUNCTION_55_1(v3, v4, v5);
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_8();
  sub_2689287B4(v2);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v6, qword_2802CDA10);
  OUTLINED_FUNCTION_11_4();
  v12(v0);

  v13 = sub_268B37A34();
  v14 = sub_268B37ED4();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_238();
    v22 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_19_1(3.8521e-34);
    v15 = OUTLINED_FUNCTION_0_1();
    *(v1 + 14) = sub_26892CDB8(v15, v16, v17);
    OUTLINED_FUNCTION_94_1(&dword_2688BB000, v18, v19, "SetVolumeLevelIntentHandler#setVolumeForSidekickDevice attempting to set the volume for sidekick device to %f for routeId: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_12();
  }

  (*(v9 + 8))(v0, v6);
  v20 = *(v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController + 32);
  OUTLINED_FUNCTION_59_0((v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController), *(v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_accessoryVolumeController + 24));
  OUTLINED_FUNCTION_79_1();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_63_0(v21);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_93_1();
  sub_268B37774();

  OUTLINED_FUNCTION_28_2();
}

void sub_268928C00(char a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v24 = SetVolumeLevelIntentResponse.init(code:userActivity:)(a4, 0);
    v13 = sub_268B37E04();
    [v24 setVolumeLevel_];

    (a2)(v24);
    v14 = v24;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v11, v15, v7);
    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "SetVolumeLevelIntentHandler#setVolumeForSidekickDevice failed to set volume for accessory", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    v19 = sub_268B36EA4();
    v20 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v21 = v19;
    v22 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v19);
    a2();
  }
}

void sub_268928EC0()
{
  OUTLINED_FUNCTION_27_2();
  v6 = OUTLINED_FUNCTION_55_1(v3, v4, v5);
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_8();
  sub_2689287B4(v2);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v6, qword_2802CDA10);
  OUTLINED_FUNCTION_11_4();
  v12(v0);

  v13 = sub_268B37A34();
  v14 = sub_268B37ED4();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_238();
    v22 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_19_1(3.8521e-34);
    v15 = OUTLINED_FUNCTION_0_1();
    *(v1 + 14) = sub_26892CDB8(v15, v16, v17);
    OUTLINED_FUNCTION_94_1(&dword_2688BB000, v18, v19, "SetVolumeLevelIntentHandler#setVolumeForLocalDevice attempting to set the volume for local device to %f for routeId: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_12();
  }

  (*(v9 + 8))(v0, v6);
  v20 = *(v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 32);
  OUTLINED_FUNCTION_59_0((v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController), *(v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 24));
  OUTLINED_FUNCTION_79_1();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_63_0(v21);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_93_1();
  sub_268B36D64();

  OUTLINED_FUNCTION_28_2();
}

void sub_2689290A8(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v49 = a4;
  v53 = a3;
  v52 = sub_268B37A54();
  v48 = *(v52 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_268B36F24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v44[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v44[-v18];
  v50 = a1;
  sub_26892DB34(a1, &v44[-v18], &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v15, v19, v8);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v49 = a2;
    v20 = v52;
    v21 = __swift_project_value_buffer(v52, qword_2802CDA10);
    v22 = v48;
    v23 = v51;
    (*(v48 + 16))(v51, v21, v20);
    v24 = *(v9 + 16);
    v47 = v15;
    v25 = v15;
    v26 = v23;
    v24(v13, v25, v8);
    v27 = sub_268B37A34();
    v28 = sub_268B37EE4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54 = v46;
      *v29 = 136446210;
      sub_26892DA98(&qword_2802A5DE0, MEMORY[0x277D5F6E0]);
      v45 = v28;
      v30 = sub_268B38404();
      v31 = v22;
      v33 = v32;
      v34 = *(v9 + 8);
      v34(v13, v8);
      v35 = sub_26892CDB8(v30, v33, &v54);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_2688BB000, v27, v45, "SetVolumeLevelIntentHandler#setVolumeForLocalDevice an error occurred in the SetVolumeLevel media remote call: %{public}s", v29, 0xCu);
      v36 = v46;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x26D6266E0](v36, -1, -1);
      MEMORY[0x26D6266E0](v29, -1, -1);

      (*(v31 + 8))(v51, v52);
    }

    else
    {

      v34 = *(v9 + 8);
      v34(v13, v8);
      (*(v22 + 8))(v26, v20);
    }

    v40 = sub_268B36ED4();
    v41 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v42 = v40;
    v43 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v40);
    v49();

    v34(v47, v8);
  }

  else
  {
    v37 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v38 = SetVolumeLevelIntentResponse.init(code:userActivity:)(v49, 0);
    v39 = sub_268B37E04();
    [v38 setVolumeLevel_];

    (a2)(v38);
  }
}

void sub_2689295D4()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_142_0();
  v11 = sub_268B37A54();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_8();
  v17 = sub_2689287B4(v10);
  v33 = v18;
  v19 = v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v11, qword_2802CDA10);
  v20 = OUTLINED_FUNCTION_139(v14);
  v21(v20);

  v22 = sub_268B37A34();
  v23 = sub_268B37ED4();

  if (os_log_type_enabled(v22, v23))
  {
    swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_53_1();
    v34 = v32;
    *v11 = 134218498;
    *(v11 + 4) = v19;
    *(v11 + 12) = 2080;
    v24 = MEMORY[0x26D6256F0](v0, MEMORY[0x277D837D0]);
    v26 = sub_26892CDB8(v24, v25, &v34);

    *(v11 + 14) = v26;
    v2 = v1;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v8 & 1;
    _os_log_impl(&dword_2688BB000, v22, v23, "SetVolumeLevelIntentHandler#setAbsoluteVolume attempting to set the volume to %f for routeIds: %s isLocal: %{BOOL}d", v11, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_20_2();

    (*(v14 + 8))(v1, v11);
  }

  else
  {

    v27 = *(v14 + 8);
    v28 = OUTLINED_FUNCTION_212_0();
    v29(v28);
  }

  v30 = *(v2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 32);
  OUTLINED_FUNCTION_59_0((v2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController), *(v2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetVolumeLevelIntentHandler_playbackController + 24));
  OUTLINED_FUNCTION_79_1();
  v31 = swift_allocObject();
  *(v31 + 16) = v6;
  *(v31 + 24) = v4;
  *(v31 + 32) = v33;
  *(v31 + 40) = v19;

  sub_268B36D74();

  OUTLINED_FUNCTION_28_2();
}

void sub_268929894(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v49 = a4;
  v53 = a3;
  v52 = sub_268B37A54();
  v48 = *(v52 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_268B36F24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v44[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v44[-v18];
  v50 = a1;
  sub_26892DB34(a1, &v44[-v18], &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v15, v19, v8);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v49 = a2;
    v20 = v52;
    v21 = __swift_project_value_buffer(v52, qword_2802CDA10);
    v22 = v48;
    v23 = v51;
    (*(v48 + 16))(v51, v21, v20);
    v24 = *(v9 + 16);
    v47 = v15;
    v25 = v15;
    v26 = v23;
    v24(v13, v25, v8);
    v27 = sub_268B37A34();
    v28 = sub_268B37EE4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54 = v46;
      *v29 = 136446210;
      sub_26892DA98(&qword_2802A5DE0, MEMORY[0x277D5F6E0]);
      v45 = v28;
      v30 = sub_268B38404();
      v31 = v22;
      v33 = v32;
      v34 = *(v9 + 8);
      v34(v13, v8);
      v35 = sub_26892CDB8(v30, v33, &v54);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_2688BB000, v27, v45, "SetVolumeLevelIntentHandler#setAbsoluteVolume an error occurred in the SetVolumeLevel media remote call: %{public}s", v29, 0xCu);
      v36 = v46;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x26D6266E0](v36, -1, -1);
      MEMORY[0x26D6266E0](v29, -1, -1);

      (*(v31 + 8))(v51, v52);
    }

    else
    {

      v34 = *(v9 + 8);
      v34(v13, v8);
      (*(v22 + 8))(v26, v20);
    }

    v40 = sub_268B36ED4();
    v41 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v42 = v40;
    v43 = SetVolumeLevelIntentResponse.init(code:userActivity:)(5, v40);
    v49();

    v34(v47, v8);
  }

  else
  {
    v37 = objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentResponse());
    v38 = SetVolumeLevelIntentResponse.init(code:userActivity:)(v49, 0);
    v39 = sub_268B37E04();
    [v38 setVolumeLevel_];

    (a2)(v38);
  }
}