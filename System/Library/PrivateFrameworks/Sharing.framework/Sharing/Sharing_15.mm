uint64_t SFAirDrop.PermissionRequest.defaultDestination.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v58 = a2;
  v59 = v4;
  v60 = v3;
  v61 = v5;
  v62 = v6;
  v7 = type metadata accessor for SFAirDrop.AcceptAction.Single();
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - v10;
  v59 = v4;
  v60 = v3;
  v61 = v5;
  v62 = v6;
  v12 = type metadata accessor for SFAirDrop.AcceptAction();
  v13 = sub_1A99770A0();
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v55 = &v51 - v16;
  v54 = *(v12 - 8);
  v17 = *(v54 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - v21;
  v57 = v4;
  v59 = v4;
  v60 = v3;
  v61 = v5;
  v62 = v6;
  v23 = type metadata accessor for SFAirDrop.PermissionRequest.Style();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v51 - v26);
  (*(v24 + 16))(&v51 - v26, &v56[*(a1 + 60)], v23);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v24 + 8))(v27, v23);
LABEL_5:
    v36 = v57;
    goto LABEL_6;
  }

  v28 = v53;
  v56 = v11;
  v29 = v27[1];

  v30 = v27[3];

  v32 = v27[4];
  MEMORY[0x1EEE9AC00](v31);
  strcpy(&v51 - 48, "title prompt acceptActions declineAction ");
  v59 = MEMORY[0x1E69E6158];
  v60 = MEMORY[0x1E69E6158];
  v61 = sub_1A9976B60();
  v62 = type metadata accessor for SFAirDrop.DeclineAction();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  sub_1A98CB558(v27 + *(TupleTypeMetadata + 80));
  v59 = v32;
  sub_1A9976B60();
  swift_getWitnessTable();
  v34 = v55;
  sub_1A9976ED0();
  v35 = v54;
  if ((*(v54 + 48))(v34, 1, v12) == 1)
  {
    (*(v28 + 8))(v55, v13);

    goto LABEL_5;
  }

  v41 = *(v35 + 32);
  v41(v22, v55, v12);

  v42 = v20;
  v41(v20, v22, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = v57;
  if (EnumCaseMultiPayload != 1)
  {
    v45 = sub_1A99762C0();
    v46 = v51;
    v47 = *(swift_getTupleTypeMetadata2() + 48);
    v48 = v52;
    v49 = v56;
    (*(v52 + 32))(v56, v42, v46);
    (*(*(v45 - 8) + 8))(&v42[v47], v45);
    v37 = *(v44 - 8);
    v50 = v58;
    (*(v37 + 16))(v58, &v49[*(v46 + 64)], v44);
    (*(v48 + 8))(v49, v46);
    v39 = v50;
    v38 = 0;
    return (*(v37 + 56))(v39, v38, 1);
  }

  (*(v35 + 8))(v42, v12);
  v36 = v44;
LABEL_6:
  v37 = *(v36 - 8);
  v38 = 1;
  v39 = v58;
  return (*(v37 + 56))(v39, v38, 1);
}

uint64_t SFAirDrop.ButtonConfiguration.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      v6 = v0[2];
      v5 = v0[3];
      v7 = *v0;
      v8 = v0[1];
      sub_1A99772B0();

      strcpy(v10, "symbol+text: ");
      HIWORD(v10[1]) = -4864;
      MEMORY[0x1AC5895B0](v7, v8);
      MEMORY[0x1AC5895B0](2108192, 0xE300000000000000);
      v1 = v6;
      v2 = v5;
      goto LABEL_7;
    }

    v3 = 0x203A6C6F626D7973;
    v4 = 0xE800000000000000;
  }

  else
  {
    v3 = 0x203A74786574;
    v4 = 0xE600000000000000;
  }

  v10[0] = v3;
  v10[1] = v4;
LABEL_7:
  MEMORY[0x1AC5895B0](v1, v2);
  return v10[0];
}

uint64_t SFAirDrop.ButtonConfiguration.localizedTitle.getter()
{
  if (!*(v0 + 32))
  {
    v2 = v0 + 1;
LABEL_6:
    v3 = *v2;
    v1 = *v0;

    return v1;
  }

  if (*(v0 + 32) != 1)
  {
    v2 = v0 + 3;
    v0 += 2;
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1A98C31D4()
{
  v1 = 0x6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x65546C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1A98C3228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98CB800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98C3250(uint64_t a1)
{
  v2 = sub_1A98CB698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98C328C(uint64_t a1)
{
  v2 = sub_1A98CB698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98C32E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E6D6574737973 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98C3374(uint64_t a1)
{
  v2 = sub_1A98CB740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98C33B0(uint64_t a1)
{
  v2 = sub_1A98CB740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98C33EC()
{
  if (*v0)
  {
    result = 0x657A696C61636F6CLL;
  }

  else
  {
    result = 0x614E6D6574737973;
  }

  *v0;
  return result;
}

uint64_t sub_1A98C3438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E6D6574737973 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A98C3524(uint64_t a1)
{
  v2 = sub_1A98CB6EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98C3560(uint64_t a1)
{
  v2 = sub_1A98CB6EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98C35C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98C3650(uint64_t a1)
{
  v2 = sub_1A98CB794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98C368C(uint64_t a1)
{
  v2 = sub_1A98CB794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.ButtonConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4598, &qword_1A99A1848);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v34 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45A0, &qword_1A99A1850);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45A8, &qword_1A99A1858);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45B0, &qword_1A99A1860);
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - v16;
  v18 = v1[1];
  v37 = *v1;
  v38 = v18;
  v19 = v1[2];
  v30[1] = v1[3];
  v30[2] = v19;
  v20 = *(v1 + 32);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98CB698();
  sub_1A9977AA0();
  if (!v20)
  {
    v42 = 0;
    sub_1A98CB794();
    v26 = v40;
    sub_1A9977640();
    sub_1A9977690();
    (*(v31 + 8))(v13, v10);
    return (*(v39 + 8))(v17, v26);
  }

  if (v20 == 1)
  {
    v43 = 1;
    sub_1A98CB740();
    v22 = v40;
    sub_1A9977640();
    v23 = v33;
    sub_1A9977690();
    v24 = *(v32 + 8);
    v25 = v9;
LABEL_8:
    v24(v25, v23);
    return (*(v39 + 8))(v17, v22);
  }

  v46 = 2;
  sub_1A98CB6EC();
  v28 = v34;
  v22 = v40;
  sub_1A9977640();
  v45 = 0;
  v23 = v36;
  v29 = v41;
  sub_1A9977690();
  if (!v29)
  {
    v44 = 1;
    sub_1A9977690();
    v24 = *(v35 + 8);
    v25 = v28;
    goto LABEL_8;
  }

  (*(v35 + 8))(v28, v23);
  return (*(v39 + 8))(v17, v22);
}

uint64_t SFAirDrop.ButtonConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45D8, &qword_1A99A1868);
  v60 = *(v58 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v54 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45E0, &qword_1A99A1870);
  v59 = *(v61 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45E8, &qword_1A99A1878);
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45F0, &qword_1A99A1880);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1A98CB698();
  v19 = v64;
  sub_1A9977A70();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v65);
  }

  v55 = 0;
  v56 = v13;
  v20 = v61;
  v21 = v62;
  v22 = v63;
  v64 = v12;
  v23 = sub_1A9977620();
  v24 = (2 * *(v23 + 16)) | 1;
  v66 = v23;
  v67 = v23 + 32;
  v68 = 0;
  v69 = v24;
  v25 = sub_1A97B297C();
  if (v25 == 3 || v68 != v69 >> 1)
  {
    v29 = sub_1A9977300();
    swift_allocError();
    v31 = v30;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v31 = &type metadata for SFAirDrop.ButtonConfiguration;
    v33 = v64;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    goto LABEL_9;
  }

  v70 = v25;
  if (!v25)
  {
    v71 = 0;
    sub_1A98CB794();
    v33 = v64;
    v35 = v55;
    sub_1A9977530();
    if (!v35)
    {
      v36 = sub_1A99775A0();
      v37 = 0;
      v50 = v49;
      v59 = v36;
      (*(v57 + 8))(v11, v8);
      (*(v56 + 8))(v16, v33);
      swift_unknownObjectRelease();
LABEL_19:
      v53 = 0;
      v44 = v22;
      goto LABEL_20;
    }

LABEL_9:
    (*(v56 + 8))(v16, v33);
    goto LABEL_10;
  }

  if (v25 != 1)
  {
    v71 = 2;
    sub_1A98CB6EC();
    v38 = v21;
    v39 = v64;
    v40 = v55;
    sub_1A9977530();
    if (v40)
    {
      (*(v56 + 8))(v16, v39);
      goto LABEL_10;
    }

    v44 = v22;
    v71 = 0;
    v45 = v58;
    v46 = sub_1A99775A0();
    v47 = v56;
    v59 = v46;
    v61 = v51;
    v71 = 1;
    v37 = sub_1A99775A0();
    v53 = v52;
    (*(v60 + 8))(v38, v45);
    (*(v47 + 8))(v16, v39);
    swift_unknownObjectRelease();
    v50 = v61;
LABEL_20:
    *v44 = v59;
    *(v44 + 8) = v50;
    *(v44 + 16) = v37;
    *(v44 + 24) = v53;
    *(v44 + 32) = v70;
    return __swift_destroy_boxed_opaque_existential_0Tm(v65);
  }

  v71 = 1;
  sub_1A98CB740();
  v26 = v7;
  v27 = v64;
  v28 = v55;
  sub_1A9977530();
  if (!v28)
  {
    v41 = sub_1A99775A0();
    v42 = (v59 + 8);
    v43 = (v56 + 8);
    v50 = v48;
    v59 = v41;
    (*v42)(v26, v20);
    (*v43)(v16, v64);
    swift_unknownObjectRelease();
    v37 = 0;
    goto LABEL_19;
  }

  (*(v56 + 8))(v16, v27);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0Tm(v65);
}

uint64_t SFAirDrop.AcceptAction.Single.id.getter()
{
  v0 = sub_1A98CB91C();

  return v0;
}

uint64_t SFAirDrop.AcceptAction.Single.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_1A97DC908(v2, v3, v4, v5, v6);
}

uint64_t static SFAirDrop.AcceptAction.Single.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = 0, (sub_1A99777E0() & 1) != 0))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v21 = *(a1 + 16);
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    sub_1A97DC908(v21, v6, v7, v8, v9);
    sub_1A97DC908(v10, v11, v12, v13, v14);
    v5 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v21, &v16);
    sub_1A97DC96C(v16, v17, v18, v19, v20);
    sub_1A97DC96C(v21, v22, v23, v24, v25);
  }

  return v5 & 1;
}

uint64_t SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *(a3 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  v17 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v17;
  *(a9 + 48) = v16;
  *(a9 + 49) = a4;
  *(a9 + 50) = a5;
  v18 = type metadata accessor for SFAirDrop.AcceptAction.Single();
  v19 = *(a10 - 8);
  (*(v19 + 16))(a9 + *(v18 + 64), a6, a10);
  v20 = swift_allocObject();
  v20[2] = a10;
  v20[3] = a11;
  v20[4] = a12;
  v20[5] = a13;
  v20[6] = a7;
  v20[7] = a8;
  v21 = *(v18 + 68);
  v22 = sub_1A984AF04();
  v23 = sub_1A984AF58();
  SFXPCBlock.init(_:)(&unk_1A99A1890, v20, a10, &type metadata for VoidResponse, a11, a12, v22, v23, a9 + v21);
  return (*(v19 + 8))(a6, a10);
}

uint64_t sub_1A98C45A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98C45C8, 0, 0);
}

uint64_t sub_1A98C45C8()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t SFAirDrop.AcceptAction.Single.accept(with:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98C4658, 0, 0);
}

uint64_t sub_1A98C4658()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v2 + 68);
  v5 = *(v2 + 16);
  v6 = sub_1A98CAB54(v5, v5);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = *(v5 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  swift_allocObject();
  v12 = sub_1A9976AE0();
  *(v0 + 88) = v12;
  (*(v9 + 16))(v13, v3, v5);
  sub_1A9976B60();
  v14 = swift_task_alloc();
  *(v0 + 96) = v14;
  v15 = sub_1A984AF04();
  v16 = sub_1A984AF58();
  v17 = *(v2 + 24);
  *(v0 + 16) = v5;
  *(v0 + 24) = &type metadata for VoidResponse;
  *(v0 + 32) = v17;
  *(v0 + 48) = v15;
  *(v0 + 56) = v16;
  v18 = type metadata accessor for SFXPCBlock();
  *v14 = v0;
  v14[1] = sub_1A98C47FC;

  return SFXPCBlock.dynamicallyCall(withArguments:)(v18, v12, v18);
}

uint64_t sub_1A98C47FC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1A98C4918;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A98C4918()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1A98C497C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E6CC0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656E696D6F7270 && a2 == 0xE900000000000074 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x41746C7561666564 && a2 == 0xED0000726577736ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A98C4B88(unsigned __int8 a1)
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](a1);
  return sub_1A99779B0();
}

uint64_t sub_1A98C4BD0(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x6E6564646968;
  v3 = 0x41746C7561666564;
  if (a1 != 4)
  {
    v3 = 0x6F6974617265706FLL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000013;
  if (a1 != 1)
  {
    v4 = 0x6E656E696D6F7270;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A98C4CC8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  sub_1A9977980();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_1A99779B0();
}

uint64_t sub_1A98C4D84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C4DD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.AcceptAction.Single.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v33 = *(a2 + 16);
  v36 = v33;
  v37 = v4;
  v31 = v4;
  v32 = *(a2 + 32);
  v38 = v32;
  _s12AcceptActionO6SingleV10CodingKeysOMa();
  swift_getWitnessTable();
  v5 = sub_1A9977710();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v35;
  sub_1A9977AA0();
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v36) = 0;
  v14 = v34;
  sub_1A9977690();
  if (v14)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v15 = v33;
  v16 = v11[3];
  v17 = v11[4];
  v18 = v11[5];
  v19 = *(v11 + 48);
  v36 = v11[2];
  v37 = v16;
  *&v38 = v17;
  *(&v38 + 1) = v18;
  LOBYTE(v39) = v19;
  v41 = 1;
  sub_1A97DC908(v36, v16, v17, v18, v19);
  sub_1A98CBA18();
  sub_1A99776E0();
  sub_1A97DC96C(v36, v37, v38, *(&v38 + 1), v39);
  v20 = *(v11 + 49);
  LOBYTE(v36) = 2;
  sub_1A99776A0();
  v21 = *(v11 + 50);
  LOBYTE(v36) = 3;
  sub_1A99776A0();
  v22 = *(a2 + 64);
  LOBYTE(v36) = 4;
  v23 = v9;
  v24 = v32;
  v25 = v23;
  sub_1A99776E0();
  v26 = *(a2 + 68);
  v41 = 5;
  v27 = sub_1A984AF04();
  v28 = sub_1A984AF58();
  v36 = v15;
  v37 = &type metadata for VoidResponse;
  *&v38 = v31;
  *(&v38 + 1) = v24;
  v39 = v27;
  v40 = v28;
  type metadata accessor for SFXPCBlock();
  swift_getWitnessTable();
  sub_1A99776E0();
  return (*(v6 + 8))(v25, v5);
}

uint64_t SFAirDrop.AcceptAction.Single.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  *&v50 = a2;
  *(&v50 + 1) = &type metadata for VoidResponse;
  *&v51 = a3;
  *(&v51 + 1) = a4;
  v52 = sub_1A984AF04();
  v53 = sub_1A984AF58();
  v11 = type metadata accessor for SFXPCBlock();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v36 - v14;
  v42 = *(v50 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v50 = a2;
  *(&v50 + 1) = a3;
  *&v51 = a4;
  *(&v51 + 1) = a5;
  _s12AcceptActionO6SingleV10CodingKeysOMa();
  swift_getWitnessTable();
  v47 = sub_1A9977630();
  v43 = *(v47 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v19 = &v36 - v18;
  *&v50 = a2;
  *(&v50 + 1) = a3;
  v45 = a3;
  *&v51 = a4;
  *(&v51 + 1) = a5;
  v20 = type metadata accessor for SFAirDrop.AcceptAction.Single();
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v36 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v46 = v19;
  v26 = v48;
  sub_1A9977A70();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  v27 = v44;
  v28 = v43;
  LOBYTE(v50) = 0;
  *v23 = sub_1A99775A0();
  *(v23 + 1) = v29;
  v54 = 1;
  sub_1A98CBA6C();
  sub_1A99775F0();
  v30 = v52;
  v31 = v51;
  *(v23 + 1) = v50;
  *(v23 + 2) = v31;
  v23[48] = v30;
  LOBYTE(v50) = 2;
  v23[49] = sub_1A99775B0() & 1;
  LOBYTE(v50) = 3;
  v23[50] = sub_1A99775B0() & 1;
  LOBYTE(v50) = 4;
  sub_1A99775F0();
  (*(v42 + 32))(&v23[*(v20 + 64)], v27, a2);
  LOBYTE(v50) = 5;
  v32 = v40;
  swift_getWitnessTable();
  v33 = v41;
  sub_1A99775F0();
  (*(v28 + 8))(v46, v47);
  (*(v39 + 32))(&v23[*(v20 + 68)], v33, v32);
  v34 = v37;
  (*(v37 + 16))(v38, v23, v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  return (*(v34 + 8))(v23, v20);
}

uint64_t sub_1A98C5780@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A98CB91C();
  a1[1] = v2;
}

uint64_t SFAirDrop.AcceptAction.Composite.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1A97DC908(v2, v3, v4, v5, v6);
}

__n128 SFAirDrop.AcceptAction.Composite.init(buttonConfiguration:actions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  return result;
}

uint64_t static SFAirDrop.AcceptAction.Composite.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 40);
  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  v29 = *a1;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = v19;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v20;
  sub_1A97DC908(v29, v10, v11, v12, v19);
  sub_1A97DC908(v14, v15, v16, v17, v20);
  v21 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v29, &v24);
  sub_1A97DC96C(v24, v25, v26, v27, v28);
  sub_1A97DC96C(v29, v30, v31, v32, v33);
  if (v21)
  {
    v29 = a3;
    v30 = a4;
    v31 = a5;
    v32 = a6;
    type metadata accessor for SFAirDrop.AcceptAction.Single();
    swift_getWitnessTable();
    v22 = sub_1A9976B70();
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1A98C5938(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001A99E6CC0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C5A10(char a1)
{
  if (a1)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1A98C5A4C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1A98C9BA4(*v1);
}

uint64_t sub_1A98C5AA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C5AF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.AcceptAction.Composite.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v6 = a2[5];
  v25 = a2[3];
  v26 = v4;
  v34 = v4;
  v35 = v25;
  v23 = v6;
  v24 = v5;
  v36 = v5;
  v37 = v6;
  _s12AcceptActionO9CompositeV10CodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1A9977710();
  v30 = *(v28 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v21 - v8;
  v10 = *v2;
  v11 = *(v2 + 8);
  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  v22 = *(v2 + 40);
  v14 = a1;
  v15 = a1[3];
  v27 = v14[4];
  v16 = *(v2 + 32);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1A97DC908(v10, v11, v13, v12, v16);
  v17 = v28;
  sub_1A9977AA0();
  v34 = v10;
  v35 = v11;
  v36 = v13;
  v37 = v12;
  v38 = v16;
  LOBYTE(v39) = 0;
  sub_1A98CBA18();
  v18 = v31;
  sub_1A99776E0();
  if (v18)
  {
    sub_1A97DC96C(v34, v35, v36, v37, v38);
    return (*(v30 + 8))(v9, v17);
  }

  else
  {
    v20 = v30;
    sub_1A97DC96C(v34, v35, v36, v37, v38);
    v39 = v22;
    v33 = 1;
    v34 = v26;
    v35 = v25;
    v36 = v24;
    v37 = v23;
    type metadata accessor for SFAirDrop.AcceptAction.Single();
    sub_1A9976B60();
    v32 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1A99776E0();
    return (*(v20 + 8))(v9, v17);
  }
}

uint64_t SFAirDrop.AcceptAction.Composite.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v32 = a6;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v34 = a5;
  _s12AcceptActionO9CompositeV10CodingKeysOMa();
  swift_getWitnessTable();
  v35 = sub_1A9977630();
  v33 = *(v35 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v27 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v36;
  sub_1A9977A70();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = a3;
  v36 = a1;
  v17 = v33;
  v16 = v34;
  LOBYTE(v43) = 0;
  sub_1A98CBA6C();
  v18 = v35;
  sub_1A99775F0();
  v27 = v38;
  v28 = v39;
  v30 = v40;
  v31 = v41;
  v29 = v42;
  v38 = a2;
  v39 = v15;
  v40 = a4;
  v41 = v16;
  type metadata accessor for SFAirDrop.AcceptAction.Single();
  sub_1A9976B60();
  LOBYTE(v38) = 1;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A99775F0();
  (*(v17 + 8))(v12, v18);
  v19 = v43;
  v20 = v31;
  v21 = v32;
  v23 = v27;
  v22 = v28;
  *v32 = v27;
  v21[1] = v22;
  v24 = v30;
  v21[2] = v30;
  v21[3] = v20;
  v25 = v29;
  *(v21 + 32) = v29;
  v21[5] = v19;
  sub_1A97DC908(v23, v22, v24, v20, v25);

  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  sub_1A97DC96C(v23, v22, v24, v20, v25);
}

uint64_t SFAirDrop.AcceptAction.id.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v6 + 5);
    sub_1A97DC96C(*v6, *(v6 + 1), *(v6 + 2), *(v6 + 3), v6[32]);

    v9 = *(a1 + 32);
    v17 = *(a1 + 16);
    v18 = v9;
    type metadata accessor for SFAirDrop.AcceptAction.Composite();
    v10 = sub_1A99762C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(v10 - 8) + 32))(a2, &v6[*(TupleTypeMetadata2 + 48)], v10);
  }

  else
  {
    v13 = *(a1 + 32);
    v17 = *(a1 + 16);
    v18 = v13;
    v14 = type metadata accessor for SFAirDrop.AcceptAction.Single();
    v15 = sub_1A99762C0();
    v16 = swift_getTupleTypeMetadata2();
    (*(*(v15 - 8) + 32))(a2, &v6[*(v16 + 48)], v15);
    return (*(*(v14 - 8) + 8))(v6, v14);
  }
}

uint64_t SFAirDrop.AcceptAction.hidden.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 32);
  v19[0] = *(a1 + 16);
  v19[1] = v4;
  v5 = type metadata accessor for SFAirDrop.AcceptAction.Single();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v19 - v9;
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 8))(v14, a1);
    return 0;
  }

  else
  {
    v16 = sub_1A99762C0();
    v17 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v6 + 32))(v10, v14, v5);
    v15 = v10[50];
    (*(v6 + 8))(v10, v5);
    (*(*(v16 - 8) + 8))(&v14[v17], v16);
  }

  return v15;
}

uint64_t static SFAirDrop.AcceptAction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96 = a1;
  v97 = a2;
  v10 = sub_1A99762C0();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = v98[8];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v89 = &v78[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v85 = &v78[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v78[-v18];
  v103 = a3;
  v104 = a4;
  v105 = a5;
  v106 = a6;
  v91 = type metadata accessor for SFAirDrop.AcceptAction.Single();
  v19 = *(v91 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v22 = &v78[-v21];
  v92 = a3;
  v93 = a4;
  v103 = a3;
  v104 = a4;
  v94 = a5;
  v95 = a6;
  v105 = a5;
  v106 = a6;
  v23 = type metadata accessor for SFAirDrop.AcceptAction();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v78[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v78[-v29];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = *(TupleTypeMetadata2 - 8);
  v32 = *(v86 + 64);
  v33 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v35 = &v78[-v34];
  v36 = &v78[*(v33 + 48) - v34];
  v87 = v24;
  v37 = *(v24 + 16);
  v37(&v78[-v34], v96, v23);
  v37(v36, v97, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37(v28, v35, v23);
    v38 = *(v28 + 1);
    v90 = *v28;
    v91 = v38;
    v39 = *(v28 + 3);
    v96 = *(v28 + 2);
    v97 = v39;
    v40 = v28[32];
    v41 = *(v28 + 5);
    v103 = v92;
    v104 = v93;
    v105 = v94;
    v106 = v95;
    type metadata accessor for SFAirDrop.AcceptAction.Composite();
    v42 = v99;
    v43 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = *(v36 + 1);
      v83 = *v36;
      v82 = v44;
      v45 = *(v36 + 3);
      v81 = *(v36 + 2);
      v80 = v45;
      v86 = *(v36 + 5);
      v85 = v41;
      v46 = v40;
      LODWORD(v84) = v40;
      v47 = v98[4];
      v79 = v36[32];
      v47(v89, &v28[v43], v42);
      v47(v88, &v36[v43], v42);
      v48 = v90;
      v49 = v91;
      v103 = v90;
      v104 = v91;
      v105 = v96;
      v106 = v97;
      v107 = v46;
      v108 = v41;
      v50 = v83;
      v51 = v82;
      v100[0] = v83;
      v100[1] = v82;
      v52 = v81;
      v53 = v80;
      v100[2] = v81;
      v100[3] = v80;
      LOBYTE(v47) = v79;
      v101 = v79;
      v102 = v86;
      LODWORD(v95) = static SFAirDrop.AcceptAction.Composite.== infix(_:_:)(&v103, v100, v92, v93, v94, v95);
      sub_1A97DC96C(v50, v51, v52, v53, v47);

      sub_1A97DC96C(v48, v49, v96, v97, v84);

      if (v95)
      {
        v54 = v89;
        v55 = v88;
        v56 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
        v57 = v98[1];
        v58 = v55;
        v59 = v99;
        v57(v58, v99);
        v57(v54, v59);
LABEL_14:
        v63 = v87;
        goto LABEL_15;
      }

      v74 = v99;
      v75 = v98[1];
      v75(v88, v99);
      v75(v89, v74);
      goto LABEL_13;
    }

    (v98[1])(&v28[v43], v42);
    sub_1A97DC96C(v90, v91, v96, v97, v40);
  }

  else
  {
    v37(v30, v35, v23);
    v60 = v91;
    v61 = v99;
    v62 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v84 = v19;
      (*(v19 + 32))(v22, v36, v60);
      v64 = v98;
      v65 = v98[4];
      v65(v90, &v30[v62], v61);
      v66 = &v36[v62];
      v67 = v85;
      v65(v85, v66, v61);
      v68 = v84;
      v97 = v22;
      v69 = v22;
      v70 = v91;
      v71 = static SFAirDrop.AcceptAction.Single.== infix(_:_:)(v30, v69);
      v72 = *(v68 + 8);
      v72(v30, v70);
      if (v71)
      {
        v56 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
        v73 = v64[1];
        v73(v67, v61);
        v73(v90, v61);
        v72(v97, v70);
        goto LABEL_14;
      }

      v76 = v64[1];
      v76(v67, v61);
      v76(v90, v61);
      v72(v97, v70);
LABEL_13:
      v56 = 0;
      goto LABEL_14;
    }

    (v98[1])(&v30[v62], v61);
    (*(v19 + 8))(v30, v60);
  }

  v56 = 0;
  v63 = v86;
  v23 = TupleTypeMetadata2;
LABEL_15:
  (*(v63 + 8))(v35, v23);
  return v56 & 1;
}

uint64_t sub_1A98C6DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C676E6973 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469736F706D6F63 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C6EAC(char a1)
{
  if (a1)
  {
    return 0x7469736F706D6F63;
  }

  else
  {
    return 0x656C676E6973;
  }
}

uint64_t sub_1A98C6EE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C6FE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C7034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A98C70A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C70F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A98C7148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C719C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.AcceptAction.encode(to:)(void *a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v76 = a2[2];
  v4 = v76;
  v77 = v5;
  v78 = v6;
  v79 = v7;
  v61 = _s12AcceptActionO19CompositeCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v72 = sub_1A9977710();
  v63 = *(v72 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v53 - v9;
  v77 = v5;
  v78 = v6;
  v79 = v7;
  v10 = _s12AcceptActionO16SingleCodingKeysOMa();
  v11 = swift_getWitnessTable();
  v53[2] = v10;
  v53[1] = v11;
  v62 = sub_1A9977710();
  v60 = *(v62 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v58 = v53 - v13;
  v14 = sub_1A99762C0();
  v74 = *(v14 - 8);
  v75 = v14;
  v15 = *(v74 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v70 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = v53 - v18;
  v76 = v4;
  v77 = v5;
  v78 = v6;
  v79 = v7;
  v53[0] = type metadata accessor for SFAirDrop.AcceptAction.Single();
  v66 = *(v53[0] - 8);
  v19 = *(v66 + 64);
  v20 = MEMORY[0x1EEE9AC00](v53[0]);
  v65 = v53 - v21;
  v22 = *(a2 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v4;
  v76 = v4;
  v77 = v5;
  v56 = v5;
  v55 = v6;
  v78 = v6;
  v79 = v7;
  v54 = v7;
  _s12AcceptActionO10CodingKeysOMa();
  swift_getWitnessTable();
  v73 = sub_1A9977710();
  v68 = *(v73 - 8);
  v26 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v28 = v53 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9977AA0();
  (*(v22 + 16))(v25, v64, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *(v25 + 1);
    v69 = *v25;
    v62 = v30;
    v31 = *(v25 + 2);
    v60 = *(v25 + 3);
    v32 = v25[32];
    v33 = *(v25 + 5);
    v76 = v57;
    v77 = v56;
    v78 = v55;
    v79 = v54;
    type metadata accessor for SFAirDrop.AcceptAction.Composite();
    v34 = v75;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v74 + 32))(v70, &v25[*(TupleTypeMetadata2 + 48)], v34);
    LOBYTE(v76) = 1;
    v36 = v73;
    sub_1A9977640();
    v37 = v62;
    v76 = v69;
    v77 = v62;
    v65 = v31;
    v78 = v31;
    v38 = v60;
    v79 = v60;
    LODWORD(v64) = v32;
    v80 = v32;
    v66 = v33;
    v81 = v33;
    v82 = 0;
    swift_getWitnessTable();
    v39 = v67;
    sub_1A99776E0();
    if (v39)
    {
      (*(v63 + 8))(v71, v72);
      (*(v74 + 8))(v70, v75);
      (*(v68 + 8))(v28, v36);
      sub_1A97DC96C(v69, v37, v65, v38, v64);
    }

    else
    {
      v67 = v28;
      v50 = v74;
      sub_1A97DC96C(v69, v37, v65, v38, v64);

      LOBYTE(v76) = 1;
      sub_1A98CDB9C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
      v51 = v75;
      sub_1A99776E0();
      (*(v63 + 8))(v71, v72);
      (*(v50 + 8))(v70, v51);
      return (*(v68 + 8))(v67, v73);
    }
  }

  else
  {
    v41 = v53[0];
    v42 = v75;
    v43 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v66 + 32))(v65, v25, v41);
    v44 = v74;
    (*(v74 + 32))(v69, &v25[v43], v42);
    LOBYTE(v76) = 0;
    v45 = v58;
    v46 = v73;
    sub_1A9977640();
    LOBYTE(v76) = 0;
    swift_getWitnessTable();
    v47 = v62;
    v48 = v67;
    sub_1A99776E0();
    v49 = v44;
    if (v48)
    {
      (*(v60 + 8))(v45, v47);
      (*(v44 + 8))(v69, v75);
    }

    else
    {
      LOBYTE(v76) = 1;
      sub_1A98CDB9C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
      v52 = v75;
      sub_1A99776E0();
      (*(v60 + 8))(v45, v47);
      (*(v49 + 8))(v69, v52);
    }

    (*(v66 + 8))(v65, v41);
    return (*(v68 + 8))(v28, v46);
  }
}

uint64_t SFAirDrop.AcceptAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v84 = a1;
  v62 = a6;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v10 = _s12AcceptActionO19CompositeCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v70 = v10;
  v66 = sub_1A9977630();
  v65 = *(v66 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v72 = &v57 - v12;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v13 = _s12AcceptActionO16SingleCodingKeysOMa();
  v14 = swift_getWitnessTable();
  v68 = v13;
  v67 = v14;
  v64 = sub_1A9977630();
  v63 = *(v64 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v71 = &v57 - v16;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  _s12AcceptActionO10CodingKeysOMa();
  swift_getWitnessTable();
  v75 = sub_1A9977630();
  v78 = *(v75 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v19 = &v57 - v18;
  *&v73 = a2;
  *(&v73 + 1) = a3;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v76 = a4;
  v77 = a5;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v20 = type metadata accessor for SFAirDrop.AcceptAction();
  v61 = *(v20 - 8);
  v21 = *(v61 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v57 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v57 - v28;
  v30 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  v74 = v19;
  v31 = v79;
  sub_1A9977A70();
  if (!v31)
  {
    v59 = v24;
    v60 = v27;
    v33 = v76;
    v32 = v77;
    v58 = v29;
    v79 = v20;
    v35 = v74;
    v34 = v75;
    *&v80 = sub_1A9977620();
    sub_1A9976B60();
    swift_getWitnessTable();
    *&v82 = sub_1A99771D0();
    *(&v82 + 1) = v36;
    *&v83 = v37;
    *(&v83 + 1) = v38;
    sub_1A99771C0();
    swift_getWitnessTable();
    sub_1A9976EA0();
    v39 = v80;
    if (v80 == 2 || (v57 = v82, v80 = v82, v81 = v83, (sub_1A9976EF0() & 1) == 0))
    {
      v44 = sub_1A9977300();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v46 = v79;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      (*(v78 + 8))(v35, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v39)
      {
        LOBYTE(v80) = 1;
        v40 = v72;
        sub_1A9977530();
        v80 = v73;
        *&v81 = v33;
        *(&v81 + 1) = v32;
        type metadata accessor for SFAirDrop.AcceptAction.Composite();
        v41 = v40;
        LOBYTE(v80) = 0;
        swift_getWitnessTable();
        v42 = v59;
        v43 = v66;
        sub_1A99775F0();
        sub_1A99762C0();
        LODWORD(v40) = *(swift_getTupleTypeMetadata2() + 48);
        LOBYTE(v80) = 1;
        sub_1A98CDB9C(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
        sub_1A99775F0();
        v51 = v78;
        (*(v65 + 8))(v41, v43);
        (*(v51 + 8))(v35, v34);
      }

      else
      {
        LOBYTE(v80) = 0;
        v48 = v71;
        sub_1A9977530();
        v80 = v73;
        *&v81 = v33;
        *(&v81 + 1) = v32;
        type metadata accessor for SFAirDrop.AcceptAction.Single();
        LOBYTE(v80) = 0;
        swift_getWitnessTable();
        v42 = v60;
        v49 = v64;
        sub_1A99775F0();
        sub_1A99762C0();
        v52 = *(swift_getTupleTypeMetadata2() + 48);
        LOBYTE(v80) = 1;
        sub_1A98CDB9C(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
        sub_1A99775F0();
        v53 = v78;
        (*(v63 + 8))(v48, v49);
        (*(v53 + 8))(v35, v34);
      }

      swift_unknownObjectRelease();
      v54 = v79;
      swift_storeEnumTagMultiPayload();
      v55 = v58;
      v56 = *(v61 + 32);
      v56(v58, v42, v54);
      v56(v62, v55, v54);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v84);
}

uint64_t SFAirDrop.DeclineAction.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SFAirDrop.DeclineAction.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_1A97DC908(v2, v3, v4, v5, v6);
}

uint64_t SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *(a3 + 32);
  *a7 = a1;
  *(a7 + 8) = a2;
  v11 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v11;
  *(a7 + 48) = v10;
  *(a7 + 49) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = a7 + *(type metadata accessor for SFAirDrop.DeclineAction() + 28);
  sub_1A99762B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F38, &unk_1A99A17F0);
  v15 = (v13 + *(result + 68));
  *v15 = &unk_1A99A18A8;
  v15[1] = v12;
  return result;
}

uint64_t sub_1A98C86CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A98C86EC, 0, 0);
}

uint64_t sub_1A98C86EC()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1A98C8754()
{
  v1 = 25705;
  v2 = 0x6E6564646968;
  if (*v0 != 2)
  {
    v2 = 0x6F6974617265706FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1A98C87C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98CDA34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98C87F0(uint64_t a1)
{
  v2 = sub_1A98CBBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98C882C(uint64_t a1)
{
  v2 = sub_1A98CBBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.DeclineAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4608, &qword_1A99A18B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98CBBEC();
  sub_1A9977AA0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  sub_1A9977690();
  if (!v2)
  {
    v13 = v3[3];
    v14 = v3[4];
    v15 = v3[5];
    v16 = *(v3 + 48);
    v21 = v3[2];
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = 1;
    sub_1A97DC908(v21, v13, v14, v15, v16);
    sub_1A98CBA18();
    sub_1A99776E0();
    sub_1A97DC96C(v21, v22, v23, v24, v25);
    v17 = *(v3 + 49);
    LOBYTE(v21) = 2;
    sub_1A99776A0();
    v18 = *(type metadata accessor for SFAirDrop.DeclineAction() + 28);
    LOBYTE(v21) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F38, &unk_1A99A17F0);
    sub_1A97AF974(&qword_1EB3B4618, &qword_1EB3B2F38, &unk_1A99A17F0);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDrop.DeclineAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F38, &unk_1A99A17F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4620, &qword_1A99A18B8);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - v9;
  v11 = type metadata accessor for SFAirDrop.DeclineAction();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98CBBEC();
  v30 = v10;
  v16 = v31;
  sub_1A9977A70();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v31 = v11;
  v17 = a1;
  v18 = v6;
  v19 = v28;
  v20 = v29;
  LOBYTE(v32) = 0;
  *v14 = sub_1A99775A0();
  *(v14 + 1) = v21;
  v26[2] = v21;
  v35 = 1;
  sub_1A98CBA6C();
  sub_1A99775F0();
  v22 = v34;
  v23 = v33;
  *(v14 + 1) = v32;
  *(v14 + 2) = v23;
  v14[48] = v22;
  LOBYTE(v32) = 2;
  v24 = sub_1A99775B0();
  v26[1] = 0;
  v14[49] = v24 & 1;
  LOBYTE(v32) = 3;
  sub_1A97AF974(&qword_1EB3B4628, &qword_1EB3B2F38, &unk_1A99A17F0);
  sub_1A99775F0();
  (*(v19 + 8))(v30, v20);
  sub_1A97D8380(v18, &v14[*(v31 + 28)], &qword_1EB3B2F38, &unk_1A99A17F0);
  sub_1A98CBC40(v14, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  return sub_1A98CB558(v14);
}

uint64_t sub_1A98C8EC4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SFAirDrop.PermissionRequest.InterventionAction.init(id:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a1, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = a4 + *(type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction() + 52);
  sub_1A99762B0();
  (*(v9 + 8))(a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F40, &qword_1A9999480);
  v13 = (v11 + *(result + 68));
  *v13 = &unk_1A99A18C8;
  v13[1] = v10;
  return result;
}

uint64_t sub_1A98C9030(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 32) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98C9058, 0, 0);
}

uint64_t sub_1A98C9058()
{
  v6 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v1(&v5);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A98C90CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C9198(char a1)
{
  if (a1)
  {
    return 0x6F6974617265706FLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1A98C91F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C924C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.PermissionRequest.InterventionAction.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v15 = a2;
  v16 = v3;
  v17 = v4;
  _s17PermissionRequestV18InterventionActionV10CodingKeysOMa();
  swift_getWitnessTable();
  v5 = sub_1A9977710();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9977AA0();
  LOBYTE(v16) = 0;
  sub_1A99762C0();
  sub_1A98CDB9C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  v11 = v18;
  sub_1A99776E0();
  if (!v11)
  {
    v12 = *(v15 + 52);
    LOBYTE(v16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F40, &qword_1A9999480);
    sub_1A97AF974(&qword_1EB3B4630, &qword_1EB3B2F40, &qword_1A9999480);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDrop.PermissionRequest.InterventionAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F40, &qword_1A9999480);
  v11 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v35 - v12;
  v45 = sub_1A99762C0();
  v41 = *(v45 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  _s17PermissionRequestV18InterventionActionV10CodingKeysOMa();
  swift_getWitnessTable();
  v46 = sub_1A9977630();
  v40 = *(v46 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v35 - v16;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v18 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction();
  v37 = *(v18 - 8);
  v19 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v44 = v17;
  v23 = v51;
  sub_1A9977A70();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v51 = v18;
  v24 = v40;
  v25 = v41;
  v26 = v42;
  LOBYTE(v47) = 0;
  sub_1A98CDB9C(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
  v28 = v43;
  v27 = v44;
  v29 = v45;
  sub_1A99775F0();
  v30 = *(v25 + 32);
  v36 = v21;
  v30(v21, v28, v29);
  LOBYTE(v47) = 1;
  sub_1A97AF974(qword_1EB3B4638, &qword_1EB3B2F40, &qword_1A9999480);
  sub_1A99775F0();
  (*(v24 + 8))(v27, v46);
  v31 = v51;
  v32 = v36;
  sub_1A97D8380(v26, &v36[*(v51 + 52)], &qword_1EB3B2F40, &qword_1A9999480);
  v33 = v37;
  (*(v37 + 16))(v38, v32, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return (*(v33 + 8))(v32, v31);
}

uint64_t SFAirDrop.PermissionRequest.TelemetryData.init(id:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A99762C0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
  *(a3 + *(result + 52)) = a2;
  return result;
}

uint64_t static SFAirDrop.PermissionRequest.TelemetryData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0())
  {
    v4 = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
    v5 = sub_1A98BB25C(*(a1 + *(v4 + 52)), *(a2 + *(v4 + 52)));
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1A98C9AE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C9BA4(char a1)
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](a1 & 1);
  return sub_1A99779B0();
}

uint64_t sub_1A98C9BEC(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1A98C9C50(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  sub_1A9977980();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_1A99779B0();
}

uint64_t sub_1A98C9CF8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_1A98C9D34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C9D88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.PermissionRequest.TelemetryData.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v15 = *(a2 + 16);
  v16 = v4;
  _s17PermissionRequestV13TelemetryDataV10CodingKeysOMa();
  swift_getWitnessTable();
  v5 = sub_1A9977710();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v14[0];
  sub_1A9977AA0();
  LOBYTE(v15) = 0;
  sub_1A99762C0();
  sub_1A98CDB9C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  v12 = v14[1];
  sub_1A99776E0();
  if (!v12)
  {
    *&v15 = *(v11 + *(a2 + 52));
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3520, &qword_1A99A18D0);
    sub_1A986DDA0(&qword_1EB3B3528, sub_1A986DC08);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDrop.PermissionRequest.TelemetryData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v38 = sub_1A99762C0();
  v35 = *(v38 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  _s17PermissionRequestV13TelemetryDataV10CodingKeysOMa();
  swift_getWitnessTable();
  v39 = sub_1A9977630();
  v34 = *(v39 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v15 = &v31 - v14;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v16 = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
  v32 = *(v16 - 8);
  v17 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v15;
  v21 = v40;
  sub_1A9977A70();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v40 = a1;
  v22 = v19;
  v31 = v16;
  v23 = v34;
  v24 = v35;
  LOBYTE(v41) = 0;
  sub_1A98CDB9C(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
  v26 = v36;
  v25 = v37;
  v27 = v38;
  sub_1A99775F0();
  (*(v24 + 32))(v22, v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3520, &qword_1A99A18D0);
  v45 = 1;
  sub_1A986DDA0(&qword_1EB3B3568, sub_1A986DE18);
  sub_1A99775F0();
  (*(v23 + 8))(v25, v39);
  v29 = v31;
  v28 = v32;
  *&v22[*(v31 + 52)] = v41;
  (*(v28 + 16))(v33, v22, v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  return (*(v28 + 8))(v22, v29);
}

uint64_t sub_1A98CA48C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static SFAirDrop.PermissionRequest.TelemetryData.== infix(_:_:)(a1, a2);
}

uint64_t sub_1A98CA49C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1A97BCEB8(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_1A99777E0();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A98CA644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99763B0();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D38, &qword_1A99A34F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D40, &qword_1A99A34F8);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1A97D8380(v22, v56, &qword_1EB3B4D38, &qword_1A99A34F0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D40, &qword_1A99A34F8);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1A97BCEB8(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1A98CDB9C(&qword_1EB3B4D48, MEMORY[0x1E6966C00]);
    v49 = sub_1A99767A0();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D40, &qword_1A99A34F8);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A98CAB54(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2768, qword_1A9997EC0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_1A98CABC8(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v22 = v9;
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (*(a2 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a2 + 56) + 8 * v12);
    v25 = a1[2];
    v26 = a1[3];
    v27 = *(a1 + 8);
    v23 = *a1;
    v24 = a1[1];

    sub_1A99768D0();

    MEMORY[0x1AC58A630](*(v16 + 16));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        sub_1A99768D0();

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    v6 &= v6 - 1;

    result = sub_1A99779B0();
    v9 = result ^ v22;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1AC58A630](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v22 = v9;
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      goto LABEL_24;
    }

    v20 = *a1;
    if (v3 != v8 || v2 != v7)
    {
      v14 = sub_1A99777E0();
      sub_1A97DC908(v8, v7, v10, v9, 0);
      sub_1A97DC908(v3, v2, v5, v4, 0);
      sub_1A97DC96C(v3, v2, v5, v4, 0);
      v15 = v8;
      v16 = v7;
      v17 = v10;
      v18 = v9;
      v19 = 0;
      goto LABEL_30;
    }

    sub_1A97DC908(v20, v2, v10, v9, 0);
    sub_1A97DC908(v3, v2, v5, v4, 0);
    sub_1A97DC96C(v3, v2, v5, v4, 0);
    v24 = v3;
    v25 = v2;
    v26 = v10;
    v27 = v9;
    v28 = 0;
LABEL_28:
    sub_1A97DC96C(v24, v25, v26, v27, v28);
    return 1;
  }

  if (v6 != 1)
  {
    if (v11 != 2)
    {
      goto LABEL_24;
    }

    if (v3 != v8 || v2 != v7)
    {
      v23 = *a1;
      if ((sub_1A99777E0() & 1) == 0)
      {
        sub_1A97DC908(v8, v7, v10, v9, 2u);
        sub_1A97DC908(v3, v2, v5, v4, 2u);
        sub_1A97DC96C(v3, v2, v5, v4, 2u);
        v29 = v8;
        v30 = v7;
        v31 = v10;
        v32 = v9;
        v33 = 2;
        goto LABEL_25;
      }
    }

    if (v5 != v10 || v4 != v9)
    {
      v14 = sub_1A99777E0();
      sub_1A97DC908(v8, v7, v10, v9, 2u);
      sub_1A97DC908(v3, v2, v5, v4, 2u);
      sub_1A97DC96C(v3, v2, v5, v4, 2u);
      v15 = v8;
      v16 = v7;
      v17 = v10;
      v18 = v9;
      v19 = 2;
      goto LABEL_30;
    }

    sub_1A97DC908(v8, v7, v5, v4, 2u);
    sub_1A97DC908(v3, v2, v5, v4, 2u);
    sub_1A97DC96C(v3, v2, v5, v4, 2u);
    v24 = v8;
    v25 = v7;
    v26 = v5;
    v27 = v4;
    v28 = 2;
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_24:
    sub_1A97DC908(*a2, *(a2 + 8), v10, v9, v11);
    sub_1A97DC908(v3, v2, v5, v4, v6);
    sub_1A97DC96C(v3, v2, v5, v4, v6);
    v29 = v8;
    v30 = v7;
    v31 = v10;
    v32 = v9;
    v33 = v11;
LABEL_25:
    sub_1A97DC96C(v29, v30, v31, v32, v33);
    return 0;
  }

  v12 = *a1;
  if (v3 == v8 && v2 == v7)
  {
    sub_1A97DC908(v12, v2, v10, v9, 1u);
    sub_1A97DC908(v3, v2, v5, v4, 1u);
    sub_1A97DC96C(v3, v2, v5, v4, 1u);
    v24 = v3;
    v25 = v2;
    v26 = v10;
    v27 = v9;
    v28 = 1;
    goto LABEL_28;
  }

  v14 = sub_1A99777E0();
  sub_1A97DC908(v8, v7, v10, v9, 1u);
  sub_1A97DC908(v3, v2, v5, v4, 1u);
  sub_1A97DC96C(v3, v2, v5, v4, 1u);
  v15 = v8;
  v16 = v7;
  v17 = v10;
  v18 = v9;
  v19 = 1;
LABEL_30:
  sub_1A97DC96C(v15, v16, v17, v18, v19);
  return v14 & 1;
}

uint64_t _s7Sharing9SFAirDropO13DeclineActionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = 0, (sub_1A99777E0() & 1) != 0))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v21 = *(a1 + 16);
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    sub_1A97DC908(v21, v6, v7, v8, v9);
    sub_1A97DC908(v10, v11, v12, v13, v14);
    v5 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v21, &v16);
    sub_1A97DC96C(v16, v17, v18, v19, v20);
    sub_1A97DC96C(v21, v22, v23, v24, v25);
  }

  return v5 & 1;
}

uint64_t sub_1A98CB284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for SFAirDrop.PermissionRequest() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v2[6] = v10;
  *v10 = v2;
  v10[1] = sub_1A98CB398;

  return sub_1A98BC12C(a1, v1 + v9, v4, v5, v6, v7);
}

uint64_t sub_1A98CB398()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A98CB48C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2638;

  return sub_1A987A668(a1, v4, v5, v7);
}

uint64_t sub_1A98CB558(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A98CB62C()
{
  result = qword_1EB3B4590;
  if (!qword_1EB3B4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4590);
  }

  return result;
}

unint64_t sub_1A98CB698()
{
  result = qword_1EB3B45B8;
  if (!qword_1EB3B45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B45B8);
  }

  return result;
}

unint64_t sub_1A98CB6EC()
{
  result = qword_1EB3B45C0;
  if (!qword_1EB3B45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B45C0);
  }

  return result;
}

unint64_t sub_1A98CB740()
{
  result = qword_1EB3B45C8;
  if (!qword_1EB3B45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B45C8);
  }

  return result;
}

unint64_t sub_1A98CB794()
{
  result = qword_1EB3B45D0;
  if (!qword_1EB3B45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B45D0);
  }

  return result;
}

uint64_t sub_1A98CB800(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65546C6F626D7973 && a2 == 0xEA00000000007478)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A98CB91C()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_1A98CB924(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1A97B2638;

  return sub_1A98C45A4(a1, a2, v11, v10);
}

unint64_t sub_1A98CBA18()
{
  result = qword_1EB3B45F8;
  if (!qword_1EB3B45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B45F8);
  }

  return result;
}

unint64_t sub_1A98CBA6C()
{
  result = qword_1EB3B4600;
  if (!qword_1EB3B4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4600);
  }

  return result;
}

uint64_t sub_1A98CBB38(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A97B2988;

  return sub_1A98C86CC(a1, a2, v7, v6);
}

unint64_t sub_1A98CBBEC()
{
  result = qword_1EB3B4610;
  if (!qword_1EB3B4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4610);
  }

  return result;
}

uint64_t sub_1A98CBC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98CBCA4(uint64_t a1, _BYTE *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A97B2988;

  return sub_1A98C9030(a1, a2, v7, v6);
}

uint64_t sub_1A98CBD94(void *a1)
{
  result = sub_1A99762C0();
  if (v3 <= 0x3F)
  {
    result = sub_1A9976230();
    if (v4 <= 0x3F)
    {
      v5 = a1[2];
      v6 = a1[3];
      v7 = a1[4];
      v8 = a1[5];
      result = type metadata accessor for SFAirDrop.PermissionRequest.Style();
      if (v9 <= 0x3F)
      {
        type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
        result = sub_1A99770A0();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A98CBEB4(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  type metadata accessor for SFAirDrop.AcceptAction();
  sub_1A9976B60();
  type metadata accessor for SFAirDrop.DeclineAction();
  result = swift_getTupleTypeMetadata();
  if (v6 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction();
    result = swift_getTupleTypeMetadata2();
    if (v7 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98CC024(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A98CC06C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A98CC0CC(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  type metadata accessor for SFAirDrop.AcceptAction.Single();
  sub_1A99762C0();
  result = swift_getTupleTypeMetadata2();
  if (v6 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.AcceptAction.Composite();
    result = swift_getTupleTypeMetadata2();
    if (v7 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98CC1C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = (*(*(*(a3 + 16) - 8) + 80) + 51) & ~*(*(*(a3 + 16) - 8) + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = *(sub_1A99762C0() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = ((v8 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v5 + v6 + (v8 | 7)) & ~(v8 | 7)) + 16) & ~v8) + v9;
  v11 = ((v8 + 48) & ~v8) + v9;
  if (v11 > v10)
  {
    v10 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v12 = v10 + 1;
  v13 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 254) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_25:
      v18 = *(a1 + v10);
      if (v18 >= 2)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_25;
  }

LABEL_14:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 255;
}

void sub_1A98CC3B8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = (*(*(*(a4 + 16) - 8) + 80) + 51) & ~*(*(*(a4 + 16) - 8) + 80);
  v9 = *(sub_1A99762C0() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((v10 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v8 + v7 + (v10 | 7)) & ~(v10 | 7)) + 16) & ~v10) + v11;
  v13 = ((v10 + 48) & ~v10) + v11;
  if (v13 <= v12)
  {
    v13 = v12;
  }

  v14 = v13 + 1;
  if (a3 < 0xFF)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 254) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
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
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFE)
  {
    v16 = a2 - 255;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_39:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v13] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_24;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1A98CC630(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    sub_1A984AF04();
    sub_1A984AF58();
    v6 = *(a1 + 24);
    result = type metadata accessor for SFXPCBlock();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98CC710(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  if (*(v9 + 84) <= 0x7FFFFFFFu)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v7 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v11 + v14 + ((v10 + 51) & ~v10)) & ~v14) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 35) & ~v10;
    if (v7 >= v12)
    {
      v28 = *(v6 + 48);

      return v28(v25, v7, v5);
    }

    else
    {
      v26 = *(v9 + 48);
      v27 = (v25 + v11 + v14) & ~v14;

      return v26(v27);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void sub_1A98CC98C(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1A99762C0();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (*(v11 + 84) <= 0x7FFFFFFFu)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = ((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = ((v13 + v16 + ((v12 + 51) & ~v12)) & ~v16) + v17;
  if (v15 >= a3)
  {
    v21 = 0;
    v22 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v18)
    {
      v19 = 2;
    }

    else
    {
      v19 = a3 - v15 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 35) & ~v12;
          if (v9 >= v14)
          {
            v29 = *(v31 + 56);

            v29(v25, a2, v9, v7);
          }

          else
          {
            v26 = ((v25 + v13 + v16) & ~v16);
            if (v14 >= a2)
            {
              v30 = *(v11 + 56);

              v30(v26, a2);
            }

            else if (v17)
            {
              v27 = ~v14 + a2;
              v28 = v26;
              bzero(v26, v17);
              *v28 = v27;
            }
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v24 = ~v15 + a2;
    bzero(a1, ((v13 + v16 + ((v12 + 51) & ~v12)) & ~v16) + v17);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

uint64_t sub_1A98CCC7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A98CCCB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A98CCD00(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_1A98CCD74()
{
  sub_1A98CCF24(319, &qword_1EB3AC798, sub_1A984B03C, sub_1A984B090);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A98CCE40()
{
  sub_1A99762C0();
  if (v0 <= 0x3F)
  {
    sub_1A98CCF24(319, &qword_1EB3AC790, sub_1A98A7E00, sub_1A98CCFC4);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A98CCF24(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    sub_1A984AF04();
    sub_1A984AF58();
    v6 = type metadata accessor for SFXPCBlock();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A98CCFC4()
{
  result = qword_1EB3AC398;
  if (!qword_1EB3AC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC398);
  }

  return result;
}

void sub_1A98CD018()
{
  sub_1A99762C0();
  if (v0 <= 0x3F)
  {
    sub_1A986E4C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A98CD1A4()
{
  result = qword_1EB3B4CC0;
  if (!qword_1EB3B4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CC0);
  }

  return result;
}

unint64_t sub_1A98CD1FC()
{
  result = qword_1EB3B4CC8;
  if (!qword_1EB3B4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CC8);
  }

  return result;
}

unint64_t sub_1A98CD254()
{
  result = qword_1EB3B4CD0;
  if (!qword_1EB3B4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CD0);
  }

  return result;
}

unint64_t sub_1A98CD2AC()
{
  result = qword_1EB3B4CD8;
  if (!qword_1EB3B4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CD8);
  }

  return result;
}

unint64_t sub_1A98CD390()
{
  result = qword_1EB3B4CE0;
  if (!qword_1EB3B4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CE0);
  }

  return result;
}

unint64_t sub_1A98CD490()
{
  result = qword_1EB3B4CE8;
  if (!qword_1EB3B4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CE8);
  }

  return result;
}

unint64_t sub_1A98CD4E8()
{
  result = qword_1EB3B4CF0;
  if (!qword_1EB3B4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CF0);
  }

  return result;
}

unint64_t sub_1A98CD658()
{
  result = qword_1EB3B4CF8;
  if (!qword_1EB3B4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CF8);
  }

  return result;
}

unint64_t sub_1A98CD6B0()
{
  result = qword_1EB3B4D00;
  if (!qword_1EB3B4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D00);
  }

  return result;
}

unint64_t sub_1A98CD708()
{
  result = qword_1EB3B4D08;
  if (!qword_1EB3B4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D08);
  }

  return result;
}

unint64_t sub_1A98CD760()
{
  result = qword_1EB3B4D10;
  if (!qword_1EB3B4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D10);
  }

  return result;
}

unint64_t sub_1A98CD7B8()
{
  result = qword_1EB3B4D18;
  if (!qword_1EB3B4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D18);
  }

  return result;
}

unint64_t sub_1A98CD810()
{
  result = qword_1EB3B4D20;
  if (!qword_1EB3B4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D20);
  }

  return result;
}

unint64_t sub_1A98CD868()
{
  result = qword_1EB3B4D28;
  if (!qword_1EB3B4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D28);
  }

  return result;
}

unint64_t sub_1A98CD8C0()
{
  result = qword_1EB3B4D30;
  if (!qword_1EB3B4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D30);
  }

  return result;
}

uint64_t sub_1A98CDA34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E6CC0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A98CDB9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A98CDC3C(uint64_t a1)
{
  v2 = sub_1A98D08C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CDC78(uint64_t a1)
{
  v2 = sub_1A98D08C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CDCB4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617453746F6ELL;
  }
}

uint64_t sub_1A98CDD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98D1628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98CDD48(uint64_t a1)
{
  v2 = sub_1A98D0874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CDD84(uint64_t a1)
{
  v2 = sub_1A98D0874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CDDC0(uint64_t a1)
{
  v2 = sub_1A98D0970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CDDFC(uint64_t a1)
{
  v2 = sub_1A98D0970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CDE38(uint64_t a1)
{
  v2 = sub_1A98D091C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CDE74(uint64_t a1)
{
  v2 = sub_1A98D091C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.AskProgress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D58, &qword_1A99A3510);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D60, &qword_1A99A3518);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D68, &qword_1A99A3520);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D70, &qword_1A99A3528);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98D0874();
  sub_1A9977AA0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1A98D091C();
      v12 = v26;
      sub_1A9977640();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1A98D08C8();
      v12 = v29;
      sub_1A9977640();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1A98D0970();
    sub_1A9977640();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t SFAirDrop.AskProgress.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFAirDrop.AskProgress.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D98, &qword_1A99A3530);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DA0, &qword_1A99A3538);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DA8, &qword_1A99A3540);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DB0, &unk_1A99A3548);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1A98D0874();
  v20 = v43;
  sub_1A9977A70();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1A9977620();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1A97B297C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1A9977300();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v30 = &type metadata for SFAirDrop.AskProgress;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1A98D091C();
          sub_1A9977530();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1A98D08C8();
          v33 = v22;
          sub_1A9977530();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1A98D0970();
        sub_1A9977530();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

double SFAirDrop.Progress.percent.getter()
{
  v1 = v0[2];
  if (!(v1 >> 62) && (v1 & 1) == 0)
  {
    return v0[3] / v0[1];
  }

  return result;
}

uint64_t SFAirDrop.Progress.description.getter()
{
  v1 = sub_1A9976020();
  v2 = *(v1 - 8);
  v61 = v1;
  v62 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v60 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A9975F60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A99762E0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1808, &qword_1A9992A18);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v20 = v57 - v19;
  v22 = v0[1];
  v21 = v0[2];
  v24 = v0[3];
  v23 = v0[4];
  if (!(v21 >> 62))
  {
    v60 = v6;
    v61 = v5;
    v62 = v23;
    v66 = 0;
    v67 = 0xE000000000000000;
    if (v21)
    {
      sub_1A99772B0();
      v64 = v24;
      v42 = sub_1A9977730();
      v44 = v43;

      v66 = v42;
      v67 = v44;
      MEMORY[0x1AC5895B0](0x2D203E6C696E3C2FLL, 0xE900000000000020);
    }

    else
    {
      v48 = v17;
      v49 = v18;
      v50 = v22;
      sub_1A99772B0();
      v64 = v24;
      v51 = sub_1A9977730();
      v59 = v24;
      v53 = v52;

      v66 = v51;
      v67 = v53;
      MEMORY[0x1AC5895B0](47, 0xE100000000000000);
      v64 = v50;
      v54 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v54);

      MEMORY[0x1AC5895B0](10272, 0xE200000000000000);
      v63 = v59 / v50;
      sub_1A99762D0();
      sub_1A97D4C04();
      sub_1A9975F30();
      sub_1A9975F50();
      MEMORY[0x1AC588BE0](v9, v48);
      (*(v60 + 1))(v9, v61);
      v55 = *(v49 + 8);
      v55(v16, v48);
      sub_1A97AF974(&qword_1EB3B1818, &qword_1EB3B1808, &qword_1A9992A18);
      sub_1A99766D0();
      v55(v20, v48);
      MEMORY[0x1AC5895B0](v64, v65);

      MEMORY[0x1AC5895B0](2108704, 0xE300000000000000);
    }

    v64 = v62;
    v56 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v56);

    MEMORY[0x1AC5895B0](0x7466656C2073, 0xE600000000000000);
    return v66;
  }

  v25 = *v0;
  if (v21 >> 62 != 1)
  {
    if (v21 != 0x8000000000000000 || v24 | v22 | v25 | v23)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return 0x72617453746F6E2ELL;
    }
  }

  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (!v26)
  {
LABEL_18:
    v66 = 0x6574656C706D6F63;
    v67 = 0xEA00000000002864;
    v64 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    sub_1A97AF974(&qword_1EB3AB6D0, &unk_1EB3B2AC0, &qword_1A9990580);
    v45 = sub_1A9976760();
    v47 = v46;

    MEMORY[0x1AC5895B0](v45, v47);

    return v66;
  }

  v64 = MEMORY[0x1E69E7CC0];
  result = sub_1A97BD628(0, v26, 0);
  v29 = 0;
  v27 = v64;
  v58 = v25 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v59 = v26;
  v57[0] = v62 + 8;
  v57[1] = v62 + 16;
  while (v29 < *(v25 + 16))
  {
    v31 = v61;
    v30 = v62;
    v32 = v60;
    (*(v62 + 16))(v60, v58 + *(v62 + 72) * v29, v61);
    v66 = 0;
    v67 = 0xE000000000000000;
    v33 = sub_1A9976000();
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v33 = 0x656863732D6F6E3CLL;
      v35 = 0xEB000000003E656DLL;
    }

    MEMORY[0x1AC5895B0](v33, v35);

    MEMORY[0x1AC5895B0](0x2FA680E22F2F3ALL, 0xA700000000000000);
    v36 = sub_1A9975FB0();
    MEMORY[0x1AC5895B0](v36);

    v37 = v66;
    v38 = v67;
    result = (*(v30 + 8))(v32, v31);
    v64 = v27;
    v40 = *(v27 + 16);
    v39 = *(v27 + 24);
    if (v40 >= v39 >> 1)
    {
      result = sub_1A97BD628((v39 > 1), v40 + 1, 1);
      v27 = v64;
    }

    ++v29;
    *(v27 + 16) = v40 + 1;
    v41 = v27 + 16 * v40;
    *(v41 + 32) = v37;
    *(v41 + 40) = v38;
    if (v59 == v29)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A98CEFEC()
{
  v1 = 0x7472617453746F6ELL;
  v2 = 0x726566736E617274;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000019;
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

uint64_t sub_1A98CF07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98D1754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98CF0A4(uint64_t a1)
{
  v2 = sub_1A98D09C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CF0E0(uint64_t a1)
{
  v2 = sub_1A98D09C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CF12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1936487029 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98CF1B4(uint64_t a1)
{
  v2 = sub_1A98D0A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CF1F0(uint64_t a1)
{
  v2 = sub_1A98D0A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CF22C(uint64_t a1)
{
  v2 = sub_1A98D0B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CF268(uint64_t a1)
{
  v2 = sub_1A98D0B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A98CF2A4()
{
  v1 = 0x706F4373656C6966;
  v2 = 0x706F437365747962;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x7479426C61746F74;
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

uint64_t sub_1A98CF32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98D18D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98CF354(uint64_t a1)
{
  v2 = sub_1A98D0A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CF390(uint64_t a1)
{
  v2 = sub_1A98D0A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CF3CC(uint64_t a1)
{
  v2 = sub_1A98D0AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CF408(uint64_t a1)
{
  v2 = sub_1A98D0AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.Progress.encode(to:)(void *a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DB8, &qword_1A99A3558);
  v43 = *(v45 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v35 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DC0, &qword_1A99A3560);
  v41 = *(v46 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DC8, &qword_1A99A3568);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DD0, &qword_1A99A3570);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DD8, &qword_1A99A3578);
  v16 = *(v15 - 8);
  v48 = v15;
  v49 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v20 = *v1;
  v47 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v39 = v1[4];
  v40 = v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98D09C4();
  sub_1A9977AA0();
  if (v22 >> 62)
  {
    if (v22 >> 62 == 1)
    {
      LOBYTE(v51) = 3;
      sub_1A98D0A18();
      v24 = v42;
      v25 = v48;
      sub_1A9977640();
      v51 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      sub_1A98D0B68(&qword_1EB3B1910, &qword_1EB3B1918);
      v26 = v45;
      sub_1A99776E0();
      (*(v43 + 8))(v24, v26);
      v27 = *(v49 + 8);
      v28 = v19;
    }

    else
    {
      if (v22 != 0x8000000000000000 || v40 | v47 | v20 | v39)
      {
        LOBYTE(v51) = 1;
        sub_1A98D0AC0();
        v34 = v48;
        sub_1A9977640();
        (*(v37 + 8))(v10, v38);
        return (*(v49 + 8))(v19, v34);
      }

      LOBYTE(v51) = 0;
      sub_1A98D0B14();
      v25 = v48;
      sub_1A9977640();
      (*(v35 + 8))(v14, v36);
      v27 = *(v49 + 8);
      v28 = v19;
    }
  }

  else
  {
    v29 = v41;
    LOBYTE(v51) = 2;
    sub_1A98D0A6C();
    v30 = v44;
    v25 = v48;
    sub_1A9977640();
    LOBYTE(v51) = 0;
    v31 = v46;
    v32 = v50;
    sub_1A99776C0();
    if (!v32)
    {
      LOBYTE(v51) = 1;
      sub_1A9977670();
      LOBYTE(v51) = 2;
      sub_1A99776C0();
      LOBYTE(v51) = 3;
      sub_1A99776C0();
    }

    (*(v29 + 8))(v30, v31);
    v27 = *(v49 + 8);
    v28 = v19;
  }

  return v27(v28, v25);
}

uint64_t SFAirDrop.Progress.hash(into:)()
{
  v1 = sub_1A9976020();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v9 = v0[2];
  v8 = v0[3];
  v10 = v0[4];
  if (!(v9 >> 62))
  {
    MEMORY[0x1AC58A630](2);
    MEMORY[0x1AC58A630](v6);
    sub_1A99779A0();
    if ((v9 & 1) == 0)
    {
      MEMORY[0x1AC58A630](v7);
    }

    MEMORY[0x1AC58A630](v8);
    return MEMORY[0x1AC58A630](v10);
  }

  if (v9 >> 62 != 1)
  {
    v10 = v9 != 0x8000000000000000 || (v8 | v7 | v6 | v10) != 0;
    return MEMORY[0x1AC58A630](v10);
  }

  MEMORY[0x1AC58A630](3);
  result = MEMORY[0x1AC58A630](*(v6 + 16));
  v12 = *(v6 + 16);
  if (v12)
  {
    v15 = *(v2 + 16);
    v14 = v2 + 16;
    v13 = v15;
    v16 = v6 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    do
    {
      v13(v5, v16, v1);
      sub_1A98D0BF0(&qword_1EB3AC8C0);
      sub_1A9976740();
      result = (*(v14 - 8))(v5, v1);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t SFAirDrop.Progress.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1A9977980();
  SFAirDrop.Progress.hash(into:)();
  return sub_1A99779B0();
}

uint64_t SFAirDrop.Progress.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4E08, &qword_1A99A3588);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v48 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4E10, &qword_1A99A3590);
  v53 = *(v50 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v57 = &v48 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4E18, &qword_1A99A3598);
  v56 = *(v49 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4E20, &qword_1A99A35A0);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4E28, &qword_1A99A35A8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1A98D09C4();
  v23 = v58;
  sub_1A9977A70();
  if (!v23)
  {
    v24 = v15;
    v58 = v12;
    v25 = v56;
    v26 = v57;
    v27 = sub_1A9977620();
    v28 = (2 * *(v27 + 16)) | 1;
    v60 = v27;
    v61 = v27 + 32;
    v62 = 0;
    v63 = v28;
    v29 = sub_1A97B2974();
    if (v29 == 4 || v62 != v63 >> 1)
    {
      v36 = sub_1A9977300();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v38 = &type metadata for SFAirDrop.Progress;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v17 + 8))(v20, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29 > 1u)
      {
        if (v29 == 2)
        {
          LOBYTE(v64) = 2;
          sub_1A98D0A6C();
          v41 = v26;
          sub_1A9977530();
          LOBYTE(v64) = 0;
          v42 = v50;
          v58 = sub_1A99775D0();
          LOBYTE(v64) = 1;
          v43 = sub_1A9977580();
          v45 = v44;
          v56 = v43;
          LOBYTE(v64) = 2;
          v54 = sub_1A99775D0();
          LOBYTE(v64) = 3;
          v33 = sub_1A99775D0();
          (*(v53 + 8))(v41, v42);
          (*(v17 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v34 = v45 & 1;
          v30 = v58;
          v35 = v55;
          v31 = v56;
          v32 = v54;
        }

        else
        {
          LOBYTE(v64) = 3;
          sub_1A98D0A18();
          sub_1A9977530();
          v35 = v55;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
          sub_1A98D0B68(&qword_1EB3B1AA8, &qword_1EB3B1AB0);
          v46 = v51;
          v47 = v54;
          sub_1A99775F0();
          (*(v52 + 8))(v47, v46);
          (*(v17 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v30 = v64;
          v34 = 0x4000000000000000;
        }
      }

      else
      {
        if (v29)
        {
          LOBYTE(v64) = 1;
          sub_1A98D0AC0();
          sub_1A9977530();
          (*(v25 + 8))(v11, v49);
          (*(v17 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0x8000000000000000;
          v30 = 1;
        }

        else
        {
          LOBYTE(v64) = 0;
          sub_1A98D0B14();
          sub_1A9977530();
          (*(v48 + 8))(v24, v58);
          (*(v17 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0x8000000000000000;
        }

        v35 = v55;
      }

      *v35 = v30;
      v35[1] = v31;
      v35[2] = v34;
      v35[3] = v32;
      v35[4] = v33;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v59);
}

uint64_t sub_1A98D0520()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1A9977980();
  SFAirDrop.Progress.hash(into:)();
  return sub_1A99779B0();
}

uint64_t sub_1A98D0578()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1A9977980();
  SFAirDrop.Progress.hash(into:)();
  return sub_1A99779B0();
}

uint64_t _s7Sharing9SFAirDropO8ProgressO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (!(v5 >> 62))
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    sub_1A97C2280(*a1, v2, v5);
    sub_1A97C2280(v8, v7, v10);
    if (v3 == v8)
    {
      if ((v5 & 1) == 0)
      {
        v18 = 0;
        if ((v10 & 1) != 0 || v2 != v7 || v4 != v9)
        {
          return v18;
        }

        return v6 == v11;
      }

      if ((v10 & (v4 == v9)) == 1)
      {
        return v6 == v11;
      }
    }

    return 0;
  }

  if (v5 >> 62 == 1)
  {
    if (v10 >> 62 == 1)
    {
      sub_1A98D1A54(*a2, a2[1], v10);
      sub_1A98D1A54(v3, v2, v5);
      v20 = sub_1A99054C0(v3, v8);
      sub_1A97C2280(v3, v2, v5);
      sub_1A97C2280(v8, v7, v10);
      return v20 & 1;
    }

    v19 = *a1;

    goto LABEL_34;
  }

  if (v5 == 0x8000000000000000 && (v4 | v2 | v3 | v6) == 0)
  {
    if (v10 >> 62 == 2 && v10 == 0x8000000000000000 && !(v11 | v9 | v8 | v7))
    {
      sub_1A97C2280(0, 0, 0x8000000000000000);
      sub_1A97C2280(0, 0, 0x8000000000000000);
      return 1;
    }

LABEL_34:
    sub_1A98D1A54(v8, v7, v10);
    sub_1A97C2280(v3, v2, v5);
    sub_1A97C2280(v8, v7, v10);
    return 0;
  }

  if (v10 >> 62 != 2 || v8 != 1 || v7 != 0 || v10 != 0x8000000000000000 || (v11 | v9) != 0)
  {
    goto LABEL_34;
  }

  v18 = 1;
  sub_1A97C2280(1, 0, 0x8000000000000000);
  sub_1A97C2280(1, 0, 0x8000000000000000);
  return v18;
}

unint64_t sub_1A98D0874()
{
  result = qword_1EB3B4D78;
  if (!qword_1EB3B4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D78);
  }

  return result;
}

unint64_t sub_1A98D08C8()
{
  result = qword_1EB3B4D80;
  if (!qword_1EB3B4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D80);
  }

  return result;
}

unint64_t sub_1A98D091C()
{
  result = qword_1EB3B4D88;
  if (!qword_1EB3B4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D88);
  }

  return result;
}

unint64_t sub_1A98D0970()
{
  result = qword_1EB3B4D90;
  if (!qword_1EB3B4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D90);
  }

  return result;
}

unint64_t sub_1A98D09C4()
{
  result = qword_1EB3B4DE0;
  if (!qword_1EB3B4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4DE0);
  }

  return result;
}

unint64_t sub_1A98D0A18()
{
  result = qword_1EB3B4DE8;
  if (!qword_1EB3B4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4DE8);
  }

  return result;
}

unint64_t sub_1A98D0A6C()
{
  result = qword_1EB3B4DF0;
  if (!qword_1EB3B4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4DF0);
  }

  return result;
}

unint64_t sub_1A98D0AC0()
{
  result = qword_1EB3B4DF8;
  if (!qword_1EB3B4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4DF8);
  }

  return result;
}

unint64_t sub_1A98D0B14()
{
  result = qword_1EB3B4E00;
  if (!qword_1EB3B4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E00);
  }

  return result;
}

uint64_t sub_1A98D0B68(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    sub_1A98D0BF0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A98D0BF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A9976020();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A98D0C38()
{
  result = qword_1EB3B4E30;
  if (!qword_1EB3B4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E30);
  }

  return result;
}

unint64_t sub_1A98D0C90()
{
  result = qword_1EB3B4E38;
  if (!qword_1EB3B4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E38);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_7Sharing9SFAirDropO8ProgressO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1A98D0D10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_1A98D0D60(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
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

uint64_t sub_1A98D0DC4(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_1A99A3500;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  return result;
}

unint64_t sub_1A98D0E9C()
{
  result = qword_1EB3B4E40;
  if (!qword_1EB3B4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E40);
  }

  return result;
}

unint64_t sub_1A98D0EF4()
{
  result = qword_1EB3B4E48;
  if (!qword_1EB3B4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E48);
  }

  return result;
}

unint64_t sub_1A98D0F4C()
{
  result = qword_1EB3B4E50;
  if (!qword_1EB3B4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E50);
  }

  return result;
}

unint64_t sub_1A98D0FA4()
{
  result = qword_1EB3B4E58;
  if (!qword_1EB3B4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E58);
  }

  return result;
}

unint64_t sub_1A98D0FFC()
{
  result = qword_1EB3B4E60;
  if (!qword_1EB3B4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E60);
  }

  return result;
}

unint64_t sub_1A98D1054()
{
  result = qword_1EB3B4E68;
  if (!qword_1EB3B4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E68);
  }

  return result;
}

unint64_t sub_1A98D10AC()
{
  result = qword_1EB3B4E70;
  if (!qword_1EB3B4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E70);
  }

  return result;
}

unint64_t sub_1A98D1104()
{
  result = qword_1EB3B4E78;
  if (!qword_1EB3B4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E78);
  }

  return result;
}

unint64_t sub_1A98D115C()
{
  result = qword_1EB3B4E80;
  if (!qword_1EB3B4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E80);
  }

  return result;
}

unint64_t sub_1A98D11B4()
{
  result = qword_1EB3B4E88;
  if (!qword_1EB3B4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E88);
  }

  return result;
}

unint64_t sub_1A98D120C()
{
  result = qword_1EB3B4E90;
  if (!qword_1EB3B4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E90);
  }

  return result;
}

unint64_t sub_1A98D1264()
{
  result = qword_1EB3B4E98;
  if (!qword_1EB3B4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E98);
  }

  return result;
}

unint64_t sub_1A98D12BC()
{
  result = qword_1EB3B4EA0;
  if (!qword_1EB3B4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EA0);
  }

  return result;
}

unint64_t sub_1A98D1314()
{
  result = qword_1EB3B4EA8;
  if (!qword_1EB3B4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EA8);
  }

  return result;
}

unint64_t sub_1A98D136C()
{
  result = qword_1EB3B4EB0;
  if (!qword_1EB3B4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EB0);
  }

  return result;
}

unint64_t sub_1A98D13C4()
{
  result = qword_1EB3B4EB8;
  if (!qword_1EB3B4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EB8);
  }

  return result;
}

unint64_t sub_1A98D141C()
{
  result = qword_1EB3B4EC0;
  if (!qword_1EB3B4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EC0);
  }

  return result;
}

unint64_t sub_1A98D1474()
{
  result = qword_1EB3B4EC8;
  if (!qword_1EB3B4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EC8);
  }

  return result;
}

unint64_t sub_1A98D14CC()
{
  result = qword_1EB3B4ED0;
  if (!qword_1EB3B4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4ED0);
  }

  return result;
}

unint64_t sub_1A98D1524()
{
  result = qword_1EB3B4ED8;
  if (!qword_1EB3B4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4ED8);
  }

  return result;
}

unint64_t sub_1A98D157C()
{
  result = qword_1EB3B4EE0;
  if (!qword_1EB3B4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EE0);
  }

  return result;
}

unint64_t sub_1A98D15D4()
{
  result = qword_1EB3B4EE8;
  if (!qword_1EB3B4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EE8);
  }

  return result;
}

uint64_t sub_1A98D1628(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617453746F6ELL && a2 == 0xEA00000000006465;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E3930 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E6D00 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A98D1754(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617453746F6ELL && a2 == 0xEA00000000006465;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A99E6D20 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC000000676E6972 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A98D18D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F4373656C6966 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7479426C61746F74 && a2 == 0xEA00000000007365 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706F437365747962 && a2 == 0xEB00000000646569 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A99E6D40 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A98D1A54(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  return result;
}

uint64_t AsyncCombineLatest2Sequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98D1A88, 0, 0);
}

uint64_t sub_1A98D1A88()
{
  v1 = **(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1A97E0474;
  v3 = *(v0 + 16);

  return sub_1A98D1FF4(v3);
}

uint64_t combineLatest<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  (*(v9 + 16))(v13, a2, a4);
  return sub_1A98D1E04(v17, v13, a3, a4, a5);
}

uint64_t AsyncCombineLatest2Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = sub_1A99770A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16[0] = *(a1 + 16);
  v16[1] = v5;
  v16[2] = v5;
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v12;
  type metadata accessor for CombineLatestStorage();
  v13 = *(a1 + 52);
  (*(*(v5 - 8) + 56))(v10, 1, 1, v5);
  v14 = sub_1A9861A48(v2, v2 + v13, v10);
  (*(v7 + 8))(v10, v6);
  return sub_1A98D1ECC(v14, a2);
}

uint64_t sub_1A98D1E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for AsyncCombineLatest2Sequence();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_1A98D1ECC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 104);
  type metadata accessor for AsyncCombineLatest2Sequence.Iterator.InternalClass();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_1A98D1F48(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1A98D1F7C()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1A98596FC();

  v3 = *(v1 + 16);

  return v1;
}

uint64_t sub_1A98D1FC0()
{
  sub_1A98D1F7C();

  return swift_deallocClassInstance();
}

uint64_t sub_1A98D1FF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v2[4] = swift_getAssociatedTypeWitness();
  v6 = *(v3 + 104);
  v7 = *(v3 + 88);
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v2[7] = TupleTypeMetadata3;
  v9 = sub_1A99770A0();
  v2[8] = v9;
  v10 = *(v9 - 8);
  v2[9] = v10;
  v11 = *(v10 + 64) + 15;
  v2[10] = swift_task_alloc();
  v12 = *(TupleTypeMetadata3 - 8);
  v2[11] = v12;
  v13 = *(v12 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98D21F8, 0, 0);
}

uint64_t sub_1A98D21F8()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1A98D2294;
  v3 = v0[10];

  return sub_1A9859938(v3);
}

uint64_t sub_1A98D2294()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1A98D2704;
  }

  else
  {
    v3 = sub_1A98D23A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98D23A8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[2];
    (*(v0[9] + 8))(v2, v0[8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(v6, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v9 = v0[13];
    v8 = v0[14];
    v28 = v0[12];
    v10 = v0[5];
    v32 = v0[6];
    v11 = v0[4];
    v12 = v0[2];
    v25 = v12;
    v26 = *(v1 + 32);
    v26(v8, v2, v3);
    v13 = swift_getTupleTypeMetadata2();
    v27 = *(v13 + 48);
    v29 = v9;
    (*(v1 + 16))(v9, v8, v3);
    v30 = *(v3 + 64);
    v31 = *(v3 + 48);
    v14 = *(v11 - 8);
    (*(v14 + 32))(v25, v9, v11);
    v26(v28, v8, v3);
    v15 = *(v3 + 64);
    v16 = v10;
    v17 = *(v10 - 8);
    (*(v17 + 32))(v25 + v27, v28 + *(v3 + 48), v16);
    (*(*(v13 - 8) + 56))(v25, 0, 1, v13);
    v18 = *(*(v32 - 8) + 8);
    v18(v28 + v15, v32);
    (*(v14 + 8))(v28, v11);
    v18(v29 + v30, v32);
    (*(v17 + 8))(v29 + v31, v16);
  }

  v20 = v0[13];
  v19 = v0[14];
  v21 = v0[12];
  v22 = v0[10];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1A98D2704()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_1A98D2790(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return AsyncCombineLatest2Sequence.Iterator.next()(a1);
}

uint64_t sub_1A98D2828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v12 = *(a5 + 32);
  v13 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[4] = v15;
  v16 = *(v15 + 64) + 15;
  v6[5] = swift_task_alloc();
  v17 = *(MEMORY[0x1E69E85D8] + 4);
  v18 = swift_task_alloc();
  v6[6] = v18;
  *v18 = v6;
  v18[1] = sub_1A97FF5F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A98D297C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AsyncCombineLatest2Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1A98D29DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A98D2A9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98D2B28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1A98D2D04(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1A98D2FD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static SFCodableCGImage.== infix(_:_:)(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      type metadata accessor for CGImage(0);
      sub_1A98D310C();
      v3 = v2;
      v4 = sub_1A9976320();

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1A98D310C()
{
  result = qword_1EB3B3608;
  if (!qword_1EB3B3608)
  {
    type metadata accessor for CGImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3608);
  }

  return result;
}

uint64_t sub_1A98D3164()
{
  sub_1A9977980();
  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t sub_1A98D31E0()
{
  sub_1A9977980();
  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t sub_1A98D3238@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A9977510();

  *a2 = v5 != 0;
  return result;
}

void sub_1A98D328C(uint64_t a1@<X8>)
{
  strcpy(a1, "wrappedValue");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1A98D32D0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1A9977510();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1A98D3328(uint64_t a1)
{
  v2 = sub_1A98D369C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98D3364(uint64_t a1)
{
  v2 = sub_1A98D369C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SFCodableCGImage.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SFCodableCGImage.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4EF0, &qword_1A99A4190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98D369C();
  sub_1A9977A70();
  if (!v2)
  {
    sub_1A97B446C();
    sub_1A9977590();
    v11 = v19;
    if (v19 >> 60 == 15)
    {
      (*(v6 + 8))(v9, v5);
      *a2 = 0;
    }

    else
    {
      v20 = a2;
      v12 = v18;
      v13 = sub_1A9976060();
      TransferCGImageWithData = createTransferCGImageWithData();

      if (TransferCGImageWithData)
      {
        v15 = TransferCGImageWithData;
        sub_1A97D8688(v12, v11);
        (*(v6 + 8))(v9, v5);

        *v20 = TransferCGImageWithData;
      }

      else
      {
        sub_1A97BCDE0();
        swift_allocError();
        *v17 = 0xD000000000000011;
        v17[1] = 0x80000001A99E6D60;
        v17[2] = 0xD00000000000004ELL;
        v17[3] = 0x80000001A99E6D80;
        v17[4] = 25;
        v17[10] = 0x2000000000000000;
        swift_willThrow();
        sub_1A97D8688(v12, v11);
        (*(v6 + 8))(v9, v5);
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_1A98D369C()
{
  result = qword_1EB3B4EF8;
  if (!qword_1EB3B4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EF8);
  }

  return result;
}

uint64_t SFCodableCGImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F00, &qword_1A99A4198);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98D369C();
  v10 = v8;
  sub_1A9977AA0();
  if (v8)
  {
    TransferDataWithCGImage = createTransferDataWithCGImage(v10);
    if (TransferDataWithCGImage)
    {
      v12 = TransferDataWithCGImage;
      v13 = sub_1A9976070();
      v15 = v14;

      v18 = v13;
      v19 = v15;
      sub_1A97B4370();
      sub_1A99776E0();

      sub_1A97B43C4(v18, v19);
    }

    else
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v16 = 0xD000000000000011;
      v16[1] = 0x80000001A99E6DD0;
      v16[2] = 0xD00000000000004ELL;
      v16[3] = 0x80000001A99E6D80;
      v16[4] = 35;
      v16[10] = 0x2000000000000000;
      swift_willThrow();
    }
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A98D3954(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      type metadata accessor for CGImage(0);
      sub_1A98D310C();
      v3 = v2;
      v4 = sub_1A9976320();

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1A98D39F8()
{
  result = qword_1EB3B4F08;
  if (!qword_1EB3B4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4F08);
  }

  return result;
}

unint64_t sub_1A98D3A50()
{
  result = qword_1EB3B4F10;
  if (!qword_1EB3B4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4F10);
  }

  return result;
}

unint64_t sub_1A98D3AA8()
{
  result = qword_1EB3B4F18;
  if (!qword_1EB3B4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4F18);
  }

  return result;
}

uint64_t notify_async_sequence(name:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1220, &qword_1A9991A28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  *&v9[-v6] = 1;
  (*(v7 + 104))(&v9[-v6], *MEMORY[0x1E69E8640]);
  v10 = a1;
  v11 = a2;
  return sub_1A9976C90();
}

uint64_t sub_1A98D3C20()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B4F20);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B4F20);
  if (qword_1ED717D40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED717D48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A98D3CE8()
{
  v0 = sub_1A9976FB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A9976FA0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1A9976680();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A97F1CA0();
  sub_1A9976670();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1A98118DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A9811934();
  sub_1A99771F0();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v0);
  result = sub_1A9976FE0();
  qword_1EB3B4F38 = result;
  return result;
}

uint64_t sub_1A98D3EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return sub_1A98D4A18(sub_1A98D4ADC, v4, a2, a3);
}

uint64_t sub_1A98D3F44(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5[2] = a1;
  v5[3] = v2;
  v5[4] = v3;
  return sub_1A98D4A18(sub_1A98D4ADC, v5, v2, v3);
}

uint64_t sub_1A98D3F94(const char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F40, &qword_1A99A4408);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v34 - v11;
  out_token = -1;
  if (qword_1EB3B0B58 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB3B4F38;
  v14 = *(v9 + 16);
  v34[1] = a2;
  v14(v12, a2, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = sub_1A98D4AFC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A966A1C8;
  aBlock[3] = &block_descriptor_9;
  v17 = _Block_copy(aBlock);

  v18 = notify_register_dispatch(a1, &out_token, v13, v17);
  _Block_release(v17);
  if (v18 || out_token == -1)
  {
    if (qword_1EB3B0B50 != -1)
    {
      swift_once();
    }

    v28 = sub_1A99764A0();
    __swift_project_value_buffer(v28, qword_1EB3B4F20);

    v29 = sub_1A9976480();
    v30 = sub_1A9976F70();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_1A97AF148(a3, a4, aBlock);
      *(v31 + 12) = 1024;
      *(v31 + 14) = v18;
      _os_log_impl(&dword_1A9662000, v29, v30, "Failed to register notifyd notification {name: %s, status: %u}", v31, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x1AC58D2C0](v32, -1, -1);
      MEMORY[0x1AC58D2C0](v31, -1, -1);
    }

    result = sub_1A9976C50();
  }

  else
  {
    if (qword_1EB3B0B50 != -1)
    {
      swift_once();
    }

    v19 = sub_1A99764A0();
    __swift_project_value_buffer(v19, qword_1EB3B4F20);

    v20 = sub_1A9976480();
    v21 = sub_1A9976F90();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1A97AF148(a3, a4, aBlock);
      _os_log_impl(&dword_1A9662000, v20, v21, "Registered for notifyd notification {name: %s}", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x1AC58D2C0](v23, -1, -1);
      MEMORY[0x1AC58D2C0](v22, -1, -1);
    }

    v24 = out_token;
    type metadata accessor for State();
    v25 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v25 + 112) = v24;
    *(v25 + 116) = 0;
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = a3;
    v26[4] = a4;

    result = sub_1A9976C20();
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A98D4480(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F48, qword_1A99A4420);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - v5;
  v8[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F40, &qword_1A99A4408);
  sub_1A9976C40();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A98D457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FC0, &qword_1A999A498);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 16) = xmmword_1A9996D60;
  *(v11 + 56) = v12;
  *(v11 + 32) = 0x696D7265546E6FLL;
  *(v11 + 40) = 0xE700000000000000;
  sub_1A9977970();

  v13 = sub_1A9976C00();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a4;

  sub_1A97B4F40(0, 0, v10, &unk_1A99A4418, v14);
}

uint64_t sub_1A98D4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A98D4738, a4, 0);
}

uint64_t sub_1A98D4738()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = *(v1 + 112);
  *(v0 + 44) = *(v1 + 116);
  return MEMORY[0x1EEE6DFA0](sub_1A98D4768, 0, 0);
}

uint64_t sub_1A98D4768()
{
  v20 = v0;
  if ((*(v0 + 44) & 1) == 0)
  {
    if (*(v0 + 40) == -1)
    {
      if (qword_1EB3B0B50 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 32);
      v10 = sub_1A99764A0();
      __swift_project_value_buffer(v10, qword_1EB3B4F20);

      v11 = sub_1A9976480();
      v12 = sub_1A9976F80();

      if (os_log_type_enabled(v11, v12))
      {
        v14 = *(v0 + 24);
        v13 = *(v0 + 32);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v19 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1A97AF148(v14, v13, &v19);
        _os_log_impl(&dword_1A9662000, v11, v12, "Unexpected NOTIFY_TOKEN_INVALID for notifyd registartion {name: %s}", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x1AC58D2C0](v16, -1, -1);
        MEMORY[0x1AC58D2C0](v15, -1, -1);
      }
    }

    else
    {
      if (qword_1EB3B0B50 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 32);
      v2 = sub_1A99764A0();
      __swift_project_value_buffer(v2, qword_1EB3B4F20);

      v3 = sub_1A9976480();
      v4 = sub_1A9976F90();

      if (os_log_type_enabled(v3, v4))
      {
        v6 = *(v0 + 24);
        v5 = *(v0 + 32);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v19 = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_1A97AF148(v6, v5, &v19);
        _os_log_impl(&dword_1A9662000, v3, v4, "Cancelled notifyd registration {name: %s}", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x1AC58D2C0](v8, -1, -1);
        MEMORY[0x1AC58D2C0](v7, -1, -1);
      }

      notify_cancel(*(v0 + 40));
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A98D4A18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return sub_1A99772A0();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v7[0] = a3;
    v7[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v5 = v7;
    return a1(v5);
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return sub_1A99772A0();
  }

  v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a1(v5);
}

uint64_t sub_1A98D4A88()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1A98D4AFC(int a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F40, &qword_1A99A4408) - 8) + 80);

  return sub_1A98D4480(a1);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A98D4B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2638;

  return sub_1A98D4714(a1, v4, v5, v6, v7, v8);
}

size_t sub_1A98D4C64(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1A986BFA4(*(a1 + 16), 0);
  v4 = *(sub_1A99763B0() - 8);
  v5 = sub_1A986C130(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, a1);
  sub_1A982B3C0();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1A98D4D2C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3ABCC0);
  v1 = __swift_project_value_buffer(v0, qword_1EB3ABCC0);
  if (qword_1EB3AC860 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3AC868);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1A98D4DF4(uint64_t a1)
{
  sub_1A9977250();
  if (*(a1 + 16) && (v2 = sub_1A97BCF30(v8), (v3 & 1) != 0))
  {
    sub_1A97AF7EC(*(a1 + 56) + 32 * v2, v9);
    sub_1A97C108C(v8);
    sub_1A9812DE0(0, &unk_1ED717DE0, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1A97C108C(v8);
  }

  sub_1A9977250();
  if (*(a1 + 16) && (v4 = sub_1A97BCF30(v8), (v5 & 1) != 0))
  {
    sub_1A97AF7EC(*(a1 + 56) + 32 * v4, v9);
    sub_1A97C108C(v8);
    sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
    if (swift_dynamicCast())
    {
LABEL_9:
      v6 = [0x6574616369646544 BOOLValue];

      return v6;
    }
  }

  else
  {
    sub_1A97C108C(v8);
  }

  return 0;
}

uint64_t sub_1A98D4F88(uint64_t a1)
{
  v7[0] = 0xD00000000000001ALL;
  v7[1] = 0x80000001A99E6F20;
  sub_1A9977250();
  if (*(a1 + 16) && (v2 = sub_1A97BCF30(v6), (v3 & 1) != 0))
  {
    sub_1A97AF7EC(*(a1 + 56) + 32 * v2, v7);
    sub_1A97C108C(v6);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A97C108C(v6);
    return 0;
  }
}

uint64_t sub_1A98D505C(void *a1, void *a2)
{
  v4 = sub_1A9976230();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v59 - v10;
  if (([a1 onSystemVolume] & 1) == 0 && objc_msgSend(a2, sel_onSystemVolume))
  {
    if (qword_1EB3ABCB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1A99764A0();
    __swift_project_value_buffer(v12, qword_1EB3ABCC0);
    swift_unknownObjectRetain();
    v13 = sub_1A9976480();
    v14 = sub_1A9976F60();
    if (!os_log_type_enabled(v13, v14))
    {
      swift_unknownObjectRelease();

      return 0;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v60[0] = v16;
    *v15 = 136315138;
    v17 = [a1 identifier];
    result = swift_unknownObjectRelease();
    if (v17)
    {
      v19 = sub_1A9976820();
      v21 = v20;

      v22 = sub_1A97AF148(v19, v21, v60);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1A9662000, v13, v14, "ExtensionsCache: Removing extension %s because a system plugin has precedence", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1AC58D2C0](v16, -1, -1);
      MEMORY[0x1AC58D2C0](v15, -1, -1);

      return 0;
    }

    goto LABEL_41;
  }

  if ([a1 onSystemVolume] && (objc_msgSend(a2, sel_onSystemVolume) & 1) == 0)
  {
    if (qword_1EB3ABCB0 != -1)
    {
      swift_once();
    }

    v40 = sub_1A99764A0();
    __swift_project_value_buffer(v40, qword_1EB3ABCC0);
    swift_unknownObjectRetain();
    v31 = sub_1A9976480();
    v41 = sub_1A9976F60();
    if (os_log_type_enabled(v31, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60[0] = v43;
      *v42 = 136315138;
      v44 = [a2 identifier];
      result = swift_unknownObjectRelease();
      if (!v44)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v45 = sub_1A9976820();
      v47 = v46;

      v48 = sub_1A97AF148(v45, v47, v60);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_1A9662000, v31, v41, "ExtensionsCache: Removing extension %s because a system plugin has precedence", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x1AC58D2C0](v43, -1, -1);
      MEMORY[0x1AC58D2C0](v42, -1, -1);
LABEL_37:

      return 1;
    }

LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v60[1] = &unk_1F1DA42A0;
  v23 = swift_dynamicCastObjCProtocolConditional();
  if (!v23)
  {
    goto LABEL_28;
  }

  v24 = v23;
  v59[1] = &unk_1F1DA42A0;
  v25 = swift_dynamicCastObjCProtocolConditional();
  if (!v25)
  {
    goto LABEL_28;
  }

  v26 = v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = [v24 timestamp];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v27 = result;
  sub_1A99761F0();

  result = [v26 timestamp];
  if (!result)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v28 = result;
  sub_1A99761F0();

  LOBYTE(v28) = sub_1A9976100();
  v29 = *(v5 + 8);
  v29(v9, v4);
  v29(v11, v4);
  if ((v28 & 1) == 0)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_28:
    if (qword_1EB3ABCB0 != -1)
    {
      swift_once();
    }

    v49 = sub_1A99764A0();
    __swift_project_value_buffer(v49, qword_1EB3ABCC0);
    swift_unknownObjectRetain();
    v50 = sub_1A9976480();
    v51 = sub_1A9976F60();
    if (!os_log_type_enabled(v50, v51))
    {
      swift_unknownObjectRelease();
      goto LABEL_34;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v60[0] = v53;
    *v52 = 136315138;
    v54 = [a2 identifier];
    result = swift_unknownObjectRelease();
    if (v54)
    {
      v55 = sub_1A9976820();
      v57 = v56;

      v58 = sub_1A97AF148(v55, v57, v60);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_1A9662000, v50, v51, "ExtensionsCache: Removing extension %s because another plugin has the same modification date", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x1AC58D2C0](v53, -1, -1);
      MEMORY[0x1AC58D2C0](v52, -1, -1);
LABEL_34:

      return 0;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (qword_1EB3ABCB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1A99764A0();
  __swift_project_value_buffer(v30, qword_1EB3ABCC0);
  swift_unknownObjectRetain();
  v31 = sub_1A9976480();
  v32 = sub_1A9976F60();
  if (!os_log_type_enabled(v31, v32))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    goto LABEL_37;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v60[0] = v34;
  *v33 = 136315138;
  v35 = [a2 identifier];
  result = swift_unknownObjectRelease();
  if (v35)
  {
    v36 = sub_1A9976820();
    v38 = v37;

    v39 = sub_1A97AF148(v36, v38, v60);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_1A9662000, v31, v32, "ExtensionsCache: Removing extension %s because another plugin has a newer modification date", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x1AC58D2C0](v34, -1, -1);
    MEMORY[0x1AC58D2C0](v33, -1, -1);
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

LABEL_43:
  __break(1u);
  return result;
}

double sub_1A98D581C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1A97BCF30(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A9827D68();
      v11 = v13;
    }

    sub_1A97C108C(*(v11 + 48) + 40 * v8);
    sub_1A967C4DC((*(v11 + 56) + 32 * v8), a2);
    sub_1A98D61AC(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1A98D58C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1A97BCE34(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A98282FC();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1A99762C0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_1A99763B0();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1A98D653C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1A99763B0();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1A98D5A60()
{

  v0 = sub_1A9976920();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1A9976920();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1A99777E0();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1A9976920();
      v3 = v5;
    }

    while (v5);
  }

  sub_1A9976920();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

unint64_t sub_1A98D5BF0(int64_t a1, uint64_t a2)
{
  v4 = sub_1A9977460();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1A9977200();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_1A9976730();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A98D5EA4(int64_t a1, uint64_t a2)
{
  v43 = sub_1A99762C0();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_1A9977200();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1A97C10E0(&unk_1EB3ACFB0);
      v26 = sub_1A9976730();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1A98D61AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A9977200() + 1) & ~v5;
    do
    {
      sub_1A97C1030(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_1A9977230();
      result = sub_1A97C108C(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A98D6350(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A9977200() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1A9977980();

      sub_1A99768D0();
      v13 = sub_1A99779B0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_1A99762C0() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A98D653C(int64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_1A9977200();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1A97C10E0(&unk_1EB3ACFB0);
      v24 = sub_1A9976730();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_1A99763B0() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A98D686C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1A9977980();
  sub_1A98CABC8(v19, a2);
  v8 = sub_1A99779B0();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      v14 = sub_1A98CA49C(v13, a2);

      if (v14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);

    return 0;
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[0] = *v3;

    sub_1A98D6CFC(v17, v10, isUniquelyReferenced_nonNull_native);
    *v3 = *&v19[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1A98D69AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F78, &qword_1A99A4480);
  v5 = sub_1A9977270();
  v6 = v5;
  if (*(v3 + 16))
  {
    v38 = v2;
    v7 = 0;
    v39 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v40 = v5 + 56;
    v41 = v11;
    v42 = v5;
    v43 = v3;
LABEL_9:
    if (v10)
    {
      v14 = __clz(__rbit64(v10));
      v44 = (v10 - 1) & v10;
LABEL_16:
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1A9977980();
      v20 = v18 + 64;
      v21 = 1 << *(v18 + 32);
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v23 = v22 & *(v18 + 64);
      v24 = (v21 + 63) >> 6;
      v45 = v18;

      v25 = 0;
      v26 = 0;
      while (v23)
      {
        v46 = v25;
LABEL_27:
        v28 = __clz(__rbit64(v23)) | (v26 << 6);
        v29 = (*(v45 + 48) + 16 * v28);
        v30 = *v29;
        v31 = v29[1];
        v32 = *(*(v45 + 56) + 8 * v28);

        sub_1A99768D0();

        MEMORY[0x1AC58A630](*(v32 + 16));
        v33 = *(v32 + 16);
        if (v33)
        {
          v34 = (v32 + 40);
          do
          {
            v35 = *(v34 - 1);
            v36 = *v34;

            sub_1A99768D0();

            v34 += 2;
            --v33;
          }

          while (v33);
        }

        v23 &= v23 - 1;

        result = sub_1A99779B0();
        v25 = result ^ v46;
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v24)
        {

          MEMORY[0x1AC58A630](v25);
          sub_1A99779B0();
          v6 = v42;
          v12 = -1 << *(v42 + 32);
          v13 = sub_1A9977210();
          *(v40 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          *(*(v42 + 48) + 8 * v13) = v45;
          ++*(v42 + 16);
          v3 = v43;
          v10 = v44;
          v11 = v41;
          goto LABEL_9;
        }

        v23 = *(v20 + 8 * v27);
        ++v26;
        if (v23)
        {
          v46 = v25;
          v26 = v27;
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    else
    {
      v15 = v7;
      result = v39;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          v37 = 1 << *(v3 + 32);
          if (v37 >= 64)
          {
            bzero(v39, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v39 = -1 << v37;
          }

          v2 = v38;
          *(v3 + 16) = 0;
          goto LABEL_35;
        }

        v17 = v39[v7];
        ++v15;
        if (v17)
        {
          v14 = __clz(__rbit64(v17));
          v44 = (v17 - 1) & v17;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1A98D6CFC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A98D69AC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1A98D6E88();
      goto LABEL_12;
    }

    sub_1A98D6FD8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1A9977980();
  sub_1A98CABC8(v20, v5);
  result = sub_1A99779B0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F70, &qword_1A99A4478);
      v12 = *(*(v8 + 48) + 8 * a2);

      v14 = sub_1A98CA49C(v13, v5);

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A9977870();
  __break(1u);
  return result;
}

void *sub_1A98D6E88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F78, &qword_1A99A4480);
  v2 = *v0;
  v3 = sub_1A9977260();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1A98D6FD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F78, &qword_1A99A4480);
  result = sub_1A9977270();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v7 = 0;
    v36 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v37 = result + 56;
    v38 = v11;
    v39 = result;
    v40 = v3;
LABEL_9:
    if (v10)
    {
      v13 = __clz(__rbit64(v10));
      v41 = (v10 - 1) & v10;
LABEL_16:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
      v17 = *(v6 + 40);
      sub_1A9977980();
      v18 = v16 + 64;
      v19 = 1 << *(v16 + 32);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(v16 + 64);
      v22 = (v19 + 63) >> 6;
      v42 = v16;
      result = swift_bridgeObjectRetain_n();
      v23 = 0;
      v24 = 0;
      while (v21)
      {
        v43 = v23;
LABEL_27:
        v26 = __clz(__rbit64(v21)) | (v24 << 6);
        v27 = (*(v42 + 48) + 16 * v26);
        v28 = *v27;
        v29 = v27[1];
        v30 = *(*(v42 + 56) + 8 * v26);

        sub_1A99768D0();

        MEMORY[0x1AC58A630](*(v30 + 16));
        v31 = *(v30 + 16);
        if (v31)
        {
          v32 = (v30 + 40);
          do
          {
            v33 = *(v32 - 1);
            v34 = *v32;

            sub_1A99768D0();

            v32 += 2;
            --v31;
          }

          while (v31);
        }

        v21 &= v21 - 1;

        result = sub_1A99779B0();
        v23 = result ^ v43;
      }

      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25 >= v22)
        {

          MEMORY[0x1AC58A630](v23);
          sub_1A99779B0();
          v6 = v39;
          v12 = -1 << *(v39 + 32);
          result = sub_1A9977210();
          *(v37 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
          *(*(v39 + 48) + 8 * result) = v42;
          ++*(v39 + 16);
          v3 = v40;
          v10 = v41;
          v11 = v38;
          goto LABEL_9;
        }

        v21 = *(v18 + 8 * v25);
        ++v24;
        if (v21)
        {
          v43 = v23;
          v24 = v25;
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    else
    {
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v35;
          goto LABEL_33;
        }

        v15 = *(v36 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v41 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v6;
  }

  return result;
}

CFPropertyListRef sub_1A98D7300()
{
  v0 = *MEMORY[0x1E69C4AF0];
  v1 = *MEMORY[0x1E695E8B8];
  v2 = *MEMORY[0x1E695E8B0];
  CFPreferencesSynchronize(*MEMORY[0x1E69C4AF0], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  result = CFPreferencesCopyValue(*MEMORY[0x1E69C4AC0], v0, v1, v2);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B00, &unk_1A9998468);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A98D73C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1A9976900();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1A99769D0();
}

uint64_t sub_1A98D7474(uint64_t a1)
{
  strcpy(v29, "extensionItems");
  HIBYTE(v29[1]) = -18;
  sub_1A9977250();
  if (!*(a1 + 16) || (v2 = sub_1A97BCF30(&v30), (v3 & 1) == 0))
  {
    sub_1A97C108C(&v30);
    return 0;
  }

  sub_1A97AF7EC(*(a1 + 56) + 32 * v2, &v32);
  sub_1A97C108C(&v30);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B00, &unk_1A9998468);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 0;
  }

  v6 = v29[0];
  if (*(v29[0] + 16) != 2)
  {

    return 0;
  }

  v7 = 0;
  v24 = 0x80000001A99E2760;
  v25 = 0x80000001A99E6EC0;
  v27 = -1;
  v28 = 0x80000001A99E27C0;
  v8 = -1;
  while (2)
  {
    v26 = v8;
LABEL_7:
    v8 = v7;
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v9 = *(v6 + 32 + 8 * v8);
      strcpy(v29, "attachments");
      HIDWORD(v29[1]) = -352321536;

      sub_1A9977250();
      if (!*(v9 + 16) || (v10 = sub_1A97BCF30(&v30), (v11 & 1) == 0))
      {

        result = sub_1A97C108C(&v30);
        goto LABEL_9;
      }

      sub_1A97AF7EC(*(v9 + 56) + 32 * v10, &v32);
      sub_1A97C108C(&v30);

      result = swift_dynamicCast();
      if (result)
      {
        v12 = v4;
        if (*(v29[0] + 16) != 1)
        {

          goto LABEL_9;
        }

        v13 = *(v29[0] + 32);

        v29[0] = 0xD000000000000019;
        v29[1] = v28;
        sub_1A9977250();
        if (!*(v13 + 16) || (v14 = sub_1A97BCF30(&v30), (v15 & 1) == 0))
        {

          sub_1A97C108C(&v30);
          v32 = 0u;
          v33 = 0u;
LABEL_22:
          result = sub_1A97B06FC(&v32, &qword_1EB3B0BA0, &unk_1A99923D0);
          goto LABEL_9;
        }

        sub_1A97AF7EC(*(v13 + 56) + 32 * v14, &v32);
        sub_1A97C108C(&v30);

        if (!*(&v33 + 1))
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
        result = swift_dynamicCast();
        if (result)
        {
          break;
        }
      }

LABEL_9:
      if (++v8 == 2)
      {
        goto LABEL_35;
      }
    }

    v16 = v30;
    v17 = v27;
    if (v27 < 0)
    {
      v30 = 0xD000000000000014;
      v31 = v25;
      MEMORY[0x1EEE9AC00](result);
      v22 = &v30;
      result = sub_1A9824824(sub_1A97B298C, v21, v16);
      v17 = v27;
      if (result)
      {
        v17 = v8;
      }
    }

    v27 = v17;
    if (v26 < 0)
    {
      v23 = &v23;
      v30 = 0xD000000000000018;
      v31 = v24;
      MEMORY[0x1EEE9AC00](result);
      v22 = &v30;
      v18 = sub_1A9824824(sub_1A97B2400, v21, v16);

      if ((v18 & 1) == 0)
      {
        v4 = v12;
        goto LABEL_31;
      }

      v7 = v8 + 1;
      v4 = v12;
      if (v8 != 1)
      {
        continue;
      }

      v26 = 1;
    }

    else
    {

LABEL_31:
      v7 = v8 + 1;
      if (v8 != 1)
      {
        goto LABEL_7;
      }
    }

    break;
  }

LABEL_35:

  return v27 > 0 && v26 > 0 && v27 != v26;
}

uint64_t sub_1A98D7934(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F70, &qword_1A99A4478);
  v4 = sub_1A98DE438();
  result = MEMORY[0x1AC589AC0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_1A98D686C(&v8, v7);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1A98D79D0(uint64_t a1)
{
  v2 = sub_1A9976420();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v39, "extensionItems");
  HIBYTE(v39[1]) = -18;
  sub_1A9977250();
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v7 = sub_1A97BCF30(v40);
  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1A97AF7EC(*(a1 + 56) + 32 * v7, v41);
  sub_1A97C108C(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B00, &unk_1A9998468);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v28 = 0;
    return v28 & 1;
  }

  if (*(v39[0] + 16) != 1)
  {
    goto LABEL_11;
  }

  v9 = *(v39[0] + 32);

  if (*(v9 + 16) != 1)
  {
    goto LABEL_11;
  }

  strcpy(v39, "attachments");
  HIDWORD(v39[1]) = -352321536;
  sub_1A9977250();
  if (!*(v9 + 16) || (v10 = sub_1A97BCF30(v40), (v11 & 1) == 0))
  {

LABEL_14:
    sub_1A97C108C(v40);
    goto LABEL_15;
  }

  sub_1A97AF7EC(*(v9 + 56) + 32 * v10, v41);
  sub_1A97C108C(v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F58, &qword_1A99A4470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(v39[0] + 16) != 3)
  {
LABEL_11:

    goto LABEL_15;
  }

  v37 = sub_1A98D7934(v39[0]);

  v33 = 0x80000001A99E27C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F60, &qword_1A9998418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9998180;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AE0, &qword_1A9998460);
  v12 = swift_initStackObject();
  v38 = xmmword_1A9996D60;
  *(v12 + 16) = xmmword_1A9996D60;
  *(v12 + 32) = 0xD000000000000019;
  *(v12 + 40) = 0x80000001A99E27C0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1210, &qword_1A99919F8);
  v13 = swift_allocObject();
  *(v13 + 16) = v38;
  sub_1A9976410();
  v14 = sub_1A99763D0();
  v16 = v15;
  v31 = *(v3 + 8);
  v31(v6, v2);
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v12 + 48) = v13;
  v17 = sub_1A97BF200(v12);
  swift_setDeallocating();
  sub_1A97B06FC(v12 + 32, &qword_1EB3B2AA0, &qword_1A9998420);
  v18 = inited;
  v19 = inited;
  *(inited + 32) = v17;
  v36 = v19 + 32;
  v20 = swift_initStackObject();
  *(v20 + 16) = v38;
  *(v20 + 32) = 0xD000000000000019;
  *(v20 + 40) = v33;
  v21 = swift_allocObject();
  *(v21 + 16) = v38;
  sub_1A99763E0();
  v22 = sub_1A99763D0();
  v24 = v23;
  v31(v6, v2);
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  *(v20 + 48) = v21;
  v25 = sub_1A97BF200(v20);
  swift_setDeallocating();
  sub_1A97B06FC(v20 + 32, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v18 + 40) = v25;
  v26 = sub_1A97BF200(&unk_1F1D277C8);
  sub_1A97B06FC(&unk_1F1D277E8, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v18 + 48) = v26;
  v27 = sub_1A98D7934(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F70, &qword_1A99A4478);
  swift_arrayDestroy();
  v28 = sub_1A98BB99C(v27, v37);

  return v28 & 1;
}

uint64_t sub_1A98D7ECC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_1A97AF7EC(a1, v33);
  sub_1A97AF7EC(v33, &v29);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
  v5 = swift_dynamicCast();
  LOBYTE(v6) = v5;
  if (v5)
  {
    v25 = v4;
    v26 = v3;
    v27 = v5;
    v7 = *&v31[0];
    v32 = *&v31[0];
    v8 = 1 << *(*&v31[0] + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v3 = v9 & *(*&v31[0] + 64);
    v10 = (v8 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v11 = &unk_1ED717DE0;
    while (1)
    {
      if (!v3)
      {
        while (1)
        {
          v12 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v33);

            swift_bridgeObjectRelease_n();
            return 0;
          }

          v3 = *(v7 + 64 + 8 * v12);
          ++v6;
          if (v3)
          {
            v6 = v12;
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_10:
      sub_1A97AF7EC(*(v7 + 56) + ((v6 << 11) | (32 * __clz(__rbit64(v3)))), &v29);
      sub_1A97AF7EC(&v29, v31);
      sub_1A9812DE0(0, &unk_1ED717DE0, 0x1E696AEC0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v3 &= v3 - 1;
      v13 = [v28 intValue];

      __swift_destroy_boxed_opaque_existential_0Tm(&v29);
      if (v13)
      {

        goto LABEL_15;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v29);
LABEL_15:

    LOBYTE(v6) = v27;
    v3 = v26;
    if (!SFPlatformShouldExhibitEmbeddedBehavior())
    {
      goto LABEL_23;
    }

    sub_1A9977250();
    if (!*(v7 + 16) || (v14 = sub_1A97BCF30(&v29), (v15 & 1) == 0))
    {
      sub_1A97C108C(&v29);
      goto LABEL_23;
    }

    sub_1A97AF7EC(*(v7 + 56) + 32 * v14, v31);
    sub_1A97C108C(&v29);
    sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }

    v11 = 0xD000000000000031;
    if ([0xD000000000000031 integerValue] >= 1)
    {
      if (sub_1A98D79D0(a2))
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v33);

        return 1;
      }

      if (*(v7 + 16) == 1)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v33);

        return 0;
      }

      *&v31[0] = 0xD000000000000031;
      *(&v31[0] + 1) = 0x80000001A99E6EE0;
      sub_1A9977250();
      sub_1A98D581C(&v29, v31);
      sub_1A97C108C(&v29);
      sub_1A97B06FC(v31, &qword_1EB3B0BA0, &unk_1A99923D0);
      v24 = v32;
      v30 = v25;

      *&v29 = v24;
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      sub_1A967C4DC(&v29, v33);
      goto LABEL_23;
    }

LABEL_32:
  }

LABEL_24:
  v17 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(v3, *(v3 + 24));
  v18 = [v17 predicateForActivationRule_];
  swift_unknownObjectRelease();
  if (!v18)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    return 0;
  }

  if ((v6 & 1) == 0)
  {
    v19 = objc_opt_self();
    v20 = sub_1A99766E0();
    v21 = sub_1A99767E0();
    LOBYTE(v19) = [v19 isPredicateSafeToExecute:v18 withObject:v20 identifier:v21];

    if ((v19 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v33);

      return 0;
    }
  }

  v22 = sub_1A99766E0();
  v23 = [v18 evaluateWithObject_];

  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  return v23;
}

uint64_t sub_1A98D83E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v113 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F80, &qword_1A99A4488);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v109 = &v100 - v10;
  v108 = sub_1A9976420();
  v11 = *(v108 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v108);
  v101 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v100 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v103 = &v100 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AD0, &unk_1A99A4490);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v102 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v100 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v106 = &v100 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v105 = &v100 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v100 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v100 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v100 - v37;
  if (sub_1A98D5A60())
  {
    v100 = v11;
    v109 = v4;

    UTType.init(identifier:allowUndeclared:)(v38);
    if (sub_1A98D5A60())
    {

      v39 = sub_1A99768E0();
      v40 = sub_1A98D73C4(v39, a3, a4);
      v42 = v41;
      v44 = v43;
      v46 = v45;

      MEMORY[0x1AC589540](v40, v42, v44, v46);

      UTType.init(identifier:allowUndeclared:)(v36);
      sub_1A97C13A4(v38, v33, &qword_1EB3B3AD0, &unk_1A99A4490);
      v47 = v100;
      v48 = *(v100 + 48);
      v49 = v108;
      if (v48(v33, 1, v108) == 1)
      {
        sub_1A97B06FC(v36, &qword_1EB3B3AD0, &unk_1A99A4490);
        v50 = v38;
LABEL_18:
        sub_1A97B06FC(v50, &qword_1EB3B3AD0, &unk_1A99A4490);
        v83 = v33;
LABEL_29:
        sub_1A97B06FC(v83, &qword_1EB3B3AD0, &unk_1A99A4490);
        v80 = 0;
        return v80 & 1;
      }

      v113 = v38;
      v81 = *(v47 + 32);
      v82 = v107;
      v81(v107, v33, v49);
      v33 = v105;
      sub_1A97C13A4(v36, v105, &qword_1EB3B3AD0, &unk_1A99A4490);
      if (v48(v33, 1, v49) == 1)
      {
        (*(v47 + 8))(v82, v49);
        sub_1A97B06FC(v36, &qword_1EB3B3AD0, &unk_1A99A4490);
        v50 = v113;
        goto LABEL_18;
      }

      v92 = v33;
      v93 = v103;
      v81(v103, v92, v49);
      v80 = sub_1A9976400();
      v94 = *(v47 + 8);
      v94(v93, v49);
      v94(v82, v49);
      sub_1A97B06FC(v36, &qword_1EB3B3AD0, &unk_1A99A4490);
      v95 = v113;
LABEL_35:
      sub_1A97B06FC(v95, &qword_1EB3B3AD0, &unk_1A99A4490);
      return v80 & 1;
    }

    v113 = v38;
    if ((sub_1A98D5A60() & 1) == 0)
    {
      if (qword_1EB3ABCB0 != -1)
      {
        swift_once();
      }

      v84 = sub_1A99764A0();
      __swift_project_value_buffer(v84, qword_1EB3ABCC0);

      v85 = sub_1A9976480();
      v86 = sub_1A9976F70();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v112[0] = v88;
        *v87 = 136315138;
        *(v87 + 4) = sub_1A97AF148(a3, a4, v112);
        _os_log_impl(&dword_1A9662000, v85, v86, "ExtensionsCache: Unrecognized match operator %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v88);
        MEMORY[0x1AC58D2C0](v88, -1, -1);
        MEMORY[0x1AC58D2C0](v87, -1, -1);
      }

      v83 = v113;
      goto LABEL_29;
    }

    v55 = sub_1A99768E0();
    v56 = sub_1A98D73C4(v55, a3, a4);
    v58 = v57;
    v60 = v59;
    v62 = v61;

    MEMORY[0x1AC589540](v56, v58, v60, v62);

    v63 = v106;
    UTType.init(identifier:allowUndeclared:)(v106);
    v64 = v113;
    sub_1A97C13A4(v113, v26, &qword_1EB3B3AD0, &unk_1A99A4490);
    v65 = v100;
    v66 = *(v100 + 48);
    v67 = v108;
    if (v66(v26, 1, v108) == 1)
    {
      sub_1A97B06FC(v63, &qword_1EB3B3AD0, &unk_1A99A4490);
      v68 = v64;
    }

    else
    {
      v89 = *(v65 + 32);
      v90 = v104;
      v89(v104, v26, v67);
      v26 = v102;
      sub_1A97C13A4(v63, v102, &qword_1EB3B3AD0, &unk_1A99A4490);
      if (v66(v26, 1, v67) != 1)
      {
        v96 = v26;
        v97 = v101;
        v89(v101, v96, v67);
        v80 = sub_1A9976400();
        v98 = *(v65 + 8);
        v98(v97, v67);
        v98(v90, v67);
        sub_1A97B06FC(v63, &qword_1EB3B3AD0, &unk_1A99A4490);
        v95 = v113;
        goto LABEL_35;
      }

      (*(v65 + 8))(v90, v67);
      sub_1A97B06FC(v63, &qword_1EB3B3AD0, &unk_1A99A4490);
      v68 = v113;
    }

    sub_1A97B06FC(v68, &qword_1EB3B3AD0, &unk_1A99A4490);
    v83 = v26;
    goto LABEL_29;
  }

  v108 = a2;
  v51 = a3;
  if (sub_1A98D5A60())
  {
    v52 = 0;
LABEL_7:
    v53 = 1;
    v54 = 2;
LABEL_13:

    goto LABEL_14;
  }

  if (sub_1A98D5A60())
  {
    v53 = 1;
    v54 = 2;
    v52 = 1;
    goto LABEL_13;
  }

  if (sub_1A98D5A60())
  {
    v52 = -1;
    goto LABEL_7;
  }

  if (sub_1A98D5A60())
  {
    v53 = 0;
    v52 = 0;
    v54 = 1;
    goto LABEL_13;
  }

  if (sub_1A98D5A60())
  {
    v53 = 0;
    v52 = -1;
    v54 = 1;
    goto LABEL_13;
  }

  v99 = sub_1A98D5A60();

  v53 = 0;
  if ((v99 & 1) == 0)
  {
    v52 = 0;
    goto LABEL_15;
  }

  v54 = 1;
  v52 = 1;
LABEL_14:
  v69 = sub_1A98D73C4(v54, a3, a4);
  v71 = v70;
  v73 = v72;
  v75 = v74;

  v51 = MEMORY[0x1AC589540](v69, v71, v73, v75);
  a4 = v76;

LABEL_15:
  v112[0] = v113;
  v112[1] = v108;
  v110 = v51;
  v111 = a4;
  v77 = sub_1A99762E0();
  v78 = v109;
  (*(*(v77 - 8) + 56))(v109, 1, 1, v77);
  sub_1A97F0528();
  v79 = sub_1A99771A0();
  sub_1A97B06FC(v78, &unk_1EB3B4F80, &qword_1A99A4488);

  v80 = v53 ^ (v79 == v52);
  return v80 & 1;
}