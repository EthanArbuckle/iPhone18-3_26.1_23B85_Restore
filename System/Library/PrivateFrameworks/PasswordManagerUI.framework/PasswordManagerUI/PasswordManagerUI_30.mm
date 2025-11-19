void sub_21CA42BFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
  v4 = v2;
}

unint64_t sub_21CA42C34()
{
  result = qword_27CDEECF8;
  if (!qword_27CDEECF8)
  {
    type metadata accessor for PMGroupMemberImageModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEECF8);
  }

  return result;
}

unint64_t sub_21CA42C8C()
{
  result = qword_27CDEBB30;
  if (!qword_27CDEBB30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEBB30);
  }

  return result;
}

uint64_t sub_21CA42CF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA42D64()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI36PMSignInWithAppleAccountDetailsModel__isPerformingAccountOperation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMSignInWithAppleAccountDetailsModel()
{
  result = qword_27CDF60B8;
  if (!qword_27CDF60B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA42E60()
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21CA42F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = type metadata accessor for PMImportView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60F0, &qword_21CBC0318);
  v12 = *(v11 - 8);
  v28 = v11;
  v29 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  sub_21CB85084();
  v16 = v32;
  sub_21CA460F0(a1, v10);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_21CA477A8(v10, v18 + v17, type metadata accessor for PMImportView);
  v32 = v16;
  v33 = sub_21CA4786C;
  v34 = v18;
  sub_21CB85084();
  v19 = v36;
  swift_getKeyPath();
  v36 = v19;
  sub_21CA47820(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v20 = *(v19 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress);

  v21 = sub_21CA46048();
  sub_21CB84644();

  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v27 + 8))(v6, v3);
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60F8, &qword_21CBC0320);
  v32 = &type metadata for PMImportView.ProgressIndicatorView;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6108, &unk_21CBC0328);
  v23 = sub_21CA4609C();
  v32 = &type metadata for PMImportView.ResultView;
  v33 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v22;
  v33 = MEMORY[0x277CE1428];
  v34 = OpaqueTypeConformance2;
  v35 = MEMORY[0x277CE1410];
  swift_getOpaqueTypeConformance2();
  v25 = v28;
  sub_21CB84554();

  return (*(v29 + 8))(v15, v25);
}

uint64_t sub_21CA433C8(uint64_t a1)
{
  v2 = type metadata accessor for PMImportView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6108, &unk_21CBC0328);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  sub_21CB85084();
  v11 = v17;
  sub_21CA460F0(a1, v5);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_21CA477A8(v5, v13 + v12, type metadata accessor for PMImportView);
  v17 = v11;
  v18 = sub_21CA46224;
  v19 = v13;
  v14 = sub_21CA4609C();
  sub_21CB84674();

  v17 = &type metadata for PMImportView.ResultView;
  v18 = v14;
  swift_getOpaqueTypeConformance2();
  sub_21CB848A4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21CA4363C(uint64_t a1)
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
  v15 = type metadata accessor for PMImportView();
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

uint64_t sub_21CA438C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  sub_21CB85084();
  sub_21C9E8888();
  sub_21CB858C4();
  v4 = sub_21CB858E4();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = sub_21C9E6C0C(0, 0, v3, &unk_21CBBB460, v6);
  sub_21CA461B4(v3);
  sub_21C9E81F4(v7);
}

uint64_t sub_21CA43A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6138, &qword_21CBC0490);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v32 = sub_21CB84BB4();
  v17 = sub_21CA4638C(a1);
  v30 = v18;
  v31 = v17;
  v19 = a3;
  sub_21CA43CD0(*&a1, a2, a3, v16);
  sub_21CA4752C(&qword_27CDF6140, &qword_27CDF6138, &qword_21CBC0490, sub_21CA467A4);
  v20 = sub_21CB84F14();
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  (*(v9 + 8))(v12, v8);
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = v19;
  v25 = v31;
  *a4 = v32;
  *(a4 + 8) = v25;
  *(a4 + 16) = v30;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = v20;
  *(a4 + 48) = 257;
  *(a4 + 56) = v21;
  *(a4 + 64) = v23;
  *(a4 + 72) = sub_21CA468E8;
  *(a4 + 80) = v24;
  *(a4 + 88) = 0;
  v26 = type metadata accessor for PMOnboardingView(0);
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  v27 = *(v26 + 28);
  *(a4 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_21CA43CD0@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38[1] = a3;
  v38[0] = a2;
  v41 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6170, &qword_21CBC04A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v38 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6160, &qword_21CBC04A0);
  v9 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v11 = v38 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6150, &qword_21CBC0498);
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v40);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v38 - v17;
  swift_getKeyPath();
  *&v42 = a1;
  sub_21CA47820(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  if ((*(*&a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress) & 1) != 0 || (swift_getKeyPath(), *&v42 = a1, sub_21CB810D4(), , *(*&a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount) >= 1))
  {
    *v8 = sub_21CB832E4();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6178, &qword_21CBC0530);
    sub_21CA441E0(a1, &v8[*(v19 + 44)]);
    sub_21CB85214();
    sub_21CB82AC4();
    sub_21C716934(v8, v11, &qword_27CDF6170, &qword_21CBC04A8);
    v20 = &v11[*(v39 + 36)];
    v21 = v47;
    *(v20 + 4) = v46;
    *(v20 + 5) = v21;
    *(v20 + 6) = v48;
    v22 = v43;
    *v20 = v42;
    *(v20 + 1) = v22;
    v23 = v45;
    *(v20 + 2) = v44;
    *(v20 + 3) = v23;
    v24 = sub_21CB83CD4();
    sub_21CB81F24();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_21C716934(v11, v15, &qword_27CDF6160, &qword_21CBC04A0);
    v33 = v40;
    v34 = &v15[*(v40 + 36)];
    *v34 = v24;
    *(v34 + 1) = v26;
    *(v34 + 2) = v28;
    *(v34 + 3) = v30;
    *(v34 + 4) = v32;
    v34[40] = 0;
    sub_21C716934(v15, v18, &qword_27CDF6150, &qword_21CBC0498);
    v35 = v41;
    sub_21C716934(v18, v41, &qword_27CDF6150, &qword_21CBC0498);
    v36 = 0;
  }

  else
  {
    v36 = 1;
    v33 = v40;
    v35 = v41;
  }

  return (*(v12 + 56))(v35, v36, 1, v33);
}

uint64_t sub_21CA440E8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getKeyPath();
  sub_21CA47820(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  if (*(a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask))
  {
    v5 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask);

    sub_21CB85944();
  }

  return a2(v4);
}

uint64_t sub_21CA441E0@<X0>(double a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0478, &unk_21CBB2E10);
  v8 = *(v39 - 8);
  v37 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v39);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v38 = &v37 - v12;
  swift_getKeyPath();
  v42 = a1;
  sub_21CA47820(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v42 = *(*&a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount);
  LOBYTE(v43) = 0;
  v13 = *(sub_21CB818B4() + 16);

  v44 = v13;
  sub_21CA468F4();
  sub_21CB82224();
  sub_21CB81014();
  sub_21CB81004();
  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21CBA0690;
  swift_getKeyPath();
  v42 = a1;
  sub_21CB810D4();

  v16 = *(*&a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle);
  v15 = *(*&a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle + 8);
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_21C7C0050();
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v15)
  {
    v18 = v15;
  }

  *(v14 + 32) = v17;
  *(v14 + 40) = v18;

  *&v19 = COERCE_DOUBLE(sub_21CB85594());
  v21 = v20;

  v42 = *&v19;
  v43 = v21;
  sub_21C71F3FC();
  v22 = sub_21CB84054();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *(v8 + 16);
  v30 = v39;
  v31 = v40;
  v32 = v38;
  v29(v40, v38, v39);
  v33 = v41;
  v29(v41, v31, v30);
  v34 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6188, &unk_21CBC0560) + 48)];
  *v34 = v22;
  *(v34 + 1) = v24;
  v26 &= 1u;
  v34[16] = v26;
  *(v34 + 3) = v28;
  sub_21C79B058(v22, v24, v26);
  v35 = *(v37 + 8);

  v35(v32, v30);
  sub_21C74A72C(v22, v24, v26);

  return (v35)(v31, v30);
}

double sub_21CA44644@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v37 = a1;
  sub_21CA47820(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v12 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__failedItems;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (*(v13 + 16))
  {

    v14 = *(sub_21CB818B4() + 16);

    sub_21CB81014();
    v15 = sub_21CB81004();
    v17 = v16;
    (*(v8 + 8))(v11, v7);
    v18 = swift_allocObject();
    v19 = v28;
    v18[2] = a1;
    v18[3] = v19;
    v18[4] = a3;
    v36 = 1;
    v29 = v13;
    v30 = v14;
    v31 = v15;
    v32 = v17;
    v33 = sub_21C962BD8;
    v34 = v18;
    v35 = 256;
  }

  else
  {
    swift_getKeyPath();
    *&v37 = a1;
    sub_21CB810D4();

    v20 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount);
    sub_21CB81014();
    v21 = sub_21CB81004();
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    v24 = swift_allocObject();
    v25 = v28;
    *(v24 + 2) = a1;
    *(v24 + 3) = v25;
    *(v24 + 4) = a3;
    v36 = 0;
    v29 = v20;
    v30 = v21;
    v31 = v23;
    v32 = sub_21CA47870;
    v33 = v24;
    LOBYTE(v34) = 0;
    HIBYTE(v35) = 0;
  }

  sub_21CA46948();
  sub_21CA4699C();

  sub_21CB83494();
  v26 = v38;
  *a4 = v37;
  *(a4 + 16) = v26;
  result = *&v39;
  *(a4 + 32) = v39;
  *(a4 + 48) = v40;
  return result;
}

uint64_t sub_21CA44994@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_21CB84C14();
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  v12 = sub_21CA46CA4(*v1);
  v14 = *(v1 + 24);
  v22[0] = *(v1 + 8);
  v13 = v22[0];
  v22[1] = v14;
  v23 = *(v1 + 40);
  v15 = v23;
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 258;
  *(a1 + 56) = v13;
  *(a1 + 72) = v14;
  *(a1 + 88) = v15;
  v17 = type metadata accessor for PMOnboardingView(0);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v18 = *(v17 + 28);
  *(a1 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  return sub_21C6EDBAC(v22, v21, &qword_27CDF61B0, &qword_21CBC0700);
}

uint64_t sub_21CA44B70@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_21CA44994(a1);
}

uint64_t sub_21CA44BAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = sub_21CB829D4();
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61B8, &qword_21CBC0708);
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61C0, &qword_21CBC0710);
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61C8, &qword_21CBC0718);
  v17 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v54 = &v48 - v18;
  v19 = sub_21CB81024();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PMOnboardingView(0);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_21CB84C14();
  v30 = *v2;
  v29 = *(v2 + 8);
  *(*v2 + 16);
  sub_21CB81014();
  v52 = sub_21CB81004();
  v51 = v31;
  (*(v20 + 8))(v23, v19);
  v50 = sub_21CA470A0(v30, v29);
  v49 = v32;
  v64 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61D0, &qword_21CBC0720);
  sub_21CA4752C(&qword_27CDF61D8, &qword_27CDF61D0, &qword_21CBC0720, sub_21CA475A8);
  sub_21CB83EF4();
  v33 = v55;
  sub_21CB85294();
  v34 = sub_21C6EADEC(&qword_27CDF6220, &qword_27CDF61B8, &qword_21CBC0708);
  v35 = sub_21CA47820(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v36 = v56;
  v37 = v61;
  sub_21CB849C4();
  (*(v62 + 8))(v33, v37);
  (*(v57 + 8))(v11, v36);
  *&v66 = v36;
  *(&v66 + 1) = v37;
  *&v67 = v34;
  *(&v67 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v58;
  sub_21CB845F4();
  (*(v59 + 8))(v16, v39);
  *&v66 = v39;
  *(&v66 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v40 = sub_21CB84F14();
  v42 = *(v2 + 32);
  v66 = *(v2 + 16);
  v41 = v66;
  v67 = v42;
  v68 = *(v2 + 48);
  v43 = v68;
  v44 = v52;
  *v28 = v53;
  *(v28 + 1) = v44;
  v45 = v50;
  *(v28 + 2) = v51;
  *(v28 + 3) = v45;
  *(v28 + 4) = v49;
  *(v28 + 5) = v40;
  *(v28 + 24) = 257;
  v28[88] = v43;
  *(v28 + 72) = v42;
  *(v28 + 56) = v41;
  v28[128] = 0;
  *(v28 + 6) = 0u;
  *(v28 + 7) = 0u;
  v46 = *(v25 + 36);
  *&v28[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  sub_21CA477A8(v28, v63, type metadata accessor for PMOnboardingView);
  return sub_21C6EDBAC(&v66, v65, &qword_27CDF61B0, &qword_21CBC0700);
}

uint64_t sub_21CA4521C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61E8, &qword_21CBC0728);
  v25 = *(*(v24 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v24);
  v30 = *(*a1 + 16);
  if (a1[1] == v30)
  {
    v31 = *(v27 + 56);

    return v31(a2, 1, 1, v29);
  }

  else
  {
    v53 = v23;
    v59 = &v52 - v28;
    v60 = v26;
    v61 = v27;
    v57 = v30;
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v58 = a2;
    v54 = sub_21CB81034();
    v33 = *(v54 - 8);
    v56 = a1;
    v34 = v33;
    v35 = *(v33 + 72);
    v36 = *(v34 + 80);
    v55 = v20;
    v37 = (v36 + 32) & ~v36;
    v38 = swift_allocObject();
    sub_21CB81014();
    sub_21CB81014();
    sub_21CB81014();
    sub_21CB81014();
    sub_21CB80FE4();
    v39 = v8;
    v40 = v53;
    v41 = *(v5 + 8);
    v41(v39, v4);
    v41(v11, v4);
    v41(v14, v4);
    v41(v17, v4);
    swift_setDeallocating();
    (*(v34 + 8))(v38 + v37, v54);
    swift_deallocClassInstance();
    sub_21CB81004();
    v41(v55, v4);
    v41(v40, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v42 = swift_allocObject();
    v43 = MEMORY[0x277D83B88];
    *(v42 + 16) = xmmword_21CBA0690;
    v44 = MEMORY[0x277D83C10];
    *(v42 + 56) = v43;
    *(v42 + 64) = v44;
    *(v42 + 32) = v57;
    v45 = sub_21CB85594();
    v47 = v46;

    v62 = v45;
    v63 = v47;
    MEMORY[0x28223BE20](v48);
    *(&v52 - 2) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61F8, &qword_21CBC0730);
    sub_21CA47640();
    sub_21C71F3FC();
    v49 = v59;
    sub_21CB85014();
    v50 = v60;
    v51 = v58;
    (*(v61 + 32))(v58, v49, v60);
    return (*(v61 + 56))(v51, 0, 1, v50);
  }
}

uint64_t sub_21CA457D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *a1;
  v11[5] = v14;
  v4 = *(a1 + 2);
  v12[0] = *(a1 + 1);
  v12[1] = v4;
  v13 = *(a1 + 48);
  v5 = swift_allocObject();
  v6 = *(a1 + 1);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 2);
  *(v5 + 64) = *(a1 + 48);
  sub_21C6EDBAC(&v14, v11, &qword_27CDF6228, &unk_21CBC0750);
  sub_21C6EDBAC(&v14, v11, &qword_27CDF6228, &unk_21CBC0750);
  sub_21C6EDBAC(v12, v11, &qword_27CDF61B0, &qword_21CBC0700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6228, &unk_21CBC0750);
  sub_21CB80E34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6218, &unk_21CBC0740);
  sub_21C6EADEC(&qword_27CDF6230, &qword_27CDF6228, &unk_21CBC0750);
  sub_21C6EADEC(&qword_27CDF6210, &qword_27CDF6218, &unk_21CBC0740);
  v10 = sub_21CA47820(&qword_27CDF6238, type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem);
  sub_21CB84FF4();
  v7 = [objc_opt_self() systemGroupedBackgroundColor];
  v11[0] = sub_21CB84A24();
  v8 = sub_21CB84F14();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF61F8, &qword_21CBC0730);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_21CA45A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB809E4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21CB83074();
  v7 = sub_21CB84BB4();
  sub_21CA45B70(a1);
  v8 = sub_21CB84044();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v12 &= 1u;
  sub_21C79B058(v8, v10, v12);

  sub_21C74A72C(v8, v10, v12);

  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;
  *(a2 + 56) = v14;
  return result;
}

uint64_t sub_21CA45B70(uint64_t a1)
{
  v2 = sub_21CB809E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB80A44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem(0);
  v10 = (a1 + v9[7]);
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v13 = (a1 + v9[5]);
    v14 = *v13;
    v15 = v13[1];
  }

  sub_21CB80A34();
  result = sub_21CB809F4();
  v17 = (a1 + v9[8]);
  if (v17[1])
  {
    v18 = *v17;
    v19[0] = 0x209480E220;
    v19[1] = 0xA500000000000000;
    MEMORY[0x21CF151F0](v18);
    sub_21CB80A34();
    sub_21CB809F4();
    v19[0] = sub_21CB84B34();
    sub_21CA2D49C();
    sub_21CB80A04();
    sub_21CB809A4();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_21CA45D74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return sub_21CA44BAC(a1);
}

uint64_t sub_21CA45DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60E8, &qword_21CBC0310);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF60F0, &qword_21CBC0318);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF60F8, &qword_21CBC0320);
  v10 = sub_21CA46048();
  v22 = &type metadata for PMImportView.ProgressIndicatorView;
  v23 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6108, &unk_21CBC0328);
  v13 = sub_21CA4609C();
  v22 = &type metadata for PMImportView.ResultView;
  v23 = v13;
  v14 = swift_getOpaqueTypeConformance2();
  v22 = v12;
  v23 = MEMORY[0x277CE1428];
  v24 = v14;
  v25 = MEMORY[0x277CE1410];
  v15 = swift_getOpaqueTypeConformance2();
  v22 = v8;
  v23 = v9;
  v24 = OpaqueTypeConformance2;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  sub_21CB82924();
  sub_21CA460F0(v3, v7);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_21CA477A8(v7, v17 + v16, type metadata accessor for PMImportView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6118, &qword_21CBC0338);
  v19 = (a2 + *(result + 36));
  *v19 = sub_21CA46154;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

unint64_t sub_21CA46048()
{
  result = qword_27CDF6100;
  if (!qword_27CDF6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6100);
  }

  return result;
}

unint64_t sub_21CA4609C()
{
  result = qword_27CDF6110;
  if (!qword_27CDF6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6110);
  }

  return result;
}

uint64_t sub_21CA460F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMImportView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA46154()
{
  v0 = *(*(type metadata accessor for PMImportView() - 8) + 80);

  return sub_21CA438C4();
}

uint64_t sub_21CA461B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CA4629C()
{
  result = qword_27CDF6120;
  if (!qword_27CDF6120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6118, &qword_21CBC0338);
    sub_21C6EADEC(&qword_27CDF6128, &qword_27CDF6130, &qword_21CBC03E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6120);
  }

  return result;
}

uint64_t sub_21CA4638C(uint64_t a1)
{
  v33 = a1;
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v15);
  v31 = &v30 - v16;
  MEMORY[0x28223BE20](v17);
  v32 = &v30 - v18;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v30 = sub_21CB81034();
  v19 = *(v30 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v23 = *(v2 + 8);
  v23(v5, v1);
  v23(v8, v1);
  v23(v11, v1);
  v23(v14, v1);
  swift_setDeallocating();
  (*(v19 + 8))(v22 + v21, v30);
  swift_deallocClassInstance();
  v24 = v32;
  sub_21CB81004();
  v23(v31, v1);
  v23(v24, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21CBA0690;
  v26 = *(sub_21CB818B4() + 16);

  v27 = MEMORY[0x277D83C10];
  *(v25 + 56) = MEMORY[0x277D83B88];
  *(v25 + 64) = v27;
  *(v25 + 32) = v26;
  v28 = sub_21CB85594();

  return v28;
}

unint64_t sub_21CA467A4()
{
  result = qword_27CDF6148;
  if (!qword_27CDF6148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6150, &qword_21CBC0498);
    sub_21CA46830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6148);
  }

  return result;
}

unint64_t sub_21CA46830()
{
  result = qword_27CDF6158;
  if (!qword_27CDF6158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6160, &qword_21CBC04A0);
    sub_21C6EADEC(&qword_27CDF6168, &qword_27CDF6170, &qword_21CBC04A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6158);
  }

  return result;
}

unint64_t sub_21CA468F4()
{
  result = qword_27CDF6180;
  if (!qword_27CDF6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6180);
  }

  return result;
}

unint64_t sub_21CA46948()
{
  result = qword_27CDF6190;
  if (!qword_27CDF6190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6190);
  }

  return result;
}

unint64_t sub_21CA4699C()
{
  result = qword_27CDF6198;
  if (!qword_27CDF6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6198);
  }

  return result;
}

uint64_t objectdestroy_10Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI16PMOnboardingViewV11ButtonModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21CA46A6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_21CA46AB4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21CA46B14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21CA46B70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_21CA46BE0()
{
  result = qword_27CDF61A0;
  if (!qword_27CDF61A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF61A8, &qword_21CBC0658);
    sub_21CA46948();
    sub_21CA4699C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF61A0);
  }

  return result;
}

uint64_t sub_21CA46CA4(uint64_t a1)
{
  v33 = a1;
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v15);
  v31 = &v30 - v16;
  MEMORY[0x28223BE20](v17);
  v32 = &v30 - v18;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v30 = sub_21CB81034();
  v19 = *(v30 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v23 = *(v2 + 8);
  v23(v5, v1);
  v23(v8, v1);
  v23(v11, v1);
  v23(v14, v1);
  swift_setDeallocating();
  (*(v19 + 8))(v22 + v21, v30);
  swift_deallocClassInstance();
  v24 = v32;
  sub_21CB81004();
  v23(v31, v1);
  v23(v24, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D83B88];
  *(v25 + 16) = xmmword_21CBA0690;
  v27 = MEMORY[0x277D83C10];
  *(v25 + 56) = v26;
  *(v25 + 64) = v27;
  *(v25 + 32) = v33;
  v28 = sub_21CB85594();

  return v28;
}

uint64_t sub_21CA470A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  v24 = *(a1 + 16);
  v38 = a2;
  if (v24 == a2)
  {
    sub_21CB81014();
    v25 = sub_21CB81004();
    (*(v5 + 8))(v23, v4);
    return v25;
  }

  v37 = v24;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v36 = v20;
  v35 = sub_21CB81034();
  v26 = *(v35 - 8);
  v27 = *(v26 + 72);
  v34 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v29 = *(v5 + 8);
  v29(v8, v4);
  v29(v11, v4);
  v29(v14, v4);
  v29(v17, v4);
  swift_setDeallocating();
  (*(v26 + 8))(v28 + v34, v35);
  swift_deallocClassInstance();
  sub_21CB81004();
  v29(v36, v4);
  v29(v23, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  result = swift_allocObject();
  *(result + 16) = xmmword_21CBA0690;
  v31 = v38 - v37;
  if (!__OFSUB__(v38, v37))
  {
    v32 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v32;
    *(result + 32) = v31;
    v25 = sub_21CB85594();

    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CA4752C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21CA475A8()
{
  result = qword_27CDF61E0;
  if (!qword_27CDF61E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF61E8, &qword_21CBC0728);
    sub_21CA47640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF61E0);
  }

  return result;
}

unint64_t sub_21CA47640()
{
  result = qword_27CDF61F0;
  if (!qword_27CDF61F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF61F8, &qword_21CBC0730);
    sub_21CA476F8();
    sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF61F0);
  }

  return result;
}

unint64_t sub_21CA476F8()
{
  result = qword_27CDF6200;
  if (!qword_27CDF6200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6208, &qword_21CBC0738);
    sub_21C6EADEC(&qword_27CDF6210, &qword_27CDF6218, &unk_21CBC0740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6200);
  }

  return result;
}

uint64_t sub_21CA477A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA47820(unint64_t *a1, void (*a2)(uint64_t))
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

id PMNotificationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21CA478AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21CA491B4(&qword_27CDF62E0, type metadata accessor for PMNotificationManager);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  swift_beginAccess();
  return sub_21C725C54(v5 + v3, a1);
}

uint64_t sub_21CA47974@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CA491B4(&qword_27CDF62E0, type metadata accessor for PMNotificationManager);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  swift_beginAccess();
  return sub_21C725C54(v3 + v4, a2);
}

uint64_t sub_21CA47A3C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_21C725C54(a1, &v10 - v6);
  v8 = *a2;
  return sub_21CA47AD0(v7);
}

uint64_t sub_21CA47AD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  swift_beginAccess();
  sub_21C725C54(v1 + v7, v6);
  v8 = sub_21CA4856C(v6, a1);
  sub_21C6EA794(v6, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_21CA491B4(&qword_27CDF62E0, type metadata accessor for PMNotificationManager);
    sub_21CB810C4();
  }

  else
  {
    sub_21C725C54(a1, v6);
    swift_beginAccess();
    sub_21C7AE758(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21CA47CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_21C725C54(a2, &v10 - v6);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  swift_beginAccess();
  sub_21C7AE758(v7, a1 + v8);
  return swift_endAccess();
}

void sub_21CA47D84(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21CB853D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB85404();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v15;
    v32 = v17;
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v30 = v9;
    v20 = a2;
    v21 = a5;
    v22 = a1;
    v23 = sub_21CB85CF4();
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    *(v24 + 24) = v22;
    aBlock[4] = a4;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = v21;
    v25 = _Block_copy(aBlock);
    v26 = v22;
    v27 = v20;

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21CA491B4(&qword_27CDEAF48, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C91A53C();
    v28 = v30;
    sub_21CB85F14();
    MEMORY[0x21CF15800](0, v19, v13, v25);
    _Block_release(v25);

    (*(v10 + 8))(v13, v28);
    (*(v31 + 8))(v19, v32);
  }
}

uint64_t sub_21CA48068(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v14 - v9);
  *v6 = a2;
  swift_storeEnumTagMultiPayload();
  v11 = a2;
  sub_21C7C87D0(v6, v10);
  v12 = type metadata accessor for PMAccount(0);
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  return sub_21CA47AD0(v10);
}

void sub_21CA481A4(void *a1, void (*a2)(void))
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v3 = [a1 exactMatches];
  sub_21C6E8F4C(0, &qword_27CDEE5A8, 0x277D49B38);
  v4 = sub_21CB85824();

  if (v4 >> 62)
  {
    if (sub_21CB85FA4())
    {
      goto LABEL_4;
    }

LABEL_9:

    a1 = 0;
    goto LABEL_10;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21CF15BD0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v6 savedAccount];

  a1 = v7;
LABEL_10:
  v8 = a1;
  a2();
}

void sub_21CA482EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 1)
  {
    if (a3 == 9)
    {
      v4 = a4;
      v11 = a2;
      v5 = a2;
      v6 = &unk_282E581C0;
      v7 = &unk_282E581E8;
      v8 = &block_descriptor_42;
      v9 = sub_21CA49244;
      v10 = sub_21CA492C4;
    }

    else
    {
      if (a3 != 8)
      {
        return;
      }

      v4 = a4;
      v11 = a2;
      v5 = a2;
      v6 = &unk_282E580F8;
      v7 = &unk_282E58120;
      v8 = &block_descriptor_26_0;
      v9 = sub_21CA491FC;
      v10 = sub_21CA4923C;
    }

    sub_21CA487DC(v4, v5, v6, v7, v9, v10, v8);
  }
}

id PMNotificationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMNotificationManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21CA4856C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_21C725C54(a1, &v23 - v15);
  sub_21C725C54(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_21C725C54(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      sub_21C7D4AC0(&v16[v18], v8);
      v21 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_21C7D4A64(v8);
      sub_21C7D4A64(v12);
      sub_21C6EA794(v16, &unk_27CDEBE60, &unk_21CB9FF40);
      v20 = !v21;
      return v20 & 1;
    }

    sub_21C7D4A64(v12);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v16, &qword_27CDEAC50, &unk_21CBA00A0);
    v20 = 1;
    return v20 & 1;
  }

  sub_21C6EA794(v16, &unk_27CDEBE60, &unk_21CB9FF40);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21CA487DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a5;
  v55 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = sub_21CB80BE4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  v57 = 0x6576654C68676968;
  v58 = 0xEF6E69616D6F446CLL;
  v23 = a2;
  sub_21CB86034();
  if (!*(a1 + 16) || (v24 = sub_21CB10D50(aBlock), (v25 & 1) == 0))
  {
    sub_21C8E1980(aBlock);
    goto LABEL_7;
  }

  sub_21C7A3394(*(a1 + 56) + 32 * v24, v59);
  sub_21C8E1980(aBlock);
  if (!swift_dynamicCast())
  {
LABEL_7:
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_8;
  }

  v53 = a7;
  v26 = sub_21CB85584();

  v27 = [v26 safari_bestURLForUserTypedString];

  if (v27)
  {
    sub_21CB80B94();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v18 + 56))(v13, v28, 1, v17);
  sub_21C79C3F4(v13, v16);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v21, v16, v17);
    v57 = 0x656D614E72657375;
    v58 = 0xE800000000000000;
    sub_21CB86034();
    if (*(a1 + 16) && (v30 = sub_21CB10D50(aBlock), (v31 & 1) != 0))
    {
      sub_21C7A3394(*(a1 + 56) + 32 * v30, v59);
      sub_21C8E1980(aBlock);
      if (swift_dynamicCast())
      {
        v32 = objc_allocWithZone(MEMORY[0x277D49B70]);
        v33 = sub_21CB85584();

        v34 = [v32 initWithString:v33 matchingType:0];

        v35 = objc_allocWithZone(MEMORY[0x277D49B40]);
        v36 = v34;
        v37 = sub_21CB80B74();
        v38 = [v35 initWithURL:v37 options:32 userNameQuery:v36 associatedDomainsManager:0 webFrameIdentifier:0];

        v57 = 0xD000000000000013;
        v58 = 0x800000021CB98B50;
        sub_21CB86034();
        if (*(a1 + 16) && (v39 = sub_21CB10D50(aBlock), (v40 & 1) != 0))
        {
          sub_21C7A3394(*(a1 + 56) + 32 * v39, v59);
          sub_21C8E1980(aBlock);
          v41 = swift_dynamicCast();
          v42 = v53;
          if (v41)
          {
            v52 = sub_21CB80C24();
            v44 = v43;

            v45 = 0;
            if (v44 >> 60 != 15)
            {
              v45 = sub_21CB80C64();
              sub_21C7902FC(v52, v44);
            }

            v46 = v38;
            [v38 setPasskeyCredentialIdentifier_];

            goto LABEL_25;
          }
        }

        else
        {
          sub_21C8E1980(aBlock);
          v42 = v53;
        }

        v46 = v38;
LABEL_25:
        v47 = [objc_opt_self() sharedStore];
        v48 = swift_allocObject();
        v49 = v55;
        *(v48 + 16) = v54;
        *(v48 + 24) = v22;
        aBlock[4] = v49;
        aBlock[5] = v48;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21C7E80D4;
        aBlock[3] = v42;
        v50 = _Block_copy(aBlock);
        v51 = v46;

        [v47 savedAccountsMatchingCriteria:v51 withCompletionHandler:v50];
        _Block_release(v50);
      }
    }

    else
    {
      sub_21C8E1980(aBlock);
    }

    (*(v18 + 8))(v21, v17);
  }

LABEL_8:
  sub_21C6EA794(v16, &qword_27CDEC300, &qword_21CBA3ED0);
}

uint64_t sub_21CA48E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v6 = sub_21CB853D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21CB85404();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v15 = sub_21CB85CF4();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = v3;
  v16[4] = v20;
  v16[5] = a3;
  aBlock[4] = sub_21CA491A8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_32;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CA491B4(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C91A53C();
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v21);
}

uint64_t sub_21CA491B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CA492C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_21C7B10C0(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21C7B10C0((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 16 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21CA493E0(uint64_t a1)
{
  v2 = sub_21CB80BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    sub_21C7B1168(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21C7B1168((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v15 + 1;
      sub_21C731A9C(&v18, (v8 + 32 * v15 + 32));
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_21CA49578(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_21C7B1168(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21C7B1168((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_21C731A9C(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21CA49678()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CA49704()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v1 == 1)
  {
    return sub_21CA49F24();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CA4985C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v2 = sub_21CB85114();
  v3 = MEMORY[0x277CDF0D0];
  if (!v5)
  {
    v3 = MEMORY[0x277CDF0D8];
  }

  return (*(*(v2 - 8) + 104))(a1, *v3, v2);
}

uint64_t sub_21CA49928(uint64_t a1)
{
  v2 = sub_21CB85104();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
  }

  sub_21CB81DC4();
  v3 = sub_21CB85114();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_21CA49A40(uint64_t a1)
{
  PMAccount.userName.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  PMAccount.password.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  PMAccount.notesEntry.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  PMAccount.effectiveTitle.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  PMAccount.totpGenerator.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  sub_21CA4CBD4(a1);
  return sub_21CA4AE80(a1);
}

uint64_t sub_21CA49CFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA49D84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA49F24()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v7 = sub_21C7072A8(v5, v29);

  v8 = sub_21CA4DE84();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v7 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(v8, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v11 = v29;
  v12 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v11;
  v30 = v12;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v13 = v29;
  v14 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v13;
  v30 = v14;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v15 = v29;
  v16 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v15;
  v30 = v16;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v17 = sub_21CB85584();

  v18 = [v17 safari_stringByTrimmingWhitespace];

  v19 = sub_21CB855C4();
  v21 = v20;

  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v19;
  v30 = v21;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v23 = v29;
  v22 = v30;

  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v25 = v29;
    v26 = v30;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v25 = PMAccount.effectiveTitle.getter();
    v26 = v27;
    sub_21C719660(v4, type metadata accessor for PMAccount);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v25;
  v30 = v26;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CA4CBD4(v4);
  sub_21C719660(v4, type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v29) = 0;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v29) = 0;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v29) = 0;

  return sub_21CB81DC4();
}

uint64_t sub_21CA4A55C()
{
  v1 = *(v0 + 16);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C7072A8(v1, v9);

  v4 = sub_21CA4DE84();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 32))(v4, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21CA4A664()
{
  v0 = type metadata accessor for PMAccount(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21CA4DE84();
  v5 = [v4 hasChanges];

  swift_getKeyPath();
  swift_getKeyPath();
  if (v5)
  {
    v7[15] = 1;

    return sub_21CB81DC4();
  }

  else
  {
    sub_21CB81DB4();

    sub_21CA4AE80(v3);
    return sub_21C719660(v3, type metadata accessor for PMAccount);
  }
}

uint64_t sub_21CA4A830()
{
  v1[5] = v0;
  v2 = *(*(type metadata accessor for PMAccount(0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = sub_21CB858B4();
  v1[8] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_21CA4A8F8, v4, v3);
}

uint64_t sub_21CA4A8F8()
{
  v1 = v0[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 9142498;
  v0[3] = 0xA300000000000000;

  sub_21CB81DC4();
  v2 = *(v1 + 16);
  v3 = qword_27CDEA4C0;

  if (v3 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  sub_21CB86544();
  v0[11] = sub_21C7072A8(v2, v0[4]);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v0[12] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v0[13] = v8;
  v0[14] = v7;

  return MEMORY[0x2822009F8](sub_21CA4AAA4, v8, v7);
}

uint64_t sub_21CA4AAA4()
{
  v1 = v0[11];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = *(v0[11] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 96);
    v14 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_21CA4AC48;
    v8 = v0[6];

    return v14(1, v8, ObjectType, v3);
  }

  else
  {
    v11 = v0[11];
    v10 = v0[12];

    sub_21C719660(v0[6], type metadata accessor for PMAccount);
    v12 = v0[9];
    v13 = v0[10];

    return MEMORY[0x2822009F8](sub_21CA4AE14, v12, v13);
  }
}

uint64_t sub_21CA4AC48()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21CA4AD8C, v5, v4);
}

uint64_t sub_21CA4AD8C()
{
  v2 = v0[11];
  v1 = v0[12];

  sub_21C719660(v0[6], type metadata accessor for PMAccount);
  v3 = v0[9];
  v4 = v0[10];

  return MEMORY[0x2822009F8](sub_21CA4AE14, v3, v4);
}

uint64_t sub_21CA4AE14()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CA4AE80(uint64_t a1)
{
  PMAccount.userName.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  PMAccount.password.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  PMAccount.notesEntry.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  PMAccount.customTitle.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  PMAccount.totpGenerator.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  sub_21CA4CBD4(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CA4B0DC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_21CB85C44();
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v1);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PMAccount.MockData(0);
  v4 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v21 = type metadata accessor for PMAccount(0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CA4F030(&v25[*(v22 + 32)], v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v25, type metadata accessor for PMAccount);
    sub_21CA50100(v10, v6, type metadata accessor for PMAccount.MockData);
    sub_21C950D6C(&v6[*(v37 + 72)], v17);
    v26 = type metadata accessor for PMAccount.MockData;
    v27 = v6;
  }

  else
  {
    v28 = *v10;
    sub_21CB85B94();

    v26 = type metadata accessor for PMAccount;
    v27 = v25;
  }

  sub_21C719660(v27, v26);
  sub_21C7C3490(v17, v20);
  sub_21C950D6C(v20, v14);
  v30 = v39;
  v29 = v40;
  if ((*(v39 + 48))(v14, 1, v40) == 1)
  {
    sub_21C6EA794(v20, &unk_27CDF20B0, &unk_21CBA0090);
    v31 = type metadata accessor for PMSharingGroup();
    return (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  }

  else
  {
    v33 = v38;
    (*(v30 + 32))(v38, v14, v29);
    v34 = *(v42 + 24);
    v35 = qword_27CDEA4C0;

    if (v35 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7073E8(v34, v43);

    sub_21CA1D444(v33, v41);

    (*(v30 + 8))(v33, v29);
    return sub_21C6EA794(v20, &unk_27CDF20B0, &unk_21CBA0090);
  }
}

uint64_t sub_21CA4B5A0()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  v2 = *(v0 + 16);
  v3 = qword_27CDEA4C0;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v2, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21CBA0690;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C833194(v7, sub_21CA500F8, v1);
}

uint64_t sub_21CA4B79C(uint64_t a1)
{
  v2 = v1;
  v172 = a1;
  v174 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v173 = (&v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = type metadata accessor for PMAccount(0);
  v5 = *(*(v180 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v180);
  v171 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v177 = &v147 - v8;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64C0, &qword_21CBC0C70);
  v169 = *(v170 - 8);
  v9 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v168 = &v147 - v10;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B8, &qword_21CBC0C68);
  v166 = *(v167 - 8);
  v11 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v165 = &v147 - v12;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B0, &qword_21CBC0C60);
  v159 = *(v162 - 8);
  v13 = *(v159 + 64);
  MEMORY[0x28223BE20](v162);
  v157 = &v147 - v14;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64A8, &qword_21CBC0C58);
  v152 = *(v154 - 8);
  v15 = *(v152 + 64);
  MEMORY[0x28223BE20](v154);
  v150 = &v147 - v16;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64A0, &qword_21CBC0C50);
  v178 = *(v179 - 8);
  v17 = *(v178 + 64);
  MEMORY[0x28223BE20](v179);
  v148 = &v147 - v18;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v176 = *(v175 - 8);
  v19 = v176[8];
  MEMORY[0x28223BE20](v175);
  v21 = &v147 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v23 = *(v22 - 1);
  v181 = v22;
  v182 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v147 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6498, &qword_21CBC0C48);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v147 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6490, &qword_21CBC0C40);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v147 - v35;
  *(v2 + 16) = swift_getKeyPath();
  *(v2 + 24) = swift_getKeyPath();
  v37 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__accountDetailDeletionKind;
  *&v185[0] = 0;
  type metadata accessor for _ASDeleteKind(0);
  sub_21CB81D74();
  (*(v33 + 32))(v2 + v37, v36, v32);
  v38 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__deleteAlertConfiguration;
  *&v185[0] = sub_21CB12CF0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6400, &qword_21CBC0820);
  sub_21CB81D74();
  (*(v28 + 32))(v2 + v38, v31, v27);
  v39 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__isEditing;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v40 = v181;
  v42 = (v182 + 32);
  v41 = *(v182 + 4);
  v41(v2 + v39, v26, v181);
  v43 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__hasEnteredEditMode;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v41(v2 + v43, v26, v40);
  v44 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__isPerformingAccountOperation;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v41(v2 + v44, v26, v40);
  v182 = v42;
  v45 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__allowEmptyFocus;
  LOBYTE(v185[0]) = 1;
  sub_21CB81D74();
  v41(v2 + v45, v26, v40);
  v46 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameInputString;
  v149 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameInputString;
  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v47 = v176[4];
  v48 = v2 + v46;
  v49 = v175;
  v47(v48, v21, v175);
  v50 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameCommittedValue;
  v151 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameCommittedValue;
  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v51 = v2 + v50;
  v52 = v49;
  v47(v51, v21, v49);
  v53 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordInputString;
  v153 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordInputString;
  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v47(v2 + v53, v21, v52);
  v54 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordCommittedValue;
  v155 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordCommittedValue;
  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v47(v2 + v54, v21, v52);
  v55 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesInputString;
  v156 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesInputString;
  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v47(v2 + v55, v21, v52);
  v56 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesCommittedValue;
  v158 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesCommittedValue;
  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v47(v2 + v56, v21, v52);
  v57 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleInputString;
  v160 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleInputString;
  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v47(v2 + v57, v21, v52);
  v58 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleCommittedValue;
  v163 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleCommittedValue;
  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v47(v2 + v58, v21, v52);
  v59 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__totpGeneratorWasAddedWhileEditing;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v60 = v181;
  v41(v2 + v59, v26, v181);
  v61 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__totpGenerator;
  v161 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__totpGenerator;
  *&v185[0] = 0;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6410, &unk_21CBC0828);
  v62 = v148;
  sub_21CB81D74();
  (*(v178 + 32))(v2 + v61, v62, v179);
  v63 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showEditWebsitesSheet;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v41(v2 + v63, v26, v60);
  v64 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__websites;
  v65 = MEMORY[0x277D84F90];
  *&v185[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE100, &unk_21CBA95B0);
  v66 = v150;
  sub_21CB81D74();
  v67 = *(v152 + 32);
  v68 = v154;
  v67(v2 + v64, v66, v154);
  v69 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__uncommittedWebsites;
  *&v185[0] = v65;
  sub_21CB81D74();
  v67(v2 + v69, v66, v68);
  v70 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__websiteSelection;
  *&v185[0] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6428, &qword_21CBC0838);
  v71 = v157;
  sub_21CB81D74();
  (*(v159 + 32))(v2 + v70, v71, v162);
  v72 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showVerificationCodeAlert;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v73 = v181;
  v41(v2 + v72, v26, v181);
  v74 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showPasskeyLearnMoreSheet;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v41(v2 + v74, v26, v73);
  v75 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showPasswordHistorySheet;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v41(v2 + v75, v26, v73);
  v76 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showCancelEditingAlert;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v41(v2 + v76, v26, v73);
  v77 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showAddPasswordFieldForPasskey;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v41(v2 + v77, v26, v73);
  v78 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__accountsThatFailedToRecover;
  *&v185[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0138, &qword_21CBC0840);
  v79 = v165;
  sub_21CB81D74();
  (*(v166 + 32))(v2 + v78, v79, v167);
  v80 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__recoverToMyPasswordsAlertConfiguration;
  *&v185[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6440, &qword_21CBC0848);
  v81 = v168;
  sub_21CB81D74();
  (*(v169 + 32))(v2 + v80, v81, v170);
  v82 = v2 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel;
  *v82 = 0u;
  *(v82 + 16) = 0u;
  *(v82 + 32) = 0u;
  *(v82 + 48) = 0u;
  v170 = v82;
  *(v82 + 64) = 0;
  v83 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation);
  *v83 = 0;
  v83[1] = 0;
  v84 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showUncommittedChangesAlert;
  LOBYTE(v185[0]) = 0;
  sub_21CB81D74();
  v41(v2 + v84, v26, v73);
  v85 = v172;
  v86 = v177;
  v181 = type metadata accessor for PMAccount;
  sub_21CA4F030(v172, v177, type metadata accessor for PMAccount);
  swift_beginAccess();
  sub_21CA4F030(v86, v171, type metadata accessor for PMAccount);
  sub_21CB81D74();
  v182 = type metadata accessor for PMAccount;
  sub_21C719660(v86, type metadata accessor for PMAccount);
  swift_endAccess();
  v87 = PMAccount.userName.getter();
  if (v88)
  {
    v89 = v87;
  }

  else
  {
    v89 = 0;
  }

  if (v88)
  {
    v90 = v88;
  }

  else
  {
    v90 = 0xE000000000000000;
  }

  v91 = v149;
  swift_beginAccess();
  v92 = v176[1];
  v93 = v175;
  v92(v2 + v91, v175);
  *&v183[0] = v89;
  *(&v183[0] + 1) = v90;
  sub_21CB81D74();
  swift_endAccess();
  v94 = PMAccount.userName.getter();
  if (v95)
  {
    v96 = v94;
  }

  else
  {
    v96 = 0;
  }

  if (v95)
  {
    v97 = v95;
  }

  else
  {
    v97 = 0xE000000000000000;
  }

  v98 = v151;
  swift_beginAccess();
  v92(v2 + v98, v93);
  *&v183[0] = v96;
  *(&v183[0] + 1) = v97;
  sub_21CB81D74();
  swift_endAccess();
  v99 = PMAccount.password.getter();
  if (v100)
  {
    v101 = v99;
  }

  else
  {
    v101 = 0;
  }

  if (v100)
  {
    v102 = v100;
  }

  else
  {
    v102 = 0xE000000000000000;
  }

  v103 = v153;
  swift_beginAccess();
  v92(v2 + v103, v93);
  *&v183[0] = v101;
  *(&v183[0] + 1) = v102;
  sub_21CB81D74();
  swift_endAccess();
  v104 = PMAccount.password.getter();
  if (v105)
  {
    v106 = v104;
  }

  else
  {
    v106 = 0;
  }

  if (v105)
  {
    v107 = v105;
  }

  else
  {
    v107 = 0xE000000000000000;
  }

  v108 = v155;
  swift_beginAccess();
  v92(v2 + v108, v93);
  *&v183[0] = v106;
  *(&v183[0] + 1) = v107;
  sub_21CB81D74();
  swift_endAccess();
  v109 = PMAccount.notesEntry.getter();
  if (v110)
  {
    v111 = v109;
  }

  else
  {
    v111 = 0;
  }

  if (v110)
  {
    v112 = v110;
  }

  else
  {
    v112 = 0xE000000000000000;
  }

  v113 = v156;
  swift_beginAccess();
  v92(v2 + v113, v93);
  *&v183[0] = v111;
  *(&v183[0] + 1) = v112;
  sub_21CB81D74();
  swift_endAccess();
  v114 = PMAccount.notesEntry.getter();
  if (v115)
  {
    v116 = v114;
  }

  else
  {
    v116 = 0;
  }

  if (v115)
  {
    v117 = v115;
  }

  else
  {
    v117 = 0xE000000000000000;
  }

  v118 = v158;
  swift_beginAccess();
  v92(v2 + v118, v93);
  *&v183[0] = v116;
  *(&v183[0] + 1) = v117;
  sub_21CB81D74();
  swift_endAccess();
  v119 = PMAccount.customTitle.getter();
  if (v120)
  {
    v121 = v119;
  }

  else
  {
    v121 = 0;
  }

  if (v120)
  {
    v122 = v120;
  }

  else
  {
    v122 = 0xE000000000000000;
  }

  v123 = v160;
  swift_beginAccess();
  v92(v2 + v123, v93);
  *&v183[0] = v121;
  *(&v183[0] + 1) = v122;
  sub_21CB81D74();
  swift_endAccess();
  v124 = PMAccount.effectiveTitle.getter();
  v126 = v125;
  v127 = v163;
  swift_beginAccess();
  v92(v2 + v127, v93);
  v128 = v177;
  *&v183[0] = v124;
  *(&v183[0] + 1) = v126;
  sub_21CB81D74();
  swift_endAccess();
  v129 = PMAccount.totpGenerator.getter();
  v130 = v161;
  swift_beginAccess();
  (*(v178 + 8))(v2 + v130, v179);
  *&v183[0] = v129;
  sub_21CB81D74();
  swift_endAccess();
  v131 = v181;
  sub_21CA4F030(v85, v128, v181);
  v132 = type metadata accessor for PMAccountHistoryModel();
  v133 = *(v132 + 48);
  v134 = *(v132 + 52);
  v135 = swift_allocObject();
  v136 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__generatedPasswordStore;
  *(v135 + v136) = swift_getKeyPath();
  v137 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__accountsState;
  *(v135 + v137) = swift_getKeyPath();
  sub_21CB81104();
  sub_21CA4F030(v128, v135 + OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account, v131);
  *(v135 + OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__historyItemsCount) = 0;
  sub_21C94CCE8();
  sub_21C719660(v128, v182);
  swift_beginAccess();
  *&v183[0] = v135;
  sub_21CB81D74();
  swift_endAccess();
  sub_21CA4CBD4(v85);
  v138 = v173;
  sub_21CA4F030(v85 + *(v180 + 24), v173, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v138, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v139 = *v138;
    v140 = [v139 credentialTypes];

    if ((v140 & 8) != 0)
    {
      sub_21CA4F030(v85, v128, type metadata accessor for PMAccount);
      sub_21CAFAD24(v128, v185);
      sub_21C719660(v85, type metadata accessor for PMAccount);
      v141 = v170;
      v142 = *(v170 + 48);
      v183[2] = *(v170 + 32);
      v183[3] = v142;
      v184 = *(v170 + 64);
      v143 = *(v170 + 16);
      v183[0] = *v170;
      v183[1] = v143;
      v144 = v185[1];
      *v170 = v185[0];
      *(v141 + 16) = v144;
      v145 = v185[3];
      *(v141 + 32) = v185[2];
      *(v141 + 48) = v145;
      *(v141 + 64) = v186;
      sub_21C6EA794(v183, &qword_27CDEC670, &unk_21CBC0D00);
      return v2;
    }
  }

  sub_21C719660(v85, type metadata accessor for PMAccount);
  return v2;
}

uint64_t sub_21CA4CBD4(uint64_t a1)
{
  v3 = type metadata accessor for PMEditableWebsite();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v65 - v10;
  v11 = sub_21CB85C04();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v11);
  v66 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMAccount.Storage(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v65 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v65 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = (&v65 - v25);
  v73 = MEMORY[0x277D84F90];
  *&v71 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21CA4F030(a1 + v71, v26, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = v1;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C719660(v26, type metadata accessor for PMAccount.Storage);
    goto LABEL_10;
  }

  v28 = *v26;
  v29 = [v28 credentialTypes];
  v65 = a1;
  v30 = v29;

  v31 = v30 == 2;
  a1 = v65;
  if (v31)
  {
    sub_21CA4F030(v65 + v71, v24, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719660(v24, type metadata accessor for PMAccount.Storage);
      v32 = v67;
      (*(v68 + 56))(v67, 1, 1, v69);
    }

    else
    {
      v33 = *v24;
      v32 = v67;
      sub_21CB85C14();

      v34 = v68;
      v35 = v69;
      if ((*(v68 + 48))(v32, 1, v69) != 1)
      {
        (*(v34 + 32))(v66, v32, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB048, &qword_21CBA0DE8);
        v36 = *(v4 + 72);
        v37 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v38 = v34;
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_21CBA0690;
        v40 = v39 + v37;
        v41 = sub_21CB85B64();
        v67 = v42;
        sub_21CB80E24();
        v43 = (v40 + *(v3 + 20));
        v44 = v67;
        *v43 = v41;
        v43[1] = v44;
        v45 = (v40 + *(v3 + 24));
        a1 = v65;
        *v45 = 0;
        v45[1] = 0;
        sub_21CAE8C7C(v39);
        (*(v38 + 8))(v66, v69);
        goto LABEL_10;
      }
    }

    sub_21C6EA794(v32, &unk_27CDEC2F0, &unk_21CBA1660);
  }

LABEL_10:
  v46 = v71;
  sub_21CA4F030(a1 + v71, v21, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v21, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v47 = *v21;
    v48 = [*v21 hasValidWebsite];

    if (v48)
    {
      v49 = PMAccount.userVisibleSites.getter();
      v50 = PMAccount.sites.getter();
      v51 = sub_21CA4DB34(v49, v50);

      sub_21CAE8C7C(v51);
    }
  }

  sub_21CA4F030(a1 + v46, v18, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v18, type metadata accessor for PMAccount.Storage);
    v52 = MEMORY[0x277D84F90];
    v53 = *(MEMORY[0x277D84F90] + 16);
    if (v53)
    {
      goto LABEL_16;
    }

LABEL_22:

    v54 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v61 = *v18;
  v62 = [*v18 additionalSites];
  v52 = sub_21CB85824();

  v53 = *(v52 + 16);
  if (!v53)
  {
    goto LABEL_22;
  }

LABEL_16:
  v72 = MEMORY[0x277D84F90];
  sub_21C7B1124(0, v53, 0);
  v54 = v72;
  v55 = (v52 + 40);
  v71 = xmmword_21CBA4340;
  do
  {
    v57 = *(v55 - 1);
    v56 = *v55;

    sub_21CB80E24();
    v58 = &v7[*(v3 + 20)];
    *v58 = v57;
    *(v58 + 1) = v56;
    *&v7[*(v3 + 24)] = v71;
    v72 = v54;
    v60 = *(v54 + 16);
    v59 = *(v54 + 24);
    if (v60 >= v59 >> 1)
    {
      sub_21C7B1124(v59 > 1, v60 + 1, 1);
      v54 = v72;
    }

    *(v54 + 16) = v60 + 1;
    sub_21CA50100(v7, v54 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v60, type metadata accessor for PMEditableWebsite);
    v55 += 2;
    --v53;
  }

  while (v53);

LABEL_23:
  sub_21CAE8C7C(v54);
  v63 = v73;
  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v63;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v63;

  return sub_21CB81DC4();
}

uint64_t sub_21CA4D370()
{
  v1 = sub_21CB80E34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CA4F030(v0, v9, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x21CF15F90](1);
    sub_21C704B40(&qword_27CDEE130, MEMORY[0x277CC95F0]);
    sub_21CB85494();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = *v9;
    v12 = v9[1];
    MEMORY[0x21CF15F90](0);
    sub_21CB854C4();
  }
}

uint64_t sub_21CA4D558()
{
  v1 = v0;
  v2 = sub_21CB80E34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  sub_21CA4F030(v1, v10, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x21CF15F90](1);
    sub_21C704B40(&qword_27CDEE130, MEMORY[0x277CC95F0]);
    sub_21CB85494();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    v12 = v10[1];
    MEMORY[0x21CF15F90](0);
    sub_21CB854C4();
  }

  return sub_21CB864D4();
}

uint64_t sub_21CA4D830@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21CA4D8B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_21CB81DC4();
}

uint64_t sub_21CA4D930(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CB80E34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  sub_21CA4F030(v4, v13, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x21CF15F90](1);
    sub_21C704B40(&qword_27CDEE130, MEMORY[0x277CC95F0]);
    sub_21CB85494();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v14 = *v13;
    v15 = v13[1];
    MEMORY[0x21CF15F90](0);
    sub_21CB854C4();
  }

  return sub_21CB864D4();
}

size_t sub_21CA4DB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMEditableWebsite();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v45 - v9;
  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  if (v11 >= v10)
  {
    v12 = *(a1 + 16);
  }

  else
  {
    v12 = *(a2 + 16);
  }

  v56 = MEMORY[0x277D84F90];
  result = sub_21C7B1124(0, v12, 0);
  v55 = v56;
  v50 = v11;
  v51 = v10;
  v47 = a1;
  v48 = a2;
  v46 = v12;
  if (v12)
  {
    v14 = (a2 + 40);
    v15 = (a1 + 40);
    while (v10)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v17 = *(v15 - 1);
      v16 = *v15;
      v18 = *v14;
      v54 = *(v14 - 1);

      sub_21CB80E24();
      v20 = v53;
      v19 = v54;
      v21 = &v8[*(v53 + 20)];
      *v21 = v17;
      *(v21 + 1) = v16;
      v22 = &v8[*(v20 + 24)];
      *v22 = v19;
      *(v22 + 1) = v18;
      v23 = v55;
      v56 = v55;
      v25 = *(v55 + 16);
      v24 = *(v55 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21C7B1124(v24 > 1, v25 + 1, 1);
        v23 = v56;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v55 = v23;
      result = sub_21CA50100(v8, v23 + v26 + *(v52 + 72) * v25, type metadata accessor for PMEditableWebsite);
      --v11;
      --v10;
      v14 += 2;
      v15 += 2;
      if (!--v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v28 = v50;
    v27 = v51;
    if (v51 <= v50)
    {
      return v55;
    }

    v29 = v46;
    v30 = v47;
    v54 = 16 * v46;
    v31 = v48;
    while (v29 < v27)
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_24;
      }

      if (v28 != v29)
      {
        if (v29 >= v28)
        {
          goto LABEL_25;
        }

        v34 = *(v30 + v54 + 32);
        v33 = *(v30 + v54 + 40);
        v35 = *(v31 + v54 + 32);
        v36 = *(v31 + v54 + 40);

        v37 = v49;
        sub_21CB80E24();
        v38 = v53;
        v39 = (v37 + *(v53 + 20));
        *v39 = v34;
        v39[1] = v33;
        v40 = (v37 + *(v38 + 24));
        *v40 = v35;
        v40[1] = v36;
        v41 = v55;
        v56 = v55;
        v43 = *(v55 + 16);
        v42 = *(v55 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_21C7B1124(v42 > 1, v43 + 1, 1);
          v37 = v49;
          v41 = v56;
        }

        ++v29;
        v30 += 16;
        v31 += 16;
        *(v41 + 16) = v43 + 1;
        v44 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v55 = v41;
        result = sub_21CA50100(v37, v41 + v44 + *(v52 + 72) * v43, type metadata accessor for PMEditableWebsite);
        v28 = v50;
        v27 = v51;
        if (v32 != v51)
        {
          continue;
        }
      }

      return v55;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_21CA4DE84()
{
  v0 = type metadata accessor for PMAccount.Storage(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = (&v27 - v5);
  v7 = type metadata accessor for PMAccount(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D49B28]) init];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CA4F030(&v13[*(v7 + 24)], v6, type metadata accessor for PMAccount.Storage);
  sub_21C719660(v13, type metadata accessor for PMAccount);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v6, type metadata accessor for PMAccount.Storage);
    v15 = 0;
  }

  else
  {
    v15 = *v6;
  }

  [v14 setSavedAccount_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v16 = sub_21CB85584();

  [v14 setUser_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v17 = sub_21CB85584();

  [v14 setPassword_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v18 = sub_21CB85584();

  [v14 setNotesEntry_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v19 = sub_21CB85584();

  v20 = [v19 safari_stringByTrimmingWhitespace];

  if (!v20)
  {
    sub_21CB855C4();
    v20 = sub_21CB85584();
  }

  [v14 setCustomTitle_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v21 = v27;
  [v14 setTotpGenerator_];

  v22 = sub_21CA4E454();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CA4F030(&v11[*(v7 + 24)], v4, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719660(v11, type metadata accessor for PMAccount);
    sub_21C719660(v4, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v23 = *v4;
    v24 = [*v4 hasValidWebsite];

    sub_21C719660(v11, type metadata accessor for PMAccount);
    if (v24)
    {
      [v14 setSites_];
    }
  }

  v25 = sub_21CB85814();

  [v14 setAdditionalSites_];

  return v14;
}

id sub_21CA4E454()
{
  v1 = v0;
  v2 = type metadata accessor for PMEditableWebsite();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = *(v40 + 16);
  v38 = v7;
  v39 = v2;
  if (v10)
  {
    v36[0] = v40;
    v36[1] = v1;
    v11 = &v9[*(v2 + 24)];
    v12 = v40 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v37 = v3;
    v13 = *(v3 + 72);
    v14 = MEMORY[0x277D84F90];
    do
    {
      sub_21CA4F030(v12, v9, type metadata accessor for PMEditableWebsite);
      v15 = *v11;
      v16 = v11[1];
      sub_21C7EC3F4(*v11, v16);
      sub_21C719660(v9, type metadata accessor for PMEditableWebsite);
      if (v16 < 2)
      {
        sub_21C858A90(v15, v16);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_21CA4F2EC(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = sub_21CA4F2EC((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        v19 = &v14[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v16;
        v2 = v39;
      }

      v12 += v13;
      --v10;
    }

    while (v10);

    v3 = v37;
    v7 = v38;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v20 = *(v40 + 16);
  if (v20)
  {
    v21 = &v7[*(v2 + 24)];
    v22 = *(v3 + 80);
    v37 = v40;
    v23 = v40 + ((v22 + 32) & ~v22);
    v24 = *(v3 + 72);
    v25 = MEMORY[0x277D84F90];
    do
    {
      sub_21CA4F030(v23, v7, type metadata accessor for PMEditableWebsite);
      if (*(v21 + 1) == 1)
      {
        v26 = &v7[*(v39 + 20)];
        v27 = *v26;
        v28 = *(v26 + 1);

        sub_21C719660(v7, type metadata accessor for PMEditableWebsite);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_21CA4F2EC(0, *(v25 + 2) + 1, 1, v25);
        }

        v30 = *(v25 + 2);
        v29 = *(v25 + 3);
        if (v30 >= v29 >> 1)
        {
          v25 = sub_21CA4F2EC((v29 > 1), v30 + 1, 1, v25);
        }

        *(v25 + 2) = v30 + 1;
        v31 = &v25[16 * v30];
        *(v31 + 4) = v27;
        *(v31 + 5) = v28;
        v7 = v38;
      }

      else
      {
        sub_21C719660(v7, type metadata accessor for PMEditableWebsite);
      }

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  sub_21CA49578(v14);

  v32 = objc_allocWithZone(MEMORY[0x277CBEB18]);
  v33 = sub_21CB85814();

  v34 = [v32 initWithArray_];

  return v34;
}

uint64_t sub_21CA4E8A8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CA4E964()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CA4E9E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__account;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6488, &qword_21CBC0C38);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__accountDetailDeletionKind;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6490, &qword_21CBC0C40);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__deleteAlertConfiguration;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6498, &qword_21CBC0C48);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__isEditing;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__hasEnteredEditMode, v10);
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__isPerformingAccountOperation, v10);
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__allowEmptyFocus, v10);
  v12 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameInputString;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__usernameCommittedValue, v13);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordInputString, v13);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__passwordCommittedValue, v13);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesInputString, v13);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__notesCommittedValue, v13);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleInputString, v13);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__titleCommittedValue, v13);
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__totpGeneratorWasAddedWhileEditing, v10);
  v15 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__totpGenerator;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64A0, &qword_21CBC0C50);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showEditWebsitesSheet, v10);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__websites;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64A8, &qword_21CBC0C58);
  v19 = *(*(v18 - 8) + 8);
  v19(v0 + v17, v18);
  v19(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__uncommittedWebsites, v18);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__websiteSelection;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B0, &qword_21CBC0C60);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showVerificationCodeAlert, v10);
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showPasskeyLearnMoreSheet, v10);
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showPasswordHistorySheet, v10);
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showCancelEditingAlert, v10);
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showAddPasswordFieldForPasskey, v10);
  v22 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__accountsThatFailedToRecover;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B8, &qword_21CBC0C68);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__recoverToMyPasswordsAlertConfiguration;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64C0, &qword_21CBC0C70);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v26 = OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__accountHistoryModel;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64C8, &qword_21CBC0C78);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v28 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel + 16);
  v29 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel + 24);
  v30 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel + 32);
  v31 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel + 40);
  v32 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel + 48);
  v33 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel + 56);
  v36 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel + 64);
  sub_21CA50094(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel + 8));
  v34 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation + 8);
  sub_21C71B710(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation));
  v11(v0 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel__showUncommittedChangesAlert, v10);
  return v0;
}

uint64_t sub_21CA4EFD0()
{
  sub_21CA4E9E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CA4F030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_21CA4F098(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB020, &qword_21CBA0D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CA4F1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CA4F2EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21CA4F420(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF78, &unk_21CBA0DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CA4F5B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5B0, &unk_21CBA9F30);
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

char *sub_21CA4F6E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_21CA4F7F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB018, &qword_21CBA0D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CA4F920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64D0, &unk_21CBC0C80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CA4FA54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64E8, &qword_21CBC1290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CA4FBC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6480, &qword_21CBC0BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21CA4FD08(uint64_t a1, uint64_t a2)
{
  v32 = sub_21CB80E34();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v31 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6478, &unk_21CBC0BD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v31 - v17;
  v20 = (&v31 + *(v19 + 56) - v17);
  sub_21CA4F030(a1, &v31 - v17, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  sub_21CA4F030(a2, v20, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21CA4F030(v18, v14, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
    v25 = *v14;
    v24 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v25 == *v20 && v24 == v20[1])
      {
        v29 = v20[1];
      }

      else
      {
        v27 = v20[1];
        v28 = sub_21CB86344();

        if ((v28 & 1) == 0)
        {
          sub_21C719660(v18, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
          goto LABEL_8;
        }
      }

      sub_21C719660(v18, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
      v22 = 1;
      return v22 & 1;
    }

LABEL_7:
    sub_21C6EA794(v18, &qword_27CDF6478, &unk_21CBC0BD0);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  sub_21CA4F030(v18, v11, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v11, v32);
    goto LABEL_7;
  }

  v21 = v32;
  (*(v4 + 32))(v7, v20, v32);
  v22 = sub_21CB80E14();
  v23 = *(v4 + 8);
  v23(v7, v21);
  v23(v11, v21);
  sub_21C719660(v18, type metadata accessor for PMCombinedAccountDetailsModel.WebsiteSelection);
  return v22 & 1;
}

uint64_t sub_21CA50094(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21CA50100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA5016C()
{
  sub_21CA5019C();
  result = sub_21CB83314();
  qword_27CE185D0 = result;
  return result;
}

unint64_t sub_21CA5019C()
{
  result = qword_27CDF6500;
  if (!qword_27CDF6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6500);
  }

  return result;
}

uint64_t sub_21CA50200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x21CF14400](v4, a3, &type metadata for PMOnDeleteCommand);
}

uint64_t sub_21CA50264@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    a1();
  }

  v3 = *MEMORY[0x277CDF120];
  v4 = sub_21CB85154();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_21CA502E8@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = sub_21CB82444();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6508, &qword_21CBC13A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6510, &qword_21CBC13B0);
  v14 = sub_21CA50524();
  sub_21CB84304();
  sub_21CB82434();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v12;
  sub_21C7335A8(v11, v12);
  v20 = v13;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  sub_21CB840F4();

  (*(v18 + 8))(v5, v19);
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_21CA50524()
{
  result = qword_27CDF6518[0];
  if (!qword_27CDF6518[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6510, &qword_21CBC13B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF6518);
  }

  return result;
}

uint64_t sub_21CA50590(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_21CB85E54();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CA50624()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_21CB85E54();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMMoveAccountsList()
{
  result = qword_27CDF65A0;
  if (!qword_27CDF65A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA50770()
{
  sub_21CA50814();
  if (v0 <= 0x3F)
  {
    sub_21C7226D8();
    if (v1 <= 0x3F)
    {
      sub_21CA5086C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CA50814()
{
  if (!qword_27CDF65B0)
  {
    type metadata accessor for PMSharingGroup();
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF65B0);
    }
  }
}

void sub_21CA5086C()
{
  if (!qword_27CDF65B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECBD0, &unk_21CBB9040);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF65B8);
    }
  }
}

unint64_t sub_21CA508E4()
{
  result = qword_27CDF65C0;
  if (!qword_27CDF65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF65C0);
  }

  return result;
}

uint64_t sub_21CA50954()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = (v0 + *(type metadata accessor for PMMoveAccountsList() + 28));
  v6 = *v5;
  v7 = v5[1];
  v16 = *v5;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF65D0, &qword_21CBC14E8);
  sub_21CB84D54();
  v8 = *(v15 + 16);

  if (!v8)
  {
    sub_21C6EDBAC(v0, v4, &qword_27CDF7670, &unk_21CBAA8F0);
    v9 = type metadata accessor for PMMoveAccountsListModel(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_21CA58B68(v4);
    v16 = v6;
    v17 = v7;
    sub_21CB84D54();
    v12 = *(v15 + 16);
    *(v15 + 16) = v8;
  }

  return v8;
}

uint64_t sub_21CA50AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21CA50954();
  v5 = *(a1 + 24);
  v6 = *(v2 + *(a1 + 20));
  v8 = *(v2 + v5);
  v7 = *(v2 + v5 + 8);
  KeyPath = swift_getKeyPath();
  v10 = qword_27CDEA4C0;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v16);

  type metadata accessor for PMGroupsStore();
  sub_21C706578(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v11 = sub_21CB82674();
  v13 = v12;

  type metadata accessor for PMMoveAccountsListModel(0);
  sub_21C706578(&qword_27CDF65C8, type metadata accessor for PMMoveAccountsListModel);
  result = sub_21CB82674();
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
  *(a2 + 24) = result;
  *(a2 + 32) = v15;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  return result;
}

uint64_t sub_21CA50C44@<X0>(uint64_t a1@<X8>)
{
  v188 = a1;
  v2 = sub_21CB83C74();
  v186 = *(v2 - 8);
  v187 = v2;
  v3 = *(v186 + 64);
  MEMORY[0x28223BE20](v2);
  v185 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB83584();
  v183 = *(v5 - 8);
  v184 = v5;
  v6 = *(v183 + 64);
  MEMORY[0x28223BE20](v5);
  v182 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB829D4();
  v180 = *(v8 - 8);
  v181 = v8;
  v9 = *(v180 + 64);
  MEMORY[0x28223BE20](v8);
  v179 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccount(0);
  v212 = *(v11 - 8);
  v12 = v212[8];
  MEMORY[0x28223BE20](v11 - 8);
  v211 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v209 = &v158 - v15;
  v203 = sub_21CB81024();
  v206 = *(v203 - 8);
  v16 = *(v206 + 64);
  MEMORY[0x28223BE20](v203);
  v202 = (&v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = sub_21CB82FD4();
  v193 = *(v204 - 8);
  v18 = *(v193 + 64);
  MEMORY[0x28223BE20](v204);
  v196 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_21CB85114();
  v189 = *(v191 - 8);
  v20 = *(v189 + 64);
  MEMORY[0x28223BE20](v191);
  v22 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF65E0, &qword_21CBC1588);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v158 - v25;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF65E8, &qword_21CBC1590);
  v197 = *(v192 - 8);
  v27 = v197[8];
  MEMORY[0x28223BE20](v192);
  v190 = &v158 - v28;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF65F0, &qword_21CBC1598);
  v205 = *(v198 - 8);
  v29 = *(v205 + 64);
  MEMORY[0x28223BE20](v198);
  v194 = &v158 - v30;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF65F8, &qword_21CBC15A0);
  v210 = *(v200 - 8);
  v31 = *(v210 + 64);
  MEMORY[0x28223BE20](v200);
  v195 = &v158 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6600, &qword_21CBC15A8);
  v158 = *(v33 - 8);
  v159 = v33;
  v34 = *(v158 + 64);
  MEMORY[0x28223BE20](v33);
  v201 = &v158 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6608, &qword_21CBC15B0);
  v160 = *(v36 - 8);
  v161 = v36;
  v37 = *(v160 + 64);
  MEMORY[0x28223BE20](v36);
  v199 = &v158 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6610, &qword_21CBC15B8);
  v163 = *(v39 - 8);
  v164 = v39;
  v40 = *(v163 + 64);
  MEMORY[0x28223BE20](v39);
  v162 = &v158 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6618, &qword_21CBC15C0);
  v167 = *(v42 - 8);
  v168 = v42;
  v43 = *(v167 + 64);
  MEMORY[0x28223BE20](v42);
  v165 = &v158 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6620, &qword_21CBC15C8);
  v169 = *(v45 - 8);
  v170 = v45;
  v46 = *(v169 + 64);
  MEMORY[0x28223BE20](v45);
  v166 = &v158 - v47;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6628, &qword_21CBC15D0);
  v48 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v171 = &v158 - v49;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6630, &qword_21CBC15D8);
  v175 = *(v178 - 8);
  v50 = *(v175 + 64);
  MEMORY[0x28223BE20](v178);
  v172 = &v158 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6638, &qword_21CBC15E0);
  v176 = *(v52 - 8);
  v177 = v52;
  v53 = *(v176 + 64);
  MEMORY[0x28223BE20](v52);
  v173 = &v158 - v54;
  v55 = *(v1 + 32);
  v207 = *(v1 + 24);
  v208 = v1;
  sub_21CA579EC();
  v215 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6640, &qword_21CBC15E8);
  sub_21CA56404();
  sub_21CB83F14();
  KeyPath = swift_getKeyPath();
  v57 = &v26[*(v23 + 36)];
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v59 = v189;
  v60 = v22;
  v61 = v22;
  v62 = v191;
  (*(v189 + 104))(v61, *MEMORY[0x277CDF0D0], v191);
  sub_21CB84F74();
  (*(v59 + 8))(v60, v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v63 - 8) + 56))(v57 + v58, 0, 1, v63);
  *v57 = KeyPath;
  v64 = v193;
  v65 = v196;
  v66 = v204;
  (*(v193 + 104))(v196, *MEMORY[0x277CDDDC0], v204);
  v67 = sub_21CA564B4();
  v68 = v190;
  sub_21CB84684();
  (*(v64 + 8))(v65, v66);
  sub_21C6EA794(v26, &qword_27CDF65E0, &qword_21CBC1588);
  v69 = v55;
  *&v223 = sub_21CA5661C(v55);
  *(&v223 + 1) = v70;
  *&v216 = v23;
  *(&v216 + 1) = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = sub_21C71F3FC();
  v73 = v194;
  v74 = v192;
  v75 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  (v197[1])(v68, v74);
  v213 = v69;
  v76 = *(sub_21CA57B50() + 16);

  *&v223 = v74;
  *(&v223 + 1) = v75;
  *&v224 = OpaqueTypeConformance2;
  *(&v224 + 1) = v72;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = v195;
  v79 = v198;
  sub_21CB84644();
  (*(v205 + 8))(v73, v79);
  v80 = v202;
  sub_21CB81014();
  v81 = sub_21CB81004();
  v83 = v82;
  v84 = *(v206 + 8);
  v206 += 8;
  v196 = v84;
  (v84)(v80, v203);
  *&v216 = v81;
  *(&v216 + 1) = v83;
  v85 = type metadata accessor for PMMoveAccountsListModel(0);
  v86 = sub_21C706578(&qword_27CDF65C8, type metadata accessor for PMMoveAccountsListModel);
  v204 = v85;
  sub_21CB82684();
  swift_getKeyPath();
  v205 = v86;
  sub_21CB82694();

  v214 = v208;
  v218 = v79;
  v219 = v77;
  v87 = swift_getOpaqueTypeConformance2();
  v198 = v72;
  v197 = v87;
  v88 = v200;
  sub_21CB84754();

  (*(v210 + 8))(v78, v88);
  result = sub_21CA57B50();
  v90 = result;
  v91 = *(result + 16);
  if (v91)
  {
    v92 = 0;
    v210 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords;
    v93 = MEMORY[0x277D84F90];
    v94 = v209;
    while (v92 < *(v90 + 16))
    {
      v95 = (*(v212 + 80) + 32) & ~*(v212 + 80);
      v96 = v212[9];
      sub_21CA57350(v90 + v95 + v96 * v92, v94, type metadata accessor for PMAccount);
      v97 = *(v213 + v210);

      v98 = sub_21C8FFBD8(v94, v97);

      if (v98)
      {
        sub_21CA573C8(v94, v211, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v223 = v93;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v93 + 16) + 1, 1);
          v93 = v223;
        }

        v101 = *(v93 + 16);
        v100 = *(v93 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_21C7B0C4C(v100 > 1, v101 + 1, 1);
          v93 = v223;
        }

        *(v93 + 16) = v101 + 1;
        result = sub_21CA573C8(v211, v93 + v95 + v101 * v96, type metadata accessor for PMAccount);
        v94 = v209;
      }

      else
      {
        result = sub_21C7196C0(v94, type metadata accessor for PMAccount);
      }

      if (v91 == ++v92)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v93 = MEMORY[0x277D84F90];
LABEL_13:

    v102 = *(v93 + 16);

    v103 = *(sub_21CA57B50() + 16);

    v104 = v202;
    sub_21CB81014();
    v105 = sub_21CB81004();
    v107 = v106;
    (v196)(v104, v203);
    *&v223 = v105;
    *(&v223 + 1) = v107;
    v108 = MEMORY[0x277D837D0];
    v109 = v198;
    v110 = sub_21CB84054();
    v209 = v111;
    v210 = v110;
    LODWORD(v203) = v112;
    v206 = v113;
    sub_21CB82684();
    swift_getKeyPath();
    sub_21CB82694();

    v202 = &v158;
    v195 = v216;
    LODWORD(v196) = v217;
    MEMORY[0x28223BE20](v114);
    MEMORY[0x28223BE20](v115);
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6688, &qword_21CBC1688);
    *&v223 = v200;
    *(&v223 + 1) = v108;
    *&v224 = MEMORY[0x277CE1428];
    *(&v224 + 1) = MEMORY[0x277CE0BD8];
    *&v225 = v197;
    *(&v225 + 1) = v109;
    *&v226 = MEMORY[0x277CE1410];
    *(&v226 + 1) = MEMORY[0x277CE0BC8];
    v117 = swift_getOpaqueTypeConformance2();
    v211 = sub_21C6EADEC(&qword_27CDF6690, &qword_27CDF6688, &qword_21CBC1688);
    v212 = v117;
    v118 = v116;
    v119 = v159;
    v120 = v203;
    v122 = v209;
    v121 = v210;
    v123 = v201;
    sub_21CB84744();

    sub_21C74A72C(v121, v122, v120 & 1);

    (*(v158 + 8))(v123, v119);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v124 = *(&v223 + 1);
    if (*(&v223 + 1))
    {
      v125 = v223;

      sub_21CA567E0(v125, v124);
    }

    else
    {
      v124 = 0xE100000000000000;
      v125 = 63;
    }

    v196 = v124;
    v221 = v125;
    v222 = v124;
    sub_21CB82684();
    swift_getKeyPath();
    sub_21CB82694();

    v209 = v218;
    v206 = v219;
    LODWORD(v210) = v220;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v197 = &v158;
    v202 = *(&v223 + 1);
    v203 = v223;
    v200 = *(&v224 + 1);
    v201 = v224;
    v216 = v223;
    v217 = v224;
    MEMORY[0x28223BE20](v126);
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
    v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6698, &qword_21CBC1708);
    *&v223 = v119;
    *(&v223 + 1) = v118;
    *&v224 = MEMORY[0x277CE0BD8];
    *(&v224 + 1) = v212;
    *&v225 = v211;
    *(&v225 + 1) = MEMORY[0x277CE0BC8];
    v127 = swift_getOpaqueTypeConformance2();
    v128 = sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
    v129 = v198;
    v130 = v161;
    v131 = v162;
    v132 = v199;
    sub_21CB84714();

    sub_21CA567E0(v203, v202);

    v133 = (*(v160 + 8))(v132, v130);
    v212 = &v158;
    MEMORY[0x28223BE20](v133);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED918, &qword_21CBC1710);
    *&v223 = v130;
    *(&v223 + 1) = MEMORY[0x277D837D0];
    *&v224 = v194;
    *(&v224 + 1) = MEMORY[0x277CE0BD8];
    *&v225 = v195;
    *(&v225 + 1) = v127;
    *&v226 = v129;
    *(&v226 + 1) = v128;
    *&v227 = MEMORY[0x277CE0BC8];
    v135 = swift_getOpaqueTypeConformance2();
    v136 = sub_21C6EADEC(&qword_27CDED910, &qword_27CDED918, &qword_21CBC1710);
    v138 = v164;
    v137 = v165;
    sub_21CB84894();
    (*(v163 + 8))(v131, v138);
    v139 = v179;
    sub_21CB85294();
    *&v223 = v138;
    *(&v223 + 1) = v134;
    *&v224 = v135;
    *(&v224 + 1) = v136;
    swift_getOpaqueTypeConformance2();
    sub_21C706578(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    v140 = v166;
    v141 = v168;
    v142 = v181;
    sub_21CB849C4();
    (*(v180 + 8))(v139, v142);
    (*(v167 + 8))(v137, v141);
    sub_21CB85214();
    sub_21CB82AC4();
    v143 = v171;
    (*(v169 + 32))(v171, v140, v170);
    v144 = v174;
    v145 = (v143 + *(v174 + 36));
    v146 = v228;
    v145[4] = v227;
    v145[5] = v146;
    v145[6] = v229;
    v147 = v224;
    *v145 = v223;
    v145[1] = v147;
    v148 = v226;
    v145[2] = v225;
    v145[3] = v148;
    sub_21CB82684();
    swift_getKeyPath();
    sub_21CB82694();

    v149 = v182;
    sub_21CB83574();
    v157 = sub_21CA56834();
    v150 = v172;
    sub_21CB84114();

    (*(v183 + 8))(v149, v184);
    sub_21C6EA794(v143, &qword_27CDF6628, &qword_21CBC15D0);
    v151 = v185;
    sub_21CB83C64();
    v216 = __PAIR128__(v157, v144);
    v152 = swift_getOpaqueTypeConformance2();
    v153 = v173;
    v154 = v178;
    sub_21CB846A4();
    (*(v186 + 8))(v151, v187);
    (*(v175 + 8))(v150, v154);
    *&v216 = v154;
    *(&v216 + 1) = v152;
    v155 = swift_getOpaqueTypeConformance2();
    v156 = v177;
    MEMORY[0x21CF14040](1, v177, v155);
    return (*(v176 + 8))(v153, v156);
  }

  return result;
}

uint64_t sub_21CA52710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for PMAccount(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 32);
  v18 = sub_21CA57B50();
  v42 = MEMORY[0x277D84F90];
  v19 = *(v18 + 16);
  if (v19)
  {
    v39 = v17;
    v40 = a2;
    v20 = *(v13 + 80);
    v41 = v18;
    v21 = v18 + ((v20 + 32) & ~v20);
    v22 = *(v12 + 24);
    v23 = *(v13 + 72);
    v24 = MEMORY[0x277D84F90];
    do
    {
      sub_21CA57350(v21, v16, type metadata accessor for PMAccount);
      sub_21CA57350(&v16[v22], v7, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7196C0(v7, type metadata accessor for PMAccount.Storage);
        sub_21C7196C0(v16, type metadata accessor for PMAccount);
      }

      else
      {
        v25 = *v7;
        v26 = sub_21C7196C0(v16, type metadata accessor for PMAccount);
        MEMORY[0x21CF15300](v26);
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
        v24 = v42;
      }

      v21 += v23;
      --v19;
    }

    while (v19);

    v17 = v39;
    a2 = v40;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  sub_21C6EDBAC(v17 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v11, &qword_27CDF7670, &unk_21CBAA8F0);
  v27 = type metadata accessor for PMSharingGroup();
  if ((*(*(v27 - 8) + 48))(v11, 1, v27) == 1)
  {
    sub_21C6EA794(v11, &qword_27CDF7670, &unk_21CBAA8F0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v30 = &v11[*(v27 + 20)];
    v28 = *v30;
    v29 = v30[1];

    sub_21C7196C0(v11, type metadata accessor for PMSharingGroup);
  }

  v31 = sub_21C7C1BFC(v24, v28, v29);
  v33 = v32;

  v42 = v31;
  v43 = v33;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v35;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v37;
  return result;
}

uint64_t sub_21CA52B18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v68 = sub_21CB82A04();
  v66 = *(v68 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v57 - v8;
  v10 = sub_21CB81024();
  v60 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v16 = *(v15 - 8);
  v62 = v15;
  v63 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE48, &qword_21CBA3780);
  v65 = *(v67 - 8);
  v22 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v57 - v25;
  sub_21CB81014();
  v27 = sub_21CB81004();
  v29 = v28;
  v30 = *(v11 + 8);
  v59 = v11 + 8;
  v61 = v30;
  v30(v14, v10);
  *&v75 = v27;
  *(&v75 + 1) = v29;
  sub_21CB81EF4();
  v31 = sub_21CB81F14();
  (*(*(v31 - 8) + 56))(v9, 0, 1, v31);
  sub_21C71F3FC();
  v32 = v21;
  sub_21CB84DC4();
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v33 = v26;
  v58 = v26;
  v34 = v62;
  sub_21CB84334();
  (*(v66 + 8))(v5, v68);
  v35 = v63;
  v66 = *(v63 + 8);
  v68 = v63 + 8;
  v36 = v34;
  (v66)(v32, v34);
  sub_21CB81014();
  v37 = sub_21CB81004();
  v39 = v38;
  v61(v14, v60);
  v72 = v37;
  v73 = v39;
  v40 = *(a1 + 16);
  v41 = *(a1 + 24);
  v74 = *(a1 + 40);
  v75 = v41;
  v42 = swift_allocObject();
  v43 = *(a1 + 16);
  *(v42 + 16) = *a1;
  *(v42 + 32) = v43;
  *(v42 + 48) = *(a1 + 32);
  *(v42 + 64) = *(a1 + 48);

  sub_21C6EDBAC(&v75, v71, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v74, v71, &qword_27CDF66B0, &qword_21CBC1750);
  v44 = v32;
  v57 = v32;
  sub_21CB84DE4();
  v46 = v64;
  v45 = v65;
  v47 = *(v65 + 16);
  v48 = v33;
  v49 = v67;
  v47(v64, v48, v67);
  v50 = *(v35 + 16);
  v51 = v69;
  v50(v69, v44, v36);
  v52 = v70;
  v47(v70, v46, v49);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66B8, &qword_21CBC17B8);
  v50(&v52[*(v53 + 48)], v51, v36);
  v54 = v66;
  (v66)(v57, v36);
  v55 = *(v45 + 8);
  v55(v58, v49);
  v54(v51, v36);
  return (v55)(v46, v49);
}

uint64_t sub_21CA53184@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = sub_21CB81024();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v35 - v11);
  v42 = *(a1 + 32);
  result = sub_21CA57B50();
  v14 = result;
  v15 = *(result + 16);
  if (v15)
  {
    v16 = 0;
    v40 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords;
    v17 = MEMORY[0x277D84F90];
    while (v16 < *(v14 + 16))
    {
      v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v19 = *(v7 + 72);
      sub_21CA57350(v14 + v18 + v19 * v16, v12, type metadata accessor for PMAccount);
      v20 = *(v42 + v40);

      v21 = sub_21C8FFBD8(v12, v20);

      if (v21)
      {
        sub_21CA573C8(v12, v41, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v17 + 16) + 1, 1);
          v17 = v43;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_21C7B0C4C(v23 > 1, v24 + 1, 1);
          v17 = v43;
        }

        *(v17 + 16) = v24 + 1;
        result = sub_21CA573C8(v41, v17 + v18 + v24 * v19, type metadata accessor for PMAccount);
      }

      else
      {
        result = sub_21C7196C0(v12, type metadata accessor for PMAccount);
      }

      if (v15 == ++v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_13:

    v25 = *(v17 + 16);

    v26 = *(sub_21CA57B50() + 16);

    v27 = v36;
    sub_21CB81014();
    v28 = sub_21CB81004();
    v30 = v29;
    (*(v37 + 8))(v27, v38);
    v43 = v28;
    v44 = v30;
    sub_21C71F3FC();
    result = sub_21CB84054();
    v31 = v39;
    *v39 = result;
    v31[1] = v32;
    *(v31 + 16) = v33 & 1;
    v31[3] = v34;
  }

  return result;
}

uint64_t sub_21CA5355C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v44 - v5;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v49 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = v44 - v16;
  MEMORY[0x28223BE20](v17);
  v47 = v44 - v18;
  MEMORY[0x28223BE20](v19);
  v45 = v44 - v20;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  v24 = *(v8 + 8);
  v44[1] = v8 + 8;
  v24(v11, v7);
  *&v55 = v21;
  *(&v55 + 1) = v23;
  sub_21CB81EF4();
  v25 = sub_21CB81F14();
  (*(*(v25 - 8) + 56))(v6, 0, 1, v25);
  sub_21C71F3FC();
  sub_21CB84DC4();
  sub_21CB81014();
  v26 = sub_21CB81004();
  v28 = v27;
  v24(v11, v7);
  v52 = v26;
  v53 = v28;
  v29 = *(a1 + 16);
  v30 = *(a1 + 24);
  v54 = *(a1 + 40);
  v55 = v30;
  v31 = swift_allocObject();
  v32 = *(a1 + 16);
  *(v31 + 16) = *a1;
  *(v31 + 32) = v32;
  *(v31 + 48) = *(a1 + 32);
  *(v31 + 64) = *(a1 + 48);

  sub_21C6EDBAC(&v55, v51, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v54, v51, &qword_27CDF66B0, &qword_21CBC1750);
  v33 = v47;
  sub_21CB84DE4();
  v35 = v45;
  v34 = v46;
  v36 = *(v46 + 16);
  v37 = v48;
  v36(v48, v45, v12);
  v38 = v49;
  v39 = v33;
  v36(v49, v33, v12);
  v40 = v50;
  v36(v50, v37, v12);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v36(&v40[*(v41 + 48)], v38, v12);
  v42 = *(v34 + 8);
  v42(v39, v12);
  v42(v35, v12);
  v42(v38, v12);
  return (v42)(v37, v12);
}

uint64_t sub_21CA53A24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v5, v12);

  v7 = sub_21CA57B50();
  v8 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;

  sub_21C835C98(v7, v4 + v8, a2, v4);

  v10 = *(a1 + 16);
  return (*(a1 + 8))(v9);
}

uint64_t sub_21CA53B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_21C71F3FC();

  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21CA53BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA78, &qword_21CBC1740);
  v3 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v5 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - v8;
  v10 = sub_21CB83604();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA88, &qword_21CBAEF10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  sub_21CB835D4();
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C844588();
  sub_21CB82194();
  sub_21CB835C4();
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB82194();
  v17 = *(v23 + 48);
  (*(v13 + 16))(v5, v16, v12);
  v18 = &v5[v17];
  v19 = v22;
  (*(v6 + 16))(v18, v9, v22);
  sub_21CB83394();
  (*(v6 + 8))(v9, v19);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21CA53EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v24[-v10];
  sub_21CB81014();
  sub_21CB81014();
  v12 = sub_21CB80FF4();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v11, v4);
  v25 = v12;
  v26 = v14;
  v16 = *(a1 + 16);
  v28 = *(a1 + 24);
  v27 = *(a1 + 40);
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = *(a1 + 48);

  sub_21C6EDBAC(&v28, v24, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v27, v24, &qword_27CDF66B0, &qword_21CBC1750);
  sub_21C71F3FC();
  sub_21CB84DE4();
  v19 = *(sub_21CA57B50() + 16);

  LOBYTE(v16) = v19 == 0;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v23 = (a2 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_21C735744;
  v23[2] = v21;
  return result;
}

uint64_t sub_21CA5417C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_21CA58008();
  v4 = *(a1 + 16);
  return (*(a1 + 8))(v3);
}

uint64_t sub_21CA541F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25[-v4];
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v25[-v12];
  if (*a1)
  {
    sub_21CB81014();
    v14 = sub_21CB81004();
    v16 = v15;
    (*(v7 + 8))(v13, v6);
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v14 = sub_21CB80FF4();
    v16 = v17;
    v18 = *(v7 + 8);
    v18(v10, v6);
    v18(v13, v6);
  }

  v26 = v14;
  v27 = v16;
  sub_21CB81EF4();
  v19 = sub_21CB81F14();
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v28 = *(a1 + 40);
  v29 = v21;
  v22 = swift_allocObject();
  v23 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = *(a1 + 48);

  sub_21C6EDBAC(&v29, v25, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v28, v25, &qword_27CDF66B0, &qword_21CBC1750);
  sub_21C71F3FC();
  return sub_21CB84DC4();
}

uint64_t sub_21CA544FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66C0, &qword_21CBC1800);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66C8, &qword_21CBC1808);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66D0, &qword_21CBC1810);
  v54 = *(v49 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66D8, &qword_21CBC1818);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66E0, &qword_21CBC1820);
  v52 = *(v57 - 8);
  v22 = *(v52 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - v25;
  sub_21CA54AA0(a1, v21);
  sub_21CA56D28();
  sub_21CB85034();
  v59 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6710, &qword_21CBC1838);
  sub_21CA56F58();
  v27 = v17;
  sub_21CB85054();
  v28 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v29 = *(v60 + 16);

  if (v29)
  {
    v30 = v48;
    sub_21CA54E8C();
    (*(v4 + 32))(v12, v30, v3);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v4 + 56))(v12, v31, 1, v3);
  v32 = v52;
  v33 = *(v52 + 16);
  v34 = v56;
  v51 = v26;
  v33(v56, v26, v57);
  v35 = v53;
  v36 = v54;
  v48 = *(v54 + 16);
  v50 = v27;
  v37 = v27;
  v38 = v49;
  (v48)(v53, v37, v49);
  sub_21C6EDBAC(v12, v58, &qword_27CDF66C8, &qword_21CBC1808);
  v39 = v55;
  v40 = v34;
  v41 = v57;
  v33(v55, v40, v57);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6720, &qword_21CBC1898);
  (v48)(&v39[*(v42 + 48)], v35, v38);
  v43 = v58;
  sub_21C6EDBAC(v58, &v39[*(v42 + 64)], &qword_27CDF66C8, &qword_21CBC1808);
  sub_21C6EA794(v12, &qword_27CDF66C8, &qword_21CBC1808);
  v44 = *(v36 + 8);
  v44(v50, v38);
  v45 = *(v32 + 8);
  v45(v51, v41);
  sub_21C6EA794(v43, &qword_27CDF66C8, &qword_21CBC1808);
  v44(v35, v38);
  return (v45)(v56, v41);
}

uint64_t sub_21CA54AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB830D4();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21CA57430(*(a1 + 32));
  v42 = v7;
  sub_21C71F3FC();
  v8 = sub_21CB84054();
  v10 = v9;
  v12 = v11;
  sub_21CB83EB4();
  v13 = sub_21CB84024();
  v15 = v14;
  v17 = v16;

  sub_21C74A72C(v8, v10, v12 & 1);

  v41 = sub_21CB84B34();
  v18 = sub_21CB83FC4();
  v36 = v19;
  v37 = v18;
  v21 = v20;
  v35 = v22;
  sub_21C74A72C(v13, v15, v17 & 1);

  v23 = sub_21CB83CD4();
  LOBYTE(v13) = v21 & 1;
  v44 = v21 & 1;
  v43 = 1;
  v41 = sub_21CB84AB4();
  v24 = sub_21CB84F14();
  v25 = v38;
  sub_21CB830A4();
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66F8, &qword_21CBC1828) + 36);
  v28 = v39;
  v27 = v40;
  (*(v39 + 16))(a2 + v26, v25, v40);
  v29 = *(v28 + 56);
  v29((a2 + v26), 0, 1, v27);
  v30 = v36;
  *a2 = v37;
  *(a2 + 8) = v30;
  *(a2 + 16) = v13;
  *(a2 + 24) = v35;
  *(a2 + 32) = v23;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  *(a2 + 80) = v24;
  KeyPath = swift_getKeyPath();
  v32 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66D8, &qword_21CBC1818) + 36));
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v28 + 32))(v32 + v33, v25, v27);
  result = v29(v32 + v33, 0, 1, v27);
  *v32 = KeyPath;
  return result;
}

uint64_t sub_21CA54DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v5 = *(*&v13[0] + 16);

  if (v5)
  {
    v6 = 0;
    result = 0;
    v8 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  else
  {
    sub_21CA55FB8(a1, v13);
    v11 = v13[0];
    v12 = v13[1];
    v6 = v14;
    v8 = sub_21CB84B34();
    result = swift_getKeyPath();
    v9 = v11;
    v10 = v12;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = result;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_21CA54E8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6728, &qword_21CBC18A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-v4 - 8];
  v15 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v13 = v14;
  swift_getKeyPath();
  v6 = *(v0 + 16);
  v14 = *(v0 + 40);
  v7 = swift_allocObject();
  v8 = *(v0 + 16);
  *(v7 + 16) = *v0;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v0 + 32);
  *(v7 + 64) = *(v0 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21CA56FDC;
  *(v9 + 24) = v7;

  sub_21C6EDBAC(&v15, v12, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v14, v12, &qword_27CDF66B0, &qword_21CBC1750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6730, &qword_21CBC18C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6738, &qword_21CBC18D0);
  sub_21C6EADEC(&qword_27CDF6740, &qword_27CDF6730, &qword_21CBC18C8);
  sub_21C706578(&qword_27CDF6748, type metadata accessor for PMMoveAccountsListModel.Section);
  sub_21CA57040();
  sub_21CB84FD4();
  sub_21CA572CC();
  sub_21CB845F4();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_21CA55178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMMoveAccountsListModel.Section(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA57350(a1, v14, type metadata accessor for PMMoveAccountsListModel.Section);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    if (qword_27CDEA498 != -1)
    {
      swift_once();
    }

    v16 = qword_27CE18748;
    v15 = qword_27CE18750;
  }

  else
  {
    sub_21CA573C8(v14, v10, type metadata accessor for PMSharingGroup);
    v18 = &v10[*(v6 + 20)];
    v16 = *v18;
    v15 = v18[1];

    v17 = sub_21C7196C0(v10, type metadata accessor for PMSharingGroup);
  }

  v20[0] = v16;
  v20[1] = v15;
  MEMORY[0x28223BE20](v17);
  v20[-2] = a2;
  v20[-1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6760, &qword_21CBC18D8);
  sub_21CA570D8();
  sub_21C71F3FC();
  return sub_21CB85014();
}

uint64_t sub_21CA553E8(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = v4;
  v5 = swift_allocObject();
  v6 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = *(a2 + 48);

  sub_21C6EDBAC(&v11, v8, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v10, v8, &qword_27CDF66B0, &qword_21CBC1750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6770, L"V\a_");
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21CA5715C();
  sub_21C706578(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  return sub_21CB84FF4();
}

uint64_t sub_21CA55594@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6790, &unk_21CBC18F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6780, &qword_21CBC18E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  *v9 = sub_21CB83074();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF67A0, &qword_21CBC1900);
  sub_21CA5575C(a1, a2, &v9[*(v14 + 44)]);
  v15 = *(a2 + 32);
  if (sub_21CA5AF8C(a1) & 1) != 0 || (sub_21CA5B2E0(a1))
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.8;
  }

  sub_21C716934(v9, v13, &qword_27CDF6790, &unk_21CBC18F0);
  *&v13[*(v10 + 36)] = v16;
  if (sub_21CA5AF8C(a1))
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_21CA5B2E0(a1);
  }

  sub_21C716934(v13, a3, &qword_27CDF6780, &qword_21CBC18E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6770, L"V\a_");
  *(a3 + *(result + 36)) = v17 & 1;
  return result;
}

uint64_t sub_21CA5575C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v70 = sub_21CB81024();
  v69 = *(v70 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF67A8, &qword_21CBC1908);
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF67B0, &unk_21CBC1910);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v79 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  v16 = type metadata accessor for PMAccountRow();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  v20 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v76 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v67 - v26;
  v75 = a1;
  sub_21CA57350(a1, v19, type metadata accessor for PMAccount);
  v28 = *(a2 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v73 = v28;
  sub_21CB81DB4();

  v29 = *(&v84 + 1);
  v72 = v84;
  v30 = sub_21CB837E4();
  v31 = MEMORY[0x277CE04E8];
  v32 = &v19[v16[7]];
  *(v32 + 3) = MEMORY[0x277CE04F8];
  *(v32 + 4) = v31;
  *v32 = v30;
  v33 = &v19[v16[9]];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v84);

  type metadata accessor for PMGroupsStore();
  sub_21C706578(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v35 = sub_21CB82674();
  v37 = v36;

  *v33 = v35;
  v33[1] = v37;
  v38 = &v19[v16[10]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = &v19[v16[11]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = v16[12];
  *&v19[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v41 = v16[13];
  *&v19[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v42 = v16[14];
  *&v19[v42] = swift_getKeyPath();
  v43 = &v19[v16[5]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &v19[v16[6]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v45 = &v19[v16[8]];
  *v45 = v72;
  *(v45 + 1) = v29;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85224();
  v46 = 1;
  sub_21CB82AC4();
  sub_21CA573C8(v19, v24, type metadata accessor for PMAccountRow);
  v47 = &v24[*(v74 + 36)];
  v48 = v89;
  *(v47 + 4) = v88;
  *(v47 + 5) = v48;
  *(v47 + 6) = v90;
  v49 = v85;
  *v47 = v84;
  *(v47 + 1) = v49;
  v50 = v87;
  *(v47 + 2) = v86;
  *(v47 + 3) = v50;
  sub_21C7EC4B8(v24, v27);
  v51 = *(v73 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords);

  v52 = sub_21C8FFBD8(v75, v51);

  v53 = v78;
  if (v52)
  {
    v83 = sub_21CB84BB4();
    v54 = v68;
    sub_21CB81014();
    v55 = sub_21CB81004();
    v57 = v56;
    (*(v69 + 8))(v54, v70);
    v81 = v55;
    v82 = v57;
    sub_21C71F3FC();
    v58 = v71;
    sub_21CB846E4();

    v59 = sub_21CB84AF4();
    v60 = swift_getKeyPath();
    v61 = (v58 + *(v53 + 36));
    *v61 = v60;
    v61[1] = v59;
    sub_21C716934(v58, v15, &qword_27CDF67A8, &qword_21CBC1908);
    v46 = 0;
  }

  (*(v77 + 56))(v15, v46, 1, v53);
  v62 = v76;
  sub_21C6EDBAC(v27, v76, &qword_27CDEBC70, &qword_21CBAD0C0);
  v63 = v79;
  sub_21C6EDBAC(v15, v79, &qword_27CDF67B0, &unk_21CBC1910);
  v64 = v80;
  sub_21C6EDBAC(v62, v80, &qword_27CDEBC70, &qword_21CBAD0C0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF67B8, &qword_21CBC1A28);
  sub_21C6EDBAC(v63, v64 + *(v65 + 48), &qword_27CDF67B0, &unk_21CBC1910);
  sub_21C6EA794(v15, &qword_27CDF67B0, &unk_21CBC1910);
  sub_21C6EA794(v27, &qword_27CDEBC70, &qword_21CBAD0C0);
  sub_21C6EA794(v63, &qword_27CDF67B0, &unk_21CBC1910);
  return sub_21C6EA794(v62, &qword_27CDEBC70, &qword_21CBAD0C0);
}

double sub_21CA55FB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = v34;

  v11 = HIBYTE(*(&v10 + 1)) & 0xFLL;
  if ((*(&v10 + 1) & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v12 = (v5 + 8);
  if (v11)
  {
    sub_21CB81014();
    v13 = sub_21CB81004();
    v15 = v14;
    (*v12)(v8, v4);
    *&v34 = v13;
    *(&v34 + 1) = v15;
    sub_21C71F3FC();
    v29 = sub_21CB84054();
    v30 = v17;
    v31 = v16 & 1;
    v32 = v18;
    v33 = 1;
  }

  else
  {
    sub_21CB81014();
    v19 = sub_21CB81004();
    v21 = v20;
    (*v12)(v8, v4);
    *&v34 = v19;
    *(&v34 + 1) = v21;
    sub_21C71F3FC();
    v29 = sub_21CB84054();
    v30 = v22;
    v31 = v23 & 1;
    v32 = v24;
    v33 = 0;
  }

  sub_21CB83494();
  result = *&v34;
  v26 = v35;
  v27 = v36;
  *a2 = v34;
  *(a2 + 16) = v26;
  *(a2 + 32) = v27;
  return result;
}

uint64_t sub_21CA56218@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_21CA50C44(a1);
}

double sub_21CA5625C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21CA562DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CA56CB4(v2, v3);

  return sub_21CB81DC4();
}

unint64_t sub_21CA5638C()
{
  result = qword_27CDF65D8;
  if (!qword_27CDF65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF65D8);
  }

  return result;
}

unint64_t sub_21CA56404()
{
  result = qword_27CDF6648;
  if (!qword_27CDF6648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6640, &qword_21CBC15E8);
    sub_21C6EADEC(&qword_27CDF6650, &qword_27CDF6658, &qword_21CBC15F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6648);
  }

  return result;
}

unint64_t sub_21CA564B4()
{
  result = qword_27CDF6660;
  if (!qword_27CDF6660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF65E0, &qword_21CBC1588);
    sub_21CA5656C();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6660);
  }

  return result;
}

unint64_t sub_21CA5656C()
{
  result = qword_27CDF6668;
  if (!qword_27CDF6668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6670, &qword_21CBC1628);
    sub_21C6EADEC(&qword_27CDF6678, &qword_27CDF6680, &qword_21CBC1630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6668);
  }

  return result;
}

uint64_t sub_21CA5661C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = *(sub_21CA57B50() + 16);

  if (v6)
  {
    v7 = *(sub_21CA57B50() + 16);

    return sub_21C7C56AC(v7);
  }

  else
  {
    sub_21C6EDBAC(a1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v5, &qword_27CDF7670, &unk_21CBAA8F0);
    v9 = type metadata accessor for PMSharingGroup();
    if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
    {
      sub_21C6EA794(v5, &qword_27CDF7670, &unk_21CBAA8F0);
      if (qword_27CDEA4A0 != -1)
      {
        swift_once();
      }

      v10 = qword_27CE18758;

      return v10;
    }

    else
    {
      v11 = &v5[*(v9 + 20)];
      v13 = *v11;
      v12 = *(v11 + 1);

      sub_21C7196C0(v5, type metadata accessor for PMSharingGroup);
      return v13;
    }
  }
}

uint64_t sub_21CA567E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21CA56834()
{
  result = qword_27CDF66A0;
  if (!qword_27CDF66A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6628, &qword_21CBC15D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6618, &qword_21CBC15C0);
    sub_21CB829D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6610, &qword_21CBC15B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED918, &qword_21CBC1710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6608, &qword_21CBC15B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6698, &qword_21CBC1708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6600, &qword_21CBC15A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6688, &qword_21CBC1688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF65F8, &qword_21CBC15A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF65F0, &qword_21CBC1598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF65E8, &qword_21CBC1590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF65E0, &qword_21CBC1588);
    sub_21CA564B4();
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF6690, &qword_27CDF6688, &qword_21CBC1688);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED910, &qword_27CDED918, &qword_21CBC1710);
    swift_getOpaqueTypeConformance2();
    sub_21C706578(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF66A0);
  }

  return result;
}

uint64_t sub_21CA56CB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21CA56D28()
{
  result = qword_27CDF66E8;
  if (!qword_27CDF66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF66D8, &qword_21CBC1818);
    sub_21CA56DE0();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF66E8);
  }

  return result;
}

unint64_t sub_21CA56DE0()
{
  result = qword_27CDF66F0;
  if (!qword_27CDF66F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF66F8, &qword_21CBC1828);
    sub_21CA56E98();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF66F0);
  }

  return result;
}

unint64_t sub_21CA56E98()
{
  result = qword_27CDF6700;
  if (!qword_27CDF6700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6708, &qword_21CBC1830);
    sub_21C74AA20();
    sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6700);
  }

  return result;
}

unint64_t sub_21CA56F58()
{
  result = qword_27CDF6718;
  if (!qword_27CDF6718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6710, &qword_21CBC1838);
    sub_21C80FB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6718);
  }

  return result;
}

uint64_t sub_21CA56FE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB0A0, &qword_21CBA0E40);
  return v4(a1, *(a1 + *(v5 + 48)));
}

unint64_t sub_21CA57040()
{
  result = qword_27CDF6750;
  if (!qword_27CDF6750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6738, &qword_21CBC18D0);
    sub_21CA570D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6750);
  }

  return result;
}

unint64_t sub_21CA570D8()
{
  result = qword_27CDF6758;
  if (!qword_27CDF6758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6760, &qword_21CBC18D8);
    sub_21CA5715C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6758);
  }

  return result;
}

unint64_t sub_21CA5715C()
{
  result = qword_27CDF6768;
  if (!qword_27CDF6768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6770, L"V\a_");
    sub_21CA57214();
    sub_21C6EADEC(&qword_27CDF4C98, &qword_27CDF4C90, &unk_21CBBC650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6768);
  }

  return result;
}

unint64_t sub_21CA57214()
{
  result = qword_27CDF6778;
  if (!qword_27CDF6778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6780, &qword_21CBC18E8);
    sub_21C6EADEC(&qword_27CDF6788, &qword_27CDF6790, &unk_21CBC18F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6778);
  }

  return result;
}

unint64_t sub_21CA572CC()
{
  result = qword_27CDF6798;
  if (!qword_27CDF6798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6728, &qword_21CBC18A0);
    sub_21CA57040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6798);
  }

  return result;
}

uint64_t sub_21CA57350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA573C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA57430(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for PMSharingGroup();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6EDBAC(a1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v10, &qword_27CDF7670, &unk_21CBAA8F0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21C6EA794(v10, &qword_27CDF7670, &unk_21CBAA8F0);
    sub_21CB81014();
    v16 = sub_21CB81004();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_21CA573C8(v10, v15, type metadata accessor for PMSharingGroup);
    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21CBA0690;
    v18 = &v15[*(v11 + 20)];
    v20 = *v18;
    v19 = *(v18 + 1);
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_21C7C0050();
    *(v17 + 32) = v20;
    *(v17 + 40) = v19;

    v16 = sub_21CB85594();

    sub_21C7196C0(v15, type metadata accessor for PMSharingGroup);
  }

  return v16;
}

uint64_t sub_21CA57784(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_21C7B13C0(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_21CB85F24();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v9;
  v30 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = v12[1];
    v14 = (*(v3 + 56) + 16 * v7);
    v32 = *v14;
    v33 = *v12;
    v15 = v3;
    v16 = v14[1];
    v17 = *(v34 + 16);
    v18 = *(v34 + 24);

    if (v17 >= v18 >> 1)
    {
      result = sub_21C7B13C0((v18 > 1), v17 + 1, 1);
    }

    *(v34 + 16) = v17 + 1;
    v19 = (v34 + 32 * v17);
    v19[4] = v32;
    v19[5] = v16;
    v19[6] = v33;
    v19[7] = v13;
    v10 = 1 << *(v15 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v15;
    v4 = v30;
    v20 = *(v30 + 8 * v11);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v29;
    if (v29 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v10 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v24 = (v27 + 8 * v11);
      while (v23 < (v10 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_21C7AE858(v7, v29, 0);
          v10 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_21C7AE858(v7, v29, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v10;
    if (v31 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21CA579EC()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_21CB858B4();

  v1 = sub_21CB858A4();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D85700];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v0;

  v4 = swift_allocObject();
  swift_weakInit();

  v5 = sub_21CB858A4();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD30, &unk_21CBA5590);
  sub_21CB84F64();
  return v8;
}

uint64_t sub_21CA57B50()
{
  v1 = type metadata accessor for PMAccount(0);
  v32 = *(v1 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v33 = (&v28 - v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v6 = sub_21CAFBB3C(v34);
  KeyPath = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_21CB86544();
    sub_21C7072A8(KeyPath, v34);

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_21CB81DB4();

    v9 = v34;
    v31 = *(v34 + 16);
    if (!v31)
    {
      break;
    }

    v10 = 0;
    v11 = v6 + 56;
    v30 = MEMORY[0x277D84F90];
    while (v10 < *(v9 + 16))
    {
      v12 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      KeyPath = *(v32 + 72);
      v13 = v9;
      sub_21CA60D5C(v9 + v12 + KeyPath * v10, v33, type metadata accessor for PMAccount);
      if (!*(v6 + 16))
      {
        goto LABEL_4;
      }

      v14 = *v33;
      v15 = v33[1];
      v16 = *(v6 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      v17 = sub_21CB864D4();
      v18 = -1 << *(v6 + 32);
      v19 = v17 & ~v18;
      if ((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(v6 + 48) + 16 * v19);
          v22 = *v21 == v14 && v21[1] == v15;
          if (v22 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        sub_21CA615C0(v33, v29, type metadata accessor for PMAccount);
        v23 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v23 + 16) + 1, 1);
          v23 = v35;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_21C7B0C4C(v25 > 1, v26 + 1, 1);
          v23 = v35;
        }

        *(v23 + 16) = v26 + 1;
        v30 = v23;
        sub_21CA615C0(v29, v23 + v12 + v26 * KeyPath, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_4:
        sub_21CA60500(v33, type metadata accessor for PMAccount);
      }

      ++v10;
      v9 = v13;
      if (v10 == v31)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v30 = MEMORY[0x277D84F90];
LABEL_23:

  return v30;
}

uint64_t sub_21CA57F7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA58008()
{
  v2 = v0;
  v3 = type metadata accessor for PMAccount(0);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v32 - v7);
  v9 = sub_21CA57B50();
  v34 = *(v9 + 16);
  if (v34)
  {
    v10 = 0;
    v33 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords;
    v11 = MEMORY[0x277D84F90];
    while (v10 < *(v9 + 16))
    {
      v12 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v13 = *(v40 + 72);
      sub_21CA60D5C(v9 + v12 + v13 * v10, v8, type metadata accessor for PMAccount);
      v1 = v2;
      v14 = *(v2 + v33);

      v15 = sub_21C8FFBD8(v8, v14);

      if (v15)
      {
        sub_21CA615C0(v8, v35, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v11 + 16) + 1, 1);
          v11 = v36;
        }

        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21C7B0C4C(v17 > 1, v18 + 1, 1);
          v11 = v36;
        }

        *(v11 + 16) = v18 + 1;
        sub_21CA615C0(v35, v11 + v12 + v18 * v13, type metadata accessor for PMAccount);
      }

      else
      {
        sub_21CA60500(v8, type metadata accessor for PMAccount);
      }

      ++v10;
      v2 = v1;
      if (v34 == v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_13:

  v19 = *(v11 + 16);

  if (v19)
  {
    swift_getKeyPath();
LABEL_17:
    swift_getKeyPath();
    LOBYTE(v36) = 1;

    sub_21CB81DC4();
    sub_21CA61554();
    swift_allocError();
    return swift_willThrow();
  }

  v20 = sub_21CA57B50();
  v21 = sub_21CA5CABC(v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  if (v23)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v21;
    v37 = v23;
    v38 = v25;
    v39 = v27;

    sub_21CB81DC4();
    swift_getKeyPath();
    goto LABEL_17;
  }

  v1 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v29 = qword_27CDEA4C0;

  if (v29 != -1)
  {
LABEL_21:
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v1, v36);

  v30 = sub_21CA57B50();
  v31 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;

  sub_21C835C98(v30, v2 + v31, sub_21CA56CAC, v2);
}

uint64_t sub_21CA58460()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA584D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21CA58554(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21CA58594(v2, v3);
}

uint64_t sub_21CA58594(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v6 == a1 && v7 == a2)
  {
  }

  else
  {
    v5 = sub_21CB86344();

    if ((v5 & 1) == 0)
    {
      return sub_21CA59710();
    }
  }

  return result;
}

uint64_t sub_21CA58710()
{
  v1 = v0;
  v2 = type metadata accessor for PMSharingGroup();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PMMoveAccountsListModel.Section(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CA60D5C(v1, v10, type metadata accessor for PMMoveAccountsListModel.Section);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return MEMORY[0x21CF15F90](0);
  }

  sub_21CA615C0(v10, v6, type metadata accessor for PMSharingGroup);
  MEMORY[0x21CF15F90](1);
  sub_21CB85C44();
  sub_21CA5FD88(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  v12 = &v6[v2[5]];
  v13 = *v12;
  v14 = v12[1];
  sub_21CB854C4();
  v15 = *&v6[v2[6]];
  MEMORY[0x21CF15F90](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 32);
    do
    {
      v19 = v17[2];
      v20 = *v17;
      v33 = v17[1];
      v34 = v19;
      v32 = v20;
      v21 = v17[3];
      v22 = v17[4];
      v23 = v17[6];
      v37 = v17[5];
      v38 = v23;
      v35 = v21;
      v36 = v22;
      if (*(&v20 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v32, v31);
        sub_21CB854C4();
        if (*(&v33 + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v32, v31);
        if (*(&v33 + 1))
        {
LABEL_9:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_12;
        }
      }

      sub_21CB864A4();
LABEL_12:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v24 = v38;
      v25 = BYTE2(v37);
      v26 = BYTE1(v37);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v26);
      MEMORY[0x21CF15F90](v25);
      if (v24)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v27 = *(&v38 + 1);
        if (!*(&v38 + 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_21CB864A4();
        v27 = *(&v38 + 1);
        if (!*(&v38 + 1))
        {
LABEL_16:
          sub_21CB864A4();
          goto LABEL_6;
        }
      }

      sub_21CB864A4();
      v18 = v27;
      sub_21CB85DE4();

LABEL_6:
      sub_21C7A344C(&v32);
      v17 += 7;
      --v16;
    }

    while (v16);
  }

  v28 = &v6[v2[7]];
  v29 = *v28;
  v30 = v28[1];
  sub_21CB854C4();
  return sub_21CA60500(v6, type metadata accessor for PMSharingGroup);
}

uint64_t sub_21CA58AE4()
{
  sub_21CB86484();
  sub_21CA58710();
  return sub_21CB864D4();
}

uint64_t sub_21CA58B28()
{
  sub_21CB86484();
  sub_21CA58710();
  return sub_21CB864D4();
}

uint64_t sub_21CA58B68(uint64_t a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68A0, qword_21CBC1BB0);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v40 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6898, &unk_21CBC1BA0);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v42 = &v40 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v12 = *(v41 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v41);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6890, &unk_21CBC1B90);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;
  *(v1 + v21) = swift_getKeyPath();
  v22 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__groupsStore;
  *(v1 + v22) = swift_getKeyPath();
  v23 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__autoFillQuirksManager;
  *(v1 + v23) = swift_getKeyPath();
  v24 = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_subscriptions) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords) = v24;
  v25 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__listedSections;
  v26 = MEMORY[0x277D84F90];
  *&v50 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6730, &qword_21CBC18C8);
  sub_21CB81D74();
  (*(v17 + 32))(v1 + v25, v20, v16);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsInPersonalKeychain) = v26;
  v27 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID;
  *(v1 + v27) = sub_21CB12B08(v26);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups) = v26;
  v28 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__searchText;
  *&v50 = 0;
  *(&v50 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  (*(v12 + 32))(v1 + v28, v15, v41);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_searchTask) = 0;
  v29 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__selectedAccountsNewIDToOldID;
  *&v50 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6858, &qword_21CBC1AC8);
  v30 = v42;
  sub_21CB81D74();
  (*(v43 + 32))(v1 + v29, v30, v44);
  v31 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingMoveAccountsFailureAlert;
  LOBYTE(v50) = 0;
  sub_21CB81D74();
  v32 = *(v5 + 32);
  v33 = v45;
  v32(v1 + v31, v8, v45);
  v34 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingReusedPasswordAlert;
  LOBYTE(v50) = 0;
  sub_21CB81D74();
  v32(v1 + v34, v8, v33);
  v35 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingMoveSharedAccountsAlert;
  LOBYTE(v50) = 0;
  sub_21CB81D74();
  v32(v1 + v35, v8, v33);
  v36 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__moveSharedAccountsAlertConfiguration;
  v50 = 0u;
  v51 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6868, &qword_21CBC1AD0);
  v37 = v46;
  sub_21CB81D74();
  (*(v47 + 32))(v1 + v36, v37, v48);
  v38 = v49;
  sub_21C6EDBAC(v49, v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, &qword_27CDF7670, &unk_21CBAA8F0);
  sub_21CA59104();
  sub_21C6EA794(v38, &qword_27CDF7670, &unk_21CBAA8F0);
  return v1;
}

uint64_t sub_21CA59104()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC60, &unk_21CBA00B0);
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD70, &unk_21CBA5720);
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;
  v15 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v16 = qword_27CDEA4C0;

  if (v16 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v15, v28);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
  sub_21CB81E04();

  (*(v10 + 8))(v13, v9);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v17 = *(v1 + v14);

  sub_21CB86544();
  sub_21C7072A8(v17, v28);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDECD80, &qword_27CDECD70, &unk_21CBA5720);
  v18 = v24;
  sub_21CB81E04();

  (*(v23 + 8))(v8, v18);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v19 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__groupsStore);

  sub_21CB86544();
  sub_21C7073E8(v19, v28);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  v20 = v25;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC70, &qword_27CDEAC60, &unk_21CBA00B0);
  v21 = v27;
  sub_21CB81E04();

  (*(v26 + 8))(v20, v21);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();
}

uint64_t sub_21CA59710()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v1 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v1 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    return sub_21CA5E7F0();
  }

  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsInPersonalKeychain);
  v4 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID);
  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups);

  sub_21CA60578(v3, v4, v5);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CA5986C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v3 = sub_21CAFBB3C(v4);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  *a1 = v3;
  return result;
}

uint64_t sub_21CA5992C(uint64_t *a1)
{
  v163 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v2 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v4 = &v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v5 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v7 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for PMAccount.UniqueID(0);
  v8 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v10 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v154 - v12;
  MEMORY[0x28223BE20](v14);
  v173 = &v154 - v15;
  MEMORY[0x28223BE20](v16);
  v172 = &v154 - v17;
  MEMORY[0x28223BE20](v18);
  v175 = &v154 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v154 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v160 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v159 = &v154 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v154 - v33;
  MEMORY[0x28223BE20](v35);
  v179 = &v154 - v36;
  v167 = type metadata accessor for PMAccount(0);
  v180 = *(v167 - 8);
  v37 = *(v180 + 64);
  MEMORY[0x28223BE20](v167);
  v166 = &v154 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v178 = (&v154 - v40);
  MEMORY[0x28223BE20](v41);
  v181 = (&v154 - v42);
  MEMORY[0x28223BE20](v43);
  v169 = &v154 - v44;
  MEMORY[0x28223BE20](v45);
  v176 = (&v154 - v46);
  MEMORY[0x28223BE20](v47);
  v182 = &v154 - v48;
  v49 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v51 = result;
  v171 = v34;
  v158 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v183 = v51;
  sub_21CB81DB4();

  v52 = sub_21CAFBB3C(v184[0]);
  v53 = *(v49 + 16);
  v54 = *(v52 + 16);
  v156 = v49;
  if (v53 > v54 >> 3)
  {
    v55 = sub_21C9D8AA8(v49, v52);
  }

  else
  {
    v184[0] = v52;
    sub_21C8648B8(v49);
    v55 = v184[0];
  }

  v174 = v26;
  v157 = v13;
  v155 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;
  KeyPath = *(v183 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v57 = qword_27CDEA4C0;

  if (v57 != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v161 = v23;
    v164 = v7;
    v165 = v4;
    v154 = qword_27CE18778;
    sub_21CB86544();
    sub_21C7072A8(KeyPath, v184[0]);

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_21CB81DB4();

    v58 = v184[0];
    v170 = *(v184[0] + 16);
    if (v170)
    {
      v4 = 0;
      v23 = v55 + 56;
      v168 = MEMORY[0x277D84F90];
      while (v4 < *(v58 + 16))
      {
        v60 = (*(v180 + 80) + 32) & ~*(v180 + 80);
        v7 = *(v180 + 72);
        sub_21CA60D5C(v58 + v60 + v7 * v4, v182, type metadata accessor for PMAccount);
        if (!*(v55 + 16))
        {
          goto LABEL_8;
        }

        v61 = *v182;
        KeyPath = *(v182 + 8);
        v62 = *(v55 + 40);
        sub_21CB86484();
        sub_21CB854C4();
        v63 = sub_21CB864D4();
        v64 = -1 << *(v55 + 32);
        v65 = v63 & ~v64;
        if ((*(v23 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
        {
          v66 = ~v64;
          while (1)
          {
            v67 = (*(v55 + 48) + 16 * v65);
            v68 = *v67 == v61 && v67[1] == KeyPath;
            if (v68 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v65 = (v65 + 1) & v66;
            if (((*(v23 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          sub_21CA615C0(v182, v169, type metadata accessor for PMAccount);
          v69 = v168;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v185 = v69;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21C7B0C4C(0, *(v69 + 16) + 1, 1);
            v69 = v185;
          }

          v72 = *(v69 + 16);
          v71 = *(v69 + 24);
          KeyPath = v72 + 1;
          if (v72 >= v71 >> 1)
          {
            sub_21C7B0C4C(v71 > 1, v72 + 1, 1);
            v69 = v185;
          }

          *(v69 + 16) = KeyPath;
          v168 = v69;
          sub_21CA615C0(v169, v69 + v60 + v72 * v7, type metadata accessor for PMAccount);
        }

        else
        {
LABEL_8:
          sub_21CA60500(v182, type metadata accessor for PMAccount);
        }

        ++v4;
        v59 = v175;
        if (v4 == v170)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_87;
    }

    v168 = MEMORY[0x277D84F90];
    v59 = v175;
LABEL_27:

    v73 = *(v168 + 16);
    v74 = v165;
    v75 = v164;
    if (v73)
    {
      v182 = *(v167 + 24);
      v170 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;
      v76 = v168 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
      v169 = *(v180 + 72);
      KeyPath = v174;
      v77 = v179;
      v78 = v176;
      while (1)
      {
        sub_21CA60D5C(v76, v78, type metadata accessor for PMAccount);
        sub_21C6EDBAC(v183 + v170, KeyPath, &qword_27CDF7670, &unk_21CBAA8F0);
        v79 = type metadata accessor for PMSharingGroup();
        if ((*(*(v79 - 8) + 48))(KeyPath, 1, v79) == 1)
        {
          sub_21C6EA794(KeyPath, &qword_27CDF7670, &unk_21CBAA8F0);
          v80 = sub_21CB85C44();
          (*(*(v80 - 8) + 56))(v77, 1, 1, v80);
        }

        else
        {
          v81 = sub_21CB85C44();
          v82 = *(v81 - 8);
          (*(v82 + 16))(v77, KeyPath, v81);
          sub_21CA60500(KeyPath, type metadata accessor for PMSharingGroup);
          (*(v82 + 56))(v77, 0, 1, v81);
        }

        sub_21C7C8A3C(v59);
        v83 = v171;
        sub_21C6EDBAC(v77, v171, &unk_27CDF20B0, &unk_21CBA0090);
        v84 = v172;
        sub_21CA615C0(v59, v172, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21CA615C0(v84, v74, type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21C815B54(v83, v74 + *(v163 + 36));
          sub_21CA60D5C(v74, v59, type metadata accessor for PMAccount.SIWAUniqueID);
          swift_storeEnumTagMultiPayload();
          v85 = type metadata accessor for PMAccount.SIWAUniqueID;
          v86 = v74;
        }

        else
        {
          sub_21CA615C0(v84, v75, type metadata accessor for PMAccount.CombinedUniqueID);
          sub_21C815B54(v83, v75 + *(v162 + 36));
          sub_21CA60D5C(v75, v59, type metadata accessor for PMAccount.CombinedUniqueID);
          swift_storeEnumTagMultiPayload();
          v85 = type metadata accessor for PMAccount.CombinedUniqueID;
          v86 = v75;
        }

        sub_21CA60500(v86, v85);
        v87 = v173;
        sub_21CA60D5C(v59, v173, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21CA615C0(v87, v74, type metadata accessor for PMAccount.SIWAUniqueID);
          v88 = sub_21C7CE99C();
          v90 = v89;
          v91 = type metadata accessor for PMAccount.SIWAUniqueID;
          v92 = v74;
        }

        else
        {
          sub_21CA615C0(v87, v75, type metadata accessor for PMAccount.CombinedUniqueID);
          v88 = sub_21C7CE408();
          v90 = v93;
          v91 = type metadata accessor for PMAccount.CombinedUniqueID;
          v92 = v75;
        }

        sub_21CA60500(v92, v91);
        sub_21CA60500(v59, type metadata accessor for PMAccount.UniqueID);
        sub_21C6EA794(v179, &unk_27CDF20B0, &unk_21CBA0090);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        v94 = v184[0];
        if (*(v184[0] + 16))
        {
          v95 = sub_21CB10A3C(v88, v90);
          if (v96)
          {
            break;
          }
        }

LABEL_30:
        v78 = v176;
        sub_21CA60500(v176, type metadata accessor for PMAccount);
        v76 += v169;
        --v73;
        KeyPath = v174;
        v77 = v179;
        if (!v73)
        {
          goto LABEL_49;
        }
      }

      v97 = (*(v94 + 56) + 16 * v95);
      v99 = *v97;
      v98 = v97[1];

      if (v99 == *v176 && v98 == v176[1])
      {
      }

      else
      {
        v100 = sub_21CB86344();

        if ((v100 & 1) == 0)
        {

          goto LABEL_48;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v101 = sub_21CB81DA4();
      sub_21C87EDF0(0, 0, v88, v90);
      v101(v184, 0);

LABEL_48:
      v59 = v175;
      goto LABEL_30;
    }

LABEL_49:

    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v156;

    v103 = v183;
    sub_21CB81DB4();

    v104 = sub_21CAFBB3C(v184[0]);
    if (*(v104 + 16) <= *(v102 + 16) >> 3)
    {
      v184[0] = v102;
      sub_21C8648B8(v104);

      v4 = v184[0];
    }

    else
    {
      v4 = sub_21C9D8AA8(v104, v102);
    }

    v105 = *(v103 + v155);

    sub_21CB86544();
    sub_21C7072A8(v105, v184[0]);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v7 = v184[0];
    v182 = *(v184[0] + 16);
    if (!v182)
    {
      break;
    }

    v23 = 0;
    v55 = v4 + 56;
    v179 = MEMORY[0x277D84F90];
    while (v23 < *(v7 + 16))
    {
      v106 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v107 = *(v180 + 72);
      sub_21CA60D5C(v7 + v106 + v107 * v23, v181, type metadata accessor for PMAccount);
      if (!*(v4 + 16))
      {
        goto LABEL_54;
      }

      v108 = *v181;
      KeyPath = v181[1];
      v109 = *(v4 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      v110 = sub_21CB864D4();
      v111 = -1 << *(v4 + 32);
      v112 = v110 & ~v111;
      if ((*(v55 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112))
      {
        v113 = ~v111;
        while (1)
        {
          v114 = (*(v4 + 48) + 16 * v112);
          v115 = *v114 == v108 && v114[1] == KeyPath;
          if (v115 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v112 = (v112 + 1) & v113;
          if (((*(v55 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112) & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        sub_21CA615C0(v181, v166, type metadata accessor for PMAccount);
        v116 = v179;
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v118 = v116;
        v185 = v116;
        if ((v117 & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v116 + 16) + 1, 1);
          v118 = v185;
        }

        v119 = v118;
        v121 = *(v118 + 16);
        v120 = *(v118 + 24);
        KeyPath = v121 + 1;
        if (v121 >= v120 >> 1)
        {
          sub_21C7B0C4C(v120 > 1, v121 + 1, 1);
          v119 = v185;
        }

        *(v119 + 16) = KeyPath;
        v179 = v119;
        sub_21CA615C0(v166, v119 + v106 + v121 * v107, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_54:
        sub_21CA60500(v181, type metadata accessor for PMAccount);
      }

      if (++v23 == v182)
      {
        goto LABEL_73;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v179 = MEMORY[0x277D84F90];
LABEL_73:

  v122 = *(v179 + 16);
  if (v122)
  {
    v123 = *(v180 + 80);
    v176 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;
    v124 = v179 + ((v123 + 32) & ~v123);
    v125 = *(v180 + 72);
    v126 = v161;
    v127 = v178;
    v128 = v183;
    v180 = v125;
    do
    {
      sub_21CA60D5C(v124, v127, type metadata accessor for PMAccount);
      if (sub_21CA5B2E0(v127))
      {
        sub_21C6EDBAC(v176 + v128, v126, &qword_27CDF7670, &unk_21CBAA8F0);
        v141 = type metadata accessor for PMSharingGroup();
        v142 = (*(*(v141 - 8) + 48))(v126, 1, v141);
        v143 = v159;
        if (v142 == 1)
        {
          sub_21C6EA794(v126, &qword_27CDF7670, &unk_21CBAA8F0);
          v144 = sub_21CB85C44();
          (*(*(v144 - 8) + 56))(v143, 1, 1, v144);
        }

        else
        {
          v145 = sub_21CB85C44();
          v146 = *(v145 - 8);
          (*(v146 + 16))(v143, v126, v145);
          sub_21CA60500(v126, type metadata accessor for PMSharingGroup);
          (*(v146 + 56))(v143, 0, 1, v145);
        }

        v147 = v165;
        v148 = v164;
        v149 = v158;
        v150 = v157;
        v151 = v127 + *(v167 + 24);
        sub_21C7C8A3C(v157);
        v152 = v160;
        sub_21C6EDBAC(v143, v160, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C7CE19C(v152);
        sub_21CA60D5C(v150, v149, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21CA615C0(v149, v147, type metadata accessor for PMAccount.SIWAUniqueID);
          v181 = sub_21C7CE99C();
          v182 = v129;
          v130 = type metadata accessor for PMAccount.SIWAUniqueID;
          v131 = v147;
        }

        else
        {
          sub_21CA615C0(v149, v148, type metadata accessor for PMAccount.CombinedUniqueID);
          v181 = sub_21C7CE408();
          v182 = v153;
          v130 = type metadata accessor for PMAccount.CombinedUniqueID;
          v131 = v148;
        }

        sub_21CA60500(v131, v130);
        sub_21CA60500(v150, type metadata accessor for PMAccount.UniqueID);
        sub_21C6EA794(v143, &unk_27CDF20B0, &unk_21CBA0090);
        v132 = *v178;
        v133 = v178[1];
        swift_getKeyPath();
        swift_getKeyPath();

        v134 = v183;
        v135 = sub_21CB81DA4();
        v137 = v136;
        v138 = *v136;
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v185 = *v137;
        *v137 = 0x8000000000000000;
        v140 = v132;
        v127 = v178;
        sub_21C8D4B50(v140, v133, v181, v182, v139);

        *v137 = v185;
        v135(v184, 0);
        v128 = v134;

        v126 = v161;
        v125 = v180;
      }

      sub_21CA60500(v127, type metadata accessor for PMAccount);
      v124 += v125;
      --v122;
    }

    while (v122);
  }
}

uint64_t sub_21CA5AF8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  sub_21C6EDBAC(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v6, &qword_27CDF7670, &unk_21CBAA8F0);
  v11 = type metadata accessor for PMSharingGroup();
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
  {
    sub_21C6EA794(v6, &qword_27CDF7670, &unk_21CBAA8F0);
    v12 = sub_21CB85C44();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  else
  {
    v13 = sub_21CB85C44();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v10, v6, v13);
    sub_21CA60500(v6, type metadata accessor for PMSharingGroup);
    (*(v14 + 56))(v10, 0, 1, v13);
  }

  v15 = _s17PasswordManagerUI9PMAccountV13generateNewID3for2inSSAC_So15WBSSavedAccountC10SafariCoreE05GroupG0VSgtFZ_0(a1, v10);
  v17 = v16;
  sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v18 = v29;
  if (!*(v29 + 16))
  {

    goto LABEL_12;
  }

  v19 = sub_21CB10A3C(v15, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_12:

    v26 = 0;
    return v26 & 1;
  }

  v22 = (*(v18 + 56) + 16 * v19);
  v24 = *v22;
  v23 = v22[1];

  if (v24 == *a1 && v23 == a1[1])
  {

    v26 = 1;
  }

  else
  {
    v26 = sub_21CB86344();
  }

  return v26 & 1;
}

uint64_t sub_21CA5B2E0(uint64_t a1)
{
  v2 = v1;
  v126 = a1;
  v3 = sub_21CB85C44();
  v125 = *(v3 - 8);
  v4 = *(v125 + 64);
  MEMORY[0x28223BE20](v3);
  v105 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v6 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v114 = (&v104 - v7);
  v111 = type metadata accessor for PMAccount.MockData(0);
  v8 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v112 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v110 = (&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v109 = (&v104 - v13);
  v14 = type metadata accessor for PMSharingGroup();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v118 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v115 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v104 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v104 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v119 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v108 = &v104 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v104 - v33;
  MEMORY[0x28223BE20](v35);
  v106 = &v104 - v36;
  MEMORY[0x28223BE20](v37);
  v116 = &v104 - v38;
  MEMORY[0x28223BE20](v39);
  v107 = &v104 - v40;
  MEMORY[0x28223BE20](v41);
  v117 = &v104 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v104 - v44;
  v127 = v2;
  v121 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;
  sub_21C6EDBAC(v2 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v26, &qword_27CDF7670, &unk_21CBAA8F0);
  v46 = *(v15 + 48);
  v122 = v14;
  v123 = v46;
  v124 = v15 + 48;
  if (v46(v26, 1, v14) == 1)
  {
    sub_21C6EA794(v26, &qword_27CDF7670, &unk_21CBAA8F0);
    v47 = 1;
    v48 = v3;
    v49 = v125;
  }

  else
  {
    v50 = v125;
    (*(v125 + 16))(v45, v26, v3);
    sub_21CA60500(v26, type metadata accessor for PMSharingGroup);
    v47 = 0;
    v48 = v3;
    v49 = v50;
  }

  v51 = v49;
  v52 = v49 + 56;
  v53 = v48;
  v54 = *(v49 + 56);
  v54(v45, v47, 1);
  v55 = _s17PasswordManagerUI9PMAccountV13generateNewID3for2inSSAC_So15WBSSavedAccountC10SafariCoreE05GroupG0VSgtFZ_0(v126, v45);
  v57 = v56;
  sub_21C6EA794(v45, &unk_27CDF20B0, &unk_21CBA0090);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (*(v128 + 16))
  {
    sub_21CB10A3C(v55, v57);
    v59 = v58;

    if (v59)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  sub_21C6EDBAC(v127 + v121, v23, &qword_27CDF7670, &unk_21CBAA8F0);
  v60 = v123(v23, 1, v122);
  v104 = v52;
  if (v60 == 1)
  {
    sub_21C6EA794(v23, &qword_27CDF7670, &unk_21CBAA8F0);
    v61 = type metadata accessor for PMAccount(0);
    v62 = v110;
    sub_21CA60D5C(v126 + *(v61 + 24), v110, type metadata accessor for PMAccount.Storage);
    v63 = v53;
    v64 = v51;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v65 = v62;
      v66 = v112;
      sub_21CA615C0(v65, v112, type metadata accessor for PMAccount.MockData);
      v67 = v108;
      sub_21C6EDBAC(v66 + *(v111 + 72), v108, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CA60500(v66, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v77 = *v62;
      v67 = v108;
      sub_21CB85B94();
    }

    v78 = v127;
    v79 = v119;
    sub_21C716934(v67, v34, &unk_27CDF20B0, &unk_21CBA0090);
    v80 = (*(v64 + 48))(v34, 1, v53);
    sub_21C6EA794(v34, &unk_27CDF20B0, &unk_21CBA0090);
    if (v80 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v68 = v23;
  v69 = v118;
  sub_21CA615C0(v68, v118, type metadata accessor for PMSharingGroup);
  v70 = type metadata accessor for PMAccount(0);
  v71 = v109;
  sub_21CA60D5C(v126 + *(v70 + 24), v109, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v120 = v53;
  v73 = v51;
  if (EnumCaseMultiPayload == 1)
  {
    v74 = v71;
    v75 = v112;
    sub_21CA615C0(v74, v112, type metadata accessor for PMAccount.MockData);
    v76 = v107;
    sub_21C6EDBAC(v75 + *(v111 + 72), v107, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA60500(v75, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v82 = *v71;
    v76 = v107;
    sub_21CB85B94();
  }

  v79 = v114;
  v84 = v116;
  v83 = v117;
  sub_21C716934(v76, v117, &unk_27CDF20B0, &unk_21CBA0090);
  v63 = v120;
  (*(v73 + 16))(v84, v69, v120);
  v114 = v54;
  (v54)(v84, 0, 1, v63);
  v85 = v69;
  v86 = *(v113 + 48);
  sub_21C6EDBAC(v83, v79, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v84, v79 + v86, &unk_27CDF20B0, &unk_21CBA0090);
  v87 = v73;
  v88 = v83;
  v89 = *(v87 + 48);
  if (v89(v79, 1, v63) == 1)
  {
    sub_21C6EA794(v84, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v88, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA60500(v85, type metadata accessor for PMSharingGroup);
    v90 = v89(v79 + v86, 1, v63);
    v64 = v125;
    if (v90 == 1)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v91 = v106;
  sub_21C6EDBAC(v79, v106, &unk_27CDF20B0, &unk_21CBA0090);
  if (v89(v79 + v86, 1, v63) == 1)
  {
    sub_21C6EA794(v116, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v117, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA60500(v118, type metadata accessor for PMSharingGroup);
    v64 = v125;
    (*(v125 + 8))(v91, v63);
LABEL_22:
    sub_21C6EA794(v79, &qword_27CDEAC40, &qword_21CBA1A40);
    v78 = v127;
    v79 = v119;
    v54 = v114;
LABEL_23:
    v92 = *(v78 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
    v93 = qword_27CDEA4C0;

    if (v93 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v94 = sub_21C7072A8(v92, v128);

    v95 = v115;
    sub_21C6EDBAC(v78 + v121, v115, &qword_27CDF7670, &unk_21CBAA8F0);
    if (v123(v95, 1, v122) == 1)
    {
      sub_21C6EA794(v95, &qword_27CDF7670, &unk_21CBAA8F0);
      v96 = 1;
    }

    else
    {
      (*(v64 + 16))(v79, v95, v63);
      sub_21CA60500(v95, type metadata accessor for PMSharingGroup);
      v96 = 0;
    }

    (v54)(v79, v96, 1, v63);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v97 = *(v94 + 24);
      ObjectType = swift_getObjectType();
      v81 = (*(v97 + 160))(v126, v79, ObjectType, v97);

      swift_unknownObjectRelease();
LABEL_32:
      sub_21C6EA794(v79, &unk_27CDF20B0, &unk_21CBA0090);
      return v81 & 1;
    }

LABEL_31:
    v81 = 0;
    goto LABEL_32;
  }

  v64 = v125;
  v100 = v79 + v86;
  v101 = v105;
  (*(v125 + 32))(v105, v100, v63);
  sub_21CA5FD88(&qword_27CDEAC48, MEMORY[0x277D49978]);
  v102 = sub_21CB85574();
  v103 = *(v64 + 8);
  v103(v101, v63);
  sub_21C6EA794(v116, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EA794(v117, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CA60500(v118, type metadata accessor for PMSharingGroup);
  v103(v91, v63);
  sub_21C6EA794(v79, &unk_27CDF20B0, &unk_21CBA0090);
  v78 = v127;
  v79 = v119;
  v54 = v114;
  if ((v102 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v81 = 0;
  return v81 & 1;
}

uint64_t sub_21CA5C048()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v11 = qword_27CDEA4C0;

  if (v11 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    sub_21CB86544();
    sub_21C7072A8(v10, v28);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v12 = v28;
    v27 = *(v28 + 16);
    if (!v27)
    {
      break;
    }

    v13 = 0;
    v10 = 0;
    v14 = MEMORY[0x277D84F90];
    v25 = v6;
    v26 = v1;
    while (v13 < *(v12 + 16))
    {
      v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v16 = *(v3 + 72);
      sub_21CA60D5C(v12 + v15 + v16 * v13, v9, type metadata accessor for PMAccount);
      if (sub_21CA5C3B0(v9, v1))
      {
        sub_21CA615C0(v9, v6, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v14 + 16) + 1, 1);
          v14 = v28;
        }

        v19 = *(v14 + 16);
        v18 = *(v14 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21C7B0C4C(v18 > 1, v19 + 1, 1);
          v14 = v28;
        }

        *(v14 + 16) = v19 + 1;
        v20 = v14 + v15 + v19 * v16;
        v6 = v25;
        sub_21CA615C0(v25, v20, type metadata accessor for PMAccount);
        v1 = v26;
      }

      else
      {
        sub_21CA60500(v9, type metadata accessor for PMAccount);
      }

      if (v27 == ++v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_14:

  v21 = sub_21CB01070(v14);

  v22 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords) = v21;
}

uint64_t sub_21CA5C3B0(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v4 = sub_21CB85C44();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v55 - v9;
  v61 = type metadata accessor for PMAccount.MockData(0);
  v10 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = type metadata accessor for PMAccount.Storage(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = (&v55 - v25);
  v27 = type metadata accessor for PMAccount(0);
  v28 = (a1 + *(v27 + 28));
  v66 = v28[1];
  if (v66)
  {
    v65 = v2;
    v29 = *v28;
    v57 = v4;
    v58 = v29;
    v30 = v28[3];
    v59 = v28[2];
    v31 = *(v27 + 24);
    sub_21CA60D5C(a1 + v31, v26, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CA60500(v26, type metadata accessor for PMAccount.Storage);
LABEL_7:
      v32 = 0;
      return v32 & 1;
    }

    v56 = v19;
    v33 = *v26;
    v34 = v66;

    if (([v30 issueTypes] & 1) == 0)
    {

      sub_21C7D33F0(v58, v34, v59, v30);
      goto LABEL_7;
    }

    v55 = v33;
    sub_21CA60D5C(a1 + v31, v23, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CA615C0(v23, v12, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(&v12[*(v61 + 72)], v16, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CA60500(v12, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v36 = *v23;
      sub_21CB85B94();
    }

    v37 = v30;
    v38 = v64;
    v39 = v56;
    sub_21C716934(v16, v56, &unk_27CDF20B0, &unk_21CBA0090);
    if ((*(v38 + 48))(v39, 1, v57) == 1)
    {
      sub_21C6EA794(v39, &unk_27CDF20B0, &unk_21CBA0090);
      v40 = v62;
      v41 = *(v62 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
      v42 = qword_27CDEA4C0;

      if (v42 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v43 = sub_21C7072A8(v41, v67);

      v44 = [objc_opt_self() sharedStore];
      v45 = v63;
      sub_21C6EDBAC(v40 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v63, &qword_27CDF7670, &unk_21CBAA8F0);
      v46 = type metadata accessor for PMSharingGroup();
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
      {
        sub_21C6EA794(v45, &qword_27CDF7670, &unk_21CBAA8F0);
      }

      else
      {
        v47 = v60;
        v48 = v57;
        (*(v38 + 16))(v60, v45, v57);
        sub_21CA60500(v45, type metadata accessor for PMSharingGroup);
        sub_21CB85B64();
        (*(v38 + 8))(v47, v48);
      }

      v49 = v55;
      v50 = sub_21CB85584();

      v51 = [v44 savedAccountsForGroupID_];

      sub_21C897E98();
      v52 = sub_21CB85824();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v53 = *(v43 + 24);
        ObjectType = swift_getObjectType();
        LOBYTE(v53) = (*(v53 + 192))(v52, v49, ObjectType, v53);

        sub_21C7D33F0(v58, v66, v59, v37);
        swift_unknownObjectRelease();
        v32 = v53 ^ 1;
      }

      else
      {

        sub_21C7D33F0(v58, v66, v59, v37);
        v32 = 1;
      }
    }

    else
    {

      sub_21C7D33F0(v58, v34, v59, v30);
      sub_21C6EA794(v39, &unk_27CDF20B0, &unk_21CBA0090);
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_21CA5CABC(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v39 - v8;
  v10 = type metadata accessor for PMAccount(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(v12 + 24);
    v19 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20 = *(v13 + 72);
    do
    {
      sub_21CA60D5C(v19, v15, type metadata accessor for PMAccount);
      sub_21CA60D5C(&v15[v18], v5, type metadata accessor for PMAccount.Storage);
      sub_21CA60500(v15, type metadata accessor for PMAccount);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CA60500(v5, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v21 = *v5;
        MEMORY[0x21CF15300]();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v39[1] = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
        v16 = v40;
      }

      v19 += v20;
      --v17;
    }

    while (v17);
  }

  sub_21C6EDBAC(v39[2] + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v9, &qword_27CDF7670, &unk_21CBAA8F0);
  v22 = type metadata accessor for PMSharingGroup();
  if ((*(*(v22 - 8) + 48))(v9, 1, v22) == 1)
  {
    sub_21C6EA794(v9, &qword_27CDF7670, &unk_21CBAA8F0);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = &v9[*(v22 + 20)];
    v23 = *v25;
    v24 = v25[1];

    sub_21CA60500(v9, type metadata accessor for PMSharingGroup);
  }

  sub_21C7C0290(v16, v23, v24);
  v27 = v26;

  if (v27 && (sub_21C7C08A8(v16, 0), v29 = v28, , v29))
  {
    v30 = sub_21CB85584();

    v31 = sub_21CB85584();

    v32 = [objc_allocWithZone(MEMORY[0x277D49A80]) initWithFirst:v30 second:v31];

    if (v32)
    {
      v33 = [v32 first];
      if (v33)
      {
        v34 = v33;
        v35 = [v32 second];
        if (v35)
        {
          v36 = v35;
          v37 = sub_21CB855C4();
          sub_21CB855C4();

          return v37;
        }
      }

      else
      {
      }
    }
  }

  else
  {
  }

  return 0;
}

void sub_21CA5CF50(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DC4();
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v2 = sub_21CB81C84();
    __swift_project_value_buffer(v2, qword_27CE186E0);
    v3 = sub_21CB81C64();
    v4 = sub_21CB85AF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21C6E5000, v3, v4, "Cannot move selected accounts.", v5, 2u);
      MEMORY[0x21CF16D90](v5, -1, -1);
    }
  }
}

uint64_t sub_21CA5D088()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v64 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v64 - v7;
  v77 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v72 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = type metadata accessor for PMAccount(0);
  v78 = *(v76 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  v67 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = (&v64 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v73 = v0;
  sub_21CB81DB4();

  v18 = sub_21CA57784(v80);

  if (*(v18 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8980, &qword_21CBADE78);
    v19 = sub_21CB86224();
  }

  else
  {
    v19 = MEMORY[0x277D84F98];
  }

  v80 = v19;
  sub_21CA60AC0(v18, 1, &v80);

  v64 = 0;
  v66 = v80;
  v71 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;
  v20 = *(v73 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v21 = qword_27CDEA4C0;

  if (v21 != -1)
  {
LABEL_40:
    swift_once();
  }

  v70 = qword_27CE18778;
  sub_21CB86544();
  sub_21C7072A8(v20, v80);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v22 = v80;
  v23 = *(v80 + 16);
  v69 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;

  v75 = v23;
  if (v23)
  {
    v20 = 0;
    v68 = MEMORY[0x277D84F90];
    v24 = v72;
    v74 = v22;
    while (1)
    {
      if (v20 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v25 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v26 = *(v78 + 72);
      sub_21CA60D5C(v22 + v25 + v26 * v20, v17, type metadata accessor for PMAccount);
      sub_21CA60D5C(&v17[*(v76 + 24)], v24, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CA60500(v24, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v27 = *v24;
        v28 = [*v24 userIsNeverSaveMarker];

        if (v28)
        {
          goto LABEL_8;
        }
      }

      v29 = v8;
      v30 = v4;
      v31 = v73;
      v32 = *(v73 + v71);

      sub_21CB86544();
      v33 = sub_21C7072A8(v32, v79);

      v34 = v31 + v69;
      v4 = v30;
      sub_21C6EDBAC(v34, v30, &qword_27CDF7670, &unk_21CBAA8F0);
      v35 = type metadata accessor for PMSharingGroup();
      if ((*(*(v35 - 8) + 48))(v30, 1, v35) == 1)
      {
        sub_21C6EA794(v30, &qword_27CDF7670, &unk_21CBAA8F0);
        v36 = sub_21CB85C44();
        v8 = v29;
        (*(*(v36 - 8) + 56))(v29, 1, 1, v36);
      }

      else
      {
        v37 = sub_21CB85C44();
        v38 = *(v37 - 8);
        v8 = v29;
        (*(v38 + 16))(v29, v4, v37);
        sub_21CA60500(v4, type metadata accessor for PMSharingGroup);
        (*(v38 + 56))(v29, 0, 1, v37);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v24 = v72;
      if (Strong)
      {
        v40 = *(v33 + 24);
        ObjectType = swift_getObjectType();
        LOBYTE(v40) = (*(v40 + 160))(v17, v8, ObjectType, v40);

        swift_unknownObjectRelease();
        sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
        if (v40)
        {
          sub_21CA615C0(v17, v67, type metadata accessor for PMAccount);
          v42 = v68;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21C7B0C4C(0, *(v42 + 16) + 1, 1);
            v42 = v80;
          }

          v45 = *(v42 + 16);
          v44 = *(v42 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_21C7B0C4C(v44 > 1, v45 + 1, 1);
            v42 = v80;
          }

          *(v42 + 16) = v45 + 1;
          v68 = v42;
          sub_21CA615C0(v67, v42 + v25 + v45 * v26, type metadata accessor for PMAccount);
          goto LABEL_9;
        }
      }

      else
      {

        sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
      }

LABEL_8:
      sub_21CA60500(v17, type metadata accessor for PMAccount);
LABEL_9:
      ++v20;
      v22 = v74;
      if (v75 == v20)
      {
        goto LABEL_25;
      }
    }
  }

  v68 = MEMORY[0x277D84F90];
LABEL_25:

  v46 = *(v68 + 16);
  if (v46)
  {
    v47 = v68 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v48 = *(v78 + 72);
    v49 = MEMORY[0x277D84F90];
    v51 = v65;
    v50 = v66;
    do
    {
      sub_21CA60D5C(v47, v51, type metadata accessor for PMAccount);
      if (*(v50 + 16) && (v52 = sub_21CB10A3C(*v51, v51[1]), (v53 & 1) != 0))
      {
        v54 = (*(v50 + 56) + 16 * v52);
        v56 = *v54;
        v55 = v54[1];

        sub_21CA60500(v51, type metadata accessor for PMAccount);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_21CA4F2EC(0, *(v49 + 2) + 1, 1, v49);
        }

        v58 = *(v49 + 2);
        v57 = *(v49 + 3);
        if (v58 >= v57 >> 1)
        {
          v49 = sub_21CA4F2EC((v57 > 1), v58 + 1, 1, v49);
        }

        *(v49 + 2) = v58 + 1;
        v59 = &v49[16 * v58];
        *(v59 + 4) = v56;
        *(v59 + 5) = v55;
        v51 = v65;
        v50 = v66;
      }

      else
      {
        sub_21CA60500(v51, type metadata accessor for PMAccount);
      }

      v47 += v48;
      --v46;
    }

    while (v46);
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v60 = sub_21CB009AC(v49);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v61 = v80;

  v62 = sub_21CA60FEC(v61, v60);

  swift_bridgeObjectRelease_n();
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v62;

  return sub_21CB81DC4();
}

uint64_t sub_21CA5DA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v54 - v11;
  v65 = type metadata accessor for PMAccount.Storage(0);
  v13 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for PMAccount(0);
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v64);
  v58 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  if (a1)
  {
    v55 = a2;
    v22 = *(a1 + 16);
    v60 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;
    v61 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;
    v63 = v3;

    if (v22)
    {
      v57 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v23 = a1 + v57;
      v59 = MEMORY[0x277D84F90];
      v66 = *(v16 + 72);
      v24 = &qword_27CDF7670;
      while (1)
      {
        sub_21CA60D5C(v23, v21, type metadata accessor for PMAccount);
        sub_21CA60D5C(&v21[*(v64 + 24)], v15, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21CA60500(v15, type metadata accessor for PMAccount.Storage);
        }

        else
        {
          v25 = *v15;
          v26 = [*v15 userIsNeverSaveMarker];

          if (v26)
          {
            goto LABEL_5;
          }
        }

        v27 = v24;
        v28 = v63;
        v29 = *(v63 + v61);
        v30 = qword_27CDEA4C0;

        if (v30 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        v31 = sub_21C7072A8(v29, v67);

        v32 = v28 + v60;
        v33 = v62;
        v24 = v27;
        sub_21C6EDBAC(v32, v62, v27, &unk_21CBAA8F0);
        v34 = type metadata accessor for PMSharingGroup();
        if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
        {
          sub_21C6EA794(v33, v27, &unk_21CBAA8F0);
          v35 = sub_21CB85C44();
          (*(*(v35 - 8) + 56))(v12, 1, 1, v35);
        }

        else
        {
          v36 = v21;
          v37 = v24;
          v38 = v15;
          v39 = v33;
          v40 = sub_21CB85C44();
          v41 = *(v40 - 8);
          (*(v41 + 16))(v12, v39, v40);
          v42 = v39;
          v15 = v38;
          v24 = v37;
          v21 = v36;
          sub_21CA60500(v42, type metadata accessor for PMSharingGroup);
          (*(v41 + 56))(v12, 0, 1, v40);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v43 = *(v31 + 24);
          ObjectType = swift_getObjectType();
          LOBYTE(v43) = (*(v43 + 160))(v21, v12, ObjectType, v43);

          swift_unknownObjectRelease();
          sub_21C6EA794(v12, &unk_27CDF20B0, &unk_21CBA0090);
          if (v43)
          {
            sub_21CA615C0(v21, v58, type metadata accessor for PMAccount);
            v45 = v59;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v68 = v45;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C7B0C4C(0, *(v45 + 16) + 1, 1);
              v45 = v68;
            }

            v48 = *(v45 + 16);
            v47 = *(v45 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_21C7B0C4C(v47 > 1, v48 + 1, 1);
              v45 = v68;
            }

            *(v45 + 16) = v48 + 1;
            v59 = v45;
            sub_21CA615C0(v58, v45 + v57 + v48 * v66, type metadata accessor for PMAccount);
            goto LABEL_6;
          }
        }

        else
        {

          sub_21C6EA794(v12, &unk_27CDF20B0, &unk_21CBA0090);
        }

LABEL_5:
        sub_21CA60500(v21, type metadata accessor for PMAccount);
LABEL_6:
        v23 += v66;
        if (!--v22)
        {
          goto LABEL_23;
        }
      }
    }

    v59 = MEMORY[0x277D84F90];
LABEL_23:
    v3 = v63;

    v49 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsInPersonalKeychain);
    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsInPersonalKeychain) = v59;

    sub_21CA5C048();
    a2 = v55;
  }

  if (a2)
  {

    v50 = sub_21CA61260(a2, v3);

    v51 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID);
    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID) = v50;
  }

  if (v56)
  {
    v52 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups);
    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups) = v56;
  }

  sub_21CA59710();
  return sub_21CA5D088();
}

uint64_t sub_21CA5E17C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  v58 = type metadata accessor for PMAccount.Storage(0);
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PMAccount(0);
  v56 = *(v16 - 8);
  v57 = v16;
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v16);
  v49 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  v22 = *a1;
  v23 = *(*a1 + 16);
  v52 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;
  v53 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;

  v55 = v23;
  if (v23)
  {
    v25 = 0;
    v50 = MEMORY[0x277D84F90];
    v51 = v22;
    v54 = a2;
    while (1)
    {
      if (v25 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      v26 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v59 = *(v56 + 72);
      v60 = v26;
      sub_21CA60D5C(v22 + v26 + v59 * v25, v21, type metadata accessor for PMAccount);
      sub_21CA60D5C(&v21[*(v57 + 24)], v15, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CA60500(v15, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v27 = *v15;
        v28 = [*v15 userIsNeverSaveMarker];

        if (v28)
        {
          goto LABEL_4;
        }
      }

      v29 = v15;
      v30 = v12;
      v31 = v8;
      v32 = *(a2 + v53);
      v33 = qword_27CDEA4C0;

      v34 = a2;
      if (v33 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v35 = sub_21C7072A8(v32, v61);

      v36 = v34 + v52;
      v8 = v31;
      sub_21C6EDBAC(v36, v31, &qword_27CDF7670, &unk_21CBAA8F0);
      v37 = type metadata accessor for PMSharingGroup();
      if ((*(*(v37 - 8) + 48))(v31, 1, v37) == 1)
      {
        sub_21C6EA794(v31, &qword_27CDF7670, &unk_21CBAA8F0);
        v38 = sub_21CB85C44();
        v12 = v30;
        (*(*(v38 - 8) + 56))(v30, 1, 1, v38);
      }

      else
      {
        v39 = sub_21CB85C44();
        v40 = *(v39 - 8);
        v12 = v30;
        (*(v40 + 16))(v30, v8, v39);
        sub_21CA60500(v8, type metadata accessor for PMSharingGroup);
        (*(v40 + 56))(v30, 0, 1, v39);
      }

      v15 = v29;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = *(v35 + 24);
        ObjectType = swift_getObjectType();
        LOBYTE(v41) = (*(v41 + 160))(v21, v12, ObjectType, v41);

        swift_unknownObjectRelease();
        sub_21C6EA794(v12, &unk_27CDF20B0, &unk_21CBA0090);
        a2 = v54;
        v22 = v51;
        if (v41)
        {
          sub_21CA615C0(v21, v49, type metadata accessor for PMAccount);
          v43 = v50;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21C7B0C4C(0, *(v43 + 16) + 1, 1);
            v43 = v62;
          }

          v46 = *(v43 + 16);
          v45 = *(v43 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_21C7B0C4C(v45 > 1, v46 + 1, 1);
            v43 = v62;
          }

          *(v43 + 16) = v46 + 1;
          v50 = v43;
          result = sub_21CA615C0(v49, v43 + v60 + v46 * v59, type metadata accessor for PMAccount);
          a2 = v54;
          goto LABEL_5;
        }
      }

      else
      {

        sub_21C6EA794(v12, &unk_27CDF20B0, &unk_21CBA0090);
        a2 = v54;
        v22 = v51;
      }

LABEL_4:
      result = sub_21CA60500(v21, type metadata accessor for PMAccount);
LABEL_5:
      if (v55 == ++v25)
      {
        goto LABEL_23;
      }
    }
  }

  v50 = MEMORY[0x277D84F90];
LABEL_23:

  *v48 = v50;
  return result;
}