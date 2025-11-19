uint64_t sub_1BC6326A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC632700()
{
  sub_1BC6A5A14(319, &qword_1EDDCE748, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1BC6A482C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PolicyProperty(319);
      if (v2 <= 0x3F)
      {
        sub_1BC632880(319, qword_1EDDCEA60, type metadata accessor for InterventionConfig.Layout, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BC632880(319, &unk_1EDDCF078, type metadata accessor for AnalyticsUIContext, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC632880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC6328E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC632948()
{
  if (!qword_1EDDCF0E8)
  {
    sub_1BC6E73D4(0, &qword_1EDDCF0E0, MEMORY[0x1E697B5B0]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCF0E8);
    }
  }
}

void sub_1BC6329AC()
{
  sub_1BC759CA0();
  if (v0 <= 0x3F)
  {
    sub_1BC6E73D4(319, &qword_1EDDCEE98, MEMORY[0x1E697B4F0]);
    if (v1 <= 0x3F)
    {
      sub_1BC759DE0();
      if (v2 <= 0x3F)
      {
        sub_1BC632B18();
        if (v3 <= 0x3F)
        {
          sub_1BC632948();
          if (v4 <= 0x3F)
          {
            sub_1BC632A8C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BC632A8C()
{
  if (!qword_1EDDCEEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCEEA0);
    }
  }
}

void sub_1BC632B18()
{
  if (!qword_1EDDCF098)
  {
    sub_1BC759D00();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCF098);
    }
  }
}

uint64_t View.intervention(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v39 = a4;
  v32 = a3;
  v34 = a2;
  v36 = a1;
  v38 = type metadata accessor for IntervenableAction(0);
  v5 = *(*(v38 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v38);
  v35 = &WitnessTable - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &WitnessTable - v8;
  v10 = type metadata accessor for PolicyCheckingIntervention(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&WitnessTable - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1BC75A960();
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &WitnessTable - v16;
  v17 = sub_1BC6A45D0(qword_1EDDD1180, type metadata accessor for PolicyCheckingIntervention);
  v42 = a3;
  v43 = v17;
  WitnessTable = swift_getWitnessTable();
  v40 = v14;
  v41 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = &WitnessTable - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &WitnessTable - v24;
  sub_1BC63368C(v36, v13 + *(v10 + 24), type metadata accessor for Intervention.Kind);
  sub_1BC688D34(v9);
  PolicyProperty.init()(v13);
  v26 = *(v10 + 20);
  sub_1BC63368C(v9, v35, type metadata accessor for IntervenableAction);
  sub_1BC75B630();
  sub_1BC6A4570(v9, type metadata accessor for IntervenableAction);
  v27 = v33;
  MEMORY[0x1BFB25FF0](v13, v34, v10, v32);
  sub_1BC6A4570(v13, type metadata accessor for PolicyCheckingIntervention);
  View.prefetchSensitiveContentPolicy()(v14, WitnessTable);
  (*(v37 + 8))(v27, v14);
  v28 = v19[2];
  v28(v25, v23, OpaqueTypeMetadata2);
  v29 = v19[1];
  v29(v23, OpaqueTypeMetadata2);
  v28(v39, v25, OpaqueTypeMetadata2);
  return (v29)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_1BC632FC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ParticipantHistoryChecker();
  sub_1BC75A960();
  sub_1BC69D4B0();
  return swift_getWitnessTable();
}

uint64_t sub_1BC63302C(uint64_t result)
{
  if (result != 1)
  {
    return sub_1BC635800(result);
  }

  return result;
}

uint64_t sub_1BC63305C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC6330A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC6330EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC633134(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BC63317C()
{
  if (!qword_1EDDCF108)
  {
    sub_1BC75A030();
    v0 = sub_1BC75A720();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCF108);
    }
  }
}

void sub_1BC6331D4()
{
  sub_1BC632880(319, &qword_1EDDCF0E0, MEMORY[0x1E697B5B0], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BC6A463C();
    if (v1 <= 0x3F)
    {
      sub_1BC6335F0(319, &qword_1EDDCE738, &qword_1EBCDC8E8, &unk_1BC762EC0);
      if (v2 <= 0x3F)
      {
        sub_1BC6A46E4();
        if (v3 <= 0x3F)
        {
          sub_1BC6335F0(319, &qword_1EDDCE750, &qword_1EBCDCBF8, &unk_1BC763F68);
          if (v4 <= 0x3F)
          {
            sub_1BC6335F0(319, &qword_1EDDCE760, &qword_1EBCDC970, &unk_1BC763180);
            if (v5 <= 0x3F)
            {
              sub_1BC6335F0(319, &qword_1EDDCE758, &qword_1EBCDCC00, &qword_1BC763F78);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BC633358()
{
  sub_1BC68C7A8(319, &qword_1EDDCE7F8, &qword_1EBCDC948, &qword_1BC766D80, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1BC68C758(319, &qword_1EDDCF0F8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1BC68C7A8(319, &qword_1EDDCE770, &qword_1EBCDC870, &unk_1BC762D60, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1BC68C7A8(319, &qword_1EDDCE780, &qword_1EBCDC878, &qword_1BC763F00, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1BC68C7A8(319, &qword_1EDDCF100, &qword_1EBCDBC50, &qword_1BC762D70, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PolicyProperty(319);
            if (v5 <= 0x3F)
            {
              sub_1BC68C80C(319, &qword_1EDDCF0E0, MEMORY[0x1E697B5B0], MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1BC68C80C(319, &qword_1EDDCEE58, MEMORY[0x1E697B640], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BC6335A0()
{
  result = qword_1EDDCF0A0;
  if (!qword_1EDDCF0A0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDDCF0A0);
  }

  return result;
}

void sub_1BC6335F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC808, &qword_1BC763F60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BC63368C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC633720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BC75ADF0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1BC75AE00();
}

uint64_t sub_1BC633818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC75ADF0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1BC75AE00();
}

uint64_t type metadata accessor for _SensitiveContentInPreviousCallTipView()
{
  result = qword_1EDDD0FB0;
  if (!qword_1EDDD0FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC633980()
{
  sub_1BC633AC8(319, &unk_1EDDCE170, &qword_1EBCDD660, &unk_1BC766F48, MEMORY[0x1E697BD78]);
  if (v0 <= 0x3F)
  {
    sub_1BC6D1C8C(319, &qword_1EDDCF0F8, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1BC633AC8(319, &qword_1EDDCE7F8, &qword_1EBCDC948, &qword_1BC766D80, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PolicyProperty(319);
        if (v3 <= 0x3F)
        {
          sub_1BC633B3C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC633AC8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BC633B3C()
{
  if (!qword_1EDDCDFE8)
  {
    sub_1BC759FE0();
    sub_1BC6330EC(&qword_1EDDCEE68, MEMORY[0x1E697B5B0]);
    v0 = sub_1BC75BA50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCDFE8);
    }
  }
}

unint64_t sub_1BC633BF8()
{
  result = qword_1EDDD0FC8[0];
  if (!qword_1EDDD0FC8[0])
  {
    type metadata accessor for _SensitiveContentInPreviousCallTipView();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD0FC8);
  }

  return result;
}

uint64_t sub_1BC633C54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BC633CDC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC898, &unk_1BC762D90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC890, &qword_1BC762D88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
  sub_1BC68BE3C();
  sub_1BC633DBC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1BC633DBC()
{
  result = qword_1EDDCE740;
  if (!qword_1EDDCE740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    sub_1BC68C20C(&qword_1EDDCEE88, MEMORY[0x1E697B460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE740);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy09Sensitivee8AnalysisB006OnShowE8CallbackVSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1BC75A960();
  sub_1BC633F08(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_1BC633F08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1BC633FB4()
{
  type metadata accessor for InterventionConfig.Layout(319);
  if (v0 <= 0x3F)
  {
    sub_1BC759EE0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SCUIInterventionOptions(319);
      if (v2 <= 0x3F)
      {
        sub_1BC6340E0();
        if (v3 <= 0x3F)
        {
          type metadata accessor for AnalyticsUIContext(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC634094(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1BC6340E0()
{
  if (!qword_1EDDCEEA8)
  {
    v0 = sub_1BC75BA50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCEEA8);
    }
  }
}

uint64_t sub_1BC634160()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD20, &qword_1BC764248);
  sub_1BC6A5340();
  return swift_getOpaqueTypeConformance2();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t View.intervention(isPresented:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v39 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - v12;
  type metadata accessor for InterventionPresenter(255);
  v14 = sub_1BC75A960();
  v15 = sub_1BC6A45D0(qword_1EDDD1378, type metadata accessor for InterventionPresenter);
  v44 = a6;
  v45 = v15;
  WitnessTable = swift_getWitnessTable();
  v40 = v14;
  v41 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = sub_1BC759D90();
  v40 = v14;
  v41 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  v40 = OpaqueTypeMetadata2;
  v41 = v18;
  v42 = OpaqueTypeConformance2;
  v43 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v40 = OpaqueTypeMetadata2;
  v41 = v18;
  v42 = OpaqueTypeConformance2;
  v43 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v40 = v21;
  v41 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v35 - v29;
  v31 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  View.intervention(isPresented:with:analyticsContext:)(a1, v36, v37, v38, v13, a5, a6, v28);
  sub_1BC66008C(v13, &qword_1EBCDBC50, &qword_1BC762D70);
  v32 = v24[2];
  v32(v30, v28, v23);
  v33 = v24[1];
  v33(v28, v23);
  v32(v39, v30, v23);
  return (v33)(v30, v23);
}

{
  v25 = a4;
  v27 = a3;
  v26 = a2;
  v24 = a1;
  v29 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBF0, &unk_1BC763F38);
  type metadata accessor for RemoteOrInProcessInterventionView(255);
  sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v42 = a6;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = swift_getOpaqueTypeConformance2();
  v40 = OpaqueTypeMetadata2;
  v41 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_1BC75AE10();
  v12 = sub_1BC75B590();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  v30 = a5;
  v31 = a6;
  v32 = v25;
  v33 = v28;
  v34 = v24;
  v35 = v26;
  v36 = v27;
  v40 = OpaqueTypeMetadata2;
  v41 = v11;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = a6;
  WitnessTable = swift_getWitnessTable();
  sub_1BC75B580();
  v37 = WitnessTable;
  swift_getWitnessTable();
  v21 = v13[2];
  v21(v19, v17, v12);
  v22 = v13[1];
  v22(v17, v12);
  v21(v29, v19, v12);
  return (v22)(v19, v12);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BC634610(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BC634668(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1BC6346C4@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v93 = a2;
  v3 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v96 = *(v3 - 8);
  v101 = *(v96 + 64);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v98 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v79 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v79 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC880, &qword_1BC762D78);
  v84 = *(v83 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v16 = &v79 - v15;
  v80 = &v79 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC888, &qword_1BC762D80);
  v86 = *(v85 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v79 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC890, &qword_1BC762D88);
  v19 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v97 = &v79 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC898, &unk_1BC762D90);
  v22 = *(v21 - 8);
  v91 = v21;
  v92 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v79 - v24;
  v90 = *(v2 + 16);
  v89 = *(v2 + 24);
  v25 = v2;
  v106 = v90;
  v107 = v89;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B660();
  v26 = v102;
  v27 = v103;
  v28 = v104;
  v82 = v4;
  v29 = *(v4 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);
  sub_1BC75B640();
  v30 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  sub_1BC75B640();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B8, &unk_1BC762DB0);
  v32 = sub_1BC633C54(&qword_1EDDCE7A8, &qword_1EBCDC8B8, &unk_1BC762DB0);
  View.intervention(isPresented:with:analyticsContext:)(v26, v27, v28, v13, v9, v31, v32, v16);

  sub_1BC66008C(v9, &qword_1EBCDBC50, &qword_1BC762D70);
  sub_1BC66008C(v13, &qword_1EBCDC878, &qword_1BC763F00);
  v100 = type metadata accessor for InterventionParticipantHistoryChecker;
  v33 = v25;
  v94 = v25;
  v34 = v98;
  sub_1BC68B6C8(v25, v98, type metadata accessor for InterventionParticipantHistoryChecker);
  v35 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v96 = *(v96 + 80);
  v36 = swift_allocObject();
  v95 = type metadata accessor for InterventionParticipantHistoryChecker;
  sub_1BC635348(v34, v36 + v35, type metadata accessor for InterventionParticipantHistoryChecker);
  v102 = v31;
  v103 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v81;
  v39 = v83;
  v40 = v80;
  View.onShowContent(_:)(sub_1BC68B730, v36);

  (*(v84 + 8))(v40, v39);
  v41 = v33;
  v42 = v98;
  sub_1BC68B6C8(v41, v98, v100);
  v43 = swift_allocObject();
  v44 = v35;
  v45 = v42;
  sub_1BC635348(v42, v43 + v35, type metadata accessor for InterventionParticipantHistoryChecker);
  v102 = v39;
  v103 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v97;
  v48 = v85;
  View.onInterventionHeeded(_:)(sub_1BC68BC84, v43, v85, v46);

  (*(v86 + 8))(v38, v48);
  KeyPath = swift_getKeyPath();
  v50 = v94;
  v51 = sub_1BC688DDC();
  LOBYTE(v43) = v52;
  v53 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C8, &qword_1BC762DF8) + 36)];
  *v53 = KeyPath;
  *(v53 + 1) = v51;
  v53[16] = v43;
  v54 = swift_getKeyPath();
  v55 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8D0, &qword_1BC762E30) + 36)];
  *v55 = v54;
  v55[8] = 1;
  v56 = swift_getKeyPath();
  v57 = *(v82 + 52);
  v58 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8D8, &qword_1BC762E70) + 36)];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8E0, &qword_1BC762E78);
  sub_1BC660024(v50 + v57, v58 + *(v59 + 28), &qword_1EBCDC868, &qword_1BC762D30);
  *v58 = v56;
  v60 = swift_getKeyPath();
  v61 = v50;
  v62 = v45;
  v63 = v45;
  v64 = v100;
  sub_1BC68B6C8(v61, v63, v100);
  v65 = swift_allocObject();
  v66 = v95;
  sub_1BC635348(v62, v65 + v44, v95);
  v67 = v87;
  v68 = &v47[*(v87 + 36)];
  *v68 = v60;
  v68[1] = sub_1BC68BD6C;
  v68[2] = v65;
  v69 = v94;
  v102 = sub_1BC688F48();
  sub_1BC68B6C8(v69, v62, v64);
  v70 = swift_allocObject();
  sub_1BC635348(v62, v70 + v44, v66);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
  v72 = sub_1BC68BE3C();
  v73 = sub_1BC633DBC();
  v74 = v97;
  sub_1BC75B420();

  sub_1BC635080(v74);
  LOBYTE(v102) = v90;
  v103 = v89;
  sub_1BC75B640();
  sub_1BC68B6C8(v69, v62, v100);
  v75 = swift_allocObject();
  sub_1BC635348(v62, v75 + v44, v95);
  v102 = v67;
  v103 = v71;
  v104 = v72;
  v105 = v73;
  swift_getOpaqueTypeConformance2();
  v76 = v91;
  v77 = v99;
  sub_1BC75B430();

  return (*(v92 + 8))(v77, v76);
}

uint64_t sub_1BC635080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC890, &qword_1BC762D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC6350F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for InterventionPresenter(255);
  sub_1BC75A960();
  sub_1BC6A45D0(qword_1EDDD1378, type metadata accessor for InterventionPresenter);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BC759D90();
  swift_getOpaqueTypeConformance2();
  sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC6352DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for SensitiveContentPolicyPrefetcher(255);
  sub_1BC75A960();
  sub_1BC7321B4();
  return swift_getWitnessTable();
}

uint64_t sub_1BC635348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t View.onShowContent(_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  if (a1)
  {

    sub_1BC711660(a1, a2, &v6);
    v4 = v6;
  }

  else
  {
    v4 = xmmword_1BC767530;
  }

  v6 = v4;
  sub_1BC75B220();

  return sub_1BC635468(v6);
}

uint64_t sub_1BC635468(uint64_t result)
{
  if (result != 1)
  {
    return sub_1BC635484(result);
  }

  return result;
}

uint64_t sub_1BC635484(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BC6354C8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1BC6354F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

unint64_t sub_1BC6355AC()
{
  result = qword_1EDDD12B0;
  if (!qword_1EDDD12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD12B0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI28OnInterventionFailedCallbackVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_SDys11AnyHashableVypGSo18SCUIReportEvidenceCs5Error_pIegHgozo_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1BC6356A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI06OnShowB8CallbackVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC635780@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDD12C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntervenableAction(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDDD12C8);
  return sub_1BC68B6C8(v3, a1, type metadata accessor for IntervenableAction);
}

uint64_t sub_1BC635800(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BC635850@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IntervenableAction(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BC68CD30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1BC635800(v4);
}

uint64_t sub_1BC6358E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC635920(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BC68CD00;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for IntervenableAction(0) + 32));
  v8 = *v7;
  v9 = v7[1];
  sub_1BC635800(v3);
  result = sub_1BC635484(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_1BC6359D0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.analysisHistoryCheckStatus.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1BC635A00(uint64_t a1)
{
  v2 = type metadata accessor for IntervenableAction(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1BC68B6C8(a1, &v10 - v7, type metadata accessor for IntervenableAction);
  sub_1BC68B6C8(v8, v6, type metadata accessor for IntervenableAction);
  sub_1BC6355AC();
  sub_1BC75ABD0();
  return sub_1BC68C880(v8, type metadata accessor for IntervenableAction);
}

unint64_t sub_1BC635B08()
{
  result = qword_1EBCDD6A8;
  if (!qword_1EBCDD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD6A8);
  }

  return result;
}

unint64_t sub_1BC635B5C()
{
  result = qword_1EBCDD6B0;
  if (!qword_1EBCDD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD6B0);
  }

  return result;
}

unint64_t sub_1BC635BB4()
{
  result = qword_1EBCDD6E8;
  if (!qword_1EBCDD6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6F0, &qword_1BC767040);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD6E8);
  }

  return result;
}

__n128 sub_1BC635C64@<Q0>(_OWORD *a1@<X8>)
{
  EnvironmentValues.sensitiveContentCallbacks.getter();
  a1[10] = v13;
  a1[11] = v14;
  a1[12] = v15;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v12;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t EnvironmentValues.sensitiveContentCallbacks.getter()
{
  sub_1BC635DE4();

  return sub_1BC75ABC0();
}

unint64_t sub_1BC635D18()
{
  result = qword_1EBCDD6E0;
  if (!qword_1EBCDD6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6D8, &qword_1BC767038);
    sub_1BC635BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD6E0);
  }

  return result;
}

unint64_t sub_1BC635DE4()
{
  result = qword_1EDDCF088;
  if (!qword_1EDDCF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCF088);
  }

  return result;
}

uint64_t SensitiveContentInPreviousCallTipView.init(participants:onBlockParticipant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1BC6D0F94(0, v12, 0);
    v13 = v31;
    v29 = sub_1BC759FE0();
    v14 = *(v29 - 8);
    v15 = *(v14 + 16);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v25[1] = a1;
    v17 = a1 + v16;
    v18 = *(v14 + 72);
    do
    {
      v15(v11, v17, v29);
      v11[*(v30 + 32)] = 0;
      v31 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BC6D0F94(v19 > 1, v20 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v20 + 1;
      sub_1BC6D1388(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20);
      v17 += v18;
      --v12;
    }

    while (v12);

    a3 = v27;
    a4 = v28;
    a2 = v26;
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_9:
    v23 = v13;
    v22 = 0;
    v21 = 0;
    goto LABEL_10;
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = sub_1BC6D13F8;
  v23 = v13;
LABEL_10:
  result = sub_1BC6CD1CC(v23, 0, 0, v22, v21, &v31);
  *a4 = v31;
  return result;
}

uint64_t sub_1BC63609C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1BC6360D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD730, &qword_1BC7670F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD720, &qword_1BC7670E0);
    v8 = sub_1BC75C420();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1BC660024(v10, v6, &qword_1EBCDD730, &qword_1BC7670F0);
      result = sub_1BC639118(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1BC759FE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BC636318@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EDDD17F8 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = xmmword_1EDDD19C8;
  v15[10] = xmmword_1EDDD19D8;
  v15[11] = xmmword_1EDDD19E8;
  v2 = xmmword_1EDDD19E8;
  v15[12] = xmmword_1EDDD19F8;
  v3 = xmmword_1EDDD1988;
  v4 = xmmword_1EDDD1998;
  v15[6] = xmmword_1EDDD1998;
  v15[7] = xmmword_1EDDD19A8;
  v5 = xmmword_1EDDD19A8;
  v6 = xmmword_1EDDD19B8;
  v15[8] = xmmword_1EDDD19B8;
  v15[9] = xmmword_1EDDD19C8;
  v7 = xmmword_1EDDD1948;
  v8 = xmmword_1EDDD1958;
  v15[2] = xmmword_1EDDD1958;
  v15[3] = xmmword_1EDDD1968;
  v9 = xmmword_1EDDD1968;
  v10 = xmmword_1EDDD1978;
  v15[4] = xmmword_1EDDD1978;
  v15[5] = xmmword_1EDDD1988;
  v11 = xmmword_1EDDD1938;
  v15[0] = xmmword_1EDDD1938;
  v15[1] = xmmword_1EDDD1948;
  a1[10] = xmmword_1EDDD19D8;
  a1[11] = v2;
  a1[12] = xmmword_1EDDD19F8;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = v1;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v3;
  *a1 = v11;
  a1[1] = v7;
  return sub_1BC6362BC(v15, &v14);
}

uint64_t SensitiveContentInPreviousCallTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for _SensitiveContentInPreviousCallTipView();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD638, &qword_1BC766DF0);
  v49 = *(v51 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD640, &qword_1BC766DF8);
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD648, &qword_1BC766E00);
  v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v44 - v14;
  v15 = sub_1BC759F50();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v2;
  (*(v16 + 104))(v19, *MEMORY[0x1E697B570], v15);
  v21 = sub_1BC759F40();
  (*(v16 + 8))(v19, v15);
  if ((v21 & 1) == 0)
  {
    v35 = 1;
    v36 = v54;
    return (*(v36 + 56))(v55, v35, 1, v12);
  }

  v22 = sub_1BC636A5C();
  v23 = *v22;
  v24 = v22[1];

  v25 = *sub_1BC636A68();
  sub_1BC636C24();
  v26 = v25;
  *v6 = sub_1BC75A610();
  v58 = 0;
  sub_1BC75B630();
  v27 = v57;
  v6[8] = v56;
  *(v6 + 2) = v27;
  v58 = 0;
  sub_1BC75B630();
  v28 = v57;
  v6[24] = v56;
  *(v6 + 4) = v28;
  v58 = 0;
  sub_1BC75B630();
  v29 = v57;
  v6[40] = v56;
  *(v6 + 6) = v29;
  *(v6 + 7) = swift_getKeyPath();
  *(v6 + 32) = 0;
  PolicyProperty.init()(&v6[*(v3 + 36)]);
  *&v6[*(v3 + 40)] = v20;
  v30 = *(v20 + 16);
  if (!v30)
  {
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v45 = v3;
  v46 = v9;
  v47 = v12;
  v31 = sub_1BC639758(v30, 0);
  v32 = *(sub_1BC759FE0() - 8);
  v33 = sub_1BC639854(&v56, (v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80))), v30, v20);

  result = sub_1BC639AFC();
  if (v33 == v30)
  {
    v9 = v46;
    v12 = v47;
    v3 = v45;
LABEL_7:
    KeyPath = swift_getKeyPath();
    v38 = sub_1BC633BF8();

    v39 = v48;
    View.checkingHistory(of:predicate:)(v31, sub_1BC6A5314, KeyPath, v3, v38);

    sub_1BC636CF0(v6);
    v56 = v3;
    v57 = v38;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = v51;
    v41 = v52;
    View.prefetchSensitiveContentPolicy()(v51, OpaqueTypeConformance2);
    (*(v49 + 8))(v39, v42);
    sub_1BC759D90();
    sub_1BC759D80();
    v56 = v42;
    v57 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1BC6330EC(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
    v43 = v50;
    sub_1BC75B210();

    (*(v53 + 8))(v41, v9);
    v36 = v54;
    (*(v54 + 32))(v55, v43, v12);
    v35 = 0;
    return (*(v36 + 56))(v55, v35, 1, v12);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1BC636A68()
{
  if (qword_1EBCF1E90 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF1E98;
}

void sub_1BC636AB8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1BC75BB30();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1EBCF1E98 = v2;
  }

  else
  {
    __break(1u);
  }
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BC636B78(_OWORD *a1)
{
  v1 = a1[9];
  v2 = a1[11];
  v25 = a1[10];
  v26 = v2;
  v3 = a1[11];
  v27 = a1[12];
  v4 = a1[5];
  v5 = a1[7];
  v21 = a1[6];
  v22 = v5;
  v6 = a1[7];
  v7 = a1[9];
  v23 = a1[8];
  v24 = v7;
  v8 = a1[1];
  v9 = a1[3];
  v17 = a1[2];
  v18 = v9;
  v10 = a1[3];
  v11 = a1[5];
  v19 = a1[4];
  v20 = v11;
  v12 = a1[1];
  v16[0] = *a1;
  v16[1] = v12;
  v15[10] = v25;
  v15[11] = v3;
  v15[12] = a1[12];
  v15[6] = v21;
  v15[7] = v6;
  v15[8] = v23;
  v15[9] = v1;
  v15[2] = v17;
  v15[3] = v10;
  v15[4] = v19;
  v15[5] = v4;
  v15[0] = v16[0];
  v15[1] = v8;
  sub_1BC6362BC(v16, &v14);
  return EnvironmentValues.sensitiveContentCallbacks.setter(v15);
}

unint64_t sub_1BC636C24()
{
  result = qword_1EBCDD718;
  if (!qword_1EBCDD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD718);
  }

  return result;
}

uint64_t EnvironmentValues.sensitiveContentCallbacks.setter(__int128 *a1)
{
  v12 = a1[10];
  v13 = a1[11];
  v14 = a1[12];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v2 = *a1;
  v3 = a1[1];
  sub_1BC635DE4();
  return sub_1BC75ABD0();
}

uint64_t sub_1BC636CF0(uint64_t a1)
{
  v2 = type metadata accessor for _SensitiveContentInPreviousCallTipView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC636D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v34 = a2;
  v4 = type metadata accessor for InterventionPresenter(0);
  v5 = v4 - 8;
  v33 = *(v4 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD20, &qword_1BC764248);
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  sub_1BC6375D0(&v31 - v19);
  v21 = *(v2 + 8);
  v22 = *(v2 + 16);
  v38 = *v2;
  v39 = v21;
  v40 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC808, &qword_1BC763F60);
  sub_1BC75B730();
  sub_1BC6A2AF0(v20, v31, v35, v36, v37, v13);

  v23 = v2 + *(v5 + 32);
  PolicyProperty.wrappedValue.getter(v10);
  v24 = sub_1BC759EE0();
  v25 = (*(*(v24 - 8) + 48))(v10, 1, v24);
  sub_1BC66008C(v10, &unk_1EBCDBD90, &unk_1BC75F850);
  if (v25 == 1)
  {
    v26 = 0;
  }

  else
  {
    sub_1BC6375D0(v18);
    v27 = type metadata accessor for InterventionConfig(0);
    v26 = (*(*(v27 - 8) + 48))(v18, 1, v27) == 1;
    sub_1BC66008C(v18, &qword_1EBCDC250, &qword_1BC761340);
  }

  LOBYTE(v38) = v26;
  sub_1BC63368C(v3, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InterventionPresenter);
  v28 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v29 = swift_allocObject();
  sub_1BC6A52AC(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for InterventionPresenter);
  sub_1BC6A5340();
  sub_1BC75B420();

  sub_1BC66008C(v13, &qword_1EBCDCD20, &qword_1BC764248);
  return sub_1BC66008C(v20, &qword_1EBCDC250, &qword_1BC761340);
}

uint64_t sub_1BC637164()
{
  v1 = type metadata accessor for InterventionPresenter(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  sub_1BC63906C(*(v5 + 24), *(v5 + 32), *(v5 + 40));
  v8 = (v0 + v3 + v1[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      v10 = sub_1BC759EE0();
      v11 = *(v10 - 8);
      if (!(*(v11 + 48))(v8, 1, v10))
      {
        (*(v11 + 8))(v8, v10);
      }
    }
  }

  else
  {
    v12 = *v8;
  }

  v13 = *(v8 + *(type metadata accessor for PolicyProperty(0) + 20));

  v14 = (v5 + v1[7]);
  v15 = type metadata accessor for InterventionConfig.Layout(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        v18 = sub_1BC759D00();
        (*(*(v18 - 8) + 8))(v14, v18);
        v19 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
LABEL_20:

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_21;
        }

        v20 = *v14;

        v21 = v14[1];
        goto LABEL_20;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload > 1)
        {
          goto LABEL_21;
        }

        v17 = sub_1BC759CA0();
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v17 = sub_1BC759DE0();
LABEL_15:
        (*(*(v17 - 8) + 8))(v14, v17);
        goto LABEL_21;
      }
    }

    v22 = *v14;
    goto LABEL_20;
  }

LABEL_21:
  v23 = v5 + v1[8];
  v24 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v24 - 1) + 48))(v23, 1, v24))
  {
    v25 = sub_1BC759940();
    (*(*(v25 - 8) + 8))(v23, v25);
    v26 = *(v23 + v24[5] + 8);

    v27 = v24[6];
    v28 = sub_1BC759EE0();
    (*(*(v28 - 8) + 8))(v23 + v27, v28);
    v29 = v24[12];
    v30 = sub_1BC759C70();
    (*(*(v30 - 8) + 8))(v23 + v29, v30);
    v31 = *(v23 + v24[13]);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC6375D0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v9 = sub_1BC759EE0();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for InterventionConfig.Layout(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v40 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  v25 = type metadata accessor for InterventionPresenter(0);
  sub_1BC660024(v1 + v25[7], v17, &qword_1EBCDC878, &qword_1BC763F00);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1BC66008C(v17, &qword_1EBCDC878, &qword_1BC763F00);
LABEL_8:
    v36 = 1;
    v35 = v44;
    goto LABEL_9;
  }

  sub_1BC6A52AC(v17, v24, type metadata accessor for InterventionConfig.Layout);
  v26 = v1;
  v27 = v1 + v25[6];
  PolicyProperty.wrappedValue.getter(v8);
  v28 = v43;
  if ((*(v43 + 48))(v8, 1, v9) == 1)
  {
    sub_1BC6A4570(v24, type metadata accessor for InterventionConfig.Layout);
    sub_1BC66008C(v8, &unk_1EBCDBD90, &unk_1BC75F850);
    goto LABEL_8;
  }

  v29 = v42;
  (*(v28 + 32))(v42, v8, v9);
  v30 = v41;
  sub_1BC759E50();
  sub_1BC6330A4(&qword_1EDDCF090, MEMORY[0x1E697B510]);
  v31 = sub_1BC75C170();
  v32 = *(v28 + 8);
  v32(v30, v9);
  if ((v31 & 1) == 0)
  {
    v32(v29, v9);
    sub_1BC6A4570(v24, type metadata accessor for InterventionConfig.Layout);
    goto LABEL_8;
  }

  sub_1BC63368C(v24, v40, type metadata accessor for InterventionConfig.Layout);
  (*(v28 + 16))(v30, v29, v9);
  v33 = v39;
  sub_1BC660024(v26 + v25[8], v39, &qword_1EBCDBC50, &qword_1BC762D70);
  v34 = sub_1BC67A2E4();
  v35 = v44;
  InterventionConfig.init(layout:policy:options:analyticsContext:contextDictionary:)(v40, v30, v34, v33, 0, v44);
  v32(v29, v9);
  sub_1BC6A4570(v24, type metadata accessor for InterventionConfig.Layout);
  v36 = 0;
LABEL_9:
  v37 = type metadata accessor for InterventionConfig(0);
  return (*(*(v37 - 8) + 56))(v35, v36, 1, v37);
}

uint64_t sub_1BC637B24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for InterventionConfig.Layout(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1BC759EE0();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for AnalyticsUIContext(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1BC637CAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for InterventionConfig.Layout(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BC759EE0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for AnalyticsUIContext(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

void sub_1BC637E20(uint64_t a1, _BYTE *a2)
{
  v4 = *(type metadata accessor for InterventionPresenter(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1BC6A3D90(a2, v5);
}

uint64_t sub_1BC637E90()
{
  v0 = type metadata accessor for IntervenableAction(0);
  __swift_allocate_value_buffer(v0, qword_1EDDD12C8);
  v1 = __swift_project_value_buffer(v0, qword_1EDDD12C8);
  type metadata accessor for IntervenableAction.BoolBox();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *v1 = v2;
  *(v1 + 8) = 0;
  *(v1 + 16) = 255;
  v3 = *(v0 + 28);
  v4 = sub_1BC75A160();
  result = (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v6 = (v1 + *(v0 + 32));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

double sub_1BC637F60@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1BC767530;
  a1[1] = xmmword_1BC767530;
  a1[2] = xmmword_1BC767530;
  a1[3] = xmmword_1BC767530;
  a1[4] = xmmword_1BC767530;
  a1[5] = xmmword_1BC767530;
  a1[6] = xmmword_1BC767530;
  a1[7] = xmmword_1BC767530;
  a1[8] = xmmword_1BC767530;
  a1[9] = xmmword_1BC767530;
  a1[10] = xmmword_1BC767530;
  a1[11] = xmmword_1BC767530;
  a1[12] = xmmword_1BC767530;
  return result;
}

uint64_t sub_1BC637F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD668, &qword_1BC766FF0);
  v72 = *(v3 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD670, &qword_1BC766FF8);
  v74 = *(v75 - 8);
  v7 = v74[8];
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v62 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD678, &qword_1BC767000);
  v76 = *(v77 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v83 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD680, &qword_1BC767008);
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v62 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD688, &unk_1BC767010);
  v14 = *(v84 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v78 = &v62 - v16;
  v17 = sub_1BC759EE0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v62 - v24;
  v26 = v1;
  v27 = v1 + *(type metadata accessor for _SensitiveContentInPreviousCallTipView() + 36);
  PolicyProperty.wrappedValue.getter(v25);
  if ((*(v18 + 48))(v25, 1, v17) == 1)
  {
    sub_1BC66008C(v25, &unk_1EBCDBD90, &unk_1BC75F850);
    goto LABEL_3;
  }

  v82 = a1;
  sub_1BC759E10();
  sub_1BC6330EC(&qword_1EDDCF090, MEMORY[0x1E697B510]);
  v29 = sub_1BC75C170();
  v30 = *(v18 + 8);
  v30(v21, v17);
  v30(v25, v17);
  if ((v29 & 1) == 0)
  {
    v28 = 1;
    a1 = v82;
    goto LABEL_10;
  }

  v31 = v26;
  v32 = *v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD660, &unk_1BC766F48);
  sub_1BC75A600();
  v33 = v85;
  a1 = v82;
  if (v85 == 3 || (LOBYTE(v97) = 0, sub_1BC6D1DBC(), (sub_1BC75BAB0() & 1) != 0))
  {
LABEL_3:
    v28 = 1;
LABEL_10:
    v39 = v84;
    return (*(v14 + 56))(a1, v28, 1, v39);
  }

  v34 = sub_1BC6CDE84();
  if (v35 == -1)
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v36 = v35;
    v37 = v34;
    v38 = Array<A>.partitionByIsFromMeFlag.getter(v34);
    sub_1BC638C1C(v37, v36);
  }

  v41 = sub_1BC6CE62C();
  LOBYTE(v97) = v33;
  v88 = &type metadata for SensitiveContentInPreviousCallTip;
  v89 = sub_1BC6D1E10();
  sub_1BC729334(v38, v41, &v97, &v85);
  sub_1BC75A540();
  SensitiveContentTipViewStyle.init()();
  v42 = sub_1BC633C54(&qword_1EBCDD6A0, &qword_1EBCDD668, &qword_1BC766FF0);
  v43 = sub_1BC635B08();
  v44 = v73;
  sub_1BC75B1C0();
  (*(v72 + 8))(v6, v3);
  v45 = v31[2];
  LOBYTE(v97) = *(v31 + 8);
  v98 = v45;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B660();
  v63 = v31;
  v85 = v3;
  v86 = &type metadata for SensitiveContentTipViewStyle;
  v87 = v42;
  v88 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = sub_1BC635B5C();
  v46 = v75;
  sub_1BC75B3C0();

  (v74[1])(v44, v46);
  v47._countAndFlagsBits = 0x4C45485F45524F4DLL;
  v47._object = 0xE900000000000050;
  SCLocalizedStringKey.init(stringLiteral:)(v47);
  v74 = v98;
  v95 = v97;
  v96 = v98;
  v48 = v63;
  v49 = v63[6];
  v93 = *(v63 + 40);
  v94 = v49;
  v50 = sub_1BC75B660();
  v73 = &v62;
  v68 = v85;
  v67 = v86;
  v70 = v87;
  v51 = MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v51);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD6B8, &qword_1BC767028);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD6C0, &qword_1BC767030);
  v85 = v46;
  v86 = &type metadata for WaysToGetHelpWebView;
  v87 = OpaqueTypeConformance2;
  v88 = v61;
  v66 = swift_getOpaqueTypeConformance2();
  v69 = sub_1BC651EB8();
  OpaqueTypeConformance2 = sub_1BC633C54(&qword_1EBCDD6C8, &qword_1EBCDD6B8, &qword_1BC767028);
  v75 = sub_1BC6D1E74();
  v52 = v77;
  v53 = v79;
  v54 = v83;
  sub_1BC75B2D0();

  (*(v76 + 8))(v54, v52);
  v83 = sub_1BC75AC70();
  LODWORD(v76) = v55;
  v56 = v48[4];
  LOBYTE(v97) = *(v48 + 24);
  v98 = v56;
  v57 = sub_1BC75B660();
  v74 = &v62;
  MEMORY[0x1EEE9AC00](v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD6D8, &qword_1BC767038);
  v85 = v52;
  v86 = MEMORY[0x1E69E6158];
  v87 = v64;
  v88 = v65;
  v89 = v66;
  v90 = v69;
  v91 = OpaqueTypeConformance2;
  v92 = v75;
  swift_getOpaqueTypeConformance2();
  sub_1BC635D18();
  v58 = v81;
  v59 = v78;
  sub_1BC75B2E0();

  (*(v80 + 8))(v53, v58);
  a1 = v82;
  v60 = v84;
  (*(v14 + 32))(v82, v59, v84);
  v39 = v60;
  v28 = 0;
  return (*(v14 + 56))(a1, v28, 1, v39);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 24);

  sub_1BC680E6C(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BC638C10(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    return sub_1BC638C1C(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1BC638C1C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1BC638C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759D00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1BC68C20C(&qword_1EDDCEE88, MEMORY[0x1E697B460]);
    v22 = sub_1BC75BAB0();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t IntervenableAction.buttonTreatment.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = sub_1BC75A160();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 17) != 1)
  {
    goto LABEL_7;
  }

  v12 = type metadata accessor for IntervenableAction(0);
  sub_1BC660024(v1 + *(v12 + 28), v6, &qword_1EBCDC868, &qword_1BC762D30);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BC66008C(v6, &qword_1EBCDC868, &qword_1BC762D30);
    goto LABEL_5;
  }

  (*(v8 + 32))(v11, v6, v7);
  v13 = sub_1BC75A150();
  (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
LABEL_7:
    result = 1;
    goto LABEL_8;
  }

LABEL_5:
  result = *(v1 + 16);
  if (*(v1 + 16) > 1u)
  {
    if (result == 2 && (sub_1BC638C30(MEMORY[0x1E69E7CC0], *(v1 + 8)) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
LABEL_12:
    result = sub_1BC75B5C0();
  }

LABEL_8:
  *a1 = result;
  return result;
}

uint64_t sub_1BC63906C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1BC635468(result);
  }

  else
  {
  }
}

unint64_t sub_1BC639118(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1BC759FE0();
  sub_1BC6330EC(&qword_1EDDCEE68, MEMORY[0x1E697B5B0]);
  v5 = sub_1BC75BA60();

  return sub_1BC6391B0(a1, v5);
}

unint64_t sub_1BC6391B0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1BC6330EC(&qword_1EDDCE6E0, MEMORY[0x1E697B5B0]);
      v16 = sub_1BC75BAB0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1BC639370(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1BC759FE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD720, &qword_1BC7670E0);
  v47 = a2;
  result = sub_1BC75C410();
  v13 = result;
  if (*(v10 + 16))
  {
    v52 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v7 + 16);
    v45 = v10;
    v46 = v7;
    v49 = (v7 + 32);
    v20 = result + 64;
    v21 = v48;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v46 + 72) * v28;
      v50 = *(v46 + 72);
      v51 = v25;
      if (v47)
      {
        (*v49)(v21, v29, v52);
        v30 = (*(v10 + 56) + 16 * v28);
        v32 = *v30;
        v31 = v30[1];
      }

      else
      {
        (*v44)(v21, v29, v52);
        v33 = (*(v10 + 56) + 16 * v28);
        v32 = *v33;
        v31 = v33[1];
        sub_1BC635800(*v33);
      }

      v34 = *(v13 + 40);
      sub_1BC6330EC(&qword_1EDDCEE68, MEMORY[0x1E697B5B0]);
      result = sub_1BC75BA60();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v21 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v13 + 48) + v50 * v22, v21, v52);
      v23 = (*(v13 + 56) + 16 * v22);
      *v23 = v32;
      v23[1] = v31;
      ++*(v13 + 16);
      v10 = v45;
      v18 = v51;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

size_t sub_1BC639758(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
  v4 = *(sub_1BC759FE0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC639854(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1BC759FE0();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BC639B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC75BB00();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BC639B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC75BB00();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1BC639C2C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BC639E94(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

BOOL sub_1BC639CB0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1BC639CE0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1BC639D0C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1BC639DF8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BC639E14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1BC65EC38(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1BC639E54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

unint64_t sub_1BC639E94(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1BC639EA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC639EFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BC759940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BC759EE0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1BC759C70();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[12];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[13]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1BC63A050(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BC759940();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1BC759EE0();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_1BC759C70();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[13]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[12];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BC63A1A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDC240, qword_1BC7612F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC63A234()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC63A26C()
{
  v1 = (type metadata accessor for VideoStreamFollowUpButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_1BC67D564(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), sub_1BC635480);
  sub_1BC67D564(*(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40), sub_1BC635480);
  v5 = v0 + v4 + v1[8];
  v6 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {
    v7 = sub_1BC759940();
    (*(*(v7 - 8) + 8))(v5, v7);
    v8 = *(v5 + v6[5] + 8);

    v9 = v6[6];
    v10 = sub_1BC759EE0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
    v11 = v6[12];
    v12 = sub_1BC759C70();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
    v13 = *(v5 + v6[13]);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1BC63A470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BC63A56C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BC63A674(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1BC63A730(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63A7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63A890(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63A93C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC440, &qword_1BC7617C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63A9F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC440, &qword_1BC7617C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63AB38()
{
  v1 = (type metadata accessor for VideoStreamFollowUpButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1BC67D564(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), sub_1BC635480);
  sub_1BC67D564(*(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), sub_1BC635480);
  v6 = v0 + v3 + v1[8];
  v7 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v8 = sub_1BC759940();
    (*(*(v8 - 8) + 8))(v6, v8);
    v9 = *(v6 + v7[5] + 8);

    v10 = v7[6];
    v11 = sub_1BC759EE0();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
    v12 = v7[12];
    v13 = sub_1BC759C70();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
    v14 = *(v6 + v7[13]);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC63AD48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC63ADB4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BC63AE34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BC759800();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63AEE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BC759800();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63AF84()
{
  sub_1BC6877A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), sub_1BC635480);
  sub_1BC6877A0(*(v0 + 40), *(v0 + 48), *(v0 + 56), sub_1BC635480);
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1BC63B004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC800, &unk_1BC762AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC63B07C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v11 = type metadata accessor for PolicyProperty(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[10]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1BC63B258(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  result = type metadata accessor for PolicyProperty(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1BC63B434()
{
  v1 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  sub_1BC638C10(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 9));
  v7 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 32))
  {
    v8 = *(v6 + 40);
  }

  v9 = *(v6 + 48);

  v10 = (v6 + v1[7]);
  v11 = type metadata accessor for InterventionConfig.Layout(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        v14 = sub_1BC759D00();
        (*(*(v14 - 8) + 8))(v10, v14);
        v15 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
LABEL_17:

        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_18;
        }

        v16 = *v10;

        v17 = v10[1];
        goto LABEL_17;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload > 1)
        {
          goto LABEL_18;
        }

        v13 = sub_1BC759CA0();
        goto LABEL_12;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v13 = sub_1BC759DE0();
LABEL_12:
        (*(*(v13 - 8) + 8))(v10, v13);
        goto LABEL_18;
      }
    }

    v18 = *v10;
    goto LABEL_17;
  }

LABEL_18:
  v19 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0) + 28));

  v20 = v6 + v1[8];
  v21 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v21 - 1) + 48))(v20, 1, v21))
  {
    v22 = sub_1BC759940();
    (*(*(v22 - 8) + 8))(v20, v22);
    v23 = *(v20 + v21[5] + 8);

    v24 = v21[6];
    v25 = sub_1BC759EE0();
    (*(*(v25 - 8) + 8))(v20 + v24, v25);
    v26 = v21[12];
    v27 = sub_1BC759C70();
    (*(*(v27 - 8) + 8))(v20 + v26, v27);
    v28 = *(v20 + v21[13]);
  }

  v29 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8) + 28));

  v30 = (v6 + v1[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
    {
      v32 = sub_1BC759EE0();
      v33 = *(v32 - 8);
      if (!(*(v33 + 48))(v30, 1, v32))
      {
        (*(v33 + 8))(v30, v32);
      }
    }
  }

  else
  {
    v34 = *v30;
  }

  v35 = *(v30 + *(type metadata accessor for PolicyProperty(0) + 20));

  v36 = *(v6 + v1[10]);

  v37 = v1[11];
  v38 = sub_1BC75A160();
  v39 = *(v38 - 8);
  if (!(*(v39 + 48))(v6 + v37, 1, v38))
  {
    (*(v39 + 8))(v6 + v37, v38);
  }

  v40 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(v0 + v40 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v40 + 16, v2 | 7);
}

uint64_t sub_1BC63BA50(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1BC75A960();
  swift_getOpaqueTypeMetadata2();
  sub_1BC75AE10();
  sub_1BC75AE10();
  sub_1BC75AE10();
  sub_1BC75AE10();
  sub_1BC75AE10();
  sub_1BC75AE10();
  sub_1BC75AE10();
  sub_1BC694E64();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BC63BCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC63BD40(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BC759FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BC63BDC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC63BDFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC9C0, &qword_1BC763770);
  sub_1BC695800();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63BE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PolicyProperty(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BC63BF28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PolicyProperty(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC63BFF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for PolicyCheckingIntervention(255);
  sub_1BC75A960();
  sub_1BC6A45D0(qword_1EDDD1180, type metadata accessor for PolicyCheckingIntervention);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63C0B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBF0, &unk_1BC763F38);
  type metadata accessor for RemoteOrInProcessInterventionView(255);
  sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1BC75AE10();
  sub_1BC75B590();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BC63C2EC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for PolicyProperty(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1BC63C470(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PolicyProperty(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BC63C5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PolicyProperty(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC10, &unk_1BC763FF0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for Intervention.Kind(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1BC63C740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PolicyProperty(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC10, &unk_1BC763FF0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for Intervention.Kind(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1BC63C898()
{
  v1 = type metadata accessor for PolicyCheckingIntervention(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v50 = *(*(v1 - 8) + 64);
  v4 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
    {
      v6 = sub_1BC759EE0();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v0 + v3, 1, v6))
      {
        (*(v7 + 8))(v0 + v3, v6);
      }
    }
  }

  else
  {
    v8 = *v4;
  }

  v9 = *(v4 + *(type metadata accessor for PolicyProperty(0) + 20));

  v10 = v4 + *(v1 + 20);
  v11 = *v10;

  if (v10[16] != 255)
  {
    v12 = *(v10 + 1);
  }

  v13 = type metadata accessor for IntervenableAction(0);
  v14 = *(v13 + 28);
  v15 = sub_1BC75A160();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(&v10[v14], 1, v15))
  {
    (*(v16 + 8))(&v10[v14], v15);
  }

  v17 = &v10[*(v13 + 32)];
  if (*v17)
  {
    v18 = *(v17 + 1);
  }

  v19 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC10, &unk_1BC763FF0) + 28)];

  v20 = v4 + *(v1 + 24);
  type metadata accessor for Intervention.Kind(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 4u:
      v26 = *v20;

      break;
    case 2u:
      v38 = *v20;

      v39 = *(v20 + 1);

      v40 = *(v20 + 2);
      goto LABEL_24;
    case 3u:
      v34 = *v20;

      v35 = *(v20 + 1);

      v36 = *(v20 + 2);

      v37 = *(v20 + 3);
      goto LABEL_24;
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      v21 = *v20;

      v22 = *(v20 + 1);

      v23 = *(v20 + 2);

      v24 = *(v20 + 3);

      v25 = *(v20 + 4);
      goto LABEL_24;
    case 6u:
    case 0xCu:
      v27 = *v20;

      v28 = *(v20 + 1);

      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180) + 32);
      v30 = sub_1BC759CA0();
      v31 = *(v30 - 8);
      if (!(*(v31 + 48))(&v20[v29], 1, v30))
      {
        (*(v31 + 8))(&v20[v29], v30);
      }

      v32 = &unk_1EBCDCBE8;
      v33 = &unk_1BC763EF0;
      goto LABEL_23;
    case 0xBu:
      v41 = *v20;

      v42 = *(v20 + 1);

      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC00, &qword_1BC763F78) + 32);
      v44 = sub_1BC759DE0();
      v45 = *(v44 - 8);
      if (!(*(v45 + 48))(&v20[v43], 1, v44))
      {
        (*(v45 + 8))(&v20[v43], v44);
      }

      v32 = &unk_1EBCDCC30;
      v33 = &unk_1BC7640E0;
LABEL_23:
      v46 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(v32, v33) + 48)];
      v47 = *v46;

      v48 = *(v46 + 1);
LABEL_24:

      break;
    default:
      break;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v50, v2 | 7);
}

uint64_t sub_1BC63CDB0()
{
  v1 = (type metadata accessor for InterventionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_1BC67D564(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), sub_1BC635480);
  sub_1BC67D564(*(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40), sub_1BC635480);
  v5 = *(v0 + v4 + 48);

  v6 = (v0 + v4 + v1[9]);
  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_15;
      }

      v8 = sub_1BC759CA0();
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v8 = sub_1BC759DE0();
LABEL_9:
      (*(*(v8 - 8) + 8))(v6, v8);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
LABEL_13:
      v13 = *v6;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload != 7)
    {
      goto LABEL_15;
    }

    v11 = *v6;

    v12 = v6[1];
  }

  else
  {
    v9 = sub_1BC759D00();
    (*(*(v9 - 8) + 8))(v6, v9);
    v10 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
  }

LABEL_14:

LABEL_15:
  v14 = type metadata accessor for InterventionConfig(0);
  v15 = v14[5];
  v16 = sub_1BC759EE0();
  v17 = *(*(v16 - 8) + 8);
  v17(v6 + v15, v16);
  v18 = *(v6 + v14[7]);

  v19 = v6 + v14[8];
  v20 = sub_1BC759940();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = type metadata accessor for AnalyticsUIContext(0);
  v22 = *&v19[v21[5] + 8];

  v17(&v19[v21[6]], v16);
  v23 = v21[12];
  v24 = sub_1BC759C70();
  (*(*(v24 - 8) + 8))(&v19[v23], v24);
  v25 = *&v19[v21[13]];

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1BC63D118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for InterventionConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63D1BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = type metadata accessor for InterventionConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 208);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BC63D318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InterventionConfig(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 208) = -a2;
  }

  return result;
}

uint64_t sub_1BC63D404()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD68, &qword_1BC7642C0);
  sub_1BC759D90();
  sub_1BC6A6660();
  sub_1BC6A67F0(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63D4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD98, &qword_1BC764330);
  type metadata accessor for _InterventionView(255);
  sub_1BC6A67F0(&qword_1EBCDCDA0, type metadata accessor for _InterventionView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63D57C()
{
  type metadata accessor for _WaysToGetHelpWebView(255);
  sub_1BC6A67F0(&qword_1EBCDCDB0, type metadata accessor for _WaysToGetHelpWebView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63D604()
{
  v1 = (type metadata accessor for InterventionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1BC67D564(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), sub_1BC635480);
  sub_1BC67D564(*(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), sub_1BC635480);
  v6 = *(v0 + v3 + 48);

  v7 = (v0 + v3 + v1[9]);
  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_15;
      }

      v9 = sub_1BC759CA0();
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v9 = sub_1BC759DE0();
LABEL_9:
      (*(*(v9 - 8) + 8))(v7, v9);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
LABEL_13:
      v14 = *v7;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload != 7)
    {
      goto LABEL_15;
    }

    v12 = *v7;

    v13 = v7[1];
  }

  else
  {
    v10 = sub_1BC759D00();
    (*(*(v10 - 8) + 8))(v7, v10);
    v11 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
  }

LABEL_14:

LABEL_15:
  v15 = type metadata accessor for InterventionConfig(0);
  v16 = v15[5];
  v17 = sub_1BC759EE0();
  v18 = *(*(v17 - 8) + 8);
  v18(v7 + v16, v17);
  v19 = *(v7 + v15[7]);

  v20 = v7 + v15[8];
  v21 = sub_1BC759940();
  (*(*(v21 - 8) + 8))(v20, v21);
  v22 = type metadata accessor for AnalyticsUIContext(0);
  v23 = *&v20[v22[5] + 8];

  v18(&v20[v22[6]], v17);
  v24 = v22[12];
  v25 = sub_1BC759C70();
  (*(*(v25 - 8) + 8))(&v20[v24], v25);
  v26 = *&v20[v22[13]];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC63D948()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC63D98C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC63D9C4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC63DA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s6VictimVMa(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1BC63DB74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s6VictimVMa(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BC63DC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BC759910();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63DD34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BC759910();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63DDD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BC759800();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BC759B50();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[8] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1BC63DFB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BC759800();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1BC759B50();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[11];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_1BC63E188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC759800();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BC63E248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC759800();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC63E304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BC63E37C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BC63E3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 208);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PolicyProperty(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BC759CA0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BC63E514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 208) = -a2;
  }

  else
  {
    v8 = type metadata accessor for PolicyProperty(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BC759CA0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BC63E638(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1BC63E6EC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63E7A0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1BC759FE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1BC63E844(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_1BC759FE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63E8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PolicyProperty(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63E988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PolicyProperty(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63EA28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD5C8, &qword_1BC766B98);
  sub_1BC759D90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD5C0, &qword_1BC766B90);
  type metadata accessor for _SensitiveParticipantBadge(255);
  sub_1BC6CC3E8(&qword_1EBCDD5D0, type metadata accessor for _SensitiveParticipantBadge);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BC6CC3E8(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63EBBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PolicyProperty(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BC63EC68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PolicyProperty(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63ED10()
{
  v1 = sub_1BC759D00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC63EDD4()
{
  v1 = sub_1BC759EE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC63EE60()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_1BC759FE0();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC63EF40()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for SensitiveContentInPreviousCallTipView.ParticipantDetails() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + 32);

  v7 = sub_1BC759FE0();
  (*(*(v7 - 8) + 8))(v0 + v4, v7);
  (*(*(v1 - 8) + 8))(v0 + v4 + v2[9], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC63F1DC()
{
  MEMORY[0x1BFB27FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC63F214(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD920, qword_1BC767B10);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD890, &qword_1BC767950);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for InterventionConfig(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1BC63F390(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD920, qword_1BC767B10);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD890, &qword_1BC767950);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for InterventionConfig(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BC63F510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC759AD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for InterventionConfig(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BC63F638(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC759AD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for InterventionConfig(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BC63F764()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC63F7A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC63F7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SCUIInterventionKind._Kind(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BC63F858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SCUIInterventionKind._Kind(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BC63F8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC63F948(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BC63F9D8(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutV4ModeOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BC63FA44(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutV4ModeOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BC63FAB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for SensitiveContentRedactor(255);
  sub_1BC75A960();
  sub_1BC6EB9E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BC759D90();
  swift_getOpaqueTypeConformance2();
  sub_1BC633134(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63FBE4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_1BC75AA10();
  sub_1BC75A960();
  sub_1BC75A960();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BC63FCB0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PolicyProperty(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  v12 = _s6LayoutVMa(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[11];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[12] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1BC63FE70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PolicyProperty(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[9];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[10];
      }

      else
      {
        result = _s6LayoutVMa(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[12] + 8) = a2;
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[11];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

uint64_t sub_1BC640028()
{
  v1 = type metadata accessor for SensitiveContentRedactor(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1BC6F4B1C(*(v0 + v4), *(v0 + v4 + 8));
  v6 = (v0 + v4 + v1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = sub_1BC759EE0();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v6, 1, v8))
      {
        (*(v9 + 8))(v6, v8);
      }
    }
  }

  else
  {
    v10 = *v6;
  }

  v11 = *(v6 + *(type metadata accessor for PolicyProperty(0) + 20));

  sub_1BC6F4B28(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16), sub_1BC635480);
  sub_1BC6F4B28(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16), sub_1BC635480);
  v12 = *(v5 + v1[8]);

  v13 = v5 + v1[9];
  v14 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v15 = sub_1BC759940();
    (*(*(v15 - 8) + 8))(v13, v15);
    v16 = *(v13 + v14[5] + 8);

    v17 = v14[6];
    v18 = sub_1BC759EE0();
    (*(*(v18 - 8) + 8))(v13 + v17, v18);
    v19 = v14[12];
    v20 = sub_1BC759C70();
    (*(*(v20 - 8) + 8))(v13 + v19, v20);
    v21 = *(v13 + v14[13]);
  }

  v22 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8) + 28));

  v23 = (v5 + v1[10]);
  v24 = *v23;

  v25 = *(v23 + 1);

  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180) + 32);
  v27 = sub_1BC759CA0();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(&v23[v26], 1, v27))
  {
    (*(v28 + 8))(&v23[v26], v27);
  }

  v29 = (v5 + v1[11]);
  _s6LayoutV4ModeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_21;
      }

      v31 = sub_1BC759FE0();
      (*(*(v31 - 8) + 8))(v29, v31);
      v32 = &unk_1EBCDBF80;
      v33 = &unk_1BC75FA30;
    }

    else
    {
      v35 = sub_1BC759FE0();
      (*(*(v35 - 8) + 8))(v29, v35);
      v32 = &unk_1EBCDBF88;
      v33 = &unk_1BC75FA38;
    }

    v36 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v32, v33) + 48));
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v37 = *v29;
LABEL_20:

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v34 = sub_1BC759D50();
    (*(*(v34 - 8) + 8))(v29, v34);
  }

LABEL_21:
  v38 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v5 + v1[12] + 8);

  v40 = *(v0 + v38);

  return MEMORY[0x1EEE6BDD0](v0, v38 + 8, v2 | 7);
}

uint64_t sub_1BC640584()
{
  v1 = type metadata accessor for SensitiveContentRedactor(0);
  v2 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v42 = sub_1BC759FE0();
  v3 = *(v42 - 8);
  v4 = *(v3 + 80);
  v41 = *(v3 + 64);
  v5 = v0 + ((v2 + 16) & ~v2);
  sub_1BC6F4B1C(*v5, *(v5 + 8));
  v6 = (v5 + v1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = sub_1BC759EE0();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v6, 1, v8))
      {
        (*(v9 + 8))(v6, v8);
      }
    }
  }

  else
  {
    v10 = *v6;
  }

  v11 = *(v6 + *(type metadata accessor for PolicyProperty(0) + 20));

  sub_1BC6F4B28(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16), sub_1BC635480);
  sub_1BC6F4B28(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16), sub_1BC635480);
  v12 = *(v5 + v1[8]);

  v13 = v5 + v1[9];
  v14 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v15 = sub_1BC759940();
    (*(*(v15 - 8) + 8))(v13, v15);
    v16 = *(v13 + v14[5] + 8);

    v17 = v14[6];
    v18 = sub_1BC759EE0();
    (*(*(v18 - 8) + 8))(v13 + v17, v18);
    v19 = v14[12];
    v20 = sub_1BC759C70();
    (*(*(v20 - 8) + 8))(v13 + v19, v20);
    v21 = *(v13 + v14[13]);
  }

  v22 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8) + 28));

  v23 = (v5 + v1[10]);
  v24 = *v23;

  v25 = *(v23 + 1);

  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180) + 32);
  v27 = sub_1BC759CA0();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(&v23[v26], 1, v27))
  {
    (*(v28 + 8))(&v23[v26], v27);
  }

  v29 = (v5 + v1[11]);
  _s6LayoutV4ModeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v31 = v42;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_21;
      }

      (*(v3 + 8))(v29, v42);
      v32 = &unk_1EBCDBF80;
      v33 = &unk_1BC75FA30;
    }

    else
    {
      (*(v3 + 8))(v29, v42);
      v32 = &unk_1EBCDBF88;
      v33 = &unk_1BC75FA38;
    }

    v35 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v32, v33) + 48));
    goto LABEL_20;
  }

  v31 = v42;
  if (EnumCaseMultiPayload == 2)
  {
    v36 = *v29;
LABEL_20:

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v34 = sub_1BC759D50();
    (*(*(v34 - 8) + 8))(v29, v34);
  }

LABEL_21:
  v37 = (((v2 + 16) & ~v2) + v40 + v4) & ~v4;
  v38 = *(v5 + v1[12] + 8);

  (*(v3 + 8))(v0 + v37, v31);

  return MEMORY[0x1EEE6BDD0](v0, v37 + v41, v2 | v4 | 7);
}

uint64_t sub_1BC640B54()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC640B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE10, &qword_1BC7694A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC640BFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BC640CB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC640D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC640E24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC640ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BC640FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC641070(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC64112C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC6411DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BC75AE90();
  swift_getOpaqueTypeMetadata2();
  sub_1BC75A9B0();
  swift_getOpaqueTypeConformance2();
  sub_1BC6FFB80(&qword_1EBCDDDA0, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDA8, &unk_1BC769458);
  sub_1BC75A960();
  swift_getOpaqueTypeConformance2();
  sub_1BC633C54(&qword_1EBCDDDB0, &qword_1EBCDDDA8, &unk_1BC769458);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC6413C8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6C0, &qword_1BC767030);
  sub_1BC75B7C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDB8, &qword_1BC769468);
  sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC0, &qword_1BC769470);
  sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC8, &qword_1BC769478);
  sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDD0, &qword_1BC769480);
  sub_1BC75A960();
  sub_1BC75B7C0();
  sub_1BC75A960();
  sub_1BC75A960();
  sub_1BC75A960();
  sub_1BC75A960();
  sub_1BC75AE10();
  sub_1BC6D1E74();
  v5 = *(a1 + 1);
  swift_getWitnessTable();
  sub_1BC633C54(&qword_1EBCDDDE0, &qword_1EBCDDDB8, &qword_1BC769468);
  swift_getWitnessTable();
  sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470);
  swift_getWitnessTable();
  sub_1BC633C54(&qword_1EBCDDDF0, &qword_1EBCDDDC8, &qword_1BC769478);
  swift_getWitnessTable();
  sub_1BC633C54(&qword_1EBCDDDF8, &qword_1EBCDDDD0, &qword_1BC769480);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BC641788(uint64_t *a1)
{
  v1 = *a1;
  sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF80, &qword_1BC769580);
  swift_getTupleTypeMetadata2();
  sub_1BC75B850();
  swift_getWitnessTable();
  sub_1BC75B6D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC0, &qword_1BC769470);
  sub_1BC75A960();
  swift_getWitnessTable();
  sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470);
  return swift_getWitnessTable();
}

uint64_t sub_1BC6418D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF88, &qword_1BC769588);
  sub_1BC633C54(&qword_1EBCDDF90, &qword_1EBCDDF88, &qword_1BC769588);
  sub_1BC75A8B0();
  return swift_getWitnessTable();
}

uint64_t sub_1BC641984(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC0, &qword_1BC769470);
  sub_1BC75A960();
  sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470);
  return swift_getWitnessTable();
}

uint64_t sub_1BC641A30()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BC641AAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC10, &qword_1BC75F180);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[7]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_1BC641BDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC10, &qword_1BC75F180);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1BC641CF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD920, qword_1BC767B10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE320, &unk_1BC769F90);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BC641E34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD920, qword_1BC767B10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE320, &unk_1BC769F90);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BC641F70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ReportScreen(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BC75A830();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BC642094(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ReportScreen(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BC75A830();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BC6421B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ReportScreen(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BC642264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ReportScreen(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC642308()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE140, &qword_1BC769B08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE188, &qword_1BC769B28);
  sub_1BC633C54(&unk_1EBCDE190, &qword_1EBCDE140, &qword_1BC769B08);
  sub_1BC651EB8();
  sub_1BC70A620();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC642448()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC642498()
{
  MEMORY[0x1BFB27FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC6424D0()
{
  v1 = sub_1BC759800();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC642594()
{
  v1 = *(type metadata accessor for ReportScreen(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v32 = *(v5 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_1BC759910();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v0 + v3, 1, v7))
      {
        (*(v8 + 8))(v0 + v3, v7);
      }

      v9 = type metadata accessor for Report.Evidence(0);
      v10 = (v5 + v9[6]);
      v11 = *(v10 + 1);

      v12 = *(v10 + 3);

      v13 = *(v10 + 5);

      v14 = *(v10 + 7);

      v15 = *(v10 + 9);

      v16 = *(v10 + 11);

      v17 = *(v10 + 13);

      v18 = *(v10 + 15);

      v19 = *(v10 + 17);

      v20 = *(v10 + 19);

      v21 = *(v10 + 21);

      v22 = *(v10 + 23);

      v23 = _s6VictimVMa(0);
      (*(v8 + 8))(&v10[*(v23 + 44)], v7);
      v24 = *(v5 + v9[7]);

      v25 = *(v5 + v9[9] + 8);

      v26 = *(v5 + v9[12]);

      v27 = (v5 + v9[13]);
      v28 = v27[1];
      if (v28 >> 60 != 15)
      {
        sub_1BC6AE140(*v27, v28);
      }

      v29 = *(v5 + v9[14] + 8);

      v30 = *(v5 + v9[16] + 8);

      v31 = *(v5 + v9[17] + 8);
    }
  }

  else
  {
    v33 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v33 - 8) + 48))(v0 + v3, 1, v33))
    {
      v34 = *(v5 + 8);

      v35 = *(v5 + 32);

      v36 = *(v33 + 28);
      v37 = sub_1BC759800();
      v38 = *(*(v37 - 8) + 8);
      v38(v5 + v36, v37);
      v38(v5 + *(v33 + 32), v37);
    }
  }

  v39 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = *(v0 + v39 + 8);

  v43 = *(v0 + v41);

  return MEMORY[0x1EEE6BDD0](v0, v41 + 8, v2 | 7);
}

uint64_t sub_1BC64291C()
{
  v1 = type metadata accessor for Report.Evidence(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = sub_1BC759910();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = (v7 + v1[6]);
  v11 = *(v10 + 1);

  v12 = *(v10 + 3);

  v13 = *(v10 + 5);

  v14 = *(v10 + 7);

  v15 = *(v10 + 9);

  v16 = *(v10 + 11);

  v17 = *(v10 + 13);

  v18 = *(v10 + 15);

  v19 = *(v10 + 17);

  v20 = *(v10 + 19);

  v21 = *(v10 + 21);

  v22 = *(v10 + 23);

  v23 = _s6VictimVMa(0);
  (*(v9 + 8))(&v10[*(v23 + 44)], v8);
  v24 = *(v7 + v1[7]);

  v25 = *(v7 + v1[9] + 8);

  v26 = *(v7 + v1[12]);

  v27 = (v7 + v1[13]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_1BC6AE140(*v27, v28);
  }

  v29 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v7 + v1[14] + 8);

  v32 = *(v7 + v1[16] + 8);

  v33 = *(v7 + v1[17] + 8);

  v34 = *(v0 + v29 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v30 + 8, v2 | 7);
}

uint64_t sub_1BC642B88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC642BD8(uint64_t a1, int a2)
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

uint64_t sub_1BC642BF8(uint64_t result, int a2, int a3)
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

uint64_t sub_1BC642CEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BC642D24()
{
  MEMORY[0x1BFB27FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC642D5C()
{
  v1 = type metadata accessor for InterventionConfig(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = (v0 + v3);
  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_15;
      }

      v9 = sub_1BC759CA0();
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v9 = sub_1BC759DE0();
LABEL_9:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
LABEL_13:
      v14 = *v7;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload != 7)
    {
      goto LABEL_15;
    }

    v12 = *v7;

    v13 = v7[1];
  }

  else
  {
    v10 = sub_1BC759D00();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
    v11 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
  }

LABEL_14:

LABEL_15:
  v15 = v1[5];
  v16 = sub_1BC759EE0();
  v17 = *(*(v16 - 8) + 8);
  v17(v7 + v15, v16);
  v18 = *(v7 + v1[7]);

  v19 = v7 + v1[8];
  v20 = sub_1BC759940();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = type metadata accessor for AnalyticsUIContext(0);
  v22 = *&v19[v21[5] + 8];

  v17(&v19[v21[6]], v16);
  v23 = v21[12];
  v24 = sub_1BC759C70();
  (*(*(v24 - 8) + 8))(&v19[v23], v24);
  v25 = *&v19[v21[13]];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC643050()
{
  v1 = sub_1BC759EE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC643124()
{
  v1 = sub_1BC759EE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC6431AC()
{
  if (v0[2] >= 2uLL)
  {
    v1 = v0[3];
  }

  if (v0[4] >= 2uLL)
  {
    v2 = v0[5];
  }

  if (v0[6] >= 2uLL)
  {
    v3 = v0[7];
  }

  if (v0[8] >= 2uLL)
  {
    v4 = v0[9];
  }

  if (v0[10] >= 2uLL)
  {
    v5 = v0[11];
  }

  if (v0[12] >= 2uLL)
  {
    v6 = v0[13];
  }

  if (v0[14] >= 2uLL)
  {
    v7 = v0[15];
  }

  if (v0[16] >= 2uLL)
  {
    v8 = v0[17];
  }

  if (v0[18] >= 2uLL)
  {
    v9 = v0[19];
  }

  if (v0[20] >= 2uLL)
  {
    v10 = v0[21];
  }

  if (v0[22] >= 2uLL)
  {
    v11 = v0[23];
  }

  if (v0[24] >= 2uLL)
  {
    v12 = v0[25];
  }

  if (v0[26] >= 2uLL)
  {
    v13 = v0[27];
  }

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_1BC6432E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5 == 1)
  {
    v6 = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = sub_1BC75C110();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v10 = (*(v8 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v11 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = v5;
      do
      {
        v13 = *v10++;
        *v11++ = sub_1BC75C110();
        --v12;
      }

      while (v12);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, a2);
}

uint64_t sub_1BC6433F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (v6 == 1)
  {
    v7 = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = sub_1BC75C110();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v6)
    {
      v11 = (*(v9 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = v6;
      do
      {
        v14 = *v11++;
        *v12++ = sub_1BC75C110();
        --v13;
      }

      while (v13);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_1BC64350C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BC6435BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC759800();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1BC75B910();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BC6436AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BC759800();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1BC75B910();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BC6437D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC759800();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BC6438A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC759800();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1BC643990()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE988, &qword_1BC76CBA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE9A8, &qword_1BC76CBB8);
  sub_1BC633C54(&qword_1EBCDE9B0, &qword_1EBCDE988, &qword_1BC76CBA0);
  sub_1BC633C54(&qword_1EBCDE9B8, &qword_1EBCDE9A8, &qword_1BC76CBB8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC643A80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE9C8, &qword_1BC76CBC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE9C0, &qword_1BC76CBC0);
  sub_1BC633C54(&qword_1EBCDE9E0, &qword_1EBCDE9C0, &qword_1BC76CBC0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
  sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC643C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA18, &qword_1BC76CBF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
  sub_1BC726B00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
  sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC643D30()
{
  v21 = type metadata accessor for MediaPreviewScreen(0);
  v1 = *(*(v21 - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v20 = *(*(v21 - 8) + 64);
  v3 = v0 + v2;
  v4 = sub_1BC759800();
  v5 = *(v4 - 8);
  v19 = *(v5 + 8);
  v19(v0 + v2, v4);
  v6 = type metadata accessor for Report.Media(0);
  v7 = v6[5];
  v8 = sub_1BC759B50();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = v6[6];
  v10 = sub_1BC75A050();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  v12 = *(v3 + v6[8] + 8);

  v13 = (v3 + v6[9]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_1BC6AE140(*v13, v14);
  }

  v15 = *(v3 + v6[10] + 8);

  v16 = v6[11];
  if (!(*(v5 + 48))(v3 + v16, 1, v4))
  {
    v19(v3 + v16, v4);
  }

  v17 = *(v3 + *(v21 + 20) + 8);

  return MEMORY[0x1EEE6BDD0](v0, v2 + v20, v1 | 7);
}

uint64_t sub_1BC643F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB10, &qword_1BC76D0A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC644058()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC644098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC759910();
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

uint64_t sub_1BC644158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC759910();
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

uint64_t sub_1BC644214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BC6442DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1BC6443A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759EE0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC644410(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BC759EE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BC644490(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDECC8, &unk_1BC76D878);
  sub_1BC75A960();
  sub_1BC75AE10();
  sub_1BC633C54(&qword_1EBCDECD0, &qword_1EBCDECC8, &unk_1BC76D878);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BC64457C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BC644644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC644708()
{
  v1 = type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {
      v7 = sub_1BC759EE0();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v0 + v3, 1, v7))
      {
        (*(v8 + 8))(v0 + v3, v7);
      }
    }
  }

  else
  {
    v9 = *v5;
  }

  v10 = v5 + *(v1 + 20);
  v11 = *v10;
  v12 = v10[8];
  j__swift_release();
  v13 = *(v5 + *(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC6448D8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC64492C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BC644A10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BC644AB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC644B0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC644B44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF60, &unk_1BC76DED0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF58, &qword_1BC76DEC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF50, &qword_1BC76DEC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF48, &qword_1BC76DEB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF40, &qword_1BC76DEB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF38, &qword_1BC76DEA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF30, &qword_1BC76DEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF28, &qword_1BC76DE98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF20, &qword_1BC76DE90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF18, &qword_1BC76DE88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF10, &qword_1BC76DE80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF08, &qword_1BC76DE78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
  sub_1BC73F0A4();
  swift_getOpaqueTypeConformance2();
  sub_1BC73F25C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC644ECC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC644F04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFA8, &qword_1BC76E080);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC644F98()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC645070(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEFC0, qword_1BC76E0B0);
  sub_1BC633C54(&qword_1EBCDEFC8, &qword_1EBCDEFC0, qword_1BC76E0B0);
  sub_1BC75B140();
  return swift_getWitnessTable();
}

uint64_t sub_1BC645120()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for SCUIMoreHelpContextMenuSwiftUI() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[11], v2);
  v7 = (v0 + v5 + v3[13]);
  v8 = v7[1];

  v9 = v7[3];

  v10 = v7[5];

  v11 = v7[7];

  v12 = v7[9];

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1BC645240()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for SCUIMoreHelpContextMenuSwiftUI() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(*v3 + 64);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[11], v2);
  v7 = (v0 + v5 + v3[13]);
  v8 = v7[1];

  v9 = v7[3];

  v10 = v7[5];

  v11 = v7[7];

  v12 = v7[9];

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1BC64536C(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1BC75A8F0();
  }

  else
  {
    sub_1BC75A860();
  }

  return sub_1BC75A960();
}

uint64_t sub_1BC6453D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1BC75A8F0();
    sub_1BC75A960();
    sub_1BC7481C0();
  }

  else
  {
    sub_1BC75A860();
    sub_1BC75A960();
    sub_1BC74820C(qword_1EDDCEEC0, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1BC6454C8()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v103 = *(*(v1 - 1) + 80);
  v2 = (v103 + 16) & ~v103;
  v101 = *(*(v1 - 1) + 64);
  v104 = _s6VictimVMa(0);
  v3 = *(*(v104 - 8) + 80);
  v100 = *(*(v104 - 8) + 64);
  v102 = v2;
  v4 = v0 + v2;
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v30 = *(v4 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_1BC759910();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v4, 1, v6))
      {
        (*(v7 + 8))(v4, v6);
      }

      v8 = type metadata accessor for Report.Evidence(0);
      v9 = (v4 + v8[6]);
      v10 = *(v9 + 1);

      v11 = *(v9 + 3);

      v12 = *(v9 + 5);

      v13 = *(v9 + 7);

      v14 = *(v9 + 9);

      v15 = *(v9 + 11);

      v16 = *(v9 + 13);

      v17 = *(v9 + 15);

      v18 = *(v9 + 17);

      v19 = *(v9 + 19);

      v20 = *(v9 + 21);

      v21 = *(v9 + 23);

      (*(v7 + 8))(&v9[*(v104 + 44)], v6);
      v22 = *(v4 + v8[7]);

      v23 = *(v4 + v8[9] + 8);

      v24 = *(v4 + v8[12]);

      v25 = (v4 + v8[13]);
      v26 = v25[1];
      if (v26 >> 60 != 15)
      {
        sub_1BC6AE140(*v25, v26);
      }

      v27 = *(v4 + v8[14] + 8);

      v28 = *(v4 + v8[16] + 8);

      v29 = *(v4 + v8[17] + 8);
    }
  }

  else
  {
    v31 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v31 - 8) + 48))(v0 + v2, 1, v31))
    {
      v32 = *(v4 + 8);

      v33 = *(v4 + 32);

      v34 = *(v31 + 28);
      v35 = sub_1BC759800();
      v36 = *(*(v35 - 8) + 8);
      v36(v4 + v34, v35);
      v36(v4 + *(v31 + 32), v35);
    }
  }

  v37 = v4 + v1[5];
  v38 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v39 = *(v37 + 8);

    v40 = *(v37 + 32);

    v41 = *(v38 + 28);
    v42 = sub_1BC759800();
    v43 = *(*(v42 - 8) + 8);
    v43(v37 + v41, v42);
    v43(v37 + *(v38 + 32), v42);
  }

  v44 = *(v4 + v1[6] + 8);

  v45 = (v4 + v1[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32);
  v49 = sub_1BC759910();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(v48, 1, v49))
  {
    (*(v50 + 8))(v48, v49);
  }

  v51 = type metadata accessor for Report.Evidence(0);
  v52 = &v48[v51[6]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v56 = *(v52 + 7);

  v57 = *(v52 + 9);

  v58 = *(v52 + 11);

  v59 = *(v52 + 13);

  v60 = *(v52 + 15);

  v61 = *(v52 + 17);

  v62 = *(v52 + 19);

  v63 = *(v52 + 21);

  v64 = *(v52 + 23);

  v65 = *(v50 + 8);
  v65(&v52[*(v104 + 44)], v49);
  v66 = *&v48[v51[7]];

  v67 = *&v48[v51[9] + 8];

  v68 = *&v48[v51[12]];

  v69 = &v48[v51[13]];
  v70 = v69[1];
  if (v70 >> 60 != 15)
  {
    sub_1BC6AE140(*v69, v70);
  }

  v71 = *&v48[v51[14] + 8];

  v72 = *&v48[v51[16] + 8];

  v73 = *&v48[v51[17] + 8];

  v74 = *(v4 + v1[8] + 16);

  v75 = (v4 + v1[9]);
  v76 = *v75;

  v77 = v75[1];

  v78 = *(v4 + v1[10] + 8);

  v79 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = sub_1BC75A710();
    (*(*(v80 - 8) + 8))(v4 + v79, v80);
  }

  else
  {
    v81 = *(v4 + v79);
  }

  v82 = (v102 + v101 + v3) & ~v3;
  v83 = (v100 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = *(v4 + v1[12] + 8);

  v85 = *(v4 + v1[13] + 8);

  v86 = *(v0 + v82 + 8);

  v87 = *(v0 + v82 + 24);

  v88 = *(v0 + v82 + 40);

  v89 = *(v0 + v82 + 56);

  v90 = *(v0 + v82 + 72);

  v91 = *(v0 + v82 + 88);

  v92 = *(v0 + v82 + 104);

  v93 = *(v0 + v82 + 120);

  v94 = *(v0 + v82 + 136);

  v95 = *(v0 + v82 + 152);

  v96 = *(v0 + v82 + 168);

  v97 = *(v0 + v82 + 184);

  v65((v0 + v82 + *(v104 + 44)), v49);
  v98 = *(v0 + v83);

  return MEMORY[0x1EEE6BDD0](v0, v83 + 8, v103 | v3 | 7);
}

uint64_t sub_1BC645C80()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for CheckSelector() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5);

  v8 = (v0 + v5 + v3[11]);
  v9 = *v8;

  v10 = *(v8 + 1);

  sub_1BC75C110();
  v11 = *(sub_1BC75B760() + 32);
  v12 = *(v2 - 8);
  if (!(*(v12 + 48))(&v8[v11], 1, v2))
  {
    (*(v12 + 8))(&v8[v11], v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1BC645DD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ReportScreen(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BC645F04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ReportScreen(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BC646034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s6VictimVMa(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1BC64614C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s6VictimVMa(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BC646260(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ReportScreen(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Report.Authority(0);
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
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1BC646434(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ReportScreen(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for Report.Authority(0);
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
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1BC646608(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BC6466C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC646774()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF010, &qword_1BC76E300);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF018, &qword_1BC76E308);
  sub_1BC747094();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC646814()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF080, &qword_1BC76E3A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF0D0, &qword_1BC76E3D0);
  sub_1BC750C24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF0E0, &qword_1BC76E3D8);
  sub_1BC750D78();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC646970(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BC75BD70();
  v3 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF168, &qword_1BC76E438);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1BC75B790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF170, &qword_1BC76E440);
  sub_1BC7515E0();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1BC646AC4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for CheckSelector() - 8);
  v4 = *(*v3 + 80);
  v19 = *(*v3 + 64);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + v5);

  v10 = (v0 + v5 + v3[11]);
  v11 = *v10;

  v12 = *(v10 + 1);

  sub_1BC75C110();
  v13 = *(sub_1BC75B760() + 32);
  v14 = (*(v6 + 48))(&v10[v13], 1, v2);
  v15 = *(v6 + 8);
  if (!v14)
  {
    v15(&v10[v13], v2);
  }

  v16 = v4 | v7;
  v17 = (v5 + v19 + v7) & ~v7;
  v15((v0 + v17), v2);

  return MEMORY[0x1EEE6BDD0](v0, v17 + v8, v16 | 7);
}

uint64_t sub_1BC646C8C()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v99 = *(*(v1 - 1) + 64);
  v102 = _s6VictimVMa(0);
  v4 = *(*(v102 - 8) + 80);
  v100 = *(*(v102 - 8) + 64);
  v101 = v0;
  v3 = (v2 + 16) & ~v2;
  v5 = v0 + v3;
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v31 = *(v5 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_1BC759910();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v5, 1, v7))
      {
        (*(v8 + 8))(v5, v7);
      }

      v9 = type metadata accessor for Report.Evidence(0);
      v10 = (v5 + v9[6]);
      v11 = *(v10 + 1);

      v12 = *(v10 + 3);

      v13 = *(v10 + 5);

      v14 = *(v10 + 7);

      v15 = *(v10 + 9);

      v16 = *(v10 + 11);

      v17 = *(v10 + 13);

      v18 = *(v10 + 15);

      v19 = *(v10 + 17);

      v20 = *(v10 + 19);

      v21 = *(v10 + 21);

      v22 = *(v10 + 23);

      (*(v8 + 8))(&v10[*(v102 + 44)], v7);
      v23 = *(v5 + v9[7]);

      v24 = *(v5 + v9[9] + 8);

      v25 = *(v5 + v9[12]);

      v26 = (v5 + v9[13]);
      v27 = v26[1];
      if (v27 >> 60 != 15)
      {
        sub_1BC6AE140(*v26, v27);
      }

      v28 = *(v5 + v9[14] + 8);

      v29 = *(v5 + v9[16] + 8);

      v30 = *(v5 + v9[17] + 8);
    }
  }

  else
  {
    v32 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v32 - 8) + 48))(v0 + v3, 1, v32))
    {
      v33 = *(v5 + 8);

      v34 = *(v5 + 32);

      v35 = *(v32 + 28);
      v36 = sub_1BC759800();
      v37 = *(*(v36 - 8) + 8);
      v37(v5 + v35, v36);
      v37(v5 + *(v32 + 32), v36);
    }
  }

  v38 = v5 + v1[5];
  v39 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v40 = *(v38 + 8);

    v41 = *(v38 + 32);

    v42 = *(v39 + 28);
    v43 = sub_1BC759800();
    v44 = *(*(v43 - 8) + 8);
    v44(v38 + v42, v43);
    v44(v38 + *(v39 + 32), v43);
  }

  v45 = *(v5 + v1[6] + 8);

  v46 = (v5 + v1[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32);
  v50 = sub_1BC759910();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(v49, 1, v50))
  {
    (*(v51 + 8))(v49, v50);
  }

  v52 = type metadata accessor for Report.Evidence(0);
  v53 = &v49[v52[6]];
  v54 = *(v53 + 1);

  v55 = *(v53 + 3);

  v56 = *(v53 + 5);

  v57 = *(v53 + 7);

  v58 = *(v53 + 9);

  v59 = *(v53 + 11);

  v60 = *(v53 + 13);

  v61 = *(v53 + 15);

  v62 = *(v53 + 17);

  v63 = *(v53 + 19);

  v64 = *(v53 + 21);

  v65 = *(v53 + 23);

  v66 = *(v51 + 8);
  v66(&v53[*(v102 + 44)], v50);
  v67 = *&v49[v52[7]];

  v68 = *&v49[v52[9] + 8];

  v69 = *&v49[v52[12]];

  v70 = &v49[v52[13]];
  v71 = v70[1];
  if (v71 >> 60 != 15)
  {
    sub_1BC6AE140(*v70, v71);
  }

  v72 = *&v49[v52[14] + 8];

  v73 = *&v49[v52[16] + 8];

  v74 = *&v49[v52[17] + 8];

  v75 = *(v5 + v1[8] + 16);

  v76 = (v5 + v1[9]);
  v77 = *v76;

  v78 = v76[1];

  v79 = *(v5 + v1[10] + 8);

  v80 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v81 = sub_1BC75A710();
    (*(*(v81 - 8) + 8))(v5 + v80, v81);
  }

  else
  {
    v82 = *(v5 + v80);
  }

  v83 = (((v2 + 16) & ~v2) + v99 + v4) & ~v4;
  v84 = *(v5 + v1[12] + 8);

  v85 = *(v5 + v1[13] + 8);

  v86 = *(v101 + v83 + 8);

  v87 = *(v101 + v83 + 24);

  v88 = *(v101 + v83 + 40);

  v89 = *(v101 + v83 + 56);

  v90 = *(v101 + v83 + 72);

  v91 = *(v101 + v83 + 88);

  v92 = *(v101 + v83 + 104);

  v93 = *(v101 + v83 + 120);

  v94 = *(v101 + v83 + 136);

  v95 = *(v101 + v83 + 152);

  v96 = *(v101 + v83 + 168);

  v97 = *(v101 + v83 + 184);

  v66((v101 + v83 + *(v102 + 44)), v50);

  return MEMORY[0x1EEE6BDD0](v101, v83 + v100, v2 | v4 | 7);
}

uint64_t sub_1BC64742C()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v99 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v32 = *(v5 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_1BC759910();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v0 + v3, 1, v7))
      {
        (*(v8 + 8))(v0 + v3, v7);
      }

      v9 = type metadata accessor for Report.Evidence(0);
      v10 = (v5 + v9[6]);
      v11 = *(v10 + 1);

      v12 = *(v10 + 3);

      v13 = *(v10 + 5);

      v14 = *(v10 + 7);

      v15 = *(v10 + 9);

      v16 = *(v10 + 11);

      v17 = *(v10 + 13);

      v18 = *(v10 + 15);

      v19 = *(v10 + 17);

      v20 = *(v10 + 19);

      v21 = *(v10 + 21);

      v22 = *(v10 + 23);

      v23 = _s6VictimVMa(0);
      (*(v8 + 8))(&v10[*(v23 + 44)], v7);
      v24 = *(v5 + v9[7]);

      v25 = *(v5 + v9[9] + 8);

      v26 = *(v5 + v9[12]);

      v27 = (v5 + v9[13]);
      v28 = v27[1];
      if (v28 >> 60 != 15)
      {
        sub_1BC6AE140(*v27, v28);
      }

      v29 = *(v5 + v9[14] + 8);

      v30 = *(v5 + v9[16] + 8);

      v31 = *(v5 + v9[17] + 8);
    }
  }

  else
  {
    v33 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v33 - 8) + 48))(v0 + v3, 1, v33))
    {
      v34 = *(v5 + 8);

      v35 = *(v5 + 32);

      v36 = *(v33 + 28);
      v37 = sub_1BC759800();
      v38 = *(*(v37 - 8) + 8);
      v38(v5 + v36, v37);
      v38(v5 + *(v33 + 32), v37);
    }
  }

  v39 = v5 + v1[5];
  v40 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    v41 = *(v39 + 8);

    v42 = *(v39 + 32);

    v98 = *(v40 + 28);
    v43 = sub_1BC759800();
    v44 = *(*(v43 - 8) + 8);
    v44(v39 + v98, v43);
    v44(v39 + *(v40 + 32), v43);
    v3 = (v2 + 24) & ~v2;
  }

  v45 = *(v5 + v1[6] + 8);

  v46 = (v5 + v1[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32);
  v50 = sub_1BC759910();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(v49, 1, v50))
  {
    (*(v51 + 8))(v49, v50);
  }

  v52 = type metadata accessor for Report.Evidence(0);
  v53 = &v49[v52[6]];
  v54 = *(v53 + 1);

  v55 = *(v53 + 3);

  v56 = *(v53 + 5);

  v57 = *(v53 + 7);

  v58 = *(v53 + 9);

  v59 = *(v53 + 11);

  v60 = *(v53 + 13);

  v61 = *(v53 + 15);

  v62 = *(v53 + 17);

  v63 = *(v53 + 19);

  v64 = *(v53 + 21);

  v65 = *(v53 + 23);

  v66 = _s6VictimVMa(0);
  (*(v51 + 8))(&v53[*(v66 + 44)], v50);
  v67 = *&v49[v52[7]];

  v68 = *&v49[v52[9] + 8];

  v69 = *&v49[v52[12]];

  v70 = &v49[v52[13]];
  v71 = v70[1];
  if (v71 >> 60 != 15)
  {
    sub_1BC6AE140(*v70, v71);
  }

  v72 = *&v49[v52[14] + 8];

  v73 = *&v49[v52[16] + 8];

  v74 = *&v49[v52[17] + 8];

  v75 = *(v5 + v1[8] + 16);

  v76 = (v5 + v1[9]);
  v77 = *v76;

  v78 = v76[1];

  v79 = *(v5 + v1[10] + 8);

  v80 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v81 = sub_1BC75A710();
    (*(*(v81 - 8) + 8))(v5 + v80, v81);
  }

  else
  {
    v82 = *(v5 + v80);
  }

  v83 = (v99 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = *(v5 + v1[12] + 8);

  v85 = *(v5 + v1[13] + 8);

  v86 = *(v0 + v83 + 8);

  v87 = *(v0 + v83 + 24);

  v88 = *(v0 + v83 + 40);

  v89 = *(v0 + v83 + 56);

  v90 = *(v0 + v83 + 72);

  v91 = *(v0 + v83 + 88);

  v92 = *(v0 + v83 + 104);

  v93 = *(v0 + v83 + 120);

  v94 = *(v0 + v83 + 136);

  v95 = *(v0 + v83 + 152);

  v96 = *(v0 + v83 + 160);

  return MEMORY[0x1EEE6BDD0](v0, v83 + 168, v2 | 7);
}

uint64_t sub_1BC647B80()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC647BB8()
{
  v1 = (_s6VictimVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 56);

  v9 = *(v0 + v3 + 72);

  v10 = *(v0 + v3 + 88);

  v11 = *(v0 + v3 + 104);

  v12 = *(v0 + v3 + 120);

  v13 = *(v0 + v3 + 136);

  v14 = *(v0 + v3 + 152);

  v15 = *(v0 + v3 + 168);

  v16 = *(v0 + v3 + 184);

  v17 = v1[13];
  v18 = sub_1BC759910();
  (*(*(v18 - 8) + 8))(v0 + v3 + v17, v18);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC647CFC()
{
  v1 = v0;
  v2 = type metadata accessor for ReportOverviewScreen(0);
  v101 = *(*(v2 - 1) + 80);
  v3 = (v101 + 16) & ~v101;
  v4 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for Report.Evidence(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v3 + v4 + v6;
  v100 = *(*(v5 - 1) + 64);
  v8 = v1 + v3;
  v9 = *(v1 + v3);

  v10 = *(v1 + v3 + 8);

  v11 = v1 + v3 + v2[5];
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v37 = *(v11 + 8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = sub_1BC759910();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(v11, 1, v13))
      {
        (*(v14 + 8))(v11, v13);
      }

      v15 = (v11 + v5[6]);
      v16 = *(v15 + 1);

      v17 = *(v15 + 3);

      v18 = *(v15 + 5);

      v19 = *(v15 + 7);

      v20 = *(v15 + 9);

      v21 = *(v15 + 11);

      v22 = *(v15 + 13);

      v23 = *(v15 + 15);

      v24 = *(v15 + 17);

      v25 = *(v15 + 19);

      v26 = *(v15 + 21);

      v27 = *(v15 + 23);

      v28 = _s6VictimVMa(0);
      (*(v14 + 8))(&v15[*(v28 + 44)], v13);
      v29 = *(v11 + v5[7]);

      v30 = *(v11 + v5[9] + 8);

      v31 = *(v11 + v5[12]);

      v32 = (v11 + v5[13]);
      v33 = v32[1];
      if (v33 >> 60 != 15)
      {
        sub_1BC6AE140(*v32, v33);
      }

      v34 = *(v11 + v5[14] + 8);

      v35 = *(v11 + v5[16] + 8);

      v36 = *(v11 + v5[17] + 8);
    }
  }

  else
  {
    v38 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v38 - 8) + 48))(v11, 1, v38))
    {
      v39 = *(v11 + 8);

      v40 = *(v11 + 32);

      v99 = *(v38 + 28);
      v41 = sub_1BC759800();
      v42 = *(*(v41 - 8) + 8);
      v42(v11 + v99, v41);
      v42(v11 + *(v38 + 32), v41);
    }
  }

  v43 = v7 & ~v6;
  v44 = *(v8 + v2[6] + 8);

  v45 = *(v8 + v2[7] + 8);

  v46 = v8 + v2[8];
  v47 = type metadata accessor for ReportOverviewScreen._Alert(0);
  if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
  {
    v48 = sub_1BC759910();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v46, 1, v48))
    {
      (*(v49 + 8))(v46, v48);
    }

    v50 = (v46 + v5[6]);
    v51 = *(v50 + 1);

    v52 = *(v50 + 3);

    v53 = *(v50 + 5);

    v54 = *(v50 + 7);

    v55 = *(v50 + 9);

    v56 = *(v50 + 11);

    v57 = *(v50 + 13);

    v58 = *(v50 + 15);

    v59 = *(v50 + 17);

    v60 = *(v50 + 19);

    v61 = *(v50 + 21);

    v62 = *(v50 + 23);

    v63 = _s6VictimVMa(0);
    (*(v49 + 8))(&v50[*(v63 + 44)], v48);
    v64 = *(v46 + v5[7]);

    v65 = *(v46 + v5[9] + 8);

    v66 = *(v46 + v5[12]);

    v67 = (v46 + v5[13]);
    v68 = v67[1];
    if (v68 >> 60 != 15)
    {
      sub_1BC6AE140(*v67, v68);
    }

    v69 = *(v46 + v5[14] + 8);

    v70 = *(v46 + v5[16] + 8);

    v71 = *(v46 + v5[17] + 8);
  }

  v72 = *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318) + 28));

  v73 = v1 + v43;
  v74 = sub_1BC759910();
  v75 = *(v74 - 8);
  if (!(*(v75 + 48))(v1 + v43, 1, v74))
  {
    (*(v75 + 8))(v1 + v43, v74);
  }

  v76 = (v73 + v5[6]);
  v77 = *(v76 + 1);

  v78 = *(v76 + 3);

  v79 = *(v76 + 5);

  v80 = *(v76 + 7);

  v81 = *(v76 + 9);

  v82 = *(v76 + 11);

  v83 = *(v76 + 13);

  v84 = *(v76 + 15);

  v85 = *(v76 + 17);

  v86 = *(v76 + 19);

  v87 = *(v76 + 21);

  v88 = *(v76 + 23);

  v89 = _s6VictimVMa(0);
  (*(v75 + 8))(&v76[*(v89 + 44)], v74);
  v90 = *(v73 + v5[7]);

  v91 = *(v73 + v5[9] + 8);

  v92 = *(v73 + v5[12]);

  v93 = (v73 + v5[13]);
  v94 = v93[1];
  if (v94 >> 60 != 15)
  {
    sub_1BC6AE140(*v93, v94);
  }

  v95 = *(v73 + v5[14] + 8);

  v96 = *(v73 + v5[16] + 8);

  v97 = *(v73 + v5[17] + 8);

  return MEMORY[0x1EEE6BDD0](v1, v43 + v100, v101 | v6 | 7);
}

void __getIMMessagePartChatItemClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IMMessagePartChatItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMMessagePartChatItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getIMMessagePartChatItemClass_block_invoke_cold_1();
    ChatKitLibrary();
  }
}

void ChatKitLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ChatKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7FF2390;
    v4 = 0;
    ChatKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __ChatKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getIMAssociatedStickerChatItemClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary();
  result = objc_getClass("IMAssociatedStickerChatItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMAssociatedStickerChatItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getIMAssociatedStickerChatItemClass_block_invoke_cold_1();
    return __getIMAggregateAcknowledgmentChatItemClass_block_invoke(v3);
  }

  return result;
}

Class __getIMAggregateAcknowledgmentChatItemClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary();
  result = objc_getClass("IMAggregateAcknowledgmentChatItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMAggregateAcknowledgmentChatItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getIMAggregateAcknowledgmentChatItemClass_block_invoke_cold_1();
    return [(SCUIScreenTimePasscodeController *)v3 _isScreenTimePasscodeSet:v4, v5];
  }

  return result;
}

Class __getSTCommunicationClientClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ScreenTimeCoreLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7FF23F0;
    v7 = 0;
    ScreenTimeCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (ScreenTimeCoreLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STCommunicationClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTCommunicationClientClass_block_invoke_cold_1();
  }

  getSTCommunicationClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ScreenTimeCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCUICurrentInterventionType()
{
  v0 = [MEMORY[0x1E697B668] currentScanningPolicy];
  v1 = [v0 policy];

  if (v1 < 2)
  {
    return 2;
  }

  v3 = [MEMORY[0x1E697B668] currentInterventionType];
  v2 = [v3 isEqualToString:*MEMORY[0x1E69ADFF0]];

  return v2;
}

void sub_1BC64C100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getIMServiceClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IMService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getIMServiceClass_block_invoke_cold_1();
    ChatKitLibrary_0();
  }
}

void ChatKitLibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ChatKitLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7FF24C0;
    v4 = 0;
    ChatKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!ChatKitLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __ChatKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

NSDictionary *__getIMAccountControllerClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary_0();
  result = objc_getClass("IMAccountController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMAccountControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getIMAccountControllerClass_block_invoke_cold_1();
    return [(SCUIMoreHelpMenu *)v3 contextDictionary];
  }

  return result;
}

void sub_1BC64CA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BC64DC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a40, 8);
  objc_destroyWeak((v40 - 248));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SCLocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:formatter:)(uint64_t a1, void *a2)
{
  v3 = [a2 stringForObjectValue_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_1BC75BB60();

    _s26SensitiveContentAnalysisUI20SCLocalizedStringKeyV0F13InterpolationV06appendH0yySSF_0();
  }

  else
  {
    sub_1BC75C290();

    v5 = a2;
    v6 = [v5 description];
    v7 = sub_1BC75BB60();
    v9 = v8;

    MEMORY[0x1BFB267E0](v7, v9);

    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(SensitiveContentAnalysisUI::SCLocalizedStringKey a1)
{
  v2 = *a1.localized._countAndFlagsBits;
  v1 = *(a1.localized._countAndFlagsBits + 8);
  _s26SensitiveContentAnalysisUI20SCLocalizedStringKeyV0F13InterpolationV06appendH0yySSF_0();
}

uint64_t SCLocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  sub_1BC75C5B0();
  _s26SensitiveContentAnalysisUI20SCLocalizedStringKeyV0F13InterpolationV06appendH0yySSF_0();
}

uint64_t sub_1BC65154C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return _s26SensitiveContentAnalysisUI20SCLocalizedStringKeyV0F13InterpolationV13appendLiteralyySSF_0();
}

uint64_t SCLocalizedStringKey.init(stringInterpolation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BC7599C0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1BC75BB00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC75BB20();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  (*(v7 + 16))(v10, a1, v6);
  sub_1BC75BB10();
  v13 = [objc_opt_self() mainBundle];
  sub_1BC7599B0();
  v14 = sub_1BC75BBB0();
  v16 = v15;
  result = sub_1BC651738(a1);
  *a2 = v14;
  a2[1] = v16;
  return result;
}

uint64_t sub_1BC651738(uint64_t a1)
{
  v2 = type metadata accessor for SCLocalizedStringKey.StringInterpolation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SCLocalizedStringKey.StringInterpolation()
{
  result = qword_1EBCDF990;
  if (!qword_1EBCDF990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

SensitiveContentAnalysisUI::SCLocalizedStringKey __swiftcall SCLocalizedStringKey.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = v1;
  v3 = sub_1BC7599C0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1BC75BB20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1BC75BAC0();
  v7 = [objc_opt_self() mainBundle];
  sub_1BC7599B0();
  v8 = sub_1BC75BBB0();
  *v2 = v8;
  v2[1] = v9;
  result.localized._object = v9;
  result.localized._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_1BC651920@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BC7599C0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1BC75BB00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC75BB20();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  (*(v7 + 16))(v10, a1, v6);
  sub_1BC75BB10();
  v13 = [objc_opt_self() mainBundle];
  sub_1BC7599B0();
  v14 = sub_1BC75BBB0();
  v16 = v15;
  result = sub_1BC651738(a1);
  *a2 = v14;
  a2[1] = v16;
  return result;
}

uint64_t sub_1BC651B00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BC7599C0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1BC75BB20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = *a1;
  v9 = a1[1];
  sub_1BC75BAC0();
  v10 = [objc_opt_self() mainBundle];
  sub_1BC7599B0();
  result = sub_1BC75BBB0();
  *a2 = result;
  a2[1] = v12;
  return result;
}

uint64_t SCLocalizedStringKey.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SensitiveContentAnalysisUI::SCLocalizedStringKey_optional __swiftcall SCLocalizedStringKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BC7599C0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1BC75BB20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1BC75BAC0();
  v7 = [objc_opt_self() mainBundle];
  sub_1BC7599B0();
  v8 = sub_1BC75BBB0();
  *v2 = v8;
  v2[1] = v9;
  result.value.localized._object = v9;
  result.value.localized._countAndFlagsBits = v8;
  result.is_nil = v10;
  return result;
}

uint64_t sub_1BC651DA0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1BC651DAC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BC75C700();
  sub_1BC75BBE0();
  return sub_1BC75C720();
}

uint64_t sub_1BC651DF8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BC75BBE0();
}

uint64_t sub_1BC651E00()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BC75C700();
  sub_1BC75BBE0();
  return sub_1BC75C720();
}

uint64_t sub_1BC651E48(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BC75C5E0();
  }
}

uint64_t sub_1BC651E78(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1BC651EB8();
  return sub_1BC75B1B0();
}

unint64_t sub_1BC651EB8()
{
  result = qword_1EBCDBAE0;
  if (!qword_1EBCDBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBAE0);
  }

  return result;
}

uint64_t sub_1BC651F0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1BC651EB8();
  return sub_1BC75B6B0();
}

uint64_t sub_1BC651F70(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBAE8, &qword_1BC75EE50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  sub_1BC652090(a2, v9 - v7);
  sub_1BC651EB8();
  sub_1BC75B6A0();
  return sub_1BC652100(a2);
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

uint64_t sub_1BC652090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBAE8, &qword_1BC75EE50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC652100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBAE8, &qword_1BC75EE50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC652168(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1BC651EB8();
  return sub_1BC75B840();
}

unint64_t sub_1BC6521FC()
{
  result = qword_1EBCDBAF0;
  if (!qword_1EBCDBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBAF0);
  }

  return result;
}

unint64_t sub_1BC652254()
{
  result = qword_1EBCDBAF8;
  if (!qword_1EBCDBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBAF8);
  }

  return result;
}

unint64_t sub_1BC6522AC()
{
  result = qword_1EBCDBB00;
  if (!qword_1EBCDBB00)
  {
    type metadata accessor for SCLocalizedStringKey.StringInterpolation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBB00);
  }

  return result;
}

unint64_t sub_1BC652308()
{
  result = qword_1EBCDBB08;
  if (!qword_1EBCDBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBB08);
  }

  return result;
}

unint64_t sub_1BC652378()
{
  result = qword_1EBCDBB10;
  if (!qword_1EBCDBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBB10);
  }

  return result;
}

uint64_t sub_1BC6523CC(uint64_t a1, int a2)
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

uint64_t sub_1BC652414(uint64_t result, int a2, int a3)
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

uint64_t sub_1BC652488()
{
  result = sub_1BC75BB00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BC6524FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1BC75BDE0();
  v6[3] = sub_1BC75BDD0();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1BC6525CC;

  return sub_1BC65CA6C(a5, a6);
}

uint64_t sub_1BC6525CC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC652708, v5, v4);
}

uint64_t sub_1BC652708()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static SCUIAnalytics.logObscuredViewShown(_:identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC65281C;

  return (sub_1BC65CA6C)(a1, a2);
}

uint64_t sub_1BC65281C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BC652910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1BC660024(a3, v27 - v11, &qword_1EBCDBB20, &qword_1BC75F0D0);
  v13 = sub_1BC75BE10();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1BC66008C(v12, &qword_1EBCDBB20, &qword_1BC75F0D0);
  }

  else
  {
    sub_1BC75BE00();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1BC75BD80();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1BC75BBC0() + 32;
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

      sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);

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

  sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);
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

uint64_t static SCUIAnalytics.contextMap.getter()
{
  if (qword_1EBCDF9B0 != -1)
  {
    swift_once();
  }

  sub_1BC75C7B0();
  return v1;
}

SCUIAnalytics __swiftcall SCUIAnalytics.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1BC652E00(uint64_t a1, unint64_t a2)
{
  v28 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for AnalyticsUIContext(0);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_1BC75A1E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if (a2 >= 8)
  {
    v30 = a2;
    result = sub_1BC75C610();
    __break(1u);
  }

  else
  {
    (*(v11 + 104))(&v25 - v15, **(&unk_1E7FF26A0 + a2), v10);
    if ([objc_opt_self() isEnabled])
    {
      v27 = ObjectType;
      v17 = sub_1BC75BE10();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
      v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1BC65F4F0(v28, v26, type metadata accessor for AnalyticsUIContext);
      (*(v11 + 16))(v14, v16, v10);
      v28 = v9;
      if (qword_1EBCDF9D0 != -1)
      {
        swift_once();
      }

      v19 = qword_1EBCF4440;
      v20 = sub_1BC65E9D8(&qword_1EBCDBBE8, v18, type metadata accessor for AnalyticsActor);
      v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v22 = (v5 + *(v11 + 80) + v21) & ~*(v11 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v19;
      *(v23 + 24) = v20;
      sub_1BC65D8C4(v26, v23 + v21);
      (*(v11 + 32))(v23 + v22, v14, v10);
      *(v23 + ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;

      sub_1BC652910(0, 0, v28, &unk_1BC75F118, v23);
    }

    return (*(v11 + 8))(v16, v10);
  }

  return result;
}

uint64_t sub_1BC653230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1BC75BDE0();
  v8[3] = sub_1BC75BDD0();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1BC653334;

  return sub_1BC65DB58(a5, a6, a7, a8, v16, v17);
}

uint64_t sub_1BC653334()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6602CC, v5, v4);
}

uint64_t static SCUIAnalytics.logContextMenuButtonTapped(contentType:subContentType:direction:options:isBlurred:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BC660280;

  return (sub_1BC65DB58)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BC6536D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 176) = a5;
  *(v5 + 32) = a4;
  v6 = sub_1BC75A3B0();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v9 = *(*(sub_1BC759C70() - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v10 = *(*(type metadata accessor for AnalyticsUIContext(0) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v12 = sub_1BC759EE0();
  *(v5 + 88) = v12;
  v13 = *(v12 - 8);
  *(v5 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = sub_1BC75BDE0();
  *(v5 + 128) = sub_1BC75BDD0();
  v16 = sub_1BC75BD80();
  *(v5 + 136) = v16;
  *(v5 + 144) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1BC6538C8, v16, v15);
}

uint64_t sub_1BC6538C8()
{
  v1 = v0[15];
  sub_1BC75C200();
  sub_1BC75A030();
  v0[19] = sub_1BC75A000();
  v2 = *(MEMORY[0x1E697B5E8] + 4);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1BC6539B8;
  v4 = v0[10];

  return MEMORY[0x1EEDD8CE0](v4);
}

uint64_t sub_1BC6539B8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_1BC653DA0;
  }

  else
  {
    v7 = v2[19];

    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_1BC653AD4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BC653AD4()
{
  v27 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1BC66008C(*(v0 + 80), &unk_1EBCDBD90, &unk_1BC75F850);
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 64);
    v24 = *(v0 + 56);
    v10 = *(v0 + 48);
    v11 = *(v0 + 176);
    v22 = *(v0 + 72);
    v23 = *(v0 + 40);
    v21 = *(v0 + 32);
    (*(v8 + 32))(v5, *(v0 + 80), v7);
    v20 = [objc_allocWithZone(SCUIAnalytics) init];
    (*(v8 + 16))(v6, v5, v7);
    *(v0 + 24) = MEMORY[0x1E69E7CC0];
    v25 = v11;
    sub_1BC65E6C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC00, &qword_1BC75F170);
    sub_1BC65FF68(&qword_1EBCDBC08, &qword_1EBCDBC00, &qword_1BC75F170);
    sub_1BC75C1B0();
    v26 = *(v0 + 16);
    sub_1BC759C20();
    sub_1BC664670(v6, MEMORY[0x1E69E7CC0], 2, 0, v21, 0, 1, &v25, v22, &v26, v9);
    (*(v10 + 104))(v24, *MEMORY[0x1E69AA6A0], v23);
    sub_1BC656874(v22, v24);

    (*(v10 + 8))(v24, v23);
    sub_1BC65FD74(v22, type metadata accessor for AnalyticsUIContext);
    (*(v8 + 8))(v5, v7);
  }

  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);

  v18 = *(v0 + 8);

  return v18();
}