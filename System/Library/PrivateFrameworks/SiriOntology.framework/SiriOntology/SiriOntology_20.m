uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.reportedFailure.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1E800, &qword_1C09933D0);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
    }

    sub_1C0751DA0(v6, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  if (qword_1EBE157B8 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_1EBE1E690;
}

uint64_t sub_1C0715C50(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v13 = sub_1C0739898(v13);
    *(v4 + v10) = v13;
  }

  sub_1C070BA2C(a1, v9, a2);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C051F9D4(v9, v13 + v18, &qword_1EBE1E800, &qword_1C09933D0);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.reportedFailure.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
      return sub_1C07160B8;
    }

    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v18 = *(v9 + 20);
  if (qword_1EBE157B8 != -1)
  {
    swift_once();
  }

  *(v12 + v18) = qword_1EBE1E690;

  return sub_1C07160B8;
}

void sub_1C07160FC(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = *(*a1 + 128);
  if (a2)
  {
    v9 = *(v7 + 72);
    sub_1C0751E60(*(v7 + 104), *(v7 + 96), a5);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v7 + 128);
      v14 = *(v7 + 72);
      v15 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v12 = sub_1C0739898(v12);
      *(v14 + v13) = v12;
    }

    v19 = *(v7 + 112);
    v18 = *(v7 + 120);
    v21 = *(v7 + 96);
    v20 = *(v7 + 104);
    v23 = *(v7 + 80);
    v22 = *(v7 + 88);
    sub_1C070BA2C(v21, v23, a3);
    swift_storeEnumTagMultiPayload();
    (*(v18 + 56))(v23, 0, 1, v19);
    v24 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
    swift_beginAccess();
    sub_1C051F9D4(v23, v12 + v24, &qword_1EBE1E800, &qword_1C09933D0);
    swift_endAccess();
    sub_1C0751DA0(v20, a6);
  }

  else
  {
    v25 = *(v7 + 72);
    v26 = *(v25 + v8);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v25 + v8);
    if ((v27 & 1) == 0)
    {
      v29 = *(v7 + 128);
      v30 = *(v7 + 72);
      v31 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      v28 = sub_1C0739898(v28);
      *(v30 + v29) = v28;
    }

    v34 = *(v7 + 112);
    v35 = *(v7 + 120);
    v21 = *(v7 + 96);
    v20 = *(v7 + 104);
    v23 = *(v7 + 80);
    v22 = *(v7 + 88);
    sub_1C070BA2C(v20, v23, a3);
    swift_storeEnumTagMultiPayload();
    (*(v35 + 56))(v23, 0, 1, v34);
    v36 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
    swift_beginAccess();
    sub_1C051F9D4(v23, v28 + v36, &qword_1EBE1E800, &qword_1C09933D0);
    swift_endAccess();
  }

  free(v20);
  free(v21);
  free(v22);
  free(v23);

  free(v7);
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.renderedText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE16D68, &unk_1C09933C0);
  v9 = sub_1C095D32C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  sub_1C095D31C();
  result = (v11)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C07164D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v9 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(v8 + v9, v7, &qword_1EBE16D68, &unk_1C09933C0);
  v10 = sub_1C095D32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v7, v10);
  }

  sub_1C095D31C();
  result = (v12)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071665C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1C0739898(v16);
    *(a2 + v13) = v16;
  }

  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v20, &qword_1EBE16D68, &unk_1C09933C0);
  return swift_endAccess();
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.renderedText.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1C0739898(v11);
    *(v2 + v8) = v11;
  }

  v15 = sub_1C095D32C();
  v16 = *(v15 - 8);
  (*(v16 + 32))(v7, a1, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE16D68, &unk_1C09933C0);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.renderedText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = sub_1C095D32C();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0716C34;
}

void sub_1C0716C34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    (*(*(v2 + 104) + 16))(*(v2 + 112), *(v2 + 120), *(v2 + 96));
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1C0739898(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    (*(v16 + 32))(v18, v14, v15);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
    swift_beginAccess();
    sub_1C051F9D4(v18, v7 + v19, &qword_1EBE16D68, &unk_1C09933C0);
    swift_endAccess();
    (*(v16 + 8))(v13, v15);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1C0739898(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    (*(v30 + 32))(v18, v13, v29);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
    swift_beginAccess();
    sub_1C051F9D4(v18, v23 + v31, &qword_1EBE16D68, &unk_1C09933C0);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Siri_Nl_Core_Protocol_SystemDialogAct.hasRenderedText.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v6 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(v5 + v6, v4, &qword_1EBE16D68, &unk_1C09933C0);
  v7 = sub_1C095D32C();
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1C05145B4(v4, &qword_1EBE16D68, &unk_1C09933C0);
  return v8;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_SystemDialogAct.clearRenderedText()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1C0739898(v9);
    *(v1 + v6) = v9;
  }

  v13 = sub_1C095D32C();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C051F9D4(v5, v9 + v14, &qword_1EBE16D68, &unk_1C09933C0);
  swift_endAccess();
}

uint64_t static Siri_Nl_Core_Protocol_SystemGaveOptions.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1C055C1E0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0) + 20);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C07172B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemPrompted.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_SystemPrompted.taskID.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C071774C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemPrompted.target.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_SystemPrompted.target.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t Siri_Nl_Core_Protocol_SystemOffered.offeredAct.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E810, &qword_1C09933D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  sub_1C05149F8(v1 + *(v7 + 20), v6, &qword_1EBE1E810, &qword_1C09933D8);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  }

  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v8 + 24);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E810, &qword_1C09933D8);
  }

  return result;
}

uint64_t sub_1C0717E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E810, &qword_1C09933D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  sub_1C05149F8(a1 + *(v8 + 20), v7, &qword_1EBE1E810, &qword_1C09933D8);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  }

  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v13 = *(v9 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E810, &qword_1C09933D8);
  }

  return result;
}

uint64_t sub_1C0717FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE1E810, &qword_1C09933D8);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemOffered.offeredAct.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE1E810, &qword_1C09933D8);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_SystemOffered.offeredAct.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E810, &qword_1C09933D8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E810, &qword_1C09933D8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E810, &qword_1C09933D8);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  }

  return sub_1C0718470;
}

void sub_1C0718470(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    sub_1C05145B4(v9 + v3, &qword_1EBE1E810, &qword_1C09933D8);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE1E810, &qword_1C09933D8);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C0718720@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_1C05149F8(v2 + *(v9 + 24), v8, &qword_1EBE17420, &qword_1C0993380);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1C070BA2C(v8, a2, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v12 = a2 + *(v10 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C0718890@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0);
  sub_1C05149F8(a1 + *(v10 + 24), v9, &qword_1EBE17420, &qword_1C0993380);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1C070BA2C(v9, a3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  v13 = a3 + *(v11 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C0718A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemInformed.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_SystemInformed.taskID.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C0718F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemReportedSuccess.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_SystemReportedSuccess.taskID.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C07193D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemReportedSuccess.task.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_SystemReportedSuccess.task.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C07198DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  sub_1C05149F8(v11 + v12, v10, &qword_1EBE17420, &qword_1C0993380);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return sub_1C070BA2C(v10, a3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  v15 = a3 + *(v13 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v14)(v10, 1, v13);
  if (result != 1)
  {
    return sub_1C05145B4(v10, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C0719A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(uint64_t), uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - v16;
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v22, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v23 = *(a5(0) + 20);
  v24 = *(a2 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a2 + v23);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = a6(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v26 = a7(v26);
    *(a2 + v23) = v26;
  }

  sub_1C070BA2C(v22, v17, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  (*(v19 + 56))(v17, 0, 1, v18);
  v30 = *a8;
  swift_beginAccess();
  sub_1C051F9D4(v17, v26 + v30, &qword_1EBE17420, &qword_1C0993380);
  return swift_endAccess();
}

uint64_t sub_1C0719CCC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v10 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  v16 = *(a2(0) + 20);
  v17 = *(v5 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = a3(0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v19 = a4(v19);
    *(v10 + v16) = v19;
  }

  sub_1C070BA2C(a1, v15, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v23 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
  v24 = *a5;
  swift_beginAccess();
  sub_1C051F9D4(v15, v19 + v24, &qword_1EBE17420, &qword_1C0993380);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_SystemReportedFailure.taskID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17420, &qword_1C0993380);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v19 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C071A0BC;
}

void sub_1C071A0F0(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_1C0751E60(*(v8 + 120), *(v8 + 112), type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v8 + 128);
      v15 = *(v8 + 72);
      v16 = a3(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v13 = a4(v13);
      *(v15 + v14) = v13;
    }

    v20 = *(v8 + 112);
    v19 = *(v8 + 120);
    v21 = *(v8 + 96);
    v22 = *(v8 + 104);
    v24 = *(v8 + 80);
    v23 = *(v8 + 88);
    sub_1C070BA2C(v20, v24, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    (*(v22 + 56))(v24, 0, 1, v21);
    v25 = *a5;
    swift_beginAccess();
    sub_1C051F9D4(v24, v13 + v25, &qword_1EBE17420, &qword_1C0993380);
    swift_endAccess();
    sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  else
  {
    v26 = *(v8 + 72);
    v27 = *(v26 + v9);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v26 + v9);
    if ((v28 & 1) == 0)
    {
      v30 = *(v8 + 128);
      v31 = *(v8 + 72);
      v32 = a3(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v29 = a4(v29);
      *(v31 + v30) = v29;
    }

    v20 = *(v8 + 112);
    v19 = *(v8 + 120);
    v35 = *(v8 + 96);
    v36 = *(v8 + 104);
    v24 = *(v8 + 80);
    v23 = *(v8 + 88);
    sub_1C070BA2C(v19, v24, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    (*(v36 + 56))(v24, 0, 1, v35);
    v37 = *a5;
    swift_beginAccess();
    sub_1C051F9D4(v24, v29 + v37, &qword_1EBE17420, &qword_1C0993380);
    swift_endAccess();
  }

  free(v19);
  free(v20);
  free(v23);
  free(v24);

  free(v8);
}

BOOL Siri_Nl_Core_Protocol_SystemReportedFailure.hasTaskID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20));
  v6 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  swift_beginAccess();
  sub_1C05149F8(v5 + v6, v4, &qword_1EBE17420, &qword_1C0993380);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1C05145B4(v4, &qword_1EBE17420, &qword_1C0993380);
  return v8;
}

uint64_t sub_1C071A4C4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(a1(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a2(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = a3(v17);
    *(v9 + v14) = v17;
  }

  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_1C051F9D4(v13, v17 + v22, &qword_1EBE17420, &qword_1C0993380);
  return swift_endAccess();
}

uint64_t sub_1C071A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v16, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v17 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  v18 = *(a2 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + v17);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v20 = sub_1C07415E8(v20);
    *(a2 + v17) = v20;
  }

  sub_1C070BA2C(v16, v11, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  (*(v13 + 56))(v11, 0, 1, v12);
  v24 = *a5;
  swift_beginAccess();
  sub_1C051F9D4(v11, v20 + v24, &qword_1EBE17400, &unk_1C0970CA0);
  return swift_endAccess();
}

uint64_t sub_1C071A838(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v13 = sub_1C07415E8(v13);
    *(v4 + v10) = v13;
  }

  sub_1C070BA2C(a1, v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = *a2;
  swift_beginAccess();
  sub_1C051F9D4(v9, v13 + v18, &qword_1EBE17400, &unk_1C0970CA0);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_SystemReportedFailure.reason.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v19;
    *(v14 + 2) = v19;
    *(v14 + 3) = v19;
    v20 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v21 = *(v9 + 36);
    v22 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C071AC4C;
}

void sub_1C071AC58(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    sub_1C0751E60(*(v4 + 120), *(v4 + 112), type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v7 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v4 + 128);
      v11 = *(v4 + 72);
      v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v9 = sub_1C07415E8(v9);
      *(v11 + v10) = v9;
    }

    v16 = *(v4 + 112);
    v15 = *(v4 + 120);
    v17 = *(v4 + 96);
    v18 = *(v4 + 104);
    v20 = *(v4 + 80);
    v19 = *(v4 + 88);
    sub_1C070BA2C(v16, v20, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    (*(v18 + 56))(v20, 0, 1, v17);
    v21 = *a3;
    swift_beginAccess();
    sub_1C051F9D4(v20, v9 + v21, &qword_1EBE17400, &unk_1C0970CA0);
    swift_endAccess();
    sub_1C0751DA0(v15, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  else
  {
    v22 = *(v4 + 72);
    v23 = *(v22 + v5);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v22 + v5);
    if ((v24 & 1) == 0)
    {
      v26 = *(v4 + 128);
      v27 = *(v4 + 72);
      v28 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v25 = sub_1C07415E8(v25);
      *(v27 + v26) = v25;
    }

    v16 = *(v4 + 112);
    v15 = *(v4 + 120);
    v31 = *(v4 + 96);
    v32 = *(v4 + 104);
    v20 = *(v4 + 80);
    v19 = *(v4 + 88);
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    (*(v32 + 56))(v20, 0, 1, v31);
    v33 = *a3;
    swift_beginAccess();
    sub_1C051F9D4(v20, v25 + v33, &qword_1EBE17400, &unk_1C0970CA0);
    swift_endAccess();
  }

  free(v15);
  free(v16);
  free(v19);
  free(v20);

  free(v4);
}

BOOL Siri_Nl_Core_Protocol_SystemReportedFailure.hasReason.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20));
  v6 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  sub_1C05149F8(v5 + v6, v4, &qword_1EBE17400, &unk_1C0970CA0);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1C05145B4(v4, &qword_1EBE17400, &unk_1C0970CA0);
  return v8;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_SystemReportedFailure.clearReason()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1C07415E8(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  sub_1C051F9D4(v5, v9 + v14, &qword_1EBE17400, &unk_1C0970CA0);
  swift_endAccess();
}

uint64_t sub_1C071B11C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = *(v2 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_1C05149F8(v9 + v10, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_1C070BA2C(v8, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v13 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v13;
  *(a2 + 2) = v13;
  *(a2 + 3) = v13;
  v14 = &a2[*(v11 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v15 = *(v11 + 36);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  (*(*(v16 - 8) + 56))(&a2[v15], 1, 1, v16);
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

void (*Siri_Nl_Core_Protocol_SystemReportedFailure.task.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v19;
    *(v14 + 2) = v19;
    *(v14 + 3) = v19;
    v20 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v21 = *(v9 + 36);
    v22 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C071B59C;
}

BOOL Siri_Nl_Core_Protocol_SystemReportedFailure.hasTask.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20));
  v6 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  sub_1C05149F8(v5 + v6, v4, &qword_1EBE17400, &unk_1C0970CA0);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1C05145B4(v4, &qword_1EBE17400, &unk_1C0970CA0);
  return v8;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_SystemReportedFailure.clearTask()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1C07415E8(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  sub_1C051F9D4(v5, v9 + v14, &qword_1EBE17400, &unk_1C0970CA0);
  swift_endAccess();
}

uint64_t (*Siri_Nl_Core_Protocol_RRGroupIdentifier.groupID.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

void sub_1C071BA68(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 12);
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    (*(v11 + 16))((*a1)[4], v9, v10);
    sub_1C05145B4(v13 + v7, a3, a4);
    (*(v11 + 32))(v13 + v7, v8, v10);
    (*(v11 + 56))(v13 + v7, 0, 1, v10);
    (*(v11 + 8))(v9, v10);
  }

  else
  {
    sub_1C05145B4(v13 + v7, a3, a4);
    (*(v11 + 32))(v13 + v7, v9, v10);
    (*(v11 + 56))(v13 + v7, 0, 1, v10);
  }

  free(v9);
  free(v8);
  free(v12);

  free(v6);
}

uint64_t Siri_Nl_Core_Protocol_RRGroupIdentifier.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v3 = &a1[*(v2 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(v2 + 24);
  v5 = sub_1C095D32C();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Siri_Nl_Core_Protocol_RRAnnotation.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  sub_1C05149F8(v1 + *(v7 + 20), v6, &qword_1EBE16D68, &unk_1C09933C0);
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C095D31C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071BEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  sub_1C05149F8(a1 + *(v8 + 20), v7, &qword_1EBE16D68, &unk_1C09933C0);
  v9 = sub_1C095D32C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C095D31C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071C048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE16D68, &unk_1C09933C0);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_RRAnnotation.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE16D68, &unk_1C09933C0);
  v4 = sub_1C095D32C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_RRAnnotation.key.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C071C460;
}

uint64_t sub_1C071C504@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_1C05149F8(v2 + *(v9 + 24), v8, &qword_1EBE16D68, &unk_1C09933C0);
  v10 = sub_1C095D32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C095D31C();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071C670@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0);
  sub_1C05149F8(a1 + *(v10 + 24), v9, &qword_1EBE16D68, &unk_1C09933C0);
  v11 = sub_1C095D32C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a3, v9, v11);
  }

  sub_1C095D31C();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *(a5(0) + 24);
  sub_1C05145B4(a2 + v13, &qword_1EBE16D68, &unk_1C09933C0);
  (*(v9 + 32))(a2 + v13, v12, v8);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t sub_1C071C934(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  sub_1C05145B4(v2 + v4, &qword_1EBE16D68, &unk_1C09933C0);
  v5 = sub_1C095D32C();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*Siri_Nl_Core_Protocol_RRAnnotation.value.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

uint64_t Siri_Nl_Core_Protocol_RRAnnotation.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  v3 = *(v2 + 20);
  v4 = sub_1C095D32C();
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 24);

  return v7(v5, 1, 1, v4);
}

uint64_t sub_1C071CD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.entity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_EntityCandidate.entity.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t (*Siri_Nl_Core_Protocol_EntityCandidate.score.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D2EC();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 28);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E830, &qword_1C09933E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D2DC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E830, &qword_1C09933E0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F90;
}

uint64_t sub_1C071D4D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_1C05149F8(v2 + *(v9 + 32), v8, &qword_1EBE16D68, &unk_1C09933C0);
  v10 = sub_1C095D32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C095D31C();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071D644@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0);
  sub_1C05149F8(a1 + *(v10 + 32), v9, &qword_1EBE16D68, &unk_1C09933C0);
  v11 = sub_1C095D32C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a3, v9, v11);
  }

  sub_1C095D31C();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *(a5(0) + 32);
  sub_1C05145B4(a2 + v13, &qword_1EBE16D68, &unk_1C09933C0);
  (*(v9 + 32))(a2 + v13, v12, v8);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t sub_1C071D908(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  sub_1C05145B4(v2 + v4, &qword_1EBE16D68, &unk_1C09933C0);
  v5 = sub_1C095D32C();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*Siri_Nl_Core_Protocol_EntityCandidate.entityID.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 32);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.appBundleID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C05149F8(v1 + *(v7 + 36), v6, &qword_1EBE16D68, &unk_1C09933C0);
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C095D31C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071DDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C05149F8(a1 + *(v8 + 36), v7, &qword_1EBE16D68, &unk_1C09933C0);
  v9 = sub_1C095D32C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C095D31C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071DF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 36);
  sub_1C05145B4(a2 + v9, &qword_1EBE16D68, &unk_1C09933C0);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.appBundleID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE16D68, &unk_1C09933C0);
  v4 = sub_1C095D32C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_EntityCandidate.appBundleID.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.groupID.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C05149F8(v1 + *(v7 + 40), v6, &qword_1EBE1E838, &qword_1C09933E8);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  }

  *a1 = 0;
  v10 = &a1[*(v8 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(v8 + 24);
  v12 = sub_1C095D32C();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E838, &qword_1C09933E8);
  }

  return result;
}

uint64_t sub_1C071E564@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C05149F8(a1 + *(v8 + 40), v7, &qword_1EBE1E838, &qword_1C09933E8);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  }

  *a2 = 0;
  v11 = &a2[*(v9 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v9 + 24);
  v13 = sub_1C095D32C();
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E838, &qword_1C09933E8);
  }

  return result;
}

uint64_t sub_1C071E708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 40);
  sub_1C05145B4(a2 + v9, &qword_1EBE1E838, &qword_1C09933E8);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.groupID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 40);
  sub_1C05145B4(v1 + v3, &qword_1EBE1E838, &qword_1C09933E8);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_EntityCandidate.groupID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 40);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E838, &qword_1C09933E8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = &v14[*(v9 + 20)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 24);
    v19 = sub_1C095D32C();
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E838, &qword_1C09933E8);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  }

  return sub_1C071EB4C;
}

void sub_1C071EB4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    sub_1C05145B4(v9 + v3, &qword_1EBE1E838, &qword_1C09933E8);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE1E838, &qword_1C09933E8);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_1C071ECF0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_1C05149F8(v4 + *(v13 + 40), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1C05145B4(v12, a1, a2);
  return v15;
}

uint64_t sub_1C071EE28(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  v3 = &a1[v2[5]];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[7];
  v7 = sub_1C095D2EC();
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[8];
  v9 = sub_1C095D32C();
  v10 = *(*(v9 - 8) + 56);
  v10(&a1[v8], 1, 1, v9);
  v10(&a1[v2[9]], 1, 1, v9);
  v11 = v2[10];
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C071F118@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_1C05149F8(v2 + *(v9 + 20), v8, &qword_1EBE17420, &qword_1C0993380);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1C070BA2C(v8, a2, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v12 = a2 + *(v10 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C071F288@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0);
  sub_1C05149F8(a1 + *(v10 + 20), v9, &qword_1EBE17420, &qword_1C0993380);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1C070BA2C(v9, a3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  v13 = a3 + *(v11 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C071F3FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_Task.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_Task.taskID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C071F808;
}

void sub_1C071F808(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C05145B4(v9 + v3, &qword_1EBE17420, &qword_1C0993380);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE17420, &qword_1C0993380);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C071FA00@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = a1(0);
  sub_1C05149F8(v2 + *(v9 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1C070BA2C(v8, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v12 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v12;
  *(a2 + 2) = v12;
  *(a2 + 3) = v12;
  v13 = &a2[*(v10 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v14 = *(v10 + 36);
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C071FBB4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = a2(0);
  sub_1C05149F8(a1 + *(v10 + 24), v9, &qword_1EBE17400, &unk_1C0970CA0);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1C070BA2C(v9, a3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v13 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 1) = v13;
  *(a3 + 2) = v13;
  *(a3 + 3) = v13;
  v14 = &a3[*(v11 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v15 = *(v11 + 36);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  (*(*(v16 - 8) + 56))(&a3[v15], 1, 1, v16);
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C071FD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_Task.task.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_Task.task.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C072024C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_1C05149F8(v2 + *(v9 + 28), v8, &qword_1EBE1E830, &qword_1C09933E0);
  v10 = sub_1C095D2EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C095D2DC();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE1E830, &qword_1C09933E0);
  }

  return result;
}

uint64_t sub_1C07203B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0);
  sub_1C05149F8(a1 + *(v10 + 28), v9, &qword_1EBE1E830, &qword_1C09933E0);
  v11 = sub_1C095D2EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a3, v9, v11);
  }

  sub_1C095D2DC();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE1E830, &qword_1C09933E0);
  }

  return result;
}

uint64_t sub_1C0720528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = sub_1C095D2EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *(a5(0) + 28);
  sub_1C05145B4(a2 + v13, &qword_1EBE1E830, &qword_1C09933E0);
  (*(v9 + 32))(a2 + v13, v12, v8);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t sub_1C072067C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  sub_1C05145B4(v2 + v4, &qword_1EBE1E830, &qword_1C09933E0);
  v5 = sub_1C095D2EC();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Siri_Nl_Core_Protocol_Task.score.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D2EC();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 28);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E830, &qword_1C09933E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D2DC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E830, &qword_1C09933E0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0720964;
}

BOOL sub_1C0720990(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0);
  sub_1C05149F8(v1 + *(v7 + 28), v6, &qword_1EBE1E830, &qword_1C09933E0);
  v8 = sub_1C095D2EC();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_1C05145B4(v6, &qword_1EBE1E830, &qword_1C09933E0);
  return v9;
}

uint64_t sub_1C0720AAC(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 28);
  sub_1C05145B4(v1 + v2, &qword_1EBE1E830, &qword_1C09933E0);
  v3 = sub_1C095D2EC();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t Siri_Nl_Core_Protocol_Task.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  v3 = v2[5];
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = sub_1C095D2EC();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t (*Siri_Nl_Core_Protocol_RewrittenUtterance.rewrittenUtterance.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

uint64_t Siri_Nl_Core_Protocol_RewrittenUtterance.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0);
  v3 = &a1[*(v2 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(v2 + 24);
  v5 = sub_1C095D32C();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C0721078@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_1C05149F8(v2 + *(v9 + 36), v8, &qword_1EBE17420, &qword_1C0993380);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1C070BA2C(v8, a2, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v12 = a2 + *(v10 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C07211E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0);
  sub_1C05149F8(a1 + *(v10 + 36), v9, &qword_1EBE17420, &qword_1C0993380);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1C070BA2C(v9, a3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  v13 = a3 + *(v11 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C072135C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0) + 36);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_AsrHypothesis.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_AsrHypothesis.id.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t Siri_Nl_Core_Protocol_AsrHypothesis.rewrittenUtterances.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1C07218BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0721958(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Siri_Nl_Core_Protocol_AsrHypothesis.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 2) = 0;
  *(a1 + 3) = v2;
  *(a1 + 4) = v2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  v4 = &a1[*(v3 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(v3 + 36);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.ipaPhoneSequence.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.ipaPhoneSequence.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0) + 60);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0) + 60);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  v3 = a1 + *(v2 + 60);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Siri_Nl_Core_Protocol_Span.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_Span.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_Span.input.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_Span.input.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_Span.usoGraph.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  sub_1C05149F8(v1 + *(v7 + 44), v6, &qword_1EBE17400, &unk_1C0970CA0);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v10;
  *(a1 + 2) = v10;
  *(a1 + 3) = v10;
  v11 = &a1[*(v8 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v8 + 36);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C07221B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  sub_1C05149F8(a1 + *(v8 + 44), v7, &qword_1EBE17400, &unk_1C0970CA0);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v11;
  *(a2 + 2) = v11;
  *(a2 + 3) = v11;
  v12 = &a2[*(v9 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v13 = *(v9 + 36);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C0722368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_Span(0) + 44);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_Span.usoGraph.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_Span(0) + 44);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_Span.usoGraph.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_Span(0) + 44);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C07227B8;
}

void sub_1C07227B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C05145B4(v9 + v3, &qword_1EBE17400, &unk_1C0970CA0);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE17400, &unk_1C0970CA0);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Siri_Nl_Core_Protocol_Span.hasUsoGraph.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  sub_1C05149F8(v0 + *(v5 + 44), v4, &qword_1EBE17400, &unk_1C0970CA0);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C05145B4(v4, &qword_1EBE17400, &unk_1C0970CA0);
  return v7;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_Span.clearUsoGraph()()
{
  v1 = *(type metadata accessor for Siri_Nl_Core_Protocol_Span(0) + 44);
  sub_1C05145B4(v0 + v1, &qword_1EBE17400, &unk_1C0970CA0);
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nl_Core_Protocol_Span.matcherNames.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1C0722B3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0722BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t Siri_Nl_Core_Protocol_Span.MatcherName.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C0722CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752320();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

uint64_t Siri_Nl_Core_Protocol_Span.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  v3 = &a1[*(v2 + 40)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(v2 + 44);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C0722E78()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E368);
  __swift_project_value_buffer(v0, qword_1EBE1E368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ALGORITHM_TYPE_UNSET";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALGORITHM_TYPE_RULE";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ALGORITHM_TYPE_MODEL";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07230D0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E380);
  __swift_project_value_buffer(v0, qword_1EBE1E380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C09787B0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "PARSER_IDENTIFIER_UNSET";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69D26E0];
  v6 = sub_1C095D6BC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "PARSER_IDENTIFIER_OVERRIDES";
  *(v8 + 8) = 27;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PARSER_IDENTIFIER_SNLC";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PARSER_IDENTIFIER_NLV4";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PARSER_IDENTIFIER_CATI";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PARSER_IDENTIFIER_SHORTCUTS_EXACT";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v7();
  return sub_1C095D6CC();
}

uint64_t sub_1C07233F0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E398);
  __swift_project_value_buffer(v0, qword_1EBE1E398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C0973530;
  v4 = v25 + v3;
  v5 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v5 = "system_dialog_act_group";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E8];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "salient_entities";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "active_tasks";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "executed_tasks";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "asr_outputs";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "turn_context";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "locale";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v20 = *MEMORY[0x1E69D26E0];
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "tap_to_edit";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v8();
  v23 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "start_timestamp";
  *(v23 + 8) = 15;
  *(v23 + 16) = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C072379C()
{
  v0 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks) = v6;
  *(v3 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks) = v6;
  *(v3 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs) = v6;
  v7 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  result = (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v10 = (v3 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit) = 0;
  *(v3 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp) = 0;
  qword_1EBE1E3B0 = v3;
  return result;
}

uint64_t sub_1C07238CC()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup, &qword_1EBE1E770, &qword_1C0993388);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities);

  v2 = *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks);

  v3 = *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks);

  v4 = *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs);

  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext, &qword_1EBE1E7A0, &qword_1C0993390);
  v5 = *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    v7 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = sub_1C07518CC(v6);

    *(v1 + v2) = v10;
  }

  return sub_1C0723A68();
}

uint64_t sub_1C0723A68()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C0723DC8();
        }

        else
        {
          sub_1C0723EA4();
        }
      }

      else if (result == 1)
      {
        sub_1C0723C10();
      }

      else if (result == 2)
      {
        sub_1C0723CEC();
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        sub_1C0723F80();
      }

      else
      {
        sub_1C072405C();
      }
    }

    else
    {
      switch(result)
      {
        case 7:
          sub_1C0724138();
          break;
        case 8:
          sub_1C07241C4();
          break;
        case 9:
          sub_1C0724250();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C0723C10()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0723CEC()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C0723DC8()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C0723EA4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C0723F80()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  sub_1C0752188(&qword_1EBE1EDC0, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C072405C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  sub_1C0752188(&qword_1EBE1EB08, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0724138()
{
  swift_beginAccess();
  sub_1C095D50C();
  return swift_endAccess();
}

uint64_t sub_1C07241C4()
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C0724250()
{
  swift_beginAccess();
  sub_1C095D53C();
  return swift_endAccess();
}

uint64_t sub_1C072431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v38 - v7;
  v42 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v40 = *(v42 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  v43 = a1;
  sub_1C05149F8(a1 + v19, v13, &qword_1EBE1E770, &qword_1C0993388);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C05145B4(v13, &qword_1EBE1E770, &qword_1C0993388);
    v20 = v44;
  }

  else
  {
    sub_1C070BA2C(v13, v18, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    v21 = v44;
    sub_1C095D6AC();
    v20 = v21;
    result = sub_1C0751DA0(v18, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    if (v21)
    {
      return result;
    }
  }

  v23 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  v24 = v43;
  swift_beginAccess();
  if (!*(*(v24 + v23) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0), sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate), , sub_1C095D69C(), result = , !v20))
  {
    v25 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
    swift_beginAccess();
    if (!*(*(v24 + v25) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_Task(0), sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task), , sub_1C095D69C(), result = , !v20))
    {
      v26 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
      swift_beginAccess();
      if (!*(*(v24 + v26) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_Task(0), sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task), , sub_1C095D69C(), result = , !v20))
      {
        v27 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
        swift_beginAccess();
        if (!*(*(v24 + v27) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0), sub_1C0752188(&qword_1EBE1EDC0, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis), , sub_1C095D69C(), result = , !v20))
        {
          v28 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
          swift_beginAccess();
          v29 = v41;
          sub_1C05149F8(v24 + v28, v41, &qword_1EBE1E7A0, &qword_1C0993390);
          if ((*(v40 + 48))(v29, 1, v42) == 1)
          {
            sub_1C05145B4(v29, &qword_1EBE1E7A0, &qword_1C0993390);
          }

          else
          {
            v30 = v29;
            v31 = v39;
            sub_1C070BA2C(v30, v39, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
            sub_1C0752188(&qword_1EBE1EB08, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
            sub_1C095D6AC();
            result = sub_1C0751DA0(v31, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
            if (v20)
            {
              return result;
            }
          }

          v32 = (v24 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
          swift_beginAccess();
          v33 = *v32;
          v34 = v32[1];
          v35 = HIBYTE(v34) & 0xF;
          if ((v34 & 0x2000000000000000) == 0)
          {
            v35 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (!v35 || (, sub_1C095D66C(), result = , !v20))
          {
            v36 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
            swift_beginAccess();
            if (*(v24 + v36) != 1 || (result = sub_1C095D5FC(), !v20))
            {
              v37 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
              swift_beginAccess();
              result = *(v24 + v37);
              if (result)
              {
                return sub_1C095D68C();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1C0724B48(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F298, &qword_1C0997920);
  v6 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v84 = &v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v78 - v12;
  v87 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v13 = *(v87 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v85 = (&v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2A0, &unk_1C0997928);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v86 = (&v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v78 - v25;
  v27 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  sub_1C05149F8(a1 + v27, v26, &qword_1EBE1E770, &qword_1C0993388);
  v28 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  v29 = v88;
  swift_beginAccess();
  v30 = *(v17 + 56);
  sub_1C05149F8(v26, v20, &qword_1EBE1E770, &qword_1C0993388);
  v31 = v87;
  sub_1C05149F8(v29 + v28, &v20[v30], &qword_1EBE1E770, &qword_1C0993388);
  v32 = *(v13 + 48);
  if (v32(v20, 1, v31) == 1)
  {

    sub_1C05145B4(v26, &qword_1EBE1E770, &qword_1C0993388);
    if (v32(&v20[v30], 1, v31) == 1)
    {
      sub_1C05145B4(v20, &qword_1EBE1E770, &qword_1C0993388);
      goto LABEL_8;
    }

LABEL_6:
    sub_1C05145B4(v20, &qword_1EBE1F2A0, &unk_1C0997928);
    goto LABEL_23;
  }

  v33 = v86;
  sub_1C05149F8(v20, v86, &qword_1EBE1E770, &qword_1C0993388);
  if (v32(&v20[v30], 1, v31) == 1)
  {

    sub_1C05145B4(v26, &qword_1EBE1E770, &qword_1C0993388);
    sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    goto LABEL_6;
  }

  v34 = v85;
  sub_1C070BA2C(&v20[v30], v85, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);

  v35 = _s12SiriOntology0A38_Nl_Core_Protocol_SystemDialogActGroupV2eeoiySbAC_ACtFZ_0(v33, v34);
  sub_1C0751DA0(v34, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  sub_1C05145B4(v26, &qword_1EBE1E770, &qword_1C0993388);
  sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  sub_1C05145B4(v20, &qword_1EBE1E770, &qword_1C0993388);
  if ((v35 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v36 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  swift_beginAccess();
  v37 = *(a1 + v36);
  v38 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  swift_beginAccess();
  v39 = *(v29 + v38);

  v40 = sub_1C055F548(v37, v39);

  if ((v40 & 1) == 0)
  {
    goto LABEL_23;
  }

  v41 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
  swift_beginAccess();
  v42 = *(a1 + v41);
  v43 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
  swift_beginAccess();
  v44 = *(v29 + v43);

  v45 = sub_1C055F4F4(v42, v44);

  if ((v45 & 1) == 0)
  {
    goto LABEL_23;
  }

  v46 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
  swift_beginAccess();
  v49 = *(v29 + v48);

  v50 = sub_1C055F4F4(v47, v49);

  if ((v50 & 1) == 0)
  {
    goto LABEL_23;
  }

  v51 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
  swift_beginAccess();
  v54 = *(v29 + v53);

  v55 = sub_1C05641DC(v52, v54);

  if ((v55 & 1) == 0)
  {
    goto LABEL_23;
  }

  v56 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  v57 = v81;
  sub_1C05149F8(a1 + v56, v81, &qword_1EBE1E7A0, &qword_1C0993390);
  v58 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  v59 = *(v80 + 48);
  v60 = v84;
  sub_1C05149F8(v57, v84, &qword_1EBE1E7A0, &qword_1C0993390);
  sub_1C05149F8(v29 + v58, v60 + v59, &qword_1EBE1E7A0, &qword_1C0993390);
  v61 = v83;
  v62 = *(v82 + 48);
  if (v62(v60, 1, v83) != 1)
  {
    v63 = v79;
    sub_1C05149F8(v60, v79, &qword_1EBE1E7A0, &qword_1C0993390);
    if (v62(v60 + v59, 1, v61) != 1)
    {
      v64 = v60 + v59;
      v65 = v78;
      sub_1C070BA2C(v64, v78, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
      v66 = _s12SiriOntology0A29_Nl_Core_Protocol_TurnContextV2eeoiySbAC_ACtFZ_0(v63, v65);
      sub_1C0751DA0(v65, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
      sub_1C05145B4(v57, &qword_1EBE1E7A0, &qword_1C0993390);
      sub_1C0751DA0(v63, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
      sub_1C05145B4(v60, &qword_1EBE1E7A0, &qword_1C0993390);
      if ((v66 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    sub_1C05145B4(v57, &qword_1EBE1E7A0, &qword_1C0993390);
    sub_1C0751DA0(v63, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
LABEL_17:
    sub_1C05145B4(v60, &qword_1EBE1F298, &qword_1C0997920);
    goto LABEL_23;
  }

  sub_1C05145B4(v57, &qword_1EBE1E7A0, &qword_1C0993390);
  if (v62(v60 + v59, 1, v61) != 1)
  {
    goto LABEL_17;
  }

  sub_1C05145B4(v60, &qword_1EBE1E7A0, &qword_1C0993390);
LABEL_19:
  v67 = (a1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = (v29 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  if (v68 == *v70 && v69 == v70[1] || (sub_1C095DF3C() & 1) != 0)
  {
    v71 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
    swift_beginAccess();
    LODWORD(v71) = *(a1 + v71);
    v72 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
    swift_beginAccess();
    if (v71 == *(v29 + v72))
    {
      v74 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
      swift_beginAccess();
      v75 = *(a1 + v74);

      v76 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
      swift_beginAccess();
      v77 = *(v29 + v76);

      return v75 == v77;
    }
  }

LABEL_23:

  return 0;
}

uint64_t sub_1C0725640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F290, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07256E0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EAF0, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C072574C()
{
  sub_1C0752188(&qword_1EBE1EAF0, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput);

  return sub_1C095D5AC();
}

uint64_t sub_1C0725828()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E3B8);
  __swift_project_value_buffer(v0, qword_1EBE1E3B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "nl_context";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "legacy_nl_context";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0725A54()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  sub_1C0752188(&qword_1EBE1E850, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
  return sub_1C095D55C();
}

uint64_t sub_1C0725B08()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  sub_1C0752188(&qword_1EBE1E848, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_TurnContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D0, &qword_1C09933A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7C8, &qword_1C0993398);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE1E7C8, &qword_1C0993398);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE1E7C8, &qword_1C0993398);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
    sub_1C0752188(&qword_1EBE1E850, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE1E7D0, &qword_1C09933A0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E7D0, &qword_1C09933A0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
    sub_1C0752188(&qword_1EBE1E848, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C07260A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F288, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0726140(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EB08, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07261AC()
{
  sub_1C0752188(&qword_1EBE1EB08, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);

  return sub_1C095D5AC();
}

uint64_t sub_1C0726248()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E3D0);
  __swift_project_value_buffer(v0, qword_1EBE1E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "system_dialog_act_group";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "active_tasks";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "executed_tasks";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "salient_entities";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "system_dialog_acts";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_NLContext.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C072671C();
        }

        else if (result == 2)
        {
LABEL_4:
          v3 = v0;
          type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
          sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task);
LABEL_5:
          v0 = v3;
          sub_1C095D54C();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_4;
          case 4:
            v3 = v0;
            type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
            sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate);
            goto LABEL_5;
          case 5:
            v3 = v0;
            type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
            sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
            goto LABEL_5;
        }
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C072671C()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0) + 36);
  type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_NLContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v19 = v3;
  sub_1C05149F8(v3 + *(v18 + 36), v8, &qword_1EBE1E770, &qword_1C0993388);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E770, &qword_1C0993388);
  }

  else
  {
    sub_1C070BA2C(v8, v13, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v13, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    if (v4)
    {
      return result;
    }
  }

  v15 = v19;
  if (!*(*v19 + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_Task(0), sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task), result = sub_1C095D69C(), !v4))
  {
    if (!*(v15[1] + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_Task(0), sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task), result = sub_1C095D69C(), !v4))
    {
      if (!*(v15[2] + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0), sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate), result = sub_1C095D69C(), !v4))
      {
        if (!*(v15[3] + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0), sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct), result = sub_1C095D69C(), !v4))
        {
          v16 = v15 + *(v18 + 32);
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0726C58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  *(a2 + 3) = v4;
  v5 = &a2[*(a1 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = *(a1 + 36);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1C0726D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F280, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0726DD4(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E850, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0726E40()
{
  sub_1C0752188(&qword_1EBE1E850, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);

  return sub_1C095D5AC();
}

uint64_t sub_1C0726EDC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E3E8);
  __swift_project_value_buffer(v0, qword_1EBE1E3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C09787B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dictation_prompt";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "strict_prompt";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "previous_domain_name";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "listen_after_speaking";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "rendered_texts";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "legacy_context_source";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_LegacyNLContext.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_4;
          case 5:
            sub_1C095D32C();
            sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
            sub_1C095D54C();
            break;
          case 7:
            sub_1C07521D0();
            sub_1C095D45C();
            break;
        }
      }

      else
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_1C095D44C();
          goto LABEL_5;
        }

        if (result == 3)
        {
          sub_1C095D50C();
        }
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_LegacyNLContext.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_1C095D5FC(), !v1))
  {
    if (*(v0 + 1) != 1 || (result = sub_1C095D5FC(), !v1))
    {
      v3 = *(v0 + 16);
      v4 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
      }

      if (!v4 || (result = sub_1C095D66C(), !v1))
      {
        if (*(v0 + 24) != 1 || (result = sub_1C095D5FC(), !v1))
        {
          if (*(*(v0 + 32) + 16))
          {
            sub_1C095D32C();
            sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
            result = sub_1C095D69C();
            if (v1)
            {
              return result;
            }

            if (!*(v0 + 40))
            {
              goto LABEL_17;
            }
          }

          else if (!*(v0 + 40))
          {
LABEL_17:
            v5 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0) + 40);
            return sub_1C095D36C();
          }

          v6 = *(v0 + 48);
          sub_1C07521D0();
          result = sub_1C095D60C();
          if (v1)
          {
            return result;
          }

          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0727584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  v3 = a2 + *(a1 + 40);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t (*sub_1C07275E4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_1C0727638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F278, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07276D8(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E848, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0727744()
{
  sub_1C0752188(&qword_1EBE1E848, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);

  return sub_1C095D5AC();
}

uint64_t sub_1C07277C4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E400);
  __swift_project_value_buffer(v0, qword_1EBE1E400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LEGACYCONTEXTSOURCE_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LEGACYCONTEXTSOURCE_MODALITY";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LEGACYCONTEXTSOURCE_POMMES";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LEGACYCONTEXTSOURCE_PROTO_PROMPT_CONTEXT";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0727A6C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E418);
  __swift_project_value_buffer(v0, qword_1EBE1E418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "asr_hypothesis_index";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "repetition_type";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_RepetitionResult.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D52C();
      }

      else if (result == 2)
      {
        sub_1C0752224();
        sub_1C095D45C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_RepetitionResult.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C095D67C(), !v1))
  {
    if (!*(v0 + 8) || (v4 = *(v0 + 8), v5 = *(v0 + 16), sub_1C0752224(), result = sub_1C095D60C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0) + 24);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C0727E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F270, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0727F20(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E8D8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0727F8C()
{
  sub_1C0752188(&qword_1EBE1E8D8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);

  return sub_1C095D5AC();
}

uint64_t sub_1C072800C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E430);
  __swift_project_value_buffer(v0, qword_1EBE1E430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REPETITION_TYPE_NOT_AVAILABLE";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REPETITION_TYPE_NO";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REPETITION_TYPE_PARTIAL";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REPETITION_TYPE_FULL";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07282B4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E448);
  __swift_project_value_buffer(v0, qword_1EBE1E448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "algorithm";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parser_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E8];
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_Parser.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        sub_1C07522CC();
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1C095D41C();
    }

    v3 = v0;
    sub_1C0752278();
LABEL_5:
    v0 = v3;
    sub_1C095D45C();
    goto LABEL_6;
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_Parser.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v6 = *(v0 + 8), sub_1C0752278(), result = sub_1C095D60C(), !v1))
  {
    if (!v0[2] || (v5 = v0[2], v7 = *(v0 + 24), sub_1C07522CC(), result = sub_1C095D60C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_Parser(0) + 24);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C07286BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C072873C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F268, type metadata accessor for Siri_Nl_Core_Protocol_Parser);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07287DC(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E8D0, type metadata accessor for Siri_Nl_Core_Protocol_Parser);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0728848()
{
  sub_1C0752188(&qword_1EBE1E8D0, type metadata accessor for Siri_Nl_Core_Protocol_Parser);

  return sub_1C095D5AC();
}

uint64_t sub_1C07288E4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E460);
  __swift_project_value_buffer(v0, qword_1EBE1E460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C09787B0;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "user_dialog_acts";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69D26E8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "probability";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parser_id";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "repetition_result";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "parser";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UserParse.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1C095D50C();
            break;
          case 5:
            sub_1C0728E18();
            break;
          case 6:
            sub_1C0728ECC();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1C0728D64();
            break;
          case 2:
            type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
            sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
            sub_1C095D54C();
            break;
          case 3:
            sub_1C095D4EC();
            break;
        }
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0728D64()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 32);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0728E18()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 36);
  type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  sub_1C0752188(&qword_1EBE1E8D8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  return sub_1C095D55C();
}

uint64_t sub_1C0728ECC()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 40);
  type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  sub_1C0752188(&qword_1EBE1E8D0, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserParse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v49 = a3;
  v47 = a1;
  v48 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v37 - v8;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v37 - v14;
  v46 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  v42 = *(v46 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v37 - v19;
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  sub_1C05149F8(v5 + v44[8], v20, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1C05145B4(v20, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v20, v25, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v4)
    {
      return result;
    }
  }

  v27 = v46;
  if (*(*v5 + 16))
  {
    type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
    sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    result = sub_1C095D69C();
    v28 = v45;
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v28 = v45;
  }

  v29 = v43;
  if (*(v5 + 8) == 0.0 || (result = sub_1C095D65C(), !v4))
  {
    v30 = *(v5 + 24);
    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = *(v5 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v31 || (result = sub_1C095D66C(), !v4))
    {
      sub_1C05149F8(v5 + v44[9], v28, &qword_1EBE1E7D8, &qword_1C09933A8);
      if ((*(v42 + 48))(v28, 1, v27) == 1)
      {
        sub_1C05145B4(v28, &qword_1EBE1E7D8, &qword_1C09933A8);
      }

      else
      {
        v32 = v28;
        v33 = v39;
        sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
        sub_1C0752188(&qword_1EBE1E8D8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
        sub_1C095D6AC();
        result = sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
        if (v4)
        {
          return result;
        }
      }

      sub_1C05149F8(v5 + v44[10], v29, &qword_1EBE1E7E0, &qword_1C09933B0);
      if ((*(v40 + 48))(v29, 1, v41) == 1)
      {
        sub_1C05145B4(v29, &qword_1EBE1E7E0, &qword_1C09933B0);
      }

      else
      {
        v34 = v29;
        v35 = v38;
        sub_1C070BA2C(v34, v38, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
        sub_1C0752188(&qword_1EBE1E8D0, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
        sub_1C095D6AC();
        result = sub_1C0751DA0(v35, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
        if (v4)
        {
          return result;
        }
      }

      v36 = v5 + v44[7];
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C07296C4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = &a2[a1[7]];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = a1[8];
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[9];
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[10];
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(&a2[v9], 1, 1, v10);
}

uint64_t sub_1C0729834(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F260, type metadata accessor for Siri_Nl_Core_Protocol_UserParse);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07298D4(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EB60, type metadata accessor for Siri_Nl_Core_Protocol_UserParse);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0729940()
{
  sub_1C0752188(&qword_1EBE1EB60, type metadata accessor for Siri_Nl_Core_Protocol_UserParse);

  return sub_1C095D5AC();
}

uint64_t sub_1C07299DC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E478);
  __swift_project_value_buffer(v0, qword_1EBE1E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1C0993340;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "started";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v35 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "continued";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v35 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "accepted";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v35 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "rejected";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v35 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "disambiguated";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v35 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "cancelled";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v35 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "wanted_to_repeat";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v20 = *MEMORY[0x1E69D26E8];
  v8();
  v21 = (v35 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "acknowledged";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v8();
  v23 = v35 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "wanted_to_proceed";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v8();
  v24 = (v35 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "wanted_to_pause";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v8();
  v26 = (v35 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "responded";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v8();
  v28 = (v35 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "delegated";
  *(v29 + 1) = 9;
  v29[16] = 2;
  v8();
  v30 = (v35 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "user_stated_task";
  *(v31 + 1) = 16;
  v31[16] = 2;
  v8();
  v32 = (v35 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 101;
  *v33 = "alignment";
  *(v33 + 1) = 9;
  v33[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C072A0F0(v5, a1, a2, a3);
        break;
      case 2:
        sub_1C072A6A0(v5, a1, a2, a3);
        break;
      case 3:
        sub_1C072AC5C(v5, a1, a2, a3);
        break;
      case 4:
        sub_1C072B218(v5, a1, a2, a3);
        break;
      case 5:
        sub_1C072B7D4(v5, a1, a2, a3);
        break;
      case 6:
        sub_1C072BD90(v5, a1, a2, a3);
        break;
      case 7:
        sub_1C072C34C(v5, a1, a2, a3);
        break;
      case 8:
        sub_1C072C908(v5, a1, a2, a3);
        break;
      case 9:
        sub_1C072CEC4(v5, a1, a2, a3);
        break;
      case 10:
        sub_1C072D480(v5, a1, a2, a3);
        break;
      case 11:
        sub_1C072DA3C(v5, a1, a2, a3);
        break;
      case 12:
        sub_1C072DFF8(v5, a1, a2, a3);
        break;
      case 13:
        sub_1C072E5B4(v5, a1, a2, a3);
        break;
      case 101:
        sub_1C072EB70();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C072A0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F308, &qword_1C0997998);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }

    else
    {
      sub_1C05145B4(v28, &qword_1EBE1F308, &qword_1C0997998);
      v35 = v43;
      sub_1C070BA2C(v20, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EB88, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F308, &qword_1C0997998);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F308, &qword_1C0997998);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F308, &qword_1C0997998);
    return sub_1C05145B4(v36, &qword_1EBE1F308, &qword_1C0997998);
  }

  else
  {
    v39 = v44;
    sub_1C070BA2C(v36, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F308, &qword_1C0997998);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F310, &qword_1C09979A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C05145B4(v28, &qword_1EBE1F310, &qword_1C09979A0);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EBA0, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F310, &qword_1C09979A0);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F310, &qword_1C09979A0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F310, &qword_1C09979A0);
    return sub_1C05145B4(v36, &qword_1EBE1F310, &qword_1C09979A0);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F310, &qword_1C09979A0);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072AC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F318, &qword_1C09979A8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C05145B4(v28, &qword_1EBE1F318, &qword_1C09979A8);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EBB8, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F318, &qword_1C09979A8);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F318, &qword_1C09979A8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F318, &qword_1C09979A8);
    return sub_1C05145B4(v36, &qword_1EBE1F318, &qword_1C09979A8);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F318, &qword_1C09979A8);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072B218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F320, &qword_1C09979B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C05145B4(v28, &qword_1EBE1F320, &qword_1C09979B0);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EBD0, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F320, &qword_1C09979B0);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F320, &qword_1C09979B0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F320, &qword_1C09979B0);
    return sub_1C05145B4(v36, &qword_1EBE1F320, &qword_1C09979B0);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F320, &qword_1C09979B0);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F328, &qword_1C09979B8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C05145B4(v28, &qword_1EBE1F328, &qword_1C09979B8);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EBE8, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F328, &qword_1C09979B8);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F328, &qword_1C09979B8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F328, &qword_1C09979B8);
    return sub_1C05145B4(v36, &qword_1EBE1F328, &qword_1C09979B8);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F328, &qword_1C09979B8);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072BD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F330, &qword_1C09979C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C05145B4(v28, &qword_1EBE1F330, &qword_1C09979C0);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EC00, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F330, &qword_1C09979C0);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F330, &qword_1C09979C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F330, &qword_1C09979C0);
    return sub_1C05145B4(v36, &qword_1EBE1F330, &qword_1C09979C0);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F330, &qword_1C09979C0);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072C34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F338, &qword_1C09979C8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C05145B4(v28, &qword_1EBE1F338, &qword_1C09979C8);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EC18, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F338, &qword_1C09979C8);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F338, &qword_1C09979C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F338, &qword_1C09979C8);
    return sub_1C05145B4(v36, &qword_1EBE1F338, &qword_1C09979C8);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F338, &qword_1C09979C8);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072C908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F340, &qword_1C09979D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C05145B4(v28, &qword_1EBE1F340, &qword_1C09979D0);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EC30, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F340, &qword_1C09979D0);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F340, &qword_1C09979D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F340, &qword_1C09979D0);
    return sub_1C05145B4(v36, &qword_1EBE1F340, &qword_1C09979D0);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F340, &qword_1C09979D0);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072CEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F348, &qword_1C09979D8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C05145B4(v28, &qword_1EBE1F348, &qword_1C09979D8);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EC48, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F348, &qword_1C09979D8);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F348, &qword_1C09979D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F348, &qword_1C09979D8);
    return sub_1C05145B4(v36, &qword_1EBE1F348, &qword_1C09979D8);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F348, &qword_1C09979D8);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072D480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F350, &qword_1C09979E0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C05145B4(v28, &qword_1EBE1F350, &qword_1C09979E0);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EC60, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F350, &qword_1C09979E0);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F350, &qword_1C09979E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F350, &qword_1C09979E0);
    return sub_1C05145B4(v36, &qword_1EBE1F350, &qword_1C09979E0);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F350, &qword_1C09979E0);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072DA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F358, &qword_1C09979E8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C05145B4(v28, &qword_1EBE1F358, &qword_1C09979E8);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EC78, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F358, &qword_1C09979E8);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F358, &qword_1C09979E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F358, &qword_1C09979E8);
    return sub_1C05145B4(v36, &qword_1EBE1F358, &qword_1C09979E8);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F358, &qword_1C09979E8);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F360, &qword_1C09979F0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C05145B4(v28, &qword_1EBE1F360, &qword_1C09979F0);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1EC90, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F360, &qword_1C09979F0);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F360, &qword_1C09979F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F360, &qword_1C09979F0);
    return sub_1C05145B4(v36, &qword_1EBE1F360, &qword_1C09979F0);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F360, &qword_1C09979F0);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072E5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F368, &qword_1C09979F8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C05149F8(a1, v14, &qword_1EBE17408, &unk_1C0993370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C070BA2C(v14, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v22, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C05145B4(v28, &qword_1EBE1F368, &qword_1C09979F8);
      v35 = v44;
      sub_1C070BA2C(v20, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
      sub_1C070BA2C(v35, v28, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C0752188(&qword_1EBE1ECA8, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
  v37 = v47;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v28, &qword_1EBE1F368, &qword_1C09979F8);
  }

  sub_1C05149F8(v28, v36, &qword_1EBE1F368, &qword_1C09979F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1F368, &qword_1C09979F8);
    return sub_1C05145B4(v36, &qword_1EBE1F368, &qword_1C09979F8);
  }

  else
  {
    v39 = v43;
    sub_1C070BA2C(v36, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
    if (v32 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v28, &qword_1EBE1F368, &qword_1C09979F8);
    v40 = v42;
    sub_1C05145B4(v42, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v39, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C072EB70()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  sub_1C0752188(&qword_1EBE1E8E8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v27 = a2;
  v26 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v25 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v12 = *(v25 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - v18;
  sub_1C05149F8(v6, &v25 - v18, &qword_1EBE17408, &unk_1C0993370);
  v20 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1C072F390(v6, v26, v27, a3);
        goto LABEL_22;
      case 2u:
        sub_1C072F5C8(v6, v26, v27, a3);
        goto LABEL_22;
      case 3u:
        sub_1C072F800(v6, v26, v27, a3);
        goto LABEL_22;
      case 4u:
        sub_1C072FA38(v6, v26, v27, a3);
        goto LABEL_22;
      case 5u:
        sub_1C072FC70(v6, v26, v27, a3);
        goto LABEL_22;
      case 6u:
        sub_1C072FEA8(v6, v26, v27, a3);
        goto LABEL_22;
      case 7u:
        sub_1C07300E0(v6, v26, v27, a3);
        if (!v4)
        {
          goto LABEL_12;
        }

        return sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      case 8u:
        sub_1C0730318(v6, v26, v27, a3);
        if (!v4)
        {
          goto LABEL_12;
        }

        return sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      case 9u:
        sub_1C0730550(v6, v26, v27, a3);
        if (!v4)
        {
          goto LABEL_12;
        }

        return sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      case 0xAu:
        sub_1C0730788(v6, v26, v27, a3);
        if (!v4)
        {
          goto LABEL_12;
        }

        return sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      case 0xBu:
        sub_1C07309C0(v6, v26, v27, a3);
        if (v4)
        {
          return sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        }

        goto LABEL_12;
      case 0xCu:
        sub_1C0730BF8(v6, v26, v27, a3);
        if (v4)
        {
          return sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        }

LABEL_12:
        v5 = v4;
        sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        break;
      default:
        sub_1C072F15C(v6, v26, v27, a3);
LABEL_22:
        result = sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        if (v4)
        {
          return result;
        }

        v5 = 0;
        break;
    }
  }

  v21 = v25;
  v22 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  sub_1C05149F8(v6 + *(v22 + 24), v11, &qword_1EBE1E7E8, &qword_1C09933B8);
  if ((*(v12 + 48))(v11, 1, v21) == 1)
  {
    sub_1C05145B4(v11, &qword_1EBE1E7E8, &qword_1C09933B8);
LABEL_7:
    v24 = v6 + *(v22 + 20);
    return sub_1C095D36C();
  }

  sub_1C070BA2C(v11, v15, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  sub_1C0752188(&qword_1EBE1E8E8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  sub_1C095D6AC();
  result = sub_1C0751DA0(v15, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  if (!v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C072F15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    sub_1C0752188(&qword_1EBE1EB88, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072F390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    sub_1C0752188(&qword_1EBE1EBA0, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072F5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
    sub_1C0752188(&qword_1EBE1EBB8, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
    sub_1C0752188(&qword_1EBE1EBD0, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
    sub_1C0752188(&qword_1EBE1EBE8, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072FC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
    sub_1C0752188(&qword_1EBE1EC00, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072FEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
    sub_1C0752188(&qword_1EBE1EC18, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C07300E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
    sub_1C0752188(&qword_1EBE1EC30, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C0730318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
    sub_1C0752188(&qword_1EBE1EC48, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C0730550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
    sub_1C0752188(&qword_1EBE1EC60, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C0730788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
    sub_1C0752188(&qword_1EBE1EC78, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C07309C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
    sub_1C0752188(&qword_1EBE1EC90, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C0730BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
    sub_1C0752188(&qword_1EBE1ECA8, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C0730E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C0730F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F258, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0731028(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0731094()
{
  sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);

  return sub_1C095D5AC();
}

uint64_t sub_1C07311A0()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t sub_1C0731314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F250, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07313B4(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EB88, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0731420()
{
  sub_1C0752188(&qword_1EBE1EB88, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);

  return sub_1C095D5AC();
}

uint64_t sub_1C07314BC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E4A8);
  __swift_project_value_buffer(v0, qword_1EBE1E4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "step";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07316F0()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C07317A4()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserContinued.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0731CC0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v8 = *(a1 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 24);
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4 + v10, 1, 1, v11);
}

uint64_t sub_1C0731DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F248, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0731E88(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EBA0, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0731EF4()
{
  sub_1C0752188(&qword_1EBE1EBA0, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);

  return sub_1C095D5AC();
}

uint64_t sub_1C0731FBC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E4C0);
  __swift_project_value_buffer(v0, qword_1EBE1E4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "offer_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07321F0()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C07322A4()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserAccepted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C073280C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F240, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07328AC(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EBB8, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0732918()
{
  sub_1C0752188(&qword_1EBE1EBB8, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);

  return sub_1C095D5AC();
}

uint64_t sub_1C07329E0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E4D8);
  __swift_project_value_buffer(v0, qword_1EBE1E4D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "offer_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0732C14()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0732CC8()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserRejected.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0733230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F238, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07332D0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EBD0, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073333C()
{
  sub_1C0752188(&qword_1EBE1EBD0, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);

  return sub_1C095D5AC();
}

uint64_t sub_1C0733404()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E4F0);
  __swift_project_value_buffer(v0, qword_1EBE1E4F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "disambiguation_id";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "option_query";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0733630()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C07336E4()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserDisambiguated.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0733C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F230, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0733CEC(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EBE8, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0733D58()
{
  sub_1C0752188(&qword_1EBE1EBE8, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);

  return sub_1C095D5AC();
}

uint64_t sub_1C0733E20()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E508);
  __swift_project_value_buffer(v0, qword_1EBE1E508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0734054()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0734108()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserCancelled.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0734670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F228, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0734710(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC00, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073477C()
{
  sub_1C0752188(&qword_1EBE1EC00, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);

  return sub_1C095D5AC();
}

uint64_t sub_1C0734844()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E520);
  __swift_project_value_buffer(v0, qword_1EBE1E520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act_id";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0734A78()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0734B2C()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToRepeat.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0735094(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F220, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0735134(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC18, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07351A0()
{
  sub_1C0752188(&qword_1EBE1EC18, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);

  return sub_1C095D5AC();
}

uint64_t sub_1C0735268()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E538);
  __swift_project_value_buffer(v0, qword_1EBE1E538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act_id";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C073549C()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0735550()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserAcknowledged.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0735AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F218, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0735B58(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC30, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0735BC4()
{
  sub_1C0752188(&qword_1EBE1EC30, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);

  return sub_1C095D5AC();
}

uint64_t sub_1C0735C8C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E550);
  __swift_project_value_buffer(v0, qword_1EBE1E550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0735EC0()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0735F74()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToProceed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C07364DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F210, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C073657C(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC48, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07365E8()
{
  sub_1C0752188(&qword_1EBE1EC48, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);

  return sub_1C095D5AC();
}

uint64_t sub_1C07366B0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E568);
  __swift_project_value_buffer(v0, qword_1EBE1E568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07368E4()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0736998()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToPause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0736F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F208, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0736FA0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC60, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073700C()
{
  sub_1C0752188(&qword_1EBE1EC60, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);

  return sub_1C095D5AC();
}

uint64_t sub_1C07370D4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E580);
  __swift_project_value_buffer(v0, qword_1EBE1E580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act_id";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "references";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07372F4()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0737468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F200, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0737508(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC78, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0737574()
{
  sub_1C0752188(&qword_1EBE1EC78, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);

  return sub_1C095D5AC();
}

uint64_t sub_1C073763C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E598);
  __swift_project_value_buffer(v0, qword_1EBE1E598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_hypothesis_index";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewritten_utterance";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "external_parser_id";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asr_uuid";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "spans";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_DelegatedUserDialogAct.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C095D52C();
        }

        else if (result == 2)
        {
          sub_1C0737A78(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1C095D50C();
            break;
          case 4:
            sub_1C0737B30();
            break;
          case 5:
            type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
            sub_1C0752188(&qword_1EBE1E958, type metadata accessor for Siri_Nl_Core_Protocol_Span);
            sub_1C095D54C();
            break;
        }
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0737A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 32);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
  return sub_1C095D55C();
}

uint64_t sub_1C0737B30()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0) + 36);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_DelegatedUserDialogAct.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v25 - v4;
  v30 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v28 = *(v30 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  v11 = sub_1C095D32C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  v31 = v0;
  if (v16)
  {
    result = sub_1C095D67C();
    if (v1)
    {
      return result;
    }

    v0 = v31;
  }

  v26 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  sub_1C05149F8(v0 + *(v26 + 32), v10, &qword_1EBE16D68, &unk_1C09933C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C05145B4(v10, &qword_1EBE16D68, &unk_1C09933C0);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
    sub_1C095D6AC();
    if (v1)
    {
      return (*(v12 + 8))(v15, v11);
    }

    (*(v12 + 8))(v15, v11);
    v0 = v31;
  }

  v18 = *(v0 + 2);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(v0 + 1) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    result = sub_1C095D66C();
    if (v1)
    {
      return result;
    }

    v0 = v31;
  }

  v20 = v26;
  v21 = v29;
  sub_1C05149F8(v0 + *(v26 + 36), v29, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v28 + 48))(v21, 1, v30) == 1)
  {
    sub_1C05145B4(v21, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    v22 = v21;
    v23 = v27;
    sub_1C070BA2C(v22, v27, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v23, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v1)
    {
      return result;
    }

    v0 = v31;
  }

  if (!*(*(v0 + 3) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_Span(0), sub_1C0752188(&qword_1EBE1E958, type metadata accessor for Siri_Nl_Core_Protocol_Span), result = sub_1C095D69C(), !v1))
  {
    v24 = v31 + *(v20 + 28);
    return sub_1C095D36C();
  }

  return result;
}