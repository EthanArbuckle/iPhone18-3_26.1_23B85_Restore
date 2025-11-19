uint64_t sub_26F44DDDC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F44DEBC, 0, 0);
}

uint64_t sub_26F44DEBC()
{
  v54 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 848);
  v3 = sub_26F49DC88();
  v4 = sub_26F49FDB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v53 = v6;
    *v5 = 136446210;
    if (v2)
    {
      v7 = 0x63697665642D6E6FLL;
    }

    else
    {
      v7 = 0x6B726F7774656ELL;
    }

    if (v2)
    {
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    v9 = sub_26F3B38D0(v7, v8, &v53);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_26F39E000, v3, v4, "Translate path: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x274391F70](v6, -1, -1);
    MEMORY[0x274391F70](v5, -1, -1);
  }

  v10 = *(v0 + 832);
  v11 = *(v0 + 576);
  v12 = *(v0 + 568);
  v13 = *(v0 + 850);
  if (v2)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v0 + 552);
  v16 = *(v0 + 568);
  v17 = swift_allocBox();
  v19 = v18;
  *(v11 + v12[6]) = 0;
  sub_26F49DC18();
  *(v11 + v12[7]) = v14;
  v20 = v12[5];
  sub_26F49DC08();
  sub_26F49DBD8();
  sub_26F450C0C(v11, v19, type metadata accessor for Signpost);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_task_alloc();
  v23 = v2;
  v24 = v22;
  *(v22 + 16) = v15;
  *(v22 + 24) = v23;
  *(v22 + 25) = v13 & 1;
  *(v22 + 32) = v21;
  *(v22 + 40) = v17;

  v25 = sub_26F448E0C(sub_26F450C74, v24, v10);

  if (v25 >> 62)
  {
    if (sub_26F4A00A8())
    {
      v26 = sub_26F4A00A8();
      goto LABEL_14;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
LABEL_14:
      v27 = *(v0 + 560);
      swift_beginAccess();
      *(v21 + 16) = v26;
      swift_beginAccess();
      sub_26F437E54();
      swift_endAccess();
      sub_26F3B0C24(0, &qword_2806E0AE8, 0x277CE1B40);
      v28 = sub_26F49FAD8();

      [v27 translate:v28 useDedicatedTextMachPort:1];

      goto LABEL_18;
    }
  }

  v29 = *(v0 + 576);
  v30 = *(v0 + 552);

  swift_beginAccess();
  sub_26F44277C(v19, v29, type metadata accessor for Signpost);
  sub_26F437AD0();
  sub_26F442914(v29, type metadata accessor for Signpost);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC48();
LABEL_18:

  v31 = *(v0 + 832);
  v32 = *(v0 + 768);
  v33 = *(v0 + 760);
  v34 = *(v0 + 752);
  v35 = *(v0 + 744);
  v36 = *(v0 + 736);
  v37 = *(v0 + 728);
  v38 = *(v0 + 720);
  v39 = *(v0 + 712);
  v40 = *(v0 + 704);
  v43 = *(v0 + 696);
  v44 = *(v0 + 688);
  v45 = *(v0 + 664);
  v46 = *(v0 + 656);
  v47 = *(v0 + 648);
  v48 = *(v0 + 640);
  v49 = *(v0 + 632);
  v50 = *(v0 + 624);
  v51 = *(v0 + 600);
  v52 = *(v0 + 576);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t static TextTranslationService.detectSourceLocale(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F41027C;

  return sub_26F4501F4(a1);
}

uint64_t sub_26F44E478()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB8, &unk_26F4A8E10);
  *v4 = v0;
  v4[1] = sub_26F44E580;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000018, 0x800000026F4AE660, sub_26F450A64, v2, v5);
}

uint64_t sub_26F44E580()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26F40EF50, 0, 0);
}

uint64_t sub_26F44E698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, NSObject **a7@<X8>)
{
  v85 = a5;
  v86 = a6;
  LODWORD(v81) = a4;
  v87 = a3;
  v94 = a7;
  v95 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v84 = *(v93 - 8);
  v82 = *(v84 + 64);
  MEMORY[0x28223BE20](v93);
  v83 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A20, &qword_26F4A8A50);
  v90 = *(v9 - 8);
  v91 = v9;
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v9);
  v89 = &v76 - v11;
  v12 = type metadata accessor for TextModel();
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x28223BE20](v12);
  v77 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v76 - v15;
  MEMORY[0x28223BE20](v16);
  v78 = &v76 - v17;
  MEMORY[0x28223BE20](v18);
  v88 = &v76 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v76 - v22;
  v103 = v12;
  v24 = *(v12 + 28);
  v96 = a1;
  sub_26F3B8DD4(a1 + v24, v23, &qword_2806DEFD8, &qword_26F4A3670);
  v25 = sub_26F49DAB8();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v23, 1, v25) == 1)
  {
    sub_26F3B6B4C(v23, &qword_2806DEFD8, &qword_26F4A3670);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v101 = sub_26F49D988();
    v102 = v29;
    v99 = 45;
    v100 = 0xE100000000000000;
    v97 = 95;
    v98 = 0xE100000000000000;
    sub_26F3BDC0C();
    v27 = sub_26F49FFF8();
    v28 = v30;

    (*(v26 + 8))(v23, v25);
  }

  v31 = v96;
  v32 = v96 + v103[9];
  v101 = sub_26F49D988();
  v102 = v33;
  v99 = 45;
  v100 = 0xE100000000000000;
  v97 = 95;
  v98 = 0xE100000000000000;
  sub_26F3BDC0C();
  v34 = sub_26F49FFF8();
  v36 = v35;

  v37 = v95;
  if (v28)
  {
    if (v27 == v34 && v28 == v36)
    {

LABEL_10:
      if (qword_280F66CB0 != -1)
      {
        swift_once();
      }

      v39 = sub_26F49DCA8();
      __swift_project_value_buffer(v39, qword_280F67ED0);
      v40 = sub_26F49DC88();
      v41 = sub_26F49FDC8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_26F39E000, v40, v41, "Passthrough text model, no translation needed", v42, 2u);
        MEMORY[0x274391F70](v42, -1, -1);
      }

      v43 = v88;
      sub_26F44277C(v31, v88, type metadata accessor for TextModel);
      v44 = (v31 + v103[6]);
      v46 = *v44;
      v45 = v44[1];
      v47 = (v43 + v103[8]);
      v48 = v47[1];

      *v47 = v46;
      v47[1] = v45;
      sub_26F44277C(v43, v78, type metadata accessor for TextModel);
      v49 = v89;
      sub_26F49FC38();
      (*(v90 + 8))(v49, v91);
      *v94 = 0;
      return sub_26F442914(v43, type metadata accessor for TextModel);
    }

    v38 = sub_26F4A0458();

    if (v38)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  LOBYTE(v101) = v81 & 1;
  v51 = v83;
  v52 = v84;
  v53 = v93;
  (*(v84 + 16))(v83, v37, v93);
  v81 = type metadata accessor for TextModel;
  v54 = v31;
  v55 = v80;
  sub_26F44277C(v54, v80, type metadata accessor for TextModel);
  v56 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v57 = (v82 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (*(v79 + 80) + v57 + 8) & ~*(v79 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = v85;
  (*(v52 + 32))(v59 + v56, v51, v53);
  *(v59 + v57) = v86;
  v60 = v96;
  sub_26F450C0C(v55, v59 + v58, v81);

  v61 = v92;
  v62 = sub_26F44FA40(v60, v87 & 1, &v101, sub_26F450C9C, v59);
  if (v61)
  {

    v63 = v77;
    sub_26F44277C(v60, v77, type metadata accessor for TextModel);
    v64 = v103[11];
    v65 = *(v63 + v64);
    v66 = v61;

    *(v63 + v64) = v61;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v67 = sub_26F49DCA8();
    __swift_project_value_buffer(v67, qword_280F67ED0);
    v68 = v61;
    v69 = sub_26F49DC88();
    v70 = sub_26F49FDD8();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      v73 = sub_26F49D7E8();

      *(v71 + 4) = v73;
      *v72 = v73;
      _os_log_impl(&dword_26F39E000, v69, v70, "Caught error during translation: %@", v71, 0xCu);
      sub_26F3B6B4C(v72, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v72, -1, -1);
      MEMORY[0x274391F70](v71, -1, -1);
    }

    else
    {
    }

    sub_26F44277C(v63, v88, type metadata accessor for TextModel);
    v75 = v89;
    sub_26F49FC38();
    (*(v90 + 8))(v75, v91);
    *v94 = 0;
    return sub_26F442914(v63, type metadata accessor for TextModel);
  }

  else
  {
    v74 = v62;

    *v94 = v74;
  }

  return result;
}

uint64_t sub_26F44F02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v64 = a2;
  v65 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A20, &qword_26F4A8A50);
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v57 - v8;
  v9 = type metadata accessor for Signpost();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TextModel();
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v57 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AF0, &qword_26F4A8E78);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v57 - v26);
  v28 = swift_projectBox();
  sub_26F3B8DD4(a1, v27, &qword_2806E0AF0, &qword_26F4A8E78);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26F450C0C(v27, v23, type metadata accessor for TextModel);
    swift_beginAccess();
    sub_26F44277C(v28, v12, type metadata accessor for Signpost);
    sub_26F437948(0);
    sub_26F442914(v12, type metadata accessor for Signpost);
    v29 = v12;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v40 = sub_26F49DCA8();
    __swift_project_value_buffer(v40, qword_280F67ED0);
    sub_26F44277C(v23, v20, type metadata accessor for TextModel);
    v41 = sub_26F49DC88();
    v42 = sub_26F49FDC8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v12;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66 = v45;
      *v44 = 136446210;
      v46 = sub_26F444794();
      v48 = v47;
      sub_26F442914(v20, type metadata accessor for TextModel);
      v49 = sub_26F3B38D0(v46, v48, &v66);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_26F39E000, v41, v42, "Text translation success: %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x274391F70](v45, -1, -1);
      v50 = v44;
      v29 = v43;
      MEMORY[0x274391F70](v50, -1, -1);
    }

    else
    {

      sub_26F442914(v20, type metadata accessor for TextModel);
    }

    v38 = v23;
    v15 = v60;
    v39 = v60;
    goto LABEL_12;
  }

  v20 = *v27;
  swift_beginAccess();
  sub_26F44277C(v28, v12, type metadata accessor for Signpost);
  sub_26F437948(1);
  sub_26F442914(v12, type metadata accessor for Signpost);
  v29 = v12;
  if (qword_280F66CB0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v30 = sub_26F49DCA8();
    __swift_project_value_buffer(v30, qword_280F67ED0);
    v31 = v20;
    v32 = sub_26F49DC88();
    v33 = sub_26F49FDD8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = sub_26F49D7E8();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&dword_26F39E000, v32, v33, "Text translation failure: %@", v34, 0xCu);
      sub_26F3B6B4C(v35, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v35, -1, -1);
      MEMORY[0x274391F70](v34, -1, -1);
    }

    v23 = v60;
    sub_26F44277C(v59, v60, type metadata accessor for TextModel);
    v37 = *(v58 + 44);

    *&v23[v37] = v20;
    v38 = v23;
    v39 = v15;
LABEL_12:
    sub_26F44277C(v38, v39, type metadata accessor for TextModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
    v51 = v61;
    sub_26F49FC38();
    (*(v62 + 8))(v51, v63);
    sub_26F442914(v23, type metadata accessor for TextModel);
    v52 = v64;
    result = swift_beginAccess();
    v54 = *(v52 + 16);
    v55 = __OFSUB__(v54, 1);
    v56 = v54 - 1;
    if (!v55)
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  *(v52 + 16) = v56;
  if (!v56)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
    sub_26F49FC48();
    swift_beginAccess();
    sub_26F44277C(v28, v29, type metadata accessor for Signpost);
    sub_26F437AD0();
    return sub_26F442914(v29, type metadata accessor for Signpost);
  }

  return result;
}

uint64_t sub_26F44F73C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v20 - v14;
  if (*(a2 + 16))
  {
    v16 = type metadata accessor for TextModel();
    (*(v8 + 16))(v6, a2 + *(v16 + 36) + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)), v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v11, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7, v13);
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_26F3B6B4C(v6, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  static LocaleService.supportedTargetLocaleSync(_:)(v11, v15);
  v17 = *(v8 + 8);
  v18 = v17(v11, v7);
  MEMORY[0x28223BE20](v18);
  v20[-2] = v15;
  v20[0] = sub_26F442E50(sub_26F450A7C, &v20[-4], a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AC0, &unk_26F4A8E40);
  sub_26F49FB88();
  return v17(v15, v7);
}

NSObject *sub_26F44FA40(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v86 = a4;
  v87 = a5;
  v83 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v77 - v9;
  v11 = sub_26F49DAB8();
  v89 = *(v11 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v11);
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TextModel();
  v84 = *(v88 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v88);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - v18;
  v85 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  v82 = *a3;
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v24 = sub_26F49DCA8();
  v25 = __swift_project_value_buffer(v24, qword_280F67ED0);
  sub_26F44277C(a1, v23, type metadata accessor for TextModel);
  sub_26F44277C(a1, v19, type metadata accessor for TextModel);
  v80 = v25;
  v26 = sub_26F49DC88();
  v27 = sub_26F49FDB8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v77 = v10;
    v29 = v28;
    v30 = swift_slowAlloc();
    v78 = v11;
    v31 = v30;
    aBlock[0] = v30;
    *v29 = 134218242;
    v32 = &v23[*(v88 + 24)];
    v33 = *v32;
    v34 = *(v32 + 1);
    v35 = sub_26F49F9B8();
    v79 = v16;
    sub_26F442914(v23, type metadata accessor for TextModel);
    *(v29 + 4) = v35;
    *(v29 + 12) = 2082;
    sub_26F49D968();
    sub_26F450E5C();
    v36 = sub_26F4A0428();
    v38 = v37;
    v16 = v79;
    sub_26F442914(v19, type metadata accessor for TextModel);
    v39 = sub_26F3B38D0(v36, v38, aBlock);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_26F39E000, v26, v27, "Requested translating text of length %ld with ID %{public}s", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v40 = v31;
    v11 = v78;
    MEMORY[0x274391F70](v40, -1, -1);
    v41 = v29;
    v10 = v77;
    MEMORY[0x274391F70](v41, -1, -1);
  }

  else
  {
    sub_26F442914(v23, type metadata accessor for TextModel);

    sub_26F442914(v19, type metadata accessor for TextModel);
  }

  v42 = TextModel.isTranslatable.getter();
  v43 = v89;
  if (v42)
  {
    v44 = v88;
    sub_26F3B8DD4(a1 + *(v88 + 28), v10, &qword_2806DEFD8, &qword_26F4A3670);
    v45 = *(v43 + 48);
    if (v45(v10, 1, v11) == 1)
    {
      v46 = v81;
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v47 = v45(v10, 1, v11);
      v48 = v11;
      if (v47 != 1)
      {
        sub_26F3B6B4C(v10, &qword_2806DEFD8, &qword_26F4A3670);
      }
    }

    else
    {
      v46 = v81;
      (*(v43 + 32))(v81, v10, v11);
      v48 = v11;
    }

    v51 = *(v44 + 36);
    v52 = objc_allocWithZone(MEMORY[0x277CE1AD0]);
    v53 = v46;
    v54 = sub_26F49D9F8();
    v55 = sub_26F49D9F8();
    v56 = [v52 initWithSourceLocale:v54 targetLocale:v55];

    (*(v89 + 8))(v53, v48);
    v57 = v56;
    [v57 setForcedOfflineTranslation_];
    [v57 setSourceOrigin_];
    v58 = sub_26F49DC88();
    v59 = sub_26F49FDB8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = a1;
      v62 = v60;
      *v60 = 134217984;
      if (v82)
      {
        v63 = 5;
      }

      else
      {
        v63 = 1;
      }

      *(v60 + 4) = v63;
      _os_log_impl(&dword_26F39E000, v58, v59, "Requested translating taskHint %ld", v60, 0xCu);
      v64 = v62;
      a1 = v61;
      MEMORY[0x274391F70](v64, -1, -1);
    }

    else
    {

      if (v82)
      {
        v63 = 5;
      }

      else
      {
        v63 = 1;
      }
    }

    [v57 setTaskHint_];

    v65 = (a1 + *(v44 + 24));
    v66 = *v65;
    v67 = v65[1];
    v68 = v57;
    v69 = sub_26F49F898();
    [v68 setText_];

    sub_26F44277C(a1, v16, type metadata accessor for TextModel);
    v70 = (*(v84 + 80) + 24) & ~*(v84 + 80);
    v71 = (v85 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    *(v72 + 16) = v68;
    sub_26F450C0C(v16, v72 + v70, type metadata accessor for TextModel);
    v73 = (v72 + v71);
    v74 = v87;
    *v73 = v86;
    v73[1] = v74;
    aBlock[4] = sub_26F450D90;
    aBlock[5] = v72;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26F449538;
    aBlock[3] = &block_descriptor_24_0;
    v75 = _Block_copy(aBlock);
    v26 = v68;

    [v26 setCompletionHandler:v75];
    _Block_release(v75);
  }

  else
  {
    sub_26F442974();
    v49 = swift_allocError();
    *v50 = 9;
    aBlock[7] = v49;
    swift_willThrow();
  }

  return v26;
}

uint64_t sub_26F4501F4(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB0, &qword_26F4A8DF0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for TextModel();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AC8, &qword_26F4A8E50);
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A08, &unk_26F4A89F0);
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AD0, &qword_26F4A8E58);
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F45043C, 0, 0);
}

uint64_t sub_26F45043C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v17 = v0[16];
  v18 = v0[10];
  v7 = v0[4];
  v8 = v0[2];
  v9 = swift_task_alloc();
  *(v9 + 16) = 1;
  *(v9 + 24) = v8;
  (*(v4 + 104))(v5, *MEMORY[0x277D85778], v6);
  sub_26F49FC78();

  (*(v3 + 16))(v17, v1, v2);
  sub_26F3B18CC(&qword_2806E0AD8, &qword_2806E0AD0, &qword_26F4A8E58);
  sub_26F49FCA8();
  v0[18] = MEMORY[0x277D84F90];
  v10 = sub_26F3B18CC(&qword_2806E0AE0, &qword_2806E0AC8, &qword_26F4A8E50);
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_26F45062C;
  v13 = v0[10];
  v14 = v0[8];
  v15 = v0[3];

  return MEMORY[0x282200308](v15, v14, v10);
}

uint64_t sub_26F45062C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[18];
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[8];

    (*(v6 + 8))(v5, v7);

    v8 = CGPointMake;
  }

  else
  {
    v8 = sub_26F450780;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26F450780()
{
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    v3 = v0[16];
    v2 = v0[17];
    v4 = v0[14];
    v5 = v0[15];
    v6 = v0[13];
    v7 = v0[7];
    v8 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v5 + 8))(v2, v4);
    sub_26F3B6B4C(v1, &qword_2806E0AB0, &qword_26F4A8DF0);

    v9 = v0[1];
    v10 = v0[18];

    return v9(v10);
  }

  else
  {
    v12 = v0[18];
    v14 = v0[6];
    v13 = v0[7];
    sub_26F450C0C(v1, v13, type metadata accessor for TextModel);
    sub_26F44277C(v13, v14, type metadata accessor for TextModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v0[18];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_26F4464E4(0, v16[2] + 1, 1, v0[18]);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_26F4464E4(v17 > 1, v18 + 1, 1, v16);
    }

    v19 = v0[6];
    v20 = v0[5];
    sub_26F442914(v0[7], type metadata accessor for TextModel);
    v16[2] = v18 + 1;
    sub_26F450C0C(v19, v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18, type metadata accessor for TextModel);
    v0[18] = v16;
    v21 = sub_26F3B18CC(&qword_2806E0AE0, &qword_2806E0AC8, &qword_26F4A8E50);
    v22 = *(MEMORY[0x277D856D0] + 4);
    v23 = swift_task_alloc();
    v0[19] = v23;
    *v23 = v0;
    v23[1] = sub_26F45062C;
    v24 = v0[10];
    v25 = v0[8];
    v26 = v0[3];

    return MEMORY[0x282200308](v26, v25, v21);
  }
}

uint64_t sub_26F450A9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + v7);
  v13 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_26F3CEEAC;

  return sub_26F44A310(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_26F450C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F450C9C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for TextModel() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_26F44F02C(a1, v8, v1 + v4, v7, v9);
}

void sub_26F450D90(void *a1, void *a2)
{
  v5 = *(type metadata accessor for TextModel() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_26F448F8C(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t block_copy_helper_22_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26F450E5C()
{
  result = qword_2806DEE50;
  if (!qword_2806DEE50)
  {
    sub_26F49D968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEE50);
  }

  return result;
}

double sub_26F450ECC()
{
  xmmword_2806E0B00 = xmmword_26F4A8E80;
  *algn_2806E0B10 = xmmword_26F4A8E90;
  xmmword_2806E0B20 = xmmword_26F4A8EA0;
  unk_2806E0B30 = xmmword_26F4A8EB0;
  result = 0.0;
  xmmword_2806E0B40 = xmmword_26F4A8EC0;
  return result;
}

uint64_t sub_26F450F0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2806DE7B0 != -1)
  {
    swift_once();
  }

  sub_26F49EF88();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0BC0, &qword_26F4A9228);
  v3 = a1 + *(result + 36);
  *v3 = 0x4044000000000000;
  *(v3 + 8) = 1;
  return result;
}

uint64_t sub_26F450FCC@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B58, &qword_26F4A8FD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = sub_26F49E678();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v21 = v14;

    sub_26F49FDE8();
    v18 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(a1, 0);
    (*(v12 + 8))(v17, v21);
    LOBYTE(a1) = v22;
  }

  v19 = 1;
  if ((a1 & 1) == 0 && (a2 & 0x100) == 0)
  {
    type metadata accessor for TranslationBackdropVibrantBlurLayer();
    sub_26F49E0B8();
    (*(v7 + 32))(a3, v10, v6);
    v19 = 0;
  }

  return (*(v7 + 56))(a3, v19, 1, v6, v15);
}

void sub_26F451274(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer_backdropLayer;
  v5 = *&v1[OBJC_IVAR____TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer_backdropLayer];
  v6 = sub_26F49F898();
  [v5 setName_];

  [*&v2[v4] setScale_];
  v7 = *&v2[v4];
  v8 = sub_26F49F898();
  [v7 setGroupName_];

  if (a1 > 0.0)
  {
    [*&v2[v4] setCornerRadius_];
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  if (qword_2806DE7B0 != -1)
  {
    swift_once();
  }

  v25[0] = xmmword_2806E0B00;
  v25[1] = *algn_2806E0B10;
  v25[2] = xmmword_2806E0B20;
  v25[3] = unk_2806E0B30;
  v25[4] = xmmword_2806E0B40;
  v10 = [objc_opt_self() valueWithCAColorMatrix_];
  [v9 setValue:v10 forKey:*MEMORY[0x277CDA440]];

  v11 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  sub_26F3B0C24(0, &qword_2806DEF68, 0x277CCABB0);
  v12 = sub_26F49FF18();
  [v11 setValue:v12 forKey:*MEMORY[0x277CDA4F0]];

  v13 = sub_26F49FB58();
  [v11 setValue:v13 forKey:*MEMORY[0x277CDA4C8]];

  v14 = *&v2[v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0140, &qword_26F4A6670);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26F4A3B80;
  v16 = sub_26F3B0C24(0, &qword_2806E0B60, 0x277CD9EA0);
  *(v15 + 32) = v9;
  *(v15 + 88) = v16;
  *(v15 + 56) = v16;
  *(v15 + 64) = v11;
  v17 = v14;
  v18 = v9;
  v19 = v11;
  v20 = sub_26F49FAD8();

  [v17 setFilters_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26F4A7E40;
  v22 = *&v2[v4];
  *(v21 + 32) = v22;
  sub_26F3B0C24(0, &qword_2806E0B68, 0x277CD9ED0);
  v23 = v22;
  v24 = sub_26F49FAD8();

  [v2 setSublayers_];
}

uint64_t sub_26F451640@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_26F450FCC(*v1, v2 | *(v1 + 8), a1);
}

uint64_t sub_26F451668(uint64_t a1, int a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B58, &qword_26F4A8FD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0BC8, &qword_26F4A9230);
  v11 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v13 = (&v24 - v12);
  v14 = sub_26F49E678();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
LABEL_3:
      type metadata accessor for TranslationBackdropVibrantBlurLayer();
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      v21 = v25 & 1;
      *(v20 + 24) = v25 & 1;
      *(v20 + 32) = a3;
      sub_26F4525C4(a1, v21);
      sub_26F49E0B8();
      (*(v7 + 16))(v13, v10, v6);
      swift_storeEnumTagMultiPayload();
      sub_26F3B18CC(&qword_2806E0B80, &qword_2806E0B58, &qword_26F4A8FD8);
      sub_26F49E928();
      return (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    v24 = v17;

    sub_26F49FDE8();
    v23 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(a1, 0);
    (*(v15 + 8))(v19, v24);
    if (v27 != 1)
    {
      goto LABEL_3;
    }
  }

  *v13 = sub_26F49F258();
  swift_storeEnumTagMultiPayload();
  sub_26F3B18CC(&qword_2806E0B80, &qword_2806E0B58, &qword_26F4A8FD8);
  return sub_26F49E928();
}

id sub_26F451D1C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_26F451DA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26F451DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranslationOverlayBackground(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslationOverlayBackground(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26F451F04()
{
  result = qword_2806E0B70;
  if (!qword_2806E0B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0B78, qword_26F4A9020);
    sub_26F3B18CC(&qword_2806E0B80, &qword_2806E0B58, &qword_26F4A8FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0B70);
  }

  return result;
}

uint64_t sub_26F451FD0(char a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B88, &qword_26F4A9078);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B90, &qword_26F4A9080);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  if (a1)
  {
    v12 = *(sub_26F49E3A8() + 20);
    v13 = *MEMORY[0x277CE0118];
    v14 = sub_26F49E7C8();
    (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
    *v11 = a2;
    v11[1] = a2;
    *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF0A8, &qword_26F4A7B20) + 36)) = 256;
    sub_26F452354(v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_26F4521F4();
    sub_26F452300();
    sub_26F49E928();
    return sub_26F4523C4(v11);
  }

  else
  {
    *v7 = swift_getKeyPath();
    *(v7 + 8) = 0;
    v7[2] = a2;
    swift_storeEnumTagMultiPayload();
    sub_26F4521F4();
    sub_26F452300();
    return sub_26F49E928();
  }
}

unint64_t sub_26F4521F4()
{
  result = qword_2806E0B98;
  if (!qword_2806E0B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0B90, &qword_26F4A9080);
    sub_26F4522AC();
    sub_26F3B18CC(&qword_2806DF0E0, &qword_2806DF0A8, &qword_26F4A7B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0B98);
  }

  return result;
}

unint64_t sub_26F4522AC()
{
  result = qword_2806E0BA0;
  if (!qword_2806E0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BA0);
  }

  return result;
}

unint64_t sub_26F452300()
{
  result = qword_2806E0BA8;
  if (!qword_2806E0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BA8);
  }

  return result;
}

uint64_t sub_26F452354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B90, &qword_26F4A9080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F4523C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B90, &qword_26F4A9080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F45242C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26F452474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_26F4524D8()
{
  result = qword_2806E0BB0;
  if (!qword_2806E0BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0BB8, &qword_26F4A9180);
    sub_26F4521F4();
    sub_26F452300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BB0);
  }

  return result;
}

uint64_t sub_26F4525C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26F4525D0()
{
  result = qword_2806E0BD0;
  if (!qword_2806E0BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0BD8, &qword_26F4A9238);
    sub_26F452688();
    sub_26F3B18CC(&qword_2806E0BE8, &qword_2806E0BF0, &qword_26F4A9240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BD0);
  }

  return result;
}

unint64_t sub_26F452688()
{
  result = qword_2806E0BE0;
  if (!qword_2806E0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BE0);
  }

  return result;
}

unint64_t sub_26F4526DC()
{
  result = qword_2806E0BF8;
  if (!qword_2806E0BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0C00, &qword_26F4A9248);
    sub_26F3B18CC(&qword_2806E0B80, &qword_2806E0B58, &qword_26F4A8FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BF8);
  }

  return result;
}

void sub_26F4527DC()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_26F49EE58();
    if (v1 <= 0x3F)
    {
      sub_26F452AA8(319, &qword_2806DF870, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26F452A24(319, &qword_2806E0C80, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26F4529C0();
          if (v4 <= 0x3F)
          {
            sub_26F452A24(319, &qword_2806E0C98, type metadata accessor for TranslationOverlay.LockedMetrics, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_26F452AA8(319, &qword_2806DEAC8, MEMORY[0x277D839F8], MEMORY[0x277CDD630]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26F4529C0()
{
  if (!qword_2806E0C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0C90, &qword_26F4AB5F0);
    v0 = sub_26F49DFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2806E0C88);
    }
  }
}

void sub_26F452A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26F452AA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26F452B20()
{
  result = sub_26F49D918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26F452BC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26F452C1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26F452CB4(void (*a1)(void))
{
  a1();
  sub_26F49E688();
  return v2;
}

double sub_26F452CFC()
{
  xmmword_2806E0C08 = xmmword_26F4A9250;
  unk_2806E0C18 = xmmword_26F4A9260;
  xmmword_2806E0C28 = xmmword_26F4A9270;
  dword_2806E0C38 = 1068792545;
  unk_2806E0C44 = 0;
  *algn_2806E0C3C = 0;
  dword_2806E0C4C = 0;
  *&result = 1065353216;
  qword_2806E0C50 = 1065353216;
  return result;
}

uint64_t sub_26F452D4C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E68, &qword_26F4A96A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E70, &qword_26F4A96B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E78, &qword_26F4A96B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - v14;
  if (a2)
  {
    v16 = sub_26F49F238();
    KeyPath = swift_getKeyPath();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E80, &qword_26F4A96C0);
    (*(*(v18 - 8) + 16))(v15, a1, v18);
    v19 = &v15[*(v12 + 36)];
    *v19 = KeyPath;
    v19[1] = v16;
    sub_26F3B8DD4(v15, v11, &qword_2806E0E78, &qword_26F4A96B8);
    swift_storeEnumTagMultiPayload();
    sub_26F4572E8();
    sub_26F4573CC();
    sub_26F49E928();
    return sub_26F3B6B4C(v15, &qword_2806E0E78, &qword_26F4A96B8);
  }

  else
  {
    v21 = sub_26F49F258();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E80, &qword_26F4A96C0);
    (*(*(v22 - 8) + 16))(v7, a1, v22);
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E88, &qword_26F4A96C8) + 36)] = v21;
    v23 = *(v4 + 36);
    if (qword_2806DE7B8 != -1)
    {
      swift_once();
    }

    v24[2] = xmmword_2806E0C28;
    v24[3] = *&dword_2806E0C38;
    v24[4] = unk_2806E0C48;
    v24[0] = xmmword_2806E0C08;
    v24[1] = unk_2806E0C18;
    sub_26F49EF88();
    sub_26F3AA250(v7, v11);
    swift_storeEnumTagMultiPayload();
    sub_26F4572E8();
    sub_26F4573CC();
    sub_26F49E928();
    return sub_26F3B6B4C(v7, &qword_2806E0E68, &qword_26F4A96A8);
  }
}

uint64_t sub_26F4530B8()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for TranslationOverlay(0) + 48);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_26F49FDE8();
    v8 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_26F453210@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CC8, &qword_26F4A93E8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TranslationOverlay(0);
  sub_26F3B8DD4(v1 + *(v12 + 52), v11, &qword_2806E0CC8, &qword_26F4A93E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26F49E2C8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_26F49FDE8();
    v16 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_26F453418@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CD0, &qword_26F4A93F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for TranslationOverlay(0);
  sub_26F3B8DD4(v1 + *(v12 + 56), v11, &qword_2806E0CD0, &qword_26F4A93F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F456C00(v11, a1);
  }

  v14 = *v11;
  sub_26F49FDE8();
  v15 = sub_26F49EC18();
  sub_26F49DBC8();

  sub_26F49E668();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26F4535F0()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for TranslationOverlay(0) + 60);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_26F49FDE8();
    v8 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

double sub_26F453748()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1 <= 0.0)
  {
    v3 = (v2 & 1) == 0;
    v10 = 8;
    if (!v3)
    {
      v10 = 0;
    }

    return *(v0 + v10) / 5.0;
  }

  else
  {
    v3 = (v2 & 1) == 0;
    v4 = 8;
    if (v3)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v0 + v5);
    v7 = v1 / 5.0 + (v6 - v1) / 50.0;
    if (v3)
    {
      v4 = 0;
    }

    v8 = *(v0 + v4);
    if (v6 >= v8)
    {
      v11 = v1 * 0.5;
      result = v1 / 5.0 + (v8 - v1) / 50.0;
      if (v11 > result)
      {
        result = v11;
      }

      if (v7 < result)
      {
        return v7;
      }
    }

    else
    {
      return v1 / 5.0 + (v6 - v1) / 50.0;
    }
  }

  return result;
}

double sub_26F4537EC()
{
  v1 = 8;
  if (*(v0 + 32))
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 32))
  {
    v1 = 0;
  }

  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v5 = *v0;
  }

  else
  {
    v5 = *(v0 + 8);
  }

  if (v4 <= 0.0)
  {
    v6 = v5 / 5.0;
  }

  else
  {
    v6 = v4 / 5.0 + (v5 - v4) / 50.0;
    if (*(v0 + 32))
    {
      v7 = *(v0 + 8);
    }

    else
    {
      v7 = *v0;
    }

    if (v5 >= v7)
    {
      v8 = v4 * 0.5;
      v9 = v4 / 5.0 + (v7 - v4) / 50.0;
      if (v8 > v9)
      {
        v9 = v8;
      }

      if (v6 >= v9)
      {
        v6 = v9;
      }
    }
  }

  v10 = v6 + v6;
  v11 = v10 + v10;
  if (*(v0 + 32) & 1 | (*(v0 + v1) / *(v0 + v2) > 2.0))
  {
    v11 = v10;
  }

  return *v0 - v11;
}

uint64_t sub_26F4538B8()
{
  sub_26F4A0178();
  MEMORY[0x2743907E0](0x3A79616C7265764FLL, 0xEE003D657A697320);
  v5 = *v0;
  type metadata accessor for CGSize(0);
  sub_26F4A0228();
  MEMORY[0x2743907E0](0x6548656E696C202CLL, 0xED00003D74686769);
  v1 = *(v0 + 2);
  v2 = sub_26F49FD18();
  MEMORY[0x2743907E0](v2);

  MEMORY[0x2743907E0](0x72656E726F63202CLL, 0xEF3D737569646152);
  sub_26F453748();
  v3 = sub_26F49FD18();
  MEMORY[0x2743907E0](v3);

  MEMORY[0x2743907E0](0xD000000000000010, 0x800000026F4AE750);
  sub_26F4537EC();
  sub_26F4A0228();
  return 0;
}

uint64_t sub_26F453A44(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  v7 = *(a2 + 24);
  v8 = *(a1 + 24);
  if (sub_26F49ECE8())
  {
    return v5 ^ v6 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F453AB4()
{
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  __swift_allocate_value_buffer(locked, qword_2806EA910);
  v1 = __swift_project_value_buffer(locked, qword_2806EA910);
  if (qword_2806DE7D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(locked, qword_2806EA928);
  return sub_26F4564FC(v2, v1, type metadata accessor for TranslationOverlay.LockedMetrics);
}

uint64_t sub_26F453B58@<X0>(uint64_t a1@<X8>)
{
  if (qword_2806DE7C0 != -1)
  {
    swift_once();
  }

  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  v3 = __swift_project_value_buffer(locked, qword_2806EA910);
  return sub_26F4564FC(v3, a1, type metadata accessor for TranslationOverlay.LockedMetrics);
}

double sub_26F453C18()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  if (*(v0 + 112))
  {
    v4 = *(v0 + 80);
  }

  else
  {
    v4 = *(v0 + 88);
  }

  if (v3 <= 0.0)
  {
    return v4 / 5.0;
  }

  result = v3 / 5.0 + (v4 - v3) / 50.0;
  if (*(v0 + 112))
  {
    v1 = *(v0 + 88);
  }

  if (v4 >= v1)
  {
    v6 = v3 * 0.5;
    v7 = v3 / 5.0 + (v1 - v3) / 50.0;
    if (v6 > v7)
    {
      v7 = v6;
    }

    if (result >= v7)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_26F453C9C()
{
  v0 = sub_26F49D918();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  __swift_allocate_value_buffer(locked, qword_2806EA928);
  v6 = __swift_project_value_buffer(locked, qword_2806EA928);
  sub_26F49ED18();
  v8 = v7;
  sub_26F49ED18();
  v10 = v9;
  sub_26F49ED18();
  v12 = v11;
  sub_26F49D8B8();
  *v6 = 0;
  *(v6 + 8) = 0xE000000000000000;
  *(v6 + 16) = 0x4031000000000000;
  *(v6 + 24) = v8;
  *(v6 + 32) = 1;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 40) = 0;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 80) = 0;
  *(v6 + 104) = v12;
  *(v6 + 112) = 0;
  return (*(v1 + 32))(v6 + *(locked + 40), v4, v0);
}

uint64_t sub_26F453E1C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v140 = a1;
  v142 = sub_26F49EE58();
  v141 = *(v142 - 8);
  v8 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v144 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4B8, &qword_26F4A41C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v156 = &v136 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4C0, &qword_26F4A8460);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v154 = &v136 - v15;
  v159 = sub_26F49EE38();
  v148 = *(v159 - 8);
  v16 = *(v148 + 64);
  MEMORY[0x28223BE20](v159);
  v155 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D28, &qword_26F4A9F30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v153 = &v136 - v20;
  v152 = sub_26F49D918();
  v21 = *(v152 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v152);
  v24 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v136 - v26;
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  v28 = *(*(locked - 8) + 64);
  MEMORY[0x28223BE20](locked);
  v30 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v136 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = (&v136 - v35);
  v38 = v4[2];
  v37 = v4[3];
  v39 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v39 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v145 = v4[3];
  v158 = v38;
  if (!v39)
  {
    v37 = v4[5];
    v158 = v4[4];
  }

  v160 = v37;

  v157 = type metadata accessor for TranslationOverlay(0);
  v40 = v157[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C68, &unk_26F4A92A0);
  v161 = v4;
  sub_26F49F348();
  v41 = v36[1];
  v55 = *v36 == v38;
  v138 = v38;
  if (v55 && v41 == v145)
  {
    sub_26F4563CC(v36);
    v42 = v161;
  }

  else
  {
    v43 = sub_26F4A0458();
    sub_26F4563CC(v36);
    v42 = v161;
    if ((v43 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_26F49F348();
  if (*(v33 + 5) == a2 && *(v33 + 6) == a3)
  {
    v44 = *(v33 + 3);
    v45 = sub_26F49ECE8();
    sub_26F4563CC(v33);
    if (v45)
    {

      return sub_26F49F348();
    }
  }

  else
  {
    sub_26F4563CC(v33);
  }

  sub_26F49D908();
  sub_26F49F348();
  v47 = v152;
  (*(v21 + 16))(v24, &v30[*(locked + 40)], v152);
  sub_26F4563CC(v30);
  sub_26F49D8C8();
  v49 = v48;
  v50 = *(v21 + 8);
  v50(v24, v47);
  v50(v27, v47);
  v51 = *(v42 + v157[17]);
  sub_26F49DF08();
  if (v49 < *&v162)
  {

    sub_26F49F348();
    v52 = *(v30 + 5);
    v53 = *(v30 + 6);
    v54 = *(v30 + 7);
    sub_26F4563CC(v30);
    v55 = v53 == 0.0 || (v52 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    v56 = a3 / v53;
    if (v55)
    {
      v56 = 0.0;
    }

    v57 = v54 * v56;
    v58 = *(v42 + 64);
    v59 = v140;
    result = sub_26F49F348();
    *(v59 + 80) = a2;
    *(v59 + 88) = a3;
    *(v59 + 96) = v57;
    *(v59 + 104) = a4;
    *(v59 + 112) = v58;
    return result;
  }

LABEL_22:
  v60 = *(v42 + 48);
  v61 = *(v42 + 64);
  if (v60)
  {
    if (*(v42 + 64))
    {
      v62 = a2;
    }

    else
    {
      v62 = a3;
    }

    v63 = v62 / v60;
  }

  else
  {
    v63 = 0.0;
  }

  *&v162 = a2;
  *(&v162 + 1) = a3;
  *&v163 = v63;
  *(&v163 + 1) = a4;
  v137 = a4;
  v164 = v61;
  v64 = sub_26F4537EC();
  v66 = v65;
  v152 = v157[11];
  sub_26F454DD8();
  v147 = v67;
  v151 = sub_26F49ECD8();
  v68 = *(v151 - 1);
  v150 = *(v68 + 56);
  v149 = v68 + 56;
  v146 = (v148 + 8);
  v69 = 256.0;
  v70 = 4.0;
  if (v61)
  {
    v139 = (v148 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v71 = floor(v70 + (v69 - v70) * 0.5);
      v72 = v153;
      v150(v153, 1, 1, v151);
      sub_26F49ED38();
      sub_26F3B6B4C(v72, &qword_2806E0D28, &qword_26F4A9F30);

      v73 = sub_26F49EEA8();
      v75 = v74;
      v77 = v76;

      v78 = sub_26F49EE08();
      v79 = *(*(v78 - 8) + 56);
      v157 = v78;
      v79(v154, 1, 1);
      v80 = sub_26F49EEB8();
      v81 = *(*(v80 - 8) + 56);
      v148 = v80;
      v81(v156, 1, 1);
      v82 = v155;
      sub_26F49EE28();
      sub_26F49EE18();
      v83 = v146;
      v85 = v84;
      sub_26F3B8D40(v73, v75, v77 & 1);

      v86 = *v83;
      (*v83)(v82, v159);

      v87 = v64 - v85;
      v88 = vabdd_f64(v69, v71);
      if (vabdd_f64(v71, v70) < 1.0 || v88 < 1.0)
      {
        break;
      }

      if (v87 < 0.0)
      {
        v69 = v71 + -1.0;
        if (v70 > v71 + -1.0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v87 <= 0.0)
        {
          goto LABEL_53;
        }

        v70 = v71 + 1.0;
        if (v71 + 1.0 > v69)
        {
          goto LABEL_53;
        }
      }
    }

    if (v87 < 0.0)
    {
      v71 = v71 + -1.0;
    }
  }

  else
  {
    v139 = (v148 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v71 = floor(v70 + (v69 - v70) * 0.5);
      v90 = v153;
      v150(v153, 1, 1, v151);
      sub_26F49ED38();
      sub_26F3B6B4C(v90, &qword_2806E0D28, &qword_26F4A9F30);

      v91 = sub_26F49EEA8();
      v93 = v92;
      v95 = v94;

      v96 = sub_26F49EE08();
      v97 = *(*(v96 - 8) + 56);
      v157 = v96;
      v97(v154, 1, 1);
      v98 = sub_26F49EEB8();
      v99 = *(*(v98 - 8) + 56);
      v148 = v98;
      v99(v156, 1, 1);
      v100 = v155;
      sub_26F49EE28();
      sub_26F49EE18();
      v101 = v146;
      v103 = v102;
      sub_26F3B8D40(v91, v93, v95 & 1);

      v86 = *v101;
      (*v101)(v100, v159);

      v104 = v66 - v103;
      v105 = vabdd_f64(v69, v71);
      if (vabdd_f64(v71, v70) < 1.0 || v105 < 1.0)
      {
        break;
      }

      if (v104 < 0.0)
      {
        v69 = v71 + -1.0;
        if (v70 > v71 + -1.0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v104 <= 0.0)
        {
          goto LABEL_53;
        }

        v70 = v71 + 1.0;
        if (v71 + 1.0 > v69)
        {
          goto LABEL_53;
        }
      }
    }

    if (v104 < 0.0)
    {
      v71 = v71 + -1.0;
    }
  }

LABEL_53:
  v107 = v137;
  v108 = v161;
  sub_26F454DD8();
  v109 = v153;
  v150(v153, 1, 1, v151);
  v161 = sub_26F49ED38();
  sub_26F3B6B4C(v109, &qword_2806E0D28, &qword_26F4A9F30);
  (*(v141 + 16))(v144, v108 + v152, v142);

  v110 = sub_26F49EEA8();
  v112 = v111;
  v114 = v113;

  sub_26F49EE08();
  v115 = *(v157 - 1);
  v153 = *(v115 + 56);
  v158 = v115 + 56;
  v116 = v154;
  (v153)(v154, 1, 1);
  sub_26F49EEB8();
  v117 = v148;
  v118 = *(v148 - 8);
  v151 = *(v118 + 56);
  v152 = v118 + 56;
  v119 = v156;
  v151(v156, 1, 1, v148);
  v120 = v155;
  sub_26F49EE28();
  sub_26F49EE18();
  v122 = v121;
  sub_26F3B8D40(v110, v112, v114 & 1);

  v86(v120, v159);
  v123 = sub_26F49EEA8();
  v125 = v124;
  LOBYTE(v110) = v126;
  (v153)(v116, 1, 1, v157);
  v151(v119, 1, 1, v117);
  sub_26F49EE28();
  v127 = v144;
  sub_26F49EE18();
  v129 = v128;
  sub_26F3B8D40(v123, v125, v110 & 1);

  v86(v120, v159);

  (*(v141 + 8))(v127, v142);
  v130 = *(locked + 40);
  v131 = v145;

  v132 = v140;
  sub_26F49D908();

  *v132 = v138;
  *(v132 + 8) = v131;
  *(v132 + 16) = v71;
  *(v132 + 24) = v107;
  *(v132 + 32) = v122 <= v129;
  v133 = v162;
  v134 = v163;
  *(v132 + 40) = v162;
  *(v132 + 56) = v134;
  v135 = v164;
  *(v132 + 72) = v164;
  *(v132 + 80) = v133;
  *(v132 + 96) = v134;
  *(v132 + 112) = v135;
  return result;
}

uint64_t sub_26F454DD8()
{
  v0 = sub_26F49E338();
  v39 = *(v0 - 8);
  v40 = v0;
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v0);
  v36 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0DC8, &qword_26F4A94E8);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C90, &qword_26F4AB5F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = sub_26F49E2C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  sub_26F453210(&v35 - v21);
  (*(v16 + 104))(v19, *MEMORY[0x277CDF988], v15);
  sub_26F456BB8(&qword_2806E0DD0, MEMORY[0x277CDFA28]);
  v23 = sub_26F49F858();
  v24 = *(v16 + 8);
  v24(v19, v15);
  v24(v22, v15);
  if ((v23 & 1) == 0)
  {
    return sub_26F49ECF8();
  }

  sub_26F453418(v14);
  v25 = v39;
  v26 = v40;
  (*(v39 + 104))(v11, *MEMORY[0x277CDFB70], v40);
  (*(v25 + 56))(v11, 0, 1, v26);
  v27 = *(v38 + 48);
  sub_26F3B8DD4(v14, v5, &qword_2806E0C90, &qword_26F4AB5F0);
  sub_26F3B8DD4(v11, &v5[v27], &qword_2806E0C90, &qword_26F4AB5F0);
  v28 = *(v25 + 48);
  if (v28(v5, 1, v26) == 1)
  {
    sub_26F3B6B4C(v11, &qword_2806E0C90, &qword_26F4AB5F0);
    sub_26F3B6B4C(v14, &qword_2806E0C90, &qword_26F4AB5F0);
    if (v28(&v5[v27], 1, v26) == 1)
    {
      sub_26F3B6B4C(v5, &qword_2806E0C90, &qword_26F4AB5F0);
      return sub_26F49ECF8();
    }

LABEL_7:
    sub_26F3B6B4C(v5, &qword_2806E0DC8, &qword_26F4A94E8);
    return sub_26F49ED18();
  }

  v29 = v37;
  sub_26F3B8DD4(v5, v37, &qword_2806E0C90, &qword_26F4AB5F0);
  if (v28(&v5[v27], 1, v26) == 1)
  {
    sub_26F3B6B4C(v11, &qword_2806E0C90, &qword_26F4AB5F0);
    sub_26F3B6B4C(v14, &qword_2806E0C90, &qword_26F4AB5F0);
    (*(v25 + 8))(v29, v26);
    goto LABEL_7;
  }

  v31 = v36;
  (*(v25 + 32))(v36, &v5[v27], v26);
  sub_26F456BB8(&qword_2806E0DD8, MEMORY[0x277CDFB80]);
  v32 = v29;
  v33 = sub_26F49F868();
  v34 = *(v25 + 8);
  v34(v31, v26);
  sub_26F3B6B4C(v11, &qword_2806E0C90, &qword_26F4AB5F0);
  sub_26F3B6B4C(v14, &qword_2806E0C90, &qword_26F4AB5F0);
  v34(v32, v26);
  sub_26F3B6B4C(v5, &qword_2806E0C90, &qword_26F4AB5F0);
  if ((v33 & 1) == 0)
  {
    return sub_26F49ED18();
  }

  return sub_26F49ECF8();
}

uint64_t sub_26F455384@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TranslationOverlay(0);
  v5 = v4 - 8;
  v29 = *(v4 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  v8 = *(*(locked - 8) + 64);
  MEMORY[0x28223BE20](locked - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F455650(v1, a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CB0, &qword_26F4A93D0) + 36)) = 0;
  v11 = sub_26F4535F0();
  v12 = *(v5 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C68, &unk_26F4A92A0);
  sub_26F49F348();
  v13 = sub_26F453C18();
  sub_26F4563CC(v10);
  v14 = sub_26F49F5A8();
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CB8, &qword_26F4A93D8) + 36);
  *v17 = v11 & 1;
  *(v17 + 8) = v13;
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  v18 = sub_26F4535F0();
  sub_26F49F348();
  v19 = sub_26F453C18();
  sub_26F4563CC(v10);
  v20 = sub_26F49F5A8();
  v22 = v21;
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CC0, &qword_26F4A93E0) + 36);
  *v23 = v18 & 1;
  *(v23 + 8) = v19;
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  if (qword_2806DE7C8 != -1)
  {
    swift_once();
  }

  sub_26F4564FC(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationOverlay);
  v24 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v25 = swift_allocObject();
  sub_26F456428(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CD8, &qword_26F4A93F8);
  v27 = (a1 + *(result + 36));
  *v27 = sub_26F45648C;
  v27[1] = v25;
  return result;
}

uint64_t sub_26F455650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v123 = sub_26F49E398();
  v122 = *(v123 - 8);
  v3 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_26F49EE08();
  v105 = *(v107 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CE0, &qword_26F4A9400);
  v106 = *(v109 - 8);
  v8 = *(v106 + 64);
  MEMORY[0x28223BE20](v109);
  v104 = &v97 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CE8, &qword_26F4A9408);
  v10 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v12 = &v97 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CF0, &qword_26F4A9410);
  v13 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v111 = &v97 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CF8, &qword_26F4A9418);
  v15 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v110 = &v97 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D00, &qword_26F4A9420);
  v17 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v113 = &v97 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D08, &qword_26F4A9428);
  v19 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v114 = &v97 - v20;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D10, &qword_26F4A9430);
  v21 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v23 = &v97 - v22;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D18, &qword_26F4A9438);
  v119 = *(v120 - 8);
  v24 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v118 = &v97 - v25;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D20, &unk_26F4A9440);
  v26 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v97 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D28, &qword_26F4A9F30);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v97 - v30;
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  v33 = *(*(locked - 8) + 64);
  MEMORY[0x28223BE20](locked - 8);
  v35 = (&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *a1;
  v37 = *(a1 + 8);
  sub_26F454DD8();
  sub_26F453E1C(v35, v36, v37, v38);
  v39 = *(a1 + 56);
  v40 = v35[2] * v39;
  sub_26F454DD8();
  v41 = sub_26F49ECD8();
  v42 = 1;
  (*(*(v41 - 8) + 56))(v31, 1, 1, v41);
  v125 = sub_26F49ED38();
  sub_26F3B6B4C(v31, &qword_2806E0D28, &qword_26F4A9F30);
  v43 = v35[5];
  v100 = v35[6];
  sub_26F4537EC();
  if (v35[4])
  {
    goto LABEL_7;
  }

  if (*(a1 + 64))
  {
    v42 = 0;
LABEL_7:
    v45 = sub_26F49F5A8();
    goto LABEL_8;
  }

  if (!*(a1 + 65))
  {
    goto LABEL_7;
  }

  if (*(a1 + 65) == 1)
  {
    v99 = sub_26F49F5B8();
    v98 = v44;
    v42 = 0;
    goto LABEL_9;
  }

  v42 = 2;
  v45 = sub_26F49F5C8();
LABEL_8:
  v99 = v45;
  v98 = v46;
LABEL_9:
  v48 = *v35;
  v47 = *(v35 + 1);
  v49 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v49 = *v35 & 0xFFFFFFFFFFFFLL;
  }

  v97 = v49;
  if (!v49)
  {
    v48 = *(a1 + 32);
    v47 = *(a1 + 40);
  }

  v50 = sub_26F4530B8();
  v51 = *(a1 + 64);
  KeyPath = swift_getKeyPath();
  v133 = 0;
  *&v129 = v48;
  *(&v129 + 1) = v47;
  LOBYTE(v130) = 0;
  *(&v130 + 1) = MEMORY[0x277D84F90];
  LOBYTE(v131) = v50 & 1;
  BYTE1(v131) = v51;
  BYTE2(v131) = v51 ^ 1;
  *(&v131 + 1) = KeyPath;
  v132 = v125;

  if ((v51 ^ 1))
  {
    sub_26F49EDF8();
  }

  else
  {
    sub_26F49EDE8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D30, &qword_26F4A9480);
  sub_26F456564();
  v53 = v104;
  sub_26F49EF78();
  (*(v105 + 8))(v7, v107);
  v127[0] = v129;
  v127[1] = v130;
  v127[2] = v131;
  v128 = v132;
  sub_26F3B6B4C(v127, &qword_2806E0D30, &qword_26F4A9480);
  v54 = swift_getKeyPath();
  (*(v106 + 32))(v12, v53, v109);
  v55 = &v12[*(v103 + 36)];
  *v55 = v54;
  v55[8] = v42;
  v56 = v111;
  sub_26F3BBAEC(v12, v111, &qword_2806E0CE8, &qword_26F4A9408);
  *(v56 + *(v101 + 36)) = 1.0 / v39;
  if (qword_2806DE7C8 != -1)
  {
    swift_once();
  }

  v57 = v110;
  sub_26F4564FC(v35, &v110[*(v102 + 36)], type metadata accessor for TranslationOverlay.LockedMetrics);
  sub_26F3BBAEC(v56, v57, &qword_2806E0CF0, &qword_26F4A9410);
  v58 = sub_26F49EC88();
  sub_26F49DF78();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v57;
  v68 = v113;
  sub_26F3BBAEC(v67, v113, &qword_2806E0CF8, &qword_26F4A9418);
  v69 = v68 + *(v108 + 36);
  *v69 = v58;
  *(v69 + 8) = v60;
  *(v69 + 16) = v62;
  *(v69 + 24) = v64;
  *(v69 + 32) = v66;
  *(v69 + 40) = 0;
  v70 = sub_26F49EC38();
  sub_26F49DF78();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v68;
  v80 = v114;
  sub_26F3BBAEC(v79, v114, &qword_2806E0D00, &qword_26F4A9420);
  v81 = v80 + *(v112 + 36);
  *v81 = v70;
  *(v81 + 8) = v72;
  *(v81 + 16) = v74;
  *(v81 + 24) = v76;
  *(v81 + 32) = v78;
  *(v81 + 40) = 0;
  sub_26F49E0C8();
  sub_26F3BBAEC(v80, v23, &qword_2806E0D08, &qword_26F4A9428);
  v82 = &v23[*(v117 + 36)];
  v83 = v135;
  *v82 = v134;
  *(v82 + 1) = v83;
  *(v82 + 2) = v136;
  v84 = v121;
  if (v97)
  {
    v126 = MEMORY[0x277D84F90];
    sub_26F456BB8(&qword_2806E0D68, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D70, &unk_26F4A94D0);
    sub_26F3B18CC(&qword_2806E0D78, &qword_2806E0D70, &unk_26F4A94D0);
    v85 = v123;
    sub_26F4A0058();
  }

  else
  {
    sub_26F49E388();
    v85 = v123;
  }

  sub_26F456788();
  v86 = v118;
  sub_26F49F178();
  (*(v122 + 8))(v84, v85);
  sub_26F3B6B4C(v23, &qword_2806E0D10, &qword_26F4A9430);
  v87 = v100 == 0.0 || v43 == 0.0;
  v88 = v35[10] / v43;
  if (v87)
  {
    v89 = 0.0;
  }

  else
  {
    v89 = v35[10] / v43;
  }

  sub_26F49F668();
  v91 = v90;
  v93 = v92;

  v94 = v115;
  (*(v119 + 32))(v115, v86, v120);
  v95 = v94 + *(v116 + 36);
  *v95 = v89;
  *(v95 + 8) = v89;
  *(v95 + 16) = v91;
  *(v95 + 24) = v93;
  sub_26F3BBAEC(v94, v124, &qword_2806E0D20, &unk_26F4A9440);
  return sub_26F4563CC(v35);
}

uint64_t sub_26F4562C0(uint64_t a1)
{
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  v3 = *(*(locked - 8) + 64);
  MEMORY[0x28223BE20](locked - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_26F4564FC(a1, &v10 - v7, type metadata accessor for TranslationOverlay.LockedMetrics);
  LODWORD(a1) = *(type metadata accessor for TranslationOverlay(0) + 64);
  sub_26F4564FC(v8, v5, type metadata accessor for TranslationOverlay.LockedMetrics);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C68, &unk_26F4A92A0);
  sub_26F49F358();
  return sub_26F4563CC(v8);
}

uint64_t sub_26F4563CC(uint64_t a1)
{
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  (*(*(locked - 8) + 8))(a1, locked);
  return a1;
}

uint64_t sub_26F456428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationOverlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F45648C(uint64_t a1)
{
  v2 = *(*(type metadata accessor for TranslationOverlay(0) - 8) + 80);

  return sub_26F4562C0(a1);
}

uint64_t sub_26F4564FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26F456564()
{
  result = qword_2806E0D38;
  if (!qword_2806E0D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D30, &qword_26F4A9480);
    sub_26F45661C();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D38);
  }

  return result;
}

unint64_t sub_26F45661C()
{
  result = qword_2806E0D40;
  if (!qword_2806E0D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D48, &qword_26F4A9488);
    sub_26F4566A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D40);
  }

  return result;
}

unint64_t sub_26F4566A8()
{
  result = qword_2806E0D50;
  if (!qword_2806E0D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D58, &unk_26F4A9490);
    sub_26F456734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D50);
  }

  return result;
}

unint64_t sub_26F456734()
{
  result = qword_2806E0D60;
  if (!qword_2806E0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D60);
  }

  return result;
}

unint64_t sub_26F456788()
{
  result = qword_2806E0D80;
  if (!qword_2806E0D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D10, &qword_26F4A9430);
    sub_26F456814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D80);
  }

  return result;
}

unint64_t sub_26F456814()
{
  result = qword_2806E0D88;
  if (!qword_2806E0D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D08, &qword_26F4A9428);
    sub_26F4568A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D88);
  }

  return result;
}

unint64_t sub_26F4568A0()
{
  result = qword_2806E0D90;
  if (!qword_2806E0D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D00, &qword_26F4A9420);
    sub_26F45692C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D90);
  }

  return result;
}

unint64_t sub_26F45692C()
{
  result = qword_2806E0D98;
  if (!qword_2806E0D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CF8, &qword_26F4A9418);
    sub_26F4569E4();
    sub_26F3B18CC(&qword_2806E0DB8, &qword_2806E0DC0, &qword_26F4A94E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D98);
  }

  return result;
}

unint64_t sub_26F4569E4()
{
  result = qword_2806E0DA0;
  if (!qword_2806E0DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CF0, &qword_26F4A9410);
    sub_26F456A70();
    sub_26F456B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DA0);
  }

  return result;
}

unint64_t sub_26F456A70()
{
  result = qword_2806E0DA8;
  if (!qword_2806E0DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CE8, &qword_26F4A9408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D30, &qword_26F4A9480);
    sub_26F456564();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DA8);
  }

  return result;
}

unint64_t sub_26F456B64()
{
  result = qword_2806E0DB0;
  if (!qword_2806E0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DB0);
  }

  return result;
}

uint64_t sub_26F456BB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F456C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C90, &qword_26F4AB5F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F456C70(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_26F4A0458() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if ((sub_26F49ECE8() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v7 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v10 = *(a2 + 72);
  v11 = *(a2 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 64);
  if ((sub_26F49ECE8() & 1) == 0)
  {
    return 0;
  }

  if ((v10 ^ v12))
  {
    return 0;
  }

  if (*(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  if (*(a1 + 88) != *(a2 + 88))
  {
    return 0;
  }

  if (*(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  v14 = *(a2 + 112);
  v15 = *(a2 + 104);
  v16 = *(a1 + 112);
  v17 = *(a1 + 104);
  if (sub_26F49ECE8() & 1) == 0 || ((v14 ^ v16))
  {
    return 0;
  }

  v18 = *(type metadata accessor for TranslationOverlay.LockedMetrics(0) + 40);

  return MEMORY[0x28211DA98](a1 + v18, a2 + v18);
}

unint64_t sub_26F456DB8()
{
  result = qword_2806E0DE0;
  if (!qword_2806E0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DE0);
  }

  return result;
}

unint64_t sub_26F456E0C()
{
  result = qword_2806E0DE8;
  if (!qword_2806E0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DE8);
  }

  return result;
}

unint64_t sub_26F456EA0()
{
  result = qword_2806E0DF0;
  if (!qword_2806E0DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CD8, &qword_26F4A93F8);
    sub_26F456F58();
    sub_26F3B18CC(&qword_2806E0E58, &qword_2806E0E60, qword_26F4A9598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DF0);
  }

  return result;
}

unint64_t sub_26F456F58()
{
  result = qword_2806E0DF8;
  if (!qword_2806E0DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CC0, &qword_26F4A93E0);
    sub_26F457010();
    sub_26F3B18CC(&qword_2806E0E48, &qword_2806E0E50, &qword_26F4A9590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DF8);
  }

  return result;
}

unint64_t sub_26F457010()
{
  result = qword_2806E0E00;
  if (!qword_2806E0E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CB8, &qword_26F4A93D8);
    sub_26F4570C8();
    sub_26F3B18CC(&qword_2806E0E38, &qword_2806E0E40, &qword_26F4A9588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0E00);
  }

  return result;
}

unint64_t sub_26F4570C8()
{
  result = qword_2806E0E08;
  if (!qword_2806E0E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CB0, &qword_26F4A93D0);
    sub_26F457180();
    sub_26F3B18CC(&qword_2806E0E28, &qword_2806E0E30, &qword_26F4A9580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0E08);
  }

  return result;
}

unint64_t sub_26F457180()
{
  result = qword_2806E0E10;
  if (!qword_2806E0E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0E18, &qword_26F4A9578);
    sub_26F457204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0E10);
  }

  return result;
}

unint64_t sub_26F457204()
{
  result = qword_2806E0E20;
  if (!qword_2806E0E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D20, &unk_26F4A9440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D10, &qword_26F4A9430);
    sub_26F456788();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0E20);
  }

  return result;
}

unint64_t sub_26F4572E8()
{
  result = qword_2806E0E90;
  if (!qword_2806E0E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0E78, &qword_26F4A96B8);
    sub_26F3B18CC(&qword_2806E0E98, &qword_2806E0E80, &qword_26F4A96C0);
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0E90);
  }

  return result;
}

unint64_t sub_26F4573CC()
{
  result = qword_2806E0EA0;
  if (!qword_2806E0EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0E68, &qword_26F4A96A8);
    sub_26F457484();
    sub_26F3B18CC(&qword_2806E0EB0, &qword_2806E0EB8, &qword_26F4A96D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0EA0);
  }

  return result;
}

unint64_t sub_26F457484()
{
  result = qword_2806E0EA8;
  if (!qword_2806E0EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0E88, &qword_26F4A96C8);
    sub_26F3B18CC(&qword_2806E0E98, &qword_2806E0E80, &qword_26F4A96C0);
    sub_26F3B18CC(&qword_2806DEC98, &qword_2806DECA0, &qword_26F4A3E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0EA8);
  }

  return result;
}

unint64_t sub_26F457568()
{
  result = qword_2806E0EC0;
  if (!qword_2806E0EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0EC8, &qword_26F4A9708);
    sub_26F4572E8();
    sub_26F4573CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0EC0);
  }

  return result;
}

uint64_t sub_26F4575FC(char a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0ED8, &qword_26F4A97E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0EE0, &qword_26F4A97E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0EE8, &qword_26F4A97F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v31 - v15);
  if (a1)
  {
    v17 = *(sub_26F49E3A8() + 20);
    v18 = *MEMORY[0x277CE0118];
    v19 = sub_26F49E7C8();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = a2;
    v16[1] = a2;
    v20 = sub_26F49F258();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0F20, &unk_26F4A9808);
    *(v16 + *(v21 + 52)) = v20;
    *(v16 + *(v21 + 56)) = 256;
    sub_26F49F238();
    v22 = sub_26F49F268();

    v23 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0F10, &qword_26F4A9800) + 36);
    *v23 = v22;
    *(v23 + 8) = xmmword_26F4A9710;
    *(v23 + 3) = 0x4014000000000000;
    sub_26F49F238();
    v24 = sub_26F49F268();

    v25 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0F00, &qword_26F4A97F8) + 36);
    *v25 = v24;
    *(v25 + 8) = xmmword_26F4A9720;
    *(v25 + 3) = 0x3FF0000000000000;
    v26 = *(v13 + 36);
    v27 = *MEMORY[0x277CE13F8];
    v28 = sub_26F49F608();
    (*(*(v28 - 8) + 104))(v16 + v26, v27, v28);
    sub_26F4581A8(v16, v12);
    swift_storeEnumTagMultiPayload();
    sub_26F457FD8();
    sub_26F3B18CC(&qword_2806E0F28, &qword_2806E0ED8, &qword_26F4A97E0);
    sub_26F49E928();
    return sub_26F458218(v16);
  }

  else
  {
    type metadata accessor for TranslationOverlayShadowLayer();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = a2;
    sub_26F49E0B8();
    (*(v5 + 16))(v12, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_26F457FD8();
    sub_26F3B18CC(&qword_2806E0F28, &qword_2806E0ED8, &qword_26F4A97E0);
    sub_26F49E928();
    return (*(v5 + 8))(v8, v4);
  }
}

void sub_26F457A5C(double a1)
{
  if (a1 > 0.0)
  {
    [v1 setCornerRadius_];
    v3 = *MEMORY[0x277CDA138];
    [v1 setCornerCurve_];
    v4 = OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer;
    [*&v1[OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer] setCornerRadius_];
    [*&v1[v4] setCornerCurve_];
  }

  [v1 setShadowPathIsBounds_];
  GenericGray = CGColorCreateGenericGray(0.0, 0.1);
  [v1 setShadowColor_];

  [v1 setShadowOffset_];
  [v1 setShadowRadius_];
  LODWORD(v6) = 1.0;
  [v1 setShadowOpacity_];
  v7 = OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer;
  [*&v1[OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer] setShadowPathIsBounds_];
  v8 = *&v1[v7];
  v9 = CGColorCreateGenericGray(0.0, 0.1);
  [v8 setShadowColor_];

  [*&v1[v7] setShadowOffset_];
  [*&v1[v7] setShadowRadius_];
  LODWORD(v10) = 1.0;
  [*&v1[v7] setShadowOpacity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26F4A7E40;
  v12 = *&v1[v7];
  *(v11 + 32) = v12;
  sub_26F458280();
  v13 = v12;
  v14 = sub_26F49FAD8();

  [v1 setSublayers_];
}

unint64_t sub_26F457FD8()
{
  result = qword_2806E0EF0;
  if (!qword_2806E0EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0EE8, &qword_26F4A97F0);
    sub_26F458064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0EF0);
  }

  return result;
}

unint64_t sub_26F458064()
{
  result = qword_2806E0EF8;
  if (!qword_2806E0EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0F00, &qword_26F4A97F8);
    sub_26F4580F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0EF8);
  }

  return result;
}

unint64_t sub_26F4580F0()
{
  result = qword_2806E0F08;
  if (!qword_2806E0F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0F10, &qword_26F4A9800);
    sub_26F3B18CC(&qword_2806E0F18, &qword_2806E0F20, &unk_26F4A9808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0F08);
  }

  return result;
}

uint64_t sub_26F4581A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0EE8, &qword_26F4A97F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F458218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0EE8, &qword_26F4A97F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F458280()
{
  result = qword_2806E0B68;
  if (!qword_2806E0B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806E0B68);
  }

  return result;
}

unint64_t sub_26F4582CC()
{
  result = qword_2806E0F30;
  if (!qword_2806E0F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0F38, &qword_26F4A9818);
    sub_26F457FD8();
    sub_26F3B18CC(&qword_2806E0F28, &qword_2806E0ED8, &qword_26F4A97E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0F30);
  }

  return result;
}

uint64_t TranslationUIErrorCodes.description.getter()
{
  v1 = *v0;
  strcpy(v4, "error code: ");
  v2 = sub_26F4A0428();
  MEMORY[0x2743907E0](v2);

  return v4[0];
}

TranslationUI::TranslationUIErrorCodes_optional __swiftcall TranslationUIErrorCodes.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xC)
  {
    v2 = 12;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26F458434()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1 + 1);
  return sub_26F4A0568();
}

uint64_t sub_26F4584AC()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1 + 1);
  return sub_26F4A0568();
}

uint64_t sub_26F458518()
{
  v1 = *v0;
  strcpy(v4, "error code: ");
  v2 = sub_26F4A0428();
  MEMORY[0x2743907E0](v2);

  return v4[0];
}

TranslationUI::TranslationUIErrorInfoKey_optional __swiftcall TranslationUIErrorInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26F4A02A8();

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

uint64_t sub_26F458638(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "LTSourceLocaleIdentifier";
  }

  else
  {
    v2 = "";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "LTSourceLocaleIdentifier";
  }

  else
  {
    v4 = "";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26F4A0458();
  }

  return v5 & 1;
}

uint64_t sub_26F4586DC()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F458754()
{
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F4587B8()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F45882C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F4A02A8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26F45888C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "LTSourceLocaleIdentifier";
  }

  else
  {
    v2 = "";
  }

  *a1 = 0xD000000000000018;
  a1[1] = v2 | 0x8000000000000000;
}

void sub_26F458904(id a1@<X0>, unint64_t *a2@<X8>)
{
  v175 = a2;
  v3 = sub_26F49DAE8();
  v4 = *(v3 - 8);
  v170 = v3;
  v171 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v169 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0FA8, &qword_26F4A9B40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v172 = &v169 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0FB0, &qword_26F4A9B48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v169 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0FB8, &unk_26F4A9B50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v169 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v169 - v22;
  v174 = sub_26F3BDADC(MEMORY[0x277D84F90]);
  if (qword_2806DE798 != -1)
  {
    swift_once();
  }

  v24 = sub_26F49DCA8();
  v25 = __swift_project_value_buffer(v24, qword_2806EA8D8);
  v26 = a1;
  v176 = v25;
  v27 = sub_26F49DC88();
  v28 = sub_26F49FDF8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = a1;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = sub_26F49D7E8();
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&dword_26F39E000, v27, v28, "Showing TranslationUIError for error: %@", v30, 0xCu);
    sub_26F3B6B4C(v31, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v31, -1, -1);
    v33 = v30;
    a1 = v29;
    MEMORY[0x274391F70](v33, -1, -1);
  }

  v177 = sub_26F49D7E8();
  v34 = [v177 domain];
  v35 = sub_26F49F8C8();
  v37 = v36;

  if (v35 == 0xD000000000000017 && 0x800000026F4AE7E0 == v37 || (sub_26F4A0458() & 1) != 0)
  {

    *&v179[0] = a1;
    v38 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A0, &qword_26F4A9B60);
    if (swift_dynamicCast())
    {

      v39 = v180;
      v40 = BYTE1(v180);
      v41 = *(&v180 + 1);

      goto LABEL_68;
    }

    v42 = v177;
    v43 = v177;
    v44 = sub_26F49DC88();
    v45 = sub_26F49FDD8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v180 = v48;
      *v46 = 136446722;
      v49 = [v43 domain];
      v50 = a1;
      v51 = sub_26F49F8C8();
      v53 = v52;

      v54 = v51;
      a1 = v50;
      v55 = sub_26F3B38D0(v54, v53, &v180);

      *(v46 + 4) = v55;
      *(v46 + 12) = 2048;
      v56 = [v43 code];

      *(v46 + 14) = v56;
      *(v46 + 22) = 2112;
      *(v46 + 24) = v43;
      *v47 = v43;
      v57 = v43;
      v58 = "Trying to show a mismatched error domain domain: %{public}s code: %ld; error: %@";
LABEL_12:
      v59 = v45;
      v60 = v44;
      v61 = v46;
      v62 = 32;
LABEL_13:
      _os_log_impl(&dword_26F39E000, v60, v59, v58, v61, v62);
      sub_26F3B6B4C(v47, &qword_2806DF258, &qword_26F4A6220);
      v63 = v47;
      v42 = v177;
      MEMORY[0x274391F70](v63, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v48);
      v64 = v48;
LABEL_14:
      MEMORY[0x274391F70](v64, -1, -1);
      MEMORY[0x274391F70](v46, -1, -1);
LABEL_15:

LABEL_63:
      v39 = 11;
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  v173 = a1;
  v65 = *MEMORY[0x277CE1C58];
  if (sub_26F49F8C8() == v35 && v66 == v37)
  {

    goto LABEL_20;
  }

  v67 = sub_26F4A0458();

  if ((v67 & 1) == 0)
  {
    v81 = *MEMORY[0x277CCA738];
    if (sub_26F49F8C8() == v35 && v82 == v37)
    {
    }

    else
    {
      v83 = sub_26F4A0458();

      if ((v83 & 1) == 0)
      {
        v99 = *MEMORY[0x277CCA590];
        if (sub_26F49F8C8() == v35 && v100 == v37)
        {

          a1 = v173;
        }

        else
        {
          v120 = sub_26F4A0458();

          a1 = v173;
          if ((v120 & 1) == 0)
          {
            v42 = v177;
            v160 = v177;
            v44 = sub_26F49DC88();
            v161 = sub_26F49FDD8();

            if (!os_log_type_enabled(v44, v161))
            {
              goto LABEL_15;
            }

            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *&v180 = v48;
            *v46 = 136446466;
            v162 = [v160 domain];
            v163 = sub_26F49F8C8();
            v165 = v164;

            v166 = v163;
            a1 = v173;
            v167 = sub_26F3B38D0(v166, v165, &v180);

            *(v46 + 4) = v167;
            *(v46 + 12) = 2112;
            *(v46 + 14) = v160;
            *v47 = v160;
            v168 = v160;
            v58 = "Trying to show an unhandled error domain %{public}s; error: %@";
            v59 = v161;
            v60 = v44;
            v61 = v46;
            v62 = 22;
            goto LABEL_13;
          }
        }

        v42 = v177;
        if ([v177 code] != 561017449)
        {
          v43 = v42;
          v44 = sub_26F49DC88();
          v45 = sub_26F49FDD8();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *&v180 = v48;
            *v46 = 136446722;
            v121 = [v43 domain];
            v122 = sub_26F49F8C8();
            v124 = v123;

            v125 = v122;
            a1 = v173;
            v126 = sub_26F3B38D0(v125, v124, &v180);

            *(v46 + 4) = v126;
            *(v46 + 12) = 2048;
            v127 = [v43 code];

            *(v46 + 14) = v127;
            *(v46 + 22) = 2112;
            *(v46 + 24) = v43;
            *v47 = v43;
            v128 = v43;
            v58 = "Trying to show an unhandled OS Status error: %{public}s code: %ld; error: %@";
            goto LABEL_12;
          }

LABEL_62:

          goto LABEL_63;
        }

        v39 = 8;
        goto LABEL_64;
      }
    }

    a1 = v173;
    *&v180 = v173;
    v84 = v173;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A0, &qword_26F4A9B60);
    v85 = sub_26F49DB08();
    v86 = swift_dynamicCast();
    v87 = *(*(v85 - 8) + 56);
    v88 = v170;
    if (v86)
    {
      v89 = *(v85 - 8);
      v87(v13, 0, 1, v85);
      sub_26F49DAF8();
      (*(v89 + 8))(v13, v85);
      v91 = v171;
      v90 = v172;
    }

    else
    {
      v87(v13, 1, 1, v85);
      sub_26F3B6B4C(v13, &qword_2806E0FB0, &qword_26F4A9B48);
      v91 = v171;
      (*(v171 + 56))(v23, 1, 1, v88);
      v90 = v172;
    }

    (*(v91 + 104))(v20, *MEMORY[0x277CC9AA8], v88);
    (*(v91 + 56))(v20, 0, 1, v88);
    v92 = *(v7 + 48);
    sub_26F45A8B4(v23, v90);
    sub_26F45A8B4(v20, v90 + v92);
    v93 = *(v91 + 48);
    if (v93(v90, 1, v88) == 1)
    {
      sub_26F3B6B4C(v20, &qword_2806E0FB8, &unk_26F4A9B50);
      v94 = v172;
      sub_26F3B6B4C(v23, &qword_2806E0FB8, &unk_26F4A9B50);
      v95 = v93(v94 + v92, 1, v88);
      v42 = v177;
      if (v95 == 1)
      {
        sub_26F3B6B4C(v94, &qword_2806E0FB8, &unk_26F4A9B50);
        v39 = 4;
        goto LABEL_64;
      }
    }

    else
    {
      sub_26F45A8B4(v90, v17);
      if (v93(v90 + v92, 1, v88) != 1)
      {
        v116 = v171;
        v117 = v169;
        (*(v171 + 32))(v169, v90 + v92, v88);
        sub_26F45A924(&qword_2806E0FC8, MEMORY[0x277CC9AB0]);
        v118 = sub_26F49F868();
        v119 = *(v116 + 8);
        v119(v117, v88);
        sub_26F3B6B4C(v20, &qword_2806E0FB8, &unk_26F4A9B50);
        sub_26F3B6B4C(v23, &qword_2806E0FB8, &unk_26F4A9B50);
        v119(v17, v88);
        sub_26F3B6B4C(v172, &qword_2806E0FB8, &unk_26F4A9B50);
        v42 = v177;
        if (v118)
        {
          v39 = 4;
          goto LABEL_64;
        }

LABEL_42:
        if ([v42 code] == -1009)
        {
          v96 = sub_26F3B21E4();
          if (v96 == 2)
          {
            v97 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
            v98 = [v97 airplaneMode];

            v96 = v98;
          }

          if (v96)
          {
            v39 = 5;
          }

          else
          {
            v39 = 6;
          }
        }

        else
        {
          v101 = v42;
          v102 = sub_26F49DC88();
          v103 = sub_26F49FDD8();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            *&v180 = v106;
            *v104 = 136446722;
            v107 = [v101 domain];
            v108 = sub_26F49F8C8();
            v110 = v109;

            v111 = v108;
            a1 = v173;
            v112 = sub_26F3B38D0(v111, v110, &v180);

            *(v104 + 4) = v112;
            *(v104 + 12) = 2048;
            v113 = [v101 code];

            *(v104 + 14) = v113;
            *(v104 + 22) = 2112;
            *(v104 + 24) = v101;
            *v105 = v101;
            v114 = v101;
            _os_log_impl(&dword_26F39E000, v102, v103, "Trying to show an unhandled network error domain: %{public}s code: %ld; error: %@", v104, 0x20u);
            sub_26F3B6B4C(v105, &qword_2806DF258, &qword_26F4A6220);
            v115 = v105;
            v42 = v177;
            MEMORY[0x274391F70](v115, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v106);
            MEMORY[0x274391F70](v106, -1, -1);
            MEMORY[0x274391F70](v104, -1, -1);
          }

          else
          {
          }

          v39 = 7;
        }

        goto LABEL_64;
      }

      sub_26F3B6B4C(v20, &qword_2806E0FB8, &unk_26F4A9B50);
      v94 = v172;
      sub_26F3B6B4C(v23, &qword_2806E0FB8, &unk_26F4A9B50);
      (*(v171 + 8))(v17, v88);
      v42 = v177;
    }

    sub_26F3B6B4C(v94, &qword_2806E0FA8, &qword_26F4A9B40);
    goto LABEL_42;
  }

LABEL_20:

  v42 = v177;
  v68 = [v177 code];
  v39 = 3;
  if (v68 > 13)
  {
    a1 = v173;
    if (v68 == 14)
    {
      v39 = 9;
      goto LABEL_64;
    }

    if (v68 != 16)
    {
      goto LABEL_26;
    }
  }

  else
  {
    a1 = v173;
    if (v68 != 5)
    {
      if (v68 == 10)
      {
        v39 = 10;
        goto LABEL_64;
      }

LABEL_26:
      v43 = v42;
      v44 = sub_26F49DC88();
      v69 = sub_26F49FDD8();
      if (os_log_type_enabled(v44, v69))
      {
        v46 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&v180 = v71;
        *v46 = 136446722;
        v72 = [v43 domain];
        v73 = sub_26F49F8C8();
        v75 = v74;

        v76 = v73;
        a1 = v173;
        v77 = sub_26F3B38D0(v76, v75, &v180);

        *(v46 + 4) = v77;
        *(v46 + 12) = 2048;
        v78 = [v43 code];

        *(v46 + 14) = v78;
        *(v46 + 22) = 2112;
        *(v46 + 24) = v43;
        *v70 = v43;
        v79 = v43;
        _os_log_impl(&dword_26F39E000, v44, v69, "Got an unhandled error domain to show: %{public}s code: %ld; error: %@", v46, 0x20u);
        sub_26F3B6B4C(v70, &qword_2806DF258, &qword_26F4A6220);
        v80 = v70;
        v42 = v177;
        MEMORY[0x274391F70](v80, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v71);
        v64 = v71;
        goto LABEL_14;
      }

      goto LABEL_62;
    }
  }

LABEL_64:
  v129 = [v42 userInfo];
  v130 = sub_26F49F7F8();

  v131 = *MEMORY[0x277CCA7E8];
  v132 = sub_26F49F8C8();
  v134 = v133;
  v181 = sub_26F45A868();
  *&v180 = v42;
  sub_26F3BE15C(&v180, v179);
  v135 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v178 = v130;
  sub_26F498178(v179, v132, v134, isUniquelyReferenced_nonNull_native);

  v41 = v178;
  v137 = v135;
  v138 = a1;
  v139 = v137;
  v140 = sub_26F49DC88();
  v141 = sub_26F49FDF8();

  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v177 = v41;
    v143 = v142;
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *&v179[0] = v145;
    *v143 = 136447234;
    v146 = [v139 domain];
    v147 = sub_26F49F8C8();
    v173 = a1;
    v148 = v147;
    v150 = v149;

    v151 = sub_26F3B38D0(v148, v150, v179);

    *(v143 + 4) = v151;
    *(v143 + 12) = 2048;
    v152 = [v139 code];

    *(v143 + 14) = v152;
    *(v143 + 22) = 2080;
    strcpy(&v180, "error code: ");
    BYTE13(v180) = 0;
    HIWORD(v180) = -5120;
    v178 = (v39 + 1);
    v153 = sub_26F4A0428();
    MEMORY[0x2743907E0](v153);

    v154 = sub_26F3B38D0(v180, *(&v180 + 1), v179);

    *(v143 + 24) = v154;
    *(v143 + 32) = 2112;
    *(v143 + 34) = v139;
    *v144 = v139;
    *(v143 + 42) = 2112;
    v155 = v139;
    v156 = v173;
    v157 = sub_26F49D7E8();
    *(v143 + 44) = v157;
    v144[1] = v157;
    _os_log_impl(&dword_26F39E000, v140, v141, "Showing error UI for bridged error domain %{public}s code %ld to %s; NSError: %@; input error: %@", v143, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF258, &qword_26F4A6220);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v144, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v145, -1, -1);
    v158 = v143;
    v41 = v177;
    MEMORY[0x274391F70](v158, -1, -1);
  }

  else
  {
  }

  v40 = v39;
LABEL_68:
  v159 = v175;
  *v175 = v39 | (v40 << 8);
  v159[1] = v41;
}

uint64_t sub_26F459CAC()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v21 = 0;
  v22 = 0xE000000000000000;
  MEMORY[0x2743907E0](0xD000000000000017, 0x800000026F4AE7E0);
  MEMORY[0x2743907E0](45, 0xE100000000000000);
  strcpy(&v19, "error code: ");
  BYTE13(v19) = 0;
  HIWORD(v19) = -5120;
  *&v18[0] = v1 + 1;
  v3 = sub_26F4A0428();
  MEMORY[0x2743907E0](v3);

  MEMORY[0x2743907E0](v19, *(&v19 + 1));

  MEMORY[0x2743907E0](8250, 0xE200000000000000);
  v4 = *MEMORY[0x277CCA450];
  v5 = sub_26F49F8C8();
  v7 = MEMORY[0x277D837D0];
  if (*(v2 + 16))
  {
    v8 = sub_26F45FD88(v5, v6);
    v10 = v9;

    if (v10)
    {
      sub_26F3B2DBC(*(v2 + 56) + 32 * v8, v18);
      sub_26F3BE15C(v18, &v19);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v20 = v7;
  *&v19 = 6369134;
  *(&v19 + 1) = 0xE300000000000000;
LABEL_6:
  sub_26F4A0228();
  __swift_destroy_boxed_opaque_existential_0(&v19);
  MEMORY[0x2743907E0](2128928, 0xE300000000000000);
  v11 = *MEMORY[0x277CCA7E8];
  v12 = sub_26F49F8C8();
  if (!*(v2 + 16))
  {

    goto LABEL_10;
  }

  v14 = sub_26F45FD88(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_10:
    v20 = v7;
    *&v19 = 6369134;
    *(&v19 + 1) = 0xE300000000000000;
    goto LABEL_11;
  }

  sub_26F3B2DBC(*(v2 + 56) + 32 * v14, v18);
  sub_26F3BE15C(v18, &v19);
LABEL_11:
  sub_26F4A0228();
  __swift_destroy_boxed_opaque_existential_0(&v19);
  MEMORY[0x2743907E0](41, 0xE100000000000000);
  return v21;
}

uint64_t sub_26F459F0C(uint64_t a1)
{
  v2 = sub_26F45AA2C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26F459F48(uint64_t a1)
{
  v2 = sub_26F45AA2C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t TranslationUIErrorView.body.getter()
{
  v1 = type metadata accessor for TranslationUnavailableView(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0F40, &qword_26F4A9830);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TranslationUnavailableViewPhone(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for TranslationUIErrorView() + 20)) == 1)
  {
    sub_26F45A334(v0, v12, type metadata accessor for TranslationUnavailableModel);
    sub_26F45A334(v12, v8, type metadata accessor for TranslationUnavailableViewPhone);
    swift_storeEnumTagMultiPayload();
    sub_26F45A924(&qword_2806E0F48, type metadata accessor for TranslationUnavailableViewPhone);
    sub_26F45A924(&qword_2806E0F50, type metadata accessor for TranslationUnavailableView);
    sub_26F49E928();
    v13 = type metadata accessor for TranslationUnavailableViewPhone;
    v14 = v12;
  }

  else
  {
    sub_26F45A334(v0, v4, type metadata accessor for TranslationUnavailableModel);
    sub_26F45A334(v4, v8, type metadata accessor for TranslationUnavailableView);
    swift_storeEnumTagMultiPayload();
    sub_26F45A924(&qword_2806E0F48, type metadata accessor for TranslationUnavailableViewPhone);
    sub_26F45A924(&qword_2806E0F50, type metadata accessor for TranslationUnavailableView);
    sub_26F49E928();
    v13 = type metadata accessor for TranslationUnavailableView;
    v14 = v4;
  }

  return sub_26F45A39C(v14, v13);
}

uint64_t type metadata accessor for TranslationUIErrorView()
{
  result = qword_2806E0F88;
  if (!qword_2806E0F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F45A334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F45A39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26F45A400()
{
  result = qword_2806E0F58;
  if (!qword_2806E0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0F58);
  }

  return result;
}

unint64_t sub_26F45A488()
{
  result = qword_2806E0F70;
  if (!qword_2806E0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0F70);
  }

  return result;
}

uint64_t sub_26F45A50C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for TranslationUIErrorCodes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslationUIErrorCodes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26F45A708()
{
  result = type metadata accessor for TranslationUnavailableModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26F45A77C()
{
  result = qword_2806E0F98;
  if (!qword_2806E0F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0FA0, &qword_26F4A9B38);
    sub_26F45A924(&qword_2806E0F48, type metadata accessor for TranslationUnavailableViewPhone);
    sub_26F45A924(&qword_2806E0F50, type metadata accessor for TranslationUnavailableView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0F98);
  }

  return result;
}

unint64_t sub_26F45A868()
{
  result = qword_2806E0FC0;
  if (!qword_2806E0FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806E0FC0);
  }

  return result;
}

uint64_t sub_26F45A8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0FB8, &unk_26F4A9B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F45A924(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26F45A980()
{
  result = qword_2806E0FD0;
  if (!qword_2806E0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0FD0);
  }

  return result;
}

unint64_t sub_26F45A9D8()
{
  result = qword_2806E0FD8;
  if (!qword_2806E0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0FD8);
  }

  return result;
}

unint64_t sub_26F45AA2C()
{
  result = qword_2806E0FE0;
  if (!qword_2806E0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0FE0);
  }

  return result;
}

void sub_26F45AA88(char a1)
{
  v2 = 0xD000000000000042;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27[-v5];
  v7 = sub_26F49D878();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = "ion://com.apple.Settings";
  sub_26F49D868();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26F3B6B4C(v6, &qword_2806DF2A0, &qword_26F4A7190);
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v13 = sub_26F49DCA8();
    __swift_project_value_buffer(v13, qword_280F67ED0);
    v14 = sub_26F49DC88();
    v15 = sub_26F49FDE8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      if (a1)
      {
        if (a1 == 1)
        {
          v12 = "USE_BY_VOICEOVER_TITLE";
        }

        else
        {
          v2 = 0xD000000000000028;
          v12 = "NO_CAMERA_ACCESS_DETAIL";
        }
      }

      v18 = sub_26F3B38D0(v2, v12 | 0x8000000000000000, &v28);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_26F39E000, v14, v15, "Failed to create URL for launching: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x274391F70](v17, -1, -1);
      MEMORY[0x274391F70](v16, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10C0, &qword_26F4AA028);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26F4A3150;
    v20 = *MEMORY[0x277D0AC58];
    *(inited + 32) = sub_26F49F8C8();
    *(inited + 40) = v21;
    *(inited + 48) = 1;
    v22 = sub_26F3BE060(inited);
    swift_setDeallocating();
    sub_26F3B6B4C(inited + 32, &qword_2806E10C8, &unk_26F4AA030);
    v23 = [objc_opt_self() defaultWorkspace];
    if (v23)
    {
      v24 = v23;
      v25 = sub_26F49D828();
      sub_26F45EB40(v22);

      v26 = sub_26F49F7E8();

      [v24 openSensitiveURL:v25 withOptions:v26];

      (*(v8 + 8))(v11, v7);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_26F45AEC0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = type metadata accessor for LocalePair();
  v4 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F49DAB8();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v57 - v10;
  MEMORY[0x28223BE20](v11);
  v65 = &v57 - v12;
  v13 = type metadata accessor for TranslationUnavailableState(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  v20 = *(a1 + 1);
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v21 = sub_26F49DCA8();
  __swift_project_value_buffer(v21, qword_280F67ED0);

  v22 = sub_26F49DC88();
  v23 = sub_26F49FDB8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v66 = v20;
    v58 = v25;
    *v24 = 138412290;
    sub_26F45A980();
    v26 = v17;
    v27 = v14;
    v28 = v13;
    v29 = a2;
    v30 = swift_allocError();
    *v31 = v18;
    *(v31 + 1) = v19;
    *(v31 + 8) = v66;

    v32 = sub_26F49D7E8();
    v33 = v30;
    a2 = v29;
    v13 = v28;
    v14 = v27;
    v17 = v26;

    *(v24 + 4) = v32;
    v34 = v58;
    *v58 = v32;
    _os_log_impl(&dword_26F39E000, v22, v23, "Create unavailable state for error %@", v24, 0xCu);
    sub_26F3B6B4C(v34, &qword_2806DF258, &qword_26F4A6220);
    v35 = v34;
    v20 = v66;
    MEMORY[0x274391F70](v35, -1, -1);
    MEMORY[0x274391F70](v24, -1, -1);
  }

  if (v19 > 3)
  {
    if (((1 << v19) & 0xF00) == 0)
    {
      if (((1 << v19) & 0xD0) != 0)
      {

        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
        (*(*(v36 - 8) + 56))(v17, 3, 4, v36);
        goto LABEL_11;
      }

      if (*(v20 + 16))
      {

        v40 = sub_26F45FD88(0xD000000000000018, 0x800000026F4AC580);
        if (v41)
        {
          sub_26F3B2DBC(*(v20 + 56) + 32 * v40, v68);

          swift_dynamicCast();
        }

        else
        {
        }
      }

      if (*(v20 + 16))
      {

        v42 = sub_26F45FD88(0xD000000000000018, 0x800000026F4AC5A0);
        if (v43)
        {
          sub_26F3B2DBC(*(v20 + 56) + 32 * v42, v68);

          if (swift_dynamicCast())
          {
            v44 = v67;
          }

          else
          {
            v44 = 0;
          }

LABEL_27:
          sub_26F49D978();
          if (!v44)
          {
            _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
            v46 = v45;
            v47 = sub_26F49F898();
            v48 = [v46 stringForKey_];

            if (!v48)
            {

              v55 = v59;
              _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
              sub_26F49D988();
              v50 = v61;
              v56 = v55;
              v49 = v62;
              (*(v61 + 8))(v56, v62);
              goto LABEL_31;
            }

            sub_26F49F8C8();
          }

          v50 = v61;
          v49 = v62;
LABEL_31:
          v51 = v60;
          sub_26F49D978();

          v52 = *(v50 + 32);
          v53 = v63;
          v52(v63, v65, v49);
          v52((v53 + *(v64 + 20)), v51, v49);
          sub_26F45E5A4(v53, v17, type metadata accessor for LocalePair);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
          (*(*(v54 - 8) + 56))(v17, 0, 4, v54);
          goto LABEL_11;
        }
      }

      v44 = 0;
      goto LABEL_27;
    }

LABEL_10:

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
    (*(*(v37 - 8) + 56))(v17, 4, 4, v37);
    goto LABEL_11;
  }

  if ((v19 - 1) < 2)
  {
    goto LABEL_10;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
  if (v19)
  {
    (*(*(v39 - 8) + 56))(v17, 2, 4, v39);
  }

  else
  {
    (*(*(v39 - 8) + 56))(v17, 1, 4, v39);
  }

LABEL_11:
  sub_26F45E5A4(v17, a2, type metadata accessor for TranslationUnavailableState);
  return (*(v14 + 56))(a2, 0, 1, v13);
}

int *sub_26F45B69C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v83 - v9;
  v11 = type metadata accessor for LocalePair();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranslationUnavailableState(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F45E53C(v1, v18, type metadata accessor for TranslationUnavailableState);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
  v20 = (*(*(v19 - 8) + 48))(v18, 4, v19);
  if (v20 <= 1)
  {
    if (!v20)
    {
      sub_26F45E5A4(v18, v14, type metadata accessor for LocalePair);
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v39 = sub_26F49D9F8();
      v40 = sub_26F49D9F8();
      v41 = [v39 lt:3 displayNameForContext:v40 inTargetLocale:?];

      v42 = 0x45474155474E414CLL;
      if (v41)
      {
        v83 = sub_26F49F8C8();
        v84 = v43;
      }

      else
      {
        v83 = 0x45474155474E414CLL;
        v84 = 0xE800000000000000;
      }

      v60 = *(v4 + 8);
      v60(v10, v3);
      v61 = *(v11 + 20);
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v62 = sub_26F49D9F8();
      v63 = sub_26F49D9F8();
      v64 = [v62 lt:3 displayNameForContext:v63 inTargetLocale:?];

      if (v64)
      {
        v42 = sub_26F49F8C8();
        v66 = v65;
      }

      else
      {
        v66 = 0xE800000000000000;
      }

      v60(v7, v3);
      if (qword_2806DE7D8 != -1)
      {
        swift_once();
      }

      sub_26F49D7D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF290, &unk_26F4A3BC0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_26F4A3B80;
      v68 = MEMORY[0x277D837D0];
      *(v67 + 56) = MEMORY[0x277D837D0];
      v69 = sub_26F3CDADC();
      v70 = v84;
      *(v67 + 32) = v83;
      *(v67 + 40) = v70;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v42;
      *(v67 + 80) = v66;
      v84 = sub_26F49F8F8();
      v31 = v71;

      v21 = 0x800000026F4AE9C0;
      v72 = sub_26F49D7D8();
      v23 = v73;
      v74 = sub_26F49F898();
      v75 = SFLocalizableWAPIStringKeyForKey();

      sub_26F49F8C8();
      v38 = v72;
      v30 = v84;
      v35 = sub_26F49D7D8();
      v37 = v76;
      v34 = 0xD000000000000014;

      sub_26F49D958();
      sub_26F45EAD8(v14, type metadata accessor for LocalePair);
      goto LABEL_27;
    }

    if (qword_2806DE7D8 != -1)
    {
      swift_once();
    }

    v54 = sub_26F49D7D8();
    v23 = v55;
    v30 = sub_26F49D7D8();
    v31 = v56;
    v57 = sub_26F49F898();
    v58 = SFLocalizableWAPIStringKeyForKey();

    sub_26F49F8C8();
    v35 = sub_26F49D7D8();
    v37 = v59;
    v38 = v54;

    sub_26F49D958();
    v53 = sub_26F45C29C;
    v21 = 0xEB000000006C6C69;
    v34 = 0x662E6172656D6163;
  }

  else
  {
    if (v20 == 2)
    {
      if (qword_2806DE7D8 != -1)
      {
        swift_once();
      }

      v34 = 0x74616C736E617274;
      v44 = sub_26F49D7D8();
      v23 = v45;
      v30 = sub_26F49D7D8();
      v31 = v46;
      v47 = sub_26F49F898();
      v48 = SFLocalizableWAPIStringKeyForKey();

      sub_26F49F8C8();
      v35 = sub_26F49D7D8();
      v37 = v49;
      v38 = v44;

      sub_26F49D958();
      v50 = sub_26F45C2A4;
    }

    else
    {
      if (v20 == 3)
      {
        v21 = 0x800000026F4AE9C0;
        if (qword_2806DE7D8 != -1)
        {
          swift_once();
        }

        v84 = sub_26F49D7D8();
        v23 = v22;
        v85 = sub_26F49D7D8();
        v86 = v24;
        MEMORY[0x2743907E0](10, 0xE100000000000000);
        v25 = sub_26F49F898();
        v26 = SFLocalizableWAPIStringKeyForKey();

        sub_26F49F8C8();
        v27 = sub_26F49D7D8();
        v29 = v28;

        MEMORY[0x2743907E0](v27, v29);

        v30 = v85;
        v31 = v86;
        v32 = sub_26F49F898();
        v33 = SFLocalizableWAPIStringKeyForKey();

        sub_26F49F8C8();
        v34 = 0xD000000000000014;
        v35 = sub_26F49D7D8();
        v37 = v36;
        v38 = v84;

        sub_26F49D958();
LABEL_27:
        v53 = sub_26F45EB38;
        goto LABEL_28;
      }

      if (qword_2806DE7D8 != -1)
      {
        swift_once();
      }

      v34 = 0x74616C736E617274;
      v37 = 0xE000000000000000;
      v38 = sub_26F49D7D8();
      v23 = v51;
      v30 = sub_26F49D7D8();
      v31 = v52;
      sub_26F49D958();
      v35 = 0;
      v50 = CGPointMake;
    }

    v53 = v50;
    v21 = 0xE900000000000065;
  }

LABEL_28:
  result = type metadata accessor for TranslationUnavailableModel(0);
  v78 = (a1 + result[5]);
  *v78 = v34;
  v78[1] = v21;
  v79 = (a1 + result[6]);
  *v79 = v38;
  v79[1] = v23;
  v80 = (a1 + result[7]);
  *v80 = v30;
  v80[1] = v31;
  v81 = (a1 + result[8]);
  *v81 = v35;
  v81[1] = v37;
  v82 = (a1 + result[9]);
  *v82 = v53;
  v82[1] = 0;
  return result;
}

uint64_t sub_26F45C2B0()
{
  v1 = v0;
  sub_26F4A0178();

  v2 = type metadata accessor for TranslationUnavailableModel(0);
  MEMORY[0x2743907E0](*(v1 + v2[5]), *(v1 + v2[5] + 8));
  MEMORY[0x2743907E0](8285, 0xE200000000000000);
  MEMORY[0x2743907E0](*(v1 + v2[6]), *(v1 + v2[6] + 8));
  MEMORY[0x2743907E0](8250, 0xE200000000000000);
  MEMORY[0x2743907E0](*(v1 + v2[7]), *(v1 + v2[7] + 8));
  MEMORY[0x2743907E0](31520, 0xE200000000000000);
  MEMORY[0x2743907E0](*(v1 + v2[8]), *(v1 + v2[8] + 8));
  MEMORY[0x2743907E0](125, 0xE100000000000000);
  return 91;
}

uint64_t sub_26F45C3A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_26F45C414()
{
  type metadata accessor for TranslationUnavailableResource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2806E0FE8 = result;
  return result;
}

id sub_26F45C47C(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SecureContentUnavailableViewController();
  v3 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  v4 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v5 = v3;
  v6 = [v4 initWithFrame_];
  [v5 setView_];

  result = [v5 view];
  if (result)
  {
    v8 = result;
    [result setTranslatesAutoresizingMaskIntoConstraints_];

    v9 = sub_26F49DD28();
    v12[3] = v9;
    v12[4] = MEMORY[0x277D74D18];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    v11 = *(v9 - 8);
    (*(v11 + 16))(boxed_opaque_existential_1, a1, v9);
    sub_26F49FE08();

    (*(v11 + 8))(a1, v9);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SecureContentUnavailableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureContentUnavailableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26F45C784()
{
  result = sub_26F49D968();
  if (v1 <= 0x3F)
  {
    result = sub_26F45C81C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26F45C81C()
{
  result = qword_280F65640;
  if (!qword_280F65640)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280F65640);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_11Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationUnavailableModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationUnavailableModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26F45C9D8()
{
  result = type metadata accessor for TranslationUnavailableModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26F45CA8C()
{
  v1 = v0;
  v2 = type metadata accessor for TranslationUnavailableViewPhone(0);
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_26F49DD28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  sub_26F49DCF8();
  v12 = type metadata accessor for TranslationUnavailableModel(0);
  v13 = (v0 + v12[5]);
  v14 = *v13;
  v15 = v13[1];
  v16 = sub_26F49F898();
  v17 = [objc_opt_self() _systemImageNamed_];

  sub_26F49DD08();
  v18 = (v1 + v12[6]);
  v19 = *v18;
  v20 = v18[1];

  sub_26F49DCE8();
  v21 = (v1 + v12[7]);
  v22 = *v21;
  v23 = v21[1];

  sub_26F49DCB8();
  v24 = (v1 + v12[8]);
  v25 = *v24;
  v26 = v24[1];
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    goto LABEL_6;
  }

  v38 = v4;

  v28 = sub_26F49DD18();
  sub_26F49FF78();
  v28(v40, 0);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v31 = sub_26F49F898();
  v32 = [objc_opt_self() colorNamed:v31 inBundle:v30 compatibleWithTraitCollection:0];

  if (v32)
  {
    v33 = sub_26F49DD18();
    sub_26F49FF68();
    v33(v40, 0);
    sub_26F45E45C();
    sub_26F45E53C(v1, &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationUnavailableViewPhone);
    v34 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v35 = swift_allocObject();
    sub_26F45E5A4(&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for TranslationUnavailableViewPhone);
    sub_26F49FF58();
    v36 = sub_26F49DCD8();
    sub_26F49DCC8();
    v36(v40, 0);
    v4 = v38;
LABEL_6:
    (*(v5 + 16))(v8, v11, v4);
    v37 = objc_allocWithZone(type metadata accessor for SecureContentUnavailableViewController());
    sub_26F45C47C(v8);
    (*(v5 + 8))(v11, v4);
    return;
  }

  __break(1u);
}

uint64_t sub_26F45CF40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F45CFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F45CF40(&qword_2806E1010, type metadata accessor for TranslationUnavailableViewPhone);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F45D038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F45CF40(&qword_2806E1010, type metadata accessor for TranslationUnavailableViewPhone);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F45D0CC()
{
  sub_26F45CF40(&qword_2806E1010, type metadata accessor for TranslationUnavailableViewPhone);
  sub_26F49EB98();
  __break(1u);
}

uint64_t sub_26F45D124@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v156 = a2;
  v3 = sub_26F49E9B8();
  v145 = *(v3 - 8);
  v146 = v3;
  v4 = *(v145 + 64);
  MEMORY[0x28223BE20](v3);
  v144 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1038, &qword_26F4A9F18);
  v6 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v143 = &v139 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1040, &qword_26F4A9F20);
  v9 = *(v8 - 8);
  v154 = v8;
  v155 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v147 = &v139 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1048, &qword_26F4A9F28);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v174 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v169 = &v139 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D28, &qword_26F4A9F30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v175 = &v139 - v19;
  v161 = sub_26F49ED88();
  v176 = *(v161 - 8);
  v20 = *(v176 + 64);
  MEMORY[0x28223BE20](v161);
  v22 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1050, &qword_26F4A9F38);
  v24 = *(v23 - 8);
  v168 = v23 - 8;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v173 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v177 = &v139 - v28;
  v29 = sub_26F49F2C8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TranslationUnavailableModel(0);
  v35 = *(v34 + 20);
  v36 = v34;
  v149 = v34;
  v150 = a1;
  v37 = a1;
  v38 = (a1 + v35);
  v39 = *v38;
  v40 = v38[1];

  sub_26F49F2D8();
  (*(v30 + 104))(v33, *MEMORY[0x277CE0FE0], v29);
  v172 = sub_26F49F2F8();

  (*(v30 + 8))(v33, v29);
  sub_26F49F5A8();
  sub_26F49E0C8();
  LOBYTE(v190) = 1;
  *&v214[3] = *&v214[27];
  *&v214[11] = *&v214[35];
  *&v214[19] = *&v214[43];
  v171 = sub_26F49F288();
  KeyPath = swift_getKeyPath();
  v41 = (v37 + *(v36 + 24));
  v42 = v41[1];
  *&v190 = *v41;
  *(&v190 + 1) = v42;
  v148 = sub_26F3BDC0C();

  v43 = sub_26F49EED8();
  v166 = v45;
  v167 = v44;
  LOBYTE(v37) = v46;
  v165 = swift_getKeyPath();
  LOBYTE(v30) = v37 & 1;
  LOBYTE(v190) = v37 & 1;
  v47 = *MEMORY[0x277CE0A80];
  v48 = v176;
  v49 = v176 + 104;
  v160 = *(v176 + 104);
  v50 = v161;
  v160(v22, v47, v161);
  v51 = sub_26F49ECD8();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v158 = v52 + 56;
  v159 = v53;
  v54 = v175;
  v53(v175, 1, 1, v51);
  v55 = sub_26F49ED48();
  sub_26F3B6B4C(v54, &qword_2806E0D28, &qword_26F4A9F30);
  v56 = *(v48 + 8);
  v176 = v48 + 8;
  v157 = v56;
  v56(v22, v50);
  v57 = swift_getKeyPath();
  *&v190 = v43;
  *(&v190 + 1) = v167;
  LOBYTE(v191) = v30;
  *(&v191 + 1) = v166;
  LOWORD(v192) = 256;
  *(&v192 + 1) = v165;
  LOBYTE(v193) = 1;
  *(&v193 + 1) = v57;
  v194 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1058, &qword_26F4A9FD0);
  sub_26F45E208();
  v58 = v177;
  sub_26F49F0E8();
  v215[2] = v192;
  v215[3] = v193;
  v216 = v194;
  v215[0] = v190;
  v215[1] = v191;
  sub_26F3B6B4C(v215, &qword_2806E1058, &qword_26F4A9FD0);
  v59 = sub_26F49F278();
  v60 = swift_getKeyPath();
  v61 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1078, &qword_26F4A9FE8) + 36));
  *v61 = v60;
  v61[1] = v59;
  LOBYTE(v59) = sub_26F49EC38();
  sub_26F49DF78();
  v62 = v58 + *(v168 + 44);
  *v62 = v59;
  *(v62 + 8) = v63;
  *(v62 + 16) = v64;
  *(v62 + 24) = v65;
  *(v62 + 32) = v66;
  *(v62 + 40) = 0;
  v68 = v149;
  v67 = v150;
  v69 = (v150 + *(v149 + 28));
  v70 = v69[1];
  *&v190 = *v69;
  *(&v190 + 1) = v70;

  v151 = sub_26F49EED8();
  v168 = v71;
  LOBYTE(v59) = v72;
  v153 = v73;
  v152 = swift_getKeyPath();
  LODWORD(v167) = v59 & 1;
  LOBYTE(v190) = v59 & 1;
  v74 = *MEMORY[0x277CE0A58];
  v75 = v161;
  v141 = v49;
  v160(v22, v74, v161);
  v76 = v175;
  v140 = v51;
  v159(v175, 1, 1, v51);
  v166 = sub_26F49ED48();
  sub_26F3B6B4C(v76, &qword_2806E0D28, &qword_26F4A9F30);
  v77 = v75;
  v157(v22, v75);
  v165 = swift_getKeyPath();
  v164 = sub_26F49F288();
  v163 = swift_getKeyPath();
  v162 = sub_26F49EC38();
  sub_26F49DF78();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  LOBYTE(v190) = 0;
  v86 = (v67 + *(v68 + 32));
  v88 = *v86;
  v87 = v86[1];
  v89 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v89 = v88 & 0xFFFFFFFFFFFFLL;
  }

  if (v89)
  {
    *&v190 = v88;
    *(&v190 + 1) = v87;
    v90 = (v67 + *(v68 + 36));
    v91 = *v90;
    v92 = v90[1];

    v93 = v143;
    sub_26F49F3B8();
    v94 = swift_getKeyPath();
    v95 = v93 + *(v142 + 36);
    *v95 = v94;
    *(v95 + 8) = 1;
    v96 = v144;
    sub_26F49E9A8();
    sub_26F45E378();
    sub_26F45CF40(&qword_2806E1088, MEMORY[0x277CDE0B8]);
    v97 = v147;
    v98 = v146;
    sub_26F49EF48();
    (*(v145 + 8))(v96, v98);
    sub_26F3B6B4C(v93, &qword_2806E1038, &qword_26F4A9F18);
    v99 = v77;
    v160(v22, v74, v77);
    v100 = v175;
    v159(v175, 1, 1, v140);
    v101 = sub_26F49ED48();
    sub_26F3B6B4C(v100, &qword_2806E0D28, &qword_26F4A9F30);
    v157(v22, v99);
    v102 = swift_getKeyPath();
    v103 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1090, &qword_26F4A9FF8) + 36));
    *v103 = v102;
    v103[1] = v101;
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v105 = [objc_opt_self() bundleForClass_];
    v106 = sub_26F49F298();
    v107 = swift_getKeyPath();
    v108 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1098, &qword_26F4AA000) + 36));
    *v108 = v107;
    v108[1] = v106;
    LOBYTE(v106) = sub_26F49EC58();
    sub_26F49DF78();
    v109 = v154;
    v110 = v97 + *(v154 + 36);
    *v110 = v106;
    *(v110 + 8) = v111;
    *(v110 + 16) = v112;
    *(v110 + 24) = v113;
    *(v110 + 32) = v114;
    *(v110 + 40) = 0;
    v115 = v169;
    sub_26F3AA65C(v97, v169);
    v116 = 0;
    v117 = v109;
  }

  else
  {
    v116 = 1;
    v115 = v169;
    v117 = v154;
  }

  (*(v155 + 56))(v115, v116, 1, v117);
  v118 = v173;
  sub_26F3B8DD4(v177, v173, &qword_2806E1050, &qword_26F4A9F38);
  sub_26F3B8DD4(v115, v174, &qword_2806E1048, &qword_26F4A9F28);
  v178[0] = v172;
  v178[1] = 0;
  LOWORD(v179[0]) = 1;
  *(v179 + 2) = *v214;
  *(&v179[2] + 2) = *&v214[16];
  *(&v179[1] + 2) = *&v214[8];
  v119 = v171;
  *&v179[3] = *&v214[23];
  *(&v179[3] + 1) = KeyPath;
  v180 = v171;
  v120 = v179[0];
  v121 = v156;
  *v156 = v172;
  v121[1] = v120;
  v122 = v179[1];
  v123 = v179[2];
  v124 = v179[3];
  *(v121 + 10) = v119;
  v121[3] = v123;
  v121[4] = v124;
  v121[2] = v122;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10A0, &qword_26F4AA008);
  sub_26F3B8DD4(v118, v121 + v125[12], &qword_2806E1050, &qword_26F4A9F38);
  v126 = v121 + v125[16];
  v127 = v151;
  *&v181 = v151;
  *(&v181 + 1) = v168;
  LOBYTE(v182) = v167;
  *(&v182 + 1) = v219[0];
  DWORD1(v182) = *(v219 + 3);
  v129 = v152;
  v128 = v153;
  *(&v182 + 1) = v153;
  LOWORD(v183) = 256;
  *(&v183 + 2) = v217;
  WORD3(v183) = v218;
  *(&v183 + 1) = v152;
  LOBYTE(v184) = 1;
  DWORD1(v184) = *&v212[3];
  *(&v184 + 1) = *v212;
  *(&v184 + 1) = v165;
  *&v185 = v166;
  *(&v185 + 1) = v163;
  *&v186 = v164;
  BYTE8(v186) = v162;
  *(&v186 + 9) = *v213;
  HIDWORD(v186) = *&v213[3];
  *&v187 = v79;
  *(&v187 + 1) = v81;
  *&v188 = v83;
  *(&v188 + 1) = v85;
  v189 = 0;
  v130 = v181;
  v131 = v182;
  v132 = v184;
  v133 = v185;
  *(v126 + 2) = v183;
  *(v126 + 3) = v132;
  *v126 = v130;
  *(v126 + 1) = v131;
  v134 = v186;
  v135 = v187;
  v136 = v188;
  v126[128] = 0;
  *(v126 + 6) = v135;
  *(v126 + 7) = v136;
  *(v126 + 4) = v133;
  *(v126 + 5) = v134;
  v137 = v174;
  sub_26F3B8DD4(v174, v121 + v125[20], &qword_2806E1048, &qword_26F4A9F28);
  sub_26F3B8DD4(v178, &v190, &qword_2806E10A8, &qword_26F4AA010);
  sub_26F3B8DD4(&v181, &v190, &qword_2806E10B0, &qword_26F4AA018);
  sub_26F3B6B4C(v169, &qword_2806E1048, &qword_26F4A9F28);
  sub_26F3B6B4C(v177, &qword_2806E1050, &qword_26F4A9F38);
  sub_26F3B6B4C(v137, &qword_2806E1048, &qword_26F4A9F28);
  *&v190 = v127;
  *(&v190 + 1) = v168;
  LOBYTE(v191) = v167;
  *(&v191 + 1) = v219[0];
  DWORD1(v191) = *(v219 + 3);
  *(&v191 + 1) = v128;
  LOWORD(v192) = 256;
  *(&v192 + 2) = v217;
  WORD3(v192) = v218;
  *(&v192 + 1) = v129;
  LOBYTE(v193) = 1;
  *(&v193 + 1) = *v212;
  DWORD1(v193) = *&v212[3];
  *(&v193 + 1) = v165;
  v194 = v166;
  v195 = v163;
  v196 = v164;
  v197 = v162;
  *&v198[3] = *&v213[3];
  *v198 = *v213;
  v199 = v79;
  v200 = v81;
  v201 = v83;
  v202 = v85;
  v203 = 0;
  sub_26F3B6B4C(&v190, &qword_2806E10B0, &qword_26F4AA018);
  sub_26F3B6B4C(v173, &qword_2806E1050, &qword_26F4A9F38);
  v204[0] = v172;
  v204[1] = 0;
  v205 = 1;
  v206 = 0;
  v207 = *v214;
  v208 = *&v214[8];
  *v209 = *&v214[16];
  *&v209[14] = *&v214[23];
  v210 = KeyPath;
  v211 = v171;
  return sub_26F3B6B4C(v204, &qword_2806E10A8, &qword_26F4AA010);
}

uint64_t sub_26F45E024@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26F49E7F8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1018, &qword_26F4A9EF8);
  sub_26F45D124(v1, (a1 + *(v3 + 44)));
  sub_26F49F5A8();
  sub_26F49E3D8();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1020, &qword_26F4A9F00) + 36));
  v4[4] = v30;
  v4[5] = v31;
  v4[6] = v32;
  *v4 = v26;
  v4[1] = v27;
  v4[2] = v28;
  v4[3] = v29;
  v5 = sub_26F49EC88();
  sub_26F49DF78();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1028, &qword_26F4A9F08) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_26F49EC48();
  sub_26F49DF78();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1030, &qword_26F4A9F10);
  v25 = a1 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_26F45E1B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F49E558();
  *a1 = result;
  return result;
}

unint64_t sub_26F45E208()
{
  result = qword_2806E1060;
  if (!qword_2806E1060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1058, &qword_26F4A9FD0);
    sub_26F45E2C0();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1060);
  }

  return result;
}

unint64_t sub_26F45E2C0()
{
  result = qword_2806E1068;
  if (!qword_2806E1068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1070, &unk_26F4A9FD8);
    sub_26F3E35C8();
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1068);
  }

  return result;
}

unint64_t sub_26F45E378()
{
  result = qword_2806E1080;
  if (!qword_2806E1080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1038, &qword_26F4A9F18);
    sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0);
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1080);
  }

  return result;
}

unint64_t sub_26F45E45C()
{
  result = qword_2806DE810;
  if (!qword_2806DE810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DE810);
  }

  return result;
}

uint64_t sub_26F45E4A8()
{
  v1 = *(type metadata accessor for TranslationUnavailableViewPhone(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + *(type metadata accessor for TranslationUnavailableModel(0) + 36) + v2;
  v4 = *(v3 + 8);
  return (*v3)();
}

uint64_t sub_26F45E53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F45E5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F45E60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationUnavailableState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1110, &unk_26F4AA090);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v13 = *(v12 + 56);
  sub_26F45E53C(a1, &v18 - v10, type metadata accessor for TranslationUnavailableState);
  sub_26F45E53C(a2, &v11[v13], type metadata accessor for TranslationUnavailableState);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v11, 4, v14);
  if (v16 <= 1)
  {
    if (v16)
    {
      if (v15(&v11[v13], 4, v14) != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_26F45E53C(v11, v7, type metadata accessor for TranslationUnavailableState);
      if (v15(&v11[v13], 4, v14))
      {
        sub_26F45EAD8(v7, type metadata accessor for LocalePair);
        goto LABEL_12;
      }

      sub_26F45EAD8(&v11[v13], type metadata accessor for LocalePair);
      sub_26F45EAD8(v7, type metadata accessor for LocalePair);
    }
  }

  else
  {
    if (v16 != 2)
    {
      if (v16 == 3 && v15(&v11[v13], 4, v14) == 3)
      {
        goto LABEL_14;
      }

LABEL_12:
      sub_26F3B6B4C(v11, &qword_2806E1110, &unk_26F4AA090);
      return 0;
    }

    if (v15(&v11[v13], 4, v14) != 2)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  sub_26F45EAD8(v11, type metadata accessor for TranslationUnavailableState);
  return 1;
}

uint64_t sub_26F45E8CC()
{
  sub_26F45E924();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_26F45E924()
{
  if (!qword_2806E10E0)
  {
    v0 = type metadata accessor for LocalePair();
    if (!v1)
    {
      atomic_store(v0, &qword_2806E10E0);
    }
  }
}

uint64_t sub_26F45E99C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F45EA20()
{
  result = qword_2806E10F8;
  if (!qword_2806E10F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1020, &qword_26F4A9F00);
    sub_26F3B18CC(&qword_2806E1100, &qword_2806E1108, qword_26F4AA060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E10F8);
  }

  return result;
}

uint64_t sub_26F45EAD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26F45EB40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED90, &qword_26F4AA100);
    v2 = sub_26F4A0288();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_26F3BE15C(&v25, v27);
        sub_26F3BE15C(v27, v28);
        sub_26F3BE15C(v28, &v26);
        result = sub_26F45FD88(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_26F3BE15C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_26F3BE15C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26F45ED88()
{
  v0 = sub_26F49E1B8();
  __swift_allocate_value_buffer(v0, qword_2806EA940);
  __swift_project_value_buffer(v0, qword_2806EA940);
  return sub_26F49E1A8();
}

void sub_26F45EDEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41[8] = *MEMORY[0x277D85DE8];
  v4 = sub_26F49D878();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2806DE798 != -1)
  {
    swift_once();
  }

  v9 = sub_26F49DCA8();
  __swift_project_value_buffer(v9, qword_2806EA8D8);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_26F49DC88();
  v11 = sub_26F49FDB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v38[1] = a2;
    v39 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v41[0] = v14;
    *v13 = 136642819;
    sub_26F46058C(&qword_2806E1120, MEMORY[0x277CC9260]);
    v15 = sub_26F4A0428();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_26F3B38D0(v15, v17, v41);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_26F39E000, v10, v11, "Opening URL with LaunchServices: %{sensitive}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x274391F70](v14, -1, -1);
    a1 = v39;
    MEMORY[0x274391F70](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10C0, &qword_26F4AA028);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F4A3150;
  v20 = *MEMORY[0x277D0AC58];
  *(inited + 32) = sub_26F49F8C8();
  *(inited + 40) = v21;
  *(inited + 48) = 1;
  v22 = sub_26F3BE060(inited);
  swift_setDeallocating();
  sub_26F3B6B4C(inited + 32, &qword_2806E10C8, &unk_26F4AA030);
  v23 = [objc_opt_self() defaultWorkspace];
  if (v23)
  {
    v24 = v23;
    v25 = sub_26F49D828();
    sub_26F45EB40(v22);

    v26 = sub_26F49F7E8();

    v41[0] = 0;
    v27 = [v24 openSensitiveURL:v25 withOptions:v26 error:v41];

    if (v27)
    {
      v40 = 1;
      v28 = v41[0];
    }

    else
    {
      v29 = v41[0];
      v30 = sub_26F49D7F8();

      swift_willThrow();
      v31 = v30;
      v32 = sub_26F49DC88();
      v33 = sub_26F49FDD8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = sub_26F49D7E8();
        *(v34 + 4) = v36;
        *v35 = v36;
        _os_log_impl(&dword_26F39E000, v32, v33, "Failed to open URL with LaunchServices: %@", v34, 0xCu);
        sub_26F3B6B4C(v35, &qword_2806DF258, &qword_26F4A6220);
        MEMORY[0x274391F70](v35, -1, -1);
        MEMORY[0x274391F70](v34, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {

    v40 = 0;
  }

  sub_26F49E198();
  sub_26F45F308(&v40, a1);
  v37 = *MEMORY[0x277D85DE8];
}

void sub_26F45F308(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26F49D878();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  if (*a1 == 1)
  {
    if (qword_2806DE798 != -1)
    {
      swift_once();
    }

    v12 = sub_26F49DCA8();
    __swift_project_value_buffer(v12, qword_2806EA8D8);
    (*(v5 + 16))(v11, a2, v4);
    v13 = sub_26F49DC88();
    v14 = sub_26F49FDB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136642819;
      sub_26F46058C(&qword_2806E1120, MEMORY[0x277CC9260]);
      v17 = sub_26F4A0428();
      v19 = v18;
      (*(v5 + 8))(v11, v4);
      v20 = sub_26F3B38D0(v17, v19, &v31);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_26F39E000, v13, v14, "Successfully opened URL with LaunchServices: %{sensitive}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x274391F70](v16, -1, -1);
      MEMORY[0x274391F70](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    if (qword_2806DE798 != -1)
    {
      swift_once();
    }

    v21 = sub_26F49DCA8();
    __swift_project_value_buffer(v21, qword_2806EA8D8);
    (*(v5 + 16))(v8, a2, v4);
    v22 = sub_26F49DC88();
    v23 = sub_26F49FDB8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136642819;
      sub_26F46058C(&qword_2806E1120, MEMORY[0x277CC9260]);
      v26 = sub_26F4A0428();
      v28 = v27;
      (*(v5 + 8))(v8, v4);
      v29 = sub_26F3B38D0(v26, v28, &v31);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_26F39E000, v22, v23, "Failed to open URL with LaunchServices: %{sensitive}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x274391F70](v25, -1, -1);
      MEMORY[0x274391F70](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_26F45F744@<X0>(uint64_t a1@<X8>)
{
  if (qword_2806DE7E0 != -1)
  {
    swift_once();
  }

  v2 = sub_26F49E1B8();
  v3 = __swift_project_value_buffer(v2, qword_2806EA940);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t EnvironmentValues.unlockAndOpenURL.getter()
{
  sub_26F45F834();

  return sub_26F49E688();
}

unint64_t sub_26F45F834()
{
  result = qword_2806E1118;
  if (!qword_2806E1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1118);
  }

  return result;
}

uint64_t sub_26F45F888(uint64_t a1)
{
  v2 = sub_26F49E1B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2, v8);
  (v11)(v6, v10, v2);
  sub_26F45F834();
  sub_26F49E698();
  return (*(v3 + 8))(v10, v2);
}

uint64_t EnvironmentValues.unlockAndOpenURL.setter(uint64_t a1)
{
  v2 = sub_26F49E1B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  sub_26F45F834();
  sub_26F49E698();
  return (*(v3 + 8))(a1, v2);
}

void (*EnvironmentValues.unlockAndOpenURL.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_26F49E1B8();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  v5[6] = sub_26F45F834();
  sub_26F49E688();
  return sub_26F45FC08;
}

void sub_26F45FC08(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[2] + 16);
  v4((*a1)[4], v3[5], v3[1]);
  v6 = v3[5];
  v5 = v3[6];
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[1];
  v10 = v3[2];
  v11 = *v3;
  if (a2)
  {
    v12 = v3[6];
    v4(v3[3], v3[4], v3[1]);
    sub_26F49E698();
    v13 = *(v10 + 8);
    v13(v7, v9);
    v13(v6, v9);
  }

  else
  {
    v14 = v3[4];
    sub_26F49E698();
    (*(v10 + 8))(v6, v9);
  }

  free(v6);
  free(v7);
  free(v8);

  free(v3);
}

unint64_t sub_26F45FD44(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26F4A00D8();

  return sub_26F45FFE0(a1, v5);
}

unint64_t sub_26F45FD88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26F4A0528();
  sub_26F49F9A8();
  v6 = sub_26F4A0568();

  return sub_26F4600A8(a1, a2, v6);
}

unint64_t sub_26F45FE00(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26F49F8C8();
  sub_26F4A0528();
  sub_26F49F9A8();
  v4 = sub_26F4A0568();

  return sub_26F460160(a1, v4);
}

unint64_t sub_26F45FE94(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26F4A0528();
  sub_26F49D968();
  sub_26F46058C(&qword_280F663A8, MEMORY[0x277CC95F0]);
  sub_26F49F828();
  v4 = sub_26F4A0568();

  return sub_26F460264(a1, v4);
}

unint64_t sub_26F45FF48(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26F49D968();
  sub_26F46058C(&qword_280F663A8, MEMORY[0x277CC95F0]);
  v5 = sub_26F49F818();

  return sub_26F4603CC(a1, v5);
}

unint64_t sub_26F45FFE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26F4605D4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x274390EE0](v9, a1);
      sub_26F3B2D68(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26F4600A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26F4A0458())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26F460160(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26F49F8C8();
      v9 = v8;
      if (v7 == sub_26F49F8C8() && v9 == v10)
      {
        break;
      }

      v12 = sub_26F4A0458();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26F460264(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TextModel();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_26F446844(*(v2 + 48) + v13 * v11, v9);
      if (sub_26F49D938())
      {
        v14 = *&v9[*(v5 + 20)];
        sub_26F4468A8(v9);
        if (v14 == *(a1 + *(v5 + 20)))
        {
          return v11;
        }
      }

      else
      {
        sub_26F4468A8(v9);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_26F4603CC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_26F49D968();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_26F46058C(&qword_2806E1128, MEMORY[0x277CC95F0]);
      v17 = sub_26F49F868();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_26F46058C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static URL.downloadLanguagesURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_26F49D868();
  v6 = sub_26F49D878();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t static URL.translateSettingsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_26F49D868();
  v6 = sub_26F49D878();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t static URL.topLevelSettingsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_26F49D868();
  v6 = sub_26F49D878();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t static URL.translateAppURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_26F49D7C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49D7B8();
  sub_26F49D7A8();
  sub_26F49D798();
  v11 = sub_26F49D878();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v5, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }

  return result;
}

uint64_t static URL.translateAppURL(with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_26F49D7C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49D7B8();
  sub_26F49D7A8();

  sub_26F49D788();
  sub_26F49D798();
  v11 = sub_26F49D878();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v5, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }

  return result;
}

uint64_t static String.localizedSettingsAppName.getter()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_26F49D7D8();

  return v2;
}

uint64_t NSUserDefaults.onDeviceOnly.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 BOOLForKey_];

  v3 = [objc_opt_self() sharedConnection];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isOnDeviceOnlyTranslationForced];

    v2 |= v5;
  }

  return v2 & 1;
}

uint64_t NSUserDefaults.lastUsedLocaleIdentifier.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26F49F8C8();

  return v3;
}

id NSUserDefaults.debugNetworkPathOverride.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 integerForKey_];

  return v2;
}

void static NSUserDefaults.ltuiRegisterDefaults()()
{
  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED10, &qword_26F4A2CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F4A3150;
  *(inited + 32) = 0xD00000000000001BLL;
  v3 = inited + 32;
  *(inited + 40) = 0x800000026F4AEAA0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_26F3BDADC(inited);
  swift_setDeallocating();
  sub_26F3B6B4C(v3, &qword_2806DED18, &qword_26F4A2CB8);
  v4 = sub_26F49F7E8();

  [v1 registerDefaults_];
}

void sub_26F461108(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_26F49F898();
  v5 = [v3 BOOLForKey_];

  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isOnDeviceOnlyTranslationForced];

    v5 |= v8;
  }

  *a2 = v5 & 1;
}

void NSUserDefaults.onDeviceOnly.setter(char a1)
{
  v3 = sub_26F49F898();
  [v1 setBool:a1 & 1 forKey:v3];
}

void (*NSUserDefaults.onDeviceOnly.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = sub_26F49F898();
  v5 = [v2 BOOLForKey_];

  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isOnDeviceOnlyTranslationForced];

    v5 |= v8;
  }

  *(a1 + 8) = v5 & 1;
  return sub_26F461314;
}

id NSUserDefaults.firstUseConsent.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.firstUseConsent.setter(char a1)
{
  v3 = sub_26F49F898();
  [v1 setBool:a1 & 1 forKey:v3];
}

void (*NSUserDefaults.firstUseConsent.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_26F49F898();
  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_26F4614A4;
}

void sub_26F4614C8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_26F49F898();
  [v1 setBool:v2 forKey:v3];
}

void sub_26F461530(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_26F49F898();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    v6 = sub_26F49F8C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_26F4615C8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_26F49F898();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_26F49F898();
  [v2 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

void NSUserDefaults.lastUsedLocaleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26F49F898();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26F49F898();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*NSUserDefaults.lastUsedLocaleIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = sub_26F49F898();
  v4 = [v1 stringForKey_];

  if (v4)
  {
    v5 = sub_26F49F8C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_26F4617B8;
}

uint64_t sub_26F4617B8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {
      v4 = *a1;
      v5 = a1[1];

      v6 = sub_26F49F898();
    }

    else
    {
      v6 = 0;
    }

    v9 = a1[2];
    v10 = sub_26F49F898();
    [v9 setObject:v6 forKey:v10];
  }

  else
  {
    if (v3)
    {
      v7 = *a1;
      v8 = sub_26F49F898();
    }

    else
    {
      v8 = 0;
    }

    v11 = a1[2];
    v10 = sub_26F49F898();
    [v11 setObject:v8 forKey:v10];
  }

  return swift_unknownObjectRelease();
}

id NSUserDefaults.genderDisambiguationEnabled.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_26F461934(_BYTE *a1, void **a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_26F49FB58();
  }

  v4 = sub_26F49F898();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void NSUserDefaults.genderDisambiguationEnabled.setter(char a1)
{
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_26F49FB58();
  }

  v3 = sub_26F49F898();
  [v1 setObject:v2 forKey:v3];
  swift_unknownObjectRelease();
}

uint64_t (*NSUserDefaults.genderDisambiguationEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_26F49F898();
  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_26F461AF0;
}

uint64_t sub_26F461AF0(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_26F49FB58();
  }

  v3 = *a1;
  v4 = sub_26F49F898();
  [v3 setObject:v2 forKey:v4];

  return swift_unknownObjectRelease();
}

id NSUserDefaults.debugAPIShowLanguageStatus.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.debugAPIShowLanguageStatus.setter(char a1)
{
  v3 = sub_26F49F898();
  [v1 setBool:a1 & 1 forKey:v3];
}

void (*NSUserDefaults.debugAPIShowLanguageStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_26F49F898();
  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_26F461CE8;
}

void sub_26F461CE8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_26F49F898();
  [v1 setBool:v2 forKey:v3];
}

void NSUserDefaults.debugNetworkPathOverride.setter(uint64_t a1)
{
  v3 = sub_26F49F898();
  [v1 setInteger:a1 forKey:v3];
}

void (*NSUserDefaults.debugNetworkPathOverride.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = sub_26F49F898();
  v4 = [v1 integerForKey_];

  *a1 = v4;
  return sub_26F461E5C;
}

void sub_26F461E5C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_26F49F898();
  [v1 setInteger:v2 forKey:v3];
}

void _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_26F49F898();
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier_];

  if (v12)
  {
    sub_26F49D848();

    v13 = sub_26F49D878();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v13 = sub_26F49D878();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  sub_26F42F7E8(v6, v9);
  v14 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v15 = sub_26F49F898();
  sub_26F42ECE8(v9, v3);
  sub_26F49D878();
  v16 = *(v13 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v3, 1, v13) != 1)
  {
    v17 = sub_26F49D828();
    (*(v16 + 8))(v3, v13);
  }

  v18 = [v14 _initWithSuiteName_container_];

  if (v18)
  {
    sub_26F3B6B4C(v9, &qword_2806DF2A0, &qword_26F4A7190);
  }

  else
  {
    __break(1u);
  }
}

void keypath_setTm_0(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26F49F898();
  [v3 setBool:v2 forKey:v4];
}

int *sub_26F462218()
{
  v78 = sub_26F49D968();
  v92 = *(v78 - 8);
  v2 = *(v92 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v76 - v6;
  v7 = type metadata accessor for TextModel();
  v95 = *(v7 - 1);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for VisualTranslationModel(0);
  v81 = *(v87 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v87);
  v91 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v86 = *(v15 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v79 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v90 = &v76 - v19;
  MEMORY[0x28223BE20](v20);
  v89 = &v76 - v21;
  swift_beginAccess();
  v80 = v0;
  v22 = *(v0 + 16);
  v25 = *(v22 + 64);
  v24 = v22 + 64;
  v23 = v25;
  v26 = 1 << *(*(v0 + 16) + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v88 = *(v0 + 16);
  swift_bridgeObjectRetain_n();
  v30 = 0;
  v83 = MEMORY[0x277D84F90];
  v84 = v24;
  v85 = v29;
  if (v28)
  {
LABEL_11:
    while (1)
    {
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = v89;
      sub_26F3B8DD4(*(v88 + 56) + *(v86 + 72) * (v32 | (v30 << 6)), v89, &qword_2806DED80, &qword_26F4A3660);
      v34 = v33;
      v35 = v90;
      sub_26F3B8DD4(v34, v90, &qword_2806DED80, &qword_26F4A3660);
      v36 = *(v35 + *(v87 + 28));
      v94 = *(v36 + 16);
      if (v94)
      {
        break;
      }

LABEL_26:
      sub_26F463744(v90, type metadata accessor for VisualTranslationModel);
      v50 = v79;
      sub_26F3BEFCC(v89, v79);
      sub_26F3BEF64(v50, v82, type metadata accessor for VisualTranslationModel);
      v51 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_26F44650C(0, v51[2] + 1, 1, v51);
      }

      v24 = v84;
      v29 = v85;
      v53 = v51[2];
      v52 = v51[3];
      v1 = (v53 + 1);
      if (v53 >= v52 >> 1)
      {
        v51 = sub_26F44650C(v52 > 1, v53 + 1, 1, v51);
      }

      v51[2] = v1;
      v54 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v83 = v51;
      sub_26F3BEF64(v82, v51 + v54 + *(v81 + 72) * v53, type metadata accessor for VisualTranslationModel);
      if (!v28)
      {
        goto LABEL_6;
      }
    }

    v37 = 0;
    while (v37 < *(v36 + 16))
    {
      sub_26F448DA4(v36 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v37, v10, type metadata accessor for TextModel);
      if (*&v10[v7[11]])
      {
        goto LABEL_5;
      }

      v38 = &v10[v7[6]];
      v40 = *v38;
      v39 = *(v38 + 1);
      v41 = v40 & 0xFFFFFFFFFFFFLL;
      if (!((v39 & 0x2000000000000000) != 0 ? HIBYTE(v39) & 0xF : v41))
      {
        goto LABEL_5;
      }

      v43 = v93;
      v1 = v7;
      sub_26F3B8DD4(&v10[v7[7]], v93, &qword_2806DEFD8, &qword_26F4A3670);
      v44 = sub_26F49DAB8();
      v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
      sub_26F3B6B4C(v43, &qword_2806DEFD8, &qword_26F4A3670);
      if (v45 == 1)
      {
        goto LABEL_5;
      }

      v46 = &v10[v7[8]];
      v47 = *(v46 + 1);
      if (!v47)
      {
        goto LABEL_5;
      }

      v48 = *v46 & 0xFFFFFFFFFFFFLL;
      if (!((v47 & 0x2000000000000000) != 0 ? HIBYTE(v47) & 0xF : v48))
      {
LABEL_5:
        sub_26F463744(v10, type metadata accessor for TextModel);
        sub_26F463744(v90, type metadata accessor for VisualTranslationModel);
        sub_26F3B6B4C(v89, &qword_2806DED80, &qword_26F4A3660);
        v24 = v84;
        v29 = v85;
        if (v28)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      ++v37;
      sub_26F463744(v10, type metadata accessor for TextModel);
      if (v94 == v37)
      {
        goto LABEL_26;
      }
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_6:
  v1 = v83;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = *(v24 + 8 * v31);
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_11;
    }
  }

  v55 = *(v1 + 2);
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    v96 = MEMORY[0x277D84F90];
    sub_26F403488(0, v55, 0);
    v56 = v96;
    v57 = v1 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v58 = *(v81 + 72);
    v59 = (v92 + 16);
    v60 = v78;
    v61 = v77;
    do
    {
      v62 = v91;
      sub_26F448DA4(v57, v91, type metadata accessor for VisualTranslationModel);
      (*v59)(v61, v62, v60);
      sub_26F463744(v62, type metadata accessor for VisualTranslationModel);
      v96 = v56;
      v64 = *(v56 + 16);
      v63 = *(v56 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_26F403488(v63 > 1, v64 + 1, 1);
        v56 = v96;
      }

      *(v56 + 16) = v64 + 1;
      (*(v92 + 32))(v56 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v64, v61, v60);
      v57 += v58;
      --v55;
    }

    while (v55);
    v1 = v83;
  }

  v65 = v80;
  v66 = sub_26F40452C(v56);

  swift_beginAccess();
  v67 = *(v65 + 24);

  v69 = sub_26F4649F8(v68, v66);

  swift_bridgeObjectRelease_n();
  v70 = *(v65 + 24);
  *(v65 + 24) = v69;

  if (qword_280F66CB0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v71 = sub_26F49DCA8();
  __swift_project_value_buffer(v71, qword_280F67ED0);

  v72 = sub_26F49DC88();
  v73 = sub_26F49FDC8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134217984;
    *(v74 + 4) = *(v1 + 2);

    _os_log_impl(&dword_26F39E000, v72, v73, "Prune visual models: %ld", v74, 0xCu);
    MEMORY[0x274391F70](v74, -1, -1);
  }

  else
  {
  }

  return v1;
}

size_t sub_26F462B94()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_26F49715C(*(v1 + 16), 0);
    v4 = *(type metadata accessor for TextModel() - 8);
    sub_26F4995BC(&v12, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
    v6 = v5;

    sub_26F3C8E34();
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v7 = sub_26F49DCA8();
  __swift_project_value_buffer(v7, qword_280F67ED0);

  v8 = sub_26F49DC88();
  v9 = sub_26F49FDC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v3 + 16);

    _os_log_impl(&dword_26F39E000, v8, v9, "Mux text models: %ld", v10, 0xCu);
    MEMORY[0x274391F70](v10, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_26F462D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v95 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1130, &unk_26F4ABFF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = v82 - v7;
  v8 = type metadata accessor for TextModel();
  v89 = *(v8 - 8);
  v9 = *(v89 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualTranslationModel(0);
  v94 = *(v12 - 1);
  v13 = *(v94 + 64);
  MEMORY[0x28223BE20](v12);
  v88 = (v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v90 = *(v91 - 8);
  v15 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v17 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v82 - v19;
  v93 = sub_26F49D968();
  v92 = *(v93 - 8);
  v21 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v86 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (v82 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = v82 - v27;
  swift_beginAccess();
  v29 = v2[3];
  if (!*(v29 + 16) || (v30 = sub_26F45FE94(a1), (v31 & 1) == 0))
  {
    swift_endAccess();
    return (*(v94 + 56))(v95, 1, 1, v12);
  }

  v83 = a1;
  v32 = *(v29 + 56);
  v85 = v28;
  v33 = v92;
  v34 = v32 + *(v92 + 72) * v30;
  v35 = *(v92 + 16);
  v36 = v93;
  v82[1] = v92 + 16;
  v84 = v35;
  v35(v25, v34, v93);
  v37 = v33;
  v38 = v85;
  (*(v37 + 32))(v85, v25, v36);
  swift_endAccess();
  swift_beginAccess();
  v39 = v3[2];
  if (!*(v39 + 16) || (v40 = sub_26F45FF48(v38), (v41 & 1) == 0))
  {
    swift_endAccess();
    (*(v92 + 8))(v38, v93);
    return (*(v94 + 56))(v95, 1, 1, v12);
  }

  sub_26F3B8DD4(*(v39 + 56) + *(v90 + 72) * v40, v17, &qword_2806DED80, &qword_26F4A3660);
  v42 = v20;
  sub_26F3BEFCC(v17, v20);
  swift_endAccess();
  v43 = *(v91 + 48);
  v44 = *(v20 + v43);
  v45 = __OFSUB__(v44, 1);
  v46 = v44 - 1;
  if (v45)
  {
    __break(1u);
LABEL_22:
    v38 = sub_26F4469BC(v38);
    goto LABEL_9;
  }

  v82[0] = v46;
  *(v20 + v43) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0118, &qword_26F4ABEF0);
  v20 = *(v89 + 72);
  v39 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_26F4A3150;
  v25 = type metadata accessor for TextModel;
  sub_26F448DA4(v83, v47 + v39, type metadata accessor for TextModel);
  v38 = *(v42 + v12[7]);
  v48 = *(v8 + 20);
  sub_26F448DA4(v47 + v39, v11, type metadata accessor for TextModel);

  v17 = *&v11[v48];
  if (v17 < 0 || v17 >= v38[2])
  {
    sub_26F463744(v11, type metadata accessor for TextModel);
    v8 = v84;
    goto LABEL_14;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v84;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (v17 >= v38[2])
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  sub_26F446A6C(v11, v38 + v39 + v17 * v20);
LABEL_14:
  v25 = v88;
  v20 = v93;
  (v8)(v88, v42, v93);
  v50 = v42 + v12[5];
  v51 = *(v50 + 128);
  v52 = *(v50 + 144);
  v53 = *(v50 + 96);
  v103 = *(v50 + 112);
  v104 = v51;
  v105 = v52;
  v106 = *(v50 + 160);
  v54 = *(v50 + 80);
  v100 = *(v50 + 64);
  v101 = v54;
  v102 = v53;
  v55 = *(v50 + 48);
  v98 = *(v50 + 32);
  v99 = v55;
  v56 = *v50;
  v97 = *(v50 + 16);
  v96 = v56;
  v57 = v12[6];
  v58 = sub_26F49D918();
  (*(*(v58 - 8) + 16))(v25 + v57, v42 + v57, v58);
  v59 = *(v42 + v12[8]);
  v60 = *(v42 + v12[9]);
  v61 = *(v42 + v12[10]);
  v62 = v25 + v12[5];
  v63 = v103;
  v64 = v105;
  *(v62 + 8) = v104;
  *(v62 + 9) = v64;
  *(v62 + 20) = v106;
  v65 = v101;
  *(v62 + 4) = v100;
  *(v62 + 5) = v65;
  *(v62 + 6) = v102;
  *(v62 + 7) = v63;
  v67 = v97;
  v66 = v98;
  *v62 = v96;
  *(v62 + 1) = v67;
  v68 = v99;
  *(v62 + 2) = v66;
  *(v62 + 3) = v68;
  *(v25 + v12[7]) = v38;
  *(v25 + v12[8]) = v59;
  *(v25 + v12[9]) = v60;
  *(v25 + v12[10]) = v61;
  *(v25 + v12[11]) = 0;
  if (v82[0] > 0)
  {
    v69 = v8;
    v70 = v86;
    v71 = v20;
    v72 = v82[0];
    v69(v86, v85, v71);
    v73 = v91;
    v74 = *(v91 + 48);
    v75 = v87;
    sub_26F448DA4(v25, v87, type metadata accessor for VisualTranslationModel);
    *(v75 + v74) = v72;
    (*(v90 + 56))(v75, 0, 1, v73);
    swift_beginAccess();
    sub_26F487E48(v75, v70);
    swift_endAccess();
    sub_26F463744(v25, type metadata accessor for VisualTranslationModel);
    sub_26F3B6B4C(v42, &qword_2806DED80, &qword_26F4A3660);
    (*(v92 + 8))(v85, v93);
    return (*(v94 + 56))(v95, 1, 1, v12);
  }

  v3 = v85;
  if (qword_280F66CB0 != -1)
  {
    goto LABEL_24;
  }

LABEL_18:
  v77 = sub_26F49DCA8();
  __swift_project_value_buffer(v77, qword_280F67ED0);
  v78 = sub_26F49DC88();
  v79 = sub_26F49FDC8();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_26F39E000, v78, v79, "Demuxed visual model", v80, 2u);
    MEMORY[0x274391F70](v80, -1, -1);
  }

  sub_26F3B6B4C(v42, &qword_2806DED80, &qword_26F4A3660);
  (*(v92 + 8))(v3, v20);
  v81 = v95;
  sub_26F3BEF64(v25, v95, type metadata accessor for VisualTranslationModel);
  return (*(v94 + 56))(v81, 0, 1, v12);
}

uint64_t sub_26F4636E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26F463744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t *sub_26F4637A4(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_26F4644D4(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_26F463840(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v57 = sub_26F49D968();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v44 - v12;
  v13 = type metadata accessor for TextModel();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v55 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v48 = &v44 - v17;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED70, &qword_26F4A2F70);
  result = sub_26F4A0288();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46 = a4;
  v47 = v8 + 16;
  v54 = v8 + 32;
  v22 = result + 64;
  v45 = v8;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v51 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[6];
    v28 = v48;
    v53 = *(v49 + 72);
    sub_26F448DA4(v27 + v53 * v26, v48, type metadata accessor for TextModel);
    v29 = a4[7];
    v52 = *(v8 + 72);
    v30 = v29 + v52 * v26;
    v31 = v50;
    v32 = v57;
    (*(v8 + 16))(v50, v30, v57);
    sub_26F3BEF64(v28, v55, type metadata accessor for TextModel);
    v33 = *(v8 + 32);
    v33(v56, v31, v32);
    v34 = *(v19 + 40);
    sub_26F4A0528();
    sub_26F464BB8(&qword_280F663A8);
    sub_26F49F828();
    result = sub_26F4A0568();
    v35 = -1 << *(v19 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v22 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v22 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    sub_26F3BEF64(v55, *(v19 + 48) + v38 * v53, type metadata accessor for TextModel);
    result = (v33)(*(v19 + 56) + v38 * v52, v56, v57);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v46;
    v8 = v45;
    v20 = v51;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v51 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26F463CBC(uint64_t a1)
{
  v69 = type metadata accessor for TextModel();
  v86 = *(v69 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v69);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v68 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v78 = *(v80 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v68 - v13;
  v92 = sub_26F49D968();
  v85 = *(v92 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  v19 = type metadata accessor for VisualTranslationModel(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_26F3BE1E0(MEMORY[0x277D84F90]);
  v82 = (v1 + 16);
  v25 = sub_26F3BE3F4(v24);
  v70 = v1;
  *(v1 + 24) = v25;
  v26 = (v1 + 24);
  v77 = *(a1 + 16);
  if (!v77)
  {
    return v70;
  }

  v76 = *(v19 + 28);
  v75 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v27 = 0;
  v89 = (v85 + 16);
  v73 = (v85 + 8);
  v74 = *(v20 + 72);
  v83 = v85 + 40;
  v84 = v85 + 32;
  v72 = v11;
  v71 = v18;
  v87 = v23;
  while (1)
  {
    v81 = v27;
    sub_26F448DA4(v75 + v74 * v27, v23, type metadata accessor for VisualTranslationModel);
    v88 = *v89;
    v88(v18, v23, v92);
    v28 = v79;
    v29 = *(v80 + 48);
    sub_26F448DA4(v23, v79, type metadata accessor for VisualTranslationModel);
    v90 = *&v23[v76];
    *(v28 + v29) = *(v90 + 16);
    v30 = v82;
    swift_beginAccess();
    sub_26F3BEFCC(v28, v11);
    v31 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = *v30;
    v33 = v93;
    *v30 = 0x8000000000000000;
    v35 = sub_26F45FF48(v18);
    v36 = v33[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_33;
    }

    v39 = v34;
    if (v33[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26F3C7190();
      }
    }

    else
    {
      sub_26F3C59E8(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_26F45FF48(v18);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_36;
      }

      v35 = v40;
    }

    v23 = v87;
    v42 = v93;
    if (v39)
    {
      sub_26F464BFC(v11, v93[7] + *(v78 + 72) * v35);
    }

    else
    {
      v93[(v35 >> 6) + 8] |= 1 << v35;
      v88((v42[6] + *(v85 + 72) * v35), v18, v92);
      sub_26F3BEFCC(v11, v42[7] + *(v78 + 72) * v35);
      v43 = v42[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_34;
      }

      v42[2] = v45;
    }

    (*v73)(v18, v92);
    *v82 = v42;
    swift_endAccess();
    v46 = *(v90 + 16);
    if (v46)
    {
      break;
    }

LABEL_3:
    v27 = v81 + 1;
    sub_26F463744(v23, type metadata accessor for VisualTranslationModel);
    v11 = v72;
    v18 = v71;
    if (v27 == v77)
    {
      return v70;
    }
  }

  v47 = 0;
  v48 = v90 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
  while (v47 < *(v90 + 16))
  {
    v50 = *(v86 + 72);
    sub_26F448DA4(v48 + v50 * v47, v8, type metadata accessor for TextModel);
    sub_26F448DA4(v8, v5, type metadata accessor for TextModel);
    swift_beginAccess();
    v88(v91, v23, v92);
    v51 = *v26;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v93 = *v26;
    v53 = v93;
    *v26 = 0x8000000000000000;
    v54 = sub_26F45FE94(v5);
    v56 = v53[2];
    v57 = (v55 & 1) == 0;
    v44 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (v44)
    {
      goto LABEL_31;
    }

    v59 = v55;
    if (v53[3] < v58)
    {
      sub_26F3C5E64(v58, v52);
      v54 = sub_26F45FE94(v5);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_35;
      }

LABEL_24:
      v61 = v93;
      if (v59)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }

    if (v52)
    {
      goto LABEL_24;
    }

    v66 = v54;
    sub_26F3C74AC();
    v54 = v66;
    v61 = v93;
    if (v59)
    {
LABEL_16:
      (*(v85 + 40))(v61[7] + *(v85 + 72) * v54, v91, v92);
      sub_26F463744(v5, type metadata accessor for TextModel);
      goto LABEL_17;
    }

LABEL_25:
    v61[(v54 >> 6) + 8] |= 1 << v54;
    v62 = v61[6] + v54 * v50;
    v63 = v54;
    sub_26F448DA4(v5, v62, type metadata accessor for TextModel);
    (*(v85 + 32))(v61[7] + *(v85 + 72) * v63, v91, v92);
    sub_26F463744(v5, type metadata accessor for TextModel);
    v64 = v61[2];
    v44 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (v44)
    {
      goto LABEL_32;
    }

    v61[2] = v65;
LABEL_17:
    ++v47;
    v49 = *v26;
    *v26 = v61;

    swift_endAccess();
    sub_26F463744(v8, type metadata accessor for TextModel);
    v23 = v87;
    if (v46 == v47)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_26F4A04A8();
  __break(1u);
LABEL_36:
  result = sub_26F4A04A8();
  __break(1u);
  return result;
}

void sub_26F4644D4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = a2;
  v47 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1138, &qword_26F4AA158);
  v6 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v63 = &v44 - v7;
  v8 = sub_26F49D968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for TextModel();
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a3;
  v55 = 0;
  v20 = 0;
  v21 = *(a3 + 64);
  v46 = a3 + 64;
  v22 = 1 << *(a3 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v61 = v9 + 16;
  v62 = a4;
  v51 = v15;
  v52 = v9;
  v59 = a4 + 7;
  v60 = (v9 + 8);
  v48 = v25;
  v49 = v19;
  while (v24)
  {
    v26 = __clz(__rbit64(v24));
    v57 = (v24 - 1) & v24;
LABEL_13:
    v58 = v20;
    v29 = v26 | (v20 << 6);
    v30 = v54;
    sub_26F448DA4(v54[6] + *(v50 + 72) * v29, v19, type metadata accessor for TextModel);
    v31 = v30[7];
    v32 = *(v52 + 72);
    v56 = v29;
    v33 = *(v52 + 16);
    v33(v15, v31 + v32 * v29, v8);
    v34 = v63;
    sub_26F448DA4(v19, v63, type metadata accessor for TextModel);
    v33((v34 + *(v53 + 48)), v15, v8);
    if (v62[2] && (v35 = v62, v36 = v62[5], sub_26F464BB8(&qword_280F663A8), v37 = sub_26F49F818(), v38 = -1 << *(v35 + 32), v39 = v37 & ~v38, ((*(v59 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
    {
      v40 = ~v38;
      while (1)
      {
        v33(v12, v62[6] + v39 * v32, v8);
        sub_26F464BB8(&qword_2806E1128);
        v41 = sub_26F49F868();
        v42 = *v60;
        (*v60)(v12, v8);
        if (v41)
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        if (((*(v59 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_26F3B6B4C(v63, &qword_2806E1138, &qword_26F4AA158);
      v15 = v51;
      v42(v51, v8);
      v19 = v49;
      sub_26F463744(v49, type metadata accessor for TextModel);
      v24 = v57;
      v20 = v58;
      v25 = v48;
    }

    else
    {
LABEL_18:
      sub_26F3B6B4C(v63, &qword_2806E1138, &qword_26F4AA158);
      v15 = v51;
      (*v60)(v51, v8);
      v19 = v49;
      sub_26F463744(v49, type metadata accessor for TextModel);
      v25 = v48;
      *(v47 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      v43 = __OFADD__(v55++, 1);
      v24 = v57;
      v20 = v58;
      if (v43)
      {
        __break(1u);
LABEL_21:
        sub_26F463840(v47, v45, v55, v54);
        return;
      }
    }
  }

  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v20 >= v25)
    {
      goto LABEL_21;
    }

    v28 = *(v46 + 8 * v20);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v57 = (v28 - 1) & v28;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_26F4649F8(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_26F4637A4(v14, v7, a1, a2);
      MEMORY[0x274391F70](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_26F4644D4((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_26F464BB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26F49D968();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26F464BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F464C78()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F464D48()
{
  *v0;
  *v0;
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F464E04()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F464ED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F4672B8();
  *a2 = result;
  return result;
}

void sub_26F464F00(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7466654C706F74;
  v4 = 0xEA00000000007466;
  v5 = 0x654C6D6F74746F62;
  if (*v1 != 2)
  {
    v5 = 0x69526D6F74746F62;
    v4 = 0xEB00000000746867;
  }

  if (*v1)
  {
    v3 = 0x7468676952706F74;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_26F464F8C()
{
  v1 = 0x7466654C706F74;
  v2 = 0x654C6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x69526D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F465014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F4672B8();
  *a1 = result;
  return result;
}

uint64_t sub_26F46503C(uint64_t a1)
{
  v2 = sub_26F4675FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F465078(uint64_t a1)
{
  v2 = sub_26F4675FC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26F4650B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v0;
  v4 = v0[1];
  v5 = CGPointMake(v1 - *v0, v2 - v4);
  v7 = v6;
  v8 = v0[4];
  v9 = v0[5];
  v10 = CGPointMake(v8 - v3, v9 - v4);
  v20 = vabdd_f64(v5 * v11, v7 * v10) * 0.5;
  v12 = v0[6];
  v13 = v0[7];
  v14 = CGPointMake(v1 - v12, v2 - v13);
  v16 = v15;
  v17 = CGPointMake(v8 - v12, v9 - v13);
  return v20 + vabdd_f64(v14 * v18, v16 * v17) * 0.5;
}

uint64_t sub_26F465174()
{
  if (fabs(*v0) <= 1.0 && fabs(v0[1]) <= 1.0 || fabs(v0[2]) <= 1.0 && fabs(v0[3]) <= 1.0 || fabs(v0[4]) <= 1.0 && fabs(v0[5]) <= 1.0)
  {
    return 1;
  }

  v1 = fabs(v0[6]) <= 1.0;
  return fabs(v0[7]) <= 1.0 && v1;
}

void sub_26F465208(float64x2_t *a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>)
{
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  __asm { FMOV            V6.2D, #1.0 }

  v13 = vmovn_s64(vmvnq_s8(vcgeq_f64(_Q6, vabsq_f64(*v3))));
  if (((v13.i32[0] | v13.i32[1]) & 1) == 0 || (v14 = vmovn_s64(vmvnq_s8(vcgeq_f64(_Q6, vabsq_f64(v4)))), ((v14.i32[0] | v14.i32[1]) & 1) == 0) || (v15 = vmovn_s64(vmvnq_s8(vcgeq_f64(_Q6, vabsq_f64(v7)))), ((v15.i32[0] | v15.i32[1]) & 1) == 0) || (v16 = vmovn_s64(vmvnq_s8(vcgeq_f64(_Q6, vabsq_f64(v6)))), ((v16.i32[0] | v16.i32[1]) & 1) == 0))
  {
    a2.f64[1] = a3;
    v4 = vmulq_f64(v4, a2);
    v5 = vmulq_f64(v5, a2);
    v6 = vmulq_f64(v6, a2);
    v7 = vmulq_f64(v7, a2);
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v6;
}

uint64_t sub_26F4652B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11B0, &qword_26F4AA460);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F4675FC();
  sub_26F4A0598();
  v14 = *v3;
  v13 = 0;
  type metadata accessor for CGPoint(0);
  sub_26F467650(&qword_2806E11C0, type metadata accessor for CGPoint);
  sub_26F4A03F8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = v3[1];
  v13 = 1;
  sub_26F4A03F8();
  v14 = v3[2];
  v13 = 2;
  sub_26F4A03F8();
  v14 = v3[3];
  v13 = 3;
  sub_26F4A03F8();
  return (*(v6 + 8))(v9, v5);
}

double sub_26F4654F8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26F467304(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

BOOL sub_26F465554(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_26F466C1C(v7, v8);
}

uint64_t sub_26F46571C()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F4657F4()
{
  *v0;
  *v0;
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F4658B8()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F46598C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F4675B0();
  *a2 = result;
  return result;
}

void sub_26F4659BC(unint64_t *a1@<X8>)
{
  v2 = 0xED0000656C676E41;
  v3 = 0x656E696C65736162;
  v4 = 0xED00006D726F6673;
  v5 = 0x6E6172546A6F7270;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000026F4AC610;
  }

  if (*v1)
  {
    v3 = 1684108657;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_26F465A50()
{
  v1 = 0x656E696C65736162;
  v2 = 0x6E6172546A6F7270;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 1684108657;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F465AE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F4675B0();
  *a1 = result;
  return result;
}

uint64_t sub_26F465B08(uint64_t a1)
{
  v2 = sub_26F466E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F465B44(uint64_t a1)
{
  v2 = sub_26F466E14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageBounds.init(topLeft:topRight:bottomLeft:bottomRight:radians:homography:homographySpace:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>, double a13, double a14)
{
  v14 = result;
  v25 = *a3;
  v24 = a3[1];
  v27 = a3[2];
  v26 = a3[3];
  v29 = a3[4];
  v28 = a3[5];
  v44 = a2 & 1;
  if (a3[6])
  {
    v30 = *MEMORY[0x277CD9DE8];
    v31 = *(MEMORY[0x277CD9DE8] + 16);
    v32 = *(MEMORY[0x277CD9DE8] + 32);
    v33 = *(MEMORY[0x277CD9DE8] + 48);
    v34 = *(MEMORY[0x277CD9DE8] + 64);
    v35 = *(MEMORY[0x277CD9DE8] + 80);
    v36 = 1.0;
    v37 = 1.0;
  }

  else
  {
    result = CATransform3DMakeWithSIMDFloat3x3();
    v37 = a13;
    v36 = a14;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v35 = v43;
  }

  *a4 = v14;
  *(a4 + 8) = v44;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = a9;
  *(a4 + 56) = a10;
  *(a4 + 64) = a11;
  *(a4 + 72) = a12;
  *(a4 + 80) = v30;
  *(a4 + 96) = v31;
  *(a4 + 104) = v32;
  *(a4 + 120) = v33;
  *(a4 + 128) = v34;
  *(a4 + 144) = v35;
  *(a4 + 152) = v37;
  *(a4 + 160) = v36;
  return result;
}

__n128 sub_26F465CC0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 boundingQuad];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 originalBoundingQuad];
    if (v6)
    {
      v7 = v6;

      v5 = v7;
    }

    [v5 topLeft];
    v45 = v9;
    v46 = v8;
    [v5 topRight];
    v43 = v11;
    v44 = v10;
    [v5 bottomLeft];
    v41 = v13;
    v42 = v12;
    [v5 bottomRight];
    v15 = v14;
    v17 = v16;
    [a1 baselineAngle];
    v19 = v18;
    v20 = [a1 originalBoundingQuad];
    if (v20)
    {
      [a1 boundingQuadHomography];
      v37 = v21;
    }

    v22 = [a1 originalBoundingQuad];
    if (v22)
    {
      v23 = v22;
      [v22 normalizationSize];
      v25 = v24;
      v27 = v26;
    }

    else
    {
      v25 = *MEMORY[0x277CBF3A8];
      v27 = *(MEMORY[0x277CBF3A8] + 8);
    }

    v28 = -v19;
    if (v20)
    {
      CATransform3DMakeWithSIMDFloat3x3();
      v29 = v48;
      v39 = v49;
      v40 = v47;
      v30 = v50.n128_u64[0];
      v38 = v51;
      v31 = v52;
    }

    else
    {
      v29 = *(MEMORY[0x277CD9DE8] + 16);
      v39 = *(MEMORY[0x277CD9DE8] + 32);
      v40 = *MEMORY[0x277CD9DE8];
      v30 = *(MEMORY[0x277CD9DE8] + 48);
      v38 = *(MEMORY[0x277CD9DE8] + 64);
      v31 = *(MEMORY[0x277CD9DE8] + 80);
      v25 = 1.0;
      v27 = 1.0;
    }

    *&v47 = v28;
    BYTE8(v47) = 0;
    *&v48 = v46;
    *(&v48 + 1) = v45;
    *&v49 = v44;
    *(&v49 + 1) = v43;
    v50.n128_u64[0] = v42;
    v50.n128_u64[1] = v41;
    *&v51 = v15;
    *(&v51 + 1) = v17;
    v52 = v40;
    *v53 = v29;
    *&v53[8] = v39;
    v54 = v38;
    *&v53[24] = v30;
    *v55 = v31;
    *&v55[8] = v25;
    *&v55[16] = v27;
    sub_26F467728(&v47);
  }

  else
  {

    sub_26F467700(&v47);
  }

  v32 = *v55;
  *(a2 + 128) = v54;
  *(a2 + 144) = v32;
  *(a2 + 153) = *&v55[9];
  v33 = v52;
  *(a2 + 64) = v51;
  *(a2 + 80) = v33;
  v34 = *&v53[16];
  *(a2 + 96) = *v53;
  *(a2 + 112) = v34;
  v35 = v48;
  *a2 = v47;
  *(a2 + 16) = v35;
  result = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = result;
  return result;
}

double sub_26F465F88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11D8, &qword_26F4AA470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v59 - v6;
  v8 = sub_26F49F7B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecognizedItem.originalBounds.getter(v7);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_26F49F7C8();
    if (v13(v7, 1, v8) != 1)
    {
      sub_26F467698(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  RecognizedItem.homography.getter(v82);
  v60 = v82[0];
  v62 = v82[1];
  v61 = *&v82[2];
  v63 = v82[4];
  sub_26F49F778();
  v71 = v14;
  v70 = v15;
  sub_26F49F798();
  v69 = v16;
  v68 = v17;
  sub_26F49F738();
  v67 = v18;
  v66 = v19;
  sub_26F49F758();
  v65 = v20;
  v64 = v21;
  v22 = RecognizedItem.baselineAngle.getter();
  LODWORD(v24) = v23;
  *&v25 = COERCE_DOUBLE(RecognizedItem.homographySize.getter());
  v28 = *MEMORY[0x277CBF3A8];
  v29 = *(MEMORY[0x277CBF3A8] + 8);
  v81 = v24 & 1;
  v30 = v83;
  if (v83)
  {
    v31 = *(MEMORY[0x277CD9DE8] + 8);
    v63 = *MEMORY[0x277CD9DE8];
    v62 = v31;
    v61 = *(MEMORY[0x277CD9DE8] + 16);
    v32 = *(MEMORY[0x277CD9DE8] + 32);
    v33 = *(MEMORY[0x277CD9DE8] + 40);
    v34 = *(MEMORY[0x277CD9DE8] + 48);
    v35 = *(MEMORY[0x277CD9DE8] + 64);
    v36 = *(MEMORY[0x277CD9DE8] + 72);
    v37 = *(MEMORY[0x277CD9DE8] + 80);
  }

  else
  {
    v38 = v8;
    v39 = v25;
    LODWORD(v60) = v24;
    v24 = v22;
    v40 = a1;
    v41 = v9;
    v42 = v26;
    v43 = v27;
    v44 = v12;
    v45 = v83;
    CATransform3DMakeWithSIMDFloat3x3();
    v30 = v45;
    v12 = v44;
    v27 = v43;
    v26 = v42;
    v9 = v41;
    a1 = v40;
    v22 = v24;
    LOBYTE(v24) = v60;
    v25 = v39;
    v8 = v38;
    v63 = v72;
    v62 = v73;
    v61 = v74;
    v32 = v75;
    v33 = v76;
    v34 = v77;
    v35 = v78;
    v36 = v79;
    v37 = v80;
  }

  v46 = v26;
  if (v27)
  {
    v46 = v29;
  }

  v47 = *&v25;
  if (v27)
  {
    v47 = v28;
  }

  if (v30)
  {
    v48 = 1.0;
  }

  else
  {
    v48 = v47;
  }

  if (v30)
  {
    v49 = 1.0;
  }

  else
  {
    v49 = v46;
  }

  if (v24)
  {
    v50 = v22;
  }

  else
  {
    v50 = v22 ^ 0x8000000000000000;
  }

  v51 = sub_26F49F7D8();
  (*(*(v51 - 8) + 8))(a1, v51);
  (*(v9 + 8))(v12, v8);
  v52 = v81;
  *a2 = v50;
  *(a2 + 8) = v52;
  v53 = v70;
  *(a2 + 16) = v71;
  *(a2 + 24) = v53;
  v54 = v68;
  *(a2 + 32) = v69;
  *(a2 + 40) = v54;
  v55 = v66;
  *(a2 + 48) = v67;
  *(a2 + 56) = v55;
  v56 = v64;
  *(a2 + 64) = v65;
  *(a2 + 72) = v56;
  v57 = v62;
  *(a2 + 80) = v63;
  *(a2 + 88) = v57;
  result = v61;
  *(a2 + 96) = v61;
  *(a2 + 104) = v32;
  *(a2 + 112) = v33;
  *(a2 + 120) = v34;
  *(a2 + 128) = v35;
  *(a2 + 136) = v36;
  *(a2 + 144) = v37;
  *(a2 + 152) = v48;
  *(a2 + 160) = v49;
  return result;
}

double sub_26F466434(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = *(v4 + 2);
  v9 = *(v4 + 3);
  v10 = *(v4 + 4);
  v11 = *(v4 + 5);
  v12 = *(v4 + 6);
  v13 = *(v4 + 7);
  v14 = *(v4 + 8);
  v15 = *(v4 + 9);
  if (a4)
  {
    v16 = v4[6];
  }

  else
  {
    v16 = v4[2];
  }

  if (a4)
  {
    v17 = v4[7];
  }

  else
  {
    v17 = v4[3];
  }

  if (a4)
  {
    v18 = v4[2];
  }

  else
  {
    v18 = v4[4];
  }

  if (a4)
  {
    v19 = v4[3];
  }

  else
  {
    v19 = v4[5];
  }

  if (a4)
  {
    v20 = v4[8];
  }

  else
  {
    v20 = v4[6];
  }

  if (a4)
  {
    v21 = v4[9];
  }

  else
  {
    v21 = v4[7];
  }

  if (a4)
  {
    v22 = v4[4];
  }

  else
  {
    v22 = v4[8];
  }

  if (a4)
  {
    v23 = v4[5];
  }

  else
  {
    v23 = v4[9];
  }

  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v46 = v22;
  v47 = v23;
  if (sub_26F465174())
  {
    if (a3)
    {
      if (qword_280F66CB0 != -1)
      {
        swift_once();
      }

      v25 = sub_26F49DCA8();
      __swift_project_value_buffer(v25, qword_280F67ED0);
      v26 = sub_26F49DC88();
      v27 = sub_26F49FDD8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_26F39E000, v26, v27, "Bounding box request with nil fit results in a normalized rect", v28, 2u);
        MEMORY[0x274391F70](v28, -1, -1);
      }
    }

    else
    {
      *&v24.f64[0] = a1;
      sub_26F465208(&v33, v24, *&a2);
      v17 = v33.f64[1];
      v16 = v33.f64[0];
      v18 = v34;
      v19 = v35;
      v20 = v36;
      v21 = v37;
      v22 = v38;
      v23 = v39;
    }
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D78578]) initWithTopLeft:v16 topRight:v17 bottomLeft:v18 bottomRight:{v19, v20, v21, v22, v23}];
  [v29 minimumBoundingRectWithoutRotation];
  v31 = v30;

  return v31;
}

uint64_t PageBounds.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1140, &qword_26F4AA160);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = v2[19];
  v12 = v2[20];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F466E14();
  sub_26F4A0598();
  *&v21 = v9;
  BYTE8(v21) = v10;
  v26 = 0;
  sub_26F466E68();
  v14 = v20[1];
  sub_26F4A0388();
  if (!v14)
  {
    v15 = *(v2 + 2);
    v21 = *(v2 + 1);
    v22 = v15;
    v16 = *(v2 + 4);
    v23 = *(v2 + 3);
    v24 = v16;
    v26 = 1;
    sub_26F466EBC();
    sub_26F4A03F8();
    v17 = *(v2 + 8);
    v23 = *(v2 + 7);
    v24 = v17;
    v25 = v2[18];
    v18 = *(v2 + 6);
    v21 = *(v2 + 5);
    v22 = v18;
    v26 = 2;
    sub_26F466F10();
    sub_26F4A03F8();
    *&v21 = v11;
    *(&v21 + 1) = v12;
    v26 = 3;
    type metadata accessor for CGSize(0);
    sub_26F467650(&qword_2806E1168, type metadata accessor for CGSize);
    sub_26F4A03F8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PageBounds.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1170, &qword_26F4AA168);
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F466E14();
  sub_26F4A0588();
  if (!v2)
  {
    v10 = v5;
    LOBYTE(v29) = 0;
    sub_26F466F64();
    v11 = v40;
    sub_26F4A02E8();
    v12 = v23;
    v39 = BYTE8(v23);
    v28 = 1;
    sub_26F466FB8();
    sub_26F4A0348();
    v19 = v12;
    *&v38[7] = v29;
    *&v38[23] = v30;
    *&v38[39] = v31;
    *&v38[55] = v32;
    v22 = 2;
    sub_26F46700C();
    sub_26F4A0348();
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v33 = v23;
    v34 = v24;
    type metadata accessor for CGSize(0);
    v20 = 3;
    sub_26F467650(&qword_2806E1190, type metadata accessor for CGSize);
    sub_26F4A0348();
    (*(v10 + 8))(v8, v11);
    v14 = *v38;
    *(a2 + 25) = *&v38[16];
    v15 = *&v38[48];
    *(a2 + 41) = *&v38[32];
    v16 = v39;
    *a2 = v19;
    *(a2 + 8) = v16;
    *(a2 + 57) = v15;
    *(a2 + 72) = *&v38[63];
    *(a2 + 9) = v14;
    *(a2 + 144) = v37;
    v17 = v36;
    *(a2 + 112) = v35;
    *(a2 + 128) = v17;
    v18 = v34;
    *(a2 + 80) = v33;
    *(a2 + 96) = v18;
    *(a2 + 152) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL _s13TranslationUI10PageBoundsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2.f64[0] = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 24);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 128);
  v27[2] = *(a1 + 112);
  v27[3] = v9;
  v28 = *(a1 + 144);
  v10 = *(a1 + 96);
  v27[0] = *(a1 + 80);
  v27[1] = v10;
  v12 = *(a1 + 152);
  v11 = *(a1 + 160);
  v13.f64[0] = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 40);
  v17 = *(a2 + 24);
  v18 = *(a2 + 56);
  v19 = *(a2 + 72);
  v20 = *(a2 + 128);
  v29[2] = *(a2 + 112);
  v29[3] = v20;
  v30 = *(a2 + 144);
  v21 = *(a2 + 96);
  v29[0] = *(a2 + 80);
  v29[1] = v21;
  v23 = *(a2 + 152);
  v22 = *(a2 + 160);
  result = 0;
  if ((v3 & 1) == 0)
  {
    if (v14)
    {
      return result;
    }

    v2.f64[1] = v4;
    v13.f64[1] = v15;
    if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v2, v13), vceqq_f64(v6, v17)), vuzp1q_s32(vceqq_f64(v5, v16), vceqq_f64(v7, v18))))) & 1) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 != v15)
  {
    v14 = 0;
  }

  if (v14 == 1 && v6.f64[0] == v17.f64[0])
  {
    v25 = vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v17), vceqq_f64(v5, v16)));
    if (v25.i8[2] & 1) != 0 && v5.f64[0] == v16.f64[0] && (v25.i8[6])
    {
      v26 = vmovn_s64(vceqq_f64(v7, v18));
      if (v26.i8[0] & 1) != 0 && (v26.i8[4])
      {
LABEL_14:
        if (v8 == v19)
        {
          if (MEMORY[0x27438F620](v27, v29))
          {
            return v11 == v22 && v12 == v23;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_26F466E14()
{
  result = qword_2806E1148;
  if (!qword_2806E1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1148);
  }

  return result;
}

unint64_t sub_26F466E68()
{
  result = qword_2806E1150;
  if (!qword_2806E1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1150);
  }

  return result;
}

unint64_t sub_26F466EBC()
{
  result = qword_2806E1158;
  if (!qword_2806E1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1158);
  }

  return result;
}

unint64_t sub_26F466F10()
{
  result = qword_2806E1160;
  if (!qword_2806E1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1160);
  }

  return result;
}

unint64_t sub_26F466F64()
{
  result = qword_2806E1178;
  if (!qword_2806E1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1178);
  }

  return result;
}

unint64_t sub_26F466FB8()
{
  result = qword_2806E1180;
  if (!qword_2806E1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1180);
  }

  return result;
}

unint64_t sub_26F46700C()
{
  result = qword_2806E1188;
  if (!qword_2806E1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1188);
  }

  return result;
}