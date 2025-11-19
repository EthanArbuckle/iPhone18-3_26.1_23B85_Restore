uint64_t objectdestroy_48Tm()
{
  v1 = type metadata accessor for ContentUnavailableView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));
  sub_1B7A41F20(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  if (*(v2 + 56))
  {
  }

  sub_1B795AE10(*(v2 + 96), *(v2 + 104));
  j__swift_release();
  v3 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1B7A97040();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  j__swift_release();
  sub_1B795AE1C(*(v2 + *(v1 + 96)), *(v2 + *(v1 + 96) + 8));
  return swift_deallocObject();
}

void sub_1B7A42F90()
{
  v1 = *(type metadata accessor for ContentUnavailableView() - 8);
  v2 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  sub_1B7A3BE54(v2);
}

uint64_t sub_1B7A4309C()
{
  swift_getErrorValue();
  if (sub_1B7A39630(v3))
  {
    if (qword_1EDC107C8 != -1)
    {
      swift_once();
    }

    v0 = *(off_1EDC107D0 + 2);
    os_unfair_lock_lock(v0 + 5);
    os_unfair_lock_unlock(v0 + 5);
  }

  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC10A30;
  return sub_1B7A98070();
}

unint64_t sub_1B7A43224()
{
  result = qword_1EBA49060;
  if (!qword_1EBA49060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49060);
  }

  return result;
}

unint64_t sub_1B7A43288()
{
  result = qword_1EDC10168;
  if (!qword_1EDC10168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10168);
  }

  return result;
}

unint64_t sub_1B7A432EC()
{
  result = qword_1EDC0FD88;
  if (!qword_1EDC0FD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD8);
    sub_1B7A4232C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD88);
  }

  return result;
}

BOOL _s18_JetEngine_SwiftUI24ShelfScrollGeometryProxyV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  v5 = a1[4].f64[0];
  v4 = a1[4].f64[1];
  v7 = a2[4].f64[0];
  v6 = a2[4].f64[1];
  v8 = sub_1B7A96FD0();
  result = 0;
  if ((v8 & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])), xmmword_1B7AA53C0)) & 0xF) == 0)
  {
    return v4 == v6 && v5 == v7;
  }

  return result;
}

uint64_t EnvironmentValues.presentedBy.getter()
{
  sub_1B7A434D4();

  return sub_1B7A97890();
}

unint64_t sub_1B7A434D4()
{
  result = qword_1EDC100B0;
  if (!qword_1EDC100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC100B0);
  }

  return result;
}

uint64_t sub_1B7A43528@<X0>(_BYTE *a1@<X8>)
{
  sub_1B7A434D4();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t View.presentedBy(_:)()
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t PresentationSource.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

unint64_t sub_1B7A436C4()
{
  result = qword_1EBA49068;
  if (!qword_1EBA49068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49068);
  }

  return result;
}

unint64_t sub_1B7A43728()
{
  result = qword_1EBA481B0;
  if (!qword_1EBA481B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA481B0);
  }

  return result;
}

uint64_t sub_1B7A437A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A4380C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1B7A4380C()
{
  result = qword_1EBA49070[0];
  if (!qword_1EBA49070[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46618);
    sub_1B7A436C4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA49070);
  }

  return result;
}

uint64_t sub_1B7A43890()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B7A4390C(uint64_t a1)
{
  v2 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1B79EB840(a1, &v9 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B79EB840(v7, v4);

  sub_1B7A96F30();
  return sub_1B79DE150(v7);
}

uint64_t sub_1B7A43A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v50 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49118);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49120);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49128);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA490F8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49130);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49108);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49100);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v24 = *(v22 + 16);
  v48 = &v39 - v25;
  v49 = a1;
  v24(v23);
  sub_1B7A4496C(v52, v53);
  if (!v54)
  {
    sub_1B7957888(v53, &qword_1EBA47828);
    (*(v18 + 56))(v16, 1, 1, v17);
    v28 = v17;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49150);
  v26 = swift_dynamicCast();
  (*(v18 + 56))(v16, v26 ^ 1u, 1, v17);
  v27 = (*(v18 + 48))(v16, 1, v17);
  v28 = v17;
  if (v27 == 1)
  {
LABEL_5:
    sub_1B7957888(v16, &qword_1EBA49130);
    v29 = v48;
    goto LABEL_6;
  }

  sub_1B7A449DC(v16, v20);
  (v24)(v13, v20, v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  v29 = v48;
  sub_1B7A99490();
  sub_1B7957888(v20, &qword_1EBA49108);
LABEL_6:
  v30 = v52;
  if (*(v52 + 24))
  {
    goto LABEL_14;
  }

  sub_1B7A98FC0();
  if ((sub_1B7A99470() & 1) == 0)
  {
    v54 = sub_1B7A99690();
    v55 = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_1Tm(v53);
    sub_1B7A99680();
    sub_1B7A99300();
    v31 = v45;
    sub_1B7A99D60();
    sub_1B797EC34(&qword_1EBA49138, &qword_1EBA49118);
    v32 = v47;
    sub_1B7A99480();
    (*(v46 + 8))(v31, v32);
  }

  if (*(v30 + 24))
  {
    goto LABEL_14;
  }

  sub_1B7A99150();
  if ((sub_1B7A99470() & 1) == 0)
  {
    sub_1B7A99300();
    v33 = v42;
    sub_1B7A99D90();
    sub_1B797EC34(&qword_1EBA49140, &qword_1EBA49120);
    v34 = v44;
    sub_1B7A99480();
    (*(v43 + 8))(v33, v34);
  }

  if (*(v30 + 24) || (sub_1B7A98D60(), (sub_1B7A99470() & 1) != 0))
  {
LABEL_14:
    (*(v22 + 8))(v49, v21);
  }

  else
  {
    sub_1B7A99300();
    v37 = v39;
    sub_1B7A99C20();
    sub_1B797EC34(&qword_1EBA49148, &qword_1EBA49128);
    v38 = v41;
    sub_1B7A99480();
    (*(v22 + 8))(v49, v21);
    (*(v40 + 8))(v37, v38);
  }

  sub_1B7957888(v30, &qword_1EBA47828);
  v35 = v50;
  result = (*(v22 + 32))(v50, v29, v21);
  *(v35 + *(v28 + 28)) = v51;
  return result;
}

__n128 AlertActionImplementation.init<A>(following:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)(uint64_t a1, uint64_t a2)@<X8>)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = v12;
  result = *(a1 + 1);
  *(v13 + 56) = result;
  *a6 = sub_1B7A44628;
  a6[1] = v13;
  return result;
}

uint64_t sub_1B7A441F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a7;
  v40 = a8;
  *(&v36 + 1) = a4;
  v37 = a5;
  *&v36 = a3;
  v38 = a9;
  v11 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA490F8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49100);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - v25;
  v35 = a2;
  sub_1B7A99210();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1B7957888(v19, &qword_1EBA490F8);
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
  }

  else
  {
    (*(v21 + 32))(v26, v19, v20);
    (*(v21 + 16))(v23, v26, v20);
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    *(&v44 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49108);
    v45 = sub_1B797EC34(&qword_1EBA49110, &qword_1EBA49108);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v43);
    v28 = v35;

    sub_1B7A43A08(v23, v28, &v46, boxed_opaque_existential_1Tm);
    (*(v21 + 8))(v26, v20);
  }

  v46 = v43;
  v47 = v44;
  v48 = v45;
  v43 = v36;
  *&v44 = v37;
  v29 = type metadata accessor for FlowAuthority();
  v30 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](&v42, v30);
  v41 = v42;
  sub_1B7A2A3A0(v29);

  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820) + 48);
  v32 = sub_1B7A99F50();
  (*(*(v32 - 8) + 16))(v16, a1, v32);
  sub_1B7A4496C(&v46, &v16[v31]);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B79EB840(v16, v13);
  sub_1B7A96F30();
  sub_1B79DE150(v16);
  return sub_1B7957888(&v46, &qword_1EBA47828);
}

uint64_t AlertActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  sub_1B7A9A760();
  *(v4 + 56) = sub_1B7A9A750();
  v6 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A44700, v6, v5);
}

uint64_t sub_1B7A44700()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v2(v3, v1);
  v5 = *MEMORY[0x1E69AB010];
  v6 = sub_1B7A98FA0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1B7A447F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B798D338;

  return AlertActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_1B7A448AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE17320](a1, a2, a3, WitnessTable);
}

uint64_t sub_1B7A44918()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A4496C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A449DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49108);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 FlowView.init(following:tabLabels:tabSectionLabels:destinations:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = *a1;
  result = *(a1 + 8);
  *(a8 + 8) = result;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  return result;
}

void *FlowView.init<>(following:destinations:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  sub_1B7A9A160();
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  result[6] = a8;
  *a9 = v16;
  a9[1] = v17;
  a9[2] = v18;
  a9[3] = nullsub_1;
  a9[4] = result;
  a9[5] = a2;
  a9[6] = a3;
  a9[7] = sub_1B7A45C10;
  a9[8] = 0;
  return result;
}

BOOL sub_1B7A44B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = a3;
  type metadata accessor for FlowAuthority();
  v3 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v6, v3);
  sub_1B7A8FC14();

  type metadata accessor for FlowStackTabsAuthority.Tab();
  v4 = sub_1B7A9A6C0();

  return v4 == 1;
}

uint64_t sub_1B7A44C74()
{
  type metadata accessor for FlowAuthority();
  v0 = sub_1B7A98870();
  return MEMORY[0x1B8CA9A40](v0);
}

uint64_t FlowView.customPresentation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 16);
  v23[0] = *v4;
  v23[1] = v10;
  v12 = *(v4 + 32);
  v11 = *(v4 + 40);
  v13 = *(v4 + 48);
  v27 = *(v4 + 56);
  v24 = v12;
  v25 = v11;
  v26 = v13;
  v20(v11, v13, v14, v15, v16, v17, v18, v19, *&v23[0]);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v9, a3, a4, WitnessTable);
  return (*(v7 + 8))(v9, a4);
}

uint64_t FlowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = *(a1 + 16);
  v56 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v53 = *(a1 + 48);
  v54 = v56.i64[1];
  *v65 = v4;
  v7 = v4;
  *&v65[8] = vdupq_laneq_s64(v56, 1);
  *&v65[24] = v5;
  *&v66 = v53;
  v8 = v5;
  v45 = v6;
  *(&v66 + 1) = v6;
  *&v67 = v6;
  v49 = type metadata accessor for FlowStack();
  v9 = *(a1 + 56);
  v46 = v7;
  WitnessTable = swift_getWitnessTable();
  *v65 = v7;
  v50 = v8;
  v51 = v56.i64[0];
  *&v65[8] = v56.i64[0];
  *&v65[16] = v49;
  *&v65[24] = v8;
  *&v66 = v53;
  *(&v66 + 1) = v9;
  *&v67 = WitnessTable;
  v10 = type metadata accessor for FlowStackTabView();
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v43 = (&v38 - v11);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for DataObjectBox();
  sub_1B7A9AB60();
  v44 = sub_1B7A97DF0();
  v12 = sub_1B7A97590();
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v38 - v15;
  v16 = *(v2 + 16);
  v17 = *(v2 + 48);
  v66 = *(v2 + 32);
  v67 = v17;
  v18 = *(v2 + 16);
  *v65 = *v2;
  *&v65[16] = v18;
  v19 = *(v2 + 48);
  v62 = v66;
  v63 = v19;
  v68 = *(v2 + 64);
  v64 = *(v2 + 64);
  v60 = *v65;
  v61 = v16;
  sub_1B7A44C74();
  v20 = *&v65[24];
  v21 = v66;
  v22 = v68;
  v39 = *(&v67 + 1);
  v40 = v59[9];
  v23 = swift_allocObject();
  *&v24 = v9;
  v25 = v45;
  *(&v24 + 1) = v45;
  *(v23 + 32) = v24;
  *(v23 + 16) = v56;
  v26 = v67;
  *(v23 + 80) = v66;
  *(v23 + 96) = v26;
  *(v23 + 112) = v68;
  v27 = *&v65[16];
  *(v23 + 48) = *v65;
  *(v23 + 64) = v27;

  (*(*(a1 - 8) + 16))(v59, v65, a1);
  v28 = v43;
  sub_1B7A068E4(v40, v20, v21, v39, v22, sub_1B7A454E0, v23, v43);
  v29 = *(&v66 + 1);
  v30 = v67;
  v31 = swift_getWitnessTable();
  v32 = v41;
  sub_1B7A003E0(v46, v29, v30, v10, v46, v54, v31, v50, v53, v25);
  (*(v52 + 8))(v28, v10);
  v33 = swift_getWitnessTable();
  v57 = v31;
  v58 = v33;
  v34 = swift_getWitnessTable();
  v35 = v42;
  sub_1B7957EE0(v32, v12, v34);
  v36 = *(v48 + 8);
  v36(v32, v12);
  sub_1B7957EE0(v35, v12, v34);
  return (v36)(v35, v12);
}

uint64_t sub_1B7A452C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a2;
  v12 = *(a3 + 40);
  v13 = *(a3 + 48);

  sub_1B7A4CE28(a2, a1, v12, v13, a5, a7, v23);
  v24 = v23[0];
  *v22 = v23[0];
  *&v22[16] = v23[1];
  *&v22[32] = v23[2];
  v18 = *(v11 + 80);
  *&v19 = a5;
  *(&v19 + 1) = a5;
  v20 = *(v11 + 88);
  v21 = a7;
  v14 = type metadata accessor for FlowStack();
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v22, v14, WitnessTable);
  type metadata accessor for FlowStackAuthority();
  swift_getWitnessTable();
  v16 = sub_1B7A974C0();
  (*(*(v16 - 8) + 8))(&v24, v16);

  *v22 = v18;
  *&v22[8] = v19;
  *&v22[24] = v20;
  *&v22[40] = v21;
  sub_1B7957EE0(v22, v14, WitnessTable);
}

__n128 FlowView.init(following:tabLabels:destinations:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *a1;
  result = *(a1 + 8);
  *(a6 + 8) = result;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  *(a6 + 56) = sub_1B7A45C10;
  *(a6 + 64) = 0;
  return result;
}

uint64_t FlowOcclusion.debugDescription.getter(char a1)
{
  if (a1)
  {
    v1 = sub_1B7988144(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1B7988144((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0x74656568732ELL;
    *(v4 + 5) = 0xE600000000000000;
  }

  sub_1B7A9AC50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49158);
  sub_1B7A4569C();
  v5 = sub_1B7A9A430();
  v7 = v6;

  MEMORY[0x1B8CAB750](v5, v7);

  MEMORY[0x1B8CAB750](10589, 0xE200000000000000);
  return 0x6C63634F776F6C46;
}

unint64_t sub_1B7A4569C()
{
  result = qword_1EBA49160;
  if (!qword_1EBA49160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49160);
  }

  return result;
}

uint64_t sub_1B7A45700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B7A45BD8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B7A45740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A45A1C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.flowOcclusion.getter()
{
  sub_1B7A458C0();
  sub_1B7A97890();
  return v1;
}

uint64_t sub_1B7A457E0@<X0>(void *a1@<X8>)
{
  sub_1B7A458C0();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

BOOL EnvironmentValues.isAtFlowTabRoot.getter()
{
  sub_1B7A434D4();
  sub_1B7A97890();
  return v1 == 3;
}

unint64_t sub_1B7A458C0()
{
  result = qword_1EBA49168;
  if (!qword_1EBA49168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49168);
  }

  return result;
}

unint64_t sub_1B7A4596C()
{
  result = qword_1EBA49170;
  if (!qword_1EBA49170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49170);
  }

  return result;
}

unint64_t sub_1B7A459C4()
{
  result = qword_1EBA49178;
  if (!qword_1EBA49178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49178);
  }

  return result;
}

unint64_t sub_1B7A45A1C()
{
  result = qword_1EBA49180;
  if (!qword_1EBA49180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49180);
  }

  return result;
}

unint64_t sub_1B7A45A74()
{
  result = qword_1EBA49188[0];
  if (!qword_1EBA49188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA49188);
  }

  return result;
}

uint64_t sub_1B7A45AC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A45B04(uint64_t a1, int a2)
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

uint64_t sub_1B7A45B4C(uint64_t result, int a2, int a3)
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

uint64_t sub_1B7A45BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t NSBundle.displayName.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = sub_1B7A9A480();
  v9 = [v1 objectForInfoDictionaryKey_];

  if (v9)
  {
    sub_1B7A9AB80();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      return v19;
    }
  }

  else
  {
    sub_1B7957888(&v22, &qword_1EBA46B50);
  }

  v10 = sub_1B7A9A480();
  v11 = [v1 objectForInfoDictionaryKey_];

  if (v11)
  {
    sub_1B7A9AB80();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      return v19;
    }
  }

  else
  {
    sub_1B7957888(&v22, &qword_1EBA46B50);
  }

  v13 = [v1 executableURL];
  if (v13)
  {
    v14 = v13;
    sub_1B7A96B60();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_1B7A96B90();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v4, v15, 1, v16);
  sub_1B7A28570(v4, v7);
  if ((*(v17 + 48))(v7, 1, v16) == 1)
  {
    sub_1B7957888(v7, &qword_1EBA47AF8);
    return 0;
  }

  else
  {
    v18 = sub_1B7A96B40();
    (*(v17 + 8))(v7, v16);
    return v18;
  }
}

id static NSBundle.jetResources.getter()
{
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC10A30;

  return v1;
}

double sub_1B7A46004@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = v10 >> 5;
  if (v10 >> 5 > 2)
  {
    if (v11 == 3)
    {
      if (v5 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = *v2;
      }

      *a2 = v16;
      *(a2 + 8) = v4;
      *(a2 + 16) = v6;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 96;
    }

    else
    {
      if (v11 == 4)
      {
        if (v5 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = *v2;
        }

        *a2 = v13;
        *(a2 + 8) = v4;
        *(a2 + 16) = v6;
        *(a2 + 24) = v7;
        *(a2 + 32) = v9;
        *(a2 + 40) = v8;
        *(a2 + 48) = v10 & 1 | 0x80;
        goto LABEL_8;
      }

      if (v5 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = *v2;
      }

      *a2 = v18;
      *(a2 + 8) = v4;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7 & 1;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = -96;
    }
  }

  else
  {
    if (!v11)
    {
      if (v5 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = *v2;
      }

      *a2 = v15;
      *(a2 + 8) = v4;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      goto LABEL_8;
    }

    if (v11 == 1)
    {
      if (v5 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = *v2;
      }

      *a2 = v12;
      *(a2 + 8) = v4;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7;
      *(a2 + 32) = v9;
      *(a2 + 40) = v8;
      *(a2 + 48) = 32;
LABEL_8:
      sub_1B7A16CBC(v4, v6, v7);
      return result;
    }

    if (a1)
    {
      v17 = 1;
    }

    else if (v5 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = *v2;
    }

    *a2 = v17;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    *(a2 + 48) = 64;
  }

  return result;
}

void ShelfGridItemWidth.resolve(using:)(uint64_t *a1)
{
  v3 = sub_1B7A971B0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28[-v9];
  v11 = a1[1];
  v12 = a1[3];
  v13 = *(a1 + 32);
  v14 = a1[5];
  v15 = *(a1 + 48);
  v16 = a1[9];
  v17 = *(a1 + 80);
  v18 = *v1;
  if (*(v1 + 16) <= 1u)
  {
    if (!*(v1 + 16))
    {
      return;
    }

    if (v18 > 0.0)
    {
      if (a1[10])
      {
        v22 = v7;
        v23 = v8;
        sub_1B7A971A0();
        sub_1B7A971A0();
        sub_1B7A97190();
        v24 = *(v23 + 8);
        v24(v5, v22);
        v24(v10, v22);
      }

      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (*(v1 + 16) != 2)
  {
    v25 = a1[2];
    v30 = *a1;
    v31 = v30;
    v32 = v11;
    v33 = v25;
    v34 = v12;
    v35 = v13;
    *v36 = *(a1 + 33);
    *&v36[3] = *(a1 + 9);
    v37 = v14;
    v38 = v15;
    *v39 = *(a1 + 49);
    *&v39[15] = a1[8];
    v40 = v16;
    v41 = v17;
    (*&v18)(v42, &v31);
    v26 = v42[0];
    v27 = v42[1];
    v29 = v43;
    v31 = v30;
    v32 = v11;
    v33 = v25;
    v34 = v12;
    v35 = v13;
    *v36 = *(a1 + 33);
    *&v36[3] = *(a1 + 9);
    v37 = v14;
    v38 = v15;
    *v39 = *(a1 + 49);
    *&v39[15] = a1[8];
    v40 = v16;
    v41 = v17;
    ShelfGridItemWidth.resolve(using:)(&v31);
    sub_1B7A16D08(v26, v27, v29);
    return;
  }

  if (v18 <= 0.0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a1[10])
  {
    v19 = v7;
    v20 = v8;
    sub_1B7A971A0();
    sub_1B7A971A0();
    sub_1B7A97190();
    v21 = *(v20 + 8);
    v21(v5, v19);
    v21(v10, v19);
  }
}

uint64_t sub_1B7A46488(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  v5 = *v3;
  v6 = *(v3 + 48) >> 5;
  if (v6 > 2)
  {
    if (v6 != 4)
    {
      goto LABEL_9;
    }

    if (v5 == 1)
    {
      return 0;
    }

LABEL_29:
    if (!__OFADD__(result, 1))
    {
      if (v5)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v5 != -1)
        {
          return (result + 1) % v5 != 0;
        }

        goto LABEL_42;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (!v6)
  {
    if (v5 == 1)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (v6 == 1)
  {
    if (v5 == 1)
    {
      return 0;
    }

    goto LABEL_29;
  }

LABEL_9:
  if (v5 == 1)
  {
    v5 = a2 - 1;
    if (!__OFSUB__(a2, 1))
    {
      return v5 > result;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v7 = ceil(a2 / v5);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v4 == 2 || (v4 & 1) != 0)
  {
LABEL_24:
    v9 = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
      if ((v9 * v5) >> 64 == (v9 * v5) >> 63)
      {
        return v9 * v5 > result;
      }

      goto LABEL_41;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v5)
  {
    if (a2 == 0x8000000000000000 && v5 == -1)
    {
      goto LABEL_44;
    }

    if (a2 % v5 == 1)
    {
      v8 = __OFSUB__(a2, v5);
      v5 = a2 - v5;
      if (!v8)
      {
        return v5 > result;
      }

      __break(1u);
    }

    goto LABEL_24;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t ShelfGridLayout.frozen.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = v9 >> 5;
  if (v9 >> 5 > 2)
  {
    if (v10 - 4 >= 2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      LOBYTE(v9) = -96;
    }

    else
    {
      result = sub_1B7A16C88(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      result = sub_1B7A16CBC(*(v1 + 8), *(v1 + 16), *(v1 + 24));
      LOBYTE(v9) = 0x80;
      v6 = v6;
    }

    else
    {
      v3 = 0;
      v5 = 0;
      v7 = 0;
      v8 = 0;
      LOBYTE(v9) = -96;
      v6 = 1;
    }
  }

  else
  {
    result = sub_1B7A16CBC(*(v1 + 8), *(v1 + 16), *(v1 + 24));
    v7 = 0;
    v8 = 0;
    LOBYTE(v9) = -127;
    v6 = v6;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_1B7A46734()
{
  if (*(v0 + 24) != 1)
  {
    return sub_1B7A9AE20();
  }

  v2 = sub_1B7A9AE20();
  MEMORY[0x1B8CAB750](42, 0xE100000000000000);
  return v2;
}

void ShelfGridItemWidth.Context.padding.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

void ShelfGridItemWidth.Context.spacing.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t ShelfGridItemWidth.Context.offset.getter()
{
  v1 = *v0;
  *(v1 + 24) = 1;
  return *(v1 + 16);
}

uint64_t static ShelfGridItemWidth.custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_1B7A468D0;
  *(a3 + 8) = v6;
  *(a3 + 16) = 3;
}

void sub_1B7A468D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(v2 + 16))(*(a1 + 8), *(a1 + 16));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t sub_1B7A46924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B7A46974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A469E4(uint64_t result, char a2)
{
  v2 = *(result + 48) & 1 | (32 * a2);
  *(result + 24) &= 3uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1B7A46A14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B7A46A5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1B7A46AF0@<X0>(void *a1@<X8>)
{
  sub_1B7958BE0();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t View.loadingViewPresentationContext(_:)()
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B7A46BB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A97780();
  *a1 = result;
  return result;
}

uint64_t LoadingView.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B7A986C0();
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = swift_getKeyPath();
  *(a4 + 64) = 0;
  *(a4 + 72) = swift_getKeyPath();
  *(a4 + 80) = 0;
  v8 = *(a2 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  result = (*(v8 + 32))(v10 + v9, a1, a2);
  *a4 = sub_1B7A471F8;
  *(a4 + 8) = v10;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_1B7A46D64(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_1B7A98080();
}

uint64_t LoadingView.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B7A986C0();
  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  *(a5 + 40) = swift_getKeyPath();
  *(a5 + 48) = 0;
  *(a5 + 56) = swift_getKeyPath();
  *(a5 + 64) = 0;
  *(a5 + 72) = swift_getKeyPath();
  *(a5 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49210);
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *a5 = sub_1B7A47234;
  *(a5 + 8) = result;
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_1B7A46F2C(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 12);

  os_unfair_lock_unlock(a1 + 12);
  return sub_1B7A98070();
}

uint64_t sub_1B7A46FC4@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 40);
  if (*(v1 + 48) == 1)
  {
    *a1 = v8;
  }

  else
  {

    sub_1B7A9AA10();
    v9 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v8, 0);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_1B7A47114()
{
  sub_1B7958B80();

  return sub_1B7A97890();
}

uint64_t sub_1B7A4715C@<X0>(_BYTE *a1@<X8>)
{
  sub_1B7958B80();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7A4723C()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

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

void *sub_1B7A47380()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE1C(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1B7A474D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v88 = a3;
  v95 = a2;
  v67 = a1;
  v92 = a6;
  v8 = sub_1B7A9A7E0();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v89 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A997E0();
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v82 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49218);
  v13 = MEMORY[0x1E6981840];
  *&v103[0] = v12;
  *(&v103[0] + 1) = MEMORY[0x1E6981840];
  v93 = a4;
  v94 = a5;
  type metadata accessor for _CompatibilityLoadingViewContent();
  sub_1B7A97B40();
  *&v103[1] = sub_1B7A97590();
  *(&v103[1] + 1) = v13;
  swift_getTupleTypeMetadata();
  sub_1B7A98AC0();
  v64[1] = swift_getWitnessTable();
  v14 = sub_1B7A987E0();
  v15 = sub_1B7A97590();
  v16 = sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD0);
  v17 = sub_1B7A97590();
  sub_1B7A97E00();
  v18 = sub_1B7A97590();
  v80 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v79 = v64 - v19;
  v20 = sub_1B7A97590();
  v86 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v85 = v64 - v21;
  v64[0] = swift_getWitnessTable();
  v114 = v64[0];
  v115 = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  v112 = WitnessTable;
  v113 = MEMORY[0x1E6980A30];
  v71 = v16;
  v22 = swift_getWitnessTable();
  v23 = sub_1B797EC34(&qword_1EDC10A50, &qword_1EBA48FD0);
  v66 = v22;
  v110 = v22;
  v111 = v23;
  v72 = v17;
  v24 = swift_getWitnessTable();
  v25 = sub_1B7957F20(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  v68 = v24;
  v108 = v24;
  v109 = v25;
  v81 = v18;
  v70 = swift_getWitnessTable();
  v106 = v70;
  v107 = v25;
  v26 = swift_getWitnessTable();
  v87 = v20;
  *&v103[0] = v20;
  v76 = v26;
  *(&v103[0] + 1) = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  v78 = OpaqueTypeMetadata2;
  v28 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v74 = v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v75 = v64 - v30;
  v31 = sub_1B7A9A760();
  v73 = sub_1B7A9A750();
  v69 = v31;
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = sub_1B7A97990();
  MEMORY[0x1EEE9AC00](v32);
  sub_1B7A987D0();
  v99[6] = v103[6];
  v99[7] = v103[7];
  v99[8] = v103[8];
  LOBYTE(v99[9]) = v103[9];
  v99[2] = v103[2];
  v99[3] = v103[3];
  v99[4] = v103[4];
  v99[5] = v103[5];
  v99[0] = v103[0];
  v99[1] = v103[1];
  sub_1B7A972E0();
  sub_1B7A972E0();
  sub_1B7A98A20();
  sub_1B7A98410();
  v104[6] = v99[6];
  v104[7] = v99[7];
  v104[8] = v99[8];
  v104[2] = v99[2];
  v104[3] = v99[3];
  v104[4] = v99[4];
  v104[5] = v99[5];
  v104[0] = v99[0];
  v105 = v99[9];
  v104[1] = v99[1];
  (*(*(v14 - 8) + 8))(v104, v14);
  memcpy(v100, v101, sizeof(v100));
  sub_1B7A975D0();
  v33 = sub_1B7A97EE0();
  sub_1B7A97F10();
  sub_1B7A97F10();
  if (sub_1B7A97F10() != v33)
  {
    sub_1B7A97F10();
  }

  sub_1B7A981F0();
  memcpy(v97, v100, sizeof(v97));
  (*(*(v15 - 8) + 8))(v97, v15);
  memcpy(v99, v102, 0x111uLL);
  v34 = v88;
  LOBYTE(v96[0]) = v88 == 2;
  sub_1B7A98A20();
  sub_1B7959D7C();
  v35 = v71;
  sub_1B7A980C0();
  memcpy(v98, v99, 0x111uLL);
  (*(*(v35 - 8) + 8))(v98, v35);
  memcpy(v96, v103, sizeof(v96));
  memset(v99, 0, 32);
  v36 = v82;
  sub_1B7A997B0();
  sub_1B7957888(v99, &qword_1EBA46B50);
  v37 = v79;
  v38 = v72;
  View.automationSemantics(_:)();
  (*(v83 + 8))(v36, v84);
  memcpy(v99, v96, sizeof(v99));
  (*(*(v38 - 8) + 8))(v99, v38);
  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDC10A30;
  v40 = sub_1B7A98070();
  v42 = v41;
  v44 = v43;
  v45 = v85;
  v46 = v81;
  sub_1B7A98250();
  sub_1B795A450(v40, v42, v44 & 1);

  (*(v80 + 8))(v37, v46);
  v48 = v93;
  v47 = v94;
  v49 = type metadata accessor for LoadingView();
  v50 = v95;
  (*(*(v49 - 8) + 16))(v96, v95, v49);
  v51 = sub_1B7A9A750();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = MEMORY[0x1E69E85E0];
  *(v52 + 32) = v48;
  *(v52 + 40) = v47;
  v53 = *(v50 + 48);
  *(v52 + 80) = *(v50 + 32);
  *(v52 + 96) = v53;
  *(v52 + 112) = *(v50 + 64);
  *(v52 + 128) = *(v50 + 80);
  v54 = *(v50 + 16);
  *(v52 + 48) = *v50;
  *(v52 + 64) = v54;
  *(v52 + 129) = v34;
  v55 = v89;
  v56 = v87;
  v57 = v76;
  sub_1B7974C6C();
  v58 = v74;
  sub_1B7974CBC(0, v55, 0xD000000000000024, 0x80000001B7AC7960, 214, &unk_1B7AA63B8, v52, v74, v56, v57);
  (*(v90 + 8))(v55, v91);
  (*(v86 + 8))(v45, v56);
  v96[0] = v56;
  v96[1] = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v75;
  v61 = v78;
  sub_1B7957EE0(v58, v78, OpaqueTypeConformance2);
  v62 = *(v77 + 8);
  v62(v58, v61);
  sub_1B7957EE0(v60, v61, OpaqueTypeConformance2);
  v62(v60, v61);
}

uint64_t sub_1B7A4814C(__int128 *a1)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[3];
  v33 = a1[2];
  v34 = v2;
  v35 = a1[4];
  v36 = *(a1 + 80);
  v3 = a1[1];
  v31 = *a1;
  v32 = v3;
  type metadata accessor for LoadingView();
  sub_1B79593DC();
  sub_1B7A98A20();
  sub_1B7A97260();
  v4 = v43;
  v5 = v45;
  v11 = v48;
  v12 = v47;
  v42 = 1;
  v40 = v44;
  v38 = v46;
  sub_1B79597CC(*a1, *(a1 + 1), *(a1 + 16));
  v23 = v28;
  LOBYTE(v24) = v29;
  v6 = *(a1 + 4);
  LOBYTE(v31) = *(a1 + 24) & 1;
  *(&v31 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50);
  sub_1B7A986D0();
  type metadata accessor for _CompatibilityLoadingViewContent();
  sub_1B7A97B40();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1B79599D4();
  v7 = swift_getWitnessTable();
  sub_1B7A98430();
  sub_1B79599CC();
  v23 = v31;
  LOBYTE(v24) = v32;
  v25 = *(&v32 + 1);
  v8 = sub_1B7A97590();
  v21 = v7;
  v22 = MEMORY[0x1E697E5C0];
  v9 = swift_getWitnessTable();
  sub_1B7957EE0(&v23, v8, v9);
  sub_1B79599CC();
  *&v31 = 0;
  BYTE8(v31) = v42;
  *(&v31 + 9) = *v41;
  HIDWORD(v31) = *&v41[3];
  *&v32 = v4;
  BYTE8(v32) = v40;
  *(&v32 + 9) = *v39;
  HIDWORD(v32) = *&v39[3];
  *&v33 = v5;
  BYTE8(v33) = v38;
  HIDWORD(v33) = *&v37[3];
  *(&v33 + 9) = *v37;
  *&v34 = v12;
  *(&v34 + 1) = v11;
  v19 = 0;
  v20 = 1;
  *&v23 = &v31;
  *(&v23 + 1) = &v19;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v14 = 0;
  v15 = 1;
  v24 = &v16;
  v25 = &v14;
  sub_1B7959BA4();
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49218);
  v13[1] = MEMORY[0x1E6981840];
  v13[2] = v8;
  v13[3] = MEMORY[0x1E6981840];
  sub_1B7959B20();
  sub_1B7959BAC(&v23, 4uLL, v13);
  sub_1B79599CC();
  sub_1B79599CC();
}

uint64_t sub_1B7A48548(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 329) = a4;
  *(v6 + 104) = a3;
  sub_1B7A98CC0();
  *(v6 + 128) = swift_task_alloc();
  v7 = sub_1B7A9A280();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  v8 = sub_1B7A99000();
  *(v6 + 160) = v8;
  *(v6 + 168) = *(v8 - 8);
  *(v6 + 176) = swift_task_alloc();
  v9 = sub_1B7A99380();
  *(v6 + 184) = v9;
  *(v6 + 192) = *(v9 - 8);
  *(v6 + 200) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49048);
  *(v6 + 208) = v10;
  *(v6 + 216) = *(v10 - 8);
  *(v6 + 224) = swift_task_alloc();
  v11 = sub_1B7A9A720();
  *(v6 + 232) = v11;
  *(v6 + 240) = *(v11 - 8);
  *(v6 + 248) = swift_task_alloc();
  v12 = sub_1B7A9AD20();
  *(v6 + 256) = v12;
  *(v6 + 264) = *(v12 - 8);
  *(v6 + 272) = swift_task_alloc();
  sub_1B7A9A760();
  *(v6 + 280) = sub_1B7A9A750();
  v14 = sub_1B7A9A710();
  *(v6 + 288) = v14;
  *(v6 + 296) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1B7A48848, v14, v13);
}

uint64_t sub_1B7A48848()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = type metadata accessor for LoadingView();
  *(v0 + 72) = v2 & 1;
  *(v0 + 304) = v4;
  *(v0 + 80) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50);
  sub_1B7A986D0();
  if (*(v0 + 328))
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (*(v0 + 329) >= 2u)
    {
      v8 = sub_1B7A9AFC0();
      v7 = v9;
    }

    else
    {
      v7 = 0;
      v8 = 2000000000000000000;
    }

    sub_1B7A9AEF0();
    v10 = swift_task_alloc();
    *(v0 + 312) = v10;
    *v10 = v0;
    v10[1] = sub_1B7A48A2C;

    return sub_1B795A058(v8, v7, 0, 0, 1);
  }
}

uint64_t sub_1B7A48A2C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  v3 = v2[37];
  v4 = v2[36];
  if (v0)
  {
    v5 = sub_1B7A48E00;
  }

  else
  {
    v5 = sub_1B7A48BB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B7A48BB4()
{

  v1 = *(v0 + 104);
  v13 = *(v0 + 112);
  sub_1B7A98A40();
  sub_1B7A97180();
  v2 = swift_task_alloc();
  *(v2 + 16) = v13;
  *(v2 + 32) = v1;
  sub_1B7A97600();

  if (sub_1B7A4723C())
  {
    v4 = *(v0 + 216);
    v3 = *(v0 + 224);
    v5 = *(v0 + 200);
    v6 = *(v0 + 192);
    v11 = *(v0 + 184);
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v12 = *(v0 + 160);
    v14 = *(v0 + 208);
    sub_1B7A993A0();
    sub_1B7A99D20();
    sub_1B7A99370();
    (*(v6 + 8))(v5, v11);
    sub_1B7A98FF0();
    sub_1B7A993C0();

    (*(v7 + 8))(v8, v12);
    (*(v4 + 8))(v3, v14);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B7A48E00()
{
  v1 = *(v0 + 320);

  *(v0 + 88) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);
    v5 = *(v0 + 232);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v6 = *(v0 + 320);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 136);

    sub_1B7A9A220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    swift_getErrorValue();
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    *(v0 + 40) = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
    sub_1B7A98C70();
    sub_1B7957888(v0 + 16, &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A99E60();

    (*(v8 + 8))(v7, v9);
    v13 = *(v0 + 104);
    v25 = *(v0 + 112);
    sub_1B7A98A40();
    sub_1B7A97180();
    v14 = swift_task_alloc();
    *(v14 + 16) = v25;
    *(v14 + 32) = v13;
    sub_1B7A97600();

    if (sub_1B7A4723C())
    {
      v16 = *(v0 + 216);
      v15 = *(v0 + 224);
      v17 = *(v0 + 200);
      v18 = *(v0 + 192);
      v23 = *(v0 + 184);
      v19 = *(v0 + 168);
      v20 = *(v0 + 176);
      v24 = *(v0 + 160);
      v26 = *(v0 + 208);
      sub_1B7A993A0();
      sub_1B7A99D20();
      sub_1B7A99370();
      (*(v18 + 8))(v17, v23);
      sub_1B7A98FF0();
      sub_1B7A993C0();

      (*(v19 + 8))(v20, v24);
      (*(v16 + 8))(v15, v26);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B7A49268(__int128 *a1)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *a1;
  v11 = *(a1 + 2);
  v9 = *(a1 + 24);
  LODWORD(v8) = *(a1 + 25);
  *(&v8 + 3) = *(a1 + 7);
  v2 = *(a1 + 4);
  v6 = *(a1 + 40);
  *v7 = *(a1 + 56);
  *&v7[9] = *(a1 + 65);
  v3 = type metadata accessor for LoadingView();
  v4 = *(v3 - 8);
  (*(v4 + 16))(&v12, a1, v3);
  LOBYTE(v12) = v9;
  *(&v12 + 1) = v2;
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50);
  sub_1B7A986E0();
  v12 = v10;
  *(v18 + 9) = *&v7[9];
  v18[0] = *v7;
  v13 = v11;
  v14 = v9;
  *v15 = v8;
  *&v15[3] = *(&v8 + 3);
  v16 = v2;
  v17 = v6;
  (*(v4 + 8))(&v12, v3);
}

uint64_t LoadingViewPresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A494DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A4AD54();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.withPageRenderMetrics(_:)(uint64_t a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_1B7A98320();
}

uint64_t sub_1B7A49600(void *a1, uint64_t a2)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  sub_1B7A9A160();

  *a1 = a2;
  return result;
}

uint64_t sub_1B7A49728@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v60 = a2;
  v61 = a1;
  v69 = a5;
  v56 = a3;
  v54 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0);
  v7 = sub_1B7A97590();
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v49 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450);
  v63 = sub_1B7A97590();
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v49 - v9;
  v62 = sub_1B7A97590();
  v68 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v49 - v12;
  v70 = sub_1B7A97D30();
  v13 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49228);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49230);
  v71 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  sub_1B7A971C0();
  v23 = *(v16 + 36);
  v52 = v16;
  v24 = &v18[v23];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49238) + 28);
  v26 = *MEMORY[0x1E697DC10];
  v27 = sub_1B7A970C0();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  sub_1B7A97D20();
  v51 = sub_1B7A4AB74();
  v50 = sub_1B7957F20(&qword_1EDC0EB50, MEMORY[0x1E697C9C8]);
  v28 = v70;
  sub_1B7A980B0();
  (*(v13 + 8))(v15, v28);
  v29 = sub_1B7957888(v18, &qword_1EBA49228);
  v61(v29);
  sub_1B7A97F50();
  v30 = v53;
  v31 = v56;
  v32 = v64;
  sub_1B7A983B0();

  (*(v54 + 8))(v6, v31);
  LODWORD(OpaqueTypeConformance2) = sub_1B7A97C60();
  v33 = sub_1B797EC34(&qword_1EBA47D58, &qword_1EBA47CC0);
  v77[6] = v32;
  v77[7] = v33;
  WitnessTable = swift_getWitnessTable();
  v35 = v57;
  sub_1B7A981D0();
  (*(v66 + 8))(v30, v7);
  sub_1B7A97EE0();
  v36 = sub_1B797EC34(&qword_1EBA47448, &qword_1EBA47450);
  v77[4] = WitnessTable;
  v77[5] = v36;
  v37 = v63;
  v38 = swift_getWitnessTable();
  v39 = v59;
  sub_1B7A98450();
  (*(v67 + 8))(v35, v37);
  v77[2] = v38;
  v77[3] = MEMORY[0x1E697E5D8];
  v40 = v62;
  v41 = swift_getWitnessTable();
  v42 = v65;
  sub_1B7957EE0(v39, v40, v41);
  v43 = v68;
  v44 = *(v68 + 8);
  v44(v39, v40);
  v45 = v55;
  v46 = v58;
  (*(v71 + 16))(v55, v22, v58);
  v77[0] = v45;
  (*(v43 + 16))(v39, v42, v40);
  v77[1] = v39;
  v76[0] = v46;
  v76[1] = v40;
  OpaqueTypeConformance2 = v52;
  v73 = v70;
  v74 = v51;
  v75 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = v41;
  sub_1B7959BAC(v77, 2uLL, v76);
  v44(v42, v40);
  v47 = *(v71 + 8);
  v47(v22, v46);
  v44(v39, v40);
  return (v47)(v45, v46);
}

void sub_1B7A49FDC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for _PlatformLoadingViewContent._JEContentUnavailableView();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    do
    {
      v5 = v2;
      v6 = [v5 backgroundColor];
      v4 = v5;
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = [v5 backgroundColor];
      v8 = objc_opt_self();
      v9 = [v8 clearColor];
      v3 = v9;
      if (v7)
      {
        if (v9)
        {
          sub_1B79596F8(0, &qword_1EBA49250);
          v10 = sub_1B7A9AB20();

          v4 = v5;
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }

        v3 = v7;
      }

      else
      {
        v4 = v5;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

LABEL_5:
      v4 = [v8 clearColor];
      [v5 setBackgroundColor_];

LABEL_6:
      v2 = [v5 superview];
    }

    while (v2);
  }
}

id sub_1B7A4A248(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for _PlatformLoadingViewContent._JEContentUnavailableView();
  v7 = objc_msgSendSuper2(&v9, *a4, a3);

  return v7;
}

id sub_1B7A4A30C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PlatformLoadingViewContent._JEContentUnavailableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B7A4A350()
{
  sub_1B795A520();
  sub_1B7A97AE0();
  __break(1u);
}

uint64_t sub_1B7A4A378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7A986C0();
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = swift_getKeyPath();
  *(a3 + 48) = 0;
  *(a3 + 56) = swift_getKeyPath();
  *(a3 + 64) = 0;
  result = swift_getKeyPath();
  *(a3 + 72) = result;
  *(a3 + 80) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t LoadingView.init(what:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7A986C0();
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = swift_getKeyPath();
  *(a3 + 48) = 0;
  *(a3 + 56) = swift_getKeyPath();
  *(a3 + 64) = 0;
  result = swift_getKeyPath();
  *(a3 + 72) = result;
  *(a3 + 80) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t LoadingView.init<>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = KeyPath;
  *(v7 + 24) = 0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v5;

  j__swift_retain(KeyPath);

  sub_1B7A4A378(sub_1B7A4A624, v7, a2);

  j__swift_release();
}

uint64_t sub_1B7A4A5C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  j__swift_retain(v2);
}

unint64_t sub_1B7A4A700()
{
  result = qword_1EDC108D0;
  if (!qword_1EDC108D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC108D0);
  }

  return result;
}

uint64_t sub_1B7A4A754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B7A4A7B0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7A4A884()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7A4AA40, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1B7A4AA40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A4AAAC(uint64_t a1)
{
  v2 = sub_1B7A970C0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x1B8CA8990](v5);
}

unint64_t sub_1B7A4AB74()
{
  result = qword_1EBA49240;
  if (!qword_1EBA49240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49228);
    sub_1B797EC34(&qword_1EDC0EC18, &qword_1EBA49248);
    sub_1B797EC34(&qword_1EDC0EB40, &qword_1EBA49238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49240);
  }

  return result;
}

uint64_t sub_1B7A4AC64()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 129);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B798D338;

  return sub_1B7A48548(v4, v5, v0 + 48, v6, v2, v3);
}

unint64_t sub_1B7A4AD54()
{
  result = qword_1EDC108C8;
  if (!qword_1EDC108C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49258);
    sub_1B7A4A700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC108C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ContentUnavailableBackgroundView(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B7A4AE88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  type metadata accessor for FlowStackAuthority();
  swift_getWitnessTable();
  result = sub_1B7A97490();
  *a5 = result;
  a5[1] = v11;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t sub_1B7A4AF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v17(v16);
  sub_1B7957EE0(v13, a5, a8);
  v18 = *(v10 + 8);
  v18(v13, a5);
  sub_1B7957EE0(v15, a5, a8);
  return (v18)(v15, a5);
}

uint64_t sub_1B7A4B094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648);
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v69 - v6;
  v101 = sub_1B7A97480();
  v100 = a1[7];
  v133 = v100;
  v134 = MEMORY[0x1E69E5FE8];
  *&v106 = a1[3];
  v131 = v106;
  v132 = MEMORY[0x1E69E5FE0];
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  v7 = sub_1B7A97590();
  v70 = a1[2];
  v8 = a1[5];
  v104 = a1[6];
  *&v105 = v8;
  v9 = type metadata accessor for FlowStackAuthority.PathComponent();
  v97 = a1[4];
  v10 = v97;
  v103 = a1[8];
  v11 = v103;
  WitnessTable = swift_getWitnessTable();
  v131 = v10;
  v132 = v9;
  v133 = v11;
  v134 = WitnessTable;
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
  v13 = sub_1B7A97590();
  v14 = swift_getWitnessTable();
  v92 = MEMORY[0x1E6980A18];
  v15 = sub_1B797EC34(&qword_1EBA45FF0, &qword_1EBA45FE8);
  v139 = v14;
  v140 = v15;
  v99 = MEMORY[0x1E697E858];
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8);
  v137 = v17;
  v138 = v18;
  v19 = swift_getWitnessTable();
  v131 = v7;
  v132 = v9;
  v133 = v13;
  v134 = v16;
  v135 = WitnessTable;
  v136 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v131 = v7;
  v132 = v9;
  v133 = v13;
  v134 = v16;
  v135 = WitnessTable;
  v136 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = sub_1B7A975B0();
  v80 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v69 - v20;
  v75 = sub_1B7A97590();
  v81 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v69 - v21;
  v22 = v70;
  v23 = v97;
  v131 = v70;
  v132 = v97;
  v25 = v104;
  v24 = v105;
  v133 = v105;
  v134 = v104;
  v26 = v103;
  v135 = v103;
  v83 = type metadata accessor for FlowStackSheetViewModifier();
  v82 = sub_1B7A97590();
  v84 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v98 = &v69 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49300);
  v86 = sub_1B7A97590();
  v89 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v101 = &v69 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49308);
  v88 = sub_1B7A97590();
  v91 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v87 = &v69 - v31;
  v32 = v102[1];
  v79 = *v102;
  v78 = type metadata accessor for FlowStackAuthority();
  v72 = swift_getWitnessTable();
  sub_1B7A974A0();
  *&v33 = v22;
  *(&v33 + 1) = v106;
  *&v34 = v23;
  *(&v34 + 1) = v24;
  v105 = v34;
  v106 = v33;
  v118 = v33;
  v119 = v34;
  v35 = v100;
  v120 = v25;
  v121 = v100;
  v122 = v26;
  swift_getKeyPath();
  sub_1B7A974B0();

  v112 = v106;
  v113 = v105;
  v114 = v25;
  v115 = v35;
  v36 = v102;
  v116 = v26;
  v117 = v102;
  v37 = v73;
  sub_1B7A975A0();
  v69 = v32;
  v38 = sub_1B7A88EE8();
  v39 = v74;
  v40 = swift_getWitnessTable();
  v41 = v71;
  sub_1B7A81FC0(v38, v39, v40);

  (*(v80 + 8))(v37, v39);
  v42 = sub_1B7A8995C();
  v43 = v36[4];
  v44 = v36[5];
  v45 = sub_1B7A4CCB4();
  v129 = v40;
  v130 = v45;
  v46 = v75;
  v47 = swift_getWitnessTable();
  v48 = v103;
  sub_1B7A5DE14(v42, v43, v44, v46, v97, v47);

  (*(v81 + 8))(v41, v46);
  swift_getKeyPath();
  v49 = swift_allocObject();
  v50 = v105;
  *(v49 + 16) = v106;
  *(v49 + 32) = v50;
  v51 = v100;
  *(v49 + 48) = v104;
  *(v49 + 56) = v51;
  *(v49 + 64) = v48;
  v52 = *(v36 + 1);
  *(v49 + 72) = *v36;
  *(v49 + 88) = v52;
  *(v49 + 104) = *(v36 + 2);

  v53 = swift_getWitnessTable();
  v127 = v47;
  v128 = v53;
  v54 = v82;
  v55 = swift_getWitnessTable();
  v56 = v98;
  sub_1B7A98320();

  (*(v84 + 8))(v56, v54);
  swift_getKeyPath();
  sub_1B7A974A0();
  v107 = v106;
  v108 = v105;
  v109 = v104;
  v110 = v51;
  v111 = v103;
  swift_getKeyPath();
  v57 = v93;
  sub_1B7A974B0();

  (*(v94 + 56))(v57, 0, 1, v95);
  v58 = sub_1B797EC34(&qword_1EBA49318, &qword_1EBA49300);
  v125 = v55;
  v126 = v58;
  v59 = v86;
  v60 = swift_getWitnessTable();
  v61 = v85;
  v62 = v101;
  sub_1B7A98150();

  sub_1B7A4CD40(v57);
  (*(v89 + 8))(v62, v59);
  v63 = sub_1B797EC34(&qword_1EBA49320, &qword_1EBA49308);
  v123 = v60;
  v124 = v63;
  v64 = v88;
  v65 = swift_getWitnessTable();
  v66 = v87;
  sub_1B7957EE0(v61, v64, v65);
  v67 = *(v91 + 8);
  v67(v61, v64);
  sub_1B7957EE0(v66, v64, v65);
  return (v67)(v66, v64);
}

uint64_t sub_1B7A4BBC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EBA507D0;
  swift_beginAccess();
  v5 = sub_1B7A97480();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1B7A4BC50(uint64_t a1)
{
  v2 = sub_1B7A97480();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1B7A898C8(v5);
}

uint64_t sub_1B7A4BD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v58 = a1;
  v81 = a8;
  v69 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v66 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v14;
  v82 = v14;
  v83 = MEMORY[0x1E69E5FE0];
  v75 = v15;
  v84 = v15;
  v85 = MEMORY[0x1E69E5FE8];
  v16 = sub_1B7A987A0();
  v67 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v64 = v56 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  v18 = sub_1B7A97590();
  v76 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v71 = v56 - v19;
  v78 = a2;
  v79 = a5;
  v80 = a6;
  v20 = type metadata accessor for FlowStackAuthority.PathComponent();
  WitnessTable = swift_getWitnessTable();
  v73 = a4;
  v82 = a4;
  v83 = v20;
  v77 = a7;
  v84 = a7;
  v85 = WitnessTable;
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
  v22 = sub_1B7A97590();
  v68 = v16;
  v23 = swift_getWitnessTable();
  v24 = sub_1B797EC34(&qword_1EBA45FF0, &qword_1EBA45FE8);
  v56[1] = v23;
  v90 = v23;
  v91 = v24;
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v27 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8);
  v88 = v26;
  v89 = v27;
  v28 = swift_getWitnessTable();
  v74 = v18;
  v82 = v18;
  v83 = v20;
  v59 = v20;
  v65 = v22;
  v84 = v22;
  v85 = v25;
  v63 = v25;
  v70 = WitnessTable;
  v86 = WitnessTable;
  v87 = v28;
  v61 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v30 = v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v60 = v56 - v32;
  sub_1B7A9A760();
  v56[2] = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v34 = v58;
  v35 = v66;
  (*(v58 + 16))(isCurrentExecutor);
  v92 = *v34;
  v82 = *(&v92 + 1);
  v36 = v64;
  v37 = v72;
  v38 = v75;
  sub_1B7A98390();
  (*(v69 + 8))(v35, v37);
  swift_getKeyPath();
  LOBYTE(v82) = 1;
  v39 = v71;
  v40 = v68;
  sub_1B7A98150();

  (*(v67 + 8))(v36, v40);
  v41 = swift_checkMetadataState();
  v42 = swift_allocObject();
  v43 = v79;
  *(v42 + 16) = v78;
  *(v42 + 24) = v37;
  *(v42 + 32) = v73;
  *(v42 + 40) = v43;
  *(v42 + 48) = v80;
  *(v42 + 56) = v38;
  *(v42 + 64) = v77;
  v44 = v34[1];
  *(v42 + 72) = *v34;
  *(v42 + 88) = v44;
  *(v42 + 104) = v34[2];
  type metadata accessor for FlowStackAuthority();
  swift_getWitnessTable();
  v45 = sub_1B7A974C0();
  (*(*(v45 - 8) + 16))(&v82, &v92, v45);

  v46 = swift_checkMetadataState();
  v47 = v61;
  v48 = v74;
  v49 = v63;
  v50 = v70;
  sub_1B7A98330();

  (*(v76 + 8))(v39, v48);
  v82 = v48;
  v83 = v41;
  v84 = v46;
  v85 = v49;
  v86 = v50;
  v87 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v60;
  v53 = OpaqueTypeMetadata2;
  sub_1B7957EE0(v30, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v54 = *(v62 + 8);
  v54(v30, v53);
  sub_1B7957EE0(v52, v53, OpaqueTypeConformance2);
  v54(v52, v53);
}

uint64_t EnvironmentValues.isAtFlowStackRoot.getter()
{
  sub_1B7A4C558();
  sub_1B7A97890();
  return v1;
}

unint64_t sub_1B7A4C558()
{
  result = qword_1EBA49278;
  if (!qword_1EBA49278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49278);
  }

  return result;
}

uint64_t sub_1B7A4C5AC@<X0>(_BYTE *a1@<X8>)
{
  sub_1B7A4C558();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7A4C658()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A4C694(uint64_t a1, int a2)
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

uint64_t sub_1B7A4C6DC(uint64_t result, int a2, int a3)
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

uint64_t sub_1B7A4C740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>, uint64_t a5)
{
  v28 = a2;
  v32 = a4;
  v6 = *(a3 - 8);
  v30 = a1;
  v31 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowStackAuthority.PathComponent();
  WitnessTable = swift_getWitnessTable();
  v35 = a3;
  v36 = v9;
  v27 = a5;
  v37 = a5;
  v38 = WitnessTable;
  v25[1] = WitnessTable;
  v11 = sub_1B7A987A0();
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
  v14 = sub_1B7A97590();
  v29 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v25 - v18;
  sub_1B7A9A760();
  v25[2] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v28 + 32))(v30 + *(v9 + 44));
  sub_1B7A98390();
  (*(v31 + 8))(v8, a3);
  LOBYTE(v35) = 1;
  v20 = swift_getWitnessTable();
  View.presentedBy(_:)();
  (*(v26 + 8))(v13, v11);
  v21 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8);
  v33 = v20;
  v34 = v21;
  v22 = swift_getWitnessTable();
  sub_1B7957EE0(v16, v14, v22);
  v23 = *(v29 + 8);
  v23(v16, v14);
  sub_1B7957EE0(v19, v14, v22);
  v23(v19, v14);
}

uint64_t sub_1B7A4CB3C(unint64_t *a1)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A8995C();
  v2 = sub_1B7A29318();

  v4 = *a1;
  if (v2)
  {
    if (v4)
    {
      return result;
    }

    v5 = v4 | 1;
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      return result;
    }

    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  }

  *a1 = v5;
  return result;
}

unint64_t sub_1B7A4CCB4()
{
  result = qword_1EBA49310;
  if (!qword_1EBA49310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49310);
  }

  return result;
}

uint64_t sub_1B7A4CD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

double sub_1B7A4CE28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v25 = a3;
  v26 = a6;
  v24 = a5;
  v27 = a7;
  v9 = *a1;
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v24 - v15;
  (*(v13 + 16))(&v24 - v15, a2, AssociatedTypeWitness, v14);
  v17 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 2) = v11;
  *(v18 + 3) = v19;
  *(v18 + 4) = v10;
  *(v18 + 5) = *(v9 + 96);
  v20 = v25;
  *(v18 + 6) = v26;
  *(v18 + 7) = v20;
  *(v18 + 8) = a4;
  (*(v13 + 32))(&v18[v17], v16, AssociatedTypeWitness);

  sub_1B7A4AE88(sub_1B7A4D020, v18, v20, a4, v28);
  v21 = v28[1];
  v22 = v27;
  *v27 = v28[0];
  v22[1] = v21;
  result = *&v29;
  v22[2] = v29;
  return result;
}

uint64_t sub_1B7A4D020()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0 + ((*(v6 + 80) + 72) & ~*(v6 + 80));

  return sub_1B7A4AF58(v7, v8, v9, v1, v2, v3, v4, v5);
}

uint64_t sub_1B7A4D0E4()
{
  sub_1B7A4DD68();
  sub_1B7A97890();
  return v1;
}

uint64_t sub_1B7A4D120@<X0>(void *a1@<X8>)
{
  sub_1B7A4DD68();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7A4D170()
{
  sub_1B7A4DD68();

  return sub_1B7A978A0();
}

uint64_t sub_1B7A4D1D0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = v14 - v3;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  sub_1B7A9AE10();
  (*(v2 + 8))(v4, AssociatedTypeWitness);
  swift_getKeyPath();
  v15 = v0;
  sub_1B7A4DCF4();
  sub_1B7A96CB0();

  swift_beginAccess();
  v5 = *(v0 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_1B7994ACC(v16);
    if (v7)
    {
      v8 = (*(v5 + 56) + 24 * v6);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];

      sub_1B7991408(v16);

      v14[1] = v9;
      v14[2] = v10;
      v14[3] = v11;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49360);
      MEMORY[0x1B8CA9A40](v14, v12);

      return v14[0];
    }
  }

  sub_1B7991408(v16);
  return 0;
}

uint64_t sub_1B7A4D3FC()
{
  swift_getKeyPath();
  sub_1B7A4DCF4();
  sub_1B7A96CB0();

  swift_beginAccess();
}

uint64_t sub_1B7A4D484@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B7A4DCF4();
  sub_1B7A96CB0();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B7A4D514()
{
  swift_getKeyPath();
  sub_1B7A4DCF4();
  sub_1B7A96CA0();
}

uint64_t sub_1B7A4D5B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_1B7A4D618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B7A9AE10();
  swift_getKeyPath();
  sub_1B7A4DCF4();

  sub_1B7A96CB0();

  swift_getKeyPath();
  sub_1B7A96CD0();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_1B79A09EC(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
  sub_1B7991408(v11);
  *(v4 + 16) = v10;
  swift_endAccess();
  swift_getKeyPath();
  sub_1B7A96CC0();
}

uint64_t sub_1B7A4D788()
{

  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26FlowStackTabProvidedBadges___observationRegistrar;
  v2 = sub_1B7A96CF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t View.flowStackTabBadge<A>(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a9;
  v24 = a8;
  v25 = a3;
  v26 = a4;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getKeyPath();
  (*(v14 + 16))(&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a6);
  v16 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a5;
  *(v17 + 3) = a6;
  v18 = v24;
  *(v17 + 4) = a7;
  *(v17 + 5) = v18;
  (*(v14 + 32))(&v17[v16], &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  v19 = &v17[(v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v25;
  v20 = v26;
  *v19 = a2;
  *(v19 + 1) = v21;
  *(v19 + 2) = v20;

  sub_1B7A98320();
}

uint64_t sub_1B7A4D9E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!*a1)
  {
    type metadata accessor for FlowStackTabProvidedBadges();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B799126C(MEMORY[0x1E69E7CC0]);
    sub_1B7A96CE0();
    *a1 = v10;
  }

  sub_1B7A4D618(a2, a3, a4, a5);
}

uint64_t sub_1B7A4DB08(uint64_t *a1)
{
  v2 = (*(*(*(v1 + 24) - 8) + 80) + 48) & ~*(*(*(v1 + 24) - 8) + 80);
  v3 = (v1 + ((*(*(*(v1 + 24) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B7A4D9E0(a1, v1 + v2, *v3, v3[1], v3[2]);
}

uint64_t type metadata accessor for FlowStackTabProvidedBadges()
{
  result = qword_1EBA49330;
  if (!qword_1EBA49330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7A4DBF0()
{
  result = sub_1B7A96CF0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B7A4DC90()
{
  result = qword_1EBA49348;
  if (!qword_1EBA49348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49348);
  }

  return result;
}

unint64_t sub_1B7A4DCF4()
{
  result = qword_1EBA49350;
  if (!qword_1EBA49350)
  {
    type metadata accessor for FlowStackTabProvidedBadges();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49350);
  }

  return result;
}

unint64_t sub_1B7A4DD68()
{
  result = qword_1EBA49358;
  if (!qword_1EBA49358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49358);
  }

  return result;
}

uint64_t sub_1B7A4DDCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B7A4DE48(uint64_t a1)
{
  sub_1B7957820(a1, v3, &qword_1EBA47E70);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7957820(v3, &v2, &qword_1EBA47E70);

  sub_1B7A96F30();
  return sub_1B7957888(v3, &qword_1EBA47E70);
}

__n128 LocalizedText.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[1].n128_u64[0];
  a2->n128_u64[0] = swift_getKeyPath();
  a2->n128_u8[8] = 0;
  result = *a1;
  a2[1] = *a1;
  a2[2].n128_u64[0] = v4;
  return result;
}

uint64_t LocalizedText.body.getter()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v32 = *v0;
  v33 = v5;
  v6 = *(v0 + 4);
  v36 = *(v0 + 8);
  v7 = *v0;
  v34 = v6;
  v35 = v7;
  v8 = v36;

  if ((v8 & 1) == 0)
  {
    sub_1B7A9AA10();
    v9 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v35, &qword_1EBA47DE8);
    (*(v2 + 8))(v4, v1);
    v7 = v25;
  }

  if (v7)
  {
    type metadata accessor for _LocalizerOwner();
    sub_1B79F2650();

    sub_1B7A97490();
    v22[1] = v10;
    sub_1B7A974A0();
    swift_getKeyPath();
    sub_1B7A974B0();

    v11 = swift_allocObject();
    v12 = v33;
    *(v11 + 16) = v32;
    *(v11 + 32) = v12;
    *(v11 + 48) = v34;
    v24[8] = nullsub_1;
    v24[9] = 0;
    v24[10] = sub_1B7A4E3D0;
    v24[11] = 0;
    v24[12] = sub_1B7A4E518;
    v24[13] = v11;
    sub_1B7957820(v24, &v25, &qword_1EBA49368);
    v31 = 0;
    sub_1B7A4E520(&v32, &v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788);
    sub_1B797EC34(&qword_1EBA49370, &qword_1EBA49368);
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    sub_1B7A97B30();

    return sub_1B7957888(v24, &qword_1EBA49368);
  }

  else
  {
    v25 = 0xD000000000000022;
    v26 = 0x80000001B7AC61C0;
    sub_1B7999DD8();
    v14 = sub_1B7A98080();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = 0xD000000000000022;
    *(v21 + 24) = 0x80000001B7AC61C0;
    v25 = v14;
    v26 = v16;
    v27 = v18 & 1;
    v28 = v20;
    v29 = sub_1B797D598;
    v30 = v21;
    v31 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788);
    sub_1B797EC34(&qword_1EBA49370, &qword_1EBA49368);
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    return sub_1B7A97B30();
  }
}

id sub_1B7A4E3D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = _taskRetry(for:)(a1);
  *a2 = a1;
  a2[1] = v4;
  a2[2] = v5;

  return a1;
}

uint64_t sub_1B7A4E414@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *(a2 + 16);
  v14 = *(a2 + 32);
  v5 = v13;
  sub_1B7A4E6F8(&v13, v12);
  v6 = v5(a1);
  v8 = v7;
  sub_1B7A4E754(&v13);
  KeyPath = swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA49388) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E78);
  result = sub_1B7A9A2D0();
  *v10 = KeyPath;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B7A4E574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B7A4E5BC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1B7A4E614()
{
  result = qword_1EBA49378;
  if (!qword_1EBA49378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49380);
    sub_1B797EC34(&qword_1EBA49370, &qword_1EBA49368);
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49378);
  }

  return result;
}

uint64_t IntentView<>.pageResourceMetrics()(uint64_t a1)
{
  v5[0] = 0;
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v8 = swift_getKeyPath();
  v9 = 0;
  v2 = type metadata accessor for PageResourceMetricsViewModifier();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v5, a1, v2, WitnessTable);
  j__swift_release();
  return j__swift_release();
}

{
  v5[0] = 0;
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v8 = swift_getKeyPath();
  v9 = 0;
  v2 = type metadata accessor for PageResourceMetricsViewModifier();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v5, a1, v2, WitnessTable);
  j__swift_release();
  return j__swift_release();
}

uint64_t sub_1B7A4E8A0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5[0] = 1;
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v8 = swift_getKeyPath();
  v9 = 0;
  v2 = type metadata accessor for PageResourceMetricsViewModifier();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v5, a1, v2, WitnessTable);
  j__swift_release();
  return j__swift_release();
}

uint64_t ModifiedContent<>.pageResourceMetrics()(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5[0] = 1;
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v8 = swift_getKeyPath();
  v9 = 0;
  v2 = type metadata accessor for PageResourceMetricsViewModifier();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v5, a1, v2, WitnessTable);
  j__swift_release();
  return j__swift_release();
}

{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5[0] = 1;
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v8 = swift_getKeyPath();
  v9 = 0;
  v2 = type metadata accessor for PageResourceMetricsViewModifier();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v5, a1, v2, WitnessTable);
  j__swift_release();
  return j__swift_release();
}

uint64_t get_witness_table_9JetEngine11IntentModelRz7SwiftUI4ViewR_AcDR0_AcDR1_AA05ShelfD010ReturnTypeRpzr2_lAC15ModifiedContentVy01_ab1_eF00cG0Vyxq_q0_q1_GAJ019PageResourceMetricsG8Modifier33_2290306F402D82832DE0DC1062434EFALLVyxGGAcDHPAmcDHPyHC_AqC0gP0HPyHCHCTm()
{
  type metadata accessor for IntentView();
  type metadata accessor for PageResourceMetricsViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRz011_JetEngine_aB0018_IntentDispatchingC8ModifierR_0dE010ShelfModel5_What_10ReturnTypeRP_r0_lAA15ModifiedContentVyAKyxq_GAC019PageResourceMetricscH033_2290306F402D82832DE0DC1062434EFALLVyAGQy_GGAaBHPAlaBHPxAaBHD1__q_AcDHD2_AA0cH0HI1_HC_AqaSHPyHCHCTm()
{
  sub_1B7A97590();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PageResourceMetricsViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7A4EF38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B7A4EF88(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
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

uint64_t sub_1B7A4EFDC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B7A4F068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = a1;
  v133 = a3;
  swift_getWitnessTable();
  v5 = sub_1B7A97C30();
  WitnessTable = swift_getWitnessTable();
  v164 = v5;
  v165 = MEMORY[0x1E6981148];
  v136 = WitnessTable;
  v166 = WitnessTable;
  v167 = MEMORY[0x1E6981138];
  v7 = type metadata accessor for _RequirementFailureView();
  v104 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v101 - v10;
  v107 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v101 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47910);
  v15 = sub_1B7A97590();
  v16 = *(a2 + 24);
  v122 = *(a2 + 16);
  v123 = v16;
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  v137 = sub_1B7A97DF0();
  v17 = sub_1B7A97590();
  v134 = v5;
  v18 = sub_1B7A97B40();
  v125 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v101 - v19;
  v115 = sub_1B7A98C30();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1B7A99C60();
  v111 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v109 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v110 = &v101 - v23;
  v135 = v15;
  v118 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v101 - v25;
  v130 = v17;
  v121 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v120 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v117 = &v101 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v119 = &v101 - v32;
  v33 = sub_1B7A97880();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v18;
  v132 = v7;
  v129 = sub_1B7A97B40();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v101 - v37;
  v38 = *v3;
  v39 = *(v3 + 1);
  LOBYTE(v7) = v3[16];
  v40 = *(v3 + 3);
  v41 = v3[32];

  if ((v7 & 1) == 0)
  {
    sub_1B7A9AA10();
    v42 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v34 + 8))(v36, v33);
    v39 = v164;
  }

  if (v39)
  {
    swift_getKeyPath();
    v106 = v26;
    if (v41)
    {
      v164 = v40;
    }

    else
    {

      sub_1B7A9AA10();
      v56 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v34 + 8))(v36, v33);
      v40 = v164;
    }

    v57 = v135;
    if (v40)
    {
      v58 = v110;
      v59 = v39;
      sub_1B7A99D20();
      v60 = v111;
      v61 = v113;
      (*(v111 + 104))(v58, *MEMORY[0x1E69AB408], v113);
      (*(v60 + 16))(v109, v58, v61);
      v62 = v112;
      sub_1B7A98C00();
      v63 = sub_1B7A992C0();

      (*(v114 + 8))(v62, v115);
      (*(v60 + 8))(v58, v61);
    }

    else
    {
      v63 = 0;
      v59 = v39;
    }

    v164 = v63;
    v64 = v106;
    v65 = v136;
    sub_1B7A98150();

    v66 = swift_allocObject();
    v67 = v122;
    v68 = v123;
    v66[2] = v122;
    v66[3] = v68;
    v66[4] = v59;
    v69 = sub_1B7A504E0();
    v142 = v65;
    v143 = v69;
    v105 = v59;
    swift_retain_n();
    v70 = swift_getWitnessTable();
    v71 = v117;
    sub_1B79E3830(v67, &unk_1B7AA6B10, v66, v57, v67, v70, v68);

    (*(v118 + 8))(v64, v57);
    v72 = swift_getWitnessTable();
    v140 = v70;
    v141 = v72;
    v73 = v130;
    v74 = swift_getWitnessTable();
    v75 = v119;
    sub_1B7957EE0(v71, v73, v74);
    v76 = *(v121 + 8);
    v76(v71, v73);
    v77 = v120;
    sub_1B7957EE0(v75, v73, v74);
    v78 = v124;
    sub_1B79B5878(v77, v73);
    v138 = v74;
    v139 = v65;
    v79 = v131;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v54 = v127;
    sub_1B79B5878(v78, v79);

    (*(v125 + 8))(v78, v79);
    v76(v77, v73);
    v76(v75, v73);
    v45 = v136;
  }

  else if (v38)
  {
    v43 = v116;
    v44 = v134;
    v45 = v136;
    sub_1B7957EE0(v126, v134, v136);
    v46 = v102;
    sub_1B7957EE0(v43, v44, v45);
    v47 = sub_1B7A504E0();
    v148 = v45;
    v149 = v47;
    v48 = swift_getWitnessTable();
    v49 = swift_getWitnessTable();
    v146 = v48;
    v147 = v49;
    v50 = v130;
    v51 = swift_getWitnessTable();
    v52 = v124;
    sub_1B7959A28(v46, v50, v44);
    v144 = v51;
    v145 = v45;
    v53 = v131;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v54 = v127;
    sub_1B79B5878(v52, v53);
    (*(v125 + 8))(v52, v53);
    v55 = *(v107 + 8);
    v55(v46, v44);
    v55(v116, v44);
  }

  else
  {
    v80 = v116;
    v81 = v134;
    (*(v107 + 16))(v116, v126, v134);
    v82 = v103;
    v83 = v136;
    _RequirementFailureView.init<>(_:_:)(v80, 0xD000000000000022, 0x80000001B7AC7AC0, v81, v103);
    v84 = v132;
    v85 = swift_getWitnessTable();
    v86 = v108;
    sub_1B7957EE0(v82, v84, v85);
    v134 = *(v104 + 8);
    v134(v82, v84);
    sub_1B7957EE0(v86, v84, v85);
    v87 = sub_1B7A504E0();
    v162 = v83;
    v163 = v87;
    v88 = swift_getWitnessTable();
    v89 = swift_getWitnessTable();
    v160 = v88;
    v161 = v89;
    v158 = swift_getWitnessTable();
    v159 = v83;
    v90 = v131;
    swift_getWitnessTable();
    v54 = v127;
    sub_1B7959A28(v82, v90, v84);
    v91 = v82;
    v45 = v83;
    v92 = v134;
    v134(v91, v84);
    v92(v108, v84);
  }

  v93 = sub_1B7A504E0();
  v156 = v45;
  v157 = v93;
  v94 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v154 = v94;
  v155 = v95;
  v152 = swift_getWitnessTable();
  v153 = v45;
  v96 = swift_getWitnessTable();
  v97 = swift_getWitnessTable();
  v150 = v96;
  v151 = v97;
  v98 = v129;
  v99 = swift_getWitnessTable();
  sub_1B7957EE0(v54, v98, v99);
  return (*(v128 + 8))(v54, v98);
}

uint64_t sub_1B7A50138(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1B7A99CC0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1B7A99CD0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for _IntentProgress();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7A502C0, 0, 0);
}

uint64_t sub_1B7A502C0()
{
  (*(v0[11] + 16))(v0[12], v0[2], v0[10]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = v0[5];
      v2 = v0[6];
      v4 = v0[4];
      v5 = *v0[12];
      *v2 = v5;
      *(v2 + 8) = 1;
      (*(v3 + 104))(v2, *MEMORY[0x1E69AB428], v4);
      v6 = v5;
      sub_1B7A99D10();

      (*(v3 + 8))(v2, v4);
    }

    else
    {
      v14 = v0[8];
      v13 = v0[9];
      v15 = v0[7];
      *v13 = 1;
      (*(v14 + 104))(v13, *MEMORY[0x1E69AB448], v15);
      sub_1B7A99D30();
      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];
    *v10 = 1;
    (*(v11 + 104))(v10, *MEMORY[0x1E69AB438], v12);
    sub_1B7A99D10();
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
  }

  v16 = v0[1];

  return v16();
}

unint64_t sub_1B7A504E0()
{
  result = qword_1EBA47920;
  if (!qword_1EBA47920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47920);
  }

  return result;
}

uint64_t sub_1B7A50544(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D338;

  return sub_1B7A50138(a1, v4);
}

uint64_t sub_1B7A505FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(v11 + 24))(v12, v11, v9);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = (&v17 - ((v8 + 39) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a2;
  v15[1] = a3;
  v15[2] = a4;
  (*(v7 + 32))(v15 + 3, v10, a3, v14);
  swift_getKeyPath();
  return sub_1B7A97100();
}

uint64_t sub_1B7A50734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(v14 + 24))(v15, v14, v12);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = (&v20 - ((v11 + 47) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  (*(v10 + 32))(v18 + 4, v13, a4, v17);
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B7A508D0(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return sub_1B7A978A0();
}

int *IntentResultView.init(_:empty:success:failure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for IntentResult();
  v15 = sub_1B7A98870();
  (*(*(v15 - 8) + 32))(a8, a1, v15);
  result = type metadata accessor for IntentResultView();
  v17 = (a8 + result[19]);
  *v17 = a2;
  v17[1] = a3;
  v18 = (a8 + result[20]);
  *v18 = a4;
  v18[1] = a5;
  v19 = (a8 + result[21]);
  *v19 = a6;
  v19[1] = a7;
  return result;
}

uint64_t _IntentResultViewDefaultFailure.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_1B7A50AF8()
{
  type metadata accessor for IntentResult();
  sub_1B7A98870();

  JUMPOUT(0x1B8CA9A40);
}

uint64_t IntentResultView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = *(a1 + 24);
  v88 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v87 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v83 - v6;
  v91 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v89 = v8;
  v90 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *(*(v9 + 40) - 8);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v83 - v12;
  v14 = *(v13 + 32);
  v101 = v15;
  v16 = sub_1B7A97B40();
  v100 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v83 - v17;
  v109 = v14;
  v97 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v83 - v21;
  v22 = *(a1 + 16);
  v95 = sub_1B7A9AB60();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v24 = &v83 - v23;
  v25 = type metadata accessor for IntentResult();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v83 - v30;
  v32 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v102 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v16;
  v110 = v3;
  v35 = sub_1B7A97B40();
  v105 = *(v35 - 8);
  v106 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v104 = &v83 - v36;
  sub_1B7A50AF8();
  IntentResult.data.getter(v25, v24);
  v37 = *(v26 + 8);
  v37(v31, v25);
  v38 = v22;
  if ((*(v32 + 48))(v24, 1, v22) == 1)
  {
    v39 = v109;
    (*(v94 + 8))(v24, v95);
    v40 = v111;
    sub_1B7A50AF8();
    v41 = IntentResult.error.getter();
    v42 = (v37)(v28, v25);
    if (v41)
    {
      v43 = (v40 + *(a1 + 84));
      v45 = *v43;
      v44 = v43[1];
      v102 = v45;
      v97 = v44;
      v103 = v41;
      v46 = v91;
      v47 = v38;
      v48 = v90;
      (*(v91 + 16))(v90, v40, a1);
      v49 = (*(v46 + 80) + 72) & ~*(v46 + 80);
      v50 = swift_allocObject();
      *&v51 = v47;
      *(&v51 + 1) = v110;
      *&v52 = v39;
      v53 = v101;
      *(&v52 + 1) = v101;
      *(v50 + 16) = v51;
      *(v50 + 32) = v52;
      v55 = *(a1 + 48);
      v54 = *(a1 + 56);
      *(v50 + 48) = v55;
      *(v50 + 56) = v54;
      v56 = *(a1 + 64);
      *(v50 + 64) = v56;
      (*(v46 + 32))(v50 + v49, v48, a1);
      v57 = v92;
      (v102)(v41, sub_1B7A51728, v50);

      v58 = v98;
      sub_1B7957EE0(v57, v53, v56);
      v59 = *(v93 + 8);
      v59(v57, v53);
      sub_1B7957EE0(v58, v53, v56);
      v60 = v99;
      sub_1B7959A28(v57, v109, v53);
      v114 = v54;
      v115 = v56;
      v61 = v107;
      swift_getWitnessTable();
      v62 = v104;
      sub_1B79B5878(v60, v61);

      (*(v100 + 8))(v60, v61);
      v59(v57, v53);
      v59(v98, v53);
    }

    else
    {
      v75 = v87;
      (*(v40 + *(a1 + 76)))(v42);
      v55 = *(a1 + 48);
      v76 = v86;
      v77 = v110;
      sub_1B7957EE0(v75, v110, v55);
      v78 = *(v88 + 8);
      v78(v75, v77);
      sub_1B7957EE0(v76, v77, v55);
      v54 = *(a1 + 56);
      v56 = *(a1 + 64);
      v120 = v54;
      v121 = v56;
      v79 = v107;
      swift_getWitnessTable();
      v62 = v104;
      sub_1B7959A28(v75, v79, v77);
      v78(v75, v77);
      v78(v76, v77);
    }
  }

  else
  {
    v85 = v32;
    v63 = *(v32 + 32);
    v64 = v102;
    v84 = v22;
    v63(v102, v24, v22);
    v65 = v96;
    (*(v111 + *(a1 + 80)))(v64);
    v54 = *(a1 + 56);
    v66 = v103;
    v67 = v109;
    sub_1B7957EE0(v65, v109, v54);
    v68 = *(v97 + 1);
    v68(v65, v67);
    sub_1B7957EE0(v66, v67, v54);
    v69 = *(a1 + 64);
    v70 = v99;
    sub_1B79B5878(v65, v67);
    v112 = v54;
    v113 = v69;
    v71 = v107;
    swift_getWitnessTable();
    v72 = *(a1 + 48);
    v73 = v104;
    sub_1B79B5878(v70, v71);
    (*(v100 + 8))(v70, v71);
    v74 = v65;
    v55 = v72;
    v68(v74, v67);
    v68(v103, v67);
    (*(v85 + 8))(v102, v84);
    v62 = v73;
    v56 = v69;
  }

  v118 = v54;
  v119 = v56;
  WitnessTable = swift_getWitnessTable();
  v117 = v55;
  v80 = v106;
  v81 = swift_getWitnessTable();
  sub_1B7957EE0(v62, v80, v81);
  return (*(v105 + 8))(v62, v80);
}

uint64_t sub_1B7A51670()
{
  v0 = type metadata accessor for IntentResult();
  MEMORY[0x1EEE9AC00](v0);
  sub_1B7A98870();
  MEMORY[0x1B8CA9A40]();
  IntentResult.invalidate(clearing:)(1);
  return sub_1B7A98810();
}

uint64_t sub_1B7A51728()
{
  type metadata accessor for IntentResultView();

  return sub_1B7A51670();
}

uint64_t _IntentResultViewDefaultEmpty.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B7A978F0();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  v30 = 0;
  sub_1B7A986C0();
  v24 = v26;
  v23 = v27;
  KeyPath = swift_getKeyPath();
  v30 = 0;
  v21 = swift_getKeyPath();
  v29 = 0;
  v20 = swift_getKeyPath();
  v28 = 0;
  LOBYTE(v26) = 1;
  v17 = v30;
  v19 = v29;
  v18 = swift_getKeyPath();
  sub_1B7A978E0();
  sub_1B7A98A40();
  sub_1B7A97180();
  if (sub_1B7A97170())
  {
    sub_1B7A98A50();
  }

  v12 = sub_1B7A51B78();
  sub_1B7A970B0();

  (*(v25 + 8))(v4, v2);
  (*(v6 + 16))(v8, v11, v5);
  v26 = v2;
  v27 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_1B7A972B0();
  result = (*(v6 + 8))(v11, v5);
  *a1 = sub_1B795AAEC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v24;
  v15 = KeyPath;
  *(a1 + 32) = v23;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v21;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 80) = 0;
  *(a1 + 88) = v18;
  *(a1 + 96) = sub_1B7A51B6C;
  *(a1 + 104) = 0;
  *(a1 + 112) = v13;
  return result;
}

unint64_t sub_1B7A51B78()
{
  result = qword_1EBA46C00;
  if (!qword_1EBA46C00)
  {
    sub_1B7A978F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46C00);
  }

  return result;
}

uint64_t _IntentResultViewDefaultFailure.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA49410);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_1B7A51C80;
  v9[2] = 0;
  return result;
}

uint64_t sub_1B7A51C8C(_BYTE *a1, uint64_t a2, char a3)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;

  if (v5 == 3)
  {
    *a1 = a3;
  }

  return result;
}

uint64_t sub_1B7A51DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA49410);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_1B7A51C80;
  v9[2] = 0;
  return result;
}

unint64_t sub_1B7A51E58()
{
  type metadata accessor for IntentResult();
  result = sub_1B7A98870();
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

uint64_t sub_1B7A51EF4(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) & 0xF8;
  v8 = (((((((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v7 + 23) & ~v7 & 0x1F8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
      v5 = *((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
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

int *sub_1B7A52028(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (((((((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (((*(v4 + 80) & 0xF8) + 23) & ~(*(v4 + 80) & 0xF8) & 0x1F8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v8 = a3 - 2147483646;
    if (v6)
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v7 = 1;
    }

    else
    {
      v7 = v9;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v10 = a2 & 0x7FFFFFFF;
    if (v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v6)
    {
      v12 = result;
      bzero(result, v6);
      result = v12;
      *v12 = v10;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(result + v6) = v11;
      }

      else
      {
        *(result + v6) = v11;
      }
    }

    else if (v7)
    {
      *(result + v6) = v11;
    }

    return result;
  }

  v7 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v7 <= 1)
  {
    if (v7)
    {
      *(result + v6) = 0;
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

  if (v7 == 2)
  {
    *(result + v6) = 0;
    goto LABEL_28;
  }

  *(result + v6) = 0;
  if (a2)
  {
LABEL_29:
    *((result + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B7A521D0()
{
  result = qword_1EBA49498;
  if (!qword_1EBA49498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA494A0);
    sub_1B7A52288();
    sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49498);
  }

  return result;
}

unint64_t sub_1B7A52288()
{
  result = qword_1EBA494A8;
  if (!qword_1EBA494A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA494B0);
    sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
    sub_1B797EC34(&qword_1EBA494B8, &qword_1EBA494C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA494A8);
  }

  return result;
}

unint64_t sub_1B7A5236C()
{
  result = qword_1EBA494C8;
  if (!qword_1EBA494C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA49410);
    sub_1B797EC34(&qword_1EBA46F48, &qword_1EBA46F50);
    sub_1B797EC34(&qword_1EBA494D0, &qword_1EBA494D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA494C8);
  }

  return result;
}

uint64_t sub_1B7A524A4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v59 = a6;
  v14 = *(a5 + 8);
  v56 = a7;
  v57 = v14;
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - v21;
  v23 = *(v17 + 16);
  v60 = a8;
  v23(a8, a1, AssociatedTypeWitness, v20);
  v58 = a2;
  sub_1B7A9A920();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = a1;
  v51 = AssociatedConformanceWitness;
  LOBYTE(a8) = sub_1B7A9A440();
  v25 = *(v17 + 8);
  v25(v22, AssociatedTypeWitness);
  v54 = a4;
  v55 = a5;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v65 = v59;
  if (a8)
  {
    v66 = v56;
    v26 = *(type metadata accessor for ShelfCollection.Context() + 60);
    sub_1B7A9A410();
    v27 = sub_1B7A9A9E0();
    v49 = v28;
    v50 = v27;
    v29 = v60;
    v52 = *(v15 + 8);
    v30 = swift_getAssociatedTypeWitness();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v29 + v26, v49, v30);
    v50(&v62, 0);
    v25(v22, AssociatedTypeWitness);
    (*(v31 + 56))(v29 + v26, 0, 1, v30);
    v32 = v56;
  }

  else
  {
    v32 = v56;
    v66 = v56;
    v33 = *(type metadata accessor for ShelfCollection.Context() + 60);
    v52 = *(v15 + 8);
    v34 = swift_getAssociatedTypeWitness();
    (*(*(v34 - 8) + 56))(v60 + v33, 1, 1, v34);
  }

  v35 = v53;
  v36 = v58;
  sub_1B7A9A960();
  sub_1B7A9A410();
  v25(v35, AssociatedTypeWitness);
  LOBYTE(v35) = sub_1B7A9A450();
  v25(v22, AssociatedTypeWitness);
  v37 = v36;
  v38 = v25;
  if (v35)
  {
    v62 = a3;
    v63 = v54;
    v64 = v55;
    v65 = v59;
    v66 = v32;
    v59 = *(type metadata accessor for ShelfCollection.Context() + 64);
    sub_1B7A9A940();
    v57 = sub_1B7A9A9E0();
    v40 = v39;
    v41 = swift_getAssociatedTypeWitness();
    v42 = v59;
    v43 = v60;
    v44 = v38;
    v45 = *(v41 - 8);
    (*(v45 + 16))(v60 + v59, v40, v41);
    v57(&v62, 0);
    (*(*(a3 - 8) + 8))(v58, a3);
    v44(v61, AssociatedTypeWitness);
    v44(v22, AssociatedTypeWitness);
    return (*(v45 + 56))(v43 + v42, 0, 1, v41);
  }

  else
  {
    (*(*(a3 - 8) + 8))(v37, a3);
    v25(v61, AssociatedTypeWitness);
    v62 = a3;
    v63 = v54;
    v64 = v55;
    v65 = v59;
    v66 = v32;
    v47 = *(type metadata accessor for ShelfCollection.Context() + 64);
    v48 = swift_getAssociatedTypeWitness();
    return (*(*(v48 - 8) + 56))(v60 + v47, 1, 1, v48);
  }
}

uint64_t ShelfCollection.Context.shelfOffset.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t ShelfCollection.Context.previousShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ShelfCollection.Context.nextShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ShelfCollection.init(_:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a6 - 8);
  (*(v12 + 16))(a7, a1, a6);
  v13 = type metadata accessor for ShelfCollection();
  v14 = a7 + v13[15];
  *v14 = a2;
  *(v14 + 8) = a3 & 1;
  v15 = (a7 + v13[16]);
  *v15 = a4;
  v15[1] = a5;
  result = (*(v12 + 8))(a1, a6);
  *(a7 + v13[17]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ShelfCollection.init<A>(_:spacing:shelfContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25[0] = a7;
  v29 = a3;
  v30 = a2;
  v27 = a1;
  v28 = a9;
  v16 = *(a6 - 8);
  v25[1] = a11;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v26 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v17);
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  v19[5] = a10;
  v19[6] = a11;
  v19[7] = a4;
  v19[8] = a5;
  v20 = type metadata accessor for IndexedRandomAccessCollection();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = v20;
  v32 = AssociatedTypeWitness;
  v33 = v25[0];
  v34 = WitnessTable;
  v35 = AssociatedConformanceWitness;
  sub_1B7A988E0();
  swift_getWitnessTable();
  ShelfCollection.init(_:spacing:content:)(v26, v30, v29 & 1, sub_1B7A534BC, v19, a6, v28);
  return (*(v16 + 8))(v27, a6);
}

uint64_t sub_1B7A5302C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a8;
  v49 = a7;
  v51 = a2;
  v52 = a3;
  v44 = a1;
  v53 = a9;
  v47 = *(a4 - 8);
  v50 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v45 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndexedRandomAccessCollection();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v38 - v14;
  v38[2] = v38 - v14;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = v13;
  WitnessTable = swift_getWitnessTable();
  v43 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = v13;
  v61 = AssociatedTypeWitness;
  v62 = a5;
  v63 = WitnessTable;
  v64 = AssociatedConformanceWitness;
  v38[0] = sub_1B7A988E0();
  v48 = *(v38[0] - 8);
  MEMORY[0x1EEE9AC00](v38[0]);
  v40 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v41 = v38 - v20;
  v21 = a6;
  v22 = v44;
  RandomAccessCollection.indexed.getter(a4, v15);
  v54 = a4;
  v55 = a5;
  v23 = v49;
  v56 = a6;
  v57 = v49;
  v24 = v39;
  v58 = v39;
  v38[1] = swift_getKeyPath();
  v25 = v47;
  v26 = v45;
  (*(v47 + 16))(v45, v22, a4);
  v27 = (*(v25 + 80) + 72) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = a4;
  *(v28 + 3) = a5;
  *(v28 + 4) = v21;
  *(v28 + 5) = v23;
  v29 = v51;
  v30 = v52;
  *(v28 + 6) = v24;
  *(v28 + 7) = v29;
  *(v28 + 8) = v30;
  (*(v25 + 32))(&v28[v27], v26, a4);
  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = v21;
  v31[5] = v23;
  v31[6] = v24;
  v31[7] = sub_1B7A54D1C;
  v31[8] = v28;

  v32 = v40;
  sub_1B7A988B0();
  v59 = v23;
  v33 = v38[0];
  v34 = swift_getWitnessTable();
  v35 = v41;
  sub_1B7957EE0(v32, v33, v34);
  v36 = *(v48 + 8);
  v36(v32, v33);
  sub_1B7957EE0(v35, v33, v34);
  return (v36)(v35, v33);
}

uint64_t sub_1B7A53540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v50 = a5;
  v53 = a4;
  v54 = a3;
  v52 = a2;
  v56 = a9;
  v55 = a10;
  v47 = *(a6 - 8);
  v48 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v40 - v16;
  v17 = type metadata accessor for IndexedRandomAccessCollection();
  swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v17;
  v59 = v18;
  v60 = a7;
  v61 = WitnessTable;
  v62 = AssociatedConformanceWitness;
  v21 = sub_1B7A988E0();
  v22 = swift_getWitnessTable();
  v58 = a6;
  v59 = v21;
  v51 = a8;
  v60 = a8;
  v61 = v22;
  v41 = v22;
  v49 = a11;
  v62 = a11;
  v42 = type metadata accessor for ShelfCollection.Context();
  v23 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v25 = &v40 - v24;
  v57 = a7;
  v26 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v40 - v31;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = v45;
  (*(v43 + 16))(v45, v48, v44);
  v34 = v46;
  (*(v47 + 16))(v46, v50, a6);
  v35 = swift_checkMetadataState();
  sub_1B7A524A4(v33, v34, a6, v35, v51, v41, v49, v25);
  v54(v52, v25);
  (*(v23 + 8))(v25, v42);
  v36 = v57;
  v37 = v55;
  sub_1B7957EE0(v29, v57, v55);
  v38 = *(v26 + 8);
  v38(v29, v36);
  sub_1B7957EE0(v32, v36, v37);
  v38(v32, v36);
}

uint64_t ShelfCollection.onScroll(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 16))(a4, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(a3 + 68);
  v11 = *(a4 + v10);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B798793C(0, v11[2] + 1, 1, v11);
    v11 = result;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    result = sub_1B798793C((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_1B7A53B20;
  v15[5] = v9;
  *(a4 + v10) = v11;
  return result;
}

uint64_t ShelfCollection.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7;
  v33 = v4;
  v9 = *(v8 + 24);
  v34 = *(v8 + 40);
  v35 = v9;
  v10 = type metadata accessor for ShelfPage();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - v19;
  (*(v5 + 16))(v7, v2, v4, v18);
  v21 = *(a1 + 60);
  v22 = *(a1 + 64);
  v31 = v2;
  v23 = v2 + v21;
  v24 = *v23;
  LOBYTE(v5) = *(v23 + 8);
  v25 = v2 + v22;
  v26 = *(v2 + v22);
  v27 = *(v25 + 8);

  ShelfPage.init(_:spacing:configuration:content:)(v32, v24, v5, 1, v26, v27, v33, v13);
  sub_1B7980148(*(v31 + *(a1 + 68)), v10, v16);
  v28 = *(v11 + 8);
  v28(v13, v10);
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v16, v10, WitnessTable);
  v28(v16, v10);
  sub_1B7957EE0(v20, v10, WitnessTable);
  return (v28)(v20, v10);
}

uint64_t sub_1B7A53DC8()
{
  v0 = sub_1B7A97540();
  __swift_allocate_value_buffer(v0, qword_1EBA494E0);
  v1 = __swift_project_value_buffer(v0, qword_1EBA494E0);
  if (qword_1EBA45B20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EBA45F50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static CoordinateSpace.shelfCollectionScrollView.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBA45B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7A97540();
  v3 = __swift_project_value_buffer(v2, qword_1EBA494E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double EnvironmentValues.shelfCollectionSize.getter()
{
  type metadata accessor for ShelfContainerEnvironmentValues();
  sub_1B7A540AC();
  v0 = sub_1B7A978B0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_1B7A96CB0();

  v2 = *(v1 + 16);
  swift_getKeyPath();
  sub_1B7A96CB0();

  return v2;
}

uint64_t View.shelfCollectionSize(_:)()
{
  swift_getKeyPath();
  sub_1B7A98150();
}

unint64_t sub_1B7A540AC()
{
  result = qword_1EBA45FA8;
  if (!qword_1EBA45FA8)
  {
    type metadata accessor for ShelfContainerEnvironmentValues();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FA8);
  }

  return result;
}

void sub_1B7A54150()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1B7989190();
    if (v1 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v2 <= 0x3F)
      {
        sub_1B79891E0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B7A54208(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1B7A5434C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 23] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1B7A54518()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1B7A9AB60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A545F0(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  if (v9)
  {
    v13 = *(*(v7 - 8) + 64);
  }

  else
  {
    v13 = *(*(v7 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v5 + 64) + v12;
  if (a2 <= v11)
  {
    goto LABEL_34;
  }

  v15 = ((v13 + v12 + (v14 & ~v12)) & ~v12) + v13;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 < 2)
    {
LABEL_33:
      if (v11)
      {
LABEL_34:
        if (v6 >= v10)
        {
          v24 = *(v5 + 48);

          return v24(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v22 = (*(v8 + 48))((a1 + v14) & ~v12);
          if (v22 >= 2)
          {
            return v22 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_33;
  }

LABEL_20:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_1B7A548B0(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v10 + 80);
  v15 = *(v7 + 64) + v14;
  if (v11)
  {
    v16 = *(v10 + 64);
  }

  else
  {
    v16 = *(v10 + 64) + 1;
  }

  v17 = ((v16 + v14 + (v15 & ~v14)) & ~v14) + v16;
  if (a3 <= v13)
  {
    goto LABEL_20;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v9 = 4;
      if (v13 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }

LABEL_20:
    if (v13 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v9 = 1;
  if (v13 >= a2)
  {
LABEL_30:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v17] = 0;
    }

    else if (v9)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v8 >= v12)
      {
        v27 = *(v7 + 56);

        v27(a1, a2, v8, AssociatedTypeWitness);
      }

      else
      {
        v23 = (&a1[v15] & ~v14);
        if (v12 >= a2)
        {
          v28 = *(v10 + 56);

          v28(v23, (a2 + 1));
        }

        else
        {
          if (v16 <= 3)
          {
            v24 = ~(-1 << (8 * v16));
          }

          else
          {
            v24 = -1;
          }

          if (v16)
          {
            v25 = v24 & (~v12 + a2);
            if (v16 <= 3)
            {
              v26 = v16;
            }

            else
            {
              v26 = 4;
            }

            bzero(v23, v16);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *v23 = v25;
                v23[2] = BYTE2(v25);
              }

              else
              {
                *v23 = v25;
              }
            }

            else if (v26 == 1)
            {
              *v23 = v25;
            }

            else
            {
              *v23 = v25;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v20 = ~v13 + a2;
  if (v17 >= 4)
  {
    bzero(a1, ((v16 + v14 + (v15 & ~v14)) & ~v14) + v16);
    *a1 = v20;
    v21 = 1;
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v21 = (v20 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_58:
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = v20 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_58;
  }

  if (v17 == 2)
  {
    *a1 = v22;
    if (v9 > 1)
    {
LABEL_62:
      if (v9 == 2)
      {
        *&a1[v17] = v21;
      }

      else
      {
        *&a1[v17] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v9 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v9)
  {
    a1[v17] = v21;
  }
}

unint64_t sub_1B7A54CB8()
{
  result = qword_1EBA49600[0];
  if (!qword_1EBA49600[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA495F8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA49600);
  }

  return result;
}

unint64_t sub_1B7A54DBC()
{
  sub_1B7A9A100();
  sub_1B7A9AB60();
  result = sub_1B7A98870();
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

uint64_t sub_1B7A54E64(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) & 0xF8;
  v8 = ((((((v4 + ((v7 + 23) & ~v7 & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
      v5 = *((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
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

int *sub_1B7A54F94(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = ((((((v5 + (((*(v4 + 80) & 0xF8) + 23) & ~(*(v4 + 80) & 0xF8) & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v8 = a3 - 2147483646;
    if (v6)
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v7 = 1;
    }

    else
    {
      v7 = v9;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v10 = a2 & 0x7FFFFFFF;
    if (v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v6)
    {
      v12 = result;
      bzero(result, v6);
      result = v12;
      *v12 = v10;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(result + v6) = v11;
      }

      else
      {
        *(result + v6) = v11;
      }
    }

    else if (v7)
    {
      *(result + v6) = v11;
    }

    return result;
  }

  v7 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v7 <= 1)
  {
    if (v7)
    {
      *(result + v6) = 0;
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

  if (v7 == 2)
  {
    *(result + v6) = 0;
    goto LABEL_28;
  }

  *(result + v6) = 0;
  if (a2)
  {
LABEL_29:
    *((result + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

int *sub_1B7A55184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v15 = sub_1B7A98870();
  (*(*(v15 - 8) + 32))(a8, a1, v15);
  result = type metadata accessor for _ResultView();
  v17 = (a8 + result[19]);
  *v17 = a2;
  v17[1] = a3;
  v18 = (a8 + result[20]);
  *v18 = a4;
  v18[1] = a5;
  v19 = (a8 + result[21]);
  *v19 = a6;
  v19[1] = a7;
  return result;
}

uint64_t sub_1B7A5529C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v4 = *(a1 + 24);
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = (&v56 - v7);
  v9 = *(v8 + 16);
  v59 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(*(v11 + 40) - 8);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v56 - v14;
  v16 = *(v15 + 32);
  v68 = v17;
  v18 = sub_1B7A97B40();
  v66 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v67 = &v56 - v25;
  v65 = v9;
  v26 = sub_1B7A9A100();
  v27 = sub_1B7A9AB60();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v56 - v28);
  v69 = v4;
  v30 = sub_1B7A97B40();
  v70 = *(v30 - 8);
  v71 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v56 - v31;
  v33 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v33);
  if ((*(*(v26 - 8) + 48))(v29, 1, v26) == 1)
  {
    (*(v2 + *(a1 + 76)))();
    v34 = *(a1 + 56);
    v35 = v67;
    sub_1B7957EE0(v23, v16, v34);
    v36 = *(v62 + 1);
    v36(v23, v16);
    sub_1B7957EE0(v35, v16, v34);
    v37 = *(a1 + 64);
    sub_1B79B5878(v23, v16);
    v73 = v34;
    v74 = v37;
    swift_getWitnessTable();
    v38 = *(a1 + 48);
    sub_1B79B5878(v20, v18);
    (*(v66 + 8))(v20, v18);
    v36(v23, v16);
    v36(v67, v16);
    v39 = v32;
  }

  else
  {
    v62 = v20;
    v40 = v68;
    v67 = v32;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v65 = *v29;
      v41 = v57;
      (*(v2 + *(a1 + 80)))();
      v37 = *(a1 + 64);
      v42 = v56;
      sub_1B7957EE0(v41, v40, v37);
      v64 = *(v58 + 8);
      v64(v41, v40);
      sub_1B7957EE0(v42, v40, v37);
      v34 = *(a1 + 56);
      v43 = v62;
      sub_1B7959A28(v41, v16, v40);
      v75 = v34;
      v76 = v37;
      swift_getWitnessTable();
      v38 = *(a1 + 48);
      v39 = v67;
      sub_1B79B5878(v43, v18);

      (*(v66 + 8))(v43, v18);
      v44 = v41;
      v45 = v64;
      v64(v44, v40);
      v45(v42, v40);
    }

    else
    {
      v46 = v59;
      v47 = v63;
      (*(v59 + 32))(v63, v29, v65);
      v48 = v60;
      (*(v2 + *(a1 + 84)))(v47);
      v49 = *(a1 + 48);
      v50 = v64;
      v51 = v69;
      sub_1B7957EE0(v48, v69, v49);
      v52 = *(v61 + 8);
      v52(v48, v51);
      sub_1B7957EE0(v50, v51, v49);
      v34 = *(a1 + 56);
      v37 = *(a1 + 64);
      v38 = v49;
      v81 = v34;
      v82 = v37;
      swift_getWitnessTable();
      v39 = v67;
      sub_1B7959A28(v48, v18, v51);
      v52(v48, v51);
      v52(v64, v51);
      (*(v46 + 8))(v63, v65);
    }
  }

  v79 = v34;
  v80 = v37;
  WitnessTable = swift_getWitnessTable();
  v78 = v38;
  v53 = v71;
  v54 = swift_getWitnessTable();
  sub_1B7957EE0(v39, v53, v54);
  return (*(v70 + 8))(v39, v53);
}

uint64_t sub_1B7A55AFC@<X0>(uint64_t (*a1)@<X0>(uint64_t a1@<X8>)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a1;
  v33 = a4;
  v30 = a5;
  v7 = type metadata accessor for DispatcherPerformActionViewModifier();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v31 = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v27 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  sub_1B797D54C();
  if (sub_1B7A9AB10() & 1) != 0 || (sub_1B7A9AB00())
  {
    sub_1B7A994D0();
    sub_1B7A9AB60();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v27 = v10;
    v19 = *(TupleTypeMetadata2 + 48);
    v20 = v32;
    sub_1B7A99210();
    *(v14 + v19) = v20;
    v10 = v27;
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 2) = a2;
    *(v21 + 3) = a3;
    v22 = v32;
    *(v21 + 4) = v33;
    *(v21 + 5) = v22;
    *v14 = sub_1B7A5913C;
    v14[1] = v21;
  }

  v23 = v31;
  swift_storeEnumTagMultiPayload();
  v24 = v29;
  (*(v29 + 32))(v17, v14, v23);
  v25 = v28;
  (*(v24 + 16))(v28, v17, v23);
  sub_1B7A56CC0(v25, v10);

  MEMORY[0x1B8CA96D0](v10, a2, v7, v33);
  (*(v8 + 8))(v10, v7);
  return (*(v24 + 8))(v17, v23);
}

uint64_t EnvironmentValues.performAction.getter()
{
  sub_1B7A42B54();

  return sub_1B7A97890();
}

uint64_t sub_1B7A55E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = sub_1B7A994D0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-1] - v11;
  (*(v13 + 16))(&v18[-1] - v11, a1, v10);
  v14 = *(v4 + *(a2 + 28));
  v18[3] = a2;
  v18[4] = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1Tm, v4, a2);

  return sub_1B7A55FA8(v12, v14, v18, v8, a3);
}

uint64_t sub_1B7A55FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a2;
  v58 = a3;
  v56 = a5;
  v7 = sub_1B7A99C30();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v41 - v8;
  v9 = sub_1B7A99DA0();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v41 - v10;
  v11 = sub_1B7A99D70();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v41 - v12;
  v13 = sub_1B7A994D0();
  v14 = sub_1B7A9AB60();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v51 = a4;
  v52 = &v41 - v15;
  v16 = type metadata accessor for DispatcherPerformAction();
  v53 = sub_1B7A9AB60();
  v17 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v19 = &v41 - v18;
  v20 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  v24 = *(v13 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = *(v24 + 16);
  v54 = &v41 - v28;
  v55 = a1;
  v27(v26);
  sub_1B7957820(v58, v59, &qword_1EBA47828);
  if (!v59[3])
  {
    sub_1B7957888(v59, &qword_1EBA47828);
    (*(v20 + 56))(v19, 1, 1, v16);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49150);
  v29 = swift_dynamicCast();
  (*(v20 + 56))(v19, v29 ^ 1u, 1, v16);
  if ((*(v20 + 48))(v19, 1, v16) == 1)
  {
LABEL_5:
    (*(v17 + 8))(v19, v53);
    v31 = v54;
    goto LABEL_6;
  }

  (*(v20 + 32))(v23, v19, v16);
  v30 = v52;
  (v27)(v52, v23, v13);
  (*(v24 + 56))(v30, 0, 1, v13);
  v31 = v54;
  sub_1B7A99490();
  (*(v20 + 8))(v23, v16);
LABEL_6:
  v32 = v58;
  if (*(v58 + 24))
  {
    goto LABEL_14;
  }

  sub_1B7A98FC0();
  if ((sub_1B7A99470() & 1) == 0)
  {
    sub_1B7A5731C(v59);
    v33 = v48;
    sub_1B7A99D60();
    v34 = v50;
    swift_getWitnessTable();
    sub_1B7A99480();
    (*(v49 + 8))(v33, v34);
  }

  if (*(v32 + 24))
  {
    goto LABEL_14;
  }

  sub_1B7A99150();
  if ((sub_1B7A99470() & 1) == 0)
  {
    v35 = v45;
    sub_1B7A99D90();
    v36 = v47;
    swift_getWitnessTable();
    sub_1B7A99480();
    (*(v46 + 8))(v35, v36);
  }

  if (*(v32 + 24) || (sub_1B7A98D60(), (sub_1B7A99470() & 1) != 0))
  {
LABEL_14:
    (*(v24 + 8))(v55, v13);
  }

  else
  {
    v39 = v42;
    sub_1B7A99C20();
    v40 = v44;
    swift_getWitnessTable();
    sub_1B7A99480();
    (*(v24 + 8))(v55, v13);
    (*(v43 + 8))(v39, v40);
  }

  sub_1B7957888(v32, &qword_1EBA47828);
  v37 = v56;
  result = (*(v24 + 32))(v56, v31, v13);
  *(v37 + *(v16 + 28)) = v57;
  return result;
}

uint64_t View.actionDispatcher<A>(_:with:)@<X0>(unint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X8>)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v37 = a5;
  v32 = a2;
  v30 = a1;
  v34 = a6;
  v35 = type metadata accessor for DispatcherPerformActionViewModifier();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v29 - v7;
  v8 = sub_1B7A994D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v29 - v11;
  v12 = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v29 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  sub_1B797D54C();
  if (sub_1B7A9AB10() & 1) != 0 || (sub_1B7A9AB00())
  {
    sub_1B7A9AB60();
    v22 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v9 + 16))(v18, v30, v8);
    (*(v9 + 56))(v18, 0, 1, v8);
    *(v18 + v22) = v32;
  }

  else
  {
    (*(v9 + 16))(v29, v30, v8);
    v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v30 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    v25 = v37;
    *(v24 + 2) = v36;
    *(v24 + 3) = a4;
    *(v24 + 4) = v25;
    (*(v9 + 32))(&v24[v23], v29, v8);
    *&v24[v30] = v32;
    *v18 = sub_1B7A56BFC;
    v18[1] = v24;
  }

  swift_storeEnumTagMultiPayload();
  (*(v13 + 32))(v21, v18, v12);
  (*(v13 + 16))(v15, v21, v12);
  v26 = v31;
  sub_1B7A56CC0(v15, v31);

  v27 = v35;
  MEMORY[0x1B8CA96D0](v26, v36, v35, v37);
  (*(v33 + 8))(v26, v27);
  return (*(v13 + 8))(v21, v12);
}

uint64_t sub_1B7A56B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B7A994D0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 + 48);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *(a3 + v8) = a2;
  (*(*(TupleTypeMetadata2 - 8) + 56))(a3, 0, 1, TupleTypeMetadata2);
}

uint64_t sub_1B7A56BFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1B7A994D0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B7A56B0C(v1 + v4, v5, a1);
}

uint64_t sub_1B7A56CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for DispatcherPerformActionViewModifier() + 28);
  *v4 = swift_getKeyPath();
  *(v4 + 40) = 0;
  v5 = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t View.actionDispatcher<A>(from:)@<X0>(uint64_t (*a1)@<X0>(uint64_t a1@<X8>)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B7A994D0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  sub_1B7A99230();
  View.actionDispatcher<A>(_:with:)(v13, a1, a2, a3, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B7A56E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7A994D0();
  v4 = sub_1B7A99250();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = TupleTypeMetadata2;
  if (v4)
  {
    v7 = *(TupleTypeMetadata2 + 48);
    sub_1B7A99230();
    *(a2 + v7) = a1;
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  else
  {
    v9 = *(*(TupleTypeMetadata2 - 8) + 56);

    return v9(a2, 1, 1, TupleTypeMetadata2);
  }
}

uint64_t View.actionDispatcher<A>(with:implementations:)@<X0>(uint64_t (*a1)@<X0>(uint64_t a1@<X8>)@<X0>, void (*a2)(__n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_1B7A994D0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  a2(v14);
  View.actionDispatcher<A>(_:with:)(v16, a1, a3, a4, a5, a6);
  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_1B7A57100()
{
  result = sub_1B7958DD8();
  if (v1 <= 0x3F)
  {
    sub_1B7A994D0();
    sub_1B7A9AB60();
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B7A571B4()
{
  type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage();
  if (v0 <= 0x3F)
  {
    sub_1B7A57264();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7A57264()
{
  if (!qword_1EDC0EC28[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47828);
    v0 = sub_1B7A970E0();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC0EC28);
    }
  }
}

double sub_1B7A572C8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1B7A5731C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B7A99690();
  v3 = MEMORY[0x1E69AB218];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1Tm(a1);
  return sub_1B7A99680();
}

uint64_t sub_1B7A57360()
{
  v1 = sub_1B7A994D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - v3;
  v5 = sub_1B7A98C30();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1, v7);
  sub_1B7A98C00();
  v10 = sub_1B7A992C0();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_1B7A574F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A99450();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  sub_1B7A57360();
  sub_1B7A99360();
  if (sub_1B7A99250())
  {
    v8 = sub_1B7A99900();
    (*(*(v8 - 8) + 16))(v7, a2, v8);
    v9 = MEMORY[0x1E69AB120];
  }

  else
  {
    v9 = MEMORY[0x1E69AB128];
  }

  (*(v5 + 104))(v7, *v9, v4);
  sub_1B7A994D0();
  sub_1B7A994C0();
  sub_1B7999E90(a1, v14);
  v10 = swift_allocObject();
  sub_1B795C1E4(v14, v10 + 16);
  sub_1B7999E90(a1, v14);
  v11 = swift_allocObject();
  sub_1B795C1E4(v14, v11 + 16);
  v13[3] = sub_1B7A99690();
  v13[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_1Tm(v13);
  sub_1B7A99680();
  sub_1B7A9A120();

  (*(v5 + 8))(v7, v4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1B7A57784(uint64_t a1, void *a2)
{
  v3 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1B7A9A280();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A98FA0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E69AB008], v8, v10);
  v13 = sub_1B7A98F90();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    sub_1B7A9A1D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D270;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v15 = a2[3];
    v16 = __swift_project_boxed_opaque_existential_1(a2, v15);
    v18[3] = v15;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v16, v15);
    sub_1B7A98C90();
    sub_1B7957888(v18, &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A98C40();
    sub_1B7A99E50();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B7A57B0C(uint64_t a1, void *a2)
{
  v3 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1B7A9A280();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A1D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v8 = a2[3];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v8);
  v18 = v8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1Tm, v9, v8);
  sub_1B7A98C90();
  sub_1B7957888(v17, &qword_1EBA46B50);
  sub_1B7A98CA0();
  swift_getErrorValue();
  v11 = v15;
  v12 = v16;
  v18 = v16;
  v13 = __swift_allocate_boxed_opaque_existential_1Tm(v17);
  (*(*(v12 - 8) + 16))(v13, v11, v12);
  sub_1B7A98C70();
  sub_1B7957888(v17, &qword_1EBA46B50);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  sub_1B7A99E50();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B7A57E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B7A97880();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B7957820(v2 + *(a1 + 28), v12, &qword_1EBA45E08);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v13;
  }

  else
  {
    sub_1B7A9AA10();
    v11 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1B7A57FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a1;
  v96 = a3;
  v4 = *(a2 + 16);
  v5 = sub_1B7A994D0();
  v81 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v72 - v8;
  v82 = type metadata accessor for DispatcherPerformAction();
  v86 = sub_1B7A9AB60();
  v92 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v72 - v11;
  v84 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v72 - v14;
  v83 = v5;
  v15 = sub_1B7A9AB60();
  v87 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  swift_getWitnessTable();
  v79 = a2;
  v21 = sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49688);
  v89 = v21;
  v22 = sub_1B7A97590();
  v93 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v91 = &v72 - v26;
  v27 = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v72 - v29);
  v31 = sub_1B7A97B40();
  v94 = *(v31 - 8);
  v95 = v31;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v72 - v33;
  (*(v28 + 16))(v30, v97, v27, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v76 = v24;
    v74 = v34;
    v35 = *(v30 + *(swift_getTupleTypeMetadata2() + 48));
    v36 = v87;
    (*(v87 + 32))(v20, v30, v15);
    (*(v36 + 16))(v17, v20, v15);
    v37 = v81;
    v38 = v83;
    v39 = (*(v81 + 48))(v17, 1, v83);
    v75 = v20;
    v73 = v15;
    v72 = v35;
    if (v39 == 1)
    {
      (*(v36 + 8))(v17, v15);
      v40 = 1;
      v41 = v80;
    }

    else
    {
      v50 = v78;
      (*(v37 + 32))(v78, v17, v38);
      v51 = v77;
      (*(v37 + 16))(v77, v50, v38);

      sub_1B7A57E20(v79, v100);
      v52 = v35;
      v41 = v80;
      sub_1B7A55FA8(v51, v52, v100, v4, v80);
      (*(v37 + 8))(v50, v38);
      v40 = 0;
    }

    (*(*(v82 - 8) + 56))(v41, v40, 1);
    v53 = v92;
    v54 = *(v92 + 32);
    v55 = v90;
    v56 = v41;
    v57 = v86;
    v54(v90, v56, v86);
    swift_getKeyPath();
    v58 = v85;
    (*(v53 + 16))(v85, v55, v57);
    v59 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v4;
    v54((v60 + v59), v58, v57);
    WitnessTable = swift_getWitnessTable();
    v62 = v76;
    sub_1B7A98320();

    v63 = sub_1B7A590CC();
    v105 = WitnessTable;
    v106 = v63;
    v64 = swift_getWitnessTable();
    v65 = v91;
    sub_1B7957EE0(v62, v22, v64);
    v66 = *(v93 + 8);
    v66(v62, v22);
    sub_1B7957EE0(v65, v22, v64);
    v34 = v74;
    sub_1B7959A28(v62, v22, v22);

    v66(v62, v22);
    v66(v65, v22);
    (*(v92 + 8))(v90, v57);
    (*(v87 + 8))(v75, v73);
  }

  else
  {
    v42 = *v30;
    v43 = v30[1];
    swift_getKeyPath();
    v44 = swift_allocObject();
    v44[2] = v4;
    v44[3] = v42;
    v44[4] = v43;

    v45 = swift_getWitnessTable();
    sub_1B7A98320();

    v46 = sub_1B7A590CC();
    v98 = v45;
    v99 = v46;
    v47 = swift_getWitnessTable();
    v48 = v91;
    sub_1B7957EE0(v24, v22, v47);
    v49 = *(v93 + 8);
    v49(v24, v22);
    sub_1B7957EE0(v48, v22, v47);
    sub_1B79B5878(v24, v22);

    v49(v24, v22);
    v49(v48, v22);
  }

  v67 = swift_getWitnessTable();
  v68 = sub_1B7A590CC();
  v103 = v67;
  v104 = v68;
  v101 = swift_getWitnessTable();
  v102 = v101;
  v69 = v95;
  v70 = swift_getWitnessTable();
  sub_1B7957EE0(v34, v69, v70);
  return (*(v94 + 8))(v34, v69);
}

uint64_t sub_1B7A58A88(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a2;
  v26 = a1;
  v5 = sub_1B7A994D0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = sub_1B7A9AB60();
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  sub_1B7A9A760();
  v29 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v28(isCurrentExecutor);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v9, 1, TupleTypeMetadata2) == 1)
  {
    (*(v7 + 8))(v9, v25);
  }

  else
  {
    v18 = *&v9[*(TupleTypeMetadata2 + 48)];
    (*(v10 + 32))(v16, v9, v5);
    (*(v10 + 16))(v13, v16, v5);
    v19 = v26;
    v20 = *(v26 + 16);
    v30[0] = *v26;
    v30[1] = v20;
    v31 = *(v26 + 32);
    *(&v33 + 1) = type metadata accessor for DispatcherPerformAction();
    WitnessTable = swift_getWitnessTable();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v32);
    sub_1B7A55FA8(v13, v18, v30, a4, boxed_opaque_existential_1Tm);
    (*(v10 + 8))(v16, v5);
    v22 = v33;
    *v19 = v32;
    *(v19 + 16) = v22;
    *(v19 + 32) = WitnessTable;
  }
}

uint64_t sub_1B7A58DAC(uint64_t *a1, uint64_t a2)
{
  v16 = a2;
  v3 = type metadata accessor for DispatcherPerformAction();
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v7, v16, v4);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_1B7957888(a1, &qword_1EBA47828);
    v12 = *(v8 + 32);
    v12(v11, v7, v3);
    a1[3] = v3;
    a1[4] = swift_getWitnessTable();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    v12(boxed_opaque_existential_1Tm, v11, v3);
  }
}

uint64_t sub_1B7A5903C(uint64_t *a1)
{
  type metadata accessor for DispatcherPerformAction();
  v3 = *(sub_1B7A9AB60() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1B7A58DAC(a1, v4);
}

unint64_t sub_1B7A590CC()
{
  result = qword_1EDC0EB30;
  if (!qword_1EDC0EB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB30);
  }

  return result;
}

uint64_t sub_1B7A59148()
{
  result = sub_1B7A994D0();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A59214(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B7A592C0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1B7A59344(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s13PopupHUDModelC8RowModelVMa(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1B7A59430()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA496F8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49720);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7A9D280;
  v5 = v0[1];
  v14 = *v0;
  v15 = v5;

  sub_1B7A9AC20();
  v6 = v0[3];
  v14 = v0[2];
  v15 = v6;

  sub_1B7A9AC20();
  v7 = _s13PopupHUDModelC8RowModelVMa(0);
  sub_1B7957820(v0 + *(v7 + 24), v3, &qword_1EBA496F8);
  v8 = sub_1B7A99000();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v3, 1, v8);
  if (v10 == 1)
  {
    sub_1B7957888(v3, &qword_1EBA496F8);
    v11 = 0;
  }

  else
  {
    sub_1B7A98FD0();
    v11 = v12;
    (*(v9 + 8))(v3, v8);
  }

  v14 = v11;
  LOBYTE(v15) = v10 == 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49728);
  sub_1B7A5D828();
  sub_1B7A9AC20();
  v14 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45FB0);
  sub_1B79886C8();
  return sub_1B7A9AC20();
}

uint64_t sub_1B7A59684()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  return v1;
}

uint64_t sub_1B7A596FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  return v1;
}

uint64_t sub_1B7A59770()
{
  v1 = OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizerP33_71C7C2830233A285322DF4F35DFC4EC113PopupHUDModel__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49748);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizerP33_71C7C2830233A285322DF4F35DFC4EC113PopupHUDModel__rows;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49750);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1B7A5988C()
{
  sub_1B7A5D0A8(319, &qword_1EBA496B8, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1B7A5997C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B7A5997C()
{
  if (!qword_1EBA496C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48790);
    v0 = sub_1B7A96F50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA496C0);
    }
  }
}

void sub_1B7A599E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1B7A9A480();
  [v0 setDateFormat_];

  qword_1EBA49690 = v0;
}

uint64_t sub_1B7A59A5C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA496F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v144 = (&v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v134 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v145 = &v134 - v10;
  v11 = sub_1B7A96BF0();
  v148 = *(v11 - 8);
  v149 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v147 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B7A99000();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v142 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v154 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v153 = &v134 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v134 - v21;
  v156 = _s13PopupHUDModelC8RowModelVMa(0);
  v151 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v143 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v155 = &v134 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v146 = (&v134 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49718);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v134 - v28;
  v30 = sub_1B7A99160();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  KeyPath = (&v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v134 - v35;
  sub_1B7A99170();
  v37 = *(v31 + 48);
  v157 = v30;
  if (v37(v29, 1, v30) == 1)
  {
    return sub_1B7957888(v29, &qword_1EBA49718);
  }

  (*(v31 + 32))(v36, v29, v157);
  v150 = v2;
  v39 = sub_1B7A5AEF8();
  v40 = v13;
  v41 = a1;
  if (v39)
  {
    if (v39 != 1)
    {
      return (*(v31 + 8))(v36, v157);
    }

    v42 = sub_1B7A99180();
    v141 = v8;
    sub_1B7A5B154(v36, v42, v43);
    v41 = a1;
    v8 = v141;
  }

  v44 = v157;
  (*(v31 + 16))(KeyPath, v36, v157);
  v45 = (*(v31 + 88))(KeyPath, v44);
  if (v45 == *MEMORY[0x1E69AB088])
  {
    v141 = v8;
    v140 = v36;
    (*(v31 + 96))(KeyPath, v157);
    v46 = *KeyPath;
    v47 = *(v150 + 2);
    swift_getKeyPath();
    swift_getKeyPath();
    v146 = v47;
    sub_1B7A96F20();

    v49 = v158;
    MEMORY[0x1EEE9AC00](v48);
    *(&v134 - 2) = v41;
    v50 = sub_1B7A59344(sub_1B7A5D65C, (&v134 - 4), v49);
    v52 = v51;

    if (v52)
    {
      (*(v31 + 8))(v140, v157);
    }

    v139 = v31;
    v81 = sub_1B7A991A0();
    v83 = v82;
    v84 = *(v46 + 16);
    if (v84)
    {
      v85 = v81;
      v53 = 0;
      while (1)
      {
        v86 = *(v46 + v53 + 32) == v85 && *(v46 + v53 + 40) == v83;
        if (v86 || (sub_1B7A9AE80() & 1) != 0)
        {
          break;
        }

        v53 += 16;
        if (!--v84)
        {
          goto LABEL_28;
        }
      }

      v89 = v145;
      sub_1B7A99190();
      (*(v14 + 56))(v89, 0, 1, v40);
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v57 = sub_1B7A96F10();
      v54 = v90;
      v55 = *v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v54 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_69;
      }

      if ((v50 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      swift_once();
LABEL_41:
      v106 = qword_1EBA49690;
      _s21PopupHUDConfigurationVMa(0);
      v93 = v147;
      sub_1B7A99AE0();
      v107 = sub_1B7A96BC0();
      (*(v148 + 8))(v93, v149);
      v108 = [v106 stringFromDate_];

      v99 = sub_1B7A9A4B0();
      v94 = v109;

      v110 = *(v14 + 8);
      v147 = v40;
      v152 = (v14 + 8);
      v150 = v110;
      v110(v50, v40);
      v40 = swift_getKeyPath();
      v102 = swift_getKeyPath();
      v100 = sub_1B7A96F10();
      v104 = v111;
      v112 = *v111;
      v113 = swift_isUniquelyReferenced_nonNull_native();
      *v104 = v112;
      if ((v113 & 1) == 0)
      {
        v112 = sub_1B7A5D434(v112);
        *v104 = v112;
      }

      if (v136 >= v112[2])
      {
        __break(1u);
LABEL_75:
        v14 = sub_1B7A5D434(v14);
        *v102 = v14;
LABEL_38:
        if (v136 < *(v14 + 16))
        {
          v105 = v94 + v14 + v135;
          *(v105 + 2) = 0x8FB8EFA09AE2;
          *(v105 + 3) = 0xA600000000000000;

          v100(&v158, 0);

          return (*(v139 + 8))(v104, v157);
        }

        __break(1u);
        goto LABEL_77;
      }

      v114 = v138;
      v115 = v112 + v138 + v135;
      *(v115 + 2) = v99;
      *(v115 + 3) = v94;
      v116 = v114;

      v100(&v158, 0);

      swift_getKeyPath();
      v55 = swift_getKeyPath();
      sub_1B7A96F20();

      v31 = *(v158 + 16);

      v117 = v147;
      if (v31)
      {
        v118 = 0;
        v149 = (v14 + 48);
        v144 = (v14 + 32);
        v119 = &qword_1EBA496F8;
        v40 = &unk_1B7AA7278;
        v143 = v31;
        while (1)
        {
          if (!v118)
          {
            goto LABEL_47;
          }

          v54 = v119;
          swift_getKeyPath();
          v62 = swift_getKeyPath();
          sub_1B7A96F20();

          if (v118 >= *(v158 + 16))
          {
            __break(1u);
            goto LABEL_66;
          }

          v14 = v155;
          sub_1B7A5D6EC(v116 + v158, v155);

          v120 = v141;
          v119 = v54;
          v55 = &unk_1B7AA7278;
          sub_1B7957820(v14 + *(v156 + 24), v141, v54);
          sub_1B7A5D8A4(v14, _s13PopupHUDModelC8RowModelVMa);
          if ((*v149)(v120, 1, v117) == 1)
          {
            sub_1B7957888(v120, v54);
            goto LABEL_47;
          }

          (*v144)(v153, v120, v117);
          sub_1B7A99190();
          sub_1B7A98FE0();
          if (v121 >= 1.0)
          {
            break;
          }

          v14 = 0xA300000000000000;
          v57 = v116;
          if (v121 < 0.0)
          {
            v122 = 9215458;
            goto LABEL_57;
          }

          v122 = 9215458;
          if (v121 <= 1.0)
          {
            v158 = 0;
            v159 = 0xE000000000000000;
            MEMORY[0x1B8CAB750](43, 0xE100000000000000);
            sub_1B7A9A890();
            v123 = 29549;
            v124 = 0xE200000000000000;
LABEL_56:
            MEMORY[0x1B8CAB750](v123, v124);
            v122 = v158;
            v14 = v159;
          }

LABEL_57:
          v148 = v122;
          v150(v154, v117);
          v41 = swift_getKeyPath();
          v53 = swift_getKeyPath();
          v55 = sub_1B7A96F10();
          KeyPath = v125;
          v50 = *v125;
          v126 = swift_isUniquelyReferenced_nonNull_native();
          *KeyPath = v50;
          if ((v126 & 1) == 0)
          {
            v50 = sub_1B7A5D434(v50);
            *KeyPath = v50;
          }

          if (v118 >= *(v50 + 16))
          {
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            v55 = sub_1B7A5D434(v55);
            *v54 = v55;
            if ((v50 & 0x8000000000000000) != 0)
            {
              goto LABEL_70;
            }

LABEL_33:
            v137 = KeyPath;
            if (v50 >= v55[2])
            {
              goto LABEL_71;
            }

            v138 = (*(v151 + 80) + 32) & ~*(v151 + 80);
            v92 = *(v151 + 72);
            sub_1B7A5D67C(v145, v55 + v138 + v92 * v50 + *(v156 + 24));
            (v57)(&v158, 0);

            v136 = v50;
            v135 = v92 * v50;
            if (v53)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              sub_1B7A96F20();

              v93 = v158;
              if (*(v158 + 16))
              {
                v94 = v138;
                v95 = v143;
                sub_1B7A5D6EC(v158 + v138, v143);

                v96 = v144;
                sub_1B7957820(v95 + *(v156 + 24), v144, &qword_1EBA496F8);
                sub_1B7A5D8A4(v95, _s13PopupHUDModelC8RowModelVMa);
                v97 = (*(v14 + 48))(v96, 1, v40);
                v98 = v152;
                if (v97 == 1)
                {
                  sub_1B7957888(v96, &qword_1EBA496F8);
                  v99 = swift_getKeyPath();
                  swift_getKeyPath();
                  v100 = sub_1B7A96F10();
                  v102 = v101;
                  v14 = *v101;
                  v103 = swift_isUniquelyReferenced_nonNull_native();
                  *v102 = v14;
                  v104 = v140;
                  if (v103)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_75;
                }

                v93 = v142;
                (*(v14 + 32))(v142, v96, v40);
                sub_1B7A99190();
                v99 = sub_1B7A5D54C();
                v128 = v14;
                v14 = v129;
                v130 = v40;
                v40 = *(v128 + 8);
                v57 = v130;
                v155 = v128 + 8;
                (v40)(v98);
                swift_getKeyPath();
                swift_getKeyPath();
                v100 = sub_1B7A96F10();
                v94 = v131;
                v104 = *v131;
                result = swift_isUniquelyReferenced_nonNull_native();
                *v94 = v104;
                if (result)
                {
LABEL_63:
                  v132 = v140;
                  if (v136 >= v104[2])
                  {
                    __break(1u);
                  }

                  else
                  {
                    v133 = v104 + v138 + v135;
                    *(v133 + 2) = v99;
                    *(v133 + 3) = v14;

                    v100(&v158, 0);

                    (v40)(v93, v57);
                    return (*(v139 + 8))(v132, v157);
                  }

                  return result;
                }

LABEL_77:
                result = sub_1B7A5D434(v104);
                v104 = result;
                *v94 = result;
                goto LABEL_63;
              }

              goto LABEL_72;
            }

            v151 = v92;
            v50 = v152;
            v145 = v41;
            sub_1B7A99190();
            if (qword_1EBA45B90 != -1)
            {
              goto LABEL_73;
            }

            goto LABEL_41;
          }

          v127 = v57 + v50;
          *(v127 + 2) = v148;
          *(v127 + 3) = v14;

          (v55)(&v158, 0);

          v116 = v57;

          v117 = v147;
          v150(v153, v147);
          v31 = v143;
          v119 = v54;
LABEL_47:
          ++v118;
          v116 = (v116 + v151);
          if (v31 == v118)
          {
            return (*(v139 + 8))(v140, v157);
          }
        }

        v57 = v116;
        v158 = 0;
        v159 = 0xE000000000000000;
        MEMORY[0x1B8CAB750](43, 0xE100000000000000);
        sub_1B7A9A890();
        v123 = 115;
        v124 = 0xE100000000000000;
        goto LABEL_56;
      }
    }

    else
    {
LABEL_28:
    }

    return (*(v139 + 8))(v140, v157);
  }

  if (v45 == *MEMORY[0x1E69AB080])
  {
    v155 = v14;
    v140 = v36;
    v53 = *(v150 + 2);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B7A96F20();

    v54 = *(v158 + 16);

    v55 = v152;
    if (v54 == 4)
    {
      v145 = v41;
      v56 = v31;
      v14 = swift_getKeyPath();
      v50 = swift_getKeyPath();
      v57 = &v158;
      v58 = sub_1B7A96F10();
      if (!*(*v59 + 16))
      {
        goto LABEL_68;
      }

      v60 = v58;
      sub_1B7A5D474(0, 1, sub_1B7987F40, sub_1B79B8798);
      v60(&v158, 0);

      v31 = v56;
    }

    v14 = sub_1B7A991A0();
    v62 = v61;
    sub_1B7A99190();
    if (qword_1EBA45B90 != -1)
    {
LABEL_66:
      swift_once();
    }

    v63 = qword_1EBA49690;
    _s21PopupHUDConfigurationVMa(0);
    v64 = v147;
    sub_1B7A99AE0();
    v65 = sub_1B7A96BC0();
    (*(v148 + 8))(v64, v149);
    v66 = [v63 stringFromDate_];

    v67 = sub_1B7A9A4B0();
    v69 = v68;

    v70 = v155;
    (*(v155 + 8))(v55, v40);
    v71 = v146;
    (*(v70 + 56))(v146 + *(v156 + 24), 1, 1, v40);
    *v71 = v14;
    v71[1] = v62;
    v71[2] = v67;
    v71[3] = v69;
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = sub_1B7A96F10();
    v74 = v73;
    v75 = *v73;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *v74 = v75;
    v77 = v31;
    if ((v76 & 1) == 0)
    {
      v75 = sub_1B7987F40(0, v75[2] + 1, 1, v75);
      *v74 = v75;
    }

    v78 = v151;
    v80 = v75[2];
    v79 = v75[3];
    if (v80 >= v79 >> 1)
    {
      v75 = sub_1B7987F40(v79 > 1, v80 + 1, 1, v75);
      *v74 = v75;
    }

    v75[2] = v80 + 1;
    sub_1B7A5D750(v71, v75 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v80);
    v72(&v158, 0);

    return (*(v77 + 8))(v140, v157);
  }

  else
  {
    v87 = *(v31 + 8);
    v88 = v157;
    v87(v36, v157);
    return (v87)(KeyPath, v88);
  }
}

uint64_t sub_1B7A5AEF8()
{
  v2 = *v0;
  v1 = v0[1];

  if (v2 == sub_1B7A99180() && v1 == v3)
  {
  }

  else
  {
    v5 = sub_1B7A9AE80();

    if ((v5 & 1) == 0)
    {
      v6 = v0[3];
      v22 = sub_1B7A99180();
      v23 = v7;
      MEMORY[0x1EEE9AC00](v22);
      v21 = &v22;
      LOBYTE(v6) = sub_1B7A59214(sub_1B7A5D7B4, v20, v6);

      if (v6)
      {
        return 2;
      }
    }
  }

  v9 = (v0 + 3);
  v10 = v0[3];
  v22 = sub_1B7A99180();
  v23 = v11;
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v22;
  v12 = sub_1B7A59214(sub_1B7A5DC70, v20, v10);

  if (v12)
  {
    return 0;
  }

  if (*(v10 + 16) == 4)
  {
    sub_1B7A5D474(0, 1, sub_1B7987E34, sub_1B79B86D8);
  }

  v13 = sub_1B7A99180();
  v15 = v14;
  v16 = *v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1B7987E34(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1B7987E34((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[16 * v18];
  *(v19 + 4) = v13;
  *(v19 + 5) = v15;
  *v9 = v16;
  return 1;
}

uint64_t sub_1B7A5B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s13PopupHUDModelC8RowModelVMa(0);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A99160();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  *v3 = a2;
  v3[1] = a3;
  v14 = v3[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = a2;
  v31 = a3;

  sub_1B7A96F30();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == *MEMORY[0x1E69AB088])
  {
    (*(v11 + 96))(v13, v10);
    v16 = *v13;
    v17 = *(*v13 + 16);
    if (v17)
    {
      v27[1] = v14;
      v30 = MEMORY[0x1E69E7CC0];
      sub_1B79D024C(0, v17, 0);
      sub_1B7A9A760();
      v18 = v30;
      v27[0] = v16;
      v19 = (v16 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;

        sub_1B7A9A750();
        sub_1B7A9A710();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v22 = *(v29 + 24);
        v23 = sub_1B7A99000();
        (*(*(v23 - 8) + 56))(&v9[v22], 1, 1, v23);

        *v9 = v20;
        *(v9 + 1) = v21;
        *(v9 + 2) = 0x8FB8EFB18FE2;
        *(v9 + 3) = 0xA600000000000000;
        v30 = v18;
        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1B79D024C(v24 > 1, v25 + 1, 1);
          v18 = v30;
        }

        *(v18 + 16) = v25 + 1;
        sub_1B7A5D750(v9, v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25);
        v19 += 2;
        --v17;
      }

      while (v17);
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v18;
  }

  else
  {
    if (v15 != *MEMORY[0x1E69AB080])
    {
      return (*(v11 + 8))(v13, v10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v30 = MEMORY[0x1E69E7CC0];
  }

  return sub_1B7A96F30();
}

uint64_t sub_1B7A5B594(uint64_t *a1)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *a1;
  v2 = a1[1];
  if (v3 == sub_1B7A991A0() && v2 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B7A9AE80();
  }

  return v5 & 1;
}

double sub_1B7A5B684@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-v3];
  v5 = sub_1B7A97910();
  v25 = 1;
  sub_1B7A5B8B4(&v18);
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v26 = v18;
  v27 = v19;
  v32[2] = v20;
  v32[3] = v21;
  v32[4] = v22;
  v32[5] = v23;
  v32[0] = v18;
  v32[1] = v19;
  sub_1B7957820(&v26, v17, &qword_1EBA49810);
  sub_1B7957888(v32, &qword_1EBA49810);
  *&v24[39] = v28;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v6 = v25;
  v7 = *MEMORY[0x1E6980E08];
  v8 = sub_1B7A97F70();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v4, v7, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v10 = sub_1B7A97F90();
  sub_1B7957888(v4, &qword_1EBA497C0);
  KeyPath = swift_getKeyPath();
  v12 = *&v24[32];
  *(a1 + 65) = *&v24[48];
  v13 = *&v24[80];
  *(a1 + 81) = *&v24[64];
  *(a1 + 97) = v13;
  result = *v24;
  v15 = *&v24[16];
  *(a1 + 17) = *v24;
  *(a1 + 33) = v15;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  v16 = *&v24[95];
  *(a1 + 49) = v12;
  *(a1 + 112) = v16;
  *(a1 + 120) = KeyPath;
  *(a1 + 128) = v10;
  return result;
}

uint64_t sub_1B7A5B8B4@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7999DD8();

  v2 = sub_1B7A98080();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = sub_1B7A98080();
  v11 = v10;
  v12 = v6 & 1;
  v17 = v6 & 1;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 41) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = v13 & 1;
  *(a1 + 88) = v15;
  sub_1B7999FBC(v2, v4, v12);

  sub_1B7999FBC(v9, v11, v14);

  sub_1B795A450(v9, v11, v14);

  sub_1B795A450(v2, v4, v17);
}

uint64_t sub_1B7A5BA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49758);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v20 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49760);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  *v8 = sub_1B7A98A20();
  v8[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49768);
  sub_1B7A5BC6C(a1, a2, v8 + *(v14 + 44));
  sub_1B7A98A00();
  sub_1B7A976F0();
  sub_1B797E788(v8, v12, &qword_1EBA49758);
  v15 = &v12[*(v10 + 44)];
  v16 = v20[5];
  *(v15 + 4) = v20[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v20[6];
  v17 = v20[1];
  *v15 = v20[0];
  *(v15 + 1) = v17;
  v18 = v20[3];
  *(v15 + 2) = v20[2];
  *(v15 + 3) = v18;
  sub_1B797E788(v12, a3, &qword_1EBA49760);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49770);
  *(a3 + *(result + 36)) = 0x3FE8000000000000;
  return result;
}

uint64_t sub_1B7A5BC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44[1] = a2;
  v44[0] = a1;
  v47 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49778);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49780);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v44 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49788);
  MEMORY[0x1EEE9AC00](v45);
  v10 = v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49790);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49798);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v44 - v15;
  sub_1B7A9A760();
  v46 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = sub_1B7A97990();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497A0);
  sub_1B7A5C118(&v5[*(v17 + 44)]);
  sub_1B7A98A10();
  sub_1B7A976F0();
  sub_1B797E788(v5, v8, &qword_1EBA49778);
  v18 = &v8[*(v6 + 36)];
  v19 = v53;
  *(v18 + 4) = v52;
  *(v18 + 5) = v19;
  *(v18 + 6) = v54;
  v20 = v49;
  *v18 = v48;
  *(v18 + 1) = v20;
  v21 = v51;
  *(v18 + 2) = v50;
  *(v18 + 3) = v21;
  v22 = sub_1B7A97ED0();
  sub_1B7A96FE0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1B797E788(v8, v10, &qword_1EBA49780);
  v31 = &v10[*(v45 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = &v13[*(v11 + 36)];
  sub_1B7A989D0();
  v33 = sub_1B7A97ED0();
  v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497A8) + 36)] = v33;
  sub_1B797E788(v10, v13, &qword_1EBA49788);
  v34 = &v16[*(v14 + 36)];
  v35 = *(sub_1B7A97670() + 20);
  v36 = *MEMORY[0x1E697F468];
  v37 = sub_1B7A97970();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  __asm { FMOV            V0.2D, #5.0 }

  *v34 = _Q0;
  *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497B0) + 36)] = 256;
  sub_1B797E788(v13, v16, &qword_1EBA49790);
  sub_1B797E788(v16, v47, &qword_1EBA49798);
}

uint64_t sub_1B7A5C118@<X0>(uint64_t a1@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497B8);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v28[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28[-v6];
  sub_1B7A9A760();
  v31 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  sub_1B7999DD8();
  v8 = sub_1B7A98080();
  v10 = v9;
  v12 = v11;
  v13 = sub_1B7A97F70();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_1B7A97F90();
  sub_1B7957888(v7, &qword_1EBA497C0);
  v14 = sub_1B7A98060();
  v16 = v15;
  v29 = v17;
  v30 = v18;

  sub_1B795A450(v8, v10, v12 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48790);
  _s20PopupHUDListItemViewVMa(0);
  sub_1B797EC34(&qword_1EBA497C8, &qword_1EBA48790);
  sub_1B7A5D950(&qword_1EBA497D0, _s20PopupHUDListItemViewVMa);
  sub_1B7A5D950(&qword_1EBA497D8, _s13PopupHUDModelC8RowModelVMa);
  v19 = v35;
  sub_1B7A988D0();
  v20 = v32;
  v21 = v33;
  v22 = *(v32 + 16);
  v23 = v34;
  v22(v33, v19, v34);
  *a1 = v14;
  *(a1 + 8) = v16;
  v24 = v29 & 1;
  *(a1 + 16) = v29 & 1;
  *(a1 + 24) = v30;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA497E0);
  v22((a1 + *(v25 + 48)), v21, v23);
  sub_1B7999FBC(v14, v16, v24);
  v26 = *(v20 + 8);

  v26(v35, v23);
  v26(v21, v23);
  sub_1B795A450(v14, v16, v24);
}

uint64_t sub_1B7A5C614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A5D6EC(a1, a2);
}

void sub_1B7A5C838()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_viewDidLoad);
  swift_beginAccess();
  _s13PopupHUDModelCMa(0);
  sub_1B7A5D950(&qword_1EBA49738, _s13PopupHUDModelCMa);

  sub_1B7A97490();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49740));
  v3 = sub_1B7A97A40();
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  [v1 addChildViewController_];
  v7 = [v3 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v3 view];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  [v10 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7AA7220;
  v14 = [v3 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v13 + 32) = v20;
  v21 = [v3 view];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v13 + 40) = v27;
  v28 = [v3 view];
  if (!v28)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v13 + 48) = v34;
  v35 = [v3 view];

  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = [v35 trailingAnchor];

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v39 = objc_opt_self();
    v40 = [v38 trailingAnchor];

    v41 = [v36 constraintEqualToAnchor_];
    *(v13 + 56) = v41;
    sub_1B7A2442C();
    v42 = sub_1B7A9A630();

    [v39 activateConstraints_];

    [v3 didMoveToParentViewController_];
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1B7A5CF00()
{
  result = _s21PopupHUDConfigurationVMa(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B7A5CFD8()
{
  _s13PopupHUDModelCMa(319);
  if (v0 <= 0x3F)
  {
    sub_1B7A5D0A8(319, &qword_1EBA496F0, MEMORY[0x1E69AAF60], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B7A99B00();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B7A5D0A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B7A5D140()
{
  sub_1B7A5D1BC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B7A5D1BC()
{
  if (!qword_1EBA49710)
  {
    sub_1B7A99000();
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA49710);
    }
  }
}

uint64_t sub_1B7A5D220@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  *a1 = v3;
  return result;
}

uint64_t sub_1B7A5D2A0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B7A96F30();
}

uint64_t sub_1B7A5D31C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B7A5D39C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B7A96F30();
}

uint64_t sub_1B7A5D474(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1B7A5D54C()
{
  sub_1B7A98FE0();
  if (v0 >= 1.0)
  {
    MEMORY[0x1B8CAB750](43, 0xE100000000000000);
    sub_1B7A9A890();
    v3 = 115;
    v4 = 0xE100000000000000;
  }

  else
  {
    if (v0 < 0.0 || v0 > 1.0)
    {
      return 9215458;
    }

    MEMORY[0x1B8CAB750](43, 0xE100000000000000);
    sub_1B7A9A890();
    v3 = 29549;
    v4 = 0xE200000000000000;
  }

  MEMORY[0x1B8CAB750](v3, v4);
  return 0;
}

uint64_t sub_1B7A5D67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA496F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A5D6EC(uint64_t a1, uint64_t a2)
{
  v4 = _s13PopupHUDModelC8RowModelVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A5D750(uint64_t a1, uint64_t a2)
{
  v4 = _s13PopupHUDModelC8RowModelVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A5D7D0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B7A9AE80() & 1;
  }
}

unint64_t sub_1B7A5D828()
{
  result = qword_1EBA49730;
  if (!qword_1EBA49730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49730);
  }

  return result;
}

uint64_t sub_1B7A5D8A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7A5D950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7A5D9C0()
{
  result = _s13PopupHUDModelC8RowModelVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B7A5DA2C()
{
  result = qword_1EBA497F8;
  if (!qword_1EBA497F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49770);
    sub_1B7A5DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA497F8);
  }

  return result;
}

unint64_t sub_1B7A5DAB8()
{
  result = qword_1EBA49800;
  if (!qword_1EBA49800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49760);
    sub_1B797EC34(&qword_1EBA49808, &qword_1EBA49758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49800);
  }

  return result;
}

unint64_t sub_1B7A5DB8C()
{
  result = qword_1EBA49818;
  if (!qword_1EBA49818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49820);
    sub_1B797EC34(&qword_1EBA49828, qword_1EBA49830);
    sub_1B797EC34(&qword_1EBA47D58, &qword_1EBA47CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49818);
  }

  return result;
}

uint64_t EnvironmentValues.isFlowStackSheetPresented.getter()
{
  sub_1B7A5DCCC();
  sub_1B7A97890();
  return v1;
}

unint64_t sub_1B7A5DCCC()
{
  result = qword_1EDC0FE30[0];
  if (!qword_1EDC0FE30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC0FE30);
  }

  return result;
}

double sub_1B7A5DD20@<D0>(uint64_t a1@<X8>)
{
  sub_1B7A5DCCC();
  sub_1B7A97890();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1B7A5DD78(uint64_t *a1)
{
  sub_1B797DEF0(*a1, a1[1]);
  sub_1B7A5DCCC();
  return sub_1B7A978A0();
}

uint64_t sub_1B7A5DE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_1B7A5DF50(a2, a3, v12);
  v10 = type metadata accessor for FlowStackSheetViewModifier();
  MEMORY[0x1B8CA96D0](v12, a4, v10, a6);
  return (*(*(v10 - 8) + 8))(v12, v10);
}

uint64_t sub_1B7A5DF50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 64) = swift_getKeyPath();
  *(a3 + 104) = 0;
  type metadata accessor for FlowStackSheetAuthority();

  swift_getWitnessTable();
  *a3 = sub_1B7A97490();
  *(a3 + 8) = v6;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;

  sub_1B7A986C0();
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  sub_1B7A986C0();

  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  return result;
}

uint64_t sub_1B7A5E098@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v52 = a3;
  *&v41 = a2 + 3;
  v5 = a2[2];
  sub_1B7A9AB60();
  v50 = sub_1B7A98870();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v39 = &v37 - v6;
  swift_getWitnessTable();
  v7 = sub_1B7A97C30();
  v42 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498B8);
  v46 = v8;
  WitnessTable = swift_getWitnessTable();
  v10 = a2[5];
  v43 = sub_1B7A60274();
  *&v56 = v7;
  *(&v56 + 1) = v5;
  *&v57 = v8;
  *(&v57 + 1) = WitnessTable;
  *&v58 = v10;
  *(&v58 + 1) = v43;
  v47 = MEMORY[0x1E697D530];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v37 - v13;
  v14 = a2[4];
  v38 = v5;
  type metadata accessor for FlowStackSheetAuthority();
  swift_getWitnessTable();
  sub_1B7A974A0();
  *&v15 = v5;
  *(&v15 + 1) = *v41;
  v41 = v15;
  *&v16 = v14;
  *(&v16 + 1) = v10;
  v37 = v16;
  v53 = v15;
  v54 = v16;
  v55 = a2[6];
  v17 = v55;
  swift_getKeyPath();
  v18 = v39;
  sub_1B7A974B0();

  (*(*(a2 - 1) + 16))(&v56, v3, a2);
  v19 = swift_allocObject();
  v20 = v37;
  *(v19 + 16) = v41;
  *(v19 + 32) = v20;
  v21 = v58;
  *(v19 + 104) = v59;
  v22 = *v61;
  *(v19 + 120) = v60;
  *(v19 + 136) = v22;
  *(v19 + 145) = *&v61[9];
  v23 = v57;
  *(v19 + 56) = v56;
  *(v19 + 48) = v17;
  *(v19 + 72) = v23;
  *(v19 + 88) = v21;
  v24 = swift_checkMetadataState();
  v25 = v43;
  v26 = v40;
  v27 = v18;
  v28 = v38;
  v29 = v46;
  sub_1B7A98420();

  (*(v49 + 8))(v27, v50);
  *&v56 = v24;
  *(&v56 + 1) = v28;
  *&v57 = v29;
  *(&v57 + 1) = WitnessTable;
  *&v58 = v10;
  *(&v58 + 1) = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  v32 = v26;
  v33 = v26;
  v34 = OpaqueTypeMetadata2;
  sub_1B7957EE0(v33, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v35 = *(v48 + 8);
  v35(v32, v34);
  sub_1B7957EE0(v31, v34, OpaqueTypeConformance2);
  return (v35)(v31, v34);
}

uint64_t sub_1B7A5E5B8()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

__n128 sub_1B7A5E648@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v17 = a2;
  *(&v17 + 1) = a3;
  v18.n128_u64[0] = a4;
  v18.n128_u64[1] = a5;
  v19 = a6;
  v14 = type metadata accessor for FlowStackSheetViewModifier();
  sub_1B7A5E74C(a1, v14, &v17);

  v15 = v19;
  result = v18;
  *a7 = v17;
  *(a7 + 16) = result;
  *(a7 + 32) = v15;
  return result;
}

uint64_t sub_1B7A5E74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a1;
  v49 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1B7A29804();
  v10 = *(a2 - 8);
  v50 = *(v10 + 16);
  v11 = v10 + 16;
  v50(&v62, v3, a2);
  v47 = v11;
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 161) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v14.i64[0] = v6;
  v16 = *(a2 + 40);
  v15 = *(a2 + 48);
  *(v13 + 48) = v15;
  v17 = v15;
  v46 = v15;
  *(v13 + 104) = v64[1];
  *(v13 + 120) = v65;
  *(v13 + 136) = v66[0];
  *(v13 + 145) = *(v66 + 9);
  *(v13 + 56) = v62;
  *(v13 + 72) = v63;
  *(v13 + 88) = v64[0];
  v52 = *(a2 + 24);
  *&v18 = vdupq_laneq_s64(v52, 1).u64[0];
  *(&v18 + 1) = v16;
  *(v13 + 16) = vzip1q_s64(v14, v52);
  *(v13 + 32) = v18;
  (*(v7 + 32))(v13 + v12, v9, v6);
  v50(&v58, v51, a2);
  v19 = swift_allocObject();
  v20 = v60[0];
  *(v19 + 104) = v60[1];
  v21 = v61[0];
  *(v19 + 120) = v60[2];
  *(v19 + 136) = v21;
  *(v19 + 145) = *(v61 + 9);
  v22 = v59;
  *(v19 + 56) = v58;
  *(v19 + 72) = v22;
  *(v19 + 16) = v6;
  *(v19 + 24) = v52;
  *(v19 + 40) = v16;
  *(v19 + 48) = v17;
  *(v19 + 88) = v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA498D0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA481A0);
  v25 = sub_1B7A6039C();
  v43 = sub_1B7A02270();
  sub_1B7A4AE88(sub_1B7A60340, v13, sub_1B7A60388, v19, &v68);
  v44 = *(&v70 + 1);
  v45 = *(&v69 + 1);
  v71 = v68;
  v58 = v68;
  v59 = v69;
  v60[0] = v70;
  LOBYTE(v55) = 2;
  *&v62 = v6;
  *(&v62 + 1) = v23;
  *(&v63 + 1) = v52.i64[1];
  *&v63 = v24;
  *&v64[0] = v16;
  *(&v64[0] + 1) = v25;
  *&v64[1] = v43;
  type metadata accessor for FlowStack();
  WitnessTable = swift_getWitnessTable();
  View.presentedBy(_:)();
  type metadata accessor for FlowStackAuthority();
  swift_getWitnessTable();
  v27 = sub_1B7A974C0();
  (*(*(v27 - 8) + 8))(&v71, v27);

  v55 = v62;
  v56 = v63;
  v57[0] = v64[0];
  *(v57 + 9) = *(v64 + 9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
  v28 = sub_1B7A97590();
  v29 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8);
  v53 = WitnessTable;
  v54 = v29;
  v30 = swift_getWitnessTable();
  sub_1B7A5FA20(v48, v28, v30, &v67);
  v58 = v55;
  v59 = v56;
  v60[0] = v57[0];
  *(v60 + 9) = *(v57 + 9);
  (*(*(v28 - 8) + 8))(&v58, v28);
  v31 = v67;
  KeyPath = swift_getKeyPath();
  v50(&v62, v51, a2);
  sub_1B7A9A760();
  v33 = sub_1B7A9A750();
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E85E0];
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  *(v34 + 32) = v6;
  *(v34 + 40) = v52;
  v36 = v46;
  *(v34 + 56) = v16;
  *(v34 + 64) = v36;
  *(v34 + 120) = v64[1];
  *(v34 + 136) = v65;
  *(v34 + 152) = v66[0];
  *(v34 + 161) = *(v66 + 9);
  *(v34 + 72) = v62;
  *(v34 + 88) = v63;
  *(v34 + 104) = v64[0];
  v37 = sub_1B7A9A750();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v35;
  result = sub_1B7A98840();
  v40 = v62;
  v41 = v63;
  v42 = v49;
  *v49 = v31;
  v42[1] = KeyPath;
  *(v42 + 1) = v40;
  *(v42 + 32) = v41;
  return result;
}