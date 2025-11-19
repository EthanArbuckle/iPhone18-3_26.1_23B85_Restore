void sub_26467ADF4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_264785324();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26467AE48()
{
  if (!qword_27FF766C0)
  {
    type metadata accessor for SafetyCacheMapViewModel(255);
    sub_264681990(&qword_27FF75700, type metadata accessor for SafetyCacheMapViewModel);
    v0 = sub_2647841A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF766C0);
    }
  }
}

void sub_26467AEDC()
{
  if (!qword_27FF766C8)
  {
    type metadata accessor for SafetyCacheViewModel();
    sub_264681990(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel);
    v0 = sub_2647841A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF766C8);
    }
  }
}

void sub_26467AF70()
{
  if (!qword_27FF766D0)
  {
    type metadata accessor for SafetyCacheDetailViewModel();
    v0 = sub_264785B44();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF766D0);
    }
  }
}

uint64_t sub_26467AFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26467B0BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26467B1A4()
{
  sub_26467ADF4(319, &qword_27FF766A0, &qword_27FF766A8, &unk_26478AA80);
  if (v0 <= 0x3F)
  {
    sub_26467ADF4(319, &qword_27FF766B0, &qword_27FF766B8, &qword_26478F190);
    if (v1 <= 0x3F)
    {
      sub_26467AE48();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SafetyCacheDetailViewModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26467B2A4@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v2 = type metadata accessor for PushingSafetyCacheMapContentView(0);
  v3 = v2 - 8;
  v111 = *(v2 - 8);
  v4 = *(v111 + 64);
  MEMORY[0x28223BE20](v2);
  v119 = v5;
  v120 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v93 = *(v94 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v8 = *(*(v116 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v116);
  v117 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = &v87 - v11;
  v102 = sub_264783E24();
  v101 = *(v102 - 1);
  v12 = *(v101 + 8);
  MEMORY[0x28223BE20](v102);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
  v15 = *(*(v92 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v92);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v87 - v19;
  v21 = type metadata accessor for SafetyCacheMapView(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v103 = &v87 - v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766F0, &qword_26478AB60);
  v27 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - v28;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766F8, &qword_26478AB68);
  v107 = *(v108 - 8);
  v29 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - v30;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76700, &qword_26478AB70);
  v110 = *(v112 - 8);
  v31 = *(v110 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v87 - v32;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76708, &qword_26478AB78);
  v114 = *(v115 - 8);
  v33 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v87 - v34;
  v35 = *(v1 + *(v3 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v36 = v14;

  v37 = v122;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_264785314();
  v38 = *(v3 + 28);
  v121 = v1;
  v39 = (v1 + v38);
  v40 = *(v39 + 32);
  v41 = *(v39 + 5);
  v42 = v39[1];
  v127 = *v39;
  v128 = v42;
  v129 = v40;
  v130 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76710, &qword_26478ABC8);
  sub_264785314();
  v43 = v122;
  v96 = v123;
  v97 = v125;
  v98 = v124;
  v95 = v126;
  *v25 = v37;
  sub_26460CCE8(v20, v25 + v21[5], &qword_27FF766E8, &unk_26478F160);
  sub_264783DE4();
  sub_26460CCE8(v20, v18, &qword_27FF766E8, &unk_26478F160);
  v44 = sub_264783E14();
  v45 = sub_2647859F4();
  if (os_log_type_enabled(v44, v45))
  {
    v89 = v43;
    v90 = v36;
    v46 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v122 = v88;
    *v46 = 136642819;
    v47 = v99;
    v48 = v92;
    v92 = v18;
    MEMORY[0x26673F100](v48);
    if ((*(v93 + 48))(v47, 1, v94))
    {
      sub_26460CD50(v99, &qword_27FF766A8, &unk_26478AA80);
      v49 = 0;
      v50 = 0xE000000000000000;
    }

    else
    {
      v51 = v99;
      v52 = v91;
      sub_26468121C(v99, v91, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_26460CD50(v51, &qword_27FF766A8, &unk_26478AA80);
      v49 = sub_2646E9D5C();
      v50 = v53;
      sub_2646819D8(v52, type metadata accessor for SafetyCacheMapView.Annotation);
    }

    sub_26460CD50(v92, &qword_27FF766E8, &unk_26478F160);
    v54 = sub_2646DF234(v49, v50, &v122);

    *(v46 + 4) = v54;
    _os_log_impl(&dword_264605000, v44, v45, "selected annotation is %{sensitive}s", v46, 0xCu);
    v55 = v88;
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x266740650](v55, -1, -1);
    MEMORY[0x266740650](v46, -1, -1);

    (*(v101 + 1))(v90, v102);
    sub_26460CD50(v20, &qword_27FF766E8, &unk_26478F160);
    v43 = v89;
  }

  else
  {

    sub_26460CD50(v18, &qword_27FF766E8, &unk_26478F160);
    (*(v101 + 1))(v36, v102);
    sub_26460CD50(v20, &qword_27FF766E8, &unk_26478F160);
  }

  v56 = v25 + v21[6];
  v57 = v96;
  *v56 = v43;
  *(v56 + 1) = v57;
  v58 = v97;
  *(v56 + 1) = v98;
  *(v56 + 2) = v58;
  v56[48] = v95;
  *(v25 + v21[7]) = 0;
  *(v25 + v21[8]) = 1;
  *(v25 + v21[9]) = 1;
  *(v25 + v21[10]) = 1;
  *(v25 + v21[11]) = 1;
  v59 = v103;
  sub_264680D14(v25, v103, type metadata accessor for SafetyCacheMapView);
  v102 = type metadata accessor for PushingSafetyCacheMapContentView;
  v60 = v120;
  sub_26468121C(v121, v120, type metadata accessor for PushingSafetyCacheMapContentView);
  v111 = *(v111 + 80);
  v61 = (v111 + 16) & ~v111;
  v99 = v61;
  v62 = swift_allocObject();
  v101 = type metadata accessor for PushingSafetyCacheMapContentView;
  sub_264680D14(v60, v62 + v61, type metadata accessor for PushingSafetyCacheMapContentView);
  v63 = v100;
  sub_264680D14(v59, v100, type metadata accessor for SafetyCacheMapView);
  v64 = v105;
  v65 = (v63 + *(v105 + 36));
  *v65 = sub_264680D7C;
  v65[1] = v62;
  v66 = sub_264680DA8();
  v65[2] = 0;
  v65[3] = 0;
  v67 = v106;
  sub_264785074();
  sub_26460CD50(v63, &qword_27FF766F0, &qword_26478AB60);
  sub_2647854D4();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76720, &qword_26478ABD0);
  v122 = v64;
  v123 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = sub_264680E64();
  v71 = v109;
  v72 = v108;
  sub_264785114();
  v73 = (*(v107 + 8))(v67, v72);
  MEMORY[0x28223BE20](v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76730, &unk_26478ABD8);
  v122 = v72;
  v123 = MEMORY[0x277CE1350];
  *&v124 = v68;
  *(&v124 + 1) = OpaqueTypeConformance2;
  *&v125 = MEMORY[0x277CE1340];
  *(&v125 + 1) = v70;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = sub_26460CDF0(&qword_27FF76738, &qword_27FF76730, &unk_26478ABD8);
  v77 = v113;
  v78 = v112;
  sub_2647850E4();
  (*(v110 + 8))(v71, v78);
  v79 = v117;
  v80 = v121;
  sub_2647852F4();
  v81 = v80;
  v82 = v120;
  sub_26468121C(v81, v120, v102);
  v83 = v99;
  v84 = swift_allocObject();
  sub_264680D14(v82, v84 + v83, v101);
  v122 = v78;
  v123 = v74;
  *&v124 = v75;
  *(&v124 + 1) = v76;
  swift_getOpaqueTypeConformance2();
  sub_264681168();
  v85 = v115;
  sub_264785104();

  sub_26460CD50(v79, &qword_27FF766A8, &unk_26478AA80);
  return (*(v114 + 8))(v77, v85);
}

uint64_t sub_26467C04C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_26460CCE8(v6, v4, &qword_27FF766A8, &unk_26478AA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_264785304();
  return sub_26460CD50(v6, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_26467C17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76750, &qword_26478AC30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v7 = type metadata accessor for PushingSafetyCacheMapContentView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = sub_264784934();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76758, &qword_26478AC38);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  sub_264784924();
  sub_26468128C();
  sub_264783FE4();
  sub_26468121C(a1, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PushingSafetyCacheMapContentView);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_264680D14(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PushingSafetyCacheMapContentView);
  v19 = &v6[*(v3 + 48)];
  (*(v13 + 16))(v6, v16, v12);
  *v19 = sub_2646812E0;
  v19[1] = v18;
  sub_264784754();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_26467C454@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  *a1 = result;
  a1[1] = v9;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t sub_26467C5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76768, &qword_26478AC40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  v6 = *(a1 + *(type metadata accessor for PushingSafetyCacheMapContentView(0) + 28));
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = sub_264783EC4();
  sub_26467C6C8(v5);
  sub_26460CD50(v5, &qword_27FF76768, &qword_26478AC40);
  v7(v9, 0);
}

uint64_t sub_26467C6C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    v14 = type metadata accessor for SafetyMonitorUINavigationPathItem();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a1;
    v12 = 1;
    goto LABEL_6;
  }

  v4 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2646813D4(v3);
    v3 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v6 = v3[2];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = v6 - 1;
  v8 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v15 = *(v8 - 8);
  v9 = v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v7;
  v3[2] = v7;
  *v1 = v3;
  sub_264680D14(v9, a1, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v10 = *(v15 + 56);
  v11 = a1;
  v12 = 0;
  v13 = v8;
LABEL_6:

  return v10(v11, v12, 1, v13);
}

uint64_t sub_26467C830(uint64_t a1)
{
  v2 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_2647852F4();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_26460CD50(v13, &qword_27FF766A8, &unk_26478AA80);
  }

  sub_264680D14(v13, v18, type metadata accessor for SafetyCacheMapView.Annotation);
  v20 = *(a1 + *(type metadata accessor for PushingSafetyCacheMapContentView(0) + 28));
  sub_26468121C(v18, v11, type metadata accessor for SafetyCacheMapView.Annotation);
  (*(v15 + 56))(v11, 0, 1, v14);
  sub_26460CCE8(v11, v6, &qword_27FF766A8, &unk_26478AA80);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v21 - 8) + 56))(v6, 0, 3, v21);
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = sub_264783EC4();
  v23 = v22;
  v24 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v24;
  v26 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_2647031A4(0, v24[2] + 1, 1, v24);
    *v23 = v24;
  }

  v28 = v24[2];
  v27 = v24[3];
  if (v28 >= v27 >> 1)
  {
    v24 = sub_2647031A4(v27 > 1, v28 + 1, 1, v24);
    *v23 = v24;
  }

  v24[2] = v28 + 1;
  sub_264680D14(v6, v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v28, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v30(v31, 0);

  sub_26460CD50(v11, &qword_27FF766A8, &unk_26478AA80);
  return sub_2646819D8(v18, type metadata accessor for SafetyCacheMapView.Annotation);
}

uint64_t sub_26467CC50@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v2 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v3 = v2 - 8;
  v111 = *(v2 - 8);
  v4 = *(v111 + 64);
  MEMORY[0x28223BE20](v2);
  v119 = v5;
  v120 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v93 = *(v94 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v8 = *(*(v116 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v116);
  v117 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = &v87 - v11;
  v102 = sub_264783E24();
  v101 = *(v102 - 1);
  v12 = *(v101 + 8);
  MEMORY[0x28223BE20](v102);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
  v15 = *(*(v92 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v92);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v87 - v19;
  v21 = type metadata accessor for SafetyCacheMapView(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v103 = &v87 - v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766F0, &qword_26478AB60);
  v27 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - v28;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766F8, &qword_26478AB68);
  v107 = *(v108 - 8);
  v29 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - v30;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76700, &qword_26478AB70);
  v110 = *(v112 - 8);
  v31 = *(v110 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v87 - v32;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76770, &qword_26478AC48);
  v114 = *(v115 - 8);
  v33 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v87 - v34;
  v35 = *(v1 + *(v3 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v14;
  sub_264783ED4();

  v37 = v122;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_264785314();
  v38 = *(v3 + 28);
  v121 = v1;
  v39 = (v1 + v38);
  v40 = *(v39 + 32);
  v41 = *(v39 + 5);
  v42 = v39[1];
  v127 = *v39;
  v128 = v42;
  v129 = v40;
  v130 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76710, &qword_26478ABC8);
  sub_264785314();
  v43 = v122;
  v96 = v123;
  v97 = v125;
  v98 = v124;
  v95 = v126;
  *v25 = v37;
  sub_26460CCE8(v20, v25 + v21[5], &qword_27FF766E8, &unk_26478F160);
  sub_264783DE4();
  sub_26460CCE8(v20, v18, &qword_27FF766E8, &unk_26478F160);
  v44 = sub_264783E14();
  v45 = sub_2647859F4();
  if (os_log_type_enabled(v44, v45))
  {
    v89 = v43;
    v90 = v36;
    v46 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v122 = v88;
    *v46 = 136642819;
    v47 = v99;
    v48 = v92;
    v92 = v18;
    MEMORY[0x26673F100](v48);
    if ((*(v93 + 48))(v47, 1, v94))
    {
      sub_26460CD50(v99, &qword_27FF766A8, &unk_26478AA80);
      v49 = 0;
      v50 = 0xE000000000000000;
    }

    else
    {
      v51 = v99;
      v52 = v91;
      sub_26468121C(v99, v91, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_26460CD50(v51, &qword_27FF766A8, &unk_26478AA80);
      v49 = sub_2646E9D5C();
      v50 = v53;
      sub_2646819D8(v52, type metadata accessor for SafetyCacheMapView.Annotation);
    }

    sub_26460CD50(v92, &qword_27FF766E8, &unk_26478F160);
    v54 = sub_2646DF234(v49, v50, &v122);

    *(v46 + 4) = v54;
    _os_log_impl(&dword_264605000, v44, v45, "selected annotation is %{sensitive}s", v46, 0xCu);
    v55 = v88;
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x266740650](v55, -1, -1);
    MEMORY[0x266740650](v46, -1, -1);

    (*(v101 + 1))(v90, v102);
    sub_26460CD50(v20, &qword_27FF766E8, &unk_26478F160);
    v43 = v89;
  }

  else
  {

    sub_26460CD50(v18, &qword_27FF766E8, &unk_26478F160);
    (*(v101 + 1))(v36, v102);
    sub_26460CD50(v20, &qword_27FF766E8, &unk_26478F160);
  }

  v56 = v25 + v21[6];
  v57 = v96;
  *v56 = v43;
  *(v56 + 1) = v57;
  v58 = v97;
  *(v56 + 1) = v98;
  *(v56 + 2) = v58;
  v56[48] = v95;
  *(v25 + v21[7]) = 1;
  *(v25 + v21[8]) = 1;
  *(v25 + v21[9]) = 1;
  *(v25 + v21[10]) = 1;
  *(v25 + v21[11]) = 1;
  v59 = v103;
  sub_264680D14(v25, v103, type metadata accessor for SafetyCacheMapView);
  v102 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView;
  v60 = v120;
  sub_26468121C(v121, v120, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  v111 = *(v111 + 80);
  v61 = (v111 + 16) & ~v111;
  v99 = v61;
  v62 = swift_allocObject();
  v101 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView;
  sub_264680D14(v60, v62 + v61, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  v63 = v100;
  sub_264680D14(v59, v100, type metadata accessor for SafetyCacheMapView);
  v64 = v105;
  v65 = (v63 + *(v105 + 36));
  *v65 = sub_2646813EC;
  v65[1] = v62;
  v66 = sub_264680DA8();
  v65[2] = 0;
  v65[3] = 0;
  v67 = v106;
  sub_264785074();
  sub_26460CD50(v63, &qword_27FF766F0, &qword_26478AB60);
  sub_2647854D4();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76720, &qword_26478ABD0);
  v122 = v64;
  v123 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = sub_264680E64();
  v71 = v109;
  v72 = v108;
  sub_264785114();
  v73 = (*(v107 + 8))(v67, v72);
  MEMORY[0x28223BE20](v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76778, &qword_26478AC50);
  v122 = v72;
  v123 = MEMORY[0x277CE1350];
  *&v124 = v68;
  *(&v124 + 1) = OpaqueTypeConformance2;
  *&v125 = MEMORY[0x277CE1340];
  *(&v125 + 1) = v70;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = sub_26460CDF0(&qword_27FF76780, &qword_27FF76778, &qword_26478AC50);
  v77 = v113;
  v78 = v112;
  sub_2647850E4();
  (*(v110 + 8))(v71, v78);
  v79 = v117;
  v80 = v121;
  sub_2647852F4();
  v81 = v80;
  v82 = v120;
  sub_26468121C(v81, v120, v102);
  v83 = v99;
  v84 = swift_allocObject();
  sub_264680D14(v82, v84 + v83, v101);
  v122 = v78;
  v123 = v74;
  *&v124 = v75;
  *(&v124 + 1) = v76;
  swift_getOpaqueTypeConformance2();
  sub_264681168();
  v85 = v115;
  sub_264785104();

  sub_26460CD50(v79, &qword_27FF766A8, &unk_26478AA80);
  return (*(v114 + 8))(v77, v85);
}

uint64_t sub_26467D9F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  sub_26468121C(a1 + *(v9 + 36), v8, type metadata accessor for SafetyCacheMapView.Annotation);
  v10 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_26460CCE8(v8, v6, &qword_27FF766A8, &unk_26478AA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_264785304();
  return sub_26460CD50(v8, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_26467DB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264784294();
  v5 = sub_264784C34();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766F8, &qword_26478AB68);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76720, &qword_26478ABD0);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_26467DC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76788, &qword_26478AC58);
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v27 - v4;
  v6 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v31 = *(v6 - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76790, &qword_26478AC60);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = &v27 - v10;
  v12 = sub_264784934();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76798, &qword_26478AC68);
  v14 = *(v28 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v28);
  v17 = &v27 - v16;
  sub_264784914();
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767A0, &qword_26478AC70);
  sub_26460CDF0(&qword_27FF767A8, &qword_27FF767A0, &qword_26478AC70);
  sub_2647842D4();
  sub_264784924();
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767B0, &qword_26478AC78);
  sub_26468164C();
  sub_264783FE4();
  v18 = v29;
  sub_26468121C(a1, v29, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  v19 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v20 = swift_allocObject();
  sub_264680D14(v18, v20 + v19, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  v21 = *(v33 + 48);
  v22 = &v5[*(v33 + 64)];
  v23 = v28;
  (*(v14 + 16))(v5, v17, v28);
  v24 = &v5[v21];
  v25 = v32;
  (*(v8 + 16))(v24, v11, v32);
  *v22 = sub_2646816D0;
  v22[1] = v20;
  sub_264784754();
  (*(v8 + 8))(v11, v25);
  return (*(v14 + 8))(v17, v23);
}

uint64_t sub_26467E04C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D8, &qword_26478ACE8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767E0, &qword_26478ACF0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  sub_26467E278(&v20 - v14);
  sub_26467E690(v8);
  sub_26460CCE8(v15, v13, &qword_27FF767E0, &qword_26478ACF0);
  sub_26460CCE8(v8, v6, &qword_27FF767D8, &qword_26478ACE8);
  sub_26460CCE8(v13, a1, &qword_27FF767E0, &qword_26478ACF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767E8, &unk_26478ACF8);
  v17 = a1 + v16[12];
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_26460CCE8(v6, a1 + v16[16], &qword_27FF767D8, &qword_26478ACE8);
  v18 = a1 + v16[20];
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_26460CD50(v8, &qword_27FF767D8, &qword_26478ACE8);
  sub_26460CD50(v15, &qword_27FF767E0, &qword_26478ACF0);
  sub_26460CD50(v6, &qword_27FF767D8, &qword_26478ACE8);
  return sub_26460CD50(v13, &qword_27FF767E0, &qword_26478ACF0);
}

uint64_t sub_26467E278@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767F8, &qword_26478AD18);
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_2647852F4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26460CD50(v11, &qword_27FF766A8, &unk_26478AA80);
    v19 = 1;
    v21 = v31;
    v20 = v32;
  }

  else
  {
    sub_264680D14(v11, v18, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_26468121C(v1, &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    sub_26468121C(v18, v16, type metadata accessor for SafetyCacheMapView.Annotation);
    v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v23 = (v3 + *(v13 + 80) + v22) & ~*(v13 + 80);
    v24 = swift_allocObject();
    sub_264680D14(v4, v24 + v22, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    sub_264680D14(v16, v24 + v23, type metadata accessor for SafetyCacheMapView.Annotation);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76800, &qword_26478AD20);
    sub_264681DE8();
    v25 = v30;
    sub_264785334();
    sub_2646819D8(v18, type metadata accessor for SafetyCacheMapView.Annotation);
    v27 = v31;
    v26 = v32;
    (*(v5 + 32))(v32, v25, v31);
    v19 = 0;
    v20 = v26;
    v21 = v27;
  }

  return (*(v5 + 56))(v20, v19, 1, v21);
}

uint64_t sub_26467E690@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_2647852F4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26460CD50(v11, &qword_27FF766A8, &unk_26478AA80);
    v19 = 1;
    v21 = v32;
    v20 = v33;
  }

  else
  {
    sub_264680D14(v11, v18, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_26468121C(v1, &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    sub_26468121C(v18, v16, type metadata accessor for SafetyCacheMapView.Annotation);
    v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v23 = (v3 + *(v13 + 80) + v22) & ~*(v13 + 80);
    v24 = swift_allocObject();
    sub_264680D14(v4, v24 + v22, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    sub_264680D14(v16, v24 + v23, type metadata accessor for SafetyCacheMapView.Annotation);
    v25 = v31;
    sub_264785334();
    sub_2646819D8(v18, type metadata accessor for SafetyCacheMapView.Annotation);
    v26 = v33;
    v27 = v25;
    v28 = v32;
    (*(v5 + 32))(v33, v27, v32);
    v19 = 0;
    v20 = v26;
    v21 = v28;
  }

  return (*(v5 + 56))(v20, v19, 1, v21);
}

uint64_t sub_26467EA98(uint64_t a1)
{
  v2 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_264784AE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_264784AD4();
  sub_26468121C(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_264680D14(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  (*(v6 + 16))(v10, v12, v5);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2646816FC;
  *(v15 + 24) = v14;
  sub_264681990(&qword_27FF76598, MEMORY[0x277CE0818]);
  sub_26468128C();
  sub_264784024();
  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_26467ED2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76768, &qword_26478AC40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  if (*(a1 + *(type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0) + 32)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = sub_264783EC4();
    sub_26467C6C8(v5);
    sub_26460CD50(v5, &qword_27FF76768, &qword_26478AC40);
    v6(v9, 0);
  }

  else
  {
    v8 = type metadata accessor for SafetyMonitorUINavigationPathItem();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    return sub_26460CD50(v5, &qword_27FF76768, &qword_26478AC40);
  }
}

uint64_t sub_26467EEA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_2647852F4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_26460CD50(v5, &qword_27FF766A8, &unk_26478AA80);
  }

  sub_264680D14(v5, v10, type metadata accessor for SafetyCacheMapView.Annotation);
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = (a1 + *(type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0) + 20));
  v15 = *(v14 + 32);
  v16 = *(v14 + 5);
  v17 = v14[1];
  v21 = *v14;
  v22 = v17;
  v23 = v15;
  v24 = v16;
  v18[1] = v12;
  v18[2] = v13;
  v19 = vdupq_n_s64(0x3F9999999999999AuLL);
  v20 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76710, &qword_26478ABC8);
  sub_264785304();
  sub_2646819D8(v10, type metadata accessor for SafetyCacheMapView.Annotation);
}

void sub_26467F0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v50 = sub_264783E24();
  v15 = *(v50 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v50);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783E04();
  sub_26468121C(a1, v14, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  sub_26468121C(a2, v7, type metadata accessor for SafetyCacheMapView.Annotation);
  v19 = sub_264783E14();
  v20 = sub_2647859F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v21 = 136315651;
    sub_26468121C(v14, v12, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    v22 = sub_264785764();
    v24 = v23;
    sub_2646819D8(v14, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    v25 = sub_2646DF234(v22, v24, &v52);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_2646DF234(0x4270614D6E65706FLL, 0xED00006E6F747475, &v52);
    *(v21 + 22) = 2085;
    v51 = *(v7 + 8);
    type metadata accessor for CLLocationCoordinate2D(0);
    v26 = sub_264785764();
    v28 = v27;
    sub_2646819D8(v7, type metadata accessor for SafetyCacheMapView.Annotation);
    v29 = sub_2646DF234(v26, v28, &v52);

    *(v21 + 24) = v29;
    _os_log_impl(&dword_264605000, v19, v20, "#SelectionPreservingSafetyCacheMapContentView, %s, %s: Open location: %{sensitive}s in maps.", v21, 0x20u);
    v30 = v49;
    swift_arrayDestroy();
    MEMORY[0x266740650](v30, -1, -1);
    MEMORY[0x266740650](v21, -1, -1);
  }

  else
  {

    sub_2646819D8(v7, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_2646819D8(v14, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  }

  (*(v15 + 8))(v18, v50);
  v31 = *(a2 + 8);
  v32 = *(a2 + 16);
  v33 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithCoordinate_];
  if (*a2)
  {
    v34 = [*a2 postalAddress];
    if (v34)
    {
      v35 = v34;
      v36 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithCoordinate:v34 postalAddress:{v31, v32}];

      v33 = v36;
    }
  }

  v37 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767F0, &unk_26478AD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889C0;
  v39 = *MEMORY[0x277CD4B80];
  *(inited + 32) = sub_264785724();
  *(inited + 40) = v40;
  v41 = [objc_opt_self() valueWithMKCoordinate_];
  *(inited + 72) = sub_264659B70(0, &qword_27FF76820, 0x277CCAE60);
  *(inited + 48) = v41;
  v42 = *MEMORY[0x277CD4B98];
  v43 = sub_264785724();
  v44 = MEMORY[0x277D83E88];
  *(inited + 80) = v43;
  *(inited + 88) = v45;
  *(inited + 120) = v44;
  *(inited + 96) = 0;
  v46 = *MEMORY[0x277CD4BA8];
  *(inited + 128) = sub_264785724();
  *(inited + 136) = v47;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  sub_264655958(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E70, &qword_264789800);
  swift_arrayDestroy();
  v48 = sub_264785604();

  [v37 openInMapsWithLaunchOptions_];
}

uint64_t sub_26467F6B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264785274();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76800, &qword_26478AD20) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76818, &qword_26478AD28) + 28);
  v5 = *MEMORY[0x277CE1048];
  v6 = sub_2647852B4();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

void sub_26467F79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v46 = sub_264783E24();
  v15 = *(v46 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v46);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783E04();
  sub_26468121C(a1, v14, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  sub_26468121C(a2, v7, type metadata accessor for SafetyCacheMapView.Annotation);
  v19 = sub_264783E14();
  v20 = sub_2647859F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v21 = 136315650;
    sub_26468121C(v14, v12, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    v22 = sub_264785764();
    v24 = v23;
    sub_2646819D8(v14, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    v25 = sub_2646DF234(v22, v24, &v48);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264795440, &v48);
    *(v21 + 22) = 2080;
    v47 = *(v7 + 8);
    type metadata accessor for CLLocationCoordinate2D(0);
    v26 = sub_264785764();
    v28 = v27;
    sub_2646819D8(v7, type metadata accessor for SafetyCacheMapView.Annotation);
    v29 = sub_2646DF234(v26, v28, &v48);

    *(v21 + 24) = v29;
    _os_log_impl(&dword_264605000, v19, v20, "#SelectionPreservingSafetyCacheMapContentView, %s, %s: Open navigation: %s in maps.", v21, 0x20u);
    v30 = v45;
    swift_arrayDestroy();
    MEMORY[0x266740650](v30, -1, -1);
    MEMORY[0x266740650](v21, -1, -1);
  }

  else
  {

    sub_2646819D8(v7, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_2646819D8(v14, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  }

  (*(v15 + 8))(v18, v46);
  v31 = *(a2 + 8);
  v32 = *(a2 + 16);
  v33 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithCoordinate_];
  if (*a2)
  {
    v34 = [*a2 postalAddress];
    if (v34)
    {
      v35 = v34;
      v36 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithCoordinate:v34 postalAddress:{v31, v32}];

      v33 = v36;
    }
  }

  v37 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767F0, &unk_26478AD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889E0;
  v39 = *MEMORY[0x277CD4B68];
  *(inited + 32) = sub_264785724();
  *(inited + 40) = v40;
  v41 = *MEMORY[0x277CD4B60];
  v42 = sub_264785724();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v42;
  *(inited + 56) = v43;
  sub_264655958(inited);
  swift_setDeallocating();
  sub_26460CD50(inited + 32, &qword_27FF75E70, &qword_264789800);
  v44 = sub_264785604();

  [v37 openInMapsWithLaunchOptions_];
}

uint64_t sub_26467FCF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264613FC4();
  result = sub_264784E44();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_26467FE68@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v42[0] = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = v42 - v7;
  v8 = sub_264783E24();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v42 - v18;
  v20 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  v21 = *(*(v20 - 1) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[1] = v3;
  v24 = *(v1 + *(v3 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_2647852F4();
  v25 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  if (!(*(*(v25 - 8) + 48))(v19, 1, v25))
  {
    v39 = v19[24];
    sub_26460CD50(v19, &qword_27FF766A8, &unk_26478AA80);
    if (v39 > 2)
    {
      v26 = v11;
      if ((v39 - 4) < 2)
      {
        goto LABEL_3;
      }

      v41 = &v23[v20[7]];
    }

    else
    {
      v26 = v11;
      if (v39)
      {
        v28 = v45;
        if (v39 == 1)
        {
          v40 = v20[5];
        }

        else
        {
          v40 = v20[6];
        }

        sub_26460CCE8(&v23[v40], a1, &qword_27FF767D0, &qword_26478AC98);
        goto LABEL_5;
      }

      v41 = v23;
    }

    sub_26460CCE8(v41, a1, &qword_27FF767D0, &qword_26478AC98);
    goto LABEL_4;
  }

  sub_26460CD50(v19, &qword_27FF766A8, &unk_26478AA80);
  v26 = v11;
LABEL_3:
  v27 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
LABEL_4:
  v28 = v45;
LABEL_5:
  sub_26460CCE8(a1, v15, &qword_27FF767D0, &qword_26478AC98);
  v29 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  if ((*(*(v29 - 8) + 48))(v15, 1, v29) == 1)
  {
    sub_26460CD50(v15, &qword_27FF767D0, &qword_26478AC98);
    sub_264783E04();
    sub_26468121C(v1, v28, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    v30 = sub_264783E14();
    v31 = sub_2647859F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46 = v33;
      *v32 = 136315394;
      sub_26468121C(v28, v42[0], type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
      v34 = sub_264785764();
      v36 = v35;
      sub_2646819D8(v28, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
      v37 = sub_2646DF234(v34, v36, &v46);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_2646DF234(0xD00000000000001DLL, 0x8000000264795420, &v46);
      _os_log_impl(&dword_264605000, v30, v31, "#SelectionPreservingSafetyCacheMapContentView, %s, %s: unexpectedly found a nil location info.", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v33, -1, -1);
      MEMORY[0x266740650](v32, -1, -1);
    }

    else
    {

      sub_2646819D8(v28, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    }

    (*(v43 + 8))(v26, v44);
    return sub_2646819D8(v23, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  }

  else
  {
    sub_2646819D8(v23, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
    return sub_26460CD50(v15, &qword_27FF767D0, &qword_26478AC98);
  }
}

uint64_t sub_2646804C4@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v33 - v3;
  v4 = sub_264783B94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_264785704();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v33 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  sub_26467FE68(&v33 - v16);
  sub_26460CCE8(v17, v15, &qword_27FF767D0, &qword_26478AC98);
  v18 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v19 = *(*(v18 - 8) + 48);
  if (v19(v15, 1, v18) == 1)
  {
    sub_26460CD50(v15, &qword_27FF767D0, &qword_26478AC98);
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v22 = sub_264785754();
    v24 = v23;
  }

  else
  {
    v22 = *v15;
    v24 = v15[1];

    sub_2646819D8(v15, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
  }

  sub_26460CCE8(v17, v12, &qword_27FF767D0, &qword_26478AC98);
  if (v19(v12, 1, v18) == 1)
  {
    sub_26460CD50(v17, &qword_27FF767D0, &qword_26478AC98);
    result = sub_26460CD50(v12, &qword_27FF767D0, &qword_26478AC98);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    v28 = *(v12 + 2);
    v29 = &v12[*(v18 + 24)];
    v30 = v33;
    sub_26460CCE8(v29, v33, &qword_27FF756B8, &qword_26478AC90);
    sub_2646B8AC0(v28, v30, v39);
    if (v40)
    {
      v35 = v39[0];
      v36 = v39[1];
      *&v37[0] = v40;
      *(v37 + 8) = v41;
      *(&v37[1] + 8) = v42;
      *(&v37[2] + 1) = v43;
      v31 = SafetyCacheDetailedAddressFormatter.formattedString()();
      countAndFlagsBits = v31._countAndFlagsBits;
      object = v31._object;
      sub_26460CD50(v17, &qword_27FF767D0, &qword_26478AC98);
      v38[2] = v37[0];
      v38[3] = v37[1];
      v38[4] = v37[2];
      v38[0] = v35;
      v38[1] = v36;
      sub_264681A38(v38);
    }

    else
    {
      sub_26460CD50(v17, &qword_27FF767D0, &qword_26478AC98);
      countAndFlagsBits = 0;
      object = 0;
    }

    result = sub_2646819D8(v12, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
  }

  v32 = v34;
  *v34 = v22;
  v32[1] = v24;
  v32[2] = countAndFlagsBits;
  v32[3] = object;
  return result;
}

uint64_t sub_26468095C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_264613FC4();

  v3 = sub_264784E44();
  v5 = v4;
  v7 = v6;
  sub_264784CC4();
  v8 = sub_264784E24();
  v10 = v9;
  v12 = v11;

  sub_26460ECC4(v3, v5, v7 & 1);

  sub_264785204();
  v13 = sub_264784DE4();
  v15 = v14;
  LOBYTE(v5) = v16;

  sub_26460ECC4(v8, v10, v12 & 1);

  v17 = sub_264784E14();
  v47 = v18;
  v48 = v17;
  v20 = v19;
  v22 = v21;
  sub_26460ECC4(v13, v15, v5 & 1);

  if (a1)
  {

    v23 = sub_264784E44();
    v25 = v24;
    v27 = v26;
    sub_264784D74();
    v28 = sub_264784E24();
    v44 = v20;
    v30 = v29;
    v46 = v22;
    v32 = v31;

    sub_26460ECC4(v23, v25, v27 & 1);

    sub_264785204();
    v33 = sub_264784DE4();
    v35 = v34;
    LOBYTE(v25) = v36;
    v38 = v37;

    v39 = v32 & 1;
    v22 = v46;
    v40 = v30;
    v20 = v44;
    sub_26460ECC4(v28, v40, v39);

    v41 = v25 & 1;
    sub_26460C474(v33, v35, v25 & 1);
  }

  else
  {
    v33 = 0;
    v35 = 0;
    v41 = 0;
    v38 = 0;
  }

  v42 = v20 & 1;
  sub_26460C474(v48, v47, v42);

  sub_26466D538(v33, v35, v41, v38);
  sub_26466D57C(v33, v35, v41, v38);
  *a2 = v48;
  *(a2 + 8) = v47;
  *(a2 + 16) = v42;
  *(a2 + 24) = v22;
  *(a2 + 32) = v33;
  *(a2 + 40) = v35;
  *(a2 + 48) = v41;
  *(a2 + 56) = v38;
  sub_26466D57C(v33, v35, v41, v38);
  sub_26460ECC4(v48, v47, v42);
}

__n128 sub_264680C5C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = sub_264784714();
  sub_26468095C(v5, v10);
  *&v9[55] = v10[3];
  *&v9[39] = v10[2];
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a1 + 33) = *&v9[16];
  result = *&v9[32];
  *(a1 + 49) = *&v9[32];
  *(a1 + 65) = *&v9[48];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v9[63];
  *(a1 + 17) = *v9;
  return result;
}

uint64_t sub_264680D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_264680DA8()
{
  result = qword_27FF76718;
  if (!qword_27FF76718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F0, &qword_26478AB60);
    sub_264681990(&qword_27FF77F70, type metadata accessor for SafetyCacheMapView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76718);
  }

  return result;
}

unint64_t sub_264680E64()
{
  result = qword_27FF76728;
  if (!qword_27FF76728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76720, &qword_26478ABD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F0, &qword_26478AB60);
    sub_264680DA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76728);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for PushingSafetyCacheMapContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  v6 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 32);
    v8 = sub_264783AF4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40) + 28));

  v10 = *(v5 + v1[5] + 40);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2646810EC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_264681168()
{
  result = qword_27FF76740;
  if (!qword_27FF76740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766A8, &unk_26478AA80);
    sub_264681990(&qword_27FF76748, type metadata accessor for SafetyCacheMapView.Annotation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76740);
  }

  return result;
}

uint64_t sub_26468121C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26468128C()
{
  result = qword_27FF76760;
  if (!qword_27FF76760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76760);
  }

  return result;
}

uint64_t sub_26468130C(uint64_t a1)
{
  v2 = sub_2647852B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_264784394();
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  v6 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 32);
    v8 = sub_264783AF4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40) + 28));

  v10 = *(v5 + v1[5] + 40);

  v11 = (v5 + v1[9]);
  v12 = *(v6 + 32);
  v13 = sub_264783AF4();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_26468164C()
{
  result = qword_27FF767B8;
  if (!qword_27FF767B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF767B0, &qword_26478AC78);
    sub_26468128C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF767B8);
  }

  return result;
}

uint64_t sub_2646816FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*(type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0) - 8) + 80);

  return sub_2646804C4(a1);
}

uint64_t sub_264681790(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_264785C14();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_264785D14();
}

uint64_t sub_2646817F4@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767C0, &qword_26478AC80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767C8, &qword_26478AC88);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(v16, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v16[1];
    v15 = v17;
    *a3 = v16[0];
    *(a3 + 8) = v14;
    *(a3 + 16) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264681950()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264681990(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2646819D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v0 + v3);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {

    v10 = *(v5 + 32);
    v11 = sub_264783AF4();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  v12 = v2 | v7;
  v13 = (v3 + v4 + v7) & ~v7;
  v14 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40) + 28));

  v15 = *(v9 + v1[5] + 40);

  v16 = (v9 + v1[9]);
  v17 = *(v5 + 32);
  v18 = sub_264783AF4();
  v19 = *(*(v18 - 8) + 8);
  v19(v16 + v17, v18);

  v19((v0 + v13 + *(v5 + 32)), v18);

  return MEMORY[0x2821FE8E8](v0, v13 + v8, v12 | 7);
}

uint64_t sub_264681D08(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

unint64_t sub_264681DE8()
{
  result = qword_27FF76808;
  if (!qword_27FF76808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76800, &qword_26478AD20);
    sub_26460CDF0(&qword_27FF76810, &qword_27FF76818, &qword_26478AD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76808);
  }

  return result;
}

uint64_t sub_264681EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_264681F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264681F60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76708, &qword_26478AB78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766A8, &unk_26478AA80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76700, &qword_26478AB70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76730, &unk_26478ABD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F8, &qword_26478AB68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76720, &qword_26478ABD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F0, &qword_26478AB60);
  sub_264680DA8();
  swift_getOpaqueTypeConformance2();
  sub_264680E64();
  swift_getOpaqueTypeConformance2();
  sub_26460CDF0(&qword_27FF76738, &qword_27FF76730, &unk_26478ABD8);
  swift_getOpaqueTypeConformance2();
  sub_264681168();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_264682144()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76770, &qword_26478AC48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766A8, &unk_26478AA80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76700, &qword_26478AB70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76778, &qword_26478AC50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F8, &qword_26478AB68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76720, &qword_26478ABD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F0, &qword_26478AB60);
  sub_264680DA8();
  swift_getOpaqueTypeConformance2();
  sub_264680E64();
  swift_getOpaqueTypeConformance2();
  sub_26460CDF0(&qword_27FF76780, &qword_27FF76778, &qword_26478AC50);
  swift_getOpaqueTypeConformance2();
  sub_264681168();
  return swift_getOpaqueTypeConformance2();
}

char *DefaultInitiatorSessionDetailsViewController.init(sessionID:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264783B64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_sessionViewModel;
  if (qword_27FF74FC0 != -1)
  {
    swift_once();
  }

  *&v2[v9] = off_27FF75B20;
  v10 = OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_handlerManager;
  type metadata accessor for HandlerManager();
  swift_allocObject();
  v11 = HandlerManager.init()();
  *&v2[v10] = v12;
  (*(v5 + 16))(v8, a1, v4, v11);
  v28[0] = 0;
  v13 = objc_allocWithZone(type metadata accessor for SafetyCacheViewModel());

  *&v2[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_safetyCacheViewModel] = sub_2646789E0(v8, v28, 0, 0);
  v14 = type metadata accessor for DefaultInitiatorSessionDetailsViewController();
  v29.receiver = v2;
  v29.super_class = v14;
  v15 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
  (*(v5 + 8))(a1, v4);
  v16 = OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_handlerManager;
  v17 = *&v15[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_handlerManager];
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  swift_beginAccess();
  v19 = *(v17 + 16);
  v20 = *(v17 + 24);
  *(v17 + 16) = sub_264683608;
  *(v17 + 24) = v18;
  v21 = v15;

  sub_26460C9A0(v19);

  v22 = *&v15[v16];
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  swift_beginAccess();
  v24 = *(v22 + 48);
  v25 = *(v22 + 56);
  *(v22 + 48) = sub_26468362C;
  *(v22 + 56) = v23;

  sub_26460C9A0(v24);

  return v21;
}

void sub_264682754()
{
  v1 = v0;
  v2 = type metadata accessor for InitiatorSessionDetailsView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DefaultInitiatorSessionDetailsViewController();
  v28.receiver = v1;
  v28.super_class = v6;
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v7 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_sessionViewModel];
  v8 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_handlerManager];
  v9 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_safetyCacheViewModel];

  InitiatorSessionDetailsView.init(sessionViewModel:handlerManager:safetyCacheViewModel:showCachePersistence:)(v7, v8, v9, 0, v5);
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76850, &unk_26478AE10));
  v11 = sub_264784784();
  [v1 addChildViewController_];
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = [v11 view];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = [v1 view];
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v14 setFrame_];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v25;
  v27 = [v11 view];

  if (v27)
  {
    [v26 addSubview_];

    [v11 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_264682A14()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v6 = v0;
  v7 = sub_264783E14();
  v8 = sub_2647859B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v9 = 136315394;
    v10 = v6;
    v11 = [v10 description];
    v12 = sub_264785724();
    v21 = v1;
    v14 = v13;

    v15 = sub_2646DF234(v12, v14, &v23);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264795580, &v23);
    _os_log_impl(&dword_264605000, v7, v8, "%s, %s: end session", v9, 0x16u);
    v16 = v22;
    swift_arrayDestroy();
    MEMORY[0x266740650](v16, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v2 + 8))(v5, v21);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  v17 = *&v6[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_sessionViewModel];
  v18 = v6;

  sub_26465736C(v19, v18);
}

uint64_t sub_264682C78(void *a1, void *a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_264783DF4();
    v11 = a1;
    v12 = a2;
    v13 = sub_264783E14();
    v14 = sub_2647859D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = v4;
      v16 = v15;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v16 = 136315650;
      v17 = v12;
      v18 = [v17 description];
      v19 = sub_264785724();
      v21 = v20;

      v22 = sub_2646DF234(v19, v21, &v30);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264795580, &v30);
      *(v16 + 22) = 2112;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v24;
      v25 = v27;
      *v27 = v24;
      _os_log_impl(&dword_264605000, v13, v14, "%s, %s: end session error, %@", v16, 0x20u);
      sub_26468367C(v25);
      MEMORY[0x266740650](v25, -1, -1);
      v26 = v28;
      swift_arrayDestroy();
      MEMORY[0x266740650](v26, -1, -1);
      MEMORY[0x266740650](v16, -1, -1);

      return (*(v5 + 8))(v9, v29);
    }

    else
    {

      return (*(v5 + 8))(v9, v4);
    }
  }

  return result;
}

void sub_264682F2C()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v6 = v0;
  v7 = sub_264783E14();
  v8 = sub_2647859B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v9 = 136315394;
    v10 = v6;
    v11 = [v10 description];
    v12 = sub_264785724();
    v21 = v1;
    v14 = v13;

    v15 = sub_2646DF234(v12, v14, &v23);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0xD000000000000024, 0x8000000264795550, &v23);
    _os_log_impl(&dword_264605000, v7, v8, "%s, %s: safe response to trigger prompt", v9, 0x16u);
    v16 = v22;
    swift_arrayDestroy();
    MEMORY[0x266740650](v16, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v2 + 8))(v5, v21);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  v17 = *&v6[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_sessionViewModel];
  v18 = v6;

  sub_264657BA8(v19, v18);
}

uint64_t sub_264683190(void *a1, void *a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_264783DF4();
    v11 = a1;
    v12 = a2;
    v13 = sub_264783E14();
    v14 = sub_2647859D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = v4;
      v16 = v15;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v16 = 136315650;
      v17 = v12;
      v18 = [v17 description];
      v19 = sub_264785724();
      v21 = v20;

      v22 = sub_2646DF234(v19, v21, &v30);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2646DF234(0xD000000000000024, 0x8000000264795550, &v30);
      *(v16 + 22) = 2112;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v24;
      v25 = v27;
      *v27 = v24;
      _os_log_impl(&dword_264605000, v13, v14, "%s, %s: safe response to trigger prompt error, %@", v16, 0x20u);
      sub_26468367C(v25);
      MEMORY[0x266740650](v25, -1, -1);
      v26 = v28;
      swift_arrayDestroy();
      MEMORY[0x266740650](v26, -1, -1);
      MEMORY[0x266740650](v16, -1, -1);

      return (*(v5 + 8))(v9, v29);
    }

    else
    {

      return (*(v5 + 8))(v9, v4);
    }
  }

  return result;
}

id DefaultInitiatorSessionDetailsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_264785714();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DefaultInitiatorSessionDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultInitiatorSessionDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646835D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26468367C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF779D0, &qword_26478A9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2646836E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264683760()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_2646837FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264683868()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = *(v0 + 7);
  v8 = *(v0 + 8);
  v7 = *(v0 + 9);
  v9 = *(v0 + 10);
  v10 = *(v0 + 12);
  v22 = *(v0 + 11);
  v23 = *(v0 + 13);

  sub_264655900(v22, v10);

  v11 = *(v0 + 14);

  v12 = OBJC_IVAR____TtC15SafetyMonitorUI17CacheMapViewModel__mapRegion;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  v14 = OBJC_IVAR____TtC15SafetyMonitorUI17CacheMapViewModel__mapAnnotations;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  (*(*(v15 - 8) + 8))(&v0[v14], v15);
  v16 = OBJC_IVAR____TtC15SafetyMonitorUI17CacheMapViewModel__mostRecentLocationName;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v18 = *(*(v17 - 8) + 8);
  v18(&v0[v16], v17);
  v18(&v0[OBJC_IVAR____TtC15SafetyMonitorUI17CacheMapViewModel__mostRecentLocationAddress], v17);
  v19 = *(*v0 + 48);
  v20 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CacheMapViewModel()
{
  result = qword_27FF76878;
  if (!qword_27FF76878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264683AA0()
{
  sub_264683BEC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_264656F0C(319, &qword_27FF76888, &unk_27FF779C0, qword_26478AEA0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_264656F0C(319, &qword_27FF75E08, &qword_27FF75C40, &qword_264788A70);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264683BEC()
{
  if (!qword_27FF779B0)
  {
    type metadata accessor for MKCoordinateRegion(255);
    v0 = sub_264783EF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF779B0);
    }
  }
}

uint64_t sub_264683C44@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CacheMapViewModel();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

double sub_264683C84@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_264683D04(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *a1;
  v6 = a1[1];

  return sub_264783EE4();
}

uint64_t sub_264683D7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_264683DFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

double sub_264683E78@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_264683F1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

id sub_264684024()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v45 = *(v0 + 96);
  v46 = *(v0 + 104);
  v12 = [objc_allocWithZone(MEMORY[0x277CBFC10]) initWithEffectiveBundlePath_];
  v44 = v2;
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277CD4EC8]) initWithFrame:v12 locationManager:{0.0, 0.0, 0.0, 0.0}];
    if (v14)
    {
      v15 = v14;
      sub_264783DF4();
      v16 = v13;
      v17 = sub_264783E14();
      v18 = sub_2647859F4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v43 = v6;
        v20 = v2;
        v21 = v19;
        v22 = swift_slowAlloc();
        v48 = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_2646DF234(0xD000000000000014, 0x8000000264795740, &v48);
        *(v21 + 12) = 1024;
        *(v21 + 14) = [v16 authorizationStatus];

        _os_log_impl(&dword_264605000, v17, v18, "MapView,%s, Loaded location manager, creating attributed map view,locationManager authorization status: %d", v21, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x266740650](v22, -1, -1);
        MEMORY[0x266740650](v21, -1, -1);

        v23 = v20;
        v6 = v43;
      }

      else
      {

        v23 = v2;
      }

      v28 = *(v23 + 8);
      v28(v11, v1);
      v29 = v15;
      [v29 setShowsUserLocation_];

      goto LABEL_11;
    }
  }

  sub_264783DF4();
  v24 = sub_264783E14();
  v25 = sub_2647859D4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v48 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_2646DF234(0xD000000000000014, 0x8000000264795740, &v48);
    _os_log_impl(&dword_264605000, v24, v25, "MapView,%s, Unable to load location manager, falling back to default map view", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x266740650](v27, -1, -1);
    MEMORY[0x266740650](v26, -1, -1);
  }

  v28 = *(v2 + 8);
  v28(v9, v1);
  v29 = [objc_allocWithZone(MEMORY[0x277CD4EC8]) init];
  [v29 setShowsUserLocation_];
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76960, &qword_26478B200);
  sub_264784AB4();
  v30 = v48;
  [v29 setDelegate_];

  sub_264784AB4();
  v31 = objc_allocWithZone(MEMORY[0x277D75708]);
  v32 = v48;
  v33 = [v31 initWithTarget:v48 action:sel_longPressActionWithSender_];

  [v29 addGestureRecognizer_];
  v48 = v45;
  v49 = v46;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76968, &qword_26478B208);
  MEMORY[0x26673F100](&v47, v34);
  if (v47 >> 62)
  {
    v41 = sub_264785C14();

    if (v41)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v35 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v35)
    {
      goto LABEL_16;
    }
  }

  sub_264783DF4();
  v36 = sub_264783E14();
  v37 = sub_2647859F4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_2646DF234(0xD000000000000014, 0x8000000264795740, &v48);
    _os_log_impl(&dword_264605000, v36, v37, "MapView,%s,Selected locations empty, set map view to default location", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x266740650](v39, -1, -1);
    MEMORY[0x266740650](v38, -1, -1);
  }

  v28(v6, v1);
  [v29 goToDefaultLocation];
LABEL_16:

  return v29;
}

uint64_t sub_264684624(void *a1)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);
  v73 = *(v1 + 56);
  v14 = *(v1 + 64);
  v71 = v13;
  v72 = v14;
  v92 = *(v1 + 104);
  v93 = *(v1 + 120);
  v15 = *(v1 + 152);
  v94 = *(v1 + 136);
  v95 = v15;
  v16 = *(v1 + 88);
  v90 = *(v1 + 72);
  v91 = v16;
  v17 = a1;
  v18 = [a1 annotations];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE0, &qword_26478F3D0);
  v20 = sub_2647857F4();

  v68 = v8;
  v69 = v7;
  v66 = v3;
  v67 = v19;
  v65 = v4;
  if (v20 >> 62)
  {
LABEL_15:
    v21 = sub_264785C14();
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_3:
      v22 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x26673FA30](v22, v20);
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            goto LABEL_17;
          }
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v23 = *(v20 + 8 * v22 + 32);
          swift_unknownObjectRetain();
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        ++v22;
      }

      while (v24 != v21);
    }
  }

  v23 = 0;
LABEL_17:
  v25 = v71;
  v74 = v71;
  v75 = v73;
  v76 = v72;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76930, &qword_26478B1D0);
  MEMORY[0x26673F100](v89);
  v27 = v89[0];
  v28 = v70;
  if (!(*&v89[0] >> 62))
  {
    result = *((*&v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_19;
    }

LABEL_31:

    if (!v23)
    {
      v38 = 0;
      goto LABEL_42;
    }

    v39 = 0;
    v31 = v23;
LABEL_33:
    [v31 coordinate];
    v31 = v39;
    goto LABEL_34;
  }

  result = sub_264785C14();
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_19:
  if ((*&v27 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x26673FA30](0, *&v27);
  }

  else
  {
    if (!*((*&v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v30 = *(*&v27 + 32);
  }

  v31 = v30;

  if (!v23)
  {
    v38 = 0;
    v39 = v31;
    if (!v31)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  [v23 coordinate];
  if (!v31 || (v34 = v32, v35 = v33, [v31 coordinate], v34 != v37) || (v38 = v31, v35 != v36))
  {
LABEL_34:
    v63 = v26;
    v40 = v28;
    v41 = v25;
    sub_264783DF4();
    v42 = v31;
    swift_unknownObjectRetain();
    v43 = sub_264783E14();
    v44 = sub_2647859B4();
    v64 = v42;

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v74 = v46;
      *v45 = 136315650;
      *(v45 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264795720, &v74);
      *(v45 + 12) = 2080;
      *&v89[0] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76948, &qword_26478B1E8);
      v62 = v44;
      v47 = sub_264785B34();
      v49 = sub_2646DF234(v47, v48, &v74);

      *(v45 + 14) = v49;
      *(v45 + 22) = 2080;
      *&v89[0] = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76950, &qword_26478B1F0);
      v50 = sub_264785B34();
      v52 = sub_2646DF234(v50, v51, &v74);

      *(v45 + 24) = v52;
      _os_log_impl(&dword_264605000, v43, v62, "%s: currentAnnotation %s, newAnnotation %s", v45, 0x20u);
      swift_arrayDestroy();
      v53 = v46;
      v25 = v71;
      MEMORY[0x266740650](v53, -1, -1);
      MEMORY[0x266740650](v45, -1, -1);

      (*(v65 + 8))(v40, v66);
      v54 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
    }

    else
    {

      (*(v65 + 8))(v40, v66);
      v54 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
      v25 = v41;
    }

    v55 = [v17 v54[261]];
    if (!v55)
    {
      sub_2647857F4();
      v55 = sub_2647857E4();
    }

    [v17 removeAnnotations_];

    v74 = v25;
    v75 = v73;
    v76 = v72;
    MEMORY[0x26673F100](v89, v63);
    if (*&v89[0] >> 62)
    {

      sub_264785DA4();
    }

    else
    {

      sub_264785E94();
    }

    v56 = sub_2647857E4();

    [v17 addAnnotations_];

    v38 = v64;
  }

LABEL_42:
  v58 = v68;
  v57 = v69;
  v74 = v69;
  v75 = v68;
  v76 = v9;
  v77 = v10;
  v78 = v11;
  v79 = v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76938, &qword_26478B1D8);
  MEMORY[0x26673F100](v89, v59);
  [v17 setRegion:1 animated:{v89[0], v89[1], v89[2], v89[3]}];
  v60 = [v17 overlays];
  if (!v60)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76940, &qword_26478B1E0);
    sub_2647857F4();
    v60 = sub_2647857E4();
  }

  [v17 removeOverlays_];

  v74 = v57;
  v75 = v58;
  v76 = v9;
  v77 = v10;
  v78 = v11;
  v79 = v12;
  v80 = v25;
  v81 = v73;
  v82 = v72;
  v85 = v92;
  v86 = v93;
  v87 = v94;
  v88 = v95;
  v83 = v90;
  v84 = v91;
  sub_264684ED4(v17);

  return swift_unknownObjectRelease();
}

uint64_t sub_264684DB0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_264785C14();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26673FA30](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            swift_unknownObjectRelease();
            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        swift_unknownObjectRelease();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void sub_264684ED4(void *a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v17 = *(v1 + 48);
  v18 = *(v1 + 56);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76930, &qword_26478B1D0);
  MEMORY[0x26673F100](&v16, v6);
  v7 = v16;
  if (v16 >> 62)
  {
    if (sub_264785C14())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x26673FA30](0, v7);
    goto LABEL_6;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_6:
    v9 = v8;

    [v9 coordinate];
    v11 = v10;
    v13 = v12;
    v17 = v3;
    *&v18 = v4;
    BYTE8(v18) = v5;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76958, &qword_26478B1F8);
    MEMORY[0x26673F100](&v16, v14);
    v15 = [objc_opt_self() circleWithCenterCoordinate:v11 radius:{v13, dbl_26478B230[v16]}];
    [a1 addOverlay_];

    return;
  }

  __break(1u);
}

void sub_264685388(void *a1)
{
  v3 = sub_264783AF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783E24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  if ([a1 state] != 1)
  {
    return;
  }

  v65 = v4;
  *&v66 = v9;
  v16 = [a1 view];
  [a1 locationInView_];
  v18 = v17;
  v20 = v19;

  v21 = [a1 view];
  if (v21)
  {
    v22 = v21;
    v64 = v3;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      v25 = v1;
      v26 = [a1 view];
      [v24 convertPoint:v26 toCoordinateFromView:{v18, v20}];
      v28 = v27;
      v30 = v29;

      sub_264783DF4();
      v31 = sub_264783E14();
      v32 = sub_2647859F4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v70[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264795790, v70);
        _os_log_impl(&dword_264605000, v31, v32, "#Initiator, %s, creating annotation for long press", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x266740650](v34, -1, -1);
        MEMORY[0x266740650](v33, -1, -1);
      }

      (*(v66 + 8))(v15, v8);
      v35 = [objc_allocWithZone(MEMORY[0x277CD4F08]) init];
      [v35 setCoordinate_];
      v36 = v25 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent;
      v37 = *(v25 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
      v38 = swift_allocObject();
      v66 = xmmword_264788990;
      *(v38 + 16) = xmmword_264788990;
      *(v38 + 32) = v35;
      *&v70[0] = v37;
      *(v70 + 8) = *(v36 + 56);
      *&v68 = v38;
      v39 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76930, &qword_26478B1D0);
      sub_2647853E4();
      v40 = objc_opt_self();
      [v39 coordinate];
      v42 = v41;
      [v39 coordinate];
      if ([v40 isLocationShiftRequiredForCoordinate_])
      {
        v43 = 2;
      }

      else
      {
        v43 = 1;
      }

      [v39 coordinate];
      v45 = v44;
      v47 = v46;
      sub_264783AE4();
      v48 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      v49 = sub_264783A64();
      v50 = [v48 initWithCoordinate:v49 altitude:v43 horizontalAccuracy:v45 verticalAccuracy:v47 timestamp:0.0 referenceFrame:{0.0, -1.0}];

      (*(v65 + 8))(v7, v64);
      v51 = *(v36 + 144);
      v73 = *(v36 + 128);
      v74 = v51;
      v75 = *(v36 + 160);
      v52 = *(v36 + 80);
      v70[4] = *(v36 + 64);
      v70[5] = v52;
      v53 = *(v36 + 112);
      v71 = *(v36 + 96);
      v72 = v53;
      v54 = *(v36 + 16);
      v70[0] = *v36;
      v70[1] = v54;
      v55 = *(v36 + 48);
      v70[2] = *(v36 + 32);
      v70[3] = v55;
      v56 = swift_allocObject();
      *(v56 + 16) = v66;
      v57 = objc_allocWithZone(MEMORY[0x277CD4E80]);
      sub_264686F50(v70, &v68);
      v58 = [v57 initWithCLLocation_];
      if (v58)
      {
        *(v56 + 32) = v58;
        v68 = v71;
        v69 = v72;
        v67 = v56;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76968, &qword_26478B208);
        sub_2647853E4();
        sub_2646870F0(v70);

        v59 = *(v36 + 160);
        v68 = *(v36 + 144);
        v69 = v59;
        v67 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A8, &qword_26478B228);
        sub_2647853E4();
        sub_264685AE4(v50);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  sub_264783DF4();
  v60 = sub_264783E14();
  v61 = sub_2647859D4();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v70[0] = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264795790, v70);
    _os_log_impl(&dword_264605000, v60, v61, "#Initiator, %s, Unable to get touch coordinate", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x266740650](v63, -1, -1);
    MEMORY[0x266740650](v62, -1, -1);
  }

  (*(v66 + 8))(v13, v8);
}

uint64_t sub_264685AE4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_264783E24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v13 = a1;
  v14 = sub_264783E14();
  v15 = sub_2647859F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = v2;
    v17 = v16;
    v39 = swift_slowAlloc();
    v42[0] = v39;
    *v17 = 136315395;
    *(v17 + 4) = sub_2646DF234(0xD000000000000024, 0x8000000264795760, v42);
    *(v17 + 12) = 2085;
    v18 = [v13 description];
    v19 = sub_264785724();
    v38 = v8;
    v20 = v7;
    v21 = v13;
    v22 = v19;
    v24 = v23;

    v25 = sub_2646DF234(v22, v24, v42);

    *(v17 + 14) = v25;
    v13 = v21;
    v7 = v20;
    _os_log_impl(&dword_264605000, v14, v15, "#Initiator, %s, Start reverse geocode for location: %{sensitive}s", v17, 0x16u);
    v26 = v39;
    swift_arrayDestroy();
    MEMORY[0x266740650](v26, -1, -1);
    v27 = v17;
    v2 = v40;
    MEMORY[0x266740650](v27, -1, -1);

    (*(v9 + 8))(v12, v38);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v28 = *&v2[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 128];
  v29 = v2[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 136];
  v42[0] = *&v2[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 120];
  v42[1] = v28;
  v43 = v29;
  v41 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76978, &qword_26478B210);
  sub_2647853E4();

  sub_2647858C4();
  v30 = sub_2647858E4();
  (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
  sub_2647858B4();
  v31 = v13;
  v32 = v2;
  v33 = sub_2647858A4();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v32;
  v34[5] = v31;
  sub_264635430(0, 0, v7, &unk_26478B220, v34);
}

uint64_t sub_264685E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_264785594();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = sub_2647855C4();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = sub_264783E24();
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v14 = *(v13 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_2647858B4();
  v5[25] = sub_2647858A4();
  v16 = sub_264785874();
  v5[26] = v16;
  v5[27] = v15;

  return MEMORY[0x2822009F8](sub_264686054, v16, v15);
}

uint64_t sub_264686054()
{
  v1 = *(v0[13] + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_geocoder);
  v2 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v0[28] = v2;
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_264686120;
  v4 = v0[14];

  return CachedGeocoder.placemark(forKey:with:)(v4, v2);
}

uint64_t sub_264686120(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v9 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = *(v3 + 208);
    v6 = *(v3 + 216);
    v7 = sub_2646865F0;
  }

  else
  {

    v5 = *(v3 + 208);
    v6 = *(v3 + 216);
    v7 = sub_26468623C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26468623C()
{
  v42 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[14];

  sub_264783DF4();
  v4 = v3;
  v5 = sub_264783E14();
  v6 = sub_2647859F4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  if (v7)
  {
    v11 = v0[14];
    v39 = v0[24];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = v13;
    *v12 = 136315395;
    *(v12 + 4) = sub_2646DF234(0xD000000000000024, 0x8000000264795760, &v41);
    *(v12 + 12) = 2085;
    v14 = [v11 description];
    v15 = sub_264785724();
    v17 = v16;

    v18 = sub_2646DF234(v15, v17, &v41);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_264605000, v5, v6, "#Initiator, %s, successfully reverse geocoded for location: %{sensitive}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v13, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);

    (*(v9 + 8))(v39, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[30];
  if (v19)
  {
    v37 = v0[20];
    v38 = v0[19];
    v20 = v0[17];
    v40 = v0[18];
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[13];
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v24 = v19;
    v25 = sub_264785A44();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v23;
    v0[6] = sub_2646870D0;
    v0[7] = v26;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_264659F60;
    v0[5] = &block_descriptor_4;
    v27 = _Block_copy(v0 + 2);
    v28 = v24;
    v29 = v23;
    sub_2647855B4();
    v0[12] = MEMORY[0x277D84F90];
    sub_2646683C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    sub_264785BD4();
    MEMORY[0x26673F780](0, v37, v20, v27);
    _Block_release(v27);

    (*(v21 + 8))(v20, v22);
    (*(v38 + 8))(v37, v40);
    v30 = v0[7];
  }

  v32 = v0[23];
  v31 = v0[24];
  v33 = v0[20];
  v34 = v0[17];

  v35 = v0[1];

  return v35();
}

uint64_t sub_2646865F0()
{
  v30 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);

  sub_264783DF4();
  v5 = v1;
  v6 = sub_264783E14();
  v7 = sub_2647859D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 248);
    v9 = *(v0 + 176);
    v28 = *(v0 + 184);
    v10 = *(v0 + 168);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_2646DF234(0xD000000000000024, 0x8000000264795760, &v29);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 80);
    v16 = sub_264785EF4();
    v18 = sub_2646DF234(v16, v17, &v29);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_264605000, v6, v7, "#Initiator, %s, Failed to reverse geocode location: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    (*(v9 + 8))(v28, v10);
  }

  else
  {
    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    v21 = *(v0 + 168);

    (*(v20 + 8))(v19, v21);
  }

  v23 = *(v0 + 184);
  v22 = *(v0 + 192);
  v24 = *(v0 + 160);
  v25 = *(v0 + 136);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_264686834(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithPlacemark_];
  v4 = (a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent);
  v5 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 144);
  v26 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 128);
  v27 = v5;
  v28 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 160);
  v6 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 80);
  v23[4] = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 64);
  v23[5] = v6;
  v7 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 112);
  v24 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 96);
  v25 = v7;
  v8 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 16);
  v23[0] = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent);
  v23[1] = v8;
  v9 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 48);
  v23[2] = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 32);
  v23[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_264788990;
  v11 = objc_allocWithZone(MEMORY[0x277CD4E80]);
  sub_264686F50(v23, &v29);
  *(v10 + 32) = [v11 initWithPlacemark_];
  v29 = v24;
  *&v30 = v25;
  v18[0] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76968, &qword_26478B208);
  sub_2647853E4();
  sub_2646870F0(v23);

  v12 = v4[9];
  v37 = v4[8];
  v38 = v12;
  v39 = *(v4 + 20);
  v13 = v4[5];
  v33 = v4[4];
  v34 = v13;
  v14 = v4[7];
  v35 = v4[6];
  v36 = v14;
  v15 = v4[1];
  v29 = *v4;
  v30 = v15;
  v16 = v4[3];
  v31 = v4[2];
  v32 = v16;
  v20 = *(&v36 + 1);
  v21 = v37;
  v22 = BYTE8(v37);
  v19 = 2;
  sub_264686F50(&v29, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76978, &qword_26478B210);
  sub_2647853E4();

  sub_2646870F0(&v29);
}

id sub_264686A7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_264686B34@<X0>(void *a1@<X8>)
{
  v3 = v1[9];
  v31 = v1[8];
  v32 = v3;
  v33 = *(v1 + 20);
  v4 = v1[5];
  v27 = v1[4];
  v28 = v4;
  v5 = v1[7];
  v29 = v1[6];
  v30 = v5;
  v6 = v1[1];
  v23 = *v1;
  v24 = v6;
  v7 = v1[3];
  v25 = v1[2];
  v26 = v7;
  sub_264686F50(&v23, v22);
  if (qword_27FF75008 != -1)
  {
    swift_once();
  }

  v8 = qword_27FF807E8;
  v9 = type metadata accessor for MapView.Coordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent];
  v13 = v24;
  v12 = v25;
  *v11 = v23;
  *(v11 + 1) = v13;
  *(v11 + 2) = v12;
  v14 = v29;
  v16 = v26;
  v15 = v27;
  *(v11 + 5) = v28;
  *(v11 + 6) = v14;
  *(v11 + 3) = v16;
  *(v11 + 4) = v15;
  v18 = v31;
  v17 = v32;
  v19 = v30;
  *(v11 + 20) = v33;
  *(v11 + 8) = v18;
  *(v11 + 9) = v17;
  *(v11 + 7) = v19;
  *&v10[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_geocoder] = v8;
  v21.receiver = v10;
  v21.super_class = v9;

  result = objc_msgSendSuper2(&v21, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_264686C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264686EFC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_264686CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264686EFC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_264686D2C()
{
  sub_264686EFC();
  sub_264784834();
  __break(1u);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_264686DE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_264686E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264686EA8()
{
  result = qword_27FF76918;
  if (!qword_27FF76918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76918);
  }

  return result;
}

unint64_t sub_264686EFC()
{
  result = qword_27FF76920;
  if (!qword_27FF76920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76920);
  }

  return result;
}

uint64_t sub_264686F88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264686FD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26460F764;

  return sub_264685E9C(a1, v4, v5, v7, v6);
}

uint64_t sub_264687090()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_264687120(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithOverlay_];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemBlueColor];
  [v3 setStrokeColor_];

  v5 = [v2 systemBlueColor];
  v6 = [v5 colorWithAlphaComponent_];

  [v3 setFillColor_];
  [v3 setLineWidth_];

  return v3;
}

id sub_264687224(void *a1, uint64_t a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 0;
  }

  v5 = sub_264785714();
  v6 = [a1 dequeueReusableAnnotationViewWithIdentifier_];

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      [v7 setAnnotation_];
      return v8;
    }
  }

  v9 = objc_allocWithZone(MEMORY[0x277CD4ED0]);
  v10 = sub_264785714();
  v11 = [v9 initWithAnnotation:a2 reuseIdentifier:v10];

  v12 = v11;
  [v12 setDraggable_];
  [v12 setCanShowCallout_];

  return v12;
}

void sub_26468736C(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v6 = a1;
    v7 = a2;
    v8 = sub_264785C14();
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (!v9)
    {
      return;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = MEMORY[0x26673FA30](0);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = a1;
    v3 = *(a2 + 32);
  }

  v10 = v3;
  v4 = [v3 annotation];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      [v2 selectAnnotation:v5 animated:1];
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_2646874A8(void *a1, void *a2, uint64_t a3)
{
  v76 = a1;
  v6 = sub_264783AF4();
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v72 - v16;
  if ((a3 - 3) >= 2)
  {
    if (a3 == 1)
    {
      v61 = v3;
      sub_264783DF4();
      v62 = sub_264783E14();
      v63 = sub_2647859F4();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v109[0] = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_2646DF234(0xD000000000000031, 0x80000002647957D0, v109);
        _os_log_impl(&dword_264605000, v62, v63, "#Initiator, %s, started annotation drag", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x266740650](v65, -1, -1);
        MEMORY[0x266740650](v64, -1, -1);
      }

      (*(v11 + 8))(v17, v10);
      v66 = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 144);
      v116 = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 128);
      v117 = v66;
      v118 = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 160);
      v67 = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 80);
      v112 = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 64);
      v113 = v67;
      v68 = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 112);
      v114 = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 96);
      v115 = v68;
      v69 = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 16);
      v109[0] = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent);
      v109[1] = v69;
      v70 = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 48);
      v110 = *(v61 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 32);
      v111 = v70;
      sub_264686F50(v109, &v98);
      v71 = [v76 overlays];
      if (!v71)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76940, &qword_26478B1E0);
        sub_2647857F4();
        v71 = sub_2647857E4();
      }

      [v76 removeOverlays_];
      sub_2646870F0(v109);

      [a2 setTitleVisibility_];
    }
  }

  else
  {
    v18 = [a2 annotation];
    if (v18)
    {
      v19 = v18;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        v73 = v6;
        v74 = v3;
        sub_264783DF4();
        v22 = sub_264783E14();
        v23 = sub_2647859F4();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *&v72 = v19;
          v25 = v24;
          v26 = swift_slowAlloc();
          *&v109[0] = v26;
          *v25 = 136315138;
          *(v25 + 4) = sub_2646DF234(0xD000000000000031, 0x80000002647957D0, v109);
          _os_log_impl(&dword_264605000, v22, v23, "#Initiator, %s, ended annotation drag", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          MEMORY[0x266740650](v26, -1, -1);
          MEMORY[0x266740650](v25, -1, -1);
        }

        (*(v11 + 8))(v15, v10);
        v27 = (v74 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent);
        v28 = *(v74 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
        v29 = swift_allocObject();
        v72 = xmmword_264788990;
        *(v29 + 16) = xmmword_264788990;
        *(v29 + 32) = v21;
        *&v109[0] = v28;
        *(v109 + 8) = *(v27 + 56);
        *&v98 = v29;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76930, &qword_26478B1D0);
        sub_2647853E4();
        v30 = objc_opt_self();
        [v21 coordinate];
        v32 = v31;
        [v21 coordinate];
        if ([v30 isLocationShiftRequiredForCoordinate_])
        {
          v33 = 2;
        }

        else
        {
          v33 = 1;
        }

        [v21 coordinate];
        v35 = v34;
        v37 = v36;
        sub_264783AE4();
        v38 = objc_allocWithZone(MEMORY[0x277CE41F8]);
        v39 = sub_264783A64();
        v40 = [v38 initWithCoordinate:v39 altitude:v33 horizontalAccuracy:v35 verticalAccuracy:v37 timestamp:0.0 referenceFrame:{0.0, -1.0}];

        (*(v75 + 8))(v9, v73);
        v41 = v27[9];
        v116 = v27[8];
        v117 = v41;
        v118 = *(v27 + 20);
        v42 = v27[5];
        v112 = v27[4];
        v113 = v42;
        v43 = v27[7];
        v114 = v27[6];
        v115 = v43;
        v44 = v27[1];
        v109[0] = *v27;
        v109[1] = v44;
        v45 = v27[3];
        v110 = v27[2];
        v111 = v45;
        v46 = swift_allocObject();
        *(v46 + 16) = v72;
        v47 = objc_allocWithZone(MEMORY[0x277CD4E80]);
        sub_264686F50(v109, &v98);
        v48 = [v47 initWithCLLocation_];
        if (v48)
        {
          *(v46 + 32) = v48;
          v98 = v114;
          *&v99 = v115;
          *&v88[0] = v46;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76968, &qword_26478B208);
          sub_2647853E4();
          sub_2646870F0(v109);

          v49 = *(v27 + 20);
          v98 = v27[9];
          *&v99 = v49;
          *&v88[0] = 4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A8, &qword_26478B228);
          sub_2647853E4();
          v50 = v27[7];
          v51 = v27[9];
          v95 = v27[8];
          v96 = v51;
          v52 = v27[3];
          v53 = v27[5];
          v91 = v27[4];
          v92 = v53;
          v54 = v27[5];
          v55 = v27[7];
          v93 = v27[6];
          v94 = v55;
          v56 = v27[1];
          v88[0] = *v27;
          v88[1] = v56;
          v57 = v27[3];
          v59 = *v27;
          v58 = v27[1];
          v89 = v27[2];
          v90 = v57;
          v60 = v27[9];
          v85 = v95;
          v86 = v60;
          v81 = v91;
          v82 = v54;
          v83 = v93;
          v84 = v50;
          v77 = v59;
          v78 = v58;
          v97 = *(v27 + 20);
          v87 = *(v27 + 20);
          v79 = v89;
          v80 = v52;
          sub_264686F50(v88, &v98);
          sub_264684ED4(v76);
          v106 = v85;
          v107 = v86;
          v108 = v87;
          v102 = v81;
          v103 = v82;
          v104 = v83;
          v105 = v84;
          v98 = v77;
          v99 = v78;
          v100 = v79;
          v101 = v80;
          sub_2646870F0(&v98);
          sub_264685AE4(v40);
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_264687CFC()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for NotificationRulesViewController());
  return NotificationRulesViewController.init(sessionType:)(v1);
}

uint64_t sub_264687D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264688B80();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_264687DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264688B80();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_264687E40()
{
  sub_264688B80();
  sub_264784B74();
  __break(1u);
}

id NotificationRulesViewController.init(sessionType:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_264783B94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_264785704();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  *&v1[OBJC_IVAR____TtC15SafetyMonitorUI31NotificationRulesViewController_sessionType] = a1;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v10 = sub_264785714();

  v15.receiver = v1;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, sel_initWithTitle_detailText_symbolName_contentLayout_, v10, 0, 0, 2);

  v12 = v11;
  v13 = sub_264785714();
  [v12 setAccessibilityIdentifier_];

  return v12;
}

Swift::Void __swiftcall NotificationRulesViewController.viewDidLoad()()
{
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI31NotificationRulesViewController_sessionType];
  if ((v1 - 2) < 2)
  {
    if (qword_27FF750B0 != -1)
    {
      swift_once();
    }

    v10 = sub_264785714();
    if (qword_27FF750D0 != -1)
    {
      swift_once();
    }

    v11 = sub_264785714();
    v12 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v10 description:v11 symbolName:v12];

    if (qword_27FF750D8 != -1)
    {
      swift_once();
    }

    v13 = sub_264785714();
    if (qword_27FF750E0 != -1)
    {
      swift_once();
    }

    v14 = sub_264785714();
    v15 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v13 description:v14 symbolName:v15];

    if (qword_27FF750E8 != -1)
    {
      swift_once();
    }

    v8 = sub_264785714();
    if (qword_27FF750F0 != -1)
    {
      swift_once();
    }

    v9 = &qword_27FF78D98;
  }

  else if (v1 == 1)
  {
    if (qword_27FF750B0 != -1)
    {
      swift_once();
    }

    v16 = sub_264785714();
    if (qword_27FF750F8 != -1)
    {
      swift_once();
    }

    v17 = sub_264785714();
    v18 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v16 description:v17 symbolName:v18];

    if (qword_27FF75100 != -1)
    {
      swift_once();
    }

    v19 = sub_264785714();
    if (qword_27FF75108 != -1)
    {
      swift_once();
    }

    v20 = sub_264785714();
    v21 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v19 description:v20 symbolName:v21];

    if (qword_27FF75110 != -1)
    {
      swift_once();
    }

    v8 = sub_264785714();
    if (qword_27FF75118 != -1)
    {
      swift_once();
    }

    v9 = &qword_27FF78DE8;
  }

  else
  {
    if (v1 != 4)
    {
      goto LABEL_44;
    }

    if (qword_27FF750B0 != -1)
    {
      swift_once();
    }

    v2 = sub_264785714();
    if (qword_27FF75120 != -1)
    {
      swift_once();
    }

    v3 = sub_264785714();
    v4 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v2 description:v3 symbolName:v4];

    if (qword_27FF75128 != -1)
    {
      swift_once();
    }

    v5 = sub_264785714();
    if (qword_27FF75130 != -1)
    {
      swift_once();
    }

    v6 = sub_264785714();
    v7 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v5 description:v6 symbolName:v7];

    if (qword_27FF75138 != -1)
    {
      swift_once();
    }

    v8 = sub_264785714();
    if (qword_27FF75140 != -1)
    {
      swift_once();
    }

    v9 = &qword_27FF78E38;
  }

  v22 = *v9;
  v23 = v9[1];
  v24 = sub_264785714();
  v25 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v8 description:v24 symbolName:v25];

LABEL_44:
  if (qword_27FF750B8 != -1)
  {
    swift_once();
  }

  v26 = sub_264785714();
  if (qword_27FF750C8 != -1)
  {
    swift_once();
  }

  v27 = sub_264785714();
  v28 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v26 description:v27 symbolName:v28];
}

id NotificationRulesViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id NotificationRulesViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id NotificationRulesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_264688B80()
{
  result = qword_27FF769C8;
  if (!qword_27FF769C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF769C8);
  }

  return result;
}

uint64_t sub_264688BD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_264688C54(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_264783EE4();
}

uint64_t sub_264688CC8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264688D44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_264783EE4();
}

uint64_t (*sub_264688DB0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264688E54(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769E0, &qword_26478B3D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264688FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769E0, &qword_26478B3D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26468912C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769E0, &qword_26478B3D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__placemark;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

double sub_26468929C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_26468931C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_264783EE4();
}

uint64_t sub_26468939C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264689418()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_264783EE4();
}

uint64_t (*sub_264689490(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_264689534(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646896D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26468980C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__subtitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26468997C(uint64_t a1, uint64_t *a2)
{
  sub_264689A40(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + v4));
  sub_264689B0C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_2646899E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider;
  swift_beginAccess();
  return sub_264689A40(v1 + v3, a1);
}

uint64_t sub_264689A40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264689AA4(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  sub_264689B0C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_264689B0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id SafetyCacheRouteInfoCellViewModel.__allocating_init(placemark:subtitle:coordinateProvider:)(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = sub_26468A278(a1, a2, a3, v11, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(a4);
  return v12;
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

id SafetyCacheRouteInfoCellViewModel.init(placemark:subtitle:coordinateProvider:)(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_264689F50(a1, a2, a3, v14, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(a4);
  return v16;
}

id SafetyCacheRouteInfoCellViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetyCacheRouteInfoCellViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetyCacheRouteInfoCellViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264689F10@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SafetyCacheRouteInfoCellViewModel();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

id sub_264689F50(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v32 = *(v11 - 8);
  v12 = v32;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v41[3] = a6;
  v41[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  v22 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__placemark;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
  sub_264783E94();
  (*(v17 + 32))(&a5[v22], v20, v16);
  v23 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__subtitle;
  v39 = 0;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  v24 = *(v12 + 32);
  v25 = v11;
  v24(&a5[v23], v15, v11);
  swift_beginAccess();
  v26 = *(v17 + 8);
  v27 = v33;
  v28 = v33;
  v26(&a5[v22], v16);
  v37 = v27;
  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  (*(v32 + 8))(&a5[v23], v25);
  v37 = v34;
  v38 = v35;
  sub_264783E94();
  swift_endAccess();
  sub_264689A40(v41, &a5[OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider]);
  v29 = type metadata accessor for SafetyCacheRouteInfoCellViewModel();
  v36.receiver = a5;
  v36.super_class = v29;
  v30 = objc_msgSendSuper2(&v36, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v30;
}

id sub_26468A278(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(type metadata accessor for SafetyCacheRouteInfoCellViewModel());
  (*(v13 + 16))(v16, a4, a6);
  return sub_264689F50(a1, a2, a3, v16, v17, a6, a7);
}

uint64_t type metadata accessor for SafetyCacheRouteInfoCellViewModel()
{
  result = qword_27FF769F0;
  if (!qword_27FF769F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26468A43C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider;
  swift_beginAccess();
  return sub_264689A40(v3 + v4, a2);
}

void sub_26468A4A4()
{
  sub_264656F0C(319, &qword_27FF76A00, &qword_27FF76A08, &unk_26478B4A8);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_264656F0C(319, &qword_27FF75E08, &qword_27FF75C40, &qword_264788A70);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id CheckInOnboardingFlowViewController.__allocating_init(isInSettings:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner;
  *&v7[v8] = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  v7[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding] = 0;
  v9 = &v7[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_onboardingCompletionHandler];
  *v9 = a2;
  v9[1] = a3;
  v7[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_isInSettings] = a1;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

id CheckInOnboardingFlowViewController.init(isInSettings:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  v3[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding] = 0;
  v8 = &v3[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_onboardingCompletionHandler];
  *v8 = a2;
  v8[1] = a3;
  v3[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_isInSettings] = a1;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for CheckInOnboardingFlowViewController();
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_26468AB58()
{
  ObjectType = swift_getObjectType();
  v1 = sub_264785584();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v1);
  v47 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_2647855E4();
  v53 = *(v57 - 8);
  v4 = *(v53 + 64);
  v5 = MEMORY[0x28223BE20](v57);
  v46 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = v39 - v7;
  v8 = sub_264785594();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2647855C4();
  v50 = *(v55 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v55);
  v44 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CheckInOnboardingFlowViewController();
  v65.receiver = v0;
  v65.super_class = v13;
  objc_msgSendSuper2(&v65, sel_viewDidLoad);
  v43 = v0;
  sub_26468BA14();
  v14 = swift_allocObject();
  *(v14 + 16) = 2;
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  if (qword_27FF74FC0 != -1)
  {
    swift_once();
  }

  v16 = off_27FF75B20;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  v18 = v16[2];
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = sub_26468BD44;
  v19[4] = v17;
  v63 = sub_264655938;
  v64 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v41 = &v61;
  v61 = sub_26465A0C0;
  v62 = &block_descriptor_5;
  v20 = _Block_copy(&aBlock);

  v40 = v15;

  [v18 fetchCurrentWorkoutSnapshotWithCompletion_];
  _Block_release(v20);

  v42 = sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v21 = sub_264785A44();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v14;
  v54 = v14;
  v23[4] = ObjectType;
  v63 = sub_26468BE2C;
  v64 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_264659F60;
  v62 = &block_descriptor_15_0;
  v24 = _Block_copy(&aBlock);

  v25 = v44;
  sub_2647855B4();
  v58 = MEMORY[0x277D84F90];
  v39[3] = sub_2646683C4();
  v39[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  v39[1] = sub_26466841C();
  v26 = v45;
  sub_264785BD4();
  sub_264785A14();
  _Block_release(v24);

  v51 = *(v51 + 8);
  (v51)(v26, v8);
  v39[0] = v8;
  v50 = *(v50 + 8);
  (v50)(v25, v55);

  v27 = v46;
  sub_2647855D4();
  v28 = v47;
  *v47 = 3;
  v30 = v48;
  v29 = v49;
  (*(v48 + 104))(v28, *MEMORY[0x277D85188], v49);
  v31 = v52;
  MEMORY[0x26673F320](v27, v28);
  (*(v30 + 8))(v28, v29);
  v53 = *(v53 + 8);
  (v53)(v27, v57);
  v32 = sub_264785A44();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v35 = v54;
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = ObjectType;
  v63 = sub_26468BE78;
  v64 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_264659F60;
  v62 = &block_descriptor_22;
  v36 = _Block_copy(&aBlock);

  sub_2647855B4();
  aBlock = MEMORY[0x277D84F90];
  v37 = v39[0];
  sub_264785BD4();
  MEMORY[0x26673F750](v31, v25, v26, v36);
  _Block_release(v36);

  (v51)(v26, v37);
  (v50)(v25, v55);
  (v53)(v31, v57);
}

void sub_26468B37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    sub_26468BE84(*(a2 + 16));
  }

  else
  {
    sub_264783DF4();
    v12 = sub_264783E14();
    v13 = sub_2647859D4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315394;
      v19[1] = a3;
      swift_getMetatypeMetadata();
      v16 = sub_264785764();
      v18 = sub_2646DF234(v16, v17, &v20);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2646DF234(0x4C64694477656976, 0xED0000292864616FLL, &v20);
      _os_log_impl(&dword_264605000, v12, v13, "%s, %s: unexpectedly missing self after workout fetch", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v15, -1, -1);
      MEMORY[0x266740650](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

void sub_26468B5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_264783DF4();
    v15 = v14;
    v16 = sub_264783E14();
    v17 = sub_2647859C4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v5;
      v39[0] = v19;
      v36 = v19;
      *v18 = 136315394;
      v20 = v15;
      v37 = v6;
      v21 = v20;
      v22 = [v20 description];
      v23 = a2;
      v24 = sub_264785724();
      v26 = v25;

      v27 = sub_2646DF234(v24, v26, v39);

      *(v18 + 4) = v27;
      a2 = v23;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2646DF234(0x4C64694477656976, 0xED0000292864616FLL, v39);
      _os_log_impl(&dword_264605000, v16, v17, "%s, %s: showing onboarding after fetch timeout", v18, 0x16u);
      v28 = v36;
      swift_arrayDestroy();
      MEMORY[0x266740650](v28, -1, -1);
      MEMORY[0x266740650](v18, -1, -1);

      (*(v37 + 8))(v12, v38);
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }

    swift_beginAccess();
    sub_26468BE84(*(a2 + 16));
  }

  else
  {
    sub_264783DF4();
    v29 = sub_264783E14();
    v30 = sub_2647859D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315394;
      v39[0] = a3;
      swift_getMetatypeMetadata();
      v33 = sub_264785764();
      v35 = sub_2646DF234(v33, v34, &v40);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2646DF234(0x4C64694477656976, 0xED0000292864616FLL, &v40);
      _os_log_impl(&dword_264605000, v29, v30, "%s, %s: unexpectedly missing self after timeout", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v32, -1, -1);
      MEMORY[0x266740650](v31, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
  }
}

id sub_26468BA14()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setHidesWhenStopped_];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26478B4D0;
  v7 = [v4 centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  v9 = [result centerXAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v10;
  v11 = [v4 centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  v13 = objc_opt_self();
  v14 = [v12 centerYAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v6 + 40) = v15;
  sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
  v16 = sub_2647857E4();

  [v13 activateConstraints_];

  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v17 = result;
  [result bringSubviewToFront_];

  return [v4 startAnimating];
}

uint64_t sub_26468BD04()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_26468BD44(char a1)
{
  v2 = *(v1 + 24);
  if (a1)
  {
    v3 = *(v1 + 16);
    swift_beginAccess();
    *(v3 + 16) = 4;
  }

  dispatch_group_leave(v2);
}

uint64_t sub_26468BD98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26468BDF0()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_26468BE84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding])
  {
    sub_264783DF4();
    v9 = v2;
    v10 = sub_264783E14();
    v11 = sub_2647859C4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = v58;
      *v12 = 136315394;
      v13 = v9;
      v14 = [v13 description];
      v15 = sub_264785724();
      v17 = v16;

      v18 = sub_2646DF234(v15, v17, &v59);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264795B20, &v59);
      _os_log_impl(&dword_264605000, v10, v11, "%s, %s: aborting additional attempts to show onboarding", v12, 0x16u);
      v19 = v58;
      swift_arrayDestroy();
      MEMORY[0x266740650](v19, -1, -1);
      MEMORY[0x266740650](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return;
  }

  v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding] = 1;
  v20 = *&v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner];
  [v20 stopAnimating];
  [v20 removeFromSuperview];
  LOBYTE(v20) = v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_isInSettings];
  v21 = *&v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_onboardingCompletionHandler];
  v22 = *&v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_onboardingCompletionHandler + 8];
  objc_allocWithZone(type metadata accessor for CheckInOnboardingViewController());
  sub_264611394(v21);
  v23 = CheckInOnboardingViewController.init(isInSettings:sessionType:onboardingCompletionHandler:)(v20, a1, v21, v22);
  v24 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  v58 = v24;
  [v2 addChildViewController_];
  v25 = [v2 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v58 view];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  [v26 addSubview_];

  v29 = [v58 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v29 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26478B4E0;
  v31 = [v58 view];

  if (!v31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = [v31 leadingAnchor];

  v33 = [v2 view];
  if (!v33)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = v33;
  v35 = [v33 leadingAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(v30 + 32) = v36;
  v37 = [v58 view];

  if (!v37)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v38 = [v37 trailingAnchor];

  v39 = [v2 view];
  if (!v39)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v38 constraintEqualToAnchor_];
  *(v30 + 40) = v42;
  v43 = [v58 view];

  if (!v43)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = [v43 topAnchor];

  v45 = [v2 view];
  if (!v45)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v46 = v45;
  v47 = [v45 topAnchor];

  v48 = [v44 constraintEqualToAnchor_];
  *(v30 + 48) = v48;
  v49 = [v58 view];

  if (!v49)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v50 = [v49 bottomAnchor];

  v51 = [v2 view];
  if (!v51)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v52 = v51;
  v53 = objc_opt_self();
  v54 = [v52 bottomAnchor];

  v55 = [v50 constraintEqualToAnchor_];
  *(v30 + 56) = v55;
  sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
  v56 = sub_2647857E4();

  [v53 activateConstraints_];

  [v58 didMoveToParentViewController_];
  v57 = v58;
}

id CheckInOnboardingFlowViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_264785714();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CheckInOnboardingFlowViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CheckInOnboardingFlowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26468C740()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26468C7AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_26468C7F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26468C8A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(v3 + 32);
  swift_unknownObjectRetain();
  v6 = v5(v4, v3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_26468C908(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  v6 = v5(v4, v3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_26468C970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v40 = sub_264784AA4();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76AB0, &qword_26478B618);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v39 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76AB8, &qword_26478B620);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v39 - v16;
  *v12 = sub_264785504();
  v12[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76AC0, &qword_26478B628);
  sub_26468CDBC(v3, *(a1 + 16), *(a1 + 24), v12 + *(v19 + 44));
  sub_264785504();
  sub_2647840A4();
  v20 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76AC8, &qword_26478B630) + 36));
  v21 = v46;
  *v20 = v45;
  v20[1] = v21;
  v20[2] = v47;
  v22 = [objc_opt_self() systemGray5Color];
  v23 = sub_264785134();
  v24 = sub_264784C34();
  v25 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76AD0, &qword_26478B638) + 36);
  *v25 = v23;
  v25[8] = v24;
  v26 = v12 + *(v9 + 36);
  v27 = *(sub_2647842B4() + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_264784674();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #12.0 }

  *v26 = _Q0;
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75948, &qword_26478B640) + 36)] = 256;
  sub_264784A94();
  v35 = sub_26468F238();
  sub_264784FF4();
  (*(v5 + 8))(v8, v40);
  sub_26460CD50(v12, &qword_27FF76AB0, &qword_26478B618);
  v44 = *(v39[1] + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_2647852F4();
  if (v42 == 1)
  {
    if (qword_27FF751B8 != -1)
    {
      swift_once();
    }

    v36 = qword_27FF78F28;
    v37 = unk_27FF78F30;
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
  }

  *&v44 = v36;
  *(&v44 + 1) = v37;
  v42 = v9;
  v43 = v35;
  swift_getOpaqueTypeConformance2();
  sub_264613FC4();
  sub_264784F74();

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_26468CDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v5 = sub_264783D44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B18, &qword_26478B660);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B20, &qword_26478B668);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  sub_264783D24();
  v15 = sub_264783D34();
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  v38 = MEMORY[0x277D84F90];
  sub_26468F95C(&qword_27FF76B28, MEMORY[0x277CE42D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B30, &qword_26478B670);
  sub_26460CDF0(&qword_27FF76B38, &qword_27FF76B30, &qword_26478B670);
  sub_264785BD4();
  v17 = v32;
  v16 = v33;
  v35 = v32;
  v36 = v33;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B40, &qword_26478B678);
  sub_26468F46C();
  sub_264783D14();
  KeyPath = swift_getKeyPath();
  v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B60, &qword_26478B6B8) + 36)];
  *v19 = KeyPath;
  v19[1] = 0;
  v20 = sub_264784714();
  v21 = &v14[*(v11 + 36)];
  sub_26468D8C0(a1, v17, v16, v21);
  v22 = sub_264784064();
  LOBYTE(v10) = MEMORY[0x26673E9D0]((2 * v22));
  v23 = sub_2647842A4();
  v24 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B68, &unk_26478B6C0) + 36);
  *v24 = v23;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  *(v24 + 17) = v10;
  *(v24 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B70, &qword_26478C010);
  v25 = *(sub_264784304() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2647889E0;
  sub_2647842E4();
  v29 = sub_26468F574();
  MEMORY[0x26673ECD0](0, v28, v11, v29);

  return sub_26460CD50(v14, &qword_27FF76B20, &qword_26478B668);
}

uint64_t sub_26468D1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B58, &qword_26478B680);
  v82 = *(v80 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  v9 = &v67 - v8;
  v74 = sub_264783D64();
  v71 = *(v74 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v74);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76CA0, &qword_26478B838);
  v75 = *(v77 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v72 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76CA8, &qword_26478B840);
  v83 = *(v15 - 8);
  v16 = v83[8];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = &v67 - v20;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76CB0, &qword_26478B848);
  v76 = *(v70 - 8);
  v21 = *(v76 + 64);
  v22 = MEMORY[0x28223BE20](v70);
  v73 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v67 - v24;
  v26 = a2;
  v27 = type metadata accessor for DestinationPresentationMapView();
  v28 = sub_26468C908(v27);
  if (v28)
  {
    v79 = v9;
    v29 = v28;
    [v28 _coordinate];
    v31 = v30;
    v33 = v32;

    v34 = sub_264784644();
    v78 = v25;
    MEMORY[0x26673DAC0](v34, v31, v33);
    v35 = *(a1 + 8);
    v36 = *(a3 + 24);
    swift_unknownObjectRetain();
    v36(v26, a3);
    swift_unknownObjectRelease();
    sub_264783D54();
    v37 = objc_opt_self();
    v69 = v15;
    v68 = v19;
    v38 = v37;
    v39 = [v37 systemBlueColor];
    sub_264785134();
    v40 = sub_2647851F4();

    v85 = v40;
    v41 = MEMORY[0x277CE0F78];
    v42 = MEMORY[0x277CE42E0];
    v43 = MEMORY[0x277CE0F60];
    v44 = v72;
    v45 = v74;
    sub_264783D74();

    (*(v71 + 8))(v12, v45);
    v46 = [v38 systemBlueColor];
    v47 = sub_264785134();
    v88 = v43;
    v89 = v47;
    v85 = v45;
    v86 = v41;
    v87 = v42;
    swift_getOpaqueTypeConformance2();
    v48 = v84;
    v49 = v77;
    sub_264783D84();

    (*(v75 + 8))(v44, v49);
    v50 = v76;
    v51 = *(v76 + 16);
    v52 = v73;
    v53 = v70;
    v51(v73, v78, v70);
    v54 = v83[2];
    v55 = v68;
    v56 = v48;
    v57 = v69;
    v54(v68, v56, v69);
    v58 = v79;
    v51(v79, v52, v53);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76CB8, &qword_26478B850);
    v54((v58 + *(v59 + 48)), v55, v57);
    v60 = v83[1];
    v60(v84, v57);
    v61 = *(v50 + 8);
    v61(v78, v53);
    v60(v55, v57);
    v61(v52, v53);
    v62 = v81;
    sub_26460E7E4(v79, v81, &qword_27FF76B58, &qword_26478B680);
    return (*(v82 + 56))(v62, 0, 1, v80);
  }

  else
  {
    v64 = v81;
    v65 = *(v82 + 56);
    v66 = v80;

    return v65(v64, 1, 1, v66);
  }
}

uint64_t sub_26468D8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BB0, &qword_26478B6E0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BB8, &qword_26478B6E8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - v16;
  *v12 = sub_2647845C4();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BC0, &qword_26478B6F0);
  sub_26468DAF8(a1, a2, a3, &v12[*(v18 + 44)]);
  v19 = sub_264784C24();
  v20 = &v12[*(v9 + 44)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  sub_264785514();
  sub_264784314();
  sub_26460E7E4(v12, v17, &qword_27FF76BB0, &qword_26478B6E0);
  v21 = &v17[*(v14 + 44)];
  v22 = v28[5];
  *(v21 + 4) = v28[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = v28[6];
  v23 = v28[1];
  *v21 = v28[0];
  *(v21 + 1) = v23;
  v24 = v28[3];
  *(v21 + 2) = v28[2];
  *(v21 + 3) = v24;
  v25 = sub_26468F710();
  LOBYTE(a2) = sub_264784C34();
  sub_26460E7E4(v17, a4, &qword_27FF76BB8, &qword_26478B6E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BC8, &unk_26478B6F8);
  v27 = a4 + *(result + 36);
  *v27 = v25;
  *(v27 + 8) = a2;
  return result;
}

uint64_t sub_26468DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v75 = sub_264784B04();
  v74 = *(v75 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BD0, &qword_26478B708);
  v11 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v71 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BD8, &qword_26478B710);
  v77 = *(v13 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x28223BE20](v13);
  v72 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BE0, &qword_26478B718);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v78 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BE8, &qword_26478B720);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BF0, &qword_26478B728);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v76 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v64 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v64 - v34;
  *v25 = sub_264784724();
  *(v25 + 1) = 0;
  v36 = 1;
  v25[16] = 1;
  v37 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BF8, &qword_26478B730) + 44)];
  v65 = a2;
  v66 = a3;
  sub_26468E394(a1, v37);
  sub_264785514();
  sub_264784314();
  sub_26460E7E4(v25, v33, &qword_27FF76BE8, &qword_26478B720);
  v38 = &v33[*(v27 + 44)];
  v39 = v87;
  *(v38 + 4) = v86;
  *(v38 + 5) = v39;
  *(v38 + 6) = v88;
  v40 = v83;
  *v38 = v82;
  *(v38 + 1) = v40;
  v41 = v85;
  *(v38 + 2) = v84;
  *(v38 + 3) = v41;
  v42 = v33;
  v43 = v13;
  sub_26460E7E4(v42, v35, &qword_27FF76BF0, &qword_26478B728);
  v80[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_2647852F4();
  if (v81 == 1)
  {
    v44 = swift_allocObject();
    v45 = v66;
    *(v44 + 16) = v65;
    *(v44 + 24) = v45;
    v46 = *(a1 + 48);
    *(v44 + 64) = *(a1 + 32);
    *(v44 + 80) = v46;
    *(v44 + 96) = *(a1 + 64);
    v47 = *(a1 + 16);
    *(v44 + 32) = *a1;
    *(v44 + 48) = v47;
    v48 = type metadata accessor for DestinationPresentationMapView();
    (*(*(v48 - 8) + 16))(v80, a1, v48);
    v49 = v67;
    sub_264785334();
    sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
    v50 = v71;
    v51 = v69;
    sub_264785034();
    (*(v68 + 8))(v49, v51);
    v52 = v73;
    sub_264784AF4();
    sub_26468F874();
    sub_26468F95C(&qword_27FF76C18, MEMORY[0x277CDE400]);
    v53 = v72;
    v54 = v75;
    sub_264784EC4();
    (*(v74 + 8))(v52, v54);
    sub_26460CD50(v50, &qword_27FF76BD0, &qword_26478B708);
    v55 = (v53 + *(v43 + 36));
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C20, &qword_26478B740) + 28);
    v57 = *MEMORY[0x277CDF438];
    v58 = sub_264783F84();
    (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
    *v55 = swift_getKeyPath();
    sub_26460E7E4(v53, v21, &qword_27FF76BD8, &qword_26478B710);
    v36 = 0;
  }

  (*(v77 + 56))(v21, v36, 1, v43);
  v59 = v76;
  sub_26460CCE8(v35, v76, &qword_27FF76BF0, &qword_26478B728);
  v60 = v78;
  sub_26468F798(v21, v78);
  v61 = v79;
  sub_26460CCE8(v59, v79, &qword_27FF76BF0, &qword_26478B728);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C00, &qword_26478B738);
  sub_26468F798(v60, v61 + *(v62 + 48));
  sub_26460CD50(v21, &qword_27FF76BE0, &qword_26478B718);
  sub_26460CD50(v35, &qword_27FF76BF0, &qword_26478B728);
  sub_26460CD50(v60, &qword_27FF76BE0, &qword_26478B718);
  return sub_26460CD50(v59, &qword_27FF76BF0, &qword_26478B728);
}

uint64_t sub_26468E394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C28, &qword_26478B780);
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v55 - v5);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C30, &qword_26478B788);
  v7 = *(*(v62 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v62);
  v63 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C38, &qword_26478B790);
  v12 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C40, &qword_26478B798);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C48, &unk_26478B7A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - v20;
  v22 = type metadata accessor for DestinationPresentationMapView();
  v23 = sub_26468C908(v22);
  if (v23)
  {
    v24 = v23;
    v60 = v14;
    v61 = v18;
    v25 = _s15SafetyMonitorUI0aB11UIUtilitiesC17fullAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v23);
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      v57 = sub_26468E9D4(v24, v22);
      v58 = v29;
      v69 = *(a1 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C88, &qword_26478B7C0);
      sub_264785314();
      v55 = *(&v72 + 1);
      v30 = v72;
      v56 = v73;
      *&v72 = v27;
      *(&v72 + 1) = v28;
      sub_264613FC4();
      v31 = sub_264784E44();
      v33 = v32;
      *&v72 = v31;
      *(&v72 + 1) = v32;
      v59 = v24;
      v35 = v34 & 1;
      LOBYTE(v73) = v34 & 1;
      v74 = v36;
      sub_264785034();
      sub_26460ECC4(v31, v33, v35);

      v37 = sub_264784D74();
      KeyPath = swift_getKeyPath();
      v39 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C90, &qword_2647925E0) + 36)];
      *v39 = KeyPath;
      v39[1] = v37;
      v40 = swift_getKeyPath();
      v41 = v63;
      v42 = &v11[*(v62 + 36)];
      *v42 = v40;
      *(v42 + 1) = 1;
      v42[16] = 0;
      sub_26460CCE8(v11, v41, &qword_27FF76C30, &qword_26478B788);
      *v6 = v30;
      v43 = v56;
      v6[1] = v55;
      v6[2] = v43;
      v44 = v58;
      v6[3] = v57;
      v6[4] = v44;
      v6[5] = 0x4050000000000000;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C98, &qword_26478B830);
      sub_26460CCE8(v41, v6 + *(v45 + 48), &qword_27FF76C30, &qword_26478B788);

      sub_26460CD50(v11, &qword_27FF76C30, &qword_26478B788);
      sub_26460CD50(v41, &qword_27FF76C30, &qword_26478B788);
      v46 = v59;

      v47 = v64;
      sub_26460E7E4(v6, v64, &qword_27FF76C28, &qword_26478B780);
      (*(v65 + 56))(v47, 0, 1, v66);
    }

    else
    {
      v46 = v24;
      v47 = v64;
      (*(v65 + 56))(v64, 1, 1, v66);
    }

    sub_26460CCE8(v47, v17, &qword_27FF76C38, &qword_26478B790);
    swift_storeEnumTagMultiPayload();
    sub_26468FAC0();
    sub_26468FB70();
    sub_264784874();

    v51 = v47;
    v52 = &qword_27FF76C38;
    v53 = &qword_26478B790;
  }

  else
  {
    sub_26468EB80(&v72);
    v48 = v72;
    v49 = v73;
    v50 = v74;
    v69 = v72;
    v70 = v73;
    v71 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76590, &qword_26478A698);
    sub_26466D4BC();
    sub_264785034();
    sub_26466D57C(v48, *(&v48 + 1), v49, v50);
    *&v21[*(v18 + 36)] = sub_2647849C4();
    sub_26460CCE8(v21, v17, &qword_27FF76C48, &unk_26478B7A0);
    swift_storeEnumTagMultiPayload();
    sub_26468FAC0();
    sub_26468FB70();
    sub_264784874();
    v51 = v21;
    v52 = &qword_27FF76C48;
    v53 = &unk_26478B7A0;
  }

  return sub_26460CD50(v51, v52, v53);
}

id sub_26468E9D4(void *a1, uint64_t a2)
{
  v3 = sub_26468C8A0(a2);
  switch(v3)
  {
    case 3:
      if (qword_27FF75098 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF78CF0;
      goto LABEL_13;
    case 2:
      if (qword_27FF75090 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF78CE0;
      goto LABEL_13;
    case 1:
      if (qword_27FF75088 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF78CD0;
LABEL_13:
      v5 = *v4;
      v6 = v4[1];

      return v5;
  }

  v7 = [a1 name];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v5 = sub_264785724();

  result = [a1 _geoMapItem];
  if (result)
  {
    v10 = [result _placeType];
    swift_unknownObjectRelease();
    if (v10 > 0x11 || ((1 << v10) & 0x2D000) == 0)
    {
      return v5;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26468EB80@<X0>(uint64_t *a1@<X8>)
{
  v9 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_2647852F4();
  if (v8 == 1)
  {
    if (qword_27FF75220 != -1)
    {
      swift_once();
    }

    sub_264613FC4();

    result = sub_264784E44();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

uint64_t sub_26468EC68(void *a1)
{
  v2 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v7 - 8) + 56))(v6, 1, 3, v7);
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v18 = v10;
  v19 = v9;
  v16[3] = v9;
  v16[4] = v8;
  v16[5] = v10;
  sub_26468F9AC(&v19, v16);

  sub_26460CCE8(&v18, v16, &qword_27FF756E0, &qword_264787DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76188, &qword_264789D48);
  MEMORY[0x26673F100](&v17);
  v11 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_2647031A4(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_2647031A4(v12 > 1, v13 + 1, 1, v11);
  }

  v11[2] = v13 + 1;
  sub_26468FA08(v6, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
  v16[0] = v9;
  v16[1] = v8;
  v16[2] = v10;
  v15 = v11;
  sub_2647853E4();
  sub_26468FA6C(&v19);

  return sub_26460CD50(&v18, &qword_27FF756E0, &qword_264787DE0);
}

uint64_t sub_26468EE9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF751E0 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  v2 = sub_264784E44();
  v4 = v3;
  v6 = v5;
  sub_2647851C4();
  v7 = sub_264784DF4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_26460ECC4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_26468EFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v2 + 8);
  v4 = *v2;
  v5 = v2[1];
  return sub_26468C970(a1, a2);
}

uint64_t sub_26468F010@<X0>(uint64_t a1@<X8>)
{
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  sub_264613FC4();

  v3 = sub_264784E44();
  v5 = v4;
  v7 = v6 & 1;
  sub_264785034();
  sub_26460ECC4(v3, v5, v7);

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76CD0, &unk_26478B900);
  v10 = a1 + *(result + 36);
  *v10 = KeyPath;
  *(v10 + 8) = 1;
  *(v10 + 16) = 0;
  return result;
}

uint64_t sub_26468F118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264784544();
  *a1 = result;
  return result;
}

uint64_t sub_26468F144(uint64_t *a1)
{
  v1 = *a1;

  return sub_264784554();
}

__n128 sub_26468F170@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *(a4 + 8);
  swift_unknownObjectRetain();
  v10 = sub_264784174();
  v12 = v11;
  sub_2647852E4();
  sub_2647852E4();
  result = v14;
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = v14.n128_u8[0];
  *(a5 + 48) = v14.n128_u64[1];
  *(a5 + 56) = v14;
  return result;
}

unint64_t sub_26468F238()
{
  result = qword_27FF76AD8;
  if (!qword_27FF76AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76AB0, &qword_26478B618);
    sub_26468F2F0();
    sub_26460CDF0(&qword_27FF76B10, &qword_27FF75948, &qword_26478B640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76AD8);
  }

  return result;
}

unint64_t sub_26468F2F0()
{
  result = qword_27FF76AE0;
  if (!qword_27FF76AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76AD0, &qword_26478B638);
    sub_26468F3A8();
    sub_26460CDF0(&qword_27FF76B00, &qword_27FF76B08, &unk_26478B650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76AE0);
  }

  return result;
}

unint64_t sub_26468F3A8()
{
  result = qword_27FF76AE8;
  if (!qword_27FF76AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76AC8, &qword_26478B630);
    sub_26460CDF0(&qword_27FF76AF0, &qword_27FF76AF8, &qword_26478B648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76AE8);
  }

  return result;
}

unint64_t sub_26468F46C()
{
  result = qword_27FF76B48;
  if (!qword_27FF76B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76B40, &qword_26478B678);
    sub_26460CDF0(&qword_27FF76B50, &qword_27FF76B58, &qword_26478B680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76B48);
  }

  return result;
}

uint64_t sub_26468F51C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264784544();
  *a1 = result;
  return result;
}

uint64_t sub_26468F548(uint64_t *a1)
{
  v1 = *a1;

  return sub_264784554();
}

unint64_t sub_26468F574()
{
  result = qword_27FF76B78;
  if (!qword_27FF76B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76B20, &qword_26478B668);
    sub_26468F62C();
    sub_26460CDF0(&qword_27FF76BA8, &qword_27FF76B68, &unk_26478B6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76B78);
  }

  return result;
}

unint64_t sub_26468F62C()
{
  result = qword_27FF76B80;
  if (!qword_27FF76B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76B60, &qword_26478B6B8);
    sub_26460CDF0(&qword_27FF76B88, &qword_27FF76B90, &unk_26478B6D0);
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76B80);
  }

  return result;
}

uint64_t sub_26468F710()
{
  v0 = sub_2647854C4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_2647854B4();
  return sub_2647840B4();
}

uint64_t sub_26468F798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BE0, &qword_26478B718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26468F808()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_26468F868()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_26468EC68(v0 + 4);
}

unint64_t sub_26468F874()
{
  result = qword_27FF76C10;
  if (!qword_27FF76C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76BD0, &qword_26478B708);
    sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
    sub_26468F95C(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76C10);
  }

  return result;
}

uint64_t sub_26468F95C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26468FA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26468FAC0()
{
  result = qword_27FF76C50;
  if (!qword_27FF76C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76C38, &qword_26478B790);
    sub_26460CDF0(&qword_27FF76C58, &qword_27FF76C28, &qword_26478B780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76C50);
  }

  return result;
}

unint64_t sub_26468FB70()
{
  result = qword_27FF76C60;
  if (!qword_27FF76C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76C48, &unk_26478B7A0);
    sub_26468FC28();
    sub_26460CDF0(&qword_27FF76C78, &qword_27FF76C80, &qword_26478B7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76C60);
  }

  return result;
}

unint64_t sub_26468FC28()
{
  result = qword_27FF76C68;
  if (!qword_27FF76C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76C70, &qword_26478B7B0);
    sub_26466D4BC();
    sub_26468F95C(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76C68);
  }

  return result;
}

uint64_t sub_26468FD24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26468FD6C(uint64_t result, int a2, int a3)
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

unint64_t sub_26468FDCC()
{
  result = qword_27FF76CC0;
  if (!qword_27FF76CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76CC8, qword_26478B8A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76AB0, &qword_26478B618);
    sub_26468F238();
    swift_getOpaqueTypeConformance2();
    sub_26468F95C(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76CC0);
  }

  return result;
}

unint64_t sub_26468FEE4()
{
  result = qword_27FF76CD8;
  if (!qword_27FF76CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76CD0, &unk_26478B900);
    sub_26465D02C();
    sub_26460CDF0(&qword_27FF76CE0, &qword_27FF76CE8, &qword_26478B910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76CD8);
  }

  return result;
}

uint64_t SafetyMonitorBadge.init(diameter:imageName:imageColor:badgeStroke:usePadding:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = a7;
  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 33) = a5;
  return result;
}

void *SafetyMonitorBadge.body.getter@<X0>(void *a1@<X8>)
{
  v86 = a1;
  v2 = sub_264785284();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v85 = v1[3];
  LODWORD(v5) = *(v1 + 32);
  v84 = *(v1 + 33);
  if (v8 == 0xD000000000000027 && 0x8000000264795C20 == v9 || (sub_264785E84() & 1) != 0)
  {
    v10 = sub_264785504();
    v12 = v11;

    sub_264785274();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
    v13 = sub_2647852C4();

    (*(v3 + 8))(v6, v2);
    v14 = sub_264785194();
    v15 = sub_264784C34();
    sub_264783F54();
    v105 = v13;
    *(&v106 + 2) = v94;
    WORD3(v106) = v95;
    *(&v107 + 1) = *v93;
    DWORD1(v107) = *&v93[3];
    HIDWORD(v109) = *&v138[3];
    *(&v109 + 9) = *v138;
    LOWORD(v106) = 1;
    *(&v106 + 1) = v14;
    LOBYTE(v107) = v15;
    *(&v107 + 1) = v16;
    *&v108 = v17;
    *(&v108 + 1) = v18;
    *&v109 = v19;
    BYTE8(v109) = 0;
    *&v110 = v10;
    *(&v110 + 1) = v12;
    v96 = v13;
    v97 = v106;
    v100 = v109;
    v101 = v110;
    v98 = v107;
    v99 = v108;
    v111 = v13;
    v112 = 0;
    LOWORD(v113) = 1;
    HIWORD(v113) = v95;
    *(&v113 + 2) = v94;
    v114 = v14;
    LOBYTE(v115) = v15;
    HIDWORD(v115) = *&v93[3];
    *(&v115 + 1) = *v93;
    v116 = v16;
    v117 = v17;
    v118 = v18;
    v119 = v19;
    LOBYTE(v120) = 0;
    HIDWORD(v120) = *&v138[3];
    *(&v120 + 1) = *v138;
    v121 = v10;
    v122 = v12;
    sub_26460CCE8(&v105, v149, &qword_27FF76DF0, &qword_26478B9B8);
    sub_26460CD50(&v111, &qword_27FF76DF0, &qword_26478B9B8);
    sub_264785504();
    sub_2647840A4();
    v20 = qword_27FF753A0;
    v21 = v85;

    if (v20 != -1)
    {
      swift_once();
    }

    v22 = qword_27FF792E8;
    sub_264783FD4();
    v23 = v156;
    v24 = v157;
    v25 = v158;
    v26 = v159;
    v27 = v160;
    v28 = v161;

    v29 = sub_264785504();
    v31 = v30;
    v32 = sub_264785504();
    *&v125 = v23;
    *(&v125 + 1) = __PAIR64__(v25, v24);
    *&v126 = v26;
    *(&v126 + 1) = v27;
    *&v127 = v28;
    *(&v127 + 1) = v22;
    LOWORD(v128) = 256;
    *(&v128 + 2) = v123;
    WORD3(v128) = v124;
    *(&v128 + 1) = v29;
    *&v129 = v31;
    *(&v129 + 1) = v32;
    v130 = v33;
    v89 = v127;
    v90 = v128;
    v91 = v129;
    v92 = v33;
    v87 = v125;
    v88 = v126;
    *&v132 = v23;
    *(&v132 + 1) = __PAIR64__(v25, v24);
    *&v133 = v26;
    *(&v133 + 1) = v27;
    *&v134 = v28;
    *(&v134 + 1) = v22;
    LOWORD(v135) = 256;
    WORD3(v135) = v124;
    *(&v135 + 2) = v123;
    *(&v135 + 1) = v29;
    *&v136 = v31;
    *(&v136 + 1) = v32;
    v137 = v33;
    sub_26460CCE8(&v125, v149, &qword_27FF76CF8, &qword_26478B948);
    sub_26460CD50(&v132, &qword_27FF76CF8, &qword_26478B948);
    LOBYTE(v22) = sub_264784C64();
    sub_264783F54();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    LOBYTE(v150) = 0;
    sub_264785194();
    v42 = sub_2647851F4();

    *&v138[96] = v102;
    *&v138[112] = v103;
    *&v138[128] = v104;
    *&v138[32] = v98;
    *&v138[48] = v99;
    *&v138[80] = v101;
    *&v138[64] = v100;
    *&v138[16] = v97;
    *v138 = v96;
    *&v138[184] = v89;
    *&v138[200] = v90;
    *&v138[216] = v91;
    *&v138[152] = v87;
    *&v138[144] = v21;
    *&v138[232] = v92;
    *&v138[168] = v88;
    v138[240] = v22;
    *&v138[248] = v35;
    *&v138[256] = v37;
    *&v138[264] = v39;
    *&v138[272] = v41;
    v138[280] = 0;
    *&v138[288] = v42;
    *&v138[296] = 0x4014000000000000;
    *&v138[304] = xmmword_26478B930;
    sub_2646911D8(v138);
  }

  else
  {

    sub_264785274();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
    v83 = sub_2647852C4();

    (*(v3 + 8))(v6, v2);
    sub_264785504();
    sub_2647840A4();
    v81 = v152;
    v82 = v150;
    v79 = v155;
    v80 = v154;
    v141 = v151;
    v140 = v153;
    v43 = v85;

    v44 = sub_264785194();
    sub_264785504();
    sub_2647840A4();
    v45 = v156;
    v46 = v157;
    v47 = v159;
    v48 = v160;
    v49 = v161;
    v50 = v162;
    v51 = sub_264785504();
    v138[0] = v46;
    v131[0] = v48;
    *&v87 = v44;
    *(&v87 + 1) = v45;
    LOBYTE(v88) = v46;
    *(&v88 + 1) = v47;
    v52 = v48;
    LOBYTE(v89) = v48;
    *(&v89 + 1) = v49;
    *&v90 = v50;
    *(&v90 + 1) = v51;
    *&v91 = v53;
    v54 = v141;
    v78 = v140;
    v146 = v53;
    v145 = v90;
    v144 = v89;
    v142 = v87;
    v143 = v88;
    *&v125 = v44;
    *(&v125 + 1) = v45;
    LOBYTE(v126) = v46;
    *(&v126 + 1) = v47;
    LOBYTE(v127) = v52;
    *(&v127 + 1) = v49;
    *&v128 = v50;
    *(&v128 + 1) = v51;
    *&v129 = v53;
    sub_26460CCE8(&v87, v149, &qword_27FF76CF0, &qword_26478B940);
    sub_26460CD50(&v125, &qword_27FF76CF0, &qword_26478B940);
    if (qword_27FF753A0 != -1)
    {
      swift_once();
    }

    v55 = qword_27FF792E8;
    sub_264783FD4();
    v56 = v163;
    v57 = v164;
    v58 = v165;
    v59 = v166;
    v60 = v167;
    v61 = v168;

    v62 = sub_264785504();
    v64 = v63;
    v65 = sub_264785504();
    *&v105 = v56;
    *(&v105 + 1) = __PAIR64__(v58, v57);
    *&v106 = v59;
    *(&v106 + 1) = v60;
    *&v107 = v61;
    *(&v107 + 1) = v55;
    LOWORD(v108) = 256;
    *(&v108 + 2) = v147;
    WORD3(v108) = v148;
    *(&v108 + 1) = v62;
    *&v109 = v64;
    *(&v109 + 1) = v65;
    *&v110 = v66;
    v134 = v107;
    v135 = v108;
    v136 = v109;
    v137 = v66;
    v132 = v105;
    v133 = v106;
    v111 = v56;
    v112 = __PAIR64__(v58, v57);
    v113 = v59;
    v114 = v60;
    v115 = v61;
    v116 = v55;
    LOWORD(v117) = 256;
    HIWORD(v117) = v148;
    *(&v117 + 2) = v147;
    v118 = v62;
    v119 = v64;
    v120 = v65;
    v121 = v66;
    sub_26460CCE8(&v105, v149, &qword_27FF76CF8, &qword_26478B948);
    sub_26460CD50(&v111, &qword_27FF76CF8, &qword_26478B948);
    LOBYTE(v55) = sub_264784C64();
    sub_264783F54();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v139 = 0;
    sub_264785194();
    v75 = sub_2647851F4();

    *&v138[96] = v144;
    *&v138[112] = v145;
    *&v138[80] = v143;
    *&v138[64] = v142;
    *&v138[152] = v133;
    *&v138[136] = v132;
    *&v138[200] = v136;
    *&v138[184] = v135;
    *v138 = v83;
    *&v138[8] = v82;
    v138[16] = v54;
    *&v138[24] = v81;
    v138[32] = v78;
    *&v138[40] = v80;
    *&v138[48] = v79;
    *&v138[56] = v43;
    *&v138[128] = v146;
    *&v138[216] = v137;
    *&v138[168] = v134;
    v138[224] = v55;
    *&v138[232] = v68;
    *&v138[240] = v70;
    *&v138[248] = v72;
    *&v138[256] = v74;
    v138[264] = 0;
    *&v138[272] = v75;
    *&v138[280] = 0x4014000000000000;
    *&v138[288] = xmmword_26478B930;
    sub_2646909EC(v138);
  }

  memcpy(v131, v138, sizeof(v131));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D00, &qword_26478B950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D08, &qword_26478B958);
  sub_2646909F4();
  sub_264690DB8();
  sub_264784874();
  return memcpy(v86, v149, 0x141uLL);
}

unint64_t sub_2646909F4()
{
  result = qword_27FF76D10;
  if (!qword_27FF76D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D00, &qword_26478B950);
    sub_264690A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D10);
  }

  return result;
}

unint64_t sub_264690A80()
{
  result = qword_27FF76D18;
  if (!qword_27FF76D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D20, &qword_26478B960);
    sub_264690B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D18);
  }

  return result;
}

unint64_t sub_264690B0C()
{
  result = qword_27FF76D28;
  if (!qword_27FF76D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D30, &qword_26478B968);
    sub_264690BC4();
    sub_26460CDF0(&qword_27FF76D80, &qword_27FF76CF8, &qword_26478B948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D28);
  }

  return result;
}

unint64_t sub_264690BC4()
{
  result = qword_27FF76D38;
  if (!qword_27FF76D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D40, &qword_26478B970);
    sub_264690C7C();
    sub_26460CDF0(&qword_27FF76D78, &qword_27FF76CF0, &qword_26478B940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D38);
  }

  return result;
}

unint64_t sub_264690C7C()
{
  result = qword_27FF76D48;
  if (!qword_27FF76D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D50, &qword_26478B978);
    sub_264690D34();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D48);
  }

  return result;
}

unint64_t sub_264690D34()
{
  result = qword_27FF76D58;
  if (!qword_27FF76D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D60, &unk_26478B980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D58);
  }

  return result;
}

unint64_t sub_264690DB8()
{
  result = qword_27FF76D88;
  if (!qword_27FF76D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D08, &qword_26478B958);
    sub_264690E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D88);
  }

  return result;
}

unint64_t sub_264690E44()
{
  result = qword_27FF76D90;
  if (!qword_27FF76D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D98, &qword_26478B990);
    sub_264690ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D90);
  }

  return result;
}

unint64_t sub_264690ED0()
{
  result = qword_27FF76DA0;
  if (!qword_27FF76DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76DA8, &qword_26478B998);
    sub_264690F88();
    sub_26460CDF0(&qword_27FF76D80, &qword_27FF76CF8, &qword_26478B948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DA0);
  }

  return result;
}

unint64_t sub_264690F88()
{
  result = qword_27FF76DB0;
  if (!qword_27FF76DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76DB8, &qword_26478B9A0);
    sub_264691040();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DB0);
  }

  return result;
}

unint64_t sub_264691040()
{
  result = qword_27FF76DC0;
  if (!qword_27FF76DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76DC8, &qword_26478B9A8);
    sub_2646910CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DC0);
  }

  return result;
}

unint64_t sub_2646910CC()
{
  result = qword_27FF76DD0;
  if (!qword_27FF76DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76DD8, &qword_26478B9B0);
    sub_264691184();
    sub_26460CDF0(&qword_27FF76DE8, &qword_27FF76DF0, &qword_26478B9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DD0);
  }

  return result;
}

unint64_t sub_264691184()
{
  result = qword_27FF76DE0;
  if (!qword_27FF76DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DE0);
  }

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

uint64_t sub_264691214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26469125C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2646912B4()
{
  result = qword_27FF76DF8;
  if (!qword_27FF76DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E00, &qword_26478BA58);
    sub_2646909F4();
    sub_264690DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DF8);
  }

  return result;
}

id sub_264691340(uint64_t a1)
{
  result = objc_opt_self();
  if (a1 != 3)
  {
    if (a1 != 2)
    {
      if (a1 != 1)
      {
        goto LABEL_10;
      }

      result = [result homeStyleAttributes];
      if (result)
      {
        return result;
      }

      __break(1u);
    }

    result = [result workStyleAttributes];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result schoolStyleAttributes];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_10:
  result = [result addressMarkerStyleAttributes];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t ETAType.id.getter()
{
  v1 = 0x69626F6D6F747561;
  v2 = 0x7469736E617274;
  if (*v0 != 2)
  {
    v2 = 0x6D6F74737563;
  }

  if (*v0)
  {
    v1 = 0x676E696B6C6177;
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

uint64_t ETAType.imageName.getter()
{
  v1 = 0x6C6C69662E726163;
  v2 = 0x6C69662E6D617274;
  if (*v0 != 2)
  {
    v2 = 0x6B636F6C63;
  }

  if (*v0)
  {
    v1 = 0x772E657275676966;
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

uint64_t ETAType.labelName.getter()
{
  v1 = sub_264783B94();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_264785704();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *v0;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785754();
}

SafetyMonitorUI::ETAType_optional __swiftcall ETAType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_2646917AC(uint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x69626F6D6F747561;
  v4 = 0xE700000000000000;
  v5 = 0x7469736E617274;
  if (*v1 != 2)
  {
    v5 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696B6C6177;
    v2 = 0xE700000000000000;
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

unint64_t sub_26469183C()
{
  result = qword_27FF76E08;
  if (!qword_27FF76E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E08);
  }

  return result;
}

uint64_t sub_264691890()
{
  v1 = *v0;
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_264691954()
{
  *v0;
  *v0;
  *v0;
  sub_264785794();
}

uint64_t sub_264691A04()
{
  v1 = *v0;
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_264691ADC()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785754();
}

uint64_t sub_264691C6C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785754();
}

uint64_t getEnumTagSinglePayload for UserType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264691FC4()
{
  result = qword_27FF76E10;
  if (!qword_27FF76E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E10);
  }

  return result;
}

uint64_t MessageInfo.localeIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *MessageInfo.__allocating_init(mapItem:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *MessageInfo.init(mapItem:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t MessageInfo.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t MessageInfo.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_264692178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x69626F6D6F747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7469736E617274;
    }

    else
    {
      v5 = 0x6D6F74737563;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x676E696B6C6177;
    }

    else
    {
      v5 = 0x69626F6D6F747561;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEA0000000000656CLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x7469736E617274;
  if (a2 != 2)
  {
    v8 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x676E696B6C6177;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264785E84();
  }

  return v11 & 1;
}

uint64_t sub_2646922B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007373696D73;
  v3 = 0x69446C61756E616DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5364657472617473;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4 == 2)
    {
      v6 = 0xEE006E6F69737365;
    }

    else
    {
      v6 = 0x8000000264793170;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D7369446F747561;
    }

    else
    {
      v5 = 0x69446C61756E616DLL;
    }

    if (v4)
    {
      v6 = 0xEB00000000737369;
    }

    else
    {
      v6 = 0xED00007373696D73;
    }
  }

  v7 = 0x5364657472617473;
  v8 = 0x8000000264793170;
  if (a2 == 2)
  {
    v8 = 0xEE006E6F69737365;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v3 = 0x6D7369446F747561;
    v2 = 0xEB00000000737369;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264785E84();
  }

  return v11 & 1;
}

uint64_t sub_264692428(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064657461;
  v3 = 0x64696C6156746F6ELL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x64696C61766E69;
  v7 = 0xED00007261466F6FLL;
  if (a1 != 4)
  {
    v7 = 0xEF65736F6C436F6FLL;
  }

  if (a1 != 3)
  {
    v6 = 0x5464696C61766E69;
    v5 = v7;
  }

  v8 = 0x69746164696C6176;
  v9 = 0xEA0000000000676ELL;
  if (a1 != 1)
  {
    v8 = 0x64696C6176;
    v9 = 0xE500000000000000;
  }

  if (!a1)
  {
    v8 = 0x64696C6156746F6ELL;
    v9 = 0xEC00000064657461;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x64696C61766E69)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00007261466F6FLL;
      if (v10 != 0x5464696C61766E69)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEF65736F6C436F6FLL;
      if (v10 != 0x5464696C61766E69)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000676ELL;
        if (v10 != 0x69746164696C6176)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x64696C6176;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = sub_264785E84();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_264692624(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701670760;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1802661751;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6C6F6F686373;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x726568746FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1701670760;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6C6F6F686373;
    if (a2 != 3)
    {
      v6 = 0x726568746FLL;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1802661751;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_264785E84();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_264692780(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x74616E6974736564;
  v4 = a1;
  v5 = 0x6563655274736F6DLL;
  v6 = 0xEA0000000000746ELL;
  v7 = 0x6574756F726E65;
  if (a1 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = 0xE700000000000000;
  }

  v8 = 0x6F6C6E557473616CLL;
  v9 = 0xEA00000000006B63;
  if (a1 != 1)
  {
    v8 = 0x636F4C7472617473;
    v9 = 0xED00006E6F697461;
  }

  if (!a1)
  {
    v8 = 0x74616E6974736564;
    v9 = 0xEB000000006E6F69;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA0000000000746ELL;
      if (v10 != 0x6563655274736F6DLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x6574756F726E65)
        {
          goto LABEL_31;
        }
      }

      else if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA00000000006B63;
        if (v10 != 0x6F6C6E557473616CLL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x636F4C7472617473;
      v2 = 0xED00006E6F697461;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = sub_264785E84();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_264692988(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000030;
  v3 = "eRoutine-1\n";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "yMonitorMessages";
      v5 = 0xD000000000000039;
    }

    else
    {
      v6 = "yMonitorMessages.Workouts";
      v5 = 0xD000000000000043;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000030;
    }

    else
    {
      v5 = 0xD00000000000003BLL;
    }

    if (v4)
    {
      v6 = "yMonitorMessages.NewMessage";
    }

    else
    {
      v6 = "eRoutine-1\n";
    }
  }

  if (a2 > 1u)
  {
    v3 = "yMonitorMessages";
    v7 = 0xD000000000000039;
    v8 = "yMonitorMessages.Workouts";
    v2 = 0xD000000000000043;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD00000000000003BLL;
    v8 = "yMonitorMessages.NewMessage";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_264785E84();
  }

  return v12 & 1;
}

void sub_264692AAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E90, &unk_26478BD20);
    v2 = sub_264785DE4();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
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
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_2646548B4(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
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

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void static MetricsManager.submitWorkoutAlwaysPromptResponse(reason:workoutActivityType:)(unsigned __int8 *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (*a1 > 2u)
    {
    }

    else
    {
      v3 = sub_264785E84();

      if ((v3 & 1) == 0)
      {
        v4 = _HKWorkoutActivityNameForActivityType();
        if (v4)
        {
          sub_264785724();
          v6 = v5;
        }

        else
        {
          v6 = 0;
        }

        sub_264655A88(MEMORY[0x277D84F90]);
        v7 = sub_264785994();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_2646933F8(v7, 0x7073655272657375, 0xEC00000065736E6FLL, isUniquelyReferenced_nonNull_native, &qword_27FF75E90, &unk_26478BD20);
        v9 = [objc_opt_self() sharedConnection];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 isHealthDataSubmissionAllowed];

          if (v11)
          {
            if (v6)
            {

              v12 = swift_isUniquelyReferenced_nonNull_native();
              sub_2646933F8(v4, 0xD000000000000019, 0x8000000264795D10, v12, &qword_27FF75E90, &unk_26478BD20);
            }

            else
            {
            }
          }

          else
          {
          }

          v13 = sub_264785714();
          sub_2646936F0();
          v14 = sub_264785604();

          AnalyticsSendEvent();
        }

        else
        {

          __break(1u);
        }
      }
    }
  }
}

SafetyMonitorUI::MetricsManager::CheckInButtonNotDisplayedReason_optional __swiftcall MetricsManager.CheckInButtonNotDisplayedReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void static MetricsManager.submitFitnessCheckInButtonDisplayed(isDisplayed:notDisplayedReason:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F08, &qword_264789890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889B0;
  *(inited + 32) = 0x6579616C70736964;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = sub_264785864();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000264795D70;
  *(inited + 72) = sub_264785994();
  v4 = sub_264655944(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F10, &qword_264789898);
  swift_arrayDestroy();
  v5 = sub_264785714();
  sub_264692AAC(v4);

  sub_2646936F0();
  v6 = sub_264785604();

  AnalyticsSendEvent();
}

uint64_t sub_264693148(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_264785DD4();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_264785F44();
      sub_264785794();
      result = sub_264785F94();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2646933F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2646548B4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_264693148(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_2646548B4(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_264785EC4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_264693594(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

id sub_264693594(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264785DC4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_2646936F0()
{
  result = qword_27FF75F00;
  if (!qword_27FF75F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF75F00);
  }

  return result;
}

unint64_t sub_264693740()
{
  result = qword_27FF76E18;
  if (!qword_27FF76E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E18);
  }

  return result;
}

id CriticalAlertOnboardingViewController.init(model:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_264783B94();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_264785704();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2647856E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  sub_2647856D4();
  sub_2647856C4();
  sub_2647856B4();
  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v18 = sub_264785714();

  v19 = sub_264785714();

  type metadata accessor for ImageProvider();
  v20 = [v16 bundleForClass_];
  v21 = sub_264785714();
  v22 = [objc_opt_self() imageNamed:v21 inBundle:v20 withConfiguration:0];

  if (!v22)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v25.receiver = v2;
  v25.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v25, sel_initWithTitle_detailText_icon_contentLayout_, v18, v19, v22, 2);

  return v23;
}

Swift::Void __swiftcall CriticalAlertOnboardingViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CriticalAlertBlurbView();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43.receiver = v1;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, sel_viewDidLoad);
  v7 = [objc_opt_self() boldButton];
  if (qword_27FF75188 != -1)
  {
    swift_once();
  }

  v8 = sub_264785714();
  [v7 setTitle:v8 forState:0];

  [v7 addTarget:v1 action:sel_okButtonAction forControlEvents:64];
  v9 = [v1 buttonTray];
  [v9 addButton_];

  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E20, &qword_26478BD68));
  v11 = sub_264784784();
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  v14 = [v1 contentView];
  v15 = [v11 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = v15;
  [v14 addSubview_];

  [v11 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26478B4E0;
  v18 = [v11 view];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v1 contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v17 + 32) = v23;
  v24 = [v11 view];
  if (!v24)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v1 contentView];
  v28 = [v27 trailingAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v17 + 40) = v29;
  v30 = [v11 view];
  if (!v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = [v1 contentView];
  v34 = [v33 topAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v17 + 48) = v35;
  v36 = [v11 view];

  if (v36)
  {
    v37 = [v36 bottomAnchor];

    v38 = [v1 contentView];
    v39 = [v38 bottomAnchor];

    v40 = [v37 constraintEqualToAnchor_];
    *(v17 + 56) = v40;
    v41 = objc_opt_self();
    sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
    v42 = sub_2647857E4();

    [v41 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_2646940E4()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v7 = v5;
  sub_264785694();
  v8 = [v5 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1)
  {

    sub_264785694();
    v11 = [v5 bundleForClass_];
    sub_264783B84();
    sub_264785754();
  }

  v12 = sub_264785714();

  v13 = sub_264785714();

  v25 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  sub_264785694();
  v14 = [v7 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = sub_264785714();

  v31 = sub_264694D74;
  v32 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_264694948;
  v30 = &block_descriptor_6;
  v17 = _Block_copy(&aBlock);

  v18 = objc_opt_self();
  v24 = [v18 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  sub_264785694();
  v19 = [v7 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = sub_264785714();

  v31 = sub_264694DAC;
  v32 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_264694948;
  v30 = &block_descriptor_5;
  v22 = _Block_copy(&aBlock);

  v23 = [v18 actionWithTitle:v21 style:0 handler:v22];
  _Block_release(v22);

  [v25 addAction_];
  [v25 addAction_];
  [v26 presentViewController:v25 animated:1 completion:0];
}

void sub_26469470C(char a1)
{
  v2 = v1;
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [objc_opt_self() setCriticalAlertPreference_];
  sub_264783DE4();
  v10 = sub_264783E14();
  v11 = sub_2647859F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    if (a1)
    {
      v14 = 0x2253455922;
    }

    else
    {
      v14 = 575622690;
    }

    if (a1)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    v16 = sub_2646DF234(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_264605000, v10, v11, "#CriticalAlertOnboarding: Setting Critical Alert %s in UserDefaults", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x266740650](v13, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v17 = [v2 navigationController];
  if (v17)
  {
    v18 = v17;
    [v17 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_264694948(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2646949B0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_26469470C(a3 & 1);
  }
}

id CriticalAlertOnboardingViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CriticalAlertOnboardingViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CriticalAlertOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264694D3C()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264694E00()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E48, &qword_2647925A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  sub_264783B84();
  v16[5] = sub_264785754();
  v16[6] = v12;
  [objc_opt_self() shareAllLocations];
  sub_264785694();
  v13 = [v10 bundleForClass_];
  sub_264783B84();
  v16[2] = sub_264785754();
  v16[3] = v14;
  sub_264613FC4();
  sub_264784164();
  sub_264695684();
  sub_264785034();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_264695100@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264784644();
  v8 = sub_264784E34();
  v10 = v9;
  LOBYTE(ObjCClassFromMetadata) = v11;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E28, &qword_26478BE18) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E60, &qword_26478BE28) + 28);
  result = sub_264784124();
  *v15 = KeyPath;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = ObjCClassFromMetadata & 1;
  *(a1 + 24) = v13;
  return result;
}

void sub_264695304()
{
  if (sub_2647839A4() == 0xD000000000000035 && 0x8000000264796070 == v0)
  {
  }

  else
  {
    v1 = sub_264785E84();

    if ((v1 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    v4 = sub_2647839B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767F0, &unk_26478AD08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2647889B0;
    v6 = *MEMORY[0x277D0AC70];
    *(inited + 32) = sub_264785724();
    *(inited + 40) = v7;
    v8 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    v9 = *MEMORY[0x277D0AC58];
    *(inited + 80) = sub_264785724();
    *(inited + 88) = v10;
    *(inited + 120) = v8;
    *(inited + 96) = 1;
    sub_264655958(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E70, &qword_264789800);
    swift_arrayDestroy();
    v11 = sub_264785604();

    [v3 openSensitiveURL:v4 withOptions:v11];

    sub_264784114();
    return;
  }

LABEL_7:

  MEMORY[0x282130C18](v2);
}

uint64_t sub_264695510()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E28, &qword_26478BE18);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_264695100(&v4 - v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E30, &qword_26478BE20);
  sub_2646955F8();
  sub_264695758();
  return sub_264785474();
}

unint64_t sub_2646955F8()
{
  result = qword_27FF76E38;
  if (!qword_27FF76E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E30, &qword_26478BE20);
    sub_264695684();
    sub_264695700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E38);
  }

  return result;
}

unint64_t sub_264695684()
{
  result = qword_27FF76E40;
  if (!qword_27FF76E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E48, &qword_2647925A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E40);
  }

  return result;
}

unint64_t sub_264695700()
{
  result = qword_27FF76008;
  if (!qword_27FF76008)
  {
    sub_264784BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76008);
  }

  return result;
}