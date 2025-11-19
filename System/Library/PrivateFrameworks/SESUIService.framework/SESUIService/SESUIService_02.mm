uint64_t sub_262906D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2629070E0;

  return sub_2628F60F8(a1, v4, v5, v7, v6);
}

unint64_t sub_262906E24()
{
  result = qword_27FF2EEB0;
  if (!qword_27FF2EEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF2EEB0);
  }

  return result;
}

uint64_t sub_262906E70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_262906EC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_262906F00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_108Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_262906FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_262906944;

  return sub_2628F3670(a1, v4, v5, v7, v6);
}

uint64_t sub_262907078()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26290712C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26294C8A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2629071FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26294C8A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ESimView()
{
  result = qword_27FF2EEC8;
  if (!qword_27FF2EEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262907300()
{
  result = sub_26294C8A8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SEStorageManagementController();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2629073A0(uint64_t a1)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = a1;
  (*(v3 + 104))(v6, *MEMORY[0x277D48E08], v2);
  v7 = sub_26294C5E8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v28 = v7;
  v29 = v9;
  sub_2628DF230();
  v10 = sub_26294D648();
  v12 = v11;
  LOBYTE(v6) = v13;
  sub_26294D5B8();
  v14 = sub_26294D638();
  v16 = v15;
  v18 = v17;

  sub_2628DF758(v10, v12, v6 & 1);

  LODWORD(v28) = sub_26294D4C8();
  v19 = sub_26294D618();
  v21 = v20;
  LOBYTE(v6) = v22;
  v24 = v23;
  sub_2628DF758(v14, v16, v18 & 1);

  v28 = v19;
  v29 = v21;
  v30 = v6 & 1;
  v31 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF10, &qword_26294F5C8);
  sub_262907D54();
  return sub_26294DAA8();
}

uint64_t sub_262907608(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ESimView() + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBC8, &qword_26294ED00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF20, &qword_26294F5D0);
  sub_2628DFD0C(&qword_27FF2EF38, &qword_27FF2EBC8, &qword_26294ED00);
  sub_2628DFD0C(&qword_27FF2EF18, &qword_27FF2EF20, &qword_26294F5D0);
  sub_262907E7C();
  return sub_26294DA68();
}

uint64_t sub_262907784@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_26294C6E8();
  v8 = v7;
  v9 = sub_26294C4F8();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  *a1 = v6;
  a1[1] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF20, &qword_26294F5D0);
  sub_2628E1FD8(v5, a1 + v10[9]);
  *(a1 + v10[15]) = 1;
  *(a1 + v10[10]) = 1;
  v11 = (a1 + v10[11]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v10[12]) = 2;
  *(a1 + v10[13]) = 0;
  return sub_262907ED4(v5);
}

uint64_t sub_2629078BC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_26294D468();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EED8, &qword_26294F5A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEE0, &qword_26294F5A8);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEE8, &qword_26294F5B0);
  v16 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v18 = v24 - v17;
  *v18 = sub_26294D3C8();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v24[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEF0, &qword_26294F5B8) + 44);
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEF8, &qword_26294F5C0);
  sub_262907CBC();
  sub_26294D5E8();
  sub_26294D458();
  v19 = sub_2628DFD0C(&qword_27FF2EF28, &qword_27FF2EED8, &qword_26294F5A0);
  v20 = MEMORY[0x277CDE0D0];
  sub_26294D828();
  (*(v27 + 8))(v5, v2);
  (*(v7 + 8))(v10, v6);
  v31 = v6;
  v32 = v2;
  v33 = v19;
  v34 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v25;
  sub_26294D7A8();
  (*(v26 + 8))(v15, v21);
  v31 = sub_26294C868();
  v32 = v22;
  sub_2628DFD0C(&qword_27FF2EF30, &qword_27FF2EEE8, &qword_26294F5B0);
  sub_2628DF230();
  sub_26294D708();
  sub_262907E04(v18);
}

unint64_t sub_262907CBC()
{
  result = qword_27FF2EF00;
  if (!qword_27FF2EF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EEF8, &qword_26294F5C0);
    sub_262907D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EF00);
  }

  return result;
}

unint64_t sub_262907D54()
{
  result = qword_27FF2EF08;
  if (!qword_27FF2EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF10, &qword_26294F5C8);
    sub_2628DFD0C(&qword_27FF2EF18, &qword_27FF2EF20, &qword_26294F5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EF08);
  }

  return result;
}

uint64_t sub_262907E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEE8, &qword_26294F5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_262907E7C()
{
  result = qword_27FF2EF40;
  if (!qword_27FF2EF40)
  {
    sub_26294C728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EF40);
  }

  return result;
}

uint64_t sub_262907ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262907F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EEE8, &qword_26294F5B0);
  sub_2628DFD0C(&qword_27FF2EF30, &qword_27FF2EEE8, &qword_26294F5B0);
  sub_2628DF230();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_262907FFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26294C8A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2629081A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26294C8A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for RecommendedForDeleteView()
{
  result = qword_27FF2EF48;
  if (!qword_27FF2EF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262908398()
{
  v1 = sub_26294C8A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = *(v0 + *(type metadata accessor for RecommendedForDeleteView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_2628DF6F0(v9, &qword_27FF2E9A0, &qword_26294E9A8);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_2628DF6F0(v9, &qword_27FF2E9A0, &qword_26294E9A8);
    v12 = sub_26294C898();
    (*(v2 + 8))(v5, v1);
    return v12;
  }
}

uint64_t sub_262908594@<X0>(uint64_t a1@<X8>)
{
  v127 = a1;
  v103 = sub_26294C828();
  v2 = *(v103 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for MuirfieldView();
  v5 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v105 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF58, &qword_26294F690);
  v7 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v9 = &v103 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF60, &qword_26294F698);
  v108 = *(v109 - 8);
  v10 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v103 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF68, &qword_26294F6A0);
  v12 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v110 = &v103 - v13;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF70, &qword_26294F6A8);
  v14 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v125 = &v103 - v15;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF78, &qword_26294F6B0);
  v16 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v119 = &v103 - v17;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF80, &qword_26294F6B8);
  v18 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v121 = &v103 - v19;
  v122 = type metadata accessor for RecommendedForDeleteView();
  v114 = *(v122 - 8);
  v20 = *(v114 + 64);
  MEMORY[0x28223BE20](v122);
  v115 = v21;
  v116 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF88, &qword_26294F6C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v103 - v24;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF90, &qword_26294F6C8);
  v111 = *(v112 - 8);
  v26 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v128 = &v103 - v27;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF98, &qword_26294F6D0);
  v28 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v113 = &v103 - v29;
  v30 = v1;
  v31 = sub_26294C898();
  result = v31 + 32;
  v33 = -*(v31 + 16);
  v34 = -1;
  while (1)
  {
    if (v33 + v34 == -1)
    {

      *v25 = sub_26294D3C8();
      *(v25 + 1) = 0;
      v25[16] = 1;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F030, &unk_262950DB0);
      v54 = &v25[*(v53 + 44)];
      MEMORY[0x28223BE20](v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F038, &unk_26294F7A0);
      sub_26290CE58();
      sub_26294D5E8();
      v55 = [objc_opt_self() secondarySystemBackgroundColor];
      v129 = sub_26294D838();
      v56 = sub_26294D9D8();
      *&v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F078, &qword_262950DE0) + 36)] = v56;
      v129 = sub_26294C868();
      v130 = v57;
      v58 = sub_2628DFD0C(&qword_27FF2EFB8, &qword_27FF2EF88, &qword_26294F6C0);
      v59 = sub_2628DF230();
      v60 = MEMORY[0x277D837D0];
      sub_26294D708();

      sub_2628DF6F0(v25, &qword_27FF2EF88, &qword_26294F6C0);
      sub_26294CD78();
      v61 = v116;
      sub_26290CD68(v30, v116, type metadata accessor for RecommendedForDeleteView);
      v62 = (*(v114 + 80) + 16) & ~*(v114 + 80);
      v63 = swift_allocObject();
      sub_26290CDD4(v61, v63 + v62);
      type metadata accessor for PassbookCategoryView();
      v129 = v22;
      v130 = v60;
      v131 = v58;
      v132 = v59;
      swift_getOpaqueTypeConformance2();
      sub_26290D8E8(&qword_27FF2EFC0, MEMORY[0x277D49038]);
      sub_26290D8E8(&qword_27FF2EFC8, type metadata accessor for PassbookCategoryView);
      v64 = v113;
      v65 = v112;
      v66 = v128;
      sub_26294D778();

      (*(v111 + 8))(v66, v65);
      v67 = *(v30 + *(v122 + 20) + 8);
      type metadata accessor for SEStorageManagementController();
      sub_26290D8E8(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
      v68 = v67;
      v69 = sub_26294D178();
      v70 = (v64 + *(v117 + 36));
      *v70 = v69;
      v70[1] = v71;
      v72 = &qword_27FF2EF98;
      v73 = &qword_26294F6D0;
      sub_2628DF954(v64, v119, &qword_27FF2EF98, &qword_26294F6D0);
      swift_storeEnumTagMultiPayload();
      sub_26290C790();
      sub_26290C9D0();
      v74 = v121;
      sub_26294D3F8();
      sub_2628DF954(v74, v125, &qword_27FF2EF80, &qword_26294F6B8);
      swift_storeEnumTagMultiPayload();
      sub_26290C704();
      sub_26290D8E8(&qword_27FF2EFE8, type metadata accessor for MuirfieldView);
      v48 = v127;
      sub_26294D3F8();
      sub_2628DF6F0(v74, &qword_27FF2EF80, &qword_26294F6B8);
      v75 = v64;
LABEL_16:
      sub_2628DF6F0(v75, v72, v73);
LABEL_17:
      v52 = 0;
LABEL_18:
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EFA0, &qword_26294F6D8);
      return (*(*(v97 - 8) + 56))(v48, v52, 1, v97);
    }

    if (++v34 >= *(v31 + 16))
    {
      break;
    }

    v35 = result + 40;
    sub_262906C54(result, &v129);
    __swift_project_boxed_opaque_existential_1(&v129, v132);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm(&v129);
    v37 = sub_26294CD78();
    result = v35;
    if (DynamicType != v37)
    {

      v38 = v30;
      v39 = sub_26294C898();
      result = v39 + 32;
      v40 = -*(v39 + 16);
      v41 = -1;
      do
      {
        if (v40 + v41 == -1)
        {

          *v9 = sub_26294D3C8();
          *(v9 + 1) = 0;
          v9[16] = 1;
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EFF0, &qword_26294F760);
          v77 = &v9[*(v76 + 44)];
          MEMORY[0x28223BE20](v76);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EFF8, &qword_26294F768);
          sub_26290CC20();
          sub_26294D5E8();
          v78 = [objc_opt_self() secondarySystemBackgroundColor];
          v129 = sub_26294D838();
          v79 = sub_26294D9D8();
          *&v77[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F028, &unk_26294F790) + 36)] = v79;
          v129 = sub_26294C868();
          v130 = v80;
          v81 = sub_2628DFD0C(&qword_27FF2EFE0, &qword_27FF2EF58, &qword_26294F690);
          v82 = sub_2628DF230();
          v83 = v107;
          v84 = v106;
          sub_26294D708();

          sub_2628DF6F0(v9, &qword_27FF2EF58, &qword_26294F690);
          sub_26294C7A8();
          v85 = v116;
          sub_26290CD68(v38, v116, type metadata accessor for RecommendedForDeleteView);
          v86 = (*(v114 + 80) + 16) & ~*(v114 + 80);
          v87 = swift_allocObject();
          sub_26290CDD4(v85, v87 + v86);
          type metadata accessor for ViennaAppCategoryView();
          v129 = v84;
          v130 = MEMORY[0x277D837D0];
          v131 = v81;
          v132 = v82;
          swift_getOpaqueTypeConformance2();
          sub_26290D8E8(&qword_27FF2E848, MEMORY[0x277D48E58]);
          sub_26290D8E8(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView);
          v88 = v110;
          v89 = v109;
          sub_26294D778();

          (*(v108 + 8))(v83, v89);
          v90 = *(v38 + *(v122 + 20) + 8);
          type metadata accessor for SEStorageManagementController();
          sub_26290D8E8(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
          v91 = v90;
          v92 = sub_26294D178();
          v93 = v119;
          v94 = (v88 + *(v120 + 36));
          *v94 = v92;
          v94[1] = v95;
          v72 = &qword_27FF2EF68;
          v73 = &qword_26294F6A0;
          sub_2628DF954(v88, v93, &qword_27FF2EF68, &qword_26294F6A0);
          swift_storeEnumTagMultiPayload();
          sub_26290C790();
          sub_26290C9D0();
          v96 = v121;
          sub_26294D3F8();
          sub_2628DF954(v96, v125, &qword_27FF2EF80, &qword_26294F6B8);
          swift_storeEnumTagMultiPayload();
          sub_26290C704();
          sub_26290D8E8(&qword_27FF2EFE8, type metadata accessor for MuirfieldView);
          v48 = v127;
          sub_26294D3F8();
          sub_2628DF6F0(v96, &qword_27FF2EF80, &qword_26294F6B8);
          v75 = v88;
          goto LABEL_16;
        }

        if (++v41 >= *(v39 + 16))
        {
          goto LABEL_21;
        }

        v42 = result + 40;
        sub_262906C54(result, &v129);
        __swift_project_boxed_opaque_existential_1(&v129, v132);
        v43 = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_1Tm(&v129);
        v44 = sub_26294C7A8();
        result = v42;
      }

      while (v43 == v44);

      v45 = sub_26294C898();
      result = v45 + 32;
      v46 = -*(v45 + 16);
      v47 = -1;
      v48 = v127;
      while (v46 + v47 != -1)
      {
        if (++v47 >= *(v45 + 16))
        {
          goto LABEL_22;
        }

        v49 = result + 40;
        sub_262906C54(result, &v129);
        __swift_project_boxed_opaque_existential_1(&v129, v132);
        v50 = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_1Tm(&v129);
        v51 = sub_26294CD98();
        result = v49;
        if (v50 != v51)
        {

          v52 = 1;
          goto LABEL_18;
        }
      }

      (*(v2 + 104))(v104, *MEMORY[0x277D48EC8], v103);
      v98 = *(v30 + *(v122 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      sub_2628E3A44(v129);

      v99 = v105;
      sub_26294C838();
      v100 = v126;
      *(v99 + *(v126 + 20)) = v98;
      v101 = *(v100 + 24);
      *(v99 + v101) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
      swift_storeEnumTagMultiPayload();
      sub_26290CD68(v99, v125, type metadata accessor for MuirfieldView);
      swift_storeEnumTagMultiPayload();
      sub_26290C704();
      sub_26290D8E8(&qword_27FF2EFE8, type metadata accessor for MuirfieldView);
      v102 = v98;
      sub_26294D3F8();
      sub_26290CBBC(v99);
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_2629097B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26294DAC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = sub_26294CD78();
  (*(*(v14 - 8) + 16))(a3, a1, v14);
  v15 = type metadata accessor for RecommendedForDeleteView();
  v16 = *(v15 + 24);
  v17 = *(a2 + *(v15 + 20) + 8);
  v18 = type metadata accessor for PassbookCategoryView();
  v19 = v18[6];
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  sub_26294DA08();
  v21 = (a3 + v18[5]);
  type metadata accessor for SEStorageManagementController();
  sub_26290D8E8(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
  *v21 = sub_26294D178();
  v21[1] = v22;
  *(a3 + v18[7]) = 1;
  v23 = v18[8];
  (*(v7 + 104))(v13, *MEMORY[0x277CDF0D8], v6);
  (*(v7 + 16))(v11, v13, v6);
  sub_26294D928();
  (*(v7 + 8))(v13, v6);
  v24 = v18[9];
  *(a3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_262909A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26294C7A8();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for RecommendedForDeleteView();
  v8 = *(v7 + 24);
  v9 = *(a2 + *(v7 + 20) + 8);
  v10 = type metadata accessor for ViennaAppCategoryView();
  v11 = v10[6];
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  sub_26294DA08();
  v13 = (a3 + v10[5]);
  type metadata accessor for SEStorageManagementController();
  sub_26290D8E8(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
  *v13 = sub_26294D178();
  v13[1] = v14;
  *(a3 + v10[7]) = 1;
  v15 = v10[8];
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_262909BA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F050, &unk_262950DC0);
  sub_26290CEE8();
  return sub_26294DA98();
}

uint64_t sub_262909C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v37 - v5;
  v7 = sub_26294CD78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecommendedForDeleteView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v40 = v15;
  v41 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F060, &unk_26294F7B0);
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  MEMORY[0x28223BE20](v16);
  v39 = v37 - v18;
  v45 = a1;
  v19 = sub_262908398();
  v20 = *(v19 + 16);
  if (v20)
  {
    v38 = v13;
    v37[1] = v19;
    v21 = v19 + 32;
    v48 = (v8 + 32);
    v22 = MEMORY[0x277D84F90];
    v46 = v11;
    v47 = v8;
    do
    {
      sub_262906C54(v21, v50);
      sub_262907114(v50, v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC98, &qword_26294F228);
      v23 = swift_dynamicCast();
      (*(v8 + 56))(v6, v23 ^ 1u, 1, v7);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_2628DF6F0(v6, &qword_27FF2F080, &unk_26294F7D0);
      }

      else
      {
        v24 = *v48;
        (*v48)(v11, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_26291D958(0, v22[2] + 1, 1, v22);
        }

        v26 = v22[2];
        v25 = v22[3];
        if (v26 >= v25 >> 1)
        {
          v22 = sub_26291D958(v25 > 1, v26 + 1, 1, v22);
        }

        v22[2] = v26 + 1;
        v27 = v22 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v26;
        v11 = v46;
        v24(v27, v46, v7);
      }

      v21 += 40;
      --v20;
    }

    while (v20);

    v13 = v38;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *&v50[0] = v22;
  v48 = type metadata accessor for RecommendedForDeleteView;
  v28 = v41;
  sub_26290CD68(v45, v41, type metadata accessor for RecommendedForDeleteView);
  v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v30 = swift_allocObject();
  sub_26290CDD4(v28, v30 + v29);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB58, &qword_26294ECF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B0, &unk_262950DD0);
  sub_2628DFD0C(&qword_27FF2F088, &qword_27FF2EB58, &qword_26294ECF0);
  sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0);
  sub_26290D8E8(&qword_27FF2F090, MEMORY[0x277D49038]);
  v31 = v39;
  sub_26294DA68();
  sub_26290CD68(v45, v28, v48);
  v32 = swift_allocObject();
  sub_26290CDD4(v28, v32 + v29);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26290D088;
  *(v33 + 24) = v32;
  v34 = v44;
  (*(v42 + 32))(v44, v31, v43);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F050, &unk_262950DC0);
  v36 = (v34 + *(result + 36));
  *v36 = sub_26290D2F4;
  v36[1] = v33;
  return result;
}

uint64_t sub_26290A210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = sub_26294CD78();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v17 = a1;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E928, &unk_26294F880);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E930, &unk_26294FFB0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E938, &unk_26294F890);
  v12 = sub_2628DF824();
  v13 = sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890);
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  swift_getOpaqueTypeConformance2();
  v14 = MEMORY[0x277D49038];
  sub_26290D8E8(&qword_27FF2F0A8, MEMORY[0x277D49038]);
  sub_26290D8E8(&qword_27FF2F0B0, v14);
  sub_26290D8E8(&qword_27FF2EFC0, v14);
  return sub_26294D118();
}

uint64_t sub_26290A498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v59 = a3;
  v55 = sub_26294C5F8();
  v60 = *(v55 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v52 - v12);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E930, &unk_26294FFB0);
  v14 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v52 - v15;
  v16 = sub_26294CD38();
  v18 = v17;
  sub_26294CD28();
  v19 = a1;
  sub_26294CD48();
  v21 = sub_2629205EC(v20);
  v23 = v22;
  *v13 = v16;
  v13[1] = v18;
  sub_2628DF954(v9, v13 + v10[9], &qword_27FF2E978, &qword_26294EC40);
  *(v13 + v10[15]) = 1;
  *(v13 + v10[10]) = 0;
  v24 = (v13 + v10[11]);
  *v24 = v21;
  v24[1] = v23;
  *(v13 + v10[12]) = 2;
  *(v13 + v10[13]) = 0;
  v25 = v13 + v10[14];
  SEStorageManagementViewModel.WalletUsageCategory.iconView.getter(&v63);
  v26 = v63;
  v27 = v64;
  v52 = v65;
  v53 = v66;
  sub_26294DAE8();
  sub_26294D0D8();
  v67 = v27;
  v28 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36)];
  v29 = *(sub_26294D1D8() + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_26294D378();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #6.0 }

  *v28 = _Q0;
  *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  *(v25 + 1) = v52;
  v37 = v69;
  *(v25 + 40) = v68;
  *v25 = v26;
  v25[8] = v27;
  *(v25 + 9) = v63;
  *(v25 + 3) = *(&v63 + 3);
  *(v25 + 4) = v53;
  *(v25 + 56) = v37;
  *(v25 + 72) = v70;
  sub_2628DF6F0(v9, &qword_27FF2E978, &qword_26294EC40);
  v38 = v54;
  v39 = v55;
  (*(v60 + 104))(v54, *MEMORY[0x277D48DF8], v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_26294E7D0;
  v41 = v19;
  v42 = sub_26294CD38();
  v44 = v43;
  v45 = MEMORY[0x277D837D0];
  *(v40 + 56) = MEMORY[0x277D837D0];
  v46 = sub_2628DF5B8();
  *(v40 + 64) = v46;
  *(v40 + 32) = v42;
  *(v40 + 40) = v44;
  sub_26294CD48();
  v48 = sub_2629205EC(v47);
  *(v40 + 96) = v45;
  *(v40 + 104) = v46;
  *(v40 + 72) = v48;
  *(v40 + 80) = v49;
  sub_26294C6B8();

  (*(v60 + 8))(v38, v39);
  sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0);
  v50 = v56;
  sub_26294D798();

  sub_2628DF6F0(v13, &qword_27FF2E950, &unk_26294FFC0);
  v61 = v41;
  v62 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E938, &unk_26294F890);
  sub_2628DF824();
  sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890);
  sub_26294D6C8();
  return sub_2628DF6F0(v50, &qword_27FF2E930, &unk_26294FFB0);
}

uint64_t sub_26290AA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v25 = a3;
  v22 = a1;
  v3 = type metadata accessor for RecommendedForDeleteView();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26294CD78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_26294C5F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D48DF0], v9);
  v21 = sub_26294C5E8();
  v15 = v14;
  (*(v10 + 8))(v13, v9);
  (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v6);
  sub_26290CD68(v24, v5, type metadata accessor for RecommendedForDeleteView);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + *(v23 + 80) + v16) & ~*(v23 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_26290CDD4(v5, v18 + v17);
  v29[0] = v21;
  v29[1] = v15;
  v26 = v29;
  v27 = 0x6873617274;
  v28 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
  sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0);
  sub_26294D988();
}

void sub_26290ADB8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - v5;
  v7 = sub_26294CBA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26294CD58();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(type metadata accessor for RecommendedForDeleteView() + 20);
    v22[1] = v12;
    v23 = a2;
    v15 = *(a2 + v14 + 8);
    v17 = *(v8 + 16);
    v16 = v8 + 16;
    v18 = v12 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v24 = *(v16 + 56);
    v25 = v17;
    do
    {
      v25(v11, v18, v7);
      v19 = sub_26294CB98();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      if ((v27 & 1) == 0)
      {
        sub_2628F122C(v11, v6, 0, 1);
        sub_2628EC330();
      }

      sub_2628DF6F0(v6, &qword_27FF2ED68, &qword_26294F2F0);
      (*(v16 - 8))(v11, v7);
      v18 += v24;
      --v13;
    }

    while (v13);

    a2 = v23;
  }

  else
  {
  }

  v20 = *(a2 + *(type metadata accessor for RecommendedForDeleteView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v26 & 1) == 0)
  {
    v21 = v20;
    sub_262905918(v21, v21, 0, 0);
  }
}

void sub_26290B0B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v69 = sub_26294CBA8();
  v53 = *(v69 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v69);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_26294CD78();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v52);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F098, &qword_26294F7E0);
  v14 = *(v66 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v66);
  v55 = (&v49 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0A0, &qword_26294F7E8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v65 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = (&v49 - v21);
  v23 = *(v1 + *(type metadata accessor for RecommendedForDeleteView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v24 = v13;

  v25 = 0;
  v26 = v72;
  v54 = v10 + 16;
  v62 = (v14 + 48);
  v63 = (v14 + 56);
  v27 = v52;
  v28 = *(v72 + 16);
  v60 = (v10 + 32);
  v61 = v28;
  v68 = v53 + 16;
  v29 = (v53 + 8);
  v56 = v10;
  v58 = v22;
  v59 = (v10 + 8);
  v64 = v72;
  v51 = a1;
  v50 = v24;
  while (1)
  {
    v30 = v66;
    if (v25 == v28)
    {
      v31 = 1;
      v67 = v28;
      v32 = v65;
    }

    else
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if (v25 >= *(v26 + 16))
      {
        goto LABEL_22;
      }

      v33 = v25 + 1;
      v35 = v55;
      v34 = v56;
      v36 = v26 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25;
      v37 = *(v66 + 48);
      *v55 = v25;
      (*(v34 + 16))(&v35[v37], v36, v27);
      v38 = v35;
      v32 = v65;
      sub_262906F00(v38, v65, &qword_27FF2F098, &qword_26294F7E0);
      v31 = 0;
      v67 = v33;
      v22 = v58;
    }

    (*v63)(v32, v31, 1, v30);
    sub_262906F00(v32, v22, &qword_27FF2F0A0, &qword_26294F7E8);
    if ((*v62)(v22, 1, v30) == 1)
    {
      break;
    }

    v39 = *v22;
    (*v60)(v24, v22 + *(v30 + 48), v27);
    if (sub_26294C5A8())
    {
      v40 = sub_26294CD58();
      v41 = *(v40 + 16);
      if (v41)
      {
        v42 = *(v53 + 80);
        v57 = v40;
        v43 = v40 + ((v42 + 32) & ~v42);
        v44 = *(v53 + 72);
        v45 = *(v53 + 16);
        v45(v9, v43, v69);
        while (1)
        {
          v47 = sub_26294CB98();
          (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_26294CFF8();

          if ((v70 & 1) == 0)
          {
            sub_2628F122C(v9, v6, 0, 1);
            sub_2628EC330();
          }

          sub_2628DF6F0(v6, &qword_27FF2ED68, &qword_26294F2F0);
          v46 = v69;
          (*v29)(v9, v69);
          v43 += v44;
          if (!--v41)
          {
            break;
          }

          v45(v9, v43, v46);
        }

        v27 = v52;
        v24 = v50;
        v22 = v58;
      }

      else
      {
      }
    }

    (*v59)(v24, v27);
    v26 = v64;
    v28 = v61;
    v25 = v67;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v71 & 1) == 0)
  {
    v48 = v23;
    sub_262905918(v48, v48, 0, 0);
  }
}

uint64_t sub_26290B71C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v7 = a1;
  sub_26290C3B8(&v6[-v4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F010, &qword_26294F780);
  sub_2628DF40C();
  sub_26290CCB8();
  return sub_26294DA78();
}

uint64_t sub_26290B814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v29 - v5;
  v7 = sub_26294C7A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecommendedForDeleteView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_262908398();
  v16 = *(v15 + 16);
  if (v16)
  {
    v29[0] = v12;
    v29[1] = v13;
    v30 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = a1;
    v32 = v15;
    v17 = v15 + 32;
    v18 = (v8 + 56);
    v19 = (v8 + 48);
    v35 = v8;
    v20 = (v8 + 32);
    v21 = MEMORY[0x277D84F90];
    v34 = (v8 + 32);
    do
    {
      sub_262906C54(v17, v38);
      sub_262907114(v38, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC98, &qword_26294F228);
      v22 = swift_dynamicCast();
      (*v18)(v6, v22 ^ 1u, 1, v7);
      if ((*v19)(v6, 1, v7) == 1)
      {
        sub_2628DF6F0(v6, &qword_27FF2E920, &unk_26294F920);
      }

      else
      {
        v23 = *v20;
        (*v20)(v36, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_26291D6B0(0, *(v21 + 2) + 1, 1, v21);
        }

        v25 = *(v21 + 2);
        v24 = *(v21 + 3);
        if (v25 >= v24 >> 1)
        {
          v21 = sub_26291D6B0(v24 > 1, v25 + 1, 1, v21);
        }

        *(v21 + 2) = v25 + 1;
        v20 = v34;
        v23(&v21[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v25], v36, v7);
      }

      v17 += 40;
      --v16;
    }

    while (v16);

    v14 = v30;
    a1 = v31;
    v12 = v29[0];
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  *&v38[0] = v21;
  sub_26290CD68(a1, v14, type metadata accessor for RecommendedForDeleteView);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v27 = swift_allocObject();
  sub_26290CDD4(v14, v27 + v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E908, &qword_26294E928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F020, &qword_26294F788);
  sub_2628DFD0C(&qword_27FF2E910, &qword_27FF2E908, &qword_26294E928);
  sub_2628DFD0C(&qword_27FF2F018, &qword_27FF2F020, &qword_26294F788);
  sub_26290D8E8(&qword_27FF2E918, MEMORY[0x277D48E58]);
  return sub_26294DA68();
}

uint64_t sub_26290BCCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-v6];
  v8 = sub_26294C7A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v13 = a1;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E930, &unk_26294FFB0);
  sub_2628DF824();
  v10 = MEMORY[0x277D48E58];
  sub_26290D8E8(&qword_27FF2E968, MEMORY[0x277D48E58]);
  sub_26290D8E8(&qword_27FF2E970, v10);
  sub_26290D8E8(&qword_27FF2E848, v10);
  return sub_26294D118();
}

uint64_t sub_26290BEC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v55 = a1;
  v56 = a2;
  v54 = sub_26294C5F8();
  v57 = *(v54 - 8);
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_26294C7F8();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v52);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v51 - v14);
  v16 = sub_26294C778();
  v18 = v17;
  sub_26294C768();
  sub_26294C798();
  v20 = sub_2629205EC(v19);
  v22 = v21;
  *v15 = v16;
  v15[1] = v18;
  sub_2628DF954(v11, v15 + v12[9], &qword_27FF2E978, &qword_26294EC40);
  *(v15 + v12[15]) = 1;
  *(v15 + v12[10]) = 0;
  v23 = (v15 + v12[11]);
  *v23 = v20;
  v23[1] = v22;
  *(v15 + v12[12]) = 2;
  *(v15 + v12[13]) = 0;
  v24 = v15 + v12[14];
  sub_26294C758();
  v25 = sub_26294C7D8();
  v27 = v26;
  (*(v4 + 8))(v7, v52);
  KeyPath = swift_getKeyPath();
  sub_26294DAE8();
  sub_26294D0D8();
  v58 = 0;
  v29 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36)];
  v30 = *(sub_26294D1D8() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_26294D378();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #6.0 }

  *v29 = _Q0;
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  v38 = v60;
  *(v24 + 40) = v59;
  *v24 = KeyPath;
  v24[8] = 0;
  *(v24 + 2) = v25;
  *(v24 + 3) = v27;
  *(v24 + 4) = 0x4000000000000000;
  *(v24 + 56) = v38;
  *(v24 + 72) = v61;
  sub_2628DF6F0(v11, &qword_27FF2E978, &qword_26294EC40);
  v40 = v53;
  v39 = v54;
  (*(v57 + 104))(v53, *MEMORY[0x277D48DF8], v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26294E7D0;
  v42 = sub_26294C868();
  v44 = v43;
  v45 = MEMORY[0x277D837D0];
  *(v41 + 56) = MEMORY[0x277D837D0];
  v46 = sub_2628DF5B8();
  *(v41 + 64) = v46;
  *(v41 + 32) = v42;
  *(v41 + 40) = v44;
  sub_26294C888();
  v48 = sub_2629205EC(v47);
  *(v41 + 96) = v45;
  *(v41 + 104) = v46;
  *(v41 + 72) = v48;
  *(v41 + 80) = v49;
  sub_26294C6B8();

  (*(v57 + 8))(v40, v39);
  sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0);
  sub_26294D798();

  return sub_2628DF6F0(v15, &qword_27FF2E950, &unk_26294FFC0);
}

__n128 sub_26290C3B8@<Q0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_26294D4E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8F0, &qword_26294FF90);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  v10 = sub_26294D338();
  v21 = 1;
  sub_2628DEDFC(v24);
  memcpy(v22, v24, sizeof(v22));
  memcpy(v23, v24, sizeof(v23));
  sub_2628DF954(v22, v19, &qword_27FF2E8F8, &unk_26294F910);
  sub_2628DF6F0(v23, &qword_27FF2E8F8, &unk_26294F910);
  memcpy(&v20[7], v22, 0x120uLL);
  *v19 = v10;
  *&v19[8] = 0;
  v19[16] = v21;
  memcpy(&v19[17], v20, 0x127uLL);
  sub_26294D4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E888, &unk_2629513D0);
  sub_2628DFD0C(&qword_27FF2E890, &qword_27FF2E888, &unk_2629513D0);
  sub_26294D768();
  (*(v2 + 8))(v5, v1);
  memcpy(v24, v19, 0x138uLL);
  sub_2628DF6F0(v24, &qword_27FF2E888, &unk_2629513D0);
  sub_26294DAE8();
  sub_26294D1F8();
  v11 = v18;
  (*(v6 + 32))(v18, v9, v17);
  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770) + 36);
  v13 = *&v19[80];
  *(v12 + 64) = *&v19[64];
  *(v12 + 80) = v13;
  *(v12 + 96) = *&v19[96];
  v14 = *&v19[16];
  *v12 = *v19;
  *(v12 + 16) = v14;
  result = *&v19[48];
  *(v12 + 32) = *&v19[32];
  *(v12 + 48) = result;
  return result;
}

unint64_t sub_26290C704()
{
  result = qword_27FF2EFA8;
  if (!qword_27FF2EFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF80, &qword_26294F6B8);
    sub_26290C790();
    sub_26290C9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EFA8);
  }

  return result;
}

unint64_t sub_26290C790()
{
  result = qword_27FF2EFB0;
  if (!qword_27FF2EFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF98, &qword_26294F6D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF90, &qword_26294F6C8);
    sub_26294CD78();
    type metadata accessor for PassbookCategoryView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF88, &qword_26294F6C0);
    sub_2628DFD0C(&qword_27FF2EFB8, &qword_27FF2EF88, &qword_26294F6C0);
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_26290D8E8(&qword_27FF2EFC0, MEMORY[0x277D49038]);
    sub_26290D8E8(&qword_27FF2EFC8, type metadata accessor for PassbookCategoryView);
    swift_getOpaqueTypeConformance2();
    sub_26290C97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EFB0);
  }

  return result;
}

unint64_t sub_26290C97C()
{
  result = qword_27FF2EFD0;
  if (!qword_27FF2EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EFD0);
  }

  return result;
}

unint64_t sub_26290C9D0()
{
  result = qword_27FF2EFD8;
  if (!qword_27FF2EFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF68, &qword_26294F6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF60, &qword_26294F698);
    sub_26294C7A8();
    type metadata accessor for ViennaAppCategoryView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF58, &qword_26294F690);
    sub_2628DFD0C(&qword_27FF2EFE0, &qword_27FF2EF58, &qword_26294F690);
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_26290D8E8(&qword_27FF2E848, MEMORY[0x277D48E58]);
    sub_26290D8E8(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView);
    swift_getOpaqueTypeConformance2();
    sub_2628E01B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EFD8);
  }

  return result;
}

uint64_t sub_26290CBBC(uint64_t a1)
{
  v2 = type metadata accessor for MuirfieldView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26290CC20()
{
  result = qword_27FF2F000;
  if (!qword_27FF2F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EFF8, &qword_26294F768);
    sub_2628DF40C();
    sub_26290CCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F000);
  }

  return result;
}

unint64_t sub_26290CCB8()
{
  result = qword_27FF2F008;
  if (!qword_27FF2F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F010, &qword_26294F780);
    sub_2628DFD0C(&qword_27FF2F018, &qword_27FF2F020, &qword_26294F788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F008);
  }

  return result;
}

uint64_t sub_26290CD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26290CDD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendedForDeleteView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26290CE58()
{
  result = qword_27FF2F040;
  if (!qword_27FF2F040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F038, &unk_26294F7A0);
    sub_26290CEE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F040);
  }

  return result;
}

unint64_t sub_26290CEE8()
{
  result = qword_27FF2F048;
  if (!qword_27FF2F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F050, &unk_262950DC0);
    sub_26290CFA0();
    sub_2628DFD0C(&qword_27FF2F068, &qword_27FF2F070, &unk_26294F7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F048);
  }

  return result;
}

unint64_t sub_26290CFA0()
{
  result = qword_27FF2F058;
  if (!qword_27FF2F058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F060, &unk_26294F7B0);
    sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F058);
  }

  return result;
}

void sub_26290D088(uint64_t a1)
{
  v3 = *(type metadata accessor for RecommendedForDeleteView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_26290B0B4(a1);
}

uint64_t sub_26290D0EC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();
}

uint64_t sub_26290D168(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_2628DF954(a1, &v14 - v9, &qword_27FF2E9A0, &qword_26294E9A8);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2628DF954(v10, v8, &qword_27FF2E9A0, &qword_26294E9A8);
  v12 = v11;
  sub_26294D008();
  return sub_2628DF6F0(v10, &qword_27FF2E9A0, &qword_26294E9A8);
}

uint64_t sub_26290D2BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26290D2F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26290D33C()
{
  v1 = sub_26294CD78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for RecommendedForDeleteView() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = sub_26294C8A8();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  v12 = (v0 + v8 + v6[8]);
  v13 = *v12;

  v14 = *(v12 + 1);

  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v16 = sub_26294D168();
  (*(*(v16 - 8) + 8))(&v12[v15], v16);
  v17 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_26294D0F8();
    (*(*(v18 - 8) + 8))(v10 + v17, v18);
  }

  else
  {
    v19 = *(v10 + v17);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

void sub_26290D58C()
{
  v1 = *(sub_26294CD78() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for RecommendedForDeleteView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_26290ADB8(v0 + v2, v5);
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for RecommendedForDeleteView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_26294C8A8();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = (v0 + v3 + v1[8]);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v11 = sub_26294D168();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);
  v12 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26294D0F8();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26290D84C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RecommendedForDeleteView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_26290D8E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26290D93C()
{
  result = qword_27FF2F0B8;
  if (!qword_27FF2F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F0C0, &qword_26294F960);
    sub_26290D9C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F0B8);
  }

  return result;
}

unint64_t sub_26290D9C0()
{
  result = qword_27FF2F0C8;
  if (!qword_27FF2F0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EFA0, &qword_26294F6D8);
    sub_26290C704();
    sub_26290D8E8(&qword_27FF2EFE8, type metadata accessor for MuirfieldView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F0C8);
  }

  return result;
}

uint64_t sub_26290DAA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26294CCB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_26294C7A8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_26290DCE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26294CCB8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_26294C7A8();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t type metadata accessor for ViennaCategoryView()
{
  result = qword_27FF2F0D8;
  if (!qword_27FF2F0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26290DF58()
{
  sub_26294CCB8();
  if (v0 <= 0x3F)
  {
    sub_26294C7A8();
    if (v1 <= 0x3F)
    {
      sub_2628DCCD8();
      if (v2 <= 0x3F)
      {
        sub_26290E0CC(319, &qword_27FF2E808, MEMORY[0x277CDD968], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_26290E0CC(319, &qword_27FF2F0E8, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_26290E0CC(319, &qword_27FF2E810, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26290E0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26290E14C(uint64_t a1, uint64_t a2)
{
  v44 = sub_26294C7F8();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26294C538();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v57 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = v40 - v13;
  v47 = sub_26294CA28();
  v14 = *(v47 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v47);
  v45 = a2;
  v46 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26294CCA8();
  v55 = *(result + 16);
  if (v55)
  {
    v53 = result;
    v54 = v8;
    v40[1] = v2;
    v41 = a1;
    v18 = 0;
    v51 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v49 = (v9 + 8);
    v50 = v14 + 16;
    v52 = (v14 + 8);
    v42 = (v5 + 8);
    v20 = v46;
    v19 = v47;
    v21 = a1;
    v48 = v14;
    while (v18 < *(result + 16))
    {
      v22 = (*(v14 + 16))(v20, v51 + *(v14 + 72) * v18, v19);
      v23 = v56;
      v24 = MEMORY[0x26672C010](v22);
      v25 = v57;
      MEMORY[0x26672C010](v24);
      v26 = sub_26294C518();
      v27 = v21;
      v28 = *v49;
      v29 = v25;
      v30 = v54;
      (*v49)(v29, v54);
      v28(v23, v30);
      if (v26)
      {
        v31 = v45 + *(type metadata accessor for ViennaCategoryView() + 20);
        v32 = sub_26294C788();
        v34 = v33;
        v35 = v43;
        sub_26294CA18();
        v36 = sub_26294C7D8();
        v38 = v37;
        (*v42)(v35, v44);
        if (v32 == v36 && v34 == v38)
        {

          (*v52)(v46, v47);
LABEL_14:

          return 1;
        }

        v39 = sub_26294E058();

        v20 = v46;
        v19 = v47;
        (*v52)(v46, v47);
        v21 = v41;
        result = v53;
        if (v39)
        {
          goto LABEL_14;
        }
      }

      else
      {
        (*v52)(v20, v19);
        result = v53;
        v21 = v27;
      }

      ++v18;
      v14 = v48;
      if (v55 == v18)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_26290E584(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_26294CA28();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2628FBFB8(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2628FBFB8(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_26290E854@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = sub_26294DAC8();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0F0, &qword_26294F9F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0F8, &qword_26294FA00);
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v55 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F100, &qword_26294FA08);
  v16 = *(v15 - 8);
  v61 = v15;
  v62 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  *v10 = sub_26294D3C8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F108, &qword_26294FA10);
  sub_26290EE54(v1, &v10[*(v20 + 44)]);
  KeyPath = swift_getKeyPath();
  v22 = &v10[*(v7 + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F110, &unk_2629518B0) + 28);
  v58 = type metadata accessor for ViennaCategoryView();
  v56 = *(v58 + 32);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D958();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
  (*(*(v24 - 8) + 56))(v22 + v23, 0, 1, v24);
  *v22 = KeyPath;
  v69 = sub_26294CC78();
  v70 = v25;
  v26 = sub_2629135E0();
  v27 = sub_2628DF230();
  v28 = MEMORY[0x277D837D0];
  sub_26294D708();

  sub_2628DF6F0(v10, &qword_27FF2F0F0, &qword_26294F9F8);
  v68 = v1;
  v54 = v1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F140, &unk_26294FA60);
  v69 = v7;
  v70 = v28;
  v71 = v26;
  v72 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F148, &unk_2629518D0);
  v31 = sub_2629136CC();
  v69 = v30;
  v70 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v19;
  v34 = v59;
  v35 = v29;
  v36 = v55;
  sub_26294D818();
  v37 = v34;
  (*(v60 + 8))(v36, v34);
  v38 = v63;
  sub_26294D938();
  v40 = v64;
  v39 = v65;
  v41 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x277CDF0D0], v66);
  sub_26294DAB8();
  v42 = *(v39 + 8);
  v42(v40, v41);
  v42(v38, v41);
  v69 = v37;
  v70 = v35;
  v71 = OpaqueTypeConformance2;
  v72 = v32;
  swift_getOpaqueTypeConformance2();
  v43 = v67;
  v44 = v61;
  sub_26294D7C8();
  (*(v62 + 8))(v33, v44);
  v45 = *(v54 + *(v58 + 24) + 8);
  type metadata accessor for SEStorageManagementController();
  sub_262913FE4(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
  v46 = v45;
  v47 = sub_26294D178();
  v49 = v48;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F178, &qword_26294FA80);
  v51 = (v43 + *(result + 36));
  *v51 = v47;
  v51[1] = v49;
  return result;
}

uint64_t sub_26290EE54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1E0, &qword_262951990);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v41 - v7;
  v8 = sub_26294D468();
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1E8, &qword_26294FB20);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1F0, &qword_26294FB28);
  v45 = *(v18 - 8);
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1F8, &qword_26294FB30);
  v42 = *(v44 - 8);
  v22 = v42;
  v23 = *(v42 + 64);
  v24 = MEMORY[0x28223BE20](v44);
  v43 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v41 - v26;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F200, &qword_26294FB38);
  sub_262913AFC();
  sub_26294D5E8();
  v28 = sub_2628DFD0C(&qword_27FF2F218, &qword_27FF2F1E8, &qword_26294FB20);
  sub_26294D7A8();
  (*(v14 + 8))(v17, v13);
  sub_26294D458();
  v52 = v13;
  v53 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v27;
  v30 = v46;
  sub_26294D828();
  (*(v47 + 8))(v12, v30);
  (*(v45 + 8))(v21, v18);
  v31 = v48;
  sub_26290F624(v48);
  v32 = *(v22 + 16);
  v33 = v43;
  v34 = v44;
  v35 = v29;
  v32(v43, v29, v44);
  v36 = v49;
  sub_2628DF954(v31, v49, &qword_27FF2F1E0, &qword_262951990);
  v37 = v50;
  v32(v50, v33, v34);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F220, &unk_26294FB40);
  sub_2628DF954(v36, &v37[*(v38 + 48)], &qword_27FF2F1E0, &qword_262951990);
  sub_2628DF6F0(v31, &qword_27FF2F1E0, &qword_262951990);
  v39 = *(v42 + 8);
  v39(v35, v34);
  sub_2628DF6F0(v36, &qword_27FF2F1E0, &qword_262951990);
  return (v39)(v33, v34);
}

uint64_t sub_26290F370(uint64_t a1)
{
  v2 = type metadata accessor for ViennaCategoryView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 32) + 8);
  v6 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v16 = a1;

  v8 = *(sub_26290E584(sub_262914554, v15, v7) + 16);

  v9 = *(v5 + v6);
  v14 = a1;

  v17 = sub_26290E584(sub_262914554, v13, v9);
  sub_26291387C(a1, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_2629138E4(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  *(v11 + v10 + v4) = v8 > 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F290, &qword_26294FBE8);
  sub_26294C538();
  type metadata accessor for ViennaGroupView();
  sub_2628DFD0C(&qword_27FF2F298, &qword_27FF2F290, &qword_26294FBE8);
  sub_262913FE4(&qword_27FF2F210, type metadata accessor for ViennaGroupView);
  sub_262913FE4(&qword_27FF2F2A0, MEMORY[0x277D48F20]);
  return sub_26294DA68();
}

uint64_t sub_26290F624@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F228, &unk_2629519D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F230, &unk_26294FB50);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v43 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F238, &unk_2629519E0);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - v13;
  v14 = sub_26294DAC8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = *(type metadata accessor for ViennaCategoryView() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  v23 = v1;
  sub_26294D938();
  (*(v15 + 104))(v19, *MEMORY[0x277CDF0D0], v14);
  LOBYTE(v22) = sub_26294DAB8();
  v24 = *(v15 + 8);
  v24(v19, v14);
  v25 = v21;
  v26 = v8;
  v24(v25, v14);
  v27 = v44;
  v28 = 1;
  if (v22)
  {
    *v5 = sub_26294D3C8();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F240, &unk_26294FB60);
    sub_262911F34(v23, &v5[*(v29 + 44)]);
    sub_26294DAE8();
    sub_26294D1F8();
    v30 = v43;
    sub_262906F00(v5, v43, &qword_27FF2F228, &unk_2629519D0);
    v31 = (v30 + *(v41 + 36));
    v32 = v51;
    v31[4] = v50;
    v31[5] = v32;
    v31[6] = v52;
    v33 = v47;
    *v31 = v46;
    v31[1] = v33;
    v34 = v49;
    v31[2] = v48;
    v31[3] = v34;
    v35 = [objc_opt_self() secondarySystemBackgroundColor];
    v36 = sub_26294D838();
    v37 = sub_26294D528();
    sub_262906F00(v30, v12, &qword_27FF2F230, &unk_26294FB50);
    v38 = &v12[*(v26 + 36)];
    *v38 = v36;
    v38[8] = v37;
    v39 = v42;
    sub_262906F00(v12, v42, &qword_27FF2F238, &unk_2629519E0);
    sub_262906F00(v39, v27, &qword_27FF2F238, &unk_2629519E0);
    v28 = 0;
  }

  return (*(v45 + 56))(v27, v28, 1, v26);
}

uint64_t sub_26290FA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F180, &qword_26294FA88);
  v3 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v73 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F170, &unk_2629518E0);
  v90 = *(v93 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v93);
  v89 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F188, &qword_26294FA90);
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  MEMORY[0x28223BE20](v7);
  v74 = &v73 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F190, &qword_26294FA98);
  v85 = *(v87 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v84 = &v73 - v11;
  v12 = sub_26294DAC8();
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F198, &qword_26294FAA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v81 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v91 = &v73 - v21;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1A0, &qword_26294FAA8);
  v78 = *(v94 - 8);
  v22 = *(v78 + 8);
  MEMORY[0x28223BE20](v94);
  v24 = &v73 - v23;
  v25 = sub_26294D448();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F158, &unk_26294FA70);
  v75 = *(v27 - 8);
  v28 = *(v75 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v73 - v29;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F148, &unk_2629518D0);
  v31 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v33 = &v73 - v32;
  v34 = type metadata accessor for ViennaCategoryView();
  v35 = a1;
  v36 = *(a1 + *(v34 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v96 == 1)
  {
    sub_26294D428();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1C0, &unk_26294FB00);
    sub_2628DFD0C(&qword_27FF2F1C8, &qword_27FF2F1C0, &unk_26294FB00);
    sub_26294D088();
    v37 = sub_2628DFD0C(&qword_27FF2F160, &qword_27FF2F158, &unk_26294FA70);
    MEMORY[0x26672CAA0](v30, v27, v37);
    v96 = v27;
    v97 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = sub_2628DFD0C(&qword_27FF2F168, &qword_27FF2F170, &unk_2629518E0);
    v40 = v94;
    MEMORY[0x26672CAB0](v24, v94, v93, OpaqueTypeConformance2, v39);
    (*(v78 + 1))(v24, v40);
    (*(v75 + 8))(v30, v27);
  }

  else
  {
    v75 = v27;
    v78 = v33;
    v41 = *(v34 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
    v42 = v35;
    v43 = v76;
    sub_26294D938();
    v45 = v79;
    v44 = v80;
    v46 = v77;
    (*(v79 + 104))(v77, *MEMORY[0x277CDF0D0], v80);
    LOBYTE(v41) = sub_26294DAB8();
    v47 = *(v45 + 8);
    v47(v46, v44);
    v47(v43, v44);
    if (v41)
    {
      v48 = sub_26294D408();
      MEMORY[0x28223BE20](v48);
      *(&v73 - 2) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1B0, &qword_26294FAF8);
      sub_2628DFD0C(&qword_27FF2F1B8, &qword_27FF2F1B0, &qword_26294FAF8);
      v49 = v84;
      sub_26294D088();
      v50 = sub_2628DFD0C(&qword_27FF2F1A8, &qword_27FF2F190, &qword_26294FA98);
      v51 = v74;
      v52 = v87;
      MEMORY[0x26672CAA0](v49, v87, v50);
      v54 = v81;
      v53 = v82;
      v55 = v83;
      (*(v82 + 16))(v81, v51, v83);
      (*(v53 + 56))(v54, 0, 1, v55);
      v96 = v52;
      v97 = v50;
      v56 = swift_getOpaqueTypeConformance2();
      MEMORY[0x26672CAD0](v54, v55, v56);
      sub_2628DF6F0(v54, &qword_27FF2F198, &qword_26294FAA0);
      (*(v53 + 8))(v51, v55);
      v57 = v85;
      (*(v85 + 8))(v49, v52);
      v58 = v93;
    }

    else
    {
      v59 = v81;
      v60 = v83;
      (*(v82 + 56))(v81, 1, 1, v83);
      v61 = sub_2628DFD0C(&qword_27FF2F1A8, &qword_27FF2F190, &qword_26294FA98);
      v52 = v87;
      v96 = v87;
      v97 = v61;
      v62 = swift_getOpaqueTypeConformance2();
      MEMORY[0x26672CAD0](v59, v60, v62);
      sub_2628DF6F0(v59, &qword_27FF2F198, &qword_26294FAA0);
      v58 = v93;
      v49 = v84;
      v57 = v85;
    }

    v63 = sub_26294D428();
    MEMORY[0x28223BE20](v63);
    *(&v73 - 2) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1B0, &qword_26294FAF8);
    sub_2628DFD0C(&qword_27FF2F1B8, &qword_27FF2F1B0, &qword_26294FAF8);
    sub_26294D088();
    v64 = *(v88 + 48);
    v65 = v91;
    v66 = v86;
    sub_262913804(v91, v86);
    (*(v57 + 16))(v66 + v64, v49, v52);
    v67 = v89;
    sub_26294D3E8();
    v68 = sub_2628DFD0C(&qword_27FF2F160, &qword_27FF2F158, &unk_26294FA70);
    v96 = v75;
    v97 = v68;
    v69 = swift_getOpaqueTypeConformance2();
    v70 = sub_2628DFD0C(&qword_27FF2F168, &qword_27FF2F170, &unk_2629518E0);
    v33 = v78;
    MEMORY[0x26672CAC0](v67, v94, v58, v69, v70);
    (*(v90 + 8))(v67, v58);
    (*(v57 + 8))(v49, v52);
    sub_2628DF6F0(v65, &qword_27FF2F198, &qword_26294FAA0);
  }

  v71 = sub_2629136CC();
  MEMORY[0x26672CAA0](v33, v92, v71);
  return sub_2628DF6F0(v33, &qword_27FF2F148, &unk_2629518D0);
}

uint64_t sub_2629106C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_26294C9D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViennaCategoryView();
  v9 = v8 - 8;
  v41 = *(v8 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v42 = v11;
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26294CA28();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 32);
  v44 = a1;
  v18 = *(a1 + v17 + 8);
  v19 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v20 = *(v18 + v19);
  v21 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v54 = *(v20 + 16);
  if (v54)
  {
    v52 = v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v57 = v4 + 16;
    v22 = (v4 + 8);
    v50 = (v13 + 8);
    v51 = v13 + 16;

    v24 = 0;
    v48 = v12;
    v49 = v4;
    v46 = v16;
    v47 = v13;
    v53 = v23;
    while (v24 < *(v23 + 16))
    {
      v25 = *(v13 + 72);
      v56 = v24;
      (*(v13 + 16))(v16, v52 + v25 * v24, v12);
      v26 = sub_26294C928();
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v4 + 80);
        v55 = v26;
        v29 = v26 + ((v28 + 32) & ~v28);
        v30 = *(v4 + 72);
        v31 = *(v4 + 16);
        v31(v7, v29, v3);
        while (1)
        {
          if (sub_26294C9B8())
          {
            sub_26294C948();
            MEMORY[0x26672D3D0]();
            if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26294DDD8();
            }

            sub_26294DDF8();
            (*v22)(v7, v3);
            v21 = v58;
          }

          else
          {
            (*v22)(v7, v3);
          }

          v29 += v30;
          if (!--v27)
          {
            break;
          }

          v31(v7, v29, v3);
        }

        v12 = v48;
        v4 = v49;
        v16 = v46;
        v13 = v47;
      }

      else
      {
      }

      v24 = v56 + 1;
      (*v50)(v16, v12);
      v23 = v53;
      if (v24 == v54)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  if (v21 >> 62)
  {
LABEL_21:
    v32 = sub_26294E008();
    goto LABEL_19;
  }

  v32 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

  v33 = v44;
  v34 = v32 == sub_26294CC88();
  v35 = v43;
  sub_26291387C(v33, v43);
  v36 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v37 = v36 + v42;
  v38 = swift_allocObject();
  v39 = sub_2629138E4(v35, v38 + v36);
  *(v38 + v37) = v34;
  MEMORY[0x28223BE20](v39);
  *(&v41 - 16) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
  sub_2629139D0();
  return sub_26294D988();
}

uint64_t sub_262910B90(uint64_t a1, char a2)
{
  v4 = *(a1 + *(type metadata accessor for ViennaCategoryView() + 24) + 8);
  v5 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v9[2] = a1;

  v7 = sub_26290E584(sub_262913A4C, v9, v6);
  sub_2628F4AC4(v7, (a2 & 1) == 0);
}

double sub_262910C44@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_26294C5F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D48E08], v4);
  v9 = (v5 + 8);
  if (a1)
  {
    v10 = sub_26294C5E8();
    v12 = v11;
    (*v9)(v8, v4);
    *&v31 = v10;
    *(&v31 + 1) = v12;
    sub_2628DF230();
    v26 = sub_26294D648();
    v27 = v13;
    v28 = v14 & 1;
    v29 = v15;
    v30 = 0;
  }

  else
  {
    v16 = sub_26294C5E8();
    v18 = v17;
    (*v9)(v8, v4);
    *&v31 = v16;
    *(&v31 + 1) = v18;
    sub_2628DF230();
    v26 = sub_26294D648();
    v27 = v20;
    v28 = v19 & 1;
    v29 = v21;
    v30 = 1;
  }

  sub_26294D3F8();
  result = *&v31;
  v23 = v32;
  v24 = v33;
  *a2 = v31;
  *(a2 + 16) = v23;
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_262910E3C(uint64_t a1)
{
  v2 = type metadata accessor for ViennaCategoryView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26291387C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2629138E4(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
  sub_2629139D0();
  return sub_26294D988();
}

uint64_t sub_262910F84(uint64_t a1)
{
  v2 = sub_26294DAC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for ViennaCategoryView();
  v11 = *(v10 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v3 + 104))(v7, *MEMORY[0x277CDF0D0], v2);
  LOBYTE(v11) = sub_26294DAB8();
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v9, v2);
  if (v11)
  {
    v13 = *(a1 + *(v10 + 24) + 8);
    v14 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
    v15 = swift_beginAccess();
    v16 = *(v13 + v14);
    MEMORY[0x28223BE20](v15);
    v20[-2] = a1;

    v17 = sub_26290E584(sub_262914554, &v20[-4], v16);
    sub_2628F4AC4(v17, 0);
  }

  v18 = sub_26294DB28();
  MEMORY[0x28223BE20](v18);
  v20[-2] = a1;
  sub_26294D108();
}

uint64_t sub_262911200(uint64_t a1)
{
  v17 = a1;
  v1 = sub_26294DAC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v18 = *(type metadata accessor for ViennaCategoryView() + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  v9 = *MEMORY[0x277CDF0D0];
  v10 = *(v2 + 104);
  v10(v6, *MEMORY[0x277CDF0D0], v1);
  v15 = sub_26294DAB8();
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v8, v1);
  if (v15)
  {
    v12 = *MEMORY[0x277CDF0D8];
  }

  else
  {
    v12 = v9;
  }

  v10(v8, v12, v1);
  (*(v2 + 16))(v6, v8, v1);
  sub_26294D948();
  return (v11)(v8, v1);
}

double sub_2629113FC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26294DAC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = *(type metadata accessor for ViennaCategoryView() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v8 + 104))(v12, *MEMORY[0x277CDF0D0], v7);
  v16 = sub_26294DAB8();
  v17 = *(v8 + 8);
  v17(v12, v7);
  v17(v14, v7);
  (*(v3 + 104))(v6, *MEMORY[0x277D48DF0], v2);
  v18 = (v3 + 8);
  if (v16)
  {
    v19 = sub_26294C5E8();
    v21 = v20;
    (*v18)(v6, v2);
    *&v40 = v19;
    *(&v40 + 1) = v21;
    sub_2628DF230();
    v35 = sub_26294D648();
    v36 = v22;
    v37 = v23 & 1;
    v38 = v24;
    v39 = 0;
  }

  else
  {
    v25 = sub_26294C5E8();
    v27 = v26;
    (*v18)(v6, v2);
    *&v40 = v25;
    *(&v40 + 1) = v27;
    sub_2628DF230();
    v35 = sub_26294D648();
    v36 = v29;
    v37 = v28 & 1;
    v38 = v30;
    v39 = 1;
  }

  sub_26294D3F8();
  result = *&v40;
  v32 = v41;
  v33 = v42;
  *a1 = v40;
  *(a1 + 16) = v32;
  *(a1 + 32) = v33;
  return result;
}

id sub_26291172C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ViennaCategoryView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = sub_26294CA28();
  (*(*(v12 - 8) + 16))(a4, a1, v12);
  v21 = *(a2 + *(v9 + 32) + 8);
  sub_26291387C(a2, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_2629138E4(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for ViennaGroupView();
  *(a4 + v16[8]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  swift_storeEnumTagMultiPayload();
  v17 = v21;
  *(a4 + v16[5]) = v21;
  *(a4 + v16[6]) = a3;
  v18 = (a4 + v16[7]);
  *v18 = sub_262914294;
  v18[1] = v14;

  return v17;
}

uint64_t sub_2629118FC()
{
  v1 = type metadata accessor for ViennaCategoryView();
  v2 = v1 - 8;
  v51 = *(v1 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v1);
  v52 = v4;
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26294C9D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_26294CA28();
  v10 = *(v67 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v67);
  v63 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v49 - v14;
  v15 = *&v0[*(v2 + 32) + 8];
  v16 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v17 = *&v15[v16];
  v18 = MEMORY[0x277D84F90];
  v69 = MEMORY[0x277D84F90];
  v64 = *(v17 + 16);
  v54 = v15;
  v55 = v0;
  if (v64)
  {
    v50 = v16;
    v62 = v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v57 = v6;
    v68 = (v6 + 8);
    v60 = (v10 + 8);
    v61 = v10 + 16;

    v20 = 0;
    v0 = v59;
    v16 = v19;
    v58 = v10;
    v56 = v19;
    do
    {
      if (v20 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v21 = *(v10 + 72);
      v66 = v20;
      (*(v10 + 16))(v0, v62 + v21 * v20, v67);
      v22 = sub_26294C928();
      v15 = *(v22 + 16);
      if (v15)
      {
        v23 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v65 = v22;
        v24 = v22 + v23;
        v25 = *(v57 + 72);
        v26 = *(v57 + 16);
        v26(v9, v22 + v23, v5);
        while (1)
        {
          if (sub_26294C9B8())
          {
            sub_26294C948();
            MEMORY[0x26672D3D0]();
            if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26294DDD8();
            }

            sub_26294DDF8();
            (*v68)(v9, v5);
            v18 = v69;
          }

          else
          {
            (*v68)(v9, v5);
          }

          v24 += v25;
          if (!--v15)
          {
            break;
          }

          v26(v9, v24, v5);
        }

        v10 = v58;
        v0 = v59;
        v16 = v56;
      }

      else
      {
      }

      v20 = v66 + 1;
      (*v60)(v0, v67);
    }

    while (v20 != v64);

    v15 = v54;
    v0 = v55;
    v16 = v50;
  }

  if (v18 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26294E008())
  {

    v29 = *&v15[v16];
    MEMORY[0x28223BE20](v28);
    *(&v49 - 2) = v0;

    v30 = sub_26290E584(sub_262914554, (&v49 - 4), v29);
    v31 = *(v30 + 16);
    if (!v31)
    {
      break;
    }

    v66 = i;
    v32 = 0;
    v34 = *(v10 + 16);
    v33 = v10 + 16;
    v15 = v34;
    v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v68 = v30;
    v36 = v30 + v35;
    v37 = *(v33 + 56);
    v16 = v33;
    v10 = v33 - 8;
    while (1)
    {
      v0 = v63;
      v38 = v67;
      (v15)(v63, v36, v67);
      v39 = sub_26294C928();
      (*v10)(v0, v38);
      v40 = *(v39 + 16);

      v41 = __OFADD__(v32, v40);
      v32 += v40;
      if (v41)
      {
        break;
      }

      v36 += v37;
      if (!--v31)
      {

        v15 = v54;
        v0 = v55;
        i = v66;
        goto LABEL_25;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v32 = 0;
LABEL_25:
  v42 = v0;
  v43 = v53;
  sub_26291387C(v42, v53);
  v44 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v45 = v44 + v52;
  v46 = swift_allocObject();
  sub_2629138E4(v43, v46 + v44);
  *(v46 + v45) = i == v32;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v69 & 1) == 0)
  {
    v47 = v15;

    sub_262904ED0(v47, v47, sub_262913BD0, v46);
  }
}

uint64_t sub_262911F34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F248, &unk_2629519F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_26294DA38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  sub_26294DA28();
  *v10 = sub_26294D338();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F250, &unk_26294FB70);
  sub_262912198(a1, &v10[*(v19 + 44)]);
  v20 = v12[2];
  v20(v16, v18, v11);
  sub_2628DF954(v10, v8, &qword_27FF2F248, &unk_2629519F0);
  v20(a2, v16, v11);
  v21 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F258, &qword_262951A00) + 48)];
  sub_2628DF954(v8, v21, &qword_27FF2F248, &unk_2629519F0);
  sub_2628DF6F0(v10, &qword_27FF2F248, &unk_2629519F0);
  v22 = v12[1];
  v22(v18, v11);
  sub_2628DF6F0(v8, &qword_27FF2F248, &unk_2629519F0);
  return (v22)(v16, v11);
}

uint64_t sub_262912198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = type metadata accessor for ViennaCategoryView();
  v4 = v3 - 8;
  v86 = *(v3 - 8);
  v5 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v87 = v6;
  v88 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F260, &unk_26294FB80);
  v7 = *(*(v85 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v85);
  v91 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v90 = &v81 - v10;
  v11 = sub_26294C5F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26294C9D8();
  v97 = *(v16 - 8);
  v17 = *(v97 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26294CA28();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v96 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 32);
  v89 = a1;
  v25 = *(a1 + v24 + 8);
  v26 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v84 = v25;
  v27 = *(v25 + v26);
  v28 = MEMORY[0x277D84F90];
  v110 = MEMORY[0x277D84F90];
  v101 = *(v27 + 16);
  if (v101)
  {
    v81 = v15;
    v82 = v12;
    v83 = v11;
    v100 = v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v99 = v21 + 16;
    v29 = v97;
    v104 = v97 + 16;
    v30 = (v97 + 8);
    v98 = (v21 + 8);

    v32 = v21;
    v33 = 0;
    v34 = v96;
    v35 = result;
    v95 = v20;
    v94 = v32;
    v93 = result;
    do
    {
      if (v33 >= *(v35 + 16))
      {
        __break(1u);
        return result;
      }

      v36 = *(v32 + 72);
      v103 = v33;
      (*(v32 + 16))(v34, v100 + v36 * v33, v20);
      v37 = sub_26294C928();
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v102 = v37;
        v40 = v37 + v39;
        v41 = *(v29 + 72);
        v42 = *(v29 + 16);
        v42(v19, v37 + v39, v16);
        while (1)
        {
          if (sub_26294C9B8())
          {
            sub_26294C948();
            MEMORY[0x26672D3D0]();
            if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26294DDD8();
            }

            sub_26294DDF8();
            (*v30)(v19, v16);
            v28 = v110;
          }

          else
          {
            (*v30)(v19, v16);
          }

          v40 += v41;
          if (!--v38)
          {
            break;
          }

          v42(v19, v40, v16);
        }

        v29 = v97;
        v20 = v95;
        v32 = v94;
        v34 = v96;
        v35 = v93;
      }

      else
      {
      }

      v33 = v103 + 1;
      result = (*v98)(v34, v20);
    }

    while (v33 != v101);

    v43 = v83;
    v12 = v82;
    v15 = v81;
    if (v28 >> 62)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v43 = v11;
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_20:
      v104 = sub_26294E008();
      goto LABEL_18;
    }
  }

  v104 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

  (*(v12 + 104))(v15, *MEMORY[0x277D48E08], v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26294ECB0;
  v45 = sub_2628FAC30();
  v46 = MEMORY[0x277D83C10];
  *(v44 + 56) = MEMORY[0x277D83B88];
  *(v44 + 64) = v46;
  *(v44 + 32) = v45;
  v47 = sub_26294C6B8();
  v49 = v48;

  (*(v12 + 8))(v15, v43);
  v110 = v47;
  v111 = v49;
  sub_2628DF230();
  v50 = sub_26294D648();
  v52 = v51;
  v54 = v53;
  sub_26294D5D8();
  v55 = sub_26294D638();
  v102 = v56;
  v58 = v57;
  v103 = v59;

  sub_2628DF758(v50, v52, v54 & 1);

  LODWORD(v101) = sub_26294D528();
  LOBYTE(v110) = v58 & 1;
  LOBYTE(v52) = v58 & 1;
  LODWORD(v100) = v58 & 1;
  LOBYTE(v107) = 1;
  v60 = sub_26294DB08();
  v62 = v61;
  v63 = v90;
  v64 = &v90[*(v85 + 36)];
  v65 = v88;
  sub_26291387C(v89, v88);
  v66 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v67 = swift_allocObject();
  sub_2629138E4(v65, v67 + v66);
  sub_26294D988();
  LOBYTE(v65) = v104 == 0;
  KeyPath = swift_getKeyPath();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  v70 = &v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F268, &unk_26294FBC0) + 36)];
  *v70 = KeyPath;
  v70[1] = sub_262913BC8;
  v70[2] = v69;
  LOBYTE(KeyPath) = sub_26294D528();
  v71 = &v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F270, &unk_262951A40) + 36)];
  *v71 = KeyPath;
  *(v71 + 8) = 0u;
  *(v71 + 24) = 0u;
  v71[40] = 1;
  v72 = &v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F278, &unk_26294FBD0) + 36)];
  *v72 = v60;
  v72[1] = v62;
  *v63 = 0;
  *(v63 + 8) = 1;
  v73 = v91;
  sub_2628DF954(v63, v91, &qword_27FF2F260, &unk_26294FB80);
  v74 = v55;
  *&v107 = v55;
  v75 = v102;
  *(&v107 + 1) = v102;
  LOBYTE(v108) = v52;
  *(&v108 + 1) = *v106;
  DWORD1(v108) = *&v106[3];
  v76 = v103;
  *(&v108 + 1) = v103;
  LOBYTE(v62) = v101;
  v109[0] = v101;
  *&v109[1] = *v105;
  *&v109[4] = *&v105[3];
  memset(&v109[8], 0, 32);
  v109[40] = 1;
  v77 = *&v109[16];
  v78 = v92;
  *(v92 + 48) = *v109;
  *(v78 + 64) = v77;
  *(v78 + 73) = *&v109[25];
  v79 = v108;
  *(v78 + 16) = v107;
  *(v78 + 32) = v79;
  *v78 = 0;
  *(v78 + 8) = 1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F280, &unk_262951A50);
  sub_2628DF954(v73, v78 + *(v80 + 64), &qword_27FF2F260, &unk_26294FB80);
  sub_2628DF954(&v107, &v110, &qword_27FF2F288, &qword_26294FBE0);
  sub_2628DF6F0(v63, &qword_27FF2F260, &unk_26294FB80);
  sub_2628DF6F0(v73, &qword_27FF2F260, &unk_26294FB80);
  v110 = v74;
  v111 = v75;
  v112 = v100;
  *v113 = *v106;
  *&v113[3] = *&v106[3];
  v114 = v76;
  v115 = v62;
  *v116 = *v105;
  *&v116[3] = *&v105[3];
  v117 = 0u;
  v118 = 0u;
  v119 = 1;
  return sub_2628DF6F0(&v110, &qword_27FF2F288, &qword_26294FBE0);
}

uint64_t sub_262912C38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D48DF0], v2);
  v7 = sub_26294C5E8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v23 = v7;
  v24 = v9;
  sub_2628DF230();
  v10 = sub_26294D648();
  v12 = v11;
  LOBYTE(v7) = v13;
  v23 = sub_26294D858();
  v14 = sub_26294D618();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2628DF758(v10, v12, v7 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_262912E00(int a1, uint64_t a2, int a3)
{
  v55 = a1;
  LODWORD(v56) = a3;
  v4 = sub_26294D168();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v49 - v8;
  v9 = type metadata accessor for ViennaCategoryView();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_26294D0F8();
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v53);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26294DAC8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  v57 = v9;
  v24 = *(v9 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v17 + 104))(v21, *MEMORY[0x277CDF0D0], v16);
  LOBYTE(v24) = sub_26294DAB8();
  v25 = *(v17 + 8);
  v25(v21, v16);
  result = (v25)(v23, v16);
  if (v24)
  {
    MEMORY[0x28223BE20](result);
    *(&v49 - 2) = a2;
    sub_26294DB18();
    sub_26294D108();
  }

  v27 = a2;
  v28 = v57;
  if (v56 & 1) != 0 && (v55)
  {
    v29 = a2 + *(v57 + 36);
    sub_26291D460(v15);
    sub_26294D0E8();
    (*(v12 + 8))(v15, v53);
    if (qword_27FF2E7C0 != -1)
    {
      swift_once();
    }

    v30 = sub_26294CE48();
    __swift_project_value_buffer(v30, qword_27FF314B0);
    v31 = v54;
    sub_26291387C(a2, v54);
    v32 = sub_26294CE28();
    v33 = sub_26294DE98();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58 = v56;
      *v34 = 136315394;
      *(v34 + 4) = sub_2628FB76C(0xD000000000000010, 0x800000026295E850, &v58);
      *(v34 + 12) = 2048;
      v35 = *(v31 + *(v28 + 24) + 8);
      v36 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
      v37 = swift_beginAccess();
      v38 = *(v35 + v36);
      MEMORY[0x28223BE20](v37);
      *(&v49 - 2) = v31;

      v39 = *(sub_26290E584(sub_262914554, (&v49 - 4), v38) + 16);

      sub_262913C60(v31);
      *(v34 + 14) = v39;
      v28 = v57;
      _os_log_impl(&dword_2628DB000, v32, v33, "%s Vienna groups here %ld", v34, 0x16u);
      v40 = v56;
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x26672DCE0](v40, -1, -1);
      MEMORY[0x26672DCE0](v34, -1, -1);
    }

    else
    {
      sub_262913C60(v31);
    }

    v41 = *&v27[*(v28 + 24) + 8];
    v42 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
    v43 = swift_beginAccess();
    v44 = *(v41 + v42);
    MEMORY[0x28223BE20](v43);
    *(&v49 - 2) = v27;

    v45 = *(sub_26290E584(sub_262914554, (&v49 - 4), v44) + 16);

    if (!v45)
    {
      v46 = *(v28 + 28);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
      v48 = v49;
      MEMORY[0x26672D010]();
      sub_26294D138();
      (*(v50 + 8))(v48, v51);
      MEMORY[0x26672D010](v47);
      sub_26294D128();
      return sub_26294D9F8();
    }
  }

  return result;
}

uint64_t sub_262913468()
{
  v0 = sub_26294DAC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  (*(v1 + 104))(v10 - v6, *MEMORY[0x277CDF0D8], v0);
  v8 = *(type metadata accessor for ViennaCategoryView() + 32);
  (*(v1 + 16))(v5, v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D948();
  return (*(v1 + 8))(v7, v0);
}

unint64_t sub_2629135E0()
{
  result = qword_27FF2F120;
  if (!qword_27FF2F120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F0F0, &qword_26294F9F8);
    sub_2628DFD0C(&qword_27FF2F128, &qword_27FF2F130, &qword_26294FA58);
    sub_2628DFD0C(&qword_27FF2F138, &qword_27FF2F110, &unk_2629518B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F120);
  }

  return result;
}

unint64_t sub_2629136CC()
{
  result = qword_27FF2F150;
  if (!qword_27FF2F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F148, &unk_2629518D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F158, &unk_26294FA70);
    sub_2628DFD0C(&qword_27FF2F160, &qword_27FF2F158, &unk_26294FA70);
    swift_getOpaqueTypeConformance2();
    sub_2628DFD0C(&qword_27FF2F168, &qword_27FF2F170, &unk_2629518E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F150);
  }

  return result;
}

uint64_t sub_262913804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F198, &qword_26294FAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26291387C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaCategoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629138E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaCategoryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262913948()
{
  v1 = *(type metadata accessor for ViennaCategoryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_262910B90(v2, v3);
}

unint64_t sub_2629139D0()
{
  result = qword_27FF2F1D8;
  if (!qword_27FF2F1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F1D0, &unk_26294FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F1D8);
  }

  return result;
}

uint64_t sub_262913A70()
{
  v1 = *(type metadata accessor for ViennaCategoryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_262910F84(v2);
}

unint64_t sub_262913AFC()
{
  result = qword_27FF2F208;
  if (!qword_27FF2F208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F200, &qword_26294FB38);
    sub_262913FE4(&qword_27FF2F210, type metadata accessor for ViennaGroupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F208);
  }

  return result;
}

uint64_t sub_262913BD0(int a1)
{
  v3 = *(type metadata accessor for ViennaCategoryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_262912E00(a1, v4, v5);
}

uint64_t sub_262913C60(uint64_t a1)
{
  v2 = type metadata accessor for ViennaCategoryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for ViennaCategoryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_26294CCB8();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  v8 = sub_26294C7A8();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = (v0 + v3 + v1[9]);
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v13 = sub_26294D168();
  (*(*(v13 - 8) + 8))(&v9[v12], v13);
  v14 = v0 + v3 + v1[10];
  v15 = sub_26294DAC8();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978) + 28));

  v17 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_26294D0F8();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  else
  {
    v19 = *(v5 + v17);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

id sub_262913F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ViennaCategoryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_26291172C(a1, v6, v7, a2);
}

uint64_t sub_262913FE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for ViennaCategoryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_26294CCB8();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  v8 = sub_26294C7A8();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = (v0 + v3 + v1[9]);
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v13 = sub_26294D168();
  (*(*(v13 - 8) + 8))(&v9[v12], v13);
  v14 = v0 + v3 + v1[10];
  v15 = sub_26294DAC8();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978) + 28));

  v17 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_26294D0F8();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  else
  {
    v19 = *(v5 + v17);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_262914298()
{
  v1 = *(type metadata accessor for ViennaCategoryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2629118FC();
}

unint64_t sub_2629142F8()
{
  result = qword_27FF2F2B0;
  if (!qword_27FF2F2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F2B8, &qword_26294FBF8);
    sub_26291437C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F2B0);
  }

  return result;
}

unint64_t sub_26291437C()
{
  result = qword_27FF2F2C0;
  if (!qword_27FF2F2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F178, &qword_26294FA80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F100, &qword_26294FA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F0F8, &qword_26294FA00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F140, &unk_26294FA60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F0F0, &qword_26294F9F8);
    sub_2629135E0();
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F148, &unk_2629518D0);
    sub_2629136CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2628E01B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F2C0);
  }

  return result;
}

uint64_t sub_262914570(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2629145B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_262914620@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26294C538();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_262914688@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2D0, &unk_26294FC90);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_26294D338();
  v27 = v11;
  v30 = 1;
  sub_262914984(a1, v34);
  memcpy(v31, v34, sizeof(v31));
  memcpy(v32, v34, sizeof(v32));
  sub_2628DF954(v31, v33, &qword_27FF2E8F8, &unk_26294F910);
  sub_2628DF6F0(v32, &qword_27FF2E8F8, &unk_26294F910);
  memcpy(&v29[7], v31, 0x120uLL);
  v12 = v30;
  v13 = sub_26294D518();
  sub_26294D058();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_262914FC8(v10);
  v22 = v4[2];
  v22(v8, v10, v3);
  v33[0] = v11;
  v33[1] = 0;
  LOBYTE(v33[2]) = v12;
  memcpy(&v33[2] + 1, v29, 0x127uLL);
  LOBYTE(v33[39]) = v13;
  v33[40] = v15;
  v33[41] = v17;
  v33[42] = v19;
  v33[43] = v21;
  LOBYTE(v33[44]) = 0;
  v23 = v28;
  memcpy(v28, v33, 0x161uLL);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2D8, &qword_26294FCA0);
  v22(&v23[*(v24 + 48)], v8, v3);
  sub_2628DF954(v33, v34, &qword_27FF2F2E0, &qword_26294FCA8);
  v25 = v4[1];
  v25(v10, v3);
  v25(v8, v3);
  v34[0] = v27;
  v34[1] = 0;
  LOBYTE(v34[2]) = v12;
  memcpy(&v34[2] + 1, v29, 0x127uLL);
  v35 = v13;
  v36 = v15;
  v37 = v17;
  v38 = v19;
  v39 = v21;
  v40 = 0;
  return sub_2628DF6F0(v34, &qword_27FF2F2E0, &qword_26294FCA8);
}

uint64_t sub_262914984@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v53 = a1;
  v56 = a2;
  v2 = sub_26294CDF8();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26294C5F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D48E08], v5);
  v10 = sub_26294C5E8();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v95 = v10;
  v96 = v12;
  v48 = sub_2628DF230();
  v13 = sub_26294D648();
  v15 = v14;
  LOBYTE(v10) = v16;
  sub_26294D598();
  v17 = sub_26294D638();
  v19 = v18;
  LOBYTE(v12) = v20;

  sub_2628DF758(v13, v15, v10 & 1);

  sub_26294D898();
  v21 = sub_26294D608();
  v50 = v22;
  v51 = v21;
  v24 = v23;
  v52 = v25;

  sub_2628DF758(v17, v19, v12 & 1);

  sub_26294DAF8();
  sub_26294D1F8();
  v57 = v24 & 1;
  v117 = v24 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v49;
  sub_26294CFF8();

  sub_26294CDA8();
  v28 = v27;
  (*(v54 + 8))(v26, v55);
  v95 = sub_2629205EC(v28);
  v96 = v29;
  v30 = sub_26294D648();
  v32 = v31;
  LOBYTE(v19) = v33;
  sub_26294D598();
  v34 = sub_26294D638();
  v36 = v35;
  LOBYTE(v15) = v37;

  sub_2628DF758(v30, v32, v19 & 1);

  sub_26294D8A8();
  v38 = sub_26294D608();
  v40 = v39;
  LOBYTE(v12) = v41;
  v43 = v42;

  sub_2628DF758(v34, v36, v15 & 1);

  sub_26294DB08();
  sub_26294D1F8();
  LOBYTE(v32) = v12 & 1;
  v108 = v12 & 1;
  v45 = v50;
  v44 = v51;
  *&v66 = v51;
  *(&v66 + 1) = v50;
  LOBYTE(v67) = v57;
  *(&v67 + 1) = *v116;
  DWORD1(v67) = *&v116[3];
  v46 = v52;
  *(&v67 + 1) = v52;
  v72 = v113;
  v73 = v114;
  v74 = v115;
  v68 = v109;
  v69 = v110;
  v70 = v111;
  v71 = v112;
  v58[6] = v113;
  v58[7] = v114;
  v58[2] = v109;
  v58[3] = v110;
  v58[4] = v111;
  v58[5] = v112;
  v58[0] = v66;
  v58[1] = v67;
  *&v75 = v38;
  *(&v75 + 1) = v40;
  LOBYTE(v76) = v32;
  *(&v76 + 1) = *v107;
  DWORD1(v76) = *&v107[3];
  *(&v76 + 1) = v43;
  v81 = v63;
  v82 = v64;
  v83 = v65;
  v77 = v59;
  v78 = v60;
  v79 = v61;
  v80 = v62;
  v58[12] = v60;
  v58[13] = v61;
  v58[10] = v76;
  v58[11] = v59;
  v58[14] = v62;
  v58[15] = v63;
  v58[16] = v64;
  v58[17] = v65;
  v58[8] = v115;
  v58[9] = v75;
  memcpy(v56, v58, 0x120uLL);
  v84[0] = v38;
  v84[1] = v40;
  v85 = v32;
  *v86 = *v107;
  *&v86[3] = *&v107[3];
  v87 = v43;
  v92 = v63;
  v93 = v64;
  v94 = v65;
  v88 = v59;
  v89 = v60;
  v90 = v61;
  v91 = v62;
  sub_2628DF954(&v66, &v95, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF954(&v75, &v95, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF6F0(v84, &qword_27FF2E900, &qword_26294FDB0);
  v95 = v44;
  v96 = v45;
  v97 = v57;
  *v98 = *v116;
  *&v98[3] = *&v116[3];
  v99 = v46;
  v104 = v113;
  v105 = v114;
  v106 = v115;
  v100 = v109;
  v101 = v110;
  v102 = v111;
  v103 = v112;
  return sub_2628DF6F0(&v95, &qword_27FF2E900, &qword_26294FDB0);
}

uint64_t sub_262914FC8@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v94 = sub_26294C538();
  v1 = *(v94 - 1);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = (&v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2E8, &qword_26294FCB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v70 - v6;
  v92 = type metadata accessor for SEStorageSummaryView.Bar();
  v8 = *(v92 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2F0, &qword_26294FCB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v81 = &v70 - v13;
  v82 = sub_26294CF58();
  v80 = *(v82 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v77 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2F8, &qword_26294FCC0);
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = *(v85 + 64);
  MEMORY[0x28223BE20](v16);
  v84 = &v70 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F300, &qword_26294FCC8);
  v71 = *(v74 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x28223BE20](v74);
  v87 = &v70 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F308, &qword_26294FCD0);
  v78 = *(v79 - 8);
  v21 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v70 - v22;
  v76 = sub_26294CDF8();
  v73 = *(v76 - 8);
  v23 = *(v73 + 64);
  MEMORY[0x28223BE20](v76);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v72 = v25;
  sub_26294CDC8();
  v27 = v26;
  v28 = sub_2628E3024();
  v29 = *(v28 + 16);
  if (v29)
  {
    v70 = v28;
    v30 = v28 + 32;
    v89 = (v8 + 56);
    v90 = (v1 + 32);
    v88 = v8;
    v31 = (v8 + 48);
    v32 = MEMORY[0x277D84F90];
    do
    {
      sub_262906C54(v30, &v95);
      __swift_project_boxed_opaque_existential_1(&v95, v98);
      v33 = sub_26294C698();
      v35 = v34;
      __swift_project_boxed_opaque_existential_1(&v95, v98);
      sub_26294C6A8();
      v37 = v36;
      v38 = v93;
      sub_26294C528();
      (*v90)(v7, v38, v94);
      v39 = v92;
      v40 = &v7[*(v92 + 20)];
      *v40 = v33;
      v40[1] = v35;
      *&v7[*(v39 + 24)] = v37;
      (*v89)(v7, 0, 1, v39);
      __swift_destroy_boxed_opaque_existential_1Tm(&v95);
      if ((*v31)(v7, 1, v39) == 1)
      {
        sub_2628DF6F0(v7, &qword_27FF2F2E8, &qword_26294FCB0);
      }

      else
      {
        sub_2629175E8(v7, v91);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_26291D980(0, v32[2] + 1, 1, v32);
        }

        v42 = v32[2];
        v41 = v32[3];
        if (v42 >= v41 >> 1)
        {
          v32 = sub_26291D980(v41 > 1, v42 + 1, 1, v32);
        }

        v32[2] = v42 + 1;
        sub_2629175E8(v91, v32 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v42);
      }

      v30 += 40;
      --v29;
    }

    while (v29);
  }

  MEMORY[0x28223BE20](v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F310, &qword_26294FD20);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F318, &qword_26294FD28);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F320, &qword_26294FD30);
  v46 = sub_2628DFD0C(&qword_27FF2F328, &qword_27FF2F318, &qword_26294FD28);
  v47 = sub_26294CED8();
  v48 = sub_26294D1D8();
  v49 = sub_262917BB8(&qword_27FF2F330, MEMORY[0x277CDFC08]);
  v95 = v47;
  v96 = v48;
  v97 = MEMORY[0x277CBB2F8];
  v98 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = v44;
  v96 = v45;
  v97 = v46;
  v98 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v51 = v84;
  sub_26294CF78();

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F338, &qword_26294FD38);
  v53 = sub_2628DFD0C(&qword_27FF2F340, &qword_27FF2F2F8, &qword_26294FCC0);
  v54 = sub_2629174A8();
  v56 = v86;
  v55 = v87;
  sub_26294D678();
  result = (*(v85 + 8))(v51, v56);
  if (v27 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v101 = 0;
    v102 = v27;
    v58 = v77;
    sub_26294CF48();
    v59 = sub_26294CFB8();
    v60 = v81;
    (*(*(v59 - 8) + 56))(v81, 1, 1, v59);
    v61 = v55;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F358, &qword_26294FD40);
    v95 = v56;
    v96 = v52;
    v97 = v53;
    v98 = v54;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = sub_262917564();
    v65 = v75;
    v66 = v74;
    v94 = &v70;
    v67 = v82;
    sub_26294D668();
    sub_2628DF6F0(v60, &qword_27FF2F2F0, &qword_26294FCB8);
    (*(v80 + 8))(v58, v67);
    v68 = (*(v71 + 8))(v61, v66);
    v93 = &v70;
    MEMORY[0x28223BE20](v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F368, &qword_26294FD48);
    v95 = v66;
    v96 = v62;
    v97 = v67;
    v98 = v63;
    v99 = v64;
    v100 = MEMORY[0x277CBB3C0];
    swift_getOpaqueTypeConformance2();
    sub_2628DFD0C(&qword_27FF2F370, &qword_27FF2F368, &qword_26294FD48);
    v69 = v79;
    sub_26294D658();
    (*(v78 + 8))(v65, v69);
    return (*(v73 + 8))(v72, v76);
  }

  return result;
}

uint64_t sub_262915B9C(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F318, &qword_26294FD28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v15 = a2;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F380, &qword_26294FD58);
  sub_262917658();
  sub_26294CF68();
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F320, &qword_26294FD30);
  sub_2628DFD0C(&qword_27FF2F328, &qword_27FF2F318, &qword_26294FD28);
  v9 = sub_26294CED8();
  v10 = sub_26294D1D8();
  v11 = sub_262917BB8(&qword_27FF2F330, MEMORY[0x277CDFC08]);
  v17 = v9;
  v18 = v10;
  v19 = MEMORY[0x277CBB2F8];
  v20 = v11;
  swift_getOpaqueTypeConformance2();
  sub_26294CEA8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_262915DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<D0>)
{
  v70 = a1;
  v75 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3B8, &qword_26294FD80);
  v5 = *(v4 - 8);
  v74 = v4 - 8;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3A0, &qword_26294FD68);
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v62 - v12;
  v68 = sub_26294C5F8();
  v67 = *(v68 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3B0, &qword_26294FD78);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v17);
  v18 = sub_26294CED8();
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F390, &qword_26294FD60);
  v65 = *(v64 - 8);
  v22 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  v24 = &v62 - v23;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3C0, &qword_26294FD88);
  v78 = *(v69 - 8);
  v25 = *(v78 + 64);
  v26 = MEMORY[0x28223BE20](v69);
  v77 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v76 = &v62 - v28;
  sub_26294D368();
  v81 = 0;
  sub_26294CF08();

  sub_26294D368();
  v81 = a3;
  sub_26294CF08();

  sub_26294CEC8();
  v81 = sub_26294D888();
  v29 = MEMORY[0x277CE0F78];
  v30 = MEMORY[0x277CBB2F8];
  v31 = MEMORY[0x277CE0F60];
  sub_26294CE88();

  (*(v63 + 8))(v21, v18);
  v32 = v67;
  v33 = v66;
  v34 = v68;
  (*(v67 + 104))(v66, *MEMORY[0x277D48E08], v68);
  v35 = sub_26294C5E8();
  v37 = v36;
  (*(v32 + 8))(v33, v34);
  v85 = v35;
  v86 = v37;
  v81 = v18;
  v82 = v29;
  v83 = v30;
  v84 = v31;
  swift_getOpaqueTypeConformance2();
  v38 = sub_2628DF230();
  v39 = MEMORY[0x277D837D0];
  v40 = v76;
  v41 = v64;
  sub_26294CE98();

  (*(v65 + 8))(v24, v41);
  v85 = v70;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3C8, &qword_26294FD90);
  sub_26294C538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3D0, &qword_26294FD98);
  sub_2628DFD0C(&qword_27FF2F3D8, &qword_27FF2F3C8, &qword_26294FD90);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F3A8, &qword_26294FD70);
  v81 = sub_26294CF98();
  v82 = v39;
  v83 = MEMORY[0x277CBB400];
  v84 = MEMORY[0x277CBB570];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = v42;
  v82 = v39;
  v83 = OpaqueTypeConformance2;
  v84 = v38;
  swift_getOpaqueTypeConformance2();
  sub_262917BB8(&qword_27FF2F3E0, type metadata accessor for SEStorageSummaryView.Bar);
  v44 = v79;
  sub_26294DA48();
  v45 = v77;
  v46 = *(v78 + 16);
  v47 = v69;
  v46(v77, v40, v69);
  v49 = v71;
  v48 = v72;
  v50 = *(v71 + 16);
  v51 = v80;
  v50(v80, v44, v72);
  v52 = v73;
  v53 = v45;
  v54 = v47;
  v46(v73, v53, v47);
  sub_262917788();
  v55 = v74;
  v56 = *(v74 + 56);
  v50(&v52[v56], v51, v48);
  v57 = v78;
  v58 = v75;
  (*(v78 + 32))(v75, v52, v54);
  (*(v49 + 32))(v58 + *(v55 + 56), &v52[v56], v48);
  v59 = *(v49 + 8);
  v59(v79, v48);
  v60 = *(v57 + 8);
  v60(v76, v54);
  v59(v80, v48);
  return (v60)(v77, v54);
}

uint64_t sub_2629166B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v48 = sub_26294C5F8();
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3E8, &unk_26294FDA0);
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v41 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3B0, &qword_26294FD78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = sub_26294CF98();
  v42 = *(v40 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3A8, &qword_26294FD70);
  v49 = *(v47 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v39 - v14;
  sub_26294D368();
  v15 = type metadata accessor for SEStorageSummaryView.Bar();
  v52 = *(a1 + *(v15 + 24));
  v16 = v52;
  sub_26294CF08();

  sub_26294CF88();
  sub_26294D368();
  v17 = (a1 + *(v15 + 20));
  v19 = *(v17 + 1);
  v52 = *v17;
  v18 = v52;
  v53 = v19;
  swift_bridgeObjectRetain_n();
  v20 = MEMORY[0x277D837D0];
  v21 = v41;
  sub_26294CF08();

  v22 = v21;
  v23 = v40;
  sub_26294CE78();
  (*(v43 + 8))(v22, v44);
  v24 = v12;
  v25 = *&v23;
  (*(v42 + 8))(v24, v23);
  v27 = v45;
  v26 = v46;
  v28 = v48;
  (*(v46 + 104))(v45, *MEMORY[0x277D48E08], v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26294E7D0;
  *(v29 + 56) = v20;
  v30 = sub_2628DF5B8();
  *(v29 + 64) = v30;
  *(v29 + 32) = v18;
  *(v29 + 40) = v19;
  v31 = sub_2629205EC(v16);
  *(v29 + 96) = v20;
  *(v29 + 104) = v30;
  *(v29 + 72) = v31;
  *(v29 + 80) = v32;
  v33 = sub_26294C6B8();
  v35 = v34;

  (*(v26 + 8))(v27, v28);
  v56 = v33;
  v57 = v35;
  v52 = v25;
  v53 = v20;
  v54 = MEMORY[0x277CBB400];
  v55 = MEMORY[0x277CBB570];
  swift_getOpaqueTypeConformance2();
  sub_2628DF230();
  v36 = v47;
  v37 = v51;
  sub_26294CE98();

  return (*(v49 + 8))(v37, v36);
}

uint64_t sub_262916C54@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v25 = a1;
  v24 = sub_26294D1D8();
  v3 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F3B0, &qword_26294FD78);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v23 = sub_26294CED8();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v23);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294D368();
  v26 = 0.0;
  sub_26294CF08();

  sub_26294D368();
  v26 = a2;
  sub_26294CF08();

  sub_26294CEC8();
  v13 = *(v24 + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_26294D378();
  (*(*(v15 - 8) + 104))(&v5[v13], v14, v15);
  __asm { FMOV            V0.2D, #5.0 }

  *v5 = _Q0;
  sub_262917BB8(&qword_27FF2F330, MEMORY[0x277CDFC08]);
  v21 = v23;
  sub_26294CEB8();
  sub_2629178A8(v5);
  return (*(v9 + 8))(v12, v21);
}

double sub_262916F78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26294DAE8();
  sub_26294D0D8();
  v4 = sub_26294CF38();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F338, &qword_26294FD38) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_262917030(double a1)
{
  v2 = sub_26294CF28();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_26294CEF8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F378, &qword_26294FD50);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26294E7D0;
  *(v6 + 32) = 0;
  *(v6 + 40) = a1;
  sub_26294CEE8();
  sub_26294CF18();
  sub_26294CE68();
  return sub_26294CFA8();
}

uint64_t sub_2629171FC@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_26294D3C8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2C8, &qword_26294FC88);
  return sub_262914688(v3, (a1 + *(v5 + 44)));
}

uint64_t type metadata accessor for SEStorageSummaryView.Bar()
{
  result = qword_27FF2F3F0;
  if (!qword_27FF2F3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629172AC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();
}

uint64_t sub_26291732C(uint64_t a1, void **a2)
{
  v4 = sub_26294CDF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);
  v14 = v13;
  sub_26294D008();
  return (*(v5 + 8))(v11, v4);
}

unint64_t sub_2629174A8()
{
  result = qword_27FF2F348;
  if (!qword_27FF2F348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F338, &qword_26294FD38);
    sub_262917BB8(&qword_27FF2F350, MEMORY[0x277CBB360]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F348);
  }

  return result;
}

unint64_t sub_262917564()
{
  result = qword_27FF2F360;
  if (!qword_27FF2F360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F358, &qword_26294FD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F360);
  }

  return result;
}

uint64_t sub_2629175E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageSummaryView.Bar();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_262917658()
{
  result = qword_27FF2F388;
  if (!qword_27FF2F388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F380, &qword_26294FD58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F390, &qword_26294FD60);
    sub_26294CED8();
    swift_getOpaqueTypeConformance2();
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_262917788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F388);
  }

  return result;
}

unint64_t sub_262917788()
{
  result = qword_27FF2F398;
  if (!qword_27FF2F398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F3A0, &qword_26294FD68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F3A8, &qword_26294FD70);
    sub_26294CF98();
    swift_getOpaqueTypeConformance2();
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F398);
  }

  return result;
}

uint64_t sub_2629178A8(uint64_t a1)
{
  v2 = sub_26294D1D8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262917918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26294C538();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2629179EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26294C538();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_262917AA8()
{
  result = sub_26294C538();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_262917BB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_262917C14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26294C7A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_262917DB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26294C7A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for ViennaAppCategoryView()
{
  result = qword_27FF2F410;
  if (!qword_27FF2F410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_262917F94()
{
  sub_26294C7A8();
  if (v0 <= 0x3F)
  {
    sub_2628DCCD8();
    if (v1 <= 0x3F)
    {
      sub_2628DCD6C(319, &qword_27FF2E808, MEMORY[0x277CDD968], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_2628DCD6C(319, &qword_27FF2E810, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26291817C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t sub_262918378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  *a2 = v5;
  return result;
}

void sub_2629183F8(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  sub_26294D008();
  sub_2628E2DAC();
}

uint64_t sub_26291852C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a3(0) - 8);
  v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  sub_26291E258(a4, a5);
  v12 = 0;
  while ((sub_26294DD48() & 1) == 0)
  {
    ++v12;
    v10 += v11;
    if (v5 == v12)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sub_2629186D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-v3];
  v5 = *(v0 + *(type metadata accessor for ViennaAppCategoryView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v11 = v0;
  sub_26291817C(sub_26291E90C, v12, MEMORY[0x277D48E58], v4);

  v6 = sub_26294C7A8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_2628DF6F0(v4, &qword_27FF2E920, &unk_26294F920);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v9 = sub_26294C738();
    (*(v7 + 8))(v4, v6);
    return v9;
  }
}

uint64_t sub_26291889C()
{
  v0 = sub_26294C788();
  v2 = v1;
  if (v0 == sub_26294C788() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26294E058();
  }

  return v4 & 1;
}

uint64_t sub_262918938@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F420, &qword_26294FE68);
  v73 = *(v87 - 8);
  v2 = *(v73 + 64);
  MEMORY[0x28223BE20](v87);
  v72 = &v69 - v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F428, &qword_26294FE70);
  v4 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v69 - v5;
  v6 = type metadata accessor for ViennaAppCategoryView();
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = v8;
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F430, &qword_26294FE78);
  v9 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v74 = (&v69 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F438, &qword_26294FE80);
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v11);
  v80 = &v69 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F440, &qword_26294FE88);
  v14 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v70 = &v69 - v15;
  v16 = sub_26294C8A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v6;
  v21 = *(v6 + 20);
  OpaqueTypeConformance2 = v1;
  v22 = *(v1 + v21 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = v22;
  sub_26294CFF8();

  v24 = 0;
  v25 = v88;
  v26 = *(v88 + 16);
  while (v26 != v24)
  {
    if (v24 >= *(v25 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v17 + 16))(v20, v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24++, v16);
    v27 = sub_26294C808();
    result = (*(v17 + 8))(v20, v16);
    if ((v27 & 1) == 0)
    {

      v28 = OpaqueTypeConformance2;
LABEL_7:
      v29 = sub_26294D3C8();
      v30 = v74;
      *v74 = v29;
      *(v30 + 8) = 0;
      *(v30 + 16) = 1;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F448, &qword_26294FED8);
      sub_2629193E4(v30 + *(v31 + 44));
      v88 = sub_26294C778();
      v89 = v32;
      v33 = sub_2628DFD0C(&qword_27FF2F450, &qword_27FF2F430, &qword_26294FE78);
      v34 = sub_2628DF230();
      v35 = v80;
      v36 = v78;
      sub_26294D708();

      sub_2628DF6F0(v30, &qword_27FF2F430, &qword_26294FE78);
      v37 = sub_26294CCB8();
      v38 = v77;
      sub_26291C188(v28, v77);
      v39 = (*(v75 + 80) + 16) & ~*(v75 + 80);
      v40 = swift_allocObject();
      sub_26291C1F0(v38, v40 + v39);
      v41 = type metadata accessor for ViennaCategoryView();
      v88 = v36;
      v89 = MEMORY[0x277D837D0];
      v90 = v33;
      v91 = v34;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v42 = sub_26291E258(&qword_27FF2F458, MEMORY[0x277D48FC8]);
      v67 = sub_26291E258(&qword_27FF2F460, type metadata accessor for ViennaCategoryView);
      v43 = v72;
      v44 = v82;
      sub_26294D778();

      (*(v81 + 8))(v35, v44);
      v45 = v73;
      v46 = v87;
      (*(v73 + 16))(v85, v43, v87);
      swift_storeEnumTagMultiPayload();
      sub_26291C254();
      v88 = v44;
      v89 = v37;
      v90 = v41;
      v91 = OpaqueTypeConformance2;
      v92 = v42;
      v93 = v67;
      swift_getOpaqueTypeConformance2();
      sub_26294D3F8();
      return (*(v45 + 8))(v43, v46);
    }
  }

  v28 = OpaqueTypeConformance2;
  if (*(OpaqueTypeConformance2 + *(v71 + 28)))
  {
    goto LABEL_7;
  }

  v47 = sub_26294D3C8();
  v48 = v74;
  *v74 = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F448, &qword_26294FED8);
  sub_2629193E4(v48 + *(v49 + 44));
  v88 = sub_26294C778();
  v89 = v50;
  v51 = sub_2628DFD0C(&qword_27FF2F450, &qword_27FF2F430, &qword_26294FE78);
  v52 = sub_2628DF230();
  v53 = v80;
  v54 = v78;
  sub_26294D708();

  sub_2628DF6F0(v48, &qword_27FF2F430, &qword_26294FE78);
  v55 = sub_26294CCB8();
  v56 = v77;
  sub_26291C188(v28, v77);
  v57 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v58 = swift_allocObject();
  sub_26291C1F0(v56, v58 + v57);
  OpaqueTypeConformance2 = type metadata accessor for ViennaCategoryView();
  v88 = v54;
  v89 = MEMORY[0x277D837D0];
  v90 = v51;
  v91 = v52;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = sub_26291E258(&qword_27FF2F458, MEMORY[0x277D48FC8]);
  v68 = sub_26291E258(&qword_27FF2F460, type metadata accessor for ViennaCategoryView);
  v61 = v70;
  v62 = v82;
  sub_26294D778();

  (*(v81 + 8))(v53, v62);
  type metadata accessor for SEStorageManagementController();
  sub_26291E258(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
  v63 = v69;
  v64 = sub_26294D178();
  v65 = (v61 + *(v83 + 36));
  *v65 = v64;
  v65[1] = v66;
  sub_26291C4B8(v61, v85);
  swift_storeEnumTagMultiPayload();
  sub_26291C254();
  v88 = v62;
  v89 = v55;
  v90 = OpaqueTypeConformance2;
  v91 = v59;
  v92 = v60;
  v93 = v68;
  swift_getOpaqueTypeConformance2();
  sub_26294D3F8();
  return sub_2628DF6F0(v61, &qword_27FF2F440, &qword_26294FE88);
}

uint64_t sub_2629193E4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v33 - v4;
  v6 = sub_26294C5F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F470, &qword_26294FF20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - v13;
  v37 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F478, &qword_26294FF28);
  sub_26291C554();
  sub_26294D5E8();
  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  v38 = sub_26294D838();
  v16 = sub_26294D9D8();
  v33[1] = v11;
  *&v14[*(v11 + 36)] = v16;
  v17 = *MEMORY[0x277D48DF8];
  v18 = *(v7 + 104);
  v34 = v6;
  v18(v10, v17, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26294E7D0;
  v20 = sub_26294C788();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x277D837D0];
  v23 = sub_2628DF5B8();
  *(v19 + 64) = v23;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v24 = *(v1 + *(type metadata accessor for ViennaAppCategoryView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v36 = v1;
  sub_26291817C(sub_26291C6EC, v38, MEMORY[0x277D48E58], v5);

  v25 = sub_26294C7A8();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v5, 1, v25) == 1)
  {
    sub_2628DF6F0(v5, &qword_27FF2E920, &unk_26294F920);
    v27 = 0.0;
  }

  else
  {
    sub_26294C798();
    v29 = v28;
    (*(v26 + 8))(v5, v25);
    v27 = v29;
  }

  v30 = sub_2629205EC(v27);
  *(v19 + 96) = MEMORY[0x277D837D0];
  *(v19 + 104) = v23;
  *(v19 + 72) = v30;
  *(v19 + 80) = v31;
  sub_26294C6B8();

  (*(v7 + 8))(v10, v34);
  sub_26291DE30();
  sub_26294D798();

  return sub_2628DF6F0(v14, &qword_27FF2F470, &qword_26294FF20);
}

uint64_t sub_26291984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26294DAC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = sub_26294CCB8();
  (*(*(v14 - 8) + 16))(a3, a1, v14);
  v15 = type metadata accessor for ViennaCategoryView();
  v16 = v15[5];
  v17 = sub_26294C7A8();
  (*(*(v17 - 8) + 16))(a3 + v16, a2, v17);
  v18 = type metadata accessor for ViennaAppCategoryView();
  v19 = *(v18 + 24);
  v20 = v15[7];
  v21 = *(a2 + *(v18 + 20) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  sub_26294DA08();
  v22 = (a3 + v15[6]);
  type metadata accessor for SEStorageManagementController();
  sub_26291E258(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
  *v22 = sub_26294D178();
  v22[1] = v23;
  v24 = v15[8];
  (*(v7 + 104))(v13, *MEMORY[0x277CDF0D8], v6);
  (*(v7 + 16))(v11, v13, v6);
  sub_26294D928();
  (*(v7 + 8))(v13, v6);
  v25 = v15[9];
  *(a3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_262919B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v7 = a1;
  sub_26291B7B8(a1, &v6[-v4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F490, &qword_26294FF30);
  sub_2628DF40C();
  sub_26291C5EC();
  return sub_26294DA78();
}

uint64_t sub_262919BF8(uint64_t a1)
{
  v2 = type metadata accessor for ViennaAppCategoryView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_2629186D0();
  sub_26291C188(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26291C1F0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F4B0, &qword_26294FF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B0, &unk_262950DD0);
  sub_2628DFD0C(&qword_27FF2F4B8, &qword_27FF2F4B0, &qword_26294FF98);
  sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0);
  sub_26291E258(&qword_27FF2F4C0, MEMORY[0x277D48FC8]);
  return sub_26294DA68();
}

uint64_t sub_262919E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F4C8, &unk_26294FFA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = sub_26294CCB8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v17 = a1;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E928, &unk_26294F880);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E930, &unk_26294FFB0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E938, &unk_26294F890);
  v12 = sub_2628DF824();
  v13 = sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890);
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  swift_getOpaqueTypeConformance2();
  v14 = MEMORY[0x277D48FC8];
  sub_26291E258(&qword_27FF2F4D0, MEMORY[0x277D48FC8]);
  sub_26291E258(&qword_27FF2F4D8, v14);
  sub_26291E258(&qword_27FF2F458, v14);
  return sub_26294D118();
}

uint64_t sub_26291A088@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v2 = sub_26294C5F8();
  v38 = *(v2 - 8);
  v3 = v38;
  v39 = v2;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v38 - v13);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E930, &unk_26294FFB0);
  v15 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v38 - v16;
  v17 = sub_26294CC78();
  v19 = v18;
  sub_26294CC68();
  sub_26294CC98();
  v21 = sub_2629205EC(v20);
  v23 = v22;
  *v14 = v17;
  v14[1] = v19;
  sub_2628DF954(v10, v14 + v11[9], &qword_27FF2E978, &qword_26294EC40);
  *(v14 + v11[15]) = 1;
  *(v14 + v11[10]) = 0;
  v24 = (v14 + v11[11]);
  *v24 = v21;
  v24[1] = v23;
  *(v14 + v11[12]) = 2;
  *(v14 + v11[13]) = 0;
  sub_26291A4E0(v14 + v11[14]);
  sub_2628DF6F0(v10, &qword_27FF2E978, &qword_26294EC40);
  v25 = *(v3 + 104);
  v26 = v39;
  v25(v6, *MEMORY[0x277D48DF8], v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26294E7D0;
  v28 = sub_26294CC78();
  v30 = v29;
  v31 = MEMORY[0x277D837D0];
  *(v27 + 56) = MEMORY[0x277D837D0];
  v32 = sub_2628DF5B8();
  *(v27 + 64) = v32;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  sub_26294CC98();
  v34 = sub_2629205EC(v33);
  *(v27 + 96) = v31;
  *(v27 + 104) = v32;
  *(v27 + 72) = v34;
  *(v27 + 80) = v35;
  sub_26294C6B8();

  (*(v38 + 8))(v6, v26);
  sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0);
  v36 = v40;
  sub_26294D798();

  sub_2628DF6F0(v14, &qword_27FF2E950, &unk_26294FFC0);
  v44 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E938, &unk_26294F890);
  sub_2628DF824();
  sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890);
  sub_26294D6C8();
  return sub_2628DF6F0(v36, &qword_27FF2E930, &unk_26294FFB0);
}

double sub_26291A4E0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26294CC38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26294CC58();
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D48F98])
  {
    v8 = 0xEB00000000647261;
    v9 = 0x63647261796E616CLL;
  }

  else
  {
    if (v7 != *MEMORY[0x277D48FA0] && v7 != *MEMORY[0x277D48F90])
    {
      (*(v3 + 8))(v6, v2);
    }

    v8 = 0xEE00656C676E6174;
    v9 = 0x6365722E6B636F6CLL;
  }

  KeyPath = swift_getKeyPath();
  sub_26294DAE8();
  sub_26294D0D8();
  v25 = 0;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36));
  v13 = *(sub_26294D1D8() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_26294D378();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #6.0 }

  *v12 = _Q0;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  v20 = v23;
  *(a1 + 40) = *&v22[8];
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 56) = v20;
  result = *&v24;
  *(a1 + 72) = v24;
  return result;
}

uint64_t sub_26291A748(uint64_t a1)
{
  v2 = type metadata accessor for ViennaAppCategoryView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_26294C5F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 104))(v9, *MEMORY[0x277D48DF0], v5);
  v10 = sub_26294C5E8();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  sub_26291C188(a1, &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_26291C1F0(&v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  v20[0] = v10;
  v20[1] = v12;
  v17 = v20;
  v18 = 0x6873617274;
  v19 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
  sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0);
  sub_26294D988();
}

uint64_t sub_26291A9D0(uint64_t a1)
{
  v2 = sub_26294C9D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v88 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED60, &qword_26294F2E8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v94 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - v10;
  v12 = sub_26294CA28();
  v75 = *(v12 - 8);
  v13 = *(v75 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v97 = &v70 - v17;
  v18 = sub_26294CCB8();
  v78 = *(v18 - 8);
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](v18);
  v77 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ViennaAppCategoryView();
  v73 = *(v21 - 8);
  v22 = *(v73 + 64);
  MEMORY[0x28223BE20](v21);
  v74 = v23;
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26294C738();
  v84 = *(result + 16);
  if (!v84)
  {

    v33 = v21;
    goto LABEL_39;
  }

  v71 = v24;
  v26 = 0;
  v27 = v21;
  v28 = *(v21 + 20);
  v72 = a1;
  v29 = a1 + v28;
  v30 = v78;
  v83 = result + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v82 = v78 + 16;
  v104 = v75 + 16;
  v31 = *(v29 + 8);
  v99 = (v3 + 56);
  v93 = (v3 + 48);
  v107 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  v87 = (v3 + 32);
  v86 = (v3 + 8);
  v91 = (v75 + 24);
  v103 = (v75 + 8);
  v79 = (v78 + 8);
  v92 = v2;
  v32 = v77;
  v98 = v11;
  v102 = v12;
  v76 = v18;
  v81 = v27;
  v80 = result;
  while (1)
  {
    if (v26 >= *(result + 16))
    {
      goto LABEL_46;
    }

    v34 = *(v30 + 72);
    v90 = v26;
    (*(v30 + 16))(v32, v83 + v34 * v26, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    if (v108[0] != 1)
    {
      break;
    }

    (*v79)(v32, v18);
LABEL_4:
    v26 = v90 + 1;
    v33 = v81;
    result = v80;
    if (v90 + 1 == v84)
    {

      a1 = v72;
      v24 = v71;
LABEL_39:
      v66 = *(a1 + *(v33 + 20) + 8);
      sub_26291C188(a1, v24);
      v67 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v68 = swift_allocObject();
      sub_26291C1F0(v24, v68 + v67);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      if ((v108[0] & 1) == 0)
      {
        v69 = v66;

        sub_262904ED0(v69, v69, sub_26291E1E0, v68);
      }
    }
  }

  v89 = sub_26294CCA8();
  v35 = v102;
  v101 = *(v89 + 16);
  if (!v101)
  {
LABEL_36:
    v32 = v77;
    v18 = v76;
    (*v79)(v77, v76);

    v30 = v78;
    goto LABEL_4;
  }

  v36 = v75;
  v96 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v100 = v89 + v96;
  swift_beginAccess();
  v37 = 0;
  v38 = *(v36 + 72);
  v105 = *(v36 + 16);
  v106 = v38;
  v39 = v97;
  v105(v97, v100, v35);
  while (1)
  {
    (*v99)(v11, 1, 1, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v35;
    sub_26294CFF8();

    if ((v108[0] & 1) == 0)
    {
      break;
    }

LABEL_10:
    ++v37;
    sub_2628DF6F0(v11, &qword_27FF2ED60, &qword_26294F2E8);
    (*v103)(v39, v40);
    v35 = v40;
    if (v37 == v101)
    {
      goto LABEL_36;
    }

    v105(v39, v100 + v106 * v37, v40);
  }

  v41 = *(v31 + v107);

  v42 = sub_26291852C(v39, v41, MEMORY[0x277D48F20], &qword_27FF2EE98, MEMORY[0x277D48F20]);
  v44 = v43;

  if (v44)
  {
LABEL_9:
    sub_2628EC330();
    v39 = v97;
    v11 = v98;
    v40 = v102;
    goto LABEL_10;
  }

  if (v42 < 0)
  {
    goto LABEL_43;
  }

  v45 = *(v31 + v107);
  if (v42 >= *(v45 + 16))
  {
    goto LABEL_44;
  }

  v95 = v42 * v106;
  v105(v16, v45 + v96 + v42 * v106, v102);
  v46 = v94;
  sub_2628DF954(v98, v94, &qword_27FF2ED60, &qword_26294F2E8);
  if ((*v93)(v46, 1, v2) != 1)
  {
    v54 = v88;
    (*v87)(v88, v46, v2);
    v55 = sub_26294C928();
    v56 = sub_26291852C(v54, v55, MEMORY[0x277D48F10], &qword_27FF2F4E0, MEMORY[0x277D48F10]);
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      v85 = sub_26294C918();
      v60 = v59;
      v61 = *v59;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v60 = v61;
      if (result)
      {
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        result = sub_26291DBD0(v61);
        v61 = result;
        *v60 = result;
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }
      }

      if (v56 >= v61[2])
      {
        goto LABEL_48;
      }

      v62 = v61 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v56;
      sub_26294C9C8();
      v85(v108, 0);
    }

    (*v86)(v54, v2);
    goto LABEL_30;
  }

  sub_2628DF6F0(v46, &qword_27FF2ED60, &qword_26294F2E8);
  v47 = *(sub_26294C928() + 16);

  if (!v47)
  {
LABEL_30:
    v63 = v107;
    swift_beginAccess();
    v64 = *(v31 + v63);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + v63) = v64;
    if ((result & 1) == 0)
    {
      result = sub_26291DB84(v64);
      v64 = result;
      *(v31 + v107) = result;
    }

    v65 = v102;
    if (v42 >= *(v64 + 2))
    {
      goto LABEL_45;
    }

    (*v91)(&v64[v96 + v95], v16, v102);
    *(v31 + v107) = v64;
    swift_endAccess();
    (*v103)(v16, v65);
    v2 = v92;
    goto LABEL_9;
  }

  v48 = 0;
  while (1)
  {
    v49 = sub_26294C918();
    v51 = v50;
    v52 = *v50;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v51 = v52;
    if ((result & 1) == 0)
    {
      result = sub_26291DBD0(v52);
      v52 = result;
      *v51 = result;
    }

    if (v48 >= v52[2])
    {
      break;
    }

    v53 = v52 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v48;
    sub_26294C9C8();
    v49(v108, 0);
    if (v47 == ++v48)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_26291B548(char a1, uint64_t a2)
{
  v4 = sub_26294D0F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9 - 8);
  v13 = v20 - v12;
  if (a1)
  {
    v14 = type metadata accessor for ViennaAppCategoryView();
    v15 = *(a2 + *(v14 + 20) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v17 = v20[1];
    MEMORY[0x28223BE20](v16);
    v20[-2] = a2;
    sub_26291817C(sub_26291E90C, v17, MEMORY[0x277D48E58], v13);

    v18 = sub_26294C7A8();
    LODWORD(v15) = (*(*(v18 - 8) + 48))(v13, 1, v18);
    result = sub_2628DF6F0(v13, &qword_27FF2E920, &unk_26294F920);
    if (v15 == 1)
    {
      v19 = a2 + *(v14 + 32);
      sub_26291D460(v8);
      sub_26294D0E8();
      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

__n128 sub_26291B7B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_26294D4E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8F0, &qword_26294FF90);
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - v10;
  v12 = sub_26294D338();
  v23 = 1;
  sub_26291BAF4(a1, v26);
  memcpy(v24, v26, sizeof(v24));
  memcpy(v25, v26, sizeof(v25));
  sub_2628DF954(v24, v21, &qword_27FF2E8F8, &unk_26294F910);
  sub_2628DF6F0(v25, &qword_27FF2E8F8, &unk_26294F910);
  memcpy(&v22[7], v24, 0x120uLL);
  *v21 = v12;
  *&v21[8] = 0;
  v21[16] = v23;
  memcpy(&v21[17], v22, 0x127uLL);
  sub_26294D4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E888, &unk_2629513D0);
  sub_2628DFD0C(&qword_27FF2E890, &qword_27FF2E888, &unk_2629513D0);
  sub_26294D768();
  (*(v4 + 8))(v7, v3);
  memcpy(v26, v21, 0x138uLL);
  sub_2628DF6F0(v26, &qword_27FF2E888, &unk_2629513D0);
  sub_26294DAE8();
  sub_26294D1F8();
  v13 = v20;
  (*(v8 + 32))(v20, v11, v19);
  v14 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770) + 36);
  v15 = *&v21[80];
  *(v14 + 64) = *&v21[64];
  *(v14 + 80) = v15;
  *(v14 + 96) = *&v21[96];
  v16 = *&v21[16];
  *v14 = *v21;
  *(v14 + 16) = v16;
  result = *&v21[48];
  *(v14 + 32) = *&v21[32];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_26291BAF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v47 - v5;
  v7 = sub_26294C7F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294C758();
  v12 = sub_26294C7C8();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v89 = v12;
  v90 = v14;
  sub_2628DF230();
  v15 = sub_26294D648();
  v17 = v16;
  LOBYTE(v8) = v18;
  LODWORD(v89) = sub_26294D4B8();
  v19 = sub_26294D618();
  v47 = v20;
  v48 = v19;
  LOBYTE(v11) = v21;
  v49 = v22;
  sub_2628DF758(v15, v17, v8 & 1);

  sub_26294DAF8();
  sub_26294D1F8();
  v23 = v11 & 1;
  v111 = v11 & 1;
  v24 = *(a1 + *(type metadata accessor for ViennaAppCategoryView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v51 = a1;
  sub_26291817C(sub_26291E90C, v89, MEMORY[0x277D48E58], v6);

  v25 = sub_26294C7A8();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v6, 1, v25) == 1)
  {
    sub_2628DF6F0(v6, &qword_27FF2E920, &unk_26294F920);
    v27 = 0.0;
  }

  else
  {
    sub_26294C798();
    v29 = v28;
    (*(v26 + 8))(v6, v25);
    v27 = v29;
  }

  v89 = sub_2629205EC(v27);
  v90 = v30;
  v31 = sub_26294D648();
  v33 = v32;
  v35 = v34;
  LODWORD(v89) = sub_26294D4C8();
  v36 = sub_26294D618();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_2628DF758(v31, v33, v35 & 1);

  sub_26294DB08();
  sub_26294D1F8();
  LOBYTE(v31) = v40 & 1;
  v102 = v40 & 1;
  v44 = v47;
  v43 = v48;
  *&v60 = v48;
  *(&v60 + 1) = v47;
  LOBYTE(v61) = v23;
  *(&v61 + 1) = *v110;
  DWORD1(v61) = *&v110[3];
  v45 = v49;
  *(&v61 + 1) = v49;
  v66 = v107;
  v67 = v108;
  v68 = v109;
  v62 = v103;
  v63 = v104;
  v64 = v105;
  v65 = v106;
  v52[6] = v107;
  v52[7] = v108;
  v52[2] = v103;
  v52[3] = v104;
  v52[4] = v105;
  v52[5] = v106;
  v52[0] = v60;
  v52[1] = v61;
  *&v69 = v36;
  *(&v69 + 1) = v38;
  LOBYTE(v70) = v31;
  *(&v70 + 1) = *v101;
  DWORD1(v70) = *&v101[3];
  *(&v70 + 1) = v42;
  v75 = v57;
  v76 = v58;
  v77 = v59;
  v71 = v53;
  v72 = v54;
  v73 = v55;
  v74 = v56;
  v52[12] = v54;
  v52[13] = v55;
  v52[10] = v70;
  v52[11] = v53;
  v52[14] = v56;
  v52[15] = v57;
  v52[16] = v58;
  v52[17] = v59;
  v52[8] = v109;
  v52[9] = v69;
  memcpy(v50, v52, 0x120uLL);
  v78[0] = v36;
  v78[1] = v38;
  v79 = v31;
  *v80 = *v101;
  *&v80[3] = *&v101[3];
  v81 = v42;
  v86 = v57;
  v87 = v58;
  v88 = v59;
  v82 = v53;
  v83 = v54;
  v84 = v55;
  v85 = v56;
  sub_2628DF954(&v60, &v89, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF954(&v69, &v89, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF6F0(v78, &qword_27FF2E900, &qword_26294FDB0);
  v89 = v43;
  v90 = v44;
  v91 = v23;
  *v92 = *v110;
  *&v92[3] = *&v110[3];
  v93 = v45;
  v98 = v107;
  v99 = v108;
  v100 = v109;
  v94 = v103;
  v95 = v104;
  v96 = v105;
  v97 = v106;
  return sub_2628DF6F0(&v89, &qword_27FF2E900, &qword_26294FDB0);
}

uint64_t sub_26291C188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaAppCategoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26291C1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaAppCategoryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26291C254()
{
  result = qword_27FF2F468;
  if (!qword_27FF2F468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F440, &qword_26294FE88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F438, &qword_26294FE80);
    sub_26294CCB8();
    type metadata accessor for ViennaCategoryView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F430, &qword_26294FE78);
    sub_2628DFD0C(&qword_27FF2F450, &qword_27FF2F430, &qword_26294FE78);
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_26291E258(&qword_27FF2F458, MEMORY[0x277D48FC8]);
    sub_26291E258(&qword_27FF2F460, type metadata accessor for ViennaCategoryView);
    swift_getOpaqueTypeConformance2();
    sub_2628E01B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F468);
  }

  return result;
}

uint64_t sub_26291C4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F440, &qword_26294FE88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26291C554()
{
  result = qword_27FF2F480;
  if (!qword_27FF2F480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F478, &qword_26294FF28);
    sub_2628DF40C();
    sub_26291C5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F480);
  }

  return result;
}

unint64_t sub_26291C5EC()
{
  result = qword_27FF2F488;
  if (!qword_27FF2F488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F490, &qword_26294FF30);
    sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F488);
  }

  return result;
}

uint64_t sub_26291C70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v57 = a1;
  v59 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F540, &qword_262950160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F548, &qword_262950168);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F550, &qword_262950170);
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v58);
  v15 = &v45 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v60)
  {
    KeyPath = swift_getKeyPath();
    v17 = swift_allocObject();
    *(v17 + 16) = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F558, &qword_2629501E8);
    (*(*(v18 - 8) + 16))(v7, v57, v18);
    v19 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F598, &unk_262950200) + 36)];
    *v19 = KeyPath;
    v19[1] = sub_262913BC8;
    v19[2] = v17;
    *&v7[*(v4 + 36)] = 0x3FE0000000000000;
    sub_2628DF954(v7, v11, &qword_27FF2F540, &qword_262950160);
    swift_storeEnumTagMultiPayload();
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F560, &unk_2629501F0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F568, &qword_262951650);
    v22 = sub_2628DFD0C(&qword_27FF2F570, &qword_27FF2F558, &qword_2629501E8);
    v23 = sub_2628DF230();
    v24 = sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0);
    v25 = sub_26291E4DC();
    v60 = v18;
    v61 = MEMORY[0x277D837D0];
    v62 = v20;
    v63 = v21;
    v64 = v22;
    v65 = v23;
    v66 = v24;
    v67 = v25;
    swift_getOpaqueTypeConformance2();
    sub_26291E558();
    sub_26294D3F8();
    return sub_2628DF6F0(v7, &qword_27FF2F540, &qword_262950160);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v27 = v60;
    v28 = v61;
    v56 = v61;

    v68 = v27;
    v69 = v28;
    type metadata accessor for SEStorageManagementController();
    sub_26291E258(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
    v29 = sub_26294D188();
    swift_getKeyPath();
    v55 = v12;
    sub_26294D198();

    v52 = &v45;
    v49 = v61;
    v50 = v60;
    v51 = v62;
    v31 = MEMORY[0x28223BE20](v30);
    v48 = v44;
    MEMORY[0x28223BE20](v31);
    v53 = v8;
    v44[3] = a2;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F558, &qword_2629501E8);
    v47 = v11;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F560, &unk_2629501F0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F568, &qword_262951650);
    v54 = v4;
    v46 = v34;
    v35 = sub_2628DFD0C(&qword_27FF2F570, &qword_27FF2F558, &qword_2629501E8);
    v36 = v15;
    v37 = sub_2628DF230();
    v38 = sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0);
    v39 = sub_26291E4DC();
    v44[1] = v38;
    v44[2] = v39;
    v44[0] = v37;
    v40 = v33;
    v41 = v32;
    sub_26294D728();

    v42 = v55;
    v43 = v58;
    (*(v55 + 16))(v47, v36, v58);
    swift_storeEnumTagMultiPayload();
    v60 = v41;
    v61 = MEMORY[0x277D837D0];
    v62 = v40;
    v63 = v46;
    v64 = v35;
    v65 = v37;
    v66 = v38;
    v67 = v39;
    swift_getOpaqueTypeConformance2();
    sub_26291E558();
    sub_26294D3F8();
    return (*(v42 + 8))(v36, v43);
  }
}

uint64_t sub_26291CE68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v56 = a1;
  v57 = a2;
  v61 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B0, &qword_262950240);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v46 - v5;
  v7 = sub_26294C5F8();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B8, &qword_262950248);
  v60 = *(v12 - 8);
  v13 = *(v60 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v46 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v55 = &v46 - v19;
  MEMORY[0x28223BE20](v18);
  v50 = &v46 - v20;
  v54 = *MEMORY[0x277D48DF0];
  v53 = v8[13];
  v47 = v7;
  v53(v11);
  v21 = sub_26294C5E8();
  v23 = v22;
  v51 = v8[1];
  v52 = v8 + 1;
  v51(v11, v7);
  v62 = v21;
  v63 = v23;
  sub_26294D028();
  v24 = sub_26294D048();
  v25 = *(v24 - 8);
  v48 = *(v25 + 56);
  v49 = v25 + 56;
  v48(v6, 0, 1, v24);
  v26 = swift_allocObject();
  v27 = v56;
  v28 = v57;
  *(v26 + 16) = v56;
  *(v26 + 24) = v28;
  v46 = sub_2628DF230();
  v29 = v28;
  sub_26294D998();
  v30 = v47;
  (v53)(v11, v54, v47);
  v31 = sub_26294C5E8();
  v33 = v32;
  v51(v11, v30);
  v62 = v31;
  v63 = v33;
  sub_26294D038();
  v48(v6, 0, 1, v24);
  v34 = swift_allocObject();
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  v35 = v29;
  v36 = v55;
  sub_26294D998();
  v37 = v60;
  v38 = *(v60 + 16);
  v39 = v58;
  v40 = v50;
  v38(v58, v50, v12);
  v41 = v59;
  v38(v59, v36, v12);
  v42 = v61;
  v38(v61, v39, v12);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5C0, &qword_262950250);
  v38(&v42[*(v43 + 48)], v41, v12);
  v44 = *(v37 + 8);
  v44(v36, v12);
  v44(v40, v12);
  v44(v41, v12);
  return (v44)(v39, v12);
}

uint64_t sub_26291D370@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v2 = v7;
  if (v7)
  {
    sub_2628DF230();
    result = sub_26294D648();
    v2 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  a1[2] = v2;
  a1[3] = v5;
  return result;
}

uint64_t sub_26291D460@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26294D328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2628DF954(v2, &v17 - v11, &qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26294D0F8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_26294DEB8();
    v16 = sub_26294D508();
    sub_26294CE18();

    sub_26294D318();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

void *sub_26291D7C0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_26291D9A8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26291DD4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26294E008();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_26294DF98();
}

uint64_t sub_26291DDB0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_2628DF230();

  return sub_26294D918();
}

unint64_t sub_26291DE30()
{
  result = qword_27FF2F498;
  if (!qword_27FF2F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F470, &qword_26294FF20);
    sub_2628DFD0C(&qword_27FF2F4A0, &qword_27FF2F4A8, &unk_26294FF80);
    sub_2628DFD0C(&qword_27FF2E8E0, &qword_27FF2E8E8, &qword_262950C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F498);
  }

  return result;
}

uint64_t sub_26291DF1C(uint64_t a1)
{
  v3 = *(type metadata accessor for ViennaAppCategoryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_262919E00(a1, v4);
}

uint64_t sub_26291DFAC()
{
  v1 = *(type metadata accessor for ViennaAppCategoryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26291A9D0(v2);
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for ViennaAppCategoryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_26294C7A8();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = (v0 + v3 + v1[8]);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v11 = sub_26294D168();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);
  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26294D0F8();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26291E1E0(char a1)
{
  v3 = *(type metadata accessor for ViennaAppCategoryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26291B548(a1, v4);
}

uint64_t sub_26291E258(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26291E2B4()
{
  result = qword_27FF2F530;
  if (!qword_27FF2F530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F538, &qword_262950108);
    sub_26291C254();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F438, &qword_26294FE80);
    sub_26294CCB8();
    type metadata accessor for ViennaCategoryView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F430, &qword_26294FE78);
    sub_2628DFD0C(&qword_27FF2F450, &qword_27FF2F430, &qword_26294FE78);
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_26291E258(&qword_27FF2F458, MEMORY[0x277D48FC8]);
    sub_26291E258(&qword_27FF2F460, type metadata accessor for ViennaCategoryView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F530);
  }

  return result;
}

uint64_t sub_26291E4D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_26291D370(a1);
}

unint64_t sub_26291E4DC()
{
  result = qword_27FF2F580;
  if (!qword_27FF2F580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F568, &qword_262951650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F580);
  }

  return result;
}

unint64_t sub_26291E558()
{
  result = qword_27FF2F588;
  if (!qword_27FF2F588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F540, &qword_262950160);
    sub_26291E5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F588);
  }

  return result;
}

unint64_t sub_26291E5E4()
{
  result = qword_27FF2F590;
  if (!qword_27FF2F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F598, &unk_262950200);
    sub_2628DFD0C(&qword_27FF2F570, &qword_27FF2F558, &qword_2629501E8);
    sub_2628DFD0C(&qword_27FF2F5A0, &qword_27FF2F5A8, &qword_2629519C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F590);
  }

  return result;
}

uint64_t sub_26291E6E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26291E764()
{
  result = qword_27FF2F5C8;
  if (!qword_27FF2F5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F5D0, &qword_262950258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F558, &qword_2629501E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F560, &unk_2629501F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F568, &qword_262951650);
    sub_2628DFD0C(&qword_27FF2F570, &qword_27FF2F558, &qword_2629501E8);
    sub_2628DF230();
    sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0);
    sub_26291E4DC();
    swift_getOpaqueTypeConformance2();
    sub_26291E558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F5C8);
  }

  return result;
}

uint64_t sub_26291E92C()
{
  v0 = sub_26294CE48();
  __swift_allocate_value_buffer(v0, qword_27FF314B0);
  __swift_project_value_buffer(v0, qword_27FF314B0);
  return sub_26294CE38();
}

uint64_t Icon.IconType.hash(into:)()
{
  if ((v0[2] >> 61) > 4)
  {
    return MEMORY[0x26672D6D0](0, *v0, v0[1]);
  }

  return sub_26294DD88();
}

uint64_t Icon.IconType.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_26294E098();
  v4 = v3 >> 61;
  if ((v3 >> 61) <= 2 || v4 == 3 || v4 == 4)
  {
    sub_26294DD88();
  }

  else
  {
    MEMORY[0x26672D6D0](0);
  }

  return sub_26294E0B8();
}

uint64_t sub_26291EAC4()
{
  if ((v0[2] >> 61) > 4)
  {
    return MEMORY[0x26672D6D0](0, *v0, v0[1]);
  }

  return sub_26294DD88();
}

uint64_t sub_26291EB40()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_26294E098();
  v4 = v3 >> 61;
  if ((v3 >> 61) <= 2 || v4 == 3 || v4 == 4)
  {
    sub_26294DD88();
  }

  else
  {
    MEMORY[0x26672D6D0](0);
  }

  return sub_26294E0B8();
}

__n128 Icon.init(type:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v5 = *a1;
  v3 = a1[1].n128_u64[0];
  a2->n128_u64[0] = swift_getKeyPath();
  a2->n128_u8[8] = 0;
  result = v5;
  a2[1] = v5;
  a2[2].n128_u64[0] = v3;
  return result;
}

uint64_t Icon.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 1);
  v6 = v1[4];
  return sub_26291EC6C(a1);
}

uint64_t sub_26291EC6C@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = sub_26294D8E8();
  v86 = *(v2 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5F0, &qword_262950570);
  v6 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v96 = (&v83 - v7);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5F8, &qword_262950578);
  v8 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v92 = (&v83 - v9);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F600, &qword_262950580);
  v10 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v83 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F608, &qword_262950588);
  v12 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v83 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F610, &qword_262950590);
  v14 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v83 - v15;
  v85 = sub_26294D328();
  v84 = *(v85 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F618, &qword_262950598);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v27 = &v83 - v26;
  v28 = *v1;
  v29 = *(v1 + 8);
  v30 = *(v1 + 16);
  v31 = *(v1 + 24);
  v32 = *(v1 + 32);
  v33 = v32 >> 61;
  if ((v32 >> 61) > 2)
  {
    if (v33 == 3)
    {
      v56 = *v1;
      v83 = v25;
      v86 = v24;
      v57 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

      v58 = sub_26294DD58();
      sub_2629204CC(v30, v31, v32);
      [v57 initWithType_];

      if (qword_27FF2E7C8 != -1)
      {
        swift_once();
      }

      v59 = qword_27FF314C8;
      if (v29)
      {
        v60 = *&v56;
        v61 = qword_27FF314C8;
      }

      else
      {
        sub_262920550(v56, 0);
        v72 = v59;
        sub_26294DEB8();
        v73 = sub_26294D508();
        sub_26294CE18();

        sub_26294D318();
        swift_getAtKeyPath();
        sub_26292055C(v56, 0);
        (*(v84 + 8))(v18, v85);
        v60 = *&v100;
      }

      [v59 setScale_];
      [v59 setDrawBorder_];
      sub_26294CE08();
      v74 = v83;
      v75 = v86;
      (*(v83 + 16))(v88, v23, v86);
      swift_storeEnumTagMultiPayload();
      sub_2628DFD0C(&qword_27FF2F658, &qword_27FF2F618, &qword_262950598);
      v76 = v89;
      sub_26294D3F8();
      sub_2628DF954(v76, v92, &qword_27FF2F608, &qword_262950588);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F668, &qword_2629505B8);
      sub_2629202EC();
      sub_26292039C();
      v77 = v93;
      sub_26294D3F8();
      sub_2628DF6F0(v76, &qword_27FF2F608, &qword_262950588);
      sub_2628DF954(v77, v96, &qword_27FF2F610, &qword_262950590);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F640, &qword_2629505B0);
      sub_262920260();
      sub_262920428();
      sub_26294D3F8();
      sub_2628DF6F0(v77, &qword_27FF2F610, &qword_262950590);
      return (*(v74 + 8))(v23, v75);
    }

    else if (v33 == 4)
    {
      v41 = *MEMORY[0x277CE0FE0];
      v42 = v86;
      v43 = *(v86 + 104);

      v43(v5, v41, v2);
      v44 = sub_26294D908();
      (*(v42 + 8))(v5, v2);
      v98 = v44;
      *v99 = 0;
      *&v99[8] = 65537;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F620, &qword_2629505A0);
      sub_262920150();
      sub_26294D3F8();
      v45 = v100;
      v46 = v102;
      v47 = v101;
      v48 = v101 | (v102 << 16);
      LOBYTE(v43) = v103;
      v49 = v96;
      *v96 = v100;
      *(v49 + 18) = v46;
      *(v49 + 8) = v47;
      *(v49 + 19) = v43;
      swift_storeEnumTagMultiPayload();
      sub_2629204B4(v45, *(&v45 + 1), v48, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F640, &qword_2629505B0);
      sub_262920260();
      sub_262920428();
      sub_26294D3F8();

      sub_2629204C0(v45, *(&v45 + 1), v48, v43);
    }

    else
    {
      v98 = 0;
      *v99 = 0;
      *&v99[7] = 0;
      v99[11] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F620, &qword_2629505A0);
      sub_262920150();
      sub_26294D3F8();
      v68 = v101;
      v69 = v102;
      v70 = v103;
      v71 = v96;
      *v96 = v100;
      *(v71 + 18) = v69;
      *(v71 + 8) = v68;
      *(v71 + 19) = v70;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F640, &qword_2629505B0);
      sub_262920260();
      sub_262920428();
      return sub_26294D3F8();
    }
  }

  else
  {
    if (!v33)
    {
      v51 = *(v1 + 24);

      v98 = sub_26294D8D8();
      *v99 = 0;
      *&v99[8] = 0;
      v99[10] = 1;
LABEL_11:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F638, &qword_2629505A8);
      sub_2629201DC();
      sub_26294D3F8();
      v52 = v101;
      v53 = v102;
      v54 = v92;
      *v92 = v100;
      *(v54 + 8) = v52;
      *(v54 + 18) = v53;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F668, &qword_2629505B8);
      sub_2629202EC();
      sub_26292039C();
      v55 = v93;
      sub_26294D3F8();
      sub_2628DF954(v55, v96, &qword_27FF2F610, &qword_262950590);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F640, &qword_2629505B0);
      sub_262920260();
      sub_262920428();
      sub_26294D3F8();

      return sub_2628DF6F0(v55, &qword_27FF2F610, &qword_262950590);
    }

    if (v33 == 1)
    {
      type metadata accessor for FindClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v35 = objc_opt_self();

      v36 = [v35 bundleForClass_];
      v37 = sub_26294DD58();
      sub_2629204CC(v30, v31, v32);
      v38 = [objc_opt_self() imageNamed:v37 inBundle:v36];

      if (!v38)
      {
        [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      }

      sub_26294D8C8();
      v39 = v86;
      (*(v86 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
      v40 = sub_26294D908();

      (*(v39 + 8))(v5, v2);
      v98 = v40;
      *v99 = 0;
      *&v99[8] = 1;
      v99[10] = 0;
      goto LABEL_11;
    }

    v62 = *v1;
    v63 = v25;
    v86 = v24;
    v64 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

    v65 = sub_26294DD58();
    sub_2629204CC(v30, v31, v32);
    [v64 initWithBundleIdentifier_];

    if (qword_27FF2E7C8 != -1)
    {
      swift_once();
    }

    v66 = qword_27FF314C8;
    if (v29)
    {
      v67 = *&v62;
    }

    else
    {
      sub_262920550(v62, 0);
      sub_26294DEB8();
      v78 = sub_26294D508();
      sub_26294CE18();

      sub_26294D318();
      swift_getAtKeyPath();
      sub_26292055C(v62, 0);
      (*(v84 + 8))(v18, v85);
      v67 = *&v100;
    }

    [v66 setScale_];
    [v66 setDrawBorder_];
    sub_26294CE08();
    v79 = v63;
    v80 = v86;
    (*(v63 + 16))(v88, v27, v86);
    swift_storeEnumTagMultiPayload();
    sub_2628DFD0C(&qword_27FF2F658, &qword_27FF2F618, &qword_262950598);
    v81 = v89;
    sub_26294D3F8();
    sub_2628DF954(v81, v92, &qword_27FF2F608, &qword_262950588);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F668, &qword_2629505B8);
    sub_2629202EC();
    sub_26292039C();
    v82 = v93;
    sub_26294D3F8();
    sub_2628DF6F0(v81, &qword_27FF2F608, &qword_262950588);
    sub_2628DF954(v82, v96, &qword_27FF2F610, &qword_262950590);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F640, &qword_2629505B0);
    sub_262920260();
    sub_262920428();
    sub_26294D3F8();
    sub_2628DF6F0(v82, &qword_27FF2F610, &qword_262950590);
    return (*(v79 + 8))(v27, v80);
  }
}

uint64_t sub_26291FB9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 1);
  v6 = v1[4];
  return sub_26291EC6C(a1);
}

void sub_26291FBE8()
{
  v0 = *MEMORY[0x277D1B240];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 imageDescriptorNamed_];

  qword_27FF314C8 = v3;
}

uint64_t _s12SESUIService4IconV0B4TypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = v4 >> 61;
  if ((v4 >> 61) > 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        if (v7 >> 61 != 5 || (v5 | v6) != 0 || v7 != 0xA000000000000000)
        {
          goto LABEL_35;
        }

        sub_2629204CC(*a1, v2, v4);
        v12 = 0;
        v13 = 0;
        v14 = 0xA000000000000000;
LABEL_25:
        sub_2629204CC(v12, v13, v14);
        return 1;
      }

      if (v7 >> 61 != 4)
      {
        goto LABEL_35;
      }

      if (v3 != v6 || v2 != v5)
      {
        v9 = *a1;
        if ((sub_26294E058() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      sub_262920568(v6, v5, v7);
      sub_262920568(v3, v2, v4);
      v10 = sub_26294D8F8();
LABEL_27:
      sub_2629204CC(v3, v2, v4);
      sub_2629204CC(v6, v5, v7);
      return v10 & 1;
    }

    if (v7 >> 61 != 3)
    {
      goto LABEL_35;
    }

LABEL_16:
    if (v3 == v6 && v2 == v5)
    {
      goto LABEL_24;
    }

LABEL_26:
    v16 = *a1;
    v10 = sub_26294E058();
    sub_262920568(v6, v5, v7);
    sub_262920568(v3, v2, v4);
    goto LABEL_27;
  }

  if (!v8)
  {
    if (v7 >> 61)
    {
      goto LABEL_35;
    }

    goto LABEL_16;
  }

  if (v8 == 1)
  {
    if (v7 >> 61 != 1)
    {
      goto LABEL_35;
    }

LABEL_22:
    if (v3 == v6 && v2 == v5)
    {
LABEL_24:
      sub_262920568(*a1, v2, v7);
      sub_262920568(v3, v2, v4);
      sub_2629204CC(v3, v2, v4);
      v12 = v3;
      v13 = v2;
      v14 = v7;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v7 >> 61 == 2)
  {
    goto LABEL_22;
  }

LABEL_35:
  sub_262920568(v6, v5, v7);
  sub_262920568(v3, v2, v4);
  sub_2629204CC(v3, v2, v4);
  sub_2629204CC(v6, v5, v7);
  return 0;
}

unint64_t sub_26291FEB8()
{
  result = qword_27FF2F5D8;
  if (!qword_27FF2F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F5D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SESUIService4IconV0B4TypeO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_26291FF50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
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

uint64_t sub_26291FF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_262920008(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 24))
  {
    return (*a1 + 123);
  }

  v3 = (((*(a1 + 16) >> 57) >> 4) | (8 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_262920064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2629200CC(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = xmmword_262950260;
  }

  return result;
}

unint64_t sub_262920150()
{
  result = qword_27FF2F628;
  if (!qword_27FF2F628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F620, &qword_2629505A0);
    sub_2629201DC();
    sub_2628E060C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F628);
  }

  return result;
}

unint64_t sub_2629201DC()
{
  result = qword_27FF2F630;
  if (!qword_27FF2F630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F638, &qword_2629505A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F630);
  }

  return result;
}

unint64_t sub_262920260()
{
  result = qword_27FF2F648;
  if (!qword_27FF2F648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F610, &qword_262950590);
    sub_2629202EC();
    sub_26292039C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F648);
  }

  return result;
}

unint64_t sub_2629202EC()
{
  result = qword_27FF2F650;
  if (!qword_27FF2F650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F608, &qword_262950588);
    sub_2628DFD0C(&qword_27FF2F658, &qword_27FF2F618, &qword_262950598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F650);
  }

  return result;
}

unint64_t sub_26292039C()
{
  result = qword_27FF2F660;
  if (!qword_27FF2F660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F668, &qword_2629505B8);
    sub_2629201DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F660);
  }

  return result;
}

unint64_t sub_262920428()
{
  result = qword_27FF2F670;
  if (!qword_27FF2F670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F640, &qword_2629505B0);
    sub_262920150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F670);
  }

  return result;
}

uint64_t sub_2629204B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2629204C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2629204CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v4 > 1)
    {
      return result;
    }
  }

  else if (v4 != 2 && v4 != 3)
  {
    if (v4 == 4)
    {
    }

    return result;
  }
}

uint64_t sub_262920550(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26292055C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_262920568(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v4 > 1)
    {
      return result;
    }
  }

  else if (v4 != 2 && v4 != 3)
  {
    if (v4 == 4)
    {
    }

    return result;
  }
}

uint64_t sub_2629205EC(double a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v2 setNumberStyle_];
  [v2 setMinimumFractionDigits_];
  [v2 setMaximumFractionDigits_];
  v3 = [v2 stringFromNumber_];

  if (v3)
  {
    v4 = sub_26294DD68();
  }

  else
  {

    return 0;
  }

  return v4;
}

double SEStorageManagementViewModel.PrimaryCategory.iconView.getter@<D0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_26294C7F8();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26294C7A8();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26294CD78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26294C828();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294C848();
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 != *MEMORY[0x277D48EA0])
  {
    if (v19 == *MEMORY[0x277D48E98])
    {
      (*(v15 + 96))(v18, v14);
      v20 = v32;
      (*(v32 + 32))(v8, v18, v5);
      sub_26294C758();
      v21 = sub_26294C7D8();
      v23 = v22;
      (*(v33 + 8))(v4, v34);
      (*(v20 + 8))(v8, v5);
      KeyPath = swift_getKeyPath();
      v37 = 0;
      *&v38 = v21;
      *(&v38 + 1) = v23;
    }

    else
    {
      if (v19 != *MEMORY[0x277D48EC0])
      {
        if (v19 == *MEMORY[0x277D48EA8])
        {
          KeyPath = swift_getKeyPath();
          v37 = 0;
          v38 = xmmword_2629505C0;
          v39 = 0;
          goto LABEL_9;
        }

        if (v19 == *MEMORY[0x277D48EB8])
        {
          v29 = 0x800000026295E9A0;
          KeyPath = swift_getKeyPath();
          v37 = 0;
          v30 = 0xD000000000000022;
        }

        else
        {
          if (v19 == *MEMORY[0x277D48EC8])
          {
            KeyPath = swift_getKeyPath();
            v37 = 0;
            *&v38 = 0xD00000000000001ALL;
            *(&v38 + 1) = 0x800000026295E980;
            v24 = 0x2000000000000000;
            goto LABEL_8;
          }

          if (v19 != *MEMORY[0x277D48EB0])
          {
            KeyPath = swift_getKeyPath();
            v37 = 0;
            v38 = xmmword_2629505C0;
            v39 = 0;
            (*(v15 + 8))(v18, v14);
            goto LABEL_9;
          }

          v29 = 0x800000026295E9D0;
          KeyPath = swift_getKeyPath();
          v37 = 0;
          v30 = 0xD00000000000001FLL;
        }

        *&v38 = v30;
        *(&v38 + 1) = v29;
        v24 = 0x6000000000000000;
LABEL_8:
        v39 = v24;
        goto LABEL_9;
      }

      KeyPath = swift_getKeyPath();
      v37 = 0;
      *&v38 = 0xD000000000000012;
      *(&v38 + 1) = 0x800000026295E9F0;
    }

    v24 = 0x4000000000000000;
    goto LABEL_8;
  }

  (*(v15 + 96))(v18, v14);
  (*(v10 + 32))(v13, v18, v9);
  SEStorageManagementViewModel.WalletUsageCategory.iconView.getter(&KeyPath);
  (*(v10 + 8))(v13, v9);
LABEL_9:
  v25 = v35;
  v26 = v37;
  v27 = v39;
  *v35 = KeyPath;
  *(v25 + 8) = v26;
  result = *&v38;
  *(v25 + 1) = v38;
  v25[4] = v27;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.iconView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294DB58();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - v6;
  v8 = sub_26294DC58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = sub_26294CCE8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294CD08();
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 != *MEMORY[0x277D48FF0])
  {
    if (v21 == *MEMORY[0x277D49000])
    {
      v30 = 0;
      v28 = 0xEB00000000647261;
      v29 = 0x63647261796E616CLL;
      goto LABEL_47;
    }

    v28 = 0xEE00656C676E6174;
    v29 = 0x6365722E6B636F6CLL;
    if (v21 != *MEMORY[0x277D48FF8])
    {
      (*(v17 + 8))(v20, v16);
    }

    goto LABEL_46;
  }

  (*(v17 + 96))(v20, v16);
  (*(v9 + 32))(v15, v20, v8);
  (*(v9 + 16))(v13, v15, v8);
  if ((*(v9 + 88))(v13, v8) != *MEMORY[0x277D49240])
  {
    v28 = 0xEE00656C676E6174;
    v29 = 0x6365722E6B636F6CLL;
    v31 = *(v9 + 8);
    v31(v13, v8);
    v31(v15, v8);
    goto LABEL_46;
  }

  (*(v9 + 96))(v13, v8);
  v22 = v37;
  v23 = v7;
  v24 = v13;
  v25 = v38;
  (*(v37 + 32))(v7, v24, v38);
  v26 = v36;
  (*(v22 + 16))(v36, v7, v25);
  v27 = (*(v22 + 88))(v26, v25);
  if (v27 != *MEMORY[0x277D490C0])
  {
    if (v27 != *MEMORY[0x277D490A8] && v27 != *MEMORY[0x277D49128] && v27 != *MEMORY[0x277D490D0])
    {
      if (v27 == *MEMORY[0x277D490B0])
      {
        v28 = 0x800000026295EAD0;
        (*(v22 + 8))(v7, v25);
        (*(v9 + 8))(v15, v8);
        v29 = 0xD000000000000014;
        v30 = 0x2000000000000000;
        goto LABEL_47;
      }

      if (v27 == *MEMORY[0x277D490D8])
      {
        v32 = "Applet_Type_Discover.tiff";
LABEL_17:
        v28 = (v32 - 32) | 0x8000000000000000;
        (*(v22 + 8))(v7, v25);
        (*(v9 + 8))(v15, v8);
        v29 = 0xD000000000000019;
        v30 = 0x2000000000000000;
        goto LABEL_47;
      }

      if (v27 == *MEMORY[0x277D490B8])
      {
        v29 = 0xD000000000000015;
        v33 = "Applet_Type_Amex.tiff";
LABEL_22:
        v28 = (v33 - 32) | 0x8000000000000000;
        (*(v22 + 8))(v23, v25);
        (*(v9 + 8))(v15, v8);
        v30 = 0x2000000000000000;
        goto LABEL_47;
      }

      if (v27 == *MEMORY[0x277D490E0])
      {
        v29 = 0xD000000000000015;
        v33 = "Applet_Type_Visa.tiff";
        goto LABEL_22;
      }

      if (v27 == *MEMORY[0x277D49118])
      {
        v32 = "Applet_Type_UnionPay.tiff";
        goto LABEL_17;
      }

      if (v27 != *MEMORY[0x277D49088] && v27 != *MEMORY[0x277D49080] && v27 != *MEMORY[0x277D49098] && v27 != *MEMORY[0x277D49090] && v27 != *MEMORY[0x277D490F0])
      {
        if (v27 == *MEMORY[0x277D49100])
        {
          v28 = 0x800000026295EA30;
          (*(v22 + 8))(v7, v25);
          (*(v9 + 8))(v15, v8);
          v29 = 0xD000000000000017;
          v30 = 0x2000000000000000;
          goto LABEL_47;
        }

        if (v27 == *MEMORY[0x277D49120])
        {
          v28 = 0x800000026295EA10;
          (*(v22 + 8))(v7, v25);
          (*(v9 + 8))(v15, v8);
          v29 = 0xD000000000000016;
          v30 = 0x2000000000000000;
          goto LABEL_47;
        }

        if (v27 != *MEMORY[0x277D49138] && v27 != *MEMORY[0x277D490C8] && v27 != *MEMORY[0x277D490E8] && v27 != *MEMORY[0x277D490F8] && v27 != *MEMORY[0x277D49108] && v27 != *MEMORY[0x277D49130] && v27 != *MEMORY[0x277D49140] && v27 != *MEMORY[0x277D490A0] && v27 != *MEMORY[0x277D49110] && v27 != *MEMORY[0x277D49148])
        {
          (*(v22 + 8))(v26, v25);
        }
      }
    }

    v28 = 0xEE00656C676E6174;
    v29 = 0x6365722E6B636F6CLL;
    (*(v22 + 8))(v23, v25);
    (*(v9 + 8))(v15, v8);
LABEL_46:
    v30 = 0;
    goto LABEL_47;
  }

  v28 = 0x800000026295EAF0;
  (*(v22 + 8))(v7, v25);
  (*(v9 + 8))(v15, v8);
  v29 = 0xD00000000000001BLL;
  v30 = 0x2000000000000000;
LABEL_47:
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = v29;
  *(a1 + 24) = v28;
  *(a1 + 32) = v30;
  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.iconView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294CC38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294CC58();
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D48F98])
  {
    v8 = 0xEB00000000647261;
    v9 = 0x63647261796E616CLL;
  }

  else
  {
    if (v7 != *MEMORY[0x277D48FA0] && v7 != *MEMORY[0x277D48F90])
    {
      (*(v3 + 8))(v6, v2);
    }

    v8 = 0xEE00656C676E6174;
    v9 = 0x6365722E6B636F6CLL;
  }

  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_262921698@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26294C7F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v7);
  v10 = sub_26294C7D8();
  v12 = v11;
  (*(v5 + 8))(v9, v4);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0x4000000000000000;
  return result;
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.iconView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C7D8();
  v4 = v3;
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0x4000000000000000;
  return result;
}

double SEStorageManagementViewModel.ESimProfile.iconView.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = 6.47491813e170;
  *(a1 + 16) = xmmword_2629505C0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_262921834@<X0>(void *a1@<X8>)
{
  result = sub_26294D208();
  *a1 = v3;
  return result;
}

uint64_t sub_262921860@<X0>(void *a1@<X8>)
{
  result = sub_26294D208();
  *a1 = v3;
  return result;
}

void sub_2629218E0(uint64_t a1)
{
  v1 = a1;
  v19 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_26294DF28();
    sub_26292BDE4(0, &qword_27FF2F710, 0x277D75940);
    sub_26292BD7C();
    sub_26294DE58();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
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

  while (v1 < 0)
  {
    if (!sub_26294DF38() || (sub_26292BDE4(0, &qword_27FF2F710, 0x277D75940), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_262906CD8();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x26672D3D0]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26294DDD8();
      }

      sub_26294DDF8();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t SEStorageView.init(controller:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294D168();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v17[15] = 1;
  sub_26294D928();
  v10 = v18;
  *a1 = v17[16];
  *(a1 + 8) = v10;
  v11 = type metadata accessor for SEStorageView();
  v12 = v11[5];
  sub_26294D158();
  (*(v3 + 16))(v7, v9, v2);
  sub_26294D928();
  (*(v3 + 8))(v9, v2);
  v13 = a1 + v11[7];
  strcpy(v13, "Dynamic SE UI");
  *(v13 + 14) = -4864;
  v14 = (a1 + v11[6]);
  type metadata accessor for SEStorageManagementController();
  sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
  result = sub_26294D178();
  *v14 = result;
  v14[1] = v16;
  return result;
}

uint64_t type metadata accessor for SEStorageView()
{
  result = qword_27FF2F688;
  if (!qword_27FF2F688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SEStorageView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_262921EB8(a1);
  sub_26292C8C4(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2629226C4(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F680, &qword_262950610);
  v9 = (a1 + *(result + 36));
  *v9 = sub_262922728;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_262921EB8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for SEStorageView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = sub_26294D3C8();
  v30 = 0;
  v31 = 1;
  v5 = *(v1 + 8);
  v27 = *v1;
  v28 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F728, &qword_262950708);
  sub_26294D958();
  v20[1] = v24;
  v20[2] = v23;
  v21 = v25;
  sub_26292C8C4(v1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2629226C4(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_26292C8C4(v1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v8 = swift_allocObject();
  sub_2629226C4(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v6);
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6B0, &qword_262950680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6B8, &qword_262950688);
  sub_2628DFD0C(&qword_27FF2F6C0, &qword_27FF2F6B0, &qword_262950680);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6C8, &qword_262950690);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6D0, &qword_262950698);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6D8, &qword_2629506A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6E0, &qword_2629506A8);
  v13 = sub_2628DFD0C(&qword_27FF2F6E8, &qword_27FF2F6D8, &qword_2629506A0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6F0, &qword_2629506B0);
  v15 = sub_26292BC88();
  v23 = v14;
  v24 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v23 = v10;
  v24 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v23 = v9;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  sub_26294D7E8();
}

uint64_t sub_262922274(uint64_t a1)
{
  v43 = sub_26294DD18();
  v2 = *(v43 - 8);
  v3 = *(v2 + 8);
  v4 = MEMORY[0x28223BE20](v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 connectedScenes];

  sub_26292BDE4(0, &qword_27FF2F710, 0x277D75940);
  sub_26292BD7C();
  v11 = sub_26294DE38();

  sub_2629218E0(v11);
  v13 = v12;

  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v14 = v31)
  {
    v16 = 0;
    v38 = v14 & 0xC000000000000001;
    v34 = v14 & 0xFFFFFFFFFFFFFF8;
    v35 = a1 + 8;
    v36 = v14;
    v33 = v14 + 32;
    v42 = *MEMORY[0x277D49310];
    v41 = (v2 + 104);
    v17 = (v2 + 8);
    v37 = i;
    while (v38)
    {
      v14 = MEMORY[0x26672D5B0](v16, v36);
      v18 = __OFADD__(v16, 1);
      v19 = v16 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

LABEL_11:
      v39 = v14;
      v20 = [v14 windows];
      sub_26292BDE4(0, &qword_27FF2F720, 0x277D75DA0);
      v21 = sub_26294DDB8();

      v40 = v19;
      if (v21 >> 62)
      {
        v22 = sub_26294E008();
        if (!v22)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_4;
        }
      }

      v14 = type metadata accessor for SEStorageView();
      if (v22 < 1)
      {
        goto LABEL_26;
      }

      v23 = 0;
      v24 = *(v35 + *(v14 + 24));
      v44 = v21 & 0xC000000000000001;
      v45 = v24;
      v25 = v21;
      do
      {
        if (v44)
        {
          v26 = MEMORY[0x26672D5B0](v23, v21);
        }

        else
        {
          v26 = *(v21 + 8 * v23 + 32);
        }

        v27 = v26;
        ++v23;
        swift_getKeyPath();
        swift_getKeyPath();
        v28 = v27;
        sub_26294CFF8();

        v29 = v43;
        (*v41)(v6, v42, v43);
        a1 = sub_26294DD08();
        v2 = *v17;
        (*v17)(v6, v29);
        v2(v8, v29);
        if (a1)
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }

        [v28 setOverrideUserInterfaceStyle_];

        v21 = v25;
      }

      while (v22 != v23);
LABEL_4:

      v16 = v40;
      if (v40 == v37)
      {
      }
    }

    if (v16 >= *(v34 + 16))
    {
      goto LABEL_27;
    }

    v14 = *(v33 + 8 * v16);
    v18 = __OFADD__(v16, 1);
    v19 = v16 + 1;
    if (!v18)
    {
      goto LABEL_11;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v31 = v14;
    i = sub_26294E008();
  }
}

uint64_t sub_2629226C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26292275C(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 32) + 8);
  sub_26292C8C4(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2629226C4(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_2628EAC30(sub_26292E2B0, v7);
}

uint64_t sub_262922880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6D8, &qword_2629506A0);
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6D0, &qword_262950698);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6C8, &qword_262950690);
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = *(type metadata accessor for SEStorageView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
  sub_26294D958();
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F730, &qword_262950710);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F738, &qword_262950718);
  v22 = sub_26294C8A8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F740, &qword_262950720);
  v24 = sub_26292C0AC();
  v25 = sub_26292C214(&qword_27FF2EA90, MEMORY[0x277D48ED0]);
  v26 = sub_26292C25C();
  v47 = v21;
  v48 = v22;
  v49 = v23;
  v50 = v24;
  v51 = v25;
  v52 = v26;
  swift_getOpaqueTypeConformance2();
  sub_26294D1C8();
  v45 = v37;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6E0, &qword_2629506A8);
  v28 = sub_2628DFD0C(&qword_27FF2F6E8, &qword_27FF2F6D8, &qword_2629506A0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6F0, &qword_2629506B0);
  v30 = sub_26292BC88();
  v47 = v29;
  v48 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v38;
  sub_26294D818();
  (*(v39 + 8))(v9, v32);
  v47 = v32;
  v48 = v27;
  v49 = v28;
  v50 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v40;
  sub_26294D7B8();
  (*(v41 + 8))(v14, v34);
  v47 = v34;
  v48 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v42;
  sub_26294D758();
  return (*(v43 + 8))(v19, v35);
}

uint64_t sub_262922D58(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F738, &qword_262950718);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7];
  if (sub_26294DAD8())
  {
    v9 = sub_26294D3D8();
  }

  else
  {
    v9 = sub_26294D3C8();
  }

  *v8 = v9;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F830, &qword_262950790);
  sub_262925914(a1, &v8[*(v10 + 44)]);
  v11 = *(a1 + *(v2 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v12 = v19[15];
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = &v8[*(v5 + 36)];
  *v15 = KeyPath;
  v15[1] = sub_262913BC8;
  v15[2] = v14;
  sub_26294C8A8();
  sub_26292C8C4(a1, &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SEStorageView);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_2629226C4(&v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F740, &qword_262950720);
  sub_26292C0AC();
  sub_26292C214(&qword_27FF2EA90, MEMORY[0x277D48ED0]);
  sub_26292C25C();
  sub_26294D778();

  return sub_2628DF6F0(v8, &qword_27FF2F738, &qword_262950718);
}

uint64_t sub_262923068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F838, &qword_262950810);
  v3 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v167 = &v146 - v4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F800, &qword_262950768);
  v5 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v168 = &v146 - v6;
  v166 = type metadata accessor for ViennaAppCategoryView();
  v7 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v163 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_26294C7A8();
  v162 = *(v164 - 8);
  v9 = *(v162 + 64);
  MEMORY[0x28223BE20](v164);
  v161 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ESimView();
  v11 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v147 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F840, &qword_262950818);
  v13 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v171 = &v146 - v14;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F848, &qword_262950820);
  v15 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v151 = &v146 - v16;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F7E8, &qword_262950760);
  v17 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v153 = &v146 - v18;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F7D8, &qword_262950758);
  v19 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v173 = &v146 - v20;
  v150 = type metadata accessor for MuirfieldView();
  v21 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v148 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for ViennaView();
  v23 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v154 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F850, &qword_262950828);
  v25 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v158 = &v146 - v26;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F7B8, &qword_262950750);
  v27 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v160 = &v146 - v28;
  v157 = type metadata accessor for RecommendedForDeleteView();
  v29 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v155 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_26294DAC8();
  v176 = *(v31 - 8);
  v32 = *(v176 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v175 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v174 = &v146 - v35;
  v36 = type metadata accessor for PassbookCategoryView();
  v37 = *(*(v36 - 1) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_26294CD78();
  v177 = *(v186 - 8);
  v40 = *(v177 + 64);
  MEMORY[0x28223BE20](v186);
  v185 = &v146 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F858, &qword_262950830);
  v42 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v191 = &v146 - v43;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F860, &qword_262950838);
  v44 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v181 = &v146 - v45;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F868, &qword_262950840);
  v46 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v48 = &v146 - v47;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F7A0, &qword_262950748);
  v49 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v51 = &v146 - v50;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F790, &qword_262950740);
  v52 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v182 = &v146 - v53;
  v184 = type metadata accessor for PassbookView();
  v54 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v56 = &v146 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_26294C828();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v146 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294C848();
  v62 = (*(v58 + 88))(v61, v57);
  if (v62 == *MEMORY[0x277D48EA0])
  {
    (*(v58 + 96))(v61, v57);
    v63 = v177;
    v65 = v185;
    v64 = v186;
    (*(v177 + 32))(v185, v61, v186);
    (*(v63 + 16))(v39, v65, v64);
    v66 = type metadata accessor for SEStorageView();
    v67 = *(v66 + 20);
    v68 = v36[6];
    v69 = *(v187 + *(v66 + 24) + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
    sub_26294D958();
    v70 = &v39[v36[5]];
    type metadata accessor for SEStorageManagementController();
    sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
    *v70 = sub_26294D178();
    v70[1] = v71;
    v39[v36[7]] = 0;
    v72 = v36[8];
    v73 = v176;
    v74 = v174;
    (*(v176 + 104))(v174, *MEMORY[0x277CDF0D8], v31);
    (*(v73 + 16))(v175, v74, v31);
    sub_26294D928();
    (*(v73 + 8))(v74, v31);
    v75 = v36[9];
    *&v39[v75] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
    swift_storeEnumTagMultiPayload();
    sub_26292C8C4(v39, v48, type metadata accessor for PassbookCategoryView);
    swift_storeEnumTagMultiPayload();
    sub_26292C214(&qword_27FF2F7A8, type metadata accessor for PassbookView);
    sub_26292C214(&qword_27FF2EFC8, type metadata accessor for PassbookCategoryView);
    sub_26294D3F8();
    sub_2628DF954(v51, v181, &qword_27FF2F7A0, &qword_262950748);
    swift_storeEnumTagMultiPayload();
    sub_26292C3F8();
    sub_26292C4E4();
    v76 = v182;
    sub_26294D3F8();
    sub_2628DF6F0(v51, &qword_27FF2F7A0, &qword_262950748);
    sub_2628DF954(v76, v191, &qword_27FF2F790, &qword_262950740);
    swift_storeEnumTagMultiPayload();
    sub_26292C36C();
    sub_26292C5D0();
    sub_26294D3F8();
    sub_2628DF6F0(v76, &qword_27FF2F790, &qword_262950740);
    sub_26292C92C(v39, type metadata accessor for PassbookCategoryView);
    return (*(v63 + 8))(v185, v186);
  }

  v78 = v184;
  v79 = v187;
  if (v62 == *MEMORY[0x277D48E98])
  {
    (*(v58 + 96))(v61, v57);
    v80 = v162;
    v81 = v161;
    v82 = v164;
    (*(v162 + 32))(v161, v61, v164);
    v83 = v163;
    (*(v80 + 16))(v163, v81, v82);
    v84 = type metadata accessor for SEStorageView();
    v85 = *(v84 + 20);
    v86 = v166;
    v87 = *(v166 + 24);
    v88 = *(v79 + *(v84 + 24) + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
    sub_26294D958();
    v89 = (v83 + v86[5]);
    type metadata accessor for SEStorageManagementController();
    sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
    *v89 = sub_26294D178();
    v89[1] = v90;
    *(v83 + v86[7]) = 0;
    v91 = v86[8];
    *(v83 + v91) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
    swift_storeEnumTagMultiPayload();
    sub_26292C8C4(v83, v167, type metadata accessor for ViennaAppCategoryView);
    swift_storeEnumTagMultiPayload();
    sub_26292C214(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView);
    v92 = v168;
    sub_26294D3F8();
    sub_2628DF954(v92, v171, &qword_27FF2F800, &qword_262950768);
    swift_storeEnumTagMultiPayload();
    sub_26292C65C();
    sub_26292C748();
    v93 = v173;
    sub_26294D3F8();
    sub_2628DF6F0(v92, &qword_27FF2F800, &qword_262950768);
    sub_2628DF954(v93, v191, &qword_27FF2F7D8, &qword_262950758);
    swift_storeEnumTagMultiPayload();
    sub_26292C36C();
    sub_26292C5D0();
    sub_26294D3F8();
    sub_2628DF6F0(v93, &qword_27FF2F7D8, &qword_262950758);
    sub_26292C92C(v83, type metadata accessor for ViennaAppCategoryView);
    return (*(v80 + 8))(v81, v82);
  }

  if (v62 == *MEMORY[0x277D48EC0])
  {
    v94 = sub_26294C8A8();
    (*(*(v94 - 8) + 16))(v56, a1, v94);
    v95 = type metadata accessor for SEStorageView();
    v96 = *(v95 + 20);
    v97 = v78[6];
    v98 = *(v79 + *(v95 + 24) + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
    sub_26294D958();
    v99 = &v56[v78[5]];
    type metadata accessor for SEStorageManagementController();
    sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
    *v99 = sub_26294D178();
    v99[1] = v100;
    v101 = v78[7];
    *&v56[v101] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
    swift_storeEnumTagMultiPayload();
    sub_26292C8C4(v56, v48, type metadata accessor for PassbookView);
    swift_storeEnumTagMultiPayload();
    sub_26292C214(&qword_27FF2F7A8, type metadata accessor for PassbookView);
    sub_26292C214(&qword_27FF2EFC8, type metadata accessor for PassbookCategoryView);
    sub_26294D3F8();
    sub_2628DF954(v51, v181, &qword_27FF2F7A0, &qword_262950748);
    swift_storeEnumTagMultiPayload();
    sub_26292C3F8();
    sub_26292C4E4();
    v102 = v182;
    sub_26294D3F8();
    sub_2628DF6F0(v51, &qword_27FF2F7A0, &qword_262950748);
    sub_2628DF954(v102, v191, &qword_27FF2F790, &qword_262950740);
    swift_storeEnumTagMultiPayload();
    sub_26292C36C();
    sub_26292C5D0();
    sub_26294D3F8();
    sub_2628DF6F0(v102, &qword_27FF2F790, &qword_262950740);
    v103 = type metadata accessor for PassbookView;
  }

  else
  {
    if (v62 == *MEMORY[0x277D48EA8])
    {
      v106 = sub_26294C8A8();
      v107 = v155;
      (*(*(v106 - 8) + 16))(v155, a1, v106);
      v108 = type metadata accessor for SEStorageView();
      v109 = *(v108 + 20);
      v110 = v157;
      v111 = *(v157 + 24);
      v112 = *(v79 + *(v108 + 24) + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
      sub_26294D958();
      v113 = (v107 + *(v110 + 20));
      type metadata accessor for SEStorageManagementController();
      sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
      *v113 = sub_26294D178();
      v113[1] = v114;
      v115 = *(v110 + 28);
      *(v107 + v115) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
      swift_storeEnumTagMultiPayload();
      sub_26292C8C4(v107, v158, type metadata accessor for RecommendedForDeleteView);
      swift_storeEnumTagMultiPayload();
      sub_26292C214(&qword_27FF2F7C0, type metadata accessor for RecommendedForDeleteView);
      sub_26292C214(&qword_27FF2F7C8, type metadata accessor for ViennaView);
      v116 = v160;
      sub_26294D3F8();
      sub_2628DF954(v116, v181, &qword_27FF2F7B8, &qword_262950750);
      swift_storeEnumTagMultiPayload();
      sub_26292C3F8();
      sub_26292C4E4();
      v117 = v182;
      sub_26294D3F8();
      sub_2628DF6F0(v116, &qword_27FF2F7B8, &qword_262950750);
      sub_2628DF954(v117, v191, &qword_27FF2F790, &qword_262950740);
      swift_storeEnumTagMultiPayload();
      sub_26292C36C();
      sub_26292C5D0();
      sub_26294D3F8();
      sub_2628DF6F0(v117, &qword_27FF2F790, &qword_262950740);
      v104 = type metadata accessor for RecommendedForDeleteView;
      v105 = v107;
      return sub_26292C92C(v105, v104);
    }

    v118 = v191;
    if (v62 == *MEMORY[0x277D48EB8])
    {
      v119 = sub_26294C8A8();
      v120 = v154;
      (*(*(v119 - 8) + 16))(v154, a1, v119);
      v121 = type metadata accessor for SEStorageView();
      v122 = *(v121 + 20);
      v123 = v159;
      v124 = *(v159 + 24);
      v125 = *(v79 + *(v121 + 24) + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
      sub_26294D958();
      v126 = (v120 + *(v123 + 20));
      type metadata accessor for SEStorageManagementController();
      sub_26292C214(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
      *v126 = sub_26294D178();
      v126[1] = v127;
      v128 = *(v123 + 28);
      *(v120 + v128) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
      swift_storeEnumTagMultiPayload();
      sub_26292C8C4(v120, v158, type metadata accessor for ViennaView);
      swift_storeEnumTagMultiPayload();
      sub_26292C214(&qword_27FF2F7C0, type metadata accessor for RecommendedForDeleteView);
      sub_26292C214(&qword_27FF2F7C8, type metadata accessor for ViennaView);
      v129 = v160;
      sub_26294D3F8();
      sub_2628DF954(v129, v181, &qword_27FF2F7B8, &qword_262950750);
      swift_storeEnumTagMultiPayload();
      sub_26292C3F8();
      sub_26292C4E4();
      v130 = v182;
      sub_26294D3F8();
      sub_2628DF6F0(v129, &qword_27FF2F7B8, &qword_262950750);
      sub_2628DF954(v130, v118, &qword_27FF2F790, &qword_262950740);
      swift_storeEnumTagMultiPayload();
      sub_26292C36C();
      sub_26292C5D0();
      sub_26294D3F8();
      sub_2628DF6F0(v130, &qword_27FF2F790, &qword_262950740);
      v104 = type metadata accessor for ViennaView;
      v105 = v120;
      return sub_26292C92C(v105, v104);
    }

    if (v62 == *MEMORY[0x277D48EC8])
    {
      v131 = v191;
      v132 = sub_26294C8A8();
      v56 = v148;
      (*(*(v132 - 8) + 16))(v148, a1, v132);
      v133 = *(v79 + *(type metadata accessor for SEStorageView() + 24) + 8);
      v134 = v150;
      *&v56[*(v150 + 20)] = v133;
      v135 = *(v134 + 24);
      *&v56[v135] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
      swift_storeEnumTagMultiPayload();
      sub_26292C8C4(v56, v151, type metadata accessor for MuirfieldView);
      swift_storeEnumTagMultiPayload();
      sub_26292C214(&qword_27FF2EFE8, type metadata accessor for MuirfieldView);
      sub_26292C214(&qword_27FF2F7F0, type metadata accessor for ESimView);
      v136 = v133;
      v137 = v153;
      sub_26294D3F8();
      sub_2628DF954(v137, v171, &qword_27FF2F7E8, &qword_262950760);
      swift_storeEnumTagMultiPayload();
      sub_26292C65C();
      sub_26292C748();
      v138 = v173;
      sub_26294D3F8();
      sub_2628DF6F0(v137, &qword_27FF2F7E8, &qword_262950760);
      sub_2628DF954(v138, v131, &qword_27FF2F7D8, &qword_262950758);
      swift_storeEnumTagMultiPayload();
      sub_26292C36C();
      sub_26292C5D0();
      sub_26294D3F8();
      sub_2628DF6F0(v138, &qword_27FF2F7D8, &qword_262950758);
      v103 = type metadata accessor for MuirfieldView;
    }

    else
    {
      if (v62 != *MEMORY[0x277D48EB0])
      {
        swift_storeEnumTagMultiPayload();
        sub_26292C214(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView);
        v144 = v168;
        sub_26294D3F8();
        sub_2628DF954(v144, v171, &qword_27FF2F800, &qword_262950768);
        swift_storeEnumTagMultiPayload();
        sub_26292C65C();
        sub_26292C748();
        v145 = v173;
        sub_26294D3F8();
        sub_2628DF6F0(v144, &qword_27FF2F800, &qword_262950768);
        sub_2628DF954(v145, v191, &qword_27FF2F7D8, &qword_262950758);
        swift_storeEnumTagMultiPayload();
        sub_26292C36C();
        sub_26292C5D0();
        sub_26294D3F8();
        sub_2628DF6F0(v145, &qword_27FF2F7D8, &qword_262950758);
        return (*(v58 + 8))(v61, v57);
      }

      v139 = sub_26294C8A8();
      v56 = v147;
      (*(*(v139 - 8) + 16))(v147, a1, v139);
      v140 = *(v79 + *(type metadata accessor for SEStorageView() + 24) + 8);
      *&v56[*(v152 + 20)] = v140;
      sub_26292C8C4(v56, v151, type metadata accessor for ESimView);
      swift_storeEnumTagMultiPayload();
      sub_26292C214(&qword_27FF2EFE8, type metadata accessor for MuirfieldView);
      sub_26292C214(&qword_27FF2F7F0, type metadata accessor for ESimView);
      v141 = v140;
      v142 = v153;
      sub_26294D3F8();
      sub_2628DF954(v142, v171, &qword_27FF2F7E8, &qword_262950760);
      swift_storeEnumTagMultiPayload();
      sub_26292C65C();
      sub_26292C748();
      v143 = v173;
      sub_26294D3F8();
      sub_2628DF6F0(v142, &qword_27FF2F7E8, &qword_262950760);
      sub_2628DF954(v143, v191, &qword_27FF2F7D8, &qword_262950758);
      swift_storeEnumTagMultiPayload();
      sub_26292C36C();
      sub_26292C5D0();
      sub_26294D3F8();
      sub_2628DF6F0(v143, &qword_27FF2F7D8, &qword_262950758);
      v103 = type metadata accessor for ESimView;
    }
  }

  v104 = v103;
  v105 = v56;
  return sub_26292C92C(v105, v104);
}

uint64_t sub_26292500C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F808, &qword_262950770);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = v33 - v5;
  v6 = sub_26294D448();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F700, &qword_2629506B8);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F6F0, &qword_2629506B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v33 - v17;
  if (!os_variant_has_internal_diagnostics())
  {
    goto LABEL_4;
  }

  v19 = objc_opt_self();
  v20 = (v36 + *(type metadata accessor for SEStorageView() + 28));
  v21 = *v20;
  v22 = v20[1];
  v23 = v12;
  v24 = sub_26294DD58();
  LODWORD(v19) = [v19 isAllowedForClient_];

  v12 = v23;
  if (v19)
  {
    v25 = sub_26294D438();
    v33[1] = v33;
    MEMORY[0x28223BE20](v25);
    v33[-2] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F810, &qword_262950778);
    sub_2628DFD0C(&qword_27FF2F818, &qword_27FF2F810, &qword_262950778);
    v12 = v23;
    sub_26294D1E8();
    v26 = sub_2628DFD0C(&qword_27FF2F708, &qword_27FF2F700, &qword_2629506B8);
    v27 = v35;
    MEMORY[0x26672CAA0](v11, v8, v26);
    (*(v3 + 16))(v16, v27, v2);
    (*(v3 + 56))(v16, 0, 1, v2);
    v38 = v8;
    v39 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x26672CAD0](v16, v2, OpaqueTypeConformance2);
    sub_2628DF6F0(v16, &qword_27FF2F6F0, &qword_2629506B0);
    (*(v3 + 8))(v27, v2);
    (*(v34 + 8))(v11, v8);
  }

  else
  {
LABEL_4:
    (*(v3 + 56))(v16, 1, 1, v2);
    v29 = sub_2628DFD0C(&qword_27FF2F708, &qword_27FF2F700, &qword_2629506B8);
    v38 = v8;
    v39 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    MEMORY[0x26672CAD0](v16, v2, v30);
    sub_2628DF6F0(v16, &qword_27FF2F6F0, &qword_2629506B0);
  }

  v31 = sub_26292BC88();
  MEMORY[0x26672CAA0](v18, v12, v31);
  return sub_2628DF6F0(v18, &qword_27FF2F6F0, &qword_2629506B0);
}

uint64_t sub_26292551C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SEStorageView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B0, &qword_262950240);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F820, &qword_262950780);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v19 = sub_26294D048();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_26292C8C4(a1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_2629226C4(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_26294D978();
  v22 = v12[2];
  v22(v16, v18, v11);
  *a2 = 0;
  *(a2 + 8) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F828, &qword_262950788);
  v22((a2 + *(v23 + 48)), v16, v11);
  v24 = v12[1];
  v24(v18, v11);
  return (v24)(v16, v11);
}

void sub_262925828(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_26294DD58();
  v4 = (a1 + *(type metadata accessor for SEStorageView() + 28));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_26294DD58();
  [v2 requestTapToRadar:v3 client:v7 fullArchive:0];
}

uint64_t sub_2629258E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26294D8D8();
  *a1 = result;
  return result;
}

uint64_t sub_262925914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v65 = sub_26294D468();
  v67 = *(v65 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F870, &qword_262950878);
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v57 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F878, &qword_262950880);
  v10 = *(v9 - 8);
  v61 = v9;
  v62 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F880, &qword_262950888);
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v58 = &v55 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F888, &qword_262950890);
  v66 = *(v70 - 8);
  v17 = *(v66 + 64);
  v18 = MEMORY[0x28223BE20](v70);
  v64 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v74 = &v55 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F890, &qword_262950898);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v75 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v72 = &v55 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F898, &qword_2629508A0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v73 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v76 = &v55 - v30;
  sub_2629261AC(&v55 - v30);
  sub_2629267AC(&v88);
  v85 = v94;
  v86 = v95;
  v87[0] = v96[0];
  *(v87 + 9) = *(v96 + 9);
  v81 = v90;
  v82 = v91;
  v83 = v92;
  v84 = v93;
  v79 = v88;
  v80 = v89;
  sub_262926A9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F8A0, &qword_2629508A8);
  sub_26292C98C();
  sub_26294D798();

  v97[6] = v85;
  v97[7] = v86;
  v98[0] = v87[0];
  *(v98 + 9) = *(v87 + 9);
  v97[2] = v81;
  v97[3] = v82;
  v97[4] = v83;
  v97[5] = v84;
  v97[0] = v79;
  v97[1] = v80;
  sub_2628DF6F0(v97, &qword_27FF2F8A0, &qword_2629508A8);
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F970, &qword_262950910);
  sub_2628DFD0C(&qword_27FF2F978, &qword_27FF2F970, &qword_262950910);
  v31 = v57;
  sub_26294D5E8();
  v32 = sub_2628DFD0C(&qword_27FF2F980, &qword_27FF2F870, &qword_262950878);
  v33 = v56;
  v34 = v59;
  sub_26294D7A8();
  (*(v60 + 8))(v31, v34);
  v35 = v63;
  sub_26294D458();
  *&v88 = v34;
  *(&v88 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = MEMORY[0x277CDE0D0];
  v38 = v58;
  v39 = v61;
  v40 = v65;
  sub_26294D828();
  (*(v67 + 8))(v35, v40);
  (*(v62 + 8))(v33, v39);
  v77 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F988, &qword_262950918);
  *&v88 = v39;
  *(&v88 + 1) = v40;
  *&v89 = OpaqueTypeConformance2;
  *(&v89 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F990, &qword_262950920);
  v42 = sub_26292D01C();
  *&v88 = v41;
  *(&v88 + 1) = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v74;
  v44 = v68;
  sub_26294D818();
  (*(v69 + 8))(v38, v44);
  v45 = v73;
  sub_2628DF954(v76, v73, &qword_27FF2F898, &qword_2629508A0);
  v46 = v75;
  sub_2628DF954(v72, v75, &qword_27FF2F890, &qword_262950898);
  v47 = v66;
  v48 = *(v66 + 16);
  v49 = v64;
  v50 = v70;
  v48(v64, v43, v70);
  v51 = v71;
  sub_2628DF954(v45, v71, &qword_27FF2F898, &qword_2629508A0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F9C0, &qword_262950938);
  sub_2628DF954(v46, v51 + *(v52 + 48), &qword_27FF2F890, &qword_262950898);
  v48((v51 + *(v52 + 64)), v49, v50);
  v53 = *(v47 + 8);
  v53(v74, v50);
  sub_2628DF6F0(v72, &qword_27FF2F890, &qword_262950898);
  sub_2628DF6F0(v76, &qword_27FF2F898, &qword_2629508A0);
  v53(v49, v50);
  sub_2628DF6F0(v75, &qword_27FF2F890, &qword_262950898);
  return sub_2628DF6F0(v73, &qword_27FF2F898, &qword_2629508A0);
}

uint64_t sub_2629261AC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAC8, &qword_262950AE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v68 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAD0, &qword_262950AE8);
  v6 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v8 = &v68 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAD8, &qword_262950AF0);
  v9 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v11 = &v68 - v10;
  if (sub_26294DAD8())
  {
    sub_26292A218(&v80);
    v12 = v82;
    v13 = BYTE2(v82);
    v71 = v80;
    v70 = v81;
    v14 = sub_26294D5A8();
    KeyPath = swift_getKeyPath();
    v79 = v13;
    v16 = swift_getKeyPath();
    v75 = v70;
    v74 = v71;
    LOWORD(v76) = v12;
    BYTE2(v76) = v79;
    *(&v76 + 1) = KeyPath;
    *&v77 = v14;
    *(&v77 + 1) = v16;
    v78 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB68, &unk_262950B70);
    sub_26292DEE4();
    sub_26294D7D8();
    v82 = v76;
    v83 = v77;
    v84 = v78;
    v80 = v74;
    v81 = v75;
    sub_2628DF6F0(&v80, &qword_27FF2FB68, &unk_262950B70);
    sub_26294DAE8();
    sub_26294D0D8();
    v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB60, &qword_262950B68) + 36)];
    v18 = v75;
    *v17 = v74;
    *(v17 + 1) = v18;
    *(v17 + 2) = v76;
    LOBYTE(v14) = sub_26294D538();
    sub_26294D058();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB50, &qword_262950B60) + 36)];
    *v27 = v14;
    *(v27 + 1) = v20;
    *(v27 + 2) = v22;
    *(v27 + 3) = v24;
    *(v27 + 4) = v26;
    v27[40] = 0;
    LOBYTE(v14) = sub_26294D518();
    sub_26294D058();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB40, &qword_262950B58) + 36)];
    *v36 = v14;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    LOBYTE(v14) = sub_26294D548();
    sub_26294D058();
    v37 = &v11[*(v73 + 36)];
    *v37 = v14;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    sub_2628DF954(v11, v8, &qword_27FF2FAD8, &qword_262950AF0);
    swift_storeEnumTagMultiPayload();
    sub_26292DC78();
    sub_26292DF9C();
    sub_26294D3F8();
    v42 = v11;
    v43 = &qword_27FF2FAD8;
    v44 = &qword_262950AF0;
  }

  else
  {
    sub_26292A218(&v80);
    v45 = v80;
    v46 = v81;
    v68 = *(&v81 + 1);
    *&v70 = v8;
    v47 = BYTE2(v82);
    v48 = v82;
    v49 = sub_26294D588();
    v69 = v2;
    v50 = v49;
    v51 = swift_getKeyPath();
    *&v71 = a1;
    LOBYTE(v74) = v47;
    v80 = v45;
    v81 = v46;
    LOWORD(v82) = v48;
    BYTE2(v82) = v47;
    *(&v82 + 1) = v51;
    *&v83 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FAE0, &qword_262950B28);
    sub_26292D9C4();
    sub_26294D7D8();
    sub_26292DB94(v45, *(&v45 + 1), v46, v68, v48, v47);

    sub_26294DAE8();
    sub_26294D0D8();
    v52 = v5;
    v53 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB20, &qword_262950B48) + 36)];
    v54 = v81;
    *v53 = v80;
    *(v53 + 1) = v54;
    *(v53 + 2) = v82;
    v55 = sub_26294D548();
    sub_26294D058();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FB28, &qword_262950B50) + 36);
    *v64 = v55;
    *(v64 + 8) = v57;
    *(v64 + 16) = v59;
    *(v64 + 24) = v61;
    *(v64 + 32) = v63;
    *(v64 + 40) = 0;
    v65 = sub_26294D518();
    v66 = v52 + *(v69 + 36);
    *v66 = v65;
    *(v66 + 8) = 0u;
    *(v66 + 24) = 0u;
    *(v66 + 40) = 1;
    sub_2628DF954(v52, v70, &qword_27FF2FAC8, &qword_262950AE0);
    swift_storeEnumTagMultiPayload();
    sub_26292DC78();
    sub_26292DF9C();
    sub_26294D3F8();
    v42 = v52;
    v43 = &qword_27FF2FAC8;
    v44 = &qword_262950AE0;
  }

  return sub_2628DF6F0(v42, v43, v44);
}

double sub_2629267AC@<D0>(_OWORD *a1@<X8>)
{
  if (sub_26294DAD8())
  {
    sub_26292A7B4(&v52);
    v2 = v54;
    v3 = BYTE2(v54);
    v4 = BYTE3(v54);
    v26 = v53;
    v28 = v52;
    v5 = sub_26294D4C8();
    KeyPath = swift_getKeyPath();
    v32 = v4;
    v7 = sub_26294D518();
    sub_26294D058();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    LOBYTE(v52) = 0;
    sub_26294DAE8();
    sub_26294D0D8();
    *&v30[7] = v49;
    *&v30[23] = v50;
    *&v30[39] = v51;
    v34 = v28;
    v35 = v26;
    v37 = v3;
    v36 = v2;
    v38 = v32;
    v39 = v5;
    v40 = KeyPath;
    v41 = 0;
    v42 = v7;
    *&v43 = v9;
    *(&v43 + 1) = v11;
    *&v44 = v13;
    *(&v44 + 1) = v15;
    v45 = 0;
    *&v48[15] = *(&v51 + 1);
    *v48 = *&v30[32];
    v47 = *&v30[16];
    v46 = *v30;
    sub_26292D95C(&v34);
  }

  else
  {
    sub_26292A7B4(&v52);
    v16 = v54;
    v17 = BYTE2(v54);
    v18 = BYTE3(v54);
    v27 = v53;
    v29 = v52;
    v19 = swift_getKeyPath();
    v33 = v18;
    v20 = sub_26294D518();
    LOBYTE(v52) = 1;
    sub_26294DAE8();
    sub_26294D0D8();
    *&v31[39] = v51;
    *&v31[23] = v50;
    *&v31[7] = v49;
    v34 = v29;
    v35 = v27;
    v37 = v17;
    v36 = v16;
    v38 = v33;
    v40 = v19;
    v41 = 1;
    v42 = v20;
    v43 = 0u;
    v44 = 0u;
    v45 = 1;
    *&v48[15] = *(&v51 + 1);
    *v48 = *&v31[32];
    v47 = *&v31[16];
    v46 = *v31;
    sub_26292D950(&v34);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F8B8, &qword_2629508B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F948, &qword_2629508F8);
  sub_26292CA18();
  sub_26292CE3C();
  sub_26294D3F8();
  v21 = v59;
  a1[6] = v58;
  a1[7] = v21;
  a1[8] = v60[0];
  *(a1 + 137) = *(v60 + 9);
  v22 = v55;
  a1[2] = v54;
  a1[3] = v22;
  v23 = v57;
  a1[4] = v56;
  a1[5] = v23;
  result = *&v52;
  v25 = v53;
  *a1 = v52;
  a1[1] = v25;
  return result;
}