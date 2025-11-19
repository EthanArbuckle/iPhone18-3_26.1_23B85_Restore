uint64_t static Optional<A>.allCases.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8];
  v10 = sub_2749FD6C4();
  sub_2749FDC84();
  OUTLINED_FUNCTION_8_20();
  swift_allocObject();
  sub_2749FCFA4();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, a1);
  sub_2749FD014();
  OUTLINED_FUNCTION_32();
  sub_2749FD944();
  v17 = a1;
  v18 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2748606D8(sub_274866628, v16, AssociatedTypeWitness, v10, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v13);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  v14 = sub_2749FCFC4();

  return v14;
}

uint64_t sub_274861260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = static Optional<A>.allCases.getter(*(a1 + 16), *(a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_274861290()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_274861304()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_274861374()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748613E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void *sub_274861464()
{
  result = sub_274861290();
  if (result)
  {

    v1 = sub_274861374();
    v3 = v2;

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    return (v4 != 0);
  }

  return result;
}

uint64_t sub_2748614B8()
{
  v1 = OBJC_IVAR____TtC10WorkflowUIP33_2B4A211DA2DAD6582F2DCB42267DCA0123ReportShortcutViewModel__reportReason;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B8A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10WorkflowUIP33_2B4A211DA2DAD6582F2DCB42267DCA0123ReportShortcutViewModel__reportMessage;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2748615AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B8A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v9 = OBJC_IVAR____TtC10WorkflowUIP33_2B4A211DA2DAD6582F2DCB42267DCA0123ReportShortcutViewModel__reportReason;
  v12[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B850);
  sub_2749FA8C4();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC10WorkflowUIP33_2B4A211DA2DAD6582F2DCB42267DCA0123ReportShortcutViewModel__reportMessage;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_2749FA8C4();
  (*(v2 + 32))(v0 + v10, v4, v1);
  return v0;
}

uint64_t sub_274861778@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ReportShortcutViewModel(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_2748617B8()
{
  type metadata accessor for ReportShortcutViewModel(0);
  swift_allocObject();
  return sub_2748615AC();
}

uint64_t sub_274861808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a5;
  v28 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0);
  OUTLINED_FUNCTION_9();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  *a7 = sub_2748617B8;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = sub_2749FAA14() & 1;
  *(a7 + 32) = v18;
  *(a7 + 40) = v19 & 1;
  v20 = type metadata accessor for ReportShortcutView(0);
  v21 = sub_2749F9D74();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v21);
  sub_274866FA8(v17, v15);
  sub_2749FC5B4();
  sub_27472ECBC(v17, &qword_28096ADE0);
  v22 = a7 + *(v20 + 36);
  v29 = 0;
  result = sub_2749FC5B4();
  v24 = v31;
  *v22 = v30;
  *(v22 + 8) = v24;
  *(a7 + 48) = a1;
  *(a7 + 56) = a2;
  *(a7 + 64) = a3;
  *(a7 + 72) = a4 & 1;
  v25 = v28;
  *(a7 + 80) = v27;
  *(a7 + 88) = v25;
  return result;
}

uint64_t ReportShortcutView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  sub_2749FBB04();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B748);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v33 - v4;
  sub_2749FBAF4();
  OUTLINED_FUNCTION_66();
  sub_2749FC704();
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  v42 = v1;
  v41 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B750);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B758);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B760);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B768);
  v9 = sub_274866674();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969950);
  v11 = sub_27472AB6C(&qword_28096B790, &qword_280969950);
  v43 = v10;
  v44 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v46 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B798);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B7A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B7A8);
  v14 = sub_2749F9D74();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B7B0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B7B8);
  v17 = sub_2749FB854();
  v18 = sub_27472AB6C(&qword_28096B7C0, &qword_28096B7B8);
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = MEMORY[0x277CDE0D0];
  v19 = OUTLINED_FUNCTION_10_18();
  v20 = sub_27475D0D0();
  v43 = v15;
  v44 = MEMORY[0x277D837D0];
  v45 = v19;
  v46 = v20;
  v21 = OUTLINED_FUNCTION_10_18();
  v22 = sub_274866BC0(&qword_28096B7C8, MEMORY[0x277D7D2C8]);
  v43 = v13;
  v44 = v14;
  v45 = v21;
  v46 = v22;
  v23 = OUTLINED_FUNCTION_10_18();
  v24 = OUTLINED_FUNCTION_32();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v24);
  v26 = sub_27472AB6C(&qword_28096B7D8, &qword_28096B7D0);
  v43 = v25;
  v44 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v43 = v35;
  v44 = v34;
  v45 = v23;
  v46 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v40;
  sub_2749FB654();
  v29 = [objc_opt_self() systemGroupedBackgroundColor];
  v30 = sub_2749FC3E4();
  LOBYTE(v15) = sub_2749FBC64();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B7E0);
  v32 = v28 + *(result + 36);
  *v32 = v30;
  *(v32 + 8) = v15;
  return result;
}

uint64_t sub_274861E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B8B8);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v47 - v4;
  v51 = sub_2749FB4F4();
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FB854();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B7B8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B7B0);
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B7A8);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v49 = &v47 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B798);
  v54 = *(v20 - 8);
  v55 = v20;
  MEMORY[0x28223BE20](v20);
  v52 = &v47 - v21;
  v57 = a1;
  v59 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B8C0);
  sub_274867020();
  sub_2749FBE34();
  sub_2749FB844();
  v22 = sub_27472AB6C(&qword_28096B7C0, &qword_28096B7B8);
  sub_2749FC354();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v23 = qword_28159E448;
  v24 = sub_2749FCD64();
  v25 = sub_2749FCD64();

  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  v27 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v29 = v28;

  v64 = v27;
  v65 = v29;
  v30 = v51;
  (*(v5 + 104))(v7, *MEMORY[0x277CDDDC0], v51);
  v60 = v12;
  v61 = v8;
  v62 = v22;
  v63 = MEMORY[0x277CDE0D0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_27475D0D0();
  v33 = v48;
  v34 = v49;
  sub_2749FC134();
  (*(v5 + 8))(v7, v30);

  (*(v47 + 8))(v18, v33);
  type metadata accessor for ReportShortcutView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858);
  v36 = v56;
  v35 = v57;
  sub_2749FC5E4();
  v37 = sub_2749F9D74();
  v60 = v33;
  v61 = MEMORY[0x277D837D0];
  v62 = OpaqueTypeConformance2;
  v63 = v32;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_274866BC0(&qword_28096B7C8, MEMORY[0x277D7D2C8]);
  v41 = v52;
  v40 = v53;
  sub_2749FC254();
  sub_27472ECBC(v36, &qword_28096B8B8);
  v42 = (*(v50 + 8))(v34, v40);
  MEMORY[0x28223BE20](v42);
  *(&v47 - 2) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B7A0);
  v60 = v40;
  v61 = v37;
  v62 = v38;
  v63 = v39;
  swift_getOpaqueTypeConformance2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B7D0);
  v44 = sub_27472AB6C(&qword_28096B7D8, &qword_28096B7D0);
  v60 = v43;
  v61 = v44;
  swift_getOpaqueTypeConformance2();
  v45 = v55;
  sub_2749FC2C4();
  return (*(v54 + 8))(v41, v45);
}

uint64_t sub_2748626B0@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for ReportShortcutView(0);
  v49 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = v3;
  v51 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2749FB4F4();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2749FB854();
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B780);
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B778);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B760);
  MEMORY[0x28223BE20](v48);
  v46 = &v38 - v13;
  v52 = v1;
  type metadata accessor for ReportShortcutViewModel(0);
  sub_274866BC0(&qword_28096B878, type metadata accessor for ReportShortcutViewModel);
  v14 = v38;
  sub_2749FAB14();
  swift_getKeyPath();
  sub_2749FADA4();

  v57 = v54;
  v58 = v55;
  type metadata accessor for WFShortcutConcerningReportReason(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B950);
  sub_274866BC0(&qword_280967070, type metadata accessor for WFShortcutConcerningReportReason);
  sub_274867844();
  sub_2749FBE44();
  sub_2749FB844();
  v15 = sub_27472AB6C(&qword_28096B788, &qword_28096B780);
  v41 = v12;
  sub_2749FC354();
  (*(v40 + 8))(v6, v14);
  (*(v39 + 8))(v9, v7);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v16 = qword_28159E448;
  v17 = sub_2749FCD64();
  v18 = sub_2749FCD64();

  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  v20 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v22 = v21;

  *&v57 = v20;
  *(&v57 + 1) = v22;
  v24 = v44;
  v23 = v45;
  v25 = v47;
  (*(v45 + 104))(v44, *MEMORY[0x277CDDDC0], v47);
  *&v54 = v7;
  *(&v54 + 1) = v14;
  v55 = v15;
  v56 = MEMORY[0x277CDE0D0];
  swift_getOpaqueTypeConformance2();
  sub_27475D0D0();
  v26 = v46;
  v27 = v43;
  v28 = v41;
  sub_2749FC134();
  (*(v23 + 8))(v24, v25);

  (*(v42 + 8))(v28, v27);
  v30 = v51;
  v29 = v52;
  sub_2748672A4(v52, v51);
  v31 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v32 = swift_allocObject();
  v33 = sub_274867308(v30, v32 + v31);
  v34 = (v26 + *(v48 + 36));
  *v34 = sub_27486798C;
  v34[1] = v32;
  v34[2] = 0;
  v34[3] = 0;
  MEMORY[0x28223BE20](v33);
  *(&v38 - 2) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B768);
  sub_274866674();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969950);
  v36 = sub_27472AB6C(&qword_28096B790, &qword_280969950);
  *&v54 = v35;
  *(&v54 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  sub_2749FC2C4();
  return sub_27474A278(v26);
}

uint64_t sub_274862ECC()
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v0 = qword_28159E448;
  v1 = sub_2749FCD64();
  v2 = sub_2749FCD64();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  v4 = sub_2749FBEE4();
  v6 = v5;
  LOBYTE(v1) = v7 & 1;
  sub_274754DBC(v4, v5, v7 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B968);
  sub_2748678DC();
  sub_2749FC784();
  sub_27477656C(v4, v6, v1);
}

uint64_t sub_274863078()
{
  static WFShortcutConcerningReportReason.allCases.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B978);
  sub_27472AB6C(&qword_28096B980, &qword_28096B820);
  sub_27472AB6C(&qword_28096B970, &qword_28096B978);
  sub_274866BC0(&qword_28096B988, type metadata accessor for WFShortcutConcerningReportReason);
  return sub_2749FC764();
}

uint64_t sub_2748631CC(void **a1)
{
  v1 = *a1;
  type metadata accessor for WFShortcutConcerningReportReason(0);
  sub_274866BC0(&qword_280967070, type metadata accessor for WFShortcutConcerningReportReason);
  v2 = v1;
  return sub_2749FAD34();
}

uint64_t sub_274863288@<X0>(uint64_t a1@<X8>)
{
  sub_274860B88();
  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2748632E0()
{
  type metadata accessor for ReportShortcutViewModel(0);
  sub_274866BC0(&qword_28096B878, type metadata accessor for ReportShortcutViewModel);
  sub_2749FAB04();
  sub_2748613E8();
}

uint64_t sub_274863388(uint64_t a1)
{
  v2 = sub_2749FB834();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969950);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  sub_2749FB814();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969958);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096CFC0);
  v8 = sub_27472AB6C(&unk_28096B360, &unk_28096CFC0);
  v13 = v7;
  v14 = v8;
  swift_getOpaqueTypeConformance2();
  sub_2749FAB44();
  v9 = sub_27472AB6C(&qword_28096B790, &qword_280969950);
  MEMORY[0x277C5D5D0](v6, v3, v9);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2748635B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_2749FAF34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReportShortcutView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  sub_2748672A4(a1, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_274867308(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_2749FC624();
  sub_2749FAF14();
  sub_27472AB6C(&unk_28096B360, &unk_28096CFC0);
  sub_2749FC0B4();
  (*(v4 + 8))(v6, v3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_274863868()
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v0 = qword_28159E448;
  v1 = sub_2749FCD64();
  v2 = sub_2749FCD64();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  v4 = sub_2749FBEE4();
  v6 = v5;
  LOBYTE(v1) = v7 & 1;
  v8 = MEMORY[0x28223BE20](v4);
  sub_274754DBC(v8, v9, v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B948);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B8D0);
  sub_2748670F4();
  swift_getOpaqueTypeConformance2();
  sub_2749FC784();
  sub_27477656C(v4, v6, v1);
}

uint64_t sub_274863A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v13 = sub_2749FAA74();
  v3 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B8D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for ReportShortcutViewModel(0);
  sub_274866BC0(&qword_28096B878, type metadata accessor for ReportShortcutViewModel);
  sub_2749FAB14();
  swift_getKeyPath();
  sub_2749FADA4();

  sub_2749FAA64();
  sub_2749FC8F4();
  sub_2749FB004();
  (*(v3 + 32))(v8, v5, v13);
  memcpy(&v8[*(v6 + 36)], __src, 0x70uLL);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = *(a1 + 24);
  v16 = v9;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B920);
  sub_2749FAA04();
  sub_2748670F4();
  sub_2749FC2A4();

  return sub_27472ECBC(v8, &qword_28096B8D0);
}

uint64_t sub_274863DA0(uint64_t a1)
{
  v2 = sub_2749F9D74();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2749FC364();
}

uint64_t sub_274863E6C(uint64_t a1)
{
  v2 = sub_2749FB834();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B7D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2749FB7F4();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B8E8);
  sub_2748671C0();
  sub_2749FAB44();
  v7 = sub_27472AB6C(&qword_28096B7D8, &qword_28096B7D0);
  MEMORY[0x277C5D5D0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_274864024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReportShortcutView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B900);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-v9];
  sub_2748672A4(a1, &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_274867308(&v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B908);
  sub_2748673C0();
  sub_2749FC624();
  type metadata accessor for ReportShortcutViewModel(0);
  sub_274866BC0(&qword_28096B878, type metadata accessor for ReportShortcutViewModel);
  sub_2749FAB04();
  LOBYTE(v6) = sub_274861464();

  if (v6)
  {
    v13 = a1 + *(v4 + 36);
    v14 = *v13;
    v15 = *(v13 + 8);
    v24 = v14;
    v25 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
    sub_2749FC5C4();
    v16 = v23;
  }

  else
  {
    v16 = 1;
  }

  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(a2, v10, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B8E8);
  v20 = (a2 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = sub_2747FF010;
  v20[2] = v18;
  return result;
}

void sub_27486433C()
{
  v1 = v0;
  v2 = type metadata accessor for ReportShortcutView(0);
  v3 = *(v2 - 8);
  v4 = v43 - ((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(MEMORY[0x28223BE20](v2 - 8) + 44);
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(aBlock) = *v5;
  v50 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  if ((v48[0] & 1) == 0)
  {
    v10 = *v0;
    v9 = v0[1];
    v11 = *(v1 + 16);
    v12 = type metadata accessor for ReportShortcutViewModel(0);
    v47 = v8;
    v13 = v3;
    v14 = v4;
    v15 = v12;
    v16 = sub_274866BC0(&qword_28096B878, type metadata accessor for ReportShortcutViewModel);
    v45 = v9;
    v46 = v10;
    v44 = v11;
    v43[1] = v16;
    v43[2] = v15;
    v17 = v14;
    sub_2749FAB04();
    v18 = sub_274861290();

    if (v18)
    {
      v19 = *(v1 + 32);
      v20 = *(v1 + 40);
      LOBYTE(aBlock) = *(v1 + 24);
      v50 = v19;
      LOBYTE(v51) = v20;
      LOBYTE(v48[0]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B920);
      sub_2749FA9F4();
      LOBYTE(aBlock) = v6;
      v50 = v7;
      LOBYTE(v48[0]) = 1;
      sub_2749FC5D4();
      v22 = *(v1 + 48);
      v21 = *(v1 + 56);
      v23 = *(v1 + 64);
      if (*(v1 + 72))
      {
        v47 = v13;

        v24 = v22;
        v25 = [v24 record];
        v26 = v25;
        if (v23)
        {
          v48[0] = v21;
          v48[1] = v23;
          v27 = v25;

          sub_274864DAC(v48, &aBlock);
          swift_bridgeObjectRelease_n();

          v28 = v50;
        }

        else
        {
          v34 = v25;

          v28 = 0;
        }
      }

      else
      {
        v29 = v22;
        v30 = [v29 workflowRecord];
        if (!v30)
        {

          OUTLINED_FUNCTION_3_34();
          return;
        }

        v47 = v13;
        v26 = v30;
        v31 = [v29 identifier];
        v28 = v31;
        if (v31)
        {
          v32 = [v31 recordName];

          v43[0] = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v28 = v33;
          OUTLINED_FUNCTION_3_34();
        }

        else
        {
          OUTLINED_FUNCTION_3_34();
        }
      }

      v35 = [objc_opt_self() sharedManager];
      if (v28)
      {
        v36 = sub_2749FCD64();
      }

      else
      {
        v36 = 0;
      }

      sub_2749FAB04();
      v37 = sub_274861374();
      v39 = v38;

      sub_2748672A4(v1, v17);
      v40 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v41 = swift_allocObject();
      sub_274867308(v17, v41 + v40);
      v53 = sub_274867658;
      v54 = v41;
      aBlock = MEMORY[0x277D85DD0];
      v50 = 1107296256;
      v51 = sub_274865810;
      v52 = &block_descriptor_24;
      v42 = _Block_copy(&aBlock);

      sub_2748676C0(v26, v36, v18, v37, v39, v42, v35);

      _Block_release(v42);
    }
  }
}

uint64_t sub_2748647D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B918);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  v7 = sub_2749FBA34();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBC0);
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A4F0);
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = (a1 + *(type metadata accessor for ReportShortcutView(0) + 36));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v50) = v17;
  v51 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  v49 = a2;
  if (v54 == 1)
  {
    sub_2749FAB64();
    sub_2749FBA24();
    v19 = sub_27472AB6C(&qword_28159E718, &qword_28096DBC0);
    v20 = sub_274866BC0(&qword_28096A4F8, MEMORY[0x277CDE330]);
    v45 = v4;
    v21 = v13;
    v22 = v20;
    sub_2749FBF84();
    (*(v47 + 8))(v9, v7);
    (*(v46 + 8))(v12, v10);
    v23 = v48;
    (*(v48 + 16))(v6, v15, v21);
    swift_storeEnumTagMultiPayload();
    v50 = v10;
    v51 = v7;
    v52 = v19;
    v53 = v22;
    swift_getOpaqueTypeConformance2();
    sub_2749FB7B4();
    return (*(v23 + 8))(v15, v21);
  }

  else
  {
    v46 = v10;
    v47 = v7;
    v48 = v13;
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v25 = qword_28159E448;
    v26 = sub_2749FCD64();
    v27 = sub_2749FCD64();

    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v31 = v30;

    v50 = v29;
    v51 = v31;
    sub_27475D0D0();
    v32 = sub_2749FBEE4();
    v34 = v33;
    LOBYTE(v31) = v35;
    v36 = sub_2749FBEB4();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_27477656C(v32, v34, v31 & 1);

    *v6 = v36;
    *(v6 + 1) = v38;
    v6[16] = v40 & 1;
    *(v6 + 3) = v42;
    swift_storeEnumTagMultiPayload();
    v43 = sub_27472AB6C(&qword_28159E718, &qword_28096DBC0);
    v44 = sub_274866BC0(&qword_28096A4F8, MEMORY[0x277CDE330]);
    v50 = v46;
    v51 = v47;
    v52 = v43;
    v53 = v44;
    swift_getOpaqueTypeConformance2();
    return sub_2749FB7B4();
  }
}

uint64_t sub_274864DAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v39 - v5;
  v7 = sub_2749F9164();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  result = sub_2749FCE34();
  if (result == 32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B928);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_274A1AED0;

    *(v14 + 32) = sub_2747ACE68(8);
    *(v14 + 40) = v15;
    *(v14 + 48) = v16;
    *(v14 + 56) = v17;

    v18 = sub_2747ACE68(12);
    *(v14 + 64) = sub_274865150(8uLL, v18, v19);
    *(v14 + 72) = v20;
    *(v14 + 80) = v21;
    *(v14 + 88) = v22;

    v23 = sub_2747ACE68(16);
    *(v14 + 96) = sub_274865150(0xCuLL, v23, v24);
    *(v14 + 104) = v25;
    *(v14 + 112) = v26;
    *(v14 + 120) = v27;

    v28 = sub_2747ACE68(20);
    *(v14 + 128) = sub_274865150(0x10uLL, v28, v29);
    *(v14 + 136) = v30;
    *(v14 + 144) = v31;
    *(v14 + 152) = v32;

    *(v14 + 160) = sub_274865208(0x14uLL, v11, v12);
    *(v14 + 168) = v33;
    *(v14 + 176) = v34;
    *(v14 + 184) = v35;
    v39[3] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B930);
    sub_27472AB6C(&qword_28096B938, &qword_28096B930);
    sub_27486775C();
    sub_2749FCEE4();

    sub_2749F9104();

    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      result = sub_27472ECBC(v6, &qword_2809707E0);
      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v36 = sub_2749F9114();
      v38 = v37;
      result = (*(v8 + 8))(v10, v7);
      *a2 = v36;
      a2[1] = v38;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

unint64_t sub_274865150(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_2749FD6D4();
    if (v4)
    {
      result = a3;
    }

    if (a3 >> 14 >= result >> 14)
    {
      v5 = sub_2749FD6E4();

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_274865208(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
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
    result = sub_2749FCE44();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_2749FCEB4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2748652DC(void *a1, uint64_t a2)
{
  v4 = sub_2749FCA74();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FCAA4();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReportShortcutView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_27471CF08(0, &qword_28159E4E0);
  v13 = sub_2749FD404();
  sub_2748672A4(a2, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_274867308(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *(v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_2748677B0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_62;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274866BC0(&qword_28159E580, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27472AB6C(&qword_28159E530, &unk_28096DB60);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v9, v6, v16);
  _Block_release(v16);

  (*(v22 + 8))(v6, v4);
  return (*(v20 + 8))(v9, v21);
}

uint64_t sub_274865678(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = (a1 + *(type metadata accessor for ReportShortcutView(0) + 36));
  v11 = *v10;
  v12 = *(v10 + 1);
  v16[16] = v11;
  v17 = v12;
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5D4();
  if (!a2)
  {
    return (*(a1 + 80))(0);
  }

  v13 = a2;
  sub_2749F8FD4();
  sub_2749F9D84();
  v14 = sub_2749F9D74();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  sub_274866FA8(v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858);
  sub_2749FC5D4();

  return sub_27472ECBC(v9, &qword_28096ADE0);
}

void sub_274865810(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_274865880()
{
  result = sub_2749FCD64();
  qword_2809891C0 = result;
  return result;
}

id sub_2748658B8()
{
  if (qword_280966C08 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v1 = qword_2809891C0;

  return v1;
}

void sub_2748659CC(void *a1)
{
  swift_unknownObjectWeakAssign();
}

id ReportShortcutActivity.__allocating_init(shortcut:completion:)()
{
  OUTLINED_FUNCTION_41_0();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_66();
  return ReportShortcutActivity.init(shortcut:completion:)();
}

id ReportShortcutActivity.init(shortcut:completion:)()
{
  OUTLINED_FUNCTION_41_0();
  v1[OBJC_IVAR___WFReportShortcutActivity_reportSubmitted] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___WFReportShortcutActivity____lazy_storage___reportShortcutHostingViewController] = 0;
  v4 = &v1[OBJC_IVAR___WFReportShortcutActivity_item];
  *v4 = v3;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  v5 = &v1[OBJC_IVAR___WFReportShortcutActivity_completion];
  *v5 = v2;
  v5[1] = v0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ReportShortcutActivity();
  return objc_msgSendSuper2(&v7, sel_init);
}

id ReportShortcutActivity.__allocating_init(workflow:completion:)()
{
  OUTLINED_FUNCTION_41_0();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_66();
  return ReportShortcutActivity.init(workflow:completion:)();
}

id ReportShortcutActivity.init(workflow:completion:)()
{
  OUTLINED_FUNCTION_41_0();
  v1[OBJC_IVAR___WFReportShortcutActivity_reportSubmitted] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___WFReportShortcutActivity____lazy_storage___reportShortcutHostingViewController] = 0;
  v4 = &v1[OBJC_IVAR___WFReportShortcutActivity_item];
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = v3;
  v4[24] = 1;
  v5 = &v1[OBJC_IVAR___WFReportShortcutActivity_completion];
  *v5 = v2;
  v5[1] = v0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ReportShortcutActivity();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_274865C88()
{
  if (qword_280966C08 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_2809891C0;
  v1 = qword_2809891C0;
  return v0;
}

uint64_t sub_274865D4C()
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  OUTLINED_FUNCTION_32();
  v0 = sub_2749FCD64();
  OUTLINED_FUNCTION_32();
  v1 = sub_2749FCD64();

  v3 = OUTLINED_FUNCTION_13_1(v2, sel_localizedStringForKey_value_table_);

  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v4;
}

BOOL sub_274865ECC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    sub_274797FD4(v2, v11);
    sub_274797FD4(v11, v10);
    sub_27471CF08(0, &qword_28096B810);
    if (OUTLINED_FUNCTION_9_16() || (sub_274797FD4(v11, v10), sub_27471CF08(0, &qword_28096BF80), OUTLINED_FUNCTION_9_16()))
    {

      sub_2747A42D8(v11, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27476D590(0, *(i + 16) + 1, 1);
        i = v12;
      }

      v6 = *(i + 16);
      v5 = *(i + 24);
      if (v6 >= v5 >> 1)
      {
        sub_27476D590((v5 > 1), v6 + 1, 1);
        i = v12;
      }

      *(i + 16) = v6 + 1;
      sub_2747A42D8(v10, (i + 32 * v6 + 32));
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v2 += 32;
  }

  v7 = *(i + 16);

  return v7 != 0;
}

id sub_2748660B8()
{
  v1 = OBJC_IVAR___WFReportShortcutActivity____lazy_storage___reportShortcutHostingViewController;
  v2 = *(v0 + OBJC_IVAR___WFReportShortcutActivity____lazy_storage___reportShortcutHostingViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFReportShortcutActivity____lazy_storage___reportShortcutHostingViewController);
  }

  else
  {
    v4 = sub_27486611C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_27486611C(uint64_t a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0);
  v2 = MEMORY[0x28223BE20](v23);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = type metadata accessor for ReportShortcutView(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR___WFReportShortcutActivity_item);
  v12 = *(a1 + OBJC_IVAR___WFReportShortcutActivity_item + 8);
  v13 = *(a1 + OBJC_IVAR___WFReportShortcutActivity_item + 16);
  v14 = *(a1 + OBJC_IVAR___WFReportShortcutActivity_item + 24);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *v10 = sub_2748617B8;
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_274866F68(v11, v12, v13, v14);

  v10[24] = sub_2749FAA14() & 1;
  *(v10 + 4) = v16;
  v10[40] = v17 & 1;
  v18 = sub_2749F9D74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
  sub_274866FA8(v6, v4);
  sub_2749FC5B4();
  sub_27472ECBC(v6, &qword_28096ADE0);
  v19 = &v10[*(v8 + 44)];
  v24 = 0;
  sub_2749FC5B4();

  v20 = v26;
  *v19 = v25;
  *(v19 + 1) = v20;
  *(v10 + 6) = v11;
  *(v10 + 7) = v12;
  *(v10 + 8) = v13;
  v10[72] = v14;
  *(v10 + 10) = sub_274866F60;
  *(v10 + 11) = v15;
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B8B0));
  return sub_2749FB6C4();
}

uint64_t sub_27486637C(unsigned __int8 a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    *(result + OBJC_IVAR___WFReportShortcutActivity_reportSubmitted) = (a1 ^ 1) & 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong _reloadActivity_];
    }

    [v3 activityDidFinish_];
    v6 = *&v3[OBJC_IVAR___WFReportShortcutActivity_completion];

    v6(a1 & 1);
  }

  return result;
}

id ReportShortcutActivity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReportShortcutActivity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportShortcutActivity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2748665C4(void *a1)
{
  v1 = [a1 source];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

unint64_t sub_274866674()
{
  result = qword_28096B770;
  if (!qword_28096B770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B780);
    sub_2749FB854();
    sub_27472AB6C(&qword_28096B788, &qword_28096B780);
    swift_getOpaqueTypeConformance2();
    sub_27475D0D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B770);
  }

  return result;
}

void sub_2748668A8()
{
  sub_274866C60(319, &qword_28096B848, &qword_28096B850, &unk_274A1B0D8, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_274866CC4(319, &qword_28159E768, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_274866A08()
{
  sub_274866B2C();
  if (v0 <= 0x3F)
  {
    sub_274866C08();
    if (v1 <= 0x3F)
    {
      sub_27478CEF4();
      if (v2 <= 0x3F)
      {
        sub_274866C60(319, &qword_28096B888, &qword_28096ADE0, &unk_274A19718, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_274866CC4(319, &qword_28096D840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_274866B2C()
{
  if (!qword_28096B870)
  {
    type metadata accessor for ReportShortcutViewModel(255);
    sub_274866BC0(&qword_28096B878, type metadata accessor for ReportShortcutViewModel);
    v0 = sub_2749FAB24();
    if (!v1)
    {
      atomic_store(v0, &qword_28096B870);
    }
  }
}

uint64_t sub_274866BC0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_274866C08()
{
  if (!qword_28096B880)
  {
    v0 = sub_2749FAA24();
    if (!v1)
    {
      atomic_store(v0, &qword_28096B880);
    }
  }
}

void sub_274866C60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_274866CC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_274866D54()
{
  result = qword_28096B890;
  if (!qword_28096B890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B7E0);
    sub_27472AB6C(&qword_28096B898, &qword_28096B8A0);
    sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B890);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_274866E58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274866E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_274866F14(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

id sub_274866F68(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v6 = a1;

    a1 = v6;
    v4 = vars8;
  }

  return a1;
}

uint64_t sub_274866FA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_274867020()
{
  result = qword_28096B8C8;
  if (!qword_28096B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B8D0);
    sub_2748670F4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B8C8);
  }

  return result;
}

unint64_t sub_2748670F4()
{
  result = qword_28096B8D8;
  if (!qword_28096B8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B8D0);
    sub_274866BC0(&qword_28096B8E0, MEMORY[0x277CDD6F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B8D8);
  }

  return result;
}

unint64_t sub_2748671C0()
{
  result = qword_28096B8F0;
  if (!qword_28096B8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B8E8);
    sub_27472AB6C(&qword_28096B8F8, &qword_28096B900);
    sub_27472AB6C(&unk_28096EC00, &qword_280969988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B8F0);
  }

  return result;
}

uint64_t sub_2748672A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportShortcutView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274867308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportShortcutView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_27486736C()
{
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_11_1();
  sub_27486433C();
}

unint64_t sub_2748673C0()
{
  result = qword_28096B910;
  if (!qword_28096B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DBC0);
    sub_2749FBA34();
    sub_27472AB6C(&qword_28159E718, &qword_28096DBC0);
    sub_274866BC0(&qword_28096A4F8, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B910);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{
  v2 = type metadata accessor for ReportShortcutView(0);
  OUTLINED_FUNCTION_8_20();
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 16) & ~v4;
  sub_274727224();

  sub_274866F14(*(v0 + v7 + 48), *(v0 + v7 + 56), *(v0 + v7 + 64), *(v0 + v7 + 72));

  v8 = v0 + v7 + *(v2 + 32);
  v9 = sub_2749F9D74();
  if (!OUTLINED_FUNCTION_14_10(v9))
  {
    (*(*(v1 - 8) + 8))(v8, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t sub_274867658(void *a1)
{
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_11_1();

  return sub_2748652DC(a1, v1 + v3);
}

void sub_2748676C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_2749FCD64();

  [a7 reportWorkflow:a1 iCloudIdentifier:a2 reportReason:a3 reportMessage:v12 completionHandler:a6];
}

unint64_t sub_27486775C()
{
  result = qword_28096B940;
  if (!qword_28096B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B940);
  }

  return result;
}

uint64_t sub_2748677B0()
{
  v1 = *(type metadata accessor for ReportShortcutView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_274865678(v0 + v2, v3);
}

unint64_t sub_274867844()
{
  result = qword_28096B958;
  if (!qword_28096B958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B950);
    sub_2748678DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B958);
  }

  return result;
}

unint64_t sub_2748678DC()
{
  result = qword_28096B960;
  if (!qword_28096B960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B968);
    sub_27472AB6C(&qword_28096B970, &qword_28096B978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B960);
  }

  return result;
}

uint64_t sub_27486798C()
{
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_11_1();

  return sub_2748632E0();
}

uint64_t sub_2748679EC()
{
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_11_1();
  return (*(v0 + v1 + 80))(1);
}

double sub_274867A58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_274867ACC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

double *sub_274867B44(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  swift_beginAccess();
  sub_2749FA8C4();
  swift_endAccess();
  v9 = (v6 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet11CheckButton5Model_action);
  *v9 = a1;
  v9[1] = a2;
  return v6;
}

uint64_t sub_274867BDC()
{
  v1 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet11CheckButton5Model__pointSize;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F40);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t _s14descr28838E601O11CheckButtonV5ModelCMa()
{
  result = qword_2815A06B8;
  if (!qword_2815A06B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274867CE4()
{
  sub_274809398();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_274867DA8@<X0>(uint64_t *a1@<X8>)
{
  _s14descr28838E601O11CheckButtonV5ModelCMa();
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_274867DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v27 = a3;
  *&v26 = a1;
  v28 = a5;
  v8 = sub_2749FAF64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EF0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v29 = v26;
  v30 = a2;
  v31 = v6;
  v32 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EF8);
  sub_274809B10();
  sub_2749FC624();
  v16 = *(a2 + 16);
  v25 = *(a2 + 32);
  v26 = v16;
  v17 = sub_2749FBC64();
  v18 = &v15[*(v12 + 36)];
  *v18 = v17;
  v19 = v26;
  *(v18 + 24) = v25;
  *(v18 + 8) = v19;
  v18[40] = 0;
  sub_2749FAF54();
  sub_274809BC8();
  sub_27480010C();
  v20 = v28;
  sub_2749FBFC4();
  (*(v9 + 8))(v11, v8);
  sub_27472ECBC(v15, &qword_280969EF0);
  v36 = v27;
  v37 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  v21 = v33;
  v22 = v34;
  LOBYTE(v9) = v35;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F30);
  v24 = v20 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22;
  *(v24 + 16) = v9;
  return result;
}

uint64_t sub_274868064@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a3;
  v37 = a1;
  v35 = a2;
  v38 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F38);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v34[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F08);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v34[-v16];
  sub_2749FC514();
  sub_2749FB674();
  v18 = sub_2749FB684();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
  v19 = sub_2749FC544();

  sub_27472ECBC(v13, &qword_280967710);
  v20 = sub_2749FC474();
  sub_2749FC474();
  v39 = v35;
  v40 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  v21 = sub_2749FC484();

  v22 = *(v8 + 44);
  v23 = *MEMORY[0x277CE13B8];
  v24 = sub_2749FC994();
  (*(*(v24 - 8) + 104))(v10 + v22, v23, v24);
  *v10 = v21;
  v25 = (v17 + *(v15 + 44));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F10);
  sub_2747E2C9C(v10, v25 + *(v26 + 52), &qword_280969F38);
  *v25 = v20;
  *v17 = v19;
  sub_274867A58();
  v27 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v27);
  v28 = sub_2749FBD64();
  sub_27472ECBC(v6, &unk_28096C0A0);
  KeyPath = swift_getKeyPath();
  v30 = v17;
  v31 = v38;
  sub_2747E2C9C(v30, v38, &qword_280969F08);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969EF8);
  v33 = (v31 + *(result + 36));
  *v33 = KeyPath;
  v33[1] = v28;
  return result;
}

uint64_t EnvironmentValues.rootNavigator.getter()
{
  sub_274868478();
  sub_2749FB4D4();
  return v1;
}

unint64_t sub_274868478()
{
  result = qword_28096B990;
  if (!qword_28096B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B990);
  }

  return result;
}

void (*EnvironmentValues.rootNavigator.modify(void *a1))(_OWORD **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_274868478();
  sub_2749FB4D4();
  *v3 = *(v3 + 1);
  return sub_27486858C;
}

void sub_27486858C(_OWORD **a1, char a2)
{
  v2 = *a1;
  (*a1)[1] = **a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_2749FB4E4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2749FB4E4();
  }

  free(v2);
}

uint64_t InspectorPane.imageName.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x6C676E6174636572;
  }

  if (a1 == 1)
  {
    return 1868983913;
  }

  result = sub_2749FDD24();
  __break(1u);
  return result;
}

uint64_t InspectorPane.accessibilityLabel.getter(unint64_t a1)
{
  if (a1 > 1)
  {
    result = sub_2749FDD24();
    __break(1u);
  }

  else
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v1 = qword_28159E448;
    v2 = sub_2749FCD64();
    v3 = sub_2749FCD64();

    v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

    v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    return v5;
  }

  return result;
}

uint64_t InspectorPane.accessibilityIdentifier.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x696C6E6F69746361;
  }

  if (a1 == 1)
  {
    return 0x74756374726F6873;
  }

  result = sub_2749FDD24();
  __break(1u);
  return result;
}

unint64_t InspectorPane.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_274868880()
{
  result = qword_28096B998;
  if (!qword_28096B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B998);
  }

  return result;
}

unint64_t sub_2748688D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = InspectorPane.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_27486890C()
{
  result = qword_28096B9A0;
  if (!qword_28096B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B9A0);
  }

  return result;
}

void sub_274868994()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D74420];
  v2 = *MEMORY[0x277D76A28];
  v3 = [v0 _preferredFontForTextStyle_weight_];

  if (v3)
  {
    qword_2809891C8 = v3;
  }

  else
  {
    __break(1u);
  }
}

char *sub_274868A20(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10WorkflowUI22WFIconPickerHeaderView_label;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for WFIconPickerHeaderView();
  v10 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC10WorkflowUI22WFIconPickerHeaderView_label;
  v12 = *&v10[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerHeaderView_label];
  v13 = v10;
  [v12 setTextAlignment_];
  v14 = qword_280966C10;
  v15 = *&v10[v11];
  if (v14 != -1)
  {
    swift_once();
  }

  [v15 setFont_];

  [*&v10[v11] setNumberOfLines_];
  v16 = *&v10[v11];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  [v18 setTextColor_];

  [*&v10[v11] setContentMode_];
  [v13 addSubview_];
  [v13 setIsAccessibilityElement_];
  [v13 setAccessibilityTraits_];

  return v13;
}

id sub_274868C34()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for WFIconPickerHeaderView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerHeaderView_label];
  [v0 bounds];
  [v1 sizeThatFits_];
  v3 = v2;
  [v0 bounds];
  v4 = CGRectGetHeight(v8) - v3;
  [v0 bounds];
  return [v1 setFrame_];
}

void sub_274868D48()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI22WFIconPickerHeaderView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_2749FDAE4();
  __break(1u);
}

id sub_274868DF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFIconPickerHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274868E60@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B9D0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - v3;
  v5 = type metadata accessor for CollectionViewHeader();
  OUTLINED_FUNCTION_43();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B9D8);
  OUTLINED_FUNCTION_43();
  v34 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B9E0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  if (*(v1 + *(v5 + 28)) == 1)
  {
    sub_274869FA4(v1, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v20 = swift_allocObject();
    v21 = sub_27486A008(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    MEMORY[0x28223BE20](v21);
    *(&v33 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B9E8);
    sub_274869E98();
    sub_2749FC624();
    sub_27472AB6C(&qword_28096B9F8, &qword_28096B9D8);
    sub_274835C2C();
    sub_2749FBFD4();
    (*(v34 + 8))(v15, v11);
    v22 = sub_2749FB8B4();
    v23 = sub_2749FB8D4();
    v24 = &v18[*(v35 + 36)];
    *v24 = v22;
    *(v24 + 1) = v23;
    sub_27474A594(v18, v4);
    swift_storeEnumTagMultiPayload();
    sub_274869D5C();
    sub_2749FB7B4();
    return sub_27474A5FC(v18);
  }

  else
  {
    v26 = v1[1];
    v27 = v1[2];
    v28 = *v1;
    KeyPath = swift_getKeyPath();
    v39[103] = 0;
    v30 = swift_getKeyPath();
    v31 = *(v5 + 32);
    memcpy(v40, v1 + v31, 0x59uLL);
    memcpy(v43, v1 + v31, sizeof(v43));
    v41[0] = v30;
    memcpy(&v41[1], v1 + v31, 0x59uLL);
    memcpy(&v39[6], v41, 0x61uLL);
    v42 = v30;
    v32 = v27;

    sub_2747D2AC8(v40, v38);
    sub_274869C84(v41, v38);
    sub_274869CF4(&v42);
    *v4 = v32;
    *(v4 + 1) = v28;
    *(v4 + 2) = v26;
    v4[24] = 0;
    *(v4 + 4) = KeyPath;
    v4[121] = 0;
    memcpy(v4 + 122, v39, 0x67uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B9E8);
    sub_274869D5C();
    sub_274869E98();
    return sub_2749FB7B4();
  }
}

void *sub_274869338@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  v7 = type metadata accessor for CollectionViewHeader();
  v8 = *(a1 + *(v7 + 28));
  KeyPath = swift_getKeyPath();
  v15[103] = 0;
  v10 = swift_getKeyPath();
  v11 = *(v7 + 32);
  memcpy(__dst, a1 + v11, 0x59uLL);
  memcpy(v19, a1 + v11, sizeof(v19));
  __src[0] = v10;
  memcpy(&__src[1], a1 + v11, 0x59uLL);
  memcpy(&v15[6], __src, 0x61uLL);
  v18 = v10;
  v12 = v5;

  sub_2747D2AC8(__dst, v14);
  sub_274869C84(__src, v14);
  sub_274869CF4(&v18);
  *a2 = v12;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = v8;
  *(a2 + 32) = KeyPath;
  *(a2 + 121) = 0;
  return memcpy((a2 + 122), v15, 0x67uLL);
}

void sub_274869474()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CollectionViewHeaderView();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC10WorkflowUI24CollectionViewHeaderView_hostingView;
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUI24CollectionViewHeaderView_hostingView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;
}

void sub_274869528(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v47 = a7;
  v46 = a5;
  v45 = a1;
  v15 = type metadata accessor for CollectionViewHeader();
  OUTLINED_FUNCTION_9();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  memcpy(__dst, a6, 0x59uLL);
  v48 = OBJC_IVAR____TtC10WorkflowUI24CollectionViewHeaderView_hostingView;
  v22 = *&v9[OBJC_IVAR____TtC10WorkflowUI24CollectionViewHeaderView_hostingView];
  if (v22)
  {
    [v22 removeFromSuperview];
  }

  if (a3)
  {
    v23 = a3;
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x277D79FC8]) init];
    v23 = [objc_allocWithZone(MEMORY[0x277D79FD0]) initWithImage_];
  }

  v25 = v15[6];
  sub_2749F9284();
  OUTLINED_FUNCTION_9();
  (*(v26 + 16))(&v21[v25], a4);
  *v21 = v45;
  *(v21 + 1) = a2;
  *(v21 + 2) = v23;
  v21[v15[7]] = v46 & 1;
  memcpy(&v21[v15[8]], __dst, 0x59uLL);
  v27 = &v21[v15[9]];
  *v27 = v47;
  *(v27 + 1) = a8;
  sub_274869FA4(v21, v19);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BA20));
  v29 = a3;

  sub_2747D2AC8(__dst, v49);

  v30 = sub_2749FADF4();
  [v9 addSubview_];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_274A108E0;
  v33 = [v30 leadingAnchor];
  v34 = [v9 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v32 + 32) = v35;
  v36 = [v30 trailingAnchor];

  v37 = OUTLINED_FUNCTION_2_26([v9 trailingAnchor]);
  *(v32 + 40) = v37;
  v38 = [v30 topAnchor];

  v39 = OUTLINED_FUNCTION_2_26([v9 topAnchor]);
  *(v32 + 48) = v39;
  v40 = [v30 bottomAnchor];

  v41 = OUTLINED_FUNCTION_2_26([v9 bottomAnchor]);
  *(v32 + 56) = v41;
  sub_27471CF08(0, &qword_280968040);
  v42 = sub_2749FCF74();

  [v31 activateConstraints_];

  sub_27486A0D4(v21);
  v43 = *&v9[v48];
  *&v9[v48] = v30;
}

id sub_274869988(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC10WorkflowUI24CollectionViewHeaderView_hostingView] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CollectionViewHeaderView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_274869A1C(void *a1)
{
  *&v1[OBJC_IVAR____TtC10WorkflowUI24CollectionViewHeaderView_hostingView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollectionViewHeaderView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_274869AB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CollectionViewHeader()
{
  result = qword_28096B9C0;
  if (!qword_28096B9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274869B94()
{
  result = sub_27471CF08(319, &qword_280970690);
  if (v1 <= 0x3F)
  {
    result = sub_2749F9284();
    if (v2 <= 0x3F)
    {
      result = sub_27478CEF4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_274869C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274869CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274869D5C()
{
  result = qword_28096B9F0;
  if (!qword_28096B9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B9E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B9D8);
    sub_27472AB6C(&qword_28096B9F8, &qword_28096B9D8);
    sub_274835C2C();
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&qword_28096BA00, &qword_28096BA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B9F0);
  }

  return result;
}

unint64_t sub_274869E98()
{
  result = qword_28096BA10;
  if (!qword_28096BA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B9E8);
    sub_274869F50();
    sub_27472AB6C(&qword_280969018, &qword_280969020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BA10);
  }

  return result;
}

unint64_t sub_274869F50()
{
  result = qword_28096BA18;
  if (!qword_28096BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BA18);
  }

  return result;
}

uint64_t sub_274869FA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27486A008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewHeader();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27486A06C()
{
  v1 = *(type metadata accessor for CollectionViewHeader() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2748692F4(v2);
}

uint64_t sub_27486A0D4(uint64_t a1)
{
  v2 = type metadata accessor for CollectionViewHeader();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27486A140()
{
  result = qword_28096BA28;
  if (!qword_28096BA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096BA30);
    sub_274869D5C();
    sub_274869E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BA28);
  }

  return result;
}

uint64_t sub_27486A1E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2749FB964();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BA38) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  sub_2749FB974();
  if (sub_2749FB984())
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
  }

  (*(v4 + 32))(v11, v7, v2);
  *&v11[*(v8 + 44)] = v12;
  v13 = 0;
  if ((sub_2749FB984() & 1) == 0)
  {
    v13 = sub_2749FC984();
  }

  v14 = sub_2749FB984();
  sub_27486A380(v11, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096BA40);
  v16 = a1 + *(result + 36);
  *v16 = v13;
  *(v16 + 8) = v14 & 1;
  return result;
}

uint64_t sub_27486A380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BA38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27486A3F0()
{
  result = qword_28159E6C0;
  if (!qword_28159E6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096BA40);
    sub_27486A4A8();
    sub_27472AB6C(&qword_28159E640, &unk_28096E8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6C0);
  }

  return result;
}

unint64_t sub_27486A4A8()
{
  result = qword_28159E6F0;
  if (!qword_28159E6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096BA38);
    sub_27486A534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6F0);
  }

  return result;
}

unint64_t sub_27486A534()
{
  result = qword_28096E8D0;
  if (!qword_28096E8D0)
  {
    sub_2749FB964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E8D0);
  }

  return result;
}

uint64_t sub_27486A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2747D7100();
  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BA58);
  sub_27486A7F4();
  sub_27486A858();
  sub_27486A8C0();
  return sub_2749FC754();
}

uint64_t sub_27486A6A8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 contentItemClassName];
  if (!v4)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v4 = sub_2749FCD64();
  }

  v5 = NSClassFromString(v4);

  if (!v5)
  {
    v13 = 0;
    v9 = 0;
    v7 = 0;
    result = 0;
LABEL_8:
    v11 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  swift_getObjCClassMetadata();
  result = swift_dynamicCastTypeToObjCProtocolConditional();
  v7 = result;
  if (!result)
  {
    v13 = 0;
    v9 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  v8 = [swift_getObjCClassFromMetadata() localizedPluralFilterDescription];
  v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v5 = v10;

  v7 = sub_27486A998();
  result = sub_2747D9474(v3);
  v13 = 1;
LABEL_9:
  *a2 = v13;
  a2[1] = v9;
  a2[2] = v5;
  a2[3] = v7;
  a2[4] = result;
  a2[5] = v11;
  a2[6] = v12;
  return result;
}

unint64_t sub_27486A7F4()
{
  result = qword_28096BA60;
  if (!qword_28096BA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096BA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BA60);
  }

  return result;
}

unint64_t sub_27486A858()
{
  result = qword_28096BA68;
  if (!qword_28096BA68)
  {
    sub_27471CF08(255, &unk_28096BA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BA68);
  }

  return result;
}

unint64_t sub_27486A8C0()
{
  result = qword_28096EDC0;
  if (!qword_28096EDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096BA58);
    sub_27486A944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EDC0);
  }

  return result;
}

unint64_t sub_27486A944()
{
  result = qword_28096BA80;
  if (!qword_28096BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BA80);
  }

  return result;
}

id sub_27486A998()
{
  sub_27471CF08(0, &qword_28096BAE8);
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  sub_27471CF08(0, &qword_28096BAF0);
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  sub_27471CF08(0, &qword_28096BAF8);
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  sub_27471CF08(0, &unk_28096BB00);
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = NSStringFromClass(ObjCClassFromMetadata);
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v5 = v4;

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  LOBYTE(v2) = sub_2749FD764();

  if (v2)
  {

LABEL_7:
    sub_27471CF08(0, &qword_28096BB10);
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    return sub_274903E28();
  }

  v11 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v12 = v6;
  v7 = sub_2749FD764();

  if (v7)
  {
    goto LABEL_7;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
  v9 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  v10 = objc_allocWithZone(MEMORY[0x277D7A158]);
  return sub_27491A250(0x6873617274, 0xE500000000000000, v9);
}

void *sub_27486AC88()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_274797E40();
  if (v4)
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_27486ADD4(void *a1)
{
  swift_unknownObjectWeakAssign();
}

id sub_27486AE78()
{
  v1 = OBJC_IVAR___WFIconPickerViewController____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR___WFIconPickerViewController____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFIconPickerViewController____lazy_storage___dataSource);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR___WFIconPickerViewController_gridView);
    v6 = *(v0 + OBJC_IVAR___WFIconPickerViewController_workflow);
    v7 = objc_allocWithZone(type metadata accessor for WFIconPickerGridViewDataSource());
    v8 = v5;
    v9 = v6;
    sub_274777374();
    v10 = *(v0 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_27486AF20(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___WFIconPickerViewController_iconPreview;
  type metadata accessor for WFIconPreview();
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR___WFIconPickerViewController_previewPadding) = 0x4044000000000000;
  *(v1 + OBJC_IVAR___WFIconPickerViewController_previewDimension) = 0x4056600000000000;
  v5 = OBJC_IVAR___WFIconPickerViewController_gridView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BB58);
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR___WFIconPickerViewController____lazy_storage___dataSource) = 0;
  *(v1 + OBJC_IVAR___WFIconPickerViewController_workflow) = a1;
  OUTLINED_FUNCTION_24();
  return objc_msgSendSuper2(v6, v7, v1, ObjectType);
}

id sub_27486B04C()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR___WFIconPickerViewController_gridView];
  [v1 setClipsToBounds_];
  [v1 setAutoresizingMask_];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result addSubview_];

    v4 = sub_27486AE78();
    sub_27486C880(&qword_28096BB60, 255, type metadata accessor for WFIconPickerGridViewDataSource);
    OUTLINED_FUNCTION_0_26();
    *&v1[*(v5 + 160) + 8] = v6;
    swift_unknownObjectWeakAssign();

    sub_27486C880(&qword_28096BB68, v7, type metadata accessor for WFIconPickerViewController);
    OUTLINED_FUNCTION_0_26();
    *&v1[*(v8 + 168) + 8] = v9;
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_0_26();
    v12 = &off_288395290;
    if (!Strong)
    {
      v12 = 0;
    }

    *&v1[*(v11 + 176) + 8] = v12;
    swift_unknownObjectWeakAssign();

    v13 = type metadata accessor for WFIconPickerHeaderView();
    sub_2747938B0(v13, 0xD000000000000014, 0x8000000274A2B090);
    v14 = type metadata accessor for WFIconPickerSymbolCell();
    sub_2747938B0(v14, 0xD000000000000014, 0x8000000274A2B0B0);
    v15 = type metadata accessor for WFIconPickerColorCell();
    sub_2747938B0(v15, 0x6C6543726F6C6F43, 0xE90000000000006CLL);
    v16 = type metadata accessor for WFIconPickerContentUnavailableView();
    return sub_2747938B0(v16, 0xD000000000000016, 0x8000000274A2B070);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_27486B2F0(char a1)
{
  v26.receiver = v1;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewIsAppearing_, a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___WFPreviewNavigationController_additionContainedScrollViewTopInset;
    OUTLINED_FUNCTION_24();
    swift_beginAccess();
    v6 = *&v4[v5];
    v7 = *&v1[OBJC_IVAR___WFIconPickerViewController_gridView];
    [v7 setContentOffset_];
    v8 = [v1 view];
    if (!v8)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 safeAreaInsets];
    v11 = v10;

    if (v11 == 0.0)
    {
      v12 = 16.0;
    }

    else
    {
      v12 = 0.0;
    }

    [v7 setContentInset_];
  }

  v13 = *&v1[OBJC_IVAR___WFIconPickerViewController_gridView];
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [(UIScrollView *)v13 setFrame:v17, v19, v21, v23];
  sub_27486B4B0();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    WFPreviewNavigationController.gridViewDidScroll(_:isAnimatingSnapshotChanges:)(v13, 0);
  }
}

void sub_27486B4B0()
{
  v1 = *(v0 + OBJC_IVAR___WFIconPickerViewController_iconPreview);
  type metadata accessor for WFIconPreview();
  if (swift_dynamicCastClass())
  {
    v2 = *(v0 + OBJC_IVAR___WFIconPickerViewController_workflow);
    v3 = v1;
    v4 = v2;
    sub_2748FBF9C(v4);
  }
}

void sub_27486B5A8()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___WFIconPickerViewController_iconPreview;
  type metadata accessor for WFIconPreview();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR___WFIconPickerViewController_previewPadding) = 0x4044000000000000;
  *(v0 + OBJC_IVAR___WFIconPickerViewController_previewDimension) = 0x4056600000000000;
  v2 = OBJC_IVAR___WFIconPickerViewController_gridView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BB58);
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR___WFIconPickerViewController____lazy_storage___dataSource) = 0;
  sub_2749FDAE4();
  __break(1u);
}

void sub_27486B7BC(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v111 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0);
  v9 = OUTLINED_FUNCTION_34(v8);
  MEMORY[0x28223BE20](v9);
  v110 = v101 - v10;
  v115 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v106 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v104 = v101 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v19 = OUTLINED_FUNCTION_34(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39();
  v105 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v101 - v23;
  switch(a4)
  {
    case 1:
    case 3:
      return;
    case 2:
      v34 = *(v5 + OBJC_IVAR___WFIconPickerViewController_workflow);
      WFWorkflow.setIconColor(to:)(a2);

      v35 = sub_27486AC88();
      if (v35)
      {
        v36 = v35;
        type metadata accessor for WFIconPickerColorCell();
        if (swift_dynamicCastClass())
        {
          sub_2747B5834(a2, 1, 0);
        }
      }

      goto LABEL_47;
    default:
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      v112 = v15;
      v114 = v24;
      if (v25)
      {
        v26 = (v5 + OBJC_IVAR___WFIconPickerViewController_workflow);
        v27 = *(v5 + OBJC_IVAR___WFIconPickerViewController_workflow);
        v28 = OUTLINED_FUNCTION_5_25();
        sub_2747729AC(v28, v29, v30);
        v31 = v27;
        WFWorkflow.setIconGlyph(to:)([v25 glyph]);

        v32 = *v26;
        WFWorkflow.setAssociatedAppBundleIdentifier(to:)(0);
        if (v33)
        {

          v33 = 0;
        }

        v101[0] = v33;
      }

      else
      {
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (!v37)
        {
          v101[0] = 0;
          v24 = v114;
          goto LABEL_17;
        }

        v38 = v37;
        v26 = (v5 + OBJC_IVAR___WFIconPickerViewController_workflow);
        v39 = *(v5 + OBJC_IVAR___WFIconPickerViewController_workflow);
        v40 = OUTLINED_FUNCTION_5_25();
        sub_2747729AC(v40, v41, v42);
        v43 = v39;
        WFWorkflow.setIconGlyph(to:)(61440);
        v108 = 0;

        v44 = *v26;
        v45 = [v38 bundleIdentifier];
        v46 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v48 = v47;

        v49.value._countAndFlagsBits = v46;
        v109 = v48;
        v49.value._object = v48;
        v113 = v44;
        WFWorkflow.setAssociatedAppBundleIdentifier(to:)(v49);
        if (v50)
        {

          v50 = 0;
        }

        v15 = v112;
        v101[0] = v50;

        v24 = v114;
      }

      v51 = [*v26 record];
      [v51 setShouldAutoUpdateAssociatedAppBundleIdentifier_];

      v52 = OUTLINED_FUNCTION_5_25();
      sub_274772984(v52, v53, v54);
LABEL_17:
      v55 = sub_27486AC88();
      if (v55)
      {
        v56 = v55;
        type metadata accessor for WFIconPickerSymbolCell();
        v57 = swift_dynamicCastClass();
        if (v57)
        {
          v58 = v57;
          sub_2749775FC(a2, 0);
          *(v58 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 1;
          sub_274977DCC();
        }
      }

      v101[2] = a2;
      v101[1] = v5;
      v59 = v111;
      OUTLINED_FUNCTION_10_19();
      v61 = *(v60 + 112);
      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      v62 = *(v59 + v61) + 64;
      OUTLINED_FUNCTION_2_27();
      v65 = v64 & v63;
      OUTLINED_FUNCTION_10_19();
      v67 = *(v66 + 152);
      v103 = v68;

      v109 = v67;
      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      v69 = 0;
      v70 = (v61 + 63) >> 6;
      OUTLINED_FUNCTION_7_17();
      v113 = v71;
      v107 = (v72 + 8);
      v108 = v62;
      v73 = v105;
      v102 = v70;
      break;
  }

  while (1)
  {
    if (!v65)
    {
      while (1)
      {
        v74 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v74 >= v70)
        {
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
          __swift_storeEnumTagSinglePayload(v73, 1, 1, v97);
          v65 = 0;
          goto LABEL_29;
        }

        v65 = *(v62 + 8 * v74);
        ++v69;
        if (v65)
        {
          v69 = v74;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

    v74 = v69;
LABEL_28:
    v75 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v76 = v75 | (v74 << 6);
    v77 = v103;
    v78 = v106;
    (*(v106 + 16))(v104, *(v103 + 48) + *(v106 + 72) * v76, v115);
    v79 = *(*(v77 + 56) + 8 * v76);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
    v81 = *(v80 + 48);
    v73 = v105;
    (*(v78 + 32))();
    *(v73 + v81) = v79;
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v80);
    v82 = v79;
    v15 = v112;
    v24 = v114;
    v70 = v102;
LABEL_29:
    sub_274793E0C(v73, v24);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
    if (__swift_getEnumTagSinglePayload(v24, 1, v83) == 1)
    {
      break;
    }

    v84 = *&v24[*(v83 + 48)];
    v85 = v115;
    (*v113)(v15, v24, v115);
    v86 = v110;
    sub_27486C810(v109 + v111, v110);
    v116 = 1;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB8);
    sub_2749F95D4();
    (*(*(v87 - 8) + 8))(v86, v87);
    v88 = v15;
    v89 = v117;
    if (v117)
    {
      v90 = sub_2749F9264();
      v62 = v108;
      if ((v90 & 0x8000000000000000) != 0)
      {
        goto LABEL_49;
      }

      if (v90 >= *(v89 + 16))
      {
        goto LABEL_50;
      }

      v91 = *(v89 + 24 * v90 + 48);
      v92 = OUTLINED_FUNCTION_110_0();
      sub_2747729AC(v92, v93, v91);

      v15 = v112;
      switch(v91)
      {
        case 1:

          v98 = OUTLINED_FUNCTION_110_0();
          v100 = 1;
          goto LABEL_44;
        case 2:

          v98 = OUTLINED_FUNCTION_110_0();
          v100 = 2;
          goto LABEL_44;
        case 3:

          goto LABEL_45;
        default:
          sub_2747949D8();
          if (sub_2749FD604())
          {
            type metadata accessor for WFIconPickerSymbolCell();
            v94 = swift_dynamicCastClass();
            if (v94)
            {
              *(v94 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 1;
              sub_274977DCC();
            }

            v95 = OUTLINED_FUNCTION_110_0();
            sub_274772984(v95, v96, 0);
            (*v107)(v15, v115);
            v24 = v114;
          }

          else
          {

            v98 = OUTLINED_FUNCTION_110_0();
            v100 = 0;
LABEL_44:
            sub_274772984(v98, v99, v100);
LABEL_45:
            v24 = v114;
            (*v107)(v15, v115);
          }

          break;
      }
    }

    else
    {
      (*v107)(v88, v85);

      v15 = v88;
      v24 = v114;
      v62 = v108;
    }
  }

LABEL_47:
  sub_27486B4B0();
}

void sub_27486C094(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v84[1] = a2;
  v94 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0);
  v8 = OUTLINED_FUNCTION_34(v7);
  MEMORY[0x28223BE20](v8);
  v93 = v84 - v9;
  v10 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v88 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39();
  v97 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v87 = v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v18 = OUTLINED_FUNCTION_34(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v84 - v23;
  switch(a4)
  {
    case 1:
    case 3:
      return;
    case 2:
      v97 = sub_27486AC88();
      if (v97)
      {
        type metadata accessor for WFIconPickerColorCell();
        if (swift_dynamicCastClass())
        {
          v79 = OUTLINED_FUNCTION_9_17();
          sub_2747B5834(v79, v80, 0);
        }

        v81 = v97;
      }

      break;
    default:
      v25 = v94;
      v26 = sub_27486AC88();
      if (v26)
      {
        v27 = v26;
        type metadata accessor for WFIconPickerSymbolCell();
        if (swift_dynamicCastClass())
        {
          v28 = OUTLINED_FUNCTION_9_17();
          sub_2749775FC(v28, v29);
          *(v25 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 0;
          sub_274977DCC();
        }
      }

      v84[0] = v5;
      v30 = v94;
      OUTLINED_FUNCTION_10_19();
      v32 = *(v31 + 112);
      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      v33 = *(v30 + v32) + 64;
      OUTLINED_FUNCTION_2_27();
      v36 = v35 & v34;
      OUTLINED_FUNCTION_10_19();
      v38 = *(v37 + 152);
      v86 = v39;

      v92 = v38;
      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      v40 = 0;
      v41 = (v32 + 63) >> 6;
      OUTLINED_FUNCTION_7_17();
      v96 = v42;
      v89 = (v43 + 8);
      v90 = v10;
      v44 = v97;
      v85 = v21;
      v95 = v24;
      v91 = v33;
      if (v36)
      {
        while (1)
        {
          v45 = v40;
LABEL_12:
          v46 = __clz(__rbit64(v36));
          v36 &= v36 - 1;
          v47 = v46 | (v45 << 6);
          v48 = v86;
          v49 = v88;
          (*(v88 + 16))(v87, *(v86 + 48) + *(v88 + 72) * v47, v10);
          v50 = *(*(v48 + 56) + 8 * v47);
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
          v52 = *(v51 + 48);
          v21 = v85;
          (*(v49 + 32))();
          *(v21 + v52) = v50;
          __swift_storeEnumTagSinglePayload(v21, 0, 1, v51);
          v53 = v50;
          v44 = v97;
          v24 = v95;
LABEL_13:
          sub_274793E0C(v21, v24);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
          if (__swift_getEnumTagSinglePayload(v24, 1, v54) == 1)
          {
            break;
          }

          v55 = *&v24[*(v54 + 48)];
          (*v96)(v44, v24, v10);
          v56 = v93;
          sub_27486C810(v94 + v92, v93);
          v98 = 1;
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB8);
          sub_2749F95D4();
          (*(*(v57 - 8) + 8))(v56, v57);
          v58 = v99;
          if (v99)
          {
            v59 = sub_2749F9264();
            v33 = v91;
            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_48;
            }

            if (v59 >= *(v58 + 16))
            {
              goto LABEL_49;
            }

            v60 = v58 + 24 * v59;
            v10 = *(v60 + 40);
            v44 = *(v60 + 48);
            v61 = OUTLINED_FUNCTION_4_22();
            sub_2747729AC(v61, v62, v44);
          }

          else
          {
            v10 = 0;
            v44 = 255;
            v33 = v91;
          }

          type metadata accessor for WFIconPickerSymbolCell();
          v63 = swift_dynamicCastClass();
          if (v63)
          {
            v64 = v55;
          }

          switch(v44)
          {
            case 0:
              v44 = sub_2747949D8();
              if ((sub_2749FD604() & 1) == 0)
              {

                v67 = OUTLINED_FUNCTION_4_22();
                v69 = 0;
                goto LABEL_31;
              }

              if (v63)
              {
                *(v63 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 0;
                v44 = v63;
                sub_274977DCC();

                v65 = OUTLINED_FUNCTION_4_22();
                sub_27477BC88(v65, v66, 0);

                goto LABEL_32;
              }

              v75 = v90;
              v76 = v97;
              (*v89)(v97, v90);

              v77 = OUTLINED_FUNCTION_4_22();
              v10 = v75;
              v44 = v76;
              sub_27477BC88(v77, v78, 0);
              break;
            case 1:

              v67 = OUTLINED_FUNCTION_4_22();
              v69 = 1;
              goto LABEL_31;
            case 2:

              v67 = OUTLINED_FUNCTION_4_22();
              v69 = 2;
LABEL_31:
              sub_27477BC88(v67, v68, v69);
              goto LABEL_32;
            case 3:

LABEL_32:
              v73 = OUTLINED_FUNCTION_6_21();
              v74(v73);
              break;
            default:
              v70 = OUTLINED_FUNCTION_6_21();
              v71(v70);

              break;
          }

          v24 = v95;
          if (!v36)
          {
            goto LABEL_8;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v82 = *(v84[0] + OBJC_IVAR___WFIconPickerViewController_workflow);
          WFWorkflow.setAssociatedAppBundleIdentifier(to:)(0);
          if (v83)
          {
          }
        }
      }

      else
      {
LABEL_8:
        while (1)
        {
          v45 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v45 >= v41)
          {
            v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
            __swift_storeEnumTagSinglePayload(v21, 1, 1, v72);
            v36 = 0;
            goto LABEL_13;
          }

          v36 = *(v33 + 8 * v45);
          ++v40;
          if (v36)
          {
            v40 = v45;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      break;
  }
}

uint64_t sub_27486C810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27486C880(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_27486C8CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2749FCD64();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

uint64_t sub_27486C93C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27486C9B0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_27486CA20()
{
  v1 = OBJC_IVAR____TtCC10WorkflowUI23WFCollectionIconPreviewP33_0B78706FD0C80AD403706C7BE67F8A7E5Model__glyphCharacter;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968418);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_27486CAC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968418);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v5 = OBJC_IVAR____TtCC10WorkflowUI23WFCollectionIconPreviewP33_0B78706FD0C80AD403706C7BE67F8A7E5Model__glyphCharacter;
  v7[7] = [objc_opt_self() defaultGlyphCharacter];
  type metadata accessor for WFGlyphCharacter(0);
  sub_2749FA8C4();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

id sub_27486CBD8()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI23WFCollectionIconPreview____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI23WFCollectionIconPreview____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10WorkflowUI23WFCollectionIconPreview____lazy_storage___iconView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for WFCollectionIconPreview.Model();
    sub_27486D53C(&qword_28096BB98, type metadata accessor for WFCollectionIconPreview.Model);

    sub_2749FAD84();
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096BBA0));
    v6 = sub_2749FADF4();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_27486CCD4()
{
  v0 = sub_2749FA2F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FA2C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_27486C93C();
  sub_27486CEB8(v8);
  *v7 = vdupq_n_s64(0x4059000000000000uLL);
  (*(v5 + 104))(v7, *MEMORY[0x277D7D690], v4);
  *v3 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
  v3[8] = 1;
  (*(v1 + 104))(v3, *MEMORY[0x277D7D6C0], v0);
  return sub_2749FA314();
}

id sub_27486CEB8(unsigned __int16 a1)
{
  v2 = WFSystemImageNameForGlyphCharacter();
  if (v2)
  {
    v3 = v2;
    v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v6 = v5;

    v7 = sub_27486D008(v4, v6);
    v9 = v8;

    v10 = [objc_opt_self() clearColor];
    v11 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v12 = objc_allocWithZone(MEMORY[0x277D7A158]);
    return sub_27491A250(v7, v9, v11);
  }

  else
  {
    v14 = [objc_opt_self() clearColor];
    v15 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v16 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:a1 background:v15];
    return v16;
  }
}

uint64_t sub_27486D008(uint64_t a1, uint64_t a2)
{
  v4 = sub_2749FCDF4();
  v6 = v5;
  v7 = v4 == a1 && v5 == a2;
  if (v7 || (v8 = v4, (sub_2749FDCC4() & 1) != 0) || (sub_27486D4F8(), , (v9 = sub_27486C8CC(v8, v6)) == 0))
  {
  }

  else
  {

    return v8;
  }

  return a1;
}

id sub_27486D0D8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10WorkflowUI23WFCollectionIconPreview_model;
  type metadata accessor for WFCollectionIconPreview.Model();
  swift_allocObject();
  *&v4[v9] = sub_27486CAC8();
  *&v4[OBJC_IVAR____TtC10WorkflowUI23WFCollectionIconPreview____lazy_storage___iconView] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for WFCollectionIconPreview();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_27486CBD8();
  [v10 addSubview_];

  return v10;
}

void sub_27486D1DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFCollectionIconPreview();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = sub_27486CBD8();
  [v0 bounds];
  [v1 setFrame_];
}

void sub_27486D28C()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI23WFCollectionIconPreview_model;
  type metadata accessor for WFCollectionIconPreview.Model();
  swift_allocObject();
  *(v0 + v1) = sub_27486CAC8();
  *(v0 + OBJC_IVAR____TtC10WorkflowUI23WFCollectionIconPreview____lazy_storage___iconView) = 0;
  sub_2749FDAE4();
  __break(1u);
}

id sub_27486D344()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFCollectionIconPreview();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WFCollectionIconPreview.Model()
{
  result = qword_28096BB88;
  if (!qword_28096BB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27486D43C()
{
  sub_274793BA4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_27486D4F8()
{
  result = qword_280968030;
  if (!qword_280968030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280968030);
  }

  return result;
}

uint64_t sub_27486D53C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_27486D584(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BC48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtCC10WorkflowUI45SmartShortcutPickerParameterEditorCoordinatorP33_144DB5BEFA04CF045390510CC999A4A811Coordinator_presenter;
  *&v2[OBJC_IVAR____TtCC10WorkflowUI45SmartShortcutPickerParameterEditorCoordinatorP33_144DB5BEFA04CF045390510CC999A4A811Coordinator_presenter] = 0;
  v9 = OBJC_IVAR____TtCC10WorkflowUI45SmartShortcutPickerParameterEditorCoordinatorP33_144DB5BEFA04CF045390510CC999A4A811Coordinator_options;
  v10 = sub_2749F9CA4();
  __swift_storeEnumTagSinglePayload(&v2[v9], 1, 1, v10);
  v11 = &v2[OBJC_IVAR____TtCC10WorkflowUI45SmartShortcutPickerParameterEditorCoordinatorP33_144DB5BEFA04CF045390510CC999A4A811Coordinator_dismissHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v2[v8] = a1;
  v12 = *(v10 - 8);
  (*(v12 + 16))(v7, a2, v10);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  swift_beginAccess();
  v13 = a1;
  sub_27486EE94(v7, &v2[v9]);
  swift_endAccess();
  v14 = type metadata accessor for SmartShortcutPickerParameterEditorCoordinator.Coordinator();
  v18.receiver = v2;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_init);

  (*(v12 + 8))(a2, v10);
  return v15;
}

id sub_27486D728()
{
  v1 = OBJC_IVAR____TtCC10WorkflowUI45SmartShortcutPickerParameterEditorCoordinatorP33_144DB5BEFA04CF045390510CC999A4A811Coordinator_presenter;
  v2 = *(v0 + OBJC_IVAR____TtCC10WorkflowUI45SmartShortcutPickerParameterEditorCoordinatorP33_144DB5BEFA04CF045390510CC999A4A811Coordinator_presenter);
  if (v2)
  {
    [v2 setDelegate_];
    v2 = *(v0 + v1);
  }

  return [v2 present];
}

uint64_t sub_27486D7AC()
{
  v1 = sub_2749F9CA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BC48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = OBJC_IVAR____TtCC10WorkflowUI45SmartShortcutPickerParameterEditorCoordinatorP33_144DB5BEFA04CF045390510CC999A4A811Coordinator_options;
  swift_beginAccess();
  sub_27486EC40(v0 + v8, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1))
  {
    return sub_27486ECB0(v7);
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_27486ECB0(v7);
  sub_2749F9C74();
  (*(v2 + 8))(v4, v1);
  swift_unknownObjectRetain();
  sub_2749F9C24();
}

id sub_27486D9D8(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC10WorkflowUI45SmartShortcutPickerParameterEditorCoordinatorP33_144DB5BEFA04CF045390510CC999A4A811Coordinator_dismissHandler);
  if (v3)
  {

    v3(v4);
    sub_27471F8A4(v3);
  }

  return [a1 dismiss];
}

id sub_27486DB0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartShortcutPickerParameterEditorCoordinator.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27486DBA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2749FCD64();
  v9 = [a1 parameterForKey_];

  if (v9)
  {
    v10 = swift_dynamicCastObjCProtocolConditional();
    if (v10)
    {
      v11 = v10;
      v12 = sub_2749FCD64();
      v13 = [a1 parameterStateForKey_];

      sub_27486DF10(v11, v13, a4, a5);
      return swift_unknownObjectRelease();
    }
  }

  sub_27486EE2C();
  swift_allocError();
  *v15 = 0;
  return swift_willThrow();
}

void sub_27486DCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27471CF08(0, &unk_28096BCE0);
  type metadata accessor for Key(0);
  sub_27486EF04(&qword_280967388, type metadata accessor for Key);
  sub_2749FCCB4();
  v5 = sub_27486DE50();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDefinition_];

  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    sub_27486DF10(v7, 0, a2, a3);
  }

  else
  {

    sub_27486EE2C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }
}

id sub_27486DE50()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for Key(0);
  sub_27486EF04(&qword_280967388, type metadata accessor for Key);
  v1 = sub_2749FCC94();

  v2 = [v0 initWithDictionary_];

  return v2;
}

uint64_t sub_27486DF10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = sub_2749F9CA4();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v70 - v15;
  v16 = sub_27486E8FC(a1, a2);
  if (!v16)
  {
    sub_27486EE2C();
    swift_allocError();
    *v68 = 1;
    return swift_willThrow();
  }

  v77 = v5;
  v78 = v16;
  v75 = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  sub_2749FD0A4();
  v18 = sub_2749FD094();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  swift_weakInit();

  v22 = a1;

  v23 = sub_2749FD094();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = MEMORY[0x277D85700];
  v24[4] = v21;
  v24[5] = v22;
  v24[6] = v17;
  v76 = v17;
  v24[7] = a3;
  v24[8] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B240);
  sub_2749FC6F4();
  v25 = v81;
  v26 = v82;
  v27 = v83;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v29 = Strong;
  sub_2749F9C44();
  swift_unknownObjectRetain();

  v74 = v27;
  sub_2749F9C34();
  v30 = v22;
  v31 = v78;
  v32 = v84;
  sub_2749F9C64();
  v33 = swift_unknownObjectWeakLoadStrong();
  v34 = v33;
  if (!v33)
  {
    v35 = [v29 view];
    if (v35)
    {
      v34 = v35;
      goto LABEL_6;
    }

    __break(1u);
LABEL_12:
    result = sub_2749FDAE4();
    __break(1u);
    return result;
  }

LABEL_6:
  v72 = v31;
  v73 = v26;
  v78 = v25;
  sub_27471CF08(0, &qword_28096BCC8);
  v36 = v33;
  [v34 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v29;
  v46 = sub_27486E870(v45, v34, v38, v40, v42, v44);
  v47 = sub_2749F9C94();
  v48 = sub_2749F9C84();
  v49 = [v48 identifier];

  sub_2749F9C74();
  v50 = sub_2749F9C14();

  v51 = objc_allocWithZone(MEMORY[0x277D7BDF8]);
  v71 = v46;
  v52 = sub_27486ED7C(v47, v49, v50, 0, 0, 0, v46, 0);
  v53 = v79;
  v54 = v75;
  v55 = v32;
  v56 = v80;
  (*(v79 + 16))(v75, v55, v80);
  v57 = objc_allocWithZone(type metadata accessor for SmartShortcutPickerParameterEditorCoordinator.Coordinator());
  v58 = v52;
  v59 = sub_27486D584(v58, v54);
  v60 = v6[7];
  v6[7] = v59;
  v61 = v59;

  v62 = v6[5];
  v63 = v6[6];
  v64 = &v61[OBJC_IVAR____TtCC10WorkflowUI45SmartShortcutPickerParameterEditorCoordinatorP33_144DB5BEFA04CF045390510CC999A4A811Coordinator_dismissHandler];
  v65 = *&v61[OBJC_IVAR____TtCC10WorkflowUI45SmartShortcutPickerParameterEditorCoordinatorP33_144DB5BEFA04CF045390510CC999A4A811Coordinator_dismissHandler];
  *v64 = v62;
  v64[1] = v63;
  sub_27475D1E4(v62);
  sub_27471F8A4(v65);

  v66 = v6[7];
  if (v66)
  {
    v67 = v66;
    sub_27486D728();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v53 + 8))(v84, v56);
}

void sub_27486E4CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void *, uint64_t, id, uint64_t), uint64_t a8)
{
  v37[1] = a8;
  v38 = a7;
  v11 = sub_2749F8E94();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v37 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v37 - v19;
  v21 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v39 = a5;
  if (!Strong)
  {
    v32 = 0;
    v23 = 0;
    goto LABEL_8;
  }

  v23 = sub_27486E8FC(a5, v21);

  if (!v23)
  {
    Strong = 0;
    goto LABEL_7;
  }

  v24 = [v23 contentAttributedString];
  Strong = v24;
  if (!v24)
  {
LABEL_7:
    v32 = 0;
    goto LABEL_8;
  }

  v25 = [v24 string];

  v26 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v37[0] = a6;
  v27 = v12;
  v29 = v28;

  v41 = v26;
  v42 = v29;
  sub_27486EF04(&unk_28096BCD0, MEMORY[0x277CC8848]);
  sub_2749FD7A4();
  v40 = 65532;
  sub_2749FD784();
  sub_2749F8E74();
  sub_2749F8E84();
  v30 = *(v27 + 8);
  v30(v15, v11);
  v30(v18, v11);
  sub_27475D0D0();
  Strong = sub_2749FD714();
  v32 = v31;
  v30(v20, v11);
  a6 = v37[0];

LABEL_8:
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  v34 = 0;
  if (v33 && v21)
  {
    v35 = v33;
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      v34 = [v35 accessoryIconForPossibleState_];
    }

    else
    {
      v34 = 0;
    }
  }

  swift_beginAccess();
  if (*(a6 + 16))
  {
  }

  else
  {
    v38(Strong, v32, v34, v21);

    swift_beginAccess();
    *(a6 + 16) = 1;
  }
}

id sub_27486E870(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSourceViewController:a1 sourceView:a2 sourceRect:{a3, a4, a5, a6}];

  return v8;
}

id sub_27486E8FC(void *a1, uint64_t a2)
{
  if (([a1 respondsToSelector_] & 1) == 0 || (v4 = objc_msgSend(a1, sel_moduleSummarySlotsForState_, a2)) == 0)
  {
LABEL_9:
    if ([a1 respondsToSelector_])
    {
      return [a1 moduleSummarySlotForState_];
    }

    return 0;
  }

  v5 = v4;
  sub_27471CF08(0, &qword_28096BC50);
  v6 = sub_2749FCF84();

  if (sub_27472D918(v6) != 1)
  {

    goto LABEL_9;
  }

  if (!sub_27472D918(v6))
  {

    return 0;
  }

  sub_2747B2790(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x277C5F6D0](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;

  return v8;
}

uint64_t SmartShortcutPickerParameterEditorCoordinator.deinit()
{

  MEMORY[0x277C61150](v0 + 24);
  MEMORY[0x277C61150](v0 + 32);
  sub_27471F8A4(*(v0 + 40));

  return v0;
}

uint64_t SmartShortcutPickerParameterEditorCoordinator.__deallocating_deinit()
{
  SmartShortcutPickerParameterEditorCoordinator.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t type metadata accessor for SmartShortcutPickerParameterEditorCoordinator.Coordinator()
{
  result = qword_28096BC30;
  if (!qword_28096BC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27486EB44()
{
  sub_27486EBE8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27486EBE8()
{
  if (!qword_28096BC40)
  {
    sub_2749F9CA4();
    v0 = sub_2749FD6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096BC40);
    }
  }
}

uint64_t sub_27486EC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BC48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27486ECB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BC48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_27486ED18()
{
  sub_2749F9CD4();
  swift_allocObject();
  v0[2] = sub_2749F9CC4();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[5] = 0;
  v0[6] = 0;
  v0[7] = 0;
  return v0;
}

id sub_27486ED7C(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  LOBYTE(v14) = a8;
  v12 = [v8 initWithParameter:a1 slotIdentifier:a2 initialState:a3 isProcessing:a4 & 1 variableProvider:a5 variableUIDelegate:a6 presentationAnchor:a7 allowsPickingVariables:v14];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

unint64_t sub_27486EE2C()
{
  result = qword_28096BC58;
  if (!qword_28096BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BC58);
  }

  return result;
}

uint64_t sub_27486EE94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BC48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27486EF04(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerParameterEditorCoordinator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27486F02C()
{
  result = qword_28096BCF0;
  if (!qword_28096BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BCF0);
  }

  return result;
}

id sub_27486F0B4()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___automationListViewController;
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___automationListViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___automationListViewController);
  }

  else
  {
    v4 = sub_27486F118(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_27486F118(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_database);
  v2 = sub_2747251C0();
  v3 = [objc_allocWithZone(WFAutomationListViewController) initWithDatabase:v1 workflowProvider:v2];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_274870B54;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_274760264;
  v7[3] = &block_descriptor_8;
  v5 = _Block_copy(v7);

  [v3 setUpdateHandler_];
  _Block_release(v5);
  return v3;
}

void sub_27486F240()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    _s10WorkflowUI25TriggerRootViewControllerC27dataSourceDidUpdateTriggersyySo012WFAutomationc4DataH0CF_0();
  }
}

uint64_t _s10WorkflowUI25TriggerRootViewControllerC27dataSourceDidUpdateTriggersyySo012WFAutomationc4DataH0CF_0()
{
  v1 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  sub_27471CF08(0, &qword_28159E4E0);
  v15 = sub_2749FD404();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  OUTLINED_FUNCTION_5_21(v16);
  OUTLINED_FUNCTION_49_1(COERCE_DOUBLE(1107296256));
  aBlock[2] = v17;
  aBlock[3] = &block_descriptor_18_2;
  v18 = _Block_copy(aBlock);
  v19 = v0;

  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27473FC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27473FCD0();
  OUTLINED_FUNCTION_4_23();
  MEMORY[0x277C5F170](0, v14, v7, v18);
  _Block_release(v18);

  (*(v3 + 8))(v7, v1);
  return (*(v10 + 8))(v14, v8);
}

char *sub_27486F4B8()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___emptyStateViewController;
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___emptyStateViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___emptyStateViewController);
  }

  else
  {
    type metadata accessor for TriggerEmptyStateViewController();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = &v4[OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_delegate];
    swift_beginAccess();
    *(v5 + 1) = &protocol witness table for TriggerRootViewController;
    swift_unknownObjectWeakAssign();
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_27486F578()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_homeManager;
  *(v0 + v1) = [objc_opt_self() sharedManager];
  *(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_createAutomationController) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___automationListViewController) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___emptyStateViewController) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___dataSource) = 0;
  sub_2749FDAE4();
  __break(1u);
}

Swift::Void __swiftcall TriggerRootViewController.viewDidLoad()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    [v2 setBackgroundColor_];

    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v4 = qword_28159E448;
    v5 = sub_2749FCD64();
    v6 = sub_2749FCD64();

    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v10 = v9;

    sub_2747F9654(v8, v10, v0);
    _s10WorkflowUI25TriggerRootViewControllerC27dataSourceDidUpdateTriggersyySo012WFAutomationc4DataH0CF_0();
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_27486F81C()
{
  v1 = sub_2747251C0();
  v2 = [v1 allConfiguredTriggers];

  sub_27471CF08(0, &unk_28159E4B0);
  v3 = sub_2749FCF84();

  v4 = sub_27472D918(v3);

  if (v4)
  {
    return 1;
  }

  v6 = [*(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___dataSource) allHomeTriggers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096BD40);
  v7 = sub_2749FCF84();

  v8 = *(v7 + 16);

  return v8 != 0;
}

Swift::Void __swiftcall TriggerRootViewController.startCreateNewPersonalAutomation()()
{
  v1 = v0;
  v2 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v24 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  sub_27471CF08(0, &unk_28096BD30);
  v15 = sub_27486FBBC(*&v0[OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_database], *&v0[OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_homeManager]);
  [v15 setDelegate_];
  v16 = *&v1[OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_createAutomationController];
  *&v1[OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_createAutomationController] = v15;
  v17 = v15;

  sub_27471CF08(0, &qword_28159E4E0);
  v18 = sub_2749FD404();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v1;
  OUTLINED_FUNCTION_5_21(v19);
  OUTLINED_FUNCTION_49_1(COERCE_DOUBLE(1107296256));
  aBlock[2] = v20;
  aBlock[3] = &block_descriptor_25;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  v23 = v1;

  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27473FC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27473FCD0();
  OUTLINED_FUNCTION_4_23();
  MEMORY[0x277C5F170](0, v14, v8, v21);
  _Block_release(v21);

  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v14, v24);
}

id sub_27486FBBC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDatabase:a1 homeManager:a2];

  return v4;
}

void sub_27486FC18(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_274870B5C;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_27486FE60;
  v6[3] = &block_descriptor_12_2;
  v5 = _Block_copy(v6);

  [a1 startAtStep:1 hostingViewController:a2 completion:v5];
  _Block_release(v5);
}

void sub_27486FD00(void *a1)
{
  if (a1)
  {
    v2 = objc_opt_self();
    v3 = a1;
    v4 = [v2 currentDevice];
    v5 = [v4 idiom];

    if (v5 == 1 && (v6 = [v2 currentDevice], objc_msgSend(v6, sel_screenBounds), v8 = v7, v10 = v9, v12 = v11, v14 = v13, v6, v18.origin.x = v8, v18.origin.y = v10, v18.size.width = v12, v18.size.height = v14, CGRectGetWidth(v18) < 800.0))
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    [v3 setModalPresentationStyle_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      [Strong presentViewController:v3 animated:1 completion:0];
    }
  }
}

void sub_27486FE60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Swift::Void __swiftcall TriggerRootViewController.createAutomationCoordinatorDidCancel(_:)(WFCreateAutomationCoordinator *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_createAutomationController);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_createAutomationController) = 0;

  v4 = [(WFCreateAutomationCoordinator *)a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [(UINavigationController *)v4 dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall TriggerRootViewController.createAutomationCoordinatorDidFinish(_:)(WFCreateAutomationCoordinator *a1)
{
  v2 = [(WFCreateAutomationCoordinator *)a1 navigationController];
  if (v2)
  {
    v3 = v2;
    [(UINavigationController *)v2 dismissViewControllerAnimated:1 completion:0];
  }

  v4 = sub_27486F0B4();
  v5 = sub_2747251C0();
  v6 = [v5 allConfiguredTriggers];

  if (!v6)
  {
    sub_27471CF08(0, &unk_28159E4B0);
    sub_2749FCF84();
    v6 = sub_2749FCF74();
  }

  v7 = [*(v1 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___dataSource) allHomeTriggers];
  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096BD40);
    sub_2749FCF84();
    v7 = sub_2749FCF74();
  }

  [v4 updateUIWithConfiguredTriggers:v6 homeTriggers:v7];

  v8 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___automationListViewController);
  sub_2748701A8(v8);

  v9 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_createAutomationController);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_createAutomationController) = 0;
}

id sub_2748701A8(void *a1)
{
  v3 = [v1 childViewControllers];
  sub_27471CF08(0, &unk_28159E510);
  v4 = sub_2749FCF84();

  if (sub_27472D918(v4))
  {
    sub_2747B2790(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C5F6D0](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;

    [v6 willMoveToParentViewController_];
    result = [v6 view];
    if (!result)
    {
      goto LABEL_21;
    }

    v8 = result;
    [result removeFromSuperview];

    [v6 removeFromParentViewController];
  }

  else
  {
  }

  [v1 addChildViewController_];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v9 setFrame_];
  result = [a1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = result;
  [result setAutoresizingMask_];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v21 = result;
  [v20 addSubview_];

  return [a1 didMoveToParentViewController_];
}

void sub_2748704F4(uint64_t a1)
{
  if (sub_27486F81C())
  {
    v2 = sub_27486F0B4();
    v3 = sub_2747251C0();
    v4 = [v3 allConfiguredTriggers];

    if (!v4)
    {
      sub_27471CF08(0, &unk_28159E4B0);
      sub_2749FCF84();
      v4 = sub_2749FCF74();
    }

    v5 = [*(a1 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___dataSource) allHomeTriggers];
    if (!v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096BD40);
      sub_2749FCF84();
      v5 = sub_2749FCF74();
    }

    [v2 updateUIWithConfiguredTriggers:v4 homeTriggers:v5];

    v6 = *(a1 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___automationListViewController);
    sub_2748701A8(v6);

    v7 = 1;
  }

  else
  {
    v8 = sub_27486F4B8();
    sub_2748701A8(v8);

    v7 = 0;
  }

  sub_274870660(v7);
}

void sub_274870660(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = [v1 navigationItem];
  [v4 setRightBarButtonItem_];

  v5 = [v1 navigationItem];
  [v5 setLeftBarButtonItem_];

  if (a1)
  {
    v6 = objc_opt_self();
    v7 = sub_2749FCD64();
    v8 = [v6 __systemImageNamedSwift_];

    v12[3] = ObjectType;
    v12[0] = v1;
    objc_allocWithZone(MEMORY[0x277D751E0]);
    v9 = v1;
    v10 = sub_2748709B0(v8, 0, v12, sel_startCreateNewPersonalAutomation);
    sub_274870B6C(0x6974616D6F747561, 0xEF6464612E736E6FLL, v10);
    v11 = [v9 navigationItem];
    [v11 setRightBarButtonItem_];
  }
}

id TriggerRootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TriggerRootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2748709B0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = a3[3];
  if (v9)
  {
    v11 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v12 = *(v9 - 8);
    MEMORY[0x28223BE20](v11);
    v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_2749FDCA4();
    (*(v12 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v5 initWithImage:a1 style:a2 target:v15 action:a4];

  swift_unknownObjectRelease();
  return v16;
}

void sub_274870B6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setAccessibilityIdentifier_];
}

id sub_274870BE8()
{
  swift_getKeyPath();
  sub_274874790(&qword_28096BF40, type metadata accessor for IconColorModel);
  sub_2749F92D4();

  v1 = *(v0 + 32);

  return v1;
}

void sub_274870C98(void *a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  v3 = a1;

  v4 = *(v1 + 16);
  v5 = sub_274870BE8();
  v4();
}

void sub_274870D34(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  sub_27471CF08(0, &qword_280968670);
  v5 = v4;
  v6 = sub_2749FD604();

  if (v6)
  {

    sub_274870C98(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9[2] = v2;
    v9[3] = a1;
    sub_274872014(v8, sub_2748747D8, v9, &OBJC_IVAR____TtC10WorkflowUIP33_9F4C010438DAE59D2CEB91D65EB17A1614IconColorModel___observationRegistrar, &qword_28096BF40, type metadata accessor for IconColorModel);
  }
}

void *sub_274870EA8(void *a1)
{
  sub_2749F9304();
  v3 = [a1 icon];
  v4 = [v3 backgroundColor];

  v1[4] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v1[2] = sub_2748749A0;
  v1[3] = v5;
  return v1;
}

id sub_274870F4C(void *a1, void *a2)
{
  v3 = [a1 RGBAValue];
  v4 = [a2 icon];
  v5 = [v4 glyphCharacter];

  v6 = objc_allocWithZone(MEMORY[0x277D7A1E0]);
  v7 = sub_27490C76C(v3, v5, 0, 0xF000000000000000);
  [a2 setIcon_];

  return [a2 save];
}

uint64_t sub_274871014()
{

  v1 = OBJC_IVAR____TtC10WorkflowUIP33_9F4C010438DAE59D2CEB91D65EB17A1614IconColorModel___observationRegistrar;
  v2 = sub_2749F9314();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_27487109C()
{
  v1 = *(v0 + 16);
  v2 = sub_27487112C();
  return v1(v2);
}

uint64_t sub_27487112C()
{
  swift_getKeyPath();
  sub_274874790(&qword_28096BF48, type metadata accessor for IconGlyphModel);
  sub_2749F92D4();

  return *(v0 + 32);
}

uint64_t sub_2748711CC(unsigned __int16 a1)
{
  if (*(v1 + 32) == a1)
  {

    return sub_2748712D8(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v7 = a1;
    sub_274872014(v5, sub_274874858, v6, &OBJC_IVAR____TtC10WorkflowUIP33_9F4C010438DAE59D2CEB91D65EB17A1614IconGlyphModel___observationRegistrar, &qword_28096BF48, type metadata accessor for IconGlyphModel);
  }
}

uint64_t sub_2748712E8(void *a1)
{
  sub_2749F9304();
  v3 = [a1 icon];
  v4 = [v3 glyphCharacter];

  *(v1 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v1 + 16) = sub_2748749A8;
  *(v1 + 24) = v5;
  *(v1 + 34) = 0;
  return v1;
}

id sub_274871388(uint64_t a1, id a2)
{
  v4 = [a2 icon];
  v5 = [v4 backgroundColorValue];

  v6 = objc_allocWithZone(MEMORY[0x277D7A1E0]);
  v7 = sub_27490C76C(v5, a1, 0, 0xF000000000000000);
  [a2 setIcon_];

  return [a2 save];
}

uint64_t sub_274871448(void *a1)
{
  sub_2749F9304();
  *(v1 + 32) = [a1 glyphCharacter];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v1 + 16) = sub_2748748A8;
  *(v1 + 24) = v3;
  *(v1 + 34) = 257;
  return v1;
}

void sub_2748714C4(unsigned __int16 a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultDatabase];
  v5 = [a2 name];
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  v12[0] = 0;
  v9 = sub_27490C8A0(a2, v6, v8, a1, v12, v4);

  v10 = v12[0];
  if (v9)
  {
  }

  else
  {
    v11 = v10;
    sub_2749F8FE4();

    swift_willThrow();
  }
}

uint64_t sub_2748715E0()
{

  v1 = OBJC_IVAR____TtC10WorkflowUIP33_9F4C010438DAE59D2CEB91D65EB17A1614IconGlyphModel___observationRegistrar;
  v2 = sub_2749F9314();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_274871684()
{
  v1 = *(v0 + 40);

  sub_274871700(&v5);
  v3 = v5;
  v4 = v6;
  v1(&v3);

  v2 = v3;
}

id sub_274871700@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_274874790(&qword_28096BF38, type metadata accessor for IconPickerModel);
  sub_2749F92D4();

  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;

  return v3;
}

void sub_2748717C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 24);
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;

  sub_274871684();
}

id sub_2748717FC@<X0>(uint64_t a1@<X8>)
{
  result = sub_274871700(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_274871840(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  v2 = v3;
  sub_274871884(&v3);
}

void sub_274871884(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = v4;
  LOBYTE(v4) = sub_2748719A4(v4, v5, v2, v3);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9[2] = v1;
    v9[3] = v2;
    v10 = v3;
    sub_274872014(v8, sub_274874770, v9, &OBJC_IVAR____TtC10WorkflowUIP33_9F4C010438DAE59D2CEB91D65EB17A1615IconPickerModel___observationRegistrar, &qword_28096BF38, type metadata accessor for IconPickerModel);
  }

  else
  {
    v11 = v2;
    v12 = v3;
    sub_2748717C0(&v11);
  }
}

uint64_t sub_2748719A4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_27471CF08(0, &qword_28159E390);
    v4 = sub_2749FD604() ^ 1;
    return v4 & 1;
  }

  if (a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 1;
  return v4 & 1;
}

void sub_274871A10(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  v5 = a3 & 1;
  v3 = a2;
  sub_2748717C0(&v4);
}

uint64_t sub_274871A58(void *a1, void *a2, int a3)
{
  v4 = v3;
  sub_2749F9304();
  if ((a3 & 0x10000) != 0)
  {
    v8 = [a1 icon];
    LOWORD(a3) = [v8 glyphCharacter];
  }

  v9 = [a1 icon];
  v10 = [v9 backgroundColor];

  v11 = [v10 paletteGradient];
  v12 = [objc_allocWithZone(MEMORY[0x277D79FC0]) initWithGradient_];

  v13 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:a3 background:v12];
  sub_27490C92C(a1);
  if (v14)
  {
    sub_27471CF08(0, &qword_28096BB10);
    v15 = sub_274903E28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A78);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_274A0F620;
    *(v16 + 32) = v15;
    *(v16 + 40) = 1;
    *(v16 + 48) = v13;
    *(v16 + 56) = 0;
    *(v4 + 16) = v16;
    v17 = v13;
    v18 = v15;
    sub_27490C85C(a1);
    v20 = v19;

    if (v20)
    {

      v21 = 1;
      v13 = v15;
    }

    else
    {

      v21 = 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A78);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_274A0EF10;
    *(v22 + 32) = v13;
    *(v22 + 40) = 0;
    v23 = v13;

    v21 = 0;
    *(v4 + 16) = v22;
  }

  *(v4 + 24) = v13;
  *(v4 + 32) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v4 + 40) = sub_2748749C4;
  *(v4 + 48) = v24;
  return v4;
}

id sub_274871CD0(uint64_t a1, id a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = [*a1 bundleIdentifier];
    v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v6 = v5;

    sub_2748747F4(v4, v6, a2);
  }

  else
  {
    [a2 setAssociatedAppBundleIdentifier_];
  }

  return [a2 save];
}

uint64_t sub_274871D74()
{

  v1 = OBJC_IVAR____TtC10WorkflowUIP33_9F4C010438DAE59D2CEB91D65EB17A1615IconPickerModel___observationRegistrar;
  v2 = sub_2749F9314();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_274871E04(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_274871E5C()
{
  swift_getKeyPath();
  sub_274874790(&qword_28096BE20, type metadata accessor for LibraryPopoverModel);
  sub_2749F92D4();
}

uint64_t sub_274871F2C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_274872014(KeyPath, sub_27487488C, &v5, &OBJC_IVAR____TtC10WorkflowUI19LibraryPopoverModel___observationRegistrar, &qword_28096BE20, type metadata accessor for LibraryPopoverModel);
}

uint64_t sub_274871FD8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

void *LibraryPopoverModel.init(workflow:)(void *a1)
{
  v2 = v1;
  v2[2] = 0;
  sub_2749F9304();
  type metadata accessor for IconPickerModel(0);
  OUTLINED_FUNCTION_132();
  v4 = a1;
  v5 = sub_274871A58(v4, 0, 0x10000);

  v2[2] = v5;
  type metadata accessor for IconGlyphModel(0);
  OUTLINED_FUNCTION_132();
  v6 = v4;
  v2[4] = sub_2748712E8(v6);
  type metadata accessor for IconColorModel(0);
  OUTLINED_FUNCTION_132();
  v7 = v6;
  v2[3] = sub_274870EA8(v7);
  sub_2749F92B4();

  return v2;
}

uint64_t sub_274872228(uint64_t a1)
{
  if (*(a1 + 24))
  {
  }

  return sub_27487112C();
}

uint64_t (*sub_274872268(uint64_t a1, void *a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  return sub_2748748C4;
}

uint64_t sub_2748722E0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_2749FD0A4();
  v9 = a2;

  v10 = sub_2749FD094();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  v11[6] = a1;
  v11[7] = v9;

  sub_27479930C();
}

uint64_t sub_274872438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_2749FD0A4();
  v7[9] = sub_2749FD094();
  v9 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2748724D4, v9, v8);
}

uint64_t sub_2748724D4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 24))
    {

      v2 = sub_274870BE8();
    }

    else
    {
      v2 = 0;
    }

    v3 = *(v0 + 48);
    v8 = *(v0 + 56);
    v4 = sub_27487112C();
    type metadata accessor for IconPickerModel(0);
    OUTLINED_FUNCTION_132();
    v5 = sub_274871A58(v3, v2, v4);
    sub_274871F2C(v5);
    *(swift_task_alloc() + 16) = v8;
    sub_2749F92B4();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_274872654(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void *LibraryPopoverModel.init(collection:)(void *a1)
{
  v2 = v1;
  v2[2] = 0;
  sub_2749F9304();

  v2[2] = 0;
  type metadata accessor for IconGlyphModel(0);
  OUTLINED_FUNCTION_132();
  v4 = sub_274871448(a1);
  v2[3] = 0;
  v2[4] = v4;
  return v2;
}

uint64_t LibraryPopoverModel.deinit()
{

  v1 = OBJC_IVAR____TtC10WorkflowUI19LibraryPopoverModel___observationRegistrar;
  sub_2749F9314();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t LibraryPopoverModel.__deallocating_deinit()
{
  LibraryPopoverModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t LibraryPopoverView.model.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE18);
  sub_2749FC7D4();
  return v1;
}

void (*LibraryPopoverView.model.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE18);
  v2[4] = sub_2749FC7C4();
  return sub_2748728F4;
}

void sub_2748728F4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t LibraryPopoverView.$model.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE18);

  return MEMORY[0x282133B70](v0);
}

uint64_t LibraryPopoverView.init(model:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for LibraryPopoverView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DDA0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LibraryPopoverModel(0);
  sub_274874790(&qword_28096BE20, type metadata accessor for LibraryPopoverModel);

  return sub_2749FC804();
}

uint64_t LibraryPopoverView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2749FB634();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE28);
  sub_274872C0C(v1, a1 + *(v3 + 44));
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE30) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900) + 28);
  v6 = *MEMORY[0x277CDF440];
  sub_2749FAAA4();
  OUTLINED_FUNCTION_9();
  (*(v7 + 104))(v4 + v5, v6);
  *v4 = swift_getKeyPath();
  sub_2749FC914();
  sub_2749FABB4();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE38) + 36));
  *v8 = v19;
  v8[1] = v20;
  v8[2] = v21;
  LOBYTE(v6) = sub_2749FBCC4();
  sub_2749FA9E4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE40);
  v18 = a1 + *(result + 36);
  *v18 = v6;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_274872C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = type metadata accessor for LibraryPopoverView(0);
  v125 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v126 = v4;
  v127 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for GlyphPickerView(0);
  v5 = MEMORY[0x28223BE20](v130);
  v132 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v129 = &v111 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BEF0);
  MEMORY[0x28223BE20](v124);
  v120 = &v111 - v8;
  v119 = type metadata accessor for ColorPickerView(0);
  v9 = MEMORY[0x28223BE20](v119);
  v136 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v118 = (&v111 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BEF8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v131 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v111 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF00);
  MEMORY[0x28223BE20](v17);
  v19 = &v111 - v18;
  v122 = sub_2749FC744();
  v135 = *(v122 - 8);
  v20 = MEMORY[0x28223BE20](v122);
  v121 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v134 = &v111 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF08);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v128 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v111 - v26;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE18);
  v28 = a1;
  sub_2749FC7D4();
  v29 = sub_274871E5C();

  v30 = MEMORY[0x277D85700];
  v123 = v28;
  v137 = v27;
  v138 = v16;
  if (v29)
  {
    v31 = *(v29 + 16);
    if (*(v31 + 16) >= 2uLL)
    {
      sub_2749FD0A4();
      *&v117 = v17;

      v32 = sub_2749FD094();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = v30;
      v33[4] = v29;

      v34 = sub_2749FD094();
      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = v30;
      v35[4] = v29;
      sub_2749FC6F4();
      v37 = v143;
      v36 = v144;
      v116 = v143;
      v114 = v31;
      v113 = *(&v144 + 1);
      v115 = v144;
      v38 = v145;
      LOBYTE(v34) = sub_2749FBC84();
      sub_2749FA9E4();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      LOBYTE(v143) = v38;
      LOBYTE(__src[0]) = 0;
      v47 = v134;
      sub_2749FC734();
      v48 = *(v135 + 16);
      v112 = v19;
      v49 = v121;
      v50 = v47;
      v51 = v122;
      v48(v121, v50, v122);
      __src[0] = v31;
      __src[1] = v37;
      __src[2] = v36;
      v52 = v113;
      __src[3] = v113;
      LOBYTE(__src[4]) = v38;
      *(&__src[4] + 1) = *v141;
      HIDWORD(__src[4]) = *&v141[3];
      LOBYTE(__src[5]) = v34;
      *(&__src[5] + 1) = *v140;
      HIDWORD(__src[5]) = *&v140[3];
      __src[6] = v40;
      __src[7] = v42;
      __src[8] = v44;
      __src[9] = v46;
      LOBYTE(__src[10]) = 0;
      v53 = v112;
      memcpy(v112, __src, 0x51uLL);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF28);
      v48(&v53[*(v54 + 48)], v49, v51);
      sub_27473F28C(__src, &v143, &qword_28096BF30);

      v55 = *(v135 + 8);
      v55(v134, v51);
      v55(v49, v51);
      v16 = v138;
      v28 = v123;
      v143 = v114;
      *&v144 = v116;
      *(&v144 + 1) = v115;
      v145 = v52;
      v146 = v38;
      *v147 = *v141;
      *&v147[3] = *&v141[3];
      v148 = v34;
      *v149 = *v140;
      *&v149[3] = *&v140[3];
      v150 = v40;
      v151 = v42;
      v152 = v44;
      v153 = v46;
      v154 = 0;
      sub_27472ECBC(&v143, &qword_28096BF30);
      v56 = v137;
      sub_27475CF54(v53, v137, &qword_28096BF00);
      v57 = v56;
      v58 = 0;
      v59 = v117;
      goto LABEL_6;
    }
  }

  v57 = v27;
  v58 = 1;
  v59 = v17;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v57, v58, 1, v59);
  sub_2749FC7D4();
  v60 = *(v143 + 24);

  if (v60)
  {
    sub_2749FD0A4();

    v61 = sub_2749FD094();
    v62 = swift_allocObject();
    v62[2] = v61;
    v63 = MEMORY[0x277D85700];
    v62[3] = MEMORY[0x277D85700];
    v62[4] = v60;

    v64 = sub_2749FD094();
    v65 = swift_allocObject();
    v65[2] = v64;
    v65[3] = v63;
    v65[4] = v60;
    sub_27471CF08(0, &qword_280968670);
    sub_2749FC6F4();
    v66 = v143;
    v117 = v144;
    KeyPath = swift_getKeyPath();
    v68 = v118;
    *v118 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
    swift_storeEnumTagMultiPayload();
    v69 = v119;
    v70 = v68 + *(v119 + 20);
    *v70 = v66;
    *(v70 + 8) = v117;
    *(v68 + v69[6]) = MEMORY[0x277D84F90];
    *(v68 + v69[7]) = 0x4030000000000000;
    *(v68 + v69[8]) = 6;
    v71 = v134;
    sub_2749FC734();
    v72 = v136;
    sub_274874650(v68, v136, type metadata accessor for ColorPickerView);
    v73 = v135;
    v74 = *(v135 + 16);
    v75 = v121;
    v76 = v122;
    v74(v121, v71, v122);
    v77 = v72;
    v78 = v120;
    sub_274874650(v77, v120, type metadata accessor for ColorPickerView);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF20);
    v74((v78 + *(v79 + 48)), v75, v76);
    v80 = v138;
    v28 = v123;

    v81 = *(v73 + 8);
    v81(v71, v76);
    sub_2748746E8(v68, type metadata accessor for ColorPickerView);
    v81(v75, v76);
    sub_2748746E8(v136, type metadata accessor for ColorPickerView);
    v16 = v80;
    sub_27475CF54(v78, v80, &qword_28096BEF0);
    v82 = 0;
  }

  else
  {
    v82 = 1;
  }

  v83 = v16;
  __swift_storeEnumTagSinglePayload(v16, v82, 1, v124);
  v84 = v127;
  sub_274874650(v28, v127, type metadata accessor for LibraryPopoverView);
  sub_2749FD0A4();
  v85 = sub_2749FD094();
  v86 = (*(v125 + 80) + 32) & ~*(v125 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = v85;
  v88 = MEMORY[0x277D85700];
  *(v87 + 24) = MEMORY[0x277D85700];
  sub_2748743A0(v84, v87 + v86);
  sub_274874650(v28, v84, type metadata accessor for LibraryPopoverView);
  v89 = sub_2749FD094();
  v90 = swift_allocObject();
  *(v90 + 16) = v89;
  *(v90 + 24) = v88;
  sub_2748743A0(v84, v90 + v86);
  type metadata accessor for WFGlyphCharacter(0);
  sub_2749FC6F4();
  v91 = v143;
  v92 = v144;
  LOWORD(v86) = WORD4(v144);
  sub_2749FC7D4();
  v93 = *(__src[0] + 32);

  LOBYTE(v88) = *(v93 + 34);

  sub_2749FC7D4();
  v94 = *(__src[0] + 32);

  LOBYTE(v89) = *(v94 + 35);

  v95 = v130;
  v96 = *(v130 + 20);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10);
  v98 = v129;
  __swift_storeEnumTagSinglePayload(&v129[v96], 1, 1, v97);
  *v98 = v91;
  *(v98 + 8) = v92;
  *(v98 + 16) = v86;
  v99 = swift_allocObject();
  *(v99 + 16) = v89;
  v100 = v98 + *(v95 + 24);
  *v100 = sub_27487463C;
  *(v100 + 8) = v99;
  *(v100 + 16) = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = v88;
  *(v101 + 17) = v89;
  v102 = v98 + *(v95 + 28);
  *v102 = sub_274874644;
  *(v102 + 8) = v101;
  *(v102 + 16) = 0;
  v103 = v137;
  v104 = v128;
  sub_27473F28C(v137, v128, &qword_28096BF08);
  v105 = v83;
  v106 = v131;
  sub_27473F28C(v105, v131, &qword_28096BEF8);
  v107 = v132;
  sub_274874650(v98, v132, type metadata accessor for GlyphPickerView);
  v108 = v133;
  sub_27473F28C(v104, v133, &qword_28096BF08);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF18);
  sub_27473F28C(v106, v108 + *(v109 + 48), &qword_28096BEF8);
  sub_274874650(v107, v108 + *(v109 + 64), type metadata accessor for GlyphPickerView);
  sub_2748746E8(v98, type metadata accessor for GlyphPickerView);
  sub_27472ECBC(v138, &qword_28096BEF8);
  sub_27472ECBC(v103, &qword_28096BF08);
  sub_2748746E8(v107, type metadata accessor for GlyphPickerView);
  sub_27472ECBC(v106, &qword_28096BEF8);
  return sub_27472ECBC(v104, &qword_28096BF08);
}

void sub_274873ADC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  v2 = v3;
  sub_274871884(&v3);
}

uint64_t sub_274873B4C@<X0>(_WORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE18);
  sub_2749FC7D4();

  v2 = sub_27487112C();

  *a1 = v2;
  return result;
}

uint64_t sub_274873BCC(unsigned __int16 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE18);
  sub_2749FC7D4();

  sub_2748711CC(v1);
}

uint64_t sub_274873CB4(uint64_t a1)
{
  v2 = sub_2749FAAA4();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x277C5CE30](v4);
}

uint64_t sub_274873DA0()
{
  result = sub_2749F9314();
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

uint64_t sub_274873E54()
{
  result = sub_2749F9314();
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

uint64_t sub_274873F5C()
{
  result = sub_2749F9314();
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

void sub_27487405C()
{
  sub_274874140(319, &qword_28096BEB8, type metadata accessor for LibraryPopoverModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_274874140(319, &qword_28096BEC0, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_274874140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2748741A4()
{
  result = qword_28096BEC8;
  if (!qword_28096BEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096BE40);
    sub_274874230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BEC8);
  }

  return result;
}

unint64_t sub_274874230()
{
  result = qword_28096BED0;
  if (!qword_28096BED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096BE38);
    sub_2748742BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BED0);
  }

  return result;
}

unint64_t sub_2748742BC()
{
  result = qword_28096BED8;
  if (!qword_28096BED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096BE30);
    sub_27472AB6C(&qword_28096BEE0, &qword_28096BEE8);
    sub_27472AB6C(&qword_28096C070, &qword_28096D900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BED8);
  }

  return result;
}

uint64_t sub_2748743A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryPopoverView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274874404@<X0>(_WORD *a1@<X8>)
{
  type metadata accessor for LibraryPopoverView(0);

  return sub_274873B4C(a1);
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for LibraryPopoverView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE18);
  OUTLINED_FUNCTION_9();
  (*(v5 + 8))(v0 + v3);
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAC44();
    OUTLINED_FUNCTION_9();
    (*(v7 + 8))(v0 + v3 + v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2748745C8(unsigned __int16 *a1)
{
  type metadata accessor for LibraryPopoverView(0);

  return sub_274873BCC(a1);
}

uint64_t sub_274874650(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

id sub_2748746B0@<X0>(void *a1@<X8>)
{
  result = sub_274870BE8();
  *a1 = result;
  return result;
}

uint64_t sub_2748746E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_274874790(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2748747F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setAssociatedAppBundleIdentifier_];
}

uint64_t sub_2748748CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27475F680;

  return sub_274872438(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2748749D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for QuarantinedShortcutView();
  sub_27473F28C(v1 + *(v10 + 20), v9, &qword_28096BF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_27475CF54(v9, a1, &qword_28096B2A0);
  }

  sub_2749FD2D4();
  v12 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t QuarantinedShortcutView.init(workflow:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for QuarantinedShortcutView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a2 + v4[7];
  sub_2749FC5B4();
  *v7 = v10;
  *(v7 + 1) = v11;
  v8 = a2 + v4[8];
  result = sub_2749FC5B4();
  *v8 = v10;
  *(v8 + 1) = v11;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for QuarantinedShortcutView()
{
  result = qword_28096BF70;
  if (!qword_28096BF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t QuarantinedShortcutView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2749FBC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF58);
  sub_27472AB6C(&qword_28096BF60, &qword_28096BF58);
  sub_2749FAA54();
  v2 = [objc_opt_self() systemGroupedBackgroundColor];
  v3 = sub_2749FC3E4();
  v4 = sub_2749FBC64();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF68);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_274874E10@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2749FB634();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BFC0);
  return sub_274874E68(a1, a2 + *(v4 + 44));
}

uint64_t sub_274874E68@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BFC8);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BFD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BFD8);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  *v20 = sub_2749FB634();
  *(v20 + 1) = 0x4024000000000000;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096BFE0);
  sub_274875338(&v20[*(v21 + 44)]);
  v22 = sub_2749FBC54();
  v23 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D3D0) + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = sub_2749FBC74();
  v25 = &v20[*(v15 + 44)];
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  *v13 = sub_2749FB634();
  *(v13 + 1) = 0x4020000000000000;
  v13[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BFF0);
  sub_274875850(a1, &v13[*(v26 + 44)]);
  *v8 = sub_2749FB634();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BFF8);
  sub_274875FB8(a1, &v8[*(v27 + 44)]);
  v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C000) + 36)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900) + 28);
  v30 = *MEMORY[0x277CDF420];
  v31 = sub_2749FAAA4();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  LOBYTE(v30) = sub_2749FBC54();
  v32 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C010) + 36)];
  *v32 = v30;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  v33 = sub_2749FBC84();
  v34 = &v8[*(v4 + 44)];
  *v34 = v33;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  v34[40] = 1;
  v41 = v18;
  sub_27473F28C(v20, v18, &qword_28096BFD8);
  v35 = v42;
  sub_27473F28C(v13, v42, &qword_28096BFD0);
  v36 = v43;
  sub_27474AE8C(v8, v43);
  v37 = v44;
  sub_27473F28C(v18, v44, &qword_28096BFD8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C018);
  sub_27473F28C(v35, v37 + v38[12], &qword_28096BFD0);
  v39 = v37 + v38[16];
  *v39 = 0;
  *(v39 + 8) = 0;
  sub_27474AE8C(v36, v37 + v38[20]);
  sub_27472ECBC(v8, &qword_28096BFC8);
  sub_27472ECBC(v13, &qword_28096BFD0);
  sub_27472ECBC(v20, &qword_28096BFD8);
  sub_27472ECBC(v36, &qword_28096BFC8);
  sub_27472ECBC(v35, &qword_28096BFD0);
  return sub_27472ECBC(v41, &qword_28096BFD8);
}

uint64_t sub_274875338@<X0>(char *a1@<X8>)
{
  v53 = a1;
  v1 = sub_2749FA2F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FA2C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2749FA304();
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v49 - v13;
  sub_27471CF08(0, &qword_28096BB10);
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_274903E28();
  *v8 = vdupq_n_s64(0x4054000000000000uLL);
  (*(v6 + 104))(v8, *MEMORY[0x277D7D690], v5);
  (*(v2 + 104))(v4, *MEMORY[0x277D7D6D0], v1);
  sub_2749FA314();
  sub_2749FB574();
  v14 = sub_2749FBED4();
  v16 = v15;
  LOBYTE(v2) = v17;
  sub_2749FBCD4();
  v18 = sub_2749FBEC4();
  v20 = v19;
  v22 = v21;

  sub_27477656C(v14, v16, v2 & 1);

  v23 = sub_2749FBEB4();
  v50 = v24;
  v51 = v23;
  LOBYTE(v2) = v25;
  v52 = v26;
  sub_27477656C(v18, v20, v22 & 1);

  sub_2749FB574();
  v27 = sub_2749FBED4();
  v29 = v28;
  LOBYTE(v4) = v30;
  v32 = v31;
  KeyPath = swift_getKeyPath();
  v34 = v56;
  v35 = *(v57 + 16);
  v36 = v54;
  v35(v54, v55, v56);
  v60 = v2 & 1;
  v59 = v4 & 1;
  v58 = 0;
  v37 = v53;
  v35(v53, v36, v34);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C0D8);
  v39 = &v37[v38[12]];
  v40 = v60;
  v41 = v50;
  v42 = v51;
  *v39 = v51;
  *(v39 + 1) = v41;
  v39[16] = v40;
  *(v39 + 3) = v52;
  v43 = &v37[v38[16]];
  v44 = v37;
  LOBYTE(v37) = v59;
  *v43 = v27;
  *(v43 + 1) = v29;
  v43[16] = v37;
  *(v43 + 3) = v32;
  *(v43 + 4) = KeyPath;
  v43[40] = 1;
  v45 = &v44[v38[20]];
  LOBYTE(v44) = v58;
  *v45 = 0x4010000000000000;
  v45[8] = v44;
  sub_274754DBC(v42, v41, v40);

  sub_274754DBC(v27, v29, v37);
  v46 = *(v57 + 8);

  v47 = v56;
  v46(v55, v56);
  sub_27477656C(v27, v29, v59);

  sub_27477656C(v42, v41, v60);

  return (v46)(v54, v47);
}

uint64_t sub_274875850@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v67 = sub_2749F9A14();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2749F99F4();
  v70 = *(v71 - 8);
  v4 = MEMORY[0x28223BE20](v71);
  v69 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v58 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D450);
  MEMORY[0x28223BE20](v58);
  v8 = &v58 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0B0);
  MEMORY[0x28223BE20](v59);
  v63 = &v58 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D460);
  v10 = MEMORY[0x28223BE20](v62);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v58 - v13;
  MEMORY[0x28223BE20](v12);
  v73 = &v58 - v14;
  v61 = *a1;
  v15 = [v61 name];
  if (v15)
  {
    v16 = v15;
    v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v75[0] = v17;
  v75[1] = v19;
  sub_27475D0D0();
  v20 = sub_2749FBEE4();
  v22 = v21;
  v24 = v23;
  sub_2749FBCF4();
  sub_2749FBD54();
  sub_2749FBDA4();

  v25 = sub_2749FBEC4();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_27477656C(v20, v22, v24 & 1);

  sub_2749FC924();
  sub_2749FB004();
  v29 &= 1u;
  __src[120] = v29;
  v32 = sub_2749FBC64();
  __src[128] = 1;
  v33 = &v8[*(v58 + 36)];
  v34 = *(sub_2749FAFC4() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_2749FB584();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #14.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C0C0) + 56)] = 256;
  *v8 = v25;
  *(v8 + 1) = v27;
  v8[16] = v29;
  *(v8 + 3) = v31;
  memcpy(v8 + 32, __src, 0x70uLL);
  v8[144] = v32;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0u;
  v8[184] = 1;
  v42 = sub_2749FBC54();
  v43 = v63;
  sub_27475CF54(v8, v63, &unk_28096D450);
  v44 = v43 + *(v59 + 36);
  *v44 = v42;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  *(v44 + 40) = 1;
  sub_2749FC914();
  sub_2749FB004();
  v45 = v60;
  sub_27475CF54(v43, v60, &unk_28096C0B0);
  memcpy((v45 + *(v62 + 36)), v75, 0x70uLL);
  v46 = v73;
  sub_27475CF54(v45, v73, &qword_28096D460);
  sub_2749F9AA4();
  v47 = v61;
  sub_2749F9A94();
  sub_2749F9A04();
  (*(v66 + 104))(v65, *MEMORY[0x277D7BCF0], v67);
  sub_2749F9A24();
  v48 = v68;
  sub_2749F99E4();
  v49 = v64;
  sub_27473F28C(v46, v64, &qword_28096D460);
  v50 = v70;
  v51 = *(v70 + 16);
  v52 = v69;
  v53 = v71;
  v51(v69, v48, v71);
  v54 = v72;
  sub_27473F28C(v49, v72, &qword_28096D460);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0C8);
  v51((v54 + *(v55 + 48)), v52, v53);
  v56 = *(v50 + 8);
  v56(v48, v53);
  sub_27472ECBC(v73, &qword_28096D460);
  v56(v52, v53);
  return sub_27472ECBC(v49, &qword_28096D460);
}

uint64_t sub_274875FB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v81 = a1;
  v79 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C020);
  MEMORY[0x28223BE20](v2 - 8);
  v73 = &v61 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C028);
  MEMORY[0x28223BE20](v75);
  v74 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C030);
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v76 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v61 - v8;
  v65 = sub_2749FBAE4();
  v9 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for QuarantinedShortcutView();
  v13 = *(v12 - 8);
  v82 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C038);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C040);
  MEMORY[0x28223BE20](v61);
  v20 = &v61 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C048);
  v83 = *(v72 - 8);
  v21 = MEMORY[0x28223BE20](v72);
  v71 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = &v61 - v23;
  v66 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274877E58(v81, v66);
  v69 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = v69;
  v25 = swift_allocObject();
  sub_274877EC8(&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C050);
  v67 = sub_27475C60C();
  sub_2749FC624();
  sub_2749FBAD4();
  sub_27472AB6C(&qword_28096C060, &qword_28096C038);
  sub_2747808A0();
  v26 = v65;
  sub_2749FBFC4();
  (*(v9 + 8))(v11, v26);
  (*(v16 + 8))(v18, v15);
  v27 = &v20[*(v61 + 36)];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900);
  v28 = *(v65 + 28);
  v63 = *MEMORY[0x277CDF420];
  v29 = v63;
  v30 = sub_2749FAAA4();
  v62 = *(*(v30 - 8) + 104);
  v62(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  v31 = v81;
  v32 = (v81 + *(v82 + 36));
  v33 = *v32;
  v34 = *(v32 + 1);
  v87 = v33;
  v88 = v34;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  v86 = v31;
  sub_274877F4C();
  v35 = v80;
  sub_2749FC244();

  sub_27472ECBC(v20, &qword_28096C040);
  v36 = v73;
  sub_2749FA984();
  v37 = sub_2749FA9C4();
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v37);
  v38 = v66;
  sub_274877E58(v31, v66);
  v39 = v69;
  v40 = swift_allocObject();
  sub_274877EC8(v38, v40 + v39);
  v41 = v74;
  sub_2749FC614();
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C078) + 36));
  v62(v42 + *(v65 + 28), v63, v30);
  *v42 = swift_getKeyPath();
  v43 = sub_2749FBCC4();
  v44 = v41 + *(v75 + 36);
  *v44 = v43;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  *(v44 + 40) = 1;
  v45 = v31 + *(v82 + 40);
  v46 = *v45;
  v47 = *(v45 + 8);
  v87 = v46;
  v88 = v47;
  sub_2749FC5E4();
  v85 = v31;
  sub_2748780B4();
  v48 = v84;
  sub_2749FC244();

  sub_27472ECBC(v41, &qword_28096C028);
  v49 = *(v83 + 16);
  v50 = v71;
  v51 = v72;
  v49(v71, v35, v72);
  v53 = v77;
  v52 = v78;
  v54 = *(v77 + 16);
  v55 = v76;
  v54(v76, v48, v78);
  v56 = v79;
  v49(v79, v50, v51);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C090);
  v54(&v56[*(v57 + 48)], v55, v52);
  v58 = *(v53 + 8);
  v58(v84, v52);
  v59 = *(v83 + 8);
  v59(v80, v51);
  v58(v55, v52);
  return (v59)(v50, v51);
}

uint64_t sub_274876988()
{
  type metadata accessor for QuarantinedShortcutView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  return sub_2749FC5D4();
}

void *sub_2748769FC@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  __src[0] = v6;
  __src[1] = v8;
  sub_27475D0D0();
  v9 = sub_2749FBEE4();
  v11 = v10;
  LOBYTE(v8) = v12;
  sub_2749FBE04();
  sub_2749FBD54();
  sub_2749FBDA4();

  v13 = sub_2749FBEC4();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_27477656C(v9, v11, v8 & 1);

  sub_2749FC914();
  sub_2749FB004();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return memcpy((a1 + 32), __src, 0x70uLL);
}

uint64_t sub_274876BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v2 = type metadata accessor for QuarantinedShortcutView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2749FC3C4();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v36 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v12 = qword_28159E448;
  v13 = sub_2749FCD64();
  v14 = sub_2749FCD64();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v18 = v17;

  v41 = v16;
  v42 = v18;
  sub_27475D0D0();
  v19 = sub_2749FBEE4();
  v21 = v20;
  v23 = v22;
  sub_274877E58(v35, &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = swift_allocObject();
  sub_274877EC8(&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_2749FC3B4();
  sub_27477656C(v19, v21, v23 & 1);

  sub_2749FCE14();
  v26 = sub_2749FCD64();
  v27 = sub_2749FCD64();

  v28 = [v12 localizedStringForKey:v26 value:v27 table:0];

  v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v31 = v30;

  v41 = v29;
  v42 = v31;
  sub_2749FBEE4();
  v33 = v38;
  v32 = v39;
  (*(v38 + 16))(v36, v11, v39);
  sub_2749FC3A4();
  sub_2749FC384();
  return (*(v33 + 8))(v11, v32);
}

void sub_274877024(id *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2749FAF84();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0);
  MEMORY[0x28223BE20](v3);
  v5 = v14 - v4;
  v6 = *a1;
  v13 = [*a1 reference];
  if (v13)
  {
    v7 = [v6 database];
    if (v7)
    {
      v8 = v7;
      v14[0] = 0;
      if ([v7 deleteReference:v13 error:v14])
      {
        v9 = v14[0];
      }

      else
      {
        v11 = v14[0];
        v12 = sub_2749F8FE4();

        swift_willThrow();
      }

      sub_2748749D4(v5);
      MEMORY[0x277C5E410](v3);
      sub_2749FAF74();
      sub_2749FC6C4();

      sub_27472ECBC(v5, &qword_28096B2A0);
    }

    else
    {
      v10 = v13;
    }
  }
}

uint64_t sub_274877258()
{
  type metadata accessor for QuarantinedShortcutView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  return sub_2749FC5D4();
}

void *sub_2748772CC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __src - v3;
  v5 = sub_2749FBE14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = __src - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v9 = qword_28159E448;
  v10 = sub_2749FCD64();
  v11 = sub_2749FCD64();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v15 = v14;

  __src[0] = v13;
  __src[1] = v15;
  sub_27475D0D0();
  v16 = sub_2749FBEE4();
  v18 = v17;
  LOBYTE(v10) = v19;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0AC0], v5);
  v20 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v20);
  sub_2749FBD74();
  sub_27472ECBC(v4, &unk_28096C0A0);
  (*(v6 + 8))(v8, v5);
  sub_2749FBD54();
  sub_2749FBDA4();

  v21 = sub_2749FBEC4();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_27477656C(v16, v18, v10 & 1);

  sub_2749FC914();
  sub_2749FB004();
  *a1 = v21;
  *(a1 + 8) = v23;
  *(a1 + 16) = v25 & 1;
  *(a1 + 24) = v27;
  return memcpy((a1 + 32), __src, 0x70uLL);
}

uint64_t sub_27487761C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v2 = type metadata accessor for QuarantinedShortcutView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2749FC3C4();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v36 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v12 = qword_28159E448;
  v13 = sub_2749FCD64();
  v14 = sub_2749FCD64();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v18 = v17;

  v41 = v16;
  v42 = v18;
  sub_27475D0D0();
  v19 = sub_2749FBEE4();
  v21 = v20;
  v23 = v22;
  sub_274877E58(v35, &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = swift_allocObject();
  sub_274877EC8(&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_2749FC394();
  sub_27477656C(v19, v21, v23 & 1);

  sub_2749FCE14();
  v26 = sub_2749FCD64();
  v27 = sub_2749FCD64();

  v28 = [v12 localizedStringForKey:v26 value:v27 table:0];

  v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v31 = v30;

  v41 = v29;
  v42 = v31;
  sub_2749FBEE4();
  v33 = v38;
  v32 = v39;
  (*(v38 + 16))(v36, v11, v39);
  sub_2749FC3A4();
  sub_2749FC384();
  return (*(v33 + 8))(v11, v32);
}

uint64_t sub_274877A44(id *a1)
{
  v2 = sub_2749FAF84();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = *a1;
  [*a1 setRemoteQuarantineStatus_];
  [v6 save];
  sub_2748749D4(v5);
  MEMORY[0x277C5E410](v3);
  sub_2749FAF74();
  sub_2749FC6C4();
  return sub_27472ECBC(v5, &qword_28096B2A0);
}

uint64_t sub_274877B8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749FB154();
  *a1 = result;
  return result;
}

void sub_274877C30()
{
  sub_27471CF08(319, &qword_28096BF80);
  if (v0 <= 0x3F)
  {
    sub_2747B70E4(319, &qword_28096D3A0, &qword_28096B2A0);
    if (v1 <= 0x3F)
    {
      sub_2747B70E4(319, &unk_28096D390, &qword_28096BF90);
      if (v2 <= 0x3F)
      {
        sub_274877D24();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_274877D24()
{
  if (!qword_28096D840)
  {
    v0 = sub_2749FC5F4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096D840);
    }
  }
}

unint64_t sub_274877D74()
{
  result = qword_28096BF98;
  if (!qword_28096BF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096BF68);
    sub_27472AB6C(&qword_28096BFA0, &qword_28096BFA8);
    sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096BF98);
  }

  return result;
}

uint64_t sub_274877E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuarantinedShortcutView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274877EBC(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_274877EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuarantinedShortcutView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274877F4C()
{
  result = qword_28096C068;
  if (!qword_28096C068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C038);
    sub_2749FBAE4();
    sub_27472AB6C(&qword_28096C060, &qword_28096C038);
    sub_2747808A0();
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&qword_28096C070, &qword_28096D900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C068);
  }

  return result;
}

unint64_t sub_2748780B4()
{
  result = qword_28096C080;
  if (!qword_28096C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C028);
    sub_274878140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C080);
  }

  return result;
}

unint64_t sub_274878140()
{
  result = qword_28096C088;
  if (!qword_28096C088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C078);
    sub_27472AB6C(&qword_28096C060, &qword_28096C038);
    sub_27472AB6C(&qword_28096C070, &qword_28096D900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C088);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for QuarantinedShortcutView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_9();
    (*(v8 + 8))(v5 + v7);
  }

  sub_274877EBC(*(v0 + v3 + *(v1 + 24)), *(v0 + v3 + *(v1 + 24) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2748783CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for QuarantinedShortcutView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_274878440()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = *v0;
  v4 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v5 = OUTLINED_FUNCTION_12_18();
      sub_2747A3140(v5, v6, v7);
      v8 = OUTLINED_FUNCTION_12_18();
      sub_2747A3140(v8, v9, v10);
      sub_27487976C(v3, 0, __src);
      memcpy(__dst, __src, sizeof(__dst));
      CGSizeMake(__dst);
      memcpy(v38, __dst, 0xC0uLL);
      sub_27487C1EC(v38);
      memcpy(v42, v38, 0xC1uLL);
      sub_27487BE18(__src, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C238);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C220);
      OUTLINED_FUNCTION_2_28();
      sub_27472AB6C(v11, &qword_28096C238);
      sub_27487C0E4();
      sub_2749FB7B4();
      memcpy(v40, v36, 0xC1uLL);
      sub_27487C1F8(v40);
      OUTLINED_FUNCTION_17_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C218);
      sub_27487C02C();
      OUTLINED_FUNCTION_18_1();
      sub_2749FB7B4();
      v12 = OUTLINED_FUNCTION_12_18();
    }

    else
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        v22 = OUTLINED_FUNCTION_1_34();
        sub_2747A3140(v22, v23, v24);
        v25 = OUTLINED_FUNCTION_1_34();
        sub_2747A3140(v25, v26, v27);
        v28 = v21;
        v29 = 0;
      }

      else
      {
        v30 = OUTLINED_FUNCTION_1_34();
        sub_2747A3140(v30, v31, v32);
        v33 = OUTLINED_FUNCTION_1_34();
        sub_2747A3140(v33, v34, v35);
        v28 = v3;
        v29 = 1;
      }

      sub_27487976C(v28, v29, v38);
      __src[0] = *v38;
      *&__src[1] = v38[2];
      BYTE8(__src[1]) = v38[3];
      __src[2] = *&v38[4];
      __src[3] = *&v38[6];
      LOBYTE(__src[4]) = v38[8];
      *(&__src[4] + 8) = *&v38[9];
      BYTE8(__src[5]) = v38[11];
      *&__src[6] = v38[12];
      BYTE8(__src[6]) = v38[13];
      __src[7] = *&v38[14];
      __src[8] = *&v38[16];
      __src[9] = *&v38[18];
      __src[10] = *&v38[20];
      __src[11] = *&v38[22];
      memcpy(v36, __src, 0xC0uLL);
      CGSizeMake(v36);
      memcpy(v40, v36, 0xC0uLL);
      sub_27487C020(v40);
      OUTLINED_FUNCTION_17_14();
      sub_27487BE18(__src, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C218);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C220);
      sub_27487C02C();
      sub_27487C0E4();
      OUTLINED_FUNCTION_18_1();
      sub_2749FB7B4();
      v12 = OUTLINED_FUNCTION_1_34();
    }

    sub_27476D24C(v12, v13, v14);
    sub_27487C1BC(__src);
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v3;
    *(v15 + 24) = v4;
    *v40 = 0;
    v40[8] = -1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C250);
    sub_2749FC5B4();
    v16 = v42[0];
    v17 = v42[1];
    v38[0] = sub_27487891C;
    v38[1] = 0;
    v38[2] = sub_27487C200;
    v38[3] = v15;
    v38[4] = v42[0];
    LOBYTE(v38[5]) = v42[1];
    v38[6] = v42[2];
    sub_27487C208(v38);
    memcpy(v42, v38, 0xC1uLL);

    sub_27487C210(v16, v17);

    v18 = OUTLINED_FUNCTION_98_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C220);
    OUTLINED_FUNCTION_2_28();
    sub_27472AB6C(v19, &qword_28096C238);
    sub_27487C0E4();
    sub_2749FB7B4();
    memcpy(v40, v36, 0xC1uLL);
    sub_27487C1F8(v40);
    OUTLINED_FUNCTION_17_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C218);
    sub_27487C02C();
    sub_2749FB7B4();

    sub_27487C240(v16, v17);
  }

  memcpy(v42, v39, 0xC2uLL);
  memcpy(v2, v42, 0xC2uLL);
  OUTLINED_FUNCTION_46();
}

void *sub_27487891C@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_27487C330(v3);
  return memcpy(a1, v3, 0xC0uLL);
}

void sub_274878980(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedManager];
  v7 = sub_2749FCD64();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_27487C270;
  *(v8 + 24) = v4;
  v11[4] = sub_27487C2B0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_274878F90;
  v11[3] = &block_descriptor_83_0;
  v9 = _Block_copy(v11);

  v10 = [v6 getWorkflowForIdentifier:v7 completionHandler:v9];
  _Block_release(v9);
}

void sub_274878AF0(uint64_t a1, id a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = objc_opt_self();
      swift_unknownObjectRetain_n();
      if ([v9 sharingEnabled])
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRetain();
        v10 = [v8 workflowRecord];
        if (v10)
        {
          v11 = v10;
          v12 = [objc_allocWithZone(MEMORY[0x277D7CAB0]) initWithWorkflowRecord_];
          v13 = [objc_opt_self() sharedEvaluator];
          v14 = swift_allocObject();
          v14[2] = a3;
          v14[3] = a4;
          v14[4] = a1;
          v30[4] = sub_27487C30C;
          v30[5] = v14;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 1107296256;
          v30[2] = sub_274878F18;
          v30[3] = &block_descriptor_89;
          v15 = _Block_copy(v30);
          swift_unknownObjectRetain();
          v16 = v12;

          [v13 evaluatePolicyForRequest:v16 completion:v15];
          _Block_release(v15);
          swift_unknownObjectRelease_n();

          return;
        }

        v26 = sub_27484F55C(v8, &selRef_name);
        v28 = v27;
        sub_27487C2B8();
        v23 = swift_allocError();
        v24 = v23;
        *v29 = v26;
        *(v29 + 8) = v28;
        *(v29 + 16) = 1;
      }

      else
      {
        v20 = sub_27484F55C(v8, &selRef_name);
        v22 = v21;
        sub_27487C2B8();
        v23 = swift_allocError();
        v24 = v23;
        *v25 = v20;
        *(v25 + 8) = v22;
        *(v25 + 16) = 0;
      }

      a3(v23, 1);

      swift_unknownObjectRelease_n();
    }

    else
    {
      v19 = swift_unknownObjectRetain();
      a3(v19, 0);

      swift_unknownObjectRelease();
    }
  }

  else if (a2)
  {
    v18 = a2;
    a3(a2, 1);
  }
}

void sub_274878E20(char a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  if (a1)
  {
    a3(a5, 0);
  }

  else if (a2)
  {
    v6 = sub_2749F8FD4();
    sub_27487C2B8();
    v7 = swift_allocError();
    *v8 = v6;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    v9 = v6;
    a3(v7, 1);
  }
}

void sub_274878F18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_274878F90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_274879064()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_18_1();
  return sub_2749FA914();
}

uint64_t sub_2748790CC()
{
  v1 = OBJC_IVAR____TtCV10WorkflowUI23GalleryShortcutPageView9PageState__showDetailSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtCV10WorkflowUI23GalleryShortcutPageView9PageState__showShareSheet, v2);
  v4(v0 + OBJC_IVAR____TtCV10WorkflowUI23GalleryShortcutPageView9PageState__showImportQuestionsSheet, v2);
  return v0;
}

uint64_t sub_27487917C()
{
  sub_2748790CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2748791D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_43();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11_19();
  sub_2749FA8C4();
  v4 = *(v2 + 32);
  v5 = OUTLINED_FUNCTION_13_17();
  v4(v5);
  sub_2749FA8C4();
  v6 = OUTLINED_FUNCTION_13_17();
  v4(v6);
  sub_2749FA8C4();
  v7 = OUTLINED_FUNCTION_13_17();
  v4(v7);
  return v0;
}

uint64_t sub_27487930C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GalleryShortcutPageView.PageState();
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_27487934C(void *a1, char a2)
{
  v3 = sub_27484F55C(a1, &selRef_name);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

id sub_2748793A4(void *a1)
{
  result = [a1 icon];
  if (!result)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D7A1E0]);

    return [v2 init];
  }

  return result;
}

void sub_2748793FC()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v4 = sub_2749F91B4();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2749F90F4();
  OUTLINED_FUNCTION_43();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  if (v1)
  {
    v32 = v15;
    v18 = v3;
    v19 = [v18 createdAt];
    if (v19)
    {
      v30 = v18;
      sub_2749F90D4();

      v20 = *(v32 + 32);
      v31 = v10;
      v20(v17, v14, v10);
      v21 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v22 = objc_opt_self();
      OUTLINED_FUNCTION_98_0();
      v23 = sub_2749FCD64();
      sub_2749F9194();
      v24 = sub_2749F9184();
      (*(v6 + 8))(v9, v4);
      v25 = [v22 dateFormatFromTemplate:v23 options:0 locale:v24];

      if (v25)
      {
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      }

      OUTLINED_FUNCTION_98_0();
      v26 = sub_2749FCD64();

      [v21 setLocalizedDateFormatFromTemplate_];

      v27 = sub_2749F90B4();
      v28 = [v21 stringFromDate_];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      (*(v32 + 8))(v17, v31);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_274879704(void *a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v2 = [a1 persistentIdentifier];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v4;
}

void sub_27487976C(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C260);
  sub_2749FC5B4();
  v36 = v37;
  type metadata accessor for GalleryShortcutPageView.PageState();
  swift_allocObject();
  sub_2748791D4();
  OUTLINED_FUNCTION_4_24();
  sub_27487BF18(v6, v7);
  v8 = sub_2749FAD84();
  v34 = v9;
  v35 = v8;
  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C268);
  sub_2749FC5B4();
  v31 = v37;
  v10 = a2 & 1;
  v38 = a2 & 1;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = a1;
  v13 = sub_27487934C(a1, v10);
  v29 = v14;
  v30 = v13;
  v15 = sub_2748793A4(a1);
  if (!v10)
  {
    v19 = v12;
    v20 = sub_27484F55C(v19, &selRef_longDescription);
    if (v21)
    {
      v17 = v20;
      v18 = v21;
    }

    else
    {
      v22 = [v19 shortDescription];
      if (!v22)
      {

        v17 = 0;
        v18 = 0;
        goto LABEL_8;
      }

      v23 = v22;
      v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v18 = v24;
    }

LABEL_8:
    v16 = sub_27487C480;
    goto LABEL_9;
  }

  v16 = sub_27487C478;
  v17 = 0;
  v18 = 0;
LABEL_9:
  sub_2748793FC();
  v26 = v25;
  v28 = v27;

  *a3 = v16;
  *(a3 + 8) = v11;
  *(a3 + 16) = v36;
  *(a3 + 24) = v39;
  *(a3 + 32) = v40;
  *(a3 + 40) = v35;
  *(a3 + 48) = v34;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = 0;
  *(a3 + 72) = v32;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = a1;
  *(a3 + 104) = v38;
  *(a3 + 112) = 0;
  *(a3 + 120) = v30;
  *(a3 + 128) = v29;
  *(a3 + 136) = v15;
  *(a3 + 144) = v17;
  *(a3 + 152) = v18;
  *(a3 + 160) = v26;
  *(a3 + 168) = v28;
  *(a3 + 176) = v31;
  *(a3 + 184) = v39;
}

void sub_274879A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedManager];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v10[4] = sub_27487C488;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_27479F0F0;
  v10[3] = &block_descriptor_101;
  v8 = _Block_copy(v10);

  v9 = [v6 loadWorkflowInGalleryWorkflow:a3 completionHandler:v8];
  _Block_release(v8);
}

void sub_274879B60(void *a1, id a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v8 = a1;
    a3(a1, 0);
    v5 = v8;

LABEL_4:

    return;
  }

  if (a2)
  {
    v7 = a2;
    a3(a2, 1);
    v5 = a2;

    goto LABEL_4;
  }
}

void sub_274879C24(void (*a1)(id, void), int a2, id a3)
{
  v4 = [a3 workflowRecord];
  if (v4)
  {
    v5 = v4;
    v6 = v4;
    a1(v5, 0);
  }
}

uint64_t sub_274879CC0()
{
  v4 = v0[11];
  v6 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C1E0);
  sub_2749FC5D4();
  v4 = v0[1];
  v5 = *(v0 + 4);
  v6 = 0;
  v7 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C178);
  sub_2749FC5D4();
  v1 = *v0;
  v2 = swift_allocObject();
  memcpy((v2 + 16), v0, 0xC0uLL);
  sub_27487BE18(v0, &v4);
  v1(sub_27487BEE8, v2);
}

uint64_t sub_274879DC8(void *a1, char a2, const void *a3)
{
  v6 = sub_2749FCA74();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2749FCAA4();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274830300();
  v12 = sub_2749FD404();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  memcpy((v13 + 32), a3, 0xC0uLL);
  aBlock[4] = sub_27487BEF4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);
  sub_27487BF0C(a1);
  sub_27487BE18(a3, v19);

  sub_2749FCA94();
  v19[0] = MEMORY[0x277D84F90];
  sub_27487BF18(&qword_28159E580, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27472AB6C(&qword_28159E530, &unk_28096DB60);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_27487A0F8(id a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v12 = *(a3 + 16);
    v13 = *(a3 + 32);
    aBlock = a1;
    LOBYTE(v15) = 1;
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C178);
    sub_2749FC5D4();
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277D7CA60]);
    v7 = a1;
    v8 = sub_2748925E8(v7, 0, 0);
    v9 = swift_allocObject();
    memcpy(v9 + 2, a3, 0xC0uLL);
    v9[26] = v8;
    v9[27] = v7;
    v18 = sub_27487BF60;
    v19 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_274760264;
    v17 = &block_descriptor_65;
    v10 = _Block_copy(&aBlock);
    sub_27487BF0C(a1);
    sub_27487BE18(a3, &v12);
    v11 = v8;

    [v11 configureAsSingleStepShortcutIfNecessary_];
    _Block_release(v10);
  }
}

uint64_t sub_27487A2B0(const void *a1, void *a2, void *a3)
{
  v6 = sub_2749FCA74();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2749FCAA4();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274830300();
  v12 = sub_2749FD404();
  v13 = swift_allocObject();
  memcpy(v13 + 2, a1, 0xC0uLL);
  v13[26] = a2;
  v13[27] = a3;
  aBlock[4] = sub_27487C014;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_71;
  v14 = _Block_copy(aBlock);
  sub_27487BE18(a1, v21);
  v15 = a2;
  v16 = a3;

  sub_2749FCA94();
  v21[0] = MEMORY[0x277D84F90];
  sub_27487BF18(&qword_28159E580, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27472AB6C(&qword_28159E530, &unk_28096DB60);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v11, v8, v14);
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_27487A5D4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C1E0);
  sub_2749FC5D4();
  v5 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C178);
  return sub_2749FC5D4();
}

void sub_27487A67C()
{
  OUTLINED_FUNCTION_48();
  v2 = v0;
  v91 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C150);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v78[-v6];
  v8 = type metadata accessor for GalleryShortcutPageiOSView();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C158);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v78[-v14];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C160);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v90 = &v78[-v17];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C168);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_19();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C170);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v86 = &v78[-v20];
  v92[0] = *(v0 + 16);
  *&v92[1] = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C178);
  sub_2749FC5C4();
  if (BYTE8(v95))
  {
    if (BYTE8(v95) == 1)
    {
      v85 = v95;
      swift_getErrorValue();
      *&v92[0] = sub_2749FDD84();
      *(&v92[0] + 1) = v24;
      sub_27475D0D0();
      v25 = sub_2749FBEE4();
      v27 = v26;
      v29 = v28;
      *&v92[0] = sub_2749FC444();
      v30 = sub_2749FBE94();
      v32 = v31;
      v34 = v33;
      v36 = v35;
      sub_27477656C(v25, v27, v29 & 1);

      KeyPath = swift_getKeyPath();
      LOBYTE(v27) = sub_2749FBC64();
      sub_2749FA9E4();
      v97 = v34 & 1;
      v96 = 0;
      *&v92[0] = v30;
      *(&v92[0] + 1) = v32;
      LOBYTE(v92[1]) = v34 & 1;
      *(&v92[1] + 1) = v95;
      DWORD1(v92[1]) = *(&v95 + 3);
      *(&v92[1] + 1) = v36;
      *&v92[2] = KeyPath;
      BYTE8(v92[2]) = 1;
      HIDWORD(v92[2]) = *(&v93 + 3);
      *(&v92[2] + 9) = v93;
      LOBYTE(v92[3]) = v27;
      DWORD1(v92[3]) = *(&v98 + 3);
      *(&v92[3] + 1) = v98;
      *(&v92[3] + 1) = v38;
      *&v92[4] = v39;
      *(&v92[4] + 1) = v40;
      *&v92[5] = v41;
      BYTE8(v92[5]) = 0;
      memcpy(v90, v92, 0x59uLL);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_22_14();
      OUTLINED_FUNCTION_22_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C180);
      sub_27487BA20();
      sub_27487BC48();
      sub_2749FB7B4();
      sub_27487BCD4(v85, 1u);
      sub_27472ECBC(v92, &qword_28096C180);
      v22 = v92;
      v23 = &qword_28096C180;
    }

    else
    {
      v21 = swift_allocObject();
      memcpy((v21 + 16), v2, 0xC0uLL);
      *v1 = sub_27487BDF4;
      v1[1] = v21;
      v1[2] = 0;
      v1[3] = 0;
      swift_storeEnumTagMultiPayload();
      sub_27487BE18(v2, v92);
      sub_27475D1E4(sub_27487BDF4);
      sub_27475D1E4(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E7C0);
      sub_27487BAAC();
      sub_27487BB8C();
      OUTLINED_FUNCTION_15_14();
      sub_2749FB7B4();
      OUTLINED_FUNCTION_16_10();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C180);
      sub_27487BA20();
      sub_27487BC48();
      OUTLINED_FUNCTION_14_11();
      sub_27471F8A4(sub_27487BDF4);
      sub_27471F8A4(0);
      v22 = v8;
      v23 = &qword_28096C170;
    }
  }

  else
  {
    v82 = v4;
    v83 = v15;
    v84 = v12;
    v85 = v95;
    v92[0] = *(v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C1E0);
    sub_2749FC5C4();
    v42 = v95;
    if (v95)
    {
      v98 = *(v0 + 96);
      v99 = *(v0 + 104);
      v95 = *(v0 + 40);
      *&v11[v8[8]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DDA0);
      swift_storeEnumTagMultiPayload();
      *v11 = v98;
      v11[8] = v99;
      *(v11 + 2) = v42;
      v43 = v85;
      *(v11 + 3) = v85;
      sub_27487BCE8(&v98, v92);
      sub_27487BD20(v43, 0);
      sub_2747B97A0(&v95, v92, &unk_28096C1F0);
      type metadata accessor for GalleryShortcutPageView.PageState();
      OUTLINED_FUNCTION_4_24();
      sub_27487BF18(v44, v45);
      *(v11 + 4) = sub_2749FAD84();
      *(v11 + 5) = v46;
      v47 = &v11[v8[9]];
      *v47 = swift_getKeyPath();
      v47[8] = 0;
      v48 = v8[10];
      *&v11[v48] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
      swift_storeEnumTagMultiPayload();
      v49 = &v11[v8[11]];
      *v49 = swift_getKeyPath();
      *(v49 + 1) = 0;
      v49[16] = 0;
      v50 = v8[12];
      *&v11[v50] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D770);
      swift_storeEnumTagMultiPayload();
      v51 = &v11[v8[13]];
      v93 = 0;
      v94 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C210);
      sub_2749FC5B4();
      v52 = *&v92[1];
      *v51 = v92[0];
      *(v51 + 2) = v52;
      sub_27487BD34(v11, v7);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C180);
      OUTLINED_FUNCTION_3_35();
      sub_27487BF18(v53, v54);
      sub_27487BC48();
      v55 = v83;
      OUTLINED_FUNCTION_98_0();
      sub_2749FB7B4();
      sub_27487BD98(v11);
    }

    else
    {
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v56 = qword_28159E448;
      v57 = sub_2749FCD64();
      v58 = sub_2749FCD64();

      v59 = [v56 localizedStringForKey:v57 value:v58 table:0];

      v60 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v62 = v61;

      *&v92[0] = v60;
      *(&v92[0] + 1) = v62;
      sub_27475D0D0();
      v63 = sub_2749FBEE4();
      v65 = v64;
      LOBYTE(v62) = v66;
      *&v92[0] = sub_2749FC444();
      OUTLINED_FUNCTION_18_1();
      v80 = sub_2749FBE94();
      v81 = v67;
      v8 = v68;
      v79 = v69;
      sub_27477656C(v63, v65, v62 & 1);

      v70 = swift_getKeyPath();
      LOBYTE(v65) = sub_2749FBC64();
      sub_2749FA9E4();
      v71 = v79 & 1;
      LOBYTE(v92[0]) = v79 & 1;
      LOBYTE(v95) = 0;
      *v7 = v80;
      *(v7 + 1) = v8;
      v7[16] = v71;
      *(v7 + 3) = v81;
      *(v7 + 4) = v70;
      v7[40] = 1;
      v7[48] = v65;
      *(v7 + 7) = v72;
      *(v7 + 8) = v73;
      *(v7 + 9) = v74;
      *(v7 + 10) = v75;
      v7[88] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C180);
      OUTLINED_FUNCTION_3_35();
      sub_27487BF18(v76, v77);
      sub_27487BC48();
      v55 = v83;
      sub_2749FB7B4();
    }

    sub_2747B97A0(v55, v1, &qword_28096C158);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E7C0);
    sub_27487BAAC();
    sub_27487BB8C();
    OUTLINED_FUNCTION_15_14();
    sub_2749FB7B4();
    OUTLINED_FUNCTION_16_10();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C180);
    sub_27487BA20();
    sub_27487BC48();
    OUTLINED_FUNCTION_14_11();
    sub_27487BCD4(v85, 0);
    sub_27472ECBC(v8, &qword_28096C170);
    v22 = v55;
    v23 = &qword_28096C158;
  }

  sub_27472ECBC(v22, v23);
  OUTLINED_FUNCTION_46();
}

void GalleryShortcutPageLoadingView.body.getter()
{
  OUTLINED_FUNCTION_48();
  v30 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C0E0);
  OUTLINED_FUNCTION_9();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C0E8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_19();
  *v0 = sub_2749FB634();
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0F0) + 44);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v11 = v0 + v10;
  v12 = qword_28159E448;
  v13 = sub_2749FCD64();
  v14 = sub_2749FCD64();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v18 = v17;

  v33[0] = v16;
  v33[1] = v18;
  sub_27475D0D0();
  v19 = sub_2749FD704();
  v21 = v20;

  v31 = v19;
  v32 = v21;
  sub_2749FAB74();
  v22 = sub_2749FBDF4();
  KeyPath = swift_getKeyPath();
  v24 = &v8[*(v2 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  sub_2747B97A0(v8, v6, &qword_28096C0E0);
  *v11 = 0;
  *(v11 + 8) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C100);
  sub_2747B97A0(v6, v11 + *(v25 + 48), &qword_28096C0E0);
  v26 = v11 + *(v25 + 64);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_27472ECBC(v8, &qword_28096C0E0);
  sub_27472ECBC(v6, &qword_28096C0E0);
  sub_2749FC914();
  sub_2749FB004();
  v27 = v30;
  sub_27487B5F8(v0, v30);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C108);
  memcpy((v27 + *(v28 + 36)), v33, 0x70uLL);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_27487B4BC()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_274878EF0();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27487B508()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27487903C();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27487B554()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_274879014();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27487B5A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749FB3C4();
  *a1 = result;
  return result;
}

uint64_t sub_27487B5F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C0E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for GalleryShortcutPageView.PageState()
{
  result = qword_28096C130;
  if (!qword_28096C130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27487B6D8()
{
  sub_27475F2D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for GalleryShortcutPageLoadingView(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_27487B818()
{
  result = qword_28096C140;
  if (!qword_28096C140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C108);
    sub_27472AB6C(&qword_28096C148, &qword_28096C0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C140);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI23GalleryShortcutPageViewV12LoadingState33_9FC2755AA86A37106025456272746DA8LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI23GalleryShortcutPageViewV12LoadingState33_9FC2755AA86A37106025456272746DA8LLOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27487B908(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27487B948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27487BA20()
{
  result = qword_28096C188;
  if (!qword_28096C188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C170);
    sub_27487BAAC();
    sub_27487BB8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C188);
  }

  return result;
}

unint64_t sub_27487BAAC()
{
  result = qword_28096C190;
  if (!qword_28096C190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096E7C0);
    sub_27487BB38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C190);
  }

  return result;
}

unint64_t sub_27487BB38()
{
  result = qword_28096C1A0;
  if (!qword_28096C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C1A0);
  }

  return result;
}

unint64_t sub_27487BB8C()
{
  result = qword_28096C1A8;
  if (!qword_28096C1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C158);
    sub_27487BF18(&qword_28096C1B0, type metadata accessor for GalleryShortcutPageiOSView);
    sub_27487BC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C1A8);
  }

  return result;
}

unint64_t sub_27487BC48()
{
  result = qword_28096C1B8;
  if (!qword_28096C1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C180);
    sub_274776C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C1B8);
  }

  return result;
}

void sub_27487BCD4(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_2748301B8(a1, a2);
  }
}

id sub_27487BD20(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_27483019C(result, a2);
  }

  return result;
}

uint64_t sub_27487BD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryShortcutPageiOSView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27487BD98(uint64_t a1)
{
  v2 = type metadata accessor for GalleryShortcutPageiOSView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_6()
{

  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_2748301B8(*(v0 + 32), v1);
  }

  OUTLINED_FUNCTION_19_13();

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_27487BF18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_61Tm()
{

  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_2748301B8(*(v0 + 32), v1);
  }

  OUTLINED_FUNCTION_19_13();

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

unint64_t sub_27487C02C()
{
  result = qword_28096C228;
  if (!qword_28096C228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C218);
    sub_27472AB6C(&qword_28096C230, &qword_28096C238);
    sub_27487C0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C228);
  }

  return result;
}

unint64_t sub_27487C0E4()
{
  result = qword_28096C240;
  if (!qword_28096C240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C220);
    sub_27487C168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C240);
  }

  return result;
}

unint64_t sub_27487C168()
{
  result = qword_28096C248;
  if (!qword_28096C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C248);
  }

  return result;
}

id sub_27487C210(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_27487C224(result, a2);
  }

  return result;
}

id sub_27487C224(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_27487C240(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_27487C254(a1, a2);
  }
}

void sub_27487C254(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_27487C270(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_27487C2B8()
{
  result = qword_28096C258;
  if (!qword_28096C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C258);
  }

  return result;
}

void *sub_27487C330@<X0>(void *a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
      swift_unknownObjectRelease();
      sub_27487C470(__dst);
      return memcpy(a1, __dst, 0xC0uLL);
    }

    v3 = 1;
  }

  sub_27487976C(v2, v3, &v6);
  __src[0] = v6;
  *&__src[1] = v7;
  BYTE8(__src[1]) = v8;
  __src[2] = v9;
  __src[3] = v10;
  LOBYTE(__src[4]) = v11;
  *(&__src[4] + 8) = v12;
  BYTE8(__src[5]) = v13;
  *&__src[6] = v14;
  BYTE8(__src[6]) = v15;
  __src[7] = v16;
  __src[8] = v17;
  __src[9] = v18;
  __src[10] = v19;
  __src[11] = v20;
  CGSizeMake(__src);
  memcpy(__dst, __src, sizeof(__dst));
  return memcpy(a1, __dst, 0xC0uLL);
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI20ShortcutGalleryErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_27487C4CC()
{
  result = qword_28096C278;
  if (!qword_28096C278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C280);
    sub_27487BA20();
    sub_27487BC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C278);
  }

  return result;
}

unint64_t sub_27487C558()
{
  result = qword_28096C288;
  if (!qword_28096C288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096C290);
    sub_27487C02C();
    sub_27487C0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C288);
  }

  return result;
}

uint64_t sub_27487C614@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v55 = &v51 - v5;
  v6 = type metadata accessor for ListButton();
  v7 = v6 - 8;
  v53 = *(v6 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C2C8) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C2D0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v56 = &v51 - v14;
  v15 = *(v2 + 24);
  v16 = *(v2 + 32);
  v17 = *(v2 + 40);
  v19 = *(v2 + 16);
  v64[0] = *v2;
  v18 = v64[0];
  v64[1] = v19;
  *v65 = *(v2 + 32);
  v20 = *v65;
  *&v65[9] = *(v2 + 41);
  v21 = *&v65[9];
  *v12 = v15;
  *(v12 + 1) = v16;
  *(v12 + 2) = v17;
  *(v12 + 65) = v21;
  *(v12 + 56) = v20;
  *(v12 + 40) = v19;
  *(v12 + 24) = v18;
  KeyPath = swift_getKeyPath();
  v66 = 0;
  *(v12 + 11) = KeyPath;
  v12[177] = 0;
  v23 = type metadata accessor for SmartShortcutPickerSectionRowView();
  v24 = v23[8];
  *&v12[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A88);
  swift_storeEnumTagMultiPayload();
  v25 = v23[9];
  v67[0] = swift_getKeyPath();
  sub_2747D31F0(v67);
  memcpy(&v12[v25], v67, 0xBAuLL);
  v26 = &v12[v23[10]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = v2 + *(v7 + 44);
  v28 = *v27;
  v29 = *(v27 + 8);
  LOBYTE(v61[0]) = v28;
  v61[1] = v29;

  v30 = v17;
  sub_2747B24E0(v64, &v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  LOBYTE(v17) = v62;
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v33 = 1;
  *(v32 + 16) = (v17 & 1) == 0;
  v34 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C2D8) + 36)];
  *v34 = v31;
  v34[1] = sub_2747FF010;
  v34[2] = v32;
  LODWORD(v31) = sub_2749FB8B4();
  LODWORD(v32) = sub_2749FB8D4();
  v35 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C2E0) + 36)];
  *v35 = v31;
  *(v35 + 1) = v32;
  v36 = v52;
  sub_27487E004(v2, v52);
  v37 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v38 = swift_allocObject();
  sub_27487E068(v36, v38 + v37);
  v39 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C2E8) + 36)];
  sub_2749FACE4();
  sub_2749FD0C4();
  *v39 = &unk_274A1CBF8;
  *(v39 + 1) = v38;
  v40 = swift_getKeyPath();
  memcpy(v68, (v2 + 72), 0x59uLL);
  v69[0] = v40;
  memcpy(&v69[1], (v2 + 72), 0x59uLL);
  memcpy(&v12[*(v9 + 44)], v69, 0x61uLL);
  v70 = v40;
  memcpy(v71, (v2 + 72), sizeof(v71));
  sub_2747D2AC8(v68, &v62);
  sub_27473F28C(v69, &v62, &qword_280969020);
  v41 = v55;
  sub_27472ECBC(&v70, &qword_280969020);
  v42 = swift_getKeyPath();
  if (*(v2 + 16) == 1)
  {
    sub_2749FA0C4();
    v33 = 0;
  }

  v43 = sub_2749FA0F4();
  __swift_storeEnumTagSinglePayload(v41, v33, 1, v43);
  v44 = v56;
  v45 = &v56[*(v54 + 36)];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969040);
  sub_27475CF54(v41, v45 + *(v46 + 28), &qword_280968A30);
  *v45 = v42;
  sub_27475CF54(v12, v44, &qword_28096C2C8);
  v47 = swift_getKeyPath();
  memcpy(v60, (v2 + 168), 0xB9uLL);
  memcpy(v59, (v2 + 168), sizeof(v59));
  v61[0] = v47;
  memcpy(&v61[1], (v2 + 168), 0xB9uLL);
  v48 = v57;
  sub_27475CF54(v44, v57, &qword_28096C2D0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C2F0);
  memcpy((v48 + *(v49 + 36)), v61, 0xC1uLL);
  v62 = v47;
  memcpy(v63, v59, sizeof(v63));
  sub_27473F28C(v60, v58, &qword_280968A58);
  sub_27473F28C(v61, v58, &qword_280969030);
  return sub_27472ECBC(&v62, &qword_280969030);
}

uint64_t sub_27487CC5C(uint64_t a1)
{
  *(v1 + 32) = a1;
  sub_2749FD0A4();
  *(v1 + 40) = sub_2749FD094();
  v3 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27487CCF4, v3, v2);
}

uint64_t sub_27487CCF4()
{
  v21 = v0;
  v1 = *(v0 + 32);

  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (*(v1 + 160))
  {
    if (*(v1 + 160) == 1)
    {
      v5 = sub_2748D7C28();
    }

    else
    {
      v5 = *MEMORY[0x277D7D830];
    }

    SmartShortcutPickerAppAvailabilityChecker.Availability.init(configurationContext:)(v5, &v14);
  }

  else
  {
    v14 = 1;
  }

  v6 = 1;
  if (v4 == 1)
  {
    v7 = v14;
    v15 = v2;
    v16 = v3;
    v17 = 1;
    v18 = *(v1 + 17);
    v19 = *(v1 + 33);
    v20 = *(v1 + 49);
    if (sub_274948688())
    {
      if (qword_280966BA8 != -1)
      {
        OUTLINED_FUNCTION_27_0();
      }

      v15 = v7;
      v6 = sub_27477DEAC();
    }
  }

  v8 = *(v0 + 32);
  v9 = (v8 + *(type metadata accessor for ListButton() + 36));
  v10 = *v9;
  v11 = *(v9 + 1);
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  *(v0 + 48) = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5D4();
  v12 = *(v0 + 8);

  return v12();
}

void sub_27487CE80()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ListCell();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUI8ListCell_hostingView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame_];
  }
}

void sub_27487CF8C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ListCell();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  if (*&v0[OBJC_IVAR____TtC10WorkflowUI8ListCell_availabilityTask])
  {

    sub_2749FD0F4();
  }

  v1 = OBJC_IVAR____TtC10WorkflowUI8ListCell_hostingView;
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUI8ListCell_hostingView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;
}

uint64_t sub_27487D080(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FB8);
  OUTLINED_FUNCTION_34(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-1] - v6;
  v8 = sub_2749FA5D4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23[-1] - v13;
  v15 = sub_2749FA564();
  v16 = type metadata accessor for ListCell();
  v24.receiver = v2;
  v24.super_class = v16;
  objc_msgSendSuper2(&v24, sel__bridgedUpdateConfigurationUsingState_, v15);

  sub_2749FA5A4();
  v17 = sub_2749FA594();
  v23[3] = v17;
  v23[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a1, v17);
  sub_2749FA5C4();
  v19 = *(v9 + 8);
  v19(v12, v8);
  __swift_destroy_boxed_opaque_existential_0(v23);
  if ((sub_2749FA544() & 1) == 0 && (sub_2749FA554() & 1) == 0)
  {
    v20 = [objc_opt_self() clearColor];
    sub_2749FA5B4();
  }

  (*(v9 + 16))(v7, v14, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  MEMORY[0x277C5F220](v7);
  return (v19)(v14, v8);
}

uint64_t sub_27487D3D8(__int128 *a1, uint64_t a2, const void *a3, const void *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  OUTLINED_FUNCTION_34(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = type metadata accessor for ListButton();
  OUTLINED_FUNCTION_9();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  v21 = a1[1];
  v63 = *a1;
  v64 = v21;
  v65[0] = a1[2];
  *(v65 + 9) = *(a1 + 41);
  memcpy(v66, a3, 0x59uLL);
  memcpy(v67, a4, 0xB9uLL);
  v22 = OBJC_IVAR____TtC10WorkflowUI8ListCell_hostingView;
  v23 = *&v5[OBJC_IVAR____TtC10WorkflowUI8ListCell_hostingView];
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  *&v20[*(v14 + 32)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  v24 = v64;
  *v20 = v63;
  *(v20 + 1) = v24;
  *(v20 + 2) = v65[0];
  *(v20 + 41) = *(v65 + 9);
  *(v20 + 8) = a2;
  memcpy(v20 + 72, v66, 0x59uLL);
  memcpy(v20 + 168, v67, 0xB9uLL);
  v25 = &v20[*(v14 + 36)];
  v62 = 1;

  sub_2747B24E0(&v63, v60);
  sub_2747D2AC8(v66, v60);
  sub_27473F28C(v67, v60, &qword_280968A58);
  sub_2749FC5B4();
  v26 = v61;
  *v25 = v60[0];
  *(v25 + 1) = v26;
  v27 = OBJC_IVAR____TtC10WorkflowUI8ListCell_availabilityTask;
  if (*&v5[OBJC_IVAR____TtC10WorkflowUI8ListCell_availabilityTask])
  {

    sub_2749FD0F4();
  }

  v28 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v28);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2749FD0A4();
  sub_2747B24E0(&v63, v60);
  sub_2747D2AC8(v66, v60);

  v30 = sub_2749FD094();
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 16) = v30;
  *(v31 + 24) = v32;
  *(v31 + 32) = v29;
  v33 = v64;
  *(v31 + 40) = v63;
  *(v31 + 56) = v33;
  *(v31 + 72) = v65[0];
  *(v31 + 81) = *(v65 + 9);
  memcpy((v31 + 104), v66, 0x59uLL);

  sub_27479930C();
  *&v5[v27] = v34;

  sub_27487E004(v20, v18);
  v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C2F8));
  v36 = sub_2749FADF4();
  [v36 setUserInteractionEnabled_];
  v37 = *&v5[v22];
  *&v5[v22] = v36;
  v38 = v36;

  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 addSubview_];
  v59 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_274A108E0;
  v40 = [v38 leadingAnchor];
  v41 = [v5 leadingAnchor];
  [v5 layoutMargins];
  v43 = [v40 constraintEqualToAnchor:v41 constant:v42];

  *(v39 + 32) = v43;
  v44 = [v38 trailingAnchor];
  v45 = [v5 layoutMarginsGuide];
  v46 = [v45 trailingAnchor];

  v47 = [v44 constraintEqualToAnchor_];
  *(v39 + 40) = v47;
  v48 = [v38 topAnchor];
  v49 = [v5 layoutMarginsGuide];
  v50 = [v49 topAnchor];

  v51 = [v48 constraintEqualToAnchor_];
  *(v39 + 48) = v51;
  v52 = [v38 bottomAnchor];

  v53 = [v5 layoutMarginsGuide];
  v54 = [v53 bottomAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v39 + 56) = v55;
  sub_27478069C();
  v56 = sub_2749FCF74();

  [v59 activateConstraints_];

  return sub_27487E258(v20);
}

uint64_t sub_27487DA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_2749FD0A4();
  v6[8] = sub_2749FD094();
  v8 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27487DAEC, v8, v7);
}

uint64_t sub_27487DAEC()
{
  v20 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[7];
    if (*(v3 + 88))
    {
      if (*(v3 + 88) == 1)
      {
        v4 = Strong;
        v5 = sub_2748D7C28();
      }

      else
      {
        v7 = *MEMORY[0x277D7D830];
        v8 = Strong;
        v5 = v7;
      }

      SmartShortcutPickerAppAvailabilityChecker.Availability.init(configurationContext:)(v5, &v16);
    }

    else
    {
      v16 = 1;
      v6 = Strong;
    }

    v9 = v0[6];
    if (*(v9 + 16) == 1 && (v10 = v16, v11 = v9[1], v12 = v9[2], v17 = *v9, v18 = v11, v19[0] = v12, *(v19 + 9) = *(v9 + 41), (sub_274948688() & 1) != 0))
    {
      if (qword_280966BA8 != -1)
      {
        OUTLINED_FUNCTION_27_0();
      }

      *&v17 = v10;
      v13 = sub_27477DEAC();
    }

    else
    {
      v13 = 1;
    }

    [v2 setUserInteractionEnabled_];
  }

  v14 = v0[1];

  return v14();
}

id sub_27487DC74(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC10WorkflowUI8ListCell_hostingView] = 0;
  *&v4[OBJC_IVAR____TtC10WorkflowUI8ListCell_availabilityTask] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ListCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_27487DD14(void *a1)
{
  *&v1[OBJC_IVAR____TtC10WorkflowUI8ListCell_hostingView] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI8ListCell_availabilityTask] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ListCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_27487DDBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ListButton()
{
  result = qword_28096C2B0;
  if (!qword_28096C2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27487DED4()
{
  type metadata accessor for SmartShortcutPickerViewLayout(319);
  if (v0 <= 0x3F)
  {
    sub_27472CC90(319, &qword_28096C2C0, &type metadata for SmartShortcutPickerEntry.Identifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2747B708C();
      if (v2 <= 0x3F)
      {
        sub_27472CC90(319, &qword_28096D840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_27487E004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27487E068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27487E0CC()
{
  v2 = type metadata accessor for ListButton();
  OUTLINED_FUNCTION_34(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27475F680;

  return sub_27487CC5C(v0 + v4);
}