double sub_1B7A5ED84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v47 = a7;
  v53 = a6;
  v45 = a4;
  v44 = a2;
  v52 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B797C490(v65);
  KeyPath = v66;
  v51 = v67;
  v49 = __swift_project_boxed_opaque_existential_1(v65, v66);
  v17 = *(a1 + 16);
  sub_1B7A99320();
  v17(v14);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v61 = 0;
  v18 = *(a1 + 40);
  LOBYTE(v54) = *(a1 + 32);
  *(&v54 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50);
  sub_1B7A986D0();
  LOBYTE(AssociatedTypeWitness) = v62;
  v19 = *(a1 + 56);
  LOBYTE(v54) = *(a1 + 48);
  *(&v54 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49928);
  sub_1B7A986D0();
  v60[0] = v60[1];
  v46 = a3;
  *&v54 = a3;
  v20 = v45;
  *(&v54 + 1) = v45;
  v21 = a5;
  v22 = v53;
  *&v55 = a5;
  *(&v55 + 1) = v53;
  v23 = v47;
  *&v56 = v47;
  v24 = type metadata accessor for FlowStackSheetViewModifier();
  v25 = *(*(v24 - 8) + 16);
  v25(&v54, a1, v24);
  v26 = swift_allocObject();
  v27 = v56;
  *(v26 + 104) = v57;
  v28 = *v59;
  *(v26 + 120) = v58;
  *(v26 + 136) = v28;
  *(v26 + 145) = *&v59[9];
  v29 = v55;
  *(v26 + 56) = v54;
  *(v26 + 72) = v29;
  *(v26 + 16) = a3;
  *(v26 + 24) = v20;
  v30 = v20;
  *(v26 + 32) = v21;
  *(v26 + 40) = v22;
  *(v26 + 48) = v23;
  *(v26 + 88) = v27;
  sub_1B7A35FE0(v48, 1, &v61, AssociatedTypeWitness, v60, sub_1B7A6077C, v26, v20, &v62);
  *&v54 = v62;
  DWORD2(v54) = v63;
  v55 = v64;
  v51 = sub_1B7A3609C(&v54, KeyPath, v51);

  KeyPath = swift_getKeyPath();
  __swift_destroy_boxed_opaque_existential_1(v65);
  v25(&v54, a1, v24);
  v31 = swift_allocObject();
  v32 = v56;
  *(v31 + 104) = v57;
  v33 = *v59;
  *(v31 + 120) = v58;
  *(v31 + 136) = v33;
  *(v31 + 145) = *&v59[9];
  v34 = v55;
  *(v31 + 56) = v54;
  *(v31 + 72) = v34;
  v35 = v46;
  *(v31 + 16) = v46;
  *(v31 + 24) = v30;
  v36 = v53;
  *(v31 + 32) = v21;
  *(v31 + 40) = v36;
  *(v31 + 48) = v23;
  *(v31 + 88) = v32;
  v25(&v54, a1, v24);
  v37 = swift_allocObject();
  v38 = v56;
  *(v37 + 104) = v57;
  v39 = *v59;
  *(v37 + 120) = v58;
  *(v37 + 136) = v39;
  *(v37 + 145) = *&v59[9];
  result = *&v54;
  v41 = v55;
  *(v37 + 56) = v54;
  *(v37 + 72) = v41;
  *(v37 + 16) = v35;
  *(v37 + 24) = v30;
  *(v37 + 32) = v21;
  *(v37 + 40) = v36;
  *(v37 + 48) = v23;
  *(v37 + 88) = v38;
  v42 = v52;
  v43 = KeyPath;
  *v52 = v51;
  v42[1] = v43;
  *(v42 + 16) = 2;
  v42[3] = sub_1B7A60550;
  v42[4] = v31;
  v42[5] = sub_1B7A605D4;
  v42[6] = v37;
  return result;
}

uint64_t sub_1B7A5F2B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v25 = *a1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_1B7A9A7E0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *&v26 = a3;
  *(&v26 + 1) = a4;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  *&v28 = a7;
  v17 = type metadata accessor for FlowStackSheetViewModifier();
  (*(*(v17 - 8) + 16))(&v26, v24, v17);
  v18 = sub_1B7A9A750();
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 120) = v29;
  v21 = v31[0];
  *(v19 + 136) = v30;
  *(v19 + 152) = v21;
  *(v19 + 161) = *(v31 + 9);
  v22 = v27;
  *(v19 + 72) = v26;
  *(v19 + 88) = v22;
  *(v19 + 16) = v18;
  *(v19 + 24) = MEMORY[0x1E69E85E0];
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;
  *(v19 + 104) = v20;
  *(v19 + 177) = v25;
  sub_1B79A9B34(0, 0, v15, &unk_1B7AA7858, v19);
}

uint64_t sub_1B7A5F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 49) = a5;
  *(v5 + 32) = a4;
  sub_1B7A9A760();
  *(v5 + 40) = sub_1B7A9A750();
  v7 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A5F59C, v7, v6);
}

uint64_t sub_1B7A5F59C()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 32);

  v3 = *(v2 + 56);
  *(v0 + 16) = *(v2 + 48);
  *(v0 + 24) = v3;
  *(v0 + 48) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49928);
  sub_1B7A986E0();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B7A5F650()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50);
  sub_1B7A986E0();
}

uint64_t sub_1B7A5F728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B797C490(v42);
  v29 = v43;
  v30 = v44;
  v28[1] = __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(a2 + 16))(v14);
  v38 = 0;
  v18 = *(a2 + 40);
  LOBYTE(v31) = *(a2 + 32);
  *(&v31 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50);
  sub_1B7A986D0();
  LOBYTE(v14) = v39;
  v19 = *(a2 + 56);
  LOBYTE(v31) = *(a2 + 48);
  *(&v31 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49928);
  sub_1B7A986D0();
  v37[0] = v37[1];
  *&v31 = a3;
  *(&v31 + 1) = a4;
  *&v32 = a5;
  *(&v32 + 1) = a6;
  *&v33 = a7;
  v20 = type metadata accessor for FlowStackSheetViewModifier();
  (*(*(v20 - 8) + 16))(&v31, a2, v20);
  v21 = swift_allocObject();
  v22 = v33;
  *(v21 + 104) = v34;
  v23 = *v36;
  *(v21 + 120) = v35;
  *(v21 + 136) = v23;
  *(v21 + 145) = *&v36[9];
  v24 = v32;
  *(v21 + 56) = v31;
  *(v21 + 72) = v24;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = a7;
  *(v21 + 88) = v22;
  sub_1B7A35FE0(v17, 0, &v38, v14, v37, sub_1B7A6052C, v21, a4, &v39);
  *&v31 = v39;
  DWORD2(v31) = v40;
  v32 = v41;
  v25 = sub_1B7A3609C(&v31, v29, v30);

  KeyPath = swift_getKeyPath();
  result = __swift_destroy_boxed_opaque_existential_1(v42);
  *a8 = v25;
  *(a8 + 8) = KeyPath;
  *(a8 + 16) = 2;
  return result;
}

uint64_t sub_1B7A5FA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49910);
  if (swift_dynamicCast())
  {
    v15 = *(&v35 + 1);
    v16 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    (*(v16 + 8))(v37, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(&v34);
    if (*(&v37[1] + 1))
    {
      sub_1B795C1E4(v37, v38);
      v33 = v39;
      v17 = v39;
      v18 = __swift_project_boxed_opaque_existential_1(v38, v39);
      *(&v37[1] + 8) = v33;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v37);
      (*(*(v17 - 8) + 16))(boxed_opaque_existential_1Tm, v18, v17);
      v20 = *(&v37[1] + 8);
      v30 = __swift_project_boxed_opaque_existential_1(v37, *(&v37[1] + 1));
      *&v34 = a2;
      *(&v34 + 1) = v20;
      *&v35 = a3;
      *(&v35 + 1) = *(&v20 + 1);
      v32 = MEMORY[0x1E697D160];
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      *&v33 = &v29;
      v22 = a3;
      v23 = *(OpaqueTypeMetadata2 - 8);
      v24 = *(v23 + 64);
      MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
      v31 = a4;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
      v26 = sub_1B7A98280();
      v30 = &v29;
      v27 = MEMORY[0x1EEE9AC00](v26);
      (*(v23 + 16))(&v29 - v25, &v29 - v25, OpaqueTypeMetadata2, v27);
      *&v34 = a2;
      *(&v34 + 1) = v20;
      *&v35 = v22;
      *(&v35 + 1) = *(&v20 + 1);
      swift_getOpaqueTypeConformance2();
      *v31 = sub_1B7A987F0();
      (*(v23 + 8))(&v29 - v25, OpaqueTypeMetadata2);
      __swift_destroy_boxed_opaque_existential_1(v37);
      return __swift_destroy_boxed_opaque_existential_1(v38);
    }
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_1B7957888(&v34, &qword_1EBA49918);
    memset(v37, 0, 40);
  }

  sub_1B7957888(v37, &qword_1EBA49920);
  (*(v8 + 16))(v10, v4, a2);
  result = sub_1B7A987F0();
  *a4 = result;
  return result;
}

uint64_t sub_1B7A5FE64@<X0>(BOOL *a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1B7A29318();

  *a1 = v2;
  return result;
}

uint64_t sub_1B7A5FF10()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

void sub_1B7A5FFA4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void (*EnvironmentValues.isFlowStackSheetPresented.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_1B7A5DCCC();
  sub_1B7A97890();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return sub_1B7A60050;
}

void sub_1B7A60050(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v3[4] = v5;
  *(v3 + 40) = v6;
  if (a2)
  {
    sub_1B797DEF0(v4, v5);
    sub_1B7A978A0();
    sub_1B797D5AC(*v3, v3[1]);
  }

  else
  {
    sub_1B7A978A0();
  }

  free(v3);
}

uint64_t sub_1B7A6011C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B7A60184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1B7A601CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7A60274()
{
  result = qword_1EBA498C0;
  if (!qword_1EBA498C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498B8);
    sub_1B797EC34(&qword_1EDC0EB38, &qword_1EBA498C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA498C0);
  }

  return result;
}

unint64_t sub_1B7A6039C()
{
  result = qword_1EBA498D8;
  if (!qword_1EBA498D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498D0);
    sub_1B7A60454();
    sub_1B797EC34(&qword_1EBA49900, &qword_1EBA49908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA498D8);
  }

  return result;
}

unint64_t sub_1B7A60454()
{
  result = qword_1EBA498E0;
  if (!qword_1EBA498E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498E8);
    sub_1B7A02270();
    sub_1B797EC34(&qword_1EBA498F0, &qword_1EBA498F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA498E0);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm_0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 176))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B7A60688(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 177);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B798D338;

  return sub_1B7A5F4FC(a1, v4, v5, v1 + 72, v6);
}

uint64_t Button.init<>(_:action:)()
{
  sub_1B7A60808();
  sub_1B7A98730();
}

unint64_t sub_1B7A60808()
{
  result = qword_1EBA49930;
  if (!qword_1EBA49930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49930);
  }

  return result;
}

uint64_t Button.init<>(_:role:action:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B7957820(a2, &v7[-v5], &qword_1EBA47018);
  v8 = a1;
  sub_1B7A60808();
  sub_1B7A98720();
  sub_1B7957888(a2, &qword_1EBA47018);
}

uint64_t Button.init<>(_:localizer:action:)(uint64_t a1, uint64_t a2)
{
  sub_1B7A98730();
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t Text.init(_:localizer:)(uint64_t (**a1)(uint64_t), uint64_t a2)
{
  v3 = (*a1)(a2);
  __swift_destroy_boxed_opaque_existential_1(a2);

  return v3;
}

uint64_t Button.init<>(_:localizer:role:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B7957820(a3, &v9[-v7], &qword_1EBA47018);
  v10 = a1;
  v11 = a2;
  sub_1B7A98720();
  sub_1B7957888(a3, &qword_1EBA47018);
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1B7A60BFC()
{
  sub_1B7A60808();
  sub_1B7A98690();
}

uint64_t sub_1B7A60CE8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1B7A98680();
  *a1 = result;
  return result;
}

uint64_t sub_1B7A60D5C(uint64_t a1, uint64_t a2)
{
  sub_1B7A98690();

  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1B7A60E14@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1B7A985E0();
  *a1 = result;
  return result;
}

uint64_t Picker.init<>(_:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v17 = a4;
  v18 = a5;
  v10 = sub_1B7A98870();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  (*(v11 + 16))(&v17 - v13, a2, v10, v12);
  v19 = a1;
  v15 = sub_1B7A60808();
  sub_1B7A60FCC(v14, a3, v17, sub_1B7A63250, v18, a6, v15);
  (*(v11 + 8))(a2, v10);
}

uint64_t sub_1B7A60FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v14[4] = a3;
  v14[5] = a5;
  v14[0] = a4;
  v14[1] = a6;
  v14[2] = a2;
  v14[3] = a7;
  MEMORY[0x1EEE9AC00](a1);
  v8 = sub_1B7A98870();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (*(v9 + 16))(v14 - v11, a1, v8, v10);
  (v14[0])(v12);
  sub_1B7A987B0();
  return (*(v9 + 8))(a1, v8);
}

uint64_t Picker.init<>(_:localizer:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v19 = a5;
  v20 = a6;
  v18 = a4;
  v11 = sub_1B7A98870();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v12 + 16))(&v17 - v14, a3, v11, v13);
  v21 = a1;
  v22 = a2;
  sub_1B7A60FCC(v15, v18, v19, sub_1B7A6324C, v20, a7, MEMORY[0x1E6981138]);
  (*(v12 + 8))(a3, v11);
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t Section<>.init<A>(_:localizer:content:)(void (**a1)(uint64_t), uint64_t a2)
{
  (*a1)(a2);
  sub_1B7999DD8();
  sub_1B7A98910();
  __swift_destroy_boxed_opaque_existential_1(a2);
}

{
  (*a1)(a2);
  sub_1B7999DD8();
  sub_1B7A98920();
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t Section<>.init(_:localizer:content:)(void (**a1)(uint64_t), uint64_t a2)
{
  (*a1)(a2);
  sub_1B7999DD8();
  sub_1B7A98930();
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t Toggle.init<>(_:isOn:)()
{
  sub_1B7A60808();
  sub_1B7A987C0();
}

uint64_t sub_1B7A615A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t Toggle.init<>(_:localizer:isOn:)(uint64_t a1, uint64_t a2)
{
  sub_1B7A987C0();
  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1B7A61694@<X0>(uint64_t (**a1)(_BYTE *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_1B7999E90(a2, v9);

  v5 = v4(v9);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v9);

  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  *(a3 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B7A61740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49948);
  MEMORY[0x1EEE9AC00](v3);
  v37 = v36 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49950);
  MEMORY[0x1EEE9AC00](v43);
  v44 = v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49958);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = v36 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v38 = v36 - v12;
  v13 = sub_1B7A97880();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[1];
  v47 = *v2;
  v48 = v17;
  v49 = *(v2 + 4);
  v18 = *v2;
  v50 = *v2;
  v51 = *(v2 + 8);
  v19 = v51;

  if ((v19 & 1) == 0)
  {
    sub_1B7A9AA10();
    v20 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v50, &qword_1EBA47DE8);
    (*(v14 + 8))(v16, v13);
    v18 = v46[0];
  }

  if (v18)
  {
    type metadata accessor for _LocalizerOwner();
    sub_1B79F2650();

    sub_1B7A97490();
    v37 = v21;
    sub_1B7A974A0();
    swift_getKeyPath();
    sub_1B7A974B0();

    v22 = *(v7 + 16);
    v23 = v38;
    v36[2] = v18;
    v24 = v41;
    v22(v38, v41, v6);
    v36[1] = v3;
    v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v36[0] = swift_allocObject();
    v26 = *(v7 + 32);
    v26(v36[0] + v25, v23, v6);
    v27 = v39;
    v22(v39, v24, v6);
    v38 = swift_allocObject();
    v26(&v38[v25], v27, v6);
    v28 = v40;
    v22(v40, v24, v6);
    v29 = swift_allocObject();
    v26(v29 + v25, v28, v6);
    v30 = v29 + ((v25 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v31 = v48;
    *v30 = v47;
    *(v30 + 16) = v31;
    *(v30 + 32) = v49;
    v46[8] = sub_1B7A62BA4;
    v46[9] = v36[0];
    v46[10] = sub_1B7A62BD4;
    v46[11] = v38;
    v46[12] = sub_1B7A62C04;
    v46[13] = v29;
    sub_1B7957820(v46, v44, &qword_1EBA49960);
    swift_storeEnumTagMultiPayload();
    sub_1B7A62C34(&v47, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49960);
    sub_1B797EC34(&qword_1EBA49968, &qword_1EBA49960);
    sub_1B797EC34(&qword_1EBA49970, &qword_1EBA49948);
    sub_1B7A97B30();

    return sub_1B7957888(v46, &qword_1EBA49960);
  }

  else
  {
    v33 = v37;
    (*(v7 + 16))(v37, v41, v6);
    v34 = swift_allocObject();
    *(v34 + 16) = 0xD000000000000022;
    *(v34 + 24) = 0x80000001B7AC61C0;
    v35 = (v33 + *(v3 + 52));
    *v35 = sub_1B797D598;
    v35[1] = v34;
    sub_1B7957820(v33, v44, &qword_1EBA49948);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49960);
    sub_1B797EC34(&qword_1EBA49968, &qword_1EBA49960);
    sub_1B797EC34(&qword_1EBA49970, &qword_1EBA49948);
    sub_1B7A97B30();
    return sub_1B7957888(v33, &qword_1EBA49948);
  }
}

uint64_t sub_1B7A61EE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  KeyPath = swift_getKeyPath();
  v12 = 0;
  v13 = v8;
  v14 = v7;
  v15 = v9;

  MEMORY[0x1B8CA96D0](&KeyPath, a2, a4, a3);
  j__swift_release();
}

unint64_t sub_1B7A61FA0()
{
  result = qword_1EBA49938;
  if (!qword_1EBA49938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49938);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx011_JetEngine_aB0024LocalizedNavigationTitleC8Modifier33_2360066CC44703D6FE8597C16DE4267ELLVGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1B7A97590();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1B7A62064()
{
  result = qword_1EBA49940;
  if (!qword_1EBA49940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49940);
  }

  return result;
}

uint64_t sub_1B7A620F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49980);
  MEMORY[0x1EEE9AC00](v3);
  v37 = v36 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49988);
  MEMORY[0x1EEE9AC00](v43);
  v44 = v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = v36 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v38 = v36 - v12;
  v13 = sub_1B7A97880();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[1];
  v47 = *v2;
  v48 = v17;
  v49 = *(v2 + 4);
  v18 = *v2;
  v50 = *v2;
  v51 = *(v2 + 8);
  v19 = v51;

  if ((v19 & 1) == 0)
  {
    sub_1B7A9AA10();
    v20 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v50, &qword_1EBA47DE8);
    (*(v14 + 8))(v16, v13);
    v18 = v46[0];
  }

  if (v18)
  {
    type metadata accessor for _LocalizerOwner();
    sub_1B79F2650();

    sub_1B7A97490();
    v37 = v21;
    sub_1B7A974A0();
    swift_getKeyPath();
    sub_1B7A974B0();

    v22 = *(v7 + 16);
    v23 = v38;
    v36[2] = v18;
    v24 = v41;
    v22(v38, v41, v6);
    v36[1] = v3;
    v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v36[0] = swift_allocObject();
    v26 = *(v7 + 32);
    v26(v36[0] + v25, v23, v6);
    v27 = v39;
    v22(v39, v24, v6);
    v38 = swift_allocObject();
    v26(&v38[v25], v27, v6);
    v28 = v40;
    v22(v40, v24, v6);
    v29 = swift_allocObject();
    v26(v29 + v25, v28, v6);
    v30 = v29 + ((v25 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v31 = v48;
    *v30 = v47;
    *(v30 + 16) = v31;
    *(v30 + 32) = v49;
    v46[8] = sub_1B7A62C6C;
    v46[9] = v36[0];
    v46[10] = sub_1B7A62DB0;
    v46[11] = v38;
    v46[12] = sub_1B7A62F38;
    v46[13] = v29;
    sub_1B7957820(v46, v44, &qword_1EBA49998);
    swift_storeEnumTagMultiPayload();
    sub_1B7A6303C(&v47, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49998);
    sub_1B797EC34(&qword_1EBA499A0, &qword_1EBA49998);
    sub_1B797EC34(&qword_1EBA499A8, &qword_1EBA49980);
    sub_1B7A97B30();

    return sub_1B7957888(v46, &qword_1EBA49998);
  }

  else
  {
    v33 = v37;
    (*(v7 + 16))(v37, v41, v6);
    v34 = swift_allocObject();
    *(v34 + 16) = 0xD000000000000022;
    *(v34 + 24) = 0x80000001B7AC61C0;
    v35 = (v33 + *(v3 + 52));
    *v35 = sub_1B799A220;
    v35[1] = v34;
    sub_1B7957820(v33, v44, &qword_1EBA49980);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49998);
    sub_1B797EC34(&qword_1EBA499A0, &qword_1EBA49998);
    sub_1B797EC34(&qword_1EBA499A8, &qword_1EBA49980);
    sub_1B7A97B30();
    return sub_1B7957888(v33, &qword_1EBA49980);
  }
}

uint64_t sub_1B7A6288C(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_1B7A97960();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v15 = sub_1B797EC34(a4, a2);
  a5(v7, v9, v11 & 1, v13, v14, v15);
}

uint64_t sub_1B7A62984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1B7A97960();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v16 = sub_1B797EC34(a5, a3);
  a6(v8, v10, v12 & 1, v14, v15, v16);
}

uint64_t sub_1B7A62A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6, void (*a7)(void *, uint64_t, void, uint64_t, unint64_t))
{
  v20 = *(a3 + 16);
  v21 = *(a3 + 32);
  v11 = v20;
  sub_1B7A4E6F8(&v20, v19);
  v12 = v11(a1);
  v14 = v13;
  sub_1B7A4E754(&v20);
  v19[0] = v12;
  v19[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v16 = sub_1B797EC34(a6, a4);
  v17 = sub_1B7999DD8();
  a7(v19, v15, MEMORY[0x1E69E6158], v16, v17);
}

uint64_t objectdestroy_15Tm_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t objectdestroy_21Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);
  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1B7A62F68(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void (*a5)(void *, uint64_t, void, uint64_t, unint64_t))
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  return sub_1B7A62A78(a1, v5 + v12, v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8), a2, a3, a4, a5);
}

unint64_t sub_1B7A63074()
{
  result = qword_1EBA499B8;
  if (!qword_1EBA499B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA499C0);
    sub_1B797EC34(&qword_1EBA49968, &qword_1EBA49960);
    sub_1B797EC34(&qword_1EBA49970, &qword_1EBA49948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA499B8);
  }

  return result;
}

unint64_t sub_1B7A63158()
{
  result = qword_1EBA499C8;
  if (!qword_1EBA499C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA499D0);
    sub_1B797EC34(&qword_1EBA499A0, &qword_1EBA49998);
    sub_1B797EC34(&qword_1EBA499A8, &qword_1EBA49980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA499C8);
  }

  return result;
}

uint64_t ShelfGridPadding.init(leading:trailing:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

void ShelfGridPadding.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
}

uint64_t ShelfGridPadding.leading.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ShelfGridPadding.trailing.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t static Transaction.appleServicesLoading.getter()
{
  sub_1B7A98A40();

  return sub_1B7A97180();
}

id ExternalURLActionImplementation.init()@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7A633B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1B7A98FA0();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = sub_1B7A9A760();
  v4[18] = sub_1B7A9A750();
  v7 = sub_1B7A9A710();
  v4[19] = v7;
  v4[20] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B7A634AC, v7, v6);
}

uint64_t sub_1B7A634AC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  *(v0 + 168) = v1;
  [v1 setSensitive_];
  v2 = sub_1B7A9A750();
  *(v0 + 176) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = sub_1B7A9A710();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7A63588, v3, v5);
}

uint64_t sub_1B7A63588()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[11];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B7A6364C;
  v5 = swift_continuation_init();
  sub_1B7A638BC(v5, v3, v4, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7A6364C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[19];
    v4 = v1[20];
    v5 = sub_1B7A63840;
  }

  else
  {
    v7 = v1[15];
    v6 = v1[16];
    v8 = v1[14];
    v9 = v1[10];

    (*(v7 + 32))(v9, v6, v8);
    v3 = v1[19];
    v4 = v1[20];
    v5 = sub_1B7A637C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B7A637C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A63840()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B7A638BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B7A96B90();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A9A020();
  v11 = sub_1B7A96B50();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  aBlock[4] = sub_1B7A648AC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7A63C44;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  [a2 openURL:v11 configuration:a4 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_1B7A63AC8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1B7A98FA0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
    v10 = swift_allocError();
    *v11 = a2;
    v12 = a2;

    return MEMORY[0x1EEE6DEE8](a3, v10);
  }

  else
  {
    (*(v6 + 104))(v9, *MEMORY[0x1E69AB010], v5, v7);
    (*(v6 + 32))(*(*(a3 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1B7A63C44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1B7A9A3A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1B7A63CF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_1B7A98FA0();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_1B7A63E58;

  return v12(v9);
}

uint64_t sub_1B7A63E58()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B7A63FFC;
  }

  else
  {
    v2 = sub_1B7A63F6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A63F6C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1B7A9A140();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7A63FFC()
{
  v1 = *(v0 + 56);
  sub_1B7A9A130();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7A64074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B7A6471C(a3, v23 - v10);
  v12 = sub_1B7A9A7E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B7A6478C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B7A9A7D0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B7A9A710();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B7A9A4F0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B7A6478C(a3);

    return v21;
  }

LABEL_8:
  sub_1B7A6478C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B7A64330(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1B7A9A030();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = *v2;
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v9 + 32))(v14 + v13, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF0);
  v15 = v12;
  v16 = sub_1B7A9A150();
  v17 = sub_1B7A9A7E0();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B7AA7BE8;
  v18[5] = v14;
  v18[6] = v16;

  sub_1B7A64074(0, 0, v7, &unk_1B7A9EE00, v18);

  return v16;
}

uint64_t sub_1B7A645AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A64600(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(sub_1B7A9A030() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B7A633B0(a1, v1 + v6, v7, v4);
}

uint64_t sub_1B7A6471C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A6478C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7A647F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B79DC72C(a1, v4);
}

uint64_t View.dataObject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataObjectBox();
  (*(v5 + 16))(v7, a1, a3);
  sub_1B7A64A78(v7);
  swift_getWitnessTable();
  sub_1B7A98240();
}

uint64_t sub_1B7A64A18()
{
  v0 = type metadata accessor for DataObjectBox();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDFCC0](v0, WitnessTable);
}

uint64_t sub_1B7A64A78(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t sub_1B7A64B0C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1B7A64BB8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A64C4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A64C88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7A64CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B7A64D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for DataObjectBox();
  swift_getWitnessTable();
  if (a1)
  {
    v6 = *(*(a2 - 8) + 16);
    v7 = a1 + *(*a1 + 88);

    return v6(a3, v7, a2);
  }

  else
  {
    result = sub_1B7A97700();
    __break(1u);
  }

  return result;
}

uint64_t EnvironmentValues.dispatchIntent.getter()
{
  sub_1B79DC584();

  return sub_1B7A97890();
}

uint64_t IntentDispatchAction.callAsFunction<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = *v5;
  v6[11] = a5;
  v6[12] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
  v9 = swift_task_alloc();
  v6[13] = v9;
  *v9 = v6;
  v9[1] = sub_1B7A64F50;

  return MEMORY[0x1EEE16770](v6 + 2, v8, v8);
}

uint64_t sub_1B7A64F50()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B7A6523C;
  }

  else
  {
    v2 = sub_1B7A65064;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A65064()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1B7A65128;
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE16990](v8, v9, v4, v6, v7, v5, v1, v2);
}

uint64_t sub_1B7A65128()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B7A65254;
  }

  else
  {
    v2 = sub_1B7A67374;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A65254()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t IntentDispatchAction.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a3;
  v5[10] = a4;
  v5[7] = a1;
  v5[8] = a2;
  v5[11] = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
  v7 = swift_task_alloc();
  v5[12] = v7;
  *v7 = v5;
  v7[1] = sub_1B7A65380;

  return MEMORY[0x1EEE16770](v5 + 2, v6, v6);
}

uint64_t sub_1B7A65380()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B7A656D0;
  }

  else
  {
    v2 = sub_1B7A65494;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A65494()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1B7A65558;
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE16988](v8, v6, v4, v7, v5, v1, v2);
}

uint64_t sub_1B7A65558()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B7A656E8;
  }

  else
  {
    v2 = sub_1B7A6566C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A6566C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A656E8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t View.intentDispatcher(_:with:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1B7999E90(a1, v6);
  v4 = swift_allocObject();
  sub_1B795C1E4(v6, v4 + 16);
  *(v4 + 56) = a2;

  sub_1B7A98320();
}

uint64_t sub_1B7A65824(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B7A98C30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7999E90(a2, v15);
  v8 = swift_allocObject();
  sub_1B795C1E4(v15, v8 + 16);
  v9 = *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
  v11 = swift_allocObject();
  v11[2] = &unk_1B7AA7E30;
  v11[3] = v8;
  v11[4] = v9;

  MEMORY[0x1B8CA9E30](v10, &unk_1B7AA7E38, v11, v10);
  v12 = sub_1B7A992C0();

  (*(v5 + 8))(v7, v4);

  *a1 = v12;
  return result;
}

uint64_t sub_1B7A65A3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7A65A5C, 0, 0);
}

uint64_t sub_1B7A65A5C()
{
  sub_1B7999E90(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7A65AD8()
{
  swift_getKeyPath();

  sub_1B7A98320();
}

uint64_t sub_1B7A65B70(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B7A98C30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
  v10 = swift_allocObject();
  v10[2] = &unk_1B7AA7E18;
  v10[3] = a2;
  v10[4] = v8;
  swift_retain_n();
  MEMORY[0x1B8CA9E30](v9, &unk_1B7A9F4C0, v10, v9);
  v11 = sub_1B7A992C0();

  (*(v5 + 8))(v7, v4);

  *a1 = v11;
  return result;
}

uint64_t sub_1B7A65D50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B798D54C;

  return MEMORY[0x1EEE16770](a1, v3, v3);
}

uint64_t sub_1B7A65E18(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B7A98C30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
  if (sub_1B7A99250())
  {
    v9 = *a1;
    v10 = swift_allocObject();
    v10[2] = &unk_1B7AA7E48;
    v10[3] = a2;
    v10[4] = v9;
    swift_retain_n();
    MEMORY[0x1B8CA9E30](v8, &unk_1B7AA7E50, v10, v8);
    v11 = sub_1B7A992C0();

    (*(v5 + 8))(v7, v4);

    *a1 = v11;
  }

  else
  {
  }

  return result;
}

uint64_t View.intentDispatcher(with:implementations:)(uint64_t a1, void (*a2)(void))
{
  v5[3] = sub_1B7A99B50();
  v5[4] = MEMORY[0x1E69AB358];
  __swift_allocate_boxed_opaque_existential_1Tm(v5);
  a2();
  View.intentDispatcher(_:with:)(v5, a1);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

unint64_t sub_1B7A660E8()
{
  result = qword_1EBA46BB0;
  if (!qword_1EBA46BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46BB0);
  }

  return result;
}

uint64_t sub_1B7A6617C()
{
  v1 = *(v0 + 16);
  *(v1 + 24) = &type metadata for _NoIntentDispatcherSet;
  *(v1 + 32) = sub_1B7A66AAC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7A661F0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v6[27] = a1;
  v6[28] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B58);
  v6[29] = swift_task_alloc();
  v8 = sub_1B7A99B50();
  v6[30] = v8;
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v6[33] = v9;
  *v9 = v6;
  v9[1] = sub_1B7A6638C;

  return v11(a1);
}

uint64_t sub_1B7A6638C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7A664E4, 0, 0);
  }
}

uint64_t sub_1B7A664E4()
{
  if (v0[28])
  {
    v1 = v0[31];
    sub_1B7999E90(v0[27], (v0 + 2));

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
    v3 = swift_dynamicCast();
    v4 = *(v1 + 56);
    if (v3)
    {
      v6 = v0[31];
      v5 = v0[32];
      v8 = v0[29];
      v7 = v0[30];
      v4(v8, 0, 1, v7);
      (*(v6 + 32))(v5, v8, v7);

      v9 = swift_task_alloc();
      v0[34] = v9;
      *v9 = v0;
      v9[1] = sub_1B7A66730;

      return MEMORY[0x1EEE16770](v0 + 7, v2, v2);
    }

    else
    {
      v11 = v0[29];
      v4(v11, 1, 1, v0[30]);
      sub_1B7957888(v11, &qword_1EBA49B58);
      return sub_1B7A9AD70();
    }
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1B7A66730()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1B7A66994;
  }

  else
  {
    v2 = sub_1B7A66860;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7A66860()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  sub_1B7999E90((v0 + 7), (v0 + 17));
  v5 = MEMORY[0x1E69AB358];
  v0[15] = v3;
  v0[16] = v5;
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 12);
  (*(v2 + 16))();
  sub_1B7A66A3C((v0 + 17), (v0 + 22));
  sub_1B7A99B10();

  sub_1B7957888((v0 + 17), &qword_1EBA49B60);
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_1B795C1E4(v0 + 6, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B7A66994()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[27];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7A66A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7A66AAC()
{
  result = qword_1EBA49B68;
  if (!qword_1EBA49B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49B68);
  }

  return result;
}

uint64_t sub_1B7A66B00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B798D54C;

  return sub_1B7A65D50(a1);
}

uint64_t sub_1B7A66B9C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B798D54C;

  return sub_1B7A65A3C(a1, v1 + 16);
}

uint64_t sub_1B7A66C40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B798D54C;

  return sub_1B7A65D50(a1);
}

uint64_t sub_1B7A66CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a2;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7A66D10, 0, 0);
}

uint64_t sub_1B7A66D10()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  sub_1B7A99720();

  v4 = sub_1B7A99A30();
  sub_1B7A6731C();
  swift_allocError();
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69AB2F8], v4);
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B7A66E38()
{
  sub_1B7A9AC50();
  MEMORY[0x1B8CAB750](0xD00000000000003FLL, 0x80000001B7AC7F50);
  swift_getDynamicType();
  v0 = sub_1B7A9AFF0();
  MEMORY[0x1B8CAB750](v0);

  MEMORY[0x1B8CAB750](2108990, 0xE300000000000000);

  MEMORY[0x1B8CAB750](0xD000000000000053, 0x80000001B7AC7F90);

  MEMORY[0x1B8CAB750](0xD000000000000043, 0x80000001B7AC7FF0);

  return 0;
}

uint64_t sub_1B7A66F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B798D338;

  return sub_1B7A66CEC(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B7A6702C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B798D54C;

  return MEMORY[0x1EEE169A8](a1, a2, a3, a6, a4, a7, a5);
}

uint64_t sub_1B7A67110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B798D54C;

  return MEMORY[0x1EEE169B0](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t sub_1B7A67204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B798D54C;

  return MEMORY[0x1EEE169B8](a1, a2, a3, a4, a7, a5, a8, a6);
}

unint64_t sub_1B7A6731C()
{
  result = qword_1EBA49B70;
  if (!qword_1EBA49B70)
  {
    sub_1B7A99A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49B70);
  }

  return result;
}

uint64_t sub_1B7A67378()
{
  sub_1B797E898();
  sub_1B7A97890();
  return v1;
}

uint64_t View.onViewAppearanceChange(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = swift_getKeyPath();
  v7[3] = 0;
  v8 = 0;
  MEMORY[0x1B8CA96D0](v7, a3, &type metadata for _OnViewAppearanceChangeViewModifier, a4);
}

uint64_t View.viewAppearance(_:)()
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7A67520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B78);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v39 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B80);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B88);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = sub_1B7A97880();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v2 + 32);
  v47 = *(v2 + 16);
  v16 = v47;
  if (HIBYTE(v48) != 1)
  {
    v40 = v13;

    sub_1B7A9AA10();
    v29 = sub_1B7A97E70();
    v39 = v16;
    v30 = v29;
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v47, &qword_1EBA49B90);
    (*(v12 + 8))(v15, v40);
    v16 = v44;
    v18 = v45;
    v17 = v46;
    if (v45)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = swift_allocObject();
    v32 = *(v2 + 16);
    *(v31 + 16) = *v2;
    *(v31 + 32) = v32;
    *(v31 + 48) = *(v2 + 32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B98);
    (*(*(v33 - 8) + 16))(v5, a1, v33);
    v34 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49BA0) + 36)];
    *v34 = sub_1B7A67E48;
    v34[1] = v31;
    v34[2] = 0;
    v34[3] = 0;
    v35 = swift_allocObject();
    v36 = *(v2 + 16);
    *(v35 + 16) = *v2;
    *(v35 + 32) = v36;
    *(v35 + 48) = *(v2 + 32);
    v37 = &v5[*(v42 + 36)];
    *v37 = 0;
    *(v37 + 1) = 0;
    *(v37 + 2) = sub_1B7A67E6C;
    *(v37 + 3) = v35;
    sub_1B7957820(v5, v7, &qword_1EBA49B78);
    swift_storeEnumTagMultiPayload();
    sub_1B7957820(&v47, &v44, &qword_1EBA49B90);

    sub_1B7957820(&v47, &v44, &qword_1EBA49B90);
    sub_1B7A67F74(&qword_1EDC0FD20, &qword_1EBA49B88, &unk_1B7AA8048, sub_1B7A67E90);
    sub_1B7A67F74(&qword_1EDC0FD28, &qword_1EBA49B78, &unk_1B7AA8038, sub_1B7A67FF8);

    sub_1B7A97B30();
    v27 = v5;
    v28 = &qword_1EBA49B78;
    return sub_1B7957888(v27, v28);
  }

  v17 = v48;
  v18 = *(&v47 + 1);
  sub_1B797DEF0(v47, *(&v47 + 1));
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  v40 = *(v2 + 8);
  v19 = v16;
  v20 = swift_allocObject();
  v21 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v2 + 32);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49B98);
  (*(*(v22 - 8) + 16))(v10, a1, v22);
  v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49BA8) + 36)];
  *v23 = v19;
  *(v23 + 1) = v18;
  v23[16] = v17 & 1;
  *(v23 + 3) = sub_1B7A680F8;
  *(v23 + 4) = v20;
  v23[40] = 1;
  v24 = swift_allocObject();
  v25 = *(v2 + 16);
  *(v24 + 40) = *v2;
  *(v24 + 16) = v19;
  *(v24 + 24) = v18;
  *(v24 + 32) = v17 & 1;
  *(v24 + 56) = v25;
  *(v24 + 72) = *(v2 + 32);
  v26 = &v10[*(v8 + 36)];
  *v26 = 0;
  *(v26 + 1) = 0;
  *(v26 + 2) = sub_1B7A6813C;
  *(v26 + 3) = v24;
  sub_1B7957820(v10, v7, &qword_1EBA49B88);
  swift_storeEnumTagMultiPayload();
  sub_1B7957820(&v47, &v44, &qword_1EBA49B90);

  sub_1B7957820(&v47, &v44, &qword_1EBA49B90);
  sub_1B7A67F74(&qword_1EDC0FD20, &qword_1EBA49B88, &unk_1B7AA8048, sub_1B7A67E90);
  sub_1B7A67F74(&qword_1EDC0FD28, &qword_1EBA49B78, &unk_1B7AA8038, sub_1B7A67FF8);

  sub_1B7A97B30();
  v27 = v10;
  v28 = &qword_1EBA49B88;
  return sub_1B7957888(v27, v28);
}

uint64_t sub_1B7A67C08(uint64_t a1, uint64_t a2, char a3, void (**a4)(void))
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B797D54C();
  if (sub_1B7A9AAF0() & 1) != 0 || (sub_1B7A9AAE0() & 1) != 0 || (sub_1B7A9AB10())
  {
    v11 = a1;
    v12 = a2;
    v13 = a3 & 1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8);
    MEMORY[0x1B8CA9A40](&v10, v8);
    if (v10 == 1)
    {
      (*a4)(0);
    }
  }

  else
  {
  }
}

uint64_t sub_1B7A67D54(void (**a1)(void), uint64_t a2, char a3)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*a1)(a3 & 1);
}

unint64_t sub_1B7A67E90()
{
  result = qword_1EDC0FD40;
  if (!qword_1EDC0FD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49BA8);
    sub_1B797EC34(&qword_1EDC0FCF8, &qword_1EBA49B98);
    sub_1B797EC34(qword_1EDC0FDA8, &qword_1EBA49BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD40);
  }

  return result;
}

uint64_t sub_1B7A67F74(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7A67FF8()
{
  result = qword_1EDC0FD48;
  if (!qword_1EDC0FD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49BA0);
    sub_1B797EC34(&qword_1EDC0FCF8, &qword_1EBA49B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD48);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  sub_1B797D5A0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 49));

  return swift_deallocObject();
}

unsigned __int8 *sub_1B7A680F8(unsigned __int8 *result, _BYTE *a2)
{
  v3 = *result;
  if ((v3 & 1) != 0 || *a2)
  {
    return (*(v2 + 16))(*a2 | v3 ^ 1u);
  }

  return result;
}

unint64_t sub_1B7A6815C()
{
  result = qword_1EDC0FD18;
  if (!qword_1EDC0FD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA49BB8);
    sub_1B7A67F74(&qword_1EDC0FD20, &qword_1EBA49B88, &unk_1B7AA8048, sub_1B7A67E90);
    sub_1B7A67F74(&qword_1EDC0FD28, &qword_1EBA49B78, &unk_1B7AA8038, sub_1B7A67FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD18);
  }

  return result;
}

uint64_t sub_1B7A68240@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = a3[2];
  v11 = *(a3 + 24);
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = v8;
  *(a8 + 24) = v9;
  *(a8 + 32) = v10;
  *(a8 + 40) = v11;
  *(a8 + 48) = a4;
  *(a8 + 56) = a5;
  *(a8 + 64) = a6;
  *(a8 + 72) = a7;
  return result;
}

uint64_t sub_1B7A68270()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A682AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1B7A682F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A683A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_1B7A97BF0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1B7A98990();
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B7A989A0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548);
  v41 = *(a1 + 16);
  v12 = v41;
  v13 = sub_1B7A68DE0();
  *&v52 = v11;
  *(&v52 + 1) = MEMORY[0x1E69E69B8];
  *&v53 = v12;
  *(&v53 + 1) = v13;
  *&v54 = MEMORY[0x1E69E69C0];
  v35 = sub_1B7A988E0();
  v38 = *(a1 + 24);
  v51 = v38;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1B7A98A90();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v33 = v31 - v15;
  v36 = swift_getWitnessTable();
  *&v52 = v14;
  *(&v52 + 1) = v36;
  v37 = MEMORY[0x1E697D1A0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v32 = v31 - v20;
  v21 = v2[3];
  v54 = v2[2];
  v55 = v21;
  v56 = v2[4];
  v22 = v2[1];
  v52 = *v2;
  v53 = v22;
  v31[1] = v54;
  v57 = BYTE8(v54);
  *v8 = xmmword_1B7A9FA60;
  (*(v6 + 104))(v8, *MEMORY[0x1E697D748], v43);
  v23 = v40;
  sub_1B7A989B0();
  if (*(&v52 + 1) >= *(v52 + 16))
  {
    v24 = *(v52 + 16);
  }

  else
  {
    v24 = *(&v52 + 1);
  }

  sub_1B79CF8C4(v23, v24);
  v46 = v41;
  v47 = v38;
  v48 = &v52;
  sub_1B79CFF54();
  v25 = v33;
  sub_1B7A98A80();
  v26 = v36;
  sub_1B7A982A0();
  (*(v42 + 8))(v25, v14);
  v49 = v14;
  v50 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v32;
  sub_1B7957EE0(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v29 = *(v39 + 8);
  v29(v18, OpaqueTypeMetadata2);
  sub_1B7957EE0(v28, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v29)(v28, OpaqueTypeMetadata2);
}

uint64_t sub_1B7A68910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548);
  v23 = sub_1B7A68DE0();
  v24 = v7;
  v28[0] = v7;
  v28[1] = MEMORY[0x1E69E69B8];
  v28[2] = a2;
  v28[3] = v23;
  v28[4] = MEMORY[0x1E69E69C0];
  v8 = sub_1B7A988E0();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  sub_1B7A9A760();
  v22[1] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28[10] = *a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(a1 + 48);
  *(v14 + 64) = *(a1 + 32);
  *(v14 + 80) = v15;
  *(v14 + 96) = *(a1 + 64);
  v16 = *(a1 + 16);
  *(v14 + 32) = *a1;
  *(v14 + 48) = v16;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = sub_1B7A68E50;
  v17[5] = v14;

  v18 = type metadata accessor for _ResolvedHorizontalShelfLayout();
  (*(*(v18 - 8) + 16))(v28, a1, v18);
  sub_1B7A988B0();
  v27 = a3;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v10, v8, WitnessTable);
  v20 = *(v25 + 8);
  v20(v10, v8);
  sub_1B7957EE0(v13, v8, WitnessTable);
  v20(v13, v8);
}

uint64_t sub_1B7A68C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18[0] = a2;
  v18[1] = a6;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(a3 + 64))(a1, v18[0]);
  sub_1B7957EE0(v12, a4, a5);
  v16 = *(v10 + 8);
  v16(v12, a4);
  sub_1B7957EE0(v15, a4, a5);
  v16(v15, a4);
}

unint64_t sub_1B7A68DE0()
{
  result = qword_1EBA47550;
  if (!qword_1EBA47550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47550);
  }

  return result;
}

uint64_t _TaskViewDefaultWorking.init()@<X0>(void *a1@<X8>)
{
  if (qword_1EBA45B98 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EBA49C40;
}

uint64_t _TaskViewDefaultFailed.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t _TaskViewPlaceholderWorking.init(placeholder:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B7A9AB60();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for _TaskViewPlaceholderWorking();
  v10 = (a4 + *(result + 44));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t TaskView.init(_:task:working:failed:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v46 = a7;
  v47 = a8;
  v44 = a5;
  v45 = a6;
  v40 = a2;
  v41 = a3;
  v38 = a12;
  v39 = a13;
  v42 = a10;
  v43 = a4;
  swift_getTupleTypeMetadata2();
  v17 = sub_1B7A9A100();
  v18 = sub_1B7A9AB60();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - v20;
  v37 = *a1;
  v36 = *(a1 + 2);
  v48 = a11;
  v49 = a12;
  v50 = a13;
  v51 = a14;
  v52 = a15;
  v22 = type metadata accessor for TaskView();
  v23 = a9 + v22[19];
  v24 = *(*(v17 - 8) + 56);
  v24(v21, 1, 1, v17);
  sub_1B7A69204(v21);
  *a9 = v37;
  *(a9 + 16) = v36;
  v24(v21, 1, 1, v17);
  v25 = sub_1B7A98700();
  (*(*(v25 - 8) + 8))(v23, v25);
  *(v23 + *(v25 + 28)) = 0;
  result = (*(v19 + 32))(v23, v21, v18);
  v27 = (a9 + v22[20]);
  v28 = v41;
  *v27 = v40;
  v27[1] = v28;
  v29 = (a9 + v22[21]);
  v30 = v44;
  *v29 = v43;
  v29[1] = v30;
  v31 = (a9 + v22[22]);
  v32 = v46;
  *v31 = v45;
  v31[1] = v32;
  v33 = (a9 + v22[23]);
  v34 = v42;
  *v33 = v47;
  v33[1] = v34;
  return result;
}

uint64_t sub_1B7A69204(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  sub_1B7A9A100();
  v2 = sub_1B7A9AB60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_1B7A986C0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1B7A6937C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getTupleTypeMetadata2();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v3 = sub_1B7A98700();
  return a2(v3);
}

uint64_t TaskView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = sub_1B7A9A7E0();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v47.i8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = *(a1 + 16);
  v5 = v57;
  swift_getTupleTypeMetadata2();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v61 = sub_1B7A98870();
  v60 = *(v61 - 8);
  v59 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v47.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v47.i8[-v8];
  v9 = sub_1B7A98E50();
  v87 = MEMORY[0x1E69E76E8];
  WitnessTable = swift_getWitnessTable();
  v11.i64[0] = v5;
  v49 = &v80;
  v56 = *(a1 + 24);
  v83 = v56.i64[0];
  v69 = vzip1q_s64(v11, v56);
  v47 = vdupq_laneq_s64(v56, 1);
  v12 = *(a1 + 48);
  v84 = v9;
  v85 = v12;
  v86 = WitnessTable;
  v50 = v12;
  sub_1B7A987A0();
  v48 = sub_1B7A97B40();
  v51 = *(a1 + 40);
  v13 = v51;
  sub_1B7A97B40();
  v54 = sub_1B7A985B0();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v47.i8[-v14];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49C48);
  v63 = sub_1B7A97590();
  v15 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v55 = &v47.i8[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v47.i8[-v18];
  *&v19 = v47.i64[0];
  *(&v19 + 1) = v13;
  v71 = v19;
  v70 = v69;
  v72 = v12;
  v69 = *(a1 + 56);
  v73 = v69;
  v74 = v2;
  v20 = swift_getWitnessTable();
  v81 = v69.i64[0];
  v82 = v20;
  v79 = swift_getWitnessTable();
  *v49 = v69.i64[1];
  v49 = swift_getWitnessTable();
  sub_1B7A985A0();
  sub_1B7A69324();
  v21 = v68;
  sub_1B7A6937C(a1, MEMORY[0x1E6981780]);
  v22 = (v2 + *(a1 + 80));
  v23 = v22[1];
  v48 = *v22;
  sub_1B7A69324();
  v24 = v78;
  v25 = v60;
  v26 = v58;
  v27 = v61;
  (*(v60 + 16))(v58, v21, v61);
  v28 = (*(v25 + 80) + 80) & ~*(v25 + 80);
  v29 = v53;
  v30 = (v59 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v57;
  *(v31 + 24) = v56;
  *&v32 = v51;
  *(&v32 + 1) = v50;
  *(v31 + 56) = v69;
  *(v31 + 40) = v32;
  *(v31 + 72) = v24;
  v33 = v31 + v28;
  v34 = v27;
  (*(v25 + 32))(v33, v26, v27);
  v35 = (v31 + v30);
  *v35 = v48;
  v35[1] = v23;
  v77 = v49;

  v36 = v54;
  v37 = swift_getWitnessTable();
  sub_1B7A6B434();
  v38 = v64;
  sub_1B7A9A780();
  v39 = v55;
  v40 = v52;
  sub_1B7A983C0();

  (*(v65 + 8))(v38, v66);
  (*(v25 + 8))(v68, v34);
  (*(v29 + 8))(v40, v36);
  v41 = sub_1B797EC34(&qword_1EBA49C58, &qword_1EBA49C48);
  v75 = v37;
  v76 = v41;
  v42 = v63;
  v43 = swift_getWitnessTable();
  v44 = v62;
  sub_1B7957EE0(v39, v42, v43);
  v45 = *(v15 + 8);
  v45(v39, v42);
  sub_1B7957EE0(v44, v42, v43);
  return (v45)(v44, v42);
}

uint64_t sub_1B7A69BE4@<X0>(char *a1@<X0>, void (**a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v105 = a1;
  v115 = a9;
  v128 = a2;
  v129 = a3;
  v130 = a4;
  v131 = a5;
  v132 = a6;
  v133 = a7;
  v113 = a7;
  v114 = a8;
  v134 = a8;
  v14 = type metadata accessor for TaskView();
  v94 = *(v14 - 1);
  v89 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v92 = v86 - v15;
  v97 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v96 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v95 = v86 - v19;
  v88 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v87 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B7A98E50();
  v127 = MEMORY[0x1E69E76E8];
  WitnessTable = swift_getWitnessTable();
  v100 = a3;
  v128 = a3;
  v129 = v22;
  v86[2] = v22;
  v99 = a6;
  v130 = a6;
  v131 = WitnessTable;
  v86[1] = WitnessTable;
  v24 = sub_1B7A987A0();
  v93 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v91 = v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v90 = v86 - v27;
  v98 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v31;
  v32 = sub_1B7A97B40();
  v102 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v101 = v86 - v33;
  v104 = a4;
  v34 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v86 - v39;
  v103 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = sub_1B7A9A100();
  v43 = sub_1B7A9AB60();
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = v86 - v44;
  v110 = v32;
  v112 = a5;
  v109 = sub_1B7A97B40();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = v86 - v46;
  sub_1B7A9A760();
  v106 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = v105;
  sub_1B7A6937C(v14, MEMORY[0x1E6981778]);
  if ((*(*(v42 - 8) + 48))(v45, 1, v42) == 1)
  {
    (*&v47[v14[21]])();
    v48 = v104;
    v49 = v113;
    sub_1B7957EE0(v37, v104, v113);
    v50 = *(v34 + 8);
    v50(v37, v48);
    sub_1B7957EE0(v40, v48, v49);
    v51 = swift_getWitnessTable();
    v105 = v40;
    v52 = v101;
    sub_1B79B5878(v37, v48);
    v116 = v49;
    v117 = v51;
    v53 = v110;
    swift_getWitnessTable();
    v54 = v107;
    v55 = v114;
    sub_1B79B5878(v52, v53);
    v102[1](v52, v53);
    v50(v37, v48);
    v50(v105, v48);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v102 = *v45;
    v56 = v102;
    v101 = *&v47[v14[22]];
    v57 = v94;
    v58 = v92;
    (*(v94 + 16))(v92, v47, v14);
    v59 = (*(v57 + 80) + 72) & ~*(v57 + 80);
    v60 = swift_allocObject();
    v61 = v100;
    *(v60 + 2) = v103;
    *(v60 + 3) = v61;
    v62 = v112;
    *(v60 + 4) = v104;
    *(v60 + 5) = v62;
    v49 = v113;
    *(v60 + 6) = v99;
    *(v60 + 7) = v49;
    v55 = v114;
    *(v60 + 8) = v114;
    (*(v57 + 32))(&v60[v59], v58, v14);
    v63 = v96;
    (v101)(v56, sub_1B7A6DDB4, v60);

    v64 = v95;
    sub_1B7957EE0(v63, v62, v55);
    v65 = *(v97 + 8);
    v65(v63, v62);
    sub_1B7957EE0(v64, v62, v55);
    v66 = swift_getWitnessTable();
    v125 = v49;
    v126 = v66;
    v67 = v110;
    swift_getWitnessTable();
    v68 = v107;
    sub_1B7959A28(v63, v67, v62);

    v65(v63, v62);
    v65(v64, v62);
    v54 = v68;
  }

  else
  {
    v69 = *v45;
    v70 = *(v98 + 32);
    v71 = &v45[*(TupleTypeMetadata2 + 48)];
    v86[0] = v30;
    v70(v30, v71, v103);
    v72 = v87;
    (*&v47[v14[23]])(v30);
    v120 = v69;
    sub_1B7A98E60();
    v120 = v128;
    v73 = v91;
    v74 = v100;
    sub_1B7A98390();
    (*(v88 + 8))(v72, v74);
    v75 = v111;
    v76 = swift_getWitnessTable();
    v77 = v90;
    sub_1B7957EE0(v73, v75, v76);
    v78 = *(v93 + 8);
    v78(v73, v75);
    sub_1B7957EE0(v77, v75, v76);
    v79 = v101;
    v49 = v113;
    sub_1B7959A28(v73, v104, v75);
    v118 = v49;
    v119 = v76;
    v80 = v110;
    swift_getWitnessTable();
    v81 = v107;
    v55 = v114;
    sub_1B79B5878(v79, v80);
    v102[1](v79, v80);
    v78(v73, v75);
    v78(v77, v75);
    v54 = v81;
    (*(v98 + 8))(v86[0], v103);
  }

  v82 = swift_getWitnessTable();
  v123 = v49;
  v124 = v82;
  v121 = swift_getWitnessTable();
  v122 = v55;
  v83 = v109;
  v84 = swift_getWitnessTable();
  sub_1B7957EE0(v54, v83, v84);
  (*(v108 + 8))(v54, v83);
}

uint64_t sub_1B7A6A924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v23 = a1;
  swift_getTupleTypeMetadata2();
  v14 = sub_1B7A9A100();
  v15 = sub_1B7A9AB60();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  (*(*(v14 - 8) + 56))(&v21 - v18, 1, 1, v14, v17);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = v22;
  type metadata accessor for TaskView();
  sub_1B7A6DE7C(v19);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1B7A6AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = swift_getTupleTypeMetadata2();
  v5[8] = sub_1B7A9A100();
  v6 = sub_1B7A9AB60();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_1B7A9A760();
  v5[14] = sub_1B7A9A750();
  v8 = sub_1B7A9A710();
  v5[15] = v8;
  v5[16] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B7A6ABF4, v8, v7);
}

uint64_t sub_1B7A6ABF4()
{
  v1 = v0[13];
  v2 = v0[8];
  v0[17] = sub_1B7A98870();
  MEMORY[0x1B8CA9A40]();
  v3 = *(v2 - 8);
  v0[18] = v3;
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[13];
  if (v4 == 1)
  {
    (*(v0[10] + 8))(v0[13], v0[9]);
LABEL_10:
    v11 = v0[12];
    v12 = v0[4];
    v13 = *(v0[7] + 48);
    *v11 = v0[2];
    v15 = (v12 + *v12);
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = sub_1B7A6AEA8;

    return v15(&v11[v13]);
  }

  v6 = v0[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 8))(v5, v6);
    goto LABEL_10;
  }

  v7 = *(v0[7] + 48);
  if (*v5 != v0[2])
  {
    (*(*(v0[6] - 8) + 8))(&v5[v7]);
    goto LABEL_10;
  }

  v8 = v0[6];

  (*(*(v8 - 8) + 8))(&v5[v7], v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B7A6AEA8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1B7A6B0BC;
  }

  else
  {
    v5 = sub_1B7A6AFE4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B7A6AFE4()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[8];

  swift_storeEnumTagMultiPayload();
  (*(v1 + 56))(v2, 0, 1, v3);
  sub_1B7A98810();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7A6B0BC()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[11];
  v4 = v0[8];

  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v3, 0, 1, v4);
  sub_1B7A98810();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7A6B1A0()
{
  sub_1B7A97280();
  sub_1B7A98A40();
  sub_1B7A97180();
  if (sub_1B7A97170())
  {
    sub_1B7A98A50();
  }

  v0 = sub_1B7A972A0();

  qword_1EBA49C40 = v0;
  return result;
}

uint64_t sub_1B7A6B29C()
{
  v2 = *(v0 + 16);
  swift_getTupleTypeMetadata2();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v3 = *(sub_1B7A98870() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v0 + 72);
  v6 = (v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B798D338;

  return sub_1B7A6AAA8(v5, v0 + v4, v7, v8, v2);
}

unint64_t sub_1B7A6B434()
{
  result = qword_1EBA49C50;
  if (!qword_1EBA49C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49C50);
  }

  return result;
}

uint64_t _TaskViewDefaultWorking.init(animateRemoval:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (qword_1EBA45B98 != -1)
    {
      swift_once();
    }

    v3 = qword_1EBA49C40;
  }

  else
  {
    if (qword_1EBA45B98 != -1)
    {
      swift_once();
    }

    sub_1B7A97290();
    v3 = sub_1B7A97270();
  }

  *a2 = v3;
  return result;
}

uint64_t _TaskViewDefaultWorking.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1B7A986C0();
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  *a1 = sub_1B795AAEC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = v7;
  *(a1 + 96) = 0;
  *(a1 + 104) = v3;
}

uint64_t _TaskViewPlaceholderWorking.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = *(a1 + 24);
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v31 - v6;
  v36 = v7;
  v8 = *(v7 + 16);
  v9 = sub_1B7A9AB60();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7A97B40();
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - v18;
  (*(v10 + 16))(v12, v2, v9, v17);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    v20 = v36;
    (*(v10 + 8))(v12, v9);
    if (qword_1EBA45B98 != -1)
    {
      swift_once();
    }

    v42 = qword_1EBA49C40;
    v21 = *(v20 + 32);
    sub_1B7A6BAF0();

    sub_1B7959A28(&v42, v3, &type metadata for _TaskViewDefaultWorking);
  }

  else
  {
    v22 = v33;
    (*(v13 + 32))(v33, v12, v8);
    v23 = v36;
    v24 = v32;
    (*(v2 + *(v36 + 44)))(v22);
    v21 = *(v23 + 32);
    v25 = v34;
    sub_1B7957EE0(v24, v3, v21);
    v26 = *(v35 + 8);
    v26(v24, v3);
    sub_1B7957EE0(v25, v3, v21);
    sub_1B7A6BAF0();
    sub_1B79B5878(v24, v3);
    v26(v24, v3);
    v26(v25, v3);
    (*(v13 + 8))(v22, v8);
  }

  v27 = sub_1B7A6BAF0();
  v40 = v21;
  v41 = v27;
  v28 = v38;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v19, v28, WitnessTable);
  return (*(v37 + 8))(v19, v28);
}

unint64_t sub_1B7A6BAF0()
{
  result = qword_1EBA49C60[0];
  if (!qword_1EBA49C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA49C60);
  }

  return result;
}

uint64_t _TaskViewDefaultFailed.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF8);
  v9 = a1 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 2;
  return result;
}

uint64_t sub_1B7A6BBD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF8);
  v9 = a1 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 2;
  return result;
}

uint64_t TaskView.init<>(_:task:content:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = a1[1];
  v12 = a1[2];
  *&v26 = *a1;
  *(&v26 + 1) = v11;
  v27 = v12;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10);
  v15 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v16 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  *&v19 = v14;
  *(&v19 + 1) = a8;
  *&v18 = a7;
  *(&v18 + 1) = v13;
  TaskView.init(_:task:working:failed:content:)(&v26, a2, a3, j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, a4, a9, a5, a6, v18, v19, v15, v16);
}

uint64_t TaskView.init<>(_:task:placeholder:content:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v42 = a3;
  v43 = a6;
  v39 = a4;
  v40 = a9;
  v41 = a2;
  v44 = a10;
  v45 = a5;
  v36 = a7;
  v14 = sub_1B7A9AB60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v35 - v18;
  v20 = a1[1];
  v21 = a1[2];
  *&v48 = *a1;
  *(&v48 + 1) = v20;
  v35 = v48;
  v37 = v20;
  v38 = v14;
  v49 = v21;
  (*(v15 + 16))(v19, a4, v14, v17);
  v22 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a7;
  *(v23 + 3) = a8;
  *(v23 + 4) = v44;
  (*(v15 + 32))(&v23[v22], v19, v14);
  v24 = &v23[(v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v43;
  *v24 = v45;
  *(v24 + 1) = v25;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08);
  v26 = sub_1B7A97B40();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10);
  v28 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v29 = v44;
  v46 = v44;
  v47 = v28;
  WitnessTable = swift_getWitnessTable();
  v31 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  *&v34 = v27;
  *(&v34 + 1) = v29;
  *&v33 = a8;
  *(&v33 + 1) = v26;
  TaskView.init(_:task:working:failed:content:)(&v48, v41, v42, sub_1B7A6C6B0, v23, sub_1B79AF2C8, 0, v45, v40, v43, v36, v33, v34, WitnessTable, v31);
  (*(v15 + 8))(v39, v38);
}

uint64_t sub_1B7A6C0D8@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a6;
  v31 = a3;
  v32 = a2;
  v34 = a1;
  v39 = a7;
  v33 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1B7A9AB60();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08);
  v37 = sub_1B7A97B40();
  v36 = *(v37 - 8);
  v22 = MEMORY[0x1EEE9AC00](v37);
  v24 = &v31 - v23;
  (*(v15 + 16))(v17, v34, v14, v22);
  if ((*(v18 + 48))(v17, 1, a4) == 1)
  {
    (*(v15 + 8))(v17, v14);
    LOBYTE(v42) = 0;
    sub_1B7A986C0();
    BYTE8(v43) = v48[0];
    *&v44 = *(&v48[0] + 1);
    *(&v44 + 1) = swift_getKeyPath();
    LOBYTE(v45) = 0;
    *(&v45 + 1) = swift_getKeyPath();
    LOBYTE(v46) = 0;
    *(&v46 + 1) = swift_getKeyPath();
    v47 = 0;
    *&v42 = sub_1B795AAEC;
    *(&v42 + 1) = 0;
    LOBYTE(v43) = 1;
    sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
    v25 = v38;
    sub_1B7959A28(&v42, a5, v35);
    v48[2] = v44;
    v48[3] = v45;
    v48[4] = v46;
    v49 = v47;
    v48[0] = v42;
    v48[1] = v43;
    sub_1B79DBA88(v48);
  }

  else
  {
    (*(v18 + 32))(v21, v17, a4);
    v32(v21);
    v25 = v38;
    sub_1B7957EE0(v10, a5, v38);
    v26 = *(v33 + 8);
    v26(v10, a5);
    sub_1B7957EE0(v13, a5, v25);
    sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
    sub_1B79B5878(v10, a5);
    v26(v10, a5);
    v26(v13, a5);
    (*(v18 + 8))(v21, a4);
  }

  v27 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v40 = v25;
  v41 = v27;
  v28 = v37;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v24, v28, WitnessTable);
  return (*(v36 + 8))(v24, v28);
}

uint64_t sub_1B7A6C6B0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_1B7A9AB60() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_1B7A6C0D8(v1 + v7, v9, v10, v3, v4, v5, a1);
}

uint64_t TaskView.init<>(task:placeholder:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = a5;
  v22 = a7;
  v16 = sub_1B7A9AB60();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - v18;
  v23 = 0;
  sub_1B7A98850();
  (*(v17 + 16))(v19, a3, v16);
  TaskView.init<>(_:task:placeholder:content:)(v24, a1, a2, v19, a4, v21, a6, v22, a9, a8);
  return (*(v17 + 8))(a3, v16);
}

uint64_t TaskView.init<A>(task:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1B7A98850();
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v19[6] = a10;
  v19[7] = a1;
  v19[8] = a2;
  return TaskView.init<>(_:task:content:)(v21, &unk_1B7AA82A0, v19, a3, a4, a5, a6, a8, a9);
}

uint64_t sub_1B7A6CA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  sub_1B7A9A760();
  v8[7] = sub_1B7A9A750();
  v10 = sub_1B7A9A710();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B7A6CAEC, v10, v9);
}

uint64_t sub_1B7A6CAEC()
{
  *(v0 + 80) = (*(v0 + 24))();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1B7A6CB9C;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE176D0](v4, v2, v3);
}

uint64_t sub_1B7A6CB9C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1B7A6DF94;
  }

  else
  {
    v5 = sub_1B7A6DF90;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B7A6CCD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B798D54C;

  return sub_1B7A6CA4C(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t TaskView.init<A>(task:placeholder:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v23 = a2;
  v24 = a8;
  v26 = a4;
  v27 = a5;
  v25 = a9;
  v15 = sub_1B7A9AB60();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  v28 = 0;
  sub_1B7A98850();
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v20 = v23;
  v19[4] = v24;
  v19[5] = a10;
  v19[6] = a11;
  v19[7] = a1;
  v19[8] = v20;
  (*(v16 + 16))(v18, a3, v15);
  TaskView.init<>(_:task:placeholder:content:)(v29, &unk_1B7AA82B0, v19, v18, v26, v27, a6, a7, v25, a10);
  return (*(v16 + 8))(a3, v15);
}

uint64_t sub_1B7A6CF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  sub_1B7A9A760();
  v8[7] = sub_1B7A9A750();
  v10 = sub_1B7A9A710();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B7A6CFFC, v10, v9);
}

uint64_t sub_1B7A6CFFC()
{
  *(v0 + 80) = (*(v0 + 24))();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1B7A6D0AC;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE176D0](v4, v2, v3);
}

uint64_t sub_1B7A6D0AC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1B7A6D258;
  }

  else
  {
    v5 = sub_1B7A6D1E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B7A6D1E8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A6D258()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A6D2C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B798D338;

  return sub_1B7A6CF5C(a1, v9, v10, v4, v5, v6, v7, v8);
}

void sub_1B7A6D498()
{
  sub_1B7A6D844();
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeMetadata2();
    sub_1B7A9A100();
    sub_1B7A9AB60();
    sub_1B7A98700();
    if (v1 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B7A6D570(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = ((v4 + 8) & ~v4) + *(v3 + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v8 = ((((((((((v4 + 24) & (~v4 | 0xFFFFFFFFFFFFFF07)) + (v5 & 0xFFFFFFFFFFFFFFF8) + 16) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483646;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else if (v12 == 2)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
LABEL_5:
      v6 = *(a1 + 8);
      if (v6 >= 0xFFFFFFFF)
      {
        LODWORD(v6) = -1;
      }

      return (v6 + 1);
    }
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) ^ 0x80000000;
}

int *sub_1B7A6D6B0(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = ((v5 + 8) & ~v5) + *(v4 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = ((((((((((v5 + 24) & (~v5 | 0xFFFFFFFFFFFFFF07)) + (v6 & 0xFFFFFFFFFFFFFFF8) + 16) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v9 = a3 - 2147483646;
    if (v7)
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v11 = a2 & 0x7FFFFFFF;
    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 + 1;
    }

    if (v7)
    {
      v13 = result;
      bzero(result, v7);
      result = v13;
      *v13 = v11;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(result + v7) = v12;
      }

      else
      {
        *(result + v7) = v12;
      }
    }

    else if (v8)
    {
      *(result + v7) = v12;
    }

    return result;
  }

  v8 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v8 <= 1)
  {
    if (v8)
    {
      *(result + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v8 == 2)
  {
    *(result + v7) = 0;
    goto LABEL_28;
  }

  *(result + v7) = 0;
  if (a2)
  {
LABEL_29:
    *(result + 1) = (a2 - 1);
  }

  return result;
}

void sub_1B7A6D844()
{
  if (!qword_1EBA49CE8[0])
  {
    v0 = sub_1B7A98870();
    if (!v1)
    {
      atomic_store(v0, qword_1EBA49CE8);
    }
  }
}

unint64_t sub_1B7A6D8A4()
{
  result = sub_1B7A9AB60();
  if (v1 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A6D92C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1B7A6DA9C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2 - 1;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

unint64_t sub_1B7A6DCFC()
{
  result = qword_1EBA49D70;
  if (!qword_1EBA49D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49D78);
    sub_1B79B33A0();
    sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49D70);
  }

  return result;
}

uint64_t sub_1B7A6DDB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = *(type metadata accessor for TaskView() - 8);
  v9 = v0 + ((*(v8 + 80) + 72) & ~*(v8 + 80));

  return sub_1B7A6A924(v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B7A6DE7C(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  sub_1B7A9A100();
  v2 = sub_1B7A9AB60();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  sub_1B7A98700();
  return sub_1B7A986E0();
}

uint64_t _JetLocalizeDefaultFailed.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t JetLocalize.init(working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_getKeyPath();
  *a7 = result;
  *(a7 + 8) = 0;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  return result;
}

uint64_t sub_1B7A6E018()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t JetLocalize.body.getter(void *a1)
{
  v3 = v1[1];
  v72 = *v1;
  v73 = v3;
  v4 = v1[3];
  v6 = *v1;
  v5 = v1[1];
  v74 = v1[2];
  v75 = v4;
  v69 = v6;
  v70 = v5;
  v7 = v1[3];
  *v71 = v1[2];
  *&v71[16] = v7;
  if (sub_1B7A6E018())
  {
    type metadata accessor for _LocalizerOwner();
    sub_1B7A6FFB8(&qword_1EBA47E08, type metadata accessor for _LocalizerOwner);

    sub_1B7A97490();
    sub_1B7A974A0();
    swift_getKeyPath();
    sub_1B7A974B0();

    v8 = swift_allocObject();
    v9 = a1[2];
    v10 = a1[3];
    *(v8 + 16) = v9;
    *(v8 + 24) = v10;
    v11 = a1[4];
    v12 = a1[5];
    *(v8 + 32) = v11;
    *(v8 + 40) = v12;
    v54 = a1;
    v13 = a1[6];
    v14 = v54[7];
    *(v8 + 48) = v13;
    *(v8 + 56) = v14;
    v15 = v73;
    *(v8 + 64) = v72;
    *(v8 + 80) = v15;
    v16 = v75;
    *(v8 + 96) = v74;
    *(v8 + 112) = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = v9;
    *(v17 + 24) = v10;
    v53 = v10;
    *(v17 + 32) = v11;
    *(v17 + 40) = v12;
    *(v17 + 48) = v13;
    *(v17 + 56) = v14;
    v18 = v73;
    *(v17 + 64) = v72;
    *(v17 + 80) = v18;
    v19 = v75;
    *(v17 + 96) = v74;
    *(v17 + 112) = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = v9;
    *(v20 + 24) = v10;
    *(v20 + 32) = v11;
    *(v20 + 40) = v12;
    *(v20 + 48) = v13;
    *(v20 + 56) = v14;
    v21 = v73;
    *(v20 + 64) = v72;
    *(v20 + 80) = v21;
    v22 = v75;
    *(v20 + 96) = v74;
    *(v20 + 112) = v22;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E78);
    v23 = sub_1B7A97590();
    v56 = v12;
    v57 = sub_1B797EC34(&qword_1EBA47E80, &qword_1EBA47E78);
    WitnessTable = swift_getWitnessTable();
    sub_1B7A55184(&v58, sub_1B7A6FF1C, v8, sub_1B7A6FF30, v17, sub_1B7A6FF98, v20, &v69);
    v58 = v52;
    v59 = v23;
    *&v60 = v53;
    *(&v60 + 1) = v11;
    v61 = WitnessTable;
    *&v62 = v13;
    a1 = v54;
    *(&v62 + 1) = v14;
    v24 = type metadata accessor for _ResultView();
    v25 = swift_getWitnessTable();
    sub_1B7957EE0(&v69, v24, v25);
    v26 = *(*(v54 - 1) + 16);
    v26(v55, &v72, v54);
    v26(v55, &v72, v54);
    v26(v55, &v72, v54);
    v27 = *(*(v24 - 8) + 8);
    v27(&v69, v24);
    sub_1B7957EE0(&v58, v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788);
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    sub_1B79B5878(v55, v24);

    v27(v55, v24);
    v27(&v58, v24);
  }

  else
  {
    *&v69 = 0xD000000000000022;
    *(&v69 + 1) = 0x80000001B7AC61C0;
    sub_1B7999DD8();
    v28 = sub_1B7A98080();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = 0xD000000000000022;
    *(v35 + 24) = 0x80000001B7AC61C0;
    v58 = v28;
    v59 = v30;
    LOBYTE(v60) = v32 & 1;
    *(&v60 + 1) = v34;
    v61 = sub_1B797D598;
    *&v62 = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E78);
    v37 = sub_1B7A97590();
    v67 = a1[5];
    v68 = sub_1B797EC34(&qword_1EBA47E80, &qword_1EBA47E78);
    v38 = swift_getWitnessTable();
    *&v69 = v36;
    *(&v69 + 1) = v37;
    v70 = *(a1 + 3);
    *v71 = v38;
    *&v71[8] = *(a1 + 3);
    v39 = type metadata accessor for _ResultView();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788);
    swift_getWitnessTable();
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    sub_1B7959A28(&v58, v39, v40);
    sub_1B795A450(v58, v59, v60);
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47EA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E78);
  v42 = sub_1B7A97590();
  v43 = a1[5];
  v44 = sub_1B797EC34(&qword_1EBA47E80, &qword_1EBA47E78);
  v65 = v43;
  v66 = v44;
  v45 = swift_getWitnessTable();
  v58 = v41;
  v59 = v42;
  v60 = *(a1 + 3);
  v61 = v45;
  v62 = *(a1 + 3);
  type metadata accessor for _ResultView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788);
  v46 = sub_1B7A97B40();
  v47 = swift_getWitnessTable();
  v48 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
  v63 = v47;
  v64 = v48;
  v49 = swift_getWitnessTable();
  sub_1B7957EE0(&v69, v46, v49);
  return (*(*(v46 - 8) + 8))(&v69, v46);
}

uint64_t sub_1B7A6E978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  (*(v12 + 32))();
  sub_1B7957EE0(v11, a3, a6);
  v15 = *(v8 + 8);
  v15(v11, a3);
  sub_1B7957EE0(v14, a3, a6);
  return (v15)(v14, a3);
}

uint64_t sub_1B7A6EAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 48);
  v20 = _taskRetry(for:)(v19);
  v18(a1, v20, v21);

  sub_1B7957EE0(v13, a5, a8);
  v22 = *(v11 + 8);
  v22(v13, a5);
  sub_1B7957EE0(v16, a5, a8);
  return (v22)(v16, a5);
}

uint64_t sub_1B7A6EC0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v32 = a4;
  v34 = a5;
  v33 = sub_1B7A96C30();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v28 = a3;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E78);
  v14 = sub_1B7A97590();
  v30 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  (*(a2 + 16))(a1, v18);
  swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9A2D0();
  v21 = v28;
  v22 = v32;
  sub_1B7A98150();

  (*(v31 + 8))(v9, v33);
  (*(v29 + 8))(v13, v21);
  v23 = sub_1B797EC34(&qword_1EBA47E80, &qword_1EBA47E78);
  v35 = v22;
  v36 = v23;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v16, v14, WitnessTable);
  v25 = *(v30 + 8);
  v25(v16, v14);
  sub_1B7957EE0(v20, v14, WitnessTable);
  return (v25)(v20, v14);
}

uint64_t _JetLocalizeDefaultWorking.body.getter()
{
  v0 = sub_1B7A97660();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC10A30;
  v5 = sub_1B7A98070();
  v7 = v6;
  v12[1] = v5;
  v12[2] = v6;
  v9 = v8 & 1;
  v13 = v8 & 1;
  v14 = v10;
  sub_1B7A97650();
  sub_1B7A984D0();
  (*(v1 + 8))(v3, v0);
  sub_1B795A450(v5, v7, v9);
}

uint64_t sub_1B7A6F138()
{
  v0 = sub_1B7A97660();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC10A30;
  v5 = sub_1B7A98070();
  v7 = v6;
  v12[1] = v5;
  v12[2] = v6;
  v9 = v8 & 1;
  v13 = v8 & 1;
  v14 = v10;
  sub_1B7A97650();
  sub_1B7A984D0();
  (*(v1 + 8))(v3, v0);
  sub_1B795A450(v5, v7, v9);
}

uint64_t _JetLocalizeDefaultFailed.body.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1B7A97BD0();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49D80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(v1 + 2);
  v11 = swift_allocObject();
  v12 = *v1;
  *(v11 + 16) = *v1;
  *(v11 + 32) = v10;
  v13 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49D88);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F98);
  v15 = sub_1B7A97950();
  v16 = sub_1B797EC34(&qword_1EBA48FA0, &qword_1EBA48F98);
  v17 = sub_1B7A6FFB8(&qword_1EBA48628, MEMORY[0x1E697C4E8]);
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1B7A98730();
  sub_1B7A97BC0();
  sub_1B797EC34(qword_1EBA49D90, &qword_1EBA49D80);
  sub_1B7A6FFB8(qword_1EBA47CD0, MEMORY[0x1E697C720]);
  v18 = v21;
  sub_1B7A98110();
  (*(v22 + 8))(v5, v18);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B7A6F65C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_1B7A6F70C()
{
  v0 = sub_1B7A97950();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A98690();
  sub_1B7A97940();
  sub_1B797EC34(&qword_1EBA48FA0, &qword_1EBA48F98);
  sub_1B7A6FFB8(&qword_1EBA48628, MEMORY[0x1E697C4E8]);
  sub_1B7A980E0();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B7A6F9C4@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDC10A30;
  v3 = sub_1B7A98070();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1B7A6FB20@<X0>(uint64_t *a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1B7A985E0();

  *a1 = v2;
  return result;
}

uint64_t sub_1B7A6FBD4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1B7A97BD0();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49D80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(v1 + 2);
  v11 = swift_allocObject();
  v12 = *v1;
  *(v11 + 16) = *v1;
  *(v11 + 32) = v10;
  v13 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49D88);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F98);
  v15 = sub_1B7A97950();
  v16 = sub_1B797EC34(&qword_1EBA48FA0, &qword_1EBA48F98);
  v17 = sub_1B7A6FFB8(&qword_1EBA48628, MEMORY[0x1E697C4E8]);
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1B7A98730();
  sub_1B7A97BC0();
  sub_1B797EC34(qword_1EBA49D90, &qword_1EBA49D80);
  sub_1B7A6FFB8(qword_1EBA47CD0, MEMORY[0x1E697C720]);
  v18 = v21;
  sub_1B7A98110();
  (*(v22 + 8))(v5, v18);
  return (*(v7 + 8))(v9, v6);
}

uint64_t objectdestroy_6Tm_0()
{
  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1B7A6FFB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7A70084()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1B7A700D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B7A7011C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t objectdestroy_15Tm_1()
{

  return swift_deallocObject();
}

__n128 ActionButton.init(role:action:label:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 80) = swift_getKeyPath();
  *(a5 + 120) = 0;
  v10 = type metadata accessor for ActionButton();
  v11 = *(v10 + 44);
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + *(v10 + 48);
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = type metadata accessor for CustomLabelButtonContent();
  *(a5 + 24) = v13;
  *(a5 + 32) = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a5);
  sub_1B7A71578(a1, boxed_opaque_existential_1Tm);
  v15 = (boxed_opaque_existential_1Tm + *(v13 + 36));
  *v15 = a3;
  v15[1] = a4;
  *(a5 + 72) = *(a2 + 4);
  v17 = *a2;
  result = a2[1];
  *(a5 + 56) = result;
  *(a5 + 40) = v17;
  return result;
}

uint64_t sub_1B7A7036C(uint64_t a1)
{
  sub_1B7957820(a1, v3, &qword_1EBA47828);
  sub_1B7957820(v3, &v2, &qword_1EBA47828);
  sub_1B7A42B54();
  sub_1B7A978A0();
  return sub_1B7957888(v3, &qword_1EBA47828);
}

__n128 ActionButton.init<>(role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 80) = swift_getKeyPath();
  *(a3 + 120) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E18);
  v7 = *(v6 + 44);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + *(v6 + 48);
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(a3 + 24) = type metadata accessor for DefaultLabelButtonContent();
  *(a3 + 32) = sub_1B7A7275C(&qword_1EBA49E20, type metadata accessor for DefaultLabelButtonContent);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  v10 = sub_1B7A96FC0();
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_1Tm, a1, v10);
  result = *a2;
  v12 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v12;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

__n128 ActionButton.init<A>(_:role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v12 + 32))(v14 + v13, a1, a4);
  *(a6 + 80) = swift_getKeyPath();
  *(a6 + 120) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E28);
  v16 = *(v15 + 44);
  *(a6 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v17 = a6 + *(v15 + 48);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E30);
  *(a6 + 24) = v18;
  *(a6 + 32) = sub_1B797EC34(&qword_1EBA49E38, &qword_1EBA49E30);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a6);
  sub_1B7A71578(a2, boxed_opaque_existential_1Tm);
  v20 = (boxed_opaque_existential_1Tm + *(v18 + 36));
  *v20 = sub_1B7A7153C;
  v20[1] = v14;
  *(a6 + 72) = *(a3 + 4);
  v22 = *a3;
  result = a3[1];
  *(a6 + 56) = result;
  *(a6 + 40) = v22;
  return result;
}

uint64_t sub_1B7A70760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = sub_1B7A98080();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

__n128 ActionButton.init<>(_:role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(a7 + 80) = swift_getKeyPath();
  *(a7 + 120) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E28);
  v16 = *(v15 + 44);
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v17 = a7 + *(v15 + 48);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E30);
  *(a7 + 24) = v18;
  *(a7 + 32) = sub_1B797EC34(&qword_1EBA49E38, &qword_1EBA49E30);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a7);
  sub_1B7A71578(a5, boxed_opaque_existential_1Tm);
  v20 = (boxed_opaque_existential_1Tm + *(v18 + 36));
  *v20 = sub_1B7A715E8;
  v20[1] = v14;
  *(a7 + 72) = *(a6 + 4);
  v22 = *a6;
  result = a6[1];
  *(a7 + 56) = result;
  *(a7 + 40) = v22;
  return result;
}

uint64_t sub_1B7A709C8@<X0>(uint64_t a1@<X8>)
{

  result = sub_1B7A98070();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

__n128 ActionButton.init<>(_:role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = *a1;
  *(v8 + 32) = *(a1 + 16);
  *(a4 + 80) = swift_getKeyPath();
  *(a4 + 120) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E40);
  v10 = *(v9 + 44);
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + *(v9 + 48);
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E48);
  *(a4 + 24) = v12;
  *(a4 + 32) = sub_1B797EC34(qword_1EBA49E50, &qword_1EBA49E48);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  sub_1B7A71578(a2, boxed_opaque_existential_1Tm);
  v14 = (boxed_opaque_existential_1Tm + *(v12 + 36));
  *v14 = sub_1B7A715F8;
  v14[1] = v8;
  *(a4 + 72) = *(a3 + 4);
  v16 = *a3;
  result = a3[1];
  *(a4 + 56) = result;
  *(a4 + 40) = v16;
  return result;
}

uint64_t sub_1B7A70BE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

__n128 ActionButton.init<>(_:localizer:role:action:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = *a1;
  *(v10 + 32) = *(a1 + 16);
  sub_1B795C1E4(a2, v10 + 40);
  *(a5 + 80) = swift_getKeyPath();
  *(a5 + 120) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E28);
  v12 = *(v11 + 44);
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v13 = a5 + *(v11 + 48);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E30);
  *(a5 + 24) = v14;
  *(a5 + 32) = sub_1B797EC34(&qword_1EBA49E38, &qword_1EBA49E30);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a5);
  sub_1B7A71578(a3, boxed_opaque_existential_1Tm);
  v16 = (boxed_opaque_existential_1Tm + *(v14 + 36));
  *v16 = sub_1B7A71600;
  v16[1] = v10;
  *(a5 + 72) = *(a4 + 4);
  v18 = *a4;
  result = a4[1];
  *(a5 + 56) = result;
  *(a5 + 40) = v18;
  return result;
}

uint64_t sub_1B7A70DE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B7957820(v1 + 80, v10, &qword_1EBA45E08);
  if (v12 == 1)
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11;
  }

  else
  {
    sub_1B7A9AA10();
    v9 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1B7A70F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B7A97880();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1B7957820(v2 + *(a1 + 44), &v15 - v10, &qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1B7A99900();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1B7A9AA10();
    v14 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t (*sub_1B7A71154(uint64_t a1))()
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 48));
  v8 = *v7;
  LODWORD(v7) = *(v7 + 16);
  v9 = v8;
  v13 = v8;
  if (v7 == 1)
  {
    sub_1B7974B84(v8);
    v10 = v13;
    if (v13)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v10;
      return sub_1B7A72804;
    }
  }

  else
  {

    sub_1B7A9AA10();
    v12 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B79D7360(v9, *(&v13 + 1), 0);
    (*(v4 + 8))(v6, v3);
    v10 = v14;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t (*sub_1B7A7133C())()
{
  sub_1B7A7282C();
  sub_1B7A97890();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1B7A72898;
}

double sub_1B7A713C4@<D0>(_OWORD *a1@<X8>)
{
  sub_1B7A7282C();
  sub_1B7A97890();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1B7A71414(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1B7A72898;
    *(v4 + 24) = v3;
  }

  sub_1B7974B84(v1);
  sub_1B7A7282C();
  return sub_1B7A978A0();
}

uint64_t type metadata accessor for DefaultLabelButtonContent()
{
  result = qword_1EBA49F08;
  if (!qword_1EBA49F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7A71578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A7160C(uint64_t a1)
{
  v3 = sub_1B7A99900();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7957820(v1 + 40, &v16, &qword_1EBA47020);
  if (!v17)
  {
    return sub_1B7957888(&v16, &qword_1EBA47020);
  }

  sub_1B795C1E4(&v16, v19);
  sub_1B7A70DE0(&v14);
  if (v15)
  {
    sub_1B795C1E4(&v14, &v16);
    v7 = sub_1B7A71154(a1);
    if (v7)
    {
      v8 = v7;
      (v7)(v19);
      sub_1B7974C44(v8);
    }

    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, v17);
    sub_1B7A70F50(a1, v6);
    (*(v10 + 24))(v19, v6, v9, v10);
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v11 = &v16;
  }

  else
  {
    sub_1B7957888(&v14, &qword_1EBA47828);
    sub_1B7A99720();
    v11 = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t ActionButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = *(a1 + 24);
  v21 = *(a1 + 16);
  v4 = sub_1B7A98770();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DE0);
  v7 = sub_1B7A97590();
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v14 = sub_1B7A71B64(v2, v21, v3);
  (*(v13 + 24))(v14);

  sub_1B7957820((v2 + 5), v27, &qword_1EBA47020);
  sub_1B7957888(v27, &qword_1EBA47020);
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98480();
  (*(v22 + 8))(v6, v4);
  v16 = sub_1B797EC34(&qword_1EBA46DD8, &qword_1EBA46DE0);
  v25 = WitnessTable;
  v26 = v16;
  v17 = swift_getWitnessTable();
  sub_1B7957EE0(v9, v7, v17);
  v18 = *(v23 + 8);
  v18(v9, v7);
  sub_1B7957EE0(v12, v7, v17);
  return (v18)(v12, v7);
}

uint64_t (*sub_1B7A71B64(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for ActionButton();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1B7A727A4;
}

uint64_t sub_1B7A71CA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B7957820(v0, &v4 - v2, &qword_1EBA47018);

  return sub_1B7A98720();
}

uint64_t sub_1B7A71D90(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B7A96FC0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v2, v6);

  return MEMORY[0x1B8CA9980](v8, a1, a2);
}

uint64_t View.beforePerformingAction(perform:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_1B79884D4;
  }

  else
  {
    v5 = 0;
  }

  sub_1B7974B84(a1);
  sub_1B7A98150();

  return sub_1B7974C44(v5);
}

double ActionButton.init(role:action:label:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B795C1E4(a2, v10);
  *&result = ActionButton.init(role:action:label:)(a1, v10, a3, a4, a5).n128_u64[0];
  return result;
}

uint64_t ActionButton.init<A>(_:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, a4, v16);
  sub_1B7957820(a2, v13, &qword_1EBA47018);
  sub_1B7999E90(a3, v21);
  ActionButton.init<A>(_:role:action:)(v18, v13, v21, a4, v20, a6);
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1B7957888(a2, &qword_1EBA47018);
  return (*(v14 + 8))(a1, a4);
}

uint64_t ActionButton.init<>(_:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  sub_1B795C1E4(a6, a7 + 40);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(a7 + 80) = swift_getKeyPath();
  *(a7 + 120) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E28);
  v15 = *(v14 + 44);
  *(a7 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v16 = a7 + *(v14 + 48);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E30);
  *(a7 + 24) = v17;
  *(a7 + 32) = sub_1B797EC34(&qword_1EBA49E38, &qword_1EBA49E30);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a7);
  result = sub_1B7A71578(a5, boxed_opaque_existential_1Tm);
  v20 = (boxed_opaque_existential_1Tm + *(v17 + 36));
  *v20 = sub_1B7A72890;
  v20[1] = v13;
  return result;
}

uint64_t objectdestroy_9Tm()
{

  return swift_deallocObject();
}

void sub_1B7A72384()
{
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1B7A72540(319, &qword_1EBA49ED8, &qword_1EBA49EE0, &unk_1B7AA8910, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B7A72540(319, qword_1EDC0EC28, &qword_1EBA47828, &unk_1B7AA0240, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1B7956BC4(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1B7A72540(319, &qword_1EBA49EE8, &qword_1EBA49EF0, &unk_1B7AA8920, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7A72540(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B7A725CC()
{
  result = sub_1B7A96FC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B7A72638()
{
  sub_1B7956BC4(319, &qword_1EDC10160, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B7958DD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B7A7275C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7A7282C()
{
  result = qword_1EBA49FA0;
  if (!qword_1EBA49FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49FA0);
  }

  return result;
}

uint64_t View.onRawDeepLink(action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = swift_getKeyPath();
  v8 = 0;

  MEMORY[0x1B8CA96D0](v7, a3, &type metadata for OnRawDeepLinkViewModifier, a4);

  return j__swift_release();
}

unint64_t sub_1B7A72938()
{
  result = qword_1EBA49FA8;
  if (!qword_1EBA49FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49FA8);
  }

  return result;
}

uint64_t sub_1B7A7298C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B7A729D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A72A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FB0);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v32 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FB8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v32 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FC0);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v32 - v6;
  v8 = sub_1B7A97880();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = v2[1];
  v14 = v2[2];
  v15 = *(v2 + 24);
  if (v15 != 1)
  {
    j__swift_retain(v14);
    sub_1B7A9AA10();
    v22 = sub_1B7A97E70();
    v32 = v7;
    v23 = v13;
    v24 = v5;
    v25 = v12;
    v26 = v22;
    sub_1B7A96D30();

    v12 = v25;
    v5 = v24;
    v13 = v23;
    v7 = v32;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v9 + 8))(v11, v8);
    v16 = v39;
    if (v39)
    {
      goto LABEL_3;
    }

LABEL_5:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FC8);
    v28 = v33;
    (*(*(v27 - 8) + 16))(v33, v34, v27);
    v29 = swift_allocObject();
    *(v29 + 16) = 0xD000000000000073;
    *(v29 + 24) = 0x80000001B7AC8180;
    v30 = (v28 + *(v37 + 52));
    *v30 = sub_1B797D598;
    v30[1] = v29;
    sub_1B7957820(v28, v5, &qword_1EBA49FB0);
    swift_storeEnumTagMultiPayload();
    sub_1B7A73870();
    sub_1B797EC34(&qword_1EBA49FE0, &qword_1EBA49FB0);
    sub_1B7A97B30();
    v20 = v28;
    v21 = &qword_1EBA49FB0;
    return sub_1B7957888(v20, v21);
  }

  j__swift_retain(v14);
  v16 = v14;
  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v12;
  *(v17 + 32) = v13;
  *(v17 + 40) = v14;
  *(v17 + 48) = v15;
  v18 = &v7[*(v36 + 36)];
  sub_1B7A97360();

  j__swift_retain(v14);
  sub_1B7A9A780();
  *v18 = &unk_1B7AA8BC8;
  *(v18 + 1) = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FC8);
  (*(*(v19 - 8) + 16))(v7, v34, v19);
  sub_1B7957820(v7, v5, &qword_1EBA49FC0);
  swift_storeEnumTagMultiPayload();
  sub_1B7A73870();
  sub_1B797EC34(&qword_1EBA49FE0, &qword_1EBA49FB0);
  sub_1B7A97B30();

  v20 = v7;
  v21 = &qword_1EBA49FC0;
  return sub_1B7957888(v20, v21);
}

uint64_t sub_1B7A72F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_1B7A9A1C0();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FE8);
  v3[11] = swift_task_alloc();
  v3[12] = sub_1B7A9A760();
  v3[13] = sub_1B7A9A750();
  v6 = sub_1B7A9A710();
  v3[14] = v6;
  v3[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B7A73090, v6, v5);
}

uint64_t sub_1B7A73090()
{
  v0[3] = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BC8);
  sub_1B797EC34(&qword_1EBA49FF0, &qword_1EBA47BC8);
  sub_1B7A9A830();
  v0[16] = sub_1B7A9A750();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FF8);
  v2 = sub_1B797EC34(&qword_1EBA4A000, &qword_1EBA49FF8);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1B7A731FC;
  v4 = v0[11];

  return MEMORY[0x1EEE6D8C8](v4, v1, v2);
}

uint64_t sub_1B7A731FC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1B7A9A710();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1B7A735A4;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1B7A9A710();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1B7A73394;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1B7A73394()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1B7A733F8, v1, v2);
}

uint64_t sub_1B7A733F8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[6];
    (*(v3 + 32))(v0[10], v1, v2);
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_1B7A73630;
    v8 = v0[10];

    return v9(v8);
  }
}

uint64_t sub_1B7A735A4()
{
  *(v0 + 32) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1B7A73630()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1B7A73750, v3, v2);
}

uint64_t sub_1B7A73750()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v0[16] = sub_1B7A9A750();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FF8);
  v2 = sub_1B797EC34(&qword_1EBA4A000, &qword_1EBA49FF8);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1B7A731FC;
  v4 = v0[11];

  return MEMORY[0x1EEE6D8C8](v4, v1, v2);
}

unint64_t sub_1B7A73870()
{
  result = qword_1EBA49FD0;
  if (!qword_1EBA49FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49FC0);
    sub_1B797EC34(&qword_1EBA49FD8, &qword_1EBA49FC8);
    sub_1B7A73928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49FD0);
  }

  return result;
}

unint64_t sub_1B7A73928()
{
  result = qword_1EDC10A70;
  if (!qword_1EDC10A70)
  {
    sub_1B7A97360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A70);
  }

  return result;
}

uint64_t sub_1B7A73980()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B798D338;

  return sub_1B7A72F5C(v2, v3, v4);
}

unint64_t sub_1B7A73A3C()
{
  result = qword_1EBA4A008;
  if (!qword_1EBA4A008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA4A010);
    sub_1B7A73870();
    sub_1B797EC34(&qword_1EBA49FE0, &qword_1EBA49FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA4A008);
  }

  return result;
}

void sub_1B7A73AF4()
{
  sub_1B7A73FBC();
  if (v0 <= 0x3F)
  {
    sub_1B7A9AB60();
    if (v1 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B7A73B9C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 17) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1B7A73D2C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v11 + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v11 + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 17) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 17) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 16) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void sub_1B7A73FBC()
{
  if (!qword_1EBA4A098)
  {
    v0 = sub_1B7A98870();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA4A098);
    }
  }
}

uint64_t sub_1B7A74060(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_1B7A972B0();
  sub_1B7A98100();
}

uint64_t sub_1B7A7415C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = *(a1 + 48);
  v34 = *(a1 + 56);
  v33 = *(a1 + 64);
  v59 = v35;
  v60 = v34;
  v61 = v33;
  v32 = *(a1 + 24);
  v31 = *(a1 + 32);
  type metadata accessor for _FlowToastContentView();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0A0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CE0);
  sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  v55 = MEMORY[0x1E697EBF8];
  v3 = MEMORY[0x1E697E858];
  v52 = swift_getWitnessTable();
  v53 = sub_1B797EC34(&qword_1EBA4A0A8, &qword_1EBA4A0A0);
  v37 = v3;
  v50 = swift_getWitnessTable();
  v51 = sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0);
  swift_getWitnessTable();
  v4 = sub_1B7A98770();
  v28 = sub_1B7A97640();
  v27 = swift_getWitnessTable();
  v26 = sub_1B7A76AC4(&qword_1EBA4A0B0, MEMORY[0x1E697C248]);
  v56 = v4;
  v57 = v28;
  v58 = v27;
  v59 = v26;
  swift_getOpaqueTypeMetadata2();
  sub_1B7A9AB60();
  v5 = sub_1B7A985B0();
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0B8);
  v8 = sub_1B7A97590();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  *&v14 = *(a1 + 16);
  *(&v14 + 1) = v32;
  v40 = v31;
  v39 = v14;
  v41 = v35;
  v42 = v34;
  v15 = v36;
  v43 = v33;
  v44 = v36;
  v56 = v4;
  v57 = v28;
  v58 = v27;
  v59 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = swift_getWitnessTable();
  sub_1B7A985A0();
  sub_1B7A98A70();
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v56 = *v15;
  v57 = v17;
  LOBYTE(v58) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8);
  MEMORY[0x1B8CA9A40](&v48, v19);
  LOBYTE(v56) = v48;
  v47 = v16;
  v20 = swift_getWitnessTable();
  sub_1B7A984F0();

  (*(v29 + 8))(v7, v5);
  v21 = sub_1B797EC34(&qword_1EBA4A0C0, &qword_1EBA4A0B8);
  v45 = v20;
  v46 = v21;
  v22 = swift_getWitnessTable();
  sub_1B7957EE0(v10, v8, v22);
  v23 = *(v30 + 8);
  v23(v10, v8);
  sub_1B7957EE0(v13, v8, v22);
  return (v23)(v13, v8);
}

uint64_t sub_1B7A7479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v114 = a1;
  v110 = a9;
  v16 = sub_1B7A97640();
  v100 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a2;
  v124 = a3;
  v125 = a4;
  v126 = a5;
  v127 = a6;
  v128 = a7;
  v129 = a8;
  v102 = type metadata accessor for _FlowToastView();
  v93 = *(v102 - 8);
  v92 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v83 - v18;
  v103 = a3;
  v123 = a3;
  v124 = a4;
  v94 = a4;
  v95 = a5;
  v125 = a5;
  v126 = a6;
  v96 = a6;
  v97 = a7;
  v127 = a7;
  v128 = a8;
  v98 = a8;
  type metadata accessor for _FlowToastContentView();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0A0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CE0);
  v19 = sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  v122 = MEMORY[0x1E697EBF8];
  v20 = swift_getWitnessTable();
  v21 = sub_1B797EC34(&qword_1EBA4A0A8, &qword_1EBA4A0A0);
  v119 = v20;
  v120 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0);
  v117 = v22;
  v118 = v23;
  v24 = swift_getWitnessTable();
  v91 = v19;
  v88 = v24;
  v25 = sub_1B7A98770();
  v90 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v89 = &v83 - v26;
  v27 = swift_getWitnessTable();
  v28 = sub_1B7A76AC4(&qword_1EBA4A0B0, MEMORY[0x1E697C248]);
  v112 = v27;
  v113 = v25;
  v123 = v25;
  v124 = v16;
  v109 = v16;
  v125 = v27;
  v126 = v28;
  v111 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v107 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v87 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v86 = &v83 - v32;
  v33 = sub_1B7A9AB60();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v83 - v35;
  v105 = a2;
  v37 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v104 = &v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = OpaqueTypeMetadata2;
  v106 = sub_1B7A9AB60();
  v40 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v42 = &v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v83 - v44;
  sub_1B7A9A760();
  v46 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = v114;
  v48 = *(v114 + 8);
  v49 = *(v114 + 16);
  v123 = *v114;
  v124 = v48;
  LOBYTE(v125) = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8);
  MEMORY[0x1B8CA9A40](&v116, v50);
  if (v116 == 1)
  {
    v85 = v42;
    v51 = v102;
    (*(v34 + 16))(v36, v47 + *(v102 + 76), v33);
    v52 = v105;
    if ((*(v37 + 48))(v36, 1, v105) != 1)
    {
      (*(v37 + 32))(v104, v36, v52);
      v84 = v45;
      v56 = v93;
      (*(v93 + 16))(v101, v47, v51);
      v57 = (*(v56 + 80) + 72) & ~*(v56 + 80);
      v58 = swift_allocObject();
      v59 = v103;
      *(v58 + 2) = v52;
      *(v58 + 3) = v59;
      v83 = v37;
      v60 = v94;
      v92 = v46;
      v61 = v95;
      *(v58 + 4) = v94;
      *(v58 + 5) = v61;
      v62 = v96;
      v63 = v51;
      v64 = v97;
      *(v58 + 6) = v96;
      *(v58 + 7) = v64;
      v65 = v98;
      *(v58 + 8) = v98;
      v66 = (*(v56 + 32))(&v58[v57], v101, v63);
      MEMORY[0x1EEE9AC00](v66);
      v67 = v103;
      *(&v83 - 10) = v52;
      *(&v83 - 9) = v67;
      *(&v83 - 8) = v60;
      *(&v83 - 7) = v61;
      v68 = v111;
      v70 = v112;
      v69 = v113;
      *(&v83 - 6) = v62;
      *(&v83 - 5) = v64;
      v71 = v114;
      *(&v83 - 4) = v65;
      *(&v83 - 3) = v71;
      *(&v83 - 2) = v104;
      v72 = v89;
      sub_1B7A98730();
      v73 = v99;
      sub_1B7A97630();
      v74 = v87;
      v55 = v109;
      sub_1B7A98110();
      (*(v100 + 8))(v73, v55);
      (*(v90 + 8))(v72, v69);
      v123 = v69;
      v124 = v55;
      v45 = v84;
      v125 = v70;
      v126 = v68;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v76 = v86;
      v77 = v108;
      sub_1B7957EE0(v74, v108, OpaqueTypeConformance2);
      v78 = v107;
      v79 = *(v107 + 8);
      v79(v74, v77);
      sub_1B7957EE0(v76, v77, OpaqueTypeConformance2);
      v79(v76, v77);
      v80 = v85;
      (*(v78 + 32))(v85, v74, v77);
      (*(v78 + 56))(v80, 0, 1, v77);
      v53 = v106;
      (*(v40 + 16))(v45, v80, v106);
      v54 = *(v40 + 8);
      v54(v80, v53);
      (*(v83 + 8))(v104, v105);
      goto LABEL_8;
    }

    (*(v34 + 8))(v36, v33);
    v42 = v85;
  }

  (*(v107 + 56))(v42, 1, 1, v108);
  v53 = v106;
  (*(v40 + 16))(v45, v42, v106);
  v54 = *(v40 + 8);
  v54(v42, v53);
  v55 = v109;
LABEL_8:
  v123 = v113;
  v124 = v55;
  v125 = v112;
  v126 = v111;
  v115 = swift_getOpaqueTypeConformance2();
  v81 = swift_getWitnessTable();
  sub_1B7957EE0(v45, v53, v81);
  v54(v45, v53);
}

uint64_t sub_1B7A753AC()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8);
  sub_1B7A98810();
}

uint64_t sub_1B7A75478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v143 = a1;
  v144 = a2;
  v129 = a9;
  v128 = sub_1B7A978F0();
  v124 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v122 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1B7A975E0();
  v121 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v120 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A0C8);
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v103 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A0D0);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v103 - v19;
  v131 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v103 - v23;
  v142 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v105 = &v103 - v26;
  *&v175 = a3;
  *(&v175 + 1) = a4;
  *&v176 = a5;
  *(&v176 + 1) = a6;
  *&v177 = a7;
  *(&v177 + 1) = a8;
  *&v178 = a10;
  v148 = type metadata accessor for _FlowToastView();
  v132 = *(v148 - 8);
  v27 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v106 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v104 = &v103 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v103 - v31;
  v146 = a4;
  v147 = a7;
  *&v175 = a4;
  *(&v175 + 1) = a5;
  v141 = a6;
  *&v176 = a6;
  *(&v176 + 1) = a7;
  v139 = a8;
  *&v177 = a8;
  *(&v177 + 1) = a10;
  v145 = a10;
  v107 = type metadata accessor for _FlowToastContentView();
  v33 = sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0A0);
  v110 = v33;
  v34 = sub_1B7A97590();
  v116 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v140 = &v103 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CE0);
  v117 = v34;
  v36 = sub_1B7A97590();
  v118 = *(v36 - 8);
  v119 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v114 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v115 = &v103 - v39;
  sub_1B7A9A760();
  v113 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = v132;
  v41 = *(v132 + 16);
  v137 = v132 + 16;
  v138 = v41;
  v42 = v32;
  v41(v32, v143, v148);
  v43 = v131;
  v44 = *(v131 + 16);
  v130 = v131 + 16;
  v136 = v44;
  v45 = v105;
  v44(v105, v144, a3);
  v46 = *(v40 + 80);
  v47 = *(v43 + 80);
  v48 = (v46 + 72) & ~v46;
  v133 = v48;
  v49 = (v27 + v47 + v48) & ~v47;
  v135 = v46 | v47;
  v50 = swift_allocObject();
  v51 = v146;
  v52 = v147;
  v50[2] = a3;
  v50[3] = v51;
  v53 = v141;
  v50[4] = a5;
  v50[5] = v53;
  v134 = a5;
  v54 = v139;
  v50[6] = v52;
  v50[7] = v54;
  v50[8] = v145;
  v132 = *(v40 + 32);
  v55 = v50 + v48;
  v56 = v148;
  (v132)(v55, v42, v148);
  v57 = v54;
  v131 = *(v43 + 32);
  (v131)(v50 + v49, v45, a3);
  v58 = v104;
  v138(v104, v143, v56);
  v59 = v108;
  v136(v108, v144, a3);
  v60 = swift_allocObject();
  v61 = v146;
  v60[2] = a3;
  v60[3] = v61;
  v62 = v141;
  v60[4] = v134;
  v60[5] = v62;
  v60[6] = v147;
  v60[7] = v57;
  v60[8] = v145;
  v63 = v148;
  (v132)(v60 + v133, v58, v148);
  (v131)(v60 + v49, v59, a3);
  v64 = v106;
  v138(v106, v143, v63);
  v65 = v109;
  v136(v109, v144, a3);
  v66 = swift_allocObject();
  v67 = v146;
  v66[2] = a3;
  v66[3] = v67;
  v68 = v141;
  v66[4] = v134;
  v66[5] = v68;
  v69 = v148;
  v70 = v139;
  v66[6] = v147;
  v66[7] = v70;
  v66[8] = v145;
  (v132)(v66 + v133, v64, v69);
  (v131)(v66 + v49, v65, a3);
  *&v175 = sub_1B7A76780;
  *(&v175 + 1) = v50;
  *&v176 = sub_1B7A76798;
  *(&v176 + 1) = v60;
  *&v177 = sub_1B7A76984;
  *(&v177 + 1) = v66;
  sub_1B7A98A20();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98410();

  v161 = v171;
  v162 = v172;
  v163 = v173;
  v164 = v174;
  v157 = v167;
  v158 = v168;
  v159 = v169;
  v160 = v170;
  v155 = v165;
  v156 = v166;
  v71 = *(sub_1B7A97670() + 20);
  v72 = *MEMORY[0x1E697F468];
  v73 = sub_1B7A97970();
  v74 = v111;
  (*(*(v73 - 8) + 104))(&v111[v71], v72, v73);
  __asm { FMOV            V0.2D, #9.0 }

  *v74 = _Q0;
  v80 = v112;
  sub_1B7A989C0();
  *(v74 + *(v80 + 56)) = 256;
  sub_1B7A98A20();
  v153 = WitnessTable;
  v154 = MEMORY[0x1E697EBF8];
  v148 = MEMORY[0x1E697E858];
  v81 = v110;
  v82 = swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA4A0D8, &qword_1EBA4A0D0);
  sub_1B7A980C0();
  sub_1B7957888(v74, &qword_1EBA4A0D0);
  v181 = v161;
  v182 = v162;
  v183 = v163;
  v184 = v164;
  v177 = v157;
  v178 = v158;
  v179 = v159;
  v180 = v160;
  v175 = v155;
  v176 = v156;
  (*(*(v81 - 8) + 8))(&v175, v81);
  sub_1B7A98AE0();
  v83 = v120;
  sub_1B7A975F0();
  v84 = v122;
  sub_1B7A978E0();
  v85 = sub_1B7A76AC4(qword_1EBA4A0E0, MEMORY[0x1E697E898]);
  v86 = sub_1B7A76AC4(&qword_1EBA46C00, MEMORY[0x1E697F260]);
  v87 = v123;
  v88 = v126;
  v89 = v128;
  sub_1B7A970A0();
  (*(v124 + 8))(v84, v89);
  (*(v121 + 8))(v83, v88);
  v90 = sub_1B797EC34(&qword_1EBA4A0A8, &qword_1EBA4A0A0);
  v151 = v82;
  v152 = v90;
  v91 = v117;
  v92 = swift_getWitnessTable();
  *&v165 = v88;
  *(&v165 + 1) = v89;
  *&v166 = v85;
  *(&v166 + 1) = v86;
  swift_getOpaqueTypeConformance2();
  v93 = v114;
  v94 = v127;
  v95 = v140;
  sub_1B7A74060(v87);
  (*(v125 + 8))(v87, v94);
  (*(v116 + 8))(v95, v91);
  v96 = sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0);
  v149 = v92;
  v150 = v96;
  v97 = v119;
  v98 = swift_getWitnessTable();
  v99 = v115;
  sub_1B7957EE0(v93, v97, v98);
  v100 = *(v118 + 8);
  v100(v93, v97);
  sub_1B7957EE0(v99, v97, v98);
  v100(v99, v97);
}

uint64_t sub_1B7A761F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  v27[1] = v17;
  v27[2] = v18;
  v27[3] = v19;
  v27[4] = v20;
  v27[5] = v21;
  v27[6] = v22;
  v27[7] = v23;
  v24 = type metadata accessor for _FlowToastView();
  (*(a1 + *(v24 + 80)))(a2);
  sub_1B7957EE0(v13, a4, a7);
  v25 = *(v11 + 8);
  v25(v13, a4);
  sub_1B7957EE0(v16, a4, a7);
  return (v25)(v16, a4);
}

uint64_t sub_1B7A7636C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - v16;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v28[5] = v22;
  v28[6] = v23;
  v28[7] = v24;
  v25 = type metadata accessor for _FlowToastView();
  (*(a1 + *(v25 + 84)))(a2);
  sub_1B7957EE0(v14, a5, a8);
  v26 = *(v12 + 8);
  v26(v14, a5);
  sub_1B7957EE0(v17, a5, a8);
  return (v26)(v17, a5);
}

uint64_t sub_1B7A764E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  v27[1] = v18;
  v27[2] = v19;
  v27[3] = v20;
  v27[4] = v21;
  v27[5] = v22;
  v27[6] = v23;
  v27[7] = a9;
  v24 = type metadata accessor for _FlowToastView();
  (*(a1 + *(v24 + 88)))(a2);
  sub_1B7957EE0(v14, a6, a9);
  v25 = *(v12 + 8);
  v25(v14, a6);
  sub_1B7957EE0(v17, a6, a9);
  return (v25)(v17, a6);
}

uint64_t sub_1B7A76680()
{
  type metadata accessor for _FlowToastView();

  return sub_1B7A753AC();
}

uint64_t objectdestroy_3Tm()
{
  v8 = *(v0 + 16);
  v1 = type metadata accessor for _FlowToastView();
  v2 = *(*(v1 - 8) + 64);
  v3 = (*(*(v1 - 8) + 80) + 72) & ~*(*(v1 - 8) + 80);
  v4 = *(v8 - 8);
  v5 = *(v4 + 80);

  v6 = *(v1 + 76);
  if (!(*(v4 + 48))(v0 + v3 + v6, 1, v8))
  {
    (*(v4 + 8))(v0 + v3 + v6, v8);
  }

  (*(v4 + 8))(v0 + ((v3 + v2 + v5) & ~v5), v8);
  return swift_deallocObject();
}

uint64_t sub_1B7A7699C(uint64_t (*a1)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = *(v1 + 8);
  v10 = *(type metadata accessor for _FlowToastView() - 8);
  v11 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  return a1(&v1[v11], &v1[(v11 + *(v10 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80)], v3, v4, v5, v6, v7, v8, v9, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B7A76AC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7A76B0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A76B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v21 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A168);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47438);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  v20 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49000);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  v19 = *(a1 + 32);
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  v3 = sub_1B7A987E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = sub_1B7A97590();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1B7A97990();
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = *(a1 + 40);
  v28 = *(a1 + 56);
  v29 = v22;
  sub_1B7A987D0();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98440();
  (*(v4 + 8))(v6, v3);
  v30 = WitnessTable;
  v31 = MEMORY[0x1E697E5D8];
  v15 = swift_getWitnessTable();
  sub_1B7957EE0(v10, v7, v15);
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_1B7957EE0(v13, v7, v15);
  return (v16)(v13, v7);
}

uint64_t sub_1B7A77020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v166 = a7;
  v154 = a6;
  v175 = a8;
  v176 = a5;
  v189 = a1;
  v161 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v157 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49000);
  v164 = a4;
  v12 = sub_1B7A97590();
  v158 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v155 = &v132 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8);
  v160 = v12;
  v14 = sub_1B7A97590();
  v159 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v156 = &v132 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450);
  v162 = v14;
  v16 = sub_1B7A97590();
  v168 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v165 = &v132 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0);
  v170 = v16;
  v18 = sub_1B7A97590();
  v167 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v163 = &v132 - v19;
  v169 = v20;
  v174 = sub_1B7A97590();
  v171 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v172 = &v132 - v23;
  v143 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = a3;
  v26 = sub_1B7A97590();
  v144 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v142 = &v132 - v27;
  v146 = v28;
  v29 = sub_1B7A97590();
  v147 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v145 = &v132 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47438);
  v148 = v29;
  v31 = sub_1B7A97590();
  v150 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v149 = &v132 - v32;
  v151 = v33;
  v188 = sub_1B7A97590();
  v182 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v183 = &v132 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497C0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v186 = &v132 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v132 - v40;
  v178 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v132 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A168);
  v179 = a2;
  v45 = sub_1B7A97590();
  v133 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v132 - v46;
  v48 = sub_1B7A97590();
  v135 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v132 - v49;
  v51 = sub_1B7A97590();
  v138 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v136 = &v132 - v52;
  v134 = v53;
  v54 = sub_1B7A97590();
  v139 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v137 = &v132 - v55;
  v140 = v56;
  v57 = sub_1B7A97590();
  v180 = *(v57 - 8);
  v181 = v57;
  MEMORY[0x1EEE9AC00](v57);
  v185 = &v132 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v184 = &v132 - v60;
  sub_1B7A9A760();
  v152 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*v189)(isCurrentExecutor);
  sub_1B7A979D0();
  v62 = sub_1B7A97A10();
  (*(*(v62 - 8) + 56))(v41, 0, 1, v62);
  v63 = v179;
  v64 = v176;
  sub_1B7A982D0();
  sub_1B7957888(v41, &qword_1EBA475C8);
  (*(v178 + 8))(v44, v63);
  v178 = sub_1B7A97F70();
  v65 = *(v178 - 8);
  v177 = *(v65 + 56);
  v179 = v65 + 56;
  v66 = v186;
  v177(v186, 1, 1, v178);
  sub_1B7A97F90();
  sub_1B7957888(v66, &qword_1EBA497C0);
  v67 = sub_1B797EC34(&qword_1EBA4A170, &qword_1EBA4A168);
  v194[29] = v64;
  v194[30] = v67;
  WitnessTable = swift_getWitnessTable();
  sub_1B7A983B0();

  (*(v133 + 8))(v47, v45);
  sub_1B7A98580();
  sub_1B7A98570();

  v176 = sub_1B797EC34(&qword_1EBA47D58, &qword_1EBA47CC0);
  v194[27] = WitnessTable;
  v194[28] = v176;
  v69 = swift_getWitnessTable();
  v70 = v136;
  sub_1B7A981C0();

  (*(v135 + 8))(v50, v48);
  sub_1B7A98A20();
  v135 = sub_1B797EC34(&qword_1EBA47430, &qword_1EBA47438);
  v194[25] = v69;
  v194[26] = v135;
  v130 = v134;
  v131 = swift_getWitnessTable();
  v71 = v137;
  sub_1B7A98410();
  (*(v138 + 8))(v70, v130);
  sub_1B7A97EF0();
  v194[23] = v131;
  v194[24] = MEMORY[0x1E697EBF8];
  v72 = v140;
  v73 = swift_getWitnessTable();
  v74 = v185;
  sub_1B7A98450();
  (*(v139 + 8))(v71, v72);
  v194[21] = v73;
  v194[22] = MEMORY[0x1E697E5D8];
  v75 = v181;
  v138 = swift_getWitnessTable();
  sub_1B7957EE0(v74, v75, v138);
  v76 = *(v180 + 8);
  v139 = v180 + 8;
  v140 = v76;
  v77 = (v76)(v74, v75);
  v78 = v141;
  (*(v189 + 16))(v77);
  v79 = v142;
  v81 = v153;
  v80 = v154;
  sub_1B7A98340();
  (*(v143 + 8))(v78, v81);
  v82 = sub_1B797EC34(&qword_1EBA49018, &qword_1EBA49000);
  v194[19] = v80;
  v194[20] = v82;
  v83 = v146;
  v84 = swift_getWitnessTable();
  v85 = v145;
  sub_1B7A98500();
  (*(v144 + 8))(v79, v83);
  sub_1B7A98580();
  v86 = sub_1B797EC34(&qword_1EBA47D60, &qword_1EBA47CC8);
  v194[17] = v84;
  v194[18] = v86;
  v87 = v148;
  v88 = swift_getWitnessTable();
  v89 = v149;
  sub_1B7A981C0();

  (*(v147 + 8))(v85, v87);
  sub_1B7A97F80();
  v90 = v186;
  v177(v186, 1, 1, v178);
  sub_1B7A97F90();
  sub_1B7957888(v90, &qword_1EBA497C0);
  v194[15] = v88;
  v194[16] = v135;
  v91 = v151;
  v92 = swift_getWitnessTable();
  v93 = v187;
  sub_1B7A983B0();

  (*(v150 + 8))(v89, v91);
  v194[13] = v92;
  v194[14] = v176;
  v94 = v188;
  v151 = swift_getWitnessTable();
  sub_1B7957EE0(v93, v94, v151);
  v95 = *(v182 + 8);
  v153 = v182 + 8;
  v154 = v95;
  v96 = (v95)(v93, v94);
  v97 = v157;
  (*(v189 + 32))(v96);
  v98 = v155;
  v99 = v164;
  v100 = v166;
  sub_1B7A98340();
  (*(v161 + 8))(v97, v99);
  v194[11] = v100;
  v194[12] = v82;
  v101 = v160;
  v102 = swift_getWitnessTable();
  v103 = v156;
  sub_1B7A98500();
  (*(v158 + 8))(v98, v101);
  LODWORD(v194[0]) = sub_1B7A97C60();
  v194[9] = v102;
  v194[10] = v86;
  v104 = v162;
  v105 = swift_getWitnessTable();
  v106 = v165;
  sub_1B7A981D0();
  (*(v159 + 8))(v103, v104);
  v107 = v186;
  v177(v186, 1, 1, v178);
  sub_1B7A97F90();
  sub_1B7957888(v107, &qword_1EBA497C0);
  v108 = sub_1B797EC34(&qword_1EBA47448, &qword_1EBA47450);
  v194[7] = v105;
  v194[8] = v108;
  v109 = v170;
  v110 = swift_getWitnessTable();
  v111 = v163;
  sub_1B7A983B0();

  (*(v168 + 8))(v106, v109);
  sub_1B7A97EE0();
  v194[5] = v110;
  v194[6] = v176;
  v112 = v169;
  v113 = swift_getWitnessTable();
  v114 = v173;
  sub_1B7A98450();
  (*(v167 + 8))(v111, v112);
  v194[3] = v113;
  v194[4] = MEMORY[0x1E697E5D8];
  v115 = v174;
  v186 = swift_getWitnessTable();
  v116 = v172;
  sub_1B7957EE0(v114, v115, v186);
  v117 = v171;
  v189 = *(v171 + 8);
  (v189)(v114, v115);
  v118 = v181;
  v119 = v185;
  (*(v180 + 16))(v185, v184, v181);
  v194[0] = v119;
  v120 = v183;
  v122 = v187;
  v121 = v188;
  (*(v182 + 16))(v187, v183, v188);
  v194[1] = v122;
  (*(v117 + 16))(v114, v116, v115);
  v194[2] = v114;
  v123 = v118;
  v193[0] = v118;
  v193[1] = v121;
  v124 = v121;
  v193[2] = v115;
  v190 = v138;
  v191 = v151;
  v192 = v186;
  sub_1B7959BAC(v194, 3uLL, v193);
  v125 = v189;
  (v189)(v116, v115);
  v126 = v124;
  v127 = v154;
  v154(v120, v126);
  v128 = v140;
  v140(v184, v123);
  v125(v114, v115);
  v127(v187, v188);
  v128(v185, v123);
}

uint64_t View.impressionableLayout<A>(_:scrollViewConfiguration:itemConfiguration:position:definesParentContext:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v19 = a6;
  v18 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - v14;
  sub_1B7A9A370();
  sub_1B7A1D2A8();
  View.impressionableLayout<A>(for:impressions:scrollViewConfiguration:itemConfiguration:position:definesParentContext:)(&type metadata for ComponentModelViewID, v15, a1, a2, a3, a4 & 1, v18, v19, a7, &type metadata for ComponentModelViewID, a8);
  return sub_1B7957888(v15, &qword_1EBA45C90);
}

uint64_t View.impressionableLayoutItem(_:configuration:position:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18[-v13 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s9JetEngine14ComponentModelP01_aB8_SwiftUIE6viewIDAD0cd4ViewH0Vvg_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9A370();
  v15 = sub_1B7A1D2A8();
  View.impressionableLayoutItem<A>(itemId:impressions:position:)(v18, v14, a2, a3 & 1, a4, &type metadata for ComponentModelViewID, a5, v15, a6);
  sub_1B7957888(v14, &qword_1EBA45C90);
  return sub_1B79F9A0C(v18);
}

uint64_t sub_1B7A7880C()
{
  v7 = sub_1B7A9AA40();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B7A9AA20();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B7A98B30();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B79596F8(0, &qword_1EDC0E5F0);
  sub_1B7A98B20();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B7957C04(&qword_1EBA4A3B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A3B8);
  sub_1B797EC34(qword_1EBA4A3C0, &qword_1EBA4A3B8);
  sub_1B7A9ABA0();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1B7A9AA70();
  qword_1EBA4A178 = result;
  return result;
}

uint64_t View.impressionableLayoutItem<A>(itemId:impressions:position:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v38 = a7;
  v33 = a5;
  v34 = a8;
  v36 = a1;
  v37 = a3;
  v39 = a9;
  v40 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImpressionableLayoutItemViewModifier();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - v20;
  v22 = sub_1B7A97590();
  v35 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v32 - v24;
  (*(v14 + 16))(v17, v36, a6, v23);
  sub_1B7957820(v40, v13, &qword_1EBA45C90);
  v26 = v13;
  v27 = v37;
  sub_1B7A78D9C(v17, v26, v37, a4 & 1, a6, v21);
  v28 = v38;
  MEMORY[0x1B8CA96D0](v21, v33, v18, v38);
  (*(v19 + 8))(v21, v18);
  WitnessTable = swift_getWitnessTable();
  v41 = v28;
  v42 = WitnessTable;
  v30 = swift_getWitnessTable();
  View.impressionableClickLocation(impressionMetrics:position:)(v40, v27, a4 & 1, v22, v30);
  return (*(v35 + 8))(v25, v22);
}

uint64_t sub_1B7A78D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1B7A96C20();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ImpressionableLayoutItemViewModifier();
  sub_1B7A96C10();
  sub_1B7A792F8(v14);
  v16 = v15[12];
  *(a6 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0);
  swift_storeEnumTagMultiPayload();
  v17 = v15[13];
  *(a6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = sub_1B7A7FB60(a2, a6 + v15[9]);
  v19 = a6 + v15[10];
  *v19 = a3;
  *(v19 + 8) = a4 & 1;
  return result;
}

uint64_t View.impressionableLayout<A>(for:impressions:scrollViewConfiguration:itemConfiguration:position:definesParentContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v37 = a8;
  v35 = a7;
  v32 = a6;
  v33 = a5;
  v34 = a9;
  v29 = a3;
  v30 = a4;
  v31 = a1;
  v36 = a11;
  v28[1] = a10;
  v12 = sub_1B7A99A20();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v28 - v20;
  v22 = type metadata accessor for ImpressionableLayoutViewModifier();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v28 - v24;
  sub_1B7957820(a2, v21, &qword_1EBA45C90);
  v26 = *(v13 + 16);
  v26(v18, v29, v12);
  v26(v15, v30, v12);
  sub_1B7A791B4(v31, v21, v18, v33, v32 & 1, v15, v35, v25);
  MEMORY[0x1B8CA96D0](v25, v37, v22, v36);
  return (*(v23 + 8))(v25, v22);
}

uint64_t sub_1B7A791B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X8>)
{
  v15 = type metadata accessor for ImpressionableLayoutViewModifier();
  v16 = v15[14];
  *&a8[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  *a8 = a1;
  sub_1B7A7FB60(a2, &a8[v15[9]]);
  v17 = v15[10];
  v18 = sub_1B7A99A20();
  v19 = *(*(v18 - 8) + 32);
  v19(&a8[v17], a3, v18);
  v20 = &a8[v15[12]];
  *v20 = a4;
  v20[8] = a5 & 1;
  result = (v19)(&a8[v15[11]], a6, v18);
  a8[v15[13]] = a7;
  return result;
}

uint64_t sub_1B7A792F8(uint64_t a1)
{
  v2 = sub_1B7A96C20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1B7A986C0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1B7A793F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D70);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  v4 = sub_1B7A99900();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B797BE80(v7);
  sub_1B7A998B0();
  sub_1B7A96C20();
  sub_1B7A99920();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B7A79594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a1;
  v65 = a3;
  v5 = sub_1B7A96C20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v47 - v12;
  v66 = *(a2 + 16);
  v55 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45DB8);
  v54 = sub_1B7A97590();
  v59 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v47 - v18;
  v49 = *(a2 + 24);
  v19 = v49;
  v56 = type metadata accessor for _ImpressionableLayoutItemViewModifier();
  v51 = sub_1B7A97590();
  v60 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v57 = &v47 - v22;
  swift_getKeyPath();
  (*(v15 + 16))(&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v23 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v24 = swift_allocObject();
  v25 = v66;
  *(v24 + 16) = v66;
  *(v24 + 24) = v19;
  (*(v15 + 32))(v24 + v23, &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98320();

  v27 = v53;
  v28 = v48;
  (*(v55 + 16))(v53, v48, v25);
  v29 = v58;
  sub_1B7957820(v28 + *(a2 + 36), v58, &qword_1EBA45C90);
  v30 = v28 + *(a2 + 40);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = v61;
  sub_1B7A793F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
  v34 = v64;
  sub_1B7A986D0();
  v35 = v63;
  sub_1B797BEA8(v63);
  v71 = sub_1B7A79DB8(v27, v29, v31, v32, v33, v34, v35, v66, v49);
  v36 = sub_1B797EC34(&qword_1EDC0EB28, &qword_1EBA45DB8);
  v69 = WitnessTable;
  v70 = v36;
  v37 = v54;
  v38 = swift_getWitnessTable();
  v39 = v52;
  v40 = v50;
  MEMORY[0x1B8CA96D0](&v71, v37, v56, v38);

  (*(v59 + 8))(v40, v37);
  v41 = swift_getWitnessTable();
  v67 = v38;
  v68 = v41;
  v42 = v51;
  v43 = swift_getWitnessTable();
  v44 = v57;
  sub_1B7957EE0(v39, v42, v43);
  v45 = *(v60 + 8);
  v45(v39, v42);
  sub_1B7957EE0(v44, v42, v43);
  return (v45)(v44, v42);
}

uint64_t sub_1B7A79C7C(uint64_t a1)
{
  sub_1B7957888(a1, &qword_1EBA45D18);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ImpressionableLayoutItemViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
  sub_1B7A986D0();
  v2 = sub_1B7A96C20();
  (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_1B7A79DB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a8;
  v59 = a1;
  v60 = a7;
  v48 = a4;
  v50 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - v13;
  v15 = sub_1B7A99670();
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v23 = sub_1B7A996F0();
  v51 = *(v23 - 8);
  v52 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v62 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a5;
  sub_1B7957820(a5, v22, &qword_1EBA45D18);
  v25 = sub_1B7A96C20();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = v27(v22, 1, v25);
  v61 = a2;
  if (v28 == 1)
  {
    sub_1B7957888(v22, &qword_1EBA45D18);
    v47 = 0;
  }

  else
  {
    v47 = sub_1B7A96C00();
    (*(v26 + 8))(v22, v25);
  }

  v49 = a9;
  v53 = a6;
  sub_1B7A96C00();
  sub_1B7957820(v60, v19, &qword_1EBA45D18);
  if (v27(v19, 1, v25) == 1)
  {
    sub_1B7957888(v19, &qword_1EBA45D18);
  }

  else
  {
    sub_1B7A96C00();
    (*(v26 + 8))(v19, v25);
  }

  sub_1B7A996E0();
  sub_1B7957820(v61, v14, &qword_1EBA45C90);
  v30 = v57;
  v29 = v58;
  if ((*(v57 + 48))(v14, 1, v58) == 1)
  {
    sub_1B7957888(v14, &qword_1EBA45C90);
    v31 = type metadata accessor for LayoutItemImpressionInformation();
    v32 = v55;
    swift_getTupleTypeMetadata2();
    v33 = sub_1B7A9A680();
    v34 = sub_1B7A7F85C(v33, v32, v31, v49);

    sub_1B7957888(v60, &qword_1EBA45D18);
    (*(v26 + 8))(v53, v25);
    sub_1B7957888(v54, &qword_1EBA45D18);
    sub_1B7957888(v61, &qword_1EBA45C90);
    (*(*(v32 - 8) + 8))(v59, v32);
    v36 = v51;
    v35 = v52;
  }

  else
  {
    (*(v30 + 32))(v56, v14, v29);
    v37 = type metadata accessor for LayoutItemImpressionInformation();
    v38 = v55;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1B7A9AE30();
    swift_allocObject();
    v40 = sub_1B7A9A650();
    v42 = v41 + *(TupleTypeMetadata2 + 48);
    v43 = *(v38 - 8);
    (*(v43 + 16))(v41, v59, v38);
    (*(v30 + 16))(v42, v56, v29);
    v36 = v51;
    v44 = v42 + *(v37 + 20);
    v35 = v52;
    (*(v51 + 16))(v44, v62, v52);
    v45 = sub_1B7A2A32C(v40);
    v34 = sub_1B7A7F85C(v45, v38, v37, v49);

    sub_1B7957888(v60, &qword_1EBA45D18);
    (*(v26 + 8))(v53, v25);
    sub_1B7957888(v54, &qword_1EBA45D18);
    sub_1B7957888(v61, &qword_1EBA45C90);
    (*(v43 + 8))(v59, v38);
    (*(v57 + 8))(v56, v58);
  }

  (*(v36 + 8))(v62, v35);
  return v34;
}

uint64_t sub_1B7A7A4F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  type metadata accessor for _ImpressionableLayoutItemViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  type metadata accessor for ImpressionPreferenceKey();
  swift_getWitnessTable();
  sub_1B7A97DB0();
  v3 = sub_1B7A97590();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  v15[3] = a1;
  WitnessTable = swift_getWitnessTable();
  sub_1B7A980F0();
  v11 = swift_getWitnessTable();
  v15[1] = WitnessTable;
  v15[2] = v11;
  v12 = swift_getWitnessTable();
  sub_1B7957EE0(v6, v3, v12);
  v13 = *(v4 + 8);
  v13(v6, v3);
  sub_1B7957EE0(v9, v3, v12);
  return (v13)(v9, v3);
}

uint64_t sub_1B7A7A760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v77 = a1;
  v78 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v51[-v7];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D40);
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v51[-v8];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D78);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v51[-v9];
  v71 = sub_1B7A99900();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51[-v12];
  v14 = sub_1B7A99A20();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51[-v19];
  v56 = &v51[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v51[-v22];
  v57 = &v51[-v22];
  v24 = *(a2 + 16);
  v63 = *(a2 + 24);
  v64 = v24;
  v61 = type metadata accessor for _ImpressionableLayoutViewModifier();
  v67 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v51[-v25];
  swift_getWitnessTable();
  v59 = sub_1B7A97C30();
  v26 = sub_1B7A97590();
  v66 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v58 = &v51[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v62 = &v51[-v29];
  sub_1B7957820(v4 + *(a2 + 36), v23, &qword_1EBA45C90);
  v30 = *(v15 + 16);
  v30(v20, v4 + *(a2 + 40), v14);
  v31 = *(a2 + 44);
  v32 = v4 + *(a2 + 48);
  v55 = *v32;
  v54 = *(v32 + 8);
  v30(v17, v4 + v31, v14);
  v52 = *(v4 + *(a2 + 52));
  sub_1B797BE80(v13);
  v33 = v65;
  sub_1B7A99890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D88);
  sub_1B7A99910();
  (*(v70 + 8))(v33, v72);
  v34 = *(v69 + 8);
  v35 = v71;
  v34(v13, v71);
  v37 = v81;
  v36 = v82;
  v38 = v68;
  sub_1B797BE80(v68);
  v39 = v73;
  sub_1B7A99880();
  sub_1B7A99DB0();
  v40 = v75;
  sub_1B7A99920();
  (*(v74 + 8))(v39, v76);
  v34(v38, v35);
  v41 = v60;
  sub_1B7A7AEF0(v57, v56, v55, v54, v53, v52, v37, v60, v36, v40, v64, v63);
  v42 = v59;
  WitnessTable = swift_getWitnessTable();
  v44 = v58;
  v45 = v61;
  MEMORY[0x1B8CA96D0](v41, v42, v61, WitnessTable);
  (*(v67 + 8))(v41, v45);
  v46 = swift_getWitnessTable();
  v79 = WitnessTable;
  v80 = v46;
  v47 = swift_getWitnessTable();
  v48 = v62;
  sub_1B7957EE0(v44, v26, v47);
  v49 = *(v66 + 8);
  v49(v44, v26);
  sub_1B7957EE0(v48, v26, v47);
  return (v49)(v48, v26);
}

uint64_t sub_1B7A7AEF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = type metadata accessor for _ImpressionableLayoutViewModifier();
  v16 = v15[14];
  v17 = sub_1B7A99DB0();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  v18 = a8 + v15[15];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = (a8 + v15[16]);
  v20 = type metadata accessor for LayoutItemImpressionInformation();
  swift_getTupleTypeMetadata2();
  v21 = sub_1B7A9A680();
  sub_1B7A7F85C(v21, a11, v20, a12);

  *v19 = sub_1B7A7B12C();
  v19[1] = v22;
  v23 = (a8 + v15[17]);
  sub_1B7A9A380();
  *v23 = sub_1B7A7B18C();
  v23[1] = v24;
  sub_1B7A7FB60(a1, a8);
  v25 = v15[9];
  v26 = sub_1B7A99A20();
  v27 = *(*(v26 - 8) + 32);
  v27(a8 + v25, a2, v26);
  v28 = a8 + v15[10];
  *v28 = a3;
  *(v28 + 8) = a4 & 1;
  v27(a8 + v15[11], a5, v26);
  *(a8 + v15[12]) = a6;
  v29 = (a8 + v15[13]);
  *v29 = a7;
  v29[1] = a9;

  return sub_1B7A7FBD0(a10, a8 + v16);
}

uint64_t sub_1B7A7B12C()
{
  type metadata accessor for LayoutItemImpressionInformation();
  sub_1B7A9A3C0();
  sub_1B7A986C0();
  return v1;
}

uint64_t sub_1B7A7B18C()
{
  sub_1B7A9A8E0();
  sub_1B7A986C0();
  return v1;
}

uint64_t sub_1B7A7B1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v187 = a1;
  v188 = a3;
  swift_getWitnessTable();
  v4 = sub_1B7A97C30();
  v162 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v155 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v178 = &v151 - v7;
  WitnessTable = swift_getWitnessTable();
  v220 = v4;
  v221 = MEMORY[0x1E6981148];
  v222 = WitnessTable;
  v223 = MEMORY[0x1E6981138];
  v196 = type metadata accessor for _RequirementFailureView();
  v151 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v152 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v154 = &v151 - v10;
  v163 = sub_1B7A99DB0();
  v161 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v153 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D30);
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v151 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v158 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v182 = &v151 - v16;
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  sub_1B7A97590();
  type metadata accessor for _OnScenePhaseChange(255);
  v192 = sub_1B7A97590();
  sub_1B7A97B40();
  v17 = a2;
  v191 = a2;
  v18 = *(a2 + 16);
  v19 = *(v17 + 24);
  v20 = type metadata accessor for ImpressionPreferenceKey();
  v21 = swift_getWitnessTable();
  type metadata accessor for LayoutItemImpressionInformation();
  sub_1B7A9A3C0();
  v219 = sub_1B7957C04(&qword_1EBA4A3A0, type metadata accessor for LayoutItemImpressionInformation);
  v22 = swift_getWitnessTable();
  v176 = v20;
  v177 = v21;
  v175 = v22;
  sub_1B7A97D70();
  v23 = sub_1B7A97590();
  v24 = sub_1B7957C04(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier);
  v217 = WitnessTable;
  v218 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_1B7957C04(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  v215 = v25;
  v216 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_1B797D440();
  v213 = v27;
  v214 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_1B7957C04(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange);
  v173 = v27;
  v211 = v27;
  v212 = v30;
  v31 = swift_getWitnessTable();
  v209 = v29;
  v210 = v31;
  v32 = swift_getWitnessTable();
  v33 = v4;
  v34 = swift_getWitnessTable();
  v174 = v32;
  v207 = v32;
  v208 = v34;
  v35 = swift_getWitnessTable();
  v220 = v23;
  v221 = v18;
  v193 = v18;
  v36 = v183;
  v192 = v35;
  v222 = v35;
  v223 = v19;
  v194 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = sub_1B7A97B40();
  v181 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v179 = &v151 - v39;
  v157 = sub_1B7A97880();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v41 = &v151 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v191;
  v165 = swift_checkMetadataState();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v44 = &v151 - v43;
  v167 = swift_checkMetadataState();
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v46 = &v151 - v45;
  v189 = swift_checkMetadataState();
  v169 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v48 = &v151 - v47;
  v180 = OpaqueTypeMetadata2;
  v172 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v171 = &v151 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v168 = &v151 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v170 = &v151 - v54;
  v186 = sub_1B7A97B40();
  v185 = *(v186 - 8);
  v55 = MEMORY[0x1EEE9AC00](v186);
  v57 = &v151 - v56;
  v58 = *(v36 + v42[13]);
  v190 = v33;
  v184 = v57;
  if (v58)
  {
    v182 = v38;
    View.impressionable(_:configuration:position:definesParentContext:)(v36, v36 + v42[9], *(v36 + v42[10]), *(v36 + v42[10] + 8), *(v36 + v42[12]), v33, WitnessTable, v44);
    v59 = v36 + v42[15];
    v60 = *v59;
    v61 = *(v59 + 8);

    if ((v61 & 1) == 0)
    {
      sub_1B7A9AA10();
      v62 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      j_j__swift_release(v60, 0);
      (*(v156 + 8))(v41, v157);
      v60 = v220;
    }

    if (v60)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
    }

    else
    {
      Strong = 0;
    }

    v81 = v193;
    v82 = v194;
    v83 = sub_1B7A7C904(v36, v193, v194);
    v84 = v165;
    sub_1B79E7A50(Strong, v83, v85, v165, v173, v46);

    (*(v164 + 8))(v44, v84);
    swift_checkMetadataState();
    v86 = sub_1B7A7CA3C(v36, v81, v82);
    v88 = v87;
    v89 = swift_allocObject();
    v89[2] = v81;
    v89[3] = v82;
    v89[4] = v86;
    v89[5] = v88;
    v90 = v48;
    v91 = v167;
    sub_1B7A98270();

    (*(v166 + 8))(v46, v91);
    sub_1B7A999C0();
    v92 = sub_1B7A7CF3C(v36, v81, v82);
    v94 = v93;
    v95 = swift_allocObject();
    v95[2] = v81;
    v95[3] = v82;
    v95[4] = v92;
    v95[5] = v94;
    v96 = v168;
    v97 = v189;
    v98 = v192;
    sub_1B7A983A0();

    v99 = v81;
    v100 = v97;
    (*(v169 + 8))(v90, v97);
    v220 = v97;
    v221 = v99;
    v222 = v98;
    v223 = v82;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v102 = v170;
    v103 = v180;
    sub_1B7957EE0(v96, v180, OpaqueTypeConformance2);
    v104 = *(v172 + 8);
    v104(v96, v103);
    v105 = v171;
    sub_1B7957EE0(v102, v103, OpaqueTypeConformance2);
    v106 = swift_getWitnessTable();
    v107 = v179;
    sub_1B79B5878(v105, v103);
    v197 = OpaqueTypeConformance2;
    v198 = v106;
    v108 = v182;
    swift_getWitnessTable();
    v109 = v184;
    v110 = WitnessTable;
    sub_1B79B5878(v107, v108);
    v111 = v107;
    v112 = v193;
    (*(v181 + 8))(v111, v108);
    v104(v105, v103);
    v113 = v102;
    v76 = v110;
    v114 = v103;
    v115 = v192;
    v104(v113, v114);
    goto LABEL_17;
  }

  v64 = v158;
  v65 = WitnessTable;
  v66 = v42[14];
  v67 = v161;
  v68 = v182;
  v69 = v163;
  (*(v161 + 104))(v182, *MEMORY[0x1E69AB4F8], v163, v55);
  (*(v67 + 56))(v68, 0, 1, v69);
  v70 = *(v159 + 48);
  v71 = v36 + v66;
  v72 = v160;
  sub_1B7957820(v71, v160, &qword_1EBA45D38);
  sub_1B7957820(v68, v72 + v70, &qword_1EBA45D38);
  v73 = v67;
  v74 = *(v67 + 48);
  if (v74(v72, 1, v69) == 1)
  {
    sub_1B7957888(v182, &qword_1EBA45D38);
    v75 = v74(v72 + v70, 1, v69);
    v76 = v65;
    v77 = v193;
    v78 = v194;
    v79 = v162;
    v80 = v178;
    if (v75 == 1)
    {
      sub_1B7957888(v72, &qword_1EBA45D38);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_1B7957820(v72, v64, &qword_1EBA45D38);
  v116 = v74(v72 + v70, 1, v69);
  v76 = v65;
  v77 = v193;
  v117 = v194;
  if (v116 == 1)
  {
    sub_1B7957888(v182, &qword_1EBA45D38);
    (*(v73 + 8))(v64, v163);
    v79 = v162;
    v80 = v178;
    v78 = v117;
LABEL_13:
    sub_1B7957888(v72, &qword_1EBA45D30);
    goto LABEL_16;
  }

  v118 = v73;
  v119 = *(v73 + 32);
  v120 = v72 + v70;
  v121 = v153;
  v122 = v163;
  v119(v153, v120, v163);
  sub_1B7957C04(&qword_1EBA45DD0, MEMORY[0x1E69AB508]);
  LODWORD(v191) = sub_1B7A9A470();
  v123 = v72;
  v124 = *(v118 + 8);
  v124(v121, v122);
  sub_1B7957888(v182, &qword_1EBA45D38);
  v124(v64, v122);
  v77 = v193;
  sub_1B7957888(v123, &qword_1EBA45D38);
  v79 = v162;
  v80 = v178;
  v78 = v117;
  if (v191)
  {
LABEL_15:
    sub_1B79596F8(0, &qword_1EDC108A0);
    v125 = v38;
    if ((sub_1B7A9AB10() & 1) == 0)
    {
      v140 = v190;
      (*(v79 + 16))(v80, v187, v190);
      v141 = v152;
      _RequirementFailureView.init<>(_:_:)(v80, 0xD00000000000002CLL, 0x80000001B7AC4DB0, v140, v152);
      v142 = v196;
      v112 = v77;
      v143 = swift_getWitnessTable();
      v144 = v154;
      sub_1B7957EE0(v141, v142, v143);
      v191 = *(v151 + 8);
      (v191)(v141, v142);
      sub_1B7957EE0(v144, v142, v143);
      v220 = v189;
      v221 = v112;
      v222 = v192;
      v223 = v78;
      v145 = swift_getOpaqueTypeConformance2();
      v146 = v179;
      sub_1B7959A28(v141, v180, v142);
      v199 = v145;
      v147 = v125;
      v200 = v143;
      swift_getWitnessTable();
      v109 = v184;
      sub_1B79B5878(v146, v147);
      (*(v181 + 8))(v146, v147);
      v148 = v141;
      v115 = v192;
      v149 = v191;
      (v191)(v148, v142);
      v150 = v142;
      v100 = v189;
      (v149)(v154, v150);
      goto LABEL_18;
    }
  }

LABEL_16:
  v126 = v80;
  v127 = v190;
  sub_1B7957EE0(v187, v190, v76);
  v128 = v155;
  sub_1B7957EE0(v126, v127, v76);
  v129 = v189;
  v220 = v189;
  v221 = v77;
  v130 = v192;
  v222 = v192;
  v223 = v78;
  v131 = v77;
  v132 = swift_getOpaqueTypeConformance2();
  v133 = swift_getWitnessTable();
  v205 = v132;
  v206 = v133;
  swift_getWitnessTable();
  v109 = v184;
  sub_1B7959A28(v128, v38, v127);
  v134 = *(v79 + 8);
  v134(v128, v127);
  v115 = v130;
  v134(v178, v127);
  v100 = v129;
  v112 = v131;
LABEL_17:
  v78 = v194;
LABEL_18:
  v220 = v100;
  v221 = v112;
  v222 = v115;
  v223 = v78;
  v135 = swift_getOpaqueTypeConformance2();
  v136 = swift_getWitnessTable();
  v203 = v135;
  v204 = v136;
  v201 = swift_getWitnessTable();
  v202 = v76;
  v137 = v186;
  v138 = swift_getWitnessTable();
  sub_1B7957EE0(v109, v137, v138);
  return (*(v185 + 8))(v109, v137);
}

uint64_t (*sub_1B7A7C904(uint64_t a1, uint64_t a2, uint64_t a3))(void)
{
  v6 = type metadata accessor for _ImpressionableLayoutViewModifier();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return nullsub_1;
}

uint64_t (*sub_1B7A7CA3C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = type metadata accessor for _ImpressionableLayoutViewModifier();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1B7A803B8;
}

uint64_t sub_1B7A7CB74(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1B7A98B00();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A98B30();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B79596F8(0, &qword_1EDC0E5F0);
  v13 = sub_1B7A9AA50();
  (*(v10 + 16))(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a2 + 16);
  (*(v10 + 32))(v15 + v14, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_1B7A8044C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7A03228;
  aBlock[3] = &block_descriptor_64;
  v16 = _Block_copy(aBlock);

  sub_1B7A98B10();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1B7957C04(&qword_1EDC0EB20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA48250);
  sub_1B797EC34(&qword_1EDC0E5F8, qword_1EBA48250);
  sub_1B7A9ABA0();
  MEMORY[0x1B8CABCA0](0, v9, v6, v16);
  _Block_release(v16);

  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

uint64_t (*sub_1B7A7CF3C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = type metadata accessor for _ImpressionableLayoutViewModifier();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1B7A80114;
}

uint64_t sub_1B7A7D074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B7A9A280();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A98B00();
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1B7A98B30();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v80 = v14;
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1B7A98AF0();
  v78 = *(v79 - 1);
  MEMORY[0x1EEE9AC00](v79);
  v16 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1B7A98B50();
  v18 = *(v17 - 8);
  v95 = v17;
  v96 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v69 - v22;
  v23 = sub_1B7A96BF0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v69 - v29;
  v30 = (v3 + *(a2 + 52));
  v31 = *v30;
  if (*v30)
  {
    v76 = v28;
    v77 = v27;
    v92 = v26;
    v75 = v30[1];
    v32 = *(a2 + 16);
    swift_unknownObjectRetain();
    if (sub_1B7A9A6C0() <= 0 && (v33 = (v3 + *(a2 + 68)), v35 = *v33, v34 = v33[1], aBlock = v35, v98 = v34, v36 = v32, sub_1B7A9A8E0(), sub_1B7A98700(), sub_1B7A986D0(), v37 = sub_1B7A9A8C0(), , v38 = v37 < 1, v32 = v36, v38))
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v89 = v32;
      v74 = v31;
      aBlock = a1;
      sub_1B7A9A6E0();
      v39 = *(a2 + 24);

      swift_getWitnessTable();
      v40 = sub_1B7A9A8F0();
      v41 = a2;
      v42 = v40;
      v71 = v41;
      v43 = (v3 + *(v41 + 68));
      v90 = v3;
      v44 = v43[1];
      aBlock = *v43;
      v45 = aBlock;
      v98 = v44;
      sub_1B7A9A8E0();
      sub_1B7A98700();
      sub_1B7A986D0();
      v70 = sub_1B7A9A8B0();
      aBlock = v45;
      v98 = v44;

      sub_1B7A986D0();
      v73 = v42;
      v91 = v39;
      v69 = sub_1B7A9A8B0();

      v46 = v93;
      sub_1B7A96BD0();
      if (qword_1EBA45BA0 != -1)
      {
        swift_once();
      }

      v72 = qword_1EBA4A178;
      sub_1B7A98B40();
      *v16 = 500;
      v47 = v78;
      v48 = v79;
      (*(v78 + 104))(v16, *MEMORY[0x1E69E7F38], v79);
      MEMORY[0x1B8CA9DA0](v20, v16);
      (*(v47 + 8))(v16, v48);
      v49 = *(v96 + 8);
      v96 += 8;
      v79 = v49;
      (v49)(v20, v95);
      v50 = v82;
      v51 = v81;
      v52 = v71;
      (*(v82 + 16))(v81, v90, v71);
      v53 = v77;
      v54 = v76;
      (*(v77 + 16))(v76, v46, v92);
      v55 = (*(v50 + 80) + 40) & ~*(v50 + 80);
      v56 = (v80 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = (*(v53 + 80) + v56 + 16) & ~*(v53 + 80);
      v58 = swift_allocObject();
      v59 = v91;
      *(v58 + 2) = v89;
      *(v58 + 3) = v59;
      *(v58 + 4) = v70;
      (*(v50 + 32))(&v58[v55], v51, v52);
      v60 = &v58[v56];
      v61 = v75;
      *v60 = v74;
      *(v60 + 1) = v61;
      v62 = v92;
      (*(v53 + 32))(&v58[v57], v54, v92);
      *&v58[(v24 + v57 + 7) & 0xFFFFFFFFFFFFFFF8] = v69;
      v101 = sub_1B7A8012C;
      v102 = v58;
      aBlock = MEMORY[0x1E69E9820];
      v98 = 1107296256;
      v99 = sub_1B7A03228;
      v100 = &block_descriptor_5;
      v63 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v64 = v83;
      sub_1B7A98B10();
      v103 = MEMORY[0x1E69E7CC0];
      sub_1B7957C04(&qword_1EDC0EB20, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA48250);
      sub_1B797EC34(&qword_1EDC0E5F8, qword_1EBA48250);
      v65 = v85;
      v66 = v88;
      sub_1B7A9ABA0();
      v67 = v94;
      MEMORY[0x1B8CABC70](v94, v64, v65, v63);
      _Block_release(v63);
      (*(v87 + 8))(v65, v66);
      (*(v84 + 8))(v64, v86);
      (v79)(v67, v95);
      (*(v53 + 8))(v93, v62);

      sub_1B7A7DDB0();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1B7A9A240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E60();

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1B7A7DB3C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);
}

uint64_t sub_1B7A7DBF4()
{
  type metadata accessor for _ImpressionableLayoutViewModifier();
  type metadata accessor for LayoutItemImpressionInformation();
  sub_1B7A9A3C0();
  sub_1B7A98700();

  sub_1B7A986D0();
  sub_1B7A9A3B0();
  sub_1B7A986E0();
}

uint64_t sub_1B7A7DD08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A804FC(a1, a2);
}

uint64_t sub_1B7A7DDB0()
{
  type metadata accessor for _ImpressionableLayoutViewModifier();
  sub_1B7A9A8E0();
  sub_1B7A98700();

  return sub_1B7A986E0();
}

uint64_t sub_1B7A7DE48()
{
  sub_1B7A9A8E0();
  swift_getWitnessTable();
  sub_1B7A9A5F0();
  return sub_1B7A9A5F0();
}

uint64_t sub_1B7A7DF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, uint64_t, char *, uint64_t, uint64_t))
{
  v32 = a8;
  v44 = a1;
  v35 = a5;
  v36 = a3;
  v38 = a4;
  v37 = sub_1B7A996F0();
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v40 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B7A9A280();
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A3A8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v19 = type metadata accessor for LayoutItemImpressionInformation();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v43 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = (a2 + *(type metadata accessor for _ImpressionableLayoutViewModifier() + 64));
  v25 = *v23;
  v24 = v23[1];
  v45[0] = v25;
  v45[1] = v24;
  sub_1B7A9A3C0();
  sub_1B7A98700();
  sub_1B7A986D0();
  sub_1B7A9A3D0();

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1B7957888(v18, &qword_1EBA4A3A8);
    v26 = v39;
    sub_1B7A9A240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v45[3] = a6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v45);
    (*(*(a6 - 8) + 16))(boxed_opaque_existential_1Tm, v44, a6);
    sub_1B7A98C70();
    sub_1B7957888(v45, &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    v28 = v42;
    sub_1B7A99E60();

    (*(v41 + 8))(v26, v28);
  }

  else
  {
    sub_1B7A802F8(v18, v22);
    ObjectType = swift_getObjectType();
    sub_1B7A99A10();
    v30 = v33;
    sub_1B7A996B0();

    a9(v22, v35, v30, ObjectType, v38);
    (*(v34 + 8))(v30, v37);
    sub_1B7A8035C(v22);
  }
}

uint64_t sub_1B7A7E4F4()
{
  if (MEMORY[0x1B8CAA880]())
  {

    JUMPOUT(0x1B8CAA910);
  }

  return 0;
}

uint64_t sub_1B7A7E55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutItemImpressionInformation();
  swift_getTupleTypeMetadata2();
  v5 = sub_1B7A9A680();
  v6 = sub_1B7A7F85C(v5, a1, v4, a2);

  return v6;
}

uint64_t sub_1B7A7E5DC(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for LayoutItemImpressionInformation();
  sub_1B7A9A3C0();
  return sub_1B7A9A3B0();
}

uint64_t sub_1B7A7E69C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B7A7E55C(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

__n128 ComponentModelViewID.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t ComponentModelViewID.hashValue.getter()
{
  sub_1B7A9AF80();
  _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE8CacheKeyV4hash4intoys6HasherVz_tF_0();
  return sub_1B7A9AFA0();
}

unint64_t sub_1B7A7E84C()
{
  result = qword_1EBA4A180[0];
  if (!qword_1EBA4A180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA4A180);
  }

  return result;
}

void sub_1B7A7E8B4()
{
  swift_getMetatypeMetadata();
  sub_1B7A7FF74(319, qword_1EBA4A208, MEMORY[0x1E69AB1E8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B7A99A20();
    if (v1 <= 0x3F)
    {
      sub_1B7A7EA08();
      if (v2 <= 0x3F)
      {
        sub_1B7A7FF74(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7A7EA08()
{
  if (!qword_1EDC0FC70)
  {
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC0FC70);
    }
  }
}

void sub_1B7A7EA58()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1B7A7FF74(319, qword_1EBA4A208, MEMORY[0x1E69AB1E8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B7A7EA08();
      if (v2 <= 0x3F)
      {
        sub_1B7A7FF74(319, &qword_1EDC10128, MEMORY[0x1E69695A8], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1B7A7FFD8(319, &qword_1EDC10150, &qword_1EBA45D18, &unk_1B7A9C320, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1B7A7FF74(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1B7A7EBFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v41 = *(a3 + 16);
  v4 = *(v41 - 8);
  v5 = *(v4 + 84);
  v39 = sub_1B7A99670();
  v6 = *(v39 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v42 = v5;
  v40 = v8;
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v38 = sub_1B7A96C20();
  v43 = *(v38 - 8);
  v10 = *(v43 + 84);
  v11 = *(v43 + 64);
  if (v10 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v43 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(sub_1B7A99900() - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v6 + 64);
  if (!v7)
  {
    ++v16;
  }

  if (v10)
  {
    v17 = v11;
  }

  else
  {
    v17 = v11 + 1;
  }

  if (v17 <= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v6 + 80);
  v20 = *(v4 + 64) + v19;
  v21 = v16 + 7;
  v22 = a1;
  v23 = *(v43 + 80) & 0xF8 | 7;
  v24 = v11 + 7;
  if (a2 > v13)
  {
    v25 = *(v14 + 80) & 0xF8 | 7;
    v26 = v15 + ((v18 + v25 + (((v24 & 0xFFFFFFFFFFFFFFF8) + v23 + ((v23 + ((v21 + (v20 & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v23) + 8) & ~v23) + 1) & ~v25) + 1;
    v27 = 8 * v26;
    if (v26 > 3)
    {
      goto LABEL_26;
    }

    v29 = ((a2 - v13 + ~(-1 << v27)) >> v27) + 1;
    if (HIWORD(v29))
    {
      v28 = *(a1 + v26);
      if (v28)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v29 <= 0xFF)
      {
        if (v29 < 2)
        {
          goto LABEL_44;
        }

LABEL_26:
        v28 = *(a1 + v26);
        if (!*(a1 + v26))
        {
          goto LABEL_44;
        }

LABEL_33:
        v30 = (v28 - 1) << v27;
        if (v26 > 3)
        {
          v30 = 0;
        }

        if (v26)
        {
          if (v26 > 3)
          {
            LODWORD(v26) = 4;
          }

          if (v26 > 2)
          {
            if (v26 == 3)
            {
              LODWORD(v26) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v26) = *a1;
            }
          }

          else if (v26 == 1)
          {
            LODWORD(v26) = *a1;
          }

          else
          {
            LODWORD(v26) = *a1;
          }
        }

        return v13 + (v26 | v30) + 1;
      }

      v28 = *(a1 + v26);
      if (*(a1 + v26))
      {
        goto LABEL_33;
      }
    }
  }

LABEL_44:
  if (v42 == v13)
  {
    v31 = v41;
    v32 = *(v4 + 48);
    v33 = v42;
LABEL_46:

    return v32(v22, v33, v31);
  }

  v35 = (a1 + v20) & ~v19;
  if (v40 == v13)
  {
    if (v7 >= 2)
    {
      v36 = (*(v6 + 48))(v35, v7, v39);
      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v22 = (((v21 + v35) & 0xFFFFFFFFFFFFFFF8) + v23 + 9) & ~v23;
  if (v10 >= 0x7FFFFFFE)
  {
    v32 = *(v43 + 48);
    v33 = v10;
    v31 = v38;
    goto LABEL_46;
  }

  v37 = *((v24 + v22) & 0xFFFFFFFFFFFFFFF8);
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  if ((v37 + 1) >= 2)
  {
    return v37;
  }

  else
  {
    return 0;
  }
}

void sub_1B7A7F014(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v42 = *(a4 + 16);
  v4 = *(v42 - 8);
  v41 = v4;
  v5 = *(v4 + 84);
  v39 = sub_1B7A99670();
  v6 = *(v39 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v43 = v5;
  v40 = v8;
  if (v8 > v5)
  {
    v5 = v8;
  }

  v38 = sub_1B7A96C20();
  v44 = *(v38 - 8);
  v9 = *(v44 + 84);
  v10 = *(v44 + 64);
  if (v9 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v44 + 84);
  }

  if (v11 <= v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = v11;
  }

  v13 = 0;
  v14 = *(sub_1B7A99900() - 8);
  v15 = 8;
  if (*(v14 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v14 + 64);
  }

  v17 = *(v6 + 64);
  if (!v7)
  {
    ++v17;
  }

  v18 = *(v6 + 80);
  v19 = *(v4 + 64) + v18;
  v20 = v17 + 7;
  v21 = *(v44 + 80) & 0xF8 | 7;
  v22 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9)
  {
    v23 = v10;
  }

  else
  {
    v23 = v10 + 1;
  }

  if (v23 > 8)
  {
    v15 = v23;
  }

  v24 = *(v14 + 80) & 0xF8 | 7;
  v25 = v16 + ((v15 + v24 + ((v22 + v21 + ((v21 + ((v17 + 7 + (v19 & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v21)) & ~v21) + 1) & ~v24) + 1;
  if (a3 > v12)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v12 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v26))
      {
        v13 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v13 = v27;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v12 < a2)
  {
    v28 = ~v12 + a2;
    if (v25 < 4)
    {
      v29 = (v28 >> (8 * v25)) + 1;
      if (v25)
      {
        v31 = v28 & ~(-1 << (8 * v25));
        bzero(a1, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v31;
            if (v13 > 1)
            {
LABEL_65:
              if (v13 == 2)
              {
                *&a1[v25] = v29;
              }

              else
              {
                *&a1[v25] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v13 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v13 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v13 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v13)
    {
      a1[v25] = v29;
    }

    return;
  }

  v30 = a1;
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v25] = 0;
  }

  else if (v13)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v43 == v12)
  {
    v32 = v42;
    v33 = *(v41 + 56);
    v34 = a2;
    v35 = v43;
    goto LABEL_52;
  }

  v30 = &a1[v19] & ~v18;
  if (v40 == v12)
  {
    v33 = *(v6 + 56);
    v34 = a2 + 1;
    v35 = v7;
    v32 = v39;
LABEL_52:

    goto LABEL_54;
  }

  v36 = ((((v20 + v30) & 0xFFFFFFFFFFFFFFF8) + v21 + 9) & ~v21);
  if (v11 >= a2)
  {
    if (v9 < 0x7FFFFFFE)
    {
      v37 = ((v36 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v37 = 0;
        *v37 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v37 = a2;
      }

      return;
    }

    v33 = *(v44 + 56);
    v30 = (((v20 + v30) & 0xFFFFFFFFFFFFFFF8) + v21 + 9) & ~v21;
    v34 = a2;
    v35 = v9;
    v32 = v38;

LABEL_54:
    v33(v30, v34, v35, v32);
    return;
  }

  if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    bzero(((((v20 + v30) & 0xFFFFFFFFFFFFFFF8) + v21 + 9) & ~v21), v22);
    *v36 = ~v11 + a2;
  }
}