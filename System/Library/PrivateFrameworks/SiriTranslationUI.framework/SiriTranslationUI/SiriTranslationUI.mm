uint64_t sub_269439708@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t TranslationSnippetProvider.snippet(for:mode:idiom:)(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguateTranslationSnippet();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for TranslationResultSnippet();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = type metadata accessor for SiriTranslationModels(0);
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  sub_269439B34(a1, v31 - v30, type metadata accessor for SiriTranslationModels);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_269439AD4(v32, v13, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    sub_269439B34(v13, v8, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    v33 = v8 + *(v2 + 20);
    sub_269448EB4();
    sub_269439C4C(&qword_2803150D0, type metadata accessor for DisambiguateTranslationSnippet);
    v34 = sub_269448DC4();
    sub_269439B94(v8, type metadata accessor for DisambiguateTranslationSnippet);
    v35 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel;
    v36 = v13;
  }

  else
  {
    sub_269439AD4(v32, v25, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    sub_269439B34(v25, v20 + *(v14 + 20), type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    v37 = sub_269448C74();
    v38 = sub_269448CB4();
    OUTLINED_FUNCTION_0(v38);
    (*(v39 + 16))(v20, v37);
    v40 = v20 + *(v14 + 24);
    sub_269448EB4();
    sub_269439C4C(&qword_2803150D8, type metadata accessor for TranslationResultSnippet);
    v34 = sub_269448DC4();
    sub_269439B94(v20, type metadata accessor for TranslationResultSnippet);
    v35 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel;
    v36 = v25;
  }

  sub_269439B94(v36, v35);
  return v34;
}

uint64_t sub_269439AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_269439B34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_269439B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_269439C4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269439C94@<X0>(uint64_t *a1@<X8>)
{
  result = TranslationSnippetProvider.__allocating_init()();
  *a1 = result;
  return result;
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

uint64_t SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41();
  return v2;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41();
  return v2;
}

uint64_t sub_269439E9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SnippetTranslationItem.text.setter(v1, v2);
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.text.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_58(v3);
  return sub_269441CA4;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SiriTranslationModels.SnippetTranslationItem.wordType.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  OUTLINED_FUNCTION_41();
  return v2;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.wordType.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  v1 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.wordType.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.definition.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  OUTLINED_FUNCTION_41();
  return v2;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.definition.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  v1 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.definition.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_26943A1A4;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.id.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41();
  return v2;
}

uint64_t sub_26943A1F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SnippetTranslationItem.id.setter();
}

uint64_t SiriTranslationModels.SnippetTranslationItem.id.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  v1 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.id.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.romanization.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  OUTLINED_FUNCTION_41();
  return v2;
}

uint64_t sub_26943A338(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t SiriTranslationModels.SnippetTranslationItem.romanization.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  v1 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.romanization.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t static SiriTranslationModels.SnippetTranslationItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v4 = *(v3 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v5 = a2 + *(v3 + 28);
  sub_269448C14();

  return 1;
}

uint64_t sub_26943A504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_269449034() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795464726F77 && a2 == 0xE800000000000000;
    if (v6 || (sub_269449034() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
      if (v7 || (sub_269449034() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_269449034() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x617A696E616D6F72 && a2 == 0xEC0000006E6F6974)
        {

          return 4;
        }

        else
        {
          v10 = sub_269449034();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26943A6F4(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x6570795464726F77;
      break;
    case 2:
      result = 0x6974696E69666564;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x617A696E616D6F72;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26943A7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943A504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26943A820@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26943A6A8();
  *a1 = result;
  return result;
}

uint64_t sub_26943A848(uint64_t a1)
{
  v2 = sub_26943AB1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943A884(uint64_t a1)
{
  v2 = sub_26943AB1C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SnippetTranslationItem.encode(to:)()
{
  OUTLINED_FUNCTION_35();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F8, &qword_2694494F0);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_51();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  OUTLINED_FUNCTION_21();
  sub_26943AB1C();
  OUTLINED_FUNCTION_33();
  sub_269449084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_1_0();
  sub_26943B270(v12);
  OUTLINED_FUNCTION_26();
  sub_269449024();
  if (!v0)
  {
    v17 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
    OUTLINED_FUNCTION_43(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
    OUTLINED_FUNCTION_1_0();
    sub_26943B2DC(v13);
    OUTLINED_FUNCTION_25();
    v14 = v17[6];
    OUTLINED_FUNCTION_25();
    v15 = v17[7];
    OUTLINED_FUNCTION_26();
    sub_269449024();
    v16 = v17[8];
    OUTLINED_FUNCTION_25();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_34();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26943AB1C()
{
  result = qword_280315100;
  if (!qword_280315100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315100);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26943ABB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315120, &qword_2694494F8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SnippetTranslationItem.init(from:)()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v44 = v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  v4 = OUTLINED_FUNCTION_2(v53);
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39();
  v45 = v9;
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_53();
  v46 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  v13 = OUTLINED_FUNCTION_2(v12);
  v49 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_53();
  v48 = v21;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315130, &unk_269449500);
  OUTLINED_FUNCTION_2(v50);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_52();
  v26 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v25);
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  v34 = *(v33 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315120, &qword_2694494F8);
  sub_269448BF4();
  v54 = v26[6];
  sub_269448BF4();
  v52 = v26[8];
  sub_269448BF4();
  v35 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26943AB1C();
  sub_269449074();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    v37 = *(v55 + 8);
    v37(v32 + v34, v53);
    v37(v32 + v54, v53);
    v37(v32 + v52, v53);
  }

  else
  {
    v51 = v19;
    OUTLINED_FUNCTION_0_0();
    sub_26943B270(v36);
    sub_269448FF4();
    v43 = *(v49 + 32);
    v43(v32, v48);
    OUTLINED_FUNCTION_0_0();
    sub_26943B2DC(v38);
    v39 = v46;
    OUTLINED_FUNCTION_44();
    sub_269448FF4();
    v47 = *(v55 + 40);
    v47(v32 + v34, v39, v53);
    OUTLINED_FUNCTION_22(2);
    OUTLINED_FUNCTION_44();
    sub_269448FF4();
    v47(v32 + v54, v45, v53);
    OUTLINED_FUNCTION_22(3);
    sub_269448FF4();
    (v43)(v32 + v26[7], v51, v12);
    OUTLINED_FUNCTION_22(4);
    OUTLINED_FUNCTION_44();
    sub_269448FF4();
    v40 = OUTLINED_FUNCTION_42();
    v41(v40);
    v42 = OUTLINED_FUNCTION_46(v52);
    (v47)(v42);
    sub_26943D0F8(v32, v44, type metadata accessor for SiriTranslationModels.SnippetTranslationItem);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_26943D158(v32, type metadata accessor for SiriTranslationModels.SnippetTranslationItem);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_26943B270(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803150E8, &qword_2694494E0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26943B2DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803150F0, &qword_2694494E8);
    sub_26943ABB8(&unk_280315118);
    sub_26943ABB8(&unk_280315128);
    result = OUTLINED_FUNCTION_36();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26943B3B8@<X0>(uint64_t *a1@<X8>)
{
  result = SiriTranslationModels.SnippetTranslationItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26943B3F8(uint64_t *a1)
{
  v1 = *a1;

  return SiriTranslationModels.SiriTranslationResultModel.items.setter(v2);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.items.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  *(v0 + 32) = OUTLINED_FUNCTION_58(v3);
  return sub_269441CA4;
}

uint64_t sub_26943B4B8(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41();
  return v3;
}

uint64_t sub_26943B50C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationResultModel.visualID.setter();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.visualID.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t sub_26943B5EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationResultModel.phrase.setter();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.phrase.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.romanizationExists.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  sub_269448C14();
  return v2;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.romanizationExists.setter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  return sub_269448C24();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.romanizationExists.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t sub_26943B7D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.setter();
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  v1 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t sub_26943B8C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.setter();
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  v1 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41();
  return v2;
}

uint64_t sub_26943BA0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.setter();
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  v1 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41();
  return v2;
}

uint64_t sub_26943BB50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.setter();
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  v1 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41();
  return v2;
}

uint64_t sub_26943BC94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.setter();
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  v1 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t sub_26943BD8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_269449034() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44496C6175736976 && a2 == 0xE800000000000000;
    if (v6 || (sub_269449034() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
      if (v7 || (sub_269449034() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x800000026944AF70 == a2;
        if (v8 || (sub_269449034() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000026944AF90 == a2;
          if (v9 || (sub_269449034() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000026944AFB0 == a2;
            if (v10 || (sub_269449034() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x800000026944AFD0 == a2;
              if (v11 || (sub_269449034() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x800000026944AFF0 == a2;
                if (v12 || (sub_269449034() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000015 && 0x800000026944B010 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_269449034();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26943C05C(char a1)
{
  result = 0x736D657469;
  switch(a1)
  {
    case 1:
      result = 0x44496C6175736976;
      break;
    case 2:
      result = 0x657361726870;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26943C188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943BD8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26943C1B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26943C054();
  *a1 = result;
  return result;
}

uint64_t sub_26943C1D8(uint64_t a1)
{
  v2 = sub_26943C4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943C214(uint64_t a1)
{
  v2 = sub_26943C4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SiriTranslationResultModel.encode(to:)()
{
  OUTLINED_FUNCTION_35();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315158, &qword_269449518);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_51();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  OUTLINED_FUNCTION_21();
  sub_26943C4E4();
  OUTLINED_FUNCTION_33();
  sub_269449084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_1_0();
  sub_26943D024(v12);
  OUTLINED_FUNCTION_56();
  if (!v0)
  {
    v13 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
    OUTLINED_FUNCTION_43(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    OUTLINED_FUNCTION_1_0();
    sub_26943B270(v14);
    OUTLINED_FUNCTION_6();
    v15 = v13[6];
    OUTLINED_FUNCTION_6();
    v22 = v13[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
    OUTLINED_FUNCTION_1_0();
    sub_26943C604(v16);
    OUTLINED_FUNCTION_56();
    v17 = v13[8];
    OUTLINED_FUNCTION_6();
    v18 = v13[9];
    OUTLINED_FUNCTION_6();
    v19 = v13[10];
    OUTLINED_FUNCTION_6();
    v20 = v13[11];
    OUTLINED_FUNCTION_6();
    v21 = v13[12];
    OUTLINED_FUNCTION_6();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_34();
}

unint64_t sub_26943C4E4()
{
  result = qword_280315160;
  if (!qword_280315160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315160);
  }

  return result;
}

unint64_t sub_26943C538(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315178, &qword_269449520);
    sub_26943C5C0(v4);
    result = OUTLINED_FUNCTION_55();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26943C5C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26943C604(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315150, &qword_269449510);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SiriTranslationResultModel.init(from:)()
{
  OUTLINED_FUNCTION_35();
  v72 = v2;
  v61 = v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  OUTLINED_FUNCTION_2(v71);
  v68 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_40();
  v64 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  v10 = OUTLINED_FUNCTION_2(v9);
  v74 = v11;
  v75 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v62 = v14 - v15;
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39();
  v63 = v20;
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39();
  v66 = v22;
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_53();
  v65 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_2(v25);
  v70 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_40();
  v69 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151A0, &qword_269449528);
  v67 = OUTLINED_FUNCTION_2(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_30();
  v35 = sub_269448B84();
  v36 = OUTLINED_FUNCTION_2(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  v44 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v45 = OUTLINED_FUNCTION_0(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_51();
  v73 = v48;
  v49 = v48[5];
  sub_269448B74();
  sub_269448B64();
  (*(v38 + 8))(v43, v35);
  sub_269448BF4();
  v50 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  sub_26943C4E4();
  OUTLINED_FUNCTION_50();
  sub_269449074();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v72);
    (*(v74 + 8))(v1 + v49, v75);
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
    sub_26943D024(v51);
    sub_269448FF4();
    (*(v70 + 32))(v1, v69, v25);
    OUTLINED_FUNCTION_0_0();
    sub_26943B270(v52);
    OUTLINED_FUNCTION_45();
    (*(v74 + 40))(v1 + v49, v65, v75);
    OUTLINED_FUNCTION_22(2);
    OUTLINED_FUNCTION_45();
    v53 = *(v74 + 32);
    (v53)(v73[6], v66, v75);
    OUTLINED_FUNCTION_0_0();
    sub_26943C604(v54);
    sub_269448FF4();
    (*(v68 + 32))(v73[7], v64, v71);
    OUTLINED_FUNCTION_22(4);
    sub_269448FF4();
    (v53)(v73[8], v63, v75);
    OUTLINED_FUNCTION_22(5);
    OUTLINED_FUNCTION_5();
    sub_269448FF4();
    v55 = OUTLINED_FUNCTION_27(v73[9]);
    v53(v55);
    OUTLINED_FUNCTION_22(6);
    OUTLINED_FUNCTION_5();
    sub_269448FF4();
    v56 = OUTLINED_FUNCTION_27(v73[10]);
    v53(v56);
    OUTLINED_FUNCTION_22(7);
    OUTLINED_FUNCTION_5();
    sub_269448FF4();
    v57 = OUTLINED_FUNCTION_27(v73[11]);
    v53(v57);
    OUTLINED_FUNCTION_22(8);
    OUTLINED_FUNCTION_5();
    sub_269448FF4();
    v58 = OUTLINED_FUNCTION_31();
    v59(v58, v67);
    (v53)(v73[12], v62, v75);
    sub_26943D0F8(0, v61, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    __swift_destroy_boxed_opaque_existential_1(v72);
    OUTLINED_FUNCTION_19();
    sub_26943D158(0, v60);
  }

  OUTLINED_FUNCTION_34();
}

unint64_t sub_26943D024(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315148, &unk_26944A2E0);
    sub_26943C538(&unk_280315170);
    sub_26943C538(&unk_280315188);
    result = OUTLINED_FUNCTION_36();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26943D0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26943D158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s17SiriTranslationUI0aB6ModelsO07SnippetB4ItemV4textSSvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  return v1;
}

uint64_t sub_26943D21C()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t (*SiriTranslationModels.Language.name.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_58(v3);
  return sub_269441CA4;
}

uint64_t sub_26943D2EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.Language.localizedName.setter();
}

uint64_t sub_26943D344()
{
  v0 = OUTLINED_FUNCTION_18();
  v2 = *(v1(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.Language.localizedName.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.Language(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t static SiriTranslationModels.Language.== infix(_:_:)()
{
  if ((sub_269448C34() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for SiriTranslationModels.Language(0) + 20);

  return sub_269448C34();
}

uint64_t sub_26943D480(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_269449034() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64)
  {

    return 1;
  }

  else
  {
    v7 = sub_269449034();

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

uint64_t sub_26943D558(char a1)
{
  if (a1)
  {
    return 0x657A696C61636F6CLL;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_26943D59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943D480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26943D5C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26943D550();
  *a1 = result;
  return result;
}

uint64_t sub_26943D5EC(uint64_t a1)
{
  v2 = sub_26943D7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943D628(uint64_t a1)
{
  v2 = sub_26943D7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriTranslationModels.Language.encode(to:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151B8, &qword_269449530);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30();
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  OUTLINED_FUNCTION_21();
  sub_26943D7D4();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_33();
  sub_269449084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_1_0();
  sub_26943B270(v12);
  OUTLINED_FUNCTION_26();
  sub_269449024();
  if (!v1)
  {
    v13 = *(type metadata accessor for SiriTranslationModels.Language(0) + 20);
    OUTLINED_FUNCTION_26();
    sub_269449024();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_26943D7D4()
{
  result = qword_2803151C0;
  if (!qword_2803151C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803151C0);
  }

  return result;
}

uint64_t SiriTranslationModels.Language.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_26943D8A0();
  sub_269448F34();
  v1 = v0 + *(type metadata accessor for SiriTranslationModels.Language(0) + 20);
  return sub_269448F34();
}

unint64_t sub_26943D8A0()
{
  result = qword_2803151C8;
  if (!qword_2803151C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803150E8, &qword_2694494E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803151C8);
  }

  return result;
}

uint64_t SiriTranslationModels.Language.hashValue.getter()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_26943D8A0();
  sub_269448F34();
  v1 = v0 + *(type metadata accessor for SiriTranslationModels.Language(0) + 20);
  sub_269448F34();
  return sub_269449064();
}

void SiriTranslationModels.Language.init(from:)()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v37 = v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  v4 = OUTLINED_FUNCTION_2(v42);
  v39 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_53();
  v41 = v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D0, &qword_269449538);
  OUTLINED_FUNCTION_2(v40);
  v38 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v16);
  v18 = v34 - v17;
  v19 = type metadata accessor for SiriTranslationModels.Language(0);
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26943D7D4();
  sub_269449074();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v35 = v19;
    v36 = v25;
    v28 = v38;
    v27 = v39;
    OUTLINED_FUNCTION_0_0();
    v30 = sub_26943B270(v29);
    v31 = v40;
    sub_269448FF4();
    v34[1] = v30;
    v32 = v41;
    v41 = *(v27 + 32);
    v41(v36, v32, v42);
    sub_269448FF4();
    (*(v28 + 8))(v18, v31);
    v33 = v36;
    v41(v36 + *(v35 + 20), v10, v42);
    sub_26943D0F8(v33, v37, type metadata accessor for SiriTranslationModels.Language);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_26943D158(v33, type metadata accessor for SiriTranslationModels.Language);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_26943DD14(uint64_t a1, uint64_t a2)
{
  sub_269449044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_26943D8A0();
  sub_269448F34();
  v4 = v2 + *(a2 + 20);
  sub_269448F34();
  return sub_269449064();
}

uint64_t sub_26943DDB4(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_269448C14();
  return v3;
}

uint64_t sub_26943DDE0(uint64_t *a1)
{
  v1 = *a1;

  return SiriTranslationModels.SiriTranslationDisambiguationModel.languages.setter(v2);
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.languages.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  *(v0 + 32) = OUTLINED_FUNCTION_58(v3);
  return sub_269441CA4;
}

uint64_t sub_26943DEF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationDisambiguationModel.prompt.setter();
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.prompt.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

uint64_t sub_26943DFD8(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41();
  return v3;
}

uint64_t sub_26943E02C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationDisambiguationModel.phrase.setter();
}

uint64_t sub_26943E084()
{
  v0 = OUTLINED_FUNCTION_18();
  v2 = *(v1(v0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15();
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.phrase.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v5);
  return sub_269441CA4;
}

void sub_26943E140(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26943E18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_269449034() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_269449034() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657361726870 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_269449034();

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

uint64_t sub_26943E2AC(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_57();
  MEMORY[0x26D63CF40](a1);
  return sub_269449064();
}

uint64_t sub_26943E2EC(char a1)
{
  if (!a1)
  {
    return 0x65676175676E616CLL;
  }

  if (a1 == 1)
  {
    return 0x74706D6F7270;
  }

  return 0x657361726870;
}

uint64_t sub_26943E340()
{
  v1 = *v0;
  sub_269449044();
  MEMORY[0x26D63CF40](v1);
  return sub_269449064();
}

uint64_t sub_26943E38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943E18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26943E3B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26943E2A4();
  *a1 = result;
  return result;
}

uint64_t sub_26943E3DC(uint64_t a1)
{
  v2 = sub_26943E5F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943E418(uint64_t a1)
{
  v2 = sub_26943E5F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SiriTranslationDisambiguationModel.encode(to:)()
{
  OUTLINED_FUNCTION_35();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151E0, &qword_269449548);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  OUTLINED_FUNCTION_21();
  sub_26943E5F8();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_33();
  sub_269449084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  OUTLINED_FUNCTION_1_0();
  sub_26943E64C(v12);
  sub_269449024();
  if (!v0)
  {
    v13 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
    OUTLINED_FUNCTION_43(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    OUTLINED_FUNCTION_1_0();
    sub_26943B270(v14);
    OUTLINED_FUNCTION_47();
    v15 = *(v13 + 24);
    OUTLINED_FUNCTION_47();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_34();
}

unint64_t sub_26943E5F8()
{
  result = qword_2803151E8;
  if (!qword_2803151E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803151E8);
  }

  return result;
}

unint64_t sub_26943E64C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803151D8, &qword_269449540);
    sub_26943E720(&unk_2803151F8);
    sub_26943E720(&unk_280315210);
    result = OUTLINED_FUNCTION_36();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26943E720(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315200, &qword_269449550);
    sub_26943C5C0(v4);
    result = OUTLINED_FUNCTION_55();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SiriTranslationDisambiguationModel.init(from:)()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v47 = v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  v4 = OUTLINED_FUNCTION_2(v53);
  v49 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v48 = (v8 - v9);
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  OUTLINED_FUNCTION_2(v13);
  v50 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_40();
  v52 = v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315220, &qword_269449558);
  OUTLINED_FUNCTION_2(v54);
  v51 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v22);
  v23 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v31 = v2[3];
  v30 = v2[4];
  v55 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v31);
  sub_26943E5F8();
  sub_269449074();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    v45 = v23;
    v46 = v29;
    v32 = v53;
    OUTLINED_FUNCTION_0_0();
    sub_26943E64C(v33);
    v34 = v52;
    sub_269448FF4();
    (*(v50 + 32))(v46, v34, v13);
    OUTLINED_FUNCTION_0_0();
    v52 = sub_26943B270(v35);
    sub_269448FF4();
    v36 = v46 + *(v45 + 20);
    v43 = *(v49 + 32);
    v44 = v13;
    v43(v36, v12, v32);
    v37 = v48;
    sub_269448FF4();
    v38 = OUTLINED_FUNCTION_29();
    v39(v38);
    v40 = v46;
    v43(v46 + *(v45 + 24), v37, v32);
    sub_26943D0F8(v40, v47, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_17();
    sub_26943D158(v40, v41);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_26943EC04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000026944B030 == a2;
  if (v3 || (sub_269449034() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026944B050 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_269449034();

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

uint64_t sub_26943ED10(char a1)
{
  OUTLINED_FUNCTION_57();
  MEMORY[0x26D63CF40](a1 & 1);
  return sub_269449064();
}

unint64_t sub_26943ED50(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_26943ED9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269449034();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26943EE34()
{
  OUTLINED_FUNCTION_57();
  MEMORY[0x26D63CF40](0);
  return sub_269449064();
}

uint64_t sub_26943EED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943EC04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26943EF00(uint64_t a1)
{
  v2 = sub_26943F5E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943EF3C(uint64_t a1)
{
  v2 = sub_26943F5E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26943EF9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26943ED88();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26943EFC8(uint64_t a1)
{
  v2 = sub_26943F63C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943F004(uint64_t a1)
{
  v2 = sub_26943F63C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26943F060()
{
  sub_269449044();
  MEMORY[0x26D63CF40](0);
  return sub_269449064();
}

uint64_t sub_26943F0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943ED9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26943F0CC(uint64_t a1)
{
  v2 = sub_26943F6F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943F108(uint64_t a1)
{
  v2 = sub_26943F6F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.encode(to:)()
{
  OUTLINED_FUNCTION_35();
  v66 = v2;
  v64 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315230, &qword_269449560);
  v7 = OUTLINED_FUNCTION_2(v6);
  v62 = v8;
  v63 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_40();
  v61 = v12;
  v59 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v13 = OUTLINED_FUNCTION_0(v59);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v60 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315238, &qword_269449568);
  v19 = OUTLINED_FUNCTION_2(v18);
  v57 = v20;
  v58 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_52();
  v56 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v24);
  v25 = OUTLINED_FUNCTION_0(v56);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v31 = type metadata accessor for SiriTranslationModels(0);
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_51();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315240, &qword_269449570);
  OUTLINED_FUNCTION_2(v65);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v39);
  v41 = &v55 - v40;
  v43 = *(v5 + 24);
  v42 = *(v5 + 32);
  OUTLINED_FUNCTION_21();
  sub_26943F5E8();
  sub_269449084();
  sub_26943D0F8(v64, v3, type metadata accessor for SiriTranslationModels);
  v44 = (v36 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v60;
    sub_26943F690(v3, v60, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    sub_26943F63C();
    v46 = v61;
    v47 = v65;
    sub_269449014();
    OUTLINED_FUNCTION_16();
    sub_26943C5C0(v48);
    v49 = v63;
    sub_269449024();
    (*(v62 + 8))(v46, v49);
    OUTLINED_FUNCTION_17();
    sub_26943D158(v45, v50);
    (*v44)(v41, v47);
  }

  else
  {
    sub_26943F690(v3, v30, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    sub_26943F6F0();
    v51 = v65;
    sub_269449014();
    OUTLINED_FUNCTION_20();
    sub_26943C5C0(v52);
    v53 = v58;
    sub_269449024();
    (*(v57 + 8))(v0, v53);
    OUTLINED_FUNCTION_19();
    sub_26943D158(v30, v54);
    (*v44)(v41, v51);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_26943F5B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26943F5E8()
{
  result = qword_280315248;
  if (!qword_280315248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315248);
  }

  return result;
}

unint64_t sub_26943F63C()
{
  result = qword_280315250;
  if (!qword_280315250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315250);
  }

  return result;
}

uint64_t sub_26943F690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_26943F6F0()
{
  result = qword_280315260;
  if (!qword_280315260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315260);
  }

  return result;
}

void SiriTranslationModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_35();
  a23 = v26;
  a24 = v27;
  v107 = v24;
  v29 = v28;
  v98 = v30;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315270, &qword_269449578);
  OUTLINED_FUNCTION_2(v106);
  v101 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_40();
  v103 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315278, &qword_269449580);
  v37 = OUTLINED_FUNCTION_2(v36);
  v99 = v38;
  v100 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_40();
  v102 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315280, &qword_269449588);
  v44 = OUTLINED_FUNCTION_2(v43);
  v104 = v45;
  v105 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_30();
  v49 = type metadata accessor for SiriTranslationModels(0);
  v50 = OUTLINED_FUNCTION_0(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8();
  v55 = v53 - v54;
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v94 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v94 - v60;
  v62 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_26943F5E8();
  OUTLINED_FUNCTION_50();
  v63 = v107;
  sub_269449074();
  if (v63)
  {
    goto LABEL_8;
  }

  v94 = v55;
  v95 = v59;
  v64 = v105;
  v96 = v61;
  v97 = v49;
  v107 = v29;
  v65 = sub_269449004();
  v69 = sub_26943FD8C(v65, 0);
  if (v67 == v68 >> 1)
  {
LABEL_7:
    v79 = v97;
    v80 = sub_269448FB4();
    swift_allocError();
    v82 = v81;
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315288, &qword_269449590) + 48);
    *v82 = v79;
    sub_269448FE4();
    sub_269448FA4();
    (*(*(v80 - 8) + 104))(v82, *MEMORY[0x277D84160], v80);
    swift_willThrow();
    swift_unknownObjectRelease();
    v84 = OUTLINED_FUNCTION_23();
    v85(v84, v64);
    v29 = v107;
LABEL_8:
    v86 = v29;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v86);
    OUTLINED_FUNCTION_34();
    return;
  }

  if (v67 < (v68 >> 1))
  {
    a10 = *(v66 + v67);
    sub_26943FDD4(v67 + 1, v68 >> 1, v69, v66, v67, v68);
    v71 = v70;
    v73 = v72;
    swift_unknownObjectRelease();
    if (v71 == v73 >> 1)
    {
      v74 = v64;
      if (a10)
      {
        a14 = 1;
        sub_26943F63C();
        OUTLINED_FUNCTION_48(&type metadata for SiriTranslationModels.DisambiguationResultViewCodingKeys, &a14);
        v75 = v96;
        type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
        OUTLINED_FUNCTION_16();
        sub_26943C5C0(v76);
        v77 = v94;
        OUTLINED_FUNCTION_54();
        v78 = v104;
        swift_unknownObjectRelease();
        v88 = OUTLINED_FUNCTION_24();
        v89(v88);
        (*(v78 + 8))(v25, v74);
      }

      else
      {
        a13 = 0;
        sub_26943F6F0();
        OUTLINED_FUNCTION_48(&type metadata for SiriTranslationModels.TranslationResultViewCodingKeys, &a13);
        v75 = v96;
        type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
        OUTLINED_FUNCTION_20();
        sub_26943C5C0(v87);
        v77 = v95;
        OUTLINED_FUNCTION_54();
        swift_unknownObjectRelease();
        v90 = OUTLINED_FUNCTION_24();
        v91(v90);
        v92 = OUTLINED_FUNCTION_23();
        v93(v92, v74);
      }

      swift_storeEnumTagMultiPayload();
      sub_26943F690(v77, v75, type metadata accessor for SiriTranslationModels);
      sub_26943F690(v75, v98, type metadata accessor for SiriTranslationModels);
      v86 = v107;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26943FD8C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_26943FDD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269440054()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440080()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.wordType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2694400D4()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.definition.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440128()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440154()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.romanization.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2694401A8()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.items.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2694401D4()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.visualID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440200()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.phrase.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26944022C()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.romanizationExists.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_269440280()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2694402AC()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2694402D8()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440304()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440330()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26944035C()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.Language.localizedName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440388()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationDisambiguationModel.languages.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2694403B4()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationDisambiguationModel.prompt.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2694403E0()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationDisambiguationModel.phrase.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440468()
{
  result = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26944054C()
{
  sub_269440928(319, &qword_2803152D8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_269440D38(319, &qword_2803152E0, &qword_280315120, &qword_2694494F8);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_269440624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  v7 = OUTLINED_FUNCTION_37(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    v12 = OUTLINED_FUNCTION_37(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
      v14 = *(a3 + 28);
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_269440730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_38();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  v9 = OUTLINED_FUNCTION_37(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    v14 = OUTLINED_FUNCTION_37(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
      v16 = *(a4 + 28);
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_269440830()
{
  sub_269440D38(319, &qword_2803152F8, &qword_280315178, &qword_269449520);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_269440928(319, &qword_2803152D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_269440928(319, &qword_280315300);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_269440928(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_269448C44();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_269440988()
{
  OUTLINED_FUNCTION_38();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2694409EC()
{
  OUTLINED_FUNCTION_38();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_269440A40()
{
  sub_269440928(319, &qword_2803152D8);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_38();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_37(v14);
  if (*(v16 + 84) == v7)
  {
    v17 = v15;
    v18 = v8;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v18 = v8 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v18, v7, v17);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_38();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  v17 = OUTLINED_FUNCTION_37(v16);
  if (*(v18 + 84) == a3)
  {
    v19 = v17;
    v20 = v9;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v20 = v9 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v20, v8, v8, v19);
}

void sub_269440C8C()
{
  sub_269440D38(319, &qword_280315328, &qword_280315200, &qword_269449550);
  if (v0 <= 0x3F)
  {
    sub_269440928(319, &qword_2803152D8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269440D38(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_269448C44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269440DE8(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_49(a1);
}

_BYTE *sub_269440E34(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x269440ED0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTranslationModels.SiriTranslationDisambiguationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriTranslationModels.SiriTranslationDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26944105CLL);
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

uint64_t sub_269441094(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26944111C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2694411E8);
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

uint64_t getEnumTagSinglePayload for SiriTranslationModels.SiriTranslationResultModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriTranslationModels.SiriTranslationResultModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x269441374);
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

uint64_t getEnumTagSinglePayload for SiriTranslationModels.SnippetTranslationItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriTranslationModels.SnippetTranslationItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x269441508);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_269441544()
{
  result = qword_280315330;
  if (!qword_280315330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315330);
  }

  return result;
}

unint64_t sub_26944159C()
{
  result = qword_280315338;
  if (!qword_280315338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315338);
  }

  return result;
}

unint64_t sub_2694415F4()
{
  result = qword_280315340;
  if (!qword_280315340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315340);
  }

  return result;
}

unint64_t sub_26944164C()
{
  result = qword_280315348;
  if (!qword_280315348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315348);
  }

  return result;
}

unint64_t sub_2694416A4()
{
  result = qword_280315350;
  if (!qword_280315350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315350);
  }

  return result;
}

unint64_t sub_2694416FC()
{
  result = qword_280315358;
  if (!qword_280315358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315358);
  }

  return result;
}

unint64_t sub_269441754()
{
  result = qword_280315360;
  if (!qword_280315360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315360);
  }

  return result;
}

unint64_t sub_2694417AC()
{
  result = qword_280315368;
  if (!qword_280315368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315368);
  }

  return result;
}

unint64_t sub_269441804()
{
  result = qword_280315370;
  if (!qword_280315370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315370);
  }

  return result;
}

unint64_t sub_26944185C()
{
  result = qword_280315378;
  if (!qword_280315378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315378);
  }

  return result;
}

unint64_t sub_2694418B4()
{
  result = qword_280315380;
  if (!qword_280315380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315380);
  }

  return result;
}

unint64_t sub_26944190C()
{
  result = qword_280315388;
  if (!qword_280315388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315388);
  }

  return result;
}

unint64_t sub_269441964()
{
  result = qword_280315390;
  if (!qword_280315390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315390);
  }

  return result;
}

unint64_t sub_2694419BC()
{
  result = qword_280315398;
  if (!qword_280315398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315398);
  }

  return result;
}

unint64_t sub_269441A14()
{
  result = qword_2803153A0;
  if (!qword_2803153A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153A0);
  }

  return result;
}

unint64_t sub_269441A6C()
{
  result = qword_2803153A8;
  if (!qword_2803153A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153A8);
  }

  return result;
}

unint64_t sub_269441AC4()
{
  result = qword_2803153B0;
  if (!qword_2803153B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153B0);
  }

  return result;
}

unint64_t sub_269441B1C()
{
  result = qword_2803153B8;
  if (!qword_2803153B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153B8);
  }

  return result;
}

unint64_t sub_269441B74()
{
  result = qword_2803153C0;
  if (!qword_2803153C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153C0);
  }

  return result;
}

unint64_t sub_269441BCC()
{
  result = qword_2803153C8;
  if (!qword_2803153C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153C8);
  }

  return result;
}

unint64_t sub_269441C24()
{
  result = qword_2803153D0;
  if (!qword_2803153D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5()
{
  result = v0;
  v3 = *(v1 - 208);
  v4 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{

  return sub_269449024();
}

uint64_t OUTLINED_FUNCTION_9()
{
  *(v1 - 144) = v0;
  v2 = *(v1 - 208);
  v3 = *(*(v1 - 216) + 8);
  return *(v1 - 160);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return MEMORY[0x2821CB228](v1, a1);
}

uint64_t OUTLINED_FUNCTION_15()
{

  return sub_269448C24();
}

uint64_t OUTLINED_FUNCTION_25()
{

  return sub_269449024();
}

uint64_t OUTLINED_FUNCTION_29()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_41()
{

  return sub_269448C14();
}

uint64_t OUTLINED_FUNCTION_42()
{
  result = *(v0 - 184);
  v2 = *(*(v0 - 176) + 8);
  v3 = *(v0 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_43(uint64_t result)
{
  v2 = *(result + 20);
  *(v1 - 66) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_44()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_45()
{
  v2 = *(v0 - 160);

  return sub_269448FF4();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return sub_269449024();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_269448FF4();
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_56()
{

  return sub_269449024();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return sub_269449044();
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1)
{

  return MEMORY[0x2821CB228](v1, a1);
}

uint64_t sub_269442180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269448CB4();
  v7 = OUTLINED_FUNCTION_37(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
    v12 = OUTLINED_FUNCTION_37(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_269448EC4();
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_26944226C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_269448CB4();
  v9 = OUTLINED_FUNCTION_37(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
    v14 = OUTLINED_FUNCTION_37(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_269448EC4();
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for TranslationResultSnippet()
{
  result = qword_2803153D8;
  if (!qword_2803153D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269442398()
{
  result = sub_269448CB4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(319);
    if (v2 <= 0x3F)
    {
      result = sub_269448EC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_269442450@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for TranslationResultSnippet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803153E8, &unk_26944A190);
  v7 = *(v6 - 8);
  v18 = v6;
  v19 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  sub_269443870(v2, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationResultSnippet);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_269442D2C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803153F0, &qword_26944A1A0);
  sub_2694430D4(&qword_2803153F8, &qword_2803153F0, &qword_26944A1A0);
  sub_269448E44();
  sub_269443870(v17, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationResultSnippet);
  v13 = swift_allocObject();
  sub_269442D2C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  OUTLINED_FUNCTION_1_1();
  sub_2694430D4(v14, &qword_2803153E8, &unk_26944A190);
  v15 = v18;
  sub_269448DD4();

  return (*(v19 + 8))(v10, v15);
}

uint64_t sub_2694426F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = sub_269448C64();
  v31 = *(v33 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315418, &qword_26944A1B8);
  v6 = *(*(v32 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for TranslationSourceLanguageView();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = *(type metadata accessor for TranslationResultSnippet() + 20);
  sub_269443870(a1 + v20, v19, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
  *&v19[*(v13 + 28)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315420, &qword_26944A1F0);
  swift_storeEnumTagMultiPayload();
  v21 = &v19[*(v13 + 32)];
  sub_269448EB4();
  sub_269443870(a1 + v20, v11, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
  v22 = &v11[*(type metadata accessor for TranslationTargetLanguageView() + 20)];
  sub_269448EB4();
  if (qword_2803150C8 != -1)
  {
    swift_once();
  }

  v23 = v33;
  v24 = __swift_project_value_buffer(v33, qword_280315598);
  (*(v31 + 16))(v5, v24, v23);
  v25 = sub_269448E24();
  KeyPath = swift_getKeyPath();
  v27 = &v11[*(v32 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_269443870(v19, v17, type metadata accessor for TranslationSourceLanguageView);
  sub_2694438D0(v11, v9);
  v28 = v34;
  sub_269443870(v17, v34, type metadata accessor for TranslationSourceLanguageView);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315428, &qword_26944A228);
  sub_2694438D0(v9, v28 + *(v29 + 48));
  sub_269443940(v11);
  sub_2694439A8(v19);
  sub_269443940(v9);
  return sub_2694439A8(v17);
}

uint64_t sub_269442A48(uint64_t a1)
{
  v2 = sub_269448F14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315408, &qword_26944A1A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for TranslationResultSnippet();
  v12 = a1 + *(v11 + 20);
  v13 = sub_26944822C();
  v14 = sub_269448CA4();
  v15 = sub_269448F74();

  if (os_log_type_enabled(v14, v15))
  {
    v28 = v11;
    v29 = v3;
    v30 = v2;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    v18 = [v13 punchOutUri];
    if (v18)
    {
      v19 = v18;
      sub_269448B44();

      v20 = sub_269448B54();
      v21 = 0;
    }

    else
    {
      v20 = sub_269448B54();
      v21 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v21, 1, v20);
    v22 = sub_269448F54();
    v24 = sub_2694431E4(v22, v23, &v31);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_269438000, v14, v15, "command.punchOutUri is %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x26D63D270](v17, -1, -1);
    MEMORY[0x26D63D270](v16, -1, -1);

    v3 = v29;
    v2 = v30;
    v11 = v28;
  }

  else
  {
  }

  v25 = a1 + *(v11 + 24);
  sub_269448EA4();
  v26 = v13;
  sub_269448EF4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_269442D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationResultSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269442D90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranslationResultSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2694426F8(v4, a1);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for TranslationResultSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v28 = *(*v1 + 64);
  v4 = v0 + v3;
  v5 = sub_269448CB4();
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = v0 + v3 + v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_0(v8);
  (*(v9 + 8))(v7);
  v10 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v11 = v10[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_0(v12);
  v14 = *(v13 + 8);
  v14(v7 + v11, v12);
  v15 = OUTLINED_FUNCTION_2_0(v10[6]);
  (v14)(v15);
  v16 = v10[7];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  OUTLINED_FUNCTION_0(v17);
  (*(v18 + 8))(v7 + v16);
  v19 = OUTLINED_FUNCTION_2_0(v10[8]);
  (v14)(v19);
  v20 = OUTLINED_FUNCTION_2_0(v10[9]);
  (v14)(v20);
  v21 = OUTLINED_FUNCTION_2_0(v10[10]);
  (v14)(v21);
  v22 = OUTLINED_FUNCTION_2_0(v10[11]);
  (v14)(v22);
  v23 = OUTLINED_FUNCTION_2_0(v10[12]);
  (v14)(v23);
  v24 = v1[8];
  v25 = sub_269448EC4();
  OUTLINED_FUNCTION_0(v25);
  (*(v26 + 8))(v4 + v24);

  return MEMORY[0x2821FE8E8](v29, v3 + v28, v2 | 7);
}

uint64_t sub_269443074()
{
  v1 = *(type metadata accessor for TranslationResultSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_269442A48(v2);
}

uint64_t sub_2694430D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26944311C(uint64_t a1)
{
  v2 = sub_269448CC4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269448D44();
}

uint64_t sub_2694431E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2694432A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_269443754(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2694432A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2694433A8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_269448FC4();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2694433A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2694433F4(a1, a2);
  sub_26944350C(&unk_2879F8898);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2694433F4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_269448F64())
  {
    result = sub_2694435F0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_269448F94();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_269448FC4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26944350C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_269443660(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2694435F0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315410, &qword_26944A1B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_269443660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315410, &qword_26944A1B0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_269443754(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_269443814@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269448D74();
  *a1 = result;
  return result;
}

uint64_t sub_269443840(uint64_t *a1)
{
  v1 = *a1;

  return sub_269448D84();
}

uint64_t sub_269443870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2694438D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315418, &qword_26944A1B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269443940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315418, &qword_26944A1B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2694439A8(uint64_t a1)
{
  v2 = type metadata accessor for TranslationSourceLanguageView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269443A04()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803153E8, &unk_26944A190);
  OUTLINED_FUNCTION_1_1();
  sub_2694430D4(v0, &qword_2803153E8, &unk_26944A190);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269443AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_12_0();
  v7 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = sub_269448EC4();
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_269443B74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_12_0();
  v9 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = sub_269448EC4();
    v11 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for TranslationTargetLanguageView()
{
  result = qword_280315430;
  if (!qword_280315430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269443C60()
{
  result = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_269448EC4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_269443D00()
{
  OUTLINED_FUNCTION_14_0();
  v96 = v2;
  v3 = type metadata accessor for TranslationTargetLanguageView();
  v90 = *(v3 - 8);
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_10_0(&v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_0(&v81 - v8);
  v9 = sub_269448EE4();
  v10 = OUTLINED_FUNCTION_2(v9);
  v95 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315440, &qword_26944A2D0);
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_0(&v81 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315448, &qword_26944A2D8);
  OUTLINED_FUNCTION_8_0(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_6_0();
  v30 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v29);
  v31 = OUTLINED_FUNCTION_2(v30);
  v86 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_0(&v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v37 = &v81 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  sub_269448C14();
  sub_269444EE4(v113, v1);

  v89 = v30;
  if (__swift_getEnumTagSinglePayload(v1, 1, v30) == 1)
  {
    sub_2694459CC(v1, &qword_280315448, &qword_26944A2D8);
    v38 = 1;
  }

  else
  {
    v81 = v23;
    v83 = v9;
    OUTLINED_FUNCTION_3_0();
    sub_269445408(v1, v37);
    sub_2694443F4();
    v115 = MEMORY[0x277CE11D0];
    v116 = MEMORY[0x277D63A58];
    v113 = v39;
    v93 = v0;
    sub_269444754();
    v85 = v37;
    v84 = v17;
    v82 = v16;
    if (v43)
    {
      v44 = v40;
      v45 = v41;
      v46 = v42;
      v47 = v43;
      v48 = swift_allocObject();
      *(v48 + 16) = v44;
      *(v48 + 24) = v45;
      *(v48 + 32) = v46 & 1;
      *(v48 + 40) = v47;
      v49 = MEMORY[0x277D638F0];
      v50 = MEMORY[0x277CE0BD0];
    }

    else
    {
      v48 = 0;
      v50 = 0;
      v49 = 0;
      v109 = 0;
      v110 = 0;
    }

    v107 = 0;
    v108 = v48;
    v111 = v50;
    v112 = v49;
    v105 = 0u;
    v106 = 0u;
    v51 = v93;
    v52 = sub_2694449B8();
    v54 = v53;
    v56 = v55;
    v57 = sub_269448DB4();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_269445068(v52, v54, v56 & 1);

    v100 = v57;
    v101 = v59;
    v102 = v61 & 1;
    v103 = v63;
    v64 = sub_269448DC4();
    sub_269445068(v57, v59, v61 & 1);

    v104 = MEMORY[0x277D63A58];
    v103 = MEMORY[0x277CE11D0];
    v100 = v64;
    v99 = 0;
    v98 = 0u;
    v97 = 0u;
    v65 = v91;
    sub_269445078(v51, v91);
    v66 = v87;
    sub_269445078(v85, v87);
    v67 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v68 = (v67 + v88 + *(v86 + 80)) & ~*(v86 + 80);
    v69 = swift_allocObject();
    sub_269445408(v65, v69 + v67);
    OUTLINED_FUNCTION_3_0();
    sub_269445408(v66, v69 + v68);
    v70 = v92;
    sub_269445078(v93, v92);
    v71 = swift_allocObject();
    sub_269445408(v70, v71 + v67);
    v72 = v82;
    sub_269448ED4();
    KeyPath = swift_getKeyPath();
    v74 = *(v89 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    v75 = v85;
    sub_269448C14();
    v76 = v113;
    v77 = v114;
    sub_2694457DC(v75);
    v78 = v81;
    (*(v95 + 32))(v81, v72, v83);
    v17 = v84;
    v79 = (v78 + *(v84 + 36));
    *v79 = KeyPath;
    v79[1] = v76;
    v79[2] = v77;
    v80 = v94;
    sub_269445838(v78, v94);
    sub_269445838(v80, v96);
    v38 = 0;
  }

  __swift_storeEnumTagSinglePayload(v96, v38, 1, v17);
  OUTLINED_FUNCTION_13_0();
}

void sub_2694443F4()
{
  OUTLINED_FUNCTION_14_0();
  v2 = sub_269448BD4();
  v3 = OUTLINED_FUNCTION_2(v2);
  v42 = v4;
  v43 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  v7 = sub_269448CF4();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315448, &qword_26944A2D8);
  OUTLINED_FUNCTION_8_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315468, &qword_26944A330);
  OUTLINED_FUNCTION_0(v40);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v24);
  v26 = &v39 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  v41 = v0;
  sub_269448C14();
  sub_269444EE4(v44, v21);

  v27 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v27) == 1)
  {
    sub_2694459CC(v21, &qword_280315448, &qword_26944A2D8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    sub_269448C14();
    sub_2694457DC(v21);
  }

  sub_269448CE4();
  v28 = sub_269448DA4();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  (*(v10 + 8))(v15, v7);
  KeyPath = swift_getKeyPath();
  v36 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  sub_269448B94();
  v37 = &v26[*(v40 + 36)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315470, &qword_26944A368);
  sub_269448808(v37 + *(v38 + 28));
  (*(v42 + 8))(v1, v43);
  *v37 = KeyPath;
  *v26 = v28;
  *(v26 + 1) = v30;
  v26[16] = v32 & 1;
  *(v26 + 3) = v34;
  sub_269445914();
  sub_269448DC4();
  sub_2694459CC(v26, &qword_280315468, &qword_26944A330);
  OUTLINED_FUNCTION_13_0();
}

void sub_269444754()
{
  OUTLINED_FUNCTION_14_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315458, &qword_26944A328);
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v3);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315448, &qword_26944A2D8);
  OUTLINED_FUNCTION_8_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  sub_269448C14();
  sub_269444EE4(v20[2], v11);

  v12 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2694459CC(v11, &qword_280315448, &qword_26944A2D8);
  }

  else
  {
    v13 = *(v12 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
    sub_269448C14();
    v14 = v20[3];
    sub_2694457DC(v11);
    if (v14)
    {
      sub_269448CE4();
      *&v5[*(v0 + 36)] = 1056964608;
      sub_2694430D4(&qword_280315460, &qword_280315458, &qword_26944A328);
      v15 = sub_269448DA4();
      v17 = v16;
      v19 = v18;

      sub_2694459CC(v5, &qword_280315458, &qword_26944A328);
      sub_269448DB4();
      sub_269445068(v15, v17, v19 & 1);
    }
  }

  OUTLINED_FUNCTION_13_0();
}

uint64_t sub_2694449B8()
{
  v1 = sub_269448CF4();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_6_0();
  v8 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v7) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  sub_269448CE4();
  v9 = sub_269448DA4();

  (*(v4 + 8))(v0, v1);
  return v9;
}

void sub_269444AF0()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v23 = sub_269448F14();
  v4 = OUTLINED_FUNCTION_2(v23);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = v0 + *(type metadata accessor for TranslationTargetLanguageView() + 20);
  sub_269448EA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315450, &qword_26944A320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26944A230;
  v24[0] = 1954047348;
  v24[1] = 0xE400000000000000;
  v14 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_9_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v15 = v24[0];
  v16 = v24[1];
  *(inited + 96) = v14;
  *(inited + 72) = v15;
  *(inited + 80) = v16;
  strcpy(v24, "targetLanguage");
  HIBYTE(v24[1]) = -18;
  OUTLINED_FUNCTION_9_0();
  v17 = v1 + *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 32);
  sub_269448C14();
  v18 = v24[0];
  v19 = v24[1];
  *(inited + 168) = v14;
  *(inited + 144) = v18;
  *(inited + 152) = v19;
  v24[0] = 0xD000000000000016;
  v24[1] = 0x800000026944B0F0;
  OUTLINED_FUNCTION_9_0();
  v20 = v3 + *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0) + 28);
  sub_269448C14();
  v21 = v24[0];
  v22 = v24[1];
  *(inited + 240) = v14;
  *(inited + 216) = v21;
  *(inited + 224) = v22;
  sub_269448F24();
  sub_269448F04();

  (*(v6 + 8))(v11, v23);
  OUTLINED_FUNCTION_13_0();
}

uint64_t sub_269444D44(uint64_t a1)
{
  v2 = sub_269448F14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for TranslationTargetLanguageView() + 20);
  sub_269448EA4();
  sub_269448F24();
  sub_269448F04();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_269444E78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269448D14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_269444EA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_269448D24();
}

uint64_t sub_269444EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v6 = v5;
  if (v4)
  {
    sub_269445078(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_269444F9C(uint64_t a1)
{
  v2 = sub_269448D04();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269448D64();
}

uint64_t sub_269445068(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_269445078(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2694450D4()
{
  v2 = (type metadata accessor for TranslationTargetLanguageView() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  OUTLINED_FUNCTION_11_0(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v4 + v5 + v11) & ~v11;
  v40 = v3 | v11;
  v41 = *(v10 + 64);
  v13 = v1 + v4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_0(v14);
  (*(v15 + 8))(v13);
  v16 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v17 = v16[5];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_0(v18);
  v20 = *(v19 + 8);
  v20(v13 + v17, v18);
  v21 = OUTLINED_FUNCTION_5_0(v16[6]);
  (v20)(v21);
  v22 = v16[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  OUTLINED_FUNCTION_0(v23);
  (*(v24 + 8))(v13 + v22);
  v25 = OUTLINED_FUNCTION_5_0(v16[8]);
  (v20)(v25);
  v26 = OUTLINED_FUNCTION_5_0(v16[9]);
  (v20)(v26);
  v27 = OUTLINED_FUNCTION_5_0(v16[10]);
  (v20)(v27);
  v28 = OUTLINED_FUNCTION_5_0(v16[11]);
  (v20)(v28);
  v29 = OUTLINED_FUNCTION_5_0(v16[12]);
  (v20)(v29);
  v30 = v2[7];
  v31 = sub_269448EC4();
  OUTLINED_FUNCTION_0(v31);
  (*(v32 + 8))(v13 + v30);
  v20(v1 + v12, v18);
  v33 = v0[7];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  OUTLINED_FUNCTION_0(v34);
  v36 = *(v35 + 8);
  v36(v1 + v12 + v33, v34);
  v37 = OUTLINED_FUNCTION_4(v0[8]);
  (v36)(v37);
  v20(v1 + v12 + v0[9], v18);
  v38 = OUTLINED_FUNCTION_4(v0[10]);
  (v36)(v38);

  return MEMORY[0x2821FE8E8](v1, v12 + v41, v40 | 7);
}

uint64_t sub_269445408(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

void sub_269445464()
{
  v0 = *(type metadata accessor for TranslationTargetLanguageView() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  OUTLINED_FUNCTION_8_0(v3);
  v5 = *(v4 + 80);
  sub_269444AF0();
}

uint64_t sub_269445520()
{
  v2 = type metadata accessor for TranslationTargetLanguageView();
  OUTLINED_FUNCTION_11_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v27 = *(v6 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_0(v7);
  (*(v8 + 8))(v1 + v5);
  v9 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v10 = v9[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_0(v11);
  v13 = *(v12 + 8);
  v13(v1 + v5 + v10, v11);
  v14 = OUTLINED_FUNCTION_4(v9[6]);
  (v13)(v14);
  v15 = v9[7];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  OUTLINED_FUNCTION_0(v16);
  (*(v17 + 8))(v1 + v5 + v15);
  v18 = OUTLINED_FUNCTION_4(v9[8]);
  (v13)(v18);
  v19 = OUTLINED_FUNCTION_4(v9[9]);
  (v13)(v19);
  v20 = OUTLINED_FUNCTION_4(v9[10]);
  (v13)(v20);
  v21 = OUTLINED_FUNCTION_4(v9[11]);
  (v13)(v21);
  v22 = OUTLINED_FUNCTION_4(v9[12]);
  (v13)(v22);
  v23 = *(v0 + 28);
  v24 = sub_269448EC4();
  OUTLINED_FUNCTION_0(v24);
  (*(v25 + 8))(v1 + v5 + v23);

  return MEMORY[0x2821FE8E8](v1, v5 + v27, v4 | 7);
}

uint64_t sub_269445750()
{
  v1 = type metadata accessor for TranslationTargetLanguageView();
  OUTLINED_FUNCTION_8_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_269444D44(v3);
}

uint64_t sub_2694457AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269448D14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2694457DC(uint64_t a1)
{
  v2 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269445838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315440, &qword_26944A2D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2694458A8()
{
  sub_269445068(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_269445914()
{
  result = qword_280315478;
  if (!qword_280315478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315468, &qword_26944A330);
    sub_2694430D4(&qword_280315480, &qword_280315470, &qword_26944A368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315478);
  }

  return result;
}

uint64_t sub_2694459CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_269445A28()
{
  result = qword_280315488;
  if (!qword_280315488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315490, &unk_26944A370);
    sub_269445AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315488);
  }

  return result;
}

unint64_t sub_269445AAC()
{
  result = qword_280315498;
  if (!qword_280315498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315440, &qword_26944A2D0);
    sub_269445B64();
    sub_2694430D4(&qword_2803154A8, &qword_2803154B0, qword_26944A550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315498);
  }

  return result;
}

unint64_t sub_269445B64()
{
  result = qword_2803154A0;
  if (!qword_2803154A0)
  {
    sub_269448EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803154A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_269448F84();
}

uint64_t sub_269445C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_12_0();
  v7 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = sub_269448EC4();
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_269445D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_12_0();
  v9 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = sub_269448EC4();
    v11 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for DisambiguateTranslationSnippet()
{
  result = qword_2803154B8;
  if (!qword_2803154B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269445E2C()
{
  result = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_269448EC4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269445ECC()
{
  v1 = type metadata accessor for DisambiguateTranslationSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = sub_269448E94();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_269446060();
  sub_269446DBC(v0, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_269447038(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803154C8, &qword_26944A420);
  sub_269446A58();
  return sub_269448E54();
}

uint64_t sub_269446060()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  return sub_269448E84();
}

uint64_t sub_2694460F4(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguateTranslationSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  sub_269448C14();
  swift_getKeyPath();
  sub_269446DBC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_269447038(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315200, &qword_269449550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803154E8, &unk_26944A460);
  sub_2694430D4(&qword_2803154F0, &qword_280315200, &qword_269449550);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803154D8, &qword_26944A428);
  v8 = sub_269448E74();
  v9 = sub_269446B50();
  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v7;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_269448E34();
}

uint64_t sub_269446348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for SiriTranslationModels.Language(0);
  v6 = v5 - 8;
  v32 = *(v5 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = type metadata accessor for DisambiguateTranslationSnippet();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_269448E74();
  v33 = *(v31 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803154D8, &qword_26944A428);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *(v6 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v63 = MEMORY[0x277D837D0];
  v64 = MEMORY[0x277D63F88];
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_269448E64();
  sub_269446DBC(a2, v10);
  v20 = a1;
  v21 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269446DBC(v20, v21);
  v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v23 = (v9 + *(v32 + 80) + v22) & ~*(v32 + 80);
  v24 = swift_allocObject();
  sub_269447038(v10, v24 + v22);
  sub_269447038(v21, v24 + v23);
  v25 = sub_269446B50();
  v26 = v31;
  sub_269448DD4();

  (*(v33 + 8))(v13, v26);
  v61 = v26;
  v62 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_269448E14();
  return (*(v35 + 8))(v18, v27);
}

uint64_t sub_269446798()
{
  v1 = v0;
  v2 = sub_269448F14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(type metadata accessor for DisambiguateTranslationSnippet() + 20);
  sub_269448EA4();
  v16 = "playerButtonIdentifier";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315450, &qword_26944A320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26944A380;
  OUTLINED_FUNCTION_3_1(0x614C746567726174);
  v9 = MEMORY[0x277D837D0];
  sub_269448F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  OUTLINED_FUNCTION_1_2();
  *(inited + 96) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  OUTLINED_FUNCTION_3_1(0x657361726870);
  sub_269448F84();
  v12 = v1 + *(type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0) + 24);
  sub_269448C14();
  OUTLINED_FUNCTION_1_2();
  *(inited + 168) = v9;
  *(inited + 144) = v13;
  *(inited + 152) = v14;
  sub_269448F24();
  sub_269448F04();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2694469EC()
{
  v1 = type metadata accessor for DisambiguateTranslationSnippet();
  OUTLINED_FUNCTION_8_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_2694460F4(v3);
}

unint64_t sub_269446A58()
{
  result = qword_2803154D0;
  if (!qword_2803154D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803154C8, &qword_26944A420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803154D8, &qword_26944A428);
    sub_269448E74();
    sub_269446B50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803154D0);
  }

  return result;
}

unint64_t sub_269446B50()
{
  result = qword_2803154E0;
  if (!qword_2803154E0)
  {
    sub_269448E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803154E0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v2 = type metadata accessor for DisambiguateTranslationSnippet();
  OUTLINED_FUNCTION_11_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v18 = *(v6 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  OUTLINED_FUNCTION_0(v7);
  (*(v8 + 8))(v1 + v5);
  v9 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v10 = *(v9 + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_0(v11);
  v13 = *(v12 + 8);
  v13(v1 + v5 + v10, v11);
  v13(v1 + v5 + *(v9 + 24), v11);
  v14 = *(v0 + 28);
  v15 = sub_269448EC4();
  OUTLINED_FUNCTION_0(v15);
  (*(v16 + 8))(v1 + v5 + v14);

  return MEMORY[0x2821FE8E8](v1, v5 + v18, v4 | 7);
}

uint64_t sub_269446D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DisambiguateTranslationSnippet();
  OUTLINED_FUNCTION_8_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_269446348(a1, v7, a2);
}

uint64_t sub_269446DBC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_269446E18()
{
  v2 = (type metadata accessor for DisambiguateTranslationSnippet() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = type metadata accessor for SiriTranslationModels.Language(0);
  OUTLINED_FUNCTION_11_0(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v4 + v5 + v11) & ~v11;
  v25 = v3 | v11;
  v26 = *(v10 + 64);
  v13 = v1 + v4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  OUTLINED_FUNCTION_0(v14);
  (*(v15 + 8))(v1 + v4);
  v16 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v17 = *(v16 + 20);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_0(v18);
  v20 = *(v19 + 8);
  v20(v13 + v17, v18);
  v20(v13 + *(v16 + 24), v18);
  v21 = v2[7];
  v22 = sub_269448EC4();
  OUTLINED_FUNCTION_0(v22);
  (*(v23 + 8))(v13 + v21);
  v20(v1 + v12, v18);
  v20(v1 + v12 + *(v0 + 28), v18);

  return MEMORY[0x2821FE8E8](v1, v12 + v26, v25 | 7);
}

uint64_t sub_269447038(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_269447094()
{
  v0 = *(type metadata accessor for DisambiguateTranslationSnippet() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = type metadata accessor for SiriTranslationModels.Language(0);
  OUTLINED_FUNCTION_8_0(v3);
  v5 = *(v4 + 80);
  return sub_269446798();
}

uint64_t sub_2694471D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v7 = OUTLINED_FUNCTION_37(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315508, qword_26944A480);
    v12 = OUTLINED_FUNCTION_37(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_269448EC4();
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_2694472CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v9 = OUTLINED_FUNCTION_37(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315508, qword_26944A480);
    v14 = OUTLINED_FUNCTION_37(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_269448EC4();
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for TranslationSourceLanguageView()
{
  result = qword_280315510;
  if (!qword_280315510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269447404()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(319);
  if (v0 <= 0x3F)
  {
    sub_2694474A0();
    if (v1 <= 0x3F)
    {
      sub_269448EC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2694474A0()
{
  if (!qword_280315520)
  {
    sub_269448CC4();
    v0 = sub_269448CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280315520);
    }
  }
}

uint64_t sub_269447514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for TranslationSourceLanguageView();
  v38 = *(v3 - 8);
  v37[1] = *(v38 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v6 = *(v40 + 24);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v7 = sub_269448DB4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v56 = MEMORY[0x277CE0BD0];
  v57 = MEMORY[0x277D638F0];
  v14 = swift_allocObject();
  v54 = v14;
  *(v14 + 16) = v7;
  *(v14 + 24) = v9;
  *(v14 + 32) = v11 & 1;
  *(v14 + 40) = v13;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v15 = sub_269447880();
  v17 = v16;
  LOBYTE(v13) = v18;
  v19 = sub_269448DB4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_269445068(v15, v17, v13 & 1);

  v46 = MEMORY[0x277CE0BD0];
  v47 = MEMORY[0x277D638F0];
  v26 = swift_allocObject();
  v45 = v26;
  *(v26 + 16) = v19;
  *(v26 + 24) = v21;
  *(v26 + 32) = v23 & 1;
  *(v26 + 40) = v25;
  v44 = 0;
  v43 = 0u;
  v42 = 0u;
  sub_269447D2C(v2, v5);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = swift_allocObject();
  sub_269447D94(v5, v28 + v27);
  sub_269447D2C(v2, v5);
  v29 = swift_allocObject();
  sub_269447D94(v5, v29 + v27);
  v30 = v41;
  sub_269448ED4();
  KeyPath = swift_getKeyPath();
  v32 = v2 + *(v40 + 20);
  sub_269448C14();
  v33 = v54;
  v34 = v55;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315440, &qword_26944A2D0);
  v36 = (v30 + *(result + 36));
  *v36 = KeyPath;
  v36[1] = v33;
  v36[2] = v34;
  return result;
}

uint64_t sub_269447880()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  sub_269448D94();
  v1 = sub_269448DA4();

  return v1;
}

uint64_t sub_269447940()
{
  v1 = v0;
  v2 = sub_269448F14();
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for TranslationSourceLanguageView() + 24);
  sub_269448EA4();
  v20[1] = "Translation.StopSpeakAction";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315450, &qword_26944A320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26944A230;
  v23[0] = 1954047348;
  v23[1] = 0xE400000000000000;
  v8 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_2_1();
  v9 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v10 = v9[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v11 = v23[0];
  v12 = v23[1];
  *(inited + 96) = v8;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  strcpy(v23, "targetLanguage");
  HIBYTE(v23[1]) = -18;
  OUTLINED_FUNCTION_2_1();
  v13 = v1 + v9[9];
  sub_269448C14();
  v14 = v23[0];
  v15 = v23[1];
  *(inited + 168) = v8;
  *(inited + 144) = v14;
  *(inited + 152) = v15;
  v23[0] = 0xD000000000000016;
  v23[1] = 0x800000026944B0F0;
  OUTLINED_FUNCTION_2_1();
  v16 = v1 + v9[5];
  sub_269448C14();
  v17 = v23[0];
  v18 = v23[1];
  *(inited + 240) = v8;
  *(inited + 216) = v17;
  *(inited + 224) = v18;
  sub_269448F24();
  sub_269448F04();

  return (*(v21 + 8))(v5, v22);
}

uint64_t sub_269447BB0(uint64_t a1)
{
  v2 = sub_269448F14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for TranslationSourceLanguageView() + 24);
  sub_269448EA4();
  sub_269448F24();
  sub_269448F04();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_269447CE8()
{
  sub_269445068(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269447D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationSourceLanguageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269447D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationSourceLanguageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269447DF8()
{
  v1 = *(type metadata accessor for TranslationSourceLanguageView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_269447940();
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for TranslationSourceLanguageView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v28 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v8 = v7[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);
  v11 = OUTLINED_FUNCTION_4(v7[6]);
  (v10)(v11);
  v12 = v7[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  OUTLINED_FUNCTION_0_1(v13);
  (*(v14 + 8))(v0 + v3 + v12);
  v15 = OUTLINED_FUNCTION_4(v7[8]);
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_4(v7[9]);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_4(v7[10]);
  (v10)(v17);
  v18 = OUTLINED_FUNCTION_4(v7[11]);
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_4(v7[12]);
  (v10)(v19);
  v20 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315420, &qword_26944A1F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_269448CC4();
    OUTLINED_FUNCTION_0_1(v21);
    (*(v22 + 8))(v4 + v20);
  }

  else
  {
    v23 = *(v4 + v20);
  }

  v24 = *(v1 + 24);
  v25 = sub_269448EC4();
  OUTLINED_FUNCTION_0_1(v25);
  (*(v26 + 8))(v4 + v24);

  return MEMORY[0x2821FE8E8](v0, v3 + v28, v2 | 7);
}

uint64_t sub_2694480F4()
{
  v1 = *(type metadata accessor for TranslationSourceLanguageView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_269447BB0(v2);
}

unint64_t sub_269448160()
{
  result = qword_2803154A8;
  if (!qword_2803154A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803154B0, qword_26944A550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803154A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return sub_269448F84();
}

id sub_26944822C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315408, &qword_26944A1A8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_269448B84();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_269448B74();
  v13 = sub_269448B64();
  v15 = v14;
  (*(v7 + 8))(v11, v4);
  sub_2694487A4(v13, v15, v12);

  sub_269448524(v3);
  v16 = sub_269448B54();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v16) != 1)
  {
    v17 = sub_269448B34();
    (*(*(v16 - 8) + 8))(v3, v16);
  }

  [v12 setPunchOutUri_];

  return v12;
}

uint64_t sub_26944840C()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v1 = sub_269448C84();

  result = 0;
  if (v1 != 23)
  {
    return sub_269448C94();
  }

  return result;
}

uint64_t sub_269448498()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v1 = sub_269448C84();

  result = 0;
  if (v1 != 23)
  {
    return sub_269448C94();
  }

  return result;
}

uint64_t sub_269448524@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_269448B24();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269448B14();
  sub_269448B04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315528, qword_26944A598);
  v9 = *(sub_269448AD4() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_26944A230;
  sub_26944840C();
  sub_269448AC4();

  sub_269448498();
  sub_269448AC4();

  v12 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  sub_269448AC4();

  sub_269448AE4();
  sub_269448AF4();
  return (*(v4 + 8))(v8, v1);
}

void sub_2694487A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269448F44();

  [a3 setAceId_];
}

uint64_t sub_269448808@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269448BB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269448BC4();
  v7 = sub_269448BA4();
  (*(v3 + 8))(v6, v2);
  v8 = sub_269448D04();
  v9 = MEMORY[0x277CDFA98];
  if (v7 != 2)
  {
    v9 = MEMORY[0x277CDFA80];
  }

  return (*(*(v8 - 8) + 104))(a1, *v9, v8);
}

id sub_269448958()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280315530 = result;
  return result;
}

uint64_t sub_2694489B0()
{
  v0 = sub_269448C64();
  __swift_allocate_value_buffer(v0, qword_280315598);
  __swift_project_value_buffer(v0, qword_280315598);
  if (qword_2803150C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280315530;
  return sub_269448C54();
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