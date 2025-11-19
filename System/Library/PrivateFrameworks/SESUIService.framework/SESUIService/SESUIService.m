__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2628DC750(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2628DC770(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27FF2E7D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FF2E7D0);
    }
  }
}

uint64_t sub_2628DC7FC(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2628DC9E8(uint64_t a1, uint64_t a2, int a3, int *a4)
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

uint64_t type metadata accessor for ViennaView()
{
  result = qword_27FF2E7E8;
  if (!qword_27FF2E7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2628DCBC4()
{
  sub_26294C8A8();
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

void sub_2628DCCD8()
{
  if (!qword_27FF2E7F8)
  {
    type metadata accessor for SEStorageManagementController();
    sub_2628DF90C(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
    v0 = sub_26294D1A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF2E7F8);
    }
  }
}

void sub_2628DCD6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2628DCDEC()
{
  v0 = sub_26294C828();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  sub_26294C848();
  sub_26294C848();
  v8 = MEMORY[0x26672BE40](v7, v5);
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_2628DCF20@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for ViennaView();
  v30 = *(v2 - 8);
  v31 = v2 - 8;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E818, &qword_26294E870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E820, &qword_26294E878);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  *v7 = sub_26294D3C8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E828, &qword_26294E880);
  sub_2628DD360(&v7[*(v13 + 44)]);
  v14 = v1;
  v35 = sub_26294C868();
  v36 = v15;
  v16 = sub_2628DFD0C(&qword_27FF2E830, &qword_27FF2E818, &qword_26294E870);
  v17 = sub_2628DF230();
  sub_26294D708();

  sub_2628DF6F0(v7, &qword_27FF2E818, &qword_26294E870);
  sub_26294C7A8();
  sub_2628DF284(v1, &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v19 = swift_allocObject();
  sub_2628DF2EC(&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  type metadata accessor for ViennaAppCategoryView();
  v35 = v4;
  v36 = MEMORY[0x277D837D0];
  v37 = v16;
  v38 = v17;
  swift_getOpaqueTypeConformance2();
  sub_2628DF90C(&qword_27FF2E848, MEMORY[0x277D48E58]);
  sub_2628DF90C(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView);
  v20 = v34;
  v21 = v32;
  sub_26294D778();

  (*(v33 + 8))(v12, v21);
  v22 = *(v14 + *(v31 + 28) + 8);
  type metadata accessor for SEStorageManagementController();
  sub_2628DF90C(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
  v23 = v22;
  v24 = sub_26294D178();
  v26 = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E858, &qword_26294E888);
  v28 = (v20 + *(result + 36));
  *v28 = v24;
  v28[1] = v26;
  return result;
}

uint64_t sub_2628DD360@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E860, &qword_26294E8C0);
  v22[0] = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v23 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E868, &qword_26294E8C8);
  sub_2628DF374();
  sub_26294D5E8();
  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  v24 = sub_26294D838();
  *&v10[*(v7 + 36)] = sub_26294D9D8();
  (*(v3 + 104))(v6, *MEMORY[0x277D48DF8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26294E7D0;
  v13 = sub_26294C878();
  v15 = v14;
  v16 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v17 = sub_2628DF5B8();
  *(v12 + 64) = v17;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_26294C888();
  v19 = sub_2629205EC(v18);
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 72) = v19;
  *(v12 + 80) = v20;
  sub_26294C6B8();

  (*(v3 + 8))(v6, v2);
  sub_2628DF60C();
  sub_26294D798();

  return sub_2628DF6F0(v10, &qword_27FF2E860, &qword_26294E8C0);
}

uint64_t sub_2628DD620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26294C7A8();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for ViennaView();
  v8 = *(v7 + 24);
  v9 = *(a2 + *(v7 + 20) + 8);
  v10 = type metadata accessor for ViennaAppCategoryView();
  v11 = v10[6];
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  sub_26294DA08();
  v13 = (a3 + v10[5]);
  type metadata accessor for SEStorageManagementController();
  sub_2628DF90C(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
  *v13 = sub_26294D178();
  v13[1] = v14;
  *(a3 + v10[7]) = 0;
  v15 = v10[8];
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2628DD788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v7 = a1;
  sub_2628DEAC0(&v6[-v4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8A0, &qword_26294E8D0);
  sub_2628DF40C();
  sub_2628DF508();
  return sub_26294DA78();
}

uint64_t sub_2628DD880(uint64_t a1)
{
  v2 = type metadata accessor for ViennaView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  sub_2628DF284(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2628DF2EC(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E908, &qword_26294E928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B0, &unk_262950DD0);
  sub_2628DFD0C(&qword_27FF2E910, &qword_27FF2E908, &qword_26294E928);
  sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0);
  sub_2628DF90C(&qword_27FF2E918, MEMORY[0x277D48E58]);
  return sub_26294DA68();
}

uint64_t sub_2628DDAD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = sub_26294C7A8();
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
  v14 = MEMORY[0x277D48E58];
  sub_2628DF90C(&qword_27FF2E968, MEMORY[0x277D48E58]);
  sub_2628DF90C(&qword_27FF2E970, v14);
  sub_2628DF90C(&qword_27FF2E848, v14);
  return sub_26294D118();
}

uint64_t sub_2628DDD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v65 = a3;
  v62 = sub_26294C5F8();
  v66 = *(v62 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_26294C7F8();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v59);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v57 - v16);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E930, &unk_26294FFB0);
  v18 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v57 - v19;
  v20 = sub_26294C778();
  v22 = v21;
  sub_26294C768();
  v58 = a1;
  sub_26294C798();
  v24 = sub_2629205EC(v23);
  v26 = v25;
  *v17 = v20;
  v17[1] = v22;
  sub_2628DF954(v13, v17 + v14[9], &qword_27FF2E978, &qword_26294EC40);
  *(v17 + v14[15]) = 1;
  *(v17 + v14[10]) = 0;
  v27 = (v17 + v14[11]);
  *v27 = v24;
  v27[1] = v26;
  *(v17 + v14[12]) = 2;
  *(v17 + v14[13]) = 0;
  v28 = v17 + v14[14];
  sub_26294C758();
  v29 = sub_26294C7D8();
  v31 = v30;
  (*(v6 + 8))(v9, v59);
  KeyPath = swift_getKeyPath();
  sub_26294DAE8();
  sub_26294D0D8();
  v69 = 0;
  v33 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36)];
  v34 = *(sub_26294D1D8() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_26294D378();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #6.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  v42 = v71;
  *(v28 + 40) = v70;
  *v28 = KeyPath;
  v28[8] = 0;
  *(v28 + 2) = v29;
  *(v28 + 3) = v31;
  *(v28 + 4) = 0x4000000000000000;
  *(v28 + 56) = v42;
  *(v28 + 72) = v72;
  sub_2628DF6F0(v13, &qword_27FF2E978, &qword_26294EC40);
  v43 = v60;
  v44 = v62;
  (*(v66 + 104))(v60, *MEMORY[0x277D48DF8], v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_26294E7D0;
  v46 = v58;
  v47 = sub_26294C778();
  v49 = v48;
  v50 = MEMORY[0x277D837D0];
  *(v45 + 56) = MEMORY[0x277D837D0];
  v51 = sub_2628DF5B8();
  *(v45 + 64) = v51;
  *(v45 + 32) = v47;
  *(v45 + 40) = v49;
  sub_26294C798();
  v53 = sub_2629205EC(v52);
  *(v45 + 96) = v50;
  *(v45 + 104) = v51;
  *(v45 + 72) = v53;
  *(v45 + 80) = v54;
  sub_26294C6B8();

  (*(v66 + 8))(v43, v44);
  sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0);
  v55 = v61;
  sub_26294D798();

  sub_2628DF6F0(v17, &qword_27FF2E950, &unk_26294FFC0);
  v67 = v64;
  v68 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E938, &unk_26294F890);
  sub_2628DF824();
  sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890);
  sub_26294D6C8();
  return sub_2628DF6F0(v55, &qword_27FF2E930, &unk_26294FFB0);
}

uint64_t sub_2628DE370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v21 = sub_26294C7A8();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = type metadata accessor for ViennaView();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26294C5F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D48DF0], v7);
  v19 = sub_26294C5E8();
  v13 = v12;
  (*(v8 + 8))(v11, v7);
  sub_2628DF284(v22, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v21;
  (*(v3 + 16))(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v21);
  v15 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v16 = (v6 + *(v3 + 80) + v15) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_2628DF2EC(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  (*(v3 + 32))(v17 + v16, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v28[0] = v19;
  v28[1] = v13;
  v25 = v28;
  v26 = 0x6873617274;
  v27 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
  sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0);
  sub_26294D988();
}

uint64_t sub_2628DE6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(a1 + *(MEMORY[0x28223BE20](v4 - 8) + 28) + 8);
  sub_2628E2368(a2, 1);
  sub_2628DF284(a1, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2628DF2EC(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v12[15] & 1) == 0)
  {
    v10 = v7;

    sub_262904ED0(v10, v10, sub_2628DFF20, v9);
  }
}

uint64_t sub_2628DE864(char a1, uint64_t a2)
{
  v4 = sub_26294D0F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9 - 8);
  v13 = v20 - v12;
  if (a1)
  {
    v14 = type metadata accessor for ViennaView();
    v15 = *(a2 + *(v14 + 20) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v17 = v20[1];
    MEMORY[0x28223BE20](v16);
    v20[-2] = a2;
    sub_2629180CC(sub_2628DFFA0, v17, v13);

    v18 = sub_26294C8A8();
    LODWORD(v15) = (*(*(v18 - 8) + 48))(v13, 1, v18);
    result = sub_2628DF6F0(v13, &qword_27FF2E9A0, &qword_26294E9A8);
    if (v15 == 1)
    {
      v19 = a2 + *(v14 + 28);
      sub_26291D460(v8);
      sub_26294D0E8();
      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

__n128 sub_2628DEAC0@<Q0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_26294D4E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8F0, &qword_26294FF90);
  v6 = *(v17 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
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

uint64_t sub_2628DEDFC@<X0>(void *a1@<X8>)
{
  sub_26294C868();
  sub_2628DF230();
  v1 = sub_26294D648();
  v3 = v2;
  v5 = v4;
  sub_26294D4B8();
  v6 = sub_26294D618();
  v26 = v7;
  v27 = v6;
  v9 = v8;
  v28 = v10;
  sub_2628DF758(v1, v3, v5 & 1);

  sub_26294DAF8();
  sub_26294D1F8();
  LOBYTE(v1) = v9 & 1;
  v89 = v9 & 1;
  sub_26294C888();
  HIDWORD(v67) = sub_2629205EC(v11) >> 32;
  v68 = v12;
  v13 = sub_26294D648();
  v15 = v14;
  v17 = v16;
  LODWORD(v67) = sub_26294D4C8();
  v18 = sub_26294D618();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_2628DF758(v13, v15, v17 & 1);

  sub_26294DB08();
  sub_26294D1F8();
  v80 = v22 & 1;
  *&v38 = v27;
  *(&v38 + 1) = v26;
  LOBYTE(v39) = v1;
  *(&v39 + 1) = *v88;
  DWORD1(v39) = *&v88[3];
  *(&v39 + 1) = v28;
  v44 = v85;
  v45 = v86;
  v46 = v87;
  v40 = v81;
  v41 = v82;
  v42 = v83;
  v43 = v84;
  __src[6] = v85;
  __src[7] = v86;
  __src[2] = v81;
  __src[3] = v82;
  __src[4] = v83;
  __src[5] = v84;
  __src[0] = v38;
  __src[1] = v39;
  *&v47 = v18;
  *(&v47 + 1) = v20;
  LOBYTE(v48) = v22 & 1;
  *(&v48 + 1) = *v79;
  DWORD1(v48) = *&v79[3];
  *(&v48 + 1) = v24;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v52 = v34;
  __src[12] = v32;
  __src[13] = v33;
  __src[10] = v48;
  __src[11] = v31;
  __src[14] = v34;
  __src[15] = v35;
  __src[16] = v36;
  __src[17] = v37;
  __src[8] = v87;
  __src[9] = v47;
  memcpy(a1, __src, 0x120uLL);
  v56[0] = v18;
  v56[1] = v20;
  v57 = v22 & 1;
  *v58 = *v79;
  *&v58[3] = *&v79[3];
  v59 = v24;
  v64 = v35;
  v65 = v36;
  v66 = v37;
  v60 = v31;
  v61 = v32;
  v62 = v33;
  v63 = v34;
  sub_2628DF954(&v38, &v67, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF954(&v47, &v67, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF6F0(v56, &qword_27FF2E900, &qword_26294FDB0);
  v67 = v27;
  v68 = v26;
  v69 = v1;
  *v70 = *v88;
  *&v70[3] = *&v88[3];
  v71 = v28;
  v76 = v85;
  v77 = v86;
  v78 = v87;
  v72 = v81;
  v73 = v82;
  v74 = v83;
  v75 = v84;
  return sub_2628DF6F0(&v67, &qword_27FF2E900, &qword_26294FDB0);
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

unint64_t sub_2628DF230()
{
  result = qword_27FF2E838;
  if (!qword_27FF2E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E838);
  }

  return result;
}

uint64_t sub_2628DF284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2628DF2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2628DF374()
{
  result = qword_27FF2E870;
  if (!qword_27FF2E870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E868, &qword_26294E8C8);
    sub_2628DF40C();
    sub_2628DF508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E870);
  }

  return result;
}

unint64_t sub_2628DF40C()
{
  result = qword_27FF2E878;
  if (!qword_27FF2E878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E880, &unk_26294F770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E888, &unk_2629513D0);
    sub_2628DFD0C(&qword_27FF2E890, &qword_27FF2E888, &unk_2629513D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E878);
  }

  return result;
}

unint64_t sub_2628DF508()
{
  result = qword_27FF2E898;
  if (!qword_27FF2E898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E8A0, &qword_26294E8D0);
    sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E898);
  }

  return result;
}

unint64_t sub_2628DF5B8()
{
  result = qword_27FF2E8C0;
  if (!qword_27FF2E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E8C0);
  }

  return result;
}

unint64_t sub_2628DF60C()
{
  result = qword_27FF2E8C8;
  if (!qword_27FF2E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E860, &qword_26294E8C0);
    sub_2628DFD0C(&qword_27FF2E8D0, &qword_27FF2E8D8, &qword_26294E8D8);
    sub_2628DFD0C(&qword_27FF2E8E0, &qword_27FF2E8E8, &qword_262950C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E8C8);
  }

  return result;
}

uint64_t sub_2628DF6F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2628DF758(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2628DF788(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ViennaView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_2628DF824()
{
  result = qword_27FF2E940;
  if (!qword_27FF2E940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E930, &unk_26294FFB0);
    sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0);
    sub_2628DF90C(&qword_27FF2E958, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E940);
  }

  return result;
}

uint64_t sub_2628DF90C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2628DF954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2628DF9CC()
{
  v1 = (type metadata accessor for ViennaView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(*v1 + 64);
  v4 = sub_26294C7A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v19 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = sub_26294C8A8();
  (*(*(v8 - 8) + 8))(v0 + v3, v8);

  v9 = (v0 + v3 + v1[8]);
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v13 = sub_26294D168();
  (*(*(v13 - 8) + 8))(&v9[v12], v13);
  v14 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26294D0F8();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
  }

  else
  {
    v16 = *(v7 + v14);
  }

  v17 = (v3 + v20 + v6) & ~v6;
  (*(v5 + 8))(v0 + v17, v4);

  return MEMORY[0x2821FE8E8](v0, v17 + v19, v2 | v6 | 7);
}

uint64_t sub_2628DFC34()
{
  v1 = *(type metadata accessor for ViennaView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26294C7A8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2628DE6D0(v0 + v2, v5);
}

uint64_t sub_2628DFD00()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_26291DDB0(*(v0 + 16));
}

uint64_t sub_2628DFD0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ViennaView() - 8);
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

uint64_t sub_2628DFF20(char a1)
{
  v3 = *(type metadata accessor for ViennaView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2628DE864(a1, v4);
}

unint64_t sub_2628DFFC4()
{
  result = qword_27FF2E9A8;
  if (!qword_27FF2E9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E858, &qword_26294E888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E820, &qword_26294E878);
    sub_26294C7A8();
    type metadata accessor for ViennaAppCategoryView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E818, &qword_26294E870);
    sub_2628DFD0C(&qword_27FF2E830, &qword_27FF2E818, &qword_26294E870);
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_2628DF90C(&qword_27FF2E848, MEMORY[0x277D48E58]);
    sub_2628DF90C(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView);
    swift_getOpaqueTypeConformance2();
    sub_2628E01B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9A8);
  }

  return result;
}

unint64_t sub_2628E01B0()
{
  result = qword_27FF2E9B0;
  if (!qword_27FF2E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9B0);
  }

  return result;
}

void __swiftcall SESPassImage.init(passIdentifier:size:image:)(SESUIService::SESPassImage *__return_ptr retstr, Swift::String passIdentifier, CGSize size, UIImage_optional image)
{
  retstr->passIdentifier = passIdentifier;
  retstr->size.width = size.width;
  retstr->size.height = size.height;
  retstr->image.value.super.isa = image.value.super.isa;
}

__n128 SESPassImageAdaptor.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (v5)
  {
    v6 = v5;
    sub_26294D8C8();
    sub_26294DAE8();
    sub_26294D0D8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9B8, &qword_26294EA30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9C0, &qword_26294EA38);
    sub_2628E04FC();
    sub_2628E0660();
    sub_26294D3F8();

    v15 = v10;
    v16 = v11;
    v17 = v12;
    v13 = v8;
    v14 = v9;
  }

  else
  {
    sub_26294D878();
    swift_getKeyPath();
    sub_26294DAE8();
    sub_26294D0D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9B8, &qword_26294EA30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9C0, &qword_26294EA38);
    sub_2628E04FC();
    sub_2628E0660();
    sub_26294D3F8();
  }

  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  *(a1 + 64) = v17;
  result = v14;
  *a1 = v13;
  *(a1 + 16) = v14;
  return result;
}

uint64_t sub_2628E044C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26294D248();
  *a1 = result;
  return result;
}

uint64_t sub_2628E0478@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26294D248();
  *a1 = result;
  return result;
}

uint64_t sub_2628E04A4(uint64_t *a1)
{
  v1 = *a1;

  return sub_26294D258();
}

uint64_t sub_2628E04D0(uint64_t *a1)
{
  v1 = *a1;

  return sub_26294D258();
}

unint64_t sub_2628E04FC()
{
  result = qword_27FF2E9C8;
  if (!qword_27FF2E9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E9B8, &qword_26294EA30);
    sub_2628E0588();
    sub_2628E060C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9C8);
  }

  return result;
}

unint64_t sub_2628E0588()
{
  result = qword_27FF2E9D0;
  if (!qword_27FF2E9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E9D8, &qword_26294EA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9D0);
  }

  return result;
}

unint64_t sub_2628E060C()
{
  result = qword_27FF2E9E0;
  if (!qword_27FF2E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9E0);
  }

  return result;
}

unint64_t sub_2628E0660()
{
  result = qword_27FF2E9E8;
  if (!qword_27FF2E9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E9C0, &qword_26294EA38);
    sub_2628E06EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9E8);
  }

  return result;
}

unint64_t sub_2628E06EC()
{
  result = qword_27FF2E9F0;
  if (!qword_27FF2E9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E9F8, &qword_26294EA48);
    sub_2628E0778();
    sub_2628E07CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9F0);
  }

  return result;
}

unint64_t sub_2628E0778()
{
  result = qword_27FF2EA00;
  if (!qword_27FF2EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EA00);
  }

  return result;
}

unint64_t sub_2628E07CC()
{
  result = qword_27FF2EA08;
  if (!qword_27FF2EA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EA10, &qword_26294EA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EA08);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2628E0878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2628E08C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2628E091C()
{
  result = qword_27FF2EA18;
  if (!qword_27FF2EA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EA20, "r@");
    sub_2628E04FC();
    sub_2628E0660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EA18);
  }

  return result;
}

uint64_t sub_2628E09C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2628E0A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SEStorageListView()
{
  result = qword_27FF2EA28;
  if (!qword_27FF2EA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2628E0B90()
{
  sub_2628DCCD8();
  if (v0 <= 0x3F)
  {
    sub_2628E0C14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2628E0C14()
{
  if (!qword_27FF2E808)
  {
    sub_26294D168();
    v0 = sub_26294DA18();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF2E808);
    }
  }
}

uint64_t sub_2628E0C88(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageListView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  sub_2628E1C00(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2628E1D78(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA58, &unk_26294EC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA50, &qword_26294EBD0);
  sub_2628DFD0C(&qword_27FF2EA60, &qword_27FF2EA58, &unk_26294EC20);
  sub_2628DFD0C(&qword_27FF2EA48, &qword_27FF2EA50, &qword_26294EBD0);
  sub_2628E1F90(&qword_27FF2EA68, MEMORY[0x277D48ED0]);
  return sub_26294DA68();
}

uint64_t sub_2628E0ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-v6];
  v8 = sub_26294C8A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v13 = a1;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA70, &unk_26294EC30);
  sub_2628E1E64();
  v10 = MEMORY[0x277D48ED0];
  sub_2628E1F90(&qword_27FF2EA80, MEMORY[0x277D48ED0]);
  sub_2628E1F90(&qword_27FF2EA88, v10);
  sub_2628E1F90(&qword_27FF2EA90, v10);
  return sub_26294D118();
}

uint64_t sub_2628E10CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v92 = a3;
  v4 = sub_26294C5F8();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v4);
  v89 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_26294C8A8();
  v83 = *(v84 - 8);
  v85 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageListView();
  v81 = *(v8 - 8);
  v80 = *(v81 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v77 - v12;
  v13 = sub_26294C828();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v77 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA98, &qword_26294EC48);
  v26 = *(v25 - 8);
  v87 = v25;
  v88 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v94 = &v77 - v28;
  *&v77 = sub_26294C868();
  v30 = v29;
  v31 = a1;
  sub_26294C848();
  (*(v14 + 104))(v18, *MEMORY[0x277D48EB0], v13);
  v32 = MEMORY[0x26672BE40](v20, v18);
  v33 = *(v14 + 8);
  v33(v18, v13);
  v33(v20, v13);
  v34 = v93;
  sub_26294C858();
  v35 = v31;
  sub_26294C888();
  v37 = sub_2629205EC(v36);
  v39 = v38;
  *v24 = v77;
  v24[1] = v30;
  sub_2628E1FD8(v34, v24 + v21[9]);
  *(v24 + v21[15]) = 1;
  *(v24 + v21[10]) = v32 & 1;
  v40 = (v24 + v21[11]);
  *v40 = v37;
  v40[1] = v39;
  *(v24 + v21[12]) = 2;
  *(v24 + v21[13]) = 0;
  v41 = v24 + v21[14];
  v78 = v31;
  SEStorageManagementViewModel.PrimaryCategory.iconView.getter(&v95);
  v42 = v95;
  LOBYTE(v31) = v96;
  v77 = v97;
  v43 = v98;
  sub_26294DAE8();
  sub_26294D0D8();
  v99 = v31;
  v44 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36)];
  v45 = *(sub_26294D1D8() + 20);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_26294D378();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #6.0 }

  *v44 = _Q0;
  *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  *(v41 + 1) = v77;
  v53 = v101;
  *(v41 + 40) = v100;
  *v41 = v42;
  v41[8] = v31;
  *(v41 + 9) = v103[0];
  *(v41 + 3) = *(v103 + 3);
  *(v41 + 4) = v43;
  *(v41 + 56) = v53;
  *(v41 + 72) = v102;
  sub_2628DF6F0(v93, &qword_27FF2E978, &qword_26294EC40);
  v54 = v79;
  sub_2628E1C00(v86, v79);
  v55 = v83;
  v56 = v82;
  v57 = v84;
  (*(v83 + 16))(v82, v35, v84);
  v58 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v59 = v55;
  v60 = (v80 + *(v55 + 80) + v58) & ~*(v55 + 80);
  v61 = swift_allocObject();
  sub_2628E1D78(v54, v61 + v58);
  (*(v59 + 32))(v61 + v60, v56, v57);
  v93 = sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0);
  sub_26294D6E8();

  sub_2628DF6F0(v24, &qword_27FF2E950, &unk_26294FFC0);
  v63 = v89;
  v62 = v90;
  v64 = v91;
  (*(v90 + 104))(v89, *MEMORY[0x277D48DF8], v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_26294E7D0;
  v66 = sub_26294C868();
  v68 = v67;
  v69 = MEMORY[0x277D837D0];
  *(v65 + 56) = MEMORY[0x277D837D0];
  v70 = sub_2628DF5B8();
  *(v65 + 64) = v70;
  *(v65 + 32) = v66;
  *(v65 + 40) = v68;
  sub_26294C888();
  v72 = sub_2629205EC(v71);
  *(v65 + 96) = v69;
  *(v65 + 104) = v70;
  *(v65 + 72) = v72;
  *(v65 + 80) = v73;
  sub_26294C6B8();

  (*(v62 + 8))(v63, v64);
  v95 = v21;
  v96 = v93;
  swift_getOpaqueTypeConformance2();
  v74 = v87;
  v75 = v94;
  sub_26294D798();

  return (*(v88 + 8))(v75, v74);
}

uint64_t sub_2628E1954()
{
  v0 = sub_26294D168();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = *(type metadata accessor for SEStorageListView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  MEMORY[0x26672D010]();
  sub_26294C8A8();
  v3 = MEMORY[0x277D48ED0];
  sub_2628E1F90(&qword_27FF2EA80, MEMORY[0x277D48ED0]);
  sub_2628E1F90(&qword_27FF2EA88, v3);
  sub_2628E1F90(&qword_27FF2EA90, v3);
  sub_26294D148();
  return sub_26294D9F8();
}

uint64_t sub_2628E1AD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA38, &qword_26294EBC8);
  sub_2628E1B48();
  return sub_26294DA98();
}

unint64_t sub_2628E1B48()
{
  result = qword_27FF2EA40;
  if (!qword_27FF2EA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EA38, &qword_26294EBC8);
    sub_2628DFD0C(&qword_27FF2EA48, &qword_27FF2EA50, &qword_26294EBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EA40);
  }

  return result;
}

uint64_t sub_2628E1C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2628E1C64()
{
  v1 = (type metadata accessor for SEStorageListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = (v0 + v3 + v1[7]);
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v9 = sub_26294D168();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2628E1D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageListView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2628E1DDC(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageListView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2628E0ED8(a1, v4);
}

unint64_t sub_2628E1E64()
{
  result = qword_27FF2EA78;
  if (!qword_27FF2EA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EA70, &unk_26294EC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E950, &unk_26294FFC0);
    sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0);
    swift_getOpaqueTypeConformance2();
    sub_2628E1F90(&qword_27FF2E958, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EA78);
  }

  return result;
}

uint64_t sub_2628E1F90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2628E1FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2628E2048()
{
  v1 = (type metadata accessor for SEStorageListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294C8A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;

  v12 = (v11 + v1[7]);
  v13 = *v12;

  v14 = *(v12 + 1);

  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v16 = sub_26294D168();
  (*(*(v16 - 8) + 8))(&v12[v15], v16);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_2628E21E0()
{
  v1 = *(type metadata accessor for SEStorageListView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26294C8A8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2628E1954();
}

unint64_t sub_2628E22B0()
{
  result = qword_27FF2EAA0;
  if (!qword_27FF2EAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EAA8, &qword_26294EC68);
    sub_2628E1B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EAA0);
  }

  return result;
}

uint64_t sub_2628E2368(uint64_t a1, int a2)
{
  v3 = v2;
  v91 = a2;
  v4 = sub_26294C9D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v72 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED60, &qword_26294F2E8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v77 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v58 - v12;
  v85 = sub_26294CA28();
  v59 = *(v85 - 8);
  v13 = *(v59 + 64);
  v14 = MEMORY[0x28223BE20](v85);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v58 - v17;
  v18 = sub_26294CCB8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v92[0])
  {
    return result;
  }

  result = sub_26294C738();
  v67 = *(result + 16);
  if (!v67)
  {
  }

  v24 = 0;
  v25 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v90 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  v66 = result + v25;
  v65 = v19 + 16;
  v87 = v59 + 16;
  v82 = (v5 + 56);
  v76 = (v5 + 48);
  v70 = (v5 + 32);
  v69 = (v5 + 8);
  v74 = (v59 + 24);
  v86 = (v59 + 8);
  v63 = (v19 + 8);
  v75 = v4;
  v26 = v81;
  v62 = v18;
  v61 = v19;
  v60 = v22;
  v64 = result;
  while (1)
  {
    if (v24 >= *(result + 16))
    {
      goto LABEL_44;
    }

    v27 = *(v19 + 72);
    v73 = v24;
    (*(v19 + 16))(v22, v66 + v27 * v24, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    if (v92[0] != 1)
    {
      break;
    }

    (*v63)(v22, v18);
LABEL_5:
    v24 = v73 + 1;
    result = v64;
    if (v73 + 1 == v67)
    {
    }
  }

  v71 = sub_26294CCA8();
  v28 = v85;
  v84 = *(v71 + 16);
  if (!v84)
  {
LABEL_37:
    v22 = v60;
    v18 = v62;
    (*v63)(v60, v62);

    v19 = v61;
    goto LABEL_5;
  }

  v29 = v59;
  v79 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v83 = v71 + v79;
  swift_beginAccess();
  v30 = 0;
  v31 = *(v29 + 72);
  v88 = *(v29 + 16);
  v89 = v31;
  v32 = v80;
  v88(v80, v83, v28);
  while (1)
  {
    (*v82)(v26, 1, 1, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    if ((v92[0] & 1) == 0)
    {
      break;
    }

LABEL_11:
    ++v30;
    sub_2628DF6F0(v26, &qword_27FF2ED60, &qword_26294F2E8);
    (*v86)(v32, v28);
    if (v30 == v84)
    {
      goto LABEL_37;
    }

    v88(v32, v83 + v89 * v30, v28);
  }

  v33 = *(v3 + v90);

  v34 = sub_26291849C(v32, v33);
  v36 = v35;

  if (v36)
  {
LABEL_10:
    sub_2628EC330();
    v32 = v80;
    v26 = v81;
    v28 = v85;
    goto LABEL_11;
  }

  if (v34 < 0)
  {
    goto LABEL_41;
  }

  v37 = *(v3 + v90);
  if (v34 >= *(v37 + 16))
  {
    goto LABEL_42;
  }

  v78 = v34 * v89;
  v88(v16, v37 + v79 + v34 * v89, v85);
  v38 = v77;
  sub_2628DF954(v81, v77, &qword_27FF2ED60, &qword_26294F2E8);
  if ((*v76)(v38, 1, v4) != 1)
  {
    v46 = v72;
    (*v70)(v72, v38, v4);
    v47 = sub_26294C928();
    v48 = sub_2629184E4(v46, v47);
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      v68 = sub_26294C918();
      v52 = v51;
      v53 = *v51;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v52 = v53;
      if (result)
      {
        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        result = sub_26291DBD0(v53);
        v53 = result;
        *v52 = result;
        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }
      }

      if (v48 >= v53[2])
      {
        goto LABEL_46;
      }

      v54 = v53 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v48;
      sub_26294C9C8();
      v68(v92, 0);
    }

    (*v69)(v46, v4);
    goto LABEL_31;
  }

  sub_2628DF6F0(v38, &qword_27FF2ED60, &qword_26294F2E8);
  v39 = *(sub_26294C928() + 16);

  if (!v39)
  {
LABEL_31:
    v55 = v90;
    swift_beginAccess();
    v56 = *(v3 + v55);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v55) = v56;
    if ((result & 1) == 0)
    {
      result = sub_26291DB84(v56);
      v56 = result;
      *(v3 + v90) = result;
    }

    v57 = v85;
    if (v34 >= *(v56 + 2))
    {
      goto LABEL_43;
    }

    (*v74)(&v56[v79 + v78], v16, v85);
    *(v3 + v90) = v56;
    swift_endAccess();
    (*v86)(v16, v57);
    v4 = v75;
    goto LABEL_10;
  }

  v40 = 0;
  while (1)
  {
    v41 = sub_26294C918();
    v43 = v42;
    v44 = *v42;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v44;
    if ((result & 1) == 0)
    {
      result = sub_26291DBD0(v44);
      v44 = result;
      *v43 = result;
    }

    if (v40 >= v44[2])
    {
      break;
    }

    v45 = v44 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v40;
    sub_26294C9C8();
    v41(v92, 0);
    if (v39 == ++v40)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

__n128 sub_2628E2D20@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u8[0] = v6;
  return result;
}

void sub_2628E2DAC()
{
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v1 = sub_26294CE48();
  __swift_project_value_buffer(v1, qword_27FF314B0);
  v5 = v0;
  v2 = sub_26294CE28();
  v3 = sub_26294DE98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v4 + 4) = v6;

    _os_log_impl(&dword_2628DB000, v2, v3, "Controller loading %{BOOL}d", v4, 8u);
    MEMORY[0x26672DCE0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2628E2F40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  return v1;
}

uint64_t sub_2628E2FAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  return v1;
}

uint64_t sub_2628E3024()
{
  v0 = sub_26294C728();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26294C8C8();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v9 = sub_2628E3E34(v40);

  sub_2628E4350(v9, sub_26291D728, &qword_27FF2ED98, &qword_26294F350);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v10 = sub_2628E402C(v40);

  sub_2628E4350(v10, sub_26291D728, &qword_27FF2ED98, &qword_26294F350);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v11 = *(v40 + 16);

  if (v11)
  {
    sub_2628E4484();
    sub_26294C8B8();
    v12 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_26291D728(0, v12[2] + 1, 1, v12);
    }

    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_26291D728((v13 > 1), v14 + 1, 1, v12);
    }

    v15 = v39;
    v41 = v39;
    v42 = sub_262906CE0(&qword_27FF2ED78, MEMORY[0x277D48F00]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
    v17 = v38;
    (*(v38 + 16))(boxed_opaque_existential_1, v8, v15);
    v12[2] = v14 + 1;
    sub_262905600(&v40, &v12[5 * v14 + 4]);
    (*(v17 + 8))(v8, v15);
    v43 = v12;
  }

  if (!sub_2628E45F4())
  {
    return v43;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v18 = *(v40 + 16);
  if (v18)
  {
    v21 = *(v1 + 16);
    v19 = v1 + 16;
    v20 = v21;
    v22 = v40 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v23 = *(v19 + 56);
    v24 = 0.0;
    do
    {
      v20(v4, v22, v0);
      sub_26294C708();
      v26 = v25;
      (*(v19 - 8))(v4, v0);
      v24 = v24 + v26;
      v22 += v23;
      --v18;
    }

    while (v18);
  }

  v41 = sub_26294C6D8();
  v42 = sub_262906CE0(&qword_27FF2ED80, MEMORY[0x277D48E18]);
  __swift_allocate_boxed_opaque_existential_1(&v40);
  sub_26294C6C8();
  v27 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_26291D728(0, v27[2] + 1, 1, v27);
    v43 = v27;
  }

  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_26291D728((v28 > 1), v29 + 1, 1, v27);
    v43 = v27;
  }

  v30 = v41;
  v31 = v42;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v40, v41);
  v33 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v38 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  sub_262904E38(v29, v35, &v43, v30, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  return v27;
}

uint64_t sub_2628E3654(uint64_t a1)
{
  v2 = sub_26294CD78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2628FBEF4(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2628FBEF4((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_262906CE0(&qword_27FF2ECB8, MEMORY[0x277D49038]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_262905600(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2628E384C(uint64_t a1)
{
  v2 = sub_26294C728();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2628FBEF4(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2628FBEF4((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_262906CE0(&qword_27FF2ECA0, MEMORY[0x277D48E28]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_262905600(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2628E3A44(uint64_t a1)
{
  v2 = sub_26294CC18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2628FBEF4(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2628FBEF4((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_262906CE0(&qword_27FF2ECB0, MEMORY[0x277D48F80]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_262905600(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2628E3C3C(uint64_t a1)
{
  v2 = sub_26294C7A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2628FBEF4(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2628FBEF4((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_262906CE0(&qword_27FF2ECA8, MEMORY[0x277D48E58]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_262905600(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2628E3E34(uint64_t a1)
{
  v2 = sub_26294CD78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2628FBF34(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2628FBF34((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_262906CE0(&qword_27FF2EDA0, MEMORY[0x277D49038]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_262905600(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2628E402C(uint64_t a1)
{
  v2 = sub_26294C7A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2628FBF34(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2628FBF34((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_262906CE0(&qword_27FF2ED88, MEMORY[0x277D48E58]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_262905600(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2628E4224(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_26291D660(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_26294CA28();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2628E4350(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

double sub_2628E4484()
{
  v0 = sub_26294CC18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (*(v9 + 16))
  {
    (*(v1 + 16))(v4, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    sub_26294CBF8();
    v6 = v5;
    (*(v1 + 8))(v4, v0);
  }

  else
  {

    return 0.0;
  }

  return v6;
}

BOOL sub_2628E45F4()
{
  v1 = v0;
  v2 = sub_26294C728();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECC0, &qword_26294F230);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  (*(v8 + 16))(&v22 - v10, v1 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__showESim, v7);
  sub_26294DC78();
  (*(v8 + 8))(v11, v7);
  if (v23)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v13 = *(v22 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = v22 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    v19 = 0.0;
    do
    {
      v15(v6, v17, v2);
      sub_26294C708();
      v21 = v20;
      (*(v14 - 8))(v6, v2);
      v19 = v19 + v21;
      v17 += v18;
      --v13;
    }

    while (v13);

    return v19 > 0.0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2628E4888()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  return v1;
}

uint64_t sub_2628E4934(_DWORD *a1, uint64_t (*a2)(void))
{
  v5 = sub_26294DD28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_proposedCredentials);
  if (*(v10 + 16))
  {
    (*(v6 + 16))(v9, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
    if ((*(v6 + 88))(v9, v5) == *a1)
    {
      (*(v6 + 96))(v9, v5);
      v11 = a2(0);
      (*(*(v11 - 8) + 8))(v9, v11);
      return 1;
    }

    (*(v6 + 8))(v9, v5);
  }

  return 0;
}

uint64_t sub_2628E4AC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  return v1;
}

uint64_t sub_2628E4B9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  *a2 = v5;
  return result;
}

uint64_t sub_2628E4C2C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_26294D008();
}

uint64_t sub_2628E4CB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();
}

uint64_t sub_2628E4D24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDF0, &qword_26294F458);
  __swift_allocate_value_buffer(v0, qword_27FF2EAB0);
  __swift_project_value_buffer(v0, qword_27FF2EAB0);
  return sub_26294DC88();
}

uint64_t sub_2628E4DE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDF0, &qword_26294F458);
  __swift_allocate_value_buffer(v0, qword_27FF2EAC8);
  __swift_project_value_buffer(v0, qword_27FF2EAC8);
  return sub_26294DC88();
}

id SEStorageManagementController.__allocating_init(snapshot:proposedCredentials:passes:passArts:secureElementCredentials:credentialConfigs:muirfieldApplications:eSimProfiles:managementHandler:provisioningOnCurrentDevice:clientIdentifier:displayConfiguration:)(void *a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, void (*a6)(void, void, void), uint64_t a7, uint64_t a8, uint64_t *a9, unsigned __int8 a10, uint64_t a11, char *a12)
{
  v13 = v12;
  v115 = a8;
  v120 = a7;
  v126 = a5;
  v127 = a6;
  v124 = a3;
  v125 = a4;
  v111 = a2;
  v122 = a1;
  v119 = a12;
  v123 = a11;
  v121 = a9;
  LODWORD(v112) = a10;
  v131 = sub_26294C7F8();
  v95 = *(v131 - 8);
  v14 = *(v95 + 64);
  v15 = MEMORY[0x28223BE20](v131);
  v130 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v129 = &v94 - v17;
  v128 = sub_26294CC18();
  v132 = *(v128 - 8);
  v18 = *(v132 + 64);
  MEMORY[0x28223BE20](v128);
  v96 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_26294DD18();
  v116 = *(v117 - 8);
  v20 = *(v116 + 64);
  v21 = MEMORY[0x28223BE20](v117);
  v114 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v113 = &v94 - v23;
  v105 = sub_26294CDF8();
  v110 = *(v105 - 8);
  v24 = *(v110 + 64);
  v25 = MEMORY[0x28223BE20](v105);
  v109 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v108 = &v94 - v27;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAE0, &unk_26294ECC0);
  v106 = *(v107 - 8);
  v28 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v103 = &v94 - v29;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v30 = *(*(v104 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v104);
  v102 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v99 = &v94 - v33;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAE8, &qword_26294ECD0);
  v100 = *(v101 - 8);
  v34 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v98 = &v94 - v35;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAF0, &qword_26294ECD8);
  v36 = *(v97 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v97);
  v39 = &v94 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAF8, &qword_26294ECE0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v94 - v43;
  v118 = v13;
  v45 = objc_allocWithZone(v13);
  v46 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__showDeleteConfirmation;
  LOBYTE(v135) = 0;
  sub_26294CFD8();
  v47 = *(v41 + 32);
  v47(&v45[v46], v44, v40);
  v48 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__deleteConfirmationAlertText;
  v135 = 0;
  v136 = 0xE000000000000000;
  v137 = 0;
  v138 = 0;
  v139 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB10, &qword_26294ECE8);
  sub_26294CFD8();
  (*(v36 + 32))(&v45[v48], v39, v97);
  v49 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__loading;
  LOBYTE(v135) = 0;
  sub_26294CFD8();
  v50 = &v45[v49];
  v51 = v121;
  v47(v50, v44, v40);
  v52 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__deletionState;
  v135 = 0;
  LOBYTE(v136) = 1;
  v53 = v122;
  v54 = v98;
  sub_26294CFD8();
  (*(v100 + 32))(&v45[v52], v54, v101);
  v55 = &v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  *v55 = 0;
  v55[1] = 0;
  v56 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__recommendedForDelete;
  v57 = sub_26294C8A8();
  v58 = v99;
  (*(*(v57 - 8) + 56))(v99, 1, 1, v57);
  sub_2628DF954(v58, v102, &qword_27FF2E9A0, &qword_26294E9A8);
  v59 = v103;
  sub_26294CFD8();
  sub_2628DF6F0(v58, &qword_27FF2E9A0, &qword_26294E9A8);
  (*(v106 + 32))(&v45[v56], v59, v107);
  LOBYTE(v135) = 0;
  LOBYTE(v134) = 2;
  sub_26294DC88();
  LOBYTE(v135) = 0;
  LOBYTE(v134) = 2;
  sub_26294DC88();
  v60 = v108;
  sub_26294CDB8();
  swift_beginAccess();
  v61 = v110;
  v62 = v105;
  (*(v110 + 16))(v109, v60, v105);
  sub_26294CFD8();
  (*(v61 + 8))(v60, v62);
  swift_endAccess();
  swift_beginAccess();
  v63 = MEMORY[0x277D84F90];
  v134 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB58, &qword_26294ECF0);
  sub_26294CFD8();
  swift_endAccess();
  swift_beginAccess();
  v134 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E908, &qword_26294E928);
  sub_26294CFD8();
  swift_endAccess();
  *&v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups] = v63;
  *&v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups] = v63;
  swift_beginAccess();
  v134 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA58, &unk_26294EC20);
  sub_26294CFD8();
  swift_endAccess();
  v64 = &v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshotDataProvider];
  v65 = sub_26294DBE8();
  v66 = MEMORY[0x277D49078];
  v64[3] = v65;
  v64[4] = v66;
  *v64 = v53;
  *&v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot] = v53;
  *&v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_proposedCredentials] = v111;
  v67 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_clientIdentifier;
  v68 = sub_26294C538();
  v110 = *(v68 - 8);
  v69 = *(v110 + 16);
  v70 = &v45[v67];
  v71 = v120;
  v111 = v68;
  v69(v70, v123);
  v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_provisioningOnCurrentDevice] = v112;
  v72 = v51;
  sub_262906C54(v51, &v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler]);
  v73 = v125;
  *&v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passes] = v124;
  *&v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passArts] = v73;
  *&v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_secureElementCredentials] = v126;
  v112 = v45;
  *&v45[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_credentialConfigs] = v127;
  v74 = *(v71 + 16);
  if (v74)
  {
    v135 = v63;
    v75 = v53;
    sub_2628FBFFC(0, v74, 0);
    v63 = v135;
    v76 = *(v95 + 16);
    v77 = v71 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v126 = *(v95 + 72);
    v127 = v76;
    v124 = v132 + 32;
    v125 = (v95 + 8);
    v78 = v96;
    v79 = v76;
    do
    {
      v80 = v129;
      v81 = v131;
      v79(v129, v77, v131);
      v79(v130, v80, v81);
      sub_26294CBE8();
      (*v125)(v80, v81);
      v135 = v63;
      v83 = *(v63 + 16);
      v82 = *(v63 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_2628FBFFC(v82 > 1, v83 + 1, 1);
        v63 = v135;
      }

      *(v63 + 16) = v83 + 1;
      (*(v132 + 32))(v63 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v83, v78, v128);
      v77 += v126;
      --v74;
    }

    while (v74);

    v72 = v121;
  }

  else
  {
    v84 = v53;
  }

  v85 = v112;
  swift_beginAccess();
  v134 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBB8, &qword_26294ECF8);
  sub_26294CFD8();
  swift_endAccess();
  swift_beginAccess();
  v134 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBC8, &qword_26294ED00);
  sub_26294CFD8();
  swift_endAccess();
  v86 = v116;
  v87 = *(v116 + 16);
  v88 = v113;
  v89 = v119;
  v90 = v117;
  v87(v113, v119, v117);
  swift_beginAccess();
  v87(v114, v88, v90);
  sub_26294CFD8();
  v91 = *(v86 + 8);
  v91(v88, v90);
  swift_endAccess();
  swift_beginAccess();
  v134 = 1;
  sub_26294CFD8();
  swift_endAccess();
  v133.receiver = v85;
  v133.super_class = v118;
  v92 = objc_msgSendSuper2(&v133, sel_init);
  sub_2628E6C54();

  v91(v89, v90);
  (*(v110 + 8))(v123, v111);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  return v92;
}

id SEStorageManagementController.init(snapshot:proposedCredentials:passes:passArts:secureElementCredentials:credentialConfigs:muirfieldApplications:eSimProfiles:managementHandler:provisioningOnCurrentDevice:clientIdentifier:displayConfiguration:)(void *a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t *a9, unsigned __int8 a10, uint64_t a11, char *a12)
{
  v13 = v12;
  v109 = a8;
  v115 = a7;
  v121 = a5;
  v122 = a6;
  v119 = a3;
  v120 = a4;
  v106 = a2;
  v116 = a1;
  v114 = a12;
  v117 = a11;
  v118 = a9;
  LODWORD(v113) = a10;
  ObjectType = swift_getObjectType();
  v126 = sub_26294C7F8();
  v91 = *(v126 - 8);
  v14 = *(v91 + 64);
  v15 = MEMORY[0x28223BE20](v126);
  v125 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v124 = &v91 - v17;
  v123 = sub_26294CC18();
  v127 = *(v123 - 8);
  v18 = *(v127 + 64);
  MEMORY[0x28223BE20](v123);
  v92 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_26294DD18();
  v110 = *(v111 - 8);
  v20 = *(v110 + 64);
  v21 = MEMORY[0x28223BE20](v111);
  v108 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v107 = &v91 - v23;
  v100 = sub_26294CDF8();
  v105 = *(v100 - 8);
  v24 = *(v105 + 64);
  v25 = MEMORY[0x28223BE20](v100);
  v104 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v103 = &v91 - v27;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAE0, &unk_26294ECC0);
  v101 = *(v102 - 8);
  v28 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v98 = &v91 - v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v30 = *(*(v99 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v99);
  v97 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v95 = &v91 - v33;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAE8, &qword_26294ECD0);
  v34 = *(v96 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v91 - v36;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAF0, &qword_26294ECD8);
  v37 = *(v93 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v93);
  v40 = &v91 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAF8, &qword_26294ECE0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v91 - v44;
  v46 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__showDeleteConfirmation;
  LOBYTE(v130) = 0;
  sub_26294CFD8();
  v47 = *(v42 + 32);
  v47(&v13[v46], v45, v41);
  v48 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__deleteConfirmationAlertText;
  v130 = 0;
  v131 = 0xE000000000000000;
  v132 = 0;
  v133 = 0;
  v134 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB10, &qword_26294ECE8);
  sub_26294CFD8();
  (*(v37 + 32))(&v13[v48], v40, v93);
  v49 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__loading;
  LOBYTE(v130) = 0;
  sub_26294CFD8();
  v47(&v13[v49], v45, v41);
  v50 = v116;
  v51 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__deletionState;
  v130 = 0;
  LOBYTE(v131) = 1;
  v52 = v94;
  sub_26294CFD8();
  (*(v34 + 32))(&v13[v51], v52, v96);
  v53 = &v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  *v53 = 0;
  v53[1] = 0;
  v54 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__recommendedForDelete;
  v55 = sub_26294C8A8();
  v56 = v95;
  (*(*(v55 - 8) + 56))(v95, 1, 1, v55);
  sub_2628DF954(v56, v97, &qword_27FF2E9A0, &qword_26294E9A8);
  v57 = v98;
  sub_26294CFD8();
  sub_2628DF6F0(v56, &qword_27FF2E9A0, &qword_26294E9A8);
  (*(v101 + 32))(&v13[v54], v57, v102);
  LOBYTE(v130) = 0;
  LOBYTE(v129) = 2;
  sub_26294DC88();
  LOBYTE(v130) = 0;
  LOBYTE(v129) = 2;
  sub_26294DC88();
  v58 = v103;
  sub_26294CDB8();
  swift_beginAccess();
  v59 = v105;
  v60 = v100;
  (*(v105 + 16))(v104, v58, v100);
  sub_26294CFD8();
  (*(v59 + 8))(v58, v60);
  swift_endAccess();
  swift_beginAccess();
  v61 = MEMORY[0x277D84F90];
  v129 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB58, &qword_26294ECF0);
  sub_26294CFD8();
  swift_endAccess();
  swift_beginAccess();
  v129 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E908, &qword_26294E928);
  sub_26294CFD8();
  swift_endAccess();
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups] = v61;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups] = v61;
  swift_beginAccess();
  v129 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA58, &unk_26294EC20);
  sub_26294CFD8();
  swift_endAccess();
  v62 = &v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshotDataProvider];
  v63 = sub_26294DBE8();
  v64 = MEMORY[0x277D49078];
  v62[3] = v63;
  v62[4] = v64;
  *v62 = v50;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot] = v50;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_proposedCredentials] = v106;
  v65 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_clientIdentifier;
  v66 = sub_26294C538();
  v105 = *(v66 - 8);
  v67 = *(v105 + 16);
  v68 = &v13[v65];
  v69 = v115;
  v106 = v66;
  v67(v68, v117);
  v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_provisioningOnCurrentDevice] = v113;
  sub_262906C54(v118, &v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler]);
  v70 = v120;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passes] = v119;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passArts] = v70;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_secureElementCredentials] = v121;
  v113 = v13;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_credentialConfigs] = v122;
  v71 = *(v69 + 16);
  if (v71)
  {
    v130 = v61;
    v72 = v50;
    sub_2628FBFFC(0, v71, 0);
    v61 = v130;
    v73 = *(v91 + 16);
    v74 = (v69 + ((*(v91 + 80) + 32) & ~*(v91 + 80)));
    v121 = *(v91 + 72);
    v122 = v73;
    v119 = v127 + 32;
    v120 = (v91 + 8);
    v75 = v92;
    do
    {
      v76 = v124;
      v77 = v126;
      v78 = v122;
      v122(v124, v74, v126);
      v78(v125, v76, v77);
      sub_26294CBE8();
      (*v120)(v76, v77);
      v130 = v61;
      v80 = *(v61 + 16);
      v79 = *(v61 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_2628FBFFC(v79 > 1, v80 + 1, 1);
        v61 = v130;
      }

      *(v61 + 16) = v80 + 1;
      (*(v127 + 32))(v61 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v80, v75, v123);
      v74 += v121;
      --v71;
    }

    while (v71);

    v50 = v116;
  }

  else
  {
    v81 = v50;
  }

  v82 = v113;
  swift_beginAccess();
  v129 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBB8, &qword_26294ECF8);
  sub_26294CFD8();
  swift_endAccess();
  swift_beginAccess();
  v129 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBC8, &qword_26294ED00);
  sub_26294CFD8();
  swift_endAccess();
  v83 = v110;
  v84 = *(v110 + 16);
  v85 = v107;
  v86 = v114;
  v87 = v111;
  v84(v107, v114, v111);
  swift_beginAccess();
  v84(v108, v85, v87);
  sub_26294CFD8();
  v88 = *(v83 + 8);
  v88(v85, v87);
  swift_endAccess();
  swift_beginAccess();
  v129 = 1;
  sub_26294CFD8();
  swift_endAccess();
  v128.receiver = v82;
  v128.super_class = ObjectType;
  v89 = objc_msgSendSuper2(&v128, sel_init);
  sub_2628E6C54();

  v88(v86, v87);
  (*(v105 + 8))(v117, v106);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  return v89;
}

size_t sub_2628E6C54()
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v424 = v360 - v6;
  v7 = sub_26294CDF8();
  v377 = *(v7 - 8);
  v8 = *(v377 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v360 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v376 = v360 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECC0, &qword_26294F230);
  v371 = *(v13 - 8);
  v14 = *(v371 + 64);
  MEMORY[0x28223BE20](v13);
  v392 = v360 - v15;
  v399 = sub_26294C728();
  v393 = *(v399 - 8);
  v16 = v393[8];
  v17 = MEMORY[0x28223BE20](v399 - 8);
  v384 = v360 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v397 = v360 - v19;
  v370 = sub_26294CC18();
  v372 = *(v370 - 8);
  v20 = *(v372 + 64);
  MEMORY[0x28223BE20](v370);
  v369 = v360 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v417 = sub_26294C9D8();
  v413 = *(v417 - 8);
  v22 = *(v413 + 64);
  MEMORY[0x28223BE20](v417);
  v416 = v360 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = sub_26294C538();
  v24 = *(v389 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v389);
  v388 = (v360 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v398 = sub_26294CA28();
  v390 = *(v398 - 8);
  v27 = *(v390 + 64);
  MEMORY[0x28223BE20](v398);
  v414 = v360 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_26294CB98();
  v404 = *(v29 - 1);
  v30 = *(v404 + 64);
  MEMORY[0x28223BE20](v29);
  v408 = v360 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v387 = sub_26294CBA8();
  v385 = *(v387 - 8);
  v32 = *(v385 + 64);
  MEMORY[0x28223BE20](v387);
  v407 = v360 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE00, &qword_26294F478);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v435 = v360 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v401 = (v360 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v400 = (v360 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v433 = v360 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v430 = v360 - v45;
  MEMORY[0x28223BE20](v44);
  v429 = v360 - v46;
  v437 = sub_26294DC58();
  v426 = *(v437 - 8);
  v47 = v426[8];
  v48 = MEMORY[0x28223BE20](v437);
  v415 = (v360 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = MEMORY[0x28223BE20](v48);
  v391 = v360 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v419 = v360 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v436 = (v360 - v55);
  v56 = MEMORY[0x28223BE20](v54);
  v425 = (v360 - v57);
  v58 = MEMORY[0x28223BE20](v56);
  v395 = v360 - v59;
  MEMORY[0x28223BE20](v58);
  v428 = v360 - v60;
  v432 = sub_26294DD28();
  v423 = *(v432 - 1);
  v61 = *(v423 + 8);
  v62 = MEMORY[0x28223BE20](v432 - 1);
  v402 = v360 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v427 = (v360 - v65);
  v66 = MEMORY[0x28223BE20](v64);
  v373 = (v360 - v67);
  v68 = MEMORY[0x28223BE20](v66);
  v431 = v360 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v438 = v360 - v71;
  MEMORY[0x28223BE20](v70);
  v73 = (v360 - v72);
  v383 = sub_26294DBA8();
  v382 = *(v383 - 8);
  v74 = *(v382 + 8);
  v75 = MEMORY[0x28223BE20](v383);
  v77 = v360 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v79 = (v360 - v78);
  sub_2628F7DF4();
  sub_2628F8828();
  v80 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__useMockSnapshot;
  swift_beginAccess();
  v406 = v0;
  v381 = v80;
  v396 = v13;
  sub_26294DC78();
  v81 = LOBYTE(v439[0]);
  swift_endAccess();
  v82 = &unk_27FF31000;
  v378 = v7;
  v375 = v11;
  v374 = v24;
  v368 = *&v77;
  if (v81 != 1)
  {
    if (qword_27FF2E7C0 != -1)
    {
      swift_once();
    }

    v96 = sub_26294CE48();
    __swift_project_value_buffer(v96, qword_27FF314B0);
    v97 = sub_26294CE28();
    v98 = sub_26294DE98();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_2628DB000, v97, v98, "Using real snapshot", v99, 2u);
      MEMORY[0x26672DCE0](v99, -1, -1);
    }

    v87 = v406;
    v100 = *&v406[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
    v442 = sub_26294DBE8();
    v443 = MEMORY[0x277D49078];
    *&v441 = v100;
    v101 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshotDataProvider;
    swift_beginAccess();
    v102 = v100;
    __swift_destroy_boxed_opaque_existential_1Tm(&v87[v101]);
    v95 = &v87[v101];
    goto LABEL_11;
  }

  if (qword_27FF2E7C0 != -1)
  {
    goto LABEL_168;
  }

  while (1)
  {
    v83 = sub_26294CE48();
    __swift_project_value_buffer(v83, qword_27FF314B0);
    v84 = sub_26294CE28();
    v85 = sub_26294DE98();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_2628DB000, v84, v85, "Using mock snapshot", v86, 2u);
      MEMORY[0x26672DCE0](v86, -1, -1);
    }

    v87 = v406;
    v88 = *&v406[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
    v89 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passes;
    swift_beginAccess();
    v90 = *&v87[v89];
    v91 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_secureElementCredentials;
    swift_beginAccess();
    v92 = *&v87[v91];
    v442 = sub_26294C5D8();
    v443 = MEMORY[0x277D48DE8];
    __swift_allocate_boxed_opaque_existential_1(&v441);
    v93 = v88;

    sub_26294C5C8();
    v94 = *(v82 + 147);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v87[v94]);
    v95 = &v87[v94];
LABEL_11:
    sub_262905600(&v441, v95);
    swift_endAccess();
    v103 = &v87[*(v82 + 147)];
    swift_beginAccess();
    v104 = *(v103 + 3);
    v105 = __swift_project_boxed_opaque_existential_1(v103, v104);
    v106 = *(v104 - 8);
    v107 = *(v106 + 64);
    MEMORY[0x28223BE20](v105);
    v109 = v360 - v108;
    (*(v106 + 16))(v360 - v108);
    v365 = sub_26294C688();
    (*(v106 + 8))(v109, v104);
    v110 = *(v103 + 3);
    v111 = __swift_project_boxed_opaque_existential_1(v103, v110);
    v112 = *(v110 - 8);
    v113 = *(v112 + 64);
    MEMORY[0x28223BE20](v111);
    v115 = v360 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v112 + 16))(v115);
    v363 = sub_26294C638();
    v361 = 0;
    (*(v112 + 8))(v115, v110);
    v133 = MEMORY[0x277D49348];
    v134 = v406;
    v135 = sub_2628E4934(MEMORY[0x277D49348], MEMORY[0x277D49160]);
    v422 = v103;
    v405 = v29;
    v136 = v435;
    v137 = v432;
    v138 = v433;
    if (v135)
    {
      v139 = *&v134[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_proposedCredentials];
      if (!*(v139 + 16))
      {
        goto LABEL_172;
      }

      v140 = v423;
      v141 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v142 = *(v423 + 2);
      v362 = v139;
      v142(v73, v139 + v141, v432);
      if ((v140[11])(v73, v137) == *v133)
      {
        v140[12](v73, v137);
        v138 = v382;
        v143 = v383;
        (*(v382 + 4))(v79, v73, v383);
        sub_262906C54(v103, &v441);
        __swift_project_boxed_opaque_existential_1(&v441, v442);
        v144 = sub_26294C658();
        v145 = v79;
        v79 = v103;
        v136 = v435;
        (*(v138 + 1))(v145, v143);
        __swift_destroy_boxed_opaque_existential_1Tm(&v441);
        goto LABEL_41;
      }

      v140[1](v73, v137);
      v134 = v406;
    }

    sub_262906C54(v103, &v441);
    v360[2] = v443;
    v360[3] = v442;
    v360[1] = __swift_project_boxed_opaque_existential_1(&v441, v442);
    v146 = *&v134[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_proposedCredentials];
    v103 = *(v146 + 16);
    v362 = v146;
    if (v103)
    {
      v421 = *(v423 + 2);
      v147 = v146 + ((v423[80] + 32) & ~v423[80]);
      v418 = *(v423 + 9);
      v412 = (v423 + 88);
      LODWORD(v411) = *MEMORY[0x277D49340];
      LODWORD(v380) = *MEMORY[0x277D49338];
      v367 = *MEMORY[0x277D49330];
      v364 = *v133;
      v410 = (v426 + 7);
      v424 = (v423 + 8);
      v420 = (v423 + 16);
      v394 = (v423 + 96);
      v360[0] = v382 + 8;
      v366 = *MEMORY[0x277D49238];
      v386 = (v426 + 13);
      LODWORD(v379) = *MEMORY[0x277D49240];
      v409 = (v426 + 6);
      v403 = v426 + 4;
      ObjectType = MEMORY[0x277D84F90];
      v148 = v431;
      v149 = v421;
      do
      {
        v150 = v438;
        (v149)(v438, v147, v137);
        (v149)(v148, v150, v137);
        v151 = (*v412)(v148, v137);
        if (v151 == v411)
        {
          (*v394)(v148, v137);
          v152 = sub_26294DB58();
          (*(*(v152 - 8) + 32))(v138, v148, v152);
          v153 = v138;
          v154 = v138;
          v155 = v437;
          (*v386)(v153, v379, v437);
          (*v410)(v154, 0, 1, v155);
        }

        else if (v151 == v380)
        {
          (*v394)(v148, v137);
          v156 = v148[1];
          *v138 = *v148;
          *(v138 + 1) = v156;
          v157 = v138;
          v154 = v138;
          v155 = v437;
          (*v386)(v157, v366, v437);
          (*v410)(v154, 0, 1, v155);
        }

        else if (v151 == v367)
        {
          (*v394)(v148, v137);
          v158 = v138;
          v154 = v138;
          v155 = v437;
          (*v410)(v158, 1, 1, v437);
          v159 = sub_26294DBB8();
          (*(*(v159 - 8) + 8))(v148, v159);
        }

        else if (v151 == v364)
        {
          (*v394)(v148, v137);
          v160 = v138;
          v154 = v138;
          v155 = v437;
          (*v410)(v160, 1, 1, v437);
          (*v360[0])(v148, v383);
        }

        else
        {
          v161 = v138;
          v154 = v138;
          v155 = v437;
          (*v410)(v161, 1, 1, v437);
          (*v424)(v148, v137);
        }

        v162 = v154;
        v163 = v430;
        sub_262906F00(v162, v430, &qword_27FF2EE00, &qword_26294F478);
        v164 = v429;
        sub_262906F00(v163, v429, &qword_27FF2EE00, &qword_26294F478);
        (*v424)(v438, v137);
        if ((*v409)(v164, 1, v155) == 1)
        {
          sub_2628DF6F0(v164, &qword_27FF2EE00, &qword_26294F478);
          v148 = v431;
          v136 = v435;
        }

        else
        {
          v165 = *v403;
          (*v403)(v428, v164, v155);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            ObjectType = sub_26291D930(0, *(ObjectType + 16) + 1, 1, ObjectType);
          }

          v148 = v431;
          v167 = *(ObjectType + 16);
          v166 = *(ObjectType + 24);
          if (v167 >= v166 >> 1)
          {
            ObjectType = sub_26291D930(v166 > 1, v167 + 1, 1, ObjectType);
          }

          v168 = ObjectType;
          *(ObjectType + 16) = v167 + 1;
          v165((v168 + ((*(v426 + 80) + 32) & ~*(v426 + 80)) + v426[9] * v167), v428, v437);
          v136 = v435;
          v137 = v432;
        }

        v147 += v418;
        --v103;
        v138 = v433;
      }

      while (v103);
    }

    else
    {
      ObjectType = MEMORY[0x277D84F90];
    }

    v144 = sub_26294C668();

    __swift_destroy_boxed_opaque_existential_1Tm(&v441);
    v79 = v422;
    v29 = v405;
LABEL_41:
    v1 = v144;
    v3 = v365;
    v2 = v363;
    v169 = v406;
    swift_beginAccess();
    sub_26294DC78();
    v73 = LOBYTE(v439[0]);
    swift_endAccess();
    if (v73 == 1)
    {
      v133 = v408;
      if (qword_27FF2E7C0 != -1)
      {
        goto LABEL_173;
      }

      goto LABEL_43;
    }

    v176 = MEMORY[0x277D49348];
    v177 = sub_2628E4934(MEMORY[0x277D49348], MEMORY[0x277D49160]);
    v178 = v423;
    if ((v177 & 1) == 0)
    {
      goto LABEL_51;
    }

    if (!*(v362 + 16))
    {
      __break(1u);
      goto LABEL_175;
    }

    v73 = v373;
    (*(v423 + 2))(v373, v362 + ((v423[80] + 32) & ~v423[80]), v137);
    if ((*(v178 + 11))(v73, v137) != *v176)
    {
      (*(v178 + 1))(v73, v137);
LABEL_51:
      v403 = *&v169[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
      v185 = *(v362 + 16);
      if (!v185)
      {
        v208 = v403;
LABEL_74:
        v209 = v361;
        v210 = sub_26294DBC8();
        if (v209)
        {

          v367 = 0;
          v361 = 0;
        }

        else
        {
          v367 = v210;
          v361 = 0;
        }

        v82 = v406;
        v79 = v422;
        v29 = v405;
        goto LABEL_78;
      }

      v187 = *(v178 + 2);
      v186 = v178 + 16;
      v431 = v187;
      v73 = (v362 + ((v186[64] + 32) & ~v186[64]));
      v430 = *(v186 + 7);
      v429 = (v186 + 72);
      LODWORD(v428) = *MEMORY[0x277D49340];
      LODWORD(v412) = *MEMORY[0x277D49338];
      LODWORD(v410) = *MEMORY[0x277D49330];
      LODWORD(v394) = *v176;
      v433 = (v426 + 7);
      ObjectType = (v186 - 8);
      v423 = v186;
      v420 = (v186 + 80);
      v386 = v382 + 8;
      LODWORD(v409) = *MEMORY[0x277D49238];
      v418 = v426 + 13;
      LODWORD(v411) = *MEMORY[0x277D49240];
      v424 = (v426 + 6);
      v421 = (v426 + 4);
      v188 = v403;
      v189 = MEMORY[0x277D84F90];
      v190 = &qword_27FF2EE00;
      v191 = v402;
      while (2)
      {
        v438 = v189;
        v192 = v190;
        v193 = v427;
        v194 = v431;
        (v431)(v427, v73, v137);
        v194(v191, v193, v137);
        v195 = (*v429)(v191, v137);
        if (v195 == v428)
        {
          (*v420)(v191, v137);
          v196 = sub_26294DB58();
          (*(*(v196 - 8) + 32))(v136, v191, v196);
          v197 = v437;
          (*v418)(v136, v411, v437);
          (*v433)(v136, 0, 1, v197);
          v198 = v137;
          v190 = v192;
          goto LABEL_62;
        }

        v190 = v192;
        if (v195 == v412)
        {
          (*v420)(v191, v137);
          v199 = v191[1];
          *v136 = *v191;
          v136[1] = v199;
          v197 = v437;
          (*v418)(v136, v409, v437);
          (*v433)(v136, 0, 1, v197);
LABEL_61:
          v198 = v137;
LABEL_62:
          v189 = v438;
        }

        else
        {
          if (v195 == v410)
          {
            (*v420)(v191, v137);
            v197 = v437;
            (*v433)(v136, 1, 1, v437);
            v200 = sub_26294DBB8();
            (*(*(v200 - 8) + 8))(v191, v200);
            goto LABEL_61;
          }

          v189 = v438;
          if (v195 == v394)
          {
            (*v420)(v191, v137);
            v197 = v437;
            (*v433)(v136, 1, 1, v437);
            (*v386)(v191, v383);
          }

          else
          {
            v197 = v437;
            (*v433)(v136, 1, 1, v437);
            (*ObjectType)(v191, v137);
          }

          v198 = v137;
        }

        v201 = v401;
        sub_262906F00(v136, v401, v190, &qword_26294F478);
        v202 = v201;
        v203 = v400;
        sub_262906F00(v202, v400, v190, &qword_26294F478);
        (*ObjectType)(v427, v198);
        if ((*v424)(v203, 1, v197) == 1)
        {
          sub_2628DF6F0(v203, v190, &qword_26294F478);
          v191 = v402;
        }

        else
        {
          v204 = *v421;
          (*v421)(v395, v203, v197);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v191 = v402;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v189 = sub_26291D930(0, v189[2] + 1, 1, v189);
          }

          v207 = v189[2];
          v206 = v189[3];
          if (v207 >= v206 >> 1)
          {
            v189 = sub_26291D930(v206 > 1, v207 + 1, 1, v189);
          }

          v189[2] = v207 + 1;
          (v204)(v189 + ((*(v426 + 80) + 32) & ~*(v426 + 80)) + v426[9] * v207, v395, v437);
          v136 = v435;
        }

        v73 = &v430[v73];
        --v185;
        v137 = v432;
        if (!v185)
        {
          goto LABEL_74;
        }

        continue;
      }
    }

    (*(v178 + 12))(v73, v137);
    v179 = v382;
    v180 = v368;
    v181 = v383;
    (*(v382 + 4))(COERCE_DOUBLE(*&v368), v73, v383);
    v73 = *&v169[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
    sub_26294DB98();
    sub_26294DB78();
    sub_26294DB68();
    sub_26294DB88();
    v182 = objc_allocWithZone(sub_26294DC08());
    v183 = sub_26294DBF8();
    v184 = sub_26294DBD8();
    v82 = v406;
    v367 = v184;

    v179[1](COERCE_DOUBLE(*&v180), v181);
LABEL_78:
    v133 = v408;
    v173 = v407;
    while (1)
    {
      v368 = v1;
      v211 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
      swift_beginAccess();
      v380 = *(*&v82[v211] + 16);
      if (!v380)
      {
        break;
      }

      v212 = 0;
      v381 = v385 + 16;
      v402 = (v404 + 16);
      ObjectType = (v426 + 2);
      LODWORD(v424) = *MEMORY[0x277D49088];
      LODWORD(v433) = *MEMORY[0x277D49240];
      v432 = v426 + 13;
      LODWORD(v418) = *MEMORY[0x277D49090];
      v401 = (v404 + 24);
      v400 = (v404 + 8);
      v379 = (v385 + 24);
      v373 = (v385 + 8);
      v1 = 0.0;
      v394 = v211;
      v435 = (v426 + 1);
      while (1)
      {
        v213 = *&v82[v211];
        if (v212 >= *(v213 + 16))
        {
          __break(1u);
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        v383 = (*(v385 + 80) + 32) & ~*(v385 + 80);
        v214 = *(v385 + 72);
        v386 = v212;
        v215 = v214 * v212;
        v216 = *(v385 + 16);
        v382 = v215;
        v216(v173, v213 + v383 + v215, v387);
        v217 = *(sub_26294CAB8() + 16);

        v403 = v217;
        if (v217)
        {
          LODWORD(v395) = 0;
          v218 = 0;
          v219 = 0.0;
          do
          {
            v220 = sub_26294CAB8();
            if (v218 >= *(v220 + 16))
            {
              goto LABEL_161;
            }

            v411 = (v218 + 1);
            v410 = ((*(v404 + 80) + 32) & ~*(v404 + 80));
            v221 = *(v404 + 72);
            v412 = v218;
            v222 = v221 * v218;
            v223 = *(v404 + 16);
            v409 = v222;
            v223(v133, &v410[v220 + v222], v29);

            v224 = 0;
            v431 = sub_26294CAD8();
            v430 = *(v431 + 16);
            do
            {
              if (v430 == v224)
              {
                v133 = v408;
                v263 = v436;
LABEL_103:

                v79 = v422;
                sub_262906C54(v422, &v441);
                __swift_project_boxed_opaque_existential_1(&v441, v442);
                v173 = v407;
                sub_26294CA68();
                sub_26294C648();
                v252 = *v435;
                (*v435)(v263, v437);
                __swift_destroy_boxed_opaque_existential_1Tm(&v441);
                sub_26294CB68();
                v29 = v405;
                goto LABEL_106;
              }

              if (v224 >= *(v431 + 16))
              {
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                v133 = v426;
                v103 = v422;
LABEL_142:
                swift_getKeyPath();
                swift_getKeyPath();
                sub_26294CFF8();

                v325 = *(v441 + 16);

                v431 = v325;
                if (!v325)
                {
LABEL_158:
                  v356 = v376;
                  sub_26294CDB8();
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v357 = v377;
                  v358 = v378;
                  (*(v377 + 16))(v375, v356, v378);
                  v359 = v406;
                  sub_26294D008();
                  (*(v357 + 8))(v356, v358);
                  sub_2628EC330();
                  return sub_2628EDABC();
                }

                v326 = 0;
                v427 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__showESim;
                v430 = (v133 + 104);
                LODWORD(v429) = *MEMORY[0x277D491A8];
                v428 = (v133 + 8);
                v425 = (v371 + 16);
                v424 = (v371 + 8);
                v327 = v103;
                v426 = v393 + 2;
                v433 = (v393 + 1);
                while (2)
                {
                  sub_262906C54(v327, &v441);
                  v328 = v443;
                  __swift_project_boxed_opaque_existential_1(&v441, v442);
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_26294CFF8();

                  if (v326 >= *(v440 + 16))
                  {
                    goto LABEL_163;
                  }

                  v329 = v393;
                  v435 = ((*(v329 + 80) + 32) & ~*(v329 + 80));
                  v330 = v393[9];
                  v438 = v326;
                  v432 = v328;
                  v29 = v393[2];
                  ObjectType = v330 * v326;
                  v331 = &v435[v440 + v330 * v326];
                  v332 = v397;
                  v333 = v399;
                  (v29)(v397, v331, v399);

                  v334 = sub_26294C6F8();
                  v336 = v335;
                  v133 = v329[1];
                  (v133)(v332, v333);
                  v337 = v436;
                  *v436 = v334;
                  v337[1] = v336;
                  v338 = v437;
                  (*v430)(v337, v429, v437);
                  sub_26294C648();
                  (*v428)(v337, v338);
                  __swift_destroy_boxed_opaque_existential_1Tm(&v441);
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v339 = sub_26294CFE8();
                  v341 = v340;
                  v342 = *v340;
                  v343 = swift_isUniquelyReferenced_nonNull_native();
                  *v341 = v342;
                  if ((v343 & 1) == 0)
                  {
                    v342 = sub_26291DC1C(v342);
                    *v341 = v342;
                  }

                  if (v438 >= v342[2])
                  {
                    goto LABEL_164;
                  }

                  sub_26294C718();
                  v339(&v441, 0);

                  v344 = v392;
                  v345 = v396;
                  (*v425)(v392, v427 + v406, v396);
                  sub_26294DC78();
                  (*v424)(v344, v345);
                  v346 = v399;
                  if (v441)
                  {
LABEL_156:
                    v82 = &unk_26294F1D0;
                    swift_getKeyPath();
                    swift_getKeyPath();
                    sub_26294CFF8();

                    v73 = v441;
                    v79 = v438;
                    if (v438 >= *(v441 + 16))
                    {
                      goto LABEL_167;
                    }

                    v353 = v397;
                    (v29)(v397, &v435[v441 + ObjectType], v346);

                    sub_26294C708();
                    v355 = v354;
                    (v133)(v353, v346);
                    v1 = v1 + v355;
                  }

                  else
                  {
                    swift_getKeyPath();
                    swift_getKeyPath();
                    sub_26294CFF8();

                    v347 = *(v441 + 16);
                    if (v347)
                    {
                      v348 = &v435[v441];
                      v349 = 0.0;
                      v350 = v384;
                      do
                      {
                        (v29)(v350, v348, v346);
                        sub_26294C708();
                        v352 = v351;
                        (v133)(v350, v346);
                        v349 = v349 + v352;
                        v348 += v330;
                        --v347;
                      }

                      while (v347);

                      if (v349 > 0.0)
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                    }

                    v79 = v438;
                  }

                  v326 = v79 + 1;
                  v327 = v422;
                  if (v326 == v431)
                  {
                    goto LABEL_158;
                  }

                  continue;
                }
              }

              v225 = v426;
              v429 = ((*(v225 + 80) + 32) & ~*(v225 + 80));
              v427 = v426[9];
              v226 = v425;
              v227 = v437;
              v428 = v426[2];
              (v428)(v425, &v429[v431 + v427 * v224++], v437);
              v228 = sub_26294DB58();
              v229 = *(v228 - 8);
              v230 = *(v229 + 104);
              v231 = (v229 + 104);
              v232 = v436;
              (v230)(v436, v424, v228);
              v233 = v225[13];
              v233(v232, v433, v227);
              LODWORD(v438) = MEMORY[0x26672D270](v226, v232);
              v234 = v225[1];
              v234(v232, v227);
              v234(v226, v227);
            }

            while ((v438 & 1) == 0);
            v420 = v233;
            v421 = v231;
            v430 = v230;
            v423 = v234;

            v235 = sub_26294CAD8();
            v236 = &v429[v235];
            v431 = -*(v235 + 16);
            v237 = -1;
            v238 = v427;
            v239 = v428;
            v240 = v228;
            do
            {
              if (v431 + v237 == -1)
              {
                v263 = v436;
                v133 = v408;
                goto LABEL_103;
              }

              if (++v237 >= *(v235 + 16))
              {
                goto LABEL_140;
              }

              v438 = v238 + v236;
              v241 = v419;
              v242 = v437;
              (v239)(v419);
              v243 = v436;
              (v430)(v436, v418, v240);
              (v420)(v243, v433, v242);
              v244 = MEMORY[0x26672D270](v241, v243);
              v245 = v423;
              (v423)(v243, v242);
              v245(v241, v242);
              v236 = v438;
            }

            while ((v244 & 1) == 0);
            v246 = v429;
            v247 = v238;

            if (qword_27FF2E7C0 != -1)
            {
              swift_once();
            }

            v248 = sub_26294CE48();
            __swift_project_value_buffer(v248, qword_27FF314B0);
            v249 = sub_26294CE28();
            v250 = sub_26294DE98();
            v251 = os_log_type_enabled(v249, v250);
            v79 = v422;
            v29 = v405;
            v173 = v407;
            v252 = v423;
            if (v251)
            {
              v253 = swift_slowAlloc();
              *v253 = 0;
              _os_log_impl(&dword_2628DB000, v249, v250, "Calculating Usage for Shared Copernicus and Aliro Pass, This is OK for now because Aliro only supports Home -- for now", v253, 2u);
              MEMORY[0x26672DCE0](v253, -1, -1);
            }

            v254 = sub_26294CAD8();
            v255 = *(v254 + 16);
            if (v255)
            {
              v438 = v254;
              v256 = &v246[v254];
              v257 = 0.0;
              v258 = v437;
              v259 = v391;
              v260 = v428;
              do
              {
                (v260)(v259, v256, v258);
                sub_262906C54(v422, &v441);
                __swift_project_boxed_opaque_existential_1(&v441, v442);
                v261 = sub_26294C648();
                v258 = v437;
                v262 = v261;
                __swift_destroy_boxed_opaque_existential_1Tm(&v441);
                (v423)(v259, v258);
                v257 = v257 + floor(v262 / v2 * 1000.0) / 1000.0;
                v256 = v247 + v256;
                --v255;
              }

              while (v255);

              v29 = v405;
              v173 = v407;
              v79 = v422;
              v252 = v423;
            }

            else
            {

              v257 = 0.0;
            }

            v133 = v408;
            v264 = sub_26294CB48();
            *v265 = v257 + *v265;
            v264(&v441, 0);
            LODWORD(v395) = 1;
LABEL_106:
            sub_26294CB58();
            v267 = v266;
            v268 = sub_26294CAA8();
            v270 = v269;
            v271 = *v269;
            v272 = swift_isUniquelyReferenced_nonNull_native();
            *v270 = v271;
            if ((v272 & 1) == 0)
            {
              v271 = sub_26291DD00(v271);
              *v270 = v271;
            }

            if (v412 >= v271[2])
            {
              goto LABEL_162;
            }

            v219 = v219 + v267;
            (*v401)(&v410[v271 + v409], v133, v29);
            v268(&v441, 0);
            (*v400)(v133, v29);
            v218 = v411;
          }

          while (v411 != v403);
          if (v395)
          {
            break;
          }
        }

        v276 = v436;
        sub_262906C54(v79, &v441);
        __swift_project_boxed_opaque_existential_1(&v441, v442);
        sub_26294CA68();
        sub_26294C628();
        (*v435)(v276, v437);
        __swift_destroy_boxed_opaque_existential_1Tm(&v441);
LABEL_114:
        sub_26294CA98();
        sub_26294CA88();
        sub_26294CA48();
        sub_26294CA88();
        v278 = v277;
        v279 = v406;
        v280 = v394;
        swift_beginAccess();
        v281 = *&v280[v279];
        v282 = swift_isUniquelyReferenced_nonNull_native();
        *&v280[v279] = v281;
        if ((v282 & 1) == 0)
        {
          v281 = sub_26291DCB4(v281);
          *&v394[v406] = v281;
        }

        if (v386 >= *(v281 + 16))
        {
          goto LABEL_170;
        }

        v283 = v386 + 1;
        v1 = v1 + v278;
        v73 = v387;
        (*v379)(&v382[v281 + v383], v173, v387);
        v82 = v406;
        v284 = v394;
        *&v394[v406] = v281;
        v211 = v284;
        swift_endAccess();
        (v373->isa)(v173, v73);
        v212 = v283;
        if (v283 == v380)
        {
          goto LABEL_120;
        }
      }

      sub_262906C54(v79, &v441);
      __swift_project_boxed_opaque_existential_1(&v441, v442);
      v273 = sub_26294DB58();
      v431 = *(*(v273 - 8) + 104);
      (v431)(v436, v424, v273);
      v430 = *v432;
      v274 = v437;
      (v430)(v436, v433, v437);
      v438 = sub_26294C628();
      v252(v436, v274);
      v423 = v252;
      sub_262906C54(v79, v439);
      __swift_project_boxed_opaque_existential_1(v439, v439[3]);
      (v431)(v436, v418, v273);
      v133 = v436;
      (v430)(v436, v433, v274);
      v275 = sub_26294C628();
      (v423)(v133, v274);
      if (!__OFADD__(v438, v275))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v439);
        __swift_destroy_boxed_opaque_existential_1Tm(&v441);
        v133 = v408;
        v173 = v407;
        goto LABEL_114;
      }

LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      swift_once();
LABEL_43:
      v170 = sub_26294CE48();
      __swift_project_value_buffer(v170, qword_27FF314B0);
      v73 = sub_26294CE28();
      v171 = sub_26294DE98();
      v172 = os_log_type_enabled(v73, v171);
      v173 = v407;
      if (v172)
      {
        v174 = swift_slowAlloc();
        *v174 = 134218496;
        *(v174 + 4) = v1;
        *(v174 + 12) = 2048;
        *(v174 + 14) = v2;
        *(v174 + 22) = 2048;
        *(v174 + 24) = v3;
        _os_log_impl(&dword_2628DB000, v73, v171, "required %f, total %f, totalUsage %f", v174, 0x20u);
        v175 = v174;
        v133 = v408;
        MEMORY[0x26672DCE0](v175, -1, -1);
      }

      v367 = v2 - v3 >= v1;
      v82 = v406;
    }

    v1 = 0.0;
LABEL_120:
    v285 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
    swift_beginAccess();
    v431 = *(*&v82[v285] + 16);
    if (!v431)
    {
LABEL_134:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      v314 = *(v441 + 16);

      if (!v314)
      {
        goto LABEL_141;
      }

      v103 = v422;
      sub_262906C54(v422, &v441);
      __swift_project_boxed_opaque_existential_1(&v441, v442);
      v315 = v426;
      v316 = v436;
      v317 = v437;
      (v426[13])(v436, *MEMORY[0x277D49290], v437);
      sub_26294C628();
      (v315[1])(v316, v317);
      __swift_destroy_boxed_opaque_existential_1Tm(&v441);
      swift_getKeyPath();
      swift_getKeyPath();
      v169 = sub_26294CFE8();
      v79 = v318;
      v138 = *v318;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v79 = v138;
      if (result)
      {
LABEL_136:
        v319 = v372;
        if (*(v138 + 2))
        {
          v320 = (*(v372 + 80) + 32) & ~*(v372 + 80);
          sub_26294CC08();
          (v169)(&v441, 0);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_26294CFF8();

          if (*(v441 + 16))
          {
            v321 = v369;
            v322 = v370;
            (*(v319 + 16))(v369, v441 + v320, v370);

            sub_26294CBF8();
            v324 = v323;
            (*(v319 + 8))(v321, v322);
            v1 = v1 + v324;
            v133 = v426;
            goto LABEL_142;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }

LABEL_175:
      result = sub_26291DC68(v138);
      v138 = result;
      *v79 = result;
      goto LABEL_136;
    }

    v286 = 0;
    v430 = (v390 + 16);
    v429 = (v374 + 8);
    LODWORD(v428) = *MEMORY[0x277D49238];
    v427 = (v426 + 13);
    v438 = v413 + 16;
    v435 = (v413 + 24);
    v29 = (v413 + 8);
    v424 = (v390 + 24);
    v423 = (v426 + 1);
    v421 = (v390 + 8);
    v287 = v414;
    v425 = v285;
LABEL_122:
    v288 = *&v82[v285];
    if (v286 < *(v288 + 16))
    {
      break;
    }

    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    swift_once();
  }

  v433 = ((*(v390 + 80) + 32) & ~*(v390 + 80));
  v289 = *(v390 + 72);
  ObjectType = v286;
  v290 = (v289 * v286);
  v291 = *(v390 + 16);
  v432 = v290;
  v292 = v291(v287, &v433[v288 + v290], v398);
  v73 = v388;
  MEMORY[0x26672C010](v292);
  v293 = sub_26294C508();
  v133 = v294;
  (*v429)(v73, v389);
  v295 = v415;
  *v415 = v293;
  v295[1] = v133;
  (*v427)();
  v296 = *(sub_26294C928() + 16);

  if (!v296)
  {
LABEL_130:
    sub_262906C54(v422, &v441);
    v82 = v443;
    __swift_project_boxed_opaque_existential_1(&v441, v442);
    sub_26294C628();
    __swift_destroy_boxed_opaque_existential_1Tm(&v441);
    v287 = v414;
    sub_26294CA08();
    sub_26294C9F8();
    sub_26294C8E8();
    sub_26294C9F8();
    v310 = v309;
    v311 = v406;
    v285 = v425;
    swift_beginAccess();
    v312 = *&v311[v285];
    v313 = swift_isUniquelyReferenced_nonNull_native();
    *&v311[v285] = v312;
    if ((v313 & 1) == 0)
    {
      v312 = sub_26291DB84(v312);
      *&v406[v285] = v312;
    }

    if (ObjectType >= *(v312 + 16))
    {
      goto LABEL_166;
    }

    v286 = ObjectType + 1;
    v1 = v1 + v310;
    v73 = v398;
    (*v424)(&v433[v312 + v432], v287, v398);
    v82 = v406;
    *&v406[v285] = v312;
    swift_endAccess();
    (*v423)(v415, v437);
    (*v421)(v287, v73);
    if (v286 == v431)
    {
      goto LABEL_134;
    }

    goto LABEL_122;
  }

  v297 = 0;
  v298 = 0.0;
  while (1)
  {
    v79 = v414;
    v299 = sub_26294C928();
    if (v297 >= *(v299 + 16))
    {
      break;
    }

    v300 = (*(v413 + 80) + 32) & ~*(v413 + 80);
    v301 = *(v413 + 72) * v297;
    (*(v413 + 16))(v416, v299 + v300 + v301, v417);

    sub_262906C54(v422, &v441);
    __swift_project_boxed_opaque_existential_1(&v441, v442);
    sub_26294C648();
    __swift_destroy_boxed_opaque_existential_1Tm(&v441);
    sub_26294C9A8();
    sub_26294C998();
    v303 = v302;
    v304 = sub_26294C918();
    v306 = v305;
    v133 = *v305;
    v307 = swift_isUniquelyReferenced_nonNull_native();
    *v306 = v133;
    if ((v307 & 1) == 0)
    {
      v133 = sub_26291DBD0(v133);
      *v306 = v133;
    }

    if (v297 >= *(v133 + 16))
    {
      goto LABEL_160;
    }

    ++v297;
    v298 = v298 + v303;
    v308 = v133 + v300 + v301;
    v73 = v416;
    v133 = v417;
    (*v435)(v308, v416, v417);
    v304(&v441, 0);
    (*v29)(v73, v133);
    if (v296 == v297)
    {
      goto LABEL_130;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
  swift_once();
  v116 = sub_26294CE48();
  __swift_project_value_buffer(v116, qword_27FF314B0);
  v117 = v133;
  v118 = sub_26294CE28();
  v119 = sub_26294DEA8();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = v133;
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v121 = 138412290;
    v123 = v120;
    v124 = _swift_stdlib_bridgeErrorToNSError();
    *(v121 + 4) = v124;
    *v122 = v124;
    _os_log_impl(&dword_2628DB000, v118, v119, "Error %@ encountered while getting total used and total stored from snapshot", v121, 0xCu);
    sub_2628DF6F0(v122, &qword_27FF2EDF8, &qword_26294F460);
    MEMORY[0x26672DCE0](v122, -1, -1);
    v125 = v121;
    v133 = v120;
    MEMORY[0x26672DCE0](v125, -1, -1);
  }

  v126 = sub_26294DE28();
  v127 = v424;
  (*(*(v126 - 8) + 56))(v424, 1, 1, v126);
  v128 = swift_allocObject();
  v128[2] = 0;
  v128[3] = 0;
  v129 = v406;
  v130 = ObjectType;
  v128[4] = v406;
  v128[5] = v130;
  v131 = v129;
  sub_2628EB2A0(0, 0, v127, &unk_26294F480, v128);
}

uint64_t sub_2628EAC30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_26294DE28();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = ObjectType;
  v13 = v3;
  sub_262906C04(a1);
  sub_2628EB2A0(0, 0, v10, &unk_26294F470, v12);
}

uint64_t sub_2628EAD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_2628EAD88, 0, 0);
}

void (*sub_2628EAD88())(uint64_t, void)
{
  if (qword_27FF2E7B8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDF0, &qword_26294F458);
  __swift_project_value_buffer(v1, qword_27FF2EAC8);
  swift_beginAccess();
  result = sub_26294DC68();
  if (*v3 == -1)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 72);
    ++*v3;
    result(v0 + 16, 0);
    swift_endAccess();
    v5 = *(v4 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler + 24);
    v6 = *(v4 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler), v5);
    v7 = *(v6 + 8);
    v10 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_2628EAF68;

    return v10(v5, v6);
  }

  return result;
}

uint64_t sub_2628EAF68()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2628EB0FC;
  }

  else
  {
    v3 = sub_2628EB07C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2628EB07C()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];

    v1(v3);
    sub_262905484(v1);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2628EB0FC()
{
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_26294CE48();
  __swift_project_value_buffer(v2, qword_27FF314B0);
  v3 = v1;
  v4 = sub_26294CE28();
  v5 = sub_26294DEA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2628DB000, v4, v5, "Unable to cancel sheet: %@", v8, 0xCu);
    sub_2628DF6F0(v9, &qword_27FF2EDF8, &qword_26294F460);
    MEMORY[0x26672DCE0](v9, -1, -1);
    MEMORY[0x26672DCE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2628EB2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2628DF954(a3, v27 - v11, &qword_27FF2EDE8, &qword_26294F428);
  v13 = sub_26294DE28();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2628DF6F0(v12, &qword_27FF2EDE8, &qword_26294F428);
  }

  else
  {
    sub_26294DE18();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26294DE08();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26294DD78() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2628DF6F0(a3, &qword_27FF2EDE8, &qword_26294F428);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2628DF6F0(a3, &qword_27FF2EDE8, &qword_26294F428);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2628EB5A0()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_26294DE28();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = ObjectType;
  v8 = v0;
  sub_2628EB2A0(0, 0, v5, &unk_26294F438, v7);
}

uint64_t sub_2628EB6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_26294CDF8();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2628EB770, 0, 0);
}

void (*sub_2628EB770())(void *, void)
{
  if (qword_27FF2E7B0 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDF0, &qword_26294F458);
  __swift_project_value_buffer(v1, qword_27FF2EAB0);
  swift_beginAccess();
  result = sub_26294DC68();
  if (*v3 == -1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    ++*v3;
    result(v0 + 2, 0);
    swift_endAccess();
    v8 = *(v7 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler + 24);
    v9 = *(v7 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler + 32);
    __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler), v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v10 = sub_26294CDE8();
    (*(v5 + 8))(v4, v6);
    v11 = *(v9 + 16);
    v14 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_2628EB9DC;

    return (v14)(v10 & 1, v8, v9);
  }

  return result;
}

uint64_t sub_2628EB9DC()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2628EBB18, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2628EBB18()
{
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_26294CE48();
  __swift_project_value_buffer(v2, qword_27FF314B0);
  v3 = v1;
  v4 = sub_26294CE28();
  v5 = sub_26294DEA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2628DB000, v4, v5, "Unable to complete sheet: %@", v8, 0xCu);
    sub_2628DF6F0(v9, &qword_27FF2EDF8, &qword_26294F460);
    MEMORY[0x26672DCE0](v9, -1, -1);
    MEMORY[0x26672DCE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[12];

  v13 = v0[1];

  return v13();
}

id SEStorageManagementController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SEStorageManagementController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2628EC2F0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_26294CFC8();
  *a1 = result;
  return result;
}

uint64_t sub_2628EC330()
{
  v1 = sub_26294CCB8();
  v111 = *(v1 - 8);
  v2 = *(v111 + 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_26294C7A8();
  v115 = *(v126 - 8);
  v5 = *(v115 + 64);
  MEMORY[0x28223BE20](v126);
  v123 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26294CBA8();
  v120 = *(v7 - 1);
  v8 = *(v120 + 8);
  MEMORY[0x28223BE20](v7);
  v107 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26294CD78();
  v124 = *(v10 - 8);
  v11 = *(v124 + 64);
  MEMORY[0x28223BE20](v10);
  v118 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26294C828();
  v14 = *(v13 - 8);
  v128 = v13;
  v129 = v14;
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v122 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v117 = &v105 - v19;
  MEMORY[0x28223BE20](v18);
  v114 = &v105 - v20;
  v127 = sub_26294C8A8();
  v125 = *(v127 - 8);
  v21 = *(v125 + 64);
  v22 = MEMORY[0x28223BE20](v127);
  v121 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v116 = &v105 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v110 = &v105 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v113 = &v105 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v112 = &v105 - v31;
  MEMORY[0x28223BE20](v30);
  v109 = &v105 - v32;
  sub_2628EE448();
  sub_2628EEBD0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v33 = *(v130 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v34 = *(v130 + 16);

  v35 = sub_2628E45F4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v36 = *(v130 + 16);

  v119 = v10;
  if (v33)
  {
    if (!v34)
    {
      v37 = v1;
      if (v35)
      {
        v41 = 5;
      }

      else
      {
        v41 = 1;
      }

      if (v36)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v37 = v1;
    v38 = !v35;
    v39 = 3;
    v40 = 7;
  }

  else
  {
    if (!v34)
    {
      v37 = v1;
      if (v35)
      {
        v41 = 4;
      }

      else
      {
        v41 = 0;
      }

      if (v36)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v37 = v1;
    v38 = !v35;
    v39 = 2;
    v40 = 6;
  }

  if (v38)
  {
    v41 = v39;
  }

  else
  {
    v41 = v40;
  }

  if (v36)
  {
LABEL_10:
    v41 |= 8uLL;
  }

LABEL_11:
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *&v130 = v41;
  v43 = v0;
  sub_26294D008();
  v44 = swift_getKeyPath();
  v45 = swift_getKeyPath();
  sub_26294CFF8();

  v46 = v130;
  v47 = v125;
  if (!v130)
  {
    goto LABEL_14;
  }

  if (__OFSUB__(v130, 1))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (((v130 - 1) & v130) != 0)
  {
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v48 = *(v130 + 16);

    if (!v48)
    {
      v44 = MEMORY[0x277D84F90];
      v37 = v129;
      v7 = v114;
      v4 = v113;
      goto LABEL_18;
    }

    v37 = v129;
    v7 = v114;
    (*(v129 + 13))(v114, *MEMORY[0x277D48EC0], v128);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    sub_2628E3654(v130);

    KeyPath = v109;
    sub_26294C838();
    v44 = sub_26291D700(0, 1, 1, MEMORY[0x277D84F90]);
    v41 = *(v44 + 16);
    v46 = *(v44 + 24);
    v45 = v41 + 1;
    v4 = v113;
    if (v41 < v46 >> 1)
    {
LABEL_16:
      *(v44 + 16) = v45;
      (*(v47 + 32))(v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41, KeyPath, v127);
LABEL_18:
      if (sub_2628E45F4())
      {
        (*(v37 + 13))(v7, *MEMORY[0x277D48EB0], v128);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_26294CFF8();

        sub_2628E384C(v130);

        sub_26294C838();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_26291D700(0, *(v44 + 16) + 1, 1, v44);
        }

        v50 = *(v44 + 16);
        v49 = *(v44 + 24);
        if (v50 >= v49 >> 1)
        {
          v44 = sub_26291D700(v49 > 1, v50 + 1, 1, v44);
        }

        *(v44 + 16) = v50 + 1;
        (*(v47 + 32))(v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v50, v112, v127);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      v51 = *(v130 + 16);

      if (v51)
      {
        (*(v37 + 13))(v7, *MEMORY[0x277D48EC8], v128);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_26294CFF8();

        sub_2628E3A44(v130);

        sub_26294C838();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_26291D700(0, *(v44 + 16) + 1, 1, v44);
        }

        v53 = *(v44 + 16);
        v52 = *(v44 + 24);
        if (v53 >= v52 >> 1)
        {
          v44 = sub_26291D700(v52 > 1, v53 + 1, 1, v44);
        }

        *(v44 + 16) = v53 + 1;
        (*(v47 + 32))(v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v53, v4, v127);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      v54 = *(v130 + 16);

      if (v54)
      {
        (*(v37 + 13))(v7, *MEMORY[0x277D48EB8], v128);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_26294CFF8();

        sub_2628E3C3C(v130);

        v55 = v110;
        sub_26294C838();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_26291D700(0, *(v44 + 16) + 1, 1, v44);
        }

        v57 = *(v44 + 16);
        v56 = *(v44 + 24);
        if (v57 >= v56 >> 1)
        {
          v44 = sub_26291D700(v56 > 1, v57 + 1, 1, v44);
        }

        *(v44 + 16) = v57 + 1;
        (*(v47 + 32))(v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v57, v55, v127);
      }

      goto LABEL_36;
    }

LABEL_97:
    v44 = sub_26291D700(v46 > 1, v45, 1, v44);
    goto LABEL_16;
  }

  v60 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v106 = v43;
  if (v130)
  {
    swift_getKeyPath();
    v45 = swift_getKeyPath();
    sub_26294CFF8();

    v65 = v130;
    v121 = *(v130 + 16);
    if (v121)
    {
      v44 = 0;
      v114 = (v130 + ((*(v124 + 80) + 32) & ~*(v124 + 80)));
      v113 = (v124 + 16);
      LODWORD(v112) = *MEMORY[0x277D48EA0];
      v111 = v129 + 104;
      v129 = v120 + 8;
      v110 = (v124 + 8);
      v109 = (v47 + 32);
      v4 = MEMORY[0x277D84F90];
      v37 = v107;
      v7 = v118;
      v41 = v119;
      v43 = v116;
      KeyPath = v117;
      v115 = v130;
      v108 = v120 + 16;
      while (1)
      {
        v46 = *(v65 + 16);
        if (v44 >= v46)
        {
          break;
        }

        v66 = *(v124 + 72);
        v126 = v44;
        v67 = &v114[v66 * v44];
        v68 = *(v124 + 16);
        v68(v7, v67, v41);
        v68(KeyPath, v7, v41);
        (*v111)(KeyPath, v112, v128);
        v69 = sub_26294CD58();
        v70 = *(v69 + 16);
        if (v70)
        {
          v123 = v4;
          v133 = MEMORY[0x277D84F90];
          v71 = v69;
          sub_2628FBEF4(0, v70, 0);
          v72 = v133;
          v73 = v120[80];
          v122 = v71;
          v74 = &v71[(v73 + 32) & ~v73];
          v75 = *(v120 + 9);
          v76 = *(v120 + 2);
          do
          {
            v76(v37, v74, v60);
            v133 = v72;
            v77 = v37;
            v79 = *(v72 + 16);
            v78 = *(v72 + 24);
            if (v79 >= v78 >> 1)
            {
              sub_2628FBEF4((v78 > 1), v79 + 1, 1);
            }

            v131 = v60;
            v132 = sub_262906CE0(&qword_27FF2EC88, MEMORY[0x277D48F58]);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v130);
            v76(boxed_opaque_existential_1, v77, v60);
            v72 = v133;
            *(v133 + 16) = v79 + 1;
            sub_262905600(&v130, v72 + 40 * v79 + 32);
            (*v129)(v77, v60);
            v74 += v75;
            --v70;
            v37 = v77;
          }

          while (v70);

          v47 = v125;
          v7 = v118;
          v41 = v119;
          v43 = v116;
          KeyPath = v117;
          v4 = v123;
        }

        else
        {
        }

        sub_26294C838();
        (*v110)(v7, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_26291D700(0, *(v4 + 2) + 1, 1, v4);
        }

        v45 = *(v4 + 2);
        v81 = *(v4 + 3);
        if (v45 >= v81 >> 1)
        {
          v4 = sub_26291D700(v81 > 1, v45 + 1, 1, v4);
        }

        v82 = v127;
        v83 = v126 + 1;
        *(v4 + 2) = v45 + 1;
        v44 = v83;
        (*(v47 + 32))(&v4[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v45], v43, v82);
        v65 = v115;
        if (v44 == v121)
        {

          v43 = v106;
          goto LABEL_88;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    v4 = MEMORY[0x277D84F90];
LABEL_88:
    swift_getKeyPath();
    swift_getKeyPath();
    *&v130 = v4;
LABEL_93:
    v104 = v43;
    return sub_26294D008();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v130 & 2) != 0)
  {
    v44 = swift_getKeyPath();
    v45 = swift_getKeyPath();
    sub_26294CFF8();

    v84 = v130;
    v118 = *(v130 + 16);
    if (v118)
    {
      v41 = 0;
      v116 = (v130 + ((*(v115 + 80) + 32) & ~*(v115 + 80)));
      v114 = (v115 + 16);
      LODWORD(v113) = *MEMORY[0x277D48E98];
      v112 = v129 + 104;
      v129 = v111 + 8;
      v110 = (v115 + 8);
      v109 = (v47 + 32);
      v7 = MEMORY[0x277D84F90];
      v117 = v130;
      v108 = v111 + 16;
      while (1)
      {
        v46 = *(v84 + 2);
        if (v41 >= v46)
        {
          break;
        }

        v85 = *(v115 + 72);
        v124 = v41;
        v86 = &v116[v85 * v41];
        v87 = *(v115 + 16);
        v88 = v123;
        v89 = v126;
        v87(v123, v86, v126);
        KeyPath = v122;
        v87(v122, v88, v89);
        (*v112)(KeyPath, v113, v128);
        v90 = sub_26294C738();
        v91 = *(v90 + 16);
        if (v91)
        {
          v120 = v7;
          v133 = MEMORY[0x277D84F90];
          sub_2628FBEF4(0, v91, 0);
          v92 = v133;
          v93 = v111[80];
          v119 = v90;
          v94 = v90 + ((v93 + 32) & ~v93);
          KeyPath = *(v111 + 9);
          v95 = *(v111 + 2);
          do
          {
            v95(v4, v94, v37);
            v133 = v92;
            v97 = *(v92 + 16);
            v96 = *(v92 + 24);
            if (v97 >= v96 >> 1)
            {
              sub_2628FBEF4((v96 > 1), v97 + 1, 1);
            }

            v131 = v37;
            v132 = sub_262906CE0(&qword_27FF2EC80, MEMORY[0x277D48FC8]);
            v98 = __swift_allocate_boxed_opaque_existential_1(&v130);
            v95(v98, v4, v37);
            v92 = v133;
            *(v133 + 16) = v97 + 1;
            sub_262905600(&v130, v92 + 40 * v97 + 32);
            (*v129)(v4, v37);
            v94 += KeyPath;
            --v91;
          }

          while (v91);

          v43 = v106;
          v47 = v125;
          v7 = v120;
        }

        else
        {
        }

        sub_26294C838();
        (*v110)(v123, v126);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v124;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_26291D700(0, *(v7 + 2) + 1, 1, v7);
        }

        v45 = *(v7 + 2);
        v101 = *(v7 + 3);
        v44 = v45 + 1;
        if (v45 >= v101 >> 1)
        {
          v7 = sub_26291D700(v101 > 1, v45 + 1, 1, v7);
        }

        v41 = v100 + 1;
        *(v7 + 2) = v44;
        (*(v47 + 32))(&v7[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v45], v121, v127);
        v84 = v117;
        if (v41 == v118)
        {

          goto LABEL_92;
        }
      }

LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v7 = MEMORY[0x277D84F90];
LABEL_92:
    swift_getKeyPath();
    swift_getKeyPath();
    *&v130 = v7;
    goto LABEL_93;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v130 & 8) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC78, &qword_26294F218);
    v102 = *(v47 + 72);
    v103 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_26294ECB0;
    (*(v129 + 13))(v114, *MEMORY[0x277D48EC8], v128);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    sub_2628E3A44(v130);

    goto LABEL_90;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v61 = v129;
  v62 = v114;
  if ((v130 & 4) != 0)
  {
    result = sub_2628E45F4();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC78, &qword_26294F218);
      v63 = *(v47 + 72);
      v64 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_26294ECB0;
      (*(v61 + 13))(v62, *MEMORY[0x277D48EB0], v128);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      sub_2628E384C(v130);

LABEL_90:
      sub_26294C838();
LABEL_36:
      swift_getKeyPath();
      swift_getKeyPath();
      *&v130 = v44;
      v58 = v43;
      return sub_26294D008();
    }
  }

  return result;
}

uint64_t sub_2628EDABC()
{
  v1 = sub_26294C828();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v44 - v5;
  v6 = sub_26294CD98();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = sub_26294C8A8();
  v20 = *(v19 - 8);
  v53 = *(v20 + 56);
  v54 = v19;
  v52 = v20 + 56;
  v53(v18, 1, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2628DF954(v18, v16, &qword_27FF2E9A0, &qword_26294E9A8);
  v21 = v0;
  v51 = v16;
  sub_26294D008();
  sub_2628DF6F0(v18, &qword_27FF2E9A0, &qword_26294E9A8);
  v60 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v22 = sub_2628E3654(v57);

  sub_2628E4350(v22, sub_26291D79C, &qword_27FF2EC98, &qword_26294F228);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v23 = sub_2628E3C3C(v57);

  sub_2628E4350(v23, sub_26291D79C, &qword_27FF2EC98, &qword_26294F228);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v24 = *(v57 + 16);

  if (v24)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    sub_2628E4484();
    sub_26294CD88();
    v25 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_26291D79C(0, v25[2] + 1, 1, v25);
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_26291D79C((v26 > 1), v27 + 1, 1, v25);
    }

    v58 = v6;
    v59 = sub_262906CE0(&qword_27FF2EE08, MEMORY[0x277D49068]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v57);
    v29 = v48;
    (*(v48 + 16))(boxed_opaque_existential_1, v9, v6);
    v25[2] = v27 + 1;
    sub_262905600(&v57, &v25[5 * v27 + 4]);
    (*(v29 + 8))(v9, v6);
    v60 = v25;
  }

  else
  {
    v25 = v60;
  }

  *&v57 = v25;

  sub_2628FD144(&v57);
  v30 = v57;
  v31 = *(v57 + 16);
  if (v31 <= 1)
  {
    if (v31 != 1)
    {

      (v53)(v18, 1, 1, v54);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2628DF954(v18, v51, &qword_27FF2E9A0, &qword_26294E9A8);
      v42 = v21;
      sub_26294D008();
      return sub_2628DF6F0(v18, &qword_27FF2E9A0, &qword_26294E9A8);
    }

    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  sub_262906C54(v57 + 32, &v57);
  sub_262906C54(v30 + 32, v55);
  __swift_project_boxed_opaque_existential_1(v55, v56);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_project_boxed_opaque_existential_1(&v57, v58);
  if (DynamicType == swift_getDynamicType() && (v31 < 2 || (sub_262906C54(v30 + 72, v55), __swift_project_boxed_opaque_existential_1(v55, v56), v37 = swift_getDynamicType(), __swift_destroy_boxed_opaque_existential_1Tm(v55), __swift_project_boxed_opaque_existential_1(&v57, v58), v37 == swift_getDynamicType())))
  {

    (*(v49 + 104))(v45, *MEMORY[0x277D48EA8], v50);
    if (*(v30 + 16) == v32)
    {
    }

    else
    {
      sub_2628FBD14(v30, v30 + 32, 0, (2 * v32) | 1);
    }

    v39 = v53;
    v38 = v54;
    v40 = v46;
    sub_26294C838();
    (v39)(v40, 0, 1, v38);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2628DF954(v40, v18, &qword_27FF2E9A0, &qword_26294E9A8);
    v41 = v21;
    sub_26294D008();

    v36 = v40;
  }

  else
  {

    (*(v49 + 104))(v47, *MEMORY[0x277D48EA8], v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC90, &qword_26294F220);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_26294ECB0;
    sub_262906C54(&v57, v34 + 32);
    sub_26294C838();
    (v53)(v18, 0, 1, v54);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2628DF954(v18, v51, &qword_27FF2E9A0, &qword_26294E9A8);
    v35 = v21;
    sub_26294D008();

    v36 = v18;
  }

  sub_2628DF6F0(v36, &qword_27FF2E9A0, &qword_26294E9A8);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v57);
}

uint64_t sub_2628EE448()
{
  v55 = 0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED38, &qword_26294F288);
  v1 = *(*(v67 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v67);
  v66 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v65 = &v53 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v64 = &v53 - v7;
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - v8;
  v62 = sub_26294CD78();
  v68 = *(v62 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v62);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26294CBA8();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v54 = v0;
  v18 = *&v0[v17];
  v19 = MEMORY[0x277D84F98];
  v73 = MEMORY[0x277D84F98];
  v20 = *(v18 + 16);

  if (v20)
  {
    v21 = 0;
    v22 = v13 + 8;
    v23 = v55;
    while (v21 < *(v18 + 16))
    {
      (*(v13 + 16))(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v12);
      sub_2628EFF1C(&v73, v16);
      if (v23)
      {
        goto LABEL_37;
      }

      ++v21;
      (*v22)(v16, v12);
      if (v20 == v21)
      {
        v55 = 0;
        v19 = v73;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_7:

  v23 = *(v19 + 16);
  if (v23)
  {
    v73 = MEMORY[0x277D84F90];
    sub_2628FBEB0(0, v23, 0);
    v24 = v73;
    v22 = v19 + 64;
    v25 = -1 << *(v19 + 32);
    v16 = sub_26294DF18();
    v26 = 0;
    v27 = *(v19 + 36);
    v61 = v68 + 32;
    v56 = v19 + 72;
    v57 = v23;
    v58 = v27;
    v59 = v19 + 64;
    v60 = v19;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v19 + 32))
    {
      if ((*(v22 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_32;
      }

      if (v27 != *(v19 + 36))
      {
        goto LABEL_33;
      }

      v70 = 1 << v16;
      v71 = v16 >> 6;
      v69 = v26;
      v29 = *(v19 + 48);
      v30 = sub_26294CCE8();
      v31 = *(v30 - 8);
      v32 = v63;
      (*(v31 + 16))(v63, v29 + *(v31 + 72) * v16, v30);
      v33 = *(*(v19 + 56) + 8 * v16);
      v34 = *(v31 + 32);
      v72 = v24;
      v35 = v64;
      v34(v64, v32, v30);
      v36 = v11;
      v37 = v67;
      *(v35 + *(v67 + 48)) = v33;
      v23 = v65;
      v12 = &qword_26294F288;
      sub_2628DF954(v35, v65, &qword_27FF2ED38, &qword_26294F288);
      v38 = *&v23[*(v37 + 48)];

      v39 = v66;
      sub_2628DF954(v35, v66, &qword_27FF2ED38, &qword_26294F288);
      v40 = *(v37 + 48);
      v11 = v36;
      v41 = *(v39 + v40);
      sub_26294CCF8();
      v42 = v35;
      v24 = v72;
      sub_2628DF6F0(v42, &qword_27FF2ED38, &qword_26294F288);
      (*(v31 + 8))(v39, v30);
      v73 = v24;
      v22 = *(v24 + 16);
      v43 = *(v24 + 24);
      if (v22 >= v43 >> 1)
      {
        sub_2628FBEB0(v43 > 1, v22 + 1, 1);
        v24 = v73;
      }

      *(v24 + 16) = v22 + 1;
      (*(v68 + 32))(v24 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v22, v36, v62);
      v19 = v60;
      v28 = 1 << *(v60 + 32);
      if (v16 >= v28)
      {
        goto LABEL_34;
      }

      v22 = v59;
      v44 = *(v59 + 8 * v71);
      if ((v44 & v70) == 0)
      {
        goto LABEL_35;
      }

      LODWORD(v27) = v58;
      if (v58 != *(v60 + 36))
      {
        goto LABEL_36;
      }

      v45 = v44 & (-2 << (v16 & 0x3F));
      if (v45)
      {
        v28 = __clz(__rbit64(v45)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v23 = v57;
      }

      else
      {
        v46 = v71 << 6;
        v47 = v71 + 1;
        v48 = (v56 + 8 * v71);
        v23 = v57;
        while (v47 < (v28 + 63) >> 6)
        {
          v49 = *v48++;
          v12 = v49;
          v46 += 64;
          ++v47;
          if (v49)
          {
            sub_26290571C(v16, v58, 0);
            v28 = __clz(__rbit64(v12)) + v46;
            goto LABEL_10;
          }
        }

        sub_26290571C(v16, v58, 0);
      }

LABEL_10:
      v26 = v69 + 1;
      v16 = v28;
      if ((v69 + 1) == v23)
      {

        goto LABEL_28;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:

    (*v22)(v16, v12);

    __break(1u);
    goto LABEL_38;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_28:
  v73 = v24;

  v23 = v55;
  sub_2628FCFA0(&v73, MEMORY[0x277D49038], sub_262904A84, MEMORY[0x277D49038], MEMORY[0x277D49020]);
  if (!v23)
  {

    v50 = v73;
    swift_getKeyPath();
    swift_getKeyPath();
    v73 = v50;
    v51 = v54;
    return sub_26294D008();
  }

LABEL_38:

  __break(1u);
  return result;
}

uint64_t sub_2628EEBD0()
{
  v1 = v0;
  v2 = 0;
  v139 = sub_26294C7A8();
  v144 = *(v139 - 8);
  v3 = *(v144 + 64);
  MEMORY[0x28223BE20](v139);
  v150 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26294CCB8();
  v6 = *(v5 - 8);
  v169 = v5;
  v170 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_26294CC38();
  v164 = *(v174 - 8);
  v10 = *(v164 + 64);
  MEMORY[0x28223BE20](v174);
  v173 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECC8, &qword_26294F238);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v165 = &v135 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECD0, &qword_26294F240);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v143 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v142 = &v135 - v22;
  v159 = sub_26294C7F8();
  v23 = *(v159 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v159);
  v155 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v146 = &v135 - v28;
  MEMORY[0x28223BE20](v27);
  v175 = (&v135 - v29);
  v30 = sub_26294CA28();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v172 = (&v135 - v37);
  MEMORY[0x28223BE20](v36);
  v168 = &v135 - v38;
  v39 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v40 = *(v1 + v39);
  v41 = *(v40 + 16);
  v151 = v1;
  v163 = v9;
  v167 = v16;
  v152 = v23;
  v158 = v30;
  v156 = v31;
  v157 = v35;
  v166 = v41;
  if (!v41)
  {
    v135 = 0;
    v44 = MEMORY[0x277D84F98];
LABEL_22:
    v70 = *(v44 + 64);
    v141 = v44 + 64;
    v71 = 1 << *(v44 + 32);
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    else
    {
      v72 = -1;
    }

    v73 = v72 & v70;
    v136 = (v71 + 63) >> 6;
    v145 = (v152 + 16);
    v153 = (v152 + 32);
    v160 = v31 + 16;
    v161 = (v31 + 8);
    v162 = v164 + 16;
    v172 = (v164 + 32);
    v168 = (v170 + 32);
    v138 = (v152 + 8);
    v137 = v144 + 32;

    v74 = 0;
    v75 = MEMORY[0x277D84F90];
    v140 = v44;
    while (1)
    {
      v154 = v75;
      if (!v73)
      {
        if (v136 <= v74 + 1)
        {
          v77 = v74 + 1;
        }

        else
        {
          v77 = v136;
        }

        v78 = v77 - 1;
        while (1)
        {
          v76 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
            break;
          }

          if (v76 >= v136)
          {
            v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECD8, &qword_26294F248);
            v124 = v143;
            (*(*(v123 - 8) + 56))(v143, 1, 1, v123);
            v149 = 0;
            v148 = v78;
            v88 = v124;
            goto LABEL_37;
          }

          v73 = *(v141 + 8 * v76);
          ++v74;
          if (v73)
          {
            v148 = v76;
            goto LABEL_36;
          }
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v148 = v74;
      v76 = v74;
LABEL_36:
      v149 = (v73 - 1) & v73;
      v79 = __clz(__rbit64(v73)) | (v76 << 6);
      v80 = v152;
      v81 = v146;
      v82 = v159;
      (*(v152 + 16))(v146, *(v44 + 48) + *(v152 + 72) * v79, v159);
      v83 = *(*(v44 + 56) + 8 * v79);
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECD8, &qword_26294F248);
      v85 = *(v84 + 48);
      v86 = *(v80 + 32);
      v87 = v143;
      v86(v143, v81, v82);
      *&v87[v85] = v83;
      v88 = v87;
      (*(*(v84 - 8) + 56))(v87, 0, 1, v84);

      v1 = v151;
      v30 = v158;
LABEL_37:
      v89 = v88;
      v90 = v142;
      sub_262906F00(v89, v142, &qword_27FF2ECD0, &qword_26294F240);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECD8, &qword_26294F248);
      if ((*(*(v91 - 8) + 48))(v90, 1, v91) == 1)
      {
        break;
      }

      v92 = *(v90 + *(v91 + 48));
      (*v153)(v155, v90, v159);
      v177 = MEMORY[0x277D84F98];
      v93 = *(v92 + 16);
      if (v93)
      {
        v94 = 0;
        v95 = v156;
        while (1)
        {
          if (v94 >= *(v92 + 16))
          {
            __break(1u);
            goto LABEL_81;
          }

          (*(v95 + 16))(v35, v92 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v94, v30);
          sub_2628F0630(&v177, v35, v1);
          if (v2)
          {
            break;
          }

          ++v94;
          (*v161)(v35, v30);
          if (v93 == v94)
          {
            v147 = 0;
            v96 = v177;
            goto LABEL_45;
          }
        }

        (*v161)(v35, v30);

        __break(1u);
        goto LABEL_87;
      }

      v147 = v2;
      v96 = MEMORY[0x277D84F98];
LABEL_45:

      v97 = 0;
      v166 = v96;
      v100 = *(v96 + 64);
      v99 = v96 + 64;
      v98 = v100;
      v101 = 1 << *(v99 - 32);
      if (v101 < 64)
      {
        v102 = ~(-1 << v101);
      }

      else
      {
        v102 = -1;
      }

      v103 = v102 & v98;
      v104 = (v101 + 63) >> 6;
      v2 = MEMORY[0x277D84F90];
      v105 = v165;
      v171 = v99;
      v175 = MEMORY[0x277D84F90];
      if ((v102 & v98) == 0)
      {
LABEL_50:
        if (v104 <= v97 + 1)
        {
          v107 = v97 + 1;
        }

        else
        {
          v107 = v104;
        }

        v1 = v107 - 1;
        while (1)
        {
          v106 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            break;
          }

          if (v106 >= v104)
          {
            v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECE0, &qword_26294F250);
            (*(*(v119 - 8) + 56))(v16, 1, 1, v119);
            v103 = 0;
            v97 = v1;
            goto LABEL_59;
          }

          v103 = *(v99 + 8 * v106);
          ++v97;
          if (v103)
          {
            v97 = v106;
            goto LABEL_58;
          }
        }

        __break(1u);
        break;
      }

      while (1)
      {
        v106 = v97;
LABEL_58:
        v108 = __clz(__rbit64(v103));
        v103 &= v103 - 1;
        v109 = v108 | (v106 << 6);
        v110 = v166;
        v111 = v164;
        (*(v164 + 16))(v173, *(v166 + 48) + *(v164 + 72) * v109, v174);
        v112 = *(*(v110 + 56) + 8 * v109);
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECE0, &qword_26294F250);
        v114 = *(v113 + 48);
        v16 = v167;
        (*(v111 + 32))(v167);
        *&v16[v114] = v112;
        (*(*(v113 - 8) + 56))(v16, 0, 1, v113);

        v9 = v163;
        v105 = v165;
LABEL_59:
        sub_262906F00(v16, v105, &qword_27FF2ECC8, &qword_26294F238);
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECE0, &qword_26294F250);
        if ((*(*(v115 - 8) + 48))(v105, 1, v115) == 1)
        {
          break;
        }

        v116 = *(v105 + *(v115 + 48));
        (*v172)(v173, v105, v174);
        sub_26294CC48();
        v2 = v175;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_26291D6D8(0, v2[2] + 1, 1, v2);
        }

        v118 = v2[2];
        v117 = v2[3];
        if (v118 >= v117 >> 1)
        {
          v2 = sub_26291D6D8(v117 > 1, v118 + 1, 1, v2);
        }

        v2[2] = v118 + 1;
        (*(v170 + 32))(v2 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v118, v9, v169);
        v99 = v171;
        v175 = v2;
        if (!v103)
        {
          goto LABEL_50;
        }
      }

      (*v145)(v146, v155, v159);
      sub_26294C748();
      v75 = v154;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v157;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = sub_26291D6B0(0, v75[2] + 1, 1, v75);
      }

      v1 = v151;
      v2 = v147;
      v30 = v158;
      v73 = v149;
      v122 = v75[2];
      v121 = v75[3];
      if (v122 >= v121 >> 1)
      {
        v75 = sub_26291D6B0(v121 > 1, v122 + 1, 1, v75);
      }

      (*v138)(v155, v159);
      v75[2] = v122 + 1;
      (*(v144 + 32))(v75 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v122, v150, v139);
      v44 = v140;
      v74 = v148;
    }

    if (qword_27FF2E7C0 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_75;
  }

  v154 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v162 = v40 + v154;
  v161 = (v31 + 16);
  v171 = v31 + 32;
  v149 = v23 + 16;
  v153 = (v23 + 8);

  v1 = 0;
  v43 = 0;
  v44 = MEMORY[0x277D84F98];
  v160 = v42;
  while (v43 < *(v42 + 16))
  {
    v45 = v30;
    v46 = *(v31 + 72);
    v47 = v168;
    (*(v31 + 16))(v168, v162 + v46 * v43, v45);
    v48 = v175;
    v49 = v44;
    sub_26294CA18();
    v50 = *(v31 + 32);
    v50(v172, v47, v45);
    sub_262905484(v1);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v177 = v44;
    v53 = sub_26290216C(v48);
    v54 = *(v44 + 16);
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_83;
    }

    v1 = v52;
    if (*(v44 + 24) >= v56)
    {
      if (v51)
      {
        if (v52)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_262904044(MEMORY[0x277D48E80], &qword_27FF2ECE8, &qword_26294F258);
        v49 = v177;
        if (v1)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_262902608(v56, v51);
      v49 = v177;
      v57 = sub_26290216C(v175);
      if ((v1 & 1) != (v58 & 1))
      {
LABEL_87:
        sub_26294E078();
        __break(1u);
        goto LABEL_88;
      }

      v53 = v57;
      if (v1)
      {
        goto LABEL_13;
      }
    }

    v49[(v53 >> 6) + 8] |= 1 << v53;
    (*(v152 + 16))(v49[6] + *(v152 + 72) * v53, v175, v159);
    *(v49[7] + 8 * v53) = MEMORY[0x277D84F90];
    v59 = v49[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_84;
    }

    v49[2] = v61;
LABEL_13:
    v62 = v49;
    v63 = v49[7];
    v64 = *(v63 + 8 * v53);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *(v63 + 8 * v53) = v64;
    if ((v65 & 1) == 0)
    {
      v64 = sub_26291D660(0, v64[2] + 1, 1, v64);
      *(v63 + 8 * v53) = v64;
    }

    v67 = v64[2];
    v66 = v64[3];
    if (v67 >= v66 >> 1)
    {
      *(v63 + 8 * v53) = sub_26291D660(v66 > 1, v67 + 1, 1, v64);
    }

    ++v43;
    (*v153)(v175, v159);
    v68 = *(v63 + 8 * v53);
    *(v68 + 16) = v67 + 1;
    v69 = v68 + v154 + v67 * v46;
    v30 = v158;
    v50(v69, v172, v158);
    v1 = sub_2629070CC;
    v16 = v167;
    v44 = v62;
    v31 = v156;
    v35 = v157;
    v42 = v160;
    if (v166 == v43)
    {

      v135 = sub_2629070CC;
      v1 = v151;
      v9 = v163;
      goto LABEL_22;
    }
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  swift_once();
LABEL_75:
  v125 = sub_26294CE48();
  __swift_project_value_buffer(v125, qword_27FF314B0);
  v126 = v1;
  v127 = sub_26294CE28();
  v128 = sub_26294DE98();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v177 = v130;
    *v129 = 136315394;
    *(v129 + 4) = sub_2628FB76C(0xD000000000000018, 0x800000026295E5A0, &v177);
    *(v129 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v131 = *(v176 + 16);

    *(v129 + 14) = v131;

    _os_log_impl(&dword_2628DB000, v127, v128, "%s ViennaApps %ld", v129, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v130);
    MEMORY[0x26672DCE0](v130, -1, -1);
    MEMORY[0x26672DCE0](v129, -1, -1);
  }

  else
  {
  }

  v177 = v154;

  sub_2628FCFA0(&v177, MEMORY[0x277D48E58], sub_262904AD0, MEMORY[0x277D48E58], MEMORY[0x277D48E40]);
  if (v2)
  {
LABEL_88:

    __break(1u);
  }

  else
  {

    v132 = v177;
    swift_getKeyPath();
    swift_getKeyPath();
    v177 = v132;
    v133 = v126;
    sub_26294D008();
    return sub_262905484(v135);
  }

  return result;
}

uint64_t sub_2628EFF1C(uint64_t *a1, uint64_t a2)
{
  v82 = a1;
  v3 = sub_26294CCE8();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v70 - v8;
  v9 = sub_26294DC58();
  v80 = *(v9 - 8);
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9);
  v81 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26294CBA8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v86 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v70 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v70 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v70 - v23;
  v87 = a2;
  v25 = *(sub_26294CAB8() + 16);

  if (!v25)
  {
    return result;
  }

  v75 = v9;
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v76 = v7;
  v27 = sub_26294CE48();
  __swift_project_value_buffer(v27, qword_27FF314B0);
  v28 = v13[2];
  v29 = v87;
  v28(v24, v87, v12);
  v78 = v22;
  v28(v22, v29, v12);
  v30 = v19;
  v79 = v28;
  v28(v19, v29, v12);
  v31 = sub_26294CE28();
  v32 = sub_26294DEC8();
  v33 = os_log_type_enabled(v31, v32);
  v77 = v13;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v71 = v30;
    v35 = v34;
    v74 = swift_slowAlloc();
    v88 = v74;
    *v35 = 136315650;
    v73 = v31;
    v36 = v81;
    v72 = v32;
    sub_26294CA68();
    v37 = sub_26294CA78();
    v39 = v38;
    (*(v80 + 8))(v36, v75);
    v40 = v13[1];
    v40(v24, v12);
    v41 = sub_2628FB76C(v37, v39, &v88);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2048;
    v42 = v78;
    sub_26294CA88();
    v44 = v43;
    v40(v42, v12);
    *(v35 + 14) = v44;
    *(v35 + 22) = 2048;
    v45 = v71;
    v46 = *(sub_26294CAB8() + 16);

    v40(v45, v12);
    *(v35 + 24) = v46;
    v47 = v73;
    _os_log_impl(&dword_2628DB000, v73, v72, "Wallet group %s, usage %f, count %ld", v35, 0x20u);
    v48 = v74;
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x26672DCE0](v48, -1, -1);
    MEMORY[0x26672DCE0](v35, -1, -1);
  }

  else
  {
    v49 = v13[1];
    v49(v30, v12);

    v49(v78, v12);
    v49(v24, v12);
  }

  v50 = v87;
  sub_26294CA68();
  v51 = v83;
  sub_26294CCC8();
  v52 = v12;
  v79(v86, v50, v12);
  v53 = v82;
  v54 = *v82;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v53;
  v56 = v88;
  v58 = sub_2629023E8(v51);
  v59 = v56[2];
  v60 = (v57 & 1) == 0;
  v61 = v59 + v60;
  if (__OFADD__(v59, v60))
  {
    __break(1u);
  }

  else
  {
    v62 = v57;
    if (v56[3] >= v61)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_262904044(MEMORY[0x277D49008], &qword_27FF2ED48, &qword_26294F298);
        v56 = v88;
      }
    }

    else
    {
      sub_262903578(v61, isUniquelyReferenced_nonNull_native);
      v56 = v88;
      v63 = sub_2629023E8(v51);
      if ((v62 & 1) != (v64 & 1))
      {
        result = sub_26294E078();
        __break(1u);
        return result;
      }

      v58 = v63;
    }

    v65 = v76;
    *v53 = v56;
    if ((v62 & 1) == 0)
    {
      (*(v84 + 16))(v65, v51, v85);
      sub_262903D30(v58, v65, MEMORY[0x277D84F90], v56, MEMORY[0x277D49008]);
    }

    isUniquelyReferenced_nonNull_native = v56[7];
    v56 = *(isUniquelyReferenced_nonNull_native + 8 * v58);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v58) = v56;
    if (v66)
    {
      goto LABEL_16;
    }
  }

  v56 = sub_26291D908(0, v56[2] + 1, 1, v56);
  *(isUniquelyReferenced_nonNull_native + 8 * v58) = v56;
LABEL_16:
  v68 = v56[2];
  v67 = v56[3];
  if (v68 >= v67 >> 1)
  {
    *(isUniquelyReferenced_nonNull_native + 8 * v58) = sub_26291D908(v67 > 1, v68 + 1, 1, v56);
  }

  (*(v84 + 8))(v51, v85);
  v69 = *(isUniquelyReferenced_nonNull_native + 8 * v58);
  *(v69 + 16) = v68 + 1;
  return (v77[4])(v69 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + v77[9] * v68, v86, v52);
}

void sub_2628F0630(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v78 = a1;
  v5 = sub_26294CA28();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v79 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v71 - v9;
  v10 = sub_26294CC38();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v71 - v14;
  v15 = sub_26294C538();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECF8, &qword_26294F260);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v71 - v22;
  v24 = sub_26294DCF8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 8);
  v27 = MEMORY[0x28223BE20](v24);
  v75 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v71 - v30;
  MEMORY[0x26672BF20](v29);
  v32 = *(a3 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_credentialConfigs);
  v85 = v19;

  v33 = v82;
  sub_2629180F8(sub_2629056A0, v32, v23);
  v82 = v33;
  v34 = v24;

  v35 = *(v16 + 8);
  v73 = v19;
  v74 = v15;
  v35(v19, v15);
  if ((*(v25 + 6))(v23, 1, v34) == 1)
  {
    v36 = v83;
    v37 = v84;
    sub_2628DF6F0(v23, &qword_27FF2ECF8, &qword_26294F260);
    if (qword_27FF2E7C0 != -1)
    {
      swift_once();
    }

    v38 = sub_26294CE48();
    __swift_project_value_buffer(v38, qword_27FF314B0);
    v39 = v36;
    v40 = v79;
    (*(v36 + 16))(v79, a2, v37);
    v41 = sub_26294CE28();
    v42 = sub_26294DEA8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v86 = v44;
      *v43 = 136315138;
      v45 = v73;
      LODWORD(v81) = v42;
      MEMORY[0x26672BF20]();
      v80 = sub_26294C508();
      v46 = v40;
      v48 = v47;
      v35(v45, v74);
      (*(v39 + 8))(v46, v84);
      v49 = sub_2628FB76C(v80, v48, &v86);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_2628DB000, v41, v81, "Config not found for group with identifier %s, dropping.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x26672DCE0](v44, -1, -1);
      MEMORY[0x26672DCE0](v43, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v40, v37);
    }

    return;
  }

  (*(v25 + 4))(v31, v23, v34);
  v73 = v25;
  v74 = v31;
  v50 = *(v25 + 2);
  v79 = v34;
  v50(v75, v31, v34);
  v51 = v76;
  sub_26294CC28();
  v52 = v83;
  v53 = v77;
  (*(v83 + 16))(v77, a2, v84);
  v54 = v78;
  v55 = *v78;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v54;
  v57 = v86;
  v59 = sub_2629024BC(v51);
  v60 = v57[2];
  v61 = (v58 & 1) == 0;
  v62 = v60 + v61;
  if (__OFADD__(v60, v61))
  {
    __break(1u);
    goto LABEL_20;
  }

  v63 = v58;
  if (v57[3] >= v62)
  {
    v31 = v73;
    if (isUniquelyReferenced_nonNull_native)
    {
      *v54 = v57;
      if (v58)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_262904044(MEMORY[0x277D48FA8], &qword_27FF2ED00, &qword_26294F268);
      v57 = v86;
      *v54 = v86;
      if (v63)
      {
        goto LABEL_15;
      }
    }

LABEL_14:
    v66 = v72;
    (*(v80 + 16))(v72, v51, v81);
    sub_262903D30(v59, v66, MEMORY[0x277D84F90], v57, MEMORY[0x277D48FA8]);
    goto LABEL_15;
  }

  sub_262903954(v62, isUniquelyReferenced_nonNull_native);
  v57 = v86;
  v64 = sub_2629024BC(v51);
  v31 = v73;
  if ((v63 & 1) != (v65 & 1))
  {
    sub_26294E078();
    __break(1u);
    return;
  }

  v59 = v64;
  *v54 = v57;
  if ((v63 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  isUniquelyReferenced_nonNull_native = v57[7];
  v57 = *(isUniquelyReferenced_nonNull_native + 8 * v59);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  *(isUniquelyReferenced_nonNull_native + 8 * v59) = v57;
  if ((v67 & 1) == 0)
  {
LABEL_20:
    v57 = sub_26291D660(0, v57[2] + 1, 1, v57);
    *(isUniquelyReferenced_nonNull_native + 8 * v59) = v57;
  }

  v69 = v57[2];
  v68 = v57[3];
  if (v69 >= v68 >> 1)
  {
    *(isUniquelyReferenced_nonNull_native + 8 * v59) = sub_26291D660(v68 > 1, v69 + 1, 1, v57);
  }

  (*(v80 + 8))(v51, v81);
  (*(v31 + 1))(v74, v79);
  v70 = *(isUniquelyReferenced_nonNull_native + 8 * v59);
  *(v70 + 16) = v69 + 1;
  (*(v52 + 32))(v70 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v69, v53, v84);
}

uint64_t sub_2628F0E04(void *a1, void *a2)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v50 = &v42 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = sub_26294C4F8();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v52 = &v42 - v20;
  v22 = a1[3];
  v21 = a1[4];
  v46 = a1;
  v48 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v49 = v21;
  sub_26294C608();
  v23 = v15[6];
  if (v23(v13, 1, v14) == 1)
  {
    v11 = v13;
  }

  else
  {
    v44 = v19;
    v43 = v15[4];
    v43(v52, v13, v14);
    v24 = v51[3];
    v45 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v24);
    sub_26294C608();
    if (v23(v11, 1, v14) != 1)
    {
      v38 = v44;
      v43(v44, v11, v14);
      v39 = v52;
      v31 = sub_26294C4D8();
      v40 = v15[1];
      v40(v38, v14);
      v40(v39, v14);
      return v31 & 1;
    }

    (v15[1])(v52, v14);
  }

  sub_2628DF6F0(v11, &qword_27FF2E978, &qword_26294EC40);
  v25 = v50;
  sub_26294C608();
  v26 = v23;
  v27 = v23(v25, 1, v14);
  sub_2628DF6F0(v25, &qword_27FF2E978, &qword_26294EC40);
  if (v27 == 1)
  {
    v28 = v51;
    v29 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    v30 = v47;
    sub_26294C608();
    v31 = 1;
    v32 = v26(v30, 1, v14);
    sub_2628DF6F0(v30, &qword_27FF2E978, &qword_26294EC40);
    if (v32 == 1)
    {
      v33 = v46[4];
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      sub_26294C618();
      v35 = v34;
      v36 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      sub_26294C618();
      v31 = v37 < v35;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_2628F122C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v90 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v80 - v10;
  v12 = sub_26294CB98();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v85 = &v80 - v18;
  v19 = sub_26294CBA8();
  v86 = *(v19 - 8);
  v87 = v19;
  v20 = *(v86 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v88 = v23;
  v89 = v4;
  v24 = *(v4 + v23);

  v25 = sub_262918640(a1, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    v29 = *(v89 + v88);
    if (v25 >= *(v29 + 16))
    {
      goto LABEL_50;
    }

    v30 = *(v86 + 16);
    v82 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v83 = *(v86 + 72) * v25;
    v30(v22, v29 + v82 + v83, v87);
    sub_2628DF954(a2, v11, &qword_27FF2ED68, &qword_26294F2F0);
    v31 = (*(v13 + 48))(v11, 1, v12);
    v84 = v25;
    if (v31 != 1)
    {
      v27 = v85;
      (*(v13 + 32))(v85, v11, v12);
      if (qword_27FF2E7C0 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_53;
    }

    sub_2628DF6F0(v11, &qword_27FF2ED68, &qword_26294F2F0);
    if (!a3)
    {
      v11 = v22;
      if (qword_27FF2E7C0 == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_57;
    }

    v11 = v22;
    if (qword_27FF2E7C0 != -1)
    {
      swift_once();
    }

    v32 = sub_26294CE48();
    __swift_project_value_buffer(v32, qword_27FF314B0);

    v33 = sub_26294CE28();
    v27 = sub_26294DE98();

    if (os_log_type_enabled(v33, v27))
    {
      v34 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v91[0] = v17;
      *v34 = 136315394;
      *(v34 + 4) = sub_2628FB76C(0xD00000000000003CLL, 0x800000026295E5C0, v91);
      *(v34 + 12) = 2080;
      v35 = sub_26294DE48();
      v12 = sub_2628FB76C(v35, v36, v91);

      *(v34 + 14) = v12;
      _os_log_impl(&dword_2628DB000, v33, v27, "%s -- indices %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26672DCE0](v17, -1, -1);
      MEMORY[0x26672DCE0](v34, -1, -1);
    }

    v37 = *(sub_26294CAB8() + 16);

    if (v37)
    {
      v38 = 0;
      v12 = a3 + 56;
      v22 = -1;
      while (1)
      {
        if (*(a3 + 16))
        {
          v39 = *(a3 + 40);
          v40 = sub_26294E088();
          v41 = -1 << *(a3 + 32);
          v42 = v40 & ~v41;
          if ((*(v12 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
          {
            v43 = ~v41;
            while (*(*(a3 + 48) + 8 * v42) != v38)
            {
              v42 = (v42 + 1) & v43;
              if (((*(v12 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            v27 = sub_26294CAA8();
            v17 = v44;
            v25 = *v44;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v17 = v25;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v25 = sub_26291DD00(v25);
              *v17 = v25;
            }

            if (v38 >= *(v25 + 16))
            {
              goto LABEL_48;
            }

            v46 = v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v38;
            sub_26294CB88();
            (v27)(v91, 0);
          }
        }

LABEL_12:
        if (++v38 == v37)
        {
          goto LABEL_33;
        }
      }
    }

    while (1)
    {
LABEL_33:
      v66 = v88;
      v65 = v89;
      swift_beginAccess();
      v25 = *(v65 + v66);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      *(v65 + v66) = v25;
      if ((v67 & 1) == 0)
      {
        goto LABEL_51;
      }

      while (1)
      {
        if (v84 < *(v25 + 16))
        {
          v69 = v86;
          v68 = v87;
          (*(v86 + 24))(v25 + v82 + v83, v11, v87);
          *(v89 + v88) = v25;
          swift_endAccess();
          return (*(v69 + 8))(v11, v68);
        }

        __break(1u);
LABEL_53:
        swift_once();
LABEL_24:
        v47 = sub_26294CE48();
        __swift_project_value_buffer(v47, qword_27FF314B0);
        (*(v13 + 16))(v17, v27, v12);
        v48 = sub_26294CE28();
        v49 = sub_26294DE98();
        v11 = v22;
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v91[0] = v81;
          *v50 = 136315394;
          *(v50 + 4) = sub_2628FB76C(0xD00000000000003CLL, 0x800000026295E5C0, v91);
          *(v50 + 12) = 2080;
          v51 = sub_26294CB18();
          v53 = v52;
          v22 = *(v13 + 8);
          (v22)(v17, v12);
          v54 = sub_2628FB76C(v51, v53, v91);

          *(v50 + 14) = v54;
          _os_log_impl(&dword_2628DB000, v48, v49, "%s -- pass %s", v50, 0x16u);
          v55 = v81;
          swift_arrayDestroy();
          MEMORY[0x26672DCE0](v55, -1, -1);
          v56 = v50;
          v27 = v85;
          MEMORY[0x26672DCE0](v56, -1, -1);
        }

        else
        {

          v22 = *(v13 + 8);
          (v22)(v17, v12);
        }

        v57 = sub_26294CAB8();
        v58 = sub_262918688(v27, v57);
        v60 = v59;

        if (v60)
        {
          break;
        }

        v27 = sub_26294CAA8();
        v17 = v61;
        v62 = *v61;
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *v17 = v62;
        if (v63)
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v62 = sub_26291DD00(v62);
          *v17 = v62;
          if ((v58 & 0x8000000000000000) != 0)
          {
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

        if (v58 < v62[2])
        {
          v64 = v62 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v58;
          sub_26294CB88();
          (v27)(v91, 0);
          v27 = v85;
          break;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        swift_once();
LABEL_38:
        v70 = sub_26294CE48();
        __swift_project_value_buffer(v70, qword_27FF314B0);
        v71 = sub_26294CE28();
        v72 = sub_26294DE98();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v91[0] = v27;
          *v73 = 136315138;
          *(v73 + 4) = sub_2628FB76C(0xD00000000000003CLL, 0x800000026295E5C0, v91);
          _os_log_impl(&dword_2628DB000, v71, v72, "%s -- selected", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          MEMORY[0x26672DCE0](v27, -1, -1);
          MEMORY[0x26672DCE0](v73, -1, -1);
        }

        v74 = *(sub_26294CAB8() + 16);

        if (!v74)
        {
          goto LABEL_33;
        }

        v75 = 0;
        v17 = v91;
        while (1)
        {
          v76 = sub_26294CAA8();
          v27 = v77;
          v25 = *v77;
          v78 = swift_isUniquelyReferenced_nonNull_native();
          *v27 = v25;
          if ((v78 & 1) == 0)
          {
            v25 = sub_26291DD00(v25);
            *v27 = v25;
          }

          if (v75 >= *(v25 + 16))
          {
            break;
          }

          v79 = v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v75;
          sub_26294CB88();
          v76(v91, 0);
          v27 = ++v75;
          if (v74 == v75)
          {
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
LABEL_51:
        v25 = sub_26291DCB4(v25);
        *(v89 + v88) = v25;
      }

      (v22)(v27, v12);
    }
  }

  return result;
}

uint64_t sub_2628F1CA4(uint64_t a1, int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_26294CBA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v23 & 1) == 0)
  {
    v14 = *(a1 + 16);
    v22 = a2;
    if (v14)
    {
      v17 = *(v9 + 16);
      v16 = v9 + 16;
      v15 = v17;
      v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v19 = *(v16 + 56);
      do
      {
        v15(v12, v18, v8);
        v20 = sub_26294CB98();
        (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
        sub_2628F122C(v12, v7, 0, v22 & 1);
        sub_2628DF6F0(v7, &qword_27FF2ED68, &qword_26294F2F0);
        (*(v16 - 8))(v12, v8);
        v18 += v19;
        --v14;
      }

      while (v14);
    }

    return sub_2628EC330();
  }

  return result;
}

uint64_t sub_2628F1ED8(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26294CB98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v59 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v49 = sub_26294CBA8();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v17 = *&a1[v16];
  v53 = *(v17 + 16);
  if (v53)
  {
    v42 = a1;
    v43 = a2;
    v44 = a3;
    v52 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = v7 + 16;
    v19 = (v7 + 8);
    v47 = v7;
    v56 = (v7 + 32);
    v50 = (v13 + 8);
    v51 = v13 + 16;

    v21 = MEMORY[0x277D84F90];
    v23 = v48;
    v22 = v49;
    v24 = v13;
    v25 = 0;
    v26 = result;
    v57 = v18;
    v45 = result;
    v46 = v24;
    while (v25 < *(v26 + 16))
    {
      v27 = *(v24 + 72);
      v55 = v25;
      (*(v24 + 16))(v23, v52 + v27 * v25, v22);
      v28 = sub_26294CAB8();
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v54 = v28;
        v58 = v30;
        v31 = v28 + v30;
        v32 = *(v47 + 72);
        v33 = *(v47 + 16);
        v33(v12, v28 + v30, v6);
        while (1)
        {
          if (sub_26294CB78())
          {
            v33(v59, v12, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_26291D74C(0, *(v21 + 2) + 1, 1, v21);
            }

            v35 = *(v21 + 2);
            v34 = *(v21 + 3);
            if (v35 >= v34 >> 1)
            {
              v21 = sub_26291D74C(v34 > 1, v35 + 1, 1, v21);
            }

            (*v19)(v12, v6);
            *(v21 + 2) = v35 + 1;
            (*v56)(&v21[v58 + v35 * v32], v59, v6);
          }

          else
          {
            (*v19)(v12, v6);
          }

          v31 += v32;
          if (!--v29)
          {
            break;
          }

          v33(v12, v31, v6);
        }

        v23 = v48;
        v22 = v49;
        v26 = v45;
        v24 = v46;
      }

      else
      {
      }

      v25 = v55 + 1;
      result = (*v50)(v23, v22);
      if (v25 == v53)
      {

        a3 = v44;
        a2 = v43;
        a1 = v42;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
LABEL_20:
    v36 = *(v21 + 2);

    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v36;
    v61 = 0;
    v37 = a1;
    sub_26294D008();
    v38 = &v37[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
    v39 = *&v37[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
    v40 = *&v37[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion + 8];
    *v38 = a2;
    v38[1] = a3;
    sub_262906C04(a2);
    sub_262905484(v39);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v60) = 1;
    v41 = v37;
    return sub_26294D008();
  }

  return result;
}

size_t sub_2628F2378()
{
  v1 = v0;
  v2 = sub_26294CBA8();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v34 & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
    swift_beginAccess();
    v30 = *(*&v0[v7] + 16);
    if (v30)
    {
      v8 = 0;
      v29[0] = v33 + 8;
      v29[1] = v33 + 16;
      while (1)
      {
        result = swift_beginAccess();
        v9 = *&v1[v7];
        if (v8 >= *(v9 + 16))
        {
          break;
        }

        v10 = v32;
        v11 = v33;
        v12 = v31;
        (*(v33 + 16))(v31, v9 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v8, v32);
        v13 = sub_26294CAB8();
        (*(v11 + 8))(v12, v10);
        swift_endAccess();
        v14 = *(v13 + 16);

        if (v14)
        {
          swift_beginAccess();
          v15 = 0;
          while (1)
          {
            v16 = *&v1[v7];
            result = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v7] = v16;
            if ((result & 1) == 0)
            {
              result = sub_26291DCB4(v16);
              v16 = result;
              *&v1[v7] = result;
            }

            if (v8 >= v16[2])
            {
              break;
            }

            v17 = sub_26294CAA8();
            v19 = v18;
            v20 = *v18;
            result = swift_isUniquelyReferenced_nonNull_native();
            *v19 = v20;
            if ((result & 1) == 0)
            {
              result = sub_26291DD00(v20);
              v20 = result;
              *v19 = result;
            }

            if (v15 >= v20[2])
            {
              goto LABEL_22;
            }

            v21 = *(sub_26294CB98() - 8);
            v22 = v20 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15;
            sub_26294CB88();
            v17(&v34, 0);
            if (v14 == ++v15)
            {
              swift_endAccess();
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
          break;
        }

LABEL_4:
        if (++v8 == v30)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      swift_getKeyPath();
      swift_getKeyPath();
      v34 = 0;
      v35 = 1;
      v23 = v1;
      sub_26294D008();
      v24 = &v23[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
      v25 = *&v23[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
      if (v25)
      {
        v26 = v24[1];

        v25(0);
        sub_262905484(v25);
        v27 = *v24;
      }

      else
      {
        v27 = 0;
      }

      v28 = v24[1];
      *v24 = 0;
      v24[1] = 0;
      sub_262905484(v27);
      return sub_2628E6C54();
    }
  }

  return result;
}

uint64_t sub_2628F2758()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v106 = &v105 - v3;
  v4 = sub_26294CB98();
  v119 = *(v4 - 8);
  v5 = *(v119 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v133 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v139 = &v105 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v138 = &v105 - v11;
  MEMORY[0x28223BE20](v10);
  v136 = &v105 - v12;
  v13 = sub_26294CBA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v109 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v105 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEB8, &qword_26294F518);
  v20 = *(v123 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v123);
  v110 = (&v105 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEC0, &qword_26294F520);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v128 = &v105 - v28;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v147)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v147 = 1;
  v30 = v0;
  sub_26294D008();
  if (qword_27FF2E7C0 != -1)
  {
LABEL_53:
    swift_once();
  }

  v31 = sub_26294CE48();
  v32 = __swift_project_value_buffer(v31, qword_27FF314B0);
  v33 = v30;
  v118 = v32;
  v34 = sub_26294CE28();
  v35 = sub_26294DE98();
  v36 = os_log_type_enabled(v34, v35);
  v112 = v19;
  v130 = v33;
  if (v36)
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v19 = v112;

    *(v37 + 4) = v147;

    _os_log_impl(&dword_2628DB000, v34, v35, "Controller loading %{BOOL}d", v37, 8u);
    v38 = v37;
    v33 = v130;
    MEMORY[0x26672DCE0](v38, -1, -1);
  }

  else
  {

    v34 = v33;
  }

  v39 = v136;

  v40 = swift_allocObject();
  v41 = MEMORY[0x277D84F90];
  v140 = v40;
  *(v40 + 16) = MEMORY[0x277D84F90];
  v42 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v132 = v42;
  v43 = *(&v33->isa + v42);
  v120 = v14 + 16;
  v122 = (v20 + 7);
  v121 = (v20 + 6);
  v117 = (v14 + 32);
  v135 = (v119 + 16);
  v137 = (v119 + 32);
  v142 = (v119 + 8);
  v108 = "ONFIG_TITLE";
  v126 = v14 + 8;
  v127 = v43;

  v44 = 0;
  *&v45 = 136315650;
  v107 = v45;
  v111 = v14;
  v124 = v27;
  v125 = v13;
  while (1)
  {
    v46 = *(v127 + 16);
    v30 = v123;
    v20 = v128;
    if (v44 == v46)
    {
      v129 = v44;
      v47 = 1;
    }

    else
    {
      if (v44 >= v46)
      {
        goto LABEL_50;
      }

      v48 = v44 + 1;
      v49 = v127 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v44;
      v50 = *(v123 + 48);
      v51 = v110;
      *v110 = v44;
      (*(v14 + 16))(&v51[v50], v49, v13);
      v52 = v51;
      v33 = v130;
      sub_262906F00(v52, v27, &qword_27FF2EEB8, &qword_26294F518);
      v47 = 0;
      v129 = v48;
      v20 = v128;
    }

    (*v122)(v27, v47, 1, v30);
    sub_262906F00(v27, v20, &qword_27FF2EEC0, &qword_26294F520);
    if ((*v121)(v20, 1, v30) == 1)
    {
      goto LABEL_47;
    }

    v131 = *v20;
    (*v117)(v19, v20 + SLODWORD(v30[6].isa), v13);
    v146 = v41;
    v53 = sub_26294CAB8();
    v54 = *(v53 + 16);
    if (v54)
    {
      v55 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v134 = v53;
      v141 = v55;
      v56 = v53 + v55;
      v57 = *(v119 + 72);
      v58 = *(v119 + 16);
      v143 = v41;
      v20 = v135;
      v58(v39, v53 + v55, v4);
      while (1)
      {
        if (sub_26294CB78())
        {
          v58(v138, v39, v4);
          v60 = *(v140 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_26291D74C(0, v60[2] + 1, 1, v60);
            *(v140 + 16) = v60;
          }

          v62 = v60[2];
          v61 = v60[3];
          if (v62 >= v61 >> 1)
          {
            v69 = sub_26291D74C(v61 > 1, v62 + 1, 1, v60);
            *(v140 + 16) = v69;
          }

          v39 = v136;
          (*v142)(v136, v4);
          v64 = v140;
          v63 = v141;
          v65 = *(v140 + 16);
          *(v65 + 16) = v62 + 1;
          (*v137)(v65 + v63 + v62 * v57, v138, v4);
          *(v64 + 16) = v65;
          v41 = MEMORY[0x277D84F90];
          v20 = v135;
        }

        else
        {
          v58(v139, v39, v4);
          swift_beginAccess();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v66 = v143;
          }

          else
          {
            v66 = sub_26291D74C(0, v143[2] + 1, 1, v143);
          }

          v68 = v66[2];
          v67 = v66[3];
          if (v68 >= v67 >> 1)
          {
            v66 = sub_26291D74C(v67 > 1, v68 + 1, 1, v66);
          }

          v66[2] = v68 + 1;
          v59 = v66;
          (*v137)(v66 + v141 + v68 * v57, v139, v4);
          v143 = v59;
          v146 = v59;
          swift_endAccess();
          (*v142)(v39, v4);
        }

        v56 += v57;
        if (!--v54)
        {
          break;
        }

        v58(v39, v56, v4);
      }

      v14 = v111;
      v19 = v112;
      v27 = v124;
    }

    else
    {

      v143 = v41;
      v20 = v135;
    }

    v33 = v130;
    v70 = v130;
    v30 = sub_26294CE28();
    v71 = sub_26294DE98();

    if (os_log_type_enabled(v30, v71))
    {
      v116 = v71;
      v27 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v145 = v72;
      *v27 = v107;
      *(v27 + 4) = sub_2628FB76C(0xD000000000000016, v108 | 0x8000000000000000, &v145);
      *(v27 + 6) = 2080;
      v13 = v125;
      if ((v131 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v73 = *(v132 + v33);
      if (v131 >= *(v73 + 16))
      {
        goto LABEL_52;
      }

      v113 = v72;
      v115 = v30;
      v74 = v109;
      (*(v14 + 16))(v109, v73 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v131, v125);
      v75 = sub_26294CA78();
      v77 = v76;
      (*(v14 + 8))(v74, v13);
      v78 = sub_2628FB76C(v75, v77, &v145);

      *(v27 + 14) = v78;
      v114 = v27;
      *(v27 + 11) = 2080;
      v79 = v143[2];
      if (v79)
      {
        v144 = v41;
        v80 = v143;

        sub_2628FC960(0, v79, 0);
        v41 = v144;
        v81 = v80 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
        v141 = *(v119 + 72);
        v134 = *(v119 + 16);
        do
        {
          v82 = v133;
          v134(v133, v81, v4);
          v83 = sub_26294CB18();
          v85 = v84;
          v86 = v4;
          (*v142)(v82, v4);
          v144 = v41;
          v88 = v41[2];
          v87 = v41[3];
          if (v88 >= v87 >> 1)
          {
            sub_2628FC960((v87 > 1), v88 + 1, 1);
            v41 = v144;
          }

          v41[2] = v88 + 1;
          v89 = &v41[2 * v88];
          v89[4] = v83;
          v89[5] = v85;
          v81 += v141;
          --v79;
          v4 = v86;
        }

        while (v79);

        v13 = v125;
        v14 = v111;
        v19 = v112;
      }

      v90 = MEMORY[0x26672D3F0](v41, MEMORY[0x277D837D0]);
      v92 = v91;

      v93 = sub_2628FB76C(v90, v92, &v145);

      v94 = v114;
      *(v114 + 3) = v93;
      v95 = v115;
      _os_log_impl(&dword_2628DB000, v115, v116, "%s group %s New group  -- %s", v94, 0x20u);
      v30 = v113;
      swift_arrayDestroy();
      MEMORY[0x26672DCE0](v30, -1, -1);
      MEMORY[0x26672DCE0](v94, -1, -1);

      v27 = v124;
      v33 = v130;
    }

    else
    {

      v13 = v125;
    }

    v20 = v132;
    swift_beginAccess();
    v96 = *(v20 + v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + v33) = v96;
    v39 = v136;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    v98 = v131;
    if ((v131 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v98 >= v96[2])
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v99 = v96 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v98;
    sub_26294CAC8();
    *(v132 + v33) = v96;
    swift_endAccess();
    (*(v14 + 8))(v19, v13);

    v41 = MEMORY[0x277D84F90];
    v44 = v129;
  }

  v96 = sub_26291DCB4(v96);
  *(v132 + v33) = v96;
  v98 = v131;
  if ((v131 & 0x8000000000000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_46:
  __break(1u);
LABEL_47:

  v100 = sub_26294DE28();
  v101 = v106;
  (*(*(v100 - 8) + 56))(v106, 1, 1, v100);
  v102 = swift_allocObject();
  v102[2] = 0;
  v102[3] = 0;
  v103 = v140;
  v102[4] = v33;
  v102[5] = v103;
  v104 = v33;

  sub_2628EB2A0(0, 0, v101, &unk_26294F530, v102);
}

uint64_t sub_2628F3644@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26294CB18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2628F3670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_26294CB98();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2628F3730, 0, 0);
}

uint64_t sub_2628F3730()
{
  v1 = v0[15];
  v2 = (v0[14] + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  swift_beginAccess();
  v5 = *(v1 + 16);
  v0[19] = v5;
  v6 = *(v4 + 24);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_2628F3894;

  return v10(v5, v3, v4);
}

uint64_t sub_2628F3894(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_2628F3B84;
  }

  else
  {
    v8 = *(v4 + 152);

    *(v4 + 176) = a1;
    v7 = sub_2628F39C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2628F39C4()
{
  v1 = v0[14];
  v2 = *(v1 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot);
  *(v1 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot) = v0[22];

  v3 = v0[14];
  v4 = v0[15] + 16;
  sub_262906E24();
  v5 = sub_26294DED8();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_262907070;
  *(v7 + 24) = v6;
  v0[6] = sub_262907108;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2628F4498;
  v0[5] = &block_descriptor_134;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];
  v10 = v3;

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[18];

    v13 = v0[1];

    return v13();
  }

  return result;
}

uint64_t sub_2628F3B84()
{
  v52 = v0;
  v1 = v0;
  v2 = v0 + 2;
  v3 = v1[19];

  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v4 = v1[15];
  v5 = sub_26294CE48();
  __swift_project_value_buffer(v5, qword_27FF314B0);

  v6 = sub_26294CE28();
  v7 = sub_26294DEA8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[15];
    v9 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50 = v47;
    *v9 = 136315138;
    swift_beginAccess();
    v10 = *(v8 + 16);
    v11 = *(v10 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v43 = v9;
      v44 = v7;
      v45 = v6;
      v46 = v2;
      v13 = v1[17];
      v51 = MEMORY[0x277D84F90];

      sub_2628FC960(0, v11, 0);
      v12 = v51;
      v14 = *(v13 + 16);
      v13 += 16;
      v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v48 = *(v13 + 56);
      v49 = v14;
      v16 = (v13 - 8);
      do
      {
        v17 = v1[18];
        v18 = v1;
        v19 = v1[16];
        v49(v17, v15, v19);
        v20 = sub_26294CB18();
        v22 = v21;
        (*v16)(v17, v19);
        v51 = v12;
        v24 = *(v12 + 16);
        v23 = *(v12 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2628FC960((v23 > 1), v24 + 1, 1);
          v12 = v51;
        }

        *(v12 + 16) = v24 + 1;
        v25 = v12 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        v15 += v48;
        --v11;
        v1 = v18;
      }

      while (v11);

      v6 = v45;
      v2 = v46;
      v7 = v44;
      v9 = v43;
    }

    v27 = v1[21];
    v28 = MEMORY[0x26672D3F0](v12, MEMORY[0x277D837D0]);
    v30 = v29;

    v31 = sub_2628FB76C(v28, v30, &v50);

    *(v9 + 4) = v31;
    _os_log_impl(&dword_2628DB000, v6, v7, "Error encountered when deleting passes %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x26672DCE0](v47, -1, -1);
    MEMORY[0x26672DCE0](v9, -1, -1);
    v26 = v27;
  }

  else
  {
    v26 = v1[21];
  }

  v32 = v1[14];
  v33 = v1[15] + 16;
  sub_262906E24();
  v34 = sub_26294DED8();
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v33;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_262907070;
  *(v36 + 24) = v35;
  v1[6] = sub_262907108;
  v1[7] = v36;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_2628F4498;
  v1[5] = &block_descriptor_134;
  v37 = _Block_copy(v2);
  v38 = v1[7];
  v39 = v32;

  dispatch_sync(v34, v37);

  _Block_release(v37);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    v41 = v1[18];

    v42 = v1[1];

    return v42();
  }

  return result;
}

uint64_t sub_2628F3FDC(char *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passes;
  swift_beginAccess();
  v5 = sub_2629042C0(&a1[v4], a2);
  v6 = *(*&a1[v4] + 16);
  if (v6 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_262906400(v5, v6);
    swift_endAccess();
    sub_2628E6C54();
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = 0;
    a1 = a1;
    sub_26294D008();
    if (qword_27FF2E7C0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = sub_26294CE48();
  __swift_project_value_buffer(v7, qword_27FF314B0);
  v8 = a1;
  v9 = sub_26294CE28();
  v10 = sub_26294DE98();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v11 + 4) = v19;

    _os_log_impl(&dword_2628DB000, v9, v10, "Controller loading %{BOOL}d", v11, 8u);
    MEMORY[0x26672DCE0](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  v13 = *(&v8->isa + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  if (v13)
  {
    v14 = v12[1];

    v13(1);
    sub_262905484(v13);
    v15 = *v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v12[1];
  *v12 = 0;
  v12[1] = 0;
  sub_262905484(v15);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v8;
  return sub_26294D008();
}

uint64_t sub_2628F4274(uint64_t a1, uint64_t *a2)
{
  v18[3] = a1;
  v3 = sub_26294CB98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *a2;
  v20 = *(*a2 + 16);
  v18[2] = v4 + 16;
  v19 = (v4 + 8);

  v10 = 0;
  while (1)
  {
    v12 = v10;
    if (v20 == v10)
    {
      goto LABEL_8;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    v13 = v3;
    (*(v4 + 16))(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v3);
    v14 = sub_26294CB18();
    v16 = v15;
    if (v14 == sub_26294CB18() && v16 == v17)
    {

      (*v19)(v7, v13);
LABEL_8:

      return v20 != v12;
    }

    ++v10;
    v11 = sub_26294E058();

    v3 = v13;
    result = (*v19)(v7, v13);
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2628F44C0(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v51 = a4;
  v50 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED60, &qword_26294F2E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v46 - v9;
  v11 = sub_26294C9D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26294CA28();
  v52 = *(v16 - 8);
  v53 = v16;
  v17 = *(v52 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v54 = v4;
  v21 = *(v4 + v20);

  v22 = sub_26291849C(a1, v21);
  LOBYTE(a1) = v23;

  if ((a1 & 1) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v25 = *(v54 + v20);
    if (v22 >= *(v25 + 16))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v26 = *(v52 + 16);
    v47 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v48 = *(v52 + 72) * v22;
    v49 = v22;
    v26(v19, v25 + v47 + v48, v53);
    sub_2628DF954(v50, v10, &qword_27FF2ED60, &qword_26294F2E8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_2628DF6F0(v10, &qword_27FF2ED60, &qword_26294F2E8);
      v21 = *(sub_26294C928() + 16);

      if (a3)
      {
        if (!v21)
        {
          goto LABEL_25;
        }

        v11 = 0;
        v27 = a3 + 56;
        while (1)
        {
          if (*(a3 + 16))
          {
            v28 = *(a3 + 40);
            v29 = sub_26294E088();
            v30 = -1 << *(a3 + 32);
            v31 = v29 & ~v30;
            if ((*(v27 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
            {
              v32 = ~v30;
              while (*(*(a3 + 48) + 8 * v31) != v11)
              {
                v31 = (v31 + 1) & v32;
                if (((*(v27 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
                {
                  goto LABEL_8;
                }
              }

              v15 = sub_26294C918();
              v10 = v33;
              v22 = *v33;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v10 = v22;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v22 = sub_26291DBD0(v22);
                *v10 = v22;
              }

              if (v11 >= *(v22 + 16))
              {
                goto LABEL_37;
              }

              v35 = v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
              sub_26294C9C8();
              (v15)(v55, 0);
            }
          }

LABEL_8:
          if (++v11 == v21)
          {
            goto LABEL_25;
          }
        }
      }

      v10 = v51;
      if (v21)
      {
        v15 = 0;
        while (1)
        {
          a3 = sub_26294C918();
          v11 = v43;
          v22 = *v43;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          *v11 = v22;
          if ((v44 & 1) == 0)
          {
            v22 = sub_26291DBD0(v22);
            *v11 = v22;
          }

          if (v15 >= *(v22 + 16))
          {
            break;
          }

          v45 = v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v15;
          sub_26294C9C8();
          (a3)(v55, 0);
          v11 = ++v15;
          if (v21 == v15)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      while (1)
      {
LABEL_25:
        v12 = v54;
        swift_beginAccess();
        v22 = *(v12 + v20);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        *(v12 + v20) = v22;
        if ((v40 & 1) == 0)
        {
LABEL_40:
          v22 = sub_26291DB84(v22);
          *(v54 + v20) = v22;
        }

        if (v49 < *(v22 + 16))
        {
          break;
        }

        __break(1u);
LABEL_42:
        result = sub_26291DBD0(v22);
        v22 = result;
        *v10 = result;
        if ((a3 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

LABEL_22:
        if (a3 >= *(v22 + 16))
        {
          goto LABEL_44;
        }

        v39 = v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * a3;
        sub_26294C9C8();
        (v21)(v55, 0);
LABEL_24:
        (*(v12 + 8))(v15, v11);
      }

      v42 = v52;
      v41 = v53;
      (*(v52 + 24))(v22 + v47 + v48, v19, v53);
      *(v54 + v20) = v22;
      swift_endAccess();
      return (*(v42 + 8))(v19, v41);
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      v36 = sub_26294C928();
      a3 = sub_2629184E4(v15, v36);
      v21 = v37;

      if (v21)
      {
        goto LABEL_24;
      }

      v21 = sub_26294C918();
      v10 = v38;
      v22 = *v38;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v10 = v22;
      if ((result & 1) == 0)
      {
        goto LABEL_42;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2628F4AC4(uint64_t a1, int a2)
{
  v3 = v2;
  v69 = a2;
  v5 = sub_26294C9D8();
  v70 = *(v5 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED60, &qword_26294F2E8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v50 - v12;
  v13 = sub_26294CA28();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v71 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v72[0])
  {
    return result;
  }

  v62 = *(a1 + 16);
  if (!v62)
  {
    return sub_2628EC330();
  }

  v58 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v61 = a1 + v58;
  v66 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v21 = 0;
  v22 = v14 + 16;
  v64 = *(v14 + 16);
  v60 = (v70 + 56);
  v56 = (v70 + 48);
  v23 = *(v14 + 72);
  v52 = (v70 + 32);
  v51 = (v70 + 8);
  v54 = (v22 + 8);
  v65 = v22;
  v59 = (v22 - 8);
  v55 = v3;
  v63 = v5;
  while (1)
  {
    v67 = v21;
    v64(v19, v61 + v23 * v21, v13);
    (*v60)(v68, 1, 1, v5);
    v24 = *(*(v3 + v66) + 16);

    if (!v24)
    {
LABEL_4:

      sub_2628DF6F0(v68, &qword_27FF2ED60, &qword_26294F2E8);
      (*v59)(v19, v13);
      goto LABEL_5;
    }

    sub_262906CE0(&qword_27FF2EE98, MEMORY[0x277D48F20]);
    v25 = 0;
    v26 = v58;
    while ((sub_26294DD48() & 1) == 0)
    {
      ++v25;
      v26 += v23;
      if (v24 == v25)
      {
        goto LABEL_4;
      }
    }

    v27 = *(v3 + v66);
    if (v25 >= *(v27 + 16))
    {
      goto LABEL_35;
    }

    v28 = v71;
    v64(v71, v27 + v26, v13);
    v29 = v57;
    sub_2628DF954(v68, v57, &qword_27FF2ED60, &qword_26294F2E8);
    v30 = v63;
    if ((*v56)(v29, 1, v63) != 1)
    {
      v38 = v53;
      (*v52)(v53, v29, v30);
      v39 = sub_26294C928();
      v40 = sub_2629184E4(v38, v39);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        v50 = sub_26294C918();
        v44 = v43;
        v45 = *v43;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v44 = v45;
        if (result)
        {
          if ((v40 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          result = sub_26291DBD0(v45);
          v45 = result;
          *v44 = result;
          if ((v40 & 0x8000000000000000) != 0)
          {
LABEL_31:
            __break(1u);
            return sub_2628EC330();
          }
        }

        if (v40 >= v45[2])
        {
          goto LABEL_37;
        }

        v46 = v45 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v40;
        sub_26294C9C8();
        v50(v72, 0);
      }

      (*v51)(v38, v30);
      v28 = v71;
      goto LABEL_26;
    }

    sub_2628DF6F0(v29, &qword_27FF2ED60, &qword_26294F2E8);
    v31 = *(sub_26294C928() + 16);

    if (v31)
    {
      break;
    }

LABEL_26:
    v3 = v55;
    v47 = v66;
    swift_beginAccess();
    v48 = *(v3 + v47);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v47) = v48;
    if ((result & 1) == 0)
    {
      result = sub_26291DB84(v48);
      v48 = result;
      *(v3 + v66) = result;
    }

    if (v25 >= *(v48 + 2))
    {
      goto LABEL_36;
    }

    (*v54)(&v48[v26], v28, v13);
    *(v3 + v66) = v48;
    swift_endAccess();
    v49 = *v59;
    (*v59)(v28, v13);
    sub_2628DF6F0(v68, &qword_27FF2ED60, &qword_26294F2E8);
    v49(v19, v13);
LABEL_5:
    v21 = v67 + 1;
    v5 = v63;
    if (v67 + 1 == v62)
    {
      return sub_2628EC330();
    }
  }

  v32 = 0;
  while (1)
  {
    v33 = sub_26294C918();
    v35 = v34;
    v36 = *v34;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v36;
    if ((result & 1) == 0)
    {
      result = sub_26291DBD0(v36);
      v36 = result;
      *v35 = result;
    }

    if (v32 >= v36[2])
    {
      break;
    }

    v37 = v36 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v32;
    sub_26294C9C8();
    v33(v72, 0);
    ++v32;
    v28 = v71;
    if (v31 == v32)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_2628F5228(unint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v6 = sub_26294C9D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26294CA28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v41 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v16 = *(a1 + v15);
  v17 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v45 = *(v16 + 16);
  if (v45)
  {
    v34 = a1;
    v35 = a2;
    v36 = a3;
    v44 = v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v48 = v7 + 16;
    v40 = v7;
    a3 = (v7 + 8);
    v42 = (v12 + 8);
    v43 = v12 + 16;

    a1 = 0;
    v19 = v12;
    v20 = v41;
    a2 = v18;
    v38 = v12;
    v39 = v11;
    v37 = v18;
    while (a1 < *(a2 + 16))
    {
      (*(v19 + 16))(v20, v44 + *(v19 + 72) * a1, v11);
      v21 = sub_26294C928();
      v22 = *(v21 + 16);
      if (v22)
      {
        v46 = v21;
        v47 = a1;
        v23 = v21 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v24 = *(v40 + 72);
        v25 = *(v40 + 16);
        v25(v10, v23, v6);
        while (1)
        {
          if (sub_26294C9B8())
          {
            sub_26294C948();
            MEMORY[0x26672D3D0]();
            if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26294DDD8();
            }

            sub_26294DDF8();
            (*a3)(v10, v6);
            v17 = v49;
          }

          else
          {
            (*a3)(v10, v6);
          }

          v23 += v24;
          if (!--v22)
          {
            break;
          }

          v25(v10, v23, v6);
        }

        v19 = v38;
        v11 = v39;
        v20 = v41;
        a2 = v37;
        a1 = v47;
      }

      else
      {
      }

      ++a1;
      (*v42)(v20, v11);
      if (a1 == v45)
      {

        a2 = v35;
        a3 = v36;
        a1 = v34;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  if (v17 >> 62)
  {
LABEL_21:
    v26 = sub_26294E008();
    goto LABEL_19;
  }

  v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v26;
  v50 = 0;
  v27 = a1;
  sub_26294D008();
  v28 = &v27[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  v29 = *&v27[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  v30 = *&v27[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion + 8];
  *v28 = a2;
  v28[1] = a3;
  sub_262906C04(a2);
  sub_262905484(v29);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v49) = 1;
  v31 = v27;
  return sub_26294D008();
}

uint64_t sub_2628F5654()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v78 = &v77 - v3;
  v4 = sub_26294C9D8();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v102 = &v77 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v77 - v11;
  v13 = sub_26294CA28();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEA0, &qword_26294F4F8);
  v105 = *(v18 - 8);
  v19 = *(v105 + 64);
  MEMORY[0x28223BE20](v18);
  v80 = (&v77 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEA8, &qword_26294F500);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v92 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v91 = &v77 - v25;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v106)
  {
    return result;
  }

  v90 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  v106 = 1;
  v27 = v0;
  sub_26294D008();
  if (qword_27FF2E7C0 != -1)
  {
LABEL_39:
    swift_once();
  }

  v28 = sub_26294CE48();
  __swift_project_value_buffer(v28, qword_27FF314B0);
  v29 = v27;
  v30 = sub_26294CE28();
  v31 = sub_26294DE98();
  v32 = os_log_type_enabled(v30, v31);
  v83 = v17;
  if (v32)
  {
    v33 = swift_slowAlloc();
    LODWORD(v104) = v31;
    v34 = v33;
    *v33 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v17 = v83;

    *(v34 + 1) = v106;

    _os_log_impl(&dword_2628DB000, v30, v104, "Controller loading %{BOOL}d", v34, 8u);
    MEMORY[0x26672DCE0](v34, -1, -1);
  }

  else
  {

    v30 = v29;
  }

  v35 = v90;
  v36 = v92;

  v103 = swift_allocObject();
  *(v103 + 16) = MEMORY[0x277D84F90];
  v27 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v89 = v29;
  v97 = v27;
  v37 = *(v27 + v29);
  v79 = v14 + 16;
  v88 = (v105 + 56);
  v87 = (v105 + 48);
  v86 = (v14 + 32);
  v101 = (v84 + 8);
  v99 = v84 + 16;
  v100 = (v84 + 32);
  v85 = v14 + 8;
  v94 = v37;

  v38 = 0;
  v98 = v8;
  v82 = v13;
  v81 = v14;
  while (1)
  {
    v39 = *(v94 + 16);
    if (v38 == v39)
    {
      v96 = v38;
      v40 = 1;
    }

    else
    {
      if (v38 >= v39)
      {
        goto LABEL_38;
      }

      v41 = v38 + 1;
      v42 = v94 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38;
      v43 = *(v35 + 48);
      v44 = v80;
      *v80 = v38;
      (*(v14 + 16))(v44 + v43, v42, v13);
      sub_262906F00(v44, v36, &qword_27FF2EEA0, &qword_26294F4F8);
      v40 = 0;
      v96 = v41;
    }

    (*v88)(v36, v40, 1, v35);
    v45 = v91;
    sub_262906F00(v36, v91, &qword_27FF2EEA8, &qword_26294F500);
    if ((*v87)(v45, 1, v35) == 1)
    {
      goto LABEL_35;
    }

    v95 = *v45;
    (*v86)(v17, &v45[*(v35 + 48)], v13);
    v46 = sub_26294C928();
    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = *(v84 + 80);
      v93 = v46;
      v105 = (v48 + 32) & ~v48;
      v49 = v46 + v105;
      v104 = *(v84 + 72);
      v50 = *(v84 + 16);
      v27 = MEMORY[0x277D84F90];
      v50(v12, v46 + v105, v4);
      while (1)
      {
        if (sub_26294C9B8())
        {
          v50(v102, v12, v4);
          v53 = *(v103 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_26291D688(0, v53[2] + 1, 1, v53);
            *(v103 + 16) = v53;
          }

          v55 = v53[2];
          v54 = v53[3];
          if (v55 >= v54 >> 1)
          {
            v63 = sub_26291D688(v54 > 1, v55 + 1, 1, v53);
            *(v103 + 16) = v63;
          }

          (*v101)(v12, v4);
          v56 = v12;
          v57 = v4;
          v58 = v102;
          v59 = v103;
          v60 = *(v103 + 16);
          *(v60 + 16) = v55 + 1;
          v52 = v104;
          (*v100)(v60 + v105 + v55 * v104, v58, v57);
          *(v59 + 16) = v60;
          v4 = v57;
          v12 = v56;
          v8 = v98;
        }

        else
        {
          v50(v8, v12, v4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_26291D688(0, v27[2] + 1, 1, v27);
          }

          v62 = v27[2];
          v61 = v27[3];
          if (v62 >= v61 >> 1)
          {
            v27 = sub_26291D688(v61 > 1, v62 + 1, 1, v27);
          }

          (*v101)(v12, v4);
          v27[2] = v62 + 1;
          v51 = v27 + v105 + v62 * v104;
          v52 = v104;
          (*v100)(v51, v8, v4);
        }

        v49 += v52;
        if (!--v47)
        {
          break;
        }

        v50(v12, v49, v4);
      }

      v13 = v82;
      v14 = v81;
      v17 = v83;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    v64 = v89;
    v65 = v97;
    swift_beginAccess();
    v66 = *(v65 + v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v65 + v64) = v66;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    v68 = v95;
    if ((v95 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

LABEL_31:
    if (v68 >= v66[2])
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v69 = v64;
    v70 = v66 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v68;
    sub_26294C938();
    *(v97 + v69) = v66;
    swift_endAccess();
    (*(v14 + 8))(v17, v13);
    v35 = v90;
    v36 = v92;
    v38 = v96;
  }

  v66 = sub_26291DB84(v66);
  *(v97 + v64) = v66;
  v68 = v95;
  if ((v95 & 0x8000000000000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
LABEL_35:

  v71 = sub_26294DE28();
  v72 = v78;
  (*(*(v71 - 8) + 56))(v78, 1, 1, v71);
  v73 = swift_allocObject();
  v73[2] = 0;
  v73[3] = 0;
  v74 = v89;
  v75 = v103;
  v73[4] = v89;
  v73[5] = v75;
  v76 = v74;

  sub_2628EB2A0(0, 0, v72, &unk_26294F510, v73);
}

uint64_t sub_2628F60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = sub_26294C9D8();
  v5[18] = v6;
  v7 = *(v6 - 8);
  v5[19] = v7;
  v8 = *(v7 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2628F61B8, 0, 0);
}

uint64_t sub_2628F61B8()
{
  v1 = v0[17];
  sub_262906C54(v0[16] + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler, (v0 + 8));
  v2 = v0[11];
  v3 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v2);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v20 = v3;
    v21 = v2;
    v23 = MEMORY[0x277D84F90];
    v7 = v0[19];

    sub_26294DFD8();
    v10 = *(v7 + 16);
    v9 = v7 + 16;
    v8 = v10;
    v11 = v4 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    do
    {
      v13 = v0[20];
      v14 = v0[18];
      v8(v13, v11, v14);
      sub_26294C948();
      (*(v9 - 8))(v13, v14);
      sub_26294DFB8();
      v15 = *(v23 + 16);
      sub_26294DFE8();
      sub_26294DFF8();
      sub_26294DFC8();
      v11 += v12;
      --v5;
    }

    while (v5);

    v2 = v21;
    v6 = v23;
    v3 = v20;
  }

  v0[21] = v6;
  v16 = *(v3 + 32);
  v22 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[22] = v18;
  *v18 = v0;
  v18[1] = sub_2628F6410;

  return v22(v6, v2, v3);
}

uint64_t sub_2628F6410(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_2628F6704;
  }

  else
  {
    v8 = *(v4 + 168);

    *(v4 + 192) = a1;
    v7 = sub_2628F6540;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}