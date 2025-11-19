uint64_t sub_21DFDC3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v63 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9720);
  MEMORY[0x28223BE20](v61);
  v60 = &v48 - v6;
  v7 = sub_21E13F444();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21E141BB4();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = sub_21E141C64();
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21E13D834();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21E1419A4();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v58 = &v48 - v25;
  v53 = a3(0, v24);
  v26 = *(v53 + 20);
  v59 = a2;
  v27 = *(a2 + v26);
  swift_getKeyPath();
  v64 = v27;
  sub_21DFDDE20(&qword_280F6BEE0, type metadata accessor for NewBarModel);
  sub_21E13D3C4();

  v28 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  (*(v18 + 16))(v20, v27 + v28, v17);
  LOBYTE(v28) = sub_21E13D7F4();
  (*(v18 + 8))(v20, v17);
  if (v28)
  {
    sub_21E141B84();
    sub_21E141BE4();
    (*(v9 + 8))(v13, v57);
    sub_21E141984();
    (*(v55 + 8))(v16, v56);
    sub_21E141484();
    sub_21E141514();

    v29 = v58;
    sub_21E141994();

    v30 = v52;
    v31 = v54;
    (*(v52 + 8))(v22, v54);
    v32 = v59;
  }

  else
  {
    v33 = v48;
    sub_21E141B94();
    v34 = v49;
    v32 = v59;
    sub_21E021DE8(v49);
    sub_21E141BA4();
    (*(v50 + 8))(v34, v51);
    v35 = *(v9 + 8);
    v36 = v57;
    v35(v33, v57);
    sub_21E141BE4();
    v35(v13, v36);
    v29 = v58;
    sub_21E141984();
    (*(v55 + 8))(v16, v56);
    v31 = v54;
    v30 = v52;
  }

  sub_21E141954();
  v37 = *MEMORY[0x277CE0128];
  v38 = sub_21E140144();
  v39 = v60;
  (*(*(v38 - 8) + 104))(v60, v37, v38);
  v40 = *(v32 + *(v53 + 28));
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v41 = v61;
  v42 = (v39 + *(v61 + 36));
  *v42 = v40;
  v42[1] = v40;
  v43 = (v39 + *(v41 + 40));
  *v43 = v44;
  v43[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96D8);
  sub_21DFDCFF0();
  sub_21DF23E5C(&qword_280F69018, &qword_27CEA9720);
  sub_21E140E54();
  sub_21DF23614(v39, &qword_27CEA9720);
  v46 = *(v30 + 8);
  v46(v22, v31);
  return (v46)(v29, v31);
}

uint64_t sub_21DFDCAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9718) + 36);
  sub_21E141BD4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9728);
  v6 = *(v5 + 52);
  v7 = *MEMORY[0x277CE0128];
  v8 = sub_21E140144();
  (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  *(v4 + *(v5 + 56)) = 256;
  return sub_21DF236C0(a1, a2, &qword_27CEA96D8);
}

uint64_t sub_21DFDCB98(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v6 = *a2;
  v7 = *(a3 + *(a4(0) + 20));
  v8 = *a5;
  result = swift_beginAccess();
  if (v6 == *(v7 + v8))
  {
    *(v7 + v8) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFDDE20(&qword_280F6BEE0, type metadata accessor for NewBarModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DFDCCD8()
{
  v0 = sub_21E1401C4();
  result = sub_21E13FFF4();
  qword_280F6FD38 = v0;
  unk_280F6FD40 = result;
  return result;
}

uint64_t sub_21DFDCD10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFDDE20(&qword_280F6BEE0, type metadata accessor for NewBarModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  v5 = sub_21E13D834();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21DFDCE08(uint64_t a1)
{
  v2 = sub_21E13D834();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_21E1119A8(v5);
}

uint64_t sub_21DFDCEF8(uint64_t a1)
{
  v2 = sub_21E141654();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21E13FD64();
}

unint64_t sub_21DFDCFF0()
{
  result = qword_280F68EB8;
  if (!qword_280F68EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96D8);
    sub_21DFDD07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EB8);
  }

  return result;
}

unint64_t sub_21DFDD07C()
{
  result = qword_280F68ED0;
  if (!qword_280F68ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96D0);
    sub_21DFDD108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68ED0);
  }

  return result;
}

unint64_t sub_21DFDD108()
{
  result = qword_280F68EF8;
  if (!qword_280F68EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96C8);
    sub_21DFDD194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EF8);
  }

  return result;
}

unint64_t sub_21DFDD194()
{
  result = qword_280F68F38;
  if (!qword_280F68F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9708);
    sub_21DFDD24C();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F38);
  }

  return result;
}

unint64_t sub_21DFDD24C()
{
  result = qword_280F68FB8;
  if (!qword_280F68FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9700);
    sub_21DFDDE20(&qword_280F68E08, MEMORY[0x277CDE278]);
    sub_21DF23E5C(&qword_280F68DB8, &qword_27CEA8288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68FB8);
  }

  return result;
}

unint64_t sub_21DFDD334()
{
  result = qword_280F68EA8;
  if (!qword_280F68EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9718);
    sub_21DFDCFF0();
    sub_21DF23E5C(&qword_280F68DA8, &qword_27CEA9728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EA8);
  }

  return result;
}

unint64_t sub_21DFDD498()
{
  result = qword_280F68EE0;
  if (!qword_280F68EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96F8);
    sub_21DFDD550();
    sub_21DF23E5C(&qword_280F68E50, &qword_27CEA9738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EE0);
  }

  return result;
}

unint64_t sub_21DFDD550()
{
  result = qword_280F68F18;
  if (!qword_280F68F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96F0);
    sub_21DFDD608();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F18);
  }

  return result;
}

unint64_t sub_21DFDD608()
{
  result = qword_280F68F80;
  if (!qword_280F68F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9718);
    sub_21DFDCFF0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9720);
    sub_21DF23E5C(&qword_280F69018, &qword_27CEA9720);
    swift_getOpaqueTypeConformance2();
    sub_21DFDD334();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68E00, &qword_27CEA8AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F80);
  }

  return result;
}

uint64_t sub_21DFDD82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_10(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v1 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DFDD9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21DFDDB38()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    sub_21E13D834();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21DFDDBF0()
{
  result = qword_27CEA9798;
  if (!qword_27CEA9798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9768);
    sub_21DFDDC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9798);
  }

  return result;
}

unint64_t sub_21DFDDC7C()
{
  result = qword_27CEA97A0;
  if (!qword_27CEA97A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9760);
    sub_21DFDDD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97A0);
  }

  return result;
}

unint64_t sub_21DFDDD08()
{
  result = qword_27CEA97A8;
  if (!qword_27CEA97A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9758);
    sub_21DFDDD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97A8);
  }

  return result;
}

unint64_t sub_21DFDDD94()
{
  result = qword_27CEA97B0;
  if (!qword_27CEA97B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9750);
    sub_21DFDD194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97B0);
  }

  return result;
}

uint64_t sub_21DFDDE20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21DFDDE68()
{
  result = qword_27CEA97B8;
  if (!qword_27CEA97B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9790);
    sub_21DFDDF20();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97B8);
  }

  return result;
}

unint64_t sub_21DFDDF20()
{
  result = qword_27CEA97C0;
  if (!qword_27CEA97C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97C8);
    sub_21DFDDBF0();
    sub_21DF23E5C(&qword_280F68DA8, &qword_27CEA9728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97C0);
  }

  return result;
}

unint64_t sub_21DFDDFD8()
{
  result = qword_27CEA97D8;
  if (!qword_27CEA97D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97D0);
    sub_21DFDE090();
    sub_21DF23E5C(&qword_27CEA9800, &qword_27CEA9808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97D8);
  }

  return result;
}

unint64_t sub_21DFDE090()
{
  result = qword_27CEA97E0;
  if (!qword_27CEA97E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9780);
    sub_21DFDE148();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97E0);
  }

  return result;
}

unint64_t sub_21DFDE148()
{
  result = qword_27CEA97E8;
  if (!qword_27CEA97E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9790);
    sub_21DFDDBF0();
    sub_21E141A34();
    sub_21DFDDE20(&qword_27CEA6F30, MEMORY[0x277CE1260]);
    swift_getOpaqueTypeConformance2();
    sub_21DFDDE68();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97E8);
  }

  return result;
}

double static CanvasUtility.scale(_:to:from:)(double result, double a2, double a3, double a4, double a5, double a6)
{
  if (a6 > 0.0 && a4 > 0.0)
  {
    return (result + -0.5) * (a5 / a6 / (a3 / a4)) + 0.5;
  }

  return result;
}

uint64_t ResultFooterView.init<>(_:bundleIdentifier:action:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9468);
  v11 = (a5 + v10[9]);
  *v11 = a1;
  v11[1] = a2;
  v12 = (a5 + v10[10]);
  *v12 = a3;
  v12[1] = a4;
  sub_21DF23B80();

  if (!sub_21E1426B4())
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v14 = sub_21E140C64();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v22 = a5 + v10[11];
  *v22 = v14;
  *(v22 + 1) = v16;
  v22[16] = v18 & 1;
  *(v22 + 3) = v20;
  return result;
}

uint64_t sub_21DFDE4E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21DF236C0(v2, &v14 - v9, &qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E13F444();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ResultFooterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = sub_21E13FC44();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9810);
  v48 = *(a1 + 16);
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0);
  v4 = sub_21E13FB54();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8);
  v46 = *(a1 + 24);
  v6 = v46;
  v7 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
  v69 = v6;
  v70 = v7;
  WitnessTable = swift_getWitnessTable();
  v9 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
  v65 = v4;
  v66 = v5;
  v67 = WitnessTable;
  v68 = v9;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  sub_21E13FB54();
  sub_21E1407F4();
  sub_21E13FB54();
  swift_getTupleTypeMetadata3();
  sub_21E141DC4();
  swift_getWitnessTable();
  v10 = sub_21E1417C4();
  v11 = swift_getWitnessTable();
  v65 = v10;
  v66 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA9820);
  sub_21E13FB54();
  v65 = v10;
  v66 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = MEMORY[0x277CDF918];
  v63 = OpaqueTypeConformance2;
  v64 = MEMORY[0x277CDF918];
  v61 = swift_getWitnessTable();
  v62 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_21DF23E5C(&qword_280F68E48, qword_27CEA9820);
  v59 = v14;
  v60 = v15;
  v43 = swift_getWitnessTable();
  v16 = sub_21E141794();
  v44 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v19 = sub_21E13FB54();
  v45 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v42 = &v38 - v20;
  v21 = swift_getWitnessTable();
  v22 = sub_21DFE0D9C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
  v57 = v21;
  v58 = v22;
  v23 = swift_getWitnessTable();
  v39 = v23;
  v38 = sub_21DFE0D9C(&qword_27CEA7000, MEMORY[0x277CDDB18]);
  v65 = v19;
  v66 = v53;
  v67 = v23;
  v68 = v38;
  v40 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v38 - v28;
  v54 = v48;
  v55 = v46;
  v56 = v49;

  sub_21E141764();
  v30 = v42;
  sub_21E141164();
  (*(v44 + 8))(v18, v16);
  v31 = v50;
  sub_21E13FC34();
  v32 = v53;
  v33 = v39;
  v34 = v38;
  sub_21E140DC4();
  (*(v51 + 8))(v31, v32);
  (*(v45 + 8))(v30, v19);
  v65 = v19;
  v66 = v32;
  v67 = v33;
  v68 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  sub_21DFE2A0C(v26, OpaqueTypeMetadata2, v35);
  v36 = *(v41 + 8);
  v36(v26, OpaqueTypeMetadata2);
  sub_21DFE2A0C(v29, OpaqueTypeMetadata2, v35);
  return (v36)(v29, OpaqueTypeMetadata2);
}

uint64_t sub_21DFDEF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v53 = a2;
  v54 = a1;
  v59 = a4;
  v5 = sub_21E140034();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9810);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0);
  v7 = sub_21E13FB54();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8);
  v9 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
  v73 = a3;
  v74 = v9;
  v56 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v11 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
  v69 = v7;
  v70 = v8;
  v71 = WitnessTable;
  v72 = v11;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  sub_21E13FB54();
  sub_21E1407F4();
  sub_21E13FB54();
  swift_getTupleTypeMetadata3();
  v46 = sub_21E141DC4();
  v45 = swift_getWitnessTable();
  v12 = sub_21E1417C4();
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = swift_getWitnessTable();
  v69 = v12;
  v70 = v15;
  v43 = MEMORY[0x277CE0C98];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v40 - v17;
  v19 = sub_21E13FB54();
  v48 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v22 = sub_21E13FB54();
  v50 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v41 = &v40 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA9820);
  v24 = sub_21E13FB54();
  v51 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v42 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v44 = &v40 - v27;
  v60 = v53;
  v61 = v52;
  v62 = v54;
  sub_21E140004();
  sub_21E1417B4();
  v28 = v55;
  sub_21E0130B8(v55);
  sub_21E140E84();
  (*(v57 + 8))(v28, v58);
  (*(v49 + 8))(v14, v12);
  v69 = v12;
  v70 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21E1412E4();
  (*(v47 + 8))(v18, OpaqueTypeMetadata2);
  sub_21E140934();
  v30 = MEMORY[0x277CDF918];
  v67 = OpaqueTypeConformance2;
  v68 = MEMORY[0x277CDF918];
  v31 = swift_getWitnessTable();
  v32 = v41;
  sub_21E1412F4();
  (*(v48 + 8))(v21, v19);
  v65 = v31;
  v66 = v30;
  v33 = swift_getWitnessTable();
  sub_21DFE0D48();
  v34 = v42;
  sub_21E140E64();
  (*(v50 + 8))(v32, v22);
  v35 = sub_21DF23E5C(&qword_280F68E48, qword_27CEA9820);
  v63 = v33;
  v64 = v35;
  v36 = swift_getWitnessTable();
  v37 = v44;
  sub_21DFE2A0C(v34, v24, v36);
  v38 = *(v51 + 8);
  v38(v34, v24);
  sub_21DFE2A0C(v37, v24, v36);
  return (v38)(v37, v24);
}

uint64_t sub_21DFDF858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a4;
  v120 = sub_21E13F444();
  v99 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v117 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF8);
  MEMORY[0x28223BE20](v10);
  v124 = &v92 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0);
  v12 = sub_21E13FB54();
  v100 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v123 = &v92 - v13;
  v14 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
  v145 = a3;
  v146 = v14;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
  v101 = v12;
  *&v126 = v12;
  *(&v126 + 1) = v10;
  v98 = WitnessTable;
  v127 = WitnessTable;
  v95 = v16;
  v128 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v94 = &v92 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818);
  v97 = OpaqueTypeMetadata2;
  v19 = sub_21E13FB54();
  v105 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v102 = &v92 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48);
  v109 = v19;
  v21 = sub_21E13FB54();
  v110 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v104 = &v92 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  v111 = v21;
  v23 = sub_21E13FB54();
  v112 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v107 = &v92 - v24;
  sub_21E1407F4();
  v113 = v23;
  v93 = sub_21E13FB54();
  v115 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v106 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v108 = &v92 - v27;
  MEMORY[0x28223BE20](v28);
  v116 = &v92 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98B8);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v92 - v32;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9810);
  MEMORY[0x28223BE20](v103);
  v114 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v92 - v36;
  v121 = a2;
  v122 = a3;
  v38 = *(type metadata accessor for ResultFooterView() + 36);
  v125 = a1;
  v39 = (a1 + v38);
  v40 = v39[1];
  if (v40)
  {
    v41 = *v39;
    KeyPath = swift_getKeyPath();
    v92 = v10;
    v43 = v37;
    v44 = KeyPath;
    v134[0] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98E0);
    sub_21E141704();
    v45 = v126;
    *&v126 = v41;
    *(&v126 + 1) = v40;
    v127 = 0x4034000000000000;
    v128 = v44;
    v129 = 0;
    v130 = v45;
    sub_21DFE0F24();
    sub_21E141164();
    v46 = v128;
    LOBYTE(v44) = v129;
    v47 = v130;

    v48 = v44;
    v37 = v43;
    v10 = v92;
    sub_21DFE0F78(v46, v48);

    sub_21DFE0F84(v33, v37);
    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  (*(v31 + 56))(v37, v49, 1, v30);
  sub_21E140994();
  sub_21E140A04();
  sub_21E140A54();

  v50 = v123;
  sub_21E141204();

  v51 = *MEMORY[0x277CDFA10];
  v52 = sub_21E13F9D4();
  v53 = v124;
  (*(*(v52 - 8) + 104))(v124, v51, v52);
  sub_21DFE0D9C(&unk_280F68FD8, MEMORY[0x277CDFA28]);
  result = sub_21E142074();
  if (result)
  {
    v55 = v94;
    v56 = v101;
    v57 = v98;
    v58 = v95;
    sub_21E140F74();
    sub_21DF23614(v53, &qword_27CEA6DF8);
    (*(v100 + 8))(v50, v56);
    *&v126 = v56;
    *(&v126 + 1) = v10;
    v127 = v57;
    v128 = v58;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v60 = v102;
    v61 = v97;
    sub_21E141034();
    (*(v96 + 8))(v55, v61);
    v124 = v37;
    v62 = v117;
    sub_21DFDE4E4(v117);
    v63 = v99;
    v64 = v118;
    v65 = v120;
    (*(v99 + 104))(v118, *MEMORY[0x277CDF3C0], v120);
    v66 = sub_21E13F434();
    v67 = *(v63 + 8);
    v67(v64, v65);
    v67(v62, v65);
    v68 = objc_opt_self();
    v69 = &selRef_systemLightGrayColor;
    if ((v66 & 1) == 0)
    {
      v69 = &selRef_systemDarkGrayColor;
    }

    v70 = [v68 *v69];
    sub_21E141414();
    v71 = sub_21DF23E5C(&qword_27CEA98C0, &qword_27CEA9818);
    v143 = OpaqueTypeConformance2;
    v144 = v71;
    v72 = v109;
    v73 = swift_getWitnessTable();
    v74 = v104;
    sub_21E140F84();

    (*(v105 + 8))(v60, v72);
    v75 = sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    v141 = v73;
    v142 = v75;
    v76 = v111;
    v77 = swift_getWitnessTable();
    v78 = v107;
    sub_21E1413B4();
    (*(v110 + 8))(v74, v76);
    v79 = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
    v139 = v77;
    v140 = v79;
    v80 = v113;
    v81 = swift_getWitnessTable();
    v82 = v108;
    sub_21E141164();
    (*(v112 + 8))(v78, v80);
    v83 = sub_21DFE0D9C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    v137 = v81;
    v138 = v83;
    v84 = v93;
    v85 = swift_getWitnessTable();
    v86 = v116;
    sub_21DFE2A0C(v82, v84, v85);
    v87 = v115;
    v88 = *(v115 + 8);
    v88(v82, v84);
    v89 = v124;
    v90 = v114;
    sub_21DF236C0(v124, v114, &qword_27CEA9810);
    *&v126 = v90;
    v91 = v106;
    (*(v87 + 16))(v106, v86, v84);
    v135 = 0;
    v136 = 0;
    *(&v126 + 1) = v91;
    v127 = &v135;
    v134[0] = v103;
    v134[1] = v84;
    v134[2] = MEMORY[0x277CE1180];
    v131 = sub_21DFE0DE4();
    v132 = v85;
    v133 = MEMORY[0x277CE1170];
    sub_21E012D74(&v126, 3uLL, v134);
    v88(v86, v84);
    sub_21DF23614(v89, &qword_27CEA9810);
    v88(v91, v84);
    return sub_21DF23614(v90, &qword_27CEA9810);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DFE0758()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    sub_21DFE0CEC();
    if (v1 <= 0x3F)
    {
      sub_21DFB9568();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21DFE0810(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_21E13F444() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v13 = ((v10 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v10) + v11;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      v21 = ((((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v23 = *(*(*(a3 + 16) - 8) + 48);

        return v23((v21 + v10 + 16) & ~v10);
      }

      else
      {
        v22 = *v21;
        if (v22 >= 0xFFFFFFFF)
        {
          LODWORD(v22) = -1;
        }

        return (v22 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_21DFE0A2C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_21E13F444() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = ((v12 + (((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + *(v10 + 64);
  if (a3 <= v13)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
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

  if (v13 < a2)
  {
    v16 = ~v13 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
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
LABEL_48:
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
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v21 = (((&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v22 = *(v10 + 56);

    v22((v21 + v12 + 16) & ~v12, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v21 = a2 & 0x7FFFFFFF;
    v21[1] = 0;
  }

  else
  {
    *v21 = (a2 - 1);
  }
}

void sub_21DFE0CEC()
{
  if (!qword_27CEA98A8)
  {
    v0 = sub_21E142724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEA98A8);
    }
  }
}

unint64_t sub_21DFE0D48()
{
  result = qword_27CEA98B0;
  if (!qword_27CEA98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA98B0);
  }

  return result;
}

uint64_t sub_21DFE0D9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21DFE0DE4()
{
  result = qword_27CEA98C8;
  if (!qword_27CEA98C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9810);
    sub_21DFE0E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA98C8);
  }

  return result;
}

unint64_t sub_21DFE0E68()
{
  result = qword_27CEA98D0;
  if (!qword_27CEA98D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA98B8);
    sub_21DFE0F24();
    sub_21DFE0D9C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA98D0);
  }

  return result;
}

unint64_t sub_21DFE0F24()
{
  result = qword_27CEA98D8;
  if (!qword_27CEA98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA98D8);
  }

  return result;
}

uint64_t sub_21DFE0F78(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21DFE0F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t View.onSceneStateChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;

  MEMORY[0x223D51B40](v7, a3, &type metadata for SceneStateObserverModifier, a4);
}

uint64_t SceneState.hashValue.getter()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t SceneStateObserverModifier.init(onSceneStateChange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SceneStateObserverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98E8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98F0) + 36));
  *v8 = 0u;
  v8[1] = 0u;
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98F8);
  sub_21E1425F4();

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  v13 = (a2 + *(v11 + 56));
  *v13 = sub_21DFE1364;
  v13[1] = v12;

  v14 = [v9 defaultCenter];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9900);
  sub_21E1425F4();

  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v5;
  v17 = (a2 + *(v15 + 56));
  *v17 = sub_21DFE139C;
  v17[1] = v16;

  v18 = [v9 defaultCenter];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9908);
  sub_21E1425F4();

  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v5;
  v21 = (a2 + *(v19 + 56));
  *v21 = sub_21DFE13D8;
  v21[1] = v20;
}

uint64_t sub_21DFE1364()
{
  v1 = *(v0 + 16);
  v3 = 0;
  return v1(&v3);
}

uint64_t sub_21DFE139C()
{
  v1 = *(v0 + 16);
  v3 = 2;
  return v1(&v3);
}

uint64_t sub_21DFE13D8()
{
  v1 = *(v0 + 16);
  v3 = 1;
  return v1(&v3);
}

unint64_t sub_21DFE1418()
{
  result = qword_27CEA9910;
  if (!qword_27CEA9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9910);
  }

  return result;
}

unint64_t sub_21DFE14AC()
{
  result = qword_280F68E98;
  if (!qword_280F68E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68E98);
  }

  return result;
}

id SiriSetupViewController.init(showSiriOnboarding:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  v12 = type metadata accessor for SiriSetupViewController.Delegate();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate__showSiriOnboarding];
  *v14 = a1;
  *(v14 + 1) = a2;
  v14[16] = a3;
  v15 = &v13[OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate_completion];
  *v15 = a4;
  *(v15 + 1) = a5;
  v17.receiver = v13;
  v17.super_class = v12;

  result = objc_msgSendSuper2(&v17, sel_init);
  *(a6 + 24) = result;
  return result;
}

id SiriSetupViewController.makeUIViewController(context:)()
{
  v1 = sub_21E13D114();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13D384();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v71 = sub_21E1420E4();
  v67 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v48 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = sub_21E13D134();
  MEMORY[0x28223BE20](v18 - 8);
  v63 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v70 = *(v0 + 24);
  v21 = [objc_allocWithZone(MEMORY[0x277CEF690]) init];
  v22 = [v21 siriSetupView];
  if (v22)
  {
    v69 = v6;
    v23 = v22;
    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (v65)
    {
      v57 = v23;
      v58 = v21;
      v66 = v2;
      sub_21E142084();
      v56 = sub_21DF23B80();
      v24 = sub_21E1426B4();
      v61 = v4;
      v62 = v1;
      if (!v24)
      {
        v24 = [objc_opt_self() mainBundle];
      }

      v25 = v24;
      v26 = v69;
      sub_21E13D374();
      v54 = *(v67 + 16);
      v55 = v67 + 16;
      v54(v68, v17, v71);
      v52 = *(v26 + 16);
      v53 = v26 + 16;
      v52(v8, v11, v5);
      v27 = v5;
      v28 = [v25 bundleURL];
      v29 = v11;
      v30 = v61;
      sub_21E13D214();

      v31 = *(v66 + 104);
      v51 = *MEMORY[0x277CC9118];
      v66 += 104;
      v50 = v31;
      v31(v30);
      v59 = v8;
      v32 = v29;
      sub_21E13D144();

      v33 = *(v26 + 8);
      v60 = v27;
      v69 = v26 + 8;
      v49 = v33;
      v33(v29, v27);
      v67 = *(v67 + 8);
      (v67)(v17, v71);
      sub_21E142194();
      v34 = sub_21E1420F4();

      v35 = v65;
      [v65 setTitle_];

      v36 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      [v35 setContentView_];

      v37 = v64;
      sub_21E142084();
      v38 = sub_21E1426B4();
      if (!v38)
      {
        v38 = [objc_opt_self() mainBundle];
      }

      v39 = v38;
      sub_21E13D374();
      v40 = v71;
      v54(v68, v37, v71);
      v41 = v60;
      v52(v59, v32, v60);
      v42 = [v39 bundleURL];
      v43 = v32;
      v44 = v61;
      sub_21E13D214();

      v50(v44, v51, v62);
      sub_21E13D144();

      v49(v43, v41);
      (v67)(v37, v40);
      sub_21E142194();
      v45 = sub_21E1420F4();

      [v65 setSubtitle_];

      v21 = v58;
    }

    else
    {
    }
  }

  [v21 setDelegate_];
  v46 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v46;
}

void *SiriSetupViewController.updateUIViewController(_:context:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = [a1 topViewController];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 setDelegate_];
    }
  }

  v13 = v3;
  v14 = v4;
  v15 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  result = MEMORY[0x223D52200](&v12, v10);
  if ((v12 & 1) == 0)
  {
    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_21DFE1ED4()
{
  v1 = sub_21E13F1B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21E13EC04();
  v5 = v0;
  v6 = sub_21E13F1A4();
  v7 = sub_21E142584();
  v8 = &property descriptor for NewSaliencyModel.entities;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    v10 = [objc_opt_self() sharedPreferences];
    v11 = [v10 assistantIsEnabled];

    v8 = &property descriptor for NewSaliencyModel.entities;
    *(v9 + 4) = v11;

    _os_log_impl(&dword_21DF05000, v6, v7, "Siri setup view complete; siriEnabled = %{BOOL}d", v9, 8u);
    MEMORY[0x223D540B0](v9, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  (*(v2 + 8))(v4, v1);
  v12 = *(&v5[1].isa + OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate__showSiriOnboarding);
  v13 = *(&v5[2].isa + OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate__showSiriOnboarding);
  v17 = *(&v5->isa + OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate__showSiriOnboarding);
  v18 = v12;
  v19 = v13;
  v16[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  sub_21E1419D4();
  v14 = [objc_opt_self() v8[203]];
  v15 = [v14 assistantIsEnabled];

  if (v15)
  {
    (*(&v5->isa + OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate_completion))();
  }
}

id sub_21DFE2148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSetupViewController.Delegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DFE21E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DFE23F4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21DFE2248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DFE23F4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21DFE22AC()
{
  sub_21DFE23F4();
  sub_21E1407A4();
  __break(1u);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21DFE22E8(uint64_t a1, int a2)
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

uint64_t sub_21DFE2330(uint64_t result, int a2, int a3)
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

uint64_t sub_21DFE238C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DFE23F4()
{
  result = qword_27CEA9998;
  if (!qword_27CEA9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9998);
  }

  return result;
}

uint64_t sub_21DFE248C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E1402E4();
  v5 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_21E1402F4();
}

uint64_t sub_21DFE2584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21E1402E4();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_21E1402F4();
}

uint64_t View.ifCondition<A>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v42 = a6;
  v35 = a3;
  v36 = a2;
  v38 = a1;
  v37 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  v40 = sub_21E140304();
  v24 = *(v40 - 8);
  v25 = MEMORY[0x28223BE20](v40);
  v27 = &v35 - v26;
  if (v38)
  {
    v36(v39, v25);
    v28 = *(v17 + 16);
    v28(v23, v20, a5);
    v39 = a8;
    v29 = *(v17 + 8);
    v29(v20, a5);
    v28(v20, v23, a5);
    sub_21DFE248C(v20, a5);
    v29(v20, a5);
    v29(v23, a5);
    a8 = v39;
  }

  else
  {
    v30 = v37;
    v31 = *(v37 + 16);
    v31(v15, v39, a4, v25);
    (v31)(v12, v15, a4);
    sub_21DFE2584(v12, a5, a4);
    v32 = *(v30 + 8);
    v32(v12, a4);
    v32(v15, a4);
  }

  v43 = v41;
  v44 = v42;
  v33 = v40;
  swift_getWitnessTable();
  (*(v24 + 16))(a8, v27, v33);
  return (*(v24 + 8))(v27, v33);
}

uint64_t sub_21DFE2A20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v3 = sub_21E13F524();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v24 = sub_21E13F7B4();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = *a1;
  sub_21E13F884();
  sub_21DF4F6CC();
  sub_21E1424D4();
  sub_21E142504();
  result = sub_21E1424F4();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = 0;
    if (v14 < result - 1)
    {
      sub_21E13F894();
      sub_21E13F7A4();
      v17 = *(v8 + 8);
      v18 = v13;
      v19 = v24;
      v17(v18, v24);
      sub_21E13F894();
      v20 = v25;
      sub_21E13F7A4();
      v17(v10, v19);
      sub_21E13F514();
      v16 = v21;
      v22 = v27;
      v23 = *(v26 + 8);
      v23(v20, v27);
      result = (v23)(v7, v22);
    }

    *v28 = v16;
  }

  return result;
}

void (*sub_21DFE2CEC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21E13F304();
  return sub_21DF4F628;
}

unint64_t sub_21DFE2D78()
{
  result = qword_27CEA99A0;
  if (!qword_27CEA99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99A0);
  }

  return result;
}

uint64_t sub_21DFE2DCC(uint64_t a1, uint64_t a2, char a3)
{
  *&v55.f64[0] = sub_21E13F7B4();
  v6 = *(*&v55.f64[0] - 8);
  MEMORY[0x28223BE20](*&v55.f64[0]);
  v54 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    v52 = COERCE_DOUBLE(sub_21E13FC54());
    v53 = v8;
    v10 = v9;
    v12 = v11;
    goto LABEL_14;
  }

  sub_21E13F884();
  sub_21DF4F6CC();
  sub_21E1424D4();
  result = sub_21E142504();
  if (v58 < v57[0])
  {
    goto LABEL_27;
  }

  v14 = *&a2;
  MEMORY[0x28223BE20](result);
  *&v49[-16] = a1;
  v17 = sub_21E0B027C(sub_21DFE37F8, &v49[-32], v15, v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    if (v18 > 3)
    {
      v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      v21 = (v17 + 48);
      v20 = 0.0;
      v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
        v21 += 4;
        v22 -= 4;
      }

      while (v22);
      if (v18 == v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0.0;
    }

    v23 = v18 - v19;
    v24 = (v17 + 8 * v19 + 32);
    do
    {
      v25 = *v24++;
      v20 = v20 + v25;
      --v23;
    }

    while (v23);
  }

  else
  {
    v20 = 0.0;
  }

LABEL_13:

  sub_21E1424D4();
  sub_21E142504();
  v26 = sub_21E1424F4();
  v10 = 0;
  v53 = 0;
  v52 = (v14 - v20) / v26;
  v12 = 1;
LABEL_14:
  v27 = sub_21E13F884();
  sub_21DF4F6CC();
  v28 = sub_21E1424E4();
  v30 = MEMORY[0x277D84F90];
  if (v28)
  {
    v31 = v28;
    v58 = MEMORY[0x277D84F90];
    sub_21DF5C0B8(0, v28 & ~(v28 >> 63), 0);
    v30 = v58;
    result = sub_21E1424D4();
    if ((v31 & 0x8000000000000000) == 0)
    {
      v51 = (v6 + 16);
      v32 = (v6 + 8);
      v33 = v10 & 1;
      v50 = v12 & 1;
      do
      {
        v34 = sub_21E142524();
        v35 = v27;
        v37 = v54;
        v36 = v55.f64[0];
        (*v51)(v54);
        v34(v57, 0);
        LOBYTE(v57[0]) = v33;
        v56 = v50;
        sub_21E13F784();
        v39 = v38;
        v41 = v40;
        (*v32)(v37, COERCE_FLOAT64_T(*&v36));
        v58 = v30;
        v43 = *(v30 + 16);
        v42 = *(v30 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_21DF5C0B8((v42 > 1), v43 + 1, 1);
          v30 = v58;
        }

        *(v30 + 16) = v43 + 1;
        v44 = v30 + 16 * v43;
        *(v44 + 32) = v39;
        *(v44 + 40) = v41;
        sub_21E142514();
        --v31;
        v27 = v35;
      }

      while (v31);
      goto LABEL_20;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

LABEL_20:
  v45 = *(v30 + 16);
  if (v45)
  {
    v46 = (v30 + 32);
    v47 = 0uLL;
    do
    {
      v48 = *v46++;
      v47 = vbslq_s8(vcgeq_f64(v48, v47), v48, v47);
      --v45;
    }

    while (v45);
    v55 = v47;
  }

  else
  {
    v29.f64[0] = 0.0;
    v55 = v29;
  }
}

uint64_t sub_21DFE31F8(uint64_t a1, char a2, uint64_t a3)
{
  sub_21E13F884();
  sub_21DF4F6CC();
  sub_21E1424D4();
  result = sub_21E142504();
  if (v20 != v19)
  {
    sub_21DFE2DCC(a3, a1, a2 & 1);
    sub_21E1424D4();
    result = sub_21E142504();
    if (v19 < v20)
    {
      __break(1u);
      return result;
    }

    MEMORY[0x28223BE20](result);
    v18[2] = a3;
    v9 = sub_21E0B027C(sub_21DFE37F8, v18, v7, v8);
    v10 = *(v9 + 16);
    if (!v10)
    {
      goto LABEL_12;
    }

    if (v10 > 3)
    {
      v11 = v10 & 0x7FFFFFFFFFFFFFFCLL;
      v13 = (v9 + 48);
      v12 = 0.0;
      v14 = v10 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v12 = v12 + *(v13 - 2) + *(v13 - 1) + *v13 + v13[1];
        v13 += 4;
        v14 -= 4;
      }

      while (v14);
      if (v10 == v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0.0;
    }

    v15 = v10 - v11;
    v16 = (v9 + 8 * v11 + 32);
    do
    {
      v17 = *v16++;
      v12 = v12 + v17;
      --v15;
    }

    while (v15);
LABEL_12:

    if (a2)
    {
      sub_21E1424D4();
      sub_21E142504();
      return sub_21E1424F4();
    }
  }

  return result;
}

uint64_t sub_21DFE33FC(uint64_t a1, char a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = sub_21E13F7B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13F884();
  sub_21DF4F6CC();
  sub_21E1424D4();
  result = sub_21E142504();
  if (v48 != v47)
  {
    sub_21DFE2DCC(a3, a1, a2 & 1);
    v20 = v19;
    v22 = v21;
    sub_21E1424D4();
    result = sub_21E142504();
    if (v47 < v48)
    {
      __break(1u);
      goto LABEL_25;
    }

    MEMORY[0x28223BE20](result);
    *(&v44 - 2) = a3;
    v25 = sub_21E0B027C(sub_21DFE37D8, (&v44 - 4), v23, v24);
    v26 = v25;
    v27 = *(v25 + 16);
    if (!v27)
    {
      v29 = 0.0;
      goto LABEL_12;
    }

    if (v27 > 3)
    {
      v28 = v27 & 0x7FFFFFFFFFFFFFFCLL;
      v30 = (v25 + 48);
      v29 = 0.0;
      v31 = v27 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v29 = v29 + *(v30 - 2) + *(v30 - 1) + *v30 + v30[1];
        v30 += 4;
        v31 -= 4;
      }

      while (v31);
      if (v27 == v28)
      {
LABEL_12:
        if ((a2 & 1) == 0)
        {
          v35 = *&a1 - v29;
          sub_21E1424D4();
          sub_21E142504();
          v20 = v35 / sub_21E1424F4();
        }

        v49.origin.x = a4;
        v49.origin.y = a5;
        v49.size.width = a6;
        v49.size.height = a7;
        MinX = CGRectGetMinX(v49);
        sub_21E1424D4();
        result = sub_21E142504();
        v38 = v47;
        v37 = v48;
        if (v47 >= v48)
        {
          v45 = v26;
          if (v48 == v47)
          {
          }

          if (v48 < v47)
          {
            if ((v48 & 0x8000000000000000) == 0)
            {
              v39 = *(v45 + 16);
              if (v48 < v39 && v47 - 1 < v39)
              {
                v46 = v22;
                v40 = MinX + v20 * 0.5;
                v41 = v15;
                v42 = v45 + 32;
                v43 = (v41 + 8);
                do
                {
                  sub_21E13F894();
                  v50.origin.x = a4;
                  v50.origin.y = a5;
                  v50.size.width = a6;
                  v50.size.height = a7;
                  CGRectGetMidY(v50);
                  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
                  LOBYTE(v48) = 0;
                  LOBYTE(v47) = 0;
                  sub_21E13F794();
                  (*v43)(v17, v14);
                  v40 = v40 + v20 + *(v42 + 8 * v37++);
                }

                while (v38 != v37);
              }

LABEL_28:
              __break(1u);
              return result;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      v28 = 0;
      v29 = 0.0;
    }

    v32 = v27 - v28;
    v33 = (v25 + 8 * v28 + 32);
    do
    {
      v34 = *v33++;
      v29 = v29 + v34;
      --v32;
    }

    while (v32);
    goto LABEL_12;
  }

  return result;
}

uint64_t ImageSearchError.displayMessage(for:)(uint64_t a1)
{
  v3 = sub_21E1420C4();
  MEMORY[0x28223BE20](v3 - 8);
  v30[2] = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13D384();
  MEMORY[0x28223BE20](v5 - 8);
  v30[4] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E1420E4();
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v30[3] = v30 - v9;
  MEMORY[0x28223BE20](v10);
  v30[0] = v30 - v11;
  MEMORY[0x28223BE20](v12);
  v13 = sub_21E13DDD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21E13E1A4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 + 16);
  v30[1] = a1;
  v22(v21, a1, v17, v19);
  v23 = (*(v18 + 88))(v21, v17);
  if (v23 == *MEMORY[0x277D79398])
  {
    (*(v14 + 16))(v16, v1, v13);
    v24 = (*(v14 + 88))(v16, v13);
    if (v24 == *MEMORY[0x277D791E0])
    {
      sub_21E142084();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
LABEL_11:
        v27 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      if (v24 != *MEMORY[0x277D791D8])
      {
        sub_21E1420B4();
        sub_21E1420A4();
        sub_21E13E174();
        sub_21E142094();

        sub_21E1420A4();
        sub_21E1420D4();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v29 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v28 = sub_21E142184();
        (*(v14 + 8))(v16, v13);
        goto LABEL_16;
      }

      sub_21E142084();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        goto LABEL_11;
      }
    }

    sub_21E13D374();
    v28 = sub_21E142184();
LABEL_16:
    (*(v18 + 8))(v21, v17);
    return v28;
  }

  if (v23 == *MEMORY[0x277D79390])
  {
    sub_21E142084();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v25 = [objc_opt_self() mainBundle];
    }

    sub_21E13D374();
    return sub_21E142184();
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t NewActionModel.localizedTitle.getter()
{
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t NewActionModel.isPartneredSearchAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_21E13D994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_21DFE76F0(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21DF23614(v2, &qword_27CEA6D98);
  }

  else
  {
    v10 = *(v4 + 32);
    v10(v9, v2, v3);
    v10(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D78F28])
    {
      return 1;
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t NewActionModel.pill.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEA6D48);
  v7 = sub_21DFE85D0(v5, a1);
  sub_21DF23614(v5, &qword_27CEA6D48);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3B4();
  }

  else
  {
    swift_beginAccess();
    sub_21DF35A68(a1, v1 + v6, &qword_27CEA6D48);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEA6D48);
}

uint64_t NewActionModel.isTextAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_21E13D994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_21DFE76F0(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21DF23614(v2, &qword_27CEA6D98);
  }

  else
  {
    v10 = *(v4 + 32);
    v10(v9, v2, v3);
    v10(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D78F38])
    {
      (*(v4 + 96))(v6, v3);
      v11 = sub_21E13E3F4();
      (*(*(v11 - 8) + 8))(v6, v11);
      return 1;
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t sub_21DFE4554()
{
  v0 = sub_21E13E3F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_21E13D994();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_21DFE76F0(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21DF23614(v6, &qword_27CEA6D98);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D78F38])
    {
      (*(v8 + 96))(v10, v7);
      (*(v1 + 32))(v3, v10, v0);
      v14 = sub_21E13E3E4();
      (*(v1 + 8))(v3, v0);
      (*(v8 + 8))(v13, v7);
      return v14;
    }

    v16 = *(v8 + 8);
    v16(v13, v7);
    v16(v10, v7);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21DFE4884@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v7 = *a1;
  swift_beginAccess();
  return sub_21DF236C0(v9 + v7, a3, a2);
}

uint64_t sub_21DFE497C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t sub_21DFE49CC()
{
  v1 = sub_21E13EE74();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21E13EE94();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13EEE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  swift_getKeyPath();
  v23 = v0;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v0 + v12, v11, &qword_27CEA6D48);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_21DF23614(v11, &qword_27CEA6D48);
    v13 = 0;
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_21DF23614(v11, &qword_27CEA6D48);
    sub_21E13EEA4();
    (*(v6 + 8))(v8, v5);
    v15 = v21;
    v14 = v22;
    v16 = v19;
    (*(v21 + 104))(v19, *MEMORY[0x277D79670], v22);
    v13 = sub_21E13EE84();
    (*(v15 + 8))(v16, v14);
    (*(v18 + 8))(v4, v20);
  }

  return v13 & 1;
}

BOOL sub_21DFE4D84()
{
  v1 = v0;
  v2 = sub_21E13D994();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13EEB4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13EEE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  swift_getKeyPath();
  v28 = v0;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v1 + v14, v13, &qword_27CEA6D48);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    sub_21DF23614(v13, &qword_27CEA6D48);
  }

  else
  {
    v16 = v23;
    v15 = v24;
    v17 = v25;
    (*(v8 + 16))(v10, v13, v7);
    sub_21DF23614(v13, &qword_27CEA6D48);
    sub_21E13EEC4();
    (*(v8 + 8))(v10, v7);
    v19 = v26;
    v18 = v27;
    if ((*(v26 + 88))(v6, v27) == *MEMORY[0x277D79680])
    {
      (*(v19 + 96))(v6, v18);
      v20 = v17;
      (*(v15 + 32))(v16, v6, v17);
      v21 = (*(v15 + 88))(v16, v17) == *MEMORY[0x277D78F30];
      (*(v15 + 8))(v16, v20);
      return v21;
    }

    (*(v19 + 8))(v6, v18);
  }

  return 0;
}

uint64_t static NewActionModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21E1423C4();
  v5[2] = a1;
  v5[3] = a2;
  return sub_21E0C372C(sub_21DF35578, v5, "VisualIntelligenceUI/NewActionModel.swift") & 1;
}

uint64_t NewActionModel.__allocating_init(title:systemImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  NewActionModel.init(title:systemImage:)(a1, a2, a3, a4);
  return v8;
}

uint64_t NewActionModel.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21DFE52B8()
{
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  return *(v0 + 32);
}

uint64_t sub_21DFE5358@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_21DFE5400(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DFE5508()
{
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v1 = *(v0 + 40);
  sub_21DF09028(v1);
  return v1;
}

uint64_t sub_21DFE55BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  sub_21DF09028(a2);
  return sub_21DF1F1DC(v3);
}

uint64_t sub_21DFE5608@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t NewActionModel.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (sub_21E142B14() & 1) != 0)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21DFE5834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
}

void (*NewActionModel.localizedTitle.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DFE59E0;
}

uint64_t NewActionModel.systemImage.getter()
{
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_21DFE5AB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  a2[1] = v4;
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t NewActionModel.systemImage.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88) == a1 && *(v2 + 96) == a2;
  if (v5 || (sub_21E142B14() & 1) != 0)
  {
    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21DFE5D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
}

void (*NewActionModel.systemImage.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DFE5ED0;
}

BOOL NewActionModel.isTextDataDetectorAction.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  swift_getKeyPath();
  v10 = v0;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  swift_beginAccess();
  sub_21DF236C0(v1 + v5, v4, &qword_27CEA77B8);
  v6 = sub_21E13F274();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_21DF23614(v4, &qword_27CEA77B8);
  return v7;
}

uint64_t NewActionModel.semanticDataDetectorActionable.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEA77B8);
  v7 = sub_21DFE8964(v5, a1);
  sub_21DF23614(v5, &qword_27CEA77B8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3B4();
  }

  else
  {
    swift_beginAccess();
    sub_21DF35A68(a1, v1 + v6, &qword_27CEA77B8);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEA77B8);
}

void (*NewActionModel.semanticDataDetectorActionable.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DFE641C;
}

uint64_t sub_21DFE644C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v8 = *a2;
  swift_beginAccess();
  return sub_21DF236C0(v7 + v8, a4, a3);
}

uint64_t sub_21DFE6558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_21DF236C0(a1, &v14 - v11, a5);
  return a7(v12);
}

void (*NewActionModel.pill.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DFE674C;
}

uint64_t NewActionModel.isSelected.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t NewActionModel.isSelected.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DFE6940(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*NewActionModel.isSelected.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DFE6AE4;
}

uint64_t sub_21DFE6AF0()
{
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  return *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType);
}

uint64_t sub_21DFE6B98(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t NewActionModel.init(pill:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  v7 = sub_21E13F274();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  v9 = sub_21E13EEE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = 1;
  sub_21E13D3F4();
  *(v1 + 16) = sub_21E13EE54();
  *(v1 + 24) = v12;
  *(v1 + 56) = sub_21E13EE34();
  *(v1 + 64) = v13;
  *(v1 + 88) = sub_21E13EED4();
  *(v1 + 96) = v14;
  (*(v10 + 16))(v5, a1, v9);
  v11(v5, 0, 1, v9);
  NewActionModel.pill.setter(v5);
  v15 = sub_21E13EE34();
  NewActionModel.localizedTitle.setter(v15, v16);
  v17 = sub_21E13EED4();
  NewActionModel.systemImage.setter(v17, v18);
  (*(v10 + 8))(a1, v9);
  return v1;
}

uint64_t type metadata accessor for NewActionModel()
{
  result = qword_280F6B818;
  if (!qword_280F6B818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NewActionModel.apply(pill:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_21E13EEE4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  NewActionModel.pill.setter(v4);
  v7 = sub_21E13EE34();
  NewActionModel.localizedTitle.setter(v7, v8);
  v9 = sub_21E13EED4();
  return NewActionModel.systemImage.setter(v9, v10);
}

uint64_t NewActionModel.init(dataDetector:)(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_21E13D344();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 32) = 1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  v11 = sub_21E13F274();
  v12 = *(v11 - 8);
  v28 = *(v12 + 56);
  v28(v2 + v10, 1, 1, v11);
  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  v14 = sub_21E13EEE4();
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected) = 0;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = 1;
  sub_21E13D3F4();
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v15 = sub_21E13D314();
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  *(v2 + 16) = v15;
  *(v2 + 24) = v17;
  v18 = v29;
  v19 = sub_21E13F224();
  v21 = 0x726F746365746544;
  if (v20)
  {
    v21 = v19;
  }

  v22 = 0xE800000000000000;
  if (v20)
  {
    v22 = v20;
  }

  *(v2 + 56) = v21;
  *(v2 + 64) = v22;
  v23 = sub_21E13F254();
  v25 = 0x800000021E15C800;
  v26 = 0xD000000000000013;
  if (v24)
  {
    v26 = v23;
    v25 = v24;
  }

  *(v2 + 88) = v26;
  *(v2 + 96) = v25;
  (*(v12 + 16))(v5, v18, v11);
  v28(v5, 0, 1, v11);
  NewActionModel.semanticDataDetectorActionable.setter(v5);
  (*(v12 + 8))(v18, v11);
  return v2;
}

uint64_t NewActionModel.init(title:systemImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_21E13D344();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 32) = 1;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  v15 = sub_21E13F274();
  (*(*(v15 - 8) + 56))(v5 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  v17 = sub_21E13EEE4();
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected) = 0;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = 1;
  sub_21E13D3F4();
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v18 = sub_21E13D314();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  *(v5 + 16) = v18;
  *(v5 + 24) = v20;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  *(v5 + 88) = a3;
  *(v5 + 96) = a4;
  return v5;
}

BOOL NewActionModel.isStreamingAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_21E13D994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_21DFE76F0(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21DF23614(v2, &qword_27CEA6D98);
    return 0;
  }

  else
  {
    v11 = *(v4 + 32);
    v11(v9, v2, v3);
    v11(v6, v9, v3);
    v10 = (*(v4 + 88))(v6, v3) == *MEMORY[0x277D78F30];
    (*(v4 + 8))(v6, v3);
  }

  return v10;
}

uint64_t sub_21DFE76F0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_21E13EEB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  swift_getKeyPath();
  v25 = v1;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v1 + v15, v4, &qword_27CEA6D48);
  v16 = sub_21E13EEE4();
  if ((*(*(v16 - 8) + 48))(v4, 1, v16))
  {
    sub_21DF23614(v4, &qword_27CEA6D48);
    v17 = sub_21E13D994();
    return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  }

  else
  {
    v19 = v24;
    sub_21E13EEC4();
    sub_21DF23614(v4, &qword_27CEA6D48);
    v20 = *(v6 + 32);
    v20(v14, v11, v5);
    v20(v8, v14, v5);
    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D79680])
    {
      (*(v6 + 96))(v8, v5);
      v21 = sub_21E13D994();
      v22 = *(v21 - 8);
      (*(v22 + 32))(v19, v8, v21);
      return (*(v22 + 56))(v19, 0, 1, v21);
    }

    else
    {
      v23 = sub_21E13D994();
      (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
      return (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t NewActionModel.isPartneredAskAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_21E13D994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_21DFE76F0(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21DF23614(v2, &qword_27CEA6D98);
  }

  else
  {
    v10 = *(v4 + 32);
    v10(v9, v2, v3);
    v10(v6, v9, v3);
    v11 = (*(v4 + 88))(v6, v3);
    if (v11 == *MEMORY[0x277D78F58] || v11 == *MEMORY[0x277D78F48])
    {
      return 1;
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t NewActionModel.deinit()
{

  sub_21DF1F1DC(*(v0 + 40));

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable, &qword_27CEA77B8);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill, &qword_27CEA6D48);
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NewActionModel.__deallocating_deinit()
{
  NewActionModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21DFE7E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    result = sub_21E142B14();
    if ((result & 1) == 0)
    {
      v11 = 0;
      goto LABEL_17;
    }
  }

  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v8 = *(a1 + 32);
  swift_getKeyPath();
  sub_21E13D3C4();

  if (v8 != *(a2 + 32))
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  swift_beginAccess();
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  swift_getKeyPath();

  sub_21E13D3C4();

  swift_beginAccess();
  if (v10 != *(a2 + 56) || v9 != *(a2 + 64))
  {
    v12 = sub_21E142B14();

    if (v12)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_17;
  }

LABEL_12:
  swift_getKeyPath();
  sub_21E13D3C4();

  swift_beginAccess();
  v14 = *(a1 + 88);
  v13 = *(a1 + 96);
  swift_getKeyPath();

  sub_21E13D3C4();

  swift_beginAccess();
  if (v14 == *(a2 + 88) && v13 == *(a2 + 96))
  {

    v11 = 1;
  }

  else
  {
    v15 = sub_21E142B14();

    v11 = v15 & 1;
  }

LABEL_17:
  *a3 = v11;
  return result;
}

uint64_t sub_21DFE8120(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21E1423C4();
  v5[2] = v2;
  v5[3] = v3;
  return sub_21E0C372C(sub_21DF60774, v5, "VisualIntelligenceUI/NewActionModel.swift") & 1;
}

uint64_t NewActionModel.hash(into:)(uint64_t a1)
{
  sub_21E1423C4();
  v4[2] = a1;
  v5 = v1;
  return sub_21E0C38E4(sub_21DFE8D14, v4);
}

uint64_t sub_21DFE8214(uint64_t a1, uint64_t a2)
{
  sub_21E142204();
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  MEMORY[0x223D53460](*(a2 + 32));
  swift_getKeyPath();
  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E142204();

  swift_getKeyPath();
  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E142204();
}

uint64_t NewActionModel.hashValue.getter()
{
  sub_21E142C14();
  sub_21E1423C4();
  v2[2] = &v4;
  v3 = v0;
  sub_21E0C38E4(sub_21DFE90E0, v2);
  return sub_21E142C44();
}

uint64_t sub_21DFE8444()
{
  v1 = *v0;
  sub_21E142C14();
  sub_21E1423C4();
  v3[2] = &v4;
  v3[3] = v1;
  sub_21E0C38E4(sub_21DFE90E0, v3);
  return sub_21E142C44();
}

uint64_t sub_21DFE84D0(uint64_t a1)
{
  v3 = *v1;
  sub_21E1423C4();
  v5[2] = a1;
  v5[3] = v3;
  return sub_21E0C38E4(sub_21DFE90E0, v5);
}

uint64_t sub_21DFE8548()
{
  v1 = *v0;
  sub_21E142C14();
  sub_21E1423C4();
  v3[2] = &v4;
  v3[3] = v1;
  sub_21E0C38E4(sub_21DFE90E0, v3);
  return sub_21E142C44();
}

uint64_t sub_21DFE85D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13EEE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21DF236C0(a1, &v21 - v12, &qword_27CEA6D48);
  sub_21DF236C0(a2, &v13[v15], &qword_27CEA6D48);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21DF236C0(v13, v10, &qword_27CEA6D48);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21DFE9098(&qword_280F69080, MEMORY[0x277D79698]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v13, &qword_27CEA6D48);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEA76B0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEA6D48);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21DFE8964(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13F274();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21DF236C0(a1, &v21 - v12, &qword_27CEA77B8);
  sub_21DF236C0(a2, &v13[v15], &qword_27CEA77B8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21DF236C0(v13, v10, &qword_27CEA77B8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21DFE9098(&qword_27CEA77C0, MEMORY[0x277D796D0]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v13, &qword_27CEA77B8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEA77B0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEA77B8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21DFE8CB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_21DFE8D80()
{
  sub_21DFE8F4C(319, &qword_280F69058, MEMORY[0x277D796D0]);
  if (v0 <= 0x3F)
  {
    sub_21DFE8F4C(319, &qword_280F69078, MEMORY[0x277D79698]);
    if (v1 <= 0x3F)
    {
      sub_21E13D404();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21DFE8F4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E142724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21DFE8FC4()
{
  result = qword_27CEA99A8;
  if (!qword_27CEA99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99A8);
  }

  return result;
}

unint64_t sub_21DFE901C()
{
  result = qword_27CEA99B0;
  if (!qword_27CEA99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99B0);
  }

  return result;
}

uint64_t sub_21DFE9098(unint64_t *a1, void (*a2)(uint64_t))
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

double AppIconView.init(bundleIdentifier:width:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98E0);
  sub_21E141704();
  result = *&v9;
  *(a3 + 40) = v9;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

__n128 AppIconView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_21E141624();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v36 = *v1;
  v37 = v7;
  v38 = v1[2];
  v39 = *(v1 + 6);
  v40 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99B8);
  sub_21E141714();
  if (v21)
  {
    v8 = v21;
    sub_21E1415F4();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v9 = sub_21E141664();

    (*(v4 + 8))(v6, v3);
    sub_21E141CC4();
    sub_21E13F664();
    *&v42[8] = v35;
    *&v42[25] = v19;
    v29 = v32;
    v28 = v34;
    v30 = 0;
    *&v40 = v9;
    *(&v40 + 1) = v31;
    LOBYTE(v41) = v32;
    *(&v41 + 1) = v33;
    v42[0] = v34;
    v42[24] = 1;
    *&v42[41] = *v20;
    *&v42[56] = *&v20[15];
    v43 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99C8);
    sub_21DFEA0B4();
    sub_21DFEA1B4();
    sub_21E1402F4();

    *&v42[32] = v25;
    *&v42[48] = v26;
    v43 = v27;
    v40 = v21;
    v41 = v22;
    *v42 = v23;
    *&v42[16] = v24;
  }

  else
  {
    sub_21E141CC4();
    sub_21E13F664();
    v10 = v31;
    v11 = v33;
    v12 = v35;
    v30 = 1;
    v29 = v32;
    v28 = v34;
    v13 = swift_allocObject();
    v14 = v37;
    *(v13 + 16) = v36;
    *(v13 + 32) = v14;
    *(v13 + 48) = v38;
    *(v13 + 64) = v39;
    LOBYTE(v19) = 1;
    *&v21 = 0;
    BYTE8(v21) = v30;
    *&v22 = v10;
    BYTE8(v22) = v29;
    *&v23 = v11;
    BYTE8(v23) = v28;
    v24 = v12;
    *&v25 = sub_21DFEA074;
    *(&v25 + 1) = v13;
    v26 = 0uLL;
    v27 = 1;
    sub_21DFEA07C(&v36, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99C8);
    sub_21DFEA0B4();
    sub_21DFEA1B4();
    sub_21E1402F4();
  }

  v15 = *&v42[48];
  *(a1 + 64) = *&v42[32];
  *(a1 + 80) = v15;
  *(a1 + 96) = v43;
  v16 = v41;
  *a1 = v40;
  *(a1 + 16) = v16;
  result = *&v42[16];
  *(a1 + 32) = *v42;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21DFE9564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3 - 8];
  sub_21E1423D4();
  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *(a1 + 16);
  *(v6 + 32) = *a1;
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a1 + 32);
  *(v6 + 80) = *(a1 + 48);
  sub_21DFEA07C(a1, v10);
  sub_21DFE9D6C(0, 0, v4, &unk_21E14C430, v6);

  return sub_21DF23614(v4, &qword_27CEAD980);
}

uint64_t sub_21DFE96B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  v4[13] = swift_task_alloc();
  v5 = sub_21E13FF94();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DFE97AC, 0, 0);
}

uint64_t sub_21DFE97AC()
{
  *(v0 + 136) = sub_21E1423C4();
  *(v0 + 144) = sub_21E1423B4();
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DFE9844, v2, v1);
}

uint64_t sub_21DFE9844()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 32);
  *(v0 + 72) = *(v1 + 24);
  *(v0 + 80) = v2;
  if (v2 == 1)
  {
    v3 = *(v0 + 72);
  }

  else
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);

    sub_21E142574();
    v7 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();
    sub_21DF23614(v0 + 72, &qword_27CEA9A18);
    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 88);
  }

  *(v0 + 152) = v3;
  v8 = *(v0 + 96);
  *(v0 + 160) = *v8;
  *(v0 + 168) = v8[1];
  *(v0 + 176) = v8[2];

  return MEMORY[0x2822009F8](sub_21DFE99B0, 0, 0);
}

uint64_t sub_21DFE99B0()
{
  *(v0 + 184) = sub_21E1423B4();
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DFE9A3C, v2, v1);
}

uint64_t sub_21DFE9A3C()
{
  v1 = v0[22];
  v2 = v0[19];

  *(v0 + 24) = sub_21DFEA624(v1, v2);

  return MEMORY[0x2822009F8](sub_21DFE9AD0, 0, 0);
}

uint64_t sub_21DFE9AD0()
{
  v1 = v0[24];
  if (v1)
  {
    v3 = v0[12];
    v2 = v0[13];
    v4 = sub_21E1423F4();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_21DFEA07C(v3, (v0 + 2));
    v5 = v1;
    v6 = sub_21E1423B4();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    v9 = *(v3 + 32);
    v10 = *(v3 + 48);
    v11 = *v3;
    *(v7 + 48) = *(v3 + 16);
    *(v7 + 64) = v9;
    *(v7 + 32) = v11;
    *(v7 + 80) = v10;
    *(v7 + 88) = v5;
    sub_21E0C2E04(0, 0, v2, &unk_21E14C458, v7);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_21DFE9C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_21E1423C4();
  v5[7] = sub_21E1423B4();
  v7 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DFE9CB8, v7, v6);
}

uint64_t sub_21DFE9CB8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  *(v0 + 16) = *(v2 + 40);
  *(v0 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99B8);
  sub_21E141724();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21DFE9D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21DFEA444(a3, v25 - v10);
  v12 = sub_21E1423F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21DF23614(v11, &qword_27CEAD980);
  }

  else
  {
    sub_21E1423E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21E142364();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21E1421D4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21DFEA020@<X0>(void *a1@<X8>)
{
  result = sub_21E13FDE4();
  *a1 = v3;
  return result;
}

unint64_t sub_21DFEA0B4()
{
  result = qword_27CEA99D0;
  if (!qword_27CEA99D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA99C0);
    sub_21DFEA260(&qword_27CEA99D8, &qword_27CEA99E0);
    sub_21DFEA160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99D0);
  }

  return result;
}

unint64_t sub_21DFEA160()
{
  result = qword_27CEA99E8;
  if (!qword_27CEA99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99E8);
  }

  return result;
}

unint64_t sub_21DFEA1B4()
{
  result = qword_27CEA99F0;
  if (!qword_27CEA99F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA99C8);
    sub_21DFEA260(&qword_27CEA99F8, &qword_27CEA9A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99F0);
  }

  return result;
}

uint64_t sub_21DFEA260(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DFEA308()
{
  result = qword_27CEA9A08;
  if (!qword_27CEA9A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9A10);
    sub_21DFEA0B4();
    sub_21DFEA1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A08);
  }

  return result;
}

uint64_t sub_21DFEA394(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DF4AA04;

  return sub_21DFE96B4(a1, v4, v5, v1 + 32);
}

uint64_t sub_21DFEA444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFEA4B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DF8DAF8;

  return sub_21E0E0744(a1, v4);
}

uint64_t sub_21DFEA56C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DF4AA04;

  return sub_21E0E0744(a1, v4);
}

id sub_21DFEA624(double a1, double a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a1 scale:{a1, a2}];
  [v2 setDrawBorder_];
  v3 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v4 = sub_21E1420F4();
  v5 = [v3 initWithBundleIdentifier_];

  v6 = [v5 imageForDescriptor_];
  if (v6)
  {
    v7 = v6;
    if ([v6 placeholder])
    {
      v8 = [v5 prepareImageForDescriptor_];
      v9 = [v8 CGImage];
    }

    else
    {
      v9 = [v7 CGImage];
    }
  }

  else
  {

    return 0;
  }

  return v9;
}

uint64_t sub_21DFEA78C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DF8DAF8;

  return sub_21DFE9C20(a1, v4, v5, (v1 + 4), v6);
}

uint64_t Text.latencyTextStyle()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91D0) + 36);
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  sub_21DF42BEC(a1, a2, a3 & 1);
}

uint64_t LatencyTextStyle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21E1409A4();
  sub_21E1409E4();
  v4 = sub_21E140A54();

  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A20);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A28) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = sub_21E141414();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A30);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_21DFEAA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21E1409A4();
  sub_21E1409E4();
  v4 = sub_21E140A54();

  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A20);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A28) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = sub_21E141414();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A30);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_21DFEAB40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E13FE44();
  *a1 = result;
  return result;
}

uint64_t sub_21DFEAB98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E13FEC4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LatencyTextStyle()
{
  result = qword_27CEA9A38;
  if (!qword_27CEA9A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DFEAC80()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21DFEACEC()
{
  result = qword_27CEA9A48;
  if (!qword_27CEA9A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9A30);
    sub_21DFEADA4();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A48);
  }

  return result;
}

unint64_t sub_21DFEADA4()
{
  result = qword_27CEA9A50;
  if (!qword_27CEA9A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9A28);
    sub_21DF23E5C(&qword_27CEA9A58, &qword_27CEA9A20);
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A50);
  }

  return result;
}

unint64_t sub_21DFEAE88()
{
  result = qword_27CEA91F8;
  if (!qword_27CEA91F8)
  {
    type metadata accessor for LatencyTextStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA91F8);
  }

  return result;
}

void sub_21DFEAEF0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A68);
  if (swift_dynamicCast())
  {

    sub_21DF0DBF0(v6, v9);
    sub_21DF0DBF0(v9, a2);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_21DFEB0DC(v6);
    v5 = sub_21E13D0E4();
    a2[3] = &type metadata for NSErrorWrapper;
    a2[4] = sub_21DFEB144();

    *a2 = v5;
  }
}

uint64_t sub_21DFEB038(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return a3(v5, v6);
}

unint64_t sub_21DFEB088()
{
  result = qword_27CEA9A60;
  if (!qword_27CEA9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A60);
  }

  return result;
}

uint64_t sub_21DFEB0DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DFEB144()
{
  result = qword_27CEA9A78;
  if (!qword_27CEA9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A78);
  }

  return result;
}

uint64_t sub_21DFEB1A8()
{
  v1 = [*v0 localizedDescription];
  v2 = sub_21E142124();

  return v2;
}

uint64_t sub_21DFEB224(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_21E142124();

  return v6;
}

unint64_t sub_21DFEB28C()
{
  result = qword_27CEA9A80;
  if (!qword_27CEA9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A80);
  }

  return result;
}

uint64_t EventLookupResultView.init(state:sessionAnalytics:dismissalAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for EventLookupResultView();
  v11 = a5 + v10[7];
  sub_21E141704();
  *v11 = v17;
  *(v11 + 8) = v18;
  v12 = a5 + v10[8];
  sub_21E141704();
  *v12 = v17;
  *(v12 + 8) = v18;
  v13 = v10[9];
  *(a5 + v13) = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v14 = sub_21E13DDC4();
  result = (*(*(v14 - 8) + 32))(a5, a1, v14);
  *(a5 + v10[5]) = a2;
  v16 = (a5 + v10[6]);
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t type metadata accessor for EventLookupResultView()
{
  result = qword_27CEA9B08;
  if (!qword_27CEA9B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EventLookupResultView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v174 = a1;
  v175 = type metadata accessor for EmptyResultsView();
  MEMORY[0x28223BE20](v175);
  v148 = (v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A88);
  MEMORY[0x28223BE20](v165);
  v5 = v140 - v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A90);
  MEMORY[0x28223BE20](v161);
  v164 = v140 - v6;
  v160 = type metadata accessor for EventLookupResultView();
  v140[0] = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v140[1] = v7;
  v141 = v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for CardSafetyInterstitial();
  MEMORY[0x28223BE20](v162);
  v142 = (v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = sub_21E13DD04();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v155 = v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v154 = v140 - v11;
  MEMORY[0x28223BE20](v12);
  v153 = v140 - v13;
  MEMORY[0x28223BE20](v14);
  v152 = v140 - v15;
  MEMORY[0x28223BE20](v16);
  v151 = v140 - v17;
  MEMORY[0x28223BE20](v18);
  v150 = v140 - v19;
  MEMORY[0x28223BE20](v20);
  v149 = v140 - v21;
  MEMORY[0x28223BE20](v22);
  v157 = v140 - v23;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A98);
  MEMORY[0x28223BE20](v170);
  v163 = v140 - v24;
  v156 = sub_21E13DDB4();
  v25 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v27 = v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9AA0);
  MEMORY[0x28223BE20](v171);
  v173 = v140 - v28;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9AA8);
  MEMORY[0x28223BE20](v167);
  v168 = v140 - v29;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9AB0);
  MEMORY[0x28223BE20](v172);
  v169 = v140 - v30;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91D0);
  MEMORY[0x28223BE20](v143);
  v144 = v140 - v31;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9AB8);
  MEMORY[0x28223BE20](v146);
  v145 = v140 - v32;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9AC0);
  MEMORY[0x28223BE20](v166);
  v147 = v140 - v33;
  v34 = sub_21E13DDC4();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21E13D8D4();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v37, v2, v34, v40);
  v43 = (*(v35 + 88))(v37, v34);
  if (v43 == *MEMORY[0x277D791D0])
  {
    (*(v35 + 96))(v37, v34);
    v148 = v25;
    v44 = v156;
    v25[4](v27, v37, v156);
    v45 = v157;
    sub_21E13DD94();
    v46 = sub_21E13DC84();
    v47 = *(v158 + 8);
    v48 = v45;
    v49 = v159;
    v47(v48, v159);
    v50 = v27;
    v51 = v2;
    v52 = v160;
    if ((v46 & 1) != 0 && (v53 = v51 + *(v160 + 32), v54 = *v53, v55 = *(v53 + 8), LOBYTE(v180) = v54, *(&v180 + 1) = v55, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78), sub_21E141714(), (v176 & 1) == 0))
    {
      v128 = v141;
      sub_21DFED2C4(v51, v141, type metadata accessor for EventLookupResultView);
      v129 = (*(v140[0] + 80) + 16) & ~*(v140[0] + 80);
      v130 = swift_allocObject();
      sub_21DFED030(v128, v130 + v129);
      v131 = sub_21DFED170();
      v133 = v132;
      KeyPath = swift_getKeyPath();
      v135 = v142;
      *v142 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
      swift_storeEnumTagMultiPayload();
      v136 = v162;
      v137 = (v135 + *(v162 + 20));
      *v137 = v131;
      v137[1] = v133;
      v138 = (v135 + *(v136 + 24));
      *v138 = sub_21DFED094;
      v138[1] = v130;
      sub_21DFED2C4(v135, v164, type metadata accessor for CardSafetyInterstitial);
      swift_storeEnumTagMultiPayload();
      sub_21DFECF7C(&qword_27CEA9AE8, type metadata accessor for CardSafetyInterstitial);
      sub_21DFECE90();
      v96 = v163;
      sub_21E1402F4();
      sub_21DFED32C(v135, type metadata accessor for CardSafetyInterstitial);
      v82 = v50;
    }

    else
    {
      v56 = v149;
      sub_21E13DD94();
      v158 = sub_21E13DCA4();
      v157 = v57;
      v47(v56, v49);
      v58 = v150;
      sub_21E13DD94();
      v149 = sub_21E13DCE4();
      v147 = v59;
      v47(v58, v49);
      v150 = v51;
      v60 = v151;
      sub_21E13DD94();
      v61 = type metadata accessor for EventResultView();
      sub_21E13DCF4();
      v47(v60, v49);
      v62 = v152;
      sub_21E13DD94();
      sub_21E13DCD4();
      v47(v62, v49);
      v63 = v153;
      sub_21E13DD94();
      LODWORD(v152) = sub_21E13DCC4();
      v47(v63, v49);
      v64 = v154;
      sub_21E13DD94();
      v153 = sub_21E13DCB4();
      v151 = v65;
      v47(v64, v49);
      v154 = sub_21E13DDA4();
      v66 = v44;
      v67 = v155;
      sub_21E13DD94();
      sub_21E13DC94();
      v47(v67, v49);
      v68 = *(v52 + 24);
      v69 = *&v150[*(v52 + 20)];
      v70 = *&v150[v68];
      v71 = *&v150[v68 + 8];
      type metadata accessor for SharedSuppressPostShutterAction();
      v180 = 0u;
      v181 = 0u;
      v182 = 0;

      sub_21DF09028(v70);
      sub_21DFECF7C(&qword_27CEA77F0, type metadata accessor for SharedSuppressPostShutterAction);
      v44 = v66;
      *v5 = sub_21E13F474();
      v5[8] = v72 & 1;
      *(v5 + 2) = swift_getKeyPath();
      *(v5 + 3) = 0;
      v5[32] = 0;
      v73 = v61[6];
      *&v5[v73] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
      swift_storeEnumTagMultiPayload();
      v74 = v61[7];
      *&v5[v74] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
      swift_storeEnumTagMultiPayload();
      v75 = v61[8];
      *&v5[v75] = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
      v76 = &v5[v61[9]];
      v77 = v157;
      *v76 = v158;
      v76[1] = v77;
      v78 = &v5[v61[10]];
      v79 = v147;
      *v78 = v149;
      *(v78 + 1) = v79;
      v5[v61[13]] = v152 & 1;
      v80 = &v5[v61[14]];
      v81 = v151;
      *v80 = v153;
      *(v80 + 1) = v81;
      *&v5[v61[15]] = v154;
      *&v5[v61[17]] = v69;
      v82 = v50;
      v83 = &v5[v61[18]];
      *v83 = v70;
      v83[1] = v71;
      v84 = &v5[v61[19]];
      LOBYTE(v178) = 0;
      sub_21E141704();
      v85 = *(&v176 + 1);
      *v84 = v176;
      *(v84 + 1) = v85;
      v86 = &v5[v61[20]];
      LOBYTE(v178) = 0;
      sub_21E141704();
      v87 = *(&v176 + 1);
      *v86 = v176;
      *(v86 + 1) = v87;
      v88 = &v5[v61[21]];
      LOBYTE(v178) = 0;
      sub_21E141704();
      v89 = *(&v176 + 1);
      *v88 = v176;
      *(v88 + 1) = v89;
      v90 = &v5[v61[22]];
      v178 = 0;
      v179 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8878);
      sub_21E141704();
      v91 = v177;
      *v90 = v176;
      *(v90 + 2) = v91;
      sub_21DF236C0(&v180, &v176, &qword_27CEA9B00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B00);
      sub_21E141704();
      sub_21DF23614(&v180, &qword_27CEA9B00);
      sub_21E140914();
      sub_21E13F374();
      *&v180 = v92;
      *(&v180 + 1) = v93;
      *&v181 = v94;
      *(&v181 + 1) = v95;
      LOBYTE(v182) = 0;
      sub_21E1405A4();
      sub_21DF236C0(v5, v164, &qword_27CEA9A88);
      swift_storeEnumTagMultiPayload();
      sub_21DFECF7C(&qword_27CEA9AE8, type metadata accessor for CardSafetyInterstitial);
      sub_21DFECE90();
      v96 = v163;
      sub_21E1402F4();
      sub_21DF23614(v5, &qword_27CEA9A88);
    }

    sub_21DF236C0(v96, v168, &qword_27CEA9A98);
    swift_storeEnumTagMultiPayload();
    sub_21DFECC28();
    sub_21DFECDD4();
    v139 = v169;
    sub_21E1402F4();
    sub_21DF236C0(v139, v173, &qword_27CEA9AB0);
    swift_storeEnumTagMultiPayload();
    sub_21DFECB9C();
    sub_21DFECF7C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
    sub_21E1402F4();
    sub_21DF23614(v139, &qword_27CEA9AB0);
    sub_21DF23614(v96, &qword_27CEA9A98);
    return v148[1](v82, v44);
  }

  else if (v43 == *MEMORY[0x277D791A8] || v43 == *MEMORY[0x277D791C0] || v43 == *MEMORY[0x277D79198] || v43 == *MEMORY[0x277D791A0] || v43 == *MEMORY[0x277D791B0] || v43 == *MEMORY[0x277D791B8] || v43 == *MEMORY[0x277D79190])
  {
    (*(v35 + 96))(v37, v34);
    (*(v39 + 32))(v42, v37, v38);
    v113 = sub_21E13D8B4();
    v115 = v114;
    v116 = sub_21E13D8C4();
    v118 = v117;
    v119 = sub_21E13D8A4();
    v121 = v120;
    (*(v39 + 8))(v42, v38);
    v122 = swift_getKeyPath();
    v123 = v148;
    *v148 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    v124 = v175;
    v125 = (v123 + *(v175 + 24));
    *v125 = v113;
    v125[1] = v115;
    v126 = (v123 + v124[7]);
    *v126 = v116;
    v126[1] = v118;
    v127 = (v123 + v124[8]);
    *v127 = v119;
    v127[1] = v121;
    *(v123 + v124[5]) = 0x402C000000000000;
    sub_21DFED2C4(v123, v173, type metadata accessor for EmptyResultsView);
    swift_storeEnumTagMultiPayload();
    sub_21DFECB9C();
    sub_21DFECF7C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
    sub_21E1402F4();
    return sub_21DFED32C(v123, type metadata accessor for EmptyResultsView);
  }

  else if (v43 == *MEMORY[0x277D791C8])
  {
    sub_21E1400D4();
    sub_21DF3ED18(0, &qword_280F68C20);
    if (!sub_21E1426B4())
    {
      v97 = [objc_opt_self() mainBundle];
    }

    v98 = sub_21E140C64();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v105 = *(v143 + 36);
    v106 = swift_getKeyPath();
    v107 = v144;
    *&v144[v105] = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    *v107 = v98;
    *(v107 + 8) = v100;
    *(v107 + 16) = v102 & 1;
    *(v107 + 24) = v104;
    sub_21E13F6B4();
    sub_21E13F694();
    sub_21E13F6C4();

    sub_21E141D84();
    sub_21E13F6F4();

    sub_21E13F6B4();
    sub_21E13F694();
    sub_21E13F6C4();

    sub_21E141D74();
    sub_21E13F6F4();

    v108 = sub_21E13F684();

    v109 = v145;
    sub_21DFED38C(v107, v145);
    *(v109 + *(v146 + 36)) = v108;
    sub_21DFECCE4();
    v110 = v147;
    sub_21E141164();
    sub_21DF23614(v109, &qword_27CEA9AB8);
    sub_21DF236C0(v110, v168, &qword_27CEA9AC0);
    swift_storeEnumTagMultiPayload();
    sub_21DFECC28();
    sub_21DFECDD4();
    v111 = v169;
    sub_21E1402F4();
    sub_21DF236C0(v111, v173, &qword_27CEA9AB0);
    swift_storeEnumTagMultiPayload();
    sub_21DFECB9C();
    sub_21DFECF7C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
    sub_21E1402F4();
    sub_21DF23614(v111, &qword_27CEA9AB0);
    return sub_21DF23614(v110, &qword_27CEA9AC0);
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

unint64_t sub_21DFECB9C()
{
  result = qword_27CEA9AC8;
  if (!qword_27CEA9AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9AB0);
    sub_21DFECC28();
    sub_21DFECDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9AC8);
  }

  return result;
}

unint64_t sub_21DFECC28()
{
  result = qword_27CEA9AD0;
  if (!qword_27CEA9AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9AC0);
    sub_21DFECCE4();
    sub_21DFECF7C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9AD0);
  }

  return result;
}

unint64_t sub_21DFECCE4()
{
  result = qword_27CEA9AD8;
  if (!qword_27CEA9AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9AB8);
    sub_21DFCFB7C();
    sub_21DFECD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9AD8);
  }

  return result;
}

unint64_t sub_21DFECD70()
{
  result = qword_280F68E40;
  if (!qword_280F68E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA6848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68E40);
  }

  return result;
}

unint64_t sub_21DFECDD4()
{
  result = qword_27CEA9AE0;
  if (!qword_27CEA9AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9A98);
    sub_21DFECF7C(&qword_27CEA9AE8, type metadata accessor for CardSafetyInterstitial);
    sub_21DFECE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9AE0);
  }

  return result;
}

unint64_t sub_21DFECE90()
{
  result = qword_27CEA9AF0;
  if (!qword_27CEA9AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9A88);
    sub_21DFECF7C(&qword_27CEA9AF8, type metadata accessor for EventResultView);
    sub_21DFECF7C(&qword_27CEA73D8, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9AF0);
  }

  return result;
}

uint64_t sub_21DFECF7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DFECFC4()
{
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21DFED030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventLookupResultView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFED094()
{
  type metadata accessor for EventLookupResultView();

  return sub_21DFECFC4();
}

uint64_t sub_21DFED0F4()
{
  type metadata accessor for EventLookupResultView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  return sub_21E141724();
}

uint64_t sub_21DFED170()
{
  v0 = sub_21E13D384();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21E1420E4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21E142084();
  sub_21DF3ED18(0, &qword_280F68C20);
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  return sub_21E142184();
}

uint64_t sub_21DFED2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFED32C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21DFED38C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21DFED444()
{
  sub_21E13DDC4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SessionAnalytics();
    if (v1 <= 0x3F)
    {
      sub_21DF8E3BC();
      if (v2 <= 0x3F)
      {
        sub_21DF3EF6C();
        if (v3 <= 0x3F)
        {
          sub_21DF3ED18(319, &qword_27CEA9B18);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_21DFED520()
{
  result = qword_27CEA9B20;
  if (!qword_27CEA9B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B28);
    sub_21DFECB9C();
    sub_21DFECF7C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B20);
  }

  return result;
}

uint64_t VIUITapToRadarButton.init(displayedActions:width:onAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t VIUITapToRadarButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v16 = *v1;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v15[4] = v16;
  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B48);
  sub_21DFEEA24();
  sub_21DFEEBC0();
  sub_21E140AF4();
  v13 = sub_21DF23E5C(&qword_27CEA9B98, &qword_27CEA9B30);
  sub_21E1411D4();
  (*(v3 + 8))(v5, v2);
  v20 = v2;
  v21 = v13;
  swift_getOpaqueTypeConformance2();
  sub_21E141014();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21DFED8D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B80);
  sub_21DFEEC58();
  return sub_21E141AB4();
}

uint64_t sub_21DFED98C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B90);
  sub_21DF23E5C(&qword_27CEA9BB8, &qword_27CEA9BB0);
  sub_21DF23E5C(&qword_27CEA9B88, &qword_27CEA9B90);
  sub_21DFEF1CC(&qword_27CEA9BC0, MEMORY[0x277D794B0]);
  return sub_21E141A84();
}

uint64_t sub_21DFEDB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v57 = a2;
  v58 = a4;
  v55 = a3;
  v61 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BC8);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v50 - v11;
  v53 = sub_21E141A54();
  v12 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E13E444();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v52 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BD0);
  MEMORY[0x28223BE20](v20 - 8);
  v54 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  v26 = *(v15 + 16);
  v56 = a1;
  v26(v19, a1, v14, v23);
  LODWORD(a1) = (*(v15 + 88))(v19, v14);
  v27 = *MEMORY[0x277D794A0];
  (*(v15 + 8))(v19, v14);
  if (a1 == v27)
  {
    v28 = v51;
    sub_21E141A44();
    v29 = v28;
    v30 = v53;
    (*(v12 + 32))(v25, v29, v53);
    v31 = 0;
    v32 = v30;
  }

  else
  {
    v31 = 1;
    v32 = v53;
  }

  (*(v12 + 56))(v25, v31, 1, v32);
  v33 = v52;
  v34 = v56;
  (v26)(v52, v56, v14);
  v35 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v36 = swift_allocObject();
  v37 = v58;
  *(v36 + 16) = v57;
  *(v36 + 24) = a6;
  *(v36 + 32) = v55;
  *(v36 + 40) = v37;
  v38 = (*(v15 + 32))(v36 + v35, v33, v14);
  MEMORY[0x28223BE20](v38);
  v39 = v25;
  *(&v50 - 2) = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BD8);
  sub_21DF23E5C(&qword_27CEA9BE0, &qword_27CEA9BD8);
  v40 = v59;
  sub_21E141764();
  v41 = v54;
  sub_21DFEF284(v25, v54);
  v43 = v62;
  v42 = v63;
  v44 = *(v62 + 16);
  v45 = v60;
  v44(v60, v40, v63);
  v46 = v61;
  sub_21DFEF284(v41, v61);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BE8);
  v44((v46 + *(v47 + 48)), v45, v42);
  v48 = *(v43 + 8);
  v48(v40, v42);
  sub_21DFEF2F4(v39);
  v48(v45, v42);
  return sub_21DFEF2F4(v41);
}

uint64_t sub_21DFEE084@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = 0xEF65736F6E676169;
  v4 = 0x6473795320646E61;
  v5 = sub_21E13E444();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v27 = a1;
  v26 = a1;
  sub_21E141684();
  (*(v6 + 16))(v8, a1, v5);
  v16 = (*(v6 + 88))(v8, v5);
  if (v16 == *MEMORY[0x277D794A8])
  {
    goto LABEL_2;
  }

  if (v16 == *MEMORY[0x277D79488] || v16 == *MEMORY[0x277D794A0])
  {
    goto LABEL_9;
  }

  if (v16 == *MEMORY[0x277D79490])
  {
LABEL_2:
    v17 = MEMORY[0x277D84F90];
LABEL_10:
    v19 = *(v10 + 16);
    v19(v12, v15, v9);
    v20 = v25;
    v19(v25, v12, v9);
    v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BF0) + 48)];
    sub_21DFEF36C(v4, v3, 0, v17);
    sub_21DFEF3B0(v4, v3, 0, v17);
    *v21 = v4;
    v21[1] = v3;
    v21[2] = 0;
    v21[3] = v17;
    v22 = *(v10 + 8);
    v22(v15, v9);
    sub_21DFEF3B0(v4, v3, 0, v17);
    return (v22)(v12, v9);
  }

  if (v16 == *MEMORY[0x277D79498])
  {
LABEL_9:
    v4 = 0;
    v3 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t sub_21DFEE3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E13E444();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x277D794A8])
  {
    v10 = 0xD000000000000014;
    v11 = 0x800000021E15CA20;
LABEL_11:
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = 0;
    *(a2 + 24) = MEMORY[0x277D84F90];
    return result;
  }

  if (result == *MEMORY[0x277D79488])
  {
    v11 = 0xEC0000006F656469;
    v10 = 0x5620686361747441;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277D794A0])
  {
    v11 = 0x800000021E15CA00;
    v10 = 0xD00000000000001DLL;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277D79490])
  {
    v11 = 0xEF6F656469562068;
    v10 = 0x74697720656C6946;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277D79498])
  {
    v11 = 0x800000021E15C9E0;
    v10 = 0xD000000000000015;
    goto LABEL_11;
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t sub_21DFEE604@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21E13E444();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D794A8] || v9 == *MEMORY[0x277D79488] || v9 == *MEMORY[0x277D794A0] || v9 == *MEMORY[0x277D79490] || v9 == *MEMORY[0x277D79498])
  {
    result = sub_21E141634();
    *a2 = result;
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

double sub_21DFEE7F4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21E141624();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  type metadata accessor for NewSaliencyModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_21E141674();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v8 = sub_21E141664();

  (*(v3 + 8))(v5, v2);
  sub_21E141CC4();
  sub_21E13F664();
  LOBYTE(v16) = 1;
  *&v12[6] = v13;
  *&v12[22] = v14;
  *&v12[38] = v15;
  sub_21E140914();
  v16 = 0u;
  v17 = 0u;
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B40);
  sub_21E1405A4();
  *a1 = v8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v9 = *&v12[16];
  *(a1 + 18) = *v12;
  *(a1 + 34) = v9;
  result = *&v12[32];
  *(a1 + 50) = *&v12[32];
  *(a1 + 64) = *&v12[46];
  return result;
}

unint64_t sub_21DFEEA24()
{
  result = qword_27CEA9B50;
  if (!qword_27CEA9B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B40);
    sub_21DFEEAE0();
    sub_21DFEF1CC(&qword_27CEA73D8, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B50);
  }

  return result;
}

unint64_t sub_21DFEEAE0()
{
  result = qword_27CEA9B58;
  if (!qword_27CEA9B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B60);
    sub_21DFC281C();
    sub_21DFEEB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B58);
  }

  return result;
}

unint64_t sub_21DFEEB6C()
{
  result = qword_27CEA9B68;
  if (!qword_27CEA9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B68);
  }

  return result;
}

unint64_t sub_21DFEEBC0()
{
  result = qword_27CEA9B70;
  if (!qword_27CEA9B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B48);
    sub_21DFEEC58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B70);
  }

  return result;
}

unint64_t sub_21DFEEC58()
{
  result = qword_27CEA9B78;
  if (!qword_27CEA9B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B80);
    sub_21DF23E5C(&qword_27CEA9B88, &qword_27CEA9B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B78);
  }

  return result;
}

uint64_t sub_21DFEED24@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v16 = *v1;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v15[4] = v16;
  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B48);
  sub_21DFEEA24();
  sub_21DFEEBC0();
  sub_21E140AF4();
  v13 = sub_21DF23E5C(&qword_27CEA9B98, &qword_27CEA9B30);
  sub_21E1411D4();
  (*(v3 + 8))(v5, v2);
  v20 = v2;
  v21 = v13;
  swift_getOpaqueTypeConformance2();
  sub_21E141014();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21DFEEFE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21DFEF030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21DFEF080()
{
  result = qword_27CEA9BA0;
  if (!qword_27CEA9BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B30);
    sub_21DF23E5C(&qword_27CEA9B98, &qword_27CEA9B30);
    swift_getOpaqueTypeConformance2();
    sub_21DFEF1CC(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9BA0);
  }

  return result;
}

uint64_t sub_21DFEF1CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DFEF284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFEF2F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DFEF36C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21DF42BEC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21DFEF3B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21DF3DE8C(result, a2, a3 & 1);
  }

  return result;
}

void sub_21DFEF404(void *a1, char a2)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SecureNavigationController();
  objc_msgSendSuper2(&v12, sel_pushViewController_animated_, a1, a2 & 1);
  v5 = [a1 navigationItem];
  v6 = [v5 leftBarButtonItem];

  if (v6)
  {
    v7 = v6;
    v8 = sub_21E1420F4();
    v9 = [objc_opt_self() systemImageNamed_];

    [v7 setImage_];
  }

  else
  {
    v7 = [a1 navigationItem];
    v10 = sub_21E1420F4();
    v11 = [objc_opt_self() systemImageNamed_];

    v9 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v11 style:0 target:v2 action:sel_backButtonTapped];
    [v7 setLeftBarButtonItem_];
  }
}

id sub_21DFEF82C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DFEF884()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9DD0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  type metadata accessor for ObservableSize(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI14ObservableSize__size;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9C20);
  sub_21E13F2C4();
  (*(v1 + 32))(v4 + v5, v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = 0;
  v9 = 0;
  v10 = 1;

  sub_21E13F2E4();
  return v4;
}

double sub_21DFEF9EC@<D0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v90);
  v89 = &v66 - v2;
  v3 = type metadata accessor for VisualLookupCardView(0);
  v95 = *(v3 - 8);
  v99 = *(v95 + 64);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v93 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9D90);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v66 - v7;
  v98 = type metadata accessor for SearchCardView(0);
  MEMORY[0x28223BE20](v98);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9E40);
  v79 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v66 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9E48);
  MEMORY[0x28223BE20](v81);
  v97 = &v66 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9E50);
  v86 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v100 = &v66 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9E58);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v66 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E60) - 8;
  MEMORY[0x28223BE20](v85);
  v83 = &v66 - v14;
  v15 = *(v1 + 24);
  v16 = v1 + v4[11];
  v17 = *(v16 + 8);
  v73 = *v16;
  v72 = v17;
  v71 = *(v16 + 16);
  v70 = type metadata accessor for ObservableSize(0);
  v69 = sub_21DFF253C(&unk_27CEA9E30, type metadata accessor for ObservableSize);
  v96 = v15;
  v18 = sub_21E13F4C4();
  v19 = v1;
  v20 = *(v1 + v4[12]);
  v21 = *(v1 + 32);
  v22 = *(v1 + 40);
  v23 = *(v1 + 48);
  v92 = v1;
  *&v101 = v21;
  *(&v101 + 1) = v22;
  LOBYTE(v102) = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  sub_21E1419F4();
  v24 = v108;
  v25 = v109;
  v77 = v4[10];
  v80 = v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
  sub_21E141734();
  v67 = v9;
  *v9 = v96;
  *(v9 + 1) = v18;
  *(v9 + 2) = v20;
  *(v9 + 24) = v24;
  v9[40] = v25;
  v26 = v74;
  sub_21E141734();
  v96 = type metadata accessor for VisualLookupCardView;
  v27 = v93;
  sub_21DFF2DD4(v19, v93, type metadata accessor for VisualLookupCardView);
  v95 = *(v95 + 80);
  v28 = (v95 + 16) & ~v95;
  v68 = v28;
  v29 = swift_allocObject();
  v94 = type metadata accessor for VisualLookupCardView;
  sub_21DFF34EC(v27, v29 + v28, type metadata accessor for VisualLookupCardView);
  v30 = type metadata accessor for IdentifiableURL();
  v31 = type metadata accessor for InAppWebPresentationView(0);
  v32 = sub_21DFF253C(&qword_27CEA9DC8, type metadata accessor for SearchCardView);
  v33 = sub_21DFF253C(&qword_27CEA8C68, type metadata accessor for IdentifiableURL);
  v34 = sub_21DFF253C(&qword_27CEA9E70, type metadata accessor for InAppWebPresentationView);
  v35 = v76;
  v36 = v98;
  v37 = v67;
  sub_21E141284();

  sub_21DF23614(v26, &unk_27CEA9D90);
  sub_21DFF3554(v37, type metadata accessor for SearchCardView);
  *&v101 = v36;
  *(&v101 + 1) = v30;
  *&v102 = v31;
  *(&v102 + 1) = v32;
  *&v103 = v33;
  *(&v103 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  v38 = v78;
  sub_21E141164();
  (*(v79 + 8))(v35, v38);
  sub_21E13F4C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  v39 = v92;
  v40 = v93;
  sub_21DFF2DD4(v92, v93, v96);
  v41 = v68;
  v42 = swift_allocObject();
  sub_21DFF34EC(v40, v42 + v41, v94);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9C20);
  v44 = sub_21DFF3148();
  v45 = sub_21DFF3304();
  v46 = v81;
  v47 = v97;
  sub_21E141324();

  sub_21DF11B9C(v47);
  v48 = v39;
  v49 = v89;
  sub_21E141714();
  sub_21DFF2DD4(v48, v40, v96);
  v50 = swift_allocObject();
  sub_21DFF34EC(v40, v50 + v41, v94);
  *&v101 = v46;
  *(&v101 + 1) = v43;
  *&v102 = v44;
  *(&v102 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  sub_21DFF3438();
  v51 = v82;
  v52 = v84;
  v53 = v100;
  sub_21E141324();

  sub_21DF23614(v49, &qword_27CEA8668);
  (*(v86 + 8))(v53, v52);
  sub_21E141CC4();
  sub_21E13FCE4();
  v54 = v83;
  (*(v87 + 32))(v83, v51, v88);
  v55 = (v54 + *(v85 + 44));
  v56 = v106;
  v55[4] = v105;
  v55[5] = v56;
  v55[6] = v107;
  v57 = v102;
  *v55 = v101;
  v55[1] = v57;
  v58 = v104;
  v55[2] = v103;
  v55[3] = v58;
  v59 = (v92 + v80[13]);
  *&v58 = *v59;
  v60 = v59[1];
  *&v108 = v58;
  *(&v108 + 1) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  sub_21E141CC4();
  sub_21E13F664();
  v61 = v91;
  sub_21DF11C04(v54, v91);
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9EB0) + 36));
  result = *&v108;
  v64 = v109;
  v65 = v110;
  *v62 = v108;
  v62[1] = v64;
  v62[2] = v65;
  return result;
}

uint64_t sub_21DFF0658()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for IdentifiableURL();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  type metadata accessor for VisualLookupCardView(0);
  sub_21DFF2584(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
  sub_21E141724();
  sub_21DF23614(v5, &qword_27CEA8668);
  v7(v5, 1, 1, v6);
  sub_21DFF2584(v5, v2);
  sub_21E141724();
  return sub_21DF23614(v5, &qword_27CEA8668);
}

void sub_21DFF07FC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    type metadata accessor for VisualLookupCardView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
    sub_21E141724();
  }
}

uint64_t sub_21DFF0880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21E13FF94();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for IdentifiableURL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DFF2584(a2, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_21DF23614(v16, &qword_27CEA8668);
  }

  sub_21DFF34EC(v16, v20, type metadata accessor for IdentifiableURL);
  v22 = MKBGetDeviceLockState();
  if (v22 && v22 != 3)
  {
    v23 = *a3;
    if (*(a3 + 16) == 1)
    {
    }

    else
    {

      sub_21E142574();
      v24 = sub_21E1408C4();
      sub_21E13F184();

      sub_21E13FF84();
      swift_getAtKeyPath();
      sub_21DF446B8();
      (*(v26 + 8))(v7, v5);
      v23 = v27;
    }

    LOBYTE(v27) = 1;
    v23(v20, &v27);
  }

  else
  {
    sub_21DFF2DD4(v20, v13, type metadata accessor for IdentifiableURL);
    (*(v18 + 56))(v13, 0, 1, v17);
    type metadata accessor for VisualLookupCardView(0);
    sub_21DFF2584(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
    sub_21E141724();
    sub_21DF23614(v13, &qword_27CEA8668);
  }

  return sub_21DFF3554(v20, type metadata accessor for IdentifiableURL);
}

uint64_t sub_21DFF0C54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  return v1;
}

uint64_t sub_21DFF0D30@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableSize(0);
  result = sub_21E13F284();
  *a1 = result;
  return result;
}

uint64_t sub_21DFF0D70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  return v1;
}

uint64_t sub_21DFF0E00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_21DFF0EE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t a6)
{
  sub_21DFF2CC0(319, a4, a5, a6, MEMORY[0x277CBCED0]);
  if (v6 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21DFF0F90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableDrillIn(0);
  result = sub_21E13F284();
  *a1 = result;
  return result;
}

id sub_21DFF0FD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9DD8);
  sub_21E1408A4();
  v1 = [objc_opt_self() cardViewControllerForCard:*v0 feedbackDelegate:v7];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_6:
    v4 = [objc_allocWithZone(MEMORY[0x277D4C840]) init];
    goto LABEL_7;
  }

  v4 = v3;
  result = [v3 view];
  if (result)
  {
    v6 = result;
    [result _setOverrideVibrancyTrait_];

    [v4 setThreeDTouchEnabled_];
    [v4 setDelegate_];
    [v4 setCommandDelegate_];
    [v4 setRowSelectionAppearanceEnabled_];
    sub_21E1408A4();
    swift_unknownObjectWeakAssign();

    [v4 setScrollEnabled_];
LABEL_7:

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DFF11EC(void *a1)
{
  v3 = type metadata accessor for SearchCardView(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13F1B4();
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v49 = v1 + OBJC_IVAR____TtCV20VisualIntelligenceUI14SearchCardView11Coordinator_parent;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E13F2D4();

  v15 = v52[0];
  if (v52[0])
  {
    v48 = v6;
    sub_21E13EBE4();
    v16 = a1;
    v17 = sub_21E13F1A4();
    v18 = sub_21E142544();

    v19 = a1;
    if (os_log_type_enabled(v17, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v52[0] = v21;
      *v20 = 136315138;
      v46 = v16;
      v47 = v19;
      if (v19)
      {
        v22 = v16;
        v45 = v21;
        v23 = v22;
        v24 = [v22 description];
        v25 = sub_21E142124();
        v27 = v26;

        v21 = v45;
      }

      else
      {
        v27 = 0xE400000000000000;
        v25 = 1701736270;
      }

      v42 = sub_21E0E08C0(v25, v27, v52);

      *(v20 + 4) = v42;
      _os_log_impl(&dword_21DF05000, v17, v18, "Pushing a view controller: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223D540B0](v21, -1, -1);
      MEMORY[0x223D540B0](v20, -1, -1);

      result = (*(v50 + 8))(v14, v48);
      v34 = v49;
      v16 = v46;
      v19 = v47;
    }

    else
    {

      result = (*(v50 + 8))(v14, v48);
      v34 = v49;
    }

    if (v19)
    {
      [v15 pushViewController:v16 animated:1];

LABEL_20:
      sub_21DFF2DD4(v34, v5, type metadata accessor for SearchCardView);
      v43 = *(v5 + 4);
      v44 = v5[40];
      v52[0] = *(v5 + 3);
      v52[1] = v43;
      v53 = v44;
      v51 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
      sub_21E1419D4();
      return sub_21DFF3554(v5, type metadata accessor for SearchCardView);
    }

    __break(1u);
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v30 = a1;
        sub_21E13EBE4();
        v31 = sub_21E13F1A4();
        v32 = sub_21E142564();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_21DF05000, v31, v32, "SearchUI is giving us a navigation controller, but we don't expect one.", v33, 2u);
          MEMORY[0x223D540B0](v33, -1, -1);
        }

        (*(v50 + 8))(v11, v6);
        v34 = v49;
        swift_getKeyPath();
        swift_getKeyPath();
        v52[0] = v29;

        sub_21E13F2E4();
        goto LABEL_20;
      }
    }

    sub_21E13EBE4();
    v36 = sub_21E13F1A4();
    v37 = sub_21E142554();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21DF05000, v36, v37, "There is no existing navigation controller. Create one.", v38, 2u);
      MEMORY[0x223D540B0](v38, -1, -1);
    }

    result = (*(v50 + 8))(v8, v6);
    if (a1)
    {
      v34 = v49;
      v39 = objc_allocWithZone(type metadata accessor for SecureNavigationController());

      v40 = [v39 initWithRootViewController_];
      swift_getKeyPath();
      swift_getKeyPath();
      v52[0] = v40;
      sub_21E13F2E4();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_21E13F2D4();

      v41 = v52[0];
      if (v52[0])
      {
        [v52[0] _setBuiltinTransitionStyle_];
      }

      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_21DFF18FC(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v43 = type metadata accessor for SearchCardView(0);
  MEMORY[0x28223BE20](v43);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13D264();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - v13;
  v14 = sub_21E13F1B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EBE4();
  v18 = sub_21E13F1A4();
  v19 = sub_21E142554();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = a1;
    v21 = v9;
    v22 = v10;
    v23 = v4;
    v24 = v7;
    v25 = v20;
    *v20 = 0;
    _os_log_impl(&dword_21DF05000, v18, v19, "Getting asked to perform an SF punchout command", v20, 2u);
    v26 = v25;
    v7 = v24;
    v4 = v23;
    v10 = v22;
    v9 = v21;
    a1 = v41;
    MEMORY[0x223D540B0](v26, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  if (a1)
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v29 = a1;
      v30 = [v28 punchout];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 urls];
        if (v32)
        {
          v33 = v32;
          v34 = sub_21E1422D4();

          if (*(v34 + 16))
          {
            v35 = v46;
            v36 = (*(v46 + 80) + 32) & ~*(v46 + 80);
            v41 = v29;
            v37 = *(v46 + 16);
            v38 = v42;
            v37(v42, v34 + v36, v10);

            v39 = v45;
            (*(v35 + 32))(v45, v38, v10);
            sub_21DFF2DD4(v44 + OBJC_IVAR____TtCV20VisualIntelligenceUI14SearchCardView11Coordinator_parent, v9, type metadata accessor for SearchCardView);
            v37(v7, v39, v10);
            v40 = type metadata accessor for IdentifiableURL();
            (*(*(v40 - 8) + 56))(v7, 0, 1, v40);
            sub_21DFF2584(v7, v4);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9D90);
            sub_21E1419D4();

            sub_21DF23614(v7, &qword_27CEA8668);
            sub_21DFF3554(v9, type metadata accessor for SearchCardView);
            (*(v35 + 8))(v39, v10);
            return;
          }
        }
      }
    }
  }
}

id sub_21DFF1E7C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DFF1F3C()
{
  result = type metadata accessor for SearchCardView(319);
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

void sub_21DFF201C()
{
  sub_21DF3ED18(319, &unk_27CEA9DB0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservableSize(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservableDrillIn(319);
      if (v2 <= 0x3F)
      {
        sub_21DFA421C(319, &qword_280F68D00, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_21DFF2CC0(319, &qword_27CEA9DC0, &qword_27CEA8668, &unk_21E149310, MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21DFF214C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DFF2DD4(v2, v5, type metadata accessor for SearchCardView);
  v6 = type metadata accessor for SearchCardView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  sub_21DFF2DD4(v5, v7 + OBJC_IVAR____TtCV20VisualIntelligenceUI14SearchCardView11Coordinator_parent, type metadata accessor for SearchCardView);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_21DFF3554(v5, type metadata accessor for SearchCardView);
  *a2 = v8;
  return result;
}

uint64_t sub_21DFF225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DFF253C(&unk_27CEA9DE0, type metadata accessor for SearchCardView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21DFF22F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DFF253C(&unk_27CEA9DE0, type metadata accessor for SearchCardView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21DFF2384()
{
  sub_21DFF253C(&unk_27CEA9DE0, type metadata accessor for SearchCardView);
  sub_21E1407A4();
  __break(1u);
}

double sub_21DFF2430@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_21DFF24B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E13F2E4();
}

uint64_t sub_21DFF253C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DFF2584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFF25F4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  *a1 = v3;
  return result;
}

uint64_t sub_21DFF2674(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_21E13F2E4();
}

void sub_21DFF26EC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!Strong)
    {
      return;
    }

    v5 = Strong;
    sub_21DF3ED18(0, &qword_27CEA9DF0);
    v3 = a1;
    v4 = sub_21E1426D4();

    if ((v4 & 1) == 0)
    {
      return;
    }

LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21E13F2E4();
    return;
  }

  if (!Strong)
  {
    goto LABEL_9;
  }
}

uint64_t sub_21DFF2814(void *a1)
{
  v2 = sub_21E13D264();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  if (a1)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = a1;
      v12 = [v10 punchout];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 urls];
        if (v14)
        {
          v15 = v14;
          v16 = sub_21E1422D4();

          if (*(v16 + 16))
          {
            (*(v3 + 16))(v5, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

            (*(v3 + 32))(v8, v5, v2);
            v17 = sub_21E13D234();
            if (!v18)
            {
              goto LABEL_16;
            }

            if (v17 == 0x7370747468 && v18 == 0xE500000000000000)
            {

              v19 = 1;
LABEL_23:
              (*(v3 + 8))(v8, v2);
              return v19 & 1;
            }

            v21 = sub_21E142B14();

            if ((v21 & 1) == 0)
            {
LABEL_16:
              v22 = sub_21E13D234();
              if (!v23)
              {

                v19 = 0;
                goto LABEL_23;
              }

              if (v22 != 1886680168 || v23 != 0xE400000000000000)
              {
                v19 = sub_21E142B14();

                goto LABEL_23;
              }
            }

            v19 = 1;
            goto LABEL_23;
          }
        }
      }
    }
  }

  v19 = 0;
  return v19 & 1;
}

void sub_21DFF2B14()
{
  sub_21DFF2CC0(319, &qword_280F69020, &qword_27CEA79E8, &unk_21E14EA10, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21DF3ED18(319, &unk_27CEA9DB0);
    if (v1 <= 0x3F)
    {
      sub_21DFA421C(319, &qword_280F68D00, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_21DFF2CC0(319, &qword_27CEA9E20, &qword_27CEA8668, &unk_21E149310, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21DFF2D24();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ObservableDrillIn(319);
            if (v5 <= 0x3F)
            {
              sub_21DFA421C(319, &qword_280F68D70, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
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

void sub_21DFF2CC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_21DFF2D24()
{
  if (!qword_27CEA9E28)
  {
    type metadata accessor for ObservableSize(255);
    sub_21DFF253C(&unk_27CEA9E30, type metadata accessor for ObservableSize);
    v0 = sub_21E13F4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEA9E28);
    }
  }
}

uint64_t sub_21DFF2DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFF2E3C()
{
  type metadata accessor for VisualLookupCardView(0);

  return sub_21DFF0658();
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for VisualLookupCardView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_21DF446B8();

  v3 = v2 + *(v1 + 28);
  v4 = type metadata accessor for IdentifiableURL();
  v5 = *(*(v4 - 8) + 48);
  if (!v5(v3, 1, v4))
  {
    v6 = sub_21E13D264();
    (*(*(v6 - 8) + 8))(v3, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);

  v7 = v2 + *(v1 + 32);
  if (!v5(v7, 1, v4))
  {
    v8 = sub_21E13D264();
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  sub_21DFA7448();

  return swift_deallocObject();
}

void sub_21DFF30C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VisualLookupCardView(0);

  sub_21DFF07FC(a1, a2);
}

unint64_t sub_21DFF3148()
{
  result = qword_27CEA9E78;
  if (!qword_27CEA9E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9E48);
    type metadata accessor for SearchCardView(255);
    type metadata accessor for IdentifiableURL();
    type metadata accessor for InAppWebPresentationView(255);
    sub_21DFF253C(&qword_27CEA9DC8, type metadata accessor for SearchCardView);
    sub_21DFF253C(&qword_27CEA8C68, type metadata accessor for IdentifiableURL);
    sub_21DFF253C(&qword_27CEA9E70, type metadata accessor for InAppWebPresentationView);
    swift_getOpaqueTypeConformance2();
    sub_21DFF253C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9E78);
  }

  return result;
}

unint64_t sub_21DFF3304()
{
  result = qword_27CEA9E88;
  if (!qword_27CEA9E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA9C20);
    sub_21DFF253C(&qword_27CEA9E90, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9E88);
  }

  return result;
}

uint64_t sub_21DFF33B8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for VisualLookupCardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21DFF0880(a1, a2, v6);
}

unint64_t sub_21DFF3438()
{
  result = qword_27CEA9E98;
  if (!qword_27CEA9E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8668);
    sub_21DFF253C(&unk_27CEA9EA0, type metadata accessor for IdentifiableURL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9E98);
  }

  return result;
}

uint64_t sub_21DFF34EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFF3554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21DFF35B4()
{
  result = qword_27CEA9EB8;
  if (!qword_27CEA9EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9EB0);
    sub_21DFF3640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9EB8);
  }

  return result;
}

unint64_t sub_21DFF3640()
{
  result = qword_27CEA9EC0;
  if (!qword_27CEA9EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA9E60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9E50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9E48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA9C20);
    sub_21DFF3148();
    sub_21DFF3304();
    swift_getOpaqueTypeConformance2();
    sub_21DFF3438();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9EC0);
  }

  return result;
}

uint64_t sub_21DFF3790(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t sub_21DFF37E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = *(v3 + 16);
  v10(aBlock - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v9, v2);
  v13 = MKBGetDeviceLockState();
  if (v13 != 3 && v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_21DFF3A44;
    *(v14 + 24) = v12;
    aBlock[4] = sub_21DFF3AE8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21DFF3790;
    aBlock[3] = &block_descriptor_3;
    v15 = _Block_copy(aBlock);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v15);
  }

  else
  {
    LOBYTE(aBlock[0]) = 1;
    sub_21E142374();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21DFF3A44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F30);
  return sub_21E142374();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

int *EmptyResultsView.init(title:subtitle:symbolName:bottomPadding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for EmptyResultsView();
  v17 = (a7 + result[6]);
  *v17 = a1;
  v17[1] = a2;
  v18 = (a7 + result[7]);
  *v18 = a3;
  v18[1] = a4;
  v19 = (a7 + result[8]);
  *v19 = a5;
  v19[1] = a6;
  *(a7 + result[5]) = a8;
  return result;
}

uint64_t type metadata accessor for EmptyResultsView()
{
  result = qword_27CEA9F58;
  if (!qword_27CEA9F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DFF3C38()
{
  result = os_variant_has_internal_content();
  byte_280F6FD20 = result;
  return result;
}

uint64_t EmptyResultsView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21E1418F4();
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_21E141CC4();
  a1[1] = v4;
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F38) + 44);
  *v5 = sub_21E1401C4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F40);
  sub_21DFF3DAC(v1, &v5[*(v6 + 44)]);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F48) + 36);
  sub_21E1418E4();
  sub_21E141FA4();
  v8 = *(type metadata accessor for ContainerSmartDialogViewModifier() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F50);
  swift_allocObject();
  result = sub_21E13F294();
  *&v7[v8] = result;
  return result;
}

uint64_t sub_21DFF3DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F88);
  v172 = *(v3 - 8);
  v173 = v3;
  MEMORY[0x28223BE20](v3);
  v155 = (&v154 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F90);
  MEMORY[0x28223BE20](v5 - 8);
  v175 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v174 = &v154 - v8;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F98);
  MEMORY[0x28223BE20](v169);
  v170 = &v154 - v9;
  v10 = sub_21E1400C4();
  MEMORY[0x28223BE20](v10 - 8);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FA0);
  MEMORY[0x28223BE20](v162);
  v12 = &v154 - v11;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FA8);
  MEMORY[0x28223BE20](v163);
  v14 = &v154 - v13;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FB0);
  MEMORY[0x28223BE20](v168);
  v16 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v154 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v154 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FB8);
  v164 = *(v23 - 8);
  v165 = v23;
  MEMORY[0x28223BE20](v23);
  v161 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v160 = &v154 - v26;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FC0);
  MEMORY[0x28223BE20](v158);
  v156 = &v154 - v27;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FC8);
  MEMORY[0x28223BE20](v167);
  v159 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v157 = &v154 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FD0);
  MEMORY[0x28223BE20](v31 - 8);
  v171 = &v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v177 = &v154 - v34;
  v35 = type metadata accessor for EmptyResultsView();
  v36 = *(a1 + *(v35 + 32) + 8);
  v166 = v35;
  if (v36)
  {
    v160 = v19;

    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E141634();
    sub_21E140084();

    sub_21E1400A4();
    sub_21E140094();
    sub_21E1400A4();
    sub_21E1400E4();
    v37 = sub_21E140C64();
    v39 = v38;
    v158 = v14;
    v41 = v40;
    v42 = [objc_opt_self() defaultMetrics];
    v159 = v16;
    v43 = v42;
    [v42 scaledValueForValue_];

    v44 = sub_21E1409D4();
    (*(*(v44 - 8) + 56))(v22, 1, 1, v44);
    sub_21E140A24();
    v157 = v12;
    sub_21DF23614(v22, &unk_27CEAD410);
    v156 = sub_21E140C44();
    v46 = v45;
    v47 = a1;
    v49 = v48;
    v51 = v50;

    sub_21DF3DE8C(v37, v39, v41 & 1);

    KeyPath = swift_getKeyPath();
    sub_21E141CD4();
    sub_21E13FCE4();
    *&v178[55] = v197;
    *&v178[71] = v198;
    *&v178[87] = v199;
    *&v178[103] = v200;
    *&v178[7] = v194;
    *&v178[23] = v195;
    v53 = v47;
    v193 = v49 & 1;
    *&v178[39] = v196;
    v54 = swift_getKeyPath();
    *&v189 = v156;
    *(&v189 + 1) = v46;
    LOBYTE(v190) = v49 & 1;
    *(&v190 + 1) = v51;
    v55 = v166;
    *&v191[0] = KeyPath;
    BYTE8(v191[0]) = 0;
    *(&v191[4] + 9) = *&v178[64];
    *(&v191[5] + 9) = *&v178[80];
    *(&v191[6] + 9) = *&v178[96];
    *(v191 + 9) = *v178;
    *(&v191[1] + 9) = *&v178[16];
    *(&v191[2] + 9) = *&v178[32];
    *(&v191[3] + 9) = *&v178[48];
    *(&v191[7] + 1) = *&v178[111];
    *&v191[8] = v54;
    BYTE8(v191[8]) = 0;
    v187 = v191[6];
    v188[0] = v191[7];
    *(v188 + 9) = *(&v191[7] + 9);
    v183 = v191[2];
    v184 = v191[3];
    v185 = v191[4];
    v186 = v191[5];
    v179 = v189;
    v180 = v190;
    v181 = v191[0];
    v182 = v191[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FD8);
    sub_21DFF5CD4();
    v56 = v161;
    _s7SwiftUI4ViewP018VisualIntelligenceB0E32smartDialogAnimatableIfAvailableQryF_0();
    sub_21DF23614(&v189, &qword_27CEA9FD8);
    v57 = v157;
    v58 = &v157[*(v162 + 36)];
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8288) + 28);
    v60 = *MEMORY[0x277CE1050];
    v61 = sub_21E141654();
    (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
    *v58 = swift_getKeyPath();
    (*(v164 + 32))(v57, v56, v165);
    LOBYTE(v60) = sub_21E140914();
    v62 = v158;
    sub_21DF3DE9C(v57, v158, &qword_27CEA9FA0);
    v63 = v62;
    v64 = v62 + *(v163 + 36);
    *v64 = v60;
    *(v64 + 8) = xmmword_21E14CDC0;
    *(v64 + 24) = xmmword_21E14CDD0;
    *(v64 + 40) = 0;
    v65 = sub_21E140934();
    v66 = (v53 + *(v55 + 28));
    v67 = v66[1];
    v165 = *v66;
    v68 = v165 & 0xFFFFFFFFFFFFLL;

    if (v67)
    {
      v69 = v67;
    }

    else
    {
      v69 = 0xE000000000000000;
    }

    if (!v67)
    {
      v68 = 0;
    }

    if ((v69 & 0x2000000000000000) != 0)
    {
      v70 = HIBYTE(v69) & 0xF;
    }

    else
    {
      v70 = v68;
    }

    v71 = v159;
    v72 = v177;
    if (v70 && qword_280F69E50 != -1)
    {
      swift_once();
    }

    sub_21E13F374();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    sub_21DF3DE9C(v63, v71, &qword_27CEA9FA8);
    v81 = v71 + *(v168 + 36);
    *v81 = v65;
    *(v81 + 8) = v74;
    *(v81 + 16) = v76;
    *(v81 + 24) = v78;
    *(v81 + 32) = v80;
    *(v81 + 40) = 0;
    v82 = &qword_27CEA9FB0;
    v83 = v160;
    sub_21DF3DE9C(v71, v160, &qword_27CEA9FB0);
    sub_21DF236C0(v83, v170, &qword_27CEA9FB0);
    swift_storeEnumTagMultiPayload();
    sub_21DFF5E18();
    sub_21DFF6024();
    v84 = v72;
  }

  else
  {
    v85 = (a1 + *(v35 + 24));
    v86 = v85[1];
    *&v189 = *v85;
    *(&v189 + 1) = v86;
    sub_21DF252E0();

    v87 = sub_21E140C94();
    v163 = a1;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = [objc_opt_self() defaultMetrics];
    [v93 scaledValueForValue_];

    v94 = sub_21E1409D4();
    (*(*(v94 - 8) + 56))(v22, 1, 1, v94);
    sub_21E140A24();
    sub_21DF23614(v22, &unk_27CEAD410);
    v95 = sub_21E140C44();
    v97 = v96;
    LOBYTE(v93) = v98;
    v100 = v99;

    sub_21DF3DE8C(v88, v90, v92 & 1);

    v101 = swift_getKeyPath();
    sub_21E141CD4();
    sub_21E13FCE4();
    *&v192[55] = v197;
    *&v192[71] = v198;
    *&v192[87] = v199;
    *&v192[103] = v200;
    *&v192[7] = v194;
    *&v192[23] = v195;
    LOBYTE(v93) = v93 & 1;
    v193 = v93;
    *&v192[39] = v196;
    v102 = swift_getKeyPath();
    *&v189 = v95;
    *(&v189 + 1) = v97;
    v103 = v166;
    LOBYTE(v190) = v93;
    *(&v190 + 1) = v100;
    *&v191[0] = v101;
    BYTE8(v191[0]) = 0;
    *(&v191[4] + 9) = *&v192[64];
    *(&v191[5] + 9) = *&v192[80];
    *(&v191[6] + 9) = *&v192[96];
    *(v191 + 9) = *v192;
    *(&v191[1] + 9) = *&v192[16];
    *(&v191[2] + 9) = *&v192[32];
    *(&v191[3] + 9) = *&v192[48];
    *(&v191[7] + 1) = *&v192[111];
    *&v191[8] = v102;
    BYTE8(v191[8]) = 0;
    v187 = v191[6];
    v188[0] = v191[7];
    *(v188 + 9) = *(&v191[7] + 9);
    v183 = v191[2];
    v184 = v191[3];
    v185 = v191[4];
    v186 = v191[5];
    v179 = v189;
    v180 = v190;
    v181 = v191[0];
    v182 = v191[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FD8);
    sub_21DFF5CD4();
    v104 = v160;
    _s7SwiftUI4ViewP018VisualIntelligenceB0E32smartDialogAnimatableIfAvailableQryF_0();
    sub_21DF23614(&v189, &qword_27CEA9FD8);
    LOBYTE(v101) = sub_21E140914();
    v105 = v156;
    (*(v164 + 32))(v156, v104, v165);
    v106 = v105;
    v107 = &v105[*(v158 + 9)];
    *v107 = v101;
    *(v107 + 8) = xmmword_21E14CDC0;
    *(v107 + 24) = xmmword_21E14CDD0;
    v107[40] = 0;
    v108 = sub_21E140934();
    v109 = (v163 + *(v103 + 28));
    v110 = *v109;
    v67 = v109[1];
    v165 = *v109;
    if (v67)
    {
      v111 = v110 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v111 = 0;
    }

    if (v67)
    {
      v112 = v67;
    }

    else
    {
      v112 = 0xE000000000000000;
    }

    v113 = HIBYTE(v112) & 0xF;
    if ((v112 & 0x2000000000000000) == 0)
    {
      v113 = v111;
    }

    v84 = v177;
    v83 = v157;
    v114 = v159;
    if (v113 && qword_280F69E50 != -1)
    {
      swift_once();
    }

    sub_21E13F374();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    sub_21DF3DE9C(v106, v114, &qword_27CEA9FC0);
    v123 = v114 + *(v167 + 36);
    *v123 = v108;
    *(v123 + 8) = v116;
    *(v123 + 16) = v118;
    *(v123 + 24) = v120;
    *(v123 + 32) = v122;
    *(v123 + 40) = 0;
    v82 = &qword_27CEA9FC8;
    sub_21DF3DE9C(v114, v83, &qword_27CEA9FC8);
    sub_21DF236C0(v83, v170, &qword_27CEA9FC8);
    swift_storeEnumTagMultiPayload();
    sub_21DFF5E18();
    sub_21DFF6024();
  }

  sub_21E1402F4();
  sub_21DF23614(v83, v82);
  v125 = v173;
  v124 = v174;
  if (!v67)
  {
    goto LABEL_34;
  }

  v126 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v126 = v165 & 0xFFFFFFFFFFFFLL;
  }

  if (v126)
  {
    if (qword_280F69E50 != -1)
    {
      swift_once();
    }

    v127 = 1;
    if (byte_280F6FD20 == 1)
    {
      v128 = sub_21E1401D4();
      v129 = v155;
      *v155 = v128;
      v129[1] = 0x4010000000000000;
      *(v129 + 16) = 0;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA028);
      sub_21DFF506C(v165, v67, v129 + *(v130 + 44));
      v131 = sub_21E140914();
      v132 = v129 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA030) + 36);
      *v132 = v131;
      *(v132 + 8) = 0u;
      *(v132 + 24) = 0u;
      v132[40] = 1;
      v133 = [objc_opt_self() tertiarySystemFillColor];
      v134 = sub_21E141414();
      v135 = (v129 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA038) + 36));
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8660);
      v137 = v135 + *(v136 + 52);
      v138 = *(sub_21E13FCA4() + 20);
      v139 = *MEMORY[0x277CE0118];
      v140 = sub_21E140144();
      (*(*(v140 - 8) + 104))(&v137[v138], v139, v140);
      __asm { FMOV            V0.2D, #20.0 }

      *v137 = _Q0;
      *v135 = v134;
      *(v135 + *(v136 + 56)) = 256;
      v146 = sub_21E140914();
      v147 = v129 + *(v125 + 36);
      *v147 = v146;
      *(v147 + 8) = xmmword_21E14CDE0;
      *(v147 + 24) = xmmword_21E14CDE0;
      v147[40] = 0;
      v148 = v129;
      v84 = v177;
      sub_21DF3DE9C(v148, v124, &qword_27CEA9F88);
      v127 = 0;
    }
  }

  else
  {
LABEL_34:
    v127 = 1;
  }

  (*(v172 + 56))(v124, v127, 1, v125);
  v149 = v171;
  sub_21DF236C0(v84, v171, &qword_27CEA9FD0);
  v150 = v175;
  sub_21DF236C0(v124, v175, &qword_27CEA9F90);
  v151 = v176;
  sub_21DF236C0(v149, v176, &qword_27CEA9FD0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA020);
  sub_21DF236C0(v150, v151 + *(v152 + 48), &qword_27CEA9F90);
  sub_21DF23614(v124, &qword_27CEA9F90);
  sub_21DF23614(v84, &qword_27CEA9FD0);
  sub_21DF23614(v150, &qword_27CEA9F90);
  return sub_21DF23614(v149, &qword_27CEA9FD0);
}

uint64_t sub_21DFF506C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v73 = a1;
  *(&v73 + 1) = a2;
  v78 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA040);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA048);
  v67[1] = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v67 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA050);
  MEMORY[0x28223BE20](v70);
  v14 = v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA058);
  v71 = *(v15 - 8);
  v72 = v15;
  MEMORY[0x28223BE20](v15);
  v68 = v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA060);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v74 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v69 = v67 - v21;
  MEMORY[0x28223BE20](v22);
  v80 = v67 - v23;
  v24 = &v12[*(v10 + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA068) + 28);
  v26 = *MEMORY[0x277CE0B48];
  v27 = sub_21E140C34();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v24 + v25, v26, v27);
  (*(v28 + 56))(v24 + v25, 0, 1, v27);
  *v24 = swift_getKeyPath();
  *v12 = xmmword_21E14CDF0;
  v12[16] = 0;
  *(v12 + 3) = MEMORY[0x277D84F90];
  v29 = *MEMORY[0x277CE09A0];
  v30 = sub_21E1409D4();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v9, v29, v30);
  (*(v31 + 56))(v9, 0, 1, v30);
  sub_21DFF6178();
  sub_21E140D74();
  sub_21DF23614(v9, &unk_27CEAD410);
  sub_21DF23614(v12, &qword_27CEAA048);
  sub_21E140A84();
  sub_21E140A04();
  v32 = sub_21E140A54();

  KeyPath = swift_getKeyPath();
  v34 = &v14[*(v70 + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  sub_21DFF6230();
  v35 = v68;
  _s7SwiftUI4ViewP018VisualIntelligenceB0E32smartDialogAnimatableIfAvailableQryF_0();
  sub_21DF23614(v14, &qword_27CEAA050);
  sub_21E141CD4();
  sub_21E13FCE4();
  v36 = v69;
  (*(v71 + 32))(v69, v35, v72);
  v37 = (v36 + *(v18 + 44));
  v38 = v103;
  v37[4] = v102;
  v37[5] = v38;
  v37[6] = v104;
  v39 = v99;
  *v37 = v98;
  v37[1] = v39;
  v40 = v101;
  v37[2] = v100;
  v37[3] = v40;
  sub_21DF3DE9C(v36, v80, &qword_27CEAA060);
  v91 = v73;
  sub_21DF252E0();

  v41 = sub_21E140C94();
  v43 = v42;
  LOBYTE(v18) = v44;
  sub_21E140994();
  v45 = sub_21E140C44();
  v47 = v46;
  LOBYTE(v9) = v48;

  sub_21DF3DE8C(v41, v43, v18 & 1);

  v49 = [objc_opt_self() secondaryLabelColor];
  *&v91 = sub_21E141414();
  v50 = sub_21E140C24();
  v52 = v51;
  LOBYTE(v35) = v53;
  v55 = v54;
  sub_21DF3DE8C(v45, v47, v9 & 1);

  v56 = swift_getKeyPath();
  sub_21E141CD4();
  sub_21E13FCE4();
  *&v95[55] = v108;
  *&v95[103] = v111;
  *&v94[7] = *(&v111 + 1);
  *&v95[71] = v109;
  *&v95[87] = v110;
  *&v95[7] = v105;
  *&v95[23] = v106;
  *&v95[39] = v107;
  *(&v94[2] + 1) = *&v95[32];
  *(&v94[1] + 1) = *&v95[16];
  *(v94 + 1) = *v95;
  *(&v94[6] + 1) = *&v95[96];
  *(&v94[5] + 1) = *&v95[80];
  v97 = v35 & 1;
  v96 = 0;
  *&v91 = v50;
  *(&v91 + 1) = v52;
  LOBYTE(v92) = v35 & 1;
  *(&v92 + 1) = v55;
  *&v93 = v56;
  *(&v93 + 1) = 5;
  LOBYTE(v94[0]) = 0;
  *(&v94[4] + 1) = *&v95[64];
  *(&v94[3] + 1) = *&v95[48];
  WORD4(v94[7]) = 256;
  v89 = v94[5];
  v90[0] = v94[6];
  *(v90 + 10) = *(&v94[6] + 10);
  v85 = v94[1];
  v86 = v94[2];
  v87 = v94[3];
  v88 = v94[4];
  v81 = v91;
  v82 = v92;
  v83 = v93;
  v84 = v94[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9560);
  sub_21DFD4B74();
  v57 = v79;
  _s7SwiftUI4ViewP018VisualIntelligenceB0E32smartDialogAnimatableIfAvailableQryF_0();
  sub_21DF23614(&v91, &qword_27CEA9560);
  v58 = v74;
  sub_21DF236C0(v80, v74, &qword_27CEAA060);
  v60 = v75;
  v59 = v76;
  v61 = *(v76 + 16);
  v62 = v77;
  v61(v75, v57, v77);
  v63 = v78;
  sub_21DF236C0(v58, v78, &qword_27CEAA060);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA088);
  v61((v63 + *(v64 + 48)), v60, v62);
  v65 = *(v59 + 8);
  v65(v79, v62);
  sub_21DF23614(v80, &qword_27CEAA060);
  v65(v60, v62);
  return sub_21DF23614(v58, &qword_27CEAA060);
}

uint64_t sub_21DFF59A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21E1418F4();
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_21E141CC4();
  a1[1] = v4;
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F38) + 44);
  *v5 = sub_21E1401C4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F40);
  sub_21DFF3DAC(v1, &v5[*(v6 + 44)]);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F48) + 36);
  sub_21E1418E4();
  sub_21E141FA4();
  v8 = *(type metadata accessor for ContainerSmartDialogViewModifier() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F50);
  swift_allocObject();
  result = sub_21E13F294();
  *&v7[v8] = result;
  return result;
}

void sub_21DFF5B28()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    sub_21DFE0CEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21DFF5BC4()
{
  result = qword_27CEA9F68;
  if (!qword_27CEA9F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9F48);
    sub_21DF23E5C(&qword_27CEA9F70, &qword_27CEA9F78);
    sub_21DFF5C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9F68);
  }

  return result;
}

unint64_t sub_21DFF5C7C()
{
  result = qword_27CEA9F80;
  if (!qword_27CEA9F80)
  {
    type metadata accessor for ContainerSmartDialogViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9F80);
  }

  return result;
}

unint64_t sub_21DFF5CD4()
{
  result = qword_27CEA9FE0;
  if (!qword_27CEA9FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FD8);
    sub_21DFF5D8C();
    sub_21DF23E5C(&qword_280F68DD8, &qword_27CEA73A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9FE0);
  }

  return result;
}

unint64_t sub_21DFF5D8C()
{
  result = qword_27CEA9FE8;
  if (!qword_27CEA9FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FF0);
    sub_21DFB8A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9FE8);
  }

  return result;
}

unint64_t sub_21DFF5E18()
{
  result = qword_27CEA9FF8;
  if (!qword_27CEA9FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FB0);
    sub_21DFF5EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9FF8);
  }

  return result;
}

unint64_t sub_21DFF5EA4()
{
  result = qword_27CEAA000;
  if (!qword_27CEAA000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FA8);
    sub_21DFF5F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA000);
  }

  return result;
}

unint64_t sub_21DFF5F30()
{
  result = qword_27CEAA008;
  if (!qword_27CEAA008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FD8);
    sub_21DFF5CD4();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DB8, &qword_27CEA8288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA008);
  }

  return result;
}

unint64_t sub_21DFF6024()
{
  result = qword_27CEAA010;
  if (!qword_27CEAA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FC8);
    sub_21DFF60B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA010);
  }

  return result;
}

unint64_t sub_21DFF60B0()
{
  result = qword_27CEAA018;
  if (!qword_27CEAA018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FD8);
    sub_21DFF5CD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA018);
  }

  return result;
}

unint64_t sub_21DFF6178()
{
  result = qword_27CEAA070;
  if (!qword_27CEAA070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA048);
    sub_21DF23E5C(&qword_27CEAA078, &qword_27CEAA068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA070);
  }

  return result;
}

unint64_t sub_21DFF6230()
{
  result = qword_27CEAA080;
  if (!qword_27CEAA080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA048);
    sub_21DFF6178();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA080);
  }

  return result;
}

unint64_t sub_21DFF6324()
{
  result = qword_27CEA9570;
  if (!qword_27CEA9570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9578);
    sub_21DFB8B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9570);
  }

  return result;
}

uint64_t sub_21DFF63B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E142724();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_21DFF641C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21E1405B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0uLL;
  v13 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_21E13F374();
    *(&v12 + 1) = v14;
    *(&v13 + 1) = v15;
  }

  v17[0] = v12;
  v17[1] = v13;
  v18 = a3 & 1;
  sub_21E1405A4();
  MEMORY[0x223D51B40](v11, a4, v8, a5);
  return (*(v9 + 8))(v11, v8);
}

uint64_t MorphingContainerMode.hashValue.getter()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t sub_21DFF65E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_21E001854();

  return MEMORY[0x2821309F8](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_21DFF6664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_21E001854();

  return MEMORY[0x282130A00](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_21DFF66E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA3F8);
  sub_21DF23E5C(&qword_27CEAA400, &qword_27CEAA3F8);
  return sub_21E140F44();
}

float sub_21DFF67B0@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

float sub_21DFF67C4(uint64_t a1)
{
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_21DFF67F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a3;
  swift_getWitnessTable();
  sub_21E140464();
  v5 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA368);
  v6 = v5;
  v7 = sub_21E13FB54();
  v8 = *(a2 + 24);
  v43 = *(v8 + 16);
  v44 = sub_21DF23E5C(&qword_27CEAA370, &qword_27CEAA368);
  v33 = MEMORY[0x277CDFAD8];
  v29 = v7;
  WitnessTable = swift_getWitnessTable();
  v31 = sub_21E1402D4();
  v9 = sub_21E13FB54();
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v27[2] = v6;
  v27[3] = v8;
  v12 = v8;
  v32 = sub_21E13F534();
  v13 = sub_21E13FB54();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v27 - v18;
  v36 = v6;
  v37 = v12;
  v38 = v3;
  sub_21E141CC4();
  v20 = swift_getWitnessTable();
  sub_21E140D44();
  v21 = swift_getWitnessTable();
  v41 = v20;
  v42 = v21;
  v22 = swift_getWitnessTable();
  sub_21E141394();
  (*(v28 + 8))(v11, v9);
  v23 = swift_getWitnessTable();
  v39 = v22;
  v40 = v23;
  v24 = swift_getWitnessTable();
  sub_21DFE2A0C(v16, v13, v24);
  v25 = *(v14 + 8);
  v25(v16, v13);
  sub_21DFE2A0C(v19, v13, v24);
  return (v25)(v19, v13);
}

uint64_t sub_21DFF6BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA368);
  v7 = sub_21E13FB54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA378);
  v14 = *(a3 + 16);
  sub_21E0013BC();
  sub_21E140F14();
  v15 = sub_21DF23E5C(&qword_27CEAA370, &qword_27CEAA368);
  v19[8] = v14;
  v19[9] = v15;
  WitnessTable = swift_getWitnessTable();
  sub_21DFE2A0C(v10, v7, WitnessTable);
  v17 = *(v8 + 8);
  v17(v10, v7);
  sub_21DFE2A0C(v13, v7, WitnessTable);
  return (v17)(v13, v7);
}

void sub_21DFF6DD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InterpolatingBackgroundMaterial();
  sub_21DFF6E80(v4, &v10);
  v5 = v11;
  v9 = v10;
  v6 = dbl_21E14D820[*(a1 + *(v4 + 36))];
  v7 = sub_21DFF6EEC(v4);
  v8 = sub_21DFF6F04(v4);
  *a2 = v9;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = 1;
}

float sub_21DFF6E80@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + *(a1 + 36));
  result = flt_21E14D794[v3];
  v5 = dword_21E14D7B0[v3];
  v6 = dword_21E14D7CC[v3];
  v7 = dword_21E14D7E8[v3];
  *a2 = dword_21E14D804[v3];
  *(a2 + 4) = v7;
  *(a2 + 8) = v6;
  *(a2 + 12) = v5;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_21DFF6F1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for InterpolatingBackgroundMaterial();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_21DFF6F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21E13FF94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21DF491DC(v2 + *(a1 + 72), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21E13F444();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_21E142574();
    v14 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21DFF718C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  return v1;
}

uint64_t sub_21DFF7250()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);
  sub_21E140514();
  return v1;
}

uint64_t sub_21DFF72A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);
  sub_21E140514();
  return v1;
}

uint64_t MorphingContainer.init(mode:showLatencyEffects:showRestingEffects:showContentEffects:ViewBuilder:platterContent:)@<X0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t (*a6)(uint64_t)@<X6>, _BYTE *a7@<X8>, char a8, uint64_t a9)
{
  v14 = *a1;
  a7[3] = 0;
  v15 = type metadata accessor for MorphingContainer();
  v16 = v15[18];
  *&a7[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v17 = &a7[v15[19]];
  sub_21E141704();
  *v17 = a8;
  *(v17 + 1) = a9;
  v18 = &a7[v15[20]];
  sub_21E141704();
  *v18 = a8;
  *(v18 + 1) = a9;
  sub_21E140524();
  v19 = sub_21E140524();
  a7[3] = v14;
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  v20 = a5(v19);
  return a6(v20);
}

uint64_t MorphingContainer.init<>(showLatencyEffects:content:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 3) = 0;
  v13 = MEMORY[0x277CE1428];
  v7 = type metadata accessor for MorphingContainer();
  v8 = v7[18];
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v9 = a4 + v7[19];
  sub_21E141704();
  *v9 = v13;
  *(v9 + 8) = a3;
  v10 = a4 + v7[20];
  sub_21E141704();
  *v10 = v13;
  *(v10 + 8) = a3;
  sub_21E140524();
  v11 = sub_21E140524();
  *(a4 + 3) = 2;
  *a4 = a1;
  *(a4 + 1) = 256;
  return a2(v11);
}

uint64_t MorphingContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v218 = a2;
  v3 = sub_21E13FD34();
  v216 = *(v3 - 8);
  v217 = v3;
  MEMORY[0x28223BE20](v3);
  v215 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = *(a1 - 8);
  MEMORY[0x28223BE20](v5);
  v229 = v6;
  v213 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA090);
  MEMORY[0x28223BE20](v212);
  v211 = &v158 - v7;
  v8 = sub_21E1418F4();
  v208 = *(v8 - 8);
  v209 = v8;
  MEMORY[0x28223BE20](v8);
  v207 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_21E13FCA4();
  MEMORY[0x28223BE20](v231);
  v210 = (&v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v230 = (&v158 - v12);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA098);
  MEMORY[0x28223BE20](v228);
  v206 = (&v158 - v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97F8);
  v232 = a1;
  *&v234 = *(a1 + 16);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0);
  v14 = sub_21E13FB54();
  v219 = *(a1 + 32);
  v15 = v219;
  v16 = sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
  v297 = v15;
  v298 = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
  v295 = WitnessTable;
  v296 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_21DFFCB98();
  v291 = v14;
  v292 = &type metadata for PillLabelStyle;
  v293 = v19;
  v294 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = sub_21E13FB54();
  v291 = v14;
  v292 = &type metadata for PillLabelStyle;
  v293 = v19;
  v294 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v290 = MEMORY[0x277CDF900];
  v22 = swift_getWitnessTable();
  v291 = v21;
  v292 = v22;
  *&v235 = MEMORY[0x277CDEAF8];
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  type metadata accessor for BreathingContentEffectModifier(255);
  sub_21E13FB54();
  sub_21E1415E4();
  sub_21E13FB54();
  v23 = sub_21E13FB54();
  sub_21E1404C4();
  v226 = sub_21E13FB54();
  v227 = sub_21E13FB54();
  v291 = v21;
  v292 = v22;
  v287 = swift_getOpaqueTypeConformance2();
  v288 = MEMORY[0x277CE0790];
  v24 = swift_getWitnessTable();
  v25 = sub_21E0008C8(&qword_27CEAA0A8, type metadata accessor for BreathingContentEffectModifier);
  v285 = v24;
  v286 = v25;
  v284 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x277CDF918];
  v282 = v26;
  v283 = MEMORY[0x277CDF918];
  v280 = swift_getWitnessTable();
  v281 = v27;
  v28 = swift_getWitnessTable();
  v278 = swift_getWitnessTable();
  v279 = MEMORY[0x277CDF4D0];
  v276 = swift_getWitnessTable();
  v277 = MEMORY[0x277CDF690];
  v29 = v227;
  v30 = swift_getWitnessTable();
  v291 = v23;
  v292 = v29;
  v293 = v28;
  v294 = v30;
  swift_getOpaqueTypeMetadata2();
  sub_21E1407F4();
  v227 = sub_21E13FB54();
  v31 = v232;
  v188 = *(v232 + 24);
  sub_21E1405B4();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA6848);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0B0);
  sub_21E13FB54();
  sub_21E13FB54();
  v32 = sub_21E13FB54();
  v33 = *(v31 + 40);
  v173 = v33;
  v34 = sub_21E0008C8(&qword_27CEA73D8, MEMORY[0x277CE0660]);
  v274 = v33;
  v275 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
  v272 = v35;
  v273 = v36;
  v37 = swift_getWitnessTable();
  v38 = sub_21DF23E5C(&qword_27CEAA0B8, &qword_27CEAA0B0);
  v270 = v37;
  v271 = v38;
  v268 = swift_getWitnessTable();
  v269 = MEMORY[0x277CDFC60];
  v266 = swift_getWitnessTable();
  v267 = MEMORY[0x277CE06C0];
  v39 = swift_getWitnessTable();
  v291 = v32;
  v292 = v39;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  sub_21E142724();
  swift_getTupleTypeMetadata2();
  v169 = sub_21E141DC4();
  v168 = swift_getWitnessTable();
  v220 = sub_21E141944();
  v171 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v167 = &v158 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0C0);
  v222 = sub_21E13FB54();
  v181 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v164 = &v158 - v41;
  v223 = sub_21E13FB54();
  v182 = *(v223 - 1);
  MEMORY[0x28223BE20](v223);
  v178 = &v158 - v42;
  type metadata accessor for BreathingScaleEffectModifier(255);
  v224 = sub_21E13FB54();
  v186 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v183 = &v158 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0C8);
  v225 = sub_21E13FB54();
  v189 = *(v225 - 1);
  MEMORY[0x28223BE20](v225);
  v184 = &v158 - v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8F18);
  v45 = sub_21E13FB54();
  v191 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v190 = &v158 - v46;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0D0);
  v47 = sub_21E13FB54();
  v194 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v193 = &v158 - v48;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0D8);
  v49 = sub_21E13FB54();
  v197 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v196 = &v158 - v50;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0E0);
  v51 = sub_21E13FB54();
  v200 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v199 = &v158 - v52;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0E8);
  v53 = sub_21E13FB54();
  v202 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v226 = &v158 - v54;
  v55 = sub_21E13FB54();
  v204 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v227 = (&v158 - v56);
  v57 = swift_getWitnessTable();
  v158 = v57;
  v58 = sub_21DF23E5C(&qword_27CEAA0F0, &qword_27CEAA0C0);
  v264 = v57;
  v265 = v58;
  v59 = swift_getWitnessTable();
  v60 = sub_21DF23E5C(&qword_27CEAA0F8, &qword_27CEAA098);
  v159 = v59;
  v262 = v59;
  v263 = v60;
  v61 = swift_getWitnessTable();
  v62 = sub_21E0008C8(&qword_27CEAA100, type metadata accessor for BreathingScaleEffectModifier);
  v160 = v61;
  v260 = v61;
  v261 = v62;
  v63 = swift_getWitnessTable();
  v64 = sub_21DF23E5C(&qword_27CEAA108, &qword_27CEAA0C8);
  v161 = v63;
  v258 = v63;
  v259 = v64;
  v65 = swift_getWitnessTable();
  v66 = sub_21DF23E5C(&qword_27CEA8F10, &qword_27CEA8F18);
  v162 = v65;
  v256 = v65;
  v257 = v66;
  v192 = v45;
  v67 = swift_getWitnessTable();
  v68 = sub_21DF23E5C(&qword_27CEAA110, &qword_27CEAA0D0);
  v163 = v67;
  v254 = v67;
  v255 = v68;
  v195 = v47;
  v69 = swift_getWitnessTable();
  v70 = sub_21DF23E5C(&qword_27CEAA118, &qword_27CEAA0D8);
  v165 = v69;
  v252 = v69;
  v253 = v70;
  v198 = v49;
  v71 = swift_getWitnessTable();
  v72 = sub_21DF23E5C(&qword_27CEAA120, &qword_27CEAA0E0);
  v166 = v71;
  v250 = v71;
  v251 = v72;
  v201 = v51;
  v73 = swift_getWitnessTable();
  v74 = sub_21DF23E5C(&qword_27CEAA128, &qword_27CEAA0E8);
  v170 = v73;
  v248 = v73;
  v249 = v74;
  v203 = v53;
  v172 = swift_getWitnessTable();
  v246 = v172;
  v247 = MEMORY[0x277CE0790];
  v75 = swift_getWitnessTable();
  v76 = sub_21DFFCBEC();
  v205 = v55;
  v291 = v55;
  v292 = &type metadata for MorphingContainerMode;
  v174 = v75;
  v293 = v75;
  v294 = v76;
  v221 = v76;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v177 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v175 = &v158 - v78;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA138);
  v180 = OpaqueTypeMetadata2;
  v187 = sub_21E13FB54();
  v185 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v176 = &v158 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v179 = &v158 - v81;
  v82 = sub_21E13F444();
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v85 = &v158 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v88 = &v158 - v87;
  v89 = v233;
  sub_21DFF6F9C(v232, &v158 - v87);
  (*(v83 + 104))(v85, *MEMORY[0x277CDF3C0], v82);
  LOBYTE(v24) = sub_21E13F434();
  v90 = *(v83 + 8);
  v90(v85, v82);
  v90(v88, v82);
  v91 = v164;
  *&v92 = v234;
  *(&v92 + 1) = v188;
  *&v93 = v219;
  *(&v93 + 1) = v173;
  v234 = v93;
  v235 = v92;
  v239 = v92;
  v240 = v93;
  v94 = v89;
  v241 = v89;
  LODWORD(v219) = v24 & 1;
  v242 = v24 & 1;
  sub_21E141CC4();
  v95 = v167;
  sub_21E141934();
  v236 = v235;
  v237 = v234;
  v238 = v89;
  sub_21E141CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA140);
  sub_21DFFCC70();
  v96 = v220;
  sub_21E140D44();
  (*(v171 + 8))(v95, v96);
  v97 = v89;
  v98 = *v89 == 1 && v89[3] == 0;
  v99 = v228;
  v100 = v206;
  sub_21DFFC77C((v206 + v228[10]));
  *v100 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  *(v100 + v99[9]) = v98;
  *(v100 + v99[11]) = 0x4002A9FBE76C8B44;
  v101 = v100 + v99[12];
  v245 = 0;
  sub_21E141704();
  v102 = v292;
  *v101 = v291;
  *(v101 + 1) = v102;
  v103 = v178;
  v104 = v222;
  MEMORY[0x223D51B40](v100, v222, v99, v159);
  sub_21DF23614(v100, &qword_27CEAA098);
  (*(v181 + 8))(v91, v104);
  v105 = 0;
  if (*v94 == 1)
  {
    v105 = v94[3] == 0;
  }

  v106 = v183;
  v107 = v223;
  sub_21E079D44(v105, v223, v160, 2.333);
  (*(v182 + 8))(v103, v107);
  v108 = v230;
  sub_21DFFC77C(v230);
  v109 = MEMORY[0x277CDFC08];
  sub_21E0008C8(&qword_27CEAA170, MEMORY[0x277CDFC08]);
  v110 = v184;
  v111 = v224;
  sub_21E140F24();
  v112 = MEMORY[0x277CDFC08];
  v228 = MEMORY[0x277CDFC08];
  sub_21E000650(v108, MEMORY[0x277CDFC08]);
  (*(v186 + 8))(v106, v111);
  sub_21DFFC77C(v108);
  v224 = sub_21E0008C8(&qword_27CEAA178, v109);
  v113 = v190;
  v114 = v225;
  sub_21E141394();
  sub_21E000650(v108, v112);
  v115 = (*(v189 + 8))(v110, v114);
  MEMORY[0x28223BE20](v115);
  v116 = v234;
  *(&v158 - 3) = v235;
  *(&v158 - 2) = v116;
  *(&v158 - 2) = v97;
  *(&v158 - 8) = v219;
  sub_21E141CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA180);
  sub_21DFFD1D4(&qword_27CEAA188, &qword_27CEAA180, &unk_21E14D1F0, sub_21DFFCE50);
  v117 = v192;
  v118 = v193;
  sub_21E1412D4();
  (*(v191 + 8))(v113, v117);
  v119 = v207;
  sub_21E1418E4();
  MEMORY[0x223D52590](v119, 0.0);
  (*(v208 + 8))(v119, v209);
  sub_21E141D14();

  v120 = v233;
  LOBYTE(v291) = v233[3];
  v121 = v195;
  v122 = v196;
  sub_21E141384();

  v123 = (*(v194 + 8))(v118, v121);
  MEMORY[0x28223BE20](v123);
  v124 = v234;
  *(&v158 - 3) = v235;
  *(&v158 - 2) = v124;
  *(&v158 - 2) = v120;
  sub_21E141CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA1C8);
  sub_21DFFD1D4(&qword_27CEAA1D0, &qword_27CEAA1C8, &unk_21E14D210, sub_21DFFCF08);
  v125 = v198;
  v126 = v199;
  sub_21E140D44();
  (*(v197 + 8))(v122, v125);
  v127 = v210;
  sub_21DFFC77C(v210);
  sub_21E141484();
  v128 = sub_21E141514();

  v129 = v211;
  sub_21DFFD288(v127, v211);
  v130 = v129 + *(v212 + 36);
  *v130 = v128;
  *(v130 + 8) = xmmword_21E14D120;
  *(v130 + 24) = 0x4020000000000000;
  sub_21E141CC4();
  sub_21DF23E5C(&qword_27CEAA1D8, &qword_27CEAA090);
  v131 = v201;
  sub_21E140D64();
  sub_21DF23614(v129, &qword_27CEAA090);
  (*(v200 + 8))(v126, v131);
  v132 = v213;
  v133 = v214;
  v225 = *(v214 + 16);
  v134 = v232;
  (v225)(v213, v233, v232);
  v135 = (*(v133 + 80) + 48) & ~*(v133 + 80);
  v136 = swift_allocObject();
  v137 = v234;
  *(v136 + 16) = v235;
  *(v136 + 32) = v137;
  v223 = *(v133 + 32);
  (v223)(v136 + v135, v132, v134);
  v138 = v203;
  v139 = v226;
  sub_21E141314();

  (*(v202 + 8))(v139, v138);
  LOBYTE(v291) = v233[3];
  (v225)(v132);
  v140 = swift_allocObject();
  v141 = v234;
  *(v140 + 16) = v235;
  *(v140 + 32) = v141;
  (v223)(v140 + v135, v132, v134);
  v143 = v174;
  v142 = v175;
  v144 = v205;
  v145 = v221;
  v146 = v227;
  sub_21E141324();

  (*(v204 + 8))(v146, v144);
  v147 = v215;
  sub_21E13FD24();
  v148 = v230;
  sub_21DFFC77C(v230);
  v291 = v144;
  v292 = &type metadata for MorphingContainerMode;
  v293 = v143;
  v294 = v145;
  v149 = swift_getOpaqueTypeConformance2();
  v150 = v176;
  v151 = v180;
  sub_21E140E74();
  sub_21E000650(v148, v228);
  (*(v216 + 8))(v147, v217);
  (*(v177 + 8))(v142, v151);
  v152 = sub_21DF23E5C(qword_27CEAA1E0, &qword_27CEAA138);
  v243 = v149;
  v244 = v152;
  v153 = v187;
  v154 = swift_getWitnessTable();
  v155 = v179;
  sub_21DFE2A0C(v150, v153, v154);
  v156 = *(v185 + 8);
  v156(v150, v153);
  sub_21DFE2A0C(v155, v153, v154);
  return (v156)(v155, v153);
}

uint64_t sub_21DFF94D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v190 = a5;
  v189 = a3;
  v149 = a2;
  v176 = a7;
  v177 = a1;
  v211 = a3;
  v212 = a4;
  v185 = a6;
  v186 = a4;
  v213 = a5;
  v214 = a6;
  v175 = type metadata accessor for MorphingContainer();
  v152 = *(v175 - 8);
  v150 = *(v152 + 64);
  MEMORY[0x28223BE20](v175);
  v151 = v126 - v8;
  sub_21E1405B4();
  v9 = sub_21E13FB54();
  v137 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v133 = v126 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA6848);
  v11 = sub_21E13FB54();
  v141 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v139 = v126 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0B0);
  v13 = sub_21E13FB54();
  v143 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v140 = v126 - v14;
  v15 = sub_21E13FB54();
  v146 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v136 = v126 - v16;
  v17 = sub_21E13FB54();
  v148 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v145 = v126 - v18;
  v19 = sub_21E0008C8(&qword_27CEA73D8, MEMORY[0x277CE0660]);
  v210[33] = a6;
  v210[34] = v19;
  v20 = MEMORY[0x277CDFAD8];
  v138 = v9;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
  v126[0] = WitnessTable;
  v210[31] = WitnessTable;
  v210[32] = v22;
  v142 = v11;
  v23 = swift_getWitnessTable();
  v24 = sub_21DF23E5C(&qword_27CEAA0B8, &qword_27CEAA0B0);
  v126[1] = v23;
  v210[29] = v23;
  v210[30] = v24;
  v144 = v13;
  v127 = swift_getWitnessTable();
  v210[27] = v127;
  v210[28] = MEMORY[0x277CDFC60];
  v147 = v15;
  v128 = swift_getWitnessTable();
  v210[25] = v128;
  v210[26] = MEMORY[0x277CE06C0];
  v25 = swift_getWitnessTable();
  v187 = v17;
  v211 = v17;
  v212 = v25;
  v184 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v132 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v131 = v126 - v27;
  v134 = v28;
  v29 = sub_21E13FB54();
  v169 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v135 = v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v129 = v126 - v32;
  MEMORY[0x28223BE20](v33);
  v130 = v126 - v34;
  v172 = v35;
  v36 = sub_21E142724();
  v173 = *(v36 - 8);
  v174 = v36;
  MEMORY[0x28223BE20](v36);
  v170 = v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v171 = (v126 - v39);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97F8);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0);
  v40 = sub_21E13FB54();
  v41 = sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
  v210[23] = v190;
  v210[24] = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
  v210[21] = v42;
  v210[22] = v43;
  v180 = v20;
  v44 = swift_getWitnessTable();
  v45 = sub_21DFFCB98();
  v211 = v40;
  v212 = &type metadata for PillLabelStyle;
  v213 = v44;
  v214 = v45;
  swift_getOpaqueTypeMetadata2();
  v46 = sub_21E13FB54();
  v211 = v40;
  v212 = &type metadata for PillLabelStyle;
  v213 = v44;
  v214 = v45;
  v210[19] = swift_getOpaqueTypeConformance2();
  v210[20] = MEMORY[0x277CDF900];
  v47 = swift_getWitnessTable();
  v211 = v46;
  v212 = v47;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  type metadata accessor for BreathingContentEffectModifier(255);
  v158 = sub_21E13FB54();
  v48 = sub_21E1415E4();
  v167 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v165 = v126 - v49;
  v50 = sub_21E13FB54();
  v166 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v164 = v126 - v51;
  v160 = v50;
  v179 = sub_21E13FB54();
  v168 = *(v179 - 1);
  MEMORY[0x28223BE20](v179);
  v163 = v126 - v52;
  sub_21E1404C4();
  sub_21E13FB54();
  v178 = sub_21E13FB54();
  v211 = v46;
  v212 = v47;
  v210[17] = swift_getOpaqueTypeConformance2();
  v210[18] = MEMORY[0x277CE0790];
  v53 = swift_getWitnessTable();
  v54 = sub_21E0008C8(&qword_27CEAA0A8, type metadata accessor for BreathingContentEffectModifier);
  v210[15] = v53;
  v210[16] = v54;
  v157 = swift_getWitnessTable();
  v210[14] = v157;
  v55 = swift_getWitnessTable();
  v56 = MEMORY[0x277CDF918];
  v210[12] = v55;
  v210[13] = MEMORY[0x277CDF918];
  v159 = swift_getWitnessTable();
  v210[10] = v159;
  v210[11] = v56;
  v57 = v179;
  v58 = swift_getWitnessTable();
  v156 = v58;
  v210[8] = swift_getWitnessTable();
  v210[9] = MEMORY[0x277CDF4D0];
  v210[6] = swift_getWitnessTable();
  v210[7] = MEMORY[0x277CDF690];
  v59 = v178;
  v155 = swift_getWitnessTable();
  v211 = v57;
  v212 = v59;
  v213 = v58;
  v214 = v155;
  v161 = MEMORY[0x277CE0E88];
  v154 = swift_getOpaqueTypeMetadata2();
  v162 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = v126 - v60;
  sub_21E1407F4();
  v183 = sub_21E13FB54();
  v181 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v182 = v126 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v188 = v126 - v63;
  v64 = v189;
  v196 = v189;
  v65 = v185;
  v66 = v186;
  v197 = v186;
  v67 = v190;
  v198 = v190;
  v199 = v185;
  v68 = v177;
  v200 = v177;
  v69 = v165;
  sub_21E1415D4();
  sub_21E140904();
  v70 = v164;
  sub_21E1412F4();
  (*(v167 + 8))(v69, v48);
  sub_21E140974();
  v71 = v163;
  v72 = v160;
  sub_21E1412F4();
  (*(v166 + 8))(v70, v72);
  sub_21E141D84();
  v191 = v64;
  v192 = v66;
  v193 = v67;
  v194 = v65;
  v195 = v68;
  v73 = swift_checkMetadataState();
  v74 = v153;
  v75 = v179;
  v77 = v155;
  v76 = v156;
  sub_21E141374();

  (*(v168 + 8))(v71, v75);
  v211 = v75;
  v212 = v73;
  v213 = v76;
  v214 = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = v182;
  v80 = v154;
  sub_21E141064();
  (*(v162 + 8))(v74, v80);
  v81 = sub_21E0008C8(&qword_27CEA9E80, MEMORY[0x277CDE470]);
  v210[4] = OpaqueTypeConformance2;
  v82 = v68;
  v210[5] = v81;
  v83 = v183;
  v178 = swift_getWitnessTable();
  sub_21DFE2A0C(v79, v83, v178);
  v179 = *(v181 + 8);
  v180 = v181 + 8;
  (v179)(v79, v83);
  if ((*(v68 + 3) & 0xFE) == 2)
  {
    v84 = v184;
    v85 = sub_21E140914();
    v86 = v133;
    sub_21DFF641C(v85, 0x4020000000000000, 0, v186, v185);
    sub_21E13F694();
    sub_21E0006F0();
    sub_21E13F704();
    sub_21E13F6C4();

    sub_21E13F6B4();
    sub_21E13F6C4();

    v87 = v138;
    v88 = v139;
    sub_21E140DB4();

    v89 = (*(v137 + 8))(v86, v87);
    MEMORY[0x28223BE20](v89);
    sub_21E141CC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA2B0);
    sub_21E000758();
    v90 = v140;
    v91 = v142;
    sub_21E140D44();
    (*(v141 + 8))(v88, v91);
    sub_21E141CC4();
    v92 = v144;
    v93 = v136;
    sub_21E141264();
    (*(v143 + 8))(v90, v92);
    v94 = v93;
    if (*(v82 + 3) == 3)
    {
      sub_21E140914();
    }

    else
    {
      sub_21E140954();
    }

    v96 = v145;
    v97 = v147;
    sub_21E141124();
    (*(v146 + 8))(v94, v97);
    v98 = v175;
    sub_21DFF72A0();
    v99 = v131;
    v100 = v187;
    sub_21E1410C4();

    (*(v148 + 8))(v96, v100);
    v102 = v151;
    v101 = v152;
    (*(v152 + 16))(v151, v177, v98);
    v103 = (*(v101 + 80) + 48) & ~*(v101 + 80);
    v104 = swift_allocObject();
    v105 = v186;
    *(v104 + 2) = v189;
    *(v104 + 3) = v105;
    v106 = v185;
    *(v104 + 4) = v190;
    *(v104 + 5) = v106;
    (*(v101 + 32))(&v104[v103], v102, v98);
    v211 = v100;
    v212 = v84;
    v107 = swift_getOpaqueTypeConformance2();
    v108 = v129;
    v109 = v134;
    sub_21E141314();

    (*(v132 + 8))(v99, v109);
    v201 = v107;
    v202 = MEMORY[0x277CE0790];
    v110 = v172;
    v111 = swift_getWitnessTable();
    v112 = v130;
    sub_21DFE2A0C(v108, v110, v111);
    v113 = v169;
    v114 = *(v169 + 8);
    v114(v108, v110);
    v115 = v135;
    sub_21DFE2A0C(v112, v110, v111);
    v114(v112, v110);
    v95 = v170;
    (*(v113 + 32))(v170, v115, v110);
    (*(v113 + 56))(v95, 0, 1, v110);
  }

  else
  {
    v95 = v170;
    (*(v169 + 56))(v170, 1, 1, v172);
    v211 = v187;
    v212 = v184;
    v210[2] = swift_getOpaqueTypeConformance2();
    v210[3] = MEMORY[0x277CE0790];
    swift_getWitnessTable();
  }

  v117 = v173;
  v116 = v174;
  v118 = *(v173 + 16);
  v119 = v171;
  v118(v171, v95, v174);
  v190 = *(v117 + 8);
  v190(v95, v116);
  v120 = v182;
  v121 = v183;
  (*(v181 + 16))(v182, v188, v183);
  v211 = v120;
  v118(v95, v119, v116);
  v212 = v95;
  v210[0] = v121;
  v210[1] = v116;
  v208 = v178;
  v206 = v187;
  v207 = v184;
  v204 = swift_getOpaqueTypeConformance2();
  v205 = MEMORY[0x277CE0790];
  v203 = swift_getWitnessTable();
  v209 = swift_getWitnessTable();
  sub_21E012D74(&v211, 2uLL, v210);
  v122 = v119;
  v123 = v190;
  v190(v122, v116);
  v124 = v179;
  (v179)(v188, v121);
  v123(v95, v116);
  return v124(v120, v121);
}

uint64_t sub_21DFFAB74@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a3;
  v91 = a5;
  v86 = a1;
  v92 = a6;
  v93 = a2;
  v104 = a2;
  v105 = a3;
  v106 = a4;
  v107 = a5;
  v69 = a4;
  v59 = type metadata accessor for MorphingContainer();
  v88 = *(v59 - 8);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v59);
  v87 = &v59 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97F8);
  v8 = sub_21E13FB54();
  v85 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v79 = &v59 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0);
  v75 = v8;
  v10 = sub_21E13FB54();
  v84 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v77 = &v59 - v11;
  v12 = sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
  v102 = a4;
  v103 = v12;
  WitnessTable = swift_getWitnessTable();
  v71 = WitnessTable;
  v14 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
  v100 = WitnessTable;
  v101 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_21DFFCB98();
  v104 = v10;
  v105 = &type metadata for PillLabelStyle;
  v61 = v10;
  v106 = v15;
  v107 = v16;
  v17 = v16;
  v62 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v59 - v18;
  v20 = sub_21E13FB54();
  v74 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v65 = &v59 - v21;
  v104 = v10;
  v105 = &type metadata for PillLabelStyle;
  v106 = v15;
  v107 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = OpaqueTypeConformance2;
  v99 = MEMORY[0x277CDF900];
  v66 = swift_getWitnessTable();
  v104 = v20;
  v105 = v66;
  v73 = MEMORY[0x277CDEAF8];
  v68 = swift_getOpaqueTypeMetadata2();
  v76 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v60 = &v59 - v22;
  v23 = sub_21E13FB54();
  v81 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v63 = &v59 - v24;
  type metadata accessor for BreathingContentEffectModifier(255);
  v82 = v23;
  v70 = sub_21E13FB54();
  v83 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v78 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v80 = &v59 - v27;
  v28 = [objc_opt_self() systemDarkGrayColor];
  v104 = sub_21E141414();
  v29 = v86;
  v30 = v79;
  v31 = v69;
  sub_21E140F94();

  sub_21E1409A4();
  sub_21E1409E4();
  sub_21E140A54();

  v32 = v77;
  v33 = v75;
  sub_21E141204();

  (*(v85 + 8))(v30, v33);
  v34 = v61;
  sub_21E140DA4();
  (*(v84 + 8))(v32, v34);
  v35 = v65;
  v36 = OpaqueTypeMetadata2;
  sub_21E1412C4();
  (*(v72 + 8))(v19, v36);
  v37 = v59;
  sub_21DFF7250();
  v38 = v60;
  v39 = v66;
  sub_21E1410C4();

  (*(v74 + 8))(v35, v20);
  v41 = v87;
  v40 = v88;
  (*(v88 + 16))(v87, v29, v37);
  v42 = v40;
  v43 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v44 = swift_allocObject();
  v45 = v90;
  *(v44 + 2) = v93;
  *(v44 + 3) = v45;
  *(v44 + 4) = v31;
  v46 = v63;
  *(v44 + 5) = v91;
  (*(v42 + 32))(&v44[v43], v41, v37);
  v104 = v20;
  v105 = v39;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v68;
  sub_21E141314();

  (*(v76 + 8))(v38, v48);
  v49 = *v29 == 1 && v29[3] == 0;
  v96 = v47;
  v97 = MEMORY[0x277CE0790];
  v50 = v82;
  v51 = swift_getWitnessTable();
  v52 = v78;
  sub_21E079D18(v49, v50, v51, 2.333);
  (*(v81 + 8))(v46, v50);
  v53 = sub_21E0008C8(&qword_27CEAA0A8, type metadata accessor for BreathingContentEffectModifier);
  v94 = v51;
  v95 = v53;
  v54 = v70;
  v55 = swift_getWitnessTable();
  v56 = v80;
  sub_21DFE2A0C(v52, v54, v55);
  v57 = *(v83 + 8);
  v57(v52, v54);
  sub_21DFE2A0C(v56, v54, v55);
  return (v57)(v56, v54);
}

uint64_t sub_21DFFB654()
{
  type metadata accessor for MorphingContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);
  return sub_21E140504();
}

uint64_t sub_21DFFB6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97F8);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0);
  sub_21E13FB54();
  v40 = a2;
  v41 = sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
  v4 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v39 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
  v25 = v4;
  v5 = swift_getWitnessTable();
  v6 = sub_21DFFCB98();
  swift_getOpaqueTypeMetadata2();
  v7 = sub_21E13FB54();
  v36 = v5;
  v37 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = MEMORY[0x277CDF900];
  v34 = v7;
  v35 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  type metadata accessor for BreathingContentEffectModifier(255);
  sub_21E13FB54();
  sub_21E1415E4();
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E1404C4();
  v8 = sub_21E13FB54();
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = sub_21E13FB54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  v18 = swift_getWitnessTable();
  sub_21E1411E4();
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v30 = v18;
  v31 = MEMORY[0x277CDF4D0];
  v19 = swift_getWitnessTable();
  sub_21E140E34();
  (*(v24 + 8))(v10, v8);
  v28 = v19;
  v29 = MEMORY[0x277CDF690];
  v20 = swift_getWitnessTable();
  sub_21DFE2A0C(v14, v11, v20);
  v21 = *(v12 + 8);
  v21(v14, v11);
  sub_21DFE2A0C(v17, v11, v20);
  return (v21)(v17, v11);
}

uint64_t sub_21DFFBBDC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = type metadata accessor for MorphingContainer();
  v7 = MEMORY[0x277D84F90];
  if (*(a1 + 2) == 1)
  {
    result = sub_21DFF718C();
    if (result)
    {
      v7 = &unk_282F3BE68;
    }
  }

  v8 = 0.55;
  if (a2)
  {
    v8 = 0.3;
  }

  v9 = 0.6;
  *a3 = v7;
  *(a3 + 8) = 0x403C000000000000;
  if ((a2 & 1) == 0)
  {
    v9 = 1.0;
  }

  *(a3 + 16) = v9;
  *(a3 + 24) = v8;
  *(a3 + 32) = 0;
  return result;
}

void *sub_21DFFBC90()
{
  v1 = MEMORY[0x277D84F90];
  if (*(v0 + 2) == 1 && (sub_21DFF718C() & 1) != 0)
  {
    return &unk_282F3BE68;
  }

  return v1;
}

uint64_t sub_21DFFBCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a7;
  v48 = a8;
  v46 = a6;
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v38 = a2;
  v43 = a1;
  v50 = sub_21E141E74();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E141E94();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v16 = type metadata accessor for MorphingContainer();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  v20 = sub_21E141EB4();
  v45 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v37 - v25;
  sub_21DFA9C80();
  v42 = sub_21E1425C4();
  sub_21E141EA4();
  sub_21E141EC4();
  v44 = *(v21 + 8);
  v44(v23, v20);
  (*(v17 + 16))(v19, v43, v16);
  v27 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v28 = swift_allocObject();
  v29 = v39;
  v30 = v40;
  *(v28 + 2) = v38;
  *(v28 + 3) = v29;
  v31 = v41;
  *(v28 + 4) = v30;
  *(v28 + 5) = v31;
  (*(v17 + 32))(&v28[v27], v19, v16);
  v58 = v47;
  v59 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_21E079CD4;
  v57 = v48;
  v32 = _Block_copy(&aBlock);

  sub_21E141E84();
  aBlock = MEMORY[0x277D84F90];
  sub_21E0008C8(&qword_280F68CE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70);
  sub_21DF23E5C(&qword_280F68CA8, &qword_27CEA6E70);
  v33 = v49;
  v34 = v50;
  sub_21E142764();
  v35 = v42;
  MEMORY[0x223D52DF0](v26, v15, v33, v32);
  _Block_release(v32);

  (*(v53 + 8))(v33, v34);
  (*(v51 + 8))(v15, v52);
  return (v44)(v26, v45);
}

uint64_t sub_21DFFC198()
{
  type metadata accessor for MorphingContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);
  return sub_21E140504();
}

uint64_t sub_21DFFC204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v45 = a2;
  *(&v45 + 1) = a3;
  v46 = a1;
  v54 = a6;
  v8 = sub_21E140034();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13F444();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = sub_21E13FC94();
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = (&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA168);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v45 - v22;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA150);
  MEMORY[0x28223BE20](v48);
  v25 = &v45 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA288);
  v49 = *(v26 - 8);
  v50 = v26;
  MEMORY[0x28223BE20](v26);
  v47 = &v45 - v27;
  v55 = v45;
  *&v56 = a4;
  *(&v56 + 1) = a5;
  v28 = type metadata accessor for MorphingContainer();
  sub_21DFFC77C(v20);
  *(v20->n128_u64 + *(v18 + 28)) = 0xBFE0000000000000;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  sub_21DFF6F9C(v28, v16);
  (*(v11 + 104))(v13, *MEMORY[0x277CDF3C0], v10);
  sub_21E13F434();
  v29 = *(v11 + 8);
  v29(v13, v10);
  v29(v16, v10);
  v30 = sub_21E141514();

  sub_21E13F4E4();
  sub_21E0005EC(v20, v23);
  v31 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA290) + 36)];
  v32 = v56;
  *v31 = v55;
  *(v31 + 1) = v32;
  *(v31 + 4) = v57;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA298);
  *&v23[*(v33 + 52)] = v30;
  *&v23[*(v33 + 56)] = 256;
  v34 = sub_21E141CC4();
  v36 = v35;
  sub_21E000650(v20, MEMORY[0x277CDFBC8]);
  v37 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA2A0) + 36)];
  *v37 = v34;
  v37[1] = v36;
  sub_21DF3DE9C(v23, v25, &qword_27CEAA168);
  v38 = &v25[*(v48 + 36)];
  *v38 = 0x4000000000000000;
  v38[8] = 0;
  sub_21DFFCD64();
  v39 = v51;
  sub_21E0130B8(v51);
  v40 = v47;
  sub_21E140E84();
  (*(v52 + 8))(v39, v53);
  sub_21DF23614(v25, &qword_27CEAA150);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA140);
  v42 = v54;
  v43 = (v54 + *(v41 + 36));
  sub_21DFFC77C(v43);
  *(v43->n128_u16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F18) + 36)) = 256;
  return (*(v49 + 32))(v42, v40, v50);
}

__n128 sub_21DFFC77C@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(sub_21E13FCA4() + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_21E140144();
  (*(*(v4 - 8) + 104))(a1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #28.0 }

  *a1 = result;
  return result;
}

uint64_t sub_21DFFC800@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA198);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v28[-v16];
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  type metadata accessor for MorphingContainer();
  v18 = sub_21DFFCA18();
  if (a1[3] == 2)
  {
    v19 = 28.0;
  }

  else
  {
    v19 = 22.0;
  }

  if (a2)
  {
    v20 = 0.8;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = (v17 + *(v15 + 44));
  sub_21DFFC77C(v21);
  v22 = 0;
  *(v21->n128_u16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F18) + 36)) = 256;
  *v17 = v18;
  v17[1] = v19;
  v17[2] = v20;
  *(v17 + 24) = 0;
  if (*a1 == 1)
  {
    v22 = a1[3] == 0;
  }

  v23 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA180) + 36));
  *v23 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for BreathingScaleEffectModifier(0);
  *(v23 + v24[5]) = v22;
  *(v23 + v24[6]) = 0x4002A9FBE76C8B44;
  v25 = v23 + v24[7];
  v28[15] = 0;
  sub_21E141704();
  v26 = v30;
  *v25 = v29;
  *(v25 + 1) = v26;
  return sub_21DF3DE9C(v17, a7, &qword_27CEAA198);
}

void *sub_21DFFCA18()
{
  if (*(v0 + 3))
  {
    result = MEMORY[0x277D84F90];
    if (*(v0 + 2) == 1)
    {
      v2 = MEMORY[0x277D84F90];
      if (sub_21DFF718C())
      {
        return &unk_282F3BEB8;
      }

      else
      {
        return v2;
      }
    }
  }

  else if (sub_21DF44E38())
  {
    return &unk_282F3BE90;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t static Animation.pillTransition.getter()
{
  v0 = sub_21E1418F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E1418E4();
  MEMORY[0x223D52590](v3, 0.0);
  (*(v1 + 8))(v3, v0);
  v4 = sub_21E141D14();

  return v4;
}

unint64_t sub_21DFFCB98()
{
  result = qword_27CEAA0A0;
  if (!qword_27CEAA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA0A0);
  }

  return result;
}

unint64_t sub_21DFFCBEC()
{
  result = qword_27CEAA130;
  if (!qword_27CEAA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA130);
  }

  return result;
}

unint64_t sub_21DFFCC70()
{
  result = qword_27CEAA148;
  if (!qword_27CEAA148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA150);
    sub_21DFFCD64();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA8F10, &qword_27CEA8F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA148);
  }

  return result;
}

unint64_t sub_21DFFCD64()
{
  result = qword_27CEAA158;
  if (!qword_27CEAA158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA150);
    sub_21DF23E5C(&qword_27CEAA160, &qword_27CEAA168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA158);
  }

  return result;
}

unint64_t sub_21DFFCE50()
{
  result = qword_27CEAA190;
  if (!qword_27CEAA190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA198);
    sub_21DFFCF08();
    sub_21DF23E5C(&qword_27CEA8F10, &qword_27CEA8F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA190);
  }

  return result;
}

unint64_t sub_21DFFCF08()
{
  result = qword_27CEAA1A0;
  if (!qword_27CEAA1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA1A8);
    sub_21DFFCF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA1A0);
  }

  return result;
}

unint64_t sub_21DFFCF94()
{
  result = qword_27CEAA1B0;
  if (!qword_27CEAA1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA1B8);
    sub_21DFFD020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA1B0);
  }

  return result;
}

unint64_t sub_21DFFD020()
{
  result = qword_27CEAA1C0;
  if (!qword_27CEAA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA1C0);
  }

  return result;
}

double sub_21DFFD074@<D0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for MorphingContainer();
  v6 = MEMORY[0x277D84F90];
  if (!a1[3] && (sub_21DF44E38() & 1) != 0)
  {
    v6 = &unk_282F3BEE0;
  }

  v7 = *a1 == 1 && a1[3] == 0;
  v8 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA1C8) + 36));
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for BreathingScaleEffectModifier(0);
  *(v8 + v9[5]) = v7;
  *(v8 + v9[6]) = 0x4002A9FBE76C8B44;
  v10 = v8 + v9[7];
  sub_21E141704();
  *v10 = a2;
  *(v10 + 1) = a3;
  *a4 = v6;
  result = 28.0;
  *(a4 + 8) = xmmword_21E14D130;
  *(a4 + 24) = 0;
  return result;
}

uint64_t sub_21DFFD1D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_21E0008C8(&qword_27CEAA100, type metadata accessor for BreathingScaleEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}