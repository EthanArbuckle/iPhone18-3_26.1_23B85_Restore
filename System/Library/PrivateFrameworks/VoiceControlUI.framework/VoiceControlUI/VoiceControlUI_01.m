uint64_t sub_272423B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v4[19] = sub_272434AB0();
  v4[20] = sub_272434AA0();
  v6 = sub_272434A90();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x2822009F8](sub_272423BFC, v6, v5);
}

uint64_t sub_272423BFC()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 201;
    v0[3] = sub_272423D40;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967C8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_272424050;
    v0[13] = &block_descriptor_122;
    v0[14] = v3;
    [v2 presentEnablementAndDataSharingPromptIfNeeded_];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_272423D40()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_272423E48, v2, v1);
}

uint64_t sub_272423E48()
{
  v1 = *(v0 + 184);
  *(v0 + 200) = *(v0 + 201);

  return MEMORY[0x2822009F8](sub_272423EB8, 0, 0);
}

uint64_t sub_272423EB8()
{
  *(v0 + 192) = sub_272434AA0();
  v2 = sub_272434A90();

  return MEMORY[0x2822009F8](sub_272423F44, v2, v1);
}

uint64_t sub_272423F44()
{

  sub_2724240AC((v0 + 200));
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_272423FF0, v1, v2);
}

uint64_t sub_272423FF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272424050(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

void sub_2724240AC(unsigned __int8 *a1)
{
  v2 = *a1;
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896678);
    sub_272434730();
    sub_2724170EC();
    if (v1)
    {
    }
  }

  else
  {
    v3 = sub_272433BA0();
    v4 = sub_272434B30();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_272406000, v3, v4, "VCUIAudioButton, dictationState -> .idle", v5, 2u);
      MEMORY[0x2743C99D0](v5, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
    sub_272434740();
  }
}

uint64_t sub_272424224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_27240A0F0(a3, v25 - v10, &qword_2808967C0);
  v12 = sub_272434AD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27240A158(v11, &qword_2808967C0);
  }

  else
  {
    sub_272434AC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_272434A90();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_272434970() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_27240A158(a3, &qword_2808967C0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27240A158(a3, &qword_2808967C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_272424524@<X0>(_BYTE *a1@<X8>)
{
  sub_272429BD4();
  result = sub_2724340B0();
  *a1 = v3;
  return result;
}

uint64_t sub_2724245C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_272433B30();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_272434900();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  sub_2724348F0();
  v12 = *(v6 + 16);
  v89 = v6 + 16;
  v88 = v12;
  v12(v9, v11, v5);
  sub_27242AA04(0, &qword_280896670);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v86 = objc_opt_self();
  v87 = ObjCClassFromMetadata;
  v14 = [v86 bundleForClass_];
  sub_272433B20();
  v15 = sub_272434950();
  v17 = v16;
  v18 = *(v6 + 8);
  v99 = v5;
  v98 = v6 + 8;
  v85 = v18;
  v18(v11, v5);
  v110 = v15;
  v111 = v17;
  v84 = sub_27240A1B8();
  v82 = sub_2724344C0();
  v81 = v19;
  v79 = v20;
  v83 = v21;
  KeyPath = swift_getKeyPath();
  v76 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v22 = (a1 + *(v76 + 32));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v110) = *v22;
  v111 = v24;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  v77 = a1;
  v78 = a2;
  if (v104 == 3)
  {

    v25 = 1.0;
  }

  else
  {
    v26 = sub_272434CF0();

    v25 = 1.0;
    if ((v26 & 1) == 0)
    {
      LOBYTE(v110) = v23;
      v111 = v24;
      sub_272434730();
      if (v104 <= 2u || v104 > 4u || v104 == 3)
      {
        v27 = sub_272434CF0();

        if (v27)
        {
          v25 = 1.0;
        }

        else
        {
          v25 = 0.0;
        }
      }

      else
      {
      }
    }
  }

  sub_2724348F0();
  v28 = v99;
  v88(v9, v11, v99);
  v29 = [v86 bundleForClass_];
  sub_272433B20();
  v30 = sub_272434950();
  v32 = v31;
  v85(v11, v28);
  v110 = v30;
  v111 = v32;
  v95 = sub_2724344C0();
  v94 = v33;
  LOBYTE(v30) = v34;
  v97 = v35;
  v93 = swift_getKeyPath();
  v96 = sub_272434470();
  v92 = swift_getKeyPath();
  v90 = v30 & 1;
  LOBYTE(v110) = v30 & 1;
  *(&v91 + 1) = sub_2724346D0();
  *&v91 = swift_getKeyPath();
  v36 = *v22;
  v37 = *(v22 + 1);
  LOBYTE(v110) = *v22;
  v111 = v37;
  sub_272434730();
  if (v104 <= 2u && !v104)
  {

    v39 = 1.0;
    goto LABEL_25;
  }

  v38 = sub_272434CF0();

  v39 = 1.0;
  if (v38)
  {
    goto LABEL_25;
  }

  LOBYTE(v110) = v36;
  v111 = v37;
  sub_272434730();
  if (v104 == 1)
  {
    goto LABEL_17;
  }

  v40 = sub_272434CF0();

  if (v40)
  {
    goto LABEL_25;
  }

  LOBYTE(v110) = v36;
  v111 = v37;
  sub_272434730();
  if (v104 > 4u && v104 != 5)
  {
LABEL_17:

    goto LABEL_25;
  }

  v41 = sub_272434CF0();

  if (v41)
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

LABEL_25:
  sub_2724348F0();
  v42 = v99;
  v88(v9, v11, v99);
  v43 = [v86 bundleForClass_];
  sub_272433B20();
  v44 = sub_272434950();
  v46 = v45;
  v85(v11, v42);
  v110 = v44;
  v111 = v46;
  v47 = sub_2724344C0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = swift_getKeyPath();
  v55 = *v22;
  v56 = *(v22 + 1);
  LOBYTE(v110) = v55;
  v111 = v56;
  sub_272434730();
  v99 = v47;
  v57 = v53;
  if (v104 == 2)
  {
    v58 = v78;
  }

  else
  {
    v58 = v78;
    v59 = sub_272434CF0();

    if ((v59 & 1) == 0)
    {
      LOBYTE(v110) = v55;
      v111 = v56;
      sub_272434730();
      if (v104 == 5)
      {
      }

      else
      {
        v60 = sub_272434CF0();

        if ((v60 & 1) == 0)
        {
LABEL_32:
          v61 = 0.0;
          goto LABEL_33;
        }
      }
    }
  }

  v61 = 1.0;
  if ((*(v77 + *(v76 + 76)) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v62 = v79 & 1;
  v103 = v79 & 1;
  v102 = v79 & 1;
  *&v104 = v95;
  *(&v104 + 1) = v94;
  LOBYTE(v105) = v90;
  *(&v105 + 1) = v123[0];
  DWORD1(v105) = *(v123 + 3);
  *(&v105 + 1) = v97;
  *&v106 = v93;
  BYTE8(v106) = 1;
  HIDWORD(v106) = *&v122[3];
  *(&v106 + 9) = *v122;
  *&v107 = v92;
  *(&v107 + 1) = v96;
  v108 = v91;
  v109 = v39;
  v63 = v51 & 1;
  v101 = v51 & 1;
  v64 = v79 & 1;
  v65 = v82;
  v66 = v58;
  *v58 = v82;
  v67 = v81;
  v66[1] = v81;
  *(v66 + 16) = v64;
  v68 = KeyPath;
  v66[3] = v83;
  v66[4] = v68;
  *(v66 + 40) = 1;
  *(v66 + 6) = v25;
  v69 = v106;
  v70 = v107;
  v71 = v109;
  *(v66 + 15) = v108;
  *(v66 + 13) = v70;
  *(v66 + 11) = v69;
  v72 = v104;
  *(v66 + 9) = v105;
  *(v66 + 7) = v72;
  *(v66 + 17) = v71;
  v73 = v99;
  v66[18] = v99;
  v66[19] = v49;
  *(v66 + 160) = v63;
  v66[21] = v57;
  v66[22] = v54;
  *(v66 + 184) = 1;
  *(v66 + 24) = v61;
  sub_27240A20C(v65, v67, v62);

  sub_27240A0F0(&v104, &v110, &qword_2808967B0);
  sub_27240A20C(v73, v49, v63);

  sub_27240A21C(v73, v49, v63);

  v110 = v95;
  v111 = v94;
  v112 = v90;
  *v113 = v123[0];
  *&v113[3] = *(v123 + 3);
  v114 = v97;
  v115 = v93;
  v116 = 1;
  *v117 = *v122;
  *&v117[3] = *&v122[3];
  v118 = v92;
  v119 = v96;
  v120 = v91;
  v121 = v39;
  sub_27240A158(&v110, &qword_2808967B0);
  sub_27240A21C(v65, v67, v103);
}

uint64_t sub_27242567C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v89 = sub_2724343A0();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v83 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v84 = v5;
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896730);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896738);
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x28223BE20](v8);
  v91 = &v76 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896740);
  MEMORY[0x28223BE20](v90);
  v97 = &v76 - v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896748);
  v11 = MEMORY[0x28223BE20](v96);
  v100 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v95 = &v76 - v14;
  MEMORY[0x28223BE20](v13);
  v98 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896750);
  v80 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896758);
  v81 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v76 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896760);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v94 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v76 - v28;
  v30 = a1;
  v31 = *(a1 + *(v4 + 20) + 8);
  swift_beginAccess();
  v32 = *(v31 + 24);
  v99 = v4;
  if (v32)
  {
    v33 = 1;
    v34 = v101;
    v35 = v83;
    v36 = v81;
    goto LABEL_24;
  }

  v77 = v22;
  v78 = v16;
  v79 = v6;
  v76 = v18;
  sub_272426578(v18);
  v37 = v30 + *(v4 + 32);
  v38 = *(v37 + 8);
  LOBYTE(v104) = *v37;
  *(&v104 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  if (v102 <= 2u)
  {
    v39 = v24;
    if (!v102)
    {

      v41 = 1.0;
      goto LABEL_22;
    }
  }

  else
  {
    v39 = v24;
  }

  v40 = sub_272434CF0();

  v41 = 1.0;
  if (v40)
  {
    goto LABEL_22;
  }

  v42 = *(v37 + 8);
  LOBYTE(v104) = *v37;
  *(&v104 + 1) = v42;
  sub_272434730();
  if (v102 > 4u && v102 != 5)
  {

    goto LABEL_22;
  }

  v43 = sub_272434CF0();

  if (v43)
  {
LABEL_22:
    v35 = v83;
    v47 = v78;
    v48 = v80;
    v49 = v76;
    v36 = v81;
    v45 = v77;
    goto LABEL_23;
  }

  v44 = *(v37 + 8);
  LOBYTE(v104) = *v37;
  *(&v104 + 1) = v44;
  sub_272434730();
  if (v102 > 2u || !v102)
  {
    v35 = v83;
    v36 = v81;
    v45 = v77;
    goto LABEL_14;
  }

  v35 = v83;
  v36 = v81;
  v45 = v77;
  if (v102 != 1)
  {
LABEL_14:
    v46 = sub_272434CF0();

    if (v46)
    {
      v41 = 1.0;
    }

    else
    {
      v41 = 0.0;
    }

    goto LABEL_17;
  }

LABEL_17:
  v47 = v78;
  v48 = v80;
  v49 = v76;
LABEL_23:
  (*(v48 + 32))(v45, v49, v47);
  *(v45 + *(v19 + 36)) = v41;
  sub_27242A258(v45, v39, &qword_280896758);
  sub_27242A258(v39, v29, &qword_280896758);
  v33 = 0;
  v34 = v101;
  v6 = v79;
LABEL_24:
  (*(v36 + 56))(v29, v33, 1, v19);
  sub_2724276E8(v30, v6);
  v50 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v51 = swift_allocObject();
  sub_272427750(v6, v51 + v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896768);
  sub_272429A30();
  v52 = v82;
  sub_272434780();
  v53 = v87;
  sub_272434390();
  sub_27240BFB4(&qword_280896788, &qword_280896730);
  sub_27242AA74(&qword_280896790, MEMORY[0x277CDE400]);
  v54 = v91;
  v55 = v86;
  v56 = v89;
  sub_272434500();
  (*(v88 + 8))(v53, v56);
  (*(v85 + 8))(v52, v55);
  v57 = v99;
  v58 = v30 + *(v99 + 32);
  v59 = *v58;
  v60 = *(v58 + 8);
  LOBYTE(v104) = v59;
  *(&v104 + 1) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  if (v102 <= 2u)
  {
    v61 = v97;
  }

  else
  {
    v61 = v97;
    if (v102 == 5)
    {

      v62 = 1.0;
      goto LABEL_32;
    }
  }

  v63 = sub_272434CF0();

  if (v63)
  {
    v62 = 1.0;
  }

  else
  {
    v62 = 0.0;
  }

LABEL_32:
  (*(v92 + 32))(v61, v54, v93);
  *(v61 + *(v90 + 36)) = v62;
  if ((*(v30 + *(v57 + 76)) & 1) == 0)
  {
    v64 = v30 + *(v57 + 40);
    v65 = *(v64 + 16);
    v104 = *v64;
    v105 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0);
    sub_272434730();
    if (!v103)
    {
      v66 = 1;
      goto LABEL_36;
    }
  }

  v66 = 0;
LABEL_36:
  KeyPath = swift_getKeyPath();
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  v69 = v95;
  sub_27242A258(v61, v95, &qword_280896740);
  v70 = (v69 + *(v96 + 36));
  *v70 = KeyPath;
  v70[1] = sub_272429B00;
  v70[2] = v68;
  v71 = v98;
  sub_27242A258(v69, v98, &qword_280896748);
  v72 = v94;
  sub_27240A0F0(v29, v94, &qword_280896760);
  v73 = v100;
  sub_27240A0F0(v71, v100, &qword_280896748);
  sub_27240A0F0(v72, v34, &qword_280896760);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896798);
  sub_27240A0F0(v73, v34 + *(v74 + 48), &qword_280896748);
  sub_27240A158(v71, &qword_280896748);
  sub_27240A158(v29, &qword_280896760);
  sub_27240A158(v73, &qword_280896748);
  return sub_27240A158(v72, &qword_280896760);
}

uint64_t sub_272426578@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v26 = *(v1 - 8);
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_272433B30();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_272434900();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  sub_2724348F0();
  (*(v5 + 16))(v8, v10, v4);
  sub_27242AA04(0, &qword_280896670);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v17 = sub_272434950();
  v19 = v18;
  (*(v5 + 8))(v10, v4);
  v29 = v17;
  v30 = v19;
  v20 = v25;
  sub_2724276E8(v27, v25);
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = swift_allocObject();
  sub_272427750(v20, v22 + v21);
  sub_27240A1B8();
  sub_2724347B0();
  sub_27240BFB4(&qword_280896620, &qword_2808960B8);
  sub_272434610();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_272426940(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v70 - v7;
  v9 = *(v6 + 44);
  v73 = a1;
  v10 = (a1 + v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  *&v77 = *v10;
  *(&v77 + 1) = v12;
  v78 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808967A0);
  sub_272434730();
  v16 = v75;
  v15 = v76;

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    sub_2724276E8(v73, v8);
    v18 = sub_272433BA0();
    v19 = sub_272434B30();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v72 = v11;
      v22 = v21;
      v74 = v21;
      *v20 = 136315138;
      v23 = &v8[v2[11]];
      v24 = *v23;
      v25 = *(v23 + 2);
      v77 = v24;
      v78 = v25;
      v70[1] = v14;
      sub_272434730();
      v71 = v13;
      v26 = v12;
      v27 = v75;
      v28 = v76;
      sub_272413884(v8);
      v29 = sub_2724285FC(v27, v28, &v74);
      v12 = v26;
      v13 = v71;

      *(v20 + 4) = v29;
      _os_log_impl(&dword_272406000, v18, v19, "Phonetic vocabulary using IPA override: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v30 = v22;
      v11 = v72;
      MEMORY[0x2743C99D0](v30, -1, -1);
      MEMORY[0x2743C99D0](v20, -1, -1);
    }

    else
    {

      sub_272413884(v8);
    }

    v39 = *(v73 + v2[5] + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_272436A80;
    *&v77 = v11;
    *(&v77 + 1) = v12;
    v78 = v13;
    sub_272434730();
    v41 = v76;
    *(inited + 32) = v75;
    *(inited + 40) = v41;
    sub_272414914(inited);
    swift_setDeallocating();
    v42 = inited + 32;
  }

  else
  {
    if (*(v73 + v2[19]) == 1)
    {
      sub_2724276E8(v73, v5);
      v31 = sub_272433BA0();
      v32 = sub_272434B30();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v77 = v34;
        *v33 = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_272433C00();

        v35 = MEMORY[0x2743C9070](v75, MEMORY[0x277D837D0]);
        v37 = v36;

        sub_272413884(v5);
        v38 = sub_2724285FC(v35, v37, &v77);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_272406000, v31, v32, "Phonetic vocabulary using all IPAs: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x2743C99D0](v34, -1, -1);
        MEMORY[0x2743C99D0](v33, -1, -1);
      }

      else
      {

        sub_272413884(v5);
      }

      v67 = *(v73 + v2[5] + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_272433C00();

      sub_272414914(v77);

      v68 = (v67 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
      swift_beginAccess();
      v44 = *v68;
      v69 = *(v67 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
      v45 = *(v67 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord + 8);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_272433C00();

      v47 = v75;
      v48 = v69;
      goto LABEL_18;
    }

    v49 = (v73 + v2[10]);
    v50 = *(v49 + 2);
    v77 = *v49;
    v78 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0);
    result = sub_272434730();
    v52 = v76;
    if (!v76)
    {
      return result;
    }

    v53 = v75;

    v54 = sub_272433BA0();
    v55 = sub_272434B30();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v77 = v57;
      *v56 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896420);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_272436A80;
      *(v58 + 32) = v53;
      *(v58 + 40) = v52;

      v59 = v53;
      v60 = MEMORY[0x2743C9070](v58, MEMORY[0x277D837D0]);
      v62 = v61;

      v63 = v60;
      v53 = v59;
      v64 = sub_2724285FC(v63, v62, &v77);

      *(v56 + 4) = v64;
      _os_log_impl(&dword_272406000, v54, v55, "Phonetic vocabulary using selected IPA: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x2743C99D0](v57, -1, -1);
      MEMORY[0x2743C99D0](v56, -1, -1);
    }

    v39 = *(v73 + v2[5] + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896420);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_272436A80;
    *(v65 + 32) = v53;
    v66 = v65 + 32;
    *(v65 + 40) = v52;
    sub_272414914(v65);
    swift_setDeallocating();
    v42 = v66;
  }

  sub_272429B08(v42);
  v43 = (v39 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v44 = *v43;
  v46 = *(v39 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
  v45 = *(v39 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C00();

  v47 = v75;
  v48 = v46;
LABEL_18:
  v44(v48, v45, v47);
}

uint64_t sub_272427144@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2724340D0();
  sub_2724271EC(v10);
  *&v9[7] = v10[0];
  *&v9[23] = v10[1];
  *&v9[39] = v11[0];
  *&v9[48] = *(v11 + 9);
  v3 = sub_272434450();
  result = sub_272433CE0();
  *(a1 + 17) = *v9;
  *(a1 + 33) = *&v9[16];
  *(a1 + 49) = *&v9[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v9[48];
  *(a1 + 88) = v3;
  *(a1 + 96) = v5;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  *(a1 + 120) = v8;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_2724271EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27242AA04(0, &qword_280896670);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v12 = sub_272434950();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v28 = v12;
  v29 = v14;
  sub_27240A1B8();
  v15 = sub_2724344C0();
  v17 = v16;
  LOBYTE(v9) = v18;
  v19 = sub_2724344A0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_27240A21C(v15, v17, v9 & 1);

  LOBYTE(v28) = 1;
  v31 = v23 & 1;
  v30 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v19;
  *(a1 + 24) = v21;
  *(a1 + 32) = v23 & 1;
  *(a1 + 40) = v25;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_27240A20C(v19, v21, v23 & 1);

  sub_27240A21C(v19, v21, v23 & 1);
}

uint64_t sub_27242749C(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2724276E8(a1, v4);
  v5 = sub_272433BA0();
  v6 = sub_272434B30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136315138;
    v9 = *&v4[*(v2 + 20) + 8];

    sub_272413884(v4);
    v10 = *(v9 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
    v11 = *(v9 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord + 8);

    v12 = sub_2724285FC(v10, v11, v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_272406000, v5, v6, "Phonetic vocabulary skipping recording for word %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2743C99D0](v8, -1, -1);
    MEMORY[0x2743C99D0](v7, -1, -1);
  }

  else
  {

    sub_272413884(v4);
  }

  v13 = *(a1 + *(v2 + 20) + 8);
  v14 = (v13 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v15 = *v14;
  v16 = *(v13 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
  v17 = *(v13 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord + 8);

  v15(v16, v17, MEMORY[0x277D84F90]);
}

uint64_t sub_2724276E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272427750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_272433D50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[12];
  v8 = sub_272433BC0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_272427A24(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_272427A98()
{
  result = qword_280896638;
  if (!qword_280896638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808965B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808965A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808960B8);
    sub_27240BFB4(&unk_280896610, &qword_2808965A8);
    sub_27240A1B8();
    sub_27240BFB4(&qword_280896620, &qword_2808960B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896638);
  }

  return result;
}

unint64_t sub_272427C24()
{
  result = qword_280896650;
  if (!qword_280896650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896658);
    sub_27240BFB4(&qword_280896660, &qword_280896658);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896650);
  }

  return result;
}

uint64_t sub_272427D38@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a1 = v3;
  return result;
}

uint64_t sub_272427DB8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_272427E34@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a1 = v3;
  return result;
}

uint64_t sub_272427EB8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_272427F50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_272427F90(uint64_t a1)
{
  v3 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27241F714(a1, v4);
}

uint64_t sub_272428000(uint64_t a1)
{
  v3 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_272420600(a1, v4);
}

uint64_t sub_272428070(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_272428080()
{
  v1 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_272433D50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[12];
  v8 = sub_272433BC0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2724282C8()
{
  v1 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_27241FAA4(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_272428344(uint64_t a1)
{
  v2 = sub_272433D50();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_272433FB0();
}

uint64_t sub_27242840C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_272428504;

  return v6(a1);
}

uint64_t sub_272428504()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2724285FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2724286C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2724297A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2724286C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2724287D4(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_272434CB0();
    a6 = v11;
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

uint64_t sub_2724287D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_272428820(a1, a2);
  sub_272428950(&unk_2881A2480);
  return v3;
}

uint64_t sub_272428820(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_272428A3C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_272434CB0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2724349F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_272428A3C(v10, 0);
        result = sub_272434C60();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_272428950(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_272428AB0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_272428A3C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_272428AB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_272428BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896858);
  sub_27240BFB4(&qword_2808968B8, &qword_2808968B0);
  sub_27242A41C();
  return sub_272434830();
}

uint64_t sub_272428CD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v4 = a3;
  v6 = result;
  v39 = *(a3 + 16);
  if (v39 >= v3)
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
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896950);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * ((v9 - 32) / 24);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = *(v8 + 3);

  if (v3 < 0)
  {
    goto LABEL_67;
  }

  v11 = v10 >> 1;
  v44 = v8;
  if (!v7)
  {
    v14 = v8 + 32;
    v18 = v6;
    if (v6 == a2)
    {
      goto LABEL_53;
    }

LABEL_27:
    if (v6 > a2)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v19 = 0;
    v40 = v18 - a2;
    if (v18 <= a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = v18;
    }

    v43 = v20 - v18;
    v21 = v39;
    v41 = v39 - v7;
    v22 = (v4 + 16 * v7 + 40);
    v38 = v7;
    while (v18 >= v6)
    {
      if (v43 == v19)
      {
        goto LABEL_61;
      }

      if (v41 == v19)
      {
        goto LABEL_53;
      }

      if (v7 + v19 >= v21)
      {
        goto LABEL_62;
      }

      if (__OFADD__(v7 + v19, 1))
      {
        goto LABEL_63;
      }

      v23 = *(v22 - 1);
      v24 = *v22;
      if (v11)
      {

        v25 = __OFSUB__(v11--, 1);
        if (v25)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v26 = *(v44 + 3);
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_65;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896950);
        v29 = swift_allocObject();
        v30 = (_swift_stdlib_malloc_size(v29) - 32) / 24;
        *(v29 + 2) = v28;
        *(v29 + 3) = 2 * v30;
        v31 = v29 + 32;
        v32 = *(v44 + 3) >> 1;
        v14 = &v29[24 * v32 + 32];
        v33 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;
        if (*(v44 + 2))
        {
          v34 = v44 + 32;
          if (v29 != v44 || v31 >= &v34[24 * v32])
          {
            memmove(v31, v34, 24 * v32);
          }

          *(v44 + 2) = 0;
        }

        else
        {
        }

        v44 = v29;
        v7 = v38;
        v21 = v39;
        v25 = __OFSUB__(v33, 1);
        v11 = v33 - 1;
        if (v25)
        {
          goto LABEL_64;
        }
      }

      *v14 = v18 + v19;
      *(v14 + 1) = v23;
      *(v14 + 2) = v24;
      v14 += 24;
      ++v19;
      v22 += 2;
      if (!(v40 + v19))
      {
        goto LABEL_53;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v6 > a2)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = 0;
  v11 -= v7;
  v42 = v4;
  v13 = (v4 + 40);
  v14 = v8 + 56;
  v15 = 1;
  do
  {
    if (v6 - a2 + v15 == 1)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v15 - v39 == 1)
    {
      goto LABEL_58;
    }

    if (v12)
    {
      goto LABEL_59;
    }

    v17 = *(v13 - 1);
    v16 = *v13;
    *(v14 - 3) = v6 + v15 - 1;
    *(v14 - 2) = v17;
    *(v14 - 1) = v16;
    if (v7 == v15)
    {
      goto LABEL_24;
    }

    v12 = __OFADD__(v15, 1);

    ++v15;
    v13 += 2;
    v14 += 24;
  }

  while (v6 + v15 - 1 >= v6);
  __break(1u);
LABEL_24:

  v18 = v6 + v15;
  v4 = v42;
  if (v6 + v15 != a2)
  {
    goto LABEL_27;
  }

LABEL_53:
  result = v44;
  v35 = *(v44 + 3);
  if (v35 < 2)
  {
    return result;
  }

  v36 = v35 >> 1;
  v25 = __OFSUB__(v36, v11);
  v37 = v36 - v11;
  if (v25)
  {
LABEL_70:
    __break(1u);
    return result;
  }

  *(v44 + 2) = v37;
  return result;
}

uint64_t sub_272429094(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_2724349B0();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

void sub_272429130(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v5 = *&v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (!a1)
  {
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_24:
    v24 = a1;
    v25 = v2;
    osloga = sub_272433BA0();
    v26 = sub_272434B60();

    if (os_log_type_enabled(osloga, v26))
    {
      v27 = swift_slowAlloc();
      v28 = v2;
      v29 = a1;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55[0] = v31;
      *v27 = 136315394;
      v56 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
      v32 = sub_272434BD0();
      v34 = sub_2724285FC(v32, v33, v55);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2112;
      v35 = *&v28[v4];
      *(v27 + 14) = v35;
      *v30 = v35;
      v36 = v35;
      _os_log_impl(&dword_272406000, osloga, v26, "[Guard] didRecognizeTranscriptionObjects callback received for unexpected connection (%s. Expected: %@", v27, 0x16u);
      sub_27240A158(v30, &qword_280896978);
      MEMORY[0x2743C99D0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x2743C99D0](v31, -1, -1);
      MEMORY[0x2743C99D0](v27, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (v5 != a1)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a2)
  {
    goto LABEL_41;
  }

  v52 = v2;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x277D84F70];
  if (!v6)
  {
    oslog = MEMORY[0x277D84F90];
LABEL_30:
    v37 = a1;
    v38 = sub_272433BA0();
    v39 = sub_272434B30();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55[0] = v41;
      *v40 = 136315394;

      v43 = MEMORY[0x2743C9070](v42, MEMORY[0x277D837D0]);
      v45 = v44;

      v46 = sub_2724285FC(v43, v45, v55);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      v56 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
      v47 = sub_272434BD0();
      v49 = sub_2724285FC(v47, v48, v55);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_272406000, v38, v39, "dictationConnectionDidRecognizeTranscriptionObjects %s connection: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743C99D0](v41, -1, -1);
      MEMORY[0x2743C99D0](v40, -1, -1);
    }

    v50 = *&v52[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_recognizedPhonemesBlock];
    if (v50)
    {

      sub_272428070(v50);
      v50(oslog);
      sub_272427F50(v50);
    }

    sub_272417524();

    return;
  }

  oslog = MEMORY[0x277D84F90];
  v8 = a2 + 32;
  while (1)
  {
    sub_2724297A8(v8, v55);
    sub_27242AA04(0, &qword_280896980);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = v7;
    v10 = v56;
    v11 = [v56 phonemeSuggestions];
    if (!v11)
    {
      goto LABEL_40;
    }

    v12 = v11;
    v13 = sub_272434A50();

    v14 = *(v13 + 16);
    isa = oslog[2].isa;
    v16 = (isa + v14);
    if (__OFADD__(isa, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = oslog;
    if (!isUniquelyReferenced_nonNull_native || (v19 = oslog[3].isa >> 1, v19 < v16))
    {
      if (isa <= v16)
      {
        v20 = isa + v14;
      }

      else
      {
        v20 = isa;
      }

      v18 = sub_2724150F4(isUniquelyReferenced_nonNull_native, v20, 1, oslog);
      v19 = *(v18 + 3) >> 1;
    }

    oslog = v18;
    if (*(v13 + 16))
    {
      if (v19 - *(v18 + 2) < v14)
      {
        goto LABEL_38;
      }

      swift_arrayInitWithCopy();

      v7 = v9;
      if (v14)
      {
        v21 = oslog[2].isa;
        v22 = __OFADD__(v21, v14);
        v23 = (v21 + v14);
        if (v22)
        {
          goto LABEL_39;
        }

        oslog[2].isa = v23;
      }
    }

    else
    {

      v7 = v9;
      if (v14)
      {
        goto LABEL_37;
      }
    }

LABEL_8:
    v8 += 32;
    if (!--v6)
    {
      goto LABEL_30;
    }
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
}

unint64_t sub_272429678(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2724297A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27242981C@<X0>(_BYTE *a1@<X8>)
{
  sub_272429BD4();
  result = sub_2724340B0();
  *a1 = v3;
  return result;
}

unint64_t sub_2724298C4()
{
  result = qword_2808966E8;
  if (!qword_2808966E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808966D8);
    sub_272429950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808966E8);
  }

  return result;
}

unint64_t sub_272429950()
{
  result = qword_2808966F0;
  if (!qword_2808966F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808966F8);
    sub_27240BFB4(&qword_280896700, &qword_280896708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808966F0);
  }

  return result;
}

unint64_t sub_272429A30()
{
  result = qword_280896770;
  if (!qword_280896770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896768);
    sub_27240BFB4(&qword_280896778, &qword_280896780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896770);
  }

  return result;
}

uint64_t sub_272429B7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_272433FE0();
  *a1 = result;
  return result;
}

unint64_t sub_272429BD4()
{
  result = qword_2808967B8;
  if (!qword_2808967B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808967B8);
  }

  return result;
}

uint64_t sub_272429C28()
{
  v1 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_272433D50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[12];
  v8 = sub_272433BC0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_272429E70(uint64_t a1)
{
  v4 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272429F60;

  return sub_272423B60(a1, v6, v7, v1 + v5);
}

uint64_t sub_272429F60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27242A054()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27242A08C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27242AC24;

  return sub_27242840C(a1, v4);
}

uint64_t sub_27242A144(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272429F60;

  return sub_27242840C(a1, v4);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_27242A258(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27242A2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_272421354(a1, a2, a3, v10, a4);
}

unint64_t sub_27242A398()
{
  result = qword_280896848;
  if (!qword_280896848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896840);
    sub_27242A41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896848);
  }

  return result;
}

unint64_t sub_27242A41C()
{
  result = qword_280896850;
  if (!qword_280896850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896860);
    sub_27242A514();
    swift_getOpaqueTypeConformance2();
    sub_27242AA74(&qword_280896890, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896850);
  }

  return result;
}

unint64_t sub_27242A514()
{
  result = qword_280896868;
  if (!qword_280896868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896860);
    sub_27240BFB4(&qword_280896870, &qword_280896878);
    sub_27240BFB4(&qword_280896880, &qword_280896888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896868);
  }

  return result;
}

unint64_t sub_27242A610()
{
  result = qword_2808968A0;
  if (!qword_2808968A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808968A0);
  }

  return result;
}

uint64_t sub_27242A68C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 2);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_27242A6D0()
{
  v1 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_272433D50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = v1[12];
  v9 = sub_272433BC0();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v2 | 7);
}

void sub_27242A920()
{
  v1 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_272422C80(v0 + v2, v4, v5);
}

unint64_t sub_27242A9B0()
{
  result = qword_280896948;
  if (!qword_280896948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896948);
  }

  return result;
}

uint64_t sub_27242AA04(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_27242AA74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27242AACC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808965B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896640);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808965B0);
  sub_272427A98();
  sub_272418CF8();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896648);
  sub_272427C24();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_27242AC60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27242ACA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27242AD28@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v62 = sub_272433B80();
  v1 = *(v62 - 8);
  v61 = v62 - 8;
  v63 = v1;
  v64 = v1;
  MEMORY[0x28223BE20](v62 - 8);
  v66 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965A0);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v49 - v4;
  v5 = sub_272433B30();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_272434900();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A00);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v74 = &v49 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A08);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v49 - v14;
  sub_2724348F0();
  v15 = *(v7 + 16);
  v15(v10, v12, v6);
  v60 = v7 + 16;
  v59 = v15;
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v57 = v17;
  v58 = ObjCClassFromMetadata;
  v18 = [v17 bundleForClass_];
  sub_272433B20();
  v55 = sub_272434950();
  v54 = v19;
  v50 = *(v7 + 8);
  v50(v12, v6);
  v56 = v7 + 8;
  sub_2724348F0();
  v53 = v6;
  v15(v10, v12, v6);
  v20 = [v17 bundleForClass_];
  sub_272433B20();
  v21 = v10;
  v52 = sub_272434950();
  v51 = v22;
  v23 = v50;
  v50(v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965C0);
  v24 = v64;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_272436A70;
  sub_272433B50();
  sub_272433B70();
  sub_272433B60();
  v78[0] = v25;
  sub_27242EEA4(&qword_2808965C8, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965D0);
  sub_27240BFB4(&qword_2808965D8, &qword_2808965D0);
  v26 = v66;
  v27 = v62;
  sub_272434C50();
  sub_272434820();
  (*(v24 + 8))(v26, v27);
  v28 = v73;
  v77 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A10);
  sub_27240BFB4(&qword_280896A18, &qword_280896A10);
  sub_272433B40();
  sub_2724348F0();
  v29 = v53;
  v59(v21, v12, v53);
  v30 = [v57 bundleForClass_];
  sub_272433B20();
  v31 = sub_272434950();
  v33 = v32;
  v23(v12, v29);
  v80 = v31;
  v81 = v33;
  v79 = *(v28 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600);
  sub_272434750();
  v76 = v28;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8);
  v35 = sub_27240BFB4(&qword_280896A20, &qword_280896A00);
  v47 = sub_27240A1B8();
  v48 = sub_27240BFB4(&qword_280896620, &qword_2808960B8);
  v36 = v67;
  v37 = v68;
  v38 = v74;
  sub_272434630();

  (*(v69 + 8))(v38, v37);
  v39 = v73;
  v75 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A28);
  v78[0] = v37;
  v78[1] = MEMORY[0x277D837D0];
  v78[2] = v34;
  v78[3] = v35;
  v78[4] = v47;
  v78[5] = v48;
  swift_getOpaqueTypeConformance2();
  sub_27240BFB4(&qword_280896A30, &qword_280896A28);
  v40 = v72;
  v41 = v70;
  sub_272434650();
  (*(v71 + 8))(v36, v41);
  v42 = swift_allocObject();
  v43 = *(v39 + 48);
  *(v42 + 48) = *(v39 + 32);
  *(v42 + 64) = v43;
  *(v42 + 80) = *(v39 + 64);
  v44 = *(v39 + 16);
  *(v42 + 16) = *v39;
  *(v42 + 32) = v44;
  v45 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A38) + 36));
  *v45 = sub_27242F15C;
  v45[1] = v42;
  v45[2] = 0;
  v45[3] = 0;
  return sub_27242E640(v39, v78);
}

uint64_t sub_27242B814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A78);
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v141 = (&v131 - v3);
  v138 = sub_2724341A0();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A80);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v131 - v5;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A88);
  v6 = MEMORY[0x28223BE20](v136);
  v140 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v139 = &v131 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A90);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v171 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v170 = &v131 - v12;
  v168 = sub_272433EE0();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v164 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_272433DB0();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A98);
  MEMORY[0x28223BE20](v15 - 8);
  v148 = &v131 - v16;
  v17 = sub_272433B30();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_272434900();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v131 - v23;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896958);
  v144 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v26 = &v131 - v25;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AA0);
  v146 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v28 = &v131 - v27;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AA8);
  v151 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v142 = &v131 - v29;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AB0);
  v154 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v147 = &v131 - v30;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AB8);
  v157 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v149 = &v131 - v31;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AC0);
  v159 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v153 = &v131 - v32;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AC8) - 8;
  MEMORY[0x28223BE20](v163);
  v155 = &v131 - v33;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AD0);
  v34 = MEMORY[0x28223BE20](v166);
  v169 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v165 = &v131 - v37;
  MEMORY[0x28223BE20](v36);
  v175 = &v131 - v38;
  sub_2724348F0();
  (*(v19 + 16))(v22, v24, v18);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v41 = sub_272434950();
  v43 = v42;
  (*(v19 + 8))(v24, v18);
  v44 = *(a1 + 8);
  type metadata accessor for VCUIPhoneticVocabularyCoordinator();
  sub_27242EEA4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator);
  sub_272433EA0();
  swift_getKeyPath();
  sub_272433EB0();

  *&v178 = v41;
  *(&v178 + 1) = v43;
  sub_27240A1B8();
  sub_272434880();
  v45 = sub_27240BFB4(&qword_280896AD8, &qword_280896958);
  v46 = v143;
  MEMORY[0x2743C8BB0](1, v143, v45);
  v47 = v46;
  (*(v144 + 8))(v26, v46);
  v48 = v148;
  sub_272434370();
  v49 = sub_272434380();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  *&v179 = v47;
  *(&v179 + 1) = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v142;
  v52 = v145;
  sub_2724345F0();
  sub_27242ED84(v48);
  (*(v146 + 8))(v28, v52);
  swift_getKeyPath();
  swift_getKeyPath();
  v148 = v44;
  sub_272433C00();

  v178 = v179;
  v53 = swift_allocObject();
  v54 = *(a1 + 48);
  *(v53 + 48) = *(a1 + 32);
  *(v53 + 64) = v54;
  *(v53 + 80) = *(a1 + 64);
  v55 = *(a1 + 16);
  *(v53 + 16) = *a1;
  *(v53 + 32) = v55;
  sub_27242E640(a1, &v179);
  *&v179 = v52;
  *(&v179 + 1) = OpaqueTypeConformance2;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = MEMORY[0x277D837F8];
  v58 = v147;
  v59 = v150;
  v60 = MEMORY[0x277D837D0];
  sub_272434660();

  (*(v151 + 8))(v51, v59);
  v61 = v160;
  sub_272433DA0();
  *&v179 = v59;
  *(&v179 + 1) = v60;
  v180 = v56;
  v181 = v57;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v149;
  v64 = v152;
  sub_272434530();
  (*(v161 + 8))(v61, v162);
  (*(v154 + 8))(v58, v64);
  v65 = swift_allocObject();
  v66 = *(a1 + 48);
  *(v65 + 48) = *(a1 + 32);
  *(v65 + 64) = v66;
  *(v65 + 80) = *(a1 + 64);
  v67 = *(a1 + 16);
  *(v65 + 16) = *a1;
  *(v65 + 32) = v67;
  sub_27242E640(a1, &v179);
  v68 = v164;
  sub_272433ED0();
  *&v179 = v64;
  *(&v179 + 1) = v62;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v153;
  v71 = v156;
  sub_272434670();

  (*(v167 + 8))(v68, v168);
  (*(v157 + 8))(v63, v71);
  v179 = *(a1 + 16);
  LOBYTE(v180) = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A40);
  sub_272433D00();
  *&v179 = v71;
  *(&v179 + 1) = v69;
  swift_getOpaqueTypeConformance2();
  v72 = v155;
  v73 = v158;
  sub_272434640();

  (*(v159 + 8))(v70, v73);
  LOBYTE(v73) = sub_2724343F0();
  sub_272433CE0();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AE0) + 36);
  *v82 = v73;
  *(v82 + 8) = v75;
  *(v82 + 16) = v77;
  *(v82 + 24) = v79;
  *(v82 + 32) = v81;
  *(v82 + 40) = 0;
  v83 = [objc_opt_self() tertiarySystemFillColor];
  v84 = sub_272434690();
  LOBYTE(v68) = sub_2724343F0();
  v85 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AE8) + 36);
  *v85 = v84;
  *(v85 + 8) = v68;
  v86 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AF0) + 36));
  v87 = *(sub_272433F90() + 20);
  v88 = *MEMORY[0x277CE0118];
  v89 = sub_272434140();
  (*(*(v89 - 8) + 104))(&v86[v87], v88, v89);
  __asm { FMOV            V0.2D, #12.0 }

  *v86 = _Q0;
  v95 = &v86[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AF8) + 36)];
  *v95 = 0;
  v95[1] = 1;
  KeyPath = swift_getKeyPath();
  v97 = v72 + *(v163 + 44);
  *v97 = KeyPath;
  *(v97 + 8) = 1;
  LOBYTE(v86) = sub_272434400();
  v98 = sub_272434430();
  sub_272434430();
  if (sub_272434430() != v86)
  {
    v98 = sub_272434430();
  }

  sub_272433CE0();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = v165;
  sub_27242A258(v72, v165, &qword_280896AC8);
  v108 = v107 + *(v166 + 36);
  *v108 = v98;
  *(v108 + 8) = v100;
  *(v108 + 16) = v102;
  *(v108 + 24) = v104;
  *(v108 + 32) = v106;
  *(v108 + 40) = 0;
  sub_27242A258(v107, v175, &qword_280896AD0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v109 = sub_2724349A0();

  if (v109 < 51)
  {
    v124 = v170;
    (*(v172 + 56))(v170, 1, 1, v173);
  }

  else
  {
    sub_272434850();
    sub_272433DE0();
    v168 = v179;
    v167 = v180;
    v110 = v182;
    v111 = v183;
    LOBYTE(v178) = 1;
    v177 = BYTE8(v179);
    v176 = v181;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966F8);
    sub_272429950();
    v112 = v132;
    sub_272434710();
    v113 = v135;
    sub_272434190();
    sub_27240BFB4(&qword_280896B08, &qword_280896A80);
    sub_27242EEA4(&qword_280896B10, MEMORY[0x277CDDF40]);
    v114 = v139;
    v115 = v134;
    v116 = v138;
    sub_2724344F0();
    (*(v137 + 8))(v113, v116);
    (*(v133 + 8))(v112, v115);
    v117 = sub_272434470();
    v118 = swift_getKeyPath();
    v119 = (v114 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B18) + 36));
    *v119 = v118;
    v119[1] = v117;
    *(v114 + *(v136 + 36)) = sub_272434310();
    LOBYTE(v113) = v178;
    LOBYTE(v115) = v177;
    v120 = v176;
    v121 = v140;
    sub_27240A0F0(v114, v140, &qword_280896A88);
    v122 = v141;
    *v141 = 0;
    *(v122 + 8) = v113;
    *(v122 + 16) = v168;
    *(v122 + 24) = v115;
    *(v122 + 32) = v167;
    *(v122 + 40) = v120;
    *(v122 + 48) = v110;
    *(v122 + 56) = v111;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B20);
    sub_27240A0F0(v121, v122 + *(v123 + 48), &qword_280896A88);
    sub_27240A158(v114, &qword_280896A88);
    sub_27240A158(v121, &qword_280896A88);
    v124 = v170;
    sub_27242A258(v122, v170, &qword_280896A78);
    (*(v172 + 56))(v124, 0, 1, v173);
  }

  v125 = v175;
  v126 = v169;
  sub_27240A0F0(v175, v169, &qword_280896AD0);
  v127 = v171;
  sub_27240A0F0(v124, v171, &qword_280896A90);
  v128 = v174;
  sub_27240A0F0(v126, v174, &qword_280896AD0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B00);
  sub_27240A0F0(v127, v128 + *(v129 + 48), &qword_280896A90);
  sub_27240A158(v124, &qword_280896A90);
  sub_27240A158(v125, &qword_280896AD0);
  sub_27240A158(v127, &qword_280896A90);
  return sub_27240A158(v126, &qword_280896AD0);
}

unint64_t sub_27242CEF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v0 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v0 = v13 & 0xFFFFFFFFFFFFLL;
  }

  v15 = 0;
  v16 = v0;
  while (1)
  {
    v1 = sub_2724349E0();
    if (!v2)
    {
    }

    result = sub_27242E894(v1, v2);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v4 = result;

    if ((v4 - 14) > 0xFFFFFFFB || (v4 - 8232) < 2 || v4 == 133)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      v5 = sub_272433BF0();
      v7 = v6;

      v8 = sub_2724349E0();
      if (!v9)
      {
LABEL_17:

        *v7 = 0;
        v7[1] = 0xE000000000000000;
        v5(&v13, 0);
      }

      v10 = v8;
      v11 = v9;
      while (1)
      {
        result = sub_27242E894(v10, v11);
        if ((result & 0x100000000) != 0)
        {
          break;
        }

        if ((result - 14) <= 0xFFFFFFFB && (result - 8232) >= 2 && result != 133)
        {
          MEMORY[0x2743C8FD0](v10, v11);
        }

        v10 = sub_2724349E0();
        v11 = v12;
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27242D128(uint64_t a1)
{
  v2 = sub_272433AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v7 = sub_27241532C(v20[0], v20[1]);

  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    sub_272433AB0();
    sub_27240A1B8();
    v8 = sub_272434BF0();
    v10 = v9;
    (*(v3 + 8))(v5, v2);

    v11 = (v6 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
    *v11 = v8;
    v11[1] = v10;

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = sub_272433BF0();
    v14 = v13;
    v15 = *v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_272415000(0, *(v15 + 2) + 1, 1, v15);
      *v14 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_272415000((v17 > 1), v18 + 1, 1, v15);
      *v14 = v15;
    }

    *(v15 + 2) = v18 + 1;
    v15[v18 + 32] = 1;
    v12(v20, 0);
  }

  else
  {
    *v20 = *(a1 + 40);
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600);
    return sub_272434740();
  }
}

uint64_t sub_27242D410@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v12 = sub_272434950();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v22[1] = v12;
  v22[2] = v14;
  sub_27240A1B8();
  v15 = sub_2724344C0();
  v17 = v16;
  LOBYTE(v9) = v18;
  v20 = v19;
  result = swift_getKeyPath();
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_27242D640@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2724346F0();
  *a1 = result;
  return result;
}

uint64_t sub_27242D680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23[-v3];
  v5 = sub_272433B30();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_272434900();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-v11];
  sub_2724348F0();
  (*(v7 + 16))(v10, v12, v6);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v15 = sub_272434950();
  v17 = v16;
  (*(v7 + 8))(v12, v6);
  v24 = v15;
  v25 = v17;
  sub_272433CC0();
  v18 = sub_272433CD0();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = swift_allocObject();
  v20 = *(a1 + 48);
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(a1 + 64);
  v21 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v21;
  sub_27242E640(a1, v23);
  sub_27240A1B8();
  return sub_272434790();
}

uint64_t sub_27242D978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A48);
  MEMORY[0x28223BE20](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A50);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - v5;
  v7 = sub_2724342C0();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896658);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  sub_2724342A0();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8);
  sub_27240BFB4(&qword_280896620, &qword_2808960B8);
  sub_272433DC0();
  sub_2724342B0();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A58);
  sub_27242E688();
  sub_272433DC0();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_2724341B0();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_27242DCC4(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_27242E640(a1, v6);
  return sub_272434780();
}

uint64_t sub_27242DD7C(uint64_t a1)
{
  v1 = (*(a1 + 8) + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v2 = *v1;

  v2(0, 0, 0);
}

uint64_t sub_27242DDF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v12 = sub_272434950();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v19[1] = v12;
  v19[2] = v14;
  sub_27240A1B8();
  result = sub_2724344C0();
  *a1 = result;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_27242E004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_27242E640(a1, v12);
  sub_272434780();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v7 = sub_27241532C(v12[0], v12[1]);

  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (v7 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A58);
  v11 = (a2 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = sub_27242ECF8;
  v11[2] = v9;
  return result;
}

uint64_t sub_27242E184(uint64_t a1)
{
  v2 = sub_272433AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  sub_272433AB0();
  sub_27240A1B8();
  v7 = sub_272434BF0();
  v9 = v8;
  (*(v3 + 8))(v5, v2);

  v10 = (v6 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
  *v10 = v7;
  v10[1] = v9;

  swift_getKeyPath();
  swift_getKeyPath();
  v11 = sub_272433BF0();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_272415000(0, *(v14 + 2) + 1, 1, v14);
    *v13 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_272415000((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  *(v14 + 2) = v17 + 1;
  v14[v17 + 32] = 1;
  v11(&v19, 0);
}

uint64_t sub_27242E3D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v12 = sub_272434950();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v19[1] = v12;
  v19[2] = v14;
  sub_27240A1B8();
  result = sub_2724344C0();
  *a1 = result;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v18;
  return result;
}

unint64_t sub_27242E688()
{
  result = qword_280896A60;
  if (!qword_280896A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896A58);
    sub_27240BFB4(&qword_280896620, &qword_2808960B8);
    sub_27240BFB4(&qword_280896A68, &qword_280896A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896A60);
  }

  return result;
}

uint64_t sub_27242E77C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272434000();
  *a1 = result;
  return result;
}

uint64_t sub_27242E7D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_272434020();
  *a1 = result;
  return result;
}

uint64_t sub_27242E828@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272434050();
  *a1 = result & 1;
  return result;
}

unint64_t sub_27242E894(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_27242E9E4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_272434C80();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_272434CB0() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_27242E9E4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_27242EA7C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_27242EAF0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_27242EA7C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_27242EC14(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_27242EAF0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_272434CB0();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_27242EC14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_272434A10();
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
    v5 = MEMORY[0x2743C9010](15, a1 >> 16);
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

uint64_t sub_27242EC90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272434050();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27242ED84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{

  sub_27240E700(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_27242EE50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272434000();
  *a1 = result;
  return result;
}

uint64_t sub_27242EEA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27242EEEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_272434020();
  *a1 = result;
  return result;
}

unint64_t sub_27242EF48()
{
  result = qword_280896B28;
  if (!qword_280896B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896A28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896A00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808960B8);
    sub_27240BFB4(&qword_280896A20, &qword_280896A00);
    sub_27240A1B8();
    sub_27240BFB4(&qword_280896620, &qword_2808960B8);
    swift_getOpaqueTypeConformance2();
    sub_27240BFB4(&qword_280896A30, &qword_280896A28);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B28);
  }

  return result;
}

uint64_t sub_27242F168(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27242F1B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_27242F21C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 label];
  v4 = [v3 string];

  sub_272434930();
  sub_272434720();
  sub_27242F358();
  sub_27242F3AC();
  sub_272434290();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

unint64_t sub_27242F358()
{
  result = qword_280896B30;
  if (!qword_280896B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B30);
  }

  return result;
}

unint64_t sub_27242F3AC()
{
  result = qword_280896B38;
  if (!qword_280896B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B38);
  }

  return result;
}

uint64_t sub_27242F414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27242F460(uint64_t result, int a2, int a3)
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

unint64_t sub_27242F4B4()
{
  result = qword_280896B40;
  if (!qword_280896B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896B48);
    sub_27242F358();
    sub_27242F3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B40);
  }

  return result;
}

uint64_t sub_27242F5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27242FA98();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27242F620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27242FA98();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27242F684()
{
  sub_27242FA98();
  sub_272434260();
  __break(1u);
}

id sub_27242F6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = [objc_opt_self() *a5];
  if (v8)
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808967A0);
    sub_272434730();
    v10 = sub_272434910();

    v11 = (v9)[2](v9, v10);

    sub_272434C40();
    swift_unknownObjectRelease();
    _Block_release(v9);
    sub_27242FC24();
    swift_dynamicCast();
    return v20;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v14 = objc_opt_self();
    v15 = [v14 blackColor];
    [v13 setBackgroundColor_];

    v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v19 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808967A0);
    sub_272434730();
    v17 = sub_272434910();

    [v16 setText_];

    v18 = [v14 whiteColor];
    [v16 setTextColor_];

    [v16 setTextAlignment_];
    [v13 addSubview_];

    return v13;
  }
}

uint64_t sub_27242F9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27242FAEC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27242FA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27242FAEC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27242FA70()
{
  sub_27242FAEC();
  sub_272434260();
  __break(1u);
}

unint64_t sub_27242FA98()
{
  result = qword_280896B50;
  if (!qword_280896B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B50);
  }

  return result;
}

unint64_t sub_27242FAEC()
{
  result = qword_280896B58;
  if (!qword_280896B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B58);
  }

  return result;
}

uint64_t sub_27242FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v5 = [objc_opt_self() *a5];
  if (!v5)
  {
    return 0x4034000000000000;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808967A0);
  sub_272434730();
  v7 = sub_2724349A0();

  v8 = v6[2](v6, v7);
  _Block_release(v6);
  return *&v8;
}

unint64_t sub_27242FC24()
{
  result = qword_280896B60;
  if (!qword_280896B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280896B60);
  }

  return result;
}

uint64_t sub_27242FC9C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a1 = v3;
  return result;
}

uint64_t sub_27242FD1C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_27242FD90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_27242FE04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

double sub_27242FE78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_27242FEF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_27242FF64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_27242FFD8(uint64_t a1)
{
  if (a1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    v1 = v7;
    v2 = v8;
    v3 = 3;
    v4 = 0;
LABEL_5:
    v5 = sub_27240EE70(v3, 1, v4, v1, v2);

    return v5;
  }

  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    v1 = v7;
    v2 = v8;
    v3 = 2;
    v4 = 1;
    goto LABEL_5;
  }

  result = sub_272434CC0();
  __break(1u);
  return result;
}

uint64_t VCUIBadgedTextOverlayModel.deinit()
{
  v1 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__text;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__type;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B78);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__focusRect;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B88);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__startIndex;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B98);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__popoverShowing;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963D8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t VCUIBadgedTextOverlayModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__text;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__type;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B78);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__focusRect;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B88);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__startIndex;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B98);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__popoverShowing;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963D8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v11, v12);
}

uint64_t sub_272430484@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VCUIBadgedTextOverlayModel();
  result = sub_272433BD0();
  *a1 = result;
  return result;
}

id sub_2724304C4()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for VCUIBadgedTextOverlayController_Swift();
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_hostingController];
  [v0 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  [v6 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896BB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_272437810;
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  v10 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  v12 = [result leadingAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  *(v8 + 32) = v13;
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = result;
  v15 = [result trailingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = result;
  v17 = [result trailingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v8 + 40) = v18;
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = result;
  v20 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = result;
  v22 = [result topAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:0.0];
  *(v8 + 48) = v23;
  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = result;
  v25 = [result bottomAnchor];

  result = [v0 view];
  if (result)
  {
    v26 = result;
    v27 = objc_opt_self();
    v28 = [v26 bottomAnchor];

    v29 = [v25 constraintEqualToAnchor_];
    *(v8 + 56) = v29;
    sub_272430964();
    v30 = sub_272434A40();

    [v27 activateConstraints_];

    return [v1 didMoveToParentViewController_];
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_272430964()
{
  result = qword_280896BB8;
  if (!qword_280896BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280896BB8);
  }

  return result;
}

uint64_t sub_272430AE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text);

  return v1;
}

uint64_t sub_272430B8C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text);
  *v3 = a1;
  v3[1] = a2;

  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C10();
}

uint64_t (*sub_272430C54(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text);
  a1[1] = v3;

  return sub_272430CB0;
}

uint64_t sub_272430CB0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_272430B8C(*a1, v2);
  }

  sub_272430B8C(v3, v2);
}

uint64_t sub_272430D98(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type) = a1;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C10();
}

void (*sub_272430E4C(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type;
  v3[8] = v1;
  v3[9] = v4;
  v3[7] = *(v1 + v4);
  return sub_272430EC0;
}

void sub_272430EC0(uint64_t a1)
{
  v1 = *a1;
  *(*(*a1 + 64) + *(*a1 + 72)) = *(*a1 + 56);
  v3 = v1[8];
  v2 = v1[9];
  sub_2724341D0();
  v4 = *(v3 + v2);
  swift_getKeyPath();
  swift_getKeyPath();
  *v1 = v4;

  sub_272433C10();

  free(v1);
}

uint64_t sub_27243102C(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C10();
}

void (*sub_2724310FC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect;
  *(v3 + 88) = v1;
  *(v3 + 96) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  *(v3 + 56) = *v5;
  *(v3 + 72) = v6;
  return sub_272431178;
}

void sub_272431178(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 88) + *(*a1 + 96));
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 80);
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v5;
  v1[3] = v6;

  sub_272433C10();

  free(v1);
}

uint64_t sub_2724312C8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__startIndex) = a1;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C10();
}

void (*sub_272431378(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__startIndex;
  v3[8] = v1;
  v3[9] = v4;
  v3[7] = *(v1 + v4);
  return sub_2724313EC;
}

void sub_2724313EC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  *(*(*a1 + 64) + *(*a1 + 72)) = v2;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();
  *v1 = v2;

  sub_272433C10();

  free(v1);
}

uint64_t sub_27243151C(char a1)
{
  *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__popoverShowing) = a1;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C10();
}

void (*sub_2724315CC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__popoverShowing;
  *(v3 + 56) = v1;
  *(v3 + 64) = v4;
  *(v3 + 49) = *(v1 + v4);
  return sub_272431640;
}

void sub_272431640(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 49);
  *(*(*a1 + 56) + *(*a1 + 64)) = v2;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();
  *v1 = v2;

  sub_272433C10();

  free(v1);
}

uint64_t sub_272431744()
{
  v1 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2724317DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2724318D4()
{
  v1 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27243196C(char a1)
{
  v3 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272431A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 1)
  {
    v8 = 3;
    v9 = a4;
    v10 = 0;

    return sub_27240EE70(v8, v9, v10, a1, a2);
  }

  if (!a3)
  {
    v8 = 2;
    v9 = a4;
    v10 = 1;

    return sub_27240EE70(v8, v9, v10, a1, a2);
  }

  result = sub_272434CC0();
  __break(1u);
  return result;
}

uint64_t sub_272431BA8()
{
  sub_2724341D0();
  v1 = *(v0 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type);

  v2 = sub_27242FFD8(v1);

  return v2;
}

id VCUIBadgedTextOverlayController_Swift.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_272434910();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VCUIBadgedTextOverlayController_Swift.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_hostingController;
  sub_272432510(v15);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896BF8));
  *&v3[v7] = sub_2724341C0();
  v9 = &v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type] = 1;
  v10 = &v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *&v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__startIndex] = 1;
  v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__popoverShowing] = 0;
  *&v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder] = 10;
  v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay] = 1;
  if (a2)
  {
    v11 = sub_272434910();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for VCUIBadgedTextOverlayController_Swift();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id VCUIBadgedTextOverlayController_Swift.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VCUIBadgedTextOverlayController_Swift.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_hostingController;
  sub_272432510(v10);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896BF8));
  *&v1[v3] = sub_2724341C0();
  v5 = &v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type] = 1;
  v6 = &v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect];
  *v6 = 0u;
  v6[1] = 0u;
  *&v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__startIndex] = 1;
  v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__popoverShowing] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder] = 10;
  v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay] = 1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for VCUIBadgedTextOverlayController_Swift();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id VCUIBadgedTextOverlayController_Swift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCUIBadgedTextOverlayController_Swift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_272432104@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_272432188()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_272432210@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a1 = v3;
  return result;
}

uint64_t sub_272432294()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

double sub_27243230C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_272432390()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_27243240C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a1 = v3;
  return result;
}

uint64_t sub_272432490()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

double sub_272432510@<D0>(_OWORD *a1@<X8>)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963D8);
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B98);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B88);
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B78);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963C8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v39 = type metadata accessor for VCUIBadgedTextOverlayModel();
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__text;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  sub_272433BE0();
  (*(v13 + 32))(v16 + v17, v15, v12);
  v18 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__type;
  *&v42 = 1;
  type metadata accessor for VCUIOverlayTextOverlayType(0);
  sub_272433BE0();
  (*(v9 + 32))(v16 + v18, v11, v8);
  v19 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__focusRect;
  v20 = *(MEMORY[0x277CBF3A0] + 16);
  v42 = *MEMORY[0x277CBF3A0];
  v43 = v20;
  type metadata accessor for CGRect(0);
  sub_272433BE0();
  (*(v5 + 32))(v16 + v19, v7, v32);
  v21 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__startIndex;
  *&v42 = 1;
  v22 = v33;
  sub_272433BE0();
  (*(v34 + 32))(v16 + v21, v22, v35);
  v23 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__popoverShowing;
  LOBYTE(v42) = 1;
  v24 = v36;
  sub_272433BE0();
  (*(v37 + 32))(v16 + v23, v24, v38);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;

  sub_272433C10();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v42 = 1;

  sub_272433C10();
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = 0u;
  v43 = 0u;

  sub_272433C10();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v42 = 1;

  sub_272433C10();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v42) = 1;

  sub_272433C10();
  sub_27240B410();
  v25 = sub_272433E90();
  v27 = v26;
  v41 = 1;
  sub_272434720();
  v28 = v42;
  v29 = *(&v42 + 1);
  result = 300.0;
  v31 = v40;
  *v40 = xmmword_272437820;
  *(v31 + 2) = v25;
  *(v31 + 3) = v27;
  *(v31 + 32) = v28;
  *(v31 + 5) = v29;
  *(v31 + 48) = 0;
  return result;
}

uint64_t sub_272432AE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_272432B04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_272430B8C(v1, v2);
}

__n128 sub_272432B84@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

uint64_t sub_272432C4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_272432CA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_272432CF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_272432D50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t type metadata accessor for VCUIBadgedTextOverlayModel()
{
  result = qword_280896C00;
  if (!qword_280896C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272432DF8()
{
  sub_272415A7C(319, &qword_280896410);
  if (v0 <= 0x3F)
  {
    sub_272432FF4(319, &qword_280896C10, type metadata accessor for VCUIOverlayTextOverlayType);
    if (v1 <= 0x3F)
    {
      sub_272432FF4(319, &qword_280896C18, type metadata accessor for CGRect);
      if (v2 <= 0x3F)
      {
        sub_272415A7C(319, &unk_280896C20);
        if (v3 <= 0x3F)
        {
          sub_272415A7C(319, &qword_280896418);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_272432FF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_272433C20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_280897BE8 == -1)
  {
    if (qword_280897BF0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_280897BF0)
    {
      return _availability_version_check();
    }
  }

  if (qword_280897BE0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_280897BD4 > a3)
      {
        return 1;
      }

      if (dword_280897BD4 >= a3)
      {
        return dword_280897BD8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_280897BF0;
  if (qword_280897BF0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280897BF0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x2743C9480](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_280897BD4, &dword_280897BD8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}