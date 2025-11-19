uint64_t sub_268350198()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2683502C0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22_21();

  v2 = *(v0 + 8);
  v3 = *(v0 + 104);

  return v2(v3);
}

uint64_t sub_268350354()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22_21();

  v2 = *(v0 + 8);
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_2683503E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_268350438(a1, a2);
}

uint64_t sub_268350438(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = OUTLINED_FUNCTION_23(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_26812C2A8(a1, &v16 - v13, &qword_28024D258, &unk_2683D1F60);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v14;
}

uint64_t sub_2683505E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_268350658(uint64_t a1)
{
  NoteIntentHandledResponseParameters = type metadata accessor for CreateNoteIntentHandledResponseParameters(0);
  (*(*(NoteIntentHandledResponseParameters - 8) + 8))(a1, NoteIntentHandledResponseParameters);
  return a1;
}

void sub_2683506DC()
{
  sub_2683507D4(319, &qword_280253560, MEMORY[0x277D55C08]);
  if (v0 <= 0x3F)
  {
    sub_2683507D4(319, &qword_280253568, type metadata accessor for NotebookNoteConcept);
    if (v1 <= 0x3F)
    {
      sub_2683507D4(319, &qword_28024EF30, MEMORY[0x277D55C48]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2683507D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2683CFFA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_22_21()
{
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[9];

  return sub_268350658(v6);
}

uint64_t sub_268350848()
{
  OUTLINED_FUNCTION_14();
  v1 = sub_2683CB528();
  v0[8] = v1;
  OUTLINED_FUNCTION_3_1(v1);
  v0[9] = v2;
  v4 = *(v3 + 64) + 15;
  v0[10] = swift_task_alloc();
  v5 = sub_2683CB798();
  v0[11] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v0[12] = v6;
  v8 = *(v7 + 64) + 15;
  v0[13] = swift_task_alloc();
  v9 = sub_2683CB7A8();
  v0[14] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v0[15] = v10;
  v12 = *(v11 + 64) + 15;
  v0[16] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760) - 8) + 64) + 15;
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2683509DC()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v23 = v0[14];
  v24 = v0[17];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];
  sub_2683CB768();
  (*(v5 + 104))(v4, *MEMORY[0x277CC9988], v6);
  sub_2683CB508();
  sub_2683CB748();
  v10 = v7;
  v11 = *(v8 + 8);
  v11(v10, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v3, v23);
  v12 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  v0[19] = v12;
  sub_268350E88(v1, v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v9) == 1)
  {
    v13 = 0;
  }

  else
  {
    v14 = v0[17];
    v15 = v0[8];
    v13 = sub_2683CB4A8();
    v11(v14, v15);
  }

  [v12 setStartDate_];

  v16 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v17 = [v16 Intent];
  swift_unknownObjectRelease();
  v18 = [v17 publisherWithOptions_];

  v0[6] = sub_268350EF8;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2681F8BD8;
  v0[5] = &block_descriptor_2;
  v19 = _Block_copy(v0 + 2);
  v20 = [v18 filterWithIsIncluded_];
  v0[20] = v20;
  _Block_release(v19);

  v21 = swift_task_alloc();
  v0[21] = v21;
  *v21 = v0;
  v21[1] = sub_268350CDC;

  return sub_268350FD4(v20);
}

uint64_t sub_268350CDC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 168);
  v7 = *v0;
  *(*v0 + 176) = v2;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268350DD0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);

  sub_268220674(v3);

  v7 = *(v0 + 8);
  v8 = *(v0 + 176);

  return v7(v8);
}

uint64_t sub_268350E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268350EF8(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    if ([v1 donatedBySiri] && (v3 = sub_2683516B0(v2), v4))
    {
      if (v3 == 0xD000000000000010 && v4 == 0x80000002684011B0)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_2683D0598();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268350FF4()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2683510EC;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD000000000000014, 0x8000000268401170, sub_26835148C, v2, v5);
}

uint64_t sub_2683510EC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v7 = *v0;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_268351210(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v19 = sub_2683514FC;
  v20 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_26835159C;
  v18 = &block_descriptor_9;
  v12 = _Block_copy(&aBlock);

  v19 = sub_26835164C;
  v20 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_268351654;
  v18 = &block_descriptor_12;
  v13 = _Block_copy(&aBlock);

  v14 = [a2 sinkWithCompletion:v12 shouldContinue:v13];
  _Block_release(v13);
  _Block_release(v12);
}

uint64_t sub_268351494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  return sub_2683CFD58();
}

uint64_t sub_2683514FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_268351494(a1, v1 + v8, v9);
}

void sub_26835159C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_268351604(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = 1;
  return 0;
}

uint64_t sub_268351654(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_2683516B0(void *a1)
{
  v1 = [a1 intentClass];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_268351748()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t *sub_26835179C(uint64_t a1)
{
  v1[2] = 0;
  v3 = *(a1 + 16);
  v1[3] = v3;
  *(v1 + 32) = *(a1 + 24);
  if (v3)
  {
  }

  else
  {
    v4 = sub_2683CF208();
    sub_2683CFE78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253240, &qword_2683F1440);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2683D1EC0;
    v10 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253588, &qword_2683F3040);
    v6 = sub_2683CFAD8();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_268327B74();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_2683CF708();
  }

  return v1;
}

double sub_2683518E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x65746144657564 && a2 == 0xE700000000000000;
  if (!v6 && (sub_2683D0598() & 1) == 0)
  {
    v10 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
    if (v10 || (sub_2683D0598() & 1) != 0)
    {
      v11 = *(v3 + 32);
      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = v11;
      return result;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 24);
  if (!v9)
  {
LABEL_16:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = sub_2683CEFE8();
  *a3 = v9;

  return result;
}

uint64_t sub_2683519E0()
{
  v0 = sub_2683D0408();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268351A34(char a1)
{
  if (a1)
  {
    return 0x7961446C6C417369;
  }

  else
  {
    return 0x65746144657564;
  }
}

uint64_t sub_268351A90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2683519E0();
  *a2 = result;
  return result;
}

uint64_t sub_268351AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268351A34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268351AF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2683519E0();
  *a1 = result;
  return result;
}

uint64_t sub_268351B28(uint64_t a1)
{
  v2 = sub_268352174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268351B64(uint64_t a1)
{
  v2 = sub_268352174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268351BA0()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_268351BC8()
{
  sub_268351BA0();

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

uint64_t sub_268351C20(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253580, &unk_2683F3030);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268352174();
  sub_2683D0718();
  v19 = *(v3 + 24);
  v18[7] = 0;
  sub_2683CEFE8();
  OUTLINED_FUNCTION_0_63();
  sub_2683521C8(v14, 255, v15);
  sub_2683D0508();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v18[6] = 1;
    sub_2683D0528();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_268351DBC(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_268351E30(a1);
  return v2;
}

uint64_t sub_268351E30(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253570, &qword_2683F3028);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  *(v1 + 16) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268352174();
  sub_2683D06F8();
  if (v2)
  {

    type metadata accessor for NotebookTemporalEventTriggerConcept();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2683CEFE8();
    OUTLINED_FUNCTION_0_63();
    sub_2683521C8(v10, 255, v11);
    sub_2683D0468();
    *(v1 + 24) = v16;
    v13 = sub_2683D0488();
    v14 = OUTLINED_FUNCTION_0_53();
    v15(v14);
    *(v3 + 32) = v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_268352094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268351DBC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_268352174()
{
  result = qword_280253578;
  if (!qword_280253578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253578);
  }

  return result;
}

uint64_t sub_2683521C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for NotebookTemporalEventTriggerConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2683522F0()
{
  result = qword_280253590;
  if (!qword_280253590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253590);
  }

  return result;
}

unint64_t sub_268352348()
{
  result = qword_280253598;
  if (!qword_280253598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253598);
  }

  return result;
}

unint64_t sub_2683523A0()
{
  result = qword_2802535A0;
  if (!qword_2802535A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802535A0);
  }

  return result;
}

void sub_268352438()
{
  OUTLINED_FUNCTION_30_0();
  v1 = type metadata accessor for AppIntentNode(0);
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_3();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024CE28, &qword_2683D1870);
  v12 = OUTLINED_FUNCTION_23(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_3();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_29_18();
  sub_268356630();
  sub_2681340E8(v0, v17, &qword_28024CE28, &qword_2683D1870);
  OUTLINED_FUNCTION_2_6(v17);
  if (!v19)
  {
    sub_268359F58(v17, v10);
    sub_268359EF4(v10, v7);
    sub_2683533F0();
    sub_2683CD078();
    sub_2683CD058();
    OUTLINED_FUNCTION_18_30();
    sub_26835844C(v20, v21);
    sub_2683CD5C8();

    sub_268359FB4(v7, type metadata accessor for AppIntentNode);
    sub_268359FB4(v10, type metadata accessor for AppIntentNode);
  }

  sub_26812D9E0(v0, &qword_28024CE28, &qword_2683D1870);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_29_0();
}

void sub_268352650()
{
  OUTLINED_FUNCTION_130();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D390, &qword_2683D22E8);
  OUTLINED_FUNCTION_23(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v22[-v4];
  v6 = type metadata accessor for NotebookLocationIntentNode(0);
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  sub_268352FE8();
  v10 = OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_72(v10, v11, v6);
  if (v20)
  {
    sub_26812D9E0(v5, &qword_28024D390, &qword_2683D22E8);
    if (qword_28024CBB0 != -1)
    {
      OUTLINED_FUNCTION_23_26();
    }

    type metadata accessor for NotebookNLv3Intent(0);
    OUTLINED_FUNCTION_0_64();
    sub_26835844C(v12, v13);
    OUTLINED_FUNCTION_40_15();
    sub_2683CD5C8();
    switch(v22[15])
    {
      case 1:
      case 2:
      case 3:
        v21 = sub_2683D0598();

        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }

        break;
      case 4:
LABEL_19:
        OUTLINED_FUNCTION_40_15();
        sub_2683CD5C8();
        switch(v22[14])
        {
          case 1:
            goto LABEL_20;
          case 4:
            goto LABEL_23;
          default:
            sub_2683D0598();

            break;
        }

        break;
      default:
LABEL_20:

        break;
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_0();
    sub_268359F58(v14, v15);
    v16 = sub_268357668();
    if (v16 != 9)
    {
      v17 = v16;
      if (qword_28024CC30 != -1)
      {
        swift_once();
      }

      if (sub_2681F6C84(v17, qword_2802535A8))
      {
        goto LABEL_11;
      }
    }

    v18 = sub_268357668();
    if (v18 == 9)
    {
LABEL_11:
      OUTLINED_FUNCTION_4_48();
    }

    else
    {
      v20 = sub_2683556FC(v18) == 0xD000000000000010 && 0x80000002683FA6A0 == v19;
      if (!v20)
      {
        sub_2683D0598();
      }

      OUTLINED_FUNCTION_4_48();
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_131();
}

void sub_268352A2C()
{
  OUTLINED_FUNCTION_30_0();
  v71 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253780, &qword_2683F3DA8);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v69[0] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0F8, &unk_2683DB2B0);
  v10 = OUTLINED_FUNCTION_23(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19_3();
  v15 = v13 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_43_11();
  MEMORY[0x28223BE20](v18);
  v70 = v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0F0, &qword_2683DB2A8);
  OUTLINED_FUNCTION_23(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_0();
  v69[5] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253788, &qword_2683F3DB0);
  OUTLINED_FUNCTION_23(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  v69[4] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253790, &qword_2683F3DB8);
  OUTLINED_FUNCTION_23(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_0();
  v69[3] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253798, &unk_2683F3DC0);
  v36 = OUTLINED_FUNCTION_23(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19_3();
  v69[2] = v39 - v40;
  MEMORY[0x28223BE20](v41);
  v69[1] = v69 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_23(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_30_15();
  v47 = sub_2683CD358();
  v48 = OUTLINED_FUNCTION_0_3(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_56_5();
  if (qword_28024CBA0 != -1)
  {
    OUTLINED_FUNCTION_6_35();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v53, v54);
  sub_2683CD5C8();
  OUTLINED_FUNCTION_72(v2, 1, v47);
  if (!v62)
  {
    v57 = OUTLINED_FUNCTION_45_7(v50);
    v58(v57);
    sub_2683CD2C8();
    sub_2683CD298();
    sub_2683CD338();
    sub_2683CD348();
    sub_2683CD2F8();
    sub_2683CD2D8();
    v59 = sub_2683CD3B8();
    v60 = OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_72(v60, v61, v59);
    if (v62)
    {
      sub_26812D9E0(v0, &qword_28024F0F8, &unk_2683DB2B0);
    }

    else
    {
      v63 = sub_2683CD3A8();
      OUTLINED_FUNCTION_23_0(v59);
      (*(v64 + 8))(v0, v59);
      if (v63 != 2 && (v63 & 1) != 0)
      {
        sub_2683CD2D8();
        goto LABEL_13;
      }
    }

    __swift_storeEnumTagSinglePayload(v70, 1, 1, v59);
LABEL_13:
    sub_2683CD2A8();
    OUTLINED_FUNCTION_72(v15, 1, v59);
    if (v62)
    {
      sub_26812D9E0(v15, &qword_28024F0F8, &unk_2683DB2B0);
    }

    else
    {
      v65 = sub_2683CD3A8();
      OUTLINED_FUNCTION_23_0(v59);
      (*(v66 + 8))(v15, v59);
      if (v65 != 2 && (v65 & 1) != 0)
      {
        sub_2683CD2A8();
LABEL_20:
        sub_2683CD318();
        sub_2683CD308();
        sub_2683CD328();
        v56 = v71;
        sub_2683CD2B8();
        (*(v50 + 8))(v1, v47);
        v55 = 0;
        goto LABEL_21;
      }
    }

    v67 = OUTLINED_FUNCTION_33_1();
    __swift_storeEnumTagSinglePayload(v67, v68, 1, v59);
    goto LABEL_20;
  }

  sub_26812D9E0(v2, &qword_28024D398, &qword_2683D22F0);
  v55 = 1;
  v56 = v71;
LABEL_21:
  __swift_storeEnumTagSinglePayload(v56, v55, 1, v47);
  OUTLINED_FUNCTION_29_0();
}

void sub_268352FE8()
{
  OUTLINED_FUNCTION_130();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_28_2();
  v8 = sub_2683CD628();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_56_5();
  if (qword_28024CBB8 != -1)
  {
    OUTLINED_FUNCTION_24_18();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v14, v15);
  OUTLINED_FUNCTION_32_3();
  sub_2683CD5A8();
  OUTLINED_FUNCTION_20_30(v0);
  if (v16)
  {
    sub_26812D9E0(v0, &qword_2802535F8, &unk_2683F32E0);
    v21 = type metadata accessor for NotebookLocationIntentNode(0);
    v19 = v3;
    v20 = 1;
  }

  else
  {
    (*(v11 + 32))(v1, v0, v8);
    (*(v11 + 16))(v3, v1, v8);
    v17 = *(v11 + 8);

    v17(v1, v8);
    v18 = type metadata accessor for NotebookLocationIntentNode(0);
    v19 = OUTLINED_FUNCTION_47_6(v18);
  }

  __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
  OUTLINED_FUNCTION_131();
}

void sub_2683531D0()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_15();
  v8 = sub_2683CD628();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_43_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_29_18();
  if (qword_28024CC38 != -1)
  {
    OUTLINED_FUNCTION_22_22();
  }

  type metadata accessor for NotebookLocationIntentNode(0);
  sub_26835844C(&qword_2802536A8, type metadata accessor for NotebookLocationIntentNode);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_20_30(v1);
  if (v15)
  {
    sub_26812D9E0(v1, &qword_2802535F8, &unk_2683F32E0);
    v22 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_45_7(v11);
    v17(v16);
    v18 = *(v11 + 16);
    v19 = OUTLINED_FUNCTION_40_15();
    v20(v19);
    v21 = sub_2683CD138();
    OUTLINED_FUNCTION_42_3(v21);
    sub_2683CD128();
    sub_2683CD478();
    (*(v11 + 8))(v0, v8);
    v22 = 0;
  }

  v23 = sub_2683CD4A8();
  __swift_storeEnumTagSinglePayload(v3, v22, 1, v23);
  OUTLINED_FUNCTION_29_0();
}

void sub_2683533F0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253860, &qword_2683F3DE0);
  OUTLINED_FUNCTION_23(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v108 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253868, &qword_2683F3DE8);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v109 = v10;
  v105 = sub_2683CD278();
  v11 = OUTLINED_FUNCTION_0_3(v105);
  v107 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_3();
  v106 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253870, &qword_2683F3DF0);
  OUTLINED_FUNCTION_23(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  v110 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253878, &qword_2683F3DF8);
  OUTLINED_FUNCTION_23(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v103 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251EE8, &unk_2683F3E00);
  OUTLINED_FUNCTION_23(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_28_2();
  v32 = sub_2683CD418();
  v33 = OUTLINED_FUNCTION_0_3(v32);
  v111 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_3();
  v39 = v38 - v37;
  sub_2683CD078();
  sub_2683CD048();
  type metadata accessor for AppIntentNode(0);
  OUTLINED_FUNCTION_18_30();
  sub_26835844C(v40, v41);
  sub_2683CD5C8();

  if (v113)
  {
    goto LABEL_9;
  }

  v104 = v39;
  sub_2683CD058();
  sub_2683CD5B8();

  v42 = sub_2683CD548();
  OUTLINED_FUNCTION_20_30(v27);
  if (v50)
  {
    sub_26812D9E0(v27, &qword_280253878, &qword_2683F3DF8);
    v43 = OUTLINED_FUNCTION_8_8();
    __swift_storeEnumTagSinglePayload(v43, v44, 1, v32);
LABEL_7:
    v51 = &qword_280251EE8;
    v52 = &unk_2683F3E00;
    v53 = v0;
LABEL_8:
    sub_26812D9E0(v53, v51, v52);
    goto LABEL_9;
  }

  v45 = sub_2683CD538();
  OUTLINED_FUNCTION_23_0(v42);
  (*(v46 + 8))(v27, v42);
  sub_268224B98(v45, v0);

  v47 = OUTLINED_FUNCTION_8_8();
  v48 = v32;
  OUTLINED_FUNCTION_72(v47, v49, v32);
  if (v50)
  {
    goto LABEL_7;
  }

  v54 = v111;
  (*(v111 + 32))(v104, v0, v32);
  v55 = v110;
  sub_2683CD3D8();
  sub_2683CD3C8();
  OUTLINED_FUNCTION_2_6(v55);
  if (v56)
  {
    v57 = OUTLINED_FUNCTION_16_31();
    v58(v57);
    v51 = &qword_280253870;
    v52 = &qword_2683F3DF0;
LABEL_23:
    v53 = v55;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_1_43();
  v60 = v59;
  v62 = *(v61 + 88);
  v63 = OUTLINED_FUNCTION_0_0();
  v65 = v64(v63);
  if (v65 != *MEMORY[0x277D5E5C8])
  {
    v78 = OUTLINED_FUNCTION_16_31();
    v79(v78);
LABEL_18:
    v80 = *(v60 + 8);
    v81 = OUTLINED_FUNCTION_0_0();
    v82(v81);
    goto LABEL_9;
  }

  v66 = *(v60 + 96);
  v67 = OUTLINED_FUNCTION_0_0();
  v68(v67);
  v70 = *v55;
  v69 = v55[1];
  v71 = v108;
  sub_2683CD408();
  v72 = sub_2683CD3F8();
  OUTLINED_FUNCTION_2_6(v71);
  if (v50)
  {
    v73 = OUTLINED_FUNCTION_16_31();
    v74(v73);

    sub_26812D9E0(v71, &qword_280253860, &qword_2683F3DE0);
    sub_2683CD288();
    v55 = v109;
    v75 = OUTLINED_FUNCTION_33_1();
    __swift_storeEnumTagSinglePayload(v75, v76, 1, v77);
LABEL_22:
    v51 = &qword_280253868;
    v52 = &qword_2683F3DE8;
    goto LABEL_23;
  }

  v55 = v109;
  sub_2683CD3E8();
  OUTLINED_FUNCTION_23_0(v72);
  (*(v83 + 8))(v71, v72);
  sub_2683CD288();
  OUTLINED_FUNCTION_2_6(v55);
  if (v84)
  {
    v85 = OUTLINED_FUNCTION_16_31();
    v86(v85);

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_1_43();
  v60 = v87;
  v89 = *(v88 + 88);
  v90 = OUTLINED_FUNCTION_0_0();
  v92 = v91(v90);
  if (v92 != *MEMORY[0x277D5E588])
  {
    v101 = OUTLINED_FUNCTION_16_31();
    v102(v101);

    goto LABEL_18;
  }

  v93 = *(v60 + 96);
  v94 = OUTLINED_FUNCTION_0_0();
  v95(v94);
  v97 = v106;
  v96 = v107;
  v98 = v105;
  (*(v107 + 32))(v106, v55, v105);
  v99 = sub_2683CD268();
  v110 = v48;
  v112 = 0xD000000000000010;
  v113 = 0x8000000268401620;
  MEMORY[0x28223BE20](v99);
  *(&v103 - 2) = &v112;
  v100 = sub_2681A073C(sub_2681A12C0, (&v103 - 4), v99);

  (*(v96 + 8))(v97, v98);
  (*(v54 + 8))(v104, v110);
  if (!v100)
  {
  }

LABEL_9:
  OUTLINED_FUNCTION_29_0();
}

void sub_268353B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  OUTLINED_FUNCTION_23(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_28_2();
  v27 = sub_2683CD628();
  v28 = OUTLINED_FUNCTION_0_3(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19_3();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  if (qword_28024CC00 != -1)
  {
    OUTLINED_FUNCTION_27_16();
  }

  v39 = qword_28027CD40;
  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v40, v41);
  OUTLINED_FUNCTION_30_7();
  sub_2683CD5A8();
  OUTLINED_FUNCTION_2_6(v20);
  if (v42)
  {
    sub_26812D9E0(v20, &qword_2802535F8, &unk_2683F32E0);
  }

  else
  {
    v43 = *(v30 + 32);
    v43(v38, v20, v27);
    (*(v30 + 16))(v35, v38, v27);
    v44 = *(v30 + 8);

    v44(v38, v27);
    v45 = type metadata accessor for NotebookContactTriggerNode(0);
    v46 = OUTLINED_FUNCTION_42_3(v45);
    v43((v46 + OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_intentNode), v35, v27);
    *(v46 + OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_ontologyNode) = v39;
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268353D68()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_15();
  v8 = sub_2683CD628();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_43_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_29_18();
  if (qword_28024CC08 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v15, v16);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_20_30(v1);
  if (v17)
  {
    sub_26812D9E0(v1, &qword_2802535F8, &unk_2683F32E0);
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_45_7(v11);
    v19(v18);
    v20 = *(v11 + 16);
    v21 = OUTLINED_FUNCTION_40_15();
    v22(v21);
    v23 = sub_2683CD108();
    OUTLINED_FUNCTION_42_3(v23);
    sub_2683CD0F8();
    OUTLINED_FUNCTION_47_0();
    *(v3 + 24) = sub_2683CD468();
    *(v3 + 32) = sub_26835844C(&qword_280251C50, MEMORY[0x277D5E668]);
    __swift_allocate_boxed_opaque_existential_0(v3);
    sub_2683CD458();
    (*(v11 + 8))(v0, v8);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268353FB8()
{
  if (qword_28024CB58 != -1)
  {
    swift_once();
  }
}

void sub_268354014()
{
  OUTLINED_FUNCTION_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683F31A0;
  if (qword_28024CB60 != -1)
  {
    OUTLINED_FUNCTION_28_18();
  }

  v1 = qword_28027CCA0;
  v2 = sub_2683CD078();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_28024CB80;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_28027CCC0;
  v6 = OUTLINED_FUNCTION_58_5();
  *(v0 + 96) = v6;
  OUTLINED_FUNCTION_1_57();
  v8 = OUTLINED_FUNCTION_59_5(v7);
  *(v0 + 104) = v8;
  *(v0 + 72) = v5;
  v9 = qword_28024CB68;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_2_53();
  }

  v10 = qword_28027CCA8;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535E8, &qword_2683F32D0);
  OUTLINED_FUNCTION_1_57();
  *(v0 + 144) = sub_26818A0C8(v11, &qword_2802535E8, &qword_2683F32D0);
  *(v0 + 112) = v10;
  v12 = qword_28024CB70;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_33();
  }

  v13 = qword_28027CCB0;
  v14 = OUTLINED_FUNCTION_30_7();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  *(v0 + 176) = v16;
  OUTLINED_FUNCTION_1_57();
  v18 = sub_26818A0C8(v17, &qword_28024F0D0, &qword_2683DB1C8);
  *(v0 + 184) = v18;
  *(v0 + 152) = v13;
  v19 = qword_28024CB78;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_28027CCB8;
  *(v0 + 216) = v16;
  *(v0 + 224) = v18;
  *(v0 + 192) = v20;
  v21 = qword_28024CBA0;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_6_35();
  }

  v22 = qword_28027CCE0;
  v23 = OUTLINED_FUNCTION_30_7();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  *(v0 + 256) = v25;
  OUTLINED_FUNCTION_1_57();
  v27 = sub_26818A0C8(v26, &qword_28024EFB8, &qword_2683DAF00);
  *(v0 + 264) = v27;
  *(v0 + 232) = v22;
  v28 = qword_28024CBA8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_28027CCE8;
  *(v0 + 296) = v25;
  *(v0 + 304) = v27;
  *(v0 + 272) = v29;
  v30 = qword_28024CBB8;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_24_18();
  }

  v31 = qword_28027CCF8;
  v32 = sub_2683CCFB8();
  *(v0 + 336) = v32;
  *(v0 + 344) = v3;
  *(v0 + 312) = v31;
  v33 = qword_28024CB98;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_28027CCD8;
  v35 = OUTLINED_FUNCTION_32_3();
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  OUTLINED_FUNCTION_1_57();
  *(v0 + 384) = sub_26818A0C8(v37, &qword_28024F0A8, &qword_2683F32F0);
  *(v0 + 352) = v34;
  v38 = qword_28024CBB0;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_23_26();
  }

  v39 = qword_28027CCF0;
  v40 = OUTLINED_FUNCTION_32_3();
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
  OUTLINED_FUNCTION_1_57();
  *(v0 + 424) = sub_26818A0C8(v42, &qword_280253608, &qword_2683F32F8);
  *(v0 + 392) = v39;
  v43 = qword_28024CBC0;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = qword_28027CD00;
  *(v0 + 456) = v6;
  *(v0 + 464) = v8;
  *(v0 + 432) = v44;
  v45 = qword_28024CBC8;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = qword_28027CD08;
  *(v0 + 496) = v6;
  *(v0 + 504) = v8;
  *(v0 + 472) = v46;
  v47 = qword_28024CBD0;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = qword_28027CD10;
  *(v0 + 536) = v6;
  *(v0 + 544) = v8;
  *(v0 + 512) = v48;
  v49 = qword_28024CBE0;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = qword_28027CD20;
  *(v0 + 576) = v6;
  *(v0 + 584) = v8;
  *(v0 + 552) = v50;
  v51 = qword_28024CBD8;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = qword_28027CD18;
  *(v0 + 616) = v6;
  *(v0 + 624) = v8;
  *(v0 + 592) = v52;
  v53 = qword_28024CC28;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = qword_28027CD68;
  *(v0 + 656) = v32;
  *(v0 + 664) = v3;
  *(v0 + 632) = v54;
  v55 = qword_28024CBE8;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = qword_28027CD28;
  *(v0 + 696) = v6;
  *(v0 + 704) = v8;
  *(v0 + 672) = v56;
  v57 = qword_28024CBF0;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = qword_28027CD30;
  *(v0 + 736) = v6;
  *(v0 + 744) = v8;
  *(v0 + 712) = v58;
  v59 = qword_28024CBF8;

  if (v59 != -1)
  {
    OUTLINED_FUNCTION_26_23();
  }

  v60 = qword_28027CD38;
  *(v0 + 776) = OUTLINED_FUNCTION_58_5();
  OUTLINED_FUNCTION_1_57();
  *(v0 + 784) = OUTLINED_FUNCTION_59_5(v61);
  *(v0 + 752) = v60;
  v62 = qword_28024CB88;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_25_25();
  }

  v63 = qword_28027CCC8;
  *(v0 + 816) = OUTLINED_FUNCTION_58_5();
  OUTLINED_FUNCTION_1_57();
  *(v0 + 824) = OUTLINED_FUNCTION_59_5(v64);
  *(v0 + 792) = v63;
  v65 = qword_28024CB90;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = qword_28027CCD0;
  *(v0 + 856) = OUTLINED_FUNCTION_58_5();
  OUTLINED_FUNCTION_1_57();
  *(v0 + 864) = OUTLINED_FUNCTION_59_5(v67);
  *(v0 + 832) = v66;
  v68 = qword_28024CC10;

  if (v68 != -1)
  {
    swift_once();
  }

  v69 = qword_28027CD50;
  *(v0 + 896) = v32;
  *(v0 + 904) = v3;
  *(v0 + 872) = v69;
  v70 = qword_28024CC00;

  if (v70 != -1)
  {
    OUTLINED_FUNCTION_27_16();
  }

  v71 = qword_28027CD40;
  *(v0 + 936) = v32;
  *(v0 + 944) = v3;
  *(v0 + 912) = v71;
  v72 = sub_2683CD098();
  OUTLINED_FUNCTION_42_3(v72);

  OUTLINED_FUNCTION_53_6();
  qword_28027CC98 = sub_2683CD088();
  OUTLINED_FUNCTION_131();
}

uint64_t sub_268354858()
{
  v0 = sub_2683CD078();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD068();
  qword_28027CCA0 = result;
  return result;
}

uint64_t sub_2683548F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0D0, &qword_2683DB1C8);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(18);
  result = sub_2683CD148();
  qword_28027CCB8 = result;
  return result;
}

uint64_t sub_26835496C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F0, &qword_2683F32D8);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(17);
  result = sub_2683CD148();
  qword_28027CCC8 = result;
  return result;
}

uint64_t sub_2683549C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253620, &unk_2683F3300);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(21);
  result = sub_2683CD148();
  qword_28027CCD0 = result;
  return result;
}

uint64_t sub_268354A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0A8, &qword_2683F32F0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(20);
  result = sub_2683CD148();
  qword_28027CCD8 = result;
  return result;
}

uint64_t sub_268354A74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFB8, &qword_2683DAF00);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(19);
  result = sub_2683CD148();
  qword_28027CCE0 = result;
  return result;
}

uint64_t sub_268354ACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFB8, &qword_2683DAF00);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(20);
  result = sub_2683CD148();
  qword_28027CCE8 = result;
  return result;
}

uint64_t sub_268354B24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253608, &qword_2683F32F8);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(25);
  result = sub_2683CD148();
  qword_28027CCF0 = result;
  return result;
}

uint64_t sub_268354B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D1EC0;
  if (qword_28024CC38 != -1)
  {
    OUTLINED_FUNCTION_22_22();
  }

  v1 = qword_28027CD70;
  v2 = sub_2683CCFB8();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_42_3(v2);

  OUTLINED_FUNCTION_13_35(16);
  result = sub_2683CCF98();
  qword_28027CCF8 = result;
  return result;
}

uint64_t sub_268354C78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(19);
  result = sub_2683CD148();
  qword_28027CD08 = result;
  return result;
}

uint64_t sub_268354CFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_42_3(v6);
  OUTLINED_FUNCTION_53_6();
  result = sub_2683CD148();
  *a5 = result;
  return result;
}

uint64_t sub_268354D4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CD18 = result;
  return result;
}

uint64_t sub_268354DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(19);
  result = sub_2683CD148();
  qword_28027CD20 = result;
  return result;
}

uint64_t sub_268354E0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(25);
  result = sub_2683CD148();
  qword_28027CD28 = result;
  return result;
}

uint64_t sub_268354E64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(21);
  result = sub_2683CD148();
  qword_28027CD30 = result;
  return result;
}

uint64_t sub_268354EBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0C0, &qword_2683DB1C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(18);
  result = sub_2683CD148();
  qword_28027CD38 = result;
  return result;
}

uint64_t sub_268354F14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D1EC0;
  if (qword_28024CC40 != -1)
  {
    swift_once();
  }

  v1 = qword_28027CD78;
  v2 = sub_2683CCFB8();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  swift_allocObject();

  result = sub_2683CCF98();
  qword_28027CD40 = result;
  return result;
}

uint64_t sub_268355000()
{
  v0 = sub_2683CD108();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD0F8();
  qword_28027CD48 = result;
  return result;
}

uint64_t sub_268355054()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D1EC0;
  if (qword_28024CC08 != -1)
  {
    swift_once();
  }

  v1 = qword_28027CD48;
  v2 = sub_2683CD108();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = sub_2683CCFB8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  result = sub_2683CCF98();
  qword_28027CD50 = result;
  return result;
}

uint64_t sub_268355150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0D0, &qword_2683DB1C8);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(27);
  result = sub_2683CD148();
  qword_28027CD58 = result;
  return result;
}

uint64_t sub_2683551A8()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2683551E8(char a1)
{
  result = 1684104562;
  switch(a1)
  {
    case 1:
      v3 = 1634038371;
      goto LABEL_8;
    case 2:
      result = 1684957542;
      break;
    case 3:
      v3 = 1701602660;
LABEL_8:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      result = 0x796669646F6DLL;
      break;
    case 5:
      result = 1684956531;
      break;
    case 6:
      result = 1868852853;
      break;
    case 7:
      result = 0x657A6F6F6E73;
      break;
    case 8:
      result = 0x74736575516B7361;
      break;
    case 9:
      result = 0x6176697463616564;
      break;
    case 10:
      result = 0x646E65707061;
      break;
    case 11:
      result = 1702260589;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2683552EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(28);
  result = sub_2683CD148();
  qword_28027CD60 = result;
  return result;
}

uint64_t sub_268355344()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D2890;
  if (qword_28024CC18 != -1)
  {
    swift_once();
  }

  v1 = qword_28027CD58;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0D0, &qword_2683DB1C8);
  *(v0 + 64) = sub_26818A0C8(&qword_28024F0D8, &qword_28024F0D0, &qword_2683DB1C8);
  *(v0 + 32) = v1;
  v2 = qword_28024CC20;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28027CD60;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  *(v0 + 104) = sub_26818A0C8(&qword_28024EFB0, &qword_28024EFA8, &unk_2683F32C0);
  *(v0 + 72) = v3;
  v4 = sub_2683CCFB8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  result = sub_2683CCF98();
  qword_28027CD68 = result;
  return result;
}

uint64_t sub_26835552C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2683551A8();
  *a2 = result;
  return result;
}

unint64_t sub_26835555C()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_2683551E8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2683555D4()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268355614(char a1)
{
  result = 0x7265646E696D6572;
  switch(a1)
  {
    case 1:
      result = 1802723700;
      break;
    case 2:
      result = 0x6B736174627573;
      break;
    case 3:
      result = 1953720684;
      break;
    case 4:
      result = 1702129518;
      break;
    case 5:
      result = 1835365481;
      break;
    case 6:
      result = 0x7265646C6F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2683556BC()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2683556FC(char a1)
{
  result = 0x64646120656D6F68;
  switch(a1)
  {
    case 1:
      result = 0x646461206B726F77;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x79627261656ELL;
      break;
    case 4:
      result = 0x61206C6F6F686373;
      break;
    case 5:
      v3 = 544045415;
      goto LABEL_8;
    case 6:
      result = 0x646120726568746FLL;
      break;
    case 7:
      v3 = 544829025;
LABEL_8:
      result = v3 | 0x7264646100000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26835580C()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26835584C(char a1)
{
  result = 0x6C617669727261;
  switch(a1)
  {
    case 1:
      result = 0x7275747261706564;
      break;
    case 2:
      result = 0x6576207265746E65;
      break;
    case 3:
      result = 0x7620747261706564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2683558EC()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26835592C(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t sub_26835596C()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D05E8();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2683559B4(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 0x6D69745F65746164;
      break;
    case 2:
      result = 0x72656767697274;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0x6574656C706D6F63;
      break;
    case 5:
      result = 0x656C706D6F636E69;
      break;
    case 6:
      v3 = 0x657461657263;
      goto LABEL_20;
    case 7:
      result = 0x6465696669646F6DLL;
      break;
    case 8:
      result = 0x797469726F697270;
      break;
    case 9:
      result = 0x656767616C666E75;
      break;
    case 10:
      v3 = 0x656767616C66;
LABEL_20:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 11:
      result = 0x6F69647561;
      break;
    case 12:
      result = 0x736E6961746E6F63;
      break;
    case 13:
      result = 0x656C746974;
      break;
    case 14:
      result = 0x746E65746E6F63;
      break;
    case 15:
      result = 0x737574617473;
      break;
    case 16:
      result = 0x6E69727275636572;
      break;
    case 17:
      result = 0x6575647265766FLL;
      break;
    case 18:
      result = 0x656C756465686373;
      break;
    case 19:
      result = 0x646572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268355BB0()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D05E8();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268355BF8(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      v7 = 1920298854;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 4:
      v5 = 1952868710;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v5 = 1954048371;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v4 = 0x746E65766573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      v7 = 1751607653;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 8:
      return 0x68746E696ELL;
    case 9:
      v5 = 1953391988;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      v4 = 0x74666C657774;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 12:
      v6 = 1919510644;
      goto LABEL_28;
    case 13:
      v6 = 1920298854;
      goto LABEL_28;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v6 = 1751607653;
      goto LABEL_28;
    case 18:
      v6 = 1701734766;
LABEL_28:
      result = v6 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
    case 23:
    case 24:
      result = 0x662079746E657774;
      break;
    case 21:
      result = 0x732079746E657774;
      break;
    case 22:
      result = 0x742079746E657774;
      break;
    case 25:
      result = 1953718636;
      break;
    case 26:
      result = 0x656C6464696DLL;
      break;
    case 27:
      result = 1954047342;
      break;
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x6F54646E6F636573;
      break;
    case 30:
      result = 0x4C6F546472696874;
      break;
    case 31:
      result = 2037277037;
      break;
    case 32:
      result = 6647407;
      break;
    case 33:
      result = 6645876;
      break;
    case 34:
      result = 0x6573656874;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268355EE8()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268355F28(char a1)
{
  result = 0x65746973626577;
  switch(a1)
  {
    case 1:
      return 7107189;
    case 2:
      v4 = 1953458288;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    case 3:
      v4 = 1701079414;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    case 4:
      return 7368801;
    case 5:
      return 0x6C69616D65;
    case 6:
      v3 = 0x67617373656DLL;
      goto LABEL_11;
    case 7:
      return 0x74736163646F70;
    case 8:
      return 1735290739;
    case 9:
      v3 = 0x6C6369747261;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 10:
      result = 1936287860;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268356038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2683555D4();
  *a2 = result;
  return result;
}

uint64_t sub_268356068()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_268355614(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2683560F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2683556BC();
  *a2 = result;
  return result;
}

uint64_t sub_268356128()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_2683556FC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2683561C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26835580C();
  *a2 = result;
  return result;
}

uint64_t sub_2683561F4()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_26835584C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_268356290@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2683558EC();
  *a2 = result;
  return result;
}

uint64_t sub_2683562C0()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_26835592C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26835635C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26835596C();
  *a2 = result;
  return result;
}

uint64_t sub_26835638C()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_2683559B4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_268356428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268355BB0();
  *a2 = result;
  return result;
}

uint64_t sub_268356458()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_268355BF8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2683564F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268355EE8();
  *a2 = result;
  return result;
}

uint64_t sub_268356524()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_268355F28(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2683565A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_130();
  v11 = v10;
  v13 = v12;
  v14();
  v13();
  v11();
  OUTLINED_FUNCTION_131();

  return MEMORY[0x2821C21F8](v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

void sub_268356630()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = sub_2683CD628();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  v13 = OUTLINED_FUNCTION_23(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_3();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_29_18();
  if (qword_28024CB60 != -1)
  {
    OUTLINED_FUNCTION_28_18();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v20, v21);
  sub_2683CD5A8();
  v22 = OUTLINED_FUNCTION_30_7();
  sub_2681340E8(v22, v23, v24, v25);
  OUTLINED_FUNCTION_20_30(v18);
  if (v26)
  {
    sub_26812D9E0(v0, &qword_2802535F8, &unk_2683F32E0);
    v31 = type metadata accessor for AppIntentNode(0);
    v29 = v2;
    v30 = 1;
  }

  else
  {
    (*(v6 + 32))(v11, v18, v3);
    (*(v6 + 16))(v2, v11, v3);
    v27 = *(v6 + 8);

    v27(v11, v3);
    sub_26812D9E0(v0, &qword_2802535F8, &unk_2683F32E0);
    v28 = type metadata accessor for AppIntentNode(0);
    v29 = OUTLINED_FUNCTION_47_6(v28);
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v31);
  OUTLINED_FUNCTION_29_0();
}

BOOL sub_268356870()
{
  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v0, v1);
  OUTLINED_FUNCTION_44_12();
  v2 = sub_2683CD5C8();
  v10 = OUTLINED_FUNCTION_48_10(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20, SWORD2(v20), SBYTE6(v20), HIBYTE(v20));
  if (!v14)
  {
    v12 = sub_2683551E8(v10);
    v14 = v12 == 1684957542 && v13 == 0xE400000000000000;
    if (v14)
    {
      goto LABEL_19;
    }

    v15 = sub_2683D0598();

    if (v15)
    {
      return 1;
    }
  }

  sub_2683CD5C8();
  if (v22 == 12)
  {
    goto LABEL_6;
  }

  if (sub_2683551E8(v22) != 1684104562 || v16 != 0xE400000000000000)
  {
    v18 = sub_2683D0598();

    if (v18)
    {
      return 1;
    }

LABEL_6:
    sub_2683CD5C8();
    return v21 == 12;
  }

LABEL_19:

  return 1;
}

uint64_t sub_2683569FC()
{
  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v0, v1);
  OUTLINED_FUNCTION_61();
  v2 = sub_2683CD5C8();
  v10 = OUTLINED_FUNCTION_48_10(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20, SWORD2(v20), SBYTE6(v20), HIBYTE(v20));
  if (v14)
  {
    return 24;
  }

  v12 = sub_2683551E8(v10);
  v14 = v12 == 0x6574656C6564 && v13 == 0xE600000000000000;
  if (v14)
  {

    goto LABEL_13;
  }

  v15 = OUTLINED_FUNCTION_51_8();

  if ((v15 & 1) == 0)
  {
    return 24;
  }

LABEL_13:
  if (qword_28024CB70 != -1)
  {
    OUTLINED_FUNCTION_33();
  }

  OUTLINED_FUNCTION_61();
  sub_2683CD5C8();
  if (v21 == 7)
  {
    return 10;
  }

  if (sub_268355614(v21) == 1702129518 && v16 == 0xE400000000000000)
  {
  }

  else
  {
    v18 = OUTLINED_FUNCTION_50_10();

    if ((v18 & 1) == 0)
    {
      return 10;
    }
  }

  return 9;
}

uint64_t sub_268356B84()
{
  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v0, v1);
  OUTLINED_FUNCTION_61();
  v2 = sub_2683CD5C8();
  v10 = OUTLINED_FUNCTION_48_10(v2, v3, v4, v5, v6, v7, v8, v9, v18, v19, SWORD2(v19), SBYTE6(v19), HIBYTE(v19));
  if (v12)
  {
    goto LABEL_14;
  }

  v12 = sub_2683551E8(v10) == 0x657461657263 && v11 == 0xE600000000000000;
  if (v12)
  {
  }

  else
  {
    v13 = OUTLINED_FUNCTION_51_8();

    if ((v13 & 1) == 0)
    {
LABEL_14:
      v14 = 0;
      return v14 & 1;
    }
  }

  if (qword_28024CB70 != -1)
  {
    OUTLINED_FUNCTION_33();
  }

  OUTLINED_FUNCTION_61();
  sub_2683CD5C8();
  if (v20 == 7)
  {
    goto LABEL_14;
  }

  if (sub_268355614(v20) == 1702129518 && v16 == 0xE400000000000000)
  {

    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_50_10();
  }

  return v14 & 1;
}

uint64_t sub_268356D04()
{
  if (sub_268356D5C(0) & 1) != 0 || (sub_268356D5C(3) & 1) != 0 || (sub_268356D5C(1))
  {
    return 1;
  }

  return sub_268356D5C(5);
}

uint64_t sub_268356D5C(char a1)
{
  if (qword_28024CB70 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_26835844C(&qword_28024CDA8, type metadata accessor for NotebookNLv3Intent);
  sub_2683CD5C8();
  if (v23 != 7)
  {
    v3 = sub_268355614(v23);
    v5 = v4;
    if (v3 == sub_268355614(a1) && v5 == v6)
    {
      goto LABEL_28;
    }

    v8 = sub_2683D0598();

    if (v8)
    {
LABEL_22:
      v2 = 1;
      return v2 & 1;
    }
  }

  if (qword_28024CB78 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v22 != 7)
  {
    v9 = sub_268355614(v22);
    v11 = v10;
    if (v9 == sub_268355614(a1) && v11 == v12)
    {
      goto LABEL_28;
    }

    v14 = sub_2683D0598();

    if (v14)
    {
      goto LABEL_22;
    }
  }

  if (qword_28024CC18 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v21 != 7)
  {
    v15 = sub_268355614(v21);
    v17 = v16;
    if (v15 != sub_268355614(a1) || v17 != v18)
    {
      v2 = sub_2683D0598();
LABEL_29:

      return v2 & 1;
    }

LABEL_28:
    v2 = 1;
    goto LABEL_29;
  }

  v2 = 0;
  return v2 & 1;
}

BOOL sub_268356FF8()
{
  if (qword_28024CB70 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_26835844C(&qword_28024CDA8, type metadata accessor for NotebookNLv3Intent);
  sub_2683CD5C8();
  if (v3 != 7)
  {
    return 0;
  }

  if (qword_28024CB78 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v2 != 7)
  {
    return 0;
  }

  if (qword_28024CC18 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  return v1 == 7;
}

BOOL sub_268357170()
{
  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v0, v1);
  OUTLINED_FUNCTION_44_12();
  v2 = sub_2683CD5C8();
  v10 = OUTLINED_FUNCTION_48_10(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, SWORD2(v18), SBYTE6(v18), HIBYTE(v18));
  if (v14)
  {
    return 0;
  }

  v12 = sub_2683551E8(v10);
  v14 = v12 == 0x657461657263 && v13 == 0xE600000000000000;
  if (v14)
  {

    return (sub_268356D04() & 1) != 0 || sub_268356FF8();
  }

  OUTLINED_FUNCTION_61();
  v15 = OUTLINED_FUNCTION_51_8();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  return (sub_268356D04() & 1) != 0 || sub_268356FF8();
}

void sub_268357270()
{
  OUTLINED_FUNCTION_130();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D390, &qword_2683D22E8);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_56_5();
  if (qword_28024CBF8 != -1)
  {
    OUTLINED_FUNCTION_26_23();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v10, v11);
  OUTLINED_FUNCTION_61();
  v12 = *(sub_2683CD5D8() + 16);

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    if (qword_28024CBA0 != -1)
    {
      OUTLINED_FUNCTION_6_35();
    }

    OUTLINED_FUNCTION_61();
    sub_2683CD5C8();
    v14 = sub_2683CD358();
    v13 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v14);
    sub_26812D9E0(v1, &qword_28024D398, &qword_2683D22F0);
    if (EnumTagSinglePayload == 1)
    {
      sub_268352FE8();
      type metadata accessor for NotebookLocationIntentNode(0);
      v16 = OUTLINED_FUNCTION_8_8();
      v19 = __swift_getEnumTagSinglePayload(v16, v17, v18);
      sub_26812D9E0(v0, &qword_28024D390, &qword_2683D22E8);
      if (v19 == 1)
      {
        if (qword_28024CB88 != -1)
        {
          OUTLINED_FUNCTION_25_25();
        }

        OUTLINED_FUNCTION_61();
        sub_2683CD5C8();
        v13 = v23 != 35;
      }
    }
  }

  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53();
  }

  OUTLINED_FUNCTION_61();
  sub_2683CD5C8();
  if (v24 != 12)
  {
    if (sub_2683551E8(v24) == 0x796669646F6DLL && v20 == 0xE600000000000000)
    {

      if (v13)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v22 = OUTLINED_FUNCTION_51_8();

      if (v13 || (v22 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if ((sub_268356D04() & 1) == 0)
    {
      sub_268356FF8();
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_131();
}

uint64_t sub_268357548()
{
  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v0, v1);
  OUTLINED_FUNCTION_44_12();
  v2 = sub_2683CD5C8();
  v10 = OUTLINED_FUNCTION_48_10(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, SWORD2(v18), SBYTE6(v18), HIBYTE(v18));
  if (!v14)
  {
    v12 = sub_2683551E8(v10);
    v14 = v12 == 0x657A6F6F6E73 && v13 == 0xE600000000000000;
    if (v14)
    {

LABEL_13:
      v11 = sub_268356D5C(4) ^ 1;
      return v11 & 1;
    }

    OUTLINED_FUNCTION_61();
    v15 = OUTLINED_FUNCTION_51_8();

    if (v15)
    {
      goto LABEL_13;
    }
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_268357668()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B0, &qword_2683D2328);
  OUTLINED_FUNCTION_23(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_28_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802537A0, &qword_2683F3DD0);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802537A8, &qword_2683F3DD8);
  OUTLINED_FUNCTION_23(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  sub_2683531D0();
  v17 = sub_2683CD4A8();
  v18 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_72(v18, v19, v17);
  if (v30)
  {
    v20 = &qword_28024D3B0;
    v21 = &qword_2683D2328;
    v22 = v0;
LABEL_10:
    sub_26812D9E0(v22, v20, v21);
LABEL_11:

    return sub_2683556BC();
  }

  sub_2683CD498();
  OUTLINED_FUNCTION_23_0(v17);
  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_40_15();
  v26(v25);
  v27 = sub_2683CD258();
  v28 = OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_72(v28, v29, v27);
  if (v30)
  {
    v20 = &qword_2802537A0;
    v21 = &qword_2683F3DD0;
    v22 = v10;
    goto LABEL_10;
  }

  sub_2683CD248();
  OUTLINED_FUNCTION_23_0(v27);
  (*(v31 + 8))(v10, v27);
  v32 = sub_2683CD648();
  OUTLINED_FUNCTION_72(v16, 1, v32);
  if (v33)
  {
    v20 = &qword_2802537A8;
    v21 = &qword_2683F3DD8;
    v22 = v16;
    goto LABEL_10;
  }

  sub_2683CD638();
  v36 = v35;
  OUTLINED_FUNCTION_23_0(v32);
  (*(v37 + 8))(v16, v32);
  if (!v36)
  {
    goto LABEL_11;
  }

  return sub_2683556BC();
}

uint64_t sub_268357904(uint64_t a1)
{
  v2 = sub_26835844C(&qword_280253778, type metadata accessor for NotebookNLv3Intent);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268357980(uint64_t a1)
{
  v2 = sub_26835844C(&qword_280253778, type metadata accessor for NotebookNLv3Intent);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_2683579EC(uint64_t a1)
{
  v2 = sub_26835844C(&qword_280253778, type metadata accessor for NotebookNLv3Intent);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_268357A84(uint64_t a1)
{
  v2 = sub_26835844C(&qword_280253828, type metadata accessor for NotebookLocationIntentNode);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_268357B00(uint64_t a1)
{
  v2 = sub_26835844C(&qword_280253828, type metadata accessor for NotebookLocationIntentNode);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_268357B6C()
{
  sub_2683CD138();
  sub_2683CD118();
  v0 = sub_2683CCFB8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CCF98();
  qword_28027CD70 = result;
  return result;
}

uint64_t sub_268357C14(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_0();
  v4 = sub_2683CD628();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v12 = v11 - v10;
  (*(v7 + 16))(v11 - v10, v2, v4);
  v13 = type metadata accessor for NotebookContactTriggerNode(0);
  v14 = OUTLINED_FUNCTION_42_3(v13);
  (*(v7 + 32))(v14 + OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_intentNode, v12, v4);
  *(v14 + OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_ontologyNode) = a2;

  return v14;
}

void sub_268357D18()
{
  OUTLINED_FUNCTION_130();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_56_5();
  v7 = sub_2683CD628();
  v8 = OUTLINED_FUNCTION_0_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v15 = v14 - v13;
  if (qword_28024CC40 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookContactTriggerNode(0);
  sub_26835844C(&qword_2802535E0, type metadata accessor for NotebookContactTriggerNode);
  OUTLINED_FUNCTION_32_3();
  sub_2683CD5A8();
  OUTLINED_FUNCTION_2_6(v0);
  if (v16)
  {
    sub_26812D9E0(v0, &qword_2802535F8, &unk_2683F32E0);
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0;
  }

  else
  {
    v17 = *(v10 + 32);
    v18 = OUTLINED_FUNCTION_40_15();
    v19(v18);
    v20 = type metadata accessor for NotebookContactTriggerPersonIntentNode(0);
    *(v2 + 24) = v20;
    *(v2 + 32) = sub_26835844C(&qword_280253630, type metadata accessor for NotebookContactTriggerPersonIntentNode);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2);
    (*(v10 + 16))(boxed_opaque_existential_0, v15, v7);
    v22 = type metadata accessor for NotebookContactTriggerPersonOntologyNode(0);
    OUTLINED_FUNCTION_42_3(v22);
    OUTLINED_FUNCTION_13_35(28);
    v23 = sub_2682DAC6C();
    (*(v10 + 8))(v15, v7);
    *(boxed_opaque_existential_0 + *(v20 + 20)) = v23;
  }

  OUTLINED_FUNCTION_131();
}

uint64_t sub_268357F94()
{
  v1 = OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_intentNode;
  v2 = sub_2683CD628();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_ontologyNode);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_268358060()
{
  result = sub_2683CD628();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_268358164@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_intentNode;
  v5 = sub_2683CD628();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2683581F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_268357C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26835821C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C1928](a1, WitnessTable);
}

uint64_t sub_268358280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C1920](a1, WitnessTable);
}

uint64_t sub_2683582D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D1EC0;
  v1 = type metadata accessor for NotebookContactTriggerPersonOntologyNode(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_2682DAC6C();
  v5 = MEMORY[0x277D5E210];
  *(v0 + 56) = v1;
  *(v0 + 64) = v5;
  *(v0 + 32) = v4;
  v6 = sub_2683CCFB8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = sub_2683CCF98();
  qword_28027CD78 = result;
  return result;
}

uint64_t sub_26835844C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookContentEntity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.LocationCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotebookNLv3Intent.NotebookAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookVerb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookNoun(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268358B90()
{
  result = sub_2683CE448();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_268358C90()
{
  result = qword_280253658;
  if (!qword_280253658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253658);
  }

  return result;
}

unint64_t sub_268358D2C()
{
  result = qword_280253670;
  if (!qword_280253670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253670);
  }

  return result;
}

unint64_t sub_268358D84()
{
  result = qword_280253678;
  if (!qword_280253678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253678);
  }

  return result;
}

unint64_t sub_268358DDC()
{
  result = qword_280253680;
  if (!qword_280253680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253680);
  }

  return result;
}

unint64_t sub_268358E78()
{
  result = qword_280253698;
  if (!qword_280253698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253698);
  }

  return result;
}

unint64_t sub_268358ED0()
{
  result = qword_2802536A0;
  if (!qword_2802536A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536A0);
  }

  return result;
}

unint64_t sub_268358F70()
{
  result = qword_2802536B0;
  if (!qword_2802536B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536B0);
  }

  return result;
}

unint64_t sub_26835900C()
{
  result = qword_2802536C8;
  if (!qword_2802536C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536C8);
  }

  return result;
}

unint64_t sub_268359064()
{
  result = qword_2802536D0;
  if (!qword_2802536D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536D0);
  }

  return result;
}

unint64_t sub_2683590BC()
{
  result = qword_2802536D8;
  if (!qword_2802536D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536D8);
  }

  return result;
}

unint64_t sub_268359158()
{
  result = qword_2802536F0;
  if (!qword_2802536F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536F0);
  }

  return result;
}

unint64_t sub_2683591B0()
{
  result = qword_2802536F8;
  if (!qword_2802536F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536F8);
  }

  return result;
}

unint64_t sub_268359208()
{
  result = qword_280253700;
  if (!qword_280253700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253700);
  }

  return result;
}

unint64_t sub_2683592A4()
{
  result = qword_280253718;
  if (!qword_280253718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253718);
  }

  return result;
}

unint64_t sub_2683592FC()
{
  result = qword_280253720;
  if (!qword_280253720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253720);
  }

  return result;
}

unint64_t sub_268359354()
{
  result = qword_280253728;
  if (!qword_280253728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253728);
  }

  return result;
}

unint64_t sub_2683593F0()
{
  result = qword_280253740;
  if (!qword_280253740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253740);
  }

  return result;
}

unint64_t sub_268359448()
{
  result = qword_280253748;
  if (!qword_280253748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253748);
  }

  return result;
}

unint64_t sub_2683594A0()
{
  result = qword_280253750;
  if (!qword_280253750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253750);
  }

  return result;
}

unint64_t sub_26835953C()
{
  result = qword_280253768;
  if (!qword_280253768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253768);
  }

  return result;
}

unint64_t sub_268359594()
{
  result = qword_280253770;
  if (!qword_280253770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253770);
  }

  return result;
}

unint64_t sub_2683595E8()
{
  result = qword_2802537B0;
  if (!qword_2802537B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537B0);
  }

  return result;
}

unint64_t sub_26835963C()
{
  result = qword_2802537B8;
  if (!qword_2802537B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537B8);
  }

  return result;
}

unint64_t sub_268359690()
{
  result = qword_2802537C0;
  if (!qword_2802537C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537C0);
  }

  return result;
}

unint64_t sub_2683596E4()
{
  result = qword_2802537C8;
  if (!qword_2802537C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537C8);
  }

  return result;
}

unint64_t sub_268359738()
{
  result = qword_2802537D0;
  if (!qword_2802537D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537D0);
  }

  return result;
}

unint64_t sub_26835978C()
{
  result = qword_2802537D8;
  if (!qword_2802537D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537D8);
  }

  return result;
}

unint64_t sub_2683597E0()
{
  result = qword_2802537E0;
  if (!qword_2802537E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537E0);
  }

  return result;
}

unint64_t sub_268359834()
{
  result = qword_2802537E8;
  if (!qword_2802537E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537E8);
  }

  return result;
}

unint64_t sub_268359888()
{
  result = qword_2802537F0;
  if (!qword_2802537F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537F0);
  }

  return result;
}

unint64_t sub_2683598DC()
{
  result = qword_2802537F8;
  if (!qword_2802537F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537F8);
  }

  return result;
}

unint64_t sub_268359930()
{
  result = qword_280253800;
  if (!qword_280253800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253800);
  }

  return result;
}

unint64_t sub_268359984()
{
  result = qword_280253808;
  if (!qword_280253808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253808);
  }

  return result;
}

unint64_t sub_2683599D8()
{
  result = qword_280253810;
  if (!qword_280253810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253810);
  }

  return result;
}

unint64_t sub_268359A2C()
{
  result = qword_280253818;
  if (!qword_280253818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253818);
  }

  return result;
}

unint64_t sub_268359A80()
{
  result = qword_280253820;
  if (!qword_280253820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253820);
  }

  return result;
}

unint64_t sub_268359AD4()
{
  result = qword_280253830;
  if (!qword_280253830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253830);
  }

  return result;
}

unint64_t sub_268359B28()
{
  result = qword_280253838;
  if (!qword_280253838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253838);
  }

  return result;
}

unint64_t sub_268359B7C()
{
  result = qword_280253840;
  if (!qword_280253840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253840);
  }

  return result;
}

unint64_t sub_268359BD0()
{
  result = qword_280253848;
  if (!qword_280253848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253848);
  }

  return result;
}

unint64_t sub_268359C24()
{
  result = qword_280253850;
  if (!qword_280253850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253850);
  }

  return result;
}

unint64_t sub_268359C78()
{
  result = qword_280253858;
  if (!qword_280253858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253858);
  }

  return result;
}

uint64_t sub_268359CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2683CD628();
  OUTLINED_FUNCTION_1(v8);
  (*(v9 + 16))(a4, a1);
  *(a4 + *(a3(0) + 20)) = a2;
}

uint64_t sub_268359D7C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a2, v2, v5);
}

uint64_t sub_268359E0C(uint64_t a1)
{
  v2 = sub_26835844C(&qword_2802538B8, type metadata accessor for AppIntentNode);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_268359E88(uint64_t a1)
{
  v2 = sub_26835844C(&qword_2802538B8, type metadata accessor for AppIntentNode);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_268359EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentNode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268359F58(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_268359FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.PersonPlaceName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2683CD628();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_47_0();
  result = sub_2683CD628();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_52_7();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_26835A2A0()
{
  result = qword_280253890;
  if (!qword_280253890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253890);
  }

  return result;
}

unint64_t sub_26835A33C()
{
  result = qword_2802538A8;
  if (!qword_2802538A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802538A8);
  }

  return result;
}

unint64_t sub_26835A394()
{
  result = qword_2802538B0;
  if (!qword_2802538B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802538B0);
  }

  return result;
}

unint64_t sub_26835A3E8()
{
  result = qword_2802538C0;
  if (!qword_2802538C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802538C0);
  }

  return result;
}

unint64_t sub_26835A43C()
{
  result = qword_2802538C8;
  if (!qword_2802538C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802538C8);
  }

  return result;
}

unint64_t sub_26835A490()
{
  result = qword_2802538D0;
  if (!qword_2802538D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802538D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_53()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_48()
{

  return sub_268359FB4(v0, type metadata accessor for NotebookLocationIntentNode);
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_9()
{
}

uint64_t OUTLINED_FUNCTION_50_10()
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_51_8()
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return sub_2683CD5A8();
}

uint64_t OUTLINED_FUNCTION_58_5()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_59_5(unint64_t *a1)
{

  return sub_26818A0C8(a1, v1, v2);
}

uint64_t sub_26835A848()
{
  v1 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_title;
  sub_2683CF168();
  OUTLINED_FUNCTION_23_24(v0 + v1);
  OUTLINED_FUNCTION_23_24(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_textContent);
  OUTLINED_FUNCTION_23_24(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_groupName);
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_createdDate) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_modifiedDate) = 0;
  v2 = v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_attachmentCount;
  *v2 = 0;
  *(v2 + 8) = 1;
  return v0;
}

uint64_t sub_26835A8F4()
{
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_title);
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_textContent);
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_groupName);
  v1 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_createdDate);

  v2 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_modifiedDate);

  return v0;
}

uint64_t *sub_26835A990(uint64_t a1)
{
  v1[2] = 0;
  v3 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_title;
  swift_beginAccess();
  sub_26816349C(a1 + v3, v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title);
  v4 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_textContent;
  swift_beginAccess();
  sub_26816349C(a1 + v4, v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent);
  v5 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_groupName;
  swift_beginAccess();
  sub_26816349C(a1 + v5, v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_groupName);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_createdDate) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_createdDate);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_modifiedDate) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_modifiedDate);
  v6 = *(a1 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_attachmentCount + 8);
  v7 = v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_attachmentCount;
  *v7 = *(a1 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_attachmentCount);
  v7[8] = v6;

  if (!sub_26835ABB8())
  {
    v8 = sub_2683CF208();
    sub_2683CFE78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253240, &qword_2683F1440);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2683D1EC0;
    v14 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253938, &qword_2683F4268);
    v10 = sub_2683CFAD8();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_268327B74();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_2683CF708();
  }

  return v1;
}

BOOL sub_26835ABB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_19_3();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_26816349C(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title, &v13 - v7);
  v9 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);
  sub_26812E924(v8);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  sub_26816349C(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent, v5);
  v11 = __swift_getEnumTagSinglePayload(v5, 1, v9) != 1;
  sub_26812E924(v5);
  return v11;
}

uint64_t sub_26835ACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_19_3();
  v11 = v9 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v18 || (OUTLINED_FUNCTION_2_23() & 1) != 0)
  {
    sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title, v17);
    v19 = sub_2683CF168();
    OUTLINED_FUNCTION_4_6(v17);
    if (!v18)
    {
      goto LABEL_25;
    }

    v20 = v17;
    goto LABEL_9;
  }

  v23 = a1 == OUTLINED_FUNCTION_11_38() && a2 == v22;
  if (v23 || (OUTLINED_FUNCTION_2_23() & 1) != 0)
  {
    sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent, v15);
    v19 = sub_2683CF168();
    OUTLINED_FUNCTION_4_6(v15);
    if (!v18)
    {
      goto LABEL_25;
    }

    v20 = v15;
LABEL_9:
    result = sub_26812E924(v20);
LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v24 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
  if (v24 || (OUTLINED_FUNCTION_2_23() & 1) != 0)
  {
    sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_groupName, v11);
    v19 = sub_2683CF168();
    OUTLINED_FUNCTION_4_6(v11);
    if (!v18)
    {
LABEL_25:
      *(a3 + 24) = v19;
      __swift_allocate_boxed_opaque_existential_0(a3);
      OUTLINED_FUNCTION_18_28();
      return (*(v25 + 32))();
    }

    v20 = v11;
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_12_27();
  v27 = a1 == result && a2 == v26;
  if (v27 || (result = OUTLINED_FUNCTION_2_23(), (result & 1) != 0))
  {
    v28 = OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_createdDate;
  }

  else
  {
    result = OUTLINED_FUNCTION_10_31();
    if (a1 != result || a2 != v30)
    {
      result = OUTLINED_FUNCTION_2_23();
      if ((result & 1) == 0)
      {
        result = OUTLINED_FUNCTION_8_35();
        if (a1 != result || a2 != v32)
        {
          result = OUTLINED_FUNCTION_2_23();
          if ((result & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        if (*(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_attachmentCount + 8))
        {
          goto LABEL_10;
        }

        v34 = *(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_attachmentCount);
        *(a3 + 24) = MEMORY[0x277D839F8];
        *a3 = v34;
        return result;
      }
    }

    v28 = OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_modifiedDate;
  }

  v29 = *(v3 + v28);
  if (!v29)
  {
    goto LABEL_10;
  }

  *(a3 + 24) = sub_2683CEFE8();
  *a3 = v29;
}

uint64_t sub_26835B014()
{
  v0 = sub_2683D0408();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26835B064(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_11_38();
      break;
    case 2:
      result = 0x6D614E70756F7267;
      break;
    case 3:
      result = OUTLINED_FUNCTION_12_27();
      break;
    case 4:
      result = OUTLINED_FUNCTION_10_31();
      break;
    case 5:
      result = OUTLINED_FUNCTION_8_35();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26835B118(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2681EA9AC();
}

uint64_t sub_26835B13C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26835B014();
  *a2 = result;
  return result;
}

uint64_t sub_26835B16C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26835B064(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26835B1A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26835B060();
  *a1 = result;
  return result;
}

uint64_t sub_26835B1D4(uint64_t a1)
{
  v2 = sub_26835BE5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26835B210(uint64_t a1)
{
  v2 = sub_26835BE5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26835B24C()
{
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title);
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent);
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_groupName);
  v1 = *(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_createdDate);

  v2 = *(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_modifiedDate);

  return v0;
}

uint64_t sub_26835B2D4(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_26835B358()
{
  sub_2681E12BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26835B404(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253918, &qword_2683F4108);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26835BE5C();
  sub_2683D0718();
  LOBYTE(v22) = 0;
  sub_2683CF168();
  OUTLINED_FUNCTION_3_46();
  sub_26835BE14(v14, v15);
  OUTLINED_FUNCTION_0_65();
  if (!v2)
  {
    LOBYTE(v22) = 1;
    OUTLINED_FUNCTION_0_65();
    LOBYTE(v22) = 2;
    OUTLINED_FUNCTION_0_65();
    v22 = *(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_createdDate);
    HIBYTE(v21) = 3;
    sub_2683CEFE8();
    OUTLINED_FUNCTION_2_54();
    sub_26835BE14(v16, v17);
    OUTLINED_FUNCTION_0_65();
    v22 = *(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_modifiedDate);
    HIBYTE(v21) = 4;
    OUTLINED_FUNCTION_0_65();
    v18 = *(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_attachmentCount);
    v19 = *(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_attachmentCount + 8);
    LOBYTE(v22) = 5;
    sub_2683D04E8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_26835B670(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_26835B790(a1);
  return v5;
}

void sub_26835B6E8()
{
  sub_2681E12BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26835B790(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_19_3();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v37 - v11;
  MEMORY[0x28223BE20](v10);
  v38 = v37 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253908, &qword_2683F4100);
  v14 = OUTLINED_FUNCTION_0_3(v39);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = v37 - v19;
  v41 = v1;
  v42 = a1;
  *(v1 + 16) = 0;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26835BE5C();
  v40 = v20;
  sub_2683D06F8();
  if (v2)
  {
    v28 = v41;

    type metadata accessor for NotebookNoteConcept(0);
    v25 = *(*v28 + 48);
    v26 = *(*v28 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37[1] = v16;
    sub_2683CF168();
    LOBYTE(v44) = 0;
    OUTLINED_FUNCTION_3_46();
    sub_26835BE14(v22, v23);
    v24 = v38;
    OUTLINED_FUNCTION_7_31();
    sub_2683D0468();
    v28 = v41;
    sub_2681E1A1C(v24, v41 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title);
    LOBYTE(v44) = 1;
    OUTLINED_FUNCTION_7_31();
    sub_2683D0468();
    sub_2681E1A1C(v12, v28 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent);
    LOBYTE(v44) = 2;
    OUTLINED_FUNCTION_7_31();
    sub_2683D0468();
    sub_2681E1A1C(v8, v28 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_groupName);
    sub_2683CEFE8();
    v43 = 3;
    OUTLINED_FUNCTION_2_54();
    sub_26835BE14(v29, v30);
    sub_2683D0468();
    *(v28 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_createdDate) = v44;
    v43 = 4;
    sub_2683D0468();
    *(v28 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_modifiedDate) = v44;
    LOBYTE(v44) = 5;
    v31 = sub_2683D0448();
    v33 = v32;
    v34 = OUTLINED_FUNCTION_1_58();
    v35(v34);
    v36 = v28 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_attachmentCount;
    *v36 = v31;
    *(v36 + 8) = v33 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v42);
  return v28;
}

uint64_t sub_26835BD34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26835B670(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26835BE14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26835BE5C()
{
  result = qword_280253910;
  if (!qword_280253910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNoteConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26835BF90()
{
  result = qword_280253920;
  if (!qword_280253920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253920);
  }

  return result;
}

unint64_t sub_26835BFE8()
{
  result = qword_280253928;
  if (!qword_280253928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253928);
  }

  return result;
}

unint64_t sub_26835C040()
{
  result = qword_280253930;
  if (!qword_280253930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253930);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_65()
{

  return sub_2683D0508();
}

uint64_t sub_26835C190(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_26835C1B0, 0, 0);
}

uint64_t sub_26835C1B0()
{
  v1 = v0[8];
  v2 = [objc_allocWithZone(MEMORY[0x277D4C328]) init];
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_2683CC208();
  [v2 setTitle_];

  if (v1[3])
  {
    v6 = *(v0[8] + 16);
    v7 = sub_2683CC208();
    [v2 setFootnote_];
  }

  v8 = v0[8];
  v9 = *(v8 + 32);
  if (v9 != 2)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D4C1F0]) init];
    [v10 setIsSelected_];
    [v2 setButton_];

    v8 = v0[8];
  }

  v11 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  v0[2] = v11;
  v0[3] = sub_26816B178;
  v0[4] = 0;
  v0[5] = sub_26816B19C;
  v0[6] = 0;
  v13 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E840, &qword_2683D8200);
  sub_2681B4CB8();
  v14 = sub_2683CFA38();
  v16 = v15;

  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  sub_2681B2EE4(v12, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2683D1EC0;
  *(v17 + 32) = sub_26839EEEC(v13, *(v8 + 48));
  *(v17 + 40) = v18;

  v19 = v0[1];

  return v19(v17);
}

uint64_t sub_26835C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v56 = a1;
  v54 = a3;
  v55 = a4;
  v9 = sub_2683CF738();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v17 = sub_2683CF768();
  __swift_project_value_buffer(v17, qword_28027C9A0);
  sub_2683CF728();
  v18 = sub_2683CF758();
  v19 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v20 = swift_slowAlloc();
    v53 = a2;
    v21 = a5;
    v22 = a6;
    v23 = v20;
    *v20 = 0;
    v24 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v18, v19, v24, "AppResolver#resolve", "", v23, 2u);
    v25 = v23;
    a6 = v22;
    a5 = v21;
    a2 = v53;
    MEMORY[0x26D617A40](v25, -1, -1);
  }

  (*(v10 + 16))(v14, v16, v9);
  v26 = sub_2683CF7A8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_2683CF798();
  (*(v10 + 8))(v16, v9);
  if (a2 == 1)
  {
    v29 = v57;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v30 = sub_2683CF7E8();
    __swift_project_value_buffer(v30, qword_28027C958);
    v31 = sub_2683CF7C8();
    v32 = sub_2683CFE98();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_11;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "[AppResolver] No app specified. Using inferredAppResolver to resolve one.";
    goto LABEL_10;
  }

  v29 = v57;
  v36 = v57[15];
  if (v36)
  {
    v37 = v36 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_appResolutionType;
    *v37 = 9;
    *(v37 + 4) = 0;
    sub_2682174F0();
  }

  if (!a2 || (v38 = v29[3], v39 = v29[4], __swift_project_boxed_opaque_existential_1(v29, v38), (v40 = (*(v39 + 8))(v56, a2, v38, v39)) == 0))
  {
    v49 = v55;
    if (v55)
    {
      __swift_project_boxed_opaque_existential_1(v29 + 5, v29[8]);
      v35 = sub_268362710(v54, v49);
      goto LABEL_19;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v51 = sub_2683CF7E8();
    __swift_project_value_buffer(v51, qword_28027C958);
    v31 = sub_2683CF7C8();
    v32 = sub_2683CFE88();
    if (!os_log_type_enabled(v31, v32))
    {
LABEL_11:

      __swift_project_boxed_opaque_existential_1(v29 + 10, v29[13]);
      v35 = sub_2681C63DC(a5, a6);
LABEL_19:
      v48 = v35;
      goto LABEL_20;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "[AppResolver] NLApp has nil name and id, falling back to inferred app resolver.";
LABEL_10:
    _os_log_impl(&dword_2680EB000, v31, v32, v34, v33, 2u);
    MEMORY[0x26D617A40](v33, -1, -1);
    goto LABEL_11;
  }

  v44 = v40;
  v45 = v41;
  v46 = v42;
  v47 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB30, &unk_2683D92F0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2683D1EC0;
  *(v48 + 32) = v44;
  *(v48 + 40) = v45;
  *(v48 + 48) = v46;
  *(v48 + 56) = v47;
LABEL_20:
  sub_26835C8A4();

  return v48;
}

uint64_t sub_26835C8A4()
{
  v0 = sub_2683CF778();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF738();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v10 = sub_2683CF768();
  __swift_project_value_buffer(v10, qword_28027C9A0);
  v11 = sub_2683CF758();
  sub_2683CF788();
  v12 = sub_2683CFEE8();
  if (sub_2683CFF88())
  {

    sub_2683CF7B8();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v11, v12, v15, "AppResolver#resolve", v13, v14, 2u);
    MEMORY[0x26D617A40](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26835CB38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_26835CB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Snippet.AddTasks3p.reminders.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Snippet.AddTasks3p.list.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x61uLL);
  memcpy(a1, (v1 + 8), 0x61uLL);
  return sub_26835CC90(__dst, &v4);
}

uint64_t sub_26835CC90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C0, &unk_2683D2C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *Snippet.AddTasks3p.list.setter(const void *a1)
{
  memcpy(__dst, (v1 + 8), 0x61uLL);
  sub_26835CD50(__dst);
  return memcpy((v1 + 8), a1, 0x61uLL);
}

uint64_t sub_26835CD50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C0, &unk_2683D2C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Snippet.AddTasks3p()
{
  result = qword_280253958;
  if (!qword_280253958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.AddTasks3p.interaction.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Snippet.AddTasks3p() + 24);

  return sub_2681D62B8(a1, v3);
}

uint64_t Snippet.AddTasks3p.init(reminders:list:interaction:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = a4 + 1;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  sub_26835CD50(v10);
  memcpy(v7, a2, 0x61uLL);
  v8 = type metadata accessor for Snippet.AddTasks3p();
  return sub_26835CF80(a3, a4 + *(v8 + 24));
}

uint64_t sub_26835CF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Interaction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26835CFE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1953720684 && a2 == 0xE400000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_2683D0598();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26835D100(char a1)
{
  if (!a1)
  {
    return 0x7265646E696D6572;
  }

  if (a1 == 1)
  {
    return 1953720684;
  }

  return 0x7463617265746E69;
}

uint64_t sub_26835D164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26835CFE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26835D18C(uint64_t a1)
{
  v2 = sub_26835D47C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26835D1C8(uint64_t a1)
{
  v2 = sub_26835D47C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.AddTasks3p.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253940, &qword_2683F4348);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26835D47C();
  sub_2683D0718();
  v22 = *v3;
  __dst[103] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
  sub_26835D8C0(&qword_28024D880, &qword_28024D888);
  OUTLINED_FUNCTION_3_47();
  if (!v2)
  {
    memcpy(__dst, v3 + 1, 0x61uLL);
    memcpy(v20, v3 + 1, sizeof(v20));
    v19[103] = 1;
    sub_26835CC90(__dst, v19);
    sub_26814F7E8();
    sub_2683D0508();
    memcpy(v19, v20, 0x61uLL);
    sub_26835CD50(v19);
    v14 = *(type metadata accessor for Snippet.AddTasks3p() + 24);
    v18[15] = 2;
    type metadata accessor for Snippet.Interaction();
    OUTLINED_FUNCTION_0_66();
    sub_26835DAA8(v15, v16);
    OUTLINED_FUNCTION_3_47();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_26835D47C()
{
  result = qword_280253948;
  if (!qword_280253948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253948);
  }

  return result;
}

uint64_t Snippet.AddTasks3p.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for Snippet.Interaction();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253950, &qword_2683F4350);
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v34 = v11;
  v35 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v32 - v14;
  v16 = type metadata accessor for Snippet.AddTasks3p();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v21 + 8) = 0u;
  v38 = a1;
  v39 = v21 + 8;
  v21[104] = 0;
  *(v21 + 88) = 0u;
  *(v21 + 72) = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 40) = 0u;
  *(v21 + 24) = 0u;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26835D47C();
  v36 = v15;
  v23 = v37;
  sub_2683D06F8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v38);
    memcpy(__dst, v39, 0x61uLL);
    return sub_26835CD50(__dst);
  }

  else
  {
    v24 = v34;
    v25 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
    v41[0] = 0;
    sub_26835D8C0(&qword_28024D8F8, &qword_28024D900);
    v26 = v35;
    sub_2683D04A8();
    v37 = __dst[0];
    *v21 = __dst[0];
    v44 = 1;
    sub_26814FCE8();
    sub_2683D0468();
    memcpy(v40, __dst, sizeof(v40));
    v27 = v39;
    memcpy(v41, v39, 0x61uLL);
    sub_26835CD50(v41);
    memcpy(v27, v40, 0x61uLL);
    v43 = 2;
    OUTLINED_FUNCTION_0_66();
    sub_26835DAA8(v28, v29);
    v30 = v36;
    sub_2683D04A8();
    (*(v24 + 8))(v30, v26);
    sub_26835CF80(v25, &v21[*(v16 + 24)]);
    sub_26835D95C(v21, v33, type metadata accessor for Snippet.AddTasks3p);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_26835D9BC(v21);
  }
}

uint64_t sub_26835D8C0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_26835DAA8(a2, type metadata accessor for Snippet.Reminder);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26835D95C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26835D9BC(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.AddTasks3p();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26835DAA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26835DB48()
{
  sub_26835DBE4();
  if (v0 <= 0x3F)
  {
    sub_26835DC3C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Snippet.Interaction();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26835DBE4()
{
  if (!qword_28024D988)
  {
    type metadata accessor for Snippet.Reminder(255);
    v0 = sub_2683CFD28();
    if (!v1)
    {
      atomic_store(v0, &qword_28024D988);
    }
  }
}

void sub_26835DC3C()
{
  if (!qword_28024D950)
  {
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28024D950);
    }
  }
}

_BYTE *_s14descr2878F8F29V10AddTasks3pV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26835DD6C()
{
  result = qword_280253968;
  if (!qword_280253968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253968);
  }

  return result;
}

unint64_t sub_26835DDC4()
{
  result = qword_280253970;
  if (!qword_280253970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253970);
  }

  return result;
}

unint64_t sub_26835DE1C()
{
  result = qword_280253978;
  if (!qword_280253978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253978);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_47()
{

  return sub_2683D0548();
}

unint64_t sub_26835DEA8@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2681DA93C(0xD000000000000017, 0x80000002683FF890);
  if (v3)
  {
    v4 = v3;
    result = sub_26835DFE0();
    a1[3] = result;
    a1[4] = &off_28790B940;
    *a1 = v4;
  }

  else
  {
    result = sub_2683D0388();
    __break(1u);
  }

  return result;
}

id sub_26835DF9C()
{
  v1 = sub_2683CFA68();
  v2 = [v0 BOOLForKey_];

  return v2;
}

unint64_t sub_26835DFE0()
{
  result = qword_28024FA78;
  if (!qword_28024FA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024FA78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CorrectingState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26835E104()
{
  result = qword_280253980;
  if (!qword_280253980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253980);
  }

  return result;
}

uint64_t sub_26835E158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CCC18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a3 + 80))(a2, a3);
  sub_2683CCB88();
  v10(v33, v9, 0);

  (*(v6 + 8))(v9, v5);
  if (v34[24] == 255)
  {
    sub_268167CA4(v33);
  }

  else
  {
    v35[0] = v33[0];
    v35[1] = v33[1];
    v36[0] = *v34;
    *(v36 + 9) = *&v34[9];
    if ((*(a3 + 128))(v35, a2, a3))
    {
      sub_26813A144(v35, v33);
      (*(a3 + 112))(v33, a2, a3);
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v11 = sub_2683CF7E8();
      __swift_project_value_buffer(v11, qword_28027C958);
      swift_unknownObjectRetain();
      v12 = sub_2683CF7C8();
      v13 = sub_2683CFE98();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *&v33[0] = swift_slowAlloc();
        *v14 = 136315394;
        v32[1] = swift_getObjectType();
        swift_getMetatypeMetadata();
        v15 = sub_2683CFAD8();
        sub_2681610A0(v15, v16, v33);

        v17 = OUTLINED_FUNCTION_0_67();
        *(v14 + 14) = sub_2681610A0(v17, v18, v33);
        OUTLINED_FUNCTION_2_55(&dword_2680EB000, v19, v20, "[%s.%s] correction input is accepted");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      sub_26813A1A0(v35);
      return 1;
    }

    sub_26813A1A0(v35);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v22 = sub_2683CF7E8();
  __swift_project_value_buffer(v22, qword_28027C958);
  swift_unknownObjectRetain();
  v23 = sub_2683CF7C8();
  v24 = sub_2683CFE98();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *&v35[0] = swift_slowAlloc();
    *v25 = 136315394;
    *&v33[0] = swift_getObjectType();
    swift_getMetatypeMetadata();
    v26 = sub_2683CFAD8();
    sub_2681610A0(v26, v27, v35);

    v28 = OUTLINED_FUNCTION_0_67();
    *(v25 + 14) = sub_2681610A0(v28, v29, v35);
    OUTLINED_FUNCTION_2_55(&dword_2680EB000, v30, v31, "[%s.%s] unsupported correction input");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_67()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  return 0x6572726F63286E6FLL;
}

void OUTLINED_FUNCTION_2_55(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id sub_26835E5F8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2683CFA68();

  v2 = [v0 initWithSpokenPhrase_];

  return v2;
}

id sub_26835E66C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v38 = a2;
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  if (a1)
  {
    v24 = a1;
  }

  else
  {
    sub_268133FA8();
    v24 = sub_26835E5F8();
  }

  v42 = a6;
  sub_268176AE4(a6, v23);
  v25 = sub_2683CB0D8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v25);
  v37 = a1;
  v27 = 0;
  if (EnumTagSinglePayload != 1)
  {
    v27 = sub_2683CAFD8();
    (*(*(v25 - 8) + 8))(v23, v25);
  }

  sub_268176AE4(a7, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v25) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_2683CAFD8();
    (*(*(v25 - 8) + 8))(v21, v25);
  }

  if (a9)
  {
    v29 = sub_2683CFA68();
  }

  else
  {
    v29 = 0;
  }

  if (a14)
  {
    v30 = sub_2683CFA68();
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v33 = v40;
  v32 = v41;
  v34 = [v31 initWithTitle:v24 status:v38 taskType:v39 spatialEventTrigger:v41 temporalEventTrigger:v40 createdDateComponents:v27 modifiedDateComponents:v28 identifier:v29 priority:a10 contactEventTrigger:a11 taskReference:a12 parentIdentifier:v30];

  sub_2681D9984(a7);
  sub_2681D9984(v42);
  return v34;
}

uint64_t sub_26835E928(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26835E948, 0, 0);
}

uint64_t sub_26835E948()
{
  v2 = v1[3];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v1[5] = 0;
  v1[6] = v4;
  v1[4] = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_3_48(v2);
    OUTLINED_FUNCTION_0_68();
    v12 = v5;
    v6 = *(v0 + 4);
    v7 = swift_task_alloc();
    v1[8] = v7;
    *v7 = v1;
    v8 = OUTLINED_FUNCTION_1_59(v7);

    return v12(v8);
  }

  else
  {
    v10 = v1[1];
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_26835EA48()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  v2[9] = v4;
  v2[10] = v0;

  if (v0)
  {
    v5 = v2[6];
    v6 = v2[7];

    v7 = sub_26835ED4C;
  }

  else
  {
    v7 = sub_26835EB68;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_26835EB68()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  v4 = *(v1 + 16);
  v5 = *(v3 + 16);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = v0[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v0[6];
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v9 + 24) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v4;
    }

    else
    {
      v11 = v5;
    }

    sub_2682E5208(isUniquelyReferenced_nonNull_native, v11, 1, v0[6]);
    v9 = v12;
    v10 = *(v12 + 24) >> 1;
  }

  if (*(v1 + 16))
  {
    if (v10 - *(v9 + 16) >= v4)
    {
      v13 = v0[9];
      swift_arrayInitWithCopy();

      if (!v4)
      {
        goto LABEL_14;
      }

      v14 = *(v9 + 16);
      v15 = __OFADD__(v14, v4);
      v16 = v14 + v4;
      if (!v15)
      {
        *(v9 + 16) = v16;
        goto LABEL_14;
      }

LABEL_24:
      __break(1u);
      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v0[9];

  if (v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v18 = v0[7];

  v19 = v0[4];
  v20 = v0[5] + 1;
  v0[5] = v20;
  v0[6] = v9;
  if (v20 == v19)
  {
    v21 = v0[1];

    v21(v9);
  }

  else
  {
    OUTLINED_FUNCTION_3_48(v0[3] + 16 * v20);
    OUTLINED_FUNCTION_0_68();
    v26 = v22;
    v23 = *(v4 + 4);
    v24 = swift_task_alloc();
    v0[8] = v24;
    *v24 = v0;
    v25 = OUTLINED_FUNCTION_1_59();

    v26(v25);
  }
}

uint64_t sub_26835ED4C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t OUTLINED_FUNCTION_3_48@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = *(a1 + 40);
  v3 = *(a1 + 32);

  return swift_retain_n();
}

uint64_t sub_26835EE70(uint64_t a1, void (*a2)(void *__return_ptr, char *, void))
{
  v3 = sub_2683CCC18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CCB88();
  a2(v37, v7, 0);
  (*(v4 + 8))(v7, v3);
  sub_268167C34(v37, v36);
  if (v36[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v36, v32);
  if (v35 != 2)
  {
    if (v35 == 7)
    {
      v8 = vorrq_s8(v33, v34);
      if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v32[2] | v32[1] | v32[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v24 = sub_2683CF7E8();
        __swift_project_value_buffer(v24, qword_28027C958);
        v25 = sub_2683CF7C8();
        v26 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_45(v26))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v27, v28, "[CreateNote FlowStrategy] returning .cancel()");
          OUTLINED_FUNCTION_38();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v32);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    sub_268167C34(v37, v32);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      sub_268167C34(v32, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v14 = sub_2683CFAD8();
      v16 = v15;
      sub_268167CA4(v32);
      v17 = sub_2681610A0(v14, v16, &v31);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2680EB000, v10, v11, "[CreateNote FlowStrategy] unsupported task, ignoring: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v32);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_268167CA4(v37);
    return sub_268167CA4(v36);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C958);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v20))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v21, v22, "[CreateNote FlowStrategy] returning .handle() for supported task");
    OUTLINED_FUNCTION_38();
  }

  sub_2683CC2A8();
  sub_268167CA4(v37);
  sub_26813A1A0(v32);
  return sub_268167CA4(v36);
}

uint64_t sub_26835F268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a3;
  v4[29] = a4;
  v4[26] = a1;
  v4[27] = a2;
  return MEMORY[0x2822009F8](sub_26835F28C, 0, 0);
}

uint64_t sub_26835F28C()
{
  v41 = v0;
  v1 = *(v0 + 232);
  (*(v0 + 224))(*(v0 + 208), 0);
  sub_268167C34(v0 + 16, v0 + 80);
  v2 = *(v0 + 136);
  if (v2 == 2)
  {
    v4 = *(v0 + 216);
    sub_268128148((v0 + 80), v0 + 144);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v5);
    v7 = (*(v6 + 16))(1, v5, v6);
    v8 = v7;
    if (v4)
    {
      v9 = *(v0 + 216);
      v10 = sub_2682F0120(v7);
    }

    else
    {
      v23 = *(v0 + 168);
      v24 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 144), v23);
      v10 = (*(v24 + 16))(0, v23, v24);
    }

    v25 = v10;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v26 = sub_2683CF7E8();
    __swift_project_value_buffer(v26, qword_28027C958);
    v27 = v25;
    v28 = sub_2683CF7C8();
    v29 = sub_2683CFE98();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v30 = 136315138;
      v32 = v27;
      v33 = [v32 description];
      v34 = sub_2683CFA78();
      v39 = v8;
      v36 = v35;

      v37 = sub_2681610A0(v34, v36, v40);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_2680EB000, v28, v29, "[CreateNote FlowStrategy] Updated intent: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    sub_268167CA4(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 144));
    v38 = *(v0 + 8);

    return v38(v27);
  }

  else
  {
    v3 = v0 + 80;
    if (v2 == 255)
    {
      sub_268167CA4(v3);
    }

    else
    {
      sub_26813A1A0(v3);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v11 = sub_2683CF7E8();
    __swift_project_value_buffer(v11, qword_28027C958);
    sub_268167C34(v0 + 16, v0 + 80);
    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40[0] = v15;
      *v14 = 136315138;
      sub_268167C34(v0 + 80, v0 + 144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v16 = sub_2683CFAD8();
      v18 = v17;
      sub_268167CA4(v0 + 80);
      v19 = sub_2681610A0(v16, v18, v40);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2680EB000, v12, v13, "[CreateNote FlowStrategy] Did not get snoozeTasks task from parse. Got: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v0 + 80);
    }

    sub_26812C6B8();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 4;
    swift_willThrow();
    sub_268167CA4(v0 + 16);
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_26835F6F8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26822F724;

  return sub_26835F268(a1, a2, v7, v6);
}

uint64_t sub_26835F7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26835FE50;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_26835F86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B498] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26835FE50;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_26835F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B490] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26835FE50;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_26835FA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B488] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26835FE50;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_26835FAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B480] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_268323AD4;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26835FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B6D8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_26835FE50;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26835FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C0D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268323920;

  return MEMORY[0x2821BBB48](a1, a2, a3, a4);
}

unint64_t sub_26835FD4C()
{
  result = qword_280253988;
  if (!qword_280253988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253988);
  }

  return result;
}

unint64_t sub_26835FDA4()
{
  result = qword_280253990;
  if (!qword_280253990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253990);
  }

  return result;
}

unint64_t sub_26835FDFC()
{
  result = qword_280253998;
  if (!qword_280253998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253998);
  }

  return result;
}

uint64_t type metadata accessor for NotebookLocationResolver()
{
  result = qword_2802539A0;
  if (!qword_2802539A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26835FEC8()
{
  result = sub_2681F5870();
  if (v1 <= 0x3F)
  {
    result = sub_2683CB668();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26835FF4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2683CE938();
  v3[5] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v3[6] = v5;
  v7 = *(v6 + 64);
  v3[7] = OUTLINED_FUNCTION_15_1();
  v8 = *(*(sub_2683CB7D8() - 8) + 64);
  v3[8] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CB668();
  v3[9] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v3[10] = v10;
  v12 = *(v11 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v13 = sub_2683CE9E8();
  v3[14] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v3[15] = v14;
  v16 = *(v15 + 64);
  v3[16] = OUTLINED_FUNCTION_15_1();
  v17 = sub_2683CE828();
  v3[17] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v3[18] = v18;
  v20 = *(v19 + 64);
  v3[19] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_268360128, 0, 0);
}

uint64_t sub_268360128()
{
  v1 = v0[19];
  v2 = v0[4];
  sub_2683CE818();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_2683601D0;

  return sub_26837E8B8();
}

uint64_t sub_2683601D0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 160);
  v8 = *v4;
  *(v6 + 168) = a1;
  *(v6 + 176) = a2;
  *(v6 + 184) = v3;

  if (v3)
  {

    v9 = sub_268360538;
  }

  else
  {
    *(v6 + 192) = a3;
    v9 = sub_268360304;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_268360304()
{
  if ((*(v0 + 192) & 1) == 0)
  {
    v20 = *(v0 + 176);
    v17 = *(v0 + 168);
  }

  v21 = *(v0 + 184);
  v19 = *(v0 + 152);
  v1 = *(v0 + 128);
  v24 = *(v0 + 144);
  v25 = *(v0 + 136);
  v22 = *(v0 + 120);
  v23 = *(v0 + 112);
  v2 = *(v0 + 104);
  v11 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v12 = *(v0 + 88);
  v13 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v18 = *(v0 + 40);
  v16 = *(v0 + 24);
  v14 = *(v0 + 56);
  v15 = *(v0 + 16);
  v7 = *(type metadata accessor for NotebookLocationResolver() + 20);
  v8 = *(v3 + 16);
  v8(v2, v6 + v7, v4);
  v8(v11, v6 + v7, v4);
  v8(v12, v6 + v7, v4);
  sub_2683CB7C8();
  sub_2683CE9D8();
  sub_2683CE928();
  sub_2683CE808();
  (*(v5 + 8))(v14, v18);
  (*(v22 + 8))(v1, v23);
  (*(v24 + 8))(v19, v25);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_268360538()
{
  v1 = v0[16];
  v21 = v0[18];
  v22 = v0[17];
  v18 = v0[19];
  v19 = v0[15];
  v20 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[9];
  v12 = v0[11];
  v13 = v0[8];
  v6 = v0[6];
  v7 = v0[4];
  v17 = v0[5];
  v16 = v0[3];
  v14 = v0[7];
  v15 = v0[2];
  v8 = *(type metadata accessor for NotebookLocationResolver() + 20);
  v9 = *(v4 + 16);
  v9(v2, v7 + v8, v5);
  v9(v3, v7 + v8, v5);
  v9(v12, v7 + v8, v5);
  sub_2683CB7C8();
  sub_2683CE9D8();
  sub_2683CE928();
  sub_2683CE808();
  (*(v6 + 8))(v14, v17);
  (*(v19 + 8))(v1, v20);
  (*(v21 + 8))(v18, v22);

  v10 = v0[1];

  return v10();
}

uint64_t sub_268360738()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_32();
  v5 = sub_2683CB528();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v13 = v12 - v11;
  sub_26836116C();
  OUTLINED_FUNCTION_72(v0, 1, v5);
  if (v14)
  {
    sub_268184140(v0, &qword_28024DB08, qword_2683D5760);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v13, v0, v5);
    v15 = sub_2683CF018();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_2683CF008();
    sub_2683CB4D8();
    sub_2683CEFF8();

    v18 = sub_2683CF038();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_2683CF028();
    v22 = *(v8 + 8);
    v23 = OUTLINED_FUNCTION_0_0();
    v24(v23);
  }

  return v21;
}

uint64_t sub_2683608FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v2 = OUTLINED_FUNCTION_23(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_3();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = [v0 startDateComponents];
  if (v12)
  {
    v13 = v12;
    sub_2683CAFE8();

    v14 = sub_2683CB0D8();
    v15 = 0;
  }

  else
  {
    v14 = sub_2683CB0D8();
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v15, 1, v14);
  sub_268176BC8(v0, v11);
  sub_2683CB0D8();
  OUTLINED_FUNCTION_72(v11, 1, v14);
  if (v16)
  {
    sub_268184140(v11, &qword_28024D4B0, &unk_2683D26E0);
    return 0;
  }

  else
  {
    sub_2683CEFE8();
    v17 = *(v14 - 8);
    (*(v17 + 16))(v7, v11, v14);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = sub_268216C78(v7);
    (*(v17 + 8))(v11, v14);
  }

  return v21;
}

void sub_268360AF0()
{
  OUTLINED_FUNCTION_30_0();
  v77 = v0;
  v2 = sub_2683CB0D8();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_19_3();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v15 = OUTLINED_FUNCTION_23(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_11_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  sub_2683617C4();
  v22 = v21;
  v23 = [v21 endDateComponents];

  if (!v23)
  {
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v2);
    sub_268184140(v20, &qword_28024D4B0, &unk_2683D26E0);
    sub_2683617C4();
    v28 = v27;
    v23 = [v27 startDateComponents];

    if (!v23)
    {
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v2);
      sub_268184140(v1, &qword_28024D4B0, &unk_2683D26E0);
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v70 = sub_2683CF7E8();
      __swift_project_value_buffer(v70, qword_28027C958);
      v71 = sub_2683CF7C8();
      v72 = sub_2683CFE98();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_2680EB000, v71, v72, "[INDateComponentsRange] Manually adjusted date does not exist, returning resolved time", v73, 2u);
        OUTLINED_FUNCTION_38();
      }

      goto LABEL_30;
    }

    v20 = v1;
  }

  sub_2683CAFE8();

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
  sub_268184140(v20, &qword_28024D4B0, &unk_2683D26E0);
  sub_2683617C4();
  v33 = v32;
  v34 = [v32 endDateComponents];

  if (v34)
  {
    sub_2683CAFE8();

    if (sub_2682D8F20())
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v35 = sub_2683CF7E8();
      __swift_project_value_buffer(v35, qword_28027C958);
      v36 = sub_2683CF7C8();
      v37 = sub_2683CFE98();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2680EB000, v36, v37, "[INDateComponentsRange] Manually adjusted endDateComponents in the past, returning resolved time", v38, 2u);
        OUTLINED_FUNCTION_38();
      }

      (*(v5 + 8))(v13, v2);
LABEL_30:
      OUTLINED_FUNCTION_29_0();

      v76 = v74;
      return;
    }

    (*(v5 + 8))(v13, v2);
  }

  sub_2683617C4();
  v40 = v39;
  v41 = [v39 startDateComponents];

  if (v41)
  {
    sub_2683CAFE8();

    if (sub_2682D8F20())
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v42 = sub_2683CF7E8();
      __swift_project_value_buffer(v42, qword_28027C958);
      v43 = sub_2683CF7C8();
      v44 = sub_2683CFE98();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2680EB000, v43, v44, "[INDateComponentsRange] Manually adjusted startDateComponents in the past, returning resolved time", v45, 2u);
        OUTLINED_FUNCTION_38();
      }

      (*(v5 + 8))(v10, v2);
      goto LABEL_30;
    }

    v46 = *(v5 + 8);
    v47 = OUTLINED_FUNCTION_0_0();
    v48(v47);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v49 = sub_2683CF7E8();
  __swift_project_value_buffer(v49, qword_28027C958);
  v50 = v77;
  v51 = sub_2683CF7C8();
  v52 = sub_2683CFE98();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v53 = 136315394;
    sub_2683617C4();
    v55 = v54;
    v56 = [v54 description];
    v57 = sub_2683CFA78();
    v59 = v58;

    v60 = sub_2681610A0(v57, v59, &v78);

    *(v53 + 4) = v60;
    *(v53 + 12) = 2080;
    v61 = v50;
    v62 = [v61 description];
    v63 = sub_2683CFA78();
    v65 = v64;

    v66 = sub_2681610A0(v63, v65, &v78);

    *(v53 + 14) = v66;
    _os_log_impl(&dword_2680EB000, v51, v52, "[INDateComponentsRange] Manually adjusted witching date components: %s returned instead of non-adjusted: %s", v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  sub_2683617C4();
  OUTLINED_FUNCTION_29_0();
}

void sub_26836116C()
{
  OUTLINED_FUNCTION_30_0();
  v48 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_32();
  v12 = sub_2683CB7A8();
  v13 = OUTLINED_FUNCTION_0_3(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  OUTLINED_FUNCTION_23(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - v25;
  v27 = sub_2683CB0D8();
  v28 = OUTLINED_FUNCTION_0_3(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_3();
  v35 = v34 - v33;
  sub_2683615B0(v26);
  OUTLINED_FUNCTION_72(v26, 1, v27);
  if (v39)
  {
    v36 = &qword_28024D4B0;
    v37 = &unk_2683D26E0;
    v38 = v26;
LABEL_10:
    sub_268184140(v38, v36, v37);
    sub_2683CB528();
    OUTLINED_FUNCTION_4_0();
    goto LABEL_11;
  }

  (*(v30 + 32))(v35, v26, v27);
  sub_2683CB0B8();
  OUTLINED_FUNCTION_72(v0, 1, v12);
  if (v39)
  {
    (*(v30 + 8))(v35, v27);
    v36 = &qword_28024DBB8;
    v37 = &unk_2683D4310;
    v38 = v0;
    goto LABEL_10;
  }

  (*(v15 + 32))(v20, v0, v12);
  sub_2683CB738();
  (*(v15 + 8))(v20, v12);
  (*(v30 + 8))(v35, v27);
  v40 = sub_2683CB528();
  OUTLINED_FUNCTION_72(v7, 1, v40);
  if (v41)
  {
    v36 = &qword_28024DB08;
    v37 = qword_2683D5760;
    v38 = v7;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_23_0(v40);
  (*(v42 + 32))(v48, v7, v40);
  OUTLINED_FUNCTION_10_0();
  v46 = v40;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2683614C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  OUTLINED_FUNCTION_23(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  sub_2683615B0(&v12 - v4);
  v6 = sub_2683CB0D8();
  OUTLINED_FUNCTION_20_30(v5);
  if (v7)
  {
    sub_268184140(v5, &qword_28024D4B0, &unk_2683D26E0);
    v10 = 0;
  }

  else
  {
    v8 = sub_2682D915C();
    OUTLINED_FUNCTION_23_0(v6);
    (*(v9 + 8))(v5, v6);
    v10 = v8 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_2683615B0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_2683CB0D8();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v15 = OUTLINED_FUNCTION_23(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_11_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v21 = [v3 endDateComponents];
  if (v21)
  {
    v22 = v21;
    sub_2683CAFE8();

    v23 = *(v8 + 32);
    v23(v20, v13, v5);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v5);
    v23(a1, v20, v5);
    OUTLINED_FUNCTION_10_0();
    return __swift_storeEnumTagSinglePayload(v27, v28, v29, v5);
  }

  else
  {
    v31 = 1;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v5);
    v35 = [v3 startDateComponents];
    if (v35)
    {
      v36 = v35;
      sub_2683CAFE8();

      v31 = 0;
    }

    __swift_storeEnumTagSinglePayload(v2, v31, 1, v5);
    sub_268176BC8(v2, a1);
    result = OUTLINED_FUNCTION_72(v20, 1, v5);
    if (!v37)
    {
      return sub_268184140(v20, &qword_28024D4B0, &unk_2683D26E0);
    }
  }

  return result;
}

void sub_2683617C4()
{
  OUTLINED_FUNCTION_30_0();
  v156 = sub_2683CB798();
  v2 = OUTLINED_FUNCTION_0_3(v156);
  v145 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  v144 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v9 = OUTLINED_FUNCTION_23(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  v141 = v12 - v13;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_56_3();
  v148 = v15;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_56_3();
  v18 = v17;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v136 - v20;
  v147 = sub_2683CB528();
  v22 = OUTLINED_FUNCTION_0_3(v147);
  v157 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19_3();
  v142 = v26 - v27;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_56_3();
  v154 = v29;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_56_3();
  v140 = v31;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v32);
  v143 = &v136 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v35 = OUTLINED_FUNCTION_23(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19_3();
  v152 = v38 - v39;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_56_3();
  v146 = v41;
  OUTLINED_FUNCTION_8_0();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v136 - v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_56_3();
  v155 = v46;
  OUTLINED_FUNCTION_8_0();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v136 - v49;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_20_31();
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v136 - v53;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18_31();
  v151 = sub_2683CB7A8();
  v55 = OUTLINED_FUNCTION_0_3(v151);
  v149 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_14_3();
  v158 = v60 - v59;
  sub_2683CB768();
  v61 = sub_2683CB0D8();
  v62 = 1;
  v153 = v0;
  v63 = v1;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v61);
  v150 = v54;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v61);
  v70 = [v1 startDateComponents];
  if (v70)
  {
    v71 = v70;
    sub_2683CAFE8();

    v62 = 0;
  }

  __swift_storeEnumTagSinglePayload(v50, v62, 1, v61);
  sub_268176BC8(v50, v1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v61);
  v73 = MEMORY[0x277CC9968];
  v74 = v147;
  if (EnumTagSinglePayload == 1)
  {
    sub_268184140(v1, &qword_28024D4B0, &unk_2683D26E0);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v74);
    v78 = v157;
  }

  else
  {
    sub_2683CB018();
    OUTLINED_FUNCTION_23_0(v61);
    (*(v79 + 8))(v1, v61);
    OUTLINED_FUNCTION_20_30(v21);
    v78 = v157;
    if (!v87)
    {
      v139 = v1;
      v136 = *(v157 + 32);
      v136(v143, v21, v74);
      v80 = *v73;
      v82 = v144;
      v81 = v145;
      v83 = *(v145 + 104);
      v137 = v80;
      v84 = v156;
      v138 = v83;
      v83(v144);
      OUTLINED_FUNCTION_12_28();
      v85 = v18;
      v86 = v74;
      (*(v81 + 8))(v82, v84);
      OUTLINED_FUNCTION_20_30(v85);
      if (v87)
      {
        v78 = v157;
        (*(v157 + 8))(v143, v74);
        sub_268184140(v85, &qword_28024DB08, qword_2683D5760);
      }

      else
      {
        v88 = v140;
        v136(v140, v85, v74);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F310, &unk_2683DB770);
        v89 = *(v81 + 72);
        v90 = (*(v81 + 80) + 32) & ~*(v81 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_2683F48A0;
        v92 = v91 + v90;
        v93 = v138;
        v138(v92, *MEMORY[0x277CC99C8], v84);
        v93(v92 + v89, *MEMORY[0x277CC9988], v84);
        v93(v92 + 2 * v89, *MEMORY[0x277CC9998], v84);
        v93(v92 + 3 * v89, v137, v84);
        v93(v92 + 4 * v89, *MEMORY[0x277CC9980], v84);
        v93(v92 + 5 * v89, *MEMORY[0x277CC99A0], v84);
        v93(v92 + 6 * v89, *MEMORY[0x277CC99A8], v84);
        v93(v92 + 7 * v89, *MEMORY[0x277CC9930], v84);
        v93(v92 + 8 * v89, *MEMORY[0x277CC99B8], v84);
        sub_2682D9570(v91);
        sub_2683CB6C8();

        v78 = v157;
        v94 = *(v157 + 8);
        v94(v88, v86);
        v94(v143, v86);
        sub_268184140(v153, &qword_28024D4B0, &unk_2683D26E0);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v95, v96, v97, v61);
        v98 = OUTLINED_FUNCTION_0_0();
        sub_268176BC8(v98, v99);
      }

      v74 = v86;
      v63 = v139;
      v73 = MEMORY[0x277CC9968];
      goto LABEL_12;
    }
  }

  sub_268184140(v21, &qword_28024DB08, qword_2683D5760);
LABEL_12:
  v100 = [v63 endDateComponents];
  v101 = v146;
  if (v100)
  {
    v102 = v100;
    sub_2683CAFE8();

    v103 = 0;
  }

  else
  {
    v103 = 1;
  }

  v104 = v156;
  v105 = v154;
  __swift_storeEnumTagSinglePayload(v101, v103, 1, v61);
  sub_268176BC8(v101, v45);
  OUTLINED_FUNCTION_72(v45, 1, v61);
  if (v87)
  {
    sub_268184140(v45, &qword_28024D4B0, &unk_2683D26E0);
    v109 = v148;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v74);
LABEL_22:
    sub_268184140(v109, &qword_28024DB08, qword_2683D5760);
    v131 = v150;
    v135 = v158;
    goto LABEL_23;
  }

  v109 = v148;
  sub_2683CB018();
  OUTLINED_FUNCTION_23_0(v61);
  (*(v110 + 8))(v45, v61);
  OUTLINED_FUNCTION_20_30(v109);
  if (v111)
  {
    goto LABEL_22;
  }

  v148 = *(v78 + 32);
  v148(v105, v109, v74);
  v112 = *v73;
  v114 = v144;
  v113 = v145;
  v115 = *(v145 + 104);
  LODWORD(v156) = v112;
  v115(v144);
  v109 = v141;
  OUTLINED_FUNCTION_12_28();
  v116 = v113;
  v117 = v74;
  (*(v116 + 8))(v114, v104);
  OUTLINED_FUNCTION_20_30(v109);
  if (v87)
  {
    (*(v157 + 8))(v154, v74);
    goto LABEL_22;
  }

  v148(v142, v109, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F310, &unk_2683DB770);
  v122 = *(v116 + 72);
  v123 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_2683F48A0;
  v125 = v124 + v123;
  (v115)(v125, *MEMORY[0x277CC99C8], v104);
  (v115)(v125 + v122, *MEMORY[0x277CC9988], v104);
  (v115)(v125 + 2 * v122, *MEMORY[0x277CC9998], v104);
  (v115)(v125 + 3 * v122, v156, v104);
  (v115)(v125 + 4 * v122, *MEMORY[0x277CC9980], v104);
  (v115)(v125 + 5 * v122, *MEMORY[0x277CC99A0], v104);
  (v115)(v125 + 6 * v122, *MEMORY[0x277CC99A8], v104);
  (v115)(v125 + 7 * v122, *MEMORY[0x277CC9930], v104);
  (v115)(v125 + 8 * v122, *MEMORY[0x277CC99B8], v104);
  sub_2682D9570(v124);
  v126 = v117;
  v127 = v155;
  v128 = v142;
  v129 = v158;
  sub_2683CB6C8();

  v130 = *(v157 + 8);
  v130(v128, v126);
  v130(v154, v126);
  v131 = v150;
  sub_268184140(v150, &qword_28024D4B0, &unk_2683D26E0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v61);
  sub_268176BC8(v127, v131);
  v135 = v129;
LABEL_23:
  v118 = v153;
  sub_268176AE4(v153, v155);
  sub_268176AE4(v131, v152);
  v119 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v120 = OUTLINED_FUNCTION_0_0();
  sub_2681D2B74(v120, v121);
  sub_268184140(v131, &qword_28024D4B0, &unk_2683D26E0);
  sub_268184140(v118, &qword_28024D4B0, &unk_2683D26E0);
  (*(v149 + 8))(v135, v151);
  OUTLINED_FUNCTION_29_0();
}

void sub_2683623F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v27 = OUTLINED_FUNCTION_23(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_11_39();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &a9 - v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_31();
  v34 = sub_2683CB0D8();
  v35 = OUTLINED_FUNCTION_0_3(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19_3();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &a9 - v44;
  v46 = [v25 endDateComponents];
  if (v46)
  {
    v47 = v46;
    sub_2683CAFE8();

    v48 = *(v37 + 32);
    v48(v33, v42, v34);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v34);
    v48(v20, v33, v34);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v34);
  }

  else
  {
    v55 = 1;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v34);
    v59 = [v25 startDateComponents];
    if (v59)
    {
      v60 = v59;
      sub_2683CAFE8();

      v55 = 0;
    }

    __swift_storeEnumTagSinglePayload(v22, v55, 1, v34);
    sub_268176BC8(v22, v20);
    OUTLINED_FUNCTION_20_30(v33);
    if (!v61)
    {
      sub_268184140(v33, &qword_28024D4B0, &unk_2683D26E0);
    }
  }

  OUTLINED_FUNCTION_20_30(v20);
  if (v61)
  {
    sub_268184140(v20, &qword_28024D4B0, &unk_2683D26E0);
  }

  else
  {
    (*(v37 + 32))(v45, v20, v34);
    sub_2683CB068();
    (*(v37 + 8))(v45, v34);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t OUTLINED_FUNCTION_12_28()
{
  v2 = *(v0 - 96);

  return sub_2683CB748();
}

uint64_t sub_268362710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v146 = a2;
  v147 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D1F0, &unk_2683F48B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v157 = v140 - v6;
  v7 = sub_2683CAEA8();
  v8 = OUTLINED_FUNCTION_0_3(v7);
  v160 = v9;
  v161 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2683CF738();
  v15 = OUTLINED_FUNCTION_0_3(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v140 - v23;
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v25 = sub_2683CF768();
  __swift_project_value_buffer(v25, qword_28027C9A0);
  sub_2683CF728();
  v26 = sub_2683CF758();
  v27 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v26, v27, v29, "RegexAppSearcher#find", "", v28, 2u);
    v3 = v2;
    OUTLINED_FUNCTION_38();
  }

  (*(v17 + 16))(v22, v24, v14);
  v30 = sub_2683CF7A8();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v145 = sub_2683CF798();
  (*(v17 + 8))(v24, v14);
  v33 = v146;
  v164[0] = v147;
  v164[1] = v146;
  sub_2683CAE78();
  v34 = sub_26812A1AC();
  v35 = MEMORY[0x277D837D0];
  v36 = sub_2683CFFE8();
  v38 = v37;
  (*(v160 + 8))(v13, v161);
  v164[0] = v36;
  v164[1] = v38;
  v39 = *(type metadata accessor for RegexAppSearcher() + 20);
  v40 = sub_2683CB668();
  v41 = *(v40 - 8);
  v153 = *(v41 + 16);
  v154 = v39;
  v42 = v3 + v39;
  v43 = v157;
  v152 = v41 + 16;
  v153(v157, v42, v40);
  v156 = v40;
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v40);
  v44 = sub_2683CFFC8();
  v46 = v45;
  sub_268129F94(v43);

  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v56 = sub_2683CF7E8();
    __swift_project_value_buffer(v56, qword_28027C958);

    v57 = sub_2683CF7C8();
    v58 = sub_2683CFE98();

    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_18;
    }

    v59 = OUTLINED_FUNCTION_49();
    v60 = swift_slowAlloc();
    v164[0] = v60;
    v61 = OUTLINED_FUNCTION_5_46(4.8751e-34);
    *(v59 + 4) = sub_2681610A0(v61, v33, v62);
    v65 = "[RegexAppSearcher] %{public}s resulted in empty string after trimming returning no results.";
    goto LABEL_17;
  }

  v48 = v3[3];
  v49 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v48);
  v50 = (*(v49 + 16))(v48, v49);
  MEMORY[0x28223BE20](v50);
  v136 = v3;
  v137 = v44;
  v138 = v46;

  v51 = sub_26838F0B8(sub_2683639B8, &v140[-6], v50);
  if (!*(v51 + 16))
  {

    v164[0] = v44;
    v164[1] = v46;
    v144 = v46;
    strcpy(v163, "[^[:alnum:]]+");
    HIWORD(v163[1]) = -4864;
    strcpy(v162, "[^[:alnum:]]*");
    v162[7] = -4864;
    v138 = v34;
    v139 = v34;
    v136 = v35;
    v137 = v34;
    v66 = sub_2683CFFF8();
    v68 = v67;
    strcpy(v164, "^[^[:alnum:]]*");
    HIBYTE(v164[1]) = -18;
    MEMORY[0x26D616690]();

    MEMORY[0x26D616690](0x756E6C613A5B5E5BLL, 0xEE00242A5D5D3A6DLL);

    v69 = v164[1];
    v150 = v164[0];
    v164[0] = 10798;
    v164[1] = 0xE200000000000000;
    MEMORY[0x26D616690](v66, v68);

    MEMORY[0x26D616690](10798, 0xE200000000000000);

    v70 = v164[1];
    v141 = v164[0];
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v71 = sub_2683CF7E8();
    v72 = __swift_project_value_buffer(v71, qword_28027C958);

    v73 = sub_2683CF7C8();
    v74 = sub_2683CFE68();

    v75 = os_log_type_enabled(v73, v74);
    v143 = v44;
    v140[1] = v72;
    v142 = v70;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v164[0] = swift_slowAlloc();
      *v76 = 136315394;
      *(v76 + 4) = sub_2681610A0(v150, v69, v164);
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_2681610A0(v141, v70, v164);
      _os_log_impl(&dword_2680EB000, v73, v74, "[RegexAppSearcher] Regex Patterns: Exact Match %s | Partial Match: %s", v76, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_16();
      OUTLINED_FUNCTION_38();
    }

    v151 = v69;
    v77 = v50;
    v78 = *(v50 + 16);
    v140[2] = v77;
    if (v78)
    {
      v155 = v34;
      v79 = (v77 + 56);
      v80 = MEMORY[0x277D84F90];
      v81 = MEMORY[0x277D837D0];
      v148 = MEMORY[0x277D84F90];
      v149 = v3;
      while (1)
      {
        v161 = v80;
        v82 = *(v79 - 3);
        v84 = *(v79 - 1);
        v83 = *v79;
        v158 = *(v79 - 2);
        v164[0] = v158;
        v164[1] = v84;
        v85 = v157;
        v153(v157, v3 + v154, v156);
        OUTLINED_FUNCTION_6_36();
        __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
        swift_bridgeObjectRetain_n();
        v160 = v82;

        v159 = v83;

        v90 = v81;
        v91 = v155;
        v92 = sub_2683CFFC8();
        v94 = v93;
        sub_268129F94(v85);

        v164[0] = v92;
        v164[1] = v94;
        v163[0] = v150;
        v163[1] = v151;
        OUTLINED_FUNCTION_6_36();
        __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
        v138 = v91;
        v139 = v91;
        v81 = v90;
        OUTLINED_FUNCTION_3_49();
        sub_2683D0018();
        LOBYTE(v82) = v99;
        sub_268129F94(v85);
        if ((v82 & 1) == 0)
        {
          break;
        }

        v80 = v161;
        if (*(v161 + 16))
        {

          v3 = v149;
        }

        else
        {
          v164[0] = v92;
          v164[1] = v94;
          v163[0] = v143;
          v163[1] = v144;
          v102 = v155;
          if (sub_2683D0028())
          {

            v3 = v149;
LABEL_37:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v114 = *(v148 + 16);
              sub_2682E49B0();
              v148 = v115;
            }

            v107 = *(v148 + 16);
            if (v107 >= *(v148 + 24) >> 1)
            {
              sub_2682E49B0();
              v148 = v116;
            }

            v108 = v148;
            *(v148 + 16) = v107 + 1;
            v101 = (v108 + 32 * v107);
LABEL_42:
            v110 = v158;
            v109 = v159;
            v101[4] = v160;
            v101[5] = v110;
            v101[6] = v84;
            v101[7] = v109;
            goto LABEL_43;
          }

          v164[0] = v92;
          v164[1] = v94;
          v163[0] = v141;
          v163[1] = v142;
          v103 = v157;
          __swift_storeEnumTagSinglePayload(v157, 1, 1, v156);
          v138 = v102;
          v139 = v102;
          OUTLINED_FUNCTION_3_49();
          sub_2683D0018();
          v105 = v104;
          v106 = v103;
          v81 = v90;
          sub_268129F94(v106);

          v3 = v149;
          if ((v105 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

LABEL_43:
        v79 += 4;
        if (!--v78)
        {
          goto LABEL_47;
        }
      }

      v80 = v161;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = *(v80 + 16);
        OUTLINED_FUNCTION_6_36();
        sub_2682E49B0();
        v80 = v112;
      }

      v3 = v149;
      v100 = *(v80 + 16);
      if (v100 >= *(v80 + 24) >> 1)
      {
        OUTLINED_FUNCTION_6_36();
        sub_2682E49B0();
        v80 = v113;
      }

      *(v80 + 16) = v100 + 1;
      v101 = (v80 + 32 * v100);
      goto LABEL_42;
    }

    v80 = MEMORY[0x277D84F90];
    v148 = MEMORY[0x277D84F90];
LABEL_47:

    if (*(v80 + 16))
    {

      v117 = sub_2683CF7C8();
      v118 = sub_2683CFE98();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = OUTLINED_FUNCTION_49();
        *v119 = 134217984;
        *(v119 + 4) = *(v80 + 16);
        _os_log_impl(&dword_2680EB000, v117, v118, "[RegexAppSearcher] Found %ld matches on exact regex patterns.", v119, 0xCu);
        OUTLINED_FUNCTION_3_16();
      }

      v120 = v3[3];
      v121 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v120);

      v51 = (*(v121 + 24))(v80, v120, v121);
      goto LABEL_55;
    }

    v122 = v148;
    if (*(v148 + 16))
    {

      v123 = sub_2683CF7C8();
      v124 = sub_2683CFE98();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = OUTLINED_FUNCTION_49();
        *v125 = 134217984;
        *(v125 + 4) = *(v122 + 16);
        OUTLINED_FUNCTION_8_36(&dword_2680EB000, v126, v127, "RegexAppSearcher#find Found %ld matches on partial regex patterns.");
        OUTLINED_FUNCTION_38();
      }

      v128 = v3[3];
      v129 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v128);

      v51 = (*(v129 + 24))(v122, v128, v129);
      goto LABEL_55;
    }

    v131 = v146;

    v57 = sub_2683CF7C8();
    v132 = sub_2683CFE98();

    if (!os_log_type_enabled(v57, v132))
    {
LABEL_18:

      v51 = MEMORY[0x277D84F90];
      goto LABEL_56;
    }

    v133 = OUTLINED_FUNCTION_49();
    v60 = swift_slowAlloc();
    v164[0] = v60;
    v134 = OUTLINED_FUNCTION_5_46(4.8149e-34);
    *(v133 + 4) = sub_2681610A0(v134, v131, v135);
    v65 = "[RegexAppSearcher] No matches found for %s";
LABEL_17:
    OUTLINED_FUNCTION_8_36(&dword_2680EB000, v63, v64, v65);
    __swift_destroy_boxed_opaque_existential_0(v60);
    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_38();
    goto LABEL_18;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v52 = sub_2683CF7E8();
  __swift_project_value_buffer(v52, qword_28027C958);

  v53 = sub_2683CF7C8();
  v54 = sub_2683CFE98();
  if (!os_log_type_enabled(v53, v54))
  {

LABEL_55:

    goto LABEL_56;
  }

  v55 = OUTLINED_FUNCTION_49();
  *v55 = 134217984;
  *(v55 + 4) = *(v51 + 16);

  _os_log_impl(&dword_2680EB000, v53, v54, "[RegexAppSearcher] Found %ld exact match(es)", v55, 0xCu);
  OUTLINED_FUNCTION_3_16();

LABEL_56:
  sub_268363560();

  return v51;
}

uint64_t sub_268363560()
{
  v0 = sub_2683CF778();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF738();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v10 = sub_2683CF768();
  __swift_project_value_buffer(v10, qword_28027C9A0);
  v11 = sub_2683CF758();
  sub_2683CF788();
  v12 = sub_2683CFEE8();
  if (sub_2683CFF88())
  {

    sub_2683CF7B8();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v11, v12, v15, "RegexAppSearcher#find", v13, v14, 2u);
    MEMORY[0x26D617A40](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2683637EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D1F0, &unk_2683F48B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v22[0] = v12;
  v22[1] = v13;
  v14 = *(type metadata accessor for RegexAppSearcher() + 20);
  v15 = sub_2683CB668();
  (*(*(v15 - 8) + 16))(v11, a2 + v14, v15);
  v16 = 1;
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
  sub_26812A1AC();

  v17 = sub_2683CFFC8();
  v19 = v18;
  sub_268129F94(v11);

  if (v17 != a3 || v19 != a4)
  {
    v16 = sub_2683D0598();
  }

  return v16 & 1;
}

uint64_t type metadata accessor for RegexAppSearcher()
{
  result = qword_2802539B0;
  if (!qword_2802539B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_268363A04()
{
  result = sub_268363A88();
  if (v1 <= 0x3F)
  {
    result = sub_2683CB668();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_268363A88()
{
  result = qword_2802539C0;
  if (!qword_2802539C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2802539C0);
  }

  return result;
}

void OUTLINED_FUNCTION_8_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_268363B8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2683CC828();
  v7 = sub_2683CF258();
  v9 = v8;

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = v9;
  sub_268207E90();
  v11 = sub_2683CC848();
  v12 = sub_2683CC818();
  sub_268208190(v11, v12);
  v13 = a4 + *(type metadata accessor for Snippet.Interaction() + 20);
  sub_2683CB7E8();
  v14 = *(*(v6 - 8) + 8);

  return v14(a1, v6);
}

uint64_t Snippet.CreateNote3p.note.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_268164A18(v7, &v6);
}

__n128 Snippet.CreateNote3p.note.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_268164A50(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

uint64_t type metadata accessor for Snippet.CreateNote3p()
{
  result = qword_2802539E0;
  if (!qword_2802539E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.CreateNote3p.interaction.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Snippet.CreateNote3p() + 20);

  return sub_2681D62B8(a1, v3);
}

uint64_t Snippet.CreateNote3p.init(note:interaction:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  v5 = a1[3];
  a3[2] = a1[2];
  a3[3] = v5;
  v6 = a3 + *(type metadata accessor for Snippet.CreateNote3p() + 20);

  return sub_26835CF80(a2, v6);
}

uint64_t sub_268363EC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702129518 && a2 == 0xE400000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_268363F8C(char a1)
{
  if (a1)
  {
    return 0x7463617265746E69;
  }

  else
  {
    return 1702129518;
  }
}

uint64_t sub_268363FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268363EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268363FF4(uint64_t a1)
{
  v2 = sub_268364268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268364030(uint64_t a1)
{
  v2 = sub_268364268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.CreateNote3p.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802539C8, &qword_2683F48E8);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268364268();
  sub_2683D0718();
  v14 = *v3;
  v15 = v3[2];
  v29 = v3[1];
  v30 = v15;
  v16 = v3[2];
  v31 = v3[3];
  v24 = v14;
  v25 = v29;
  v17 = *v3;
  v26 = v16;
  v27 = v3[3];
  v28 = v17;
  v23[79] = 0;
  sub_268164A18(&v28, v23);
  sub_2681D6A64();
  sub_2683D0548();
  OUTLINED_FUNCTION_1_60();
  if (!v2)
  {
    v18 = *(type metadata accessor for Snippet.CreateNote3p() + 20);
    v22[15] = 1;
    type metadata accessor for Snippet.Interaction();
    OUTLINED_FUNCTION_0_69();
    sub_26836483C(v19, v20);
    sub_2683D0548();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_268364268()
{
  result = qword_2802539D0;
  if (!qword_2802539D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802539D0);
  }

  return result;
}

uint64_t Snippet.CreateNote3p.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for Snippet.Interaction();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802539D8, &qword_2683F48F0);
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v32 = v12;
  v33 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  Note3p = type metadata accessor for Snippet.CreateNote3p();
  v16 = OUTLINED_FUNCTION_1(Note3p);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[3];
  v22 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_268364268();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  v30[1] = v4;
  v40 = 0;
  sub_2681D715C();
  OUTLINED_FUNCTION_5_47();
  v23 = v36;
  *v20 = v35;
  v20[1] = v23;
  v24 = v38;
  v20[2] = v37;
  v20[3] = v24;
  v39 = 1;
  OUTLINED_FUNCTION_0_69();
  sub_26836483C(v25, v26);
  OUTLINED_FUNCTION_5_47();
  v27 = OUTLINED_FUNCTION_4_49();
  v28(v27);
  sub_26835CF80(v9, v20 + *(Note3p + 20));
  sub_26836458C(v20, v31, type metadata accessor for Snippet.CreateNote3p);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return sub_2683645EC(v20);
}

uint64_t sub_26836458C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2683645EC(uint64_t a1)
{
  Note3p = type metadata accessor for Snippet.CreateNote3p();
  (*(*(Note3p - 8) + 8))(a1, Note3p);
  return a1;
}

uint64_t static Snippet.createNote3p(note:record:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F28, &unk_2683E6AB0);
  v7 = OUTLINED_FUNCTION_0_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v18 - v12;
  sub_26834A8F8(a1, v18);
  (*(v9 + 16))(v13, a2, v6);
  Note3p = type metadata accessor for Snippet.CreateNote3p();
  sub_268363B8C(v13, &qword_280251F28, &unk_2683E6AB0, (a3 + *(Note3p + 20)));
  v15 = v18[1];
  *a3 = v18[0];
  a3[1] = v15;
  v16 = v18[3];
  a3[2] = v18[2];
  a3[3] = v16;
  type metadata accessor for Snippet();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26836483C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2683648AC()
{
  result = type metadata accessor for Snippet.Interaction();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s14descr2878F8F29V12CreateNote3pV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268364A08()
{
  result = qword_2802539F0;
  if (!qword_2802539F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802539F0);
  }

  return result;
}

unint64_t sub_268364A60()
{
  result = qword_2802539F8;
  if (!qword_2802539F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802539F8);
  }

  return result;
}

unint64_t sub_268364AB8()
{
  result = qword_280253A00;
  if (!qword_280253A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_60()
{
  v3 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v3;
  v4 = *(v0 + 48);
  *(v1 - 272) = *(v1 - 192);
  *(v1 - 256) = v4;

  return sub_268164A50(v1 - 304);
}

uint64_t OUTLINED_FUNCTION_5_47()
{

  return sub_2683D04A8();
}

uint64_t sub_268364B90()
{
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_listTitle);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_268364C10(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_listTitle;
  swift_beginAccess();
  sub_26816349C(a1 + v3, v1 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_listTitle);
  LOBYTE(v3) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_isDefault);

  *(v1 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_isDefault) = v3;
  return v1;
}

uint64_t sub_268364C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = a1 == 0x6C7469547473696CLL && a2 == 0xE900000000000065;
  if (v11 || (sub_2683D0598() & 1) != 0)
  {
    sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_listTitle, v10);
    v12 = sub_2683CF168();
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      result = sub_26812E924(v10);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(*(v12 - 8) + 32))(boxed_opaque_existential_0, v10, v12);
  }

  else
  {
    result = 0x6C75616665447369;
    if (a1 != 0x6C75616665447369 || a2 != 0xE900000000000074)
    {
      result = sub_2683D0598();
      if ((result & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v3 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_isDefault);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v16;
  }

  return result;
}

uint64_t sub_268364E44()
{
  v0 = sub_2683D0408();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268364E98(char a1)
{
  if (a1)
  {
    return 0x6C75616665447369;
  }

  else
  {
    return 0x6C7469547473696CLL;
  }
}

uint64_t sub_268364EF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268364E44();
  *a2 = result;
  return result;
}

uint64_t sub_268364F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268364E98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268364F5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268364E44();
  *a1 = result;
  return result;
}

uint64_t sub_268364F84(uint64_t a1)
{
  v2 = sub_2683657F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268364FC0(uint64_t a1)
{
  v2 = sub_2683657F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268364FFC()
{
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_listTitle);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_268365090()
{
  sub_2681E12BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_268365134(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253A48, &qword_2683F4BE0);
  OUTLINED_FUNCTION_0_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683657F4();
  sub_2683D0718();
  v18[15] = 0;
  sub_2683CF168();
  OUTLINED_FUNCTION_0_70();
  sub_2683657AC(v14, v15);
  sub_2683D0508();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_isDefault);
    v18[14] = 1;
    sub_2683D0528();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_2683652D0(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2683653E0(a1);
  return v5;
}