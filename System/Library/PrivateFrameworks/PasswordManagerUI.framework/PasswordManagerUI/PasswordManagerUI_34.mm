uint64_t sub_21CAA8B24()
{
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CAA8B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21CB86094();

  MEMORY[0x21CF151F0](a1, a2);
  MEMORY[0x21CF151F0](8250, 0xE200000000000000);
  v10 = sub_21CB862F4();
  MEMORY[0x21CF151F0](v10);

  MEMORY[0x21CF151F0](543584032, 0xE400000000000000);
  v11 = sub_21CB862F4();
  MEMORY[0x21CF151F0](v11);

  v13 = *(a5 + 40);
  v15 = *(a5 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  result = sub_21CB84D64();
  if (a3 == a4)
  {
    v14 = *(a5 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    return sub_21CB84D64();
  }

  return result;
}

uint64_t sub_21CAA8D1C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_21CB83134();
  sub_21CB84DD4();
  sub_21CB83134();
  sub_21CB84DD4();
  v16 = v3[2];
  v16(v9, v15, v2);
  v16(v6, v12, v2);
  v16(a1, v9, v2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v16(&a1[*(v17 + 48)], v6, v2);
  v18 = v3[1];
  v18(v12, v2);
  v18(v15, v2);
  v18(v6, v2);
  return (v18)(v9, v2);
}

void sub_21CAA8F9C()
{
  v0 = [objc_opt_self() sharedStore];
  [v0 debug_removeAll];
}

void sub_21CAA8FFC()
{
  v0 = [objc_opt_self() sharedStore];
  v1 = [v0 websiteNameProvider];

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 debug_deleteAllPersistedData];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_21CAA90A4(_OWORD *a1)
{
  sub_21CB83134();
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  sub_21CAA9AB0(a1, &v6);
  return sub_21CB84DD4();
}

uint64_t sub_21CAA9180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v17 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73F0, &qword_21CBC4F68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73E8, &qword_21CBC4F60);
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v16);
  v10 = &v14 - v9;
  sub_21CAA9ECC();
  sub_21CB83EF4();
  sub_21CB83134();
  v11 = sub_21C6EADEC(&qword_27CDF73F8, &qword_27CDF73F0, &qword_21CBC4F68);
  sub_21CB842E4();

  (*(v3 + 8))(v6, v2);
  v18 = v15;
  type metadata accessor for PMPlatformRoleButton();
  v19 = v2;
  v20 = v11;
  swift_getOpaqueTypeConformance2();
  sub_21CAA9E84(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  v12 = v16;
  sub_21CB848A4();
  return (*(v7 + 8))(v10, v12);
}

double sub_21CAA9468@<D0>(_OWORD *a1@<X8>)
{
  PMDebugSettingsControls.init()(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_21CAA94A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v3 = type metadata accessor for PMDebugSettingsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMPlatformRoleButton();
  v12 = a2 + *(v11 + 20);
  sub_21CB81EE4();
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  sub_21CAA9F28(v21, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  result = sub_21CAA9F8C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *a2 = v13;
  a2[1] = v15;
  v19 = (a2 + *(v11 + 24));
  *v19 = sub_21CAA9FF0;
  v19[1] = v17;
  return result;
}

uint64_t sub_21CAA9694(uint64_t a1)
{
  v19 = sub_21CB82F84();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - v8);
  v10 = sub_21CB823B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6EDBAC(a1, v9, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_21CB85B04();
    v16 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_21CB823A4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21CAA9910()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73E0, &qword_21CBC4F58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF73E8, &qword_21CBC4F60);
  type metadata accessor for PMPlatformRoleButton();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF73F0, &qword_21CBC4F68);
  sub_21C6EADEC(&qword_27CDF73F8, &qword_27CDF73F0, &qword_21CBC4F68);
  swift_getOpaqueTypeConformance2();
  sub_21CAA9E84(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CAA9B5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21CAA9BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CAA9C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7360, &qword_21CBC4CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAA9C98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21CAA8644(a1, v4, v5, v1 + 32);
}

unint64_t sub_21CAA9D84()
{
  result = qword_27CDF7398;
  if (!qword_27CDF7398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB128, &qword_21CBC4E20);
    sub_21CAA9E84(&qword_27CDF73A0, type metadata accessor for ASAccountManagerTipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7398);
  }

  return result;
}

uint64_t sub_21CAA9E84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CAA9ECC()
{
  result = qword_27CDF7400;
  if (!qword_27CDF7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7400);
  }

  return result;
}

uint64_t sub_21CAA9F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMDebugSettingsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAA9F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMDebugSettingsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAA9FF0()
{
  v1 = *(type metadata accessor for PMDebugSettingsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CAA9694(v2);
}

uint64_t sub_21CAAA050()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_configuration;
  v2 = [*(v0 + OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_configuration) type];
  v3 = *MEMORY[0x277D49D60];
  v4 = sub_21CB855C4();
  v6 = v5;
  if (v4 == sub_21CB855C4() && v6 == v7)
  {
    goto LABEL_18;
  }

  v9 = sub_21CB86344();

  if (v9)
  {
LABEL_6:

LABEL_19:
    v24 = *(v0 + v1);
    goto LABEL_20;
  }

  v10 = *MEMORY[0x277D49D68];
  v11 = sub_21CB855C4();
  v13 = v12;
  if (v11 == sub_21CB855C4() && v13 == v14)
  {
LABEL_18:

    goto LABEL_19;
  }

  v16 = sub_21CB86344();

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = *MEMORY[0x277D49D70];
  v18 = sub_21CB855C4();
  v20 = v19;
  if (v18 == sub_21CB855C4() && v20 == v21)
  {
  }

  else
  {
    v23 = sub_21CB86344();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v29 = *(v0 + v1);
LABEL_20:
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    return 0;
  }

  v26 = [v25 password];
  v27 = sub_21CB855C4();

  return v27;
}

id sub_21CAAA294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMAccountPickerHistoryItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21CAAA320(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_configuration) identifier];
  v4 = sub_21CB855C4();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_21CAAA3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v119 = sub_21CB82FD4();
  v117 = *(v119 - 8);
  v3 = *(v117 + 64);
  MEMORY[0x28223BE20](v119);
  v116 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB83C74();
  v114 = *(v5 - 8);
  v115 = v5;
  v6 = *(v114 + 64);
  MEMORY[0x28223BE20](v5);
  v113 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_21CB83554();
  v105 = *(v109 - 8);
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v109);
  v102 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB83584();
  v111 = *(v10 - 8);
  v112 = v10;
  v11 = *(v111 + 64);
  MEMORY[0x28223BE20](v10);
  v106 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_21CB85114();
  v92 = *(v93 - 8);
  v13 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v88 = *(v89 - 8);
  v15 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v85 = &v85 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74B8, &qword_21CBC50E8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v87 = &v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v85 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7478, &qword_21CBC50C0);
  v25 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v27 = &v85 - v26;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7470, &qword_21CBC50B8);
  v96 = *(v97 - 8);
  v28 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v94 = &v85 - v29;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7460, &qword_21CBC50A8);
  v99 = *(v101 - 8);
  v30 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v98 = &v85 - v31;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7458, &qword_21CBC50A0);
  v103 = *(v108 - 8);
  v32 = *(v103 + 64);
  MEMORY[0x28223BE20](v108);
  v100 = &v85 - v33;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7450, &qword_21CBC5098);
  v107 = *(v110 - 8);
  v34 = *(v107 + 64);
  MEMORY[0x28223BE20](v110);
  v104 = &v85 - v35;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v36 = *(v21 + 8);
  v90 = v21 + 8;
  v86 = v36;
  v36(v24, v20);
  v121 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74C0, &qword_21CBC5118);
  sub_21C6EADEC(&qword_27CDF74C8, &qword_27CDF74C0, &qword_21CBC5118);
  sub_21CB83F14();
  v37 = sub_21CB85214();
  v39 = v38;
  v120 = a1;
  if (sub_21CAAC67C())
  {
    v40 = v85;
    sub_21CB83794();
    v41 = v88;
    v42 = v87;
    v43 = v40;
    v44 = v89;
    (*(v88 + 32))(v87, v43, v89);
    v45 = 0;
    v46 = v44;
    v47 = v41;
  }

  else
  {
    v45 = 1;
    v46 = v89;
    v47 = v88;
    v42 = v87;
  }

  (*(v47 + 56))(v42, v45, 1, v46);
  v48 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7490, &qword_21CBC50C8) + 36)];
  sub_21C716934(v42, v48, &qword_27CDF74B8, &qword_21CBC50E8);
  v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
  *v49 = v37;
  v49[1] = v39;
  KeyPath = swift_getKeyPath();
  v51 = v95;
  v52 = &v27[*(v95 + 36)];
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v54 = v92;
  v55 = v91;
  v56 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x277CDF0D0], v93);
  sub_21CB84F74();
  (*(v54 + 8))(v55, v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v57 - 8) + 56))(v52 + v53, 0, 1, v57);
  *v52 = KeyPath;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v86(v24, v20);
  v58 = v102;
  sub_21CB83544();
  v59 = v106;
  sub_21CB83534();
  (*(v105 + 8))(v58, v109);
  v60 = sub_21CAB0BD4();
  v61 = v94;
  sub_21CB84114();

  (*(v111 + 8))(v59, v112);
  sub_21C6EA794(v27, &qword_27CDF7478, &qword_21CBC50C0);
  v62 = v113;
  sub_21CB83C64();
  v124 = v51;
  v125 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v98;
  v65 = v97;
  sub_21CB846A4();
  (*(v114 + 8))(v62, v115);
  v66 = (*(v96 + 8))(v61, v65);
  MEMORY[0x28223BE20](v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7468, &qword_21CBC50B0);
  v124 = v65;
  v125 = OpaqueTypeConformance2;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF74A8, &unk_21CBC50D8);
  v70 = sub_21C6EADEC(&qword_27CDF74B0, &qword_27CDF74A8, &unk_21CBC50D8);
  v124 = v69;
  v125 = v70;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v100;
  v73 = v101;
  sub_21CB84894();
  (*(v99 + 8))(v64, v73);
  v122 = sub_21CAACDC4();
  v123 = v74;
  v124 = v73;
  v125 = v67;
  v126 = v68;
  v127 = v71;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = sub_21C71F3FC();
  v77 = v104;
  v78 = v108;
  v79 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  (*(v103 + 8))(v72, v78);
  v81 = v116;
  v80 = v117;
  v82 = v119;
  (*(v117 + 104))(v116, *MEMORY[0x277CDDDC0], v119);
  v124 = v78;
  v125 = v79;
  v126 = v75;
  v127 = v76;
  swift_getOpaqueTypeConformance2();
  v83 = v110;
  sub_21CB84684();
  (*(v80 + 8))(v81, v82);
  return (*(v107 + 8))(v77, v83);
}

uint64_t sub_21CAAB1D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74F8, &qword_21CBC5250);
  v54 = *(v65 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v65);
  v5 = &v53 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7500, &qword_21CBC5258);
  v56 = *(v66 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v66);
  v55 = &v53 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7508, L"J\aÁ");
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v64 = &v53 - v9;
  v10 = type metadata accessor for PMExportAccountSelectionView();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7510, &qword_21CBC5268);
  v58 = *(v63 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v63);
  v57 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7518, &qword_21CBC5270);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v62 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v61 = &v53 - v22;
  v23 = sub_21CB81024();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21CAAC67C())
  {
    v59 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    sub_21CB81014();
    v59 = sub_21CB81004();
    v30 = v29;
    (*(v24 + 8))(v27, v23);
    v28 = v30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v31 = a1 + *(v10 + 28);
  sub_21C728D50(v17);
  LOBYTE(v31) = sub_21C8816E4(v17);

  v32 = sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
  if (v31)
  {
    sub_21CB85084();
    v33 = v69;
    swift_getKeyPath();
    v69 = v33;
    sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810D4();

    v34 = *(v33 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedSections);

    v68 = v34;
    swift_getKeyPath();
    sub_21CAB0EDC(a1, &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMExportAccountSelectionView);
    v35 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v36 = swift_allocObject();
    sub_21CAB1484(&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for PMExportAccountSelectionView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE20, &qword_21CBAB0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7588, &unk_21CBC5300);
    sub_21C6EADEC(&qword_27CDEEE28, &qword_27CDEEE20, &qword_21CBAB0C0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7560, &qword_21CBC5290);
    v38 = sub_21CAB1250();
    v69 = v37;
    v70 = v38;
    swift_getOpaqueTypeConformance2();
    v39 = v57;
    sub_21CB84FD4();
    v40 = v58;
    v41 = v63;
    (*(v58 + 16))(v64, v39, v63);
    swift_storeEnumTagMultiPayload();
    sub_21CAB1190();
    v42 = sub_21CAB1328(&qword_27CDF7550, &qword_27CDF74F8, &qword_21CBC5250);
    v69 = v65;
    v70 = v42;
    swift_getOpaqueTypeConformance2();
    v43 = v61;
    sub_21CB83494();
    (*(v40 + 8))(v39, v41);
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7520, &qword_21CBC5278);
    sub_21CAB1054();
    sub_21CB85054();
    sub_21CB82334();
    v44 = sub_21CAB1328(&qword_27CDF7550, &qword_27CDF74F8, &qword_21CBC5250);
    v45 = v55;
    v46 = v65;
    sub_21CB84514();
    (*(v54 + 8))(v5, v46);
    v47 = v56;
    v48 = v66;
    (*(v56 + 16))(v64, v45, v66);
    swift_storeEnumTagMultiPayload();
    sub_21CAB1190();
    v69 = v46;
    v70 = v44;
    swift_getOpaqueTypeConformance2();
    v43 = v61;
    sub_21CB83494();
    (*(v47 + 8))(v45, v48);
  }

  v49 = v62;
  sub_21C6EDBAC(v43, v62, &qword_27CDF7518, &qword_21CBC5270);
  v50 = v67;
  *v67 = v59;
  v50[1] = v28;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7580, &qword_21CBC52A8);
  sub_21C6EDBAC(v49, v50 + *(v51 + 48), &qword_27CDF7518, &qword_21CBC5270);

  sub_21C6EA794(v43, &qword_27CDF7518, &qword_21CBC5270);
  sub_21C6EA794(v49, &qword_27CDF7518, &qword_21CBC5270);
}

uint64_t sub_21CAABB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE30, &unk_21CBAB0C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7578, &unk_21CBC5298);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7560, &qword_21CBC5290);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = *a1;
  v36 = a2;
  v37 = v17;
  v38 = *(a1 + 8);
  v39 = v17;
  v40 = v38;
  v18 = v38;
  sub_21C71F3FC();
  swift_bridgeObjectRetain_n();
  v39 = sub_21CB84054();
  v40 = v19;
  v41 = v20 & 1;
  v42 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7520, &qword_21CBC5278);
  sub_21CAB1054();
  sub_21CB85034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v22 = v39;
  swift_getKeyPath();
  v39 = v22;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v23 = *(v22 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  if ((v23 & 0xFE) == 2)
  {

LABEL_5:
    v30 = sub_21CB83004();
    (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
    goto LABEL_6;
  }

  if (!v18)
  {
    goto LABEL_5;
  }

  v39 = v17;
  v40 = v18;
  *v8 = sub_21CB84054();
  *(v8 + 1) = v24;
  v8[16] = v25 & 1;
  *(v8 + 3) = v26;
  v27 = *MEMORY[0x277CDDDD0];
  v28 = sub_21CB83004();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v8, v27, v28);
  (*(v29 + 56))(v8, 0, 1, v28);
LABEL_6:
  sub_21C716934(v8, &v16[*(v13 + 36)], &qword_27CDEEE30, &unk_21CBAB0C8);
  (*(v33 + 32))(v16, v12, v34);
  sub_21CB82334();
  sub_21CAB1250();
  sub_21CB84514();
  return sub_21C6EA794(v16, &qword_27CDF7560, &qword_21CBC5290);
}

uint64_t sub_21CAABF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v17[0] = a3;
  v5 = type metadata accessor for PMExportAccountSelectionView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7538, &qword_21CBC5280);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v17[1] = a2;
  sub_21CAB0EDC(a1, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMExportAccountSelectionView);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_21CAB1484(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PMExportAccountSelectionView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7548, &qword_21CBC5288);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21C6EADEC(&qword_27CDF7540, &qword_27CDF7548, &qword_21CBC5288);
  sub_21CAB143C(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  sub_21CB84FF4();
  swift_getKeyPath();
  v15 = v17[0];
  sub_21CB84FC4();

  (*(v9 + 8))(v12, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7520, &qword_21CBC5278);
  *(v15 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21CAAC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for PMExportAccountSelectionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7538, &qword_21CBC5280);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v11 = v18;
  swift_getKeyPath();
  v18 = v11;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v12 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v18 = v12;
  sub_21CAB0EDC(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMExportAccountSelectionView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_21CAB1484(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PMExportAccountSelectionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7548, &qword_21CBC5288);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21C6EADEC(&qword_27CDF7540, &qword_27CDF7548, &qword_21CBC5288);
  sub_21CAB143C(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  sub_21CB84FF4();
  swift_getKeyPath();
  v15 = v17;
  sub_21CB84FC4();

  (*(v7 + 8))(v10, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7520, &qword_21CBC5278);
  *(v15 + *(result + 36)) = 0;
  return result;
}

BOOL sub_21CAAC67C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v0 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v1 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_21CB85084();
  swift_getKeyPath();
  sub_21CB810D4();

  v3 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v4 = *(v3 + 16);

  return v4 == 0;
}

uint64_t sub_21CAAC7FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74A8, &unk_21CBC50D8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_21CAAC920(&v7 - v3);
  v5 = sub_21C6EADEC(&qword_27CDF74B0, &qword_27CDF74A8, &unk_21CBC50D8);
  MEMORY[0x21CF131E0](v4, v0, v5);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21CAAC920@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74D0, &qword_21CBC5180);
  v2 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v4 = &v29 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74D8, &qword_21CBC5188);
  v35 = *(v37 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v33 = &v29 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA88, &qword_21CBAEF10);
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v29 - v8;
  v10 = sub_21CB83604();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AC8, &qword_21CBBC160);
  v31 = *(v12 - 8);
  v13 = v31;
  v14 = *(v31 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  sub_21CB835C4();
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBBE0, &unk_21CBC5190);
  sub_21C6EADEC(&qword_27CDEBBE8, &qword_27CDEBBE0, &unk_21CBC5190);
  v30 = v16;
  sub_21CB82194();
  sub_21CB835D4();
  v40 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C844588();
  sub_21CB82194();
  sub_21CB835F4();
  v39 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74E0, &qword_21CBC51A0);
  sub_21C6EADEC(&qword_27CDF74E8, &qword_27CDF74E0, &qword_21CBC51A0);
  v17 = v33;
  sub_21CB82AA4();
  v18 = *(v36 + 48);
  v19 = *(v36 + 64);
  v20 = v16;
  v21 = v12;
  (*(v13 + 16))(v4, v20, v12);
  v22 = v32;
  v23 = v9;
  v24 = v9;
  v25 = v34;
  (*(v32 + 16))(&v4[v18], v23, v34);
  v26 = v35;
  v27 = v37;
  (*(v35 + 16))(&v4[v19], v17, v37);
  sub_21CB83394();
  (*(v26 + 8))(v17, v27);
  (*(v22 + 8))(v24, v25);
  return (*(v31 + 8))(v30, v21);
}

uint64_t sub_21CAACDC4()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v44 = v0;
  sub_21CB85084();
  v20 = v47;
  swift_getKeyPath();
  v47 = v20;
  v45 = sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v21 = *(v20 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v22 = *(v21 + 16);

  if (v22)
  {
    v42 = v19;
    sub_21CB81014();
    v41 = v16;
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v40 = sub_21CB81034();
    v23 = *(v40 - 8);
    v24 = *(v23 + 72);
    v39 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    sub_21CB81014();
    v26 = v10;
    sub_21CB81014();
    sub_21CB81014();
    v27 = v43;
    sub_21CB81014();
    v28 = v39;
    sub_21CB80FE4();
    v29 = *(v2 + 8);
    v29(v27, v1);
    v29(v7, v1);
    v29(v26, v1);
    v29(v13, v1);
    swift_setDeallocating();
    (*(v23 + 8))(v25 + v28, v40);
    swift_deallocClassInstance();
    v30 = v42;
    sub_21CB81004();
    v29(v41, v1);
    v29(v30, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v32 = v47;
    swift_getKeyPath();
    v47 = v32;
    sub_21CB810D4();

    v33 = *(v32 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

    v34 = *(v33 + 16);

    v35 = MEMORY[0x277D83C10];
    *(v31 + 56) = MEMORY[0x277D83B88];
    *(v31 + 64) = v35;
    *(v31 + 32) = v34;
    v36 = sub_21CB85594();
  }

  else
  {
    sub_21CB81014();
    v36 = sub_21CB81004();
    (*(v2 + 8))(v19, v1);
  }

  return v36;
}

uint64_t sub_21CAAD360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_21CB85214();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7590, &unk_21CBC5368);
  return sub_21CAAD3C0(a1, a2 + *(v5 + 44));
}

uint64_t sub_21CAAD3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = sub_21CB83274();
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  MEMORY[0x28223BE20](v3);
  v90 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_21CB83A34();
  v88 = *(v89 - 8);
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccountRow();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  v12 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v14 = &v77 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7598, &qword_21CBC5378);
  v15 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v17 = &v77 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75A0, &qword_21CBC5380);
  v82 = *(v84 - 8);
  v18 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v81 = &v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75A8, &qword_21CBC5388);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v86 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = &v77 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75B0, &qword_21CBC5390);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v83 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  sub_21CB825F4();
  v32 = *(v26 + 44);
  v80 = v31;
  *&v31[v32] = 0;
  v78 = a1;
  sub_21CAB0EDC(a1, v11, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v33 = v96;
  swift_getKeyPath();
  *&v96 = v33;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v34 = *(v33 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v35 = *(v33 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v36 = sub_21CB837E4();
  v37 = MEMORY[0x277CE04E8];
  v38 = &v11[v8[7]];
  *(v38 + 3) = MEMORY[0x277CE04F8];
  *(v38 + 4) = v37;
  *v38 = v36;
  v39 = &v11[v8[9]];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v96);

  type metadata accessor for PMGroupsStore();
  sub_21CAB143C(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v41 = sub_21CB82674();
  v43 = v42;

  *v39 = v41;
  v39[1] = v43;
  v44 = &v11[v8[10]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = &v11[v8[11]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  v46 = v8[12];
  *&v11[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v47 = v8[13];
  *&v11[v47] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v48 = v8[14];
  *&v11[v48] = swift_getKeyPath();
  v49 = &v11[v8[5]];
  *v49 = 0;
  *(v49 + 1) = 0;
  v50 = &v11[v8[6]];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v11[v8[8]];
  *v51 = v34;
  *(v51 + 1) = v35;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21CAB1484(v11, v14, type metadata accessor for PMAccountRow);
  v52 = &v14[*(v77 + 36)];
  v53 = v101;
  *(v52 + 4) = v100;
  *(v52 + 5) = v53;
  *(v52 + 6) = v102;
  v54 = v97;
  *v52 = v96;
  *(v52 + 1) = v54;
  v55 = v99;
  *(v52 + 2) = v98;
  *(v52 + 3) = v55;
  v56 = (v78 + *(type metadata accessor for PMAccount(0) + 28));
  v58 = *v56;
  v57 = v56[1];
  v59 = v56[2];
  v60 = v56[3];
  if (v57)
  {
    if ((v59 & 1) != 0 || (v61 = [v60 severity], v61 > 3))
    {
      LOBYTE(v62) = 2;
    }

    else
    {
      v62 = 0x2010002u >> (8 * v61);
    }
  }

  else
  {
    LOBYTE(v62) = 3;
  }

  *v17 = v58;
  *(v17 + 1) = v57;
  *(v17 + 2) = v59;
  *(v17 + 3) = v60;
  v17[32] = v62;
  *(v17 + 33) = 1;
  v63 = v79;
  sub_21C6EDBAC(v14, &v17[*(v79 + 48)], &qword_27CDEBC70, &qword_21CBAD0C0);
  v64 = *(v63 + 52);
  *&v17[v64] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  sub_21C7D33AC(v58, v57, v59, v60);
  sub_21C6EA794(v14, &qword_27CDEBC70, &qword_21CBAD0C0);
  v65 = v87;
  sub_21CB83A24();
  v66 = sub_21C6EADEC(&qword_27CDF75B8, &qword_27CDF7598, &qword_21CBC5378);
  v67 = v81;
  sub_21CB844F4();
  (*(v88 + 8))(v65, v89);
  sub_21C6EA794(v17, &qword_27CDF7598, &qword_21CBC5378);
  v68 = v90;
  sub_21CB83254();
  v94 = v63;
  v95 = v66;
  swift_getOpaqueTypeConformance2();
  v69 = v85;
  v70 = v84;
  sub_21CB84594();
  (*(v91 + 8))(v68, v92);
  (*(v82 + 8))(v67, v70);
  v71 = v80;
  v72 = v83;
  sub_21C6EDBAC(v80, v83, &qword_27CDF75B0, &qword_21CBC5390);
  v73 = v86;
  sub_21C6EDBAC(v69, v86, &qword_27CDF75A8, &qword_21CBC5388);
  v74 = v93;
  sub_21C6EDBAC(v72, v93, &qword_27CDF75B0, &qword_21CBC5390);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75C0, &qword_21CBC54D8);
  sub_21C6EDBAC(v73, v74 + *(v75 + 48), &qword_27CDF75A8, &qword_21CBC5388);
  sub_21C6EA794(v69, &qword_27CDF75A8, &qword_21CBC5388);
  sub_21C6EA794(v71, &qword_27CDF75B0, &qword_21CBC5390);
  sub_21C6EA794(v73, &qword_27CDF75A8, &qword_21CBC5388);
  return sub_21C6EA794(v72, &qword_27CDF75B0, &qword_21CBC5390);
}

uint64_t sub_21CAADE68(uint64_t a1)
{
  v2 = type metadata accessor for PMExportAccountSelectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21CB81F14();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81EF4();
  sub_21CAB0EDC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMExportAccountSelectionView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_21CAB1484(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PMExportAccountSelectionView);
  return MEMORY[0x21CF148B0](v8, sub_21CAB0FC0, v10);
}

uint64_t sub_21CAADFE4(uint64_t a1)
{
  v20 = sub_21CB82F84();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_21CB823B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMExportAccountSelectionView();
  sub_21C6EDBAC(a1 + *(v15 + 20), v9, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_21CB85B04();
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_21CB823A4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21CAAE26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMExportAccountSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v24[0] = v12;
  v24[1] = v14;
  sub_21CAB0EDC(a1, v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMExportAccountSelectionView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_21CAB1484(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMExportAccountSelectionView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v17 = v24[0];
  swift_getKeyPath();
  v24[0] = v17;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v18 = *(v17 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v19 = *(v18 + 16);

  LOBYTE(v6) = v19 == 0;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v23 = (a2 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_21C87E800;
  v23[2] = v21;
  return result;
}

uint64_t sub_21CAAE5A4(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMExportAccountSelectionView();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = sub_21CB858E4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_21CAB0EDC(a1, v11, type metadata accessor for PMExportAccountSelectionView);
  sub_21CB858B4();
  v17 = sub_21CB858A4();
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_21CAB1484(v11, v19 + v18, type metadata accessor for PMExportAccountSelectionView);
  sub_21C98B308(0, 0, v15, &unk_21CBC5218, v19);

  v21 = a1 + *(v8 + 28);
  sub_21C95B2C8(v6);
  sub_21CB823A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21CAAE840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_21CB80DD4() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(sub_21CB81894() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_21CB818C4();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = type metadata accessor for PMAccount.Storage(0);
  v4[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_21CB818E4();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = *(type metadata accessor for PMExportAccountSelectionView() - 8);
  v4[16] = v15;
  v4[17] = *(v15 + 64);
  v4[18] = swift_task_alloc();
  v16 = sub_21CB81444();
  v4[19] = v16;
  v17 = *(v16 - 8);
  v4[20] = v17;
  v18 = *(v17 + 64) + 15;
  v4[21] = swift_task_alloc();
  v19 = type metadata accessor for PMAccount(0);
  v4[22] = v19;
  v20 = *(v19 - 8);
  v4[23] = v20;
  v21 = *(v20 + 64) + 15;
  v4[24] = swift_task_alloc();
  v22 = sub_21CB80E34();
  v4[25] = v22;
  v23 = *(v22 - 8);
  v4[26] = v23;
  v24 = *(v23 + 64) + 15;
  v4[27] = swift_task_alloc();
  sub_21CB858B4();
  v4[28] = sub_21CB858A4();
  v26 = sub_21CB85874();
  v4[29] = v26;
  v4[30] = v25;

  return MEMORY[0x2822009F8](sub_21CAAEB8C, v26, v25);
}

uint64_t sub_21CAAEB8C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[5];
  sub_21CB80E24();
  v0[31] = sub_21CB80DE4();
  v0[32] = v5;
  (*(v2 + 8))(v1, v3);
  v0[33] = [objc_opt_self() sharedStore];
  v0[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v6 = v0[2];
  v7 = sub_21C8843A0();

  v26 = MEMORY[0x277D84F90];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v0[23];
    v10 = v0[24];
    v11 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v0[22] + 24);
    v13 = *(v9 + 72);
    v14 = MEMORY[0x277D84F90];
    do
    {
      v16 = v0[11];
      v15 = v0[12];
      sub_21CAB0EDC(v11, v0[24], type metadata accessor for PMAccount);
      sub_21CAB0EDC(v10 + v12, v15, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v18 = v0[24];
      v19 = v0[12];
      if (EnumCaseMultiPayload == 1)
      {
        sub_21C7190C0(v19, type metadata accessor for PMAccount.Storage);
        sub_21C7190C0(v18, type metadata accessor for PMAccount);
      }

      else
      {
        v20 = *v19;
        v21 = sub_21C7190C0(v0[24], type metadata accessor for PMAccount);
        MEMORY[0x21CF15300](v21);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
        v14 = v26;
      }

      v11 += v13;
      --v8;
    }

    while (v8);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v0[35] = v14;
  v23 = *(MEMORY[0x277CBA898] + 4);
  v24 = swift_task_alloc();
  v0[36] = v24;
  *v24 = v0;
  v24[1] = sub_21CAAEE5C;

  return MEMORY[0x28210CE10](v14);
}

uint64_t sub_21CAAEE5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 296) = a1;

  v6 = *(v2 + 240);
  v7 = *(v2 + 232);

  return MEMORY[0x2822009F8](sub_21CAAEFC0, v7, v6);
}

uint64_t sub_21CAAEFC0()
{
  v1 = v0[37];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[5];
  sub_21C7A35D0(v0[31], v0[32]);
  sub_21CB81434();
  sub_21CB81904();
  sub_21CAB0EDC(v6, v3, type metadata accessor for PMExportAccountSelectionView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21CAB1484(v3, v8 + v7, type metadata accessor for PMExportAccountSelectionView);
  v0[38] = sub_21CB818F4();
  v9 = *(MEMORY[0x277CBA858] + 4);
  v13 = (*MEMORY[0x277CBA858] + MEMORY[0x277CBA858]);
  v10 = swift_task_alloc();
  v0[39] = v10;
  *v10 = v0;
  v10[1] = sub_21CAAF17C;
  v11 = v0[15];

  return v13(v11, 0, 0);
}

uint64_t sub_21CAAF17C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_21CAAF6F0;
  }

  else
  {
    v7 = sub_21CAAF2B8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21CAAF2B8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[10];
  v7 = v0[6];
  v6 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0158, &qword_21CBAE478);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CBA0690;
  (*(v2 + 16))(v10 + v9, v1, v3);
  sub_21CB818D4();
  sub_21CB80DA4();
  sub_21CB818A4();
  v11 = *(MEMORY[0x277CBA860] + 4);
  v16 = (*MEMORY[0x277CBA860] + MEMORY[0x277CBA860]);
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_21CAAF450;
  v13 = v0[38];
  v14 = v0[10];

  return v16(v14);
}

uint64_t sub_21CAAF450()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_21CAAF8E8;
  }

  else
  {
    v7 = sub_21CAAF58C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21CAAF58C()
{
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[20];
  v23 = v0[19];
  v24 = v0[21];
  v6 = v0[14];
  v22 = v0[15];
  v7 = v0[13];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];

  sub_21C7A34C0(v2, v3);
  (*(v8 + 8))(v9, v10);
  (*(v6 + 8))(v22, v7);
  (*(v5 + 8))(v24, v23);
  v11 = v0[27];
  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[10];
  v19 = v0[6];
  v18 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_21CAAF6F0()
{
  v1 = v0[38];
  v2 = v0[28];

  v3 = v0[40];
  v4 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[20];
  v22 = v0[19];
  v23 = v0[21];
  v8 = v0[5];
  sub_21CB85084();
  v9 = v0[3];
  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v3;
  v0[4] = v9;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810C4();
  sub_21C7A34C0(v6, v5);

  (*(v7 + 8))(v23, v22);

  v11 = v0[27];
  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[10];
  v19 = v0[6];
  v18 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_21CAAF8E8()
{
  v1 = v0[38];
  v2 = v0[28];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = v0[42];
  v10 = v0[34];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[20];
  v28 = v0[19];
  v29 = v0[21];
  v14 = v0[5];
  sub_21CB85084();
  v15 = v0[3];
  swift_getKeyPath();
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  *(v16 + 24) = v9;
  v0[4] = v15;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810C4();
  sub_21C7A34C0(v12, v11);

  (*(v13 + 8))(v29, v28);

  v17 = v0[27];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[18];
  v21 = v0[15];
  v22 = v0[12];
  v23 = v0[10];
  v25 = v0[6];
  v24 = v0[7];

  v26 = v0[1];

  return v26();
}

id sub_21CAAFB20(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for PMExportAccountSelectionView() + 24);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_21CB85B04();
    v10 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21CAB0D98(v8, 0);
    (*(v3 + 8))(v6, v2);
    v8 = v15;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v11 = [v8 scene];

  if (v11)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  v12 = [v8 keyWindow];

  return v12;
}

uint64_t sub_21CAAFCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = type metadata accessor for PMExportAccountSelectionView();
  v88 = *(v3 - 8);
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v83 = *(v91 - 8);
  v11 = *(v83 + 64);
  MEMORY[0x28223BE20](v91);
  v81 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v75 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v16 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v85 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v75 - v19;
  MEMORY[0x28223BE20](v20);
  v80 = &v75 - v21;
  MEMORY[0x28223BE20](v22);
  v82 = &v75 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v75 - v25;
  MEMORY[0x28223BE20](v27);
  v90 = &v75 - v28;
  sub_21CB81014();
  v29 = sub_21CB81004();
  v31 = v30;
  v32 = *(v7 + 8);
  v77 = v7 + 8;
  v78 = v6;
  v76 = v32;
  v32(v10, v6);
  v92 = v29;
  v93 = v31;
  sub_21CAB0EDC(a1, v5, type metadata accessor for PMExportAccountSelectionView);
  v33 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v79 = v4;
  v34 = swift_allocObject();
  sub_21CAB1484(v5, v34 + v33, type metadata accessor for PMExportAccountSelectionView);
  v75 = sub_21C71F3FC();
  sub_21CB84DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v87 = a1;
  sub_21CB85084();
  v35 = v92;
  swift_getKeyPath();
  v92 = v35;
  v88 = sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v36 = *(v35 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v37 = *(v35 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = 1;
  }

  else
  {
    sub_21CB85084();
    v40 = v92;
    swift_getKeyPath();
    v92 = v40;
    sub_21CB810D4();

    v41 = *(v40 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

    v42 = *(v41 + 16);

    v39 = v42 == 0;
  }

  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  v83 = *(v83 + 32);
  (v83)(v26, v15, v91);
  v45 = v90;
  v46 = &v26[*(v89 + 36)];
  *v46 = KeyPath;
  v46[1] = sub_21C735744;
  v46[2] = v44;
  sub_21C716934(v26, v45, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21CB81014();
  v47 = sub_21CB81004();
  v49 = v48;
  v76(v10, v78);
  v92 = v47;
  v93 = v49;
  sub_21CAB0EDC(v87, v5, type metadata accessor for PMExportAccountSelectionView);
  v50 = swift_allocObject();
  sub_21CAB1484(v5, v50 + v33, type metadata accessor for PMExportAccountSelectionView);
  v51 = v81;
  sub_21CB84DE4();
  sub_21CB85084();
  v52 = v92;
  swift_getKeyPath();
  v92 = v52;
  sub_21CB810D4();

  v53 = *(v52 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v54 = *(v52 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v53 & 0xFFFFFFFFFFFFLL;
  }

  v56 = 1;
  if (!v55)
  {
    sub_21CB85084();
    v57 = v92;
    swift_getKeyPath();
    v92 = v57;
    sub_21CB810D4();

    v58 = *(v57 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

    v59 = *(v58 + 16);

    sub_21CB85084();
    v60 = v92;
    swift_getKeyPath();
    v92 = v60;
    sub_21CB810D4();

    v61 = *(v60 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

    v62 = *(v61 + 16);

    v56 = v59 == v62;
  }

  v63 = swift_getKeyPath();
  v64 = swift_allocObject();
  *(v64 + 16) = v56;
  v65 = v80;
  (v83)(v80, v51, v91);
  v66 = (v65 + *(v89 + 36));
  *v66 = v63;
  v66[1] = sub_21C87E800;
  v66[2] = v64;
  v67 = v82;
  sub_21C716934(v65, v82, &qword_27CDEDA98, &unk_21CBABCB0);
  v68 = v90;
  v69 = v84;
  sub_21C6EDBAC(v90, v84, &qword_27CDEDA98, &unk_21CBABCB0);
  v70 = v85;
  sub_21C6EDBAC(v67, v85, &qword_27CDEDA98, &unk_21CBABCB0);
  v71 = v86;
  sub_21C6EDBAC(v69, v86, &qword_27CDEDA98, &unk_21CBABCB0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74F0, &qword_21CBC51D8);
  v73 = v71 + *(v72 + 48);
  *v73 = 0;
  *(v73 + 8) = 1;
  sub_21C6EDBAC(v70, v71 + *(v72 + 64), &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v67, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v68, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v70, &qword_27CDEDA98, &unk_21CBABCB0);
  return sub_21C6EA794(v69, &qword_27CDEDA98, &unk_21CBABCB0);
}

uint64_t sub_21CAB067C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C880484(MEMORY[0x277D84FA0]);
}

uint64_t sub_21CAB06D8()
{
  v0 = type metadata accessor for PMAccount(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v5 = v20;
  sub_21CB85084();
  v6 = v20;
  swift_getKeyPath();
  v20 = v6;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v8 = *(v7 + 16);
  if (v8)
  {
    v19 = v5;
    v20 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v8, 0);
    v9 = v20;
    v10 = v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v11 = *(v1 + 72);
    do
    {
      sub_21CAB0EDC(v10, v4, type metadata accessor for PMAccount);
      v13 = *v4;
      v12 = v4[1];

      sub_21C7190C0(v4, type metadata accessor for PMAccount);
      v20 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21C7B0C0C((v14 > 1), v15 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v17 = sub_21CB009AC(v9);

  sub_21C880484(v17);
}

uint64_t sub_21CAB0970()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7448, &qword_21CBC5090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7450, &qword_21CBC5098);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7458, &qword_21CBC50A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7460, &qword_21CBC50A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7468, &qword_21CBC50B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7470, &qword_21CBC50B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7478, &qword_21CBC50C0);
  sub_21CAB0BD4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF74A8, &unk_21CBC50D8);
  sub_21C6EADEC(&qword_27CDF74B0, &qword_27CDF74A8, &unk_21CBC50D8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

unint64_t sub_21CAB0BD4()
{
  result = qword_27CDF7480;
  if (!qword_27CDF7480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7478, &qword_21CBC50C0);
    sub_21CAB0C8C();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7480);
  }

  return result;
}

unint64_t sub_21CAB0C8C()
{
  result = qword_27CDF7488;
  if (!qword_27CDF7488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7490, &qword_21CBC50C8);
    sub_21C6EADEC(&qword_27CDF7498, &qword_27CDF74A0, &qword_21CBC50D0);
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7488);
  }

  return result;
}

void sub_21CAB0D98(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_21CAB0DEC(uint64_t a1)
{
  v4 = *(type metadata accessor for PMExportAccountSelectionView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CAAE840(a1, v6, v7, v1 + v5);
}

uint64_t sub_21CAB0EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_21CAB0F44()
{
  v1 = *(type metadata accessor for PMExportAccountSelectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CAAFB20(v2);
}

uint64_t sub_21CAB0FD8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMExportAccountSelectionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21CAB1054()
{
  result = qword_27CDF7528;
  if (!qword_27CDF7528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7520, &qword_21CBC5278);
    sub_21CAB10E0();
    sub_21CA1099C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7528);
  }

  return result;
}

unint64_t sub_21CAB10E0()
{
  result = qword_27CDF7530;
  if (!qword_27CDF7530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7538, &qword_21CBC5280);
    sub_21C6EADEC(&qword_27CDF7540, &qword_27CDF7548, &qword_21CBC5288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7530);
  }

  return result;
}

unint64_t sub_21CAB1190()
{
  result = qword_27CDF7558;
  if (!qword_27CDF7558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7510, &qword_21CBC5268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7560, &qword_21CBC5290);
    sub_21CAB1250();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7558);
  }

  return result;
}

unint64_t sub_21CAB1250()
{
  result = qword_27CDF7568;
  if (!qword_27CDF7568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7560, &qword_21CBC5290);
    sub_21CAB1328(&qword_27CDF7570, &qword_27CDF7578, &unk_21CBC5298);
    sub_21C6EADEC(&qword_27CDEEE00, &qword_27CDEEE08, &qword_21CBAB040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7568);
  }

  return result;
}

uint64_t sub_21CAB1328(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_21CAB1054();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CAB13AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMExportAccountSelectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CAABB54(a1, v6, a2);
}

uint64_t sub_21CAB142C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_21CAABF90(v1[2], v1[5], a1);
}

uint64_t sub_21CAB143C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CAB1484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAB14EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(type metadata accessor for PMExportAccountSelectionView() - 8) + 80);

  return sub_21CAAD360(a1, a2);
}

uint64_t sub_21CAB1570(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t PMPasswordManager.__allocating_init(accountStore:autoFillQuirksManager:)(void *a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  sub_21C6EBF3C(a1, a2);
  v8 = v7;

  return v8;
}

uint64_t sub_21CAB1600(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = 0;
  for (i = (a5 + 56); ; i += 4)
  {
    v11 = *(i - 8);
    v12 = *i;
    v13 = *(i - 3) == a1 && *(i - 2) == a2;
    if (v13 || (v14 = *(i - 2), (sub_21CB86344() & 1) != 0))
    {
      if (((v11 ^ a3) & 1) == 0)
      {
        sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);

        v15 = v12;
        v16 = sub_21CB85DD4();

        if (v16)
        {
          break;
        }
      }
    }

    if (v5 == ++v9)
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_21CAB1704(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPassword(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = *a1;
  v12 = a1[1];
  v13 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v14 = *(v6 + 72);
  while (1)
  {
    sub_21CACA770(v13, v8, type metadata accessor for PMGeneratedPassword);
    v15 = *v8 == v11 && v8[1] == v12;
    if (v15 || (sub_21CB86344() & 1) != 0)
    {
      v16 = v8[2] == a1[2] && v8[3] == a1[3];
      if (v16 || (sub_21CB86344() & 1) != 0)
      {
        v17 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
        if (sub_21CB80D84() & 1) != 0 && (sub_21C993EFC(v8 + *(v4 + 20), a1 + *(v4 + 20)))
        {
          break;
        }
      }
    }

    sub_21C719840(v8, type metadata accessor for PMGeneratedPassword);
    ++v10;
    v13 += v14;
    if (v9 == v10)
    {
      return 0;
    }
  }

  sub_21C719840(v8, type metadata accessor for PMGeneratedPassword);
  return v10;
}

uint64_t sub_21CAB18DC(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

uint64_t PMPasswordManager.init(accountStore:autoFillQuirksManager:)(void *a1, void *a2)
{
  sub_21C6EBF3C(a1, a2);
  v5 = v4;

  return v5;
}

uint64_t PMPasswordManager.deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager;
  swift_beginAccess();
  [*(v0 + v1) prepareForTermination];
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts, &qword_27CDF75E8, &qword_21CBC5500);

  v4 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedSavedAccounts);

  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker);

  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedWarnings);

  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedRecentlyDeletedSavedAccounts);

  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithTOTPGenerators);

  return v0;
}

uint64_t PMPasswordManager.__deallocating_deinit()
{
  PMPasswordManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_21CAB1B38(uint64_t *a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v8 = *a1;
  v9 = a1[1];
  v34 = v7;
  v33 = sub_21CB85584();
  v10 = a1[2];
  v11 = a1[3];
  v12 = sub_21CB85584();
  v13 = a1[4];
  v14 = a1[5];
  v15 = sub_21CB85584();
  v16 = a1[6];
  v17 = a1[7];
  v18 = sub_21CB85584();
  v19 = a1[8];
  v20 = a1[9];
  v21 = sub_21CB85584();
  v22 = type metadata accessor for PMSaveAccountRequest();
  sub_21C6EDBAC(a1 + *(v22 + 36), v6, &unk_27CDF20B0, &unk_21CBA0090);
  v23 = sub_21CB85C44();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v6, 1, v23) == 1)
  {
    sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
    v25 = 0;
  }

  else
  {
    sub_21CB85B64();
    (*(v24 + 8))(v6, v23);
    v25 = sub_21CB85584();
  }

  v35[0] = 0;
  v27 = v33;
  v26 = v34;
  v28 = [v34 canSaveUser:v33 password:v12 forUserTypedSite:v15 notes:v18 customTitle:v21 groupID:v25 error:v35];

  if (v28)
  {
    result = v35[0];
  }

  else
  {
    v30 = v35[0];
    sub_21CB80B14();

    result = swift_willThrow();
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21CAB1DCC(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for PMSaveAccountRequest();
  v2[21] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v5 = *(*(type metadata accessor for PMAccount.SIWAUniqueID(0) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = *(*(type metadata accessor for PMAccount.CombinedUniqueID(0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for PMAccount.UniqueID(0);
  v2[27] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v9 = type metadata accessor for PMAccount.Storage(0);
  v2[29] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v11 = type metadata accessor for PMAccount(0);
  v2[31] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  sub_21CB858B4();
  v2[34] = sub_21CB858A4();
  v15 = sub_21CB85874();
  v2[35] = v15;
  v2[36] = v14;

  return MEMORY[0x2822009F8](sub_21CAB1FCC, v15, v14);
}

uint64_t sub_21CAB1FCC()
{
  v1 = v0[33];
  v2 = v0[21];
  v3 = v0[19];
  v4 = *(v0[20] + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v0[37] = v4;
  v5 = *v3;
  v6 = v3[1];
  v27 = v4;
  v26 = sub_21CB85584();
  v0[38] = v26;
  v7 = v3[2];
  v8 = v3[3];
  v9 = sub_21CB85584();
  v0[39] = v9;
  v10 = v3[4];
  v11 = v3[5];
  v12 = sub_21CB85584();
  v0[40] = v12;
  v13 = v3[8];
  v14 = v3[9];
  v15 = sub_21CB85584();
  v0[41] = v15;
  v16 = v3[6];
  v17 = v3[7];
  v18 = sub_21CB85584();
  v0[42] = v18;
  sub_21C6EDBAC(v3 + *(v2 + 36), v1, &unk_27CDF20B0, &unk_21CBA0090);
  v19 = sub_21CB85C44();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v1, 1, v19);
  v22 = v0[33];
  if (v21 == 1)
  {
    sub_21C6EA794(v0[33], &unk_27CDF20B0, &unk_21CBA0090);
    v23 = 0;
  }

  else
  {
    sub_21CB85B64();
    (*(v20 + 8))(v22, v19);
    v23 = sub_21CB85584();
  }

  v0[43] = v23;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21CAB2270;
  v24 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5480, &qword_21CBC5B40);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C82D1CC;
  v0[13] = &block_descriptor_240;
  v0[14] = v24;
  [v27 saveUser:v26 password:v9 forUserTypedSite:v12 customTitle:v15 notesEntry:v18 groupID:v23 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CAB2270()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CAB2378, v2, v1);
}

uint64_t sub_21CAB2378()
{
  v77 = v0;
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v8 = v0[34];

  v9 = v0[18];
  v10 = v9;

  if (v9)
  {
    v11 = v0[31];
    v12 = v0[32];
    v13 = v0[29];
    v14 = v0[30];
    v16 = v0[27];
    v15 = v0[28];
    *v14 = v10;
    swift_storeEnumTagMultiPayload();
    v17 = (v12 + v11[7]);
    *v17 = 0u;
    v17[1] = 0u;
    sub_21CACA770(v14, v12 + v11[6], type metadata accessor for PMAccount.Storage);
    v18 = v11[5];
    v19 = v10;
    sub_21C7C8A3C(v12 + v18);
    sub_21CACA770(v12 + v18, v15, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = v0[28];
    if (EnumCaseMultiPayload == 1)
    {
      v22 = v0[25];
      sub_21CAC9E84(v21, v22, type metadata accessor for PMAccount.SIWAUniqueID);
      v23 = sub_21C7CE99C();
      v25 = v24;
      v26 = type metadata accessor for PMAccount.SIWAUniqueID;
    }

    else
    {
      v22 = v0[26];
      sub_21CAC9E84(v21, v22, type metadata accessor for PMAccount.CombinedUniqueID);
      v23 = sub_21C7CE408();
      v25 = v41;
      v26 = type metadata accessor for PMAccount.CombinedUniqueID;
    }

    sub_21C719840(v22, v26);
    v42 = v0[32];
    v43 = v0[20];
    sub_21C719840(v0[30], type metadata accessor for PMAccount.Storage);
    *v42 = v23;
    v42[1] = v25;

    sub_21C719840(v42, type metadata accessor for PMAccount);
    v44 = *(v43 + 32);
    *(v43 + 24) = v23;
    *(v43 + 32) = v25;

    if (qword_27CDEA468 != -1)
    {
      swift_once();
    }

    v45 = v0[24];
    v46 = v0[19];
    v47 = sub_21CB81C84();
    __swift_project_value_buffer(v47, qword_27CE186C8);
    sub_21CACA770(v46, v45, type metadata accessor for PMSaveAccountRequest);
    v48 = v19;
    v49 = sub_21CB81C64();
    v50 = sub_21CB85AE4();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[24];
    if (v51)
    {
      v53 = v0[23];
      v75 = v0[21];
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v76 = v56;
      *v54 = 138412546;
      *(v54 + 4) = v48;
      *v55 = v9;
      *(v54 + 12) = 2080;
      sub_21CACA770(v52, v53, type metadata accessor for PMSaveAccountRequest);
      v57 = v48;
      v58 = sub_21CB85624();
      v60 = v59;
      sub_21C719840(v52, type metadata accessor for PMSaveAccountRequest);
      v61 = sub_21C98E004(v58, v60, &v76);

      *(v54 + 14) = v61;
      _os_log_impl(&dword_21C6E5000, v49, v50, "received saveAccount() -> %@ for %s", v54, 0x16u);
      sub_21C6EA794(v55, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v55, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x21CF16D90](v56, -1, -1);
      MEMORY[0x21CF16D90](v54, -1, -1);

      goto LABEL_16;
    }

    v62 = v52;
  }

  else
  {
    if (qword_27CDEA468 != -1)
    {
      swift_once();
    }

    v27 = v0[22];
    v28 = v0[19];
    v29 = sub_21CB81C84();
    __swift_project_value_buffer(v29, qword_27CE186C8);
    sub_21CACA770(v28, v27, type metadata accessor for PMSaveAccountRequest);
    v30 = sub_21CB81C64();
    v31 = sub_21CB85AF4();
    if (os_log_type_enabled(v30, v31))
    {
      v33 = v0[22];
      v32 = v0[23];
      v34 = v0[21];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v76 = v36;
      *v35 = 136315138;
      sub_21CACA770(v33, v32, type metadata accessor for PMSaveAccountRequest);
      v37 = sub_21CB85624();
      v39 = v38;
      sub_21C719840(v33, type metadata accessor for PMSaveAccountRequest);
      v40 = sub_21C98E004(v37, v39, &v76);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_21C6E5000, v30, v31, "Could not save account for %s.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x21CF16D90](v36, -1, -1);
      MEMORY[0x21CF16D90](v35, -1, -1);

      goto LABEL_16;
    }

    v63 = v0[22];

    v62 = v63;
  }

  sub_21C719840(v62, type metadata accessor for PMSaveAccountRequest);
LABEL_16:
  v65 = v0[32];
  v64 = v0[33];
  v66 = v0[30];
  v67 = v0[28];
  v69 = v0[25];
  v68 = v0[26];
  v71 = v0[23];
  v70 = v0[24];
  v72 = v0[22];

  v73 = v0[1];

  return v73();
}

id sub_21CAB29F4(void *a1)
{
  v3 = [a1 savedAccount];
  if (!v3)
  {
    return 0;
  }

  v4 = [*(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore) canChangeSavedAccountWithRequest_];
  if (qword_27CDEA468 != -1)
  {
    swift_once();
  }

  v5 = sub_21CB81C84();
  __swift_project_value_buffer(v5, qword_27CE186C8);
  v6 = a1;
  v7 = sub_21CB81C64();
  v8 = sub_21CB85AE4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 67109378;
    *(v9 + 4) = v4;
    *(v9 + 8) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_21CB855C4();
    v15 = v14;

    v16 = sub_21C98E004(v13, v15, &v18);

    *(v9 + 10) = v16;
    _os_log_impl(&dword_21C6E5000, v7, v8, "received canChangeSavedAccount() -> %{BOOL}d for %s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x21CF16D90](v10, -1, -1);
    MEMORY[0x21CF16D90](v9, -1, -1);
  }

  return v4;
}

id sub_21CAB2BD8(void *a1)
{
  v2 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = type metadata accessor for PMAccount.UniqueID(0);
  v9 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v11 = &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = type metadata accessor for PMAccount.Storage(0);
  v12 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v69 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for PMAccount(0);
  v68 = *(v14 - 1);
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v58[-v18];
  if (qword_27CDEA468 != -1)
  {
    swift_once();
  }

  v20 = sub_21CB81C84();
  __swift_project_value_buffer(v20, qword_27CE186C8);
  v21 = a1;
  v22 = sub_21CB81C64();
  v23 = sub_21CB85AE4();
  v70 = v21;

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v60 = v24;
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v24 = 136315138;
    v25 = v70;
    v62 = v14;
    v26 = v25;
    v27 = [v25 description];
    v59 = v23;
    v28 = v27;
    v29 = v22;
    v30 = sub_21CB855C4();
    v63 = v5;
    v32 = v31;

    v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v33 = sub_21C98E004(v30, v32, aBlock);
    v5 = v63;

    v34 = v60;
    *(v60 + 1) = v33;
    v14 = v62;
    v35 = v22;
    v36 = v34;
    _os_log_impl(&dword_21C6E5000, v35, v59, "received changeSavedAccount() for %s", v34, 0xCu);
    v37 = v61;
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x21CF16D90](v37, -1, -1);
    MEMORY[0x21CF16D90](v36, -1, -1);
  }

  else
  {
  }

  result = [v70 savedAccount];
  if (result)
  {
    v39 = v69;
    *v69 = result;
    v40 = result;
    swift_storeEnumTagMultiPayload();
    v41 = (v19 + v14[7]);
    *v41 = 0u;
    v41[1] = 0u;
    sub_21CACA770(v39, v19 + v14[6], type metadata accessor for PMAccount.Storage);
    v42 = v14[5];
    v43 = v40;
    sub_21C7C8A3C(v19 + v42);
    sub_21CACA770(v19 + v42, v11, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CAC9E84(v11, v5, type metadata accessor for PMAccount.SIWAUniqueID);
      v44 = sub_21C7CE99C();
      v46 = v45;
      v47 = type metadata accessor for PMAccount.SIWAUniqueID;
      v48 = v5;
    }

    else
    {
      v49 = v64;
      sub_21CAC9E84(v11, v64, type metadata accessor for PMAccount.CombinedUniqueID);
      v44 = sub_21C7CE408();
      v46 = v50;
      v47 = type metadata accessor for PMAccount.CombinedUniqueID;
      v48 = v49;
    }

    sub_21C719840(v48, v47);
    sub_21C719840(v69, type metadata accessor for PMAccount.Storage);
    *v19 = v44;
    v19[1] = v46;
    v51 = v65;
    v52 = *(v65 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
    sub_21CACA770(v19, v16, type metadata accessor for PMAccount);
    v53 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v43;
    *(v54 + 24) = v51;
    sub_21CAC9E84(v16, v54 + v53, type metadata accessor for PMAccount);
    aBlock[4] = sub_21CACA5F4;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_237;
    v55 = _Block_copy(aBlock);
    v56 = v43;
    v57 = v52;

    [v57 changeSavedAccountWithRequest:v70 completionHandler:v55];
    _Block_release(v55);

    return sub_21C719840(v19, type metadata accessor for PMAccount);
  }

  return result;
}

uint64_t sub_21CAB3238(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMAccount.UniqueID(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PMAccount.Storage(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for PMAccount(0);
  v25 = (v24 - 8);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (&v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v23 = a1;
  swift_storeEnumTagMultiPayload();
  v29 = (v28 + v25[9]);
  *v29 = 0u;
  v29[1] = 0u;
  sub_21CACA770(v23, v28 + v25[8], type metadata accessor for PMAccount.Storage);
  v30 = v25[7];
  v31 = a1;
  sub_21C7C8A3C(v28 + v30);
  sub_21CACA770(v28 + v30, v19, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAC9E84(v19, v11, type metadata accessor for PMAccount.SIWAUniqueID);
    v32 = sub_21C7CE99C();
    v34 = v33;
    v35 = type metadata accessor for PMAccount.SIWAUniqueID;
    v36 = v11;
  }

  else
  {
    sub_21CAC9E84(v19, v15, type metadata accessor for PMAccount.CombinedUniqueID);
    v32 = sub_21C7CE408();
    v34 = v37;
    v35 = type metadata accessor for PMAccount.CombinedUniqueID;
    v36 = v15;
  }

  sub_21C719840(v36, v35);
  sub_21C719840(v23, type metadata accessor for PMAccount.Storage);
  *v28 = v32;
  v28[1] = v34;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
  v39 = *(v38 + 48);
  sub_21CACA770(v44, v7, type metadata accessor for PMAccount);
  sub_21CAC9E84(v28, &v7[v39], type metadata accessor for PMAccount);
  (*(*(v38 - 8) + 56))(v7, 0, 1, v38);
  v40 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
  v41 = v45;
  swift_beginAccess();
  sub_21CAC9E14(v7, v41 + v40);
  return swift_endAccess();
}

id sub_21CAB3648()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21CAB369C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21CAB3754(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_21CAB37B0()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21CAB3804(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21CAB38BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21CB858B4();
  *(v4 + 24) = sub_21CB858A4();
  v6 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CAB3954, v6, v5);
}

uint64_t sub_21CAB3954()
{
  v2 = v0[2];
  v1 = v0[3];

  if ((*(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) & 1) == 0)
  {
    v3 = v0[2];
    sub_21C6EC92C();
  }

  v4 = v0[1];

  return v4();
}

void sub_21CAB3AFC(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a8;
  v26 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v24 - v17;
  v19 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v27 != 1)
  {
    goto LABEL_12;
  }

  if (*(a1 + 32))
  {
    goto LABEL_12;
  }

  v20 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
  swift_beginAccess();
  sub_21C6EDBAC(a1 + v20, v18, &qword_27CDF75E8, &qword_21CBC5500);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
  LODWORD(v20) = (*(*(v21 - 8) + 48))(v18, 1, v21);
  sub_21C6EA794(v18, &qword_27CDF75E8, &qword_21CBC5500);
  if (v20 != 1 || (sub_21C967788(a2, a6) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    if (!v26)
    {
      goto LABEL_12;
    }

    v22 = v26;

    v23 = sub_21C967788(a3, v22);

    if ((v23 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v26)
  {
LABEL_12:
    sub_21CAB3D30(a2, a3, a4, a5);
    return;
  }

  if ((sub_21C967788(a4, v25) & 1) == 0 || (sub_21C967788(a5, a9) & 1) == 0)
  {
    goto LABEL_12;
  }
}

void sub_21CAB3D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v77 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
  v81 = *(v16 - 8);
  v82 = v16;
  v17 = *(v81 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v78 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v76 - v20;
  v21 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedSavedAccounts;
  swift_beginAccess();
  v22 = *(v5 + v21);
  *(v5 + v21) = a1;

  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v24 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedRecentlyDeletedSavedAccounts;
  swift_beginAccess();
  v25 = *(v5 + v24);
  *(v5 + v24) = v23;

  v26 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithTOTPGenerators);
  *(v5 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithTOTPGenerators) = a4;

  v27 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker);
  *(v5 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker) = a3;

  sub_21CAB51FC();
  if (qword_27CDEA468 != -1)
  {
    swift_once();
  }

  v28 = sub_21CB81C84();
  __swift_project_value_buffer(v28, qword_27CE186C8);
  swift_retain_n();
  v29 = sub_21CB81C64();
  v30 = sub_21CB85AE4();
  v31 = &unk_21CBC5000;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v84[0] = v33;
    *v32 = 136446466;
    v76 = v10;
    v34 = sub_21CB86554();
    v36 = sub_21C98E004(v34, v35, v84);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2048;
    v37 = *(v5 + v21);
    if (v37 >> 62)
    {
      if (v37 < 0)
      {
        v74 = *(v5 + v21);
      }

      v38 = sub_21CB85FA4();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v80;

    *(v32 + 14) = v38;

    _os_log_impl(&dword_21C6E5000, v29, v30, "[%{public}s] reloaded saved accounts list with %ld accounts", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x21CF16D90](v33, -1, -1);
    MEMORY[0x21CF16D90](v32, -1, -1);

    v40 = v81;
    v31 = &unk_21CBC5000;
  }

  else
  {

    v39 = v80;
    v40 = v81;
  }

  sub_21CAB6DCC();
  swift_retain_n();
  v41 = sub_21CB81C64();
  v42 = sub_21CB85AE4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v84[0] = v44;
    *v43 = v31[159];
    v45 = sub_21CB86554();
    v47 = sub_21C98E004(v45, v46, v84);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2048;
    v48 = *(v5 + v24);
    if (v48 >> 62)
    {
      if (v48 < 0)
      {
        v75 = *(v5 + v24);
      }

      v49 = sub_21CB85FA4();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v43 + 14) = v49;

    _os_log_impl(&dword_21C6E5000, v41, v42, "[%{public}s] reloaded recently deleted saved accounts list with %ld accounts", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x21CF16D90](v44, -1, -1);
    MEMORY[0x21CF16D90](v43, -1, -1);
  }

  else
  {
  }

  v50 = v5[3];
  v51 = v5[4];
  v52 = v82;
  if (v51)
  {
    v53 = v5[2];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v54 = sub_21C7A1394(v50, v51, v84[0]);

    if (v54)
    {
      v55 = *(v53 + 32);
      v84[0] = v50;
      v84[1] = v51;

      sub_21CB81D04();

      v56 = v5[4];
      v5[3] = 0;
      v5[4] = 0;
    }
  }

  v57 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
  swift_beginAccess();
  v58 = v79;
  sub_21C6EDBAC(v5 + v57, v79, &qword_27CDF75E8, &qword_21CBC5500);
  if ((*(v40 + 48))(v58, 1, v52) == 1)
  {
    v59 = &qword_27CDF75E8;
    v60 = &qword_21CBC5500;
    v61 = v58;
LABEL_25:
    sub_21C6EA794(v61, v59, v60);
    goto LABEL_26;
  }

  sub_21C716934(v58, v39, &unk_27CDF7650, &qword_21CBADD58);
  v62 = v5[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v63 = v39;
  sub_21CB81DB4();

  v64 = v52;
  v65 = v83;
  v66 = v78;
  sub_21C6EDBAC(v63, v78, &unk_27CDF7650, &qword_21CBADD58);
  v67 = (v66 + *(v64 + 48));
  v68 = *v67;
  v69 = v67[1];

  sub_21C719840(v67, type metadata accessor for PMAccount);
  LOBYTE(v67) = sub_21C7A1394(v68, v69, v65);

  sub_21C719840(v66, type metadata accessor for PMAccount);
  if ((v67 & 1) == 0)
  {
    v59 = &unk_27CDF7650;
    v60 = &qword_21CBADD58;
    v61 = v63;
    goto LABEL_25;
  }

  v70 = *(v62 + 40);
  v71 = v82;
  v72 = *(v82 + 48);
  sub_21CACA770(v63, v66, type metadata accessor for PMAccount);
  sub_21CACA770(v63 + v72, v66 + v72, type metadata accessor for PMAccount);

  sub_21CB81D04();

  sub_21C6EA794(v66, &unk_27CDF7650, &qword_21CBADD58);
  sub_21C6EA794(v63, &unk_27CDF7650, &qword_21CBADD58);
  v73 = v77;
  (*(v81 + 56))(v77, 1, 1, v71);
  swift_beginAccess();
  sub_21CAC9E14(v73, v5 + v57);
  swift_endAccess();
LABEL_26:
  sub_21CAB4590();
}

void sub_21CAB4590()
{
  v1 = sub_21CB81C54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager;
  swift_beginAccess();
  v8 = [*(v0 + v7) hasUnacknowledgedHighPriorityWarnings];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = v8;

  sub_21CB81DC4();
  sub_21CB85D34();
  if (qword_27CDEA458 != -1)
  {
    swift_once();
  }

  sub_21CB81C44();
  sub_21CB81C34();
  (*(v2 + 8))(v5, v1);
  v9 = *(v0 + v7);
  aBlock[4] = sub_21CACA2C8;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CAB5158;
  aBlock[3] = &block_descriptor_210;
  v10 = _Block_copy(aBlock);
  v11 = v9;

  [v11 getAllWarningsForcingUpdate:1 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_21CAB47F0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_21CB81C54();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB853D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB85404();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 && a1)
  {
    v41 = v17;
    v42 = v6;
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);

    v40 = sub_21CB85CF4();
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a1;
    aBlock[4] = sub_21CACA2E8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_216;
    v21 = _Block_copy(aBlock);

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21C6EADA4(&qword_27CDEAF48, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EAE34(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
    sub_21CB85F14();
    v22 = v40;
    MEMORY[0x21CF15800](0, v19, v13, v21);
    _Block_release(v21);

    (*(v10 + 8))(v13, v9);
    (*(v15 + 8))(v19, v41);
    sub_21CB85D24();
    if (qword_27CDEA458 != -1)
    {
      swift_once();
    }

    v6 = v42;
    v23 = v43;
    v24 = v44;
LABEL_14:
    sub_21CB81C44();
    sub_21CB81C34();
    return (*(v24 + 8))(v23, v6);
  }

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v25 = sub_21CB81C84();
  __swift_project_value_buffer(v25, qword_27CE186E0);
  v26 = a2;
  v27 = sub_21CB81C64();
  v28 = sub_21CB85AE4();
  if (!os_log_type_enabled(v27, v28))
  {

LABEL_12:
    v24 = v44;
    sub_21CB85D24();
    v23 = v43;
    if (qword_27CDEA458 != -1)
    {
      swift_once();
    }

    goto LABEL_14;
  }

  v29 = v6;
  v30 = swift_slowAlloc();
  result = swift_slowAlloc();
  aBlock[0] = result;
  *v30 = 136315138;
  if (a2)
  {
    v32 = result;

    v33 = sub_21CB80B04();
    v34 = [v33 safari_privacyPreservingDescription];

    v35 = sub_21CB855C4();
    v37 = v36;

    v38 = sub_21C98E004(v35, v37, aBlock);

    *(v30 + 4) = v38;
    _os_log_impl(&dword_21C6E5000, v27, v28, "Error fetching password warnings: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x21CF16D90](v32, -1, -1);
    MEMORY[0x21CF16D90](v30, -1, -1);

    v6 = v29;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CAB4DAC(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedWarnings;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;

  if (a2 >> 62)
  {
LABEL_29:
    v6 = sub_21CB85FA4();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v6 != v7)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CF15BD0](v7, a2);
    }

    else
    {
      if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = [v8 severity];

    if (v10 == 2)
    {

      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_28;
    }
  }

  v12 = *(a1 + v4);
  if (v12 >> 62)
  {
    goto LABEL_35;
  }

  v7 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
  while (1)
  {
    swift_beginAccess();
    v14 = *(a1 + v4);
    v15 = v14 >> 62;
    if (v14 >> 62)
    {
      break;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v7)
    {
      goto LABEL_18;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    result = sub_21CB85FA4();
    v7 = result;
    if (result < 0)
    {
      goto LABEL_36;
    }
  }

  if (v14 < 0)
  {
    v23 = *(a1 + v4);
  }

  result = sub_21CB85FA4();
  if (result < 0)
  {
    goto LABEL_37;
  }

  if (sub_21CB85FA4() < v7)
  {
    goto LABEL_34;
  }

LABEL_18:
  if ((v14 & 0xC000000000000001) != 0 && v7)
  {
    sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);

    v16 = 0;
    do
    {
      v17 = v16 + 1;
      sub_21CB860C4();
      v16 = v17;
    }

    while (v7 != v17);
    if (!v15)
    {
LABEL_23:
      v18 = 0;
      v19 = v14 & 0xFFFFFFFFFFFFFF8;
      v20 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v21 = (2 * v7) | 1;
      goto LABEL_26;
    }
  }

  else
  {

    if (!v15)
    {
      goto LABEL_23;
    }
  }

  v19 = sub_21CB861F4();
LABEL_26:
  v24 = v19;
  v25 = v20;
  v26 = v18;
  v27 = v21;
  sub_21CAB5094(&v24);
  sub_21CACA3C8(v24, v25, v26, v27, 0, v7);
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_21CAB51FC();
  sub_21CAB7B90();
  v22 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v24) = 1;

  return sub_21CB81DC4();
}

char *sub_21CAB5094(char *result)
{
  v1 = *(result + 2);
  v2 = *(result + 3);
  v3 = (v2 >> 1) - v1;
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    if ((v2 & 1) != 0 && (v6 = *result, isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), *v4 = v5, isUniquelyReferenced_nonNull))
    {
      v8 = *(v4 + 1);
    }

    else
    {
      sub_21CACA2F0(*(v4 + 1), v1, v2);
      v10 = v9;
      v8 = v11;
      v1 = v12;
      v14 = v13;
      swift_unknownObjectRelease();
      *v4 = v10;
      *(v4 + 1) = v8;
      v5 = v10;
      *(v4 + 2) = v1;
      *(v4 + 3) = v14;
    }

    v15[0] = v8 + 8 * v1;
    v15[1] = v3;
    result = sub_21CAC9098(v15);
    *v4 = v5;
  }

  return result;
}

uint64_t sub_21CAB5158(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);
    v4 = sub_21CB85824();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_21CAB51FC()
{
  v208 = type metadata accessor for PMAccount.MockData(0);
  v1 = *(*(v208 - 8) + 64);
  MEMORY[0x28223BE20](v208);
  v207 = &v189 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v211 = &v189 - v8;
  v223 = sub_21CB85C44();
  v222 = *(v223 - 8);
  v9 = v222[8];
  v10 = MEMORY[0x28223BE20](v223);
  v191 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v220 = &v189 - v12;
  v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v218 = &v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v217 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for PMAccount(0);
  v228 = *(v232 - 8);
  v19 = *(v228 + 64);
  v20 = MEMORY[0x28223BE20](v232);
  v22 = (&v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20);
  v219 = &v189 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v196 = &v189 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v213 = &v189 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v206 = &v189 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v227 = &v189 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v198 = (&v189 - v34);
  MEMORY[0x28223BE20](v33);
  isUniquelyReferenced_nonNull_native = &v189 - v35;
  v236 = type metadata accessor for PMAccount.Storage(0);
  v37 = *(*(v236 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v236);
  v229 = (&v189 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x28223BE20](v38);
  v205 = (&v189 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v204 = (&v189 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v210 = (&v189 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v197 = (&v189 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v226 = (&v189 - v49);
  MEMORY[0x28223BE20](v48);
  v233 = (&v189 - v50);
  v231 = type metadata accessor for PMAccount.UniqueID(0);
  v224 = *(v231 - 8);
  v51 = v224[8];
  v52 = MEMORY[0x28223BE20](v231);
  v214 = &v189 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v192 = &v189 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v209 = &v189 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v189 - v59;
  MEMORY[0x28223BE20](v58);
  v234 = &v189 - v61;
  v62 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedWarnings;
  swift_beginAccess();
  v189 = v0;
  v63 = *(v0 + v62);

  v64 = sub_21CB12900(MEMORY[0x277D84F90]);
  if (v63 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21CB85FA4())
  {
    v212 = v7;
    v221 = v22;
    v235 = isUniquelyReferenced_nonNull_native;
    if (!i)
    {
      break;
    }

    v7 = 0;
    v230 = v63 & 0xC000000000000001;
    v225 = v63 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v230)
      {
        v69 = MEMORY[0x21CF15BD0](v7, v63);
      }

      else
      {
        if (v7 >= *(v225 + 16))
        {
          goto LABEL_96;
        }

        v69 = *(v63 + 8 * v7 + 32);
      }

      v70 = v69;
      v22 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v71 = [v69 savedAccount];
      v72 = v233;
      *v233 = v71;
      swift_storeEnumTagMultiPayload();
      v73 = v234;
      sub_21C7C8A3C(v234);
      sub_21C719840(v72, type metadata accessor for PMAccount.Storage);
      sub_21CACA770(v73, v60, type metadata accessor for PMAccount.UniqueID);
      v74 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v238 = v64;
      v76 = sub_21CB10BE4(v60);
      v77 = *(v64 + 16);
      v78 = (v75 & 1) == 0;
      v79 = v77 + v78;
      if (__OFADD__(v77, v78))
      {
        goto LABEL_97;
      }

      v80 = v75;
      if (*(v64 + 24) >= v79)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C8D5B30();
        }
      }

      else
      {
        sub_21C8D1F18(v79, isUniquelyReferenced_nonNull_native);
        v81 = sub_21CB10BE4(v60);
        if ((v80 & 1) != (v82 & 1))
        {
          goto LABEL_126;
        }

        v76 = v81;
      }

      isUniquelyReferenced_nonNull_native = v235;
      v64 = v238;
      if (v80)
      {
        v66 = *(v238 + 56);
        v67 = *(v66 + 8 * v76);
        *(v66 + 8 * v76) = v74;

        sub_21C719840(v60, type metadata accessor for PMAccount.UniqueID);
        sub_21C719840(v234, type metadata accessor for PMAccount.UniqueID);
      }

      else
      {
        *(v238 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        sub_21CACA770(v60, *(v64 + 48) + v224[9] * v76, type metadata accessor for PMAccount.UniqueID);
        *(*(v64 + 56) + 8 * v76) = v74;

        sub_21C719840(v60, type metadata accessor for PMAccount.UniqueID);
        sub_21C719840(v234, type metadata accessor for PMAccount.UniqueID);
        v83 = *(v64 + 16);
        v84 = __OFADD__(v83, 1);
        v85 = v83 + 1;
        if (v84)
        {
          goto LABEL_99;
        }

        *(v64 + 16) = v85;
      }

      ++v7;
      v68 = v22 == i;
      v22 = v221;
      if (v68)
      {
        goto LABEL_21;
      }
    }

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
    ;
  }

LABEL_21:
  v230 = v64;

  v86 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedSavedAccounts;
  v87 = v189;
  swift_beginAccess();
  v64 = *(v87 + v86);
  if (v64 >> 62)
  {
    v60 = sub_21CB85FA4();
    if (v60)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v60 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
LABEL_23:
      v203 = v64 & 0xC000000000000001;
      v193 = v64 & 0xFFFFFFFFFFFFFF8;
      v202 = (v222 + 6);
      v195 = (v222 + 4);
      v190 = (v222 + 2);
      v194 = (v222 + 1);

      v88 = 0;
      v215 = 0;
      v216 = MEMORY[0x277D84F98];
      v224 = MEMORY[0x277D84F90];
      v199 = MEMORY[0x277D84F90];
      v222 = MEMORY[0x277D84F90];
      v233 = MEMORY[0x277D84F90];
      v201 = v64;
      v200 = v60;
      while (1)
      {
        if (v203)
        {
          v89 = MEMORY[0x21CF15BD0](v88, v64);
        }

        else
        {
          if (v88 >= *(v193 + 16))
          {
            goto LABEL_101;
          }

          v89 = *(v64 + 8 * v88 + 32);
        }

        v90 = v89;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_98;
        }

        v225 = v88 + 1;
        v91 = v226;
        *v226 = v89;
        swift_storeEnumTagMultiPayload();
        v92 = v232;
        v93 = isUniquelyReferenced_nonNull_native + *(v232 + 28);
        *v93 = 0u;
        *(v93 + 16) = 0u;
        v234 = *(v92 + 24);
        sub_21CACA770(v91, isUniquelyReferenced_nonNull_native + v234, type metadata accessor for PMAccount.Storage);
        v94 = *(v92 + 20);
        v63 = v90;
        sub_21C7C8A3C(isUniquelyReferenced_nonNull_native + v94);
        v95 = v209;
        sub_21CACA770(isUniquelyReferenced_nonNull_native + v94, v209, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v96 = v218;
          sub_21CAC9E84(v95, v218, type metadata accessor for PMAccount.SIWAUniqueID);
          v97 = sub_21C7CE99C();
          v99 = v98;

          v100 = type metadata accessor for PMAccount.SIWAUniqueID;
        }

        else
        {
          v96 = v217;
          sub_21CAC9E84(v95, v217, type metadata accessor for PMAccount.CombinedUniqueID);
          v97 = sub_21C7CE408();
          v99 = v101;

          v100 = type metadata accessor for PMAccount.CombinedUniqueID;
        }

        sub_21C719840(v96, v100);
        sub_21C719840(v226, type metadata accessor for PMAccount.Storage);
        v102 = v235;
        *v235 = v97;
        v102[1] = v99;
        v103 = v230;
        if (*(v230 + 16) && (v104 = sub_21CB10BE4(v102 + v94), (v105 & 1) != 0))
        {
          v106 = *(*(v103 + 56) + 8 * v104);
          v107 = [v106 savedAccount];
          v108 = v197;
          *v197 = v107;
          swift_storeEnumTagMultiPayload();
          v109 = v232;
          v110 = v198;
          v111 = (v198 + *(v232 + 28));
          *v111 = 0u;
          v111[1] = 0u;
          sub_21CACA770(v108, v110 + *(v109 + 24), type metadata accessor for PMAccount.Storage);
          v112 = *(v109 + 20);
          v113 = v107;
          sub_21C7C8A3C(v110 + v112);
          v114 = v192;
          sub_21CACA770(v110 + v112, v192, type metadata accessor for PMAccount.UniqueID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v115 = v218;
            sub_21CAC9E84(v114, v218, type metadata accessor for PMAccount.SIWAUniqueID);
            v116 = sub_21C7CE99C();
            v118 = v117;

            v119 = type metadata accessor for PMAccount.SIWAUniqueID;
          }

          else
          {
            v115 = v217;
            sub_21CAC9E84(v114, v217, type metadata accessor for PMAccount.CombinedUniqueID);
            v116 = sub_21C7CE408();
            v118 = v121;

            v119 = type metadata accessor for PMAccount.CombinedUniqueID;
          }

          sub_21C719840(v115, v119);
          sub_21C719840(v197, type metadata accessor for PMAccount.Storage);
          v122 = v198;
          *v198 = v116;
          *(v122 + 8) = v118;

          sub_21C719840(v122, type metadata accessor for PMAccount);
          LODWORD(v120) = [v106 hasBeenHidden];

          v120 = v120;
        }

        else
        {
          v116 = 0;
          v118 = 0;
          v120 = 0;
          v106 = 0;
        }

        sub_21C7D33F0(*v93, *(v93 + 8), *(v93 + 16), *(v93 + 24));
        *v93 = v116;
        *(v93 + 8) = v118;
        *(v93 + 16) = v120;
        *(v93 + 24) = v106;
        v123 = v235;
        sub_21CACA770(v235, v227, type metadata accessor for PMAccount);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v233 = sub_21CA4F1B8(0, v233[2] + 1, 1, v233);
        }

        v124 = v212;
        v126 = v233[2];
        v125 = v233[3];
        if (v126 >= v125 >> 1)
        {
          v233 = sub_21CA4F1B8(v125 > 1, v126 + 1, 1, v233);
        }

        v127 = v233;
        v233[2] = v126 + 1;
        v128 = (*(v228 + 80) + 32) & ~*(v228 + 80);
        v60 = *(v228 + 72);
        sub_21CAC9E84(v227, v127 + v128 + v60 * v126, type metadata accessor for PMAccount);
        v129 = v210;
        sub_21CACA770(v123 + v234, v210, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v130 = v129;
          v131 = v207;
          sub_21CAC9E84(v130, v207, type metadata accessor for PMAccount.MockData);
          sub_21C6EDBAC(v131 + *(v208 + 72), v124, &unk_27CDF20B0, &unk_21CBA0090);
          sub_21C719840(v131, type metadata accessor for PMAccount.MockData);
        }

        else
        {
          v133 = *v129;
          sub_21CB85B94();
        }

        v132 = v211;
        sub_21C716934(v124, v211, &unk_27CDF20B0, &unk_21CBA0090);
        v134 = v223;
        if ((*v202)(v132, 1, v223) == 1)
        {
          sub_21C6EA794(v132, &unk_27CDF20B0, &unk_21CBA0090);
          sub_21CACA770(v123, v213, type metadata accessor for PMAccount);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v135 = v204;
            v136 = v222;
          }

          else
          {
            v136 = sub_21CA4F1B8(0, v222[2] + 1, 1, v222);
            v135 = v204;
          }

          v138 = v136[2];
          v137 = v136[3];
          v139 = v138 + 1;
          if (v138 >= v137 >> 1)
          {
            v136 = sub_21CA4F1B8(v137 > 1, v138 + 1, 1, v136);
            v140 = v213;
            v222 = v136;
          }

          else
          {
            v222 = v136;
            v140 = v213;
          }

          goto LABEL_66;
        }

        v7 = v220;
        (*v195)(v220, v132, v134);
        sub_21CACA770(v123, v206, type metadata accessor for PMAccount);
        sub_21C71B710(v215);
        v64 = v216;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v237 = v64;
        v142 = sub_21CB10A54(v7);
        v143 = *(v64 + 16);
        v144 = (v141 & 1) == 0;
        v145 = v143 + v144;
        if (__OFADD__(v143, v144))
        {
          goto LABEL_100;
        }

        v146 = v141;
        if (*(v64 + 24) < v145)
        {
          break;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C8D58B0();
          v149 = v237;
          if (v146)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

        v149 = v237;
        if ((v141 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_61:
        v216 = v149;
        v151 = v149[7];
        v152 = *(v151 + 8 * v142);
        v153 = swift_isUniquelyReferenced_nonNull_native();
        *(v151 + 8 * v142) = v152;
        if ((v153 & 1) == 0)
        {
          v152 = sub_21CA4F1B8(0, v152[2] + 1, 1, v152);
          *(v151 + 8 * v142) = v152;
        }

        v138 = v152[2];
        v154 = v152[3];
        v139 = v138 + 1;
        if (v138 >= v154 >> 1)
        {
          *(v151 + 8 * v142) = sub_21CA4F1B8(v154 > 1, v138 + 1, 1, v152);
        }

        (*v194)(v220, v223);
        v136 = *(v151 + 8 * v142);
        v215 = sub_21C839CEC;
        v140 = v206;
        v22 = v221;
        v135 = v204;
LABEL_66:
        v136[2] = v139;
        sub_21CAC9E84(v140, v136 + v128 + v138 * v60, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = v235;
        sub_21CACA770(v235 + v234, v135, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719840(v135, type metadata accessor for PMAccount.Storage);
        }

        else
        {
          v155 = *v135;
          v156 = [v155 credentialTypes];

          if ((v156 & 2) != 0)
          {
            sub_21CACA770(isUniquelyReferenced_nonNull_native, v196, type metadata accessor for PMAccount);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v199 = sub_21CA4F1B8(0, v199[2] + 1, 1, v199);
            }

            v158 = v199[2];
            v157 = v199[3];
            if (v158 >= v157 >> 1)
            {
              v199 = sub_21CA4F1B8(v157 > 1, v158 + 1, 1, v199);
            }

            v159 = v199;
            v199[2] = v158 + 1;
            sub_21CAC9E84(v196, v159 + v128 + v158 * v60, type metadata accessor for PMAccount);
          }
        }

        v160 = v205;
        sub_21CACA770(isUniquelyReferenced_nonNull_native + v234, v205, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v7 = v207;
          sub_21CAC9E84(v160, v207, type metadata accessor for PMAccount.MockData);
          v161 = *(v7 + *(v208 + 56));
          v162 = v161;
          sub_21C719840(v7, type metadata accessor for PMAccount.MockData);
          if (v161)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v162 = *v160;
          v7 = [v162 totpGenerators];
          sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
          v64 = sub_21CB85824();

          if (v64 >> 62)
          {
            if (sub_21CB85FA4())
            {
LABEL_79:
              if ((v64 & 0xC000000000000001) != 0)
              {
                MEMORY[0x21CF15BD0](0, v64);
                swift_unknownObjectRelease();
              }

              else if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_102;
              }

LABEL_82:

              sub_21CACA770(isUniquelyReferenced_nonNull_native, v219, type metadata accessor for PMAccount);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v224 = sub_21CA4F1B8(0, v224[2] + 1, 1, v224);
              }

              v164 = v224[2];
              v163 = v224[3];
              if (v164 >= v163 >> 1)
              {
                v224 = sub_21CA4F1B8(v163 > 1, v164 + 1, 1, v224);
              }

              v165 = v224;
              v224[2] = v164 + 1;
              sub_21CAC9E84(v219, v165 + v128 + v164 * v60, type metadata accessor for PMAccount);
              goto LABEL_25;
            }
          }

          else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }
        }

LABEL_25:
        sub_21C719840(isUniquelyReferenced_nonNull_native, type metadata accessor for PMAccount);
        ++v88;
        v60 = v200;
        v64 = v201;
        if (v225 == v200)
        {

          goto LABEL_106;
        }
      }

      sub_21C8D1B3C(v145, isUniquelyReferenced_nonNull_native);
      v147 = sub_21CB10A54(v220);
      if ((v146 & 1) != (v148 & 1))
      {
        goto LABEL_127;
      }

      v142 = v147;
      v149 = v237;
      if (v146)
      {
        goto LABEL_61;
      }

LABEL_60:
      v150 = v191;
      (*v190)(v191, v220, v223);
      sub_21C8D5124(v142, v150, MEMORY[0x277D84F90], v149);
      goto LABEL_61;
    }
  }

  v215 = 0;
  v216 = MEMORY[0x277D84F98];
  v199 = MEMORY[0x277D84F90];
  v222 = MEMORY[0x277D84F90];
  v224 = MEMORY[0x277D84F90];
  v233 = MEMORY[0x277D84F90];
LABEL_106:

  v166 = *(v189 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker);
  if (v166 >> 62)
  {
    if (v166 < 0)
    {
      v188 = *(v189 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker);
    }

    v167 = sub_21CB85FA4();
  }

  else
  {
    v167 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v168 = MEMORY[0x277D84F90];
  if (!v167)
  {
    goto LABEL_121;
  }

  v237 = MEMORY[0x277D84F90];

  sub_21C7B0C4C(0, v167 & ~(v167 >> 63), 0);
  if ((v167 & 0x8000000000000000) == 0)
  {
    v169 = 0;
    v168 = v237;
    do
    {
      if ((v166 & 0xC000000000000001) != 0)
      {
        v170 = MEMORY[0x21CF15BD0](v169, v166);
      }

      else
      {
        v170 = *(v166 + 8 * v169 + 32);
      }

      v171 = v170;
      v172 = v229;
      *v229 = v170;
      swift_storeEnumTagMultiPayload();
      v173 = v232;
      v174 = (v22 + *(v232 + 28));
      *v174 = 0u;
      v174[1] = 0u;
      sub_21CACA770(v172, v22 + *(v173 + 24), type metadata accessor for PMAccount.Storage);
      v175 = *(v173 + 20);
      v176 = v171;
      sub_21C7C8A3C(v22 + v175);
      v177 = v214;
      sub_21CACA770(v22 + v175, v214, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v178 = v218;
        sub_21CAC9E84(v177, v218, type metadata accessor for PMAccount.SIWAUniqueID);
        v179 = sub_21C7CE99C();
        v181 = v180;

        v182 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v178 = v217;
        sub_21CAC9E84(v177, v217, type metadata accessor for PMAccount.CombinedUniqueID);
        v179 = sub_21C7CE408();
        v181 = v183;

        v182 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719840(v178, v182);
      sub_21C719840(v229, type metadata accessor for PMAccount.Storage);
      *v22 = v179;
      v22[1] = v181;
      v237 = v168;
      v185 = v168[2];
      v184 = v168[3];
      if (v185 >= v184 >> 1)
      {
        sub_21C7B0C4C(v184 > 1, v185 + 1, 1);
        v168 = v237;
      }

      ++v169;
      v168[2] = v185 + 1;
      sub_21CAC9E84(v22, v168 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v185, type metadata accessor for PMAccount);
    }

    while (v167 != v169);

LABEL_121:
    v186 = *(v189 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v237 = v233;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    v237 = v168;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    v237 = v222;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    v237 = v216;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    v237 = v199;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    v237 = v224;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v237) = 1;

    sub_21CB81DC4();
    return sub_21C71B710(v215);
  }

  __break(1u);
LABEL_126:
  sub_21CB863B4();
  __break(1u);
LABEL_127:
  result = sub_21CB863B4();
  __break(1u);
  return result;
}

uint64_t sub_21CAB6DCC()
{
  v108 = type metadata accessor for PMAccount.MockData(0);
  v1 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v98 - v8;
  v10 = sub_21CB85C44();
  v101 = *(v10 - 8);
  v11 = *(v101 + 64);
  MEMORY[0x28223BE20](v10);
  v124 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v106 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v105 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for PMAccount.UniqueID(0);
  v19 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v120 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for PMAccount.Storage(0);
  v21 = *(*(v132 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v132);
  v119 = (&v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v131 = (&v98 - v24);
  v25 = type metadata accessor for PMAccount(0);
  v117 = *(v25 - 8);
  v118 = v25;
  v26 = *(v117 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v116 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v115 = &v98 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v130 = &v98 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = (&v98 - v33);
  v35 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedRecentlyDeletedSavedAccounts;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = *(v0 + v35);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_50:
    v37 = sub_21CB85FA4();
  }

  else
  {
    v37 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v110 = v37;
    v99 = v0;
    v114 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v102 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v113 = (v101 + 48);
    v104 = (v101 + 32);
    v100 = v101 + 16;
    v103 = (v101 + 8);

    v39 = 0;
    v122 = 0;
    v123 = MEMORY[0x277D84F98];
    v125 = v38;
    v111 = isUniquelyReferenced_nonNull_native;
    v112 = v9;
    while (1)
    {
      if (v114)
      {
        v42 = MEMORY[0x21CF15BD0](v39, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v39 >= *(v102 + 16))
        {
          goto LABEL_48;
        }

        v42 = *(isUniquelyReferenced_nonNull_native + 8 * v39 + 32);
      }

      v0 = v42;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v43 = v7;
      v44 = v10;
      v128 = v39 + 1;
      v45 = v38;
      v46 = v131;
      *v131 = v42;
      swift_storeEnumTagMultiPayload();
      v47 = v118;
      v48 = (v34 + *(v118 + 28));
      *v48 = 0u;
      v48[1] = 0u;
      v49 = *(v47 + 24);
      sub_21CACA770(v46, v34 + v49, type metadata accessor for PMAccount.Storage);
      v50 = *(v47 + 20);
      v51 = v0;
      sub_21C7C8A3C(v34 + v50);
      v52 = v34 + v50;
      v53 = v120;
      sub_21CACA770(v52, v120, type metadata accessor for PMAccount.UniqueID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v129 = v51;
      if (EnumCaseMultiPayload == 1)
      {
        v55 = v53;
        v56 = v106;
        sub_21CAC9E84(v55, v106, type metadata accessor for PMAccount.SIWAUniqueID);
        v57 = sub_21C7CE99C();
        v59 = v58;

        v60 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v61 = v53;
        v56 = v105;
        sub_21CAC9E84(v61, v105, type metadata accessor for PMAccount.CombinedUniqueID);
        v57 = sub_21C7CE408();
        v59 = v62;

        v60 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719840(v56, v60);
      sub_21C719840(v131, type metadata accessor for PMAccount.Storage);
      *v34 = v57;
      v34[1] = v59;
      sub_21CACA770(v34, v130, type metadata accessor for PMAccount);
      v38 = v45;
      v10 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_21CA4F1B8(0, v45[2] + 1, 1, v45);
      }

      v7 = v43;
      v64 = v38[2];
      v63 = v38[3];
      v9 = v112;
      if (v64 >= v63 >> 1)
      {
        v38 = sub_21CA4F1B8(v63 > 1, v64 + 1, 1, v38);
      }

      v38[2] = v64 + 1;
      v127 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v126 = *(v117 + 72);
      sub_21CAC9E84(v130, v38 + v127 + v126 * v64, type metadata accessor for PMAccount);
      v65 = v119;
      sub_21CACA770(v34 + v49, v119, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v66 = v65;
        v67 = v107;
        sub_21CAC9E84(v66, v107, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v67 + *(v108 + 72), v7, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C719840(v67, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v68 = *v65;
        sub_21CB85B94();
      }

      sub_21C716934(v7, v9, &unk_27CDF20B0, &unk_21CBA0090);
      if ((*v113)(v9, 1, v10) != 1)
      {
        break;
      }

      sub_21C6EA794(v9, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CACA770(v34, v116, type metadata accessor for PMAccount);
      v69 = v125;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_21CA4F1B8(0, v69[2] + 1, 1, v69);
      }

      v71 = v128;
      v70 = v129;
      v72 = v69;
      v73 = v69[2];
      v125 = v72;
      v74 = v72[3];
      v0 = (v73 + 1);
      if (v73 >= v74 >> 1)
      {
        v75 = v129;
        v125 = sub_21CA4F1B8(v74 > 1, v73 + 1, 1, v125);
        v70 = v75;
      }

      sub_21C719840(v34, type metadata accessor for PMAccount);
      v40 = v125;
      v41 = v116;
LABEL_6:
      v40[2] = v0;
      sub_21CAC9E84(v41, v40 + v127 + v73 * v126, type metadata accessor for PMAccount);
      ++v39;
      isUniquelyReferenced_nonNull_native = v111;
      if (v71 == v110)
      {

        v0 = v99;
        v94 = v122;
        v93 = v123;
        v95 = v125;
        goto LABEL_45;
      }
    }

    v109 = v38;
    v76 = v124;
    (*v104)(v124, v9, v10);
    sub_21CACA770(v34, v115, type metadata accessor for PMAccount);
    sub_21C71B710(v122);
    v0 = v123;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = v0;
    v78 = sub_21CB10A54(v76);
    v79 = v0[2];
    v80 = (v77 & 1) == 0;
    v81 = v79 + v80;
    if (__OFADD__(v79, v80))
    {
      goto LABEL_47;
    }

    v82 = v77;
    if (v0[3] < v81)
    {
      sub_21C8D1B3C(v81, isUniquelyReferenced_nonNull_native);
      v0 = v133;
      v83 = sub_21CB10A54(v124);
      if ((v82 & 1) != (v84 & 1))
      {
        result = sub_21CB863B4();
        __break(1u);
        return result;
      }

      v78 = v83;
      isUniquelyReferenced_nonNull_native = v133;
      if (v82)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v133;
      if ((v77 & 1) == 0)
      {
LABEL_34:
        *(isUniquelyReferenced_nonNull_native + 8 * (v78 >> 6) + 64) |= 1 << v78;
        (*(v101 + 16))(*(isUniquelyReferenced_nonNull_native + 48) + *(v101 + 72) * v78, v124, v10);
        *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v78) = MEMORY[0x277D84F90];
        v85 = *(isUniquelyReferenced_nonNull_native + 16);
        v86 = __OFADD__(v85, 1);
        v87 = v85 + 1;
        if (v86)
        {
          goto LABEL_49;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v87;
      }
    }

    else
    {
      v0 = &v133;
      sub_21C8D58B0();
      isUniquelyReferenced_nonNull_native = v133;
      if ((v82 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    v9 = v7;
    v123 = isUniquelyReferenced_nonNull_native;
    v88 = *(isUniquelyReferenced_nonNull_native + 56);
    v89 = *(v88 + 8 * v78);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    *(v88 + 8 * v78) = v89;
    if ((v90 & 1) == 0)
    {
      v89 = sub_21CA4F1B8(0, v89[2] + 1, 1, v89);
      *(v88 + 8 * v78) = v89;
    }

    v73 = v89[2];
    v91 = v89[3];
    v0 = (v73 + 1);
    v92 = v129;
    if (v73 >= v91 >> 1)
    {
      *(v88 + 8 * v78) = sub_21CA4F1B8(v91 > 1, v73 + 1, 1, v89);
      v92 = v129;
    }

    (*v103)(v124, v10);
    sub_21C719840(v34, type metadata accessor for PMAccount);
    v40 = *(v88 + 8 * v78);
    v122 = sub_21C839CEC;
    v41 = v115;
    v7 = v9;
    v38 = v109;
    v71 = v128;
    goto LABEL_6;
  }

  v94 = 0;
  v93 = MEMORY[0x277D84F98];
  v95 = MEMORY[0x277D84F90];
LABEL_45:
  v96 = v0[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v133 = v38;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();
  v133 = v95;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();
  v133 = v93;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CAFB8DC(v133);

  return sub_21C71B710(v94);
}

uint64_t sub_21CAB7B90()
{
  v1 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v64 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.UniqueID(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for PMAccount(0);
  v14 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedWarnings;
  result = swift_beginAccess();
  v19 = *(v0 + v17);
  if (v19 >> 62)
  {
    if (v19 < 0)
    {
      v55 = *(v0 + v17);
    }

    v56 = *(v0 + v17);
    result = sub_21CB85FA4();
    v19 = v56;
    v20 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_44:
    v53 = MEMORY[0x277D84F90];
    v52 = MEMORY[0x277D84F90];
    v54 = MEMORY[0x277D84F90];
LABEL_45:
    v57 = *(v0 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = v52;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = v54;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = v53;

    return sub_21CB81DC4();
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_44;
  }

LABEL_3:
  if (v20 >= 1)
  {
    v59 = v0;
    v66 = v19 & 0xC000000000000001;
    v21 = v19;

    v22 = v21;
    v23 = 0;
    v60 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
    v71 = MEMORY[0x277D84F90];
    v62 = v7;
    v65 = v10;
    v67 = v20;
    v68 = v21;
    while (1)
    {
      if (v66)
      {
        v24 = MEMORY[0x21CF15BD0](v23, v22);
      }

      else
      {
        v24 = *(v22 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = [v25 savedAccount];
      *v13 = v26;
      swift_storeEnumTagMultiPayload();
      v27 = v69;
      v28 = (v16 + *(v69 + 28));
      *v28 = 0u;
      v28[1] = 0u;
      sub_21CACA770(v13, v16 + *(v27 + 24), type metadata accessor for PMAccount.Storage);
      v29 = *(v27 + 20);
      v30 = v26;
      sub_21C7C8A3C(v16 + v29);
      sub_21CACA770(v16 + v29, v10, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v64;
        sub_21CAC9E84(v10, v64, type metadata accessor for PMAccount.SIWAUniqueID);
        v32 = sub_21C7CE99C();
        v34 = v33;

        v35 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v31 = v63;
        sub_21CAC9E84(v10, v63, type metadata accessor for PMAccount.CombinedUniqueID);
        v32 = sub_21C7CE408();
        v34 = v36;

        v35 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719840(v31, v35);
      sub_21C719840(v13, type metadata accessor for PMAccount.Storage);
      *v16 = v32;
      v16[1] = v34;

      sub_21C719840(v16, type metadata accessor for PMAccount);
      v37 = [v25 hasBeenHidden];

      if ([v25 hasBeenHidden])
      {

        v38 = v25;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v39 = v71;
        }

        else
        {
          v39 = sub_21CA4F1E0(0, *(v71 + 2) + 1, 1, v71);
        }

        v41 = *(v39 + 2);
        v40 = *(v39 + 3);
        if (v41 >= v40 >> 1)
        {
          v39 = sub_21CA4F1E0((v40 > 1), v41 + 1, 1, v39);
        }

        *(v39 + 2) = v41 + 1;
        v71 = v39;
        v42 = &v39[32 * v41];
        *(v42 + 4) = v32;
        *(v42 + 5) = v34;
        v42[48] = v37;
        *(v42 + 7) = v38;
        if (([objc_opt_self() isPasswordsAppInstalled] & 1) == 0)
        {

          goto LABEL_6;
        }

        v10 = v65;
      }

      v43 = [v25 severity];
      if (v43 > 1)
      {
        if (v43 != 2)
        {
          if (v43 != 3)
          {
LABEL_32:

            goto LABEL_7;
          }

LABEL_31:

          goto LABEL_7;
        }

        v49 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_21CA4F1E0(0, *(v49 + 2) + 1, 1, v49);
        }

        v46 = *(v49 + 2);
        v50 = *(v49 + 3);
        v61 = v49;
        v47 = v46 + 1;
        if (v46 >= v50 >> 1)
        {
          v61 = sub_21CA4F1E0((v50 > 1), v46 + 1, 1, v61);
        }

        v48 = v61;
      }

      else
      {
        if (!v43)
        {
          goto LABEL_31;
        }

        if (v43 != 1)
        {
          goto LABEL_32;
        }

        v44 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_21CA4F1E0(0, *(v44 + 2) + 1, 1, v44);
        }

        v46 = *(v44 + 2);
        v45 = *(v44 + 3);
        v60 = v44;
        v47 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          v60 = sub_21CA4F1E0((v45 > 1), v46 + 1, 1, v60);
        }

        v48 = v60;
      }

      *(v48 + 2) = v47;
      v51 = &v48[32 * v46];
      *(v51 + 4) = v32;
      *(v51 + 5) = v34;
      v51[48] = v37;
      *(v51 + 7) = v25;
LABEL_6:
      v10 = v65;
LABEL_7:
      ++v23;
      v22 = v68;
      if (v67 == v23)
      {

        v0 = v59;
        v52 = v60;
        v53 = v71;
        v54 = v61;
        goto LABEL_45;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CAB82DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.UniqueID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAccount.Storage(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PMAccount(0);
  v49 = *(v17 - 1);
  v18 = *(v49 + 64);
  *&v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v21 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *a1;
  v46 = a1[1];
  v47 = v22;
  v48 = *(a1 + 16);
  v23 = a1[3];
  v24 = [v23 savedAccount];
  *v16 = v24;
  swift_storeEnumTagMultiPayload();
  v25 = (v21 + v17[7]);
  *v25 = 0u;
  *(v25 + 1) = 0u;
  sub_21CACA770(v16, v21 + v17[6], type metadata accessor for PMAccount.Storage);
  v26 = v17[5];
  v27 = v24;
  sub_21C7C8A3C(v21 + v26);
  sub_21CACA770(v21 + v26, v12, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v45;
    sub_21CAC9E84(v12, v45, type metadata accessor for PMAccount.SIWAUniqueID);
    v29 = sub_21C7CE99C();
    v31 = v30;

    v32 = type metadata accessor for PMAccount.SIWAUniqueID;
  }

  else
  {
    v28 = v44;
    sub_21CAC9E84(v12, v44, type metadata accessor for PMAccount.CombinedUniqueID);
    v29 = sub_21C7CE408();
    v31 = v33;

    v32 = type metadata accessor for PMAccount.CombinedUniqueID;
  }

  sub_21C719840(v28, v32);
  sub_21C719840(v16, type metadata accessor for PMAccount.Storage);
  *v21 = v29;
  v21[1] = v31;
  v34 = *v25;
  v35 = v25[1];
  v36 = v25[2];
  v37 = v25[3];
  v38 = v46;

  v39 = v23;
  sub_21C7D33F0(v34, v35, v36, v37);
  v40 = v48;
  *v25 = v47;
  v25[1] = v38;
  v25[2] = v40;
  v25[3] = v23;
  v41 = v50;
  sub_21CACA770(v21, v50, type metadata accessor for PMAccount);
  (*(v49 + 56))(v41, 0, 1, v17);
  return sub_21C719840(v21, type metadata accessor for PMAccount);
}

uint64_t sub_21CAB86E8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  sub_21CB858B4();
  v3[21] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[22] = v5;
  v3[23] = v4;

  return MEMORY[0x2822009F8](sub_21CAB8784, v5, v4);
}

uint64_t sub_21CAB8784()
{
  v1 = v0[19];
  v2 = *(v0[20] + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v3 = v0[18];
  v0[24] = v2;
  v0[2] = v0;
  v0[3] = sub_21CAB88BC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB1570;
  v0[13] = &block_descriptor_159;
  v0[14] = v4;
  [v2 saveTOTPGenerator:v3 forSavedAccount:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CAB88BC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CAB89C4, v2, v1);
}

uint64_t sub_21CAB89C4()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CAB8A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = type metadata accessor for PMAccount.Storage(0);
  v4[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  sub_21CB858B4();
  v4[24] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v4[25] = v8;
  v4[26] = v7;

  return MEMORY[0x2822009F8](sub_21CAB8AF8, v8, v7);
}

uint64_t sub_21CAB8AF8()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = type metadata accessor for PMAccount(0);
  sub_21CACA770(v3 + *(v4 + 24), v2, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[23];
  if (EnumCaseMultiPayload == 1)
  {
    v7 = v0[24];

    sub_21C719840(v6, type metadata accessor for PMAccount.Storage);
    v8 = v0[23];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[21];
    v13 = v0[18];
    v12 = v0[19];
    v14 = *v6;
    v0[27] = *v6;
    v15 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
    v0[28] = v15;
    v16 = v15;
    v17 = sub_21CB85584();
    v0[29] = v17;
    v0[2] = v0;
    v0[3] = sub_21CAB8D04;
    v18 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21CAB1570;
    v0[13] = &block_descriptor_156;
    v0[14] = v18;
    [v16 addAdditionalSite:v17 toSavedAccount:v14 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_21CAB8D04()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CAB8E0C, v2, v1);
}

uint64_t sub_21CAB8E0C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[24];

  v5 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21CAB8E98(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 584) = v3;
  *(v4 + 752) = a3;
  *(v4 + 576) = a2;
  *(v4 + 568) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500) - 8) + 64) + 15;
  *(v4 + 592) = swift_task_alloc();
  v6 = *(*(type metadata accessor for PMAccount.SIWAUniqueID(0) - 8) + 64) + 15;
  *(v4 + 600) = swift_task_alloc();
  v7 = *(*(type metadata accessor for PMAccount.CombinedUniqueID(0) - 8) + 64) + 15;
  *(v4 + 608) = swift_task_alloc();
  v8 = type metadata accessor for PMAccount.UniqueID(0);
  *(v4 + 616) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 624) = swift_task_alloc();
  v10 = type metadata accessor for PMAccount(0);
  *(v4 + 632) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v4 + 640) = swift_task_alloc();
  v12 = type metadata accessor for PMAccount.Storage(0);
  *(v4 + 648) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v4 + 656) = swift_task_alloc();
  *(v4 + 664) = swift_task_alloc();
  *(v4 + 672) = swift_task_alloc();
  *(v4 + 680) = swift_task_alloc();
  *(v4 + 688) = swift_task_alloc();
  sub_21CB858B4();
  *(v4 + 696) = sub_21CB858A4();
  v15 = sub_21CB85874();
  *(v4 + 704) = v15;
  *(v4 + 712) = v14;

  return MEMORY[0x2822009F8](sub_21CAB9090, v15, v14);
}

uint64_t sub_21CAB9090()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 576);
  v3 = *(*(v0 + 632) + 24);
  sub_21CACA770(v2 + v3, *(v0 + 688), type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v0 + 696);
    v5 = *(v0 + 688);

    sub_21C719840(v5, type metadata accessor for PMAccount.Storage);
LABEL_3:
    v6 = *(v0 + 688);
    v7 = *(v0 + 680);
    v8 = *(v0 + 672);
    v9 = *(v0 + 664);
    v10 = *(v0 + 656);
    v11 = *(v0 + 640);
    v12 = *(v0 + 624);
    v13 = *(v0 + 608);
    v14 = *(v0 + 600);
    v15 = *(v0 + 592);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 688);
  v19 = *(v0 + 680);
  v20 = *(v0 + 648);
  v21 = *v18;
  *(v0 + 720) = *v18;
  sub_21CACA770(v2 + v3, v19, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *(v0 + 680);
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C719840(v23, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v24 = *v23;
    v25 = [*v23 credentialTypes];

    if (v25 == 4)
    {
      v26 = *(v0 + 696);
      v27 = *(v0 + 584);
      v28 = *(v0 + 576);

      sub_21CABC28C(v28);
      v29 = *(v27 + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v30 = *(v0 + 560);
      v31 = v28[1];
      *(v0 + 496) = *v28;
      *(v0 + 504) = v31;
      v32 = swift_task_alloc();
      *(v32 + 16) = v0 + 496;
      v33 = sub_21C862E50(sub_21C96C8C4, v32, v30);
      v35 = v34;

      if ((v35 & 1) == 0 && *(v0 + 752) == 1)
      {
        v36 = *(v0 + 584);
        swift_beginAccess();
        v37 = sub_21CACA8AC(v33);
        swift_endAccess();

        sub_21CAB51FC();
      }

      goto LABEL_3;
    }
  }

  v38 = *(v0 + 648);
  sub_21CACA770(v2 + v3, *(v0 + 672), type metadata accessor for PMAccount.Storage);
  v39 = swift_getEnumCaseMultiPayload();
  v40 = *(v0 + 672);
  if (v39 == 1)
  {
    sub_21C719840(v40, type metadata accessor for PMAccount.Storage);
    v41 = 0;
  }

  else
  {
    v42 = *v40;
    v41 = [*v40 credentialTypes];
  }

  *(v0 + 728) = v41;
  v43 = *(v0 + 648);
  sub_21CACA770(v2 + v3, *(v0 + 664), type metadata accessor for PMAccount.Storage);
  v44 = swift_getEnumCaseMultiPayload();
  v45 = *(v0 + 664);
  if (v44 == 1)
  {
    sub_21C719840(v45, type metadata accessor for PMAccount.Storage);
    v46 = 0;
  }

  else
  {
    v47 = *v45;
    v46 = [*v45 userIsNeverSaveMarker];
  }

  *(v0 + 753) = v46;
  if (([v21 isRecentlyDeleted] & 1) != 0 || v46)
  {
    v48 = v0 + 80;
    v52 = *(*(v0 + 584) + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
    v53 = *(v0 + 568);
    *(v0 + 736) = v52;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_21CAB96A8;
    v54 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_21CAB1570;
    *(v0 + 232) = &block_descriptor_151;
    *(v0 + 240) = v54;
    [v52 removeCredentialTypes:v53 forSavedAccount:v21 completionHandler:v0 + 208];
  }

  else
  {
    v48 = v0 + 16;
    v49 = *(v0 + 568);
    v50 = *(*(v0 + 584) + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
    *(v0 + 744) = v50;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 512;
    *(v0 + 24) = sub_21CAB9CD8;
    v51 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76C0, &qword_21CBC57D0);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21C82D1CC;
    *(v0 + 168) = &block_descriptor_129;
    *(v0 + 176) = v51;
    [v50 _moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler_];
  }

  return MEMORY[0x282200938](v48);
}

uint64_t sub_21CAB96A8()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CAB97B0, v2, v1);
}

uint64_t sub_21CAB97B0()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 696);
  v5 = *(v0 + 568);

  if ((v2 & ~v5) != 0)
  {
    v6 = *(v0 + 720);
    v7 = *(v0 + 656);
    v8 = *(v0 + 648);
    v9 = *(v0 + 640);
    v10 = *(v0 + 632);
    v11 = *(v0 + 624);
    v12 = *(v0 + 616);
    *v7 = v6;
    swift_storeEnumTagMultiPayload();
    v13 = (v9 + v10[7]);
    *v13 = 0u;
    v13[1] = 0u;
    sub_21CACA770(v7, v9 + v10[6], type metadata accessor for PMAccount.Storage);
    v14 = v10[5];
    v15 = v6;
    sub_21C7C8A3C(v9 + v14);
    sub_21CACA770(v9 + v14, v11, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = *(v0 + 720);
    v18 = *(v0 + 624);
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *(v0 + 600);
      sub_21CAC9E84(v18, v19, type metadata accessor for PMAccount.SIWAUniqueID);
      v20 = sub_21C7CE99C();
      v22 = v21;

      v23 = type metadata accessor for PMAccount.SIWAUniqueID;
    }

    else
    {
      v19 = *(v0 + 608);
      sub_21CAC9E84(v18, v19, type metadata accessor for PMAccount.CombinedUniqueID);
      v20 = sub_21C7CE408();
      v22 = v32;

      v23 = type metadata accessor for PMAccount.CombinedUniqueID;
    }

    sub_21C719840(v19, v23);
    v33 = *(v0 + 640);
    v34 = *(v0 + 592);
    v35 = *(v0 + 584);
    v36 = *(v0 + 576);
    sub_21C719840(*(v0 + 656), type metadata accessor for PMAccount.Storage);
    *v33 = v20;
    v33[1] = v22;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
    v38 = *(v37 + 48);
    sub_21CACA770(v36, v34, type metadata accessor for PMAccount);
    sub_21CAC9E84(v33, v34 + v38, type metadata accessor for PMAccount);
    (*(*(v37 - 8) + 56))(v34, 0, 1, v37);
    v39 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
    swift_beginAccess();
    sub_21CAC9E14(v34, v35 + v39);
    swift_endAccess();
  }

  else
  {
    v24 = *(v0 + 576);
    v25 = *(*(v0 + 584) + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v26 = *(v0 + 552);
    v27 = v24[1];
    *(v0 + 480) = *v24;
    *(v0 + 488) = v27;
    v28 = swift_task_alloc();
    *(v28 + 16) = v0 + 480;
    v29 = sub_21C862E50(sub_21C96C8C4, v28, v26);
    v31 = v30;

    if (v31)
    {
      if (*(v0 + 753))
      {
      }

      else
      {
        if (qword_27CDEA470 != -1)
        {
          swift_once();
        }

        v43 = sub_21CB81C84();
        __swift_project_value_buffer(v43, qword_27CE186E0);
        v44 = sub_21CB81C64();
        v45 = sub_21CB85AF4();
        v46 = os_log_type_enabled(v44, v45);
        v47 = *(v0 + 720);
        if (v46)
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_21C6E5000, v44, v45, "Failed to find recently deleted account to delete in accountsState.recentlyDeletedAccounts", v48, 2u);
          MEMORY[0x21CF16D90](v48, -1, -1);
        }
      }
    }

    else
    {
      v40 = *(v0 + 720);
      if (*(v0 + 752) == 1)
      {
        v41 = *(v0 + 584);
        swift_beginAccess();
        v42 = sub_21CACA8AC(v29);
        swift_endAccess();

        sub_21CAB6DCC();
      }
    }
  }

  v49 = *(v0 + 688);
  v50 = *(v0 + 680);
  v51 = *(v0 + 672);
  v52 = *(v0 + 664);
  v53 = *(v0 + 656);
  v54 = *(v0 + 640);
  v55 = *(v0 + 624);
  v56 = *(v0 + 608);
  v57 = *(v0 + 600);
  v58 = *(v0 + 592);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_21CAB9CD8()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CAB9DE0, v2, v1);
}

uint64_t sub_21CAB9DE0()
{
  v97 = v0;
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 696);
  v4 = *(v0 + 568);

  if ((v2 & ~v4) != 0)
  {
    v5 = *(v0 + 720);
    v6 = *(v0 + 656);
    v7 = *(v0 + 648);
    v8 = *(v0 + 640);
    v9 = *(v0 + 632);
    v10 = *(v0 + 624);
    v11 = *(v0 + 616);
    *v6 = v5;
    swift_storeEnumTagMultiPayload();
    v12 = (v8 + v9[7]);
    *v12 = 0u;
    v12[1] = 0u;
    sub_21CACA770(v6, v8 + v9[6], type metadata accessor for PMAccount.Storage);
    v13 = v9[5];
    v14 = v5;
    sub_21C7C8A3C(v8 + v13);
    sub_21CACA770(v8 + v13, v10, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = *(v0 + 720);
    v17 = *(v0 + 624);
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(v0 + 600);
      sub_21CAC9E84(v17, v18, type metadata accessor for PMAccount.SIWAUniqueID);
      v19 = sub_21C7CE99C();
      v21 = v20;

      v22 = type metadata accessor for PMAccount.SIWAUniqueID;
    }

    else
    {
      v18 = *(v0 + 608);
      sub_21CAC9E84(v17, v18, type metadata accessor for PMAccount.CombinedUniqueID);
      v19 = sub_21C7CE408();
      v21 = v35;

      v22 = type metadata accessor for PMAccount.CombinedUniqueID;
    }

    sub_21C719840(v18, v22);
    v36 = *(v0 + 640);
    v37 = *(v0 + 592);
    v38 = *(v0 + 584);
    v39 = *(v0 + 576);
    sub_21C719840(*(v0 + 656), type metadata accessor for PMAccount.Storage);
    *v36 = v19;
    v36[1] = v21;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
    v41 = *(v40 + 48);
    sub_21CACA770(v39, v37, type metadata accessor for PMAccount);
    sub_21CAC9E84(v36, v37 + v41, type metadata accessor for PMAccount);
    (*(*(v40 - 8) + 56))(v37, 0, 1, v40);
    v42 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
    swift_beginAccess();
    sub_21CAC9E14(v37, v38 + v42);
    swift_endAccess();
    goto LABEL_12;
  }

  v23 = *(v0 + 576);
  v24 = *(*(v0 + 584) + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v25 = *(v0 + 520);
  v26 = v23[1];
  *(v0 + 464) = *v23;
  *(v0 + 472) = v26;
  v27 = swift_task_alloc();
  *(v27 + 16) = v0 + 464;
  v28 = sub_21C862E50(sub_21C96C8C4, v27, v25);
  v30 = v29;

  if (v30)
  {
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v31 = sub_21CB81C84();
    __swift_project_value_buffer(v31, qword_27CE186E0);
    v32 = sub_21CB81C64();
    v33 = sub_21CB85AF4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_21C6E5000, v32, v33, "Failed to find account to delete in accountsState.accounts", v34, 2u);
      MEMORY[0x21CF16D90](v34, -1, -1);
    }
  }

  else if (*(v0 + 752) == 1)
  {
    v55 = *(v0 + 584);
    swift_beginAccess();
    v56 = sub_21CACA8AC(v28);
    swift_endAccess();

    sub_21CAB51FC();
  }

  v57 = *(v0 + 576) + *(*(v0 + 632) + 28);
  v58 = *(v57 + 8);
  if (!v58)
  {

    goto LABEL_12;
  }

  v59 = *v57;
  v61 = *(v57 + 16);
  v60 = *(v57 + 24);
  v62 = *(v57 + 8);

  v63 = v60;
  v64 = [v63 severity];
  if ((v61 & 1) == 0)
  {
    if (v64 != 3)
    {
      if (v64 == 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        v76 = sub_21CAB1600(v59, v58, 0, v63, *(v0 + 528));
        v87 = v86;

        if (v87)
        {
          v68 = v59;
          if (qword_27CDEA470 != -1)
          {
            swift_once();
          }

          v88 = sub_21CB81C84();
          __swift_project_value_buffer(v88, qword_27CE186E0);
          v70 = sub_21CB81C64();
          v71 = sub_21CB85AF4();
          v89 = os_log_type_enabled(v70, v71);
          v73 = *(v0 + 720);
          if (!v89)
          {
            goto LABEL_25;
          }

          v74 = swift_slowAlloc();
          *v74 = 0;
          v75 = "Failed to find security recommendation to delete in accountsState.standardPrioritySecurityRecommendations";
          goto LABEL_24;
        }

        v90 = v0 + 272;
        v94 = *(v0 + 720);
        swift_getKeyPath();
        goto LABEL_44;
      }

      if (v64 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        v76 = sub_21CAB1600(v59, v58, 0, v63, *(v0 + 536));
        v78 = v77;

        if (v78)
        {
          v68 = v59;
          if (qword_27CDEA470 != -1)
          {
            swift_once();
          }

          v79 = sub_21CB81C84();
          __swift_project_value_buffer(v79, qword_27CE186E0);
          v70 = sub_21CB81C64();
          v71 = sub_21CB85AF4();
          v80 = os_log_type_enabled(v70, v71);
          v73 = *(v0 + 720);
          if (!v80)
          {
            goto LABEL_25;
          }

          v74 = swift_slowAlloc();
          *v74 = 0;
          v75 = "Failed to find security recommendation to delete in accountsState.highPrioritySecurityRecommendations";
          goto LABEL_24;
        }

        v90 = v0 + 304;
        v94 = *(v0 + 720);
        swift_getKeyPath();
LABEL_44:
        swift_getKeyPath();
        v91 = sub_21CB81DA4();
        sub_21CACA8C4(v76, v95);
        v92 = v96;

        v91(v90, 0);

        v85 = v94;
        goto LABEL_45;
      }
    }

    v85 = *(v0 + 720);
LABEL_45:

    sub_21C7D33F0(v59, v58, v61, v60);
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v65 = sub_21CAB1600(v59, v58, 1, v63, *(v0 + 544));
  v67 = v66;

  if (v67)
  {
    v68 = v59;
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v69 = sub_21CB81C84();
    __swift_project_value_buffer(v69, qword_27CE186E0);
    v70 = sub_21CB81C64();
    v71 = sub_21CB85AF4();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v0 + 720);
    if (!v72)
    {
      goto LABEL_25;
    }

    v74 = swift_slowAlloc();
    *v74 = 0;
    v75 = "Failed to find security recommendation to delete in accountsState.hiddenSecurityRecommendations";
LABEL_24:
    _os_log_impl(&dword_21C6E5000, v70, v71, v75, v74, 2u);
    MEMORY[0x21CF16D90](v74, -1, -1);
LABEL_25:
    sub_21C7D33F0(v68, v58, v61, v60);

    goto LABEL_12;
  }

  v93 = v60;
  v81 = v59;
  v82 = *(v0 + 720);
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = sub_21CB81DA4();
  sub_21CACA8C4(v65, v95);
  v84 = v96;

  v83(v0 + 336, 0);

  sub_21C7D33F0(v81, v58, v61, v93);
LABEL_12:
  v43 = *(v0 + 688);
  v44 = *(v0 + 680);
  v45 = *(v0 + 672);
  v46 = *(v0 + 664);
  v47 = *(v0 + 656);
  v48 = *(v0 + 640);
  v49 = *(v0 + 624);
  v50 = *(v0 + 608);
  v51 = *(v0 + 600);
  v52 = *(v0 + 592);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_21CABA834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = type metadata accessor for PMBulkOperationProgress();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  sub_21C71DD5C(a2);
  v16 = sub_21C94C1A0(0, a1, sub_21C82AEC8, v12);
  v17 = sub_21CB858E4();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_21CB858B4();

  v18 = sub_21CB858A4();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v4;
  v19[5] = v16;
  v19[6] = a1;
  sub_21C98B308(0, 0, v11, &unk_21CBC57C8, v19);

  return v16;
}

uint64_t sub_21CABAA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = type metadata accessor for PMAccount.Storage(0);
  v6[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v9 = type metadata accessor for PMAccount(0);
  v6[13] = v9;
  v10 = *(v9 - 8);
  v6[14] = v10;
  v11 = *(v10 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  sub_21CB858B4();
  v6[19] = sub_21CB858A4();
  v13 = sub_21CB85874();
  v6[20] = v13;
  v6[21] = v12;

  return MEMORY[0x2822009F8](sub_21CABAB64, v13, v12);
}

uint64_t sub_21CABAB64()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications;
  *(v0 + 176) = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications;
  *(v2 + v3) = 1;
  v4 = *(v1 + 16);
  *(v0 + 184) = v4;
  if (!v4)
  {
LABEL_21:
    v48 = *(v0 + 152);

    v49 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 244) = 1;

    sub_21CB81DC4();
    v50 = *(v49 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
    if (v50)
    {
      v51 = *(v49 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion + 8);
      v50(0, 255);
    }

    v53 = *(v0 + 136);
    v52 = *(v0 + 144);
    v55 = *(v0 + 120);
    v54 = *(v0 + 128);
    v57 = *(v0 + 88);
    v56 = *(v0 + 96);
    v58 = *(v0 + 80);
    *(*(v0 + 48) + *(v0 + 176)) = 0;
    sub_21C6EC92C();

    v59 = *(v0 + 8);

    return v59();
  }

  v5 = 0;
  v6 = *(v0 + 112);
  v7 = *(v6 + 80);
  *(v0 + 240) = v7;
  v8 = *(v6 + 72);
  *(v0 + 192) = v8;
  while (1)
  {
    *(v0 + 200) = v5;
    *(v0 + 208) = v4;
    v9 = *(v0 + 144);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 72);
    sub_21CACA770(*(v0 + 64) + ((v7 + 32) & ~v7) + v8 * v5, v9, type metadata accessor for PMAccount);
    sub_21CACA770(v9 + *(v10 + 24), v11, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = *(v0 + 96);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C719840(v14, type metadata accessor for PMAccount.Storage);
LABEL_27:
      v61 = swift_task_alloc();
      *(v0 + 232) = v61;
      *v61 = v0;
      v62 = sub_21CABBAE8;
      goto LABEL_28;
    }

    v15 = *v14;
    v16 = [*v14 credentialTypes];

    if ((v16 - 8) < 2)
    {
      if (v4 != 1)
      {
        goto LABEL_15;
      }

      v17 = *(v0 + 128);
      v18 = *(v0 + 104);
      v20 = *(v0 + 72);
      v19 = *(v0 + 80);
      sub_21CACA770(*(v0 + 64) + ((*(v0 + 240) + 32) & ~*(v0 + 240)), v17, type metadata accessor for PMAccount);
      sub_21CACA770(v17 + *(v18 + 24), v19, type metadata accessor for PMAccount.Storage);
      v21 = swift_getEnumCaseMultiPayload();
      v22 = *(v0 + 128);
      v23 = *(v0 + 80);
      if (v21 == 1)
      {
LABEL_12:
        sub_21C719840(v23, type metadata accessor for PMAccount.Storage);
        sub_21C719840(v22, type metadata accessor for PMAccount);
      }

      else
      {
        v24 = *v23;
        v25 = [*v23 credentialTypes];

        sub_21C719840(v22, type metadata accessor for PMAccount);
        if (v25 == 9)
        {
          v64 = swift_task_alloc();
          *(v0 + 224) = v64;
          *v64 = v0;
          v64[1] = sub_21CABB9C8;
          v65 = *(v0 + 144);
          v66 = *(v0 + 48);
          v67 = 9;
          goto LABEL_29;
        }
      }

      goto LABEL_14;
    }

    if (v16 != 4)
    {
      goto LABEL_27;
    }

    v4 = *(v0 + 184);
    if (v4 == 1)
    {
      break;
    }

LABEL_15:
    v33 = *(v0 + 56);
    sub_21CACA770(*(v0 + 144), *(v0 + 120), type metadata accessor for PMAccount);
    swift_getKeyPath();
    swift_getKeyPath();
    v34 = sub_21CB81DA4();
    v36 = v35;
    v37 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v36 = v37;
    v68 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_21CA4F1B8(0, v37[2] + 1, 1, v37);
      *v36 = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    v41 = v4;
    if (v40 >= v39 >> 1)
    {
      v37 = sub_21CA4F1B8(v39 > 1, v40 + 1, 1, v37);
      *v36 = v37;
    }

    v42 = *(v0 + 192);
    v43 = *(v0 + 240);
    v44 = *(v0 + 184);
    v45 = *(v0 + 144);
    v46 = *(v0 + 120);
    v47 = *(v0 + 200) + 1;
    v37[2] = v40 + 1;
    sub_21CAC9E84(v46, v37 + ((v43 + 32) & ~v43) + v42 * v40, type metadata accessor for PMAccount);
    v68(v0 + 16, 0);

    sub_21C719840(v45, type metadata accessor for PMAccount);
    if (v47 == v44)
    {
      goto LABEL_21;
    }

    v4 = v41;
    v8 = *(v0 + 192);
    v5 = *(v0 + 200) + 1;
    LOBYTE(v7) = *(v0 + 240);
  }

  v26 = *(v0 + 136);
  v27 = *(v0 + 104);
  v28 = *(v0 + 88);
  v29 = *(v0 + 72);
  sub_21CACA770(*(v0 + 64) + ((*(v0 + 240) + 32) & ~*(v0 + 240)), v26, type metadata accessor for PMAccount);
  sub_21CACA770(v26 + *(v27 + 24), v28, type metadata accessor for PMAccount.Storage);
  v30 = swift_getEnumCaseMultiPayload();
  v22 = *(v0 + 136);
  v23 = *(v0 + 88);
  if (v30 == 1)
  {
    goto LABEL_12;
  }

  v31 = *v23;
  v32 = [*v23 credentialTypes];

  sub_21C719840(v22, type metadata accessor for PMAccount);
  if (v32 != 4)
  {
LABEL_14:
    v4 = 1;
    goto LABEL_15;
  }

  v61 = swift_task_alloc();
  *(v0 + 216) = v61;
  *v61 = v0;
  v62 = sub_21CABB224;
LABEL_28:
  v61[1] = v62;
  v65 = *(v0 + 144);
  v63 = *(v0 + 48);
  v67 = 3;
LABEL_29:

  return sub_21CAB8E98(v67, v65, 0);
}

uint64_t sub_21CABB224()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21CABB344, v4, v3);
}

uint64_t sub_21CABB344()
{
  v1 = 1;
LABEL_2:
  v63 = v1;
  while (1)
  {
    v2 = *(v0 + 56);
    sub_21CACA770(*(v0 + 144), *(v0 + 120), type metadata accessor for PMAccount);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = sub_21CB81DA4();
    v5 = v4;
    v6 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_21CA4F1B8(0, v6[2] + 1, 1, v6);
      *v5 = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_21CA4F1B8(v8 > 1, v9 + 1, 1, v6);
      *v5 = v6;
    }

    v10 = *(v0 + 192);
    v11 = *(v0 + 240);
    v12 = *(v0 + 184);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v15 = *(v0 + 200) + 1;
    v6[2] = v9 + 1;
    sub_21CAC9E84(v14, v6 + ((v11 + 32) & ~v11) + v10 * v9, type metadata accessor for PMAccount);
    v3(v0 + 16, 0);

    sub_21C719840(v13, type metadata accessor for PMAccount);
    if (v15 == v12)
    {
      break;
    }

    v16 = *(v0 + 192);
    v17 = *(v0 + 200) + 1;
    *(v0 + 200) = v17;
    *(v0 + 208) = v63;
    v18 = *(v0 + 144);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 72);
    sub_21CACA770(*(v0 + 64) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + v16 * v17, v18, type metadata accessor for PMAccount);
    sub_21CACA770(v18 + *(v19 + 24), v20, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 96);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C719840(v23, type metadata accessor for PMAccount.Storage);
      goto LABEL_27;
    }

    v24 = *v23;
    v25 = [*v23 credentialTypes];

    if ((v25 - 8) >= 2)
    {
      if (v25 == 4)
      {
        v1 = *(v0 + 184);
        if (v1 != 1)
        {
          goto LABEL_2;
        }

        v26 = *(v0 + 136);
        v27 = *(v0 + 104);
        v28 = *(v0 + 88);
        v29 = *(v0 + 72);
        sub_21CACA770(*(v0 + 64) + ((*(v0 + 240) + 32) & ~*(v0 + 240)), v26, type metadata accessor for PMAccount);
        sub_21CACA770(v26 + *(v27 + 24), v28, type metadata accessor for PMAccount.Storage);
        v30 = swift_getEnumCaseMultiPayload();
        v31 = *(v0 + 136);
        v32 = *(v0 + 88);
        if (v30 == 1)
        {
          goto LABEL_18;
        }

        v33 = *v32;
        v34 = [*v32 credentialTypes];

        sub_21C719840(v31, type metadata accessor for PMAccount);
        v1 = 1;
        if (v34 != 4)
        {
          goto LABEL_2;
        }

        v61 = swift_task_alloc();
        *(v0 + 216) = v61;
        *v61 = v0;
        v62 = sub_21CABB224;
        goto LABEL_28;
      }

LABEL_27:
      v61 = swift_task_alloc();
      *(v0 + 232) = v61;
      *v61 = v0;
      v62 = sub_21CABBAE8;
LABEL_28:
      v61[1] = v62;
      v44 = *(v0 + 144);
      v60 = *(v0 + 48);
      v46 = 3;
      goto LABEL_29;
    }

    if (v63 == 1)
    {
      v35 = *(v0 + 128);
      v36 = *(v0 + 104);
      v38 = *(v0 + 72);
      v37 = *(v0 + 80);
      sub_21CACA770(*(v0 + 64) + ((*(v0 + 240) + 32) & ~*(v0 + 240)), v35, type metadata accessor for PMAccount);
      sub_21CACA770(v35 + *(v36 + 24), v37, type metadata accessor for PMAccount.Storage);
      v39 = swift_getEnumCaseMultiPayload();
      v40 = v39;
      v31 = *(v0 + 128);
      v32 = *(v0 + 80);
      if (v40 == 1)
      {
LABEL_18:
        sub_21C719840(v32, type metadata accessor for PMAccount.Storage);
        sub_21C719840(v31, type metadata accessor for PMAccount);
        v1 = 1;
        goto LABEL_2;
      }

      v41 = *v32;
      v42 = [*v32 credentialTypes];

      sub_21C719840(v31, type metadata accessor for PMAccount);
      v1 = 1;
      if (v42 == 9)
      {
        v43 = swift_task_alloc();
        *(v0 + 224) = v43;
        *v43 = v0;
        v43[1] = sub_21CABB9C8;
        v44 = *(v0 + 144);
        v45 = *(v0 + 48);
        v46 = 9;
LABEL_29:

        return sub_21CAB8E98(v46, v44, 0);
      }

      goto LABEL_2;
    }
  }

  v47 = *(v0 + 152);

  v48 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 244) = 1;

  sub_21CB81DC4();
  v49 = *(v48 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v49)
  {
    v50 = *(v48 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion + 8);
    v49(0, 255);
  }

  v52 = *(v0 + 136);
  v51 = *(v0 + 144);
  v54 = *(v0 + 120);
  v53 = *(v0 + 128);
  v56 = *(v0 + 88);
  v55 = *(v0 + 96);
  v57 = *(v0 + 80);
  *(*(v0 + 48) + *(v0 + 176)) = 0;
  sub_21C6EC92C();

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_21CABB9C8()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21CACA848, v4, v3);
}

uint64_t sub_21CABBAE8()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21CABBC08, v4, v3);
}

uint64_t sub_21CABBC08()
{
  v1 = *(v0 + 208);
LABEL_2:
  v63 = v1;
  while (1)
  {
    v2 = *(v0 + 56);
    sub_21CACA770(*(v0 + 144), *(v0 + 120), type metadata accessor for PMAccount);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = sub_21CB81DA4();
    v5 = v4;
    v6 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_21CA4F1B8(0, v6[2] + 1, 1, v6);
      *v5 = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_21CA4F1B8(v8 > 1, v9 + 1, 1, v6);
      *v5 = v6;
    }

    v10 = *(v0 + 192);
    v11 = *(v0 + 240);
    v12 = *(v0 + 184);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v15 = *(v0 + 200) + 1;
    v6[2] = v9 + 1;
    sub_21CAC9E84(v14, v6 + ((v11 + 32) & ~v11) + v10 * v9, type metadata accessor for PMAccount);
    v3(v0 + 16, 0);

    sub_21C719840(v13, type metadata accessor for PMAccount);
    if (v15 == v12)
    {
      break;
    }

    v16 = *(v0 + 192);
    v17 = *(v0 + 200) + 1;
    *(v0 + 200) = v17;
    *(v0 + 208) = v63;
    v18 = *(v0 + 144);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 72);
    sub_21CACA770(*(v0 + 64) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + v16 * v17, v18, type metadata accessor for PMAccount);
    sub_21CACA770(v18 + *(v19 + 24), v20, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 96);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C719840(v23, type metadata accessor for PMAccount.Storage);
      goto LABEL_27;
    }

    v24 = *v23;
    v25 = [*v23 credentialTypes];

    if ((v25 - 8) >= 2)
    {
      if (v25 == 4)
      {
        v1 = *(v0 + 184);
        if (v1 != 1)
        {
          goto LABEL_2;
        }

        v26 = *(v0 + 136);
        v27 = *(v0 + 104);
        v28 = *(v0 + 88);
        v29 = *(v0 + 72);
        sub_21CACA770(*(v0 + 64) + ((*(v0 + 240) + 32) & ~*(v0 + 240)), v26, type metadata accessor for PMAccount);
        sub_21CACA770(v26 + *(v27 + 24), v28, type metadata accessor for PMAccount.Storage);
        v30 = swift_getEnumCaseMultiPayload();
        v31 = *(v0 + 136);
        v32 = *(v0 + 88);
        if (v30 == 1)
        {
          goto LABEL_18;
        }

        v33 = *v32;
        v34 = [*v32 credentialTypes];

        sub_21C719840(v31, type metadata accessor for PMAccount);
        v1 = 1;
        if (v34 != 4)
        {
          goto LABEL_2;
        }

        v61 = swift_task_alloc();
        *(v0 + 216) = v61;
        *v61 = v0;
        v62 = sub_21CABB224;
        goto LABEL_28;
      }

LABEL_27:
      v61 = swift_task_alloc();
      *(v0 + 232) = v61;
      *v61 = v0;
      v62 = sub_21CABBAE8;
LABEL_28:
      v61[1] = v62;
      v44 = *(v0 + 144);
      v60 = *(v0 + 48);
      v46 = 3;
      goto LABEL_29;
    }

    if (v63 == 1)
    {
      v35 = *(v0 + 128);
      v36 = *(v0 + 104);
      v38 = *(v0 + 72);
      v37 = *(v0 + 80);
      sub_21CACA770(*(v0 + 64) + ((*(v0 + 240) + 32) & ~*(v0 + 240)), v35, type metadata accessor for PMAccount);
      sub_21CACA770(v35 + *(v36 + 24), v37, type metadata accessor for PMAccount.Storage);
      v39 = swift_getEnumCaseMultiPayload();
      v40 = v39;
      v31 = *(v0 + 128);
      v32 = *(v0 + 80);
      if (v40 == 1)
      {
LABEL_18:
        sub_21C719840(v32, type metadata accessor for PMAccount.Storage);
        sub_21C719840(v31, type metadata accessor for PMAccount);
        v1 = 1;
        goto LABEL_2;
      }

      v41 = *v32;
      v42 = [*v32 credentialTypes];

      sub_21C719840(v31, type metadata accessor for PMAccount);
      v1 = 1;
      if (v42 == 9)
      {
        v43 = swift_task_alloc();
        *(v0 + 224) = v43;
        *v43 = v0;
        v43[1] = sub_21CABB9C8;
        v44 = *(v0 + 144);
        v45 = *(v0 + 48);
        v46 = 9;
LABEL_29:

        return sub_21CAB8E98(v46, v44, 0);
      }

      goto LABEL_2;
    }
  }

  v47 = *(v0 + 152);

  v48 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 244) = 1;

  sub_21CB81DC4();
  v49 = *(v48 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v49)
  {
    v50 = *(v48 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion + 8);
    v49(0, 255);
  }

  v52 = *(v0 + 136);
  v51 = *(v0 + 144);
  v54 = *(v0 + 120);
  v53 = *(v0 + 128);
  v56 = *(v0 + 88);
  v55 = *(v0 + 96);
  v57 = *(v0 + 80);
  *(*(v0 + 48) + *(v0 + 176)) = 0;
  sub_21C6EC92C();

  v58 = *(v0 + 8);

  return v58();
}

void sub_21CABC28C(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v33 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v32 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (&v32 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  v23 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21CACA770(a1 + v23, v15, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAC9E84(v15, v6, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v6[*(v3 + 72)], v19, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719840(v6, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v24 = *v15;
    sub_21CB85B94();
  }

  sub_21C716934(v19, v22, &unk_27CDF20B0, &unk_21CBA0090);
  v25 = sub_21CB85C44();
  v26 = (*(*(v25 - 8) + 48))(v22, 1, v25);
  sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CACA770(a1 + v23, v12, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719840(v12, type metadata accessor for PMAccount.Storage);
LABEL_8:
    sub_21CABC658(a1);
    return;
  }

  v27 = *v12;
  if (v26 == 1)
  {
LABEL_7:

    goto LABEL_8;
  }

  v28 = a1 + v23;
  v29 = v33;
  sub_21CACA770(v28, v33, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719840(v29, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v30 = *v29;
    v31 = [v30 isCurrentUserOriginalContributor];

    if (v31)
    {
      goto LABEL_7;
    }
  }

  [*(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore) unshareSignInWithAppleSavedAccount_];
}

void sub_21CABC658(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v36 - v8;
  v10 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [objc_opt_self() defaultStore];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 aa_primaryAppleAccount];

    if (v16)
    {
      v17 = [v16 aa_altDSID];

      if (v17)
      {
        sub_21CACA770(a1 + *(v2 + 24), v13, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          sub_21C719840(v13, type metadata accessor for PMAccount.Storage);
        }

        else
        {
          v18 = *v13;
          v19 = [*v13 signInWithAppleAccount];
          if (v19)
          {
            v20 = v19;
            v36[0] = [objc_allocWithZone(MEMORY[0x277CF02E0]) init];
            v21 = [objc_allocWithZone(MEMORY[0x277CF02E8]) initWithAltDSID_];

            [v21 setSignInWithAppleAccount_];
            v22 = sub_21CB858E4();
            (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
            sub_21CACA770(a1, v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccount);
            sub_21CB858B4();
            v23 = v3;
            v36[0] = v36[0];
            v24 = v21;
            v25 = v20;
            v26 = v36[1];

            v27 = v18;
            v28 = sub_21CB858A4();
            v29 = (*(v23 + 80) + 72) & ~*(v23 + 80);
            v30 = swift_allocObject();
            v31 = MEMORY[0x277D85700];
            *(v30 + 16) = v28;
            *(v30 + 24) = v31;
            v32 = v36[0];
            *(v30 + 32) = v36[0];
            *(v30 + 40) = v24;
            *(v30 + 48) = v25;
            *(v30 + 56) = v26;
            *(v30 + 64) = v27;
            sub_21CAC9E84(v5, v30 + v29, type metadata accessor for PMAccount);
            sub_21C98B308(0, 0, v9, &unk_21CBC5768, v30);

LABEL_13:
            return;
          }
        }
      }

      if (qword_27CDEA478 != -1)
      {
        swift_once();
      }

      v33 = sub_21CB81C84();
      __swift_project_value_buffer(v33, qword_27CE186F8);
      v27 = sub_21CB81C64();
      v34 = sub_21CB85AF4();
      if (os_log_type_enabled(v27, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_21C6E5000, v27, v34, "Unable to revoke Sign in with Apple account due to missing altDSID or account", v35, 2u);
        MEMORY[0x21CF16D90](v35, -1, -1);
      }

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21CABCAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a8;
  v8[31] = v13;
  v8[28] = a6;
  v8[29] = a7;
  v8[26] = a4;
  v8[27] = a5;
  sub_21CB858B4();
  v8[32] = sub_21CB858A4();
  v10 = sub_21CB85874();
  v8[33] = v10;
  v8[34] = v9;

  return MEMORY[0x2822009F8](sub_21CABCBA4, v10, v9);
}

uint64_t sub_21CABCBA4()
{
  v2 = v0[26];
  v1 = v0[27];
  v0[2] = v0;
  v0[3] = sub_21CABCCC4;
  v3 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4468, &qword_21CBBA910);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21CAB18DC;
  v0[21] = &block_descriptor_107;
  v0[22] = v3;
  [v2 revokeAcccountWithContext:v1 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CABCCC4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 280) = v3;
  v4 = *(v1 + 272);
  v5 = *(v1 + 264);
  if (v3)
  {
    v6 = sub_21CABD35C;
  }

  else
  {
    v6 = sub_21CABCDF4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CABCDF4()
{
  v19 = v0;
  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_21CB81C84();
  v0[36] = __swift_project_value_buffer(v2, qword_27CE186F8);
  v3 = v1;
  v4 = sub_21CB81C64();
  v5 = sub_21CB85AE4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = [v6 localizedAppName];
    v10 = sub_21CB855C4();
    v12 = v11;

    v13 = sub_21C98E004(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_21C6E5000, v4, v5, "Successfully revoked Sign in with Apple account for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x21CF16D90](v8, -1, -1);
    MEMORY[0x21CF16D90](v7, -1, -1);
  }

  v14 = v0[30];
  v15 = *(v0[29] + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v0[37] = v15;
  v0[10] = v0;
  v0[11] = sub_21CABD078;
  v16 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21CAB1570;
  v0[21] = &block_descriptor_110;
  v0[22] = v16;
  [v15 removeCredentialTypes:4 forSavedAccount:v14 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_21CABD078()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CABD180, v2, v1);
}

uint64_t sub_21CABD180()
{
  v1 = v0[37];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[29];

  v5 = *(v4 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v6 = v0[18];
  v7 = v3[1];
  v0[18] = *v3;
  v0[19] = v7;
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 18;
  v9 = sub_21C862E50(sub_21C96C50C, v8, v6);
  LOBYTE(v3) = v10;

  if (v3)
  {
    v11 = v0[36];
    v12 = sub_21CB81C64();
    v13 = sub_21CB85AF4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21C6E5000, v12, v13, "Failed to find account to delete in accountsState.accounts", v14, 2u);
      MEMORY[0x21CF16D90](v14, -1, -1);
    }
  }

  else
  {
    v15 = v0[29];
    swift_beginAccess();
    v16 = sub_21CACA8AC(v9);
    swift_endAccess();

    sub_21CAB51FC();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_21CABD35C()
{
  v1 = v0[35];
  v2 = v0[32];

  swift_willThrow();
  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v3 = v0[35];
  v4 = sub_21CB81C84();
  __swift_project_value_buffer(v4, qword_27CE186F8);
  v5 = v3;
  v6 = sub_21CB81C64();
  v7 = sub_21CB85AF4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_21C6E5000, v6, v7, "Revoking Sign in with Apple account failed with error: %{public}@", v10, 0xCu);
    sub_21C6EA794(v11, &unk_27CDF76B0, &qword_21CBA2BE0);
    MEMORY[0x21CF16D90](v11, -1, -1);
    MEMORY[0x21CF16D90](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_21CABD54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = type metadata accessor for PMBulkOperationProgress();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  sub_21C71DD5C(a2);
  v22 = sub_21C94C1A0(2, a1, a5, v18);
  v23 = sub_21CB858E4();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_21CB858B4();

  v24 = sub_21CB858A4();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v10;
  v25[5] = v22;
  v25[6] = a1;
  sub_21C98B308(0, 0, v17, a7, v25);

  return v22;
}

uint64_t sub_21CABD708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = type metadata accessor for PMAccount.Storage(0);
  v6[26] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v9 = type metadata accessor for PMAccount(0);
  v6[28] = v9;
  v10 = *(v9 - 8);
  v6[29] = v10;
  v11 = *(v10 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = sub_21CB858B4();
  v6[34] = sub_21CB858A4();
  v13 = sub_21CB85874();
  v6[35] = v13;
  v6[36] = v12;

  return MEMORY[0x2822009F8](sub_21CABD84C, v13, v12);
}

uint64_t sub_21CABD84C()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 176) = MEMORY[0x277D84F90];
  v2 = *(v0 + 200);
  *(*(v0 + 184) + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) = 1;
  v3 = *(v2 + 16);
  *(v0 + 296) = v3;
  if (v3)
  {
    v4 = *(v0 + 232);
    v5 = *(v0 + 200);
    *(v0 + 304) = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore;
    v6 = *(v4 + 80);
    *(v0 + 384) = v6;
    v7 = *(v4 + 72);
    *(v0 + 320) = 0;
    *(v0 + 328) = v1;
    *(v0 + 312) = v7;
    v8 = *(v0 + 264);
    sub_21CACA770(v5 + ((v6 + 32) & ~v6), *(v0 + 256), type metadata accessor for PMAccount);
    *(v0 + 336) = sub_21CB858A4();
    v10 = sub_21CB85874();
    *(v0 + 344) = v10;
    *(v0 + 352) = v9;

    return MEMORY[0x2822009F8](sub_21CABD9F0, v10, v9);
  }

  else
  {
    v11 = *(v0 + 272);

    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    v14 = *(v0 + 240);
    v15 = *(v0 + 216);
    sub_21CAC35C8(*(v0 + 184), (v0 + 176), *(v0 + 192));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_21CABD9F0()
{
  v1 = v0[26];
  sub_21CACA770(v0[32] + *(v0[28] + 24), v0[27], type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[42];
    v3 = v0[27];

    sub_21C719840(v3, type metadata accessor for PMAccount.Storage);
    sub_21CAC9FBC();
    v4 = swift_allocError();
    swift_willThrow();
    v0[47] = v4;
    v5 = v0[35];
    v6 = v0[36];

    return MEMORY[0x2822009F8](sub_21CABDDDC, v5, v6);
  }

  else
  {
    v7 = v0[38];
    v8 = v0[27];
    v9 = v0[23];
    v10 = *v8;
    v0[45] = *v8;
    v11 = *(v9 + v7);
    v0[46] = v11;
    v0[2] = v0;
    v0[7] = v0 + 388;
    v0[3] = sub_21CABDC0C;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21C7A1808;
    v0[13] = &block_descriptor_100;
    v0[14] = v12;
    [v11 _recoverRecentlyDeletedSavedAccount_completionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_21CABDC0C()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CABDD14, v2, v1);
}

uint64_t sub_21CABDD14()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 336);

  v3 = *(v0 + 388);

  v4 = *(v0 + 360);
  if (v3)
  {

    v5 = *(v0 + 280);
    v6 = *(v0 + 288);
    v7 = sub_21CABE17C;
  }

  else
  {
    sub_21CAC9FBC();
    v8 = swift_allocError();
    swift_willThrow();

    *(v0 + 376) = v8;
    v5 = *(v0 + 280);
    v6 = *(v0 + 288);
    v7 = sub_21CABDDDC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21CABDDDC()
{
  v1 = *(v0 + 328);
  sub_21CACA770(*(v0 + 256), *(v0 + 248), type metadata accessor for PMAccount);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 328);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, *(v0 + 328));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CA4F1B8(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 312);
  v7 = *(v0 + 248);
  v8 = (*(v0 + 384) + 32) & ~*(v0 + 384);

  v3[2] = v5 + 1;
  sub_21CAC9E84(v7, v3 + v8 + v6 * v5, type metadata accessor for PMAccount);
  *(v0 + 176) = v3;
  v9 = *(v0 + 192);
  sub_21CACA770(*(v0 + 256), *(v0 + 240), type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = sub_21CB81DA4();
  v11 = v10;
  v12 = *v10;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v12;
  if ((v13 & 1) == 0)
  {
    v12 = sub_21CA4F1B8(0, v12[2] + 1, 1, v12);
    *v11 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_21CA4F1B8(v14 > 1, v15 + 1, 1, v12);
    *v11 = v12;
  }

  v16 = *(v0 + 312);
  v17 = *(v0 + 384);
  v18 = *(v0 + 296);
  v19 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 320) + 1;
  v12[2] = v15 + 1;
  sub_21CAC9E84(v20, v12 + ((v17 + 32) & ~v17) + v16 * v15, type metadata accessor for PMAccount);
  v34(v0 + 144, 0);

  sub_21C719840(v19, type metadata accessor for PMAccount);
  if (v21 == v18)
  {
    v22 = *(v0 + 272);

    v24 = *(v0 + 248);
    v23 = *(v0 + 256);
    v25 = *(v0 + 240);
    v26 = *(v0 + 216);
    sub_21CAC35C8(*(v0 + 184), (v0 + 176), *(v0 + 192));

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 312);
    v30 = *(v0 + 320) + 1;
    *(v0 + 320) = v30;
    *(v0 + 328) = v3;
    v31 = *(v0 + 264);
    sub_21CACA770(*(v0 + 200) + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + v29 * v30, *(v0 + 256), type metadata accessor for PMAccount);
    *(v0 + 336) = sub_21CB858A4();
    v33 = sub_21CB85874();
    *(v0 + 344) = v33;
    *(v0 + 352) = v32;

    return MEMORY[0x2822009F8](sub_21CABD9F0, v33, v32);
  }
}

uint64_t sub_21CABE17C()
{
  v27 = *(v0 + 328);
  v1 = *(v0 + 192);
  sub_21CACA770(*(v0 + 256), *(v0 + 240), type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = sub_21CB81DA4();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_21CA4F1B8(0, v4[2] + 1, 1, v4);
    *v3 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_21CA4F1B8(v6 > 1, v7 + 1, 1, v4);
    *v3 = v4;
  }

  v8 = *(v0 + 312);
  v9 = *(v0 + 384);
  v10 = *(v0 + 296);
  v11 = *(v0 + 256);
  v12 = *(v0 + 240);
  v13 = *(v0 + 320) + 1;
  v4[2] = v7 + 1;
  sub_21CAC9E84(v12, v4 + ((v9 + 32) & ~v9) + v8 * v7, type metadata accessor for PMAccount);
  v26(v0 + 144, 0);

  sub_21C719840(v11, type metadata accessor for PMAccount);
  if (v13 == v10)
  {
    v14 = *(v0 + 272);

    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v0 + 240);
    v18 = *(v0 + 216);
    sub_21CAC35C8(*(v0 + 184), (v0 + 176), *(v0 + 192));

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 312);
    v22 = *(v0 + 320) + 1;
    *(v0 + 320) = v22;
    *(v0 + 328) = v27;
    v23 = *(v0 + 264);
    sub_21CACA770(*(v0 + 200) + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + v21 * v22, *(v0 + 256), type metadata accessor for PMAccount);
    *(v0 + 336) = sub_21CB858A4();
    v25 = sub_21CB85874();
    *(v0 + 344) = v25;
    *(v0 + 352) = v24;

    return MEMORY[0x2822009F8](sub_21CABD9F0, v25, v24);
  }
}

uint64_t sub_21CABE494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  v7 = type metadata accessor for PMAccount.MockData(0);
  v6[31] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v9 = type metadata accessor for PMAccount.Storage(0);
  v6[34] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  v6[39] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v13 = sub_21CB85C44();
  v6[41] = v13;
  v14 = *(v13 - 8);
  v6[42] = v14;
  v15 = *(v14 + 64) + 15;
  v6[43] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8) + 64) + 15;
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v6[48] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v6[49] = swift_task_alloc();
  v19 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v6[50] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v6[51] = swift_task_alloc();
  v21 = *(*(type metadata accessor for PMAccount.CombinedUniqueID(0) - 8) + 64) + 15;
  v6[52] = swift_task_alloc();
  v22 = type metadata accessor for PMAccount.UniqueID(0);
  v6[53] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  v6[56] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v6[57] = swift_task_alloc();
  v26 = type metadata accessor for PMAccount(0);
  v6[58] = v26;
  v27 = *(v26 - 8);
  v6[59] = v27;
  v28 = *(v27 + 64) + 15;
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = sub_21CB858B4();
  v6[66] = sub_21CB858A4();
  v30 = sub_21CB85874();
  v6[67] = v30;
  v6[68] = v29;

  return MEMORY[0x2822009F8](sub_21CABE858, v30, v29);
}

uint64_t sub_21CABE858()
{
  v3 = MEMORY[0x277D84F90];
  *(v0 + 208) = MEMORY[0x277D84F90];
  v4 = v0 + 208;
  v5 = *(v0 + 240);
  *(*(v0 + 224) + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) = 1;
  v6 = *(v5 + 16);
  *(v0 + 552) = v6;
  if (!v6)
  {
    v111 = *(v0 + 528);

    v112 = *(v0 + 504);
    v113 = *(v0 + 512);
    v115 = *(v0 + 488);
    v114 = *(v0 + 496);
    v116 = *(v0 + 480);
    v117 = *(v0 + 456);
    v119 = *(v0 + 432);
    v118 = *(v0 + 440);
    v134 = *(v0 + 416);
    v135 = *(v0 + 408);
    v136 = *(v0 + 392);
    v137 = *(v0 + 376);
    v139 = *(v0 + 368);
    v141 = *(v0 + 360);
    v143 = *(v0 + 352);
    v145 = *(v0 + 344);
    v147 = *(v0 + 320);
    v148 = *(v0 + 304);
    v149 = *(v0 + 296);
    v151 = *(v0 + 288);
    v153 = *(v0 + 280);
    v155 = *(v0 + 264);
    v157 = *(v0 + 256);
    sub_21CAC35C8(*(v0 + 224), (v0 + 208), *(v0 + 232));

    v120 = *(v0 + 8);

    return v120();
  }

  v7 = *(v0 + 512);
  v8 = *(v0 + 472);
  v9 = *(v0 + 240);
  *(v0 + 560) = *(*(v0 + 224) + 16);
  v10 = *(v8 + 80);
  *(v0 + 664) = v10;
  *(v0 + 568) = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore;
  *(v0 + 576) = *(v8 + 72);
  *(v0 + 592) = v3;
  *(v0 + 584) = 0;
  sub_21CACA770(v9 + ((v10 + 32) & ~v10), v7, type metadata accessor for PMAccount);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_21CB81DB4();

  v12 = *(v0 + 216);
  v156 = *(v12 + 16);
  if (!v156)
  {
LABEL_84:

    goto LABEL_85;
  }

  v13 = 0;
  v14 = *(v0 + 512);
  v154 = v12 + ((*(v0 + 664) + 32) & ~*(v0 + 664));
  v16 = *v14;
  v15 = v14[1];
  v150 = *(v0 + 216);
  v152 = v15;
  while (v13 < *(v12 + 16))
  {
    v4 = *(v0 + 504);
    sub_21CACA770(v154 + *(v0 + 576) * v13, v4, type metadata accessor for PMAccount);
    v21 = *v4 == v16 && *(v4 + 8) == v15;
    if (!v21 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_7;
    }

    v2 = *(v0 + 512);
    v4 = *(v0 + 456);
    v22 = *(v0 + 424);
    v23 = *(*(v0 + 464) + 20);
    v1 = *(*(v0 + 448) + 48);
    KeyPath = type metadata accessor for PMAccount.UniqueID;
    sub_21CACA770(*(v0 + 504) + v23, v4, type metadata accessor for PMAccount.UniqueID);
    sub_21CACA770(&v2[v23], v4 + v1, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = *(v0 + 456);
    v26 = *(v0 + 424);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CACA770(v25, *(v0 + 432), type metadata accessor for PMAccount.UniqueID);
      v27 = swift_getEnumCaseMultiPayload();
      v28 = *(v0 + 432);
      if (v27 != 1)
      {
        v17 = type metadata accessor for PMAccount.SIWAUniqueID;
        goto LABEL_5;
      }

      v29 = *(v0 + 408);
      sub_21CAC9E84(v4 + v1, v29, type metadata accessor for PMAccount.SIWAUniqueID);
      v30 = v28[1];
      v31 = v29[1];
      if (v30)
      {
        if (!v31 || (*v28 != *v29 || v30 != v31) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      else if (v31)
      {
        goto LABEL_77;
      }

      v45 = *(v0 + 432);
      v1 = *(v0 + 408);
      if (v45[2] != *(v1 + 16) || v45[3] != *(v1 + 24))
      {
        if ((sub_21CB86344() & 1) == 0)
        {
          goto LABEL_77;
        }

        v45 = *(v0 + 432);
        v1 = *(v0 + 408);
      }

      v46 = v45[5];
      v47 = *(v1 + 40);
      if (v46)
      {
        if (!v47)
        {
          goto LABEL_77;
        }

        if (v45[4] != *(v1 + 32) || v46 != v47)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_77;
          }

          v48 = *(v0 + 432);
          v1 = *(v0 + 408);
        }
      }

      else if (v47)
      {
        goto LABEL_77;
      }

      v71 = *(*(v0 + 400) + 28);
      sub_21CB85B74();
      sub_21C6EADA4(&qword_27CDEB3C0, MEMORY[0x277D49930]);
      sub_21CB857F4();
      sub_21CB857F4();
      if (*(v0 + 176) == *(v0 + 192) && *(v0 + 184) == *(v0 + 200))
      {
        v72 = *(v0 + 200);
      }

      else
      {
        v73 = *(v0 + 184);
        v74 = *(v0 + 200);
        v75 = sub_21CB86344();

        if ((v75 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v76 = *(v0 + 432);
      v77 = *(v0 + 400);
      v1 = *(v0 + 408);
      v78 = *(v77 + 32);
      v79 = (v76 + v78);
      v80 = *(v76 + v78 + 8);
      v81 = (v1 + v78);
      v82 = v81[1];
      if (v80)
      {
        if (!v82)
        {
          goto LABEL_77;
        }

        if (*v79 != *v81 || v80 != v82)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_77;
          }

          v76 = *(v0 + 432);
          v77 = *(v0 + 400);
          v1 = *(v0 + 408);
        }
      }

      else if (v82)
      {
        goto LABEL_77;
      }

      v87 = *(v0 + 392);
      v88 = *(v0 + 336);
      v146 = *(v0 + 328);
      v89 = *(v77 + 36);
      v90 = *(*(v0 + 384) + 48);
      sub_21C6EDBAC(v76 + v89, v87, &unk_27CDF20B0, &unk_21CBA0090);
      v2 = v90;
      sub_21C6EDBAC(v1 + v89, &v90[v87], &unk_27CDF20B0, &unk_21CBA0090);
      v1 = *(v88 + 48);
      if ((v1)(v87, 1, v146) == 1)
      {
        if ((v1)(&v90[v87], 1, *(v0 + 328)) != 1)
        {
          goto LABEL_76;
        }

        sub_21C6EA794(*(v0 + 392), &unk_27CDF20B0, &unk_21CBA0090);
      }

      else
      {
        v91 = *(v0 + 328);
        sub_21C6EDBAC(*(v0 + 392), *(v0 + 376), &unk_27CDF20B0, &unk_21CBA0090);
        if ((v1)(&v2[v87], 1, v91) == 1)
        {
          (*(*(v0 + 336) + 8))(*(v0 + 376), *(v0 + 328));
LABEL_76:
          sub_21C6EA794(*(v0 + 392), &qword_27CDEAC40, &qword_21CBA1A40);
LABEL_77:
          v4 = *(v0 + 456);
          v92 = *(v0 + 432);
          KeyPath = type metadata accessor for PMAccount.SIWAUniqueID;
          sub_21C719840(*(v0 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21C719840(v92, type metadata accessor for PMAccount.SIWAUniqueID);
          v44 = type metadata accessor for PMAccount.UniqueID;
          v42 = v4;
LABEL_78:
          sub_21C719840(v42, v44);
LABEL_79:
          v15 = v152;
          goto LABEL_7;
        }

        v146 = *(v0 + 392);
        v96 = *(v0 + 376);
        v97 = *(v0 + 336);
        v1 = *(v0 + 344);
        v98 = *(v0 + 328);
        (*(v97 + 32))(v1, &v2[v87], v98);
        sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978]);
        v2 = v96;
        v99 = sub_21CB85574();
        v100 = *(v97 + 8);
        v100(v1, v98);
        v100(v96, v98);
        sub_21C6EA794(v146, &unk_27CDF20B0, &unk_21CBA0090);
        if ((v99 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v101 = *(v0 + 432);
      sub_21C719840(*(v0 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
      sub_21C719840(v101, type metadata accessor for PMAccount.SIWAUniqueID);
    }

    else
    {
      sub_21CACA770(v25, *(v0 + 440), type metadata accessor for PMAccount.UniqueID);
      v32 = swift_getEnumCaseMultiPayload();
      v28 = *(v0 + 440);
      if (v32 == 1)
      {
        v17 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_5:
        sub_21C719840(v28, v17);
        v15 = v152;
        v18 = *(v0 + 456);
        v19 = &qword_27CDEB3C8;
        v20 = &unk_21CBB0010;
        goto LABEL_6;
      }

      KeyPath = *(v0 + 416);
      sub_21CAC9E84(v4 + v1, KeyPath, type metadata accessor for PMAccount.CombinedUniqueID);
      v4 = sub_21C7D1A58(v28, KeyPath);
      v1 = type metadata accessor for PMAccount.CombinedUniqueID;
      sub_21C719840(KeyPath, type metadata accessor for PMAccount.CombinedUniqueID);
      sub_21C719840(v28, type metadata accessor for PMAccount.CombinedUniqueID);
      if ((v4 & 1) == 0)
      {
        v42 = *(v0 + 456);
        v43 = type metadata accessor for PMAccount.UniqueID;
        goto LABEL_30;
      }
    }

    v2 = *(v0 + 504);
    v33 = *(v0 + 512);
    v34 = *(v0 + 464);
    v35 = *(v0 + 312);
    v4 = *(v0 + 320);
    v36 = *(v0 + 272);
    sub_21C719840(*(v0 + 456), type metadata accessor for PMAccount.UniqueID);
    v37 = *(v34 + 24);
    v1 = *(v35 + 48);
    sub_21CACA770(&v2[v37], v4, type metadata accessor for PMAccount.Storage);
    sub_21CACA770(v33 + v37, v4 + v1, type metadata accessor for PMAccount.Storage);
    v38 = swift_getEnumCaseMultiPayload();
    v39 = *(v0 + 320);
    KeyPath = *(v0 + 272);
    if (v38 == 1)
    {
      sub_21CACA770(v39, *(v0 + 296), type metadata accessor for PMAccount.Storage);
      v40 = swift_getEnumCaseMultiPayload();
      v41 = *(v0 + 296);
      if (v40 != 1)
      {
        sub_21C719840(*(v0 + 296), type metadata accessor for PMAccount.MockData);
LABEL_45:
        v12 = v150;
        v15 = v152;
        v18 = *(v0 + 320);
        v19 = &unk_27CDF7680;
        v20 = &qword_21CBB4E30;
LABEL_6:
        sub_21C6EA794(v18, v19, v20);
        goto LABEL_7;
      }

      KeyPath = *(v0 + 264);
      sub_21CAC9E84(v4 + v1, KeyPath, type metadata accessor for PMAccount.MockData);
      v4 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v41, KeyPath);
      v1 = type metadata accessor for PMAccount.MockData;
      sub_21C719840(KeyPath, type metadata accessor for PMAccount.MockData);
      sub_21C719840(v41, type metadata accessor for PMAccount.MockData);
      v12 = v150;
      if ((v4 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v49 = *(v0 + 304);
      sub_21CACA770(v39, v49, type metadata accessor for PMAccount.Storage);
      v50 = *v49;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        goto LABEL_45;
      }

      KeyPath = *(v4 + v1);
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v4 = sub_21CB85DD4();

      v12 = v150;
      if ((v4 & 1) == 0)
      {
LABEL_27:
        v42 = *(v0 + 320);
        v43 = type metadata accessor for PMAccount.Storage;
LABEL_30:
        v44 = v43;
        goto LABEL_78;
      }
    }

    v51 = *(v0 + 504);
    v52 = *(v0 + 512);
    v53 = *(v0 + 464);
    sub_21C719840(*(v0 + 320), type metadata accessor for PMAccount.Storage);
    v54 = *(v53 + 28);
    v4 = *(v51 + v54);
    v55 = *(v51 + v54 + 8);
    v56 = *(v51 + v54 + 16);
    v57 = *(v51 + v54 + 24);
    v58 = v52 + v54;
    KeyPath = *v58;
    v59 = *(v58 + 8);
    v1 = *(v58 + 16);
    v2 = *(v58 + 24);
    v144 = v59;
    if (!v55)
    {
      v83 = 0;
      v146 = v56;
      v142 = v57;
      v84 = v57;
      v85 = *(v58 + 8);
      sub_21C7D33AC(v4, 0, v56, v84);
      if (!v85)
      {
        goto LABEL_99;
      }

      sub_21C7D33AC(KeyPath, v85, v1, v2);
      v86 = v146;
      v57 = v142;
LABEL_72:
      sub_21C7D33F0(v4, v83, v86, v57);
      v67 = KeyPath;
      v68 = v144;
      v69 = v1;
      v70 = v2;
LABEL_73:
      sub_21C7D33F0(v67, v68, v69, v70);
      goto LABEL_79;
    }

    if (!v59)
    {
      v83 = v55;
      v146 = v56;
      sub_21C7D33AC(v4, v55, v56, v57);
      sub_21C7D33AC(KeyPath, 0, v1, v2);
      sub_21C7D33AC(v4, v83, v146, v57);

      v86 = v146;
      goto LABEL_72;
    }

    v140 = *(v58 + 24);
    v142 = *v58;
    if (v4 != KeyPath || v55 != v59) && (v60 = v55, v61 = v56, v62 = *(v58 + 8), v63 = sub_21CB86344(), v59 = v62, v55 = v60, v56 = v61, (v63 & 1) == 0) || ((v1 ^ v56))
    {
      v64 = v55;
      v146 = v56;
      v65 = v59;
      sub_21C7D33AC(v4, v55, v56, v57);
      KeyPath = v142;
      v66 = v65;
      v2 = v140;
      sub_21C7D33AC(v142, v66, v1, v140);
      sub_21C7D33AC(v4, v64, v146, v57);
      sub_21C7D33F0(v142, v144, v1, v140);

      v67 = v4;
      v68 = v64;
      v69 = v146;
      v70 = v57;
      goto LABEL_73;
    }

    v93 = v55;
    KeyPath = v56;
    v94 = v59;
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v138 = v4;
    sub_21C7D33AC(v4, v93, KeyPath, v57);
    v95 = v94;
    v2 = v140;
    sub_21C7D33AC(v142, v95, v1, v140);
    sub_21C7D33AC(v4, v93, KeyPath, v57);
    v4 = sub_21CB85DD4();
    sub_21C7D33F0(v142, v144, v1, v140);

    sub_21C7D33F0(v138, v93, KeyPath, v57);
    v15 = v152;
    if (v4)
    {

      goto LABEL_100;
    }

LABEL_7:
    sub_21C719840(*(v0 + 504), type metadata accessor for PMAccount);
    if (v156 == ++v13)
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_99:
  sub_21C7D33AC(KeyPath, 0, v1, v2);

  sub_21C7D33F0(v4, 0, v146, v142);
LABEL_100:
  sub_21C719840(*(v0 + 504), type metadata accessor for PMAccount);
LABEL_85:
  v102 = *(v0 + 512);
  v103 = *(v0 + 288);
  v104 = *(v0 + 272);
  v105 = *(*(v0 + 464) + 24);
  *(v0 + 668) = v105;
  sub_21CACA770(v102 + v105, v103, type metadata accessor for PMAccount.Storage);
  v106 = swift_getEnumCaseMultiPayload();
  v107 = *(v0 + 360);
  v108 = *(v0 + 288);
  if (v106 == 1)
  {
    v110 = *(v0 + 248);
    v109 = *(v0 + 256);
    sub_21CAC9E84(v108, v109, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v109 + *(v110 + 72), v107, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719840(v109, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v122 = *v108;
    v123 = *(v0 + 360);
    sub_21CB85B94();
  }

  v124 = *(v0 + 368);
  v125 = *(v0 + 328);
  v126 = *(v0 + 336);
  sub_21C716934(*(v0 + 360), v124, &unk_27CDF20B0, &unk_21CBA0090);
  LODWORD(v125) = (*(v126 + 48))(v124, 1, v125);
  sub_21C6EA794(v124, &unk_27CDF20B0, &unk_21CBA0090);
  if (v125 == 1)
  {
    v127 = *(v0 + 520);
    *(v0 + 616) = sub_21CB858A4();
    v129 = sub_21CB85874();
    *(v0 + 624) = v129;
    *(v0 + 632) = v128;

    return MEMORY[0x2822009F8](sub_21CABFAD8, v129, v128);
  }

  else
  {
    (*(*(v0 + 336) + 56))(*(v0 + 352), 1, 1, *(v0 + 328));
    v130 = swift_task_alloc();
    *(v0 + 600) = v130;
    *v130 = v0;
    v130[1] = sub_21CABF8E4;
    v131 = *(v0 + 512);
    v132 = *(v0 + 352);
    v133 = *(v0 + 224);

    return sub_21CAC4230(v131, v132, 0);
  }
}

uint64_t sub_21CABF8E4()
{
  v2 = *v1;
  v3 = (*v1)[75];
  v4 = *v1;
  (*v1)[76] = v0;

  sub_21C6EA794(v2[44], &unk_27CDF20B0, &unk_21CBA0090);
  v5 = v2[68];
  v6 = v2[67];
  if (v0)
  {
    v7 = sub_21CAC2334;
  }

  else
  {
    v7 = sub_21CABFA48;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21CABFA48()
{
  v1 = v0[65];
  v0[77] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v0[78] = v3;
  v0[79] = v2;

  return MEMORY[0x2822009F8](sub_21CABFAD8, v3, v2);
}

uint64_t sub_21CABFAD8()
{
  v1 = *(v0 + 272);
  sub_21CACA770(*(v0 + 512) + *(v0 + 668), *(v0 + 280), type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 616);
    v3 = *(v0 + 280);

    sub_21C719840(v3, type metadata accessor for PMAccount.Storage);
    sub_21CAC9FBC();
    v4 = swift_allocError();
    swift_willThrow();
    *(v0 + 656) = v4;
    v5 = *(v0 + 544);
    v6 = *(v0 + 536);

    return MEMORY[0x2822009F8](sub_21CABFECC, v6, v5);
  }

  else
  {
    v7 = *(v0 + 568);
    v8 = *(v0 + 280);
    v9 = *(v0 + 224);
    v10 = *v8;
    *(v0 + 640) = *v8;
    v11 = *(v9 + v7);
    *(v0 + 648) = v11;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 672;
    *(v0 + 24) = sub_21CABFCF4;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21C7A1808;
    *(v0 + 104) = &block_descriptor_89;
    *(v0 + 112) = v12;
    [v11 _recoverRecentlyDeletedSavedAccount_completionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21CABFCF4()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CABFDFC, v2, v1);
}

uint64_t sub_21CABFDFC()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 616);

  v3 = *(v0 + 672);

  v4 = *(v0 + 640);
  if (v3)
  {

    v5 = *(v0 + 544);
    v6 = *(v0 + 536);
    v7 = sub_21CAC1160;
  }

  else
  {
    sub_21CAC9FBC();
    v8 = swift_allocError();
    swift_willThrow();

    *(v0 + 656) = v8;
    v5 = *(v0 + 544);
    v6 = *(v0 + 536);
    v7 = sub_21CABFECC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21CABFECC()
{
  v1 = *(v0 + 592);
  sub_21CACA770(*(v0 + 512), *(v0 + 496), type metadata accessor for PMAccount);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 592);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, *(v0 + 592));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CA4F1B8(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 576);
  v7 = *(v0 + 496);
  v8 = (*(v0 + 664) + 32) & ~*(v0 + 664);

  v3[2] = v5 + 1;
  sub_21CAC9E84(v7, v3 + v8 + v6 * v5, type metadata accessor for PMAccount);
  *(v0 + 208) = v3;
  v9 = *(v0 + 232);
  sub_21CACA770(*(v0 + 512), *(v0 + 488), type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();
  v183 = sub_21CB81DA4();
  v11 = v10;
  v12 = *v10;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v12;
  if ((v13 & 1) == 0)
  {
    v12 = sub_21CA4F1B8(0, v12[2] + 1, 1, v12);
    *v11 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_21CA4F1B8(v14 > 1, v15 + 1, 1, v12);
    *v11 = v12;
  }

  v16 = *(v0 + 576);
  v17 = *(v0 + 664);
  v18 = *(v0 + 552);
  v19 = *(v0 + 512);
  v20 = *(v0 + 488);
  v21 = *(v0 + 584) + 1;
  v12[2] = v15 + 1;
  sub_21CAC9E84(v20, v12 + ((v17 + 32) & ~v17) + v16 * v15, type metadata accessor for PMAccount);
  v183();

  sub_21C719840(v19, type metadata accessor for PMAccount);
  if (v21 == v18)
  {
    v22 = *(v0 + 528);

    v23 = *(v0 + 504);
    v24 = *(v0 + 512);
    v26 = *(v0 + 488);
    v25 = *(v0 + 496);
    v27 = *(v0 + 480);
    v28 = *(v0 + 456);
    v30 = *(v0 + 432);
    v29 = *(v0 + 440);
    v161 = *(v0 + 416);
    v162 = *(v0 + 408);
    v163 = *(v0 + 392);
    v164 = *(v0 + 376);
    v165 = *(v0 + 368);
    v166 = *(v0 + 360);
    v168 = *(v0 + 352);
    v171 = *(v0 + 344);
    v172 = *(v0 + 320);
    v176 = *(v0 + 304);
    v177 = *(v0 + 296);
    v179 = *(v0 + 288);
    v181 = *(v0 + 280);
    v184 = *(v0 + 264);
    v186 = *(v0 + 256);
    sub_21CAC35C8(*(v0 + 224), (v0 + 208), *(v0 + 232));

    v31 = *(v0 + 8);

    return v31();
  }

  v33 = *(v0 + 584) + 1;
  *(v0 + 592) = v3;
  *(v0 + 584) = v33;
  v34 = *(v0 + 560);
  sub_21CACA770(*(v0 + 240) + ((*(v0 + 664) + 32) & ~*(v0 + 664)) + *(v0 + 576) * v33, *(v0 + 512), type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v35 = *(v0 + 216);
  v187 = *(v35 + 16);
  v178 = v35;
  if (!v187)
  {
LABEL_95:

    goto LABEL_96;
  }

  v36 = 0;
  v185 = v35 + ((*(v0 + 664) + 32) & ~*(v0 + 664));
  v37 = *(v0 + 512);
  v38 = &unk_27CDF20B0;
  v39 = *v37;
  v40 = v37[1];
  v180 = v40;
  v182 = *v37;
  while (v36 < *(v35 + 16))
  {
    v34 = *(v0 + 504);
    sub_21CACA770(v185 + *(v0 + 576) * v36, v34, type metadata accessor for PMAccount);
    v41 = *v34 == v39 && *(v34 + 8) == v40;
    if (!v41 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_17;
    }

    v12 = v38;
    v42 = *(v0 + 512);
    v34 = *(v0 + 456);
    v43 = *(v0 + 424);
    v44 = *(*(v0 + 464) + 20);
    v19 = *(*(v0 + 448) + 48);
    sub_21CACA770(*(v0 + 504) + v44, v34, type metadata accessor for PMAccount.UniqueID);
    sub_21CACA770(v42 + v44, v34 + v19, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v46 = *(v0 + 456);
    v47 = *(v0 + 424);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CACA770(v46, *(v0 + 432), type metadata accessor for PMAccount.UniqueID);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = *(v0 + 432);
      if (v48 != 1)
      {
        v54 = type metadata accessor for PMAccount.SIWAUniqueID;
        goto LABEL_35;
      }

      v50 = *(v0 + 408);
      sub_21CAC9E84(v34 + v19, v50, type metadata accessor for PMAccount.SIWAUniqueID);
      v51 = v49[1];
      v52 = v50[1];
      v38 = v12;
      if (v51)
      {
        if (!v52 || (*v49 != *v50 || v51 != v52) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else if (v52)
      {
        goto LABEL_89;
      }

      v71 = *(v0 + 432);
      v19 = *(v0 + 408);
      if (v71[2] != *(v19 + 16) || v71[3] != *(v19 + 24))
      {
        if ((sub_21CB86344() & 1) == 0)
        {
          goto LABEL_89;
        }

        v71 = *(v0 + 432);
        v19 = *(v0 + 408);
      }

      v72 = v71[5];
      v73 = *(v19 + 40);
      if (v72)
      {
        if (!v73)
        {
          goto LABEL_89;
        }

        if (v71[4] != *(v19 + 32) || v72 != v73)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_89;
          }

          v74 = *(v0 + 432);
          v19 = *(v0 + 408);
        }
      }

      else if (v73)
      {
        goto LABEL_89;
      }

      v102 = *(*(v0 + 400) + 28);
      sub_21CB85B74();
      sub_21C6EADA4(&qword_27CDEB3C0, MEMORY[0x277D49930]);
      sub_21CB857F4();
      sub_21CB857F4();
      if (*(v0 + 176) == *(v0 + 192) && *(v0 + 184) == *(v0 + 200))
      {
        v103 = *(v0 + 200);
      }

      else
      {
        v104 = *(v0 + 184);
        v105 = *(v0 + 200);
        v106 = sub_21CB86344();

        if ((v106 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v107 = *(v0 + 432);
      v108 = *(v0 + 400);
      v109 = *(v0 + 408);
      v110 = *(v108 + 32);
      v111 = (v107 + v110);
      v112 = *(v107 + v110 + 8);
      v113 = (v109 + v110);
      v114 = v113[1];
      if (v112)
      {
        if (!v114)
        {
          goto LABEL_89;
        }

        if (*v111 != *v113 || v112 != v114)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_89;
          }

          v107 = *(v0 + 432);
          v108 = *(v0 + 400);
          v109 = *(v0 + 408);
        }
      }

      else if (v114)
      {
        goto LABEL_89;
      }

      v119 = *(v0 + 392);
      v120 = *(v0 + 336);
      v175 = *(v0 + 328);
      v121 = *(v108 + 36);
      v122 = *(*(v0 + 384) + 48);
      v123 = v109;
      sub_21C6EDBAC(v107 + v121, v119, v12, &unk_21CBA0090);
      v124 = v123 + v121;
      v125 = v119;
      sub_21C6EDBAC(v124, v119 + v122, v12, &unk_21CBA0090);
      v19 = *(v120 + 48);
      if ((v19)(v125, 1, v175) == 1)
      {
        if ((v19)(v125 + v122, 1, *(v0 + 328)) != 1)
        {
          goto LABEL_88;
        }

        sub_21C6EA794(*(v0 + 392), v12, &unk_21CBA0090);
      }

      else
      {
        v126 = *(v0 + 328);
        sub_21C6EDBAC(*(v0 + 392), *(v0 + 376), v12, &unk_21CBA0090);
        if ((v19)(v125 + v122, 1, v126) == 1)
        {
          (*(*(v0 + 336) + 8))(*(v0 + 376), *(v0 + 328));
LABEL_88:
          sub_21C6EA794(*(v0 + 392), &qword_27CDEAC40, &qword_21CBA1A40);
LABEL_89:
          v34 = *(v0 + 456);
          v127 = *(v0 + 432);
          sub_21C719840(*(v0 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21C719840(v127, type metadata accessor for PMAccount.SIWAUniqueID);
          v101 = type metadata accessor for PMAccount.UniqueID;
          v100 = v34;
          goto LABEL_90;
        }

        v133 = *(v0 + 376);
        v135 = *(v0 + 336);
        v134 = *(v0 + 344);
        v136 = *(v0 + 328);
        v174 = v134;
        v175 = *(v0 + 392);
        (*(v135 + 32))();
        sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978]);
        v137 = sub_21CB85574();
        v138 = *(v135 + 8);
        v19 = v135 + 8;
        v138(v174, v136);
        v138(v133, v136);
        sub_21C6EA794(v175, v12, &unk_21CBA0090);
        if ((v137 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v139 = *(v0 + 432);
      sub_21C719840(*(v0 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
      sub_21C719840(v139, type metadata accessor for PMAccount.SIWAUniqueID);
    }

    else
    {
      sub_21CACA770(v46, *(v0 + 440), type metadata accessor for PMAccount.UniqueID);
      v53 = swift_getEnumCaseMultiPayload();
      v49 = *(v0 + 440);
      if (v53 == 1)
      {
        v54 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_35:
        sub_21C719840(v49, v54);
        v38 = v12;
        v40 = v180;
        v39 = v182;
        v55 = *(v0 + 456);
        v56 = &qword_27CDEB3C8;
        v57 = &unk_21CBB0010;
        goto LABEL_36;
      }

      v58 = *(v0 + 416);
      sub_21CAC9E84(v34 + v19, v58, type metadata accessor for PMAccount.CombinedUniqueID);
      v34 = sub_21C7D1A58(v49, v58);
      v19 = type metadata accessor for PMAccount.CombinedUniqueID;
      sub_21C719840(v58, type metadata accessor for PMAccount.CombinedUniqueID);
      sub_21C719840(v49, type metadata accessor for PMAccount.CombinedUniqueID);
      if ((v34 & 1) == 0)
      {
        sub_21C719840(*(v0 + 456), type metadata accessor for PMAccount.UniqueID);
        v38 = v12;
LABEL_16:
        v40 = v180;
        v39 = v182;
        goto LABEL_17;
      }
    }

    v60 = *(v0 + 504);
    v59 = *(v0 + 512);
    v61 = *(v0 + 464);
    v62 = *(v0 + 312);
    v34 = *(v0 + 320);
    v63 = *(v0 + 272);
    sub_21C719840(*(v0 + 456), type metadata accessor for PMAccount.UniqueID);
    v64 = *(v61 + 24);
    v19 = *(v62 + 48);
    sub_21CACA770(v60 + v64, v34, type metadata accessor for PMAccount.Storage);
    sub_21CACA770(v59 + v64, v34 + v19, type metadata accessor for PMAccount.Storage);
    v65 = swift_getEnumCaseMultiPayload();
    v66 = *(v0 + 320);
    v67 = *(v0 + 272);
    if (v65 == 1)
    {
      sub_21CACA770(v66, *(v0 + 296), type metadata accessor for PMAccount.Storage);
      v68 = swift_getEnumCaseMultiPayload();
      v69 = *(v0 + 296);
      if (v68 != 1)
      {
        sub_21C719840(*(v0 + 296), type metadata accessor for PMAccount.MockData);
LABEL_55:
        v35 = v178;
        v40 = v180;
        v38 = v12;
        v39 = v182;
        v55 = *(v0 + 320);
        v56 = &unk_27CDF7680;
        v57 = &qword_21CBB4E30;
LABEL_36:
        sub_21C6EA794(v55, v56, v57);
        goto LABEL_17;
      }

      v70 = *(v0 + 264);
      sub_21CAC9E84(v34 + v19, v70, type metadata accessor for PMAccount.MockData);
      v34 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v69, v70);
      v19 = type metadata accessor for PMAccount.MockData;
      sub_21C719840(v70, type metadata accessor for PMAccount.MockData);
      sub_21C719840(v69, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v75 = *(v0 + 304);
      sub_21CACA770(v66, v75, type metadata accessor for PMAccount.Storage);
      v76 = *v75;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        goto LABEL_55;
      }

      v77 = *(v34 + v19);
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v34 = sub_21CB85DD4();
    }

    v35 = v178;
    v38 = v12;
    if ((v34 & 1) == 0)
    {
      v100 = *(v0 + 320);
      v101 = type metadata accessor for PMAccount.Storage;
LABEL_90:
      sub_21C719840(v100, v101);
      goto LABEL_16;
    }

    v78 = *(v0 + 504);
    v79 = *(v0 + 512);
    v80 = *(v0 + 464);
    sub_21C719840(*(v0 + 320), type metadata accessor for PMAccount.Storage);
    v81 = *(v80 + 28);
    v34 = *(v78 + v81);
    v82 = *(v78 + v81 + 8);
    v83 = *(v78 + v81 + 16);
    v84 = *(v78 + v81 + 24);
    v85 = (v79 + v81);
    v40 = *v85;
    v86 = v85[1];
    v19 = v85[2];
    v12 = v85[3];
    v173 = v86;
    if (!v82)
    {
      v115 = 0;
      v175 = v83;
      v170 = v84;
      v116 = v85[1];
      sub_21C7D33AC(v34, 0, v83, v84);
      if (!v116)
      {
        goto LABEL_107;
      }

      sub_21C7D33AC(v40, v116, v19, v12);
      v117 = v175;
      v118 = v170;
LABEL_84:
      sub_21C7D33F0(v34, v115, v117, v118);
      v96 = v40;
      v97 = v173;
      v98 = v19;
      v99 = v12;
LABEL_85:
      sub_21C7D33F0(v96, v97, v98, v99);
      goto LABEL_16;
    }

    if (!v86)
    {
      v115 = v82;
      v175 = v83;
      v118 = v84;
      sub_21C7D33AC(v34, v82, v83, v84);
      sub_21C7D33AC(v40, 0, v19, v12);
      sub_21C7D33AC(v34, v115, v175, v118);

      v117 = v175;
      goto LABEL_84;
    }

    v169 = v85[3];
    v170 = *v85;
    if (v34 != v40 || v82 != v86)
    {
      v87 = v82;
      v88 = v83;
      v89 = v84;
      v90 = v85[1];
      v91 = sub_21CB86344();
      v86 = v90;
      v82 = v87;
      v84 = v89;
      v83 = v88;
      if ((v91 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    if ((v19 ^ v83))
    {
LABEL_64:
      v92 = v82;
      v175 = v83;
      v93 = v84;
      v94 = v86;
      sub_21C7D33AC(v34, v82, v83, v84);
      v95 = v94;
      v12 = v169;
      sub_21C7D33AC(v170, v95, v19, v169);
      sub_21C7D33AC(v34, v92, v175, v93);
      sub_21C7D33F0(v170, v173, v19, v169);

      v96 = v34;
      v97 = v92;
      v98 = v175;
      v99 = v93;
      goto LABEL_85;
    }

    v128 = v82;
    v129 = v83;
    v130 = v84;
    v131 = v86;
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v167 = v34;
    sub_21C7D33AC(v34, v128, v129, v130);
    v132 = v131;
    v12 = v169;
    sub_21C7D33AC(v170, v132, v19, v169);
    sub_21C7D33AC(v34, v128, v129, v130);
    v34 = sub_21CB85DD4();
    sub_21C7D33F0(v170, v173, v19, v169);

    sub_21C7D33F0(v167, v128, v129, v130);
    v40 = v180;
    v39 = v182;
    if (v34)
    {

      goto LABEL_108;
    }

LABEL_17:
    sub_21C719840(*(v0 + 504), type metadata accessor for PMAccount);
    if (v187 == ++v36)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
LABEL_107:
  sub_21C7D33AC(v40, 0, v19, v12);

  sub_21C7D33F0(v34, 0, v175, v170);
LABEL_108:
  sub_21C719840(*(v0 + 504), type metadata accessor for PMAccount);
LABEL_96:
  v140 = *(v0 + 512);
  v141 = *(v0 + 288);
  v142 = *(v0 + 272);
  v143 = *(*(v0 + 464) + 24);
  *(v0 + 668) = v143;
  sub_21CACA770(v140 + v143, v141, type metadata accessor for PMAccount.Storage);
  v144 = swift_getEnumCaseMultiPayload();
  v145 = *(v0 + 360);
  v146 = *(v0 + 288);
  if (v144 == 1)
  {
    v148 = *(v0 + 248);
    v147 = *(v0 + 256);
    sub_21CAC9E84(v146, v147, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v147 + *(v148 + 72), v145, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719840(v147, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v149 = *v146;
    v150 = *(v0 + 360);
    sub_21CB85B94();
  }

  v151 = *(v0 + 368);
  v152 = *(v0 + 328);
  v153 = *(v0 + 336);
  sub_21C716934(*(v0 + 360), v151, &unk_27CDF20B0, &unk_21CBA0090);
  LODWORD(v152) = (*(v153 + 48))(v151, 1, v152);
  sub_21C6EA794(v151, &unk_27CDF20B0, &unk_21CBA0090);
  if (v152 == 1)
  {
    v154 = *(v0 + 520);
    *(v0 + 616) = sub_21CB858A4();
    v156 = sub_21CB85874();
    *(v0 + 624) = v156;
    *(v0 + 632) = v155;

    return MEMORY[0x2822009F8](sub_21CABFAD8, v156, v155);
  }

  else
  {
    (*(*(v0 + 336) + 56))(*(v0 + 352), 1, 1, *(v0 + 328));
    v157 = swift_task_alloc();
    *(v0 + 600) = v157;
    *v157 = v0;
    v157[1] = sub_21CABF8E4;
    v158 = *(v0 + 512);
    v159 = *(v0 + 352);
    v160 = *(v0 + 224);

    return sub_21CAC4230(v158, v159, 0);
  }
}

uint64_t sub_21CAC1160()
{
  v179 = *(v0 + 592);
  v1 = *(v0 + 232);
  sub_21CACA770(*(v0 + 512), *(v0 + 488), type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();
  v176 = sub_21CB81DA4();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_21CA4F1B8(0, v4[2] + 1, 1, v4);
    *v3 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_21CA4F1B8(v6 > 1, v7 + 1, 1, v4);
    *v3 = v4;
  }

  v8 = *(v0 + 576);
  v9 = *(v0 + 664);
  v10 = *(v0 + 552);
  v11 = *(v0 + 512);
  v12 = *(v0 + 488);
  v13 = *(v0 + 584) + 1;
  v4[2] = v7 + 1;
  sub_21CAC9E84(v12, v4 + ((v9 + 32) & ~v9) + v8 * v7, type metadata accessor for PMAccount);
  v176(v0 + 144, 0);

  sub_21C719840(v11, type metadata accessor for PMAccount);
  if (v13 == v10)
  {
    v14 = *(v0 + 528);

    v15 = *(v0 + 504);
    v16 = *(v0 + 512);
    v18 = *(v0 + 488);
    v17 = *(v0 + 496);
    v19 = *(v0 + 480);
    v20 = *(v0 + 456);
    v22 = *(v0 + 432);
    v21 = *(v0 + 440);
    v23 = *(v0 + 416);
    v154 = *(v0 + 408);
    v155 = *(v0 + 392);
    v156 = *(v0 + 376);
    v157 = *(v0 + 368);
    v158 = *(v0 + 360);
    v159 = *(v0 + 352);
    v161 = *(v0 + 344);
    v164 = *(v0 + 320);
    v165 = *(v0 + 304);
    v169 = *(v0 + 296);
    v170 = *(v0 + 288);
    v172 = *(v0 + 280);
    v174 = *(v0 + 264);
    v177 = *(v0 + 256);
    sub_21CAC35C8(*(v0 + 224), (v0 + 208), *(v0 + 232));

    v24 = *(v0 + 8);

    return v24();
  }

  v26 = *(v0 + 584) + 1;
  *(v0 + 592) = v179;
  *(v0 + 584) = v26;
  v27 = *(v0 + 560);
  sub_21CACA770(*(v0 + 240) + ((*(v0 + 664) + 32) & ~*(v0 + 664)) + *(v0 + 576) * v26, *(v0 + 512), type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v28 = *(v0 + 216);
  v180 = *(v28 + 16);
  v171 = v28;
  if (!v180)
  {
LABEL_91:

    goto LABEL_92;
  }

  v29 = 0;
  v178 = v28 + ((*(v0 + 664) + 32) & ~*(v0 + 664));
  v30 = *(v0 + 512);
  v31 = &unk_27CDF20B0;
  v32 = *v30;
  v33 = v30[1];
  v173 = v33;
  v175 = *v30;
  while (v29 < *(v28 + 16))
  {
    v27 = *(v0 + 504);
    sub_21CACA770(v178 + *(v0 + 576) * v29, v27, type metadata accessor for PMAccount);
    v34 = *v27 == v32 && *(v27 + 8) == v33;
    if (!v34 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_13;
    }

    v4 = v31;
    v35 = *(v0 + 512);
    v27 = *(v0 + 456);
    v36 = *(v0 + 424);
    v37 = *(*(v0 + 464) + 20);
    v11 = *(*(v0 + 448) + 48);
    sub_21CACA770(*(v0 + 504) + v37, v27, type metadata accessor for PMAccount.UniqueID);
    sub_21CACA770(v35 + v37, v27 + v11, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v39 = *(v0 + 456);
    v40 = *(v0 + 424);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CACA770(v39, *(v0 + 432), type metadata accessor for PMAccount.UniqueID);
      v41 = swift_getEnumCaseMultiPayload();
      v42 = *(v0 + 432);
      if (v41 != 1)
      {
        v47 = type metadata accessor for PMAccount.SIWAUniqueID;
        goto LABEL_31;
      }

      v43 = *(v0 + 408);
      sub_21CAC9E84(v27 + v11, v43, type metadata accessor for PMAccount.SIWAUniqueID);
      v44 = v42[1];
      v45 = v43[1];
      v31 = v4;
      if (v44)
      {
        if (!v45 || (*v42 != *v43 || v44 != v45) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      else if (v45)
      {
        goto LABEL_85;
      }

      v64 = *(v0 + 432);
      v11 = *(v0 + 408);
      if (v64[2] != *(v11 + 16) || v64[3] != *(v11 + 24))
      {
        if ((sub_21CB86344() & 1) == 0)
        {
          goto LABEL_85;
        }

        v64 = *(v0 + 432);
        v11 = *(v0 + 408);
      }

      v65 = v64[5];
      v66 = *(v11 + 40);
      if (v65)
      {
        if (!v66)
        {
          goto LABEL_85;
        }

        if (v64[4] != *(v11 + 32) || v65 != v66)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_85;
          }

          v67 = *(v0 + 432);
          v11 = *(v0 + 408);
        }
      }

      else if (v66)
      {
        goto LABEL_85;
      }

      v95 = *(*(v0 + 400) + 28);
      sub_21CB85B74();
      sub_21C6EADA4(&qword_27CDEB3C0, MEMORY[0x277D49930]);
      sub_21CB857F4();
      sub_21CB857F4();
      if (*(v0 + 176) == *(v0 + 192) && *(v0 + 184) == *(v0 + 200))
      {
        v96 = *(v0 + 200);
      }

      else
      {
        v97 = *(v0 + 184);
        v98 = *(v0 + 200);
        v99 = sub_21CB86344();

        if ((v99 & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      v100 = *(v0 + 432);
      v101 = *(v0 + 400);
      v102 = *(v0 + 408);
      v103 = *(v101 + 32);
      v104 = (v100 + v103);
      v105 = *(v100 + v103 + 8);
      v106 = (v102 + v103);
      v107 = v106[1];
      if (v105)
      {
        if (!v107)
        {
          goto LABEL_85;
        }

        if (*v104 != *v106 || v105 != v107)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_85;
          }

          v100 = *(v0 + 432);
          v101 = *(v0 + 400);
          v102 = *(v0 + 408);
        }
      }

      else if (v107)
      {
        goto LABEL_85;
      }

      v112 = *(v0 + 392);
      v113 = *(v0 + 336);
      v168 = *(v0 + 328);
      v114 = *(v101 + 36);
      v115 = *(*(v0 + 384) + 48);
      v116 = v102;
      sub_21C6EDBAC(v100 + v114, v112, v4, &unk_21CBA0090);
      v117 = v116 + v114;
      v118 = v112;
      sub_21C6EDBAC(v117, v112 + v115, v4, &unk_21CBA0090);
      v11 = *(v113 + 48);
      if ((v11)(v118, 1, v168) == 1)
      {
        if ((v11)(v118 + v115, 1, *(v0 + 328)) != 1)
        {
          goto LABEL_84;
        }

        sub_21C6EA794(*(v0 + 392), v4, &unk_21CBA0090);
      }

      else
      {
        v119 = *(v0 + 328);
        sub_21C6EDBAC(*(v0 + 392), *(v0 + 376), v4, &unk_21CBA0090);
        if ((v11)(v118 + v115, 1, v119) == 1)
        {
          (*(*(v0 + 336) + 8))(*(v0 + 376), *(v0 + 328));
LABEL_84:
          sub_21C6EA794(*(v0 + 392), &qword_27CDEAC40, &qword_21CBA1A40);
LABEL_85:
          v27 = *(v0 + 456);
          v120 = *(v0 + 432);
          sub_21C719840(*(v0 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21C719840(v120, type metadata accessor for PMAccount.SIWAUniqueID);
          v94 = type metadata accessor for PMAccount.UniqueID;
          v93 = v27;
          goto LABEL_86;
        }

        v126 = *(v0 + 376);
        v128 = *(v0 + 336);
        v127 = *(v0 + 344);
        v129 = *(v0 + 328);
        v167 = v127;
        v168 = *(v0 + 392);
        (*(v128 + 32))();
        sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978]);
        v130 = sub_21CB85574();
        v131 = *(v128 + 8);
        v11 = v128 + 8;
        v131(v167, v129);
        v131(v126, v129);
        sub_21C6EA794(v168, v4, &unk_21CBA0090);
        if ((v130 & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      v132 = *(v0 + 432);
      sub_21C719840(*(v0 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
      sub_21C719840(v132, type metadata accessor for PMAccount.SIWAUniqueID);
    }

    else
    {
      sub_21CACA770(v39, *(v0 + 440), type metadata accessor for PMAccount.UniqueID);
      v46 = swift_getEnumCaseMultiPayload();
      v42 = *(v0 + 440);
      if (v46 == 1)
      {
        v47 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_31:
        sub_21C719840(v42, v47);
        v31 = v4;
        v33 = v173;
        v32 = v175;
        v48 = *(v0 + 456);
        v49 = &qword_27CDEB3C8;
        v50 = &unk_21CBB0010;
        goto LABEL_32;
      }

      v51 = *(v0 + 416);
      sub_21CAC9E84(v27 + v11, v51, type metadata accessor for PMAccount.CombinedUniqueID);
      v27 = sub_21C7D1A58(v42, v51);
      v11 = type metadata accessor for PMAccount.CombinedUniqueID;
      sub_21C719840(v51, type metadata accessor for PMAccount.CombinedUniqueID);
      sub_21C719840(v42, type metadata accessor for PMAccount.CombinedUniqueID);
      if ((v27 & 1) == 0)
      {
        sub_21C719840(*(v0 + 456), type metadata accessor for PMAccount.UniqueID);
        v31 = v4;
LABEL_12:
        v33 = v173;
        v32 = v175;
        goto LABEL_13;
      }
    }

    v53 = *(v0 + 504);
    v52 = *(v0 + 512);
    v54 = *(v0 + 464);
    v55 = *(v0 + 312);
    v27 = *(v0 + 320);
    v56 = *(v0 + 272);
    sub_21C719840(*(v0 + 456), type metadata accessor for PMAccount.UniqueID);
    v57 = *(v54 + 24);
    v11 = *(v55 + 48);
    sub_21CACA770(v53 + v57, v27, type metadata accessor for PMAccount.Storage);
    sub_21CACA770(v52 + v57, v27 + v11, type metadata accessor for PMAccount.Storage);
    v58 = swift_getEnumCaseMultiPayload();
    v59 = *(v0 + 320);
    v60 = *(v0 + 272);
    if (v58 == 1)
    {
      sub_21CACA770(v59, *(v0 + 296), type metadata accessor for PMAccount.Storage);
      v61 = swift_getEnumCaseMultiPayload();
      v62 = *(v0 + 296);
      if (v61 != 1)
      {
        sub_21C719840(*(v0 + 296), type metadata accessor for PMAccount.MockData);
LABEL_51:
        v28 = v171;
        v33 = v173;
        v31 = v4;
        v32 = v175;
        v48 = *(v0 + 320);
        v49 = &unk_27CDF7680;
        v50 = &qword_21CBB4E30;
LABEL_32:
        sub_21C6EA794(v48, v49, v50);
        goto LABEL_13;
      }

      v63 = *(v0 + 264);
      sub_21CAC9E84(v27 + v11, v63, type metadata accessor for PMAccount.MockData);
      v27 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v62, v63);
      v11 = type metadata accessor for PMAccount.MockData;
      sub_21C719840(v63, type metadata accessor for PMAccount.MockData);
      sub_21C719840(v62, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v68 = *(v0 + 304);
      sub_21CACA770(v59, v68, type metadata accessor for PMAccount.Storage);
      v69 = *v68;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        goto LABEL_51;
      }

      v70 = *(v27 + v11);
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v27 = sub_21CB85DD4();
    }

    v28 = v171;
    v31 = v4;
    if ((v27 & 1) == 0)
    {
      v93 = *(v0 + 320);
      v94 = type metadata accessor for PMAccount.Storage;
LABEL_86:
      sub_21C719840(v93, v94);
      goto LABEL_12;
    }

    v71 = *(v0 + 504);
    v72 = *(v0 + 512);
    v73 = *(v0 + 464);
    sub_21C719840(*(v0 + 320), type metadata accessor for PMAccount.Storage);
    v74 = *(v73 + 28);
    v27 = *(v71 + v74);
    v75 = *(v71 + v74 + 8);
    v76 = *(v71 + v74 + 16);
    v77 = *(v71 + v74 + 24);
    v78 = (v72 + v74);
    v33 = *v78;
    v79 = v78[1];
    v11 = v78[2];
    v4 = v78[3];
    v166 = v79;
    if (!v75)
    {
      v108 = 0;
      v168 = v76;
      v163 = v77;
      v109 = v78[1];
      sub_21C7D33AC(v27, 0, v76, v77);
      if (!v109)
      {
        goto LABEL_103;
      }

      sub_21C7D33AC(v33, v109, v11, v4);
      v110 = v168;
      v111 = v163;
LABEL_80:
      sub_21C7D33F0(v27, v108, v110, v111);
      v89 = v33;
      v90 = v166;
      v91 = v11;
      v92 = v4;
LABEL_81:
      sub_21C7D33F0(v89, v90, v91, v92);
      goto LABEL_12;
    }

    if (!v79)
    {
      v108 = v75;
      v168 = v76;
      v111 = v77;
      sub_21C7D33AC(v27, v75, v76, v77);
      sub_21C7D33AC(v33, 0, v11, v4);
      sub_21C7D33AC(v27, v108, v168, v111);

      v110 = v168;
      goto LABEL_80;
    }

    v162 = v78[3];
    v163 = *v78;
    if (v27 != v33 || v75 != v79)
    {
      v80 = v75;
      v81 = v76;
      v82 = v77;
      v83 = v78[1];
      v84 = sub_21CB86344();
      v79 = v83;
      v75 = v80;
      v77 = v82;
      v76 = v81;
      if ((v84 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    if ((v11 ^ v76))
    {
LABEL_60:
      v85 = v75;
      v168 = v76;
      v86 = v77;
      v87 = v79;
      sub_21C7D33AC(v27, v75, v76, v77);
      v88 = v87;
      v4 = v162;
      sub_21C7D33AC(v163, v88, v11, v162);
      sub_21C7D33AC(v27, v85, v168, v86);
      sub_21C7D33F0(v163, v166, v11, v162);

      v89 = v27;
      v90 = v85;
      v91 = v168;
      v92 = v86;
      goto LABEL_81;
    }

    v121 = v75;
    v122 = v76;
    v123 = v77;
    v124 = v79;
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v160 = v27;
    sub_21C7D33AC(v27, v121, v122, v123);
    v125 = v124;
    v4 = v162;
    sub_21C7D33AC(v163, v125, v11, v162);
    sub_21C7D33AC(v27, v121, v122, v123);
    v27 = sub_21CB85DD4();
    sub_21C7D33F0(v163, v166, v11, v162);

    sub_21C7D33F0(v160, v121, v122, v123);
    v33 = v173;
    v32 = v175;
    if (v27)
    {

      goto LABEL_104;
    }

LABEL_13:
    sub_21C719840(*(v0 + 504), type metadata accessor for PMAccount);
    if (v180 == ++v29)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_103:
  sub_21C7D33AC(v33, 0, v11, v4);

  sub_21C7D33F0(v27, 0, v168, v163);
LABEL_104:
  sub_21C719840(*(v0 + 504), type metadata accessor for PMAccount);
LABEL_92:
  v133 = *(v0 + 512);
  v134 = *(v0 + 288);
  v135 = *(v0 + 272);
  v136 = *(*(v0 + 464) + 24);
  *(v0 + 668) = v136;
  sub_21CACA770(v133 + v136, v134, type metadata accessor for PMAccount.Storage);
  v137 = swift_getEnumCaseMultiPayload();
  v138 = *(v0 + 360);
  v139 = *(v0 + 288);
  if (v137 == 1)
  {
    v141 = *(v0 + 248);
    v140 = *(v0 + 256);
    sub_21CAC9E84(v139, v140, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v140 + *(v141 + 72), v138, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719840(v140, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v142 = *v139;
    v143 = *(v0 + 360);
    sub_21CB85B94();
  }

  v144 = *(v0 + 368);
  v145 = *(v0 + 328);
  v146 = *(v0 + 336);
  sub_21C716934(*(v0 + 360), v144, &unk_27CDF20B0, &unk_21CBA0090);
  LODWORD(v145) = (*(v146 + 48))(v144, 1, v145);
  sub_21C6EA794(v144, &unk_27CDF20B0, &unk_21CBA0090);
  if (v145 == 1)
  {
    v147 = *(v0 + 520);
    *(v0 + 616) = sub_21CB858A4();
    v149 = sub_21CB85874();
    *(v0 + 624) = v149;
    *(v0 + 632) = v148;

    return MEMORY[0x2822009F8](sub_21CABFAD8, v149, v148);
  }

  else
  {
    (*(*(v0 + 336) + 56))(*(v0 + 352), 1, 1, *(v0 + 328));
    v150 = swift_task_alloc();
    *(v0 + 600) = v150;
    *v150 = v0;
    v150[1] = sub_21CABF8E4;
    v151 = *(v0 + 512);
    v152 = *(v0 + 352);
    v153 = *(v0 + 224);

    return sub_21CAC4230(v151, v152, 0);
  }
}

uint64_t sub_21CAC2334()
{
  v1 = *(v0 + 592);
  sub_21CACA770(*(v0 + 512), *(v0 + 480), type metadata accessor for PMAccount);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 592);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, *(v0 + 592));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CA4F1B8(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 576);
  v7 = *(v0 + 480);
  v8 = (*(v0 + 664) + 32) & ~*(v0 + 664);

  v3[2] = v5 + 1;
  sub_21CAC9E84(v7, v3 + v8 + v6 * v5, type metadata accessor for PMAccount);
  *(v0 + 208) = v3;
  v9 = *(v0 + 232);
  sub_21CACA770(*(v0 + 512), *(v0 + 488), type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();
  v183 = sub_21CB81DA4();
  v11 = v10;
  v12 = *v10;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v12;
  if ((v13 & 1) == 0)
  {
    v12 = sub_21CA4F1B8(0, v12[2] + 1, 1, v12);
    *v11 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_21CA4F1B8(v14 > 1, v15 + 1, 1, v12);
    *v11 = v12;
  }

  v16 = *(v0 + 576);
  v17 = *(v0 + 664);
  v18 = *(v0 + 552);
  v19 = *(v0 + 512);
  v20 = *(v0 + 488);
  v21 = *(v0 + 584) + 1;
  v12[2] = v15 + 1;
  sub_21CAC9E84(v20, v12 + ((v17 + 32) & ~v17) + v16 * v15, type metadata accessor for PMAccount);
  v183();

  sub_21C719840(v19, type metadata accessor for PMAccount);
  if (v21 == v18)
  {
    v22 = *(v0 + 528);

    v23 = *(v0 + 504);
    v24 = *(v0 + 512);
    v26 = *(v0 + 488);
    v25 = *(v0 + 496);
    v27 = *(v0 + 480);
    v28 = *(v0 + 456);
    v30 = *(v0 + 432);
    v29 = *(v0 + 440);
    v161 = *(v0 + 416);
    v162 = *(v0 + 408);
    v163 = *(v0 + 392);
    v164 = *(v0 + 376);
    v165 = *(v0 + 368);
    v166 = *(v0 + 360);
    v168 = *(v0 + 352);
    v171 = *(v0 + 344);
    v172 = *(v0 + 320);
    v176 = *(v0 + 304);
    v177 = *(v0 + 296);
    v179 = *(v0 + 288);
    v181 = *(v0 + 280);
    v184 = *(v0 + 264);
    v186 = *(v0 + 256);
    sub_21CAC35C8(*(v0 + 224), (v0 + 208), *(v0 + 232));

    v31 = *(v0 + 8);

    return v31();
  }

  v33 = *(v0 + 584) + 1;
  *(v0 + 592) = v3;
  *(v0 + 584) = v33;
  v34 = *(v0 + 560);
  sub_21CACA770(*(v0 + 240) + ((*(v0 + 664) + 32) & ~*(v0 + 664)) + *(v0 + 576) * v33, *(v0 + 512), type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v35 = *(v0 + 216);
  v187 = *(v35 + 16);
  v178 = v35;
  if (!v187)
  {
LABEL_95:

    goto LABEL_96;
  }

  v36 = 0;
  v185 = v35 + ((*(v0 + 664) + 32) & ~*(v0 + 664));
  v37 = *(v0 + 512);
  v38 = &unk_27CDF20B0;
  v39 = *v37;
  v40 = v37[1];
  v180 = v40;
  v182 = *v37;
  while (v36 < *(v35 + 16))
  {
    v34 = *(v0 + 504);
    sub_21CACA770(v185 + *(v0 + 576) * v36, v34, type metadata accessor for PMAccount);
    v41 = *v34 == v39 && *(v34 + 8) == v40;
    if (!v41 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_17;
    }

    v12 = v38;
    v42 = *(v0 + 512);
    v34 = *(v0 + 456);
    v43 = *(v0 + 424);
    v44 = *(*(v0 + 464) + 20);
    v19 = *(*(v0 + 448) + 48);
    sub_21CACA770(*(v0 + 504) + v44, v34, type metadata accessor for PMAccount.UniqueID);
    sub_21CACA770(v42 + v44, v34 + v19, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v46 = *(v0 + 456);
    v47 = *(v0 + 424);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CACA770(v46, *(v0 + 432), type metadata accessor for PMAccount.UniqueID);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = *(v0 + 432);
      if (v48 != 1)
      {
        v54 = type metadata accessor for PMAccount.SIWAUniqueID;
        goto LABEL_35;
      }

      v50 = *(v0 + 408);
      sub_21CAC9E84(v34 + v19, v50, type metadata accessor for PMAccount.SIWAUniqueID);
      v51 = v49[1];
      v52 = v50[1];
      v38 = v12;
      if (v51)
      {
        if (!v52 || (*v49 != *v50 || v51 != v52) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else if (v52)
      {
        goto LABEL_89;
      }

      v71 = *(v0 + 432);
      v19 = *(v0 + 408);
      if (v71[2] != *(v19 + 16) || v71[3] != *(v19 + 24))
      {
        if ((sub_21CB86344() & 1) == 0)
        {
          goto LABEL_89;
        }

        v71 = *(v0 + 432);
        v19 = *(v0 + 408);
      }

      v72 = v71[5];
      v73 = *(v19 + 40);
      if (v72)
      {
        if (!v73)
        {
          goto LABEL_89;
        }

        if (v71[4] != *(v19 + 32) || v72 != v73)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_89;
          }

          v74 = *(v0 + 432);
          v19 = *(v0 + 408);
        }
      }

      else if (v73)
      {
        goto LABEL_89;
      }

      v102 = *(*(v0 + 400) + 28);
      sub_21CB85B74();
      sub_21C6EADA4(&qword_27CDEB3C0, MEMORY[0x277D49930]);
      sub_21CB857F4();
      sub_21CB857F4();
      if (*(v0 + 176) == *(v0 + 192) && *(v0 + 184) == *(v0 + 200))
      {
        v103 = *(v0 + 200);
      }

      else
      {
        v104 = *(v0 + 184);
        v105 = *(v0 + 200);
        v106 = sub_21CB86344();

        if ((v106 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v107 = *(v0 + 432);
      v108 = *(v0 + 400);
      v109 = *(v0 + 408);
      v110 = *(v108 + 32);
      v111 = (v107 + v110);
      v112 = *(v107 + v110 + 8);
      v113 = (v109 + v110);
      v114 = v113[1];
      if (v112)
      {
        if (!v114)
        {
          goto LABEL_89;
        }

        if (*v111 != *v113 || v112 != v114)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_89;
          }

          v107 = *(v0 + 432);
          v108 = *(v0 + 400);
          v109 = *(v0 + 408);
        }
      }

      else if (v114)
      {
        goto LABEL_89;
      }

      v119 = *(v0 + 392);
      v120 = *(v0 + 336);
      v175 = *(v0 + 328);
      v121 = *(v108 + 36);
      v122 = *(*(v0 + 384) + 48);
      v123 = v109;
      sub_21C6EDBAC(v107 + v121, v119, v12, &unk_21CBA0090);
      v124 = v123 + v121;
      v125 = v119;
      sub_21C6EDBAC(v124, v119 + v122, v12, &unk_21CBA0090);
      v19 = *(v120 + 48);
      if ((v19)(v125, 1, v175) == 1)
      {
        if ((v19)(v125 + v122, 1, *(v0 + 328)) != 1)
        {
          goto LABEL_88;
        }

        sub_21C6EA794(*(v0 + 392), v12, &unk_21CBA0090);
      }

      else
      {
        v126 = *(v0 + 328);
        sub_21C6EDBAC(*(v0 + 392), *(v0 + 376), v12, &unk_21CBA0090);
        if ((v19)(v125 + v122, 1, v126) == 1)
        {
          (*(*(v0 + 336) + 8))(*(v0 + 376), *(v0 + 328));
LABEL_88:
          sub_21C6EA794(*(v0 + 392), &qword_27CDEAC40, &qword_21CBA1A40);
LABEL_89:
          v34 = *(v0 + 456);
          v127 = *(v0 + 432);
          sub_21C719840(*(v0 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21C719840(v127, type metadata accessor for PMAccount.SIWAUniqueID);
          v101 = type metadata accessor for PMAccount.UniqueID;
          v100 = v34;
          goto LABEL_90;
        }

        v133 = *(v0 + 376);
        v135 = *(v0 + 336);
        v134 = *(v0 + 344);
        v136 = *(v0 + 328);
        v174 = v134;
        v175 = *(v0 + 392);
        (*(v135 + 32))();
        sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978]);
        v137 = sub_21CB85574();
        v138 = *(v135 + 8);
        v19 = v135 + 8;
        v138(v174, v136);
        v138(v133, v136);
        sub_21C6EA794(v175, v12, &unk_21CBA0090);
        if ((v137 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v139 = *(v0 + 432);
      sub_21C719840(*(v0 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
      sub_21C719840(v139, type metadata accessor for PMAccount.SIWAUniqueID);
    }

    else
    {
      sub_21CACA770(v46, *(v0 + 440), type metadata accessor for PMAccount.UniqueID);
      v53 = swift_getEnumCaseMultiPayload();
      v49 = *(v0 + 440);
      if (v53 == 1)
      {
        v54 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_35:
        sub_21C719840(v49, v54);
        v38 = v12;
        v40 = v180;
        v39 = v182;
        v55 = *(v0 + 456);
        v56 = &qword_27CDEB3C8;
        v57 = &unk_21CBB0010;
        goto LABEL_36;
      }

      v58 = *(v0 + 416);
      sub_21CAC9E84(v34 + v19, v58, type metadata accessor for PMAccount.CombinedUniqueID);
      v34 = sub_21C7D1A58(v49, v58);
      v19 = type metadata accessor for PMAccount.CombinedUniqueID;
      sub_21C719840(v58, type metadata accessor for PMAccount.CombinedUniqueID);
      sub_21C719840(v49, type metadata accessor for PMAccount.CombinedUniqueID);
      if ((v34 & 1) == 0)
      {
        sub_21C719840(*(v0 + 456), type metadata accessor for PMAccount.UniqueID);
        v38 = v12;
LABEL_16:
        v40 = v180;
        v39 = v182;
        goto LABEL_17;
      }
    }

    v60 = *(v0 + 504);
    v59 = *(v0 + 512);
    v61 = *(v0 + 464);
    v62 = *(v0 + 312);
    v34 = *(v0 + 320);
    v63 = *(v0 + 272);
    sub_21C719840(*(v0 + 456), type metadata accessor for PMAccount.UniqueID);
    v64 = *(v61 + 24);
    v19 = *(v62 + 48);
    sub_21CACA770(v60 + v64, v34, type metadata accessor for PMAccount.Storage);
    sub_21CACA770(v59 + v64, v34 + v19, type metadata accessor for PMAccount.Storage);
    v65 = swift_getEnumCaseMultiPayload();
    v66 = *(v0 + 320);
    v67 = *(v0 + 272);
    if (v65 == 1)
    {
      sub_21CACA770(v66, *(v0 + 296), type metadata accessor for PMAccount.Storage);
      v68 = swift_getEnumCaseMultiPayload();
      v69 = *(v0 + 296);
      if (v68 != 1)
      {
        sub_21C719840(*(v0 + 296), type metadata accessor for PMAccount.MockData);
LABEL_55:
        v35 = v178;
        v40 = v180;
        v38 = v12;
        v39 = v182;
        v55 = *(v0 + 320);
        v56 = &unk_27CDF7680;
        v57 = &qword_21CBB4E30;
LABEL_36:
        sub_21C6EA794(v55, v56, v57);
        goto LABEL_17;
      }

      v70 = *(v0 + 264);
      sub_21CAC9E84(v34 + v19, v70, type metadata accessor for PMAccount.MockData);
      v34 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v69, v70);
      v19 = type metadata accessor for PMAccount.MockData;
      sub_21C719840(v70, type metadata accessor for PMAccount.MockData);
      sub_21C719840(v69, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v75 = *(v0 + 304);
      sub_21CACA770(v66, v75, type metadata accessor for PMAccount.Storage);
      v76 = *v75;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        goto LABEL_55;
      }

      v77 = *(v34 + v19);
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v34 = sub_21CB85DD4();
    }

    v35 = v178;
    v38 = v12;
    if ((v34 & 1) == 0)
    {
      v100 = *(v0 + 320);
      v101 = type metadata accessor for PMAccount.Storage;
LABEL_90:
      sub_21C719840(v100, v101);
      goto LABEL_16;
    }

    v78 = *(v0 + 504);
    v79 = *(v0 + 512);
    v80 = *(v0 + 464);
    sub_21C719840(*(v0 + 320), type metadata accessor for PMAccount.Storage);
    v81 = *(v80 + 28);
    v34 = *(v78 + v81);
    v82 = *(v78 + v81 + 8);
    v83 = *(v78 + v81 + 16);
    v84 = *(v78 + v81 + 24);
    v85 = (v79 + v81);
    v40 = *v85;
    v86 = v85[1];
    v19 = v85[2];
    v12 = v85[3];
    v173 = v86;
    if (!v82)
    {
      v115 = 0;
      v175 = v83;
      v170 = v84;
      v116 = v85[1];
      sub_21C7D33AC(v34, 0, v83, v84);
      if (!v116)
      {
        goto LABEL_107;
      }

      sub_21C7D33AC(v40, v116, v19, v12);
      v117 = v175;
      v118 = v170;
LABEL_84:
      sub_21C7D33F0(v34, v115, v117, v118);
      v96 = v40;
      v97 = v173;
      v98 = v19;
      v99 = v12;
LABEL_85:
      sub_21C7D33F0(v96, v97, v98, v99);
      goto LABEL_16;
    }

    if (!v86)
    {
      v115 = v82;
      v175 = v83;
      v118 = v84;
      sub_21C7D33AC(v34, v82, v83, v84);
      sub_21C7D33AC(v40, 0, v19, v12);
      sub_21C7D33AC(v34, v115, v175, v118);

      v117 = v175;
      goto LABEL_84;
    }

    v169 = v85[3];
    v170 = *v85;
    if (v34 != v40 || v82 != v86)
    {
      v87 = v82;
      v88 = v83;
      v89 = v84;
      v90 = v85[1];
      v91 = sub_21CB86344();
      v86 = v90;
      v82 = v87;
      v84 = v89;
      v83 = v88;
      if ((v91 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    if ((v19 ^ v83))
    {
LABEL_64:
      v92 = v82;
      v175 = v83;
      v93 = v84;
      v94 = v86;
      sub_21C7D33AC(v34, v82, v83, v84);
      v95 = v94;
      v12 = v169;
      sub_21C7D33AC(v170, v95, v19, v169);
      sub_21C7D33AC(v34, v92, v175, v93);
      sub_21C7D33F0(v170, v173, v19, v169);

      v96 = v34;
      v97 = v92;
      v98 = v175;
      v99 = v93;
      goto LABEL_85;
    }

    v128 = v82;
    v129 = v83;
    v130 = v84;
    v131 = v86;
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v167 = v34;
    sub_21C7D33AC(v34, v128, v129, v130);
    v132 = v131;
    v12 = v169;
    sub_21C7D33AC(v170, v132, v19, v169);
    sub_21C7D33AC(v34, v128, v129, v130);
    v34 = sub_21CB85DD4();
    sub_21C7D33F0(v170, v173, v19, v169);

    sub_21C7D33F0(v167, v128, v129, v130);
    v40 = v180;
    v39 = v182;
    if (v34)
    {

      goto LABEL_108;
    }

LABEL_17:
    sub_21C719840(*(v0 + 504), type metadata accessor for PMAccount);
    if (v187 == ++v36)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
LABEL_107:
  sub_21C7D33AC(v40, 0, v19, v12);

  sub_21C7D33F0(v34, 0, v175, v170);
LABEL_108:
  sub_21C719840(*(v0 + 504), type metadata accessor for PMAccount);
LABEL_96:
  v140 = *(v0 + 512);
  v141 = *(v0 + 288);
  v142 = *(v0 + 272);
  v143 = *(*(v0 + 464) + 24);
  *(v0 + 668) = v143;
  sub_21CACA770(v140 + v143, v141, type metadata accessor for PMAccount.Storage);
  v144 = swift_getEnumCaseMultiPayload();
  v145 = *(v0 + 360);
  v146 = *(v0 + 288);
  if (v144 == 1)
  {
    v148 = *(v0 + 248);
    v147 = *(v0 + 256);
    sub_21CAC9E84(v146, v147, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v147 + *(v148 + 72), v145, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719840(v147, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v149 = *v146;
    v150 = *(v0 + 360);
    sub_21CB85B94();
  }

  v151 = *(v0 + 368);
  v152 = *(v0 + 328);
  v153 = *(v0 + 336);
  sub_21C716934(*(v0 + 360), v151, &unk_27CDF20B0, &unk_21CBA0090);
  LODWORD(v152) = (*(v153 + 48))(v151, 1, v152);
  sub_21C6EA794(v151, &unk_27CDF20B0, &unk_21CBA0090);
  if (v152 == 1)
  {
    v154 = *(v0 + 520);
    *(v0 + 616) = sub_21CB858A4();
    v156 = sub_21CB85874();
    *(v0 + 624) = v156;
    *(v0 + 632) = v155;

    return MEMORY[0x2822009F8](sub_21CABFAD8, v156, v155);
  }

  else
  {
    (*(*(v0 + 336) + 56))(*(v0 + 352), 1, 1, *(v0 + 328));
    v157 = swift_task_alloc();
    *(v0 + 600) = v157;
    *v157 = v0;
    v157[1] = sub_21CABF8E4;
    v158 = *(v0 + 512);
    v159 = *(v0 + 352);
    v160 = *(v0 + 224);

    return sub_21CAC4230(v158, v159, 0);
  }
}