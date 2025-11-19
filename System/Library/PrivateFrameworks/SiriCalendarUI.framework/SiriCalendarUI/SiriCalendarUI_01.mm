uint64_t sub_2666CCDAC()
{
  v1 = type metadata accessor for EventListSnippet();
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_2666CD9F0(v0, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EventListSnippet);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_2666CDAA8(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for EventListSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096308, &qword_2666DA668);
  sub_2666B2B90(&qword_280096310, &qword_280096308, &qword_2666DA668);
  return sub_2666D8AAC();
}

uint64_t sub_2666CCF1C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v53 = type metadata accessor for CalendarButtonView(0);
  v3 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096318, &qword_2666DA670);
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v52 = &v49 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096320, &qword_2666DA678);
  v50 = *(v60 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v60);
  v49 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096328, &qword_2666DA680);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v61 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v49 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096330, &qword_2666DA688);
  v15 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096338, &qword_2666DA690);
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v59 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v49 - v23;
  v25 = sub_2666D863C();
  v26 = type metadata accessor for EventListSnippet();
  v27 = *(v26 + 28);
  v56 = a1;
  v28 = *(a1 + v27 + 16);
  *v17 = v25;
  *(v17 + 1) = v28;
  v17[16] = 0;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096340, &qword_2666DA698) + 44);
  v63 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096348, &qword_2666DA6A0);
  type metadata accessor for DayEventGroupView(0);
  sub_2666B2B90(&qword_280096350, &qword_280096348, &qword_2666DA6A0);
  sub_2666CD9A0(&qword_280096358, type metadata accessor for DayEventGroupView);
  sub_2666CD9A0(&qword_280096360, type metadata accessor for DayEventGroupView.DayEventGroup);
  sub_2666D8A4C();
  sub_2666B2B90(&qword_280096368, &qword_280096330, &qword_2666DA688);
  sub_2666D884C();
  sub_2666CD868(v17);
  if (*(v56 + 8) == 1)
  {
    v30 = v51;
    sub_2666CD9F0(v56 + *(v26 + 32), v51, type metadata accessor for CalendarButtonView.Model);
    v31 = v53;
    v32 = v30 + *(v53 + 20);
    *v32 = swift_getKeyPath();
    *(v32 + 8) = 0;
    v33 = v30 + *(v31 + 24);
    sub_2666D8B8C();
    v34 = sub_2666CD9A0(&qword_280095C38, type metadata accessor for CalendarButtonView);
    v35 = v52;
    sub_2666D884C();
    sub_2666CDA50(v30, type metadata accessor for CalendarButtonView);
    v63 = v31;
    v64 = v34;
    swift_getOpaqueTypeConformance2();
    v36 = v49;
    v37 = v55;
    sub_2666D883C();
    (*(v54 + 8))(v35, v37);
    v38 = v58;
    v39 = v60;
    (*(v50 + 32))(v58, v36, v60);
    v40 = 0;
    v41 = v39;
  }

  else
  {
    v40 = 1;
    v41 = v60;
    v38 = v58;
  }

  __swift_storeEnumTagSinglePayload(v38, v40, 1, v41);
  v42 = v19[2];
  v43 = v59;
  v42(v59, v24, v18);
  v44 = v61;
  sub_2666CD8D0(v38, v61);
  v45 = v62;
  v42(v62, v43, v18);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096370, &qword_2666DA6A8);
  sub_2666CD8D0(v44, &v45[*(v46 + 48)]);
  sub_2666CD938(v38);
  v47 = v19[1];
  v47(v24, v18);
  sub_2666CD938(v44);
  return (v47)(v43, v18);
}

uint64_t sub_2666CD614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2666CD9F0(a1, a2, type metadata accessor for DayEventGroupView.DayEventGroup);
  v3 = a2 + *(type metadata accessor for DayEventGroupView(0) + 20);
  return sub_2666D8B8C();
}

uint64_t sub_2666CD668()
{
  v1 = (type metadata accessor for EventListSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[8];
  v7 = sub_2666D8B9C();
  OUTLINED_FUNCTION_2(v7);
  (*(v8 + 8))(v0 + v3 + v6);
  v9 = v0 + v3 + v1[9];
  sub_2666B4670(*v9, *(v9 + 8));
  v10 = *(v9 + 56);

  v11 = v0 + v3 + v1[10];
  v12 = *(v11 + 8);

  v13 = *(v11 + 24);

  if (*(v11 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v11 + 32));
  }

  else
  {
    v14 = *(v11 + 40);
  }

  v15 = type metadata accessor for CalendarButtonView.Model(0);
  v16 = v15[6];
  v17 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v17);
  (*(v18 + 8))(v11 + v16);
  v19 = *(v11 + v15[7]);

  v20 = *(v11 + v15[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666CD7F8@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for EventListSnippet() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2666CCF1C(v4, a1);
}

uint64_t sub_2666CD868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096330, &qword_2666DA688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666CD8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096328, &qword_2666DA680);
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666CD938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096328, &qword_2666DA680);
  OUTLINED_FUNCTION_2(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2666CD9A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2666CD9F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666CDA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2666CDAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_3()
{
  v2 = MEMORY[0x277D55918];

  return sub_2666CDA50(v0, v2);
}

uint64_t sub_2666CDBAC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2666D8B9C();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2666CDC48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DisambiguateEventsSnippet()
{
  result = qword_280096388;
  if (!qword_280096388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666CDD14()
{
  sub_2666CDDB0();
  if (v0 <= 0x3F)
  {
    sub_2666D8B9C();
    if (v1 <= 0x3F)
    {
      sub_2666B3DDC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2666CDDB0()
{
  if (!qword_280095C78)
  {
    type metadata accessor for RenderableEvent();
    v0 = sub_2666D8D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280095C78);
    }
  }
}

uint64_t sub_2666CDE24()
{
  v1 = type metadata accessor for DisambiguateEventsSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = sub_2666D8B6C();
  v5 = OUTLINED_FUNCTION_10_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_2666CDFFC();
  sub_2666CEDF0(v0, v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisambiguateEventsSnippet);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_2666CF1B4(v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DisambiguateEventsSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096398, &qword_2666DA790);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800963A0, &qword_2666DA798);
  v11 = sub_2666CEB04();
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  return sub_2666D8B4C();
}

uint64_t sub_2666CDFFC()
{
  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v0 = qword_2800978F0;
  v1 = sub_2666D87DC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5 & 1;
  *(v9 + 40) = v7;
  return sub_2666D8B5C();
}

uint64_t sub_2666CE134(uint64_t *a1)
{
  v2 = type metadata accessor for DisambiguateEventsSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800963A0, &qword_2666DA798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v20 = *a1;
  sub_2666CEDF0(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisambiguateEventsSnippet);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_2666CF1B4(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for DisambiguateEventsSnippet);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D88, &unk_2666D9BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800963B0, &unk_2666DA7B0);
  sub_2666B2B90(&qword_280095D98, &qword_280095D88, &unk_2666D9BC0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095F40, &unk_2666DA7A0);
  v13 = type metadata accessor for EventCellView();
  v14 = sub_2666CEDA8(&qword_280095DA8, type metadata accessor for EventCellView);
  v18 = v13;
  v19 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v12;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2666CEDA8(&qword_280095DB8, type metadata accessor for RenderableEvent);
  sub_2666D8A4C();
  sub_2666CEB04();
  sub_2666D883C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2666CE488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v37 = a1;
  v47 = a3;
  v4 = type metadata accessor for RenderableEvent();
  v45 = *(v4 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DisambiguateEventsSnippet();
  v7 = v6 - 8;
  v43 = *(v6 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for EventCellView();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F40, &unk_2666DA7A0);
  v18 = *(v17 - 8);
  v40 = v17;
  v41 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  sub_2666CEDF0(a1, v16, type metadata accessor for RenderableEvent);
  v22 = sub_2666D7F2C();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v22);
  v23 = v13[5];
  __swift_storeEnumTagSinglePayload(&v16[v23], 1, 1, v22);
  v24 = &v16[v13[7]];
  KeyPath = swift_getKeyPath();
  v53 = 0;
  v51 = 1;
  *v24 = KeyPath;
  v24[8] = 0;
  *(v24 + 9) = *v52;
  *(v24 + 3) = *&v52[3];
  *(v24 + 2) = 0x4030000000000000;
  *(v24 + 3) = 0;
  v24[32] = 1;
  *(v24 + 33) = *v50;
  *(v24 + 9) = *&v50[3];
  *(v24 + 5) = 1;
  *(v24 + 6) = sub_2666BD078;
  *(v24 + 7) = 0;
  v26 = &v16[v13[8]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  sub_2666BC038(v12, &v16[v23]);
  v16[v13[6]] = 1;
  v27 = v39;
  v28 = *(v39 + *(v7 + 32) + 16);
  v29 = sub_2666CEDA8(&qword_280095DA8, type metadata accessor for EventCellView);
  sub_2666D884C();
  sub_2666CEE54(v16);
  v30 = v38;
  sub_2666CEDF0(v27, v38, type metadata accessor for DisambiguateEventsSnippet);
  v31 = v44;
  sub_2666CEDF0(v37, v44, type metadata accessor for RenderableEvent);
  v32 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v33 = (v42 + *(v45 + 80) + v32) & ~*(v45 + 80);
  v34 = swift_allocObject();
  sub_2666CF1B4(v30, v34 + v32, type metadata accessor for DisambiguateEventsSnippet);
  sub_2666CF1B4(v31, v34 + v33, type metadata accessor for RenderableEvent);
  v48 = v13;
  v49 = v29;
  swift_getOpaqueTypeConformance2();
  v35 = v40;
  sub_2666D88BC();

  return (*(v41 + 8))(v21, v35);
}

uint64_t sub_2666CE968(uint64_t *a1)
{
  v3 = sub_2666D8C7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[1])
  {
    v8 = *a1;
  }

  v9 = sub_2666D816C();
  v11 = v10;
  v12 = v1 + *(type metadata accessor for DisambiguateEventsSnippet() + 20);
  sub_2666D8B7C();
  sub_2666CF384(v9, v11);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2666CEA98()
{
  v1 = type metadata accessor for DisambiguateEventsSnippet();
  OUTLINED_FUNCTION_10_0(v1);
  v3 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return sub_2666CE134(v3);
}

unint64_t sub_2666CEB04()
{
  result = qword_2800963A8;
  if (!qword_2800963A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800963A0, &qword_2666DA798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095F40, &unk_2666DA7A0);
    type metadata accessor for EventCellView();
    sub_2666CEDA8(&qword_280095DA8, type metadata accessor for EventCellView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800963A8);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for DisambiguateEventsSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_2666D8B9C();
  OUTLINED_FUNCTION_1_4(v7);
  (*(v8 + 8))(v0 + v3 + v6);
  v9 = v0 + v3 + v1[8];
  sub_2666B4670(*v9, *(v9 + 8));
  v10 = *(v9 + 56);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666CED2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DisambiguateEventsSnippet();
  OUTLINED_FUNCTION_10_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_2666CE488(a1, v7, a2);
}

uint64_t sub_2666CEDA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2666CEDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666CEE54(uint64_t a1)
{
  v2 = type metadata accessor for EventCellView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666CEEB0()
{
  v1 = (type metadata accessor for DisambiguateEventsSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for RenderableEvent();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = (v3 + v4 + v6) & ~v6;
  v9 = (v0 + v3);
  v10 = *v9;

  v11 = v1[7];
  v12 = sub_2666D8B9C();
  OUTLINED_FUNCTION_1_4(v12);
  (*(v13 + 8))(&v9[v11]);
  v14 = &v9[v1[8]];
  sub_2666B4670(*v14, v14[8]);
  v15 = *(v14 + 7);

  v16 = v0 + v8;
  v17 = *(v0 + v8 + 8);

  v18 = *(v0 + v8 + 24);

  v19 = *(v0 + v8 + 40);

  v20 = *(v0 + v8 + 56);

  v21 = *(v0 + v8 + 104);

  v22 = sub_2666D825C();
  v23 = v22[8];
  v24 = sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4(v24);
  (*(v25 + 8))(v0 + v8 + v23);
  v26 = *(v0 + v8 + v22[10] + 8);

  v27 = *(v0 + v8 + v22[11] + 8);

  v28 = v0 + v8 + v22[12];
  v29 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v28, 1, v29))
  {
    v30 = *(v29 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v31 = sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4(v31);
      (*(v32 + 8))(v28 + v30);
    }
  }

  v33 = *(v16 + v22[13]);

  v34 = v22[14];
  v35 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v16 + v34, 1, v35))
  {
    (*(*(v35 - 8) + 8))(v16 + v34, v35);
  }

  v36 = *(v5 + 20);
  v37 = sub_2666D815C();
  OUTLINED_FUNCTION_1_4(v37);
  (*(v38 + 8))(v16 + v36);
  v39 = *(v16 + *(v5 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + v7, v2 | v6 | 7);
}

uint64_t sub_2666CF1B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2666CF210()
{
  v1 = *(type metadata accessor for DisambiguateEventsSnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for RenderableEvent();
  OUTLINED_FUNCTION_10_0(v4);
  return sub_2666CE968((v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80))));
}

uint64_t sub_2666CF2CC(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D558B8];
  v9[3] = MEMORY[0x277D558B8];
  v9[4] = sub_2666CF4D4();
  v9[0] = a1;
  v9[1] = a2;
  __swift_project_boxed_opaque_existential_1(v9, v4);

  v5 = sub_2666D81AC();
  v6 = sub_2666D819C();

  v7 = sub_2666D8C6C();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7 & 1;
}

uint64_t sub_2666CF384(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D558A8];
  v9[3] = MEMORY[0x277D558A8];
  v9[4] = sub_2666CF43C();
  v9[0] = a1;
  v9[1] = a2;
  __swift_project_boxed_opaque_existential_1(v9, v4);

  v5 = sub_2666D81AC();
  v6 = sub_2666D819C();

  v7 = sub_2666D8C6C();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7 & 1;
}

unint64_t sub_2666CF43C()
{
  result = qword_2800963B8;
  if (!qword_2800963B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800963B8);
  }

  return result;
}

uint64_t sub_2666CF490()
{
  sub_2666B2B2C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2666CF4D4()
{
  result = qword_2800963C0;
  if (!qword_2800963C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800963C0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CommonConstants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CommonConstants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

void sub_2666CF5E0(uint64_t a1@<X8>)
{
  *a1 = 0x4030000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void sub_2666CF5F4(uint64_t a1@<X8>)
{
  *a1 = 0x4024000000000000;
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
}

void sub_2666CF604(uint64_t a1@<X8>)
{
  *a1 = 0x4024000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_2666CF62C(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_2666D8A7C();
    v5 = OUTLINED_FUNCTION_4_4();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

uint64_t sub_2666CF6C4(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2666D8A7C();
    v4 = OUTLINED_FUNCTION_4_4();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

void sub_2666CF760()
{
  sub_2666D8A7C();
  if (v0 <= 0x3F)
  {
    sub_2666D0970(319, &qword_2800963E8, MEMORY[0x277CDF6A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2666CF840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2666CF87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2666CF8C8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_2666CF908@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2666D85EC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  *(a2 + 56) = MEMORY[0x277D558C8];
  *(a2 + 64) = sub_2666B7E38();
  *(a2 + 32) = a1;
  *(a2 + 72) = 1;
  v11 = type metadata accessor for CalendarButtonView.Model(0);
  v12 = v11[6];
  v13 = *MEMORY[0x277D63A88];
  v14 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v14);
  result = (*(v15 + 104))(a2 + v12, v13);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + v11[7]) = 0;
  *(a2 + v11[8]) = 0;
  return result;
}

uint64_t sub_2666CF9F8@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_2666D857C();
  v3 = OUTLINED_FUNCTION_3(v2);
  v55 = v4;
  v56 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v54 = v8 - v7;
  v9 = sub_2666D8A7C();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v17 = v16 - v15;
  v18 = type metadata accessor for CalendarButtonView(0);
  v19 = v18 - 8;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AF0, &qword_2666DA9A0);
  v22 = OUTLINED_FUNCTION_3(v63);
  v60 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v53 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096408, &qword_2666DA9A8);
  v29 = OUTLINED_FUNCTION_3(v28);
  v61 = v30;
  v62 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v59 = &v53 - v33;
  sub_2666D063C(v1, &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v35 = swift_allocObject();
  sub_2666D0B58(&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  v67 = v1;
  v58 = v27;
  sub_2666D8A2C();
  v36 = *(type metadata accessor for CalendarButtonView.Model(0) + 24);
  v64 = v12;
  v65 = v9;
  (*(v12 + 16))(v17, v1 + v36, v9);
  v37 = *(v19 + 28);
  v57 = v1;
  v38 = v1 + v37;
  v39 = *v38;
  v40 = *(v38 + 8);
  if (v40 != 1)
  {
    v44 = *v38;

    sub_2666D8D9C();
    v45 = sub_2666D86DC();
    OUTLINED_FUNCTION_5_1();

    v43 = v54;
    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v39, 0);
    v42 = v55;
    v41 = v56;
    (*(v55 + 8))(v43, v56);
    if ((v68 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v42 = v55;
  v41 = v56;
  v43 = v54;
  if (v39)
  {
LABEL_5:
    sub_2666D014C();
    if (v40)
    {
      goto LABEL_6;
    }

LABEL_8:

    sub_2666D8D9C();
    v46 = sub_2666D86DC();
    OUTLINED_FUNCTION_5_1();

    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v39, 0);
    (*(v42 + 8))(v43, v41);
    if (v68 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_6:
  if (v39)
  {
LABEL_7:
    sub_2666D0378();
  }

LABEL_9:
  v47 = sub_2666D0C24();
  v48 = v58;
  v49 = v59;
  v50 = v63;
  sub_2666D880C();

  (*(v64 + 8))(v17, v65);
  (*(v60 + 8))(v48, v50);
  v68 = v50;
  v69 = v47;
  OUTLINED_FUNCTION_3_4();
  swift_getOpaqueTypeConformance2();
  v51 = v62;
  sub_2666D88FC();
  return (*(v61 + 8))(v49, v51);
}

uint64_t sub_2666CFF3C(uint64_t a1)
{
  v2 = sub_2666D8C7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2666D0C88(a1 + 32, v17);
  if (v18)
  {
    sub_2666D0CC0(v17, v14);
    v8 = a1 + *(type metadata accessor for CalendarButtonView(0) + 24);
    sub_2666D8B7C();
    v9 = v15;
    v10 = v16;
    v11 = __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_2666B4890(v11, v6, v9, v10);
    (*(v3 + 8))(v6, v2);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    (*&v17[0])(v7);
  }
}

uint64_t sub_2666D007C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = qword_280095990;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_2800978F0;
  result = sub_2666D87DC();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_2666D014C()
{
  v1 = sub_2666D83DC();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v5 = sub_2666D8A7C();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for CalendarButtonView.Model(0);
  v15 = *(v0 + v14[8]);
  if (!v15)
  {
    if (!*(v0 + v14[7]))
    {
      v16 = v14[6];
      v20 = *(v8 + 104);
      v20(v13, *MEMORY[0x277D63A90], v5);
      LOBYTE(v16) = sub_2666D8A6C();
      v19 = *(v8 + 8);
      v19(v13, v5);
      if ((v16 & 1) == 0)
      {
        v20(v13, *MEMORY[0x277D63A78], v5);
        v17 = sub_2666D8A6C();
        v19(v13, v5);
        if ((v17 & 1) == 0)
        {
          v15 = 0;
          goto LABEL_7;
        }
      }

      sub_2666D83CC();
      sub_2666D836C();
    }

    sub_2666D898C();
    v15 = sub_2666D836C();
  }

LABEL_7:

  return v15;
}

uint64_t sub_2666D0378()
{
  v1 = sub_2666D83DC();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v5 = sub_2666D8A7C();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for CalendarButtonView.Model(0);
  v15 = *(v0 + *(v14 + 28));
  if (!v15)
  {
    v16 = *(v14 + 24);
    v20 = *(v8 + 104);
    v20(v13, *MEMORY[0x277D63A90], v5);
    LOBYTE(v16) = sub_2666D8A6C();
    v17 = *(v8 + 8);
    v17(v13, v5);
    if (v16 & 1) != 0 || (v20(v13, *MEMORY[0x277D63A78], v5), v18 = sub_2666D8A6C(), v17(v13, v5), (v18))
    {
      sub_2666D83CC();
      v15 = sub_2666D836C();
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

uint64_t sub_2666D055C()
{
  v1 = type metadata accessor for CalendarButtonView(0);
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  sub_2666D063C(v0, v6 - v5);
  sub_2666D06A0();
  return sub_2666D8A3C();
}

uint64_t sub_2666D0604(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666D063C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2666D06A0()
{
  result = qword_280095C38;
  if (!qword_280095C38)
  {
    type metadata accessor for CalendarButtonView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095C38);
  }

  return result;
}

uint64_t sub_2666D070C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CalendarButtonView.Model(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 8);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    sub_2666D8B9C();
    v8 = OUTLINED_FUNCTION_4_4();
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2666D07E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CalendarButtonView.Model(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 8) = -a2;
      return result;
    }

    sub_2666D8B9C();
    v10 = OUTLINED_FUNCTION_4_4();
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_2666D08B0()
{
  type metadata accessor for CalendarButtonView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_2666D0970(319, &qword_280096400, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2666D8B9C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2666D0970(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2666D09DC()
{
  v1 = type metadata accessor for CalendarButtonView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 32));
  }

  else
  {
    v8 = *(v5 + 40);
  }

  v9 = type metadata accessor for CalendarButtonView.Model(0);
  v10 = v9[6];
  v11 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v11);
  (*(v12 + 8))(v5 + v10);
  v13 = *(v5 + v9[7]);

  v14 = *(v5 + v9[8]);

  sub_2666B4670(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v15 = *(v1 + 24);
  v16 = sub_2666D8B9C();
  OUTLINED_FUNCTION_2(v16);
  (*(v17 + 8))(v5 + v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666D0B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D0BBC()
{
  v1 = *(type metadata accessor for CalendarButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2666CFF3C(v2);
}

unint64_t sub_2666D0C24()
{
  result = qword_280095AF8;
  if (!qword_280095AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095AF0, &qword_2666DA9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095AF8);
  }

  return result;
}

uint64_t sub_2666D0CC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2666D0CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096408, &qword_2666DA9A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095AF0, &qword_2666DA9A0);
  sub_2666D0C24();
  OUTLINED_FUNCTION_3_4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_2666D827C();
}

uint64_t sub_2666D0DC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2666D7F2C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2666D0E5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2666D7F2C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2666D0EFC()
{
  sub_2666CDDB0();
  if (v0 <= 0x3F)
  {
    sub_2666D7F2C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2666D0F90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096430, &qword_2666DAA60);
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  *v6 = sub_2666D863C();
  *(v6 + 1) = 0x4014000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096438, &qword_2666DAA68);
  sub_2666D1084(v0, &v6[*(v7 + 44)]);
  OUTLINED_FUNCTION_0();
  sub_2666B2B90(v8, &qword_280096430, &qword_2666DAA60);
  sub_2666D883C();
  return sub_2666D1CF0(v6);
}

uint64_t sub_2666D1084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v73 = a1;
  v2 = type metadata accessor for DayEventGroupView(0);
  v67 = *(v2 - 8);
  v66 = *(v67 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096448, &qword_2666DAA70);
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = *(v70 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v69 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v57 - v8;
  v64 = sub_2666D7EDC();
  v62 = *(v64 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2666D7EBC();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2666D7EFC();
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2666D7F1C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v57 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v57 - v28;
  v30 = type metadata accessor for DateHeaderView();
  v31 = (v30 - 8);
  v32 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v63 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v57 - v35;
  v37 = *(type metadata accessor for DayEventGroupView.DayEventGroup(0) + 24);
  v38 = sub_2666D7F2C();
  (*(*(v38 - 8) + 16))(v36, v73 + v37, v38);
  *&v36[v31[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D00, &qword_2666D9AF8);
  swift_storeEnumTagMultiPayload();
  *&v36[v31[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D08, &qword_2666D9B30);
  swift_storeEnumTagMultiPayload();
  v39 = &v36[v31[9]];
  sub_2666D8B8C();
  v40 = &v36[v31[10]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  *(v40 + 2) = 0;
  v40[24] = 1;
  *(v40 + 4) = 1;
  *(v40 + 5) = sub_2666C1B98;
  *(v40 + 6) = 0;
  v41 = v31[11];
  MEMORY[0x2667897B0]();
  sub_2666D7EEC();
  sub_2666D7F0C();
  (*(v57 + 8))(v18, v58);
  v42 = *(v20 + 8);
  v42(v24, v19);
  sub_2666D7EAC();
  sub_2666D7E7C();
  (*(v59 + 8))(v14, v60);
  v42(v27, v19);
  v43 = v61;
  sub_2666D7ECC();
  sub_2666D7E9C();
  (*(v62 + 8))(v43, v64);
  v42(v29, v19);
  *&v36[v31[12]] = &unk_287810A08;
  v74 = *(v73 + 16);
  v44 = v65;
  sub_2666D1FC8(v73, v65, type metadata accessor for DayEventGroupView);
  v45 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v46 = swift_allocObject();
  sub_2666D1E9C(v44, v46 + v45);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D88, &unk_2666D9BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D90, &qword_2666DAB20);
  sub_2666B2B90(&qword_280095D98, &qword_280095D88, &unk_2666D9BC0);
  sub_2666BBF04();
  sub_2666D1F80(&qword_280095DB8, type metadata accessor for RenderableEvent);
  v47 = v68;
  sub_2666D8A4C();
  v48 = v63;
  sub_2666D1FC8(v36, v63, type metadata accessor for DateHeaderView);
  v50 = v69;
  v49 = v70;
  v51 = *(v70 + 16);
  v52 = v71;
  v51(v69, v47, v71);
  v53 = v72;
  sub_2666D1FC8(v48, v72, type metadata accessor for DateHeaderView);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096450, &qword_2666DAB28);
  v51((v53 + *(v54 + 48)), v50, v52);
  v55 = *(v49 + 8);
  v55(v47, v52);
  sub_2666D2028(v36);
  v55(v50, v52);
  return sub_2666D2028(v48);
}

uint64_t sub_2666D1898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-v8 - 7];
  sub_2666D1FC8(a1, a3, type metadata accessor for RenderableEvent);
  v10 = *(type metadata accessor for DayEventGroupView.DayEventGroup(0) + 24);
  v11 = sub_2666D7F2C();
  (*(*(v11 - 8) + 16))(v9, a2 + v10, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  v12 = type metadata accessor for EventCellView();
  v13 = v12[5];
  __swift_storeEnumTagSinglePayload(a3 + v13, 1, 1, v11);
  v14 = a3 + v12[7];
  KeyPath = swift_getKeyPath();
  v24 = 0;
  v22 = 1;
  *v14 = KeyPath;
  *(v14 + 8) = 0;
  *(v14 + 9) = *v23;
  *(v14 + 12) = *&v23[3];
  *(v14 + 16) = 0x4030000000000000;
  *(v14 + 24) = 0;
  *(v14 + 32) = 1;
  *(v14 + 33) = *v21;
  *(v14 + 36) = *&v21[3];
  *(v14 + 40) = 1;
  *(v14 + 48) = sub_2666BD078;
  *(v14 + 56) = 0;
  v16 = a3 + v12[8];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  sub_2666BC038(v9, a3 + v13);
  *(a3 + v12[6]) = 0;
  v17 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D90, &qword_2666DAB20) + 36);
  sub_2666D1FC8(a1, v17, type metadata accessor for RenderableEvent);
  v18 = v17 + *(type metadata accessor for PunchoutToEventDetailsModifier() + 20);
  return sub_2666D8B8C();
}

uint64_t sub_2666D1ABC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2666D1ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DayEventGroupView.DayEventGroup(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2666D1B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DayEventGroupView.DayEventGroup(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2666D8B9C();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2666D1C50()
{
  result = type metadata accessor for DayEventGroupView.DayEventGroup(319);
  if (v1 <= 0x3F)
  {
    result = sub_2666D8B9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2666D1CF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096430, &qword_2666DAA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666D1D70()
{
  v1 = (type metadata accessor for DayEventGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);

  v7 = *(type metadata accessor for DayEventGroupView.DayEventGroup(0) + 24);
  v8 = sub_2666D7F2C();
  OUTLINED_FUNCTION_2(v8);
  (*(v9 + 8))(v0 + v3 + v7);
  v10 = v1[7];
  v11 = sub_2666D8B9C();
  OUTLINED_FUNCTION_2(v11);
  (*(v12 + 8))(v0 + v3 + v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666D1E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayEventGroupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D1F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DayEventGroupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2666D1898(a1, v6, a2);
}

uint64_t sub_2666D1F80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2666D1FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666D2028(uint64_t a1)
{
  v2 = type metadata accessor for DateHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666D2084()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096430, &qword_2666DAA60);
  OUTLINED_FUNCTION_0();
  sub_2666B2B90(v0, &qword_280096430, &qword_2666DAA60);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2666D210C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2666D82AC();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v14 = v13 - v12;
  v15 = sub_2666D825C();
  v16 = OUTLINED_FUNCTION_10_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  v21 = (v20 - v19);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A68, &unk_2666DAB40);
  v23 = OUTLINED_FUNCTION_10_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v34 - v26;
  sub_2666B3738(v3, v21);
  sub_2666D2460(a1, v21, v27);
  v28 = sub_2666D815C();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
  {
    return (*(*(v28 - 8) + 32))(a2, v27, v28);
  }

  sub_2666B380C(v27);
  v29 = sub_2666D828C();
  (*(v9 + 16))(v14, v29, v6);
  v30 = sub_2666D829C();
  v31 = sub_2666D8D9C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2666B0000, v30, v31, "[Snippet.Event] Could not create event cell model", v32, 2u);
    MEMORY[0x26678ACD0](v32, -1, -1);
  }

  (*(v9 + 8))(v14, v6);
  sub_2666D28EC();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2666D23BC()
{
  sub_2666D8ECC();
  MEMORY[0x26678A880](0);
  return sub_2666D8EEC();
}

uint64_t sub_2666D2410()
{
  sub_2666D8ECC();
  MEMORY[0x26678A880](0);
  return sub_2666D8EEC();
}

uint64_t sub_2666D2460@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v68 = a3;
  v4 = sub_2666D7F2C();
  v5 = OUTLINED_FUNCTION_10_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A68, &unk_2666DAB40);
  v10 = OUTLINED_FUNCTION_10_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_4();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v19 = sub_2666D82AC();
  v20 = OUTLINED_FUNCTION_3(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_4();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v63 - v29;
  v31 = sub_2666D815C();
  v32 = OUTLINED_FUNCTION_3(v31);
  v65 = v33;
  v66 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_1();
  v64 = (v37 - v36);
  if (a2[1])
  {
    v38 = *a2;
    v39 = a2[1];

    v40 = sub_2666D828C();
    (*(v22 + 16))(v27, v40, v19);
    v41 = sub_2666D829C();
    v42 = sub_2666D8DAC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2666B0000, v41, v42, "[Snippet.Event] Initializing EventListCellViewModel with concrete event", v43, 2u);
      MEMORY[0x26678ACD0](v43, -1, -1);
    }

    (*(v22 + 8))(v27, v19);
    sub_2666D813C();
  }

  else
  {
    v18 = v15;
    v44 = sub_2666D828C();
    (*(v22 + 16))(v30, v44, v19);
    v45 = sub_2666D829C();
    v46 = sub_2666D8DAC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2666B0000, v45, v46, "[Snippet.Event] Initializing EventListCellViewModel with draft event", v47, 2u);
      MEMORY[0x26678ACD0](v47, -1, -1);
    }

    (*(v22 + 8))(v30, v19);
    v48 = a2[13];
    v63 = a2[12];
    v49 = sub_2666D825C();
    v50 = v49[8];

    sub_2666D7DCC();
    sub_2666D7DBC();
    v51 = a2[4];
    v52 = a2[5];
    v53 = v49[10];
    v54 = *(a2 + v49[9]);
    v56 = *(a2 + v53);
    v55 = *(a2 + v53 + 8);

    sub_2666D814C();
  }

  sub_2666B3874(a2);
  v57 = v66;
  if (__swift_getEnumTagSinglePayload(v18, 1, v66))
  {
    sub_2666B380C(v18);
    v58 = 1;
    v59 = v68;
  }

  else
  {
    v60 = v64;
    v61 = *(v65 + 32);
    v61(v64, v18, v57);
    v59 = v68;
    v61(v68, v60, v57);
    v58 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v59, v58, 1, v57);
}

unint64_t sub_2666D28EC()
{
  result = qword_280096458;
  if (!qword_280096458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096458);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventListCellViewModelError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for EventListCellViewModelError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2666D2A30);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2666D2A74()
{
  result = qword_280096460;
  if (!qword_280096460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096460);
  }

  return result;
}

void sub_2666D2AD8()
{
  OUTLINED_FUNCTION_17_0();
  v2 = v1;
  v3 = sub_2666D857C();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D00, &qword_2666D9AF8);
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_8_1(*(v16 + 20));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2666D7FFC();
    OUTLINED_FUNCTION_2(v17);
    (*(v18 + 32))(v2, v0);
  }

  else
  {
    v19 = *v0;
    sub_2666D8D9C();
    v20 = sub_2666D86DC();
    OUTLINED_FUNCTION_9_3();

    sub_2666D856C();
    swift_getAtKeyPath();

    (*(v6 + 8))(v11, v3);
  }

  OUTLINED_FUNCTION_16();
}

void sub_2666D2C7C()
{
  OUTLINED_FUNCTION_17_0();
  v2 = v1;
  v3 = sub_2666D857C();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D08, &qword_2666D9B30);
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_8_1(*(v16 + 24));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2666D802C();
    OUTLINED_FUNCTION_2(v17);
    (*(v18 + 32))(v2, v0);
  }

  else
  {
    v19 = *v0;
    sub_2666D8D9C();
    v20 = sub_2666D86DC();
    OUTLINED_FUNCTION_9_3();

    sub_2666D856C();
    swift_getAtKeyPath();

    (*(v6 + 8))(v11, v3);
  }

  OUTLINED_FUNCTION_16();
}

void sub_2666D2E20()
{
  OUTLINED_FUNCTION_17_0();
  v1 = v0;
  v2 = sub_2666D7FFC();
  v3 = OUTLINED_FUNCTION_3(v2);
  v43[0] = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800964D8, &qword_2666DAD68);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v43 - v17;
  v19 = sub_2666D802C();
  v20 = OUTLINED_FUNCTION_3(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_1();
  v27 = v26 - v25;
  sub_2666D2C7C();
  v28 = sub_2666D800C();
  (*(v22 + 8))(v27, v19);
  v29 = *(v1 + *(type metadata accessor for DateHeaderView() + 40));
  v30 = (v43[0] + 8);
  if ((v28 & 1) == 0)
  {
    sub_2666D2AD8();
    sub_2666D7FAC();
    (*v30)(v9, v2);
    v34 = sub_2666D7F9C();
    if (__swift_getEnumTagSinglePayload(v16, 1, v34) == 1)
    {
      v35 = sub_2666B2A70(v16, &qword_2800964D8, &qword_2666DAD68);
      v2 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      v36 = v16;
      sub_2666D7F8C();
      OUTLINED_FUNCTION_5_2();
      v35 = (*(v40 + 8))(v16, v34);
    }

    v44 = v2;
    v45 = v36;
    MEMORY[0x28223BE20](v35);
    OUTLINED_FUNCTION_4_5();
    v42 = sub_2666D3EEC(sub_2666D4544, v41, v29);

    if (v42)
    {
      sub_2666D89BC();
      goto LABEL_13;
    }

LABEL_12:
    sub_2666D89AC();
    goto LABEL_13;
  }

  sub_2666D2AD8();
  sub_2666D7FAC();
  (*v30)(v11, v2);
  v31 = sub_2666D7F9C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v31) == 1)
  {
    v32 = sub_2666B2A70(v18, &qword_2800964D8, &qword_2666DAD68);
    v2 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    v33 = v18;
    sub_2666D7F8C();
    OUTLINED_FUNCTION_5_2();
    v32 = (*(v37 + 8))(v18, v31);
  }

  v44 = v2;
  v45 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_5();
  v39 = sub_2666D3EEC(sub_2666D45C8, v38, v29);

  if (v39)
  {
    goto LABEL_12;
  }

  sub_2666D895C();
LABEL_13:
  OUTLINED_FUNCTION_16();
}

void sub_2666D3210()
{
  OUTLINED_FUNCTION_17_0();
  v54 = v1;
  v2 = type metadata accessor for DateHeaderView();
  v3 = v2 - 8;
  v51 = *(v2 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = v5;
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2666D7F1C();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v14 = v13 - v12;
  v15 = sub_2666D7F2C();
  v16 = OUTLINED_FUNCTION_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  (*(v21 + 16))(v20 - v19, v0);
  (*(v9 + 16))(v14, v0 + *(v3 + 44), v6);
  sub_2666D3E60(&qword_280096090, MEMORY[0x277CC9428]);
  sub_2666D3E60(&qword_280096098, MEMORY[0x277CC9578]);
  v22 = sub_2666D87CC();
  v24 = v23;
  LOBYTE(v6) = v25;
  v26 = sub_2666D87AC();
  v28 = v27;
  v30 = v29;
  sub_2666B2B2C(v22, v24, v6 & 1);

  sub_2666D2E20();
  v56[0] = v31;
  v50 = sub_2666D878C();
  v33 = v32;
  v35 = v34;
  v49 = v36;
  sub_2666B2B2C(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v38 = sub_2666D86EC();
  v39 = v0 + *(v3 + 40);
  v40 = *(v39 + 24);
  v41 = 0uLL;
  v42 = 0uLL;
  if ((v40 & 1) == 0)
  {
    v43 = *(v39 + 16);
    sub_2666D82BC();
    *(&v41 + 1) = v44;
    *(&v42 + 1) = v45;
  }

  v59 = v35 & 1;
  v58 = 0;
  v57 = v40;
  *v55 = v50;
  *&v55[8] = v33;
  v55[16] = v35 & 1;
  *&v55[24] = v49;
  *&v55[32] = KeyPath;
  *&v55[40] = 1;
  v55[48] = 0;
  v55[56] = v38;
  *&v55[64] = v41;
  *&v55[80] = v42;
  v55[96] = v40;
  v46 = v53;
  sub_2666D4038(v0, v53);
  v47 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v48 = swift_allocObject();
  sub_2666D42DC(v46, v48 + v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800964A8, &qword_2666DAD50);
  sub_2666D439C();
  sub_2666D88BC();

  memcpy(v56, v55, 0x61uLL);
  sub_2666B2A70(v56, &qword_2800964A8, &qword_2666DAD50);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2666D368C()
{
  v1 = sub_2666D8C7C();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v9 = v8 - v7;
  v10 = sub_2666D7E4C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_1();
  sub_2666C9B88();
  sub_2666D80AC();
  v12 = sub_2666D8DBC();
  v13 = v0 + *(type metadata accessor for DateHeaderView() + 28);
  sub_2666D8B7C();
  v14 = v12;
  sub_2666D8C5C();

  return (*(v4 + 8))(v9, v1);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DateHeaderView.StyleConstants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DateHeaderView.StyleConstants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2666D3864(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2666D7F2C();
  v7 = OUTLINED_FUNCTION_2_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096468, "^4");
  v12 = OUTLINED_FUNCTION_2_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_14:
    v10 = a1 + v14;
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096470, &qword_2666DAC48);
  v16 = OUTLINED_FUNCTION_2_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_14;
  }

  v18 = sub_2666D8B9C();
  v19 = OUTLINED_FUNCTION_2_0(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[7];
    goto LABEL_14;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = sub_2666D7F1C();
    v14 = a3[9];
    goto LABEL_14;
  }

  v21 = *(a1 + a3[8] + 40);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  return (v21 + 1);
}

uint64_t sub_2666D3A20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2666D7F2C();
  v9 = OUTLINED_FUNCTION_2_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096468, "^4");
    v14 = OUTLINED_FUNCTION_2_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096470, &qword_2666DAC48);
      v18 = OUTLINED_FUNCTION_2_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = sub_2666D8B9C();
        result = OUTLINED_FUNCTION_2_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = result;
          v16 = a4[7];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(a1 + a4[8] + 40) = (a2 - 1);
            return result;
          }

          v11 = sub_2666D7F1C();
          v16 = a4[9];
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for DateHeaderView()
{
  result = qword_280096478;
  if (!qword_280096478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666D3C10()
{
  sub_2666D7F2C();
  if (v0 <= 0x3F)
  {
    sub_2666D3D8C(319, &qword_280096488, MEMORY[0x277CC9788]);
    if (v1 <= 0x3F)
    {
      sub_2666D3D8C(319, &qword_280096490, MEMORY[0x277CC99E8]);
      if (v2 <= 0x3F)
      {
        sub_2666D8B9C();
        if (v3 <= 0x3F)
        {
          sub_2666D3DE0(319, &qword_280096498, &type metadata for DateHeaderView.StyleConstants, type metadata accessor for IdiomConstant);
          if (v4 <= 0x3F)
          {
            sub_2666D7F1C();
            if (v5 <= 0x3F)
            {
              sub_2666D3DE0(319, &qword_2800964A0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
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

void sub_2666D3D8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2666D830C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2666D3DE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2666D3E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2666D3EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2666D8E7C() & 1;
  }
}

BOOL sub_2666D3EEC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2666D3F9C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2666D852C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2666D3FD0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2666D852C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2666D4004(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2666D853C();
}

uint64_t sub_2666D4038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D409C()
{
  v1 = type metadata accessor for DateHeaderView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_2666D7F2C();
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 8))(v0 + v3);
  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D00, &qword_2666D9AF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2666D7FFC();
    OUTLINED_FUNCTION_2(v9);
    (*(v10 + 8))(v5 + v8);
  }

  else
  {
    v11 = *(v5 + v8);
  }

  v12 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D08, &qword_2666D9B30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2666D802C();
    OUTLINED_FUNCTION_2(v13);
    (*(v14 + 8))(v5 + v12);
  }

  else
  {
    v15 = *(v5 + v12);
  }

  v16 = v1[7];
  v17 = sub_2666D8B9C();
  OUTLINED_FUNCTION_2(v17);
  (*(v18 + 8))(v5 + v16);
  v19 = v5 + v1[8];
  sub_2666B4670(*v19, *(v19 + 8));
  v20 = *(v19 + 48);

  v21 = v1[9];
  v22 = sub_2666D7F1C();
  OUTLINED_FUNCTION_2(v22);
  (*(v23 + 8))(v5 + v21);
  v24 = *(v5 + v1[10]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666D42DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D4340()
{
  v1 = *(type metadata accessor for DateHeaderView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2666D368C();
}

unint64_t sub_2666D439C()
{
  result = qword_2800964B0;
  if (!qword_2800964B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800964A8, &qword_2666DAD50);
    sub_2666D4428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800964B0);
  }

  return result;
}

unint64_t sub_2666D4428()
{
  result = qword_2800964B8;
  if (!qword_2800964B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800964C0, &qword_2666DAD58);
    sub_2666D44B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800964B8);
  }

  return result;
}

unint64_t sub_2666D44B4()
{
  result = qword_2800964C8;
  if (!qword_2800964C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800964D0, &qword_2666DAD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800964C8);
  }

  return result;
}

uint64_t sub_2666D4564()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800964A8, &qword_2666DAD50);
  sub_2666D439C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_1@<X0>(uint64_t a1@<X8>)
{

  return sub_2666BF308(v1 + a1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_2666D827C();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return type metadata accessor for DateHeaderView();
}

uint64_t sub_2666D4688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2666D81DC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2666D4758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2666D81DC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for ParticipantLabelView()
{
  result = qword_2800964E0;
  if (!qword_2800964E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666D484C()
{
  result = sub_2666D81DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2666D48E4()
{
  v1 = sub_2666D85DC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  result = *(v0 + 17);
  switch(*(v0 + 17))
  {
    case 1:
    case 2:
    case 3:
      sub_2666D85CC();
      sub_2666D85BC();
      v4 = *v0;
      v5 = v0[1];
      sub_2666D85AC();
      sub_2666D85BC();
      result = sub_2666D85FC();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2666D4A6C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2666D858C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800964F0, &qword_2666DADD8);
  return sub_2666D4AC0(v1, a1 + *(v3 + 44));
}

uint64_t sub_2666D4AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_2666D83BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800964F8, &qword_2666DADE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v45 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096500, &qword_2666DADE8);
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096508, &qword_2666DADF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  if (*(a1 + *(type metadata accessor for ParticipantLabelView() + 24)))
  {
    v23 = 1;
  }

  else
  {
    v24 = *(a1 + 16);
    v48 = v4;
    v49 = v3;
    v46 = v24;
    v50 = a1;
    switch(v24)
    {
      case 1:
        v45 = sub_2666D89CC();
        v25 = sub_2666D897C();
        break;
      case 2:
        v45 = sub_2666D89CC();
        v25 = sub_2666D895C();
        break;
      case 3:
        v45 = sub_2666D89CC();
        v25 = sub_2666D899C();
        break;
      default:
        v45 = sub_2666D89CC();
        v25 = sub_2666D896C();
        break;
    }

    v26 = v25;
    v47 = v8;
    v27 = (v11 + *(v8 + 36));
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096510, &qword_2666DADF8) + 28);
    v29 = *MEMORY[0x277CE1050];
    v30 = sub_2666D89DC();
    (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
    *v27 = swift_getKeyPath();
    v31 = v46;
    *v11 = v45;
    v11[1] = v26;
    if (MEMORY[0x266789BB0](v31, 0))
    {
      sub_2666D83AC();
    }

    else
    {
      sub_2666D839C();
    }

    v32 = v49;
    v33 = v48;
    sub_2666D51E4();
    sub_2666D88CC();
    (*(v33 + 8))(v7, v32);
    sub_2666D5354(v11);
    (*(v51 + 32))(v22, v15, v12);
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v23, 1, v12);
  sub_2666D4FB8(v53);
  v34 = v53[0];
  v35 = v53[1];
  v36 = v53[2];
  v37 = v53[3];
  v38 = v54;
  KeyPath = swift_getKeyPath();
  LOBYTE(v53[0]) = v38;
  v55 = 0;
  sub_2666D53C4(v22, v20);
  v40 = v55;
  v41 = v53[0];
  v42 = v52;
  sub_2666D53C4(v20, v52);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096548, &qword_2666DAE70) + 48);
  *v43 = v34;
  *(v43 + 8) = v35;
  *(v43 + 16) = v36;
  *(v43 + 24) = v37;
  *(v43 + 32) = v41;
  *(v43 + 40) = KeyPath;
  *(v43 + 48) = 1;
  *(v43 + 56) = v40;
  sub_2666D5434(v34, v35, v36);

  sub_2666D5470(v22);
  sub_2666D54D8(v34, v35, v36);

  return sub_2666D5470(v20);
}

double sub_2666D4FB8@<D0>(uint64_t a1@<X8>)
{
  if ((*(v1 + *(type metadata accessor for ParticipantLabelView() + 20)) & 1) != 0 || (sub_2666D48E4(), !v3))
  {
    v6 = *v1;
    v7 = v1[1];
  }

  else
  {
    if (qword_280095990 != -1)
    {
      swift_once();
    }

    v4 = qword_2800978F0;
    sub_2666D87DC();
  }

  sub_2666D868C();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_2666D5118(uint64_t a1)
{
  v2 = sub_2666D89DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2666D847C();
}

unint64_t sub_2666D51E4()
{
  result = qword_280096518;
  if (!qword_280096518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800964F8, &qword_2666DADE0);
    sub_2666D529C();
    sub_2666B2B90(&qword_280096540, &qword_280096510, &qword_2666DADF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096518);
  }

  return result;
}

unint64_t sub_2666D529C()
{
  result = qword_280096520;
  if (!qword_280096520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096528, &qword_2666DAE30);
    sub_2666B2B90(&qword_280096530, &qword_280096538, &qword_2666DAE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096520);
  }

  return result;
}

uint64_t sub_2666D5354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800964F8, &qword_2666DADE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666D53C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096508, &qword_2666DADF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D5434(uint64_t a1, uint64_t a2, char a3)
{
  sub_2666B2BD8(a1, a2, a3 & 1);
}

uint64_t sub_2666D5470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096508, &qword_2666DADF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666D54D8(uint64_t a1, uint64_t a2, char a3)
{
  sub_2666B2B2C(a1, a2, a3 & 1);
}

uint64_t sub_2666D556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RenderableEvent();
  v7 = OUTLINED_FUNCTION_2_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_2666D8BAC();
  v12 = OUTLINED_FUNCTION_2_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 28) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2666D5670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RenderableEvent();
  v9 = OUTLINED_FUNCTION_2_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_2666D8BAC();
    result = OUTLINED_FUNCTION_2_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for EventStatusSnippet()
{
  result = qword_280096560;
  if (!qword_280096560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666D57A8()
{
  result = type metadata accessor for RenderableEvent();
  if (v1 <= 0x3F)
  {
    result = sub_2666D8BAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2666D5858()
{
  v1 = type metadata accessor for EventStatusSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2666D635C(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EventStatusSnippet);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2666D61E4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096570, &qword_2666DAEE8);
  sub_2666B2B90(&qword_280096578, &qword_280096570, &qword_2666DAEE8);
  return sub_2666D8AAC();
}

uint64_t sub_2666D59BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v59 = sub_2666D8BAC();
  v57 = *(v59 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2666D8BCC();
  v58 = *(v60 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096580, &qword_2666DAEF0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v53 - v12;
  v13 = type metadata accessor for SingleEventView();
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v20 = type metadata accessor for EventStatusSnippet();
  v21 = *(a1 + v20[5]);
  sub_2666D635C(a1, v19, type metadata accessor for RenderableEvent);
  v19[v14[7]] = v21;
  v22 = &v19[v14[8]];
  sub_2666D8B8C();
  v23 = &v19[v14[9]];
  KeyPath = swift_getKeyPath();
  v67 = 0;
  v66 = 1;
  *v23 = KeyPath;
  v23[8] = 0;
  *(v23 + 2) = 0x4030000000000000;
  *(v23 + 3) = 0;
  v23[32] = 1;
  *(v23 + 5) = 1;
  *(v23 + 6) = sub_2666BD078;
  *(v23 + 7) = 0;
  v25 = &v19[v14[10]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  *(v25 + 1) = xmmword_2666D9980;
  *(v25 + 4) = 1;
  *(v25 + 5) = sub_2666BD0AC;
  *(v25 + 6) = 0;
  v26 = &v19[v14[11]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = a1;
  v28 = a1 + v20[7];
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  v32 = *(v28 + 24);
  v33 = qword_280095990;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_2800978F0;
  v35 = sub_2666D87DC();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v64 = MEMORY[0x277CE0BD8];
  v65 = MEMORY[0x277D638E8];
  v42 = swift_allocObject();
  v63 = v42;
  *(v42 + 16) = v35;
  *(v42 + 24) = v37;
  *(v42 + 32) = v39 & 1;
  *(v42 + 40) = v41;
  (*(v57 + 16))(v55, v27 + v20[6], v59);
  v43 = v53;
  sub_2666D8BBC();
  sub_2666D6304();
  v44 = v56;
  v45 = v60;
  sub_2666D886C();
  (*(v58 + 8))(v43, v45);
  v46 = v54;
  sub_2666D635C(v19, v54, type metadata accessor for SingleEventView);
  v47 = v8[2];
  v48 = v61;
  v47(v61, v44, v7);
  v49 = v62;
  sub_2666D635C(v46, v62, type metadata accessor for SingleEventView);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096590, &qword_2666DAF28);
  v47((v49 + *(v50 + 48)), v48, v7);
  v51 = v8[1];
  v51(v44, v7);
  sub_2666D63C4(v19);
  v51(v48, v7);
  return sub_2666D63C4(v46);
}

uint64_t sub_2666D5F44()
{
  v1 = type metadata accessor for EventStatusSnippet();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 104);

  v11 = sub_2666D825C();
  v12 = v11[8];
  v13 = sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4(v13);
  (*(v14 + 8))(v0 + v3 + v12);
  v15 = *(v0 + v3 + v11[10] + 8);

  v16 = *(v0 + v3 + v11[11] + 8);

  v17 = v0 + v3 + v11[12];
  v18 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    v19 = *(v18 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4(v20);
      (*(v21 + 8))(v17 + v19);
    }
  }

  v22 = *(v5 + v11[13]);

  v23 = v11[14];
  v24 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v5 + v23, 1, v24))
  {
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  v25 = type metadata accessor for RenderableEvent();
  v26 = *(v25 + 20);
  v27 = sub_2666D815C();
  OUTLINED_FUNCTION_1_4(v27);
  (*(v28 + 8))(v5 + v26);
  v29 = *(v5 + *(v25 + 24) + 8);

  v30 = *(v1 + 24);
  v31 = sub_2666D8BAC();
  OUTLINED_FUNCTION_1_4(v31);
  (*(v32 + 8))(v5 + v30);
  v33 = v5 + *(v1 + 28);
  v34 = *(v33 + 8);

  v35 = *(v33 + 24);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666D61E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventStatusSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D6248@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventStatusSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2666D59BC(v4, a1);
}

uint64_t sub_2666D62C0()
{
  sub_2666B2B2C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2666D6304()
{
  result = qword_280096588;
  if (!qword_280096588)
  {
    sub_2666D8BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096588);
  }

  return result;
}

uint64_t sub_2666D635C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2666D63C4(uint64_t a1)
{
  v2 = type metadata accessor for SingleEventView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2666D6464()
{
  OUTLINED_FUNCTION_17_0();
  v48 = v1;
  v2 = type metadata accessor for SingleEventWithButtonsSnippet();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = type metadata accessor for CalendarButtonView.Model(0);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v12 = v11 - v10;
  v13 = sub_2666D85EC();
  v15 = v14;
  v45 = v16;
  v18 = v17;
  *(v12 + 56) = MEMORY[0x277D558C8];
  v19 = sub_2666B7E38();
  OUTLINED_FUNCTION_22_1(v19);
  v20 = v6[6];
  v21 = *MEMORY[0x277D63A88];
  v47 = *MEMORY[0x277D63A88];
  v22 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v22);
  v46 = *(v23 + 104);
  v46(v12 + v20, v21, v22);
  *v12 = v13;
  *(v12 + 8) = v15;
  *(v12 + 16) = v45 & 1;
  *(v12 + 24) = v18;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_1_7();
  sub_2666D66D0(v48, v0, v24);
  OUTLINED_FUNCTION_0_5();
  sub_2666D66D0(v12, v0 + v25, v26);
  v27 = OUTLINED_FUNCTION_30_0();
  v29 = v28;
  LOBYTE(v13) = v30;
  v32 = v31;
  v33 = v0 + v2[6];
  *(v33 + 56) = MEMORY[0x277D558C8];
  *(v33 + 64) = v49;
  *(v33 + 32) = 1;
  *(v33 + 72) = 1;
  v46(v33 + v6[6], v47, v22);
  *v33 = v27;
  *(v33 + 8) = v29;
  *(v33 + 16) = v13 & 1;
  *(v33 + 24) = v32;
  *(v33 + v6[7]) = 0;
  *(v33 + v6[8]) = 0;
  OUTLINED_FUNCTION_12_1();
  v34 = v2[11];
  sub_2666D81FC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  *(v0 + v2[8]) = 1;
  OUTLINED_FUNCTION_14_2();
  *(v0 + v39) = 0;
  OUTLINED_FUNCTION_27();
  v40 = v0 + v2[13];
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_1(KeyPath);
  *(v40 + 32) = v42;
  OUTLINED_FUNCTION_8_2();
  *(v40 + 40) = v43;
  *(v40 + 48) = v44;
  *(v40 + 56) = 0;
  sub_2666D7178();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2666D66D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_2666D6738()
{
  OUTLINED_FUNCTION_17_0();
  v53 = v2;
  v4 = v3;
  v5 = type metadata accessor for CalendarButtonView.Model(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for RenderableEvent();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_1();
  v14 = v13 - v12;
  v51 = v13 - v12;
  v15 = type metadata accessor for SingleEventWithButtonsSnippet();
  v16 = OUTLINED_FUNCTION_2(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_1_7();
  v52 = v19;
  sub_2666D66D0(v4, v14, v20);
  v21 = sub_2666D85EC();
  v47 = v22;
  v48 = v21;
  v46 = v23;
  v49 = v24;
  *(v9 + 7) = MEMORY[0x277D558C8];
  v50 = sub_2666B7E38();
  *(v9 + 8) = v50;
  v9[32] = 0;
  v9[72] = 1;
  v25 = v5;
  v26 = *(v5 + 24);
  v27 = *MEMORY[0x277D63A90];
  v28 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v28);
  v44 = *(v29 + 104);
  v45 = v29 + 104;
  v44(&v9[v26], v27, v28);
  v30 = v47;
  *v9 = v48;
  *(v9 + 1) = v30;
  v9[16] = v46 & 1;
  *(v9 + 3) = v49;
  *&v9[v25[7]] = 0;
  *&v9[v25[8]] = 0;
  sub_2666D85EC();
  OUTLINED_FUNCTION_21_1();
  v32 = v31;
  v33 = v50;
  *(v1 + 56) = MEMORY[0x277D558C8];
  *(v1 + 64) = v33;
  *(v1 + 32) = 1;
  *(v1 + 72) = 1;
  v44((v1 + v25[6]), *MEMORY[0x277D63A88], v28);
  OUTLINED_FUNCTION_19_1();
  *(v1 + 24) = v32;
  OUTLINED_FUNCTION_13_1();
  v34 = sub_2666D81FC();
  v35 = v53;
  LOBYTE(v28) = 2 * (__swift_getEnumTagSinglePayload(v53, 1, v34) == 1);
  sub_2666C7B3C(v35, v0 + v15[11]);
  OUTLINED_FUNCTION_12_1();
  sub_2666D7228(v51, v0, v52);
  OUTLINED_FUNCTION_0_5();
  v37 = v36;
  sub_2666D7228(v9, v0 + v38, v36);
  v39 = OUTLINED_FUNCTION_20_1();
  sub_2666D7228(v39, v40, v37);
  *(v0 + v15[8]) = 0;
  *(v0 + v15[9]) = 1;
  *(v0 + v15[10]) = v28;
  OUTLINED_FUNCTION_27();
  v41 = v0 + v15[13];
  KeyPath = swift_getKeyPath();
  v57 = 0;
  v55 = 1;
  *v41 = KeyPath;
  *(v41 + 8) = 0;
  *(v41 + 9) = *v56;
  *(v41 + 12) = *&v56[3];
  *(v41 + 16) = 0x4030000000000000;
  *(v41 + 24) = 0;
  *(v41 + 32) = 1;
  *(v41 + 33) = *(&v54 + 1);
  *(v41 + 36) = HIDWORD(v54);
  *(v41 + 40) = 1;
  *(v41 + 48) = sub_2666BD078;
  *(v41 + 56) = 0;
  sub_2666D7178();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16();
}

void sub_2666D6AA0()
{
  OUTLINED_FUNCTION_17_0();
  v47 = v3;
  v4 = type metadata accessor for SingleEventWithButtonsSnippet();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = type metadata accessor for CalendarButtonView.Model(0);
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = OUTLINED_FUNCTION_31_0();
  v44 = v16;
  v45 = v15;
  v43 = v17;
  v46 = v18;
  *(v14 + 7) = MEMORY[0x277D558D8];
  v19 = sub_2666D7288();
  OUTLINED_FUNCTION_18_2(v19);
  v20 = *MEMORY[0x277D63A90];
  v21 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v21);
  v41 = *(v22 + 104);
  v42 = v22 + 104;
  v41(&v14[v2], v20, v21);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_21_1();
  v24 = v23;
  OUTLINED_FUNCTION_16_0();
  v41((v1 + v25), *MEMORY[0x277D63A88], v21);
  OUTLINED_FUNCTION_19_1();
  *(v1 + 24) = v24;
  *(v1 + *(v8 + 28)) = 0;
  *(v1 + *(v8 + 32)) = 0;
  OUTLINED_FUNCTION_1_7();
  sub_2666D66D0(v47, v0, v26);
  OUTLINED_FUNCTION_0_5();
  v28 = v27;
  sub_2666D66D0(v14, v0 + v29, v27);
  v30 = OUTLINED_FUNCTION_20_1();
  sub_2666D66D0(v30, v31, v28);
  sub_2666CF900(v0 + v4[7]);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  *(v0 + v4[8]) = 0;
  OUTLINED_FUNCTION_14_2();
  *(v0 + v36) = 2;
  OUTLINED_FUNCTION_27();
  v37 = v0 + v4[13];
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_2(KeyPath);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_3();
  sub_2666D71D0(v1, v39);
  sub_2666D71D0(v14, v0);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16();
}

void sub_2666D6CD8()
{
  OUTLINED_FUNCTION_17_0();
  v46 = v1;
  v2 = type metadata accessor for SingleEventWithButtonsSnippet();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = type metadata accessor for CalendarButtonView.Model(0);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v12 = v11 - v10;
  v13 = sub_2666D85EC();
  v15 = v14;
  v44 = v16;
  v18 = v17;
  *(v12 + 56) = MEMORY[0x277D558C8];
  v19 = sub_2666B7E38();
  OUTLINED_FUNCTION_22_1(v19);
  v20 = v6[6];
  v21 = *MEMORY[0x277D63A90];
  v22 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v22);
  v45 = *(v23 + 104);
  v45(v12 + v20, v21, v22);
  *v12 = v13;
  *(v12 + 8) = v15;
  *(v12 + 16) = v44 & 1;
  *(v12 + 24) = v18;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_1_7();
  sub_2666D66D0(v46, v0, v24);
  OUTLINED_FUNCTION_0_5();
  sub_2666D66D0(v12, v0 + v25, v26);
  v27 = OUTLINED_FUNCTION_30_0();
  v29 = v28;
  LOBYTE(v18) = v30;
  v32 = v31;
  v33 = v0 + v2[6];
  *(v33 + 56) = MEMORY[0x277D558C8];
  *(v33 + 64) = v47;
  *(v33 + 32) = 2;
  *(v33 + 72) = 1;
  v45(v33 + v6[6], *MEMORY[0x277D63A88], v22);
  *v33 = v27;
  *(v33 + 8) = v29;
  *(v33 + 16) = v18 & 1;
  *(v33 + 24) = v32;
  *(v33 + v6[7]) = 0;
  *(v33 + v6[8]) = 0;
  OUTLINED_FUNCTION_12_1();
  v34 = v2[11];
  sub_2666D81FC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  *(v0 + v2[8]) = 1;
  OUTLINED_FUNCTION_14_2();
  *(v0 + v39) = v40;
  OUTLINED_FUNCTION_27();
  v41 = v0 + v2[13];
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_1(KeyPath);
  *(v41 + 32) = 1;
  OUTLINED_FUNCTION_8_2();
  *(v41 + 40) = 1;
  *(v41 + 48) = v43;
  *(v41 + 56) = 0;
  sub_2666D7178();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16();
}

void sub_2666D6F40()
{
  OUTLINED_FUNCTION_17_0();
  v47 = v3;
  v4 = type metadata accessor for SingleEventWithButtonsSnippet();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = type metadata accessor for CalendarButtonView.Model(0);
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = OUTLINED_FUNCTION_31_0();
  v44 = v16;
  v45 = v15;
  v43 = v17;
  v46 = v18;
  *(v14 + 7) = MEMORY[0x277D558D8];
  v19 = sub_2666D7288();
  OUTLINED_FUNCTION_18_2(v19);
  v20 = *MEMORY[0x277D63A90];
  v21 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v21);
  v41 = *(v22 + 104);
  v42 = v22 + 104;
  v41(&v14[v2], v20, v21);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_21_1();
  v24 = v23;
  OUTLINED_FUNCTION_16_0();
  v41((v1 + v25), *MEMORY[0x277D63A88], v21);
  OUTLINED_FUNCTION_19_1();
  *(v1 + 24) = v24;
  *(v1 + *(v8 + 28)) = 0;
  *(v1 + *(v8 + 32)) = 0;
  OUTLINED_FUNCTION_1_7();
  sub_2666D66D0(v47, v0, v26);
  OUTLINED_FUNCTION_0_5();
  v28 = v27;
  sub_2666D66D0(v14, v0 + v29, v27);
  v30 = OUTLINED_FUNCTION_20_1();
  sub_2666D66D0(v30, v31, v28);
  sub_2666CF900(v0 + v4[7]);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  *(v0 + v4[8]) = 0;
  OUTLINED_FUNCTION_14_2();
  *(v0 + v36) = 1;
  OUTLINED_FUNCTION_27();
  v37 = v0 + v4[13];
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_2(KeyPath);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_3();
  sub_2666D71D0(v1, v39);
  sub_2666D71D0(v14, v0);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16();
}

unint64_t sub_2666D7178()
{
  result = qword_2800965A8;
  if (!qword_2800965A8)
  {
    type metadata accessor for SingleEventWithButtonsSnippet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800965A8);
  }

  return result;
}

uint64_t sub_2666D71D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2666D7228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2666D7288()
{
  result = qword_2800965B0[0];
  if (!qword_2800965B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800965B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_2666D71D0(v0, type metadata accessor for SingleEventWithButtonsSnippet);
}

unint64_t OUTLINED_FUNCTION_7_2(uint64_t a1)
{
  *(v2 - 88) = 0;
  *(v2 - 96) = 1;
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 9) = *(v2 - 95);
  *(v1 + 12) = *(v2 - 92);
  *(v1 + 16) = 0x4030000000000000;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 33) = *(v2 - 103);
  *(v1 + 36) = *(v2 - 100);
  *(v1 + 40) = 1;
  *(v1 + 48) = sub_2666BD078;
  *(v1 + 56) = 0;

  return sub_2666D7178();
}

void OUTLINED_FUNCTION_9_4()
{
  v3 = *(v2 - 144);
  *v0 = *(v2 - 136);
  *(v0 + 8) = v3;
  *(v0 + 16) = *(v2 - 148) & 1;
  *(v0 + 24) = *(v2 - 128);
  *(v0 + *(v1 + 28)) = 0;
  *(v0 + *(v1 + 32)) = 0;
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return sub_2666D71D0(v0, type metadata accessor for CalendarButtonView.Model);
}

uint64_t OUTLINED_FUNCTION_12_1()
{
  v4 = v1 + *(v0 + 28);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 9) = *(v2 - 95);
  *(v1 + 12) = *(v2 - 92);
  *(v1 + 16) = 0x4030000000000000;
  *(v1 + 24) = 0;
  return result;
}

void OUTLINED_FUNCTION_16_0()
{
  v4 = *(v3 - 120);
  *(v1 + 56) = v0;
  *(v1 + 64) = v4;
  *(v1 + 32) = 2;
  *(v1 + 72) = 1;
  v5 = *(v2 + 24);
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t result)
{
  *(v3 - 120) = result;
  *(v1 + 64) = result;
  *(v1 + 32) = 1;
  *(v1 + 72) = 1;
  v4 = *(v2 + 24);
  return result;
}

void OUTLINED_FUNCTION_19_1()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3 & 1;
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t result)
{
  *(v2 - 112) = result;
  *(v1 + 64) = result;
  *(v1 + 32) = 0;
  *(v1 + 72) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_2666D85EC();
}

uint64_t OUTLINED_FUNCTION_27()
{
  v3 = v1 + *(v0 + 48);

  return sub_2666D8B8C();
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return sub_2666D87FC();
}

uint64_t OUTLINED_FUNCTION_29_0()
{
  __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v2);
  v4 = *(v0 + 44);

  return sub_2666D81FC();
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_2666D85EC();
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return sub_2666D85EC();
}

void sub_2666D764C(uint64_t a1)
{
  sub_2666BF898();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      type metadata accessor for VRXIdiom();
      if (v5 <= 0x3F)
      {
        sub_2666D7AC0();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2666D7704(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 < a2)
  {
    v10 = ((((v9 + ((v7 + 9) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
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

    switch(v15)
    {
      case 1:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v16 = *(a1 + v10);
        if (v16)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2666D786CLL);
      case 4:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

LABEL_22:
        v18 = v16 - 1;
        if (v12)
        {
          v18 = 0;
          LODWORD(v12) = *a1;
        }

        return v8 + (v12 | v18) + 1;
      default:
        break;
    }
  }

  v19 = (a1 + v7 + 9) & ~v7;
  if (v6 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(v19, v6, v4);
  }

  v20 = *((((v9 + v19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_2666D7880(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        return;
      case 2:
        *&a1[v12] = v17;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = v17;
        return;
      default:
        return;
    }
  }

  switch(v16)
  {
    case 1:
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x2666D7A80);
    case 4:
      *&a1[v12] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        v19 = &a1[v10 + 9] & ~v10;
        if (v8 < 0x7FFFFFFF)
        {
          v20 = ((((v11 + v19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v21 = a2 & 0x7FFFFFFF;
            v20[1] = 0;
          }

          else
          {
            v21 = (a2 - 1);
          }

          *v20 = v21;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }
      }

      return;
  }
}

unint64_t sub_2666D7AC0()
{
  result = qword_280096638;
  if (!qword_280096638)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280096638);
  }

  return result;
}

uint64_t sub_2666D7B08()
{
  v1 = sub_2666D857C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    v7 = *v0;

    sub_2666D8D9C();
    v8 = sub_2666D86DC();
    sub_2666D827C();

    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2666D7C4C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2666D7B08();
  v9 = *(a1 + 32);
  if (result != *(v1 + v9))
  {
    v10 = v1 + *(a1 + 36);
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = sub_2666D7B08();
    v12(v13);
    (*(v4 + 40))(v1 + *(a1 + 28), v7, v3);
    result = sub_2666D7B08();
    *(v1 + v9) = result;
  }

  return result;
}