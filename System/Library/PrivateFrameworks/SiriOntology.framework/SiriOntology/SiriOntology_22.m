uint64_t sub_1C075C358(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v10 = *(a2(0) + 40);
  sub_1C05145B4(v5 + v10, a3, a4);
  v11 = a5(0);
  v14 = *(v11 - 8);
  (*(v14 + 32))(v5 + v10, a1, v11);
  v12 = *(v14 + 56);

  return v12(v5 + v10, 0, 1, v11);
}

void (*Siri_Nl_Core_Protocol_UsoEntityIdentifier.probability.modify(void *a1))(uint64_t **a1, char a2)
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
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 40);
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

BOOL sub_1C075C68C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
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

uint64_t sub_1C075C7C4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void Siri_Nl_Core_Protocol_UsoEntityIdentifier.sourceComponent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.sourceComponent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.groupIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 44));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.groupIndex.setter(int a1)
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nl_Core_Protocol_UsoEntityIdentifier.groupIndex.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1C075C98C;
}

uint64_t sub_1C075C98C(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_UsoEntityIdentifier.clearGroupIndex()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.interpretationGroup.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 48));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.interpretationGroup.setter(int a1)
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nl_Core_Protocol_UsoEntityIdentifier.interpretationGroup.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 48);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1C0766244;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_UsoEntityIdentifier.clearInterpretationGroup()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

unint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C075CBF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0764D60();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v3 = a1 + v2[8];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = v2[9];
  v5 = sub_1C095D32C();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[10];
  v7 = sub_1C095D2EC();
  result = (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v9 = a1 + v2[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v2[12];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t static Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBE1F3A8 = a1;
}

uint64_t sub_1C075CE30@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EBE1F3A8;
}

uint64_t Siri_Nl_Core_Protocol_UsoOntologyVocabulary.usoVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  sub_1C05149F8(v1 + *(v7 + 24), v6, &qword_1EBE16DD0, &unk_1C0997A40);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C075A678(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = a1 + *(v8 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16DD0, &unk_1C0997A40);
  }

  return result;
}

uint64_t sub_1C075D000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  sub_1C05149F8(a1 + *(v8 + 24), v7, &qword_1EBE16DD0, &unk_1C0997A40);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C075A678(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v11 = a2 + *(v9 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16DD0, &unk_1C0997A40);
  }

  return result;
}

uint64_t sub_1C075D164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C075A960(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C075A678(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoOntologyVocabulary.usoVersion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C075A678(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UsoOntologyVocabulary.usoVersion.modify(void *a1))(uint64_t **, char)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40) - 8) + 64);
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
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
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
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16DD0, &unk_1C0997A40);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16DD0, &unk_1C0997A40);
    }
  }

  else
  {
    sub_1C075A678(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  return sub_1C076626C;
}

void sub_1C075D55C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1C075A960(v11, v10, a5);
    sub_1C05145B4(v14 + v9, a3, a4);
    sub_1C075A678(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_1C075A9C8(v11, a5);
  }

  else
  {
    sub_1C05145B4(v14 + v9, a3, a4);
    sub_1C075A678(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Siri_Nl_Core_Protocol_UsoOntologyVocabulary.hasUsoVersion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  sub_1C05149F8(v0 + *(v5 + 24), v4, &qword_1EBE16DD0, &unk_1C0997A40);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C05145B4(v4, &qword_1EBE16DD0, &unk_1C0997A40);
  return v7;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_UsoOntologyVocabulary.clearUsoVersion()()
{
  v1 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0) + 24);
  sub_1C05145B4(v0 + v1, &qword_1EBE16DD0, &unk_1C0997A40);
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nl_Core_Protocol_UsoOntologyVocabulary.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  v3 = &a1[*(v2 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Siri_Nl_Core_Protocol_UsoLabel.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_UsoLabel.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C075D9E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C075DA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C075DB60()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F3B0);
  __swift_project_value_buffer(v0, qword_1EBE1F3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nodes";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "edges";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "identifiers";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "alignments";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.decodeMessage<A>(decoder:)()
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

      if (result > 2)
      {
        break;
      }

      if (result == 1)
      {
        sub_1C075E040();
        goto LABEL_5;
      }

      if (result == 2)
      {
        type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
        sub_1C075E524(&qword_1EBE1F470, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
LABEL_18:
        sub_1C095D54C();
      }

LABEL_5:
      result = sub_1C095D41C();
    }

    switch(result)
    {
      case 3:
        v3 = v0;
        type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
        sub_1C075E524(&qword_1EBE1F478, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
        break;
      case 4:
        v3 = v0;
        type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
        sub_1C075E524(&qword_1EBE1F480, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
        break;
      case 5:
        v3 = v0;
        type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
        sub_1C075E524(&qword_1EBE1E8E8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
        break;
      default:
        goto LABEL_5;
    }

    v0 = v3;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1C075E040()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0) + 36);
  type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  sub_1C075E524(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v19 = v3;
  sub_1C05149F8(v3 + *(v18 + 36), v8, &qword_1EBE16DD0, &unk_1C0997A40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE16DD0, &unk_1C0997A40);
  }

  else
  {
    sub_1C075A678(v8, v13, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    sub_1C075E524(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    sub_1C095D6AC();
    result = sub_1C075A9C8(v13, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    if (v4)
    {
      return result;
    }
  }

  v15 = v19;
  if (!*(*v19 + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0), sub_1C075E524(&qword_1EBE1F470, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode), result = sub_1C095D69C(), !v4))
  {
    if (!*(v15[1] + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0), sub_1C075E524(&qword_1EBE1F478, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge), result = sub_1C095D69C(), !v4))
    {
      if (!*(v15[2] + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0), sub_1C075E524(&qword_1EBE1F480, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier), result = sub_1C095D69C(), !v4))
      {
        if (!*(v15[3] + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0), sub_1C075E524(&qword_1EBE1E8E8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment), result = sub_1C095D69C(), !v4))
        {
          v16 = v15 + *(v18 + 32);
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C075E524(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C075E5B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  *(a2 + 3) = v4;
  v5 = &a2[*(a1 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = *(a1 + 36);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1C075E694(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F670, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C075E734(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C075E7A0()
{
  sub_1C075E524(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);

  return sub_1C095D5AC();
}

uint64_t sub_1C075E83C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F3C8);
  __swift_project_value_buffer(v0, qword_1EBE1F3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C0993360;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "uso_element_id";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69D26E8];
  v6 = sub_1C095D6BC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "string_payload";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "integer_payload";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "uso_verb_element_id";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "entity_label";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "verb_label";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "normalized_string_payloads";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v7();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_1C095D52C();
          break;
        case 2:
          sub_1C075ECAC(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
          break;
        case 3:
          sub_1C075ED64();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        goto LABEL_17;
      }

      if (result == 7)
      {
        sub_1C095D4BC();
      }
    }

    else if (result == 4)
    {
      sub_1C075EE18();
    }

    else
    {
LABEL_17:
      sub_1C095D50C();
    }
  }
}

uint64_t sub_1C075ECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 36);
  sub_1C095D32C();
  sub_1C075E524(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
  return sub_1C095D55C();
}

uint64_t sub_1C075ED64()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 40);
  sub_1C095D2AC();
  sub_1C075E524(&qword_1EBE1F498, MEMORY[0x1E69D2650]);
  return sub_1C095D55C();
}

uint64_t sub_1C075EE18()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 44);
  sub_1C095D26C();
  sub_1C075E524(&qword_1EBE16C28, MEMORY[0x1E69D2638]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v50 - v9;
  v11 = sub_1C095D26C();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v50 - v16;
  v18 = sub_1C095D2AC();
  v58 = *(v18 - 8);
  v59 = v18;
  v19 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v50 - v23;
  v25 = sub_1C095D32C();
  v61 = *(v25 - 8);
  v26 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    v51 = v17;
    v29 = v62;
    result = sub_1C095D67C();
    if (v29)
    {
      return result;
    }

    v56 = a2;
    v57 = a1;
    v53 = a3;
    v62 = 0;
    v17 = v51;
  }

  else
  {
    v56 = a2;
    v57 = a1;
    v53 = a3;
  }

  v31 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(&v3[*(v31 + 36)], v24, &qword_1EBE16D68, &unk_1C09933C0);
  v32 = v61;
  if ((*(v61 + 48))(v24, 1, v25) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE16D68, &unk_1C09933C0);
  }

  else
  {
    v51 = v3;
    (*(v32 + 32))(v28, v24, v25);
    sub_1C075E524(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
    v33 = v62;
    sub_1C095D6AC();
    v62 = v33;
    if (v33)
    {
      return (*(v32 + 8))(v28, v25);
    }

    (*(v32 + 8))(v28, v25);
    v3 = v51;
  }

  v61 = v31;
  sub_1C05149F8(&v3[*(v31 + 40)], v17, &qword_1EBE16DC0, &unk_1C0997A50);
  v34 = v58;
  v35 = v59;
  v36 = (*(v58 + 48))(v17, 1, v59);
  v37 = v60;
  if (v36 == 1)
  {
    sub_1C05145B4(v17, &qword_1EBE16DC0, &unk_1C0997A50);
    v38 = v54;
  }

  else
  {
    v39 = v60;
    v51 = v3;
    v40 = v52;
    (*(v34 + 32))(v52, v17, v35);
    sub_1C075E524(&qword_1EBE1F498, MEMORY[0x1E69D2650]);
    v41 = v62;
    sub_1C095D6AC();
    v62 = v41;
    if (v41)
    {
      return (*(v34 + 8))(v40, v35);
    }

    (*(v34 + 8))(v40, v35);
    v3 = v51;
    v38 = v54;
    v37 = v39;
  }

  sub_1C05149F8(&v3[*(v61 + 44)], v10, &qword_1EBE16B58, &unk_1C099B6A0);
  v42 = v55;
  if ((*(v38 + 48))(v10, 1, v55) == 1)
  {
    sub_1C05145B4(v10, &qword_1EBE16B58, &unk_1C099B6A0);
  }

  else
  {
    (*(v38 + 32))(v37, v10, v42);
    sub_1C075E524(&qword_1EBE16C28, MEMORY[0x1E69D2638]);
    v43 = v62;
    sub_1C095D6AC();
    v62 = v43;
    if (v43)
    {
      return (*(v38 + 8))(v37, v42);
    }

    (*(v38 + 8))(v37, v42);
  }

  v44 = *(v3 + 2);
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = *(v3 + 1) & 0xFFFFFFFFFFFFLL;
  }

  v46 = v62;
  if (!v45 || (result = sub_1C095D66C(), !v46))
  {
    v47 = *(v3 + 4);
    v48 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v48 = *(v3 + 3) & 0xFFFFFFFFFFFFLL;
    }

    if (!v48 || (result = sub_1C095D66C(), !v46))
    {
      if (!*(*(v3 + 5) + 16) || (result = sub_1C095D64C(), !v46))
      {
        v49 = &v3[*(v61 + 32)];
        return sub_1C095D36C();
      }
    }
  }

  return result;
}

uint64_t sub_1C075F67C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = MEMORY[0x1E69E7CC0];
  v4 = a2 + a1[8];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = a1[9];
  v6 = sub_1C095D32C();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[10];
  v8 = sub_1C095D2AC();
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[11];
  v10 = sub_1C095D26C();
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t sub_1C075F7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F668, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C075F894(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F470, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C075F900()
{
  sub_1C075E524(&qword_1EBE1F470, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);

  return sub_1C095D5AC();
}

uint64_t sub_1C075F99C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F3E0);
  __swift_project_value_buffer(v0, qword_1EBE1F3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "from_index";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "to_index";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "label";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C075FC08()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0) + 28);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  sub_1C075E524(&qword_1EBE1F4A8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoEdge.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    result = sub_1C095D67C();
    if (v4)
    {
      return result;
    }

    if (!v3[1])
    {
      goto LABEL_7;
    }
  }

  else if (!v3[1])
  {
    goto LABEL_7;
  }

  result = sub_1C095D67C();
  if (v4)
  {
    return result;
  }

LABEL_7:
  v20[0] = v4;
  v20[1] = a2;
  v20[3] = a3;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  sub_1C05149F8(v3 + *(v17 + 28), v10, &qword_1EBE16DA0, &qword_1C0997A60);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C05145B4(v10, &qword_1EBE16DA0, &qword_1C0997A60);
  }

  else
  {
    sub_1C075A678(v10, v15, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    sub_1C075E524(&qword_1EBE1F4A8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    v18 = v20[0];
    sub_1C095D6AC();
    result = sub_1C075A9C8(v15, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    if (v18)
    {
      return result;
    }
  }

  v19 = v3 + *(v17 + 24);
  return sub_1C095D36C();
}

uint64_t sub_1C075FFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F660, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0760098(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F478, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0760104()
{
  sub_1C075E524(&qword_1EBE1F478, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);

  return sub_1C095D5AC();
}

uint64_t sub_1C07601A0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F3F8);
  __swift_project_value_buffer(v0, qword_1EBE1F3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uso_element_id";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "base_edge_label";
  *(v12 + 8) = 15;
  *(v12 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C076040C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1C095D41C();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      a4(a1, v7, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_1C095D52C();
    }
  }

  return result;
}

uint64_t sub_1C07604BC()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0) + 28);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  sub_1C075E524(&qword_1EBE1F4B8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoEdgeLabel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    result = sub_1C095D67C();
    if (v4)
    {
      return result;
    }

    if (!v3[1])
    {
      goto LABEL_7;
    }
  }

  else if (!v3[1])
  {
    goto LABEL_7;
  }

  result = sub_1C095D67C();
  if (v4)
  {
    return result;
  }

LABEL_7:
  v20[0] = v4;
  v20[1] = a2;
  v20[3] = a3;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  sub_1C05149F8(v3 + *(v17 + 28), v10, &qword_1EBE16D90, &qword_1C0970458);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C05145B4(v10, &qword_1EBE16D90, &qword_1C0970458);
  }

  else
  {
    sub_1C075A678(v10, v15, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    sub_1C075E524(&qword_1EBE1F4B8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    v18 = v20[0];
    sub_1C095D6AC();
    result = sub_1C075A9C8(v15, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    if (v18)
    {
      return result;
    }
  }

  v19 = v3 + *(v17 + 24);
  return sub_1C095D36C();
}

uint64_t sub_1C0760860@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  v6 = &a3[*(a1 + 24)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v7 = *(a1 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t sub_1C0760940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F658, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07609E0(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F4A8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0760A4C()
{
  sub_1C075E524(&qword_1EBE1F4A8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);

  return sub_1C095D5AC();
}

uint64_t sub_1C0760AE8()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F410);
  __swift_project_value_buffer(v0, qword_1EBE1F410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C0973520;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "node_index";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E8];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "backing_app_bundle_id";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "value";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69D26E0];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "namespace";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "probability";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "source_component";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "group_index";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "interpretation_group";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            v11 = v4;
            v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 44);
          }

          else
          {
            if (result != 8)
            {
              goto LABEL_5;
            }

            v11 = v4;
            v12 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 48);
          }

          v4 = v11;
          sub_1C095D51C();
        }

        else if (result == 5)
        {
          sub_1C0761014();
        }

        else
        {
          sub_1C0764D60();
          sub_1C095D45C();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            sub_1C075ECAC(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
            goto LABEL_5;
          }

LABEL_21:
          sub_1C095D50C();
          goto LABEL_5;
        }

        if (result == 1)
        {
          sub_1C095D52C();
          goto LABEL_5;
        }

        if (result == 2)
        {
          goto LABEL_21;
        }
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0761014()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 40);
  sub_1C095D2EC();
  sub_1C075E524(&qword_1EBE1E9D0, MEMORY[0x1E69D2668]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v38 - v4;
  v44 = sub_1C095D2EC();
  v41 = *(v44 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v38 - v9;
  v11 = sub_1C095D32C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v0 || (result = sub_1C095D67C(), !v1))
  {
    v17 = *(v0 + 16);
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (result = sub_1C095D66C(), !v1))
    {
      v19 = *(v0 + 32);
      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v20 || (result = sub_1C095D66C(), !v1))
      {
        v38 = v1;
        v21 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
        sub_1C05149F8(v0 + *(v21 + 36), v10, &qword_1EBE16D68, &unk_1C09933C0);
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          sub_1C05145B4(v10, &qword_1EBE16D68, &unk_1C09933C0);
        }

        else
        {
          (*(v12 + 32))(v15, v10, v11);
          sub_1C075E524(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
          v22 = v38;
          sub_1C095D6AC();
          v38 = v22;
          if (v22)
          {
            return (*(v12 + 8))(v15, v11);
          }

          (*(v12 + 8))(v15, v11);
        }

        v23 = v21;
        v24 = v0 + *(v21 + 40);
        v25 = v39;
        sub_1C05149F8(v24, v39, &qword_1EBE1E830, &qword_1C09933E0);
        v26 = v41;
        v27 = v44;
        v28 = (*(v41 + 48))(v25, 1, v44);
        v29 = v40;
        if (v28 == 1)
        {
          sub_1C05145B4(v25, &qword_1EBE1E830, &qword_1C09933E0);
        }

        else
        {
          (*(v26 + 32))(v40, v25, v27);
          sub_1C075E524(&qword_1EBE1E9D0, MEMORY[0x1E69D2668]);
          v30 = v38;
          sub_1C095D6AC();
          v38 = v30;
          if (v30)
          {
            return (*(v26 + 8))(v29, v27);
          }

          (*(v26 + 8))(v29, v27);
        }

        if (*(v0 + 40))
        {
          v31 = *(v0 + 48);
          v42 = *(v0 + 40);
          v43 = v31;
          sub_1C0764D60();
          v32 = v38;
          result = sub_1C095D60C();
          if (v32)
          {
            return result;
          }
        }

        else
        {
          v32 = v38;
        }

        v33 = (v0 + v23[11]);
        if ((v33[1] & 1) != 0 || (v34 = *v33, result = sub_1C095D67C(), !v32))
        {
          v35 = (v0 + v23[12]);
          if ((v35[1] & 1) != 0 || (v36 = *v35, result = sub_1C095D67C(), !v32))
          {
            v37 = v0 + v23[8];
            return sub_1C095D36C();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0761684@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  v4 = a2 + a1[8];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = a1[9];
  v6 = sub_1C095D32C();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[10];
  v8 = sub_1C095D2EC();
  result = (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v10 = a1[12];
  v11 = a2 + a1[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t sub_1C07617C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F650, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0761868(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F480, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07618D4()
{
  sub_1C075E524(&qword_1EBE1F480, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);

  return sub_1C095D5AC();
}

uint64_t sub_1C0761954()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F428);
  __swift_project_value_buffer(v0, qword_1EBE1F428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NLU_COMPONENT_UNKNOWN";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NLU_COMPONENT_SPAN_MATCH_SIRI_VOCAB";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NLU_COMPONENT_SPAN_MATCH_VOC_FILE";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NLU_COMPONENT_SPAN_MATCH_MENTION_RESOLVER";
  *(v14 + 1) = 41;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0761BFC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F440);
  __swift_project_value_buffer(v0, qword_1EBE1F440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uso_version";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "element_names";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UsoOntologyVocabulary.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C0761E78();
    }

    else if (result == 2)
    {
      sub_1C095D4BC();
    }
  }

  return result;
}

uint64_t sub_1C0761E78()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  sub_1C075E524(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoOntologyVocabulary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  v14 = *(v13 + 24);
  v20 = v3;
  sub_1C05149F8(v3 + v14, v7, &qword_1EBE16DD0, &unk_1C0997A40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE16DD0, &unk_1C0997A40);
    v15 = v23;
  }

  else
  {
    sub_1C075A678(v7, v12, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    sub_1C075E524(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    v15 = v23;
    sub_1C095D6AC();
    result = sub_1C075A9C8(v12, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    if (v15)
    {
      return result;
    }
  }

  v17 = v20;
  if (!*(*v20 + 16) || (result = sub_1C095D64C(), !v15))
  {
    v18 = v17 + *(v13 + 20);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C07621DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[*(a1 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C07622B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F648, type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0762354(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F568, type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07623C0()
{
  sub_1C075E524(&qword_1EBE1F568, type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary);

  return sub_1C095D5AC();
}

uint64_t sub_1C076245C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F458);
  __swift_project_value_buffer(v0, qword_1EBE1F458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0C0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UsoLabel.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C095D50C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoLabel.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C095D66C(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0) + 20);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t static Siri_Nl_Core_Protocol_UsoLabel.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0) + 20);
  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C07627F8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C095DFEC();
  a1(0);
  sub_1C075E524(a2, a3);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C0762880@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C07628F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F640, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0762994(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F4B8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0762A00()
{
  sub_1C075E524(&qword_1EBE1F4B8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);

  return sub_1C095D5AC();
}

uint64_t sub_1C0762A7C(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology0a21_Nl_Core_Protocol_UsoB10VocabularyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v28 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD8, &unk_1C09704B0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v29 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  v17 = *(v29 + 24);
  v18 = *(v13 + 56);
  v31 = a1;
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE16DD0, &unk_1C0997A40);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  sub_1C05149F8(v16, v11, &qword_1EBE16DD0, &unk_1C0997A40);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C075A9C8(v11, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
LABEL_7:
    v22 = &qword_1EBE16DD8;
    v23 = &unk_1C09704B0;
LABEL_15:
    sub_1C05145B4(v16, v22, v23);
    goto LABEL_16;
  }

  v24 = v30;
  sub_1C075A678(&v16[v18], v30, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  if (*v11 != *v24 || v11[1] != v24[1] || v11[2] != v24[2])
  {
    sub_1C075A9C8(v24, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    goto LABEL_14;
  }

  v25 = *(v4 + 28);
  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v26 = sub_1C095D73C();
  sub_1C075A9C8(v24, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  if ((v26 & 1) == 0)
  {
LABEL_14:
    sub_1C075A9C8(v11, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    v22 = &qword_1EBE16DD0;
    v23 = &unk_1C0997A40;
    goto LABEL_15;
  }

  sub_1C075A9C8(v11, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
LABEL_3:
  sub_1C05145B4(v16, &qword_1EBE16DD0, &unk_1C0997A40);
  if ((sub_1C055B098(*v31, *a2) & 1) == 0)
  {
LABEL_16:
    v21 = 0;
    return v21 & 1;
  }

  v20 = *(v29 + 20);
  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v21 = sub_1C095D73C();
  return v21 & 1;
}

uint64_t _s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D2EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v61 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2A8, &qword_1C0997938);
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v61 - v12;
  v13 = sub_1C095D32C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v61 - v24;
  if (*a1 != *a2 || (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_1C095DF3C() & 1) == 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_22;
  }

  v61 = v5;
  v62 = v4;
  v26 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v27 = *(v26 + 36);
  v28 = *(v22 + 48);
  v63 = a1;
  v64 = v26;
  sub_1C05149F8(a1 + v27, v25, &qword_1EBE16D68, &unk_1C09933C0);
  sub_1C05149F8(a2 + v27, &v25[v28], &qword_1EBE16D68, &unk_1C09933C0);
  v29 = *(v14 + 48);
  if (v29(v25, 1, v13) == 1)
  {
    if (v29(&v25[v28], 1, v13) == 1)
    {
      sub_1C05145B4(v25, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_15;
    }

LABEL_13:
    v30 = &qword_1EBE16D70;
    v31 = &qword_1C0970440;
    v32 = v25;
LABEL_21:
    sub_1C05145B4(v32, v30, v31);
    goto LABEL_22;
  }

  sub_1C05149F8(v25, v21, &qword_1EBE16D68, &unk_1C09933C0);
  if (v29(&v25[v28], 1, v13) == 1)
  {
    (*(v14 + 8))(v21, v13);
    goto LABEL_13;
  }

  (*(v14 + 32))(v17, &v25[v28], v13);
  sub_1C075E524(&qword_1EBE16D78, MEMORY[0x1E69D2680]);
  v33 = sub_1C095D73C();
  v34 = *(v14 + 8);
  v34(v17, v13);
  v34(v21, v13);
  sub_1C05145B4(v25, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v35 = v63;
  v36 = v64[10];
  v37 = v68;
  v38 = *(v67 + 48);
  sub_1C05149F8(v63 + v36, v68, &qword_1EBE1E830, &qword_1C09933E0);
  sub_1C05149F8(a2 + v36, v37 + v38, &qword_1EBE1E830, &qword_1C09933E0);
  v40 = v61;
  v39 = v62;
  v41 = *(v61 + 48);
  if (v41(v37, 1, v62) != 1)
  {
    v42 = v66;
    sub_1C05149F8(v37, v66, &qword_1EBE1E830, &qword_1C09933E0);
    if (v41(v37 + v38, 1, v39) != 1)
    {
      v45 = v65;
      (*(v40 + 32))(v65, v37 + v38, v39);
      sub_1C075E524(&qword_1EBE1F2B0, MEMORY[0x1E69D2668]);
      v46 = sub_1C095D73C();
      v47 = *(v40 + 8);
      v47(v45, v39);
      v47(v42, v39);
      sub_1C05145B4(v37, &qword_1EBE1E830, &qword_1C09933E0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    (*(v40 + 8))(v42, v39);
    goto LABEL_20;
  }

  if (v41(v37 + v38, 1, v39) != 1)
  {
LABEL_20:
    v30 = &qword_1EBE1F2A8;
    v31 = &qword_1C0997938;
    v32 = v37;
    goto LABEL_21;
  }

  sub_1C05145B4(v37, &qword_1EBE1E830, &qword_1C09933E0);
LABEL_25:
  v48 = *(v35 + 40);
  v49 = *(a2 + 40);
  if (*(a2 + 48) == 1)
  {
    if (v49 > 1)
    {
      if (v49 == 2)
      {
        if (v48 != 2)
        {
          goto LABEL_22;
        }
      }

      else if (v48 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (v49)
    {
      if (v48 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v48)
    {
      goto LABEL_22;
    }
  }

  else if (v48 != v49)
  {
    goto LABEL_22;
  }

  v50 = v64[11];
  v51 = (v35 + v50);
  v52 = *(v35 + v50 + 4);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 4);
  if (v52)
  {
    if (!v54)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      goto LABEL_22;
    }
  }

  v55 = v64[12];
  v56 = (v35 + v55);
  v57 = *(v35 + v55 + 4);
  v58 = (a2 + v55);
  v59 = *(a2 + v55 + 4);
  if (v57)
  {
    if (v59)
    {
LABEL_50:
      v60 = v64[8];
      sub_1C095D38C();
      sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v43 = sub_1C095D73C();
      return v43 & 1;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if ((v59 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_22:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s12SiriOntology0A25_Nl_Core_Protocol_UsoNodeV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C095D26C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v79 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C18, &unk_1C0970490);
  v11 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v79 - v12;
  v13 = sub_1C095D2AC();
  v91 = *(v13 - 8);
  v92 = v13;
  v14 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = &v79 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC8, &unk_1C09704A0);
  v19 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v79 - v20;
  v21 = sub_1C095D32C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v79 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v79 - v32;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  v79 = v5;
  v80 = v4;
  v34 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  v35 = a1;
  v36 = a2;
  v81 = v35;
  v82 = v34;
  v37 = *(v34 + 36);
  v38 = *(v30 + 48);
  sub_1C05149F8(v35 + v37, v33, &qword_1EBE16D68, &unk_1C09933C0);
  v39 = v36 + v37;
  v40 = v36;
  sub_1C05149F8(v39, &v33[v38], &qword_1EBE16D68, &unk_1C09933C0);
  v41 = *(v22 + 48);
  if (v41(v33, 1, v21) == 1)
  {
    if (v41(&v33[v38], 1, v21) == 1)
    {
      sub_1C05145B4(v33, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_9;
    }

LABEL_7:
    v42 = &qword_1EBE16D70;
    v43 = &qword_1C0970440;
    v44 = v33;
LABEL_22:
    sub_1C05145B4(v44, v42, v43);
    goto LABEL_23;
  }

  sub_1C05149F8(v33, v29, &qword_1EBE16D68, &unk_1C09933C0);
  if (v41(&v33[v38], 1, v21) == 1)
  {
    (*(v22 + 8))(v29, v21);
    goto LABEL_7;
  }

  (*(v22 + 32))(v25, &v33[v38], v21);
  sub_1C075E524(&qword_1EBE16D78, MEMORY[0x1E69D2680]);
  v45 = sub_1C095D73C();
  v46 = *(v22 + 8);
  v46(v25, v21);
  v46(v29, v21);
  v40 = v36;
  sub_1C05145B4(v33, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v47 = v81;
  v48 = *(v82 + 40);
  v49 = v90;
  v50 = *(v89 + 48);
  sub_1C05149F8(v81 + v48, v90, &qword_1EBE16DC0, &unk_1C0997A50);
  sub_1C05149F8(v40 + v48, v49 + v50, &qword_1EBE16DC0, &unk_1C0997A50);
  v52 = v91;
  v51 = v92;
  v53 = *(v91 + 48);
  if (v53(v49, 1, v92) == 1)
  {
    v54 = v53(v49 + v50, 1, v51);
    v56 = v79;
    v55 = v80;
    if (v54 == 1)
    {
      sub_1C05145B4(v49, &qword_1EBE16DC0, &unk_1C0997A50);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v57 = v88;
  sub_1C05149F8(v49, v88, &qword_1EBE16DC0, &unk_1C0997A50);
  v58 = v53(v49 + v50, 1, v51);
  v56 = v79;
  v55 = v80;
  if (v58 == 1)
  {
    (*(v52 + 8))(v57, v51);
LABEL_14:
    v42 = &qword_1EBE16DC8;
    v43 = &unk_1C09704A0;
    v44 = v49;
    goto LABEL_22;
  }

  v59 = v49 + v50;
  v60 = v85;
  (*(v52 + 32))(v85, v59, v51);
  sub_1C075E524(&qword_1EBE16DE0, MEMORY[0x1E69D2650]);
  v61 = sub_1C095D73C();
  v62 = *(v52 + 8);
  v62(v60, v51);
  v62(v57, v51);
  sub_1C05145B4(v49, &qword_1EBE16DC0, &unk_1C0997A50);
  v47 = v81;
  if ((v61 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  v63 = v82;
  v64 = *(v82 + 44);
  v65 = v87;
  v66 = *(v86 + 48);
  sub_1C05149F8(v47 + v64, v87, &qword_1EBE16B58, &unk_1C099B6A0);
  v67 = v40 + v64;
  v68 = v65;
  sub_1C05149F8(v67, v65 + v66, &qword_1EBE16B58, &unk_1C099B6A0);
  v69 = *(v56 + 48);
  if (v69(v65, 1, v55) != 1)
  {
    v70 = v65;
    v71 = v84;
    sub_1C05149F8(v70, v84, &qword_1EBE16B58, &unk_1C099B6A0);
    if (v69(v68 + v66, 1, v55) != 1)
    {
      v74 = v68 + v66;
      v75 = v83;
      (*(v56 + 32))(v83, v74, v55);
      sub_1C075E524(&qword_1EBE16C20, MEMORY[0x1E69D2638]);
      v76 = sub_1C095D73C();
      v77 = *(v56 + 8);
      v77(v75, v55);
      v77(v71, v55);
      sub_1C05145B4(v68, &qword_1EBE16B58, &unk_1C099B6A0);
      if ((v76 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    (*(v56 + 8))(v71, v55);
    goto LABEL_21;
  }

  if (v69(v65 + v66, 1, v55) != 1)
  {
LABEL_21:
    v42 = &qword_1EBE16C18;
    v43 = &unk_1C0970490;
    v44 = v68;
    goto LABEL_22;
  }

  sub_1C05145B4(v65, &qword_1EBE16B58, &unk_1C099B6A0);
LABEL_26:
  if (v47[1] == v40[1] && v47[2] == v40[2] || (sub_1C095DF3C()) && (v47[3] == v40[3] && v47[4] == v40[4] || (sub_1C095DF3C()) && (sub_1C055B098(v47[5], v40[5]))
  {
    v78 = *(v63 + 32);
    sub_1C095D38C();
    sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
    v72 = sub_1C095D73C();
    return v72 & 1;
  }

LABEL_23:
  v72 = 0;
  return v72 & 1;
}

uint64_t _s12SiriOntology0A30_Nl_Core_Protocol_UsoEdgeLabelV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v30 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D98, &unk_1C0970460);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_10;
  }

  v18 = v15;
  v30 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v31 = a2;
  v19 = *(v30 + 28);
  v20 = *(v18 + 48);
  sub_1C05149F8(a1 + v19, v17, &qword_1EBE16D90, &qword_1C0970458);
  sub_1C05149F8(v31 + v19, &v17[v20], &qword_1EBE16D90, &qword_1C0970458);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1C05145B4(v17, &qword_1EBE16D90, &qword_1C0970458);
LABEL_18:
      v29 = *(v30 + 24);
      sub_1C095D38C();
      sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v24 = sub_1C095D73C();
      return v24 & 1;
    }

    goto LABEL_8;
  }

  sub_1C05149F8(v17, v12, &qword_1EBE16D90, &qword_1C0970458);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1C075A9C8(v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
LABEL_8:
    v22 = &qword_1EBE16D98;
    v23 = &unk_1C0970460;
LABEL_9:
    sub_1C05145B4(v17, v22, v23);
    goto LABEL_10;
  }

  sub_1C075A678(&v17[v20], v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  v26 = *v12 == *v8 && v12[1] == v8[1];
  if (!v26 && (sub_1C095DF3C() & 1) == 0)
  {
    sub_1C075A9C8(v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    sub_1C075A9C8(v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    v22 = &qword_1EBE16D90;
    v23 = &qword_1C0970458;
    goto LABEL_9;
  }

  v27 = *(v4 + 20);
  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v28 = sub_1C095D73C();
  sub_1C075A9C8(v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  sub_1C075A9C8(v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  sub_1C05145B4(v17, &qword_1EBE16D90, &qword_1C0970458);
  if (v28)
  {
    goto LABEL_18;
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

uint64_t _s12SiriOntology0A25_Nl_Core_Protocol_UsoEdgeV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA8, &qword_1C0970470);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_9;
  }

  v18 = v15;
  v27 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  v19 = *(v27 + 28);
  v20 = *(v18 + 48);
  sub_1C05149F8(a1 + v19, v17, &qword_1EBE16DA0, &qword_1C0997A60);
  v28 = v20;
  sub_1C05149F8(a2 + v19, &v17[v20], &qword_1EBE16DA0, &qword_1C0997A60);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v28], 1, v4) == 1)
    {
      sub_1C05145B4(v17, &qword_1EBE16DA0, &qword_1C0997A60);
LABEL_12:
      v26 = *(v27 + 24);
      sub_1C095D38C();
      sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v23 = sub_1C095D73C();
      return v23 & 1;
    }

    goto LABEL_8;
  }

  sub_1C05149F8(v17, v12, &qword_1EBE16DA0, &qword_1C0997A60);
  v22 = v28;
  if (v21(&v17[v28], 1, v4) == 1)
  {
    sub_1C075A9C8(v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
LABEL_8:
    sub_1C05145B4(v17, &qword_1EBE16DA8, &qword_1C0970470);
    goto LABEL_9;
  }

  sub_1C075A678(&v17[v22], v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  v25 = _s12SiriOntology0A30_Nl_Core_Protocol_UsoEdgeLabelV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1C075A9C8(v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  sub_1C075A9C8(v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  sub_1C05145B4(v17, &qword_1EBE16DA0, &qword_1C0997A60);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_9:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD8, &unk_1C09704B0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v30 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v17 = *(v30 + 36);
  v18 = *(v13 + 56);
  v32 = a1;
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE16DD0, &unk_1C0997A40);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C05149F8(v16, v11, &qword_1EBE16DD0, &unk_1C0997A40);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v25 = v31;
      sub_1C075A678(&v16[v18], v31, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
      if (*v11 == *v25 && v11[1] == v25[1] && v11[2] == v25[2])
      {
        v26 = *(v4 + 28);
        sub_1C095D38C();
        sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
        v27 = sub_1C095D73C();
        sub_1C075A9C8(v25, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
        sub_1C075A9C8(v11, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
        sub_1C05145B4(v16, &qword_1EBE16DD0, &unk_1C0997A40);
        if (v27)
        {
          goto LABEL_4;
        }

LABEL_19:
        v22 = 0;
        return v22 & 1;
      }

      sub_1C075A9C8(v25, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
      sub_1C075A9C8(v11, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
      v23 = &qword_1EBE16DD0;
      v24 = &unk_1C0997A40;
LABEL_18:
      sub_1C05145B4(v16, v23, v24);
      goto LABEL_19;
    }

    sub_1C075A9C8(v11, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
LABEL_11:
    v23 = &qword_1EBE16DD8;
    v24 = &unk_1C09704B0;
    goto LABEL_18;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1C05145B4(v16, &qword_1EBE16DD0, &unk_1C0997A40);
LABEL_4:
  v20 = v32;
  if ((sub_1C055F5F0(*v32, *a2) & 1) == 0 || (sub_1C055F644(v20[1], a2[1]) & 1) == 0 || (sub_1C05600E8(v20[2], a2[2]) & 1) == 0 || (sub_1C056013C(v20[3], a2[3]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v21 = *(v30 + 32);
  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v22 = sub_1C095D73C();
  return v22 & 1;
}

unint64_t sub_1C0764D60()
{
  result = qword_1EBE1F4C8;
  if (!qword_1EBE1F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F4C8);
  }

  return result;
}

unint64_t sub_1C0764DB8()
{
  result = qword_1EBE1F4E8;
  if (!qword_1EBE1F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F4E8);
  }

  return result;
}

unint64_t sub_1C0764E10()
{
  result = qword_1EBE1F4F0;
  if (!qword_1EBE1F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F4F0);
  }

  return result;
}

unint64_t sub_1C0764E68()
{
  result = qword_1EBE1F4F8;
  if (!qword_1EBE1F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F4F8);
  }

  return result;
}

unint64_t sub_1C0764EC0()
{
  result = qword_1EBE1F500;
  if (!qword_1EBE1F500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F508, &qword_1C0997B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F500);
  }

  return result;
}

void sub_1C076572C()
{
  sub_1C0765900(319, &qword_1EBE1F598, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C0765900(319, &qword_1EBE1F5A0, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C0765900(319, &qword_1EBE1F5A8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C0765900(319, &qword_1EBE1F5B0, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1C095D38C();
          if (v4 <= 0x3F)
          {
            sub_1C0765900(319, &qword_1EBE1F5B8, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, MEMORY[0x1E69E6720]);
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

void sub_1C0765900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C076598C()
{
  sub_1C076601C(319, &qword_1EBE0FDA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      sub_1C0765900(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C0765900(319, &qword_1EBE1F5D0, MEMORY[0x1E69D2650], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C0765900(319, &qword_1ED5BCFF8, MEMORY[0x1E69D2638], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_43Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1C095D38C();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 28);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_44Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1C095D38C();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 28);

    return v19(v20, a2, a2, v18);
  }
}

void sub_1C0765DD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C095D38C();
  if (v7 <= 0x3F)
  {
    sub_1C0765900(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C0765EC0()
{
  sub_1C095D38C();
  if (v0 <= 0x3F)
  {
    sub_1C0765900(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C0765900(319, &qword_1EBE1F0B8, MEMORY[0x1E69D2668], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C076601C(319, &qword_1EBE1F618, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C076601C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C07660A4()
{
  sub_1C076601C(319, &qword_1EBE0FDA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      sub_1C0765900(319, &qword_1EBE1F5B8, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C07661BC()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0766270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C095DF0C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1C07662CC(uint64_t a1)
{
  v2 = sub_1C051CFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C0766324()
{
  result = qword_1ED5BCFF0;
  if (!qword_1ED5BCFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE17200, &qword_1C09709D8);
    sub_1C07663A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BCFF0);
  }

  return result;
}

unint64_t sub_1C07663A8()
{
  result = qword_1ED5BD7C8;
  if (!qword_1ED5BD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BD7C8);
  }

  return result;
}

unint64_t sub_1C07663FC()
{
  result = qword_1ED5BC878;
  if (!qword_1ED5BC878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE17338, &qword_1C0970B30);
    sub_1C0766480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BC878);
  }

  return result;
}

unint64_t sub_1C0766480()
{
  result = qword_1ED5BCFD8;
  if (!qword_1ED5BCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BCFD8);
  }

  return result;
}

unint64_t sub_1C07664D4()
{
  result = qword_1EBE1F688;
  if (!qword_1EBE1F688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F680, &qword_1C0998758);
    sub_1C0524EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F688);
  }

  return result;
}

unint64_t sub_1C0766574()
{
  result = qword_1ED5BDE98;
  if (!qword_1ED5BDE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F6A0, &qword_1C0998778);
    sub_1C0526818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDE98);
  }

  return result;
}

unint64_t sub_1C07665F8()
{
  result = qword_1ED5BDEA8;
  if (!qword_1ED5BDEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE17200, &qword_1C09709D8);
    sub_1C076667C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDEA8);
  }

  return result;
}

unint64_t sub_1C076667C()
{
  result = qword_1ED5D34D8;
  if (!qword_1ED5D34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34D8);
  }

  return result;
}

unint64_t sub_1C07666D0()
{
  result = qword_1ED5BDEB0;
  if (!qword_1ED5BDEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE17338, &qword_1C0970B30);
    sub_1C0766754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDEB0);
  }

  return result;
}

unint64_t sub_1C0766754()
{
  result = qword_1ED5D3508;
  if (!qword_1ED5D3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3508);
  }

  return result;
}

uint64_t sub_1C07667A8(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1C0766804(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0766888()
{
  result = qword_1ED5D34B0;
  if (!qword_1ED5D34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34B0);
  }

  return result;
}

unint64_t sub_1C07668E0()
{
  result = qword_1ED5D34B8;
  if (!qword_1ED5D34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34B8);
  }

  return result;
}

uint64_t AddressOntologyNode.RadiusUnitNode.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1C095DD6C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t AddressOntologyNode.RadiusUnitNode.rawValue.getter()
{
  v1 = 0x73656C696DLL;
  v2 = 0x6574656D6F6C696BLL;
  if (*v0 != 2)
  {
    v2 = 0x6C6163697475616ELL;
  }

  if (*v0)
  {
    v1 = 0x73726574656DLL;
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

unint64_t sub_1C0766A30()
{
  result = qword_1EBE1F6A8;
  if (!qword_1EBE1F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6A8);
  }

  return result;
}

uint64_t sub_1C0766A84()
{
  v1 = *v0;
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0766B50()
{
  *v0;
  *v0;
  *v0;
  sub_1C095D7BC();
}

uint64_t sub_1C0766C08()
{
  v1 = *v0;
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0766CD0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AddressOntologyNode.RadiusUnitNode.init(rawValue:)(a1);
}

void sub_1C0766CDC(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x73656C696DLL;
  v4 = 0xEA00000000007372;
  v5 = 0x6574656D6F6C696BLL;
  if (*v1 != 2)
  {
    v5 = 0x6C6163697475616ELL;
    v4 = 0xEE0073656C696D20;
  }

  if (*v1)
  {
    v3 = 0x73726574656DLL;
    v2 = 0xE600000000000000;
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

unint64_t sub_1C0766D64(uint64_t a1)
{
  result = sub_1C0766D8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0766D8C()
{
  result = qword_1EBE1F6B0;
  if (!qword_1EBE1F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6B0);
  }

  return result;
}

unint64_t sub_1C0766DE4()
{
  result = qword_1EBE1F6B8;
  if (!qword_1EBE1F6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F6C0, &qword_1C0998A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6B8);
  }

  return result;
}

unint64_t sub_1C0766E58(uint64_t a1)
{
  result = sub_1C0766E80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0766E80()
{
  result = qword_1EBE1F6C8;
  if (!qword_1EBE1F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6C8);
  }

  return result;
}

uint64_t static AddressOntologyNode.CentroidNode.latitudeNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.CentroidNode.longitudeNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t AddressOntologyNode.CentroidNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C096E0D0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v7 + 56) = v8;
  *(v7 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 32) = inited;
  v10 = swift_initStaticObject();
  *(v7 + 96) = v8;
  *(v7 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 72) = v10;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = v7;
  return v6;
}

uint64_t AddressOntologyNode.CentroidNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C096E0D0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v7 + 56) = v8;
  *(v7 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 32) = inited;
  v10 = swift_initStaticObject();
  *(v7 + 96) = v8;
  *(v7 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 72) = v10;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = v7;
  return v3;
}

uint64_t AddressOntologyNode.CentroidNode.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AddressOntologyNode.CentroidNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t static Double.fromIntentNodeValue(_:)(void *__src)
{
  memcpy(v2, __src, 0x20AuLL);
  if (sub_1C057363C(v2))
  {
    return 0;
  }

  else
  {
    return *sub_1C05272F0(v2);
  }
}

uint64_t *sub_1C076726C@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  result = sub_1C057363C(v6);
  v4 = result;
  if (result)
  {
    v5 = 0;
  }

  else
  {
    result = sub_1C05272F0(v6);
    v5 = *result;
  }

  *a2 = v5;
  *(a2 + 8) = v4 != 0;
  return result;
}

unint64_t static Float.fromIntentNodeValue(_:)(void *__src)
{
  memcpy(v4, __src, 0x20AuLL);
  v1 = sub_1C057363C(v4);
  if (v1 == 1)
  {
    v2 = *sub_1C05272F0(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 != 1) << 32);
}

int *sub_1C0767350@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  result = sub_1C057363C(v6);
  v4 = result;
  if (result == 1)
  {
    result = sub_1C05272F0(v6);
    v5 = *result;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 4) = v4 != 1;
  return result;
}

uint64_t static Int.fromIntentNodeValue(_:)(void *__src)
{
  memcpy(v2, __src, 0x20AuLL);
  if (sub_1C057363C(v2) == 2)
  {
    return *sub_1C05272F0(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1C076742C@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  result = sub_1C057363C(v6);
  v4 = result;
  if (result == 2)
  {
    result = sub_1C05272F0(v6);
    v5 = *result;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 != 2;
  return result;
}

uint64_t static Int64.fromIntentNodeValue(_:)(void *__src)
{
  memcpy(v2, __src, 0x20AuLL);
  if (sub_1C057363C(v2) == 3)
  {
    return *sub_1C05272F0(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1C0767508@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  result = sub_1C057363C(v6);
  v4 = result;
  if (result == 3)
  {
    result = sub_1C05272F0(v6);
    v5 = *result;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 != 3;
  return result;
}

uint64_t static String.fromIntentNodeValue(_:)(void *__src)
{
  memcpy(__dst, __src, 0x20AuLL);
  v2 = sub_1C057363C(__dst);
  if (v2 != 7 && v2 != 4)
  {
    return 0;
  }

  v3 = sub_1C05272F0(__dst);
  v4 = *v3;
  v5 = v3[1];
  memcpy(v8, __src, 0x20AuLL);
  v6 = *(sub_1C05272F0(v8) + 8);

  return v4;
}

uint64_t sub_1C0767618@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result == 7 || result == 4)
  {
    v5 = sub_1C05272F0(__dst);
    v6 = *v5;
    v7 = v5[1];
    memcpy(v9, __src, 0x20AuLL);
    v8 = *(sub_1C05272F0(v9) + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

void *static TerminalElement.DateTimeValue.fromIntentNodeValue(_:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  if (sub_1C057363C(__dst) == 5)
  {
    v4 = sub_1C05272F0(__dst);
    memcpy(__srca, v4, 0x20AuLL);
    nullsub_1(__srca);
    memcpy(a2, __srca, 0x20AuLL);
    memcpy(v9, __src, 0x20AuLL);
    v5 = sub_1C05272F0(v9);
    return sub_1C0573648(v5, &v7);
  }

  else
  {
    sub_1C0767778(v9);
    return memcpy(a2, v9, 0x20AuLL);
  }
}

double sub_1C0767778(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 506) = 0u;
  return result;
}

void *sub_1C07677D0@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  if (sub_1C057363C(__dst) == 5)
  {
    v4 = sub_1C05272F0(__dst);
    memcpy(__srca, v4, 0x20AuLL);
    nullsub_1(__srca);
    memcpy(a2, __srca, 0x20AuLL);
    memcpy(v9, __src, 0x20AuLL);
    v5 = sub_1C05272F0(v9);
    return sub_1C0573648(v5, &v7);
  }

  else
  {
    sub_1C0767778(v9);
    return memcpy(a2, v9, 0x20AuLL);
  }
}

unint64_t sub_1C0767890(uint64_t a1)
{
  result = sub_1C07678B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C07678B8()
{
  result = qword_1EBE0FAF0[0];
  if (!qword_1EBE0FAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE0FAF0);
  }

  return result;
}

uint64_t AddressOntologyNode.CountryCode.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1C095DF4C();

  if (v2 < 0x80 || (v2 & 0xFFFFFFFFFFFFFFC0) == 0x80)
  {
LABEL_3:
    v4 = v2;
  }

  else
  {
    v5 = v2 - 192;
    v4 = -19;
    LOBYTE(v2) = -64;
    switch(v5)
    {
      case 0uLL:
        goto LABEL_3;
      case 1uLL:
        LOBYTE(v2) = -63;
        goto LABEL_3;
      case 2uLL:
        LOBYTE(v2) = -62;
        goto LABEL_3;
      case 3uLL:
        LOBYTE(v2) = -61;
        goto LABEL_3;
      case 4uLL:
        LOBYTE(v2) = -60;
        goto LABEL_3;
      case 5uLL:
        LOBYTE(v2) = -59;
        goto LABEL_3;
      case 6uLL:
        LOBYTE(v2) = -58;
        goto LABEL_3;
      case 7uLL:
        LOBYTE(v2) = -57;
        goto LABEL_3;
      case 8uLL:
        LOBYTE(v2) = -56;
        goto LABEL_3;
      case 9uLL:
        LOBYTE(v2) = -55;
        goto LABEL_3;
      case 0xAuLL:
        LOBYTE(v2) = -54;
        goto LABEL_3;
      case 0xBuLL:
        LOBYTE(v2) = -53;
        goto LABEL_3;
      case 0xCuLL:
        LOBYTE(v2) = -52;
        goto LABEL_3;
      case 0xDuLL:
        LOBYTE(v2) = -51;
        goto LABEL_3;
      case 0xEuLL:
        LOBYTE(v2) = -50;
        goto LABEL_3;
      case 0xFuLL:
        LOBYTE(v2) = -49;
        goto LABEL_3;
      case 0x10uLL:
        LOBYTE(v2) = -48;
        goto LABEL_3;
      case 0x11uLL:
        LOBYTE(v2) = -47;
        goto LABEL_3;
      case 0x12uLL:
        LOBYTE(v2) = -46;
        goto LABEL_3;
      case 0x13uLL:
        LOBYTE(v2) = -45;
        goto LABEL_3;
      case 0x14uLL:
        LOBYTE(v2) = -44;
        goto LABEL_3;
      case 0x15uLL:
        LOBYTE(v2) = -43;
        goto LABEL_3;
      case 0x16uLL:
        LOBYTE(v2) = -42;
        goto LABEL_3;
      case 0x17uLL:
        LOBYTE(v2) = -41;
        goto LABEL_3;
      case 0x18uLL:
        LOBYTE(v2) = -40;
        goto LABEL_3;
      case 0x19uLL:
        LOBYTE(v2) = -39;
        goto LABEL_3;
      case 0x1AuLL:
        LOBYTE(v2) = -38;
        goto LABEL_3;
      case 0x1BuLL:
        LOBYTE(v2) = -37;
        goto LABEL_3;
      case 0x1CuLL:
        LOBYTE(v2) = -36;
        goto LABEL_3;
      case 0x1DuLL:
        LOBYTE(v2) = -35;
        goto LABEL_3;
      case 0x1EuLL:
        LOBYTE(v2) = -34;
        goto LABEL_3;
      case 0x1FuLL:
        LOBYTE(v2) = -33;
        goto LABEL_3;
      case 0x20uLL:
        LOBYTE(v2) = -32;
        goto LABEL_3;
      case 0x21uLL:
        LOBYTE(v2) = -31;
        goto LABEL_3;
      case 0x22uLL:
        LOBYTE(v2) = -30;
        goto LABEL_3;
      case 0x23uLL:
        LOBYTE(v2) = -29;
        goto LABEL_3;
      case 0x24uLL:
        LOBYTE(v2) = -28;
        goto LABEL_3;
      case 0x25uLL:
        LOBYTE(v2) = -27;
        goto LABEL_3;
      case 0x26uLL:
        LOBYTE(v2) = -26;
        goto LABEL_3;
      case 0x27uLL:
        LOBYTE(v2) = -25;
        goto LABEL_3;
      case 0x28uLL:
        LOBYTE(v2) = -24;
        goto LABEL_3;
      case 0x29uLL:
        LOBYTE(v2) = -23;
        goto LABEL_3;
      case 0x2AuLL:
        LOBYTE(v2) = -22;
        goto LABEL_3;
      case 0x2BuLL:
        LOBYTE(v2) = -21;
        goto LABEL_3;
      case 0x2CuLL:
        LOBYTE(v2) = -20;
        goto LABEL_3;
      case 0x2DuLL:
        break;
      case 0x2EuLL:
        v4 = -18;
        break;
      case 0x2FuLL:
        v4 = -17;
        break;
      case 0x30uLL:
        v4 = -16;
        break;
      case 0x31uLL:
        v4 = -15;
        break;
      case 0x32uLL:
        v4 = -14;
        break;
      case 0x33uLL:
        v4 = -13;
        break;
      case 0x34uLL:
        v4 = -12;
        break;
      case 0x35uLL:
        v4 = -11;
        break;
      case 0x36uLL:
        v4 = -10;
        break;
      case 0x37uLL:
        v4 = -9;
        break;
      case 0x38uLL:
        v4 = -8;
        break;
      case 0x39uLL:
        v4 = -7;
        break;
      case 0x3AuLL:
        v4 = -6;
        break;
      case 0x3BuLL:
        v4 = -5;
        break;
      case 0x3CuLL:
        v4 = -4;
        break;
      case 0x3DuLL:
        v4 = -3;
        break;
      case 0x3EuLL:
        v4 = -2;
        break;
      default:
        v4 = -1;
        break;
    }
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C0767BDC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AddressOntologyNode.CountryCode.rawValue.getter();
  v4 = v3;
  if (v2 == AddressOntologyNode.CountryCode.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

unint64_t sub_1C0767C7C()
{
  result = qword_1EBE1F6D0;
  if (!qword_1EBE1F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6D0);
  }

  return result;
}

uint64_t sub_1C0767CD0()
{
  v1 = *v0;
  sub_1C095DFEC();
  AddressOntologyNode.CountryCode.rawValue.getter();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0767D38()
{
  v2 = *v0;
  AddressOntologyNode.CountryCode.rawValue.getter();
  sub_1C095D7BC();
}

uint64_t sub_1C0767D9C()
{
  v1 = *v0;
  sub_1C095DFEC();
  AddressOntologyNode.CountryCode.rawValue.getter();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0767E00@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AddressOntologyNode.CountryCode.init(rawValue:)(a1);
}

uint64_t sub_1C0767E0C@<X0>(uint64_t *a1@<X8>)
{
  result = AddressOntologyNode.CountryCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C0767E34(uint64_t a1)
{
  result = sub_1C0767E5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0767E5C()
{
  result = qword_1EBE1F6D8;
  if (!qword_1EBE1F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6D8);
  }

  return result;
}

unint64_t sub_1C0767EB4()
{
  result = qword_1EBE1F6E0;
  if (!qword_1EBE1F6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F6E8, &qword_1C0998C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6E0);
  }

  return result;
}

unint64_t sub_1C0767F28(uint64_t a1)
{
  result = sub_1C0767F50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0767F50()
{
  result = qword_1EBE1F6F0;
  if (!qword_1EBE1F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6F0);
  }

  return result;
}

uint64_t _s11CountryCodeOwet(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    goto LABEL_17;
  }

  if ((a2 + 254) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 254) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 254;
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

      return (*a1 | (v4 << 8)) - 254;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 254;
    }
  }

LABEL_17:
  if (*a1 == 255)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s11CountryCodeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 254 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 254) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 2)
  {
    v4 = 0;
  }

  if (a2 > 1)
  {
    v5 = ((a2 - 2) >> 8) + 1;
    *result = a2 - 2;
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
    *result = -1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1C07680F4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000155, 0x80000001C0A02E60, 0);
  qword_1EBE1F6F8 = result;
  return result;
}

id sub_1C076816C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000073, 0x80000001C0A02DE0, 0);
  qword_1EBE1F700 = result;
  return result;
}

id sub_1C07681E4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD0000000000000F2, 0x80000001C0A02CE0, 0);
  qword_1EBE1F708 = result;
  return result;
}

id sub_1C076825C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000022, 0x80000001C0A02CB0, 0);
  qword_1EBE1F710 = result;
  return result;
}

id sub_1C07682D4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000029, 0x80000001C0A02C80, 0);
  qword_1EBE1F718 = result;
  return result;
}

id sub_1C076834C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000027, 0x80000001C0A02C50, 0);
  qword_1EBE1F720 = result;
  return result;
}

id sub_1C07683C4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD0000000000001FELL, 0x80000001C0A02A50, 0);
  qword_1EBE1F728 = result;
  return result;
}

id sub_1C076843C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000093, 0x80000001C0A029B0, 0);
  qword_1EBE1F730 = result;
  return result;
}

id sub_1C07684B4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000047, 0x80000001C0A02960, 0);
  qword_1EBE1F738 = result;
  return result;
}

id sub_1C076852C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000223, 0x80000001C0A02730, 0);
  qword_1EBE1F740 = result;
  return result;
}

id sub_1C07685A4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD00000000000002DLL, 0x80000001C0A026A0, 0);
  qword_1EBE1F748 = result;
  return result;
}

char *sub_1C076861C()
{
  result = sub_1C076863C();
  qword_1EBE1F750 = result;
  return result;
}

char *sub_1C076863C()
{
  v0 = 0xEF646E657070615FLL;
  v1 = 0x726F74617265706FLL;
  v2 = 0x6C61757145746F6ELL;
  v3 = 0x80000001C09B28B0;
  if (byte_1F3F97AC0 > 2u)
  {
    if (byte_1F3F97AC0 == 3)
    {
      v3 = 0xE600000000000000;
      v2 = 0x646E65707061;
    }

    else if (byte_1F3F97AC0 == 4)
    {
      v3 = 0xE700000000000000;
      v2 = 0x6563616C706572;
    }

    else
    {
      v3 = 0xE900000000000073;
    }
  }

  else if (byte_1F3F97AC0)
  {
    if (byte_1F3F97AC0 == 1)
    {
      v2 = 0xD000000000000010;
      v3 = 0x80000001C09B2D20;
    }

    else
    {
      v2 = 0xD000000000000012;
    }
  }

  else
  {
    v2 = 0x726F74617265706FLL;
    v3 = 0xEF646E657070615FLL;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C051B0D4(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1C051B0D4((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = v2;
  *(v7 + 5) = v3;
  v8 = 0x6C61757145746F6ELL;
  v9 = 0x80000001C09B28B0;
  if (byte_1F3F97AC1 > 2u)
  {
    if (byte_1F3F97AC1 == 3)
    {
      v9 = 0xE600000000000000;
      v8 = 0x646E65707061;
    }

    else if (byte_1F3F97AC1 == 4)
    {
      v9 = 0xE700000000000000;
      v8 = 0x6563616C706572;
    }

    else
    {
      v9 = 0xE900000000000073;
    }
  }

  else if (byte_1F3F97AC1)
  {
    if (byte_1F3F97AC1 == 1)
    {
      v8 = 0xD000000000000010;
      v9 = 0x80000001C09B2D20;
    }

    else
    {
      v8 = 0xD000000000000012;
    }
  }

  else
  {
    v8 = 0x726F74617265706FLL;
    v9 = 0xEF646E657070615FLL;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C051B0D4(0, *(v4 + 2) + 1, 1, v4);
  }

  v11 = *(v4 + 2);
  v10 = *(v4 + 3);
  if (v11 >= v10 >> 1)
  {
    v4 = sub_1C051B0D4((v10 > 1), v11 + 1, 1, v4);
  }

  *(v4 + 2) = v11 + 1;
  v12 = &v4[16 * v11];
  *(v12 + 4) = v8;
  *(v12 + 5) = v9;
  if (byte_1F3F97AC2 > 2u)
  {
    if (byte_1F3F97AC2 == 3)
    {
      v0 = 0xE600000000000000;
      v1 = 0x646E65707061;
    }

    else if (byte_1F3F97AC2 == 4)
    {
      v0 = 0xE700000000000000;
      v1 = 0x6563616C706572;
    }

    else
    {
      v1 = 0x6C61757145746F6ELL;
      v0 = 0xE900000000000073;
    }
  }

  else if (byte_1F3F97AC2)
  {
    if (byte_1F3F97AC2 == 1)
    {
      v1 = 0xD000000000000010;
      v0 = 0x80000001C09B2D20;
    }

    else
    {
      v1 = 0xD000000000000012;
      v0 = 0x80000001C09B28B0;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C051B0D4(0, *(v4 + 2) + 1, 1, v4);
  }

  v13 = *(v4 + 2);
  v14 = *(v4 + 3);
  v15 = v13 + 1;
  if (v13 >= v14 >> 1)
  {
    v59 = *(v4 + 2);
    v60 = sub_1C051B0D4((v14 > 1), v13 + 1, 1, v4);
    v13 = v59;
    v4 = v60;
  }

  v16 = 0;
  v17 = 16 * v13;
  *(v4 + 2) = v15;
  v18 = &v4[16 * v13];
  *(v18 + 4) = v1;
  *(v18 + 5) = v0;
  v19 = 0x80000001C09B2C40;
  v20 = 0x80000001C09B2CD0;
  v21 = 0x80000001C09B2C20;
  v22 = v13 + 2;
  v23 = &byte_1F3F97AE8;
  do
  {
    v25 = *v23++;
    v24 = v25;
    if (v25 > 5)
    {
      if (v24 == 10)
      {
        v26 = 0xD000000000000010;
      }

      else
      {
        v26 = 0x6C61757145746F6ELL;
      }

      if (v24 == 10)
      {
        v27 = v19;
      }

      else
      {
        v27 = 0xE900000000000073;
      }

      if (v24 == 9)
      {
        v26 = 0x6E6168547373656CLL;
        v27 = 0xE800000000000000;
      }

      v28 = 0xD000000000000013;
      if (v24 == 7)
      {
        v28 = 0x5472657461657267;
        v29 = 0xEB000000006E6168;
      }

      else
      {
        v29 = v20;
      }

      if (v24 == 6)
      {
        v28 = 0x6563616C706572;
        v29 = 0xE700000000000000;
      }

      v30 = v24 <= 8;
    }

    else
    {
      v26 = 0xD000000000000019;
      if (v24 == 4)
      {
        v27 = v21;
      }

      else
      {
        v26 = 0xD000000000000012;
        v27 = 0x80000001C09B28B0;
      }

      if (v24 == 3)
      {
        v26 = 0xD000000000000011;
        v27 = 0x80000001C09B2C90;
      }

      v28 = 0xD000000000000014;
      if (v24 == 1)
      {
        v29 = 0x80000001C09B2C60;
      }

      else
      {
        v28 = 0xD00000000000001CLL;
        v29 = 0x80000001C09B2CB0;
      }

      if (!v24)
      {
        v28 = 0xD000000000000010;
        v29 = 0x80000001C09B2D20;
      }

      v30 = v24 <= 2;
    }

    if (v30)
    {
      v31 = v28;
    }

    else
    {
      v31 = v26;
    }

    if (v30)
    {
      v32 = v29;
    }

    else
    {
      v32 = v27;
    }

    v33 = *(v4 + 3);
    if (v22 - 1 >= v33 >> 1)
    {
      v64 = v19;
      v65 = v13;
      v63 = v20;
      v35 = v4;
      v36 = v21;
      v37 = sub_1C051B0D4((v33 > 1), v22, 1, v35);
      v21 = v36;
      v20 = v63;
      v19 = v64;
      v4 = v37;
      v13 = v65;
    }

    *(v4 + 2) = v22;
    v34 = &v4[v17 + v16];
    *(v34 + 6) = v31;
    *(v34 + 7) = v32;
    ++v22;
    v16 += 16;
  }

  while (v16 != 96);
  v38 = 0x7465536F54646461;
  v39 = 0x80000001C09B2710;
  if (byte_1F3F97B10 > 2u)
  {
    if (byte_1F3F97B10 == 3)
    {
      v40 = 0x724665766F6D6572;
      v41 = 0xED00007465536D6FLL;
    }

    else if (byte_1F3F97B10 == 4)
    {
      v41 = 0xE800000000000000;
      v40 = 0x736E6961746E6F63;
    }

    else
    {
      v40 = 0x61746E6F43746F6ELL;
      v41 = 0xEB00000000736E69;
    }
  }

  else if (byte_1F3F97B10)
  {
    if (byte_1F3F97B10 == 1)
    {
      v40 = 0xD00000000000001ALL;
      v41 = 0x80000001C09B2710;
    }

    else
    {
      v41 = 0xE800000000000000;
      v40 = 0x7465536F54646461;
    }
  }

  else
  {
    v40 = 0xD000000000000015;
    v41 = 0x80000001C09B26F0;
  }

  v42 = *(v4 + 3);
  if (v22 - 1 >= v42 >> 1)
  {
    v61 = v13;
    v62 = sub_1C051B0D4((v42 > 1), v22, 1, v4);
    v13 = v61;
    v4 = v62;
  }

  *(v4 + 2) = v22;
  v43 = &v4[16 * v13 + 96];
  *(v43 + 48) = v40;
  *(v43 + 56) = v41;
  if (byte_1F3F97B11 > 2u)
  {
    if (byte_1F3F97B11 == 3)
    {
      v44 = 0x724665766F6D6572;
      v45 = 0xED00007465536D6FLL;
    }

    else if (byte_1F3F97B11 == 4)
    {
      v45 = 0xE800000000000000;
      v44 = 0x736E6961746E6F63;
    }

    else
    {
      v44 = 0x61746E6F43746F6ELL;
      v45 = 0xEB00000000736E69;
    }
  }

  else if (byte_1F3F97B11)
  {
    if (byte_1F3F97B11 == 1)
    {
      v44 = 0xD00000000000001ALL;
      v45 = 0x80000001C09B2710;
    }

    else
    {
      v45 = 0xE800000000000000;
      v44 = 0x7465536F54646461;
    }
  }

  else
  {
    v44 = 0xD000000000000015;
    v45 = 0x80000001C09B26F0;
  }

  v47 = *(v4 + 2);
  v46 = *(v4 + 3);
  v48 = v47 + 1;
  if (v47 >= v46 >> 1)
  {
    v4 = sub_1C051B0D4((v46 > 1), v47 + 1, 1, v4);
  }

  *(v4 + 2) = v48;
  v49 = &v4[16 * v47];
  *(v49 + 4) = v44;
  *(v49 + 5) = v45;
  if (byte_1F3F97B12 > 2u)
  {
    if (byte_1F3F97B12 == 3)
    {
      v50 = 0x724665766F6D6572;
      v51 = 0xED00007465536D6FLL;
    }

    else if (byte_1F3F97B12 == 4)
    {
      v51 = 0xE800000000000000;
      v50 = 0x736E6961746E6F63;
    }

    else
    {
      v50 = 0x61746E6F43746F6ELL;
      v51 = 0xEB00000000736E69;
    }
  }

  else if (byte_1F3F97B12)
  {
    if (byte_1F3F97B12 == 1)
    {
      v50 = 0xD00000000000001ALL;
      v51 = 0x80000001C09B2710;
    }

    else
    {
      v51 = 0xE800000000000000;
      v50 = 0x7465536F54646461;
    }
  }

  else
  {
    v50 = 0xD000000000000015;
    v51 = 0x80000001C09B26F0;
  }

  v52 = *(v4 + 3);
  v53 = v47 + 2;
  if (v48 >= v52 >> 1)
  {
    v4 = sub_1C051B0D4((v52 > 1), v53, 1, v4);
  }

  *(v4 + 2) = v53;
  v54 = &v4[16 * v48];
  *(v54 + 4) = v50;
  *(v54 + 5) = v51;
  if (byte_1F3F97B13 > 2u)
  {
    if (byte_1F3F97B13 == 3)
    {
      v38 = 0x724665766F6D6572;
      v39 = 0xED00007465536D6FLL;
    }

    else if (byte_1F3F97B13 == 4)
    {
      v39 = 0xE800000000000000;
      v38 = 0x736E6961746E6F63;
    }

    else
    {
      v38 = 0x61746E6F43746F6ELL;
      v39 = 0xEB00000000736E69;
    }
  }

  else if (byte_1F3F97B13)
  {
    if (byte_1F3F97B13 == 1)
    {
      v38 = 0xD00000000000001ALL;
    }

    else
    {
      v39 = 0xE800000000000000;
    }
  }

  else
  {
    v38 = 0xD000000000000015;
    v39 = 0x80000001C09B26F0;
  }

  v56 = *(v4 + 2);
  v55 = *(v4 + 3);
  if (v56 >= v55 >> 1)
  {
    v4 = sub_1C051B0D4((v55 > 1), v56 + 1, 1, v4);
  }

  *(v4 + 2) = v56 + 1;
  v57 = &v4[16 * v56];
  *(v57 + 4) = v38;
  *(v57 + 5) = v39;
  return v4;
}

uint64_t static UsoGraphUtils.graphFromString(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1C095D16C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBE15848 != -1)
  {
    v46 = v10;
    swift_once();
    v10 = v46;
  }

  if (!qword_1EBE1F6F8)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15850 != -1)
  {
    v47 = v10;
    swift_once();
    v10 = v47;
  }

  if (!qword_1EBE1F700)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15858 != -1)
  {
    v51 = v10;
    swift_once();
    v10 = v51;
  }

  if (!qword_1EBE1F708)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15860 != -1)
  {
    v52 = v10;
    swift_once();
    v10 = v52;
  }

  if (!qword_1EBE1F710)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15868 != -1)
  {
    v53 = v10;
    swift_once();
    v10 = v53;
  }

  if (!qword_1EBE1F718)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15870 != -1)
  {
    v54 = v10;
    swift_once();
    v10 = v54;
  }

  if (!qword_1EBE1F720)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15878 != -1)
  {
    v55 = v10;
    swift_once();
    v10 = v55;
  }

  if (!qword_1EBE1F728)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15880 != -1)
  {
    v56 = v10;
    swift_once();
    v10 = v56;
  }

  if (!qword_1EBE1F730)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15888 != -1)
  {
    v57 = v10;
    swift_once();
    v10 = v57;
  }

  if (!qword_1EBE1F738)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15890 != -1)
  {
    v58 = v10;
    swift_once();
    v10 = v58;
  }

  if (!qword_1EBE1F740)
  {
LABEL_35:
    sub_1C076E764();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 11;
    swift_willThrow();
    return v3;
  }

  v68 = v10;
  type metadata accessor for Graph();
  swift_allocObject();
  v3 = Graph.init()();
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  v74 = a1;
  v75 = a2;
  v14 = sub_1C051D6F4();

  v67 = v14;
  sub_1C095DB4C();

  swift_beginAccess();
  v62 = (v13 + 16);
  v15 = *(v13 + 16);
  if (!v15[2])
  {
    goto LABEL_62;
  }

  v16 = v15[5];
  v72 = v15[4];
  v73 = v16;

  sub_1C095D15C();
  v17 = sub_1C095DB5C();
  v19 = v18;
  v66 = *(v8 + 8);
  v66(v12, v68);

  if (v17 == 1953460050 && v19 == 0xE400000000000000)
  {

    goto LABEL_38;
  }

  v22 = sub_1C095DF3C();

  if ((v22 & 1) == 0)
  {
LABEL_62:
    sub_1C076E764();
    swift_allocError();
    *v39 = xmmword_1C0999870;
    *(v39 + 16) = 11;
    swift_willThrow();

LABEL_67:

    return v3;
  }

LABEL_38:
  v23 = *(*v62 + 16);
  if (v23)
  {
    v61 = v13;
    v64 = "logyNode12CentroidNode";

    v24 = (v60 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v65 = MEMORY[0x1E69E7CC0];
    v63 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v28 = *v24;
      v69 = *(v24 - 1);
      v70 = v25;
      v72 = v69;
      v73 = v28;

      sub_1C095D15C();
      sub_1C095DB5C();
      v66(v12, v68);
      if (sub_1C0769BA0())
      {

        v29 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1C051B0D4(0, *(v29 + 2) + 1, 1, v29);
        }

        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        v32 = v29;
        if (v31 >= v30 >> 1)
        {
          v32 = sub_1C051B0D4((v30 > 1), v31 + 1, 1, v29);
        }

        *(v32 + 2) = v31 + 1;
        v25 = v32;
        v33 = &v32[16 * v31];
        *(v33 + 4) = v69;
        *(v33 + 5) = v28;
        goto LABEL_43;
      }

      if (sub_1C0769BA0())
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_1C051B0D4(0, *(v65 + 2) + 1, 1, v65);
        }

        v35 = *(v65 + 2);
        v34 = *(v65 + 3);
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v65 = sub_1C051B0D4((v34 > 1), v35 + 1, 1, v65);
        }

        v26 = v65;
      }

      else
      {
        v37 = sub_1C0769BA0();

        if ((v37 & 1) == 0)
        {

          goto LABEL_42;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_1C051B0D4(0, *(v63 + 2) + 1, 1, v63);
        }

        v35 = *(v63 + 2);
        v38 = *(v63 + 3);
        v36 = v35 + 1;
        if (v35 >= v38 >> 1)
        {
          v63 = sub_1C051B0D4((v38 > 1), v35 + 1, 1, v63);
        }

        v26 = v63;
      }

      *(v26 + 2) = v36;
      v27 = &v26[16 * v35];
      *(v27 + 4) = v69;
      *(v27 + 5) = v28;
LABEL_42:
      v25 = v70;
LABEL_43:
      v24 += 2;
      if (!--v23)
      {

        v40 = v63;
        v41 = v65;
        goto LABEL_65;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
LABEL_65:
  v42 = sub_1C0770434(v25);
  if (v4)
  {

    goto LABEL_67;
  }

  v43 = v42;

  sub_1C0769CFC(v41);
  v45 = v44;

  v48 = sub_1C076A294(v40);

  v76 = sub_1C058C538(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v49 = v3[4];
  result = swift_unownedRetainStrong();
  if (v49)
  {

    swift_unownedRetain();

    *&v71 = v3;
    *(&v71 + 1) = v49;
    v50 = *v62;

    sub_1C076B524(v3, &v71, v43, v45, v48, v50, 1, 0, &v76);

    swift_unownedRelease();

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0769AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C051B0D4(0, *(v7 + 2) + 1, 1, v7);
    *(a4 + 16) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C051B0D4((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(a4 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_1C0769BA0()
{

  v0 = sub_1C095D81C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1C095D81C();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1C095DF3C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1C095D81C();
      v3 = v5;
    }

    while (v5);
  }

  sub_1C095D81C();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_1C0769CFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C058C2FC(MEMORY[0x1E69E7CC0]);
  v52 = *(a1 + 16);
  if (v52)
  {
    v5 = 0;
    v6 = a1 + 32;
    v7 = &unk_1EBE15000;
    v49 = a1 + 32;
    while (1)
    {
      v53 = v5;
      v54 = v4;
      v8 = (v6 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v11 = v10;
      }

      if (((v9 >> 60) & ((v10 & 0x800000000000000) == 0)) != 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = 7;
      }

      *&v56 = 15;
      *(&v56 + 1) = v12 | (v11 << 16);
      v58 = v10;
      v59 = v9;
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
      sub_1C0771C78();
      sub_1C051D6F4();
      v13 = sub_1C095DADC();
      v15 = v14;
      if (v7[266] != -1)
      {
        swift_once();
      }

      if (!qword_1EBE1F700 || (v16 = qword_1EBE1F700, v17 = sub_1C095D74C(), v18 = [v16 firstMatchInString:v17 options:0 range:{v13, v15}], v16, v17, !v18))
      {

        sub_1C076E764();
        swift_allocError();
        *v48 = v10;
        *(v48 + 8) = v9;
        *(v48 + 16) = 4;
        swift_willThrow();
        return;
      }

      v19 = sub_1C07714C8(v18, 0x65646E4965646F6ELL, 0xEE006C6562614C78, v10, v9, sub_1C076FFC8, sub_1C076E89C);
      if ((v19 & 0x100000000) != 0)
      {
        goto LABEL_33;
      }

      v20 = v19;
      v21 = sub_1C07714C8(v18, 0x6C6562614C727361, 0xE800000000000000, v10, v9, sub_1C076FFC8, sub_1C076E89C);
      if (v21 & 0x100000000) != 0 || (v50 = v21, v51 = v20, v22 = sub_1C095D74C(), v23 = [v18 rangeWithName_], v22, v23 == sub_1C095D14C()) || (sub_1C095DACC(), (v24))
      {
LABEL_33:

        sub_1C076E764();
        swift_allocError();
        *v47 = v10;
        *(v47 + 8) = v9;
        *(v47 + 16) = 4;
        swift_willThrow();

        return;
      }

      v25 = sub_1C095D8EC();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v32 = MEMORY[0x1C68DD630](v25, v27, v29, v31);
      v34 = v33;

      *&v56 = v32;
      *(&v56 + 1) = v34;
      v58 = 0xD000000000000011;
      v59 = 0x80000001C0A026D0;
      v35 = sub_1C095DB3C();

      v36 = *(v35 + 16);
      if (v36)
      {
        break;
      }

      v39 = MEMORY[0x1E69E7CC0];
LABEL_27:

      if (*(v39 + 2))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v56 = v54;
        sub_1C05CAE34(v50, v39, v51, isUniquelyReferenced_nonNull_native);

        v4 = v56;
      }

      else
      {

        v4 = v54;
      }

      v5 = v53 + 1;
      v6 = v49;
      v7 = &unk_1EBE15000;
      if (v53 + 1 == v52)
      {
        return;
      }
    }

    v37 = 0;
    v38 = (v35 + 40);
    v39 = MEMORY[0x1E69E7CC0];
    while (v37 < *(v35 + 16))
    {
      v40 = *(v38 - 1);
      v41 = *v38;

      sub_1C076E388(v40, v41, &v56);
      if (v2)
      {

        return;
      }

      v55 = v56;
      v42 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1C0578264(0, *(v39 + 2) + 1, 1, v39);
      }

      v44 = *(v39 + 2);
      v43 = *(v39 + 3);
      if (v44 >= v43 >> 1)
      {
        v39 = sub_1C0578264((v43 > 1), v44 + 1, 1, v39);
      }

      ++v37;
      *(v39 + 2) = v44 + 1;
      v45 = &v39[24 * v44];
      *(v45 + 2) = v55;
      *(v45 + 6) = v42;
      v38 += 2;
      if (v36 == v37)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C076A294(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C058C41C(MEMORY[0x1E69E7CC0]);
  v123 = *(a1 + 16);
  if (!v123)
  {
    return v4;
  }

  v5 = 0;
  v124 = a1 + 32;
  v6 = 0;
  for (i = &off_1E811B000; ; i = &off_1E811B000)
  {
    v139 = v5;
    v128 = v6;
    v8 = (v124 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10;
    }

    v12 = 7;
    if (((v9 >> 60) & ((v10 & 0x800000000000000) == 0)) != 0)
    {
      v12 = 11;
    }

    *&v153 = 15;
    *(&v153 + 1) = v12 | (v11 << 16);
    v142 = v10;
    v143 = v9;
    *&v149 = v10;
    *(&v149 + 1) = v9;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
    sub_1C0771C78();
    sub_1C051D6F4();
    v13 = sub_1C095DADC();
    v15 = v14;
    if (qword_1EBE15878 != -1)
    {
      swift_once();
    }

    if (!qword_1EBE1F728 || (v16 = qword_1EBE1F728, v17 = sub_1C095D74C(), v18 = [v16 firstMatchInString:v17 options:0 range:{v13, v15}], v16, v17, !v18))
    {

      sub_1C076E764();
      swift_allocError();
      *v119 = v142;
      *(v119 + 8) = v143;
      *(v119 + 16) = 6;
      swift_willThrow();
      goto LABEL_121;
    }

    v19 = v18;
    v140 = sub_1C07714C8(v18, 0x65646E4965646F6ELL, 0xEE006C6562614C78, v142, v143, sub_1C076FFC8, sub_1C076E89C);
    if ((v140 & 0x100000000) != 0)
    {

      sub_1C076E764();
      swift_allocError();
      *v120 = v142;
      *(v120 + 8) = v143;
      *(v120 + 16) = 6;
      swift_willThrow();

      goto LABEL_121;
    }

    v20 = sub_1C095D74C();
    v21 = [v18 i[358]];

    if (v21 != sub_1C095D14C())
    {
      sub_1C095DACC();
      v22 = v139;
      if ((v23 & 1) == 0)
      {
        v25 = sub_1C095D8EC();
        v26 = MEMORY[0x1C68DD630](v25);
        v28 = v27;

        if (v26 == 0x61636F5669726953 && v28 == 0xE900000000000062 || (sub_1C095DF3C() & 1) != 0)
        {

          v24 = 1;
          goto LABEL_20;
        }

        if (v26 == 0x656C6946636F56 && v28 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
        {

          v24 = 2;
          goto LABEL_20;
        }

        if (v26 == 0x526E6F69746E654DLL && v28 == 0xEF7265766C6F7365 || (sub_1C095DF3C() & 1) != 0)
        {

          v24 = 3;
          goto LABEL_20;
        }

        if (v26 == 0xD000000000000013 && 0x80000001C09CD610 == v28 || (sub_1C095DF3C() & 1) != 0)
        {

          v24 = 4;
          goto LABEL_20;
        }

        if (v26 == 0x4143726573726150 && v28 == 0xEA00000000004954 || (sub_1C095DF3C() & 1) != 0)
        {

          v24 = 5;
          goto LABEL_20;
        }

        if (v26 == 0x5353726573726150 && v28 == 0xE900000000000055 || (sub_1C095DF3C() & 1) != 0)
        {

          v24 = 6;
          goto LABEL_20;
        }

        if (v26 == 0x6E776F6E6B6E75 && v28 == 0xE700000000000000)
        {

LABEL_115:
          v125 = 0;
          goto LABEL_21;
        }

        v118 = sub_1C095DF3C();

        if (v118)
        {
          goto LABEL_115;
        }
      }

      v24 = 7;
LABEL_20:
      v125 = v24;
      goto LABEL_21;
    }

    v125 = 7;
    v22 = v139;
LABEL_21:
    v29 = sub_1C095D74C();
    v30 = [v19 i[358]];

    if (v30 == sub_1C095D14C() || (sub_1C095DACC(), (v31 & 1) != 0))
    {
      v127 = 0;
      v130 = 0;
    }

    else
    {
      v32 = sub_1C095D8EC();
      v127 = MEMORY[0x1C68DD630](v32);
      v130 = v33;
    }

    v34 = sub_1C095D74C();
    v35 = [v19 i[358]];

    if (v35 == sub_1C095D14C() || (sub_1C095DACC(), (v36 & 1) != 0))
    {
      v126 = 0;
      v129 = 0;
    }

    else
    {
      v37 = sub_1C095D8EC();
      v126 = MEMORY[0x1C68DD630](v37);
      v129 = v38;
    }

    v39 = sub_1C095D74C();
    v40 = [v19 i[358]];

    if (v40 == sub_1C095D14C() || (sub_1C095DACC(), (v41 & 1) != 0))
    {
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
    }

    else
    {
      v42 = sub_1C095D8EC();
      v43 = MEMORY[0x1C68DD630](v42);
      v45 = v44;

      sub_1C076C7B8(v43, v45, &v149);
      if (v2)
      {

        v121 = v22;
        goto LABEL_122;
      }

      v155 = *&v150[16];
      v156 = v151;
      v157 = v152;
      v153 = v149;
      v154 = *v150;
    }

    v46 = sub_1C095D74C();
    v47 = [v19 i[358]];

    v141 = v19;
    if (v47 == sub_1C095D14C() || (sub_1C095DACC(), (v48 & 1) != 0))
    {
      v138 = MEMORY[0x1E69E7CC0];
      goto LABEL_37;
    }

    v56 = v4;
    v57 = sub_1C095D8EC();
    v58 = MEMORY[0x1C68DD630](v57);
    v60 = v59;

    *&v149 = v58;
    *(&v149 + 1) = v60;
    v61 = sub_1C095DB3C();

    v62 = *(v61 + 16);
    if (v62)
    {
      v4 = 0;
      v63 = (v61 + 40);
      v64 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v4 >= *(v61 + 16))
        {
          __break(1u);
          goto LABEL_127;
        }

        v65 = *(v63 - 1);
        v66 = *v63;

        sub_1C076D914(v65, v66, &v149);
        if (v2)
        {
          break;
        }

        v146 = v149;
        *v147 = *v150;
        *&v147[13] = *&v150[13];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_1C057802C(0, *(v64 + 2) + 1, 1, v64);
        }

        v68 = *(v64 + 2);
        v67 = *(v64 + 3);
        if (v68 >= v67 >> 1)
        {
          v64 = sub_1C057802C((v67 > 1), v68 + 1, 1, v64);
        }

        ++v4;
        *(v64 + 2) = v68 + 1;
        v69 = &v64[48 * v68];
        *(v69 + 61) = *&v147[13];
        *(v69 + 2) = v146;
        *(v69 + 3) = *v147;
        v63 += 2;
        if (v62 == v4)
        {
          goto LABEL_86;
        }
      }

      sub_1C05145B4(&v153, &qword_1EBE1F788, &unk_1C0999A60);

LABEL_118:

LABEL_121:
      v121 = v139;
LABEL_122:
      sub_1C05149C4(v121);
      return v4;
    }

    v64 = MEMORY[0x1E69E7CC0];
LABEL_86:
    v138 = v64;

    v4 = v56;
    v22 = v139;
    i = &off_1E811B000;
    v19 = v141;
LABEL_37:
    v137 = sub_1C07714C8(v19, 0x646E497472617473, 0xEF6C6562614C7865, v142, v143, sub_1C076FFC8, sub_1C076E89C);
    v136 = sub_1C07714C8(v19, 0x7865646E49646E65, 0xED00006C6562614CLL, v142, v143, sub_1C076FFC8, sub_1C076E89C);
    v49 = sub_1C095D74C();
    v50 = [v19 i[358]];

    if (v50 == sub_1C095D14C() || (sub_1C095DACC(), (v51 & 1) != 0))
    {
      v145 = MEMORY[0x1E69E7CC0];
      v52 = v141;
      goto LABEL_40;
    }

    v70 = sub_1C095D8EC();
    v71 = MEMORY[0x1C68DD630](v70);
    v73 = v72;

    *&v149 = v71;
    *(&v149 + 1) = v73;
    v74 = sub_1C095DB3C();

    v135 = *(v74 + 16);
    if (v135)
    {
      break;
    }

    v145 = MEMORY[0x1E69E7CC0];
    v52 = v141;
LABEL_88:

    v22 = v139;
    i = &off_1E811B000;
LABEL_40:
    v53 = sub_1C095D74C();
    v54 = [v52 i[358]];

    if (v54 == sub_1C095D14C() || (sub_1C095DACC(), (v55 & 1) != 0))
    {
      v131 = 0;
      v134 = 0;
    }

    else
    {
      v85 = sub_1C095D8EC();
      v131 = MEMORY[0x1C68DD630](v85);
      v134 = v86;
    }

    v87 = sub_1C095D74C();
    v88 = [v141 i[358]];

    if (v88 == sub_1C095D14C())
    {
      v89 = v2;
LABEL_68:

      v144 = 3;
      goto LABEL_71;
    }

    sub_1C095DACC();
    if (v90)
    {
      v89 = v2;
      goto LABEL_68;
    }

    v91 = v22;
    v92 = sub_1C095D8EC();
    v94 = v93;
    v96 = v95;
    v98 = v97;

    v99 = MEMORY[0x1C68DD630](v92, v94, v96, v98);
    v101 = v100;

    sub_1C076E08C(v99, v101, &v149);
    if (v2)
    {

      sub_1C05145B4(&v153, &qword_1EBE1F788, &unk_1C0999A60);

      v121 = v91;
      goto LABEL_122;
    }

    v89 = 0;

    v144 = v149;
    v22 = v91;
LABEL_71:
    LOBYTE(v158) = 1;
    *&v150[16] = v155;
    v151 = v156;
    v152 = v157;
    v149 = v153;
    *v150 = v154;
    sub_1C05149C4(v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = sub_1C057EAB4(v140);
    v105 = *(v4 + 16);
    v106 = (v103 & 1) == 0;
    v107 = v105 + v106;
    if (__OFADD__(v105, v106))
    {
      goto LABEL_128;
    }

    v108 = v103;
    if (*(v4 + 24) >= v107)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C0670398();
        if (v108)
        {
          goto LABEL_79;
        }

LABEL_78:
        sub_1C0670C64(v104, v140, MEMORY[0x1E69E7CC0], v4);
        goto LABEL_79;
      }

      if ((v103 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      sub_1C057BD2C(v107, isUniquelyReferenced_nonNull_native);
      v109 = sub_1C057EAB4(v140);
      if ((v108 & 1) != (v110 & 1))
      {
        goto LABEL_129;
      }

      v104 = v109;
      if ((v108 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

LABEL_79:
    v111 = *(v4 + 56);
    v112 = *(v111 + 8 * v104);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    *(v111 + 8 * v104) = v112;
    if ((v113 & 1) == 0)
    {
      v112 = sub_1C0522E00(0, *(v112 + 2) + 1, 1, v112);
      *(v111 + 8 * v104) = v112;
    }

    v115 = *(v112 + 2);
    v114 = *(v112 + 3);
    if (v115 >= v114 >> 1)
    {
      *(v111 + 8 * v104) = sub_1C0522E00((v114 > 1), v115 + 1, 1, v112);
    }

    v6 = v128 + 1;

    v116 = *(v111 + 8 * v104);
    *(v116 + 16) = v115 + 1;
    v117 = v116 + 192 * v115;
    *(v117 + 32) = v126;
    *(v117 + 40) = v129;
    *(v117 + 48) = v125;
    *(v117 + 49) = v4;
    *(v117 + 52) = v4 >> 24;
    *(v117 + 56) = v127;
    *(v117 + 64) = v130;
    *(v117 + 88) = *v150;
    *(v117 + 104) = *&v150[16];
    *(v117 + 120) = v151;
    *(v117 + 136) = v152;
    *(v117 + 72) = v149;
    *(v117 + 152) = v138;
    *(v117 + 160) = v137;
    *(v117 + 164) = BYTE4(v137) & 1;
    *(v117 + 167) = v159;
    *(v117 + 165) = v158;
    *(v117 + 168) = v136;
    *(v117 + 172) = BYTE4(v136) & 1;
    *(v117 + 173) = v160;
    *(v117 + 175) = v161;
    *(v117 + 176) = v145;
    *(v117 + 184) = v131;
    *(v117 + 192) = v134;
    *(v117 + 200) = v144;
    *(v117 + 204) = *&v148[3];
    v148[0] = BYTE4(v136) & 1;
    *(v117 + 201) = *v148;
    *(v117 + 208) = 0;
    *(v117 + 216) = 1;
    v5 = sub_1C07721FC;
    v2 = v89;
    if (v128 + 1 == v123)
    {
      return v4;
    }
  }

  v75 = 0;
  v76 = (v74 + 40);
  v145 = MEMORY[0x1E69E7CC0];
  v52 = v141;
  v132 = v74;
  v133 = v4;
  while (v75 < *(v74 + 16))
  {
    v77 = *(v76 - 1);
    v78 = *v76;

    sub_1C076DD64(v77, v78, &v149);
    if (v2)
    {

      sub_1C05145B4(&v153, &qword_1EBE1F788, &unk_1C0999A60);

      goto LABEL_118;
    }

    v79 = v149;
    v80 = *v150;
    v81 = v150[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = sub_1C0578148(0, *(v145 + 2) + 1, 1, v145);
    }

    v83 = *(v145 + 2);
    v82 = *(v145 + 3);
    if (v83 >= v82 >> 1)
    {
      v145 = sub_1C0578148((v82 > 1), v83 + 1, 1, v145);
    }

    ++v75;
    *(v145 + 2) = v83 + 1;
    v84 = &v145[24 * v83];
    *(v84 + 2) = v79;
    *(v84 + 12) = v80;
    v84[52] = v81;
    v76 += 2;
    v2 = 0;
    v74 = v132;
    v4 = v133;
    v52 = v141;
    if (v135 == v75)
    {
      goto LABEL_88;
    }
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t sub_1C076B524(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v201 = a8;
  v182 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F760, &qword_1C0999A48);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v166[-v18];
  v183 = *a2;
  result = sub_1C0771A10(a6, a7, v197);
  if (v9)
  {
    return result;
  }

  v178 = v19;
  v176 = a3;
  v181 = v198;
  if (!v198)
  {
    return result;
  }

  v171 = a4;
  v172 = a7;
  v168 = a6;
  v177 = a1;
  v180 = v197[0];
  v173 = 0;
  v174 = v197[1];
  v22 = v199;
  v21 = v200;
  v23 = HIBYTE(v200) & 0xF;
  if ((v200 & 0x2000000000000000) == 0)
  {
    v23 = v199;
  }

  v24 = 7;
  if (((v200 >> 60) & ((v199 & 0x800000000000000) == 0)) != 0)
  {
    v24 = 11;
  }

  *&v187 = 15;
  *(&v187 + 1) = v24 | (v23 << 16);
  v185 = v199;
  v186 = v200;

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  v26 = sub_1C0771C78();
  v27 = sub_1C051D6F4();
  v169 = v26;
  v170 = v25;
  v28 = sub_1C095DADC();
  v30 = v29;
  if (qword_1EBE15860 == -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    swift_once();
LABEL_8:
    v179 = v30;
    if (!qword_1EBE1F710)
    {
      goto LABEL_15;
    }

    v31 = qword_1EBE1F710;
    v32 = sub_1C095D74C();
    v33 = [v31 firstMatchInString:v32 options:0 range:{v28, v30}];

    if (!v33)
    {
      goto LABEL_15;
    }

    v34 = sub_1C07714C8(v33, 0x65646E4965646F6ELL, 0xEE006C6562614C78, v22, v21, sub_1C076FFC8, sub_1C076E89C);
    if ((v34 & 0x100000000) != 0)
    {

LABEL_15:
      v167 = 0;
      v175 = 0;
      v30 = MEMORY[0x1E69E7CC0];
      v184 = MEMORY[0x1E69E7CC0];
      goto LABEL_16;
    }

    v35 = v34;
    v36 = v176;
    if (*(v176 + 16) && (v37 = sub_1C057EAB4(v34), (v38 & 1) != 0))
    {
      v30 = *(*(v36 + 56) + 8 * v37);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    v68 = v182;
    if (*(v182 + 16) && (v69 = sub_1C057EAB4(v35), (v70 & 1) != 0))
    {
      v71 = *(*(v68 + 56) + 8 * v69);
    }

    else
    {
      v72 = MEMORY[0x1E69E7CC0];
    }

    v184 = v72;
    v73 = v171;
    if (*(v171 + 16) && (v74 = sub_1C057EAB4(v35), (v75 & 1) != 0))
    {
      v76 = *(v73 + 56) + 16 * v74;
      v167 = *v76;
      v175 = *(v76 + 8);
    }

    else
    {

      v167 = 0;
      v175 = 0;
    }

LABEL_16:
    v39 = v178;
    *&v187 = v22;
    *(&v187 + 1) = v21;
    v185 = 0x646E4965646F6E3CLL;
    v186 = 0xEB000000003D7865;
    v40 = sub_1C095D1FC();
    (*(*(v40 - 8) + 56))(v39, 1, 1, v40);

    v164 = v27;
    v165 = v27;
    sub_1C095DB7C();
    v42 = v41;
    sub_1C05145B4(v39, &qword_1EBE1F760, &qword_1C0999A48);

    if ((v42 & 1) == 0)
    {
      v43 = sub_1C095D8EC();
      v45 = v44;
      v47 = v46;
      v49 = v48;

      v22 = MEMORY[0x1C68DD630](v43, v45, v47, v49);
      v21 = v50;

      v51 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v51 = v22;
      }

      v52 = 7;
      if (((v21 >> 60) & ((v22 & 0x800000000000000) == 0)) != 0)
      {
        v52 = 11;
      }

      *&v187 = 15;
      *(&v187 + 1) = v52 | (v51 << 16);
      v185 = v22;
      v186 = v21;

      v28 = sub_1C095DADC();
      v179 = v53;
    }

    if (qword_1EBE15868 != -1)
    {
      swift_once();
    }

    if (qword_1EBE1F718)
    {
      v54 = qword_1EBE1F718;
      v55 = sub_1C095D74C();
      v56 = [v54 firstMatchInString:v55 options:0 range:{v28, v179}];

      if (v56)
      {
        v57 = sub_1C095D74C();
        v178 = v56;
        v58 = [v56 rangeWithName_];

        if (v58 != sub_1C095D14C())
        {
          sub_1C095DACC();
          if ((v59 & 1) == 0)
          {
            v77 = sub_1C095D8EC();
            v78 = MEMORY[0x1C68DD630](v77);
            v80 = v79;

            if (qword_1ED5D7CA0 != -1)
            {
              swift_once();
            }

            v187 = xmmword_1ED5D7CA8;
            v188 = xmmword_1ED5D7CB8;
            *&v189 = qword_1ED5D7CC8;

            v22 = sub_1C0514CE0(&v187, v78, v80, 1, MEMORY[0x1E69E7CC0]);

LABEL_71:

            goto LABEL_72;
          }
        }
      }
    }

    if (qword_1EBE15870 != -1)
    {
      swift_once();
    }

    if (qword_1EBE1F720)
    {
      v60 = qword_1EBE1F720;
      v61 = sub_1C095D74C();
      v62 = [v60 firstMatchInString:v61 options:0 range:{v28, v179}];

      if (v62)
      {
        v63 = sub_1C095D74C();
        v64 = [v62 rangeWithName_];

        if (v64 == sub_1C095D14C() || (sub_1C095DACC(), (v65 & 1) != 0))
        {

          goto LABEL_36;
        }

        v81 = sub_1C095D8EC();
        v85 = v84;
        if ((v81 ^ v82) >> 14)
        {
          v86 = v81;
          v87 = v82;
          v88 = v83;
          v89 = v173;
          v179 = sub_1C076FEFC(v81, v82, v83, v84, 10);
          v173 = v89;
          if ((v90 & 0x100) != 0)
          {
            v92 = sub_1C076F3AC(v86, v87, v88, v85, 10);
            v91 = v96;
          }

          else
          {
            v91 = v90;

            v92 = v179;
          }

          if (v91)
          {
            v97 = 0;
          }

          else
          {
            v97 = v92;
          }

          v98 = v91 & 1;
        }

        else
        {

          v97 = 0;
          v98 = 1;
        }

        if (qword_1ED5BDED8 != -1)
        {
          swift_once();
        }

        v187 = xmmword_1ED5BDEE0;
        v188 = xmmword_1ED5BDEF0;
        *&v189 = qword_1ED5BDF00;

        v22 = sub_1C0514CE0(&v187, v97, v98, 0, MEMORY[0x1E69E7CC0]);

        goto LABEL_71;
      }
    }

    *&v187 = v22;
    *(&v187 + 1) = v21;
    v185 = 14906;
    v186 = 0xE200000000000000;
    if (sub_1C095DB8C())
    {
      *&v187 = v22;
      *(&v187 + 1) = v21;
      *&v188 = 1802723668;
      *(&v188 + 1) = 0xE400000000000000;
      *&v189 = 0;

      v22 = sub_1C0514CE0(&v187, 0, 0, 255, MEMORY[0x1E69E7CC0]);
    }

    else if (v174 == 0x5664656E69666564 && v181 == 0xEC00000065756C61 || (v67 = sub_1C095DF3C(), (v67 & 1) != 0))
    {
      *&v187 = v22;
      *(&v187 + 1) = v21;
      strcpy(&v188, "DefinedValue");
      BYTE13(v188) = 0;
      HIWORD(v188) = -5120;
      *&v189 = 0;

      v22 = sub_1C0514CE0(&v187, 0, 0, 255, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      if (qword_1EBE158A0 != -1)
      {
        v67 = swift_once();
      }

      v93 = qword_1EBE1F750;
      *&v187 = v22;
      *(&v187 + 1) = v21;
      MEMORY[0x1EEE9AC00](v67);
      v164 = &v187;

      v94 = v173;
      v95 = sub_1C0576198(sub_1C0771CDC, &v166[-32], v93);
      v173 = v94;

      if (v95)
      {
        *&v187 = v22;
        *(&v187 + 1) = v21;
        strcpy(&v188, "Operator");
        BYTE9(v188) = 0;
        WORD5(v188) = 0;
        HIDWORD(v188) = -402653184;
        *&v189 = 0;

        v22 = sub_1C0514CE0(&v187, 0, 0, 255, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        *&v187 = v22;
        *(&v187 + 1) = v21;
        v185 = 95;
        v186 = 0xE100000000000000;
        if ((sub_1C095DB8C() & 1) == 0)
        {

LABEL_36:

          sub_1C076E764();
          swift_allocError();
          *v66 = v22;
          *(v66 + 8) = v21;
          *(v66 + 16) = 0;
          return swift_willThrow();
        }

        *&v187 = v22;
        *(&v187 + 1) = v21;
        *&v188 = 0x797469746E45;
        *(&v188 + 1) = 0xE600000000000000;
        *&v189 = 0;

        v22 = sub_1C0514CE0(&v187, 0, 0, 255, MEMORY[0x1E69E7CC0]);
      }
    }

LABEL_72:

    swift_unownedRetain();

    v28 = *(v30 + 16);
    if (!v28)
    {
      break;
    }

    v27 = 0;
    v21 = v30 + 32;
    v99 = v30;
    while (v27 < *(v30 + 16))
    {
      v100 = *(v21 + 16);
      v187 = *v21;
      v188 = v100;
      v101 = *(v21 + 32);
      v102 = *(v21 + 48);
      v103 = *(v21 + 64);
      *(v191 + 9) = *(v21 + 73);
      v190 = v102;
      v191[0] = v103;
      v189 = v101;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v104 = *(v22 + 104);
      sub_1C0518B04(&v187, &v185);
      sub_1C0518B04(&v187, &v185);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 104) = v104;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v104 = sub_1C0519CF8(0, *(v104 + 2) + 1, 1, v104);
        *(v22 + 104) = v104;
      }

      v107 = *(v104 + 2);
      v106 = *(v104 + 3);
      if (v107 >= v106 >> 1)
      {
        v104 = sub_1C0519CF8((v106 > 1), v107 + 1, 1, v104);
      }

      ++v27;
      *(v104 + 2) = v107 + 1;
      v108 = &v104[96 * v107];
      v109 = v188;
      *(v108 + 2) = v187;
      *(v108 + 3) = v109;
      v110 = v189;
      v111 = v190;
      v112 = v191[0];
      *(v108 + 105) = *(v191 + 9);
      *(v108 + 5) = v111;
      *(v108 + 6) = v112;
      *(v108 + 4) = v110;
      *(v22 + 104) = v104;
      swift_endAccess();

      sub_1C0518B60(&v187);
      v21 += 96;
      v30 = v99;
      if (v28 == v27)
      {
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_111:
    __break(1u);
  }

LABEL_80:

  v27 = v201;
  v113 = v175;
  if (!v175)
  {
    goto LABEL_85;
  }

  swift_unownedRetainStrong();
  v114 = *(v22 + 112);

  v115 = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 112) = v114;
  if ((v115 & 1) == 0)
  {
    goto LABEL_115;
  }

  while (1)
  {
    v116 = v167;
    v118 = *(v114 + 2);
    v117 = *(v114 + 3);
    if (v118 >= v117 >> 1)
    {
      v114 = sub_1C052233C((v117 > 1), v118 + 1, 1, v114);
    }

    *(v114 + 2) = v118 + 1;
    v119 = &v114[16 * v118];
    *(v119 + 8) = v116;
    *(v119 + 5) = v113;
    *(v22 + 112) = v114;

LABEL_85:
    v120 = v184;
    v28 = *(v184 + 16);
    if (v28)
    {
      v30 = 0;
      v21 = v184 + 32;
      while (v30 < *(v120 + 16))
      {
        v121 = *v21;
        v122 = *(v21 + 16);
        v123 = *(v21 + 48);
        v189 = *(v21 + 32);
        v190 = v123;
        v187 = v121;
        v188 = v122;
        v124 = *(v21 + 64);
        v125 = *(v21 + 80);
        v126 = *(v21 + 112);
        v192 = *(v21 + 96);
        v193 = v126;
        v191[0] = v124;
        v191[1] = v125;
        v127 = *(v21 + 128);
        v128 = *(v21 + 144);
        v129 = *(v21 + 160);
        *(v196 + 9) = *(v21 + 169);
        v195 = v128;
        v196[0] = v129;
        v194 = v127;
        swift_unownedRetainStrong();
        swift_beginAccess();
        v130 = *(v22 + 120);
        sub_1C0521E78(&v187, &v185);
        sub_1C0521E78(&v187, &v185);
        v131 = swift_isUniquelyReferenced_nonNull_native();
        *(v22 + 120) = v130;
        if ((v131 & 1) == 0)
        {
          v130 = sub_1C0522E00(0, *(v130 + 2) + 1, 1, v130);
          *(v22 + 120) = v130;
        }

        v133 = *(v130 + 2);
        v132 = *(v130 + 3);
        if (v133 >= v132 >> 1)
        {
          v130 = sub_1C0522E00((v132 > 1), v133 + 1, 1, v130);
        }

        ++v30;
        *(v130 + 2) = v133 + 1;
        v134 = &v130[192 * v133];
        v135 = v187;
        v136 = v188;
        v137 = v190;
        *(v134 + 4) = v189;
        *(v134 + 5) = v137;
        *(v134 + 2) = v135;
        *(v134 + 3) = v136;
        v138 = v191[0];
        v139 = v191[1];
        v140 = v193;
        *(v134 + 8) = v192;
        *(v134 + 9) = v140;
        *(v134 + 6) = v138;
        *(v134 + 7) = v139;
        v141 = v194;
        v142 = v195;
        v143 = v196[0];
        *(v134 + 201) = *(v196 + 9);
        *(v134 + 11) = v142;
        *(v134 + 12) = v143;
        *(v134 + 10) = v141;
        *(v22 + 120) = v130;
        swift_endAccess();

        sub_1C05755CC(&v187);
        v21 += 192;
        v27 = v201;
        v120 = v184;
        if (v28 == v30)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_111;
    }

LABEL_93:
    v113 = a9;

    v144 = v177;
    if (v180 > v27)
    {
      goto LABEL_97;
    }

    v145 = *a9;
    if (!*(*a9 + 16))
    {
      break;
    }

    v146 = sub_1C0514E38(v180);
    if ((v147 & 1) == 0)
    {
      break;
    }

    v183 = *(*(v145 + 56) + 16 * v146);
LABEL_97:
    v148 = v183;

    v149 = *(&v183 + 1);
    swift_unownedRetain();

    swift_unownedRetain();
    swift_unownedRetainStrong();
    v150 = *(v149 + 56);

    swift_unownedRetainStrong();
    v151 = *(v22 + 56);

    *&v187 = v150;
    *(&v187 + 1) = v151;
    LODWORD(v188) = 0;
    *(&v188 + 1) = v174;
    *&v189 = v181;
    *(&v189 + 1) = 0x746E656D75677241;
    v190 = 0xE800000000000000;
    swift_beginAccess();
    v114 = *(v148 + 16);

    sub_1C0514AC4(&v187, &v185);
    v152 = swift_isUniquelyReferenced_nonNull_native();
    *(v148 + 16) = v114;
    if ((v152 & 1) == 0)
    {
      v114 = sub_1C0514F9C(0, *(v114 + 2) + 1, 1, v114);
      *(v148 + 16) = v114;
    }

    v27 = *(v114 + 2);
    v153 = *(v114 + 3);
    if (v27 >= v153 >> 1)
    {
      v114 = sub_1C0514F9C((v153 > 1), v27 + 1, 1, v114);
    }

    *(v114 + 2) = v27 + 1;
    v154 = &v114[64 * v27];
    v155 = v187;
    v156 = v188;
    v157 = v190;
    *(v154 + 4) = v189;
    *(v154 + 5) = v157;
    *(v154 + 2) = v155;
    *(v154 + 3) = v156;
    *(v148 + 16) = v114;
    swift_endAccess();

    sub_1C0514A70(&v187);

    swift_unownedRelease();
    v158 = v180 + 4;
    if (__OFADD__(v180, 4))
    {
      __break(1u);
    }

    else
    {

      swift_unownedRetain();
      v159 = *a9;
      v160 = swift_isUniquelyReferenced_nonNull_native();
      v185 = *a9;
      *a9 = 0x8000000000000000;
      v114 = &v185;
      sub_1C05CAF70(v144, v22, v158, v160);
      *a9 = v185;
      v185 = v144;
      v186 = v22;
      if (!__OFADD__(v172, 1))
      {
        sub_1C076B524(v144, &v185, v176, v171, v182, v168, v172 + 1, v180, a9);
        sub_1C0771CFC(v148);
        goto LABEL_105;
      }
    }

    __break(1u);
LABEL_115:
    v114 = sub_1C052233C(0, *(v114 + 2) + 1, 1, v114);
    *(v22 + 112) = v114;
  }

  *&v187 = 0;
  *(&v187 + 1) = 0xE000000000000000;
  sub_1C095DC1C();
  MEMORY[0x1C68DD690](0xD000000000000037, 0x80000001C0A02440);
  v185 = v172;
  v161 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v161);

  v162 = v187;
  sub_1C076E764();
  swift_allocError();
  *v163 = v162;
  *(v163 + 16) = 5;
  swift_willThrow();
LABEL_105:

  return swift_unownedRelease();
}

void sub_1C076C7B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  sub_1C0771C78();
  sub_1C051D6F4();
  v6 = sub_1C095DADC();
  v8 = v7;
  if (qword_1EBE15890 != -1)
  {
LABEL_147:
    swift_once();
  }

  if (!qword_1EBE1F740 || (v9 = qword_1EBE1F740, v77 = a1, v10 = sub_1C095D74C(), v11 = [v9 firstMatchInString:v10 options:0 range:{v6, v8}], v9, v10, !v11))
  {
    v15 = MEMORY[0x1E69E7CC0];
    *a3 = 0;
    *(a3 + 8) = 1;
    *(a3 + 12) = 0;
    *(a3 + 16) = 1;
    *(a3 + 20) = 0;
    *(a3 + 24) = 1;
    *(a3 + 28) = 0;
    *(a3 + 32) = 1;
    *(a3 + 36) = 0;
    *(a3 + 40) = 1;
    *(a3 + 44) = 0;
    *(a3 + 48) = 1;
    *(a3 + 52) = 0;
    *(a3 + 56) = 1;
    *(a3 + 60) = 0;
    *(a3 + 64) = 1;
    *(a3 + 72) = v15;
    return;
  }

  v12 = sub_1C095D74C();
  v13 = [v11 rangeWithName_];

  v76 = v11;
  if (v13 == sub_1C095D14C() || (sub_1C095DACC(), (v14 & 1) != 0))
  {
    v79 = 0;
  }

  else
  {
    v16 = sub_1C095D8EC();
    MEMORY[0x1C68DD630](v16);

    v17 = sub_1C095DB3C();

    v18 = *(v17 + 16);
    v19 = 0;
    if (v18)
    {
      v20 = (v17 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = dword_1F3F8CA18;
        if (qword_1F3F8CA20 == v21 && unk_1F3F8CA28 == v22)
        {
          goto LABEL_28;
        }

        v25 = *(v20 - 1);
        v26 = *v20;
        v27 = v19;
        v28 = sub_1C095DF3C();
        LODWORD(v19) = v27;
        if (v28)
        {
          goto LABEL_28;
        }

        v23 = dword_1F3F8CA30;
        if (qword_1F3F8CA38 == v21 && *aAtch == v22)
        {
          goto LABEL_28;
        }

        v30 = sub_1C095DF3C();
        LODWORD(v19) = v27;
        if (v30)
        {
          goto LABEL_28;
        }

        v23 = dword_1F3F8CA48;
        v31 = qword_1F3F8CA50 == v21 && off_1F3F8CA58 == v22;
        if (v31 || (v32 = sub_1C095DF3C(), LODWORD(v19) = v27, (v32 & 1) != 0) || (v23 = dword_1F3F8CA60, qword_1F3F8CA68 == v21) && unk_1F3F8CA70 == v22 || (v33 = sub_1C095DF3C(), v19 = v27, (v33 & 1) != 0))
        {
LABEL_28:
          if ((v23 & ~v19) != 0)
          {
            v34 = v23;
          }

          else
          {
            v34 = 0;
          }

          v19 = v34 | v19;
        }

        v20 += 2;
        --v18;
      }

      while (v18);
    }

    v79 = v19;

    v11 = v76;
    a1 = v77;
  }

  v35 = sub_1C095D74C();
  v36 = [v11 rangeWithName_];

  if (v36 == sub_1C095D14C() || (sub_1C095DACC(), (v37 & 1) != 0))
  {
    LODWORD(v75) = 0;
    LOBYTE(v38) = 1;
  }

  else
  {
    sub_1C095D8EC();
    v75 = sub_1C095DA6C();
    v38 = HIDWORD(v75) & 1;
  }

  v74 = v38;
  v73 = sub_1C07714C8(v11, 0xD000000000000012, 0x80000001C0A02540, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v72 = sub_1C07714C8(v11, 0xD000000000000016, 0x80000001C0A02560, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v71 = sub_1C07714C8(v11, 0xD000000000000015, 0x80000001C0A02580, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v70 = sub_1C07714C8(v11, 0xD000000000000019, 0x80000001C0A025A0, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v39 = sub_1C07714C8(v11, 0xD000000000000011, 0x80000001C0A025C0, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v69 = sub_1C07714C8(v11, 0xD000000000000012, 0x80000001C0A025E0, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v68 = sub_1C07714C8(v11, 0xD000000000000016, 0x80000001C0A02600, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v40 = sub_1C095D74C();
  v41 = [v11 rangeWithName_];

  if (v41 == sub_1C095D14C() || (sub_1C095DACC(), (v42 & 1) != 0))
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_145:

    *a3 = v79;
    *(a3 + 4) = v75;
    *(a3 + 8) = v74;
    *(a3 + 12) = v73;
    *(a3 + 16) = BYTE4(v73) & 1;
    *(a3 + 20) = v72;
    *(a3 + 24) = BYTE4(v72) & 1;
    *(a3 + 28) = v71;
    *(a3 + 32) = BYTE4(v71) & 1;
    *(a3 + 36) = v70;
    *(a3 + 40) = BYTE4(v70) & 1;
    *(a3 + 44) = v39;
    *(a3 + 48) = BYTE4(v39) & 1;
    *(a3 + 52) = v69;
    *(a3 + 56) = BYTE4(v69) & 1;
    *(a3 + 60) = v68;
    *(a3 + 64) = BYTE4(v68) & 1;
    *(a3 + 72) = v43;
    return;
  }

  v67 = v39;
  v44 = sub_1C095D8EC();
  MEMORY[0x1C68DD630](v44);

  v6 = sub_1C095DB3C();

  v78 = *(v6 + 16);
  if (!v78)
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_144:

    v39 = v67;
    goto LABEL_145;
  }

  v45 = 0;
  v8 = (v6 + 40);
  v43 = MEMORY[0x1E69E7CC0];
  a1 = v6;
  while (1)
  {
    if (v45 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_147;
    }

    v48 = *(v8 - 1);
    v47 = *v8;
    if (v48 != 0x656E696665646E75 || v47 != 0xE900000000000064)
    {
      v50 = *(v8 - 1);
      v51 = *v8;
      if ((sub_1C095DF3C() & 1) == 0)
      {
        break;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v52 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v43 = sub_1C0578750((v52 > 1), v53 + 1, 1, v43);
    }

    v46 = 0;
LABEL_44:
    ++v45;
    *(v43 + 2) = v54;
    v43[v53 + 32] = v46;
    v8 += 2;
    v6 = a1;
    if (v78 == v45)
    {
      goto LABEL_144;
    }
  }

  if (v48 == 0x6F747541656D6F48 && v47 == 0xEE006E6F6974616DLL || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v55 = *(v43 + 3);
    v54 = v53 + 1;
    v46 = 1;
    if (v53 >= v55 >> 1)
    {
      v43 = sub_1C0578750((v55 > 1), v53 + 1, 1, v43);
    }

    goto LABEL_44;
  }

  if (v48 == 0x6D796E6F6E7953 && v47 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v56 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v56 >> 1)
    {
      v43 = sub_1C0578750((v56 > 1), v53 + 1, 1, v43);
    }

    v46 = 2;
    goto LABEL_44;
  }

  if (v48 == 0x74696C736E617254 && v47 == 0xEF6E6F6974617265 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v57 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v57 >> 1)
    {
      v43 = sub_1C0578750((v57 > 1), v53 + 1, 1, v43);
    }

    v46 = 3;
    goto LABEL_44;
  }

  if (v48 == 0x6465646E61707845 && v47 == 0xED0000696A6F6D45 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v58 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v58 >> 1)
    {
      v43 = sub_1C0578750((v58 > 1), v53 + 1, 1, v43);
    }

    v46 = 4;
    goto LABEL_44;
  }

  if (v48 == 0xD000000000000013 && 0x80000001C09CD7F0 == v47 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v59 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v59 >> 1)
    {
      v43 = sub_1C0578750((v59 > 1), v53 + 1, 1, v43);
    }

    v46 = 5;
    goto LABEL_44;
  }

  if (v48 == 0xD000000000000011 && 0x80000001C09CD7D0 == v47 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v60 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v60 >> 1)
    {
      v43 = sub_1C0578750((v60 > 1), v53 + 1, 1, v43);
    }

    v46 = 6;
    goto LABEL_44;
  }

  if (v48 == 0x48746361746E6F43 && v47 == 0xED0000656C646E61 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v61 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v61 >> 1)
    {
      v43 = sub_1C0578750((v61 > 1), v53 + 1, 1, v43);
    }

    v46 = 7;
    goto LABEL_44;
  }

  if (v48 == 0x614D786966657250 && v47 == 0xEE00676E69686374 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v62 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v62 >> 1)
    {
      v43 = sub_1C0578750((v62 > 1), v53 + 1, 1, v43);
    }

    v46 = 8;
    goto LABEL_44;
  }

  if (v48 == 0xD000000000000010 && 0x80000001C09CD7B0 == v47 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v63 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v63 >> 1)
    {
      v43 = sub_1C0578750((v63 > 1), v53 + 1, 1, v43);
    }

    v46 = 9;
    goto LABEL_44;
  }

  if (v48 == 0x636974656E6F6850 && v47 == 0xEF7265686374614DLL || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v64 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v64 >> 1)
    {
      v43 = sub_1C0578750((v64 > 1), v53 + 1, 1, v43);
    }

    v46 = 10;
    goto LABEL_44;
  }

  if (v48 == 0x7A6974616D6D654CLL && v47 == 0xED00006E6F697461 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C0578750(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = *(v43 + 2);
    v65 = *(v43 + 3);
    v54 = v53 + 1;
    if (v53 >= v65 >> 1)
    {
      v43 = sub_1C0578750((v65 > 1), v53 + 1, 1, v43);
    }

    v46 = 11;
    goto LABEL_44;
  }

  sub_1C076E764();
  swift_allocError();
  *v66 = v77;
  *(v66 + 8) = a2;
  *(v66 + 16) = 9;
  swift_willThrow();
}

void sub_1C076D914(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  sub_1C0771C78();
  sub_1C051D6F4();
  v6 = sub_1C095DADC();
  v8 = v7;
  if (qword_1EBE15880 != -1)
  {
    swift_once();
  }

  if (!qword_1EBE1F730 || (v9 = qword_1EBE1F730, v10 = sub_1C095D74C(), v11 = [v9 firstMatchInString:v10 options:0 range:{v6, v8}], v9, v10, !v11))
  {
    sub_1C076E764();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 7;
    swift_willThrow();

    return;
  }

  v12 = sub_1C095D74C();
  v13 = [v11 rangeWithName_];

  if (v13 == sub_1C095D14C() || (sub_1C095DACC(), (v14 & 1) != 0))
  {
    v33 = 0;
    v35 = 0;
  }

  else
  {
    v16 = sub_1C095D8EC();
    v33 = MEMORY[0x1C68DD630](v16);
    v35 = v17;
  }

  v18 = sub_1C095D74C();
  v19 = [v11 rangeWithName_];

  if (v19 == sub_1C095D14C() || (sub_1C095DACC(), (v20 & 1) != 0))
  {
    v32 = 0;
    v34 = 0;
  }

  else
  {
    v21 = sub_1C095D8EC();
    v32 = MEMORY[0x1C68DD630](v21);
    v34 = v22;
  }

  v23 = sub_1C07714C8(v11, 0x746E4965756C6176, 0xED00006C6562614CLL, a1, a2, sub_1C077105C, sub_1C076EE24);
  v24 = sub_1C095D74C();
  v25 = [v11 &selRef:v24 initWithIdAsString:? connectionID:? + 4];

  if (v25 == sub_1C095D14C())
  {
    v26 = 0;
    LOBYTE(v27) = 1;
    v28 = v35;
    if (!v35)
    {
      goto LABEL_21;
    }

LABEL_19:

    *a3 = v33;
    *(a3 + 8) = v28;
    *(a3 + 16) = v32;
    *(a3 + 24) = v34;
    *(a3 + 32) = v23;
    *(a3 + 36) = BYTE4(v23) & 1;
    *(a3 + 40) = v26;
    *(a3 + 44) = v27;
    return;
  }

  sub_1C095DACC();
  v28 = v35;
  if (v29)
  {
    v26 = 0;
    LOBYTE(v27) = 1;
    if (v35)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C095D8EC();
    v30 = sub_1C095DA6C();
    v26 = v30;
    v27 = HIDWORD(v30) & 1;
    if (v35)
    {
      goto LABEL_19;
    }
  }

LABEL_21:

  sub_1C076E764();
  swift_allocError();
  *v31 = a1;
  *(v31 + 8) = a2;
  *(v31 + 16) = 7;
  swift_willThrow();
}

void sub_1C076DD64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v30 = v7 | (v6 << 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  sub_1C0771C78();
  sub_1C051D6F4();
  v8 = sub_1C095DADC();
  v10 = v9;
  if (qword_1EBE15888 != -1)
  {
    swift_once();
  }

  if (!qword_1EBE1F738 || (v11 = qword_1EBE1F738, v12 = sub_1C095D74C(), v13 = [v11 firstMatchInString:v12 options:0 range:{v8, v10, a1, a2, 15, v30}], v11, v12, !v13))
  {
    sub_1C076E764();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 8;
    swift_willThrow();

    return;
  }

  v14 = sub_1C095D74C();
  v15 = [v13 rangeWithName_];

  if (v15 == sub_1C095D14C() || (sub_1C095DACC(), (v16 & 1) != 0))
  {
    v31 = 0;
    v17 = 0;
  }

  else
  {
    v19 = sub_1C095D8EC();
    v31 = MEMORY[0x1C68DD630](v19);
    v17 = v20;
  }

  v21 = sub_1C095D74C();
  v22 = [v13 rangeWithName_];

  if (v22 == sub_1C095D14C() || (sub_1C095DACC(), (v23 & 1) != 0))
  {
    v24 = 0;
    LOBYTE(v25) = 1;
    if (v17)
    {
LABEL_17:

      *a3 = v31;
      *(a3 + 8) = v17;
      *(a3 + 16) = v24;
      *(a3 + 20) = v25;
      return;
    }
  }

  else
  {
    sub_1C095D8EC();
    v26 = sub_1C095DA6C();
    v24 = v26;
    v25 = HIDWORD(v26) & 1;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  sub_1C076E764();
  swift_allocError();
  *v27 = a1;
  *(v27 + 8) = a2;
  *(v27 + 16) = 8;
  swift_willThrow();
}

void sub_1C076E08C(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v26 = v7 | (v6 << 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  sub_1C0771C78();
  sub_1C051D6F4();
  v8 = sub_1C095DADC();
  v10 = v9;
  if (qword_1EBE15898 != -1)
  {
    swift_once();
  }

  if (!qword_1EBE1F748)
  {
    goto LABEL_12;
  }

  v11 = qword_1EBE1F748;
  v12 = sub_1C095D74C();
  v13 = [v11 firstMatchInString:v12 options:0 range:{v8, v10, a1, a2, 15, v26}];

  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = sub_1C095D74C();
  v15 = [v13 rangeWithName_];

  if (v15 == sub_1C095D14C() || (sub_1C095DACC(), (v16 & 1) != 0))
  {

LABEL_12:
    v17 = 2;
LABEL_13:
    *a3 = v17;
    return;
  }

  v18 = sub_1C095D8EC();
  v19 = MEMORY[0x1C68DD630](v18);
  v21 = v20;

  if (v19 == 1819047270 && v21 == 0xE400000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    *a3 = 0;
    return;
  }

  if (v19 == 0x6C616974726170 && v21 == 0xE700000000000000)
  {

LABEL_23:
    v17 = 1;
    goto LABEL_13;
  }

  v22 = sub_1C095DF3C();

  if (v22)
  {

    goto LABEL_23;
  }

  sub_1C076E764();
  swift_allocError();
  *v23 = a1;
  *(v23 + 8) = a2;
  *(v23 + 16) = 10;
  swift_willThrow();
}

void sub_1C076E388(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  sub_1C0771C78();
  sub_1C051D6F4();
  v6 = sub_1C095DADC();
  v8 = v7;
  if (qword_1EBE15858 != -1)
  {
    swift_once();
  }

  if (qword_1EBE1F708 && (v9 = qword_1EBE1F708, v10 = sub_1C095D74C(), v11 = [v9 firstMatchInString:v10 options:0 range:{v6, v8}], v9, v10, v11))
  {
    v19 = a3;
    v20 = sub_1C07714C8(v11, 0x646E497472617473, 0xEF6C6562614C7865, a1, a2, sub_1C076FFC8, sub_1C076E89C);
    v21 = sub_1C07714C8(v11, 0x7865646E49646E65, 0xED00006C6562614CLL, a1, a2, sub_1C076FFC8, sub_1C076E89C);
    v12 = sub_1C07714C8(v11, 0xD000000000000011, 0x80000001C0A026F0, a1, a2, sub_1C076FFC8, sub_1C076E89C);
    v13 = sub_1C07714C8(v11, 0x6F63696E55646E65, 0xEF6C6562614C6564, a1, a2, sub_1C076FFC8, sub_1C076E89C);
    v14 = sub_1C07714C8(v11, 0x6D69547472617473, 0xEE006C6562614C65, a1, a2, sub_1C077105C, sub_1C076EE24);
    v15 = sub_1C07714C8(v11, 0x4C656D6954646E65, 0xEC0000006C656261, a1, a2, sub_1C077105C, sub_1C076EE24);
    if ((v20 & 0x100000000) != 0 || (v21 & 0x100000000) != 0 || (v12 & 0x100000000) != 0 || (v13 & 0x100000000) != 0 || (v14 & 0x100000000) != 0 || (v16 = v15, (v15 & 0x100000000) != 0))
    {
      sub_1C076E764();
      swift_allocError();
      *v18 = a1;
      *(v18 + 8) = a2;
      *(v18 + 16) = 2;
      swift_willThrow();
    }

    else
    {

      *v19 = v20;
      v19[1] = v21;
      v19[2] = v12;
      v19[3] = v13;
      v19[4] = v14;
      v19[5] = v16;
    }
  }

  else
  {
    sub_1C076E764();
    swift_allocError();
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = 2;
    swift_willThrow();
  }
}

unint64_t sub_1C076E764()
{
  result = qword_1EBE1F758;
  if (!qword_1EBE1F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F758);
  }

  return result;
}

id sub_1C076E7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C095D74C();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1C095D17C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

unsigned __int8 *sub_1C076E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1C0771D3C();

  result = sub_1C095D8DC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C076F944();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C095DC5C();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1C076EE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1C0771D3C();

  result = sub_1C095D8DC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C076F944();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C095DC5C();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1C076F3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1C0771D3C();

  result = sub_1C095D8DC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C076F944();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C095DC5C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C076F944()
{
  v0 = sub_1C095D8EC();
  v4 = sub_1C076F9C4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C076F9C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C095D7AC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1C095DB2C();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1C076FB1C(v9, 0);
  v12 = sub_1C076FB90(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1C095D7AC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1C095DC5C();
LABEL_4:

  return sub_1C095D7AC();
}

void *sub_1C076FB1C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F780, &qword_1C0999A58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1C076FB90(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C076FDB0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C095D85C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C095DC5C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C076FDB0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C095D82C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C076FDB0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C095D87C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C68DD6D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C076FE2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = 0;
    return v15 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v16[0] = a3;
    v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v13 = v16;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v13 = sub_1C095DC5C();
  }

  result = a6(v13, a1, a2, a3, a4, a5);
  if (!v6)
  {
    v17 = BYTE4(result) & 1;
    v15 = result | ((BYTE4(result) & 1) << 32);
    return v15 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_1C076FEFC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1C095DC5C();
  }

  result = sub_1C0771D90(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1C076FFC8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1C095D84C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1C076FDB0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1C095D84C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}