uint64_t sub_2752F82E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *(*a2 + 16);
  return MEMORY[0x2822009F8](sub_2752F830C, 0, 0);
}

uint64_t sub_2752F8330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = sub_2753B69B8();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 32);

  return v9(a3, a1, v7);
}

uint64_t sub_2752F83A0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D650F0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_2752E546C;

  return MEMORY[0x2821CC418](a1, a2, WitnessTable);
}

uint64_t sub_2752F846C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D650F8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_2752F7284;

  return MEMORY[0x2821CC420](a1, a2, WitnessTable);
}

uint64_t sub_2752F8538@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FacetCollection<>.ContentType.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FacetCollection<>.contentType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_2_0(a1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v3, a1);
  v13 = *(a1 + 16);
  return sub_2752F8330(v11, a2, a3);
}

uint64_t sub_2752F863C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2752E546C;

  return sub_2752F82E0(a1, a2);
}

uint64_t sub_2752F873C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = OUTLINED_FUNCTION_160(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_2752F8798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = OUTLINED_FUNCTION_160(*(a4 + 24));

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v7);
}

uint64_t sub_2752F8898(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E546C;

  return FacetCollection<>.MusicKitMetadata.availability.getter(a1);
}

uint64_t sub_2752F8930(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2752F89C0;

  return FacetCollection<>.MusicKitMetadata.value.getter();
}

uint64_t sub_2752F89C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t FacetCollection<>.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  v11 = *(a1 + 16);
  return sub_2752E5F4C(v9, a2, a3);
}

uint64_t sub_2752F8BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 24) + 8);
  v7 = sub_2753B69B8();

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_2752F8C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(a4 + 24) + 8);
  v8 = sub_2753B69B8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
}

uint64_t FacetCollection<>.RelatedContent.id.getter(uint64_t a1)
{
  sub_2753B7398();
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_160(*(a1 + 24));
  sub_2753B69A8();
  v3 = sub_2753B6648();
  v5 = v4;

  MEMORY[0x277C76100](v3, v5);

  MEMORY[0x277C76100](0xD000000000000010, 0x80000002753B8410);
  v6 = *(a1 + 36);
  sub_2753B6A18();
  sub_2753B7468();
  return 0;
}

uint64_t FacetCollection<>.RelatedContent.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = OUTLINED_FUNCTION_160(*(a1 + 24));
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2, v6);
}

uint64_t FacetCollection<>.RelatedContent.context.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  v6 = sub_2753B69B8();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 40);

  return v9(v2, a1, v7);
}

uint64_t FacetCollection<>.RelatedContent.relationship.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_2753B6A18();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t FacetCollection<>.RelatedContent.relationship.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_2753B6A18();
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t (*FacetCollection<>.RelatedContent.relationship.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t FacetCollection<>.RelatedContent.builders.getter(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10();
  v11 = v10 - v9;
  v19 = v12;
  swift_getExtendedExistentialTypeMetadata();
  sub_2753B76C8();
  swift_allocObject();
  sub_2753B6FF8();
  v14 = v13;
  (*(v5 + 16))(v11, v2, a1);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = type metadata accessor for FacetCollection<>.MusicKitRelatedContentElement();
  v19 = &v18;
  swift_getWitnessTable();
  v14[3] = sub_2753B68B8();
  v14[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v14);
  swift_getWitnessTable();
  sub_2753B68A8();
  return sub_2752E6688();
}

uint64_t sub_2752F9164(uint64_t a1, void **a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = **a2;
  return MEMORY[0x2822009F8](sub_2752F9190, 0, 0);
}

uint64_t sub_2752F9190()
{
  **(v0 + 16) = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2752F9200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 8);
  v8 = sub_2753B69B8();
  OUTLINED_FUNCTION_9(v8);
  (*(v9 + 32))(a4, a1);
  v10 = *(type metadata accessor for FacetCollection<>.RelatedContent() + 36);
  v11 = sub_2753B6A18();
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 32);

  return v13(a4 + v10, a2);
}

uint64_t sub_2752F92D8(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D650F0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_2752E546C;

  return MEMORY[0x2821CC418](a1, a2, WitnessTable);
}

uint64_t sub_2752F93A4(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D650F8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_2752F7284;

  return MEMORY[0x2821CC420](a1, a2, WitnessTable);
}

uint64_t sub_2752F9470@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FacetCollection<>.RelatedContent.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FacetCollection<>.relatedContent(as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_2753B6A18();
  OUTLINED_FUNCTION_2_1();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_2_1();
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22, v5, a2);
  (*(v12 + 16))(v18, a1, v10);
  v26 = *(a2 + 16);
  return sub_2752F9200(v24, v18, a3, a4);
}

uint64_t sub_2752F9638(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  result = sub_2753B69B8();
  if (v4 <= 0x3F)
  {
    result = sub_2753B6A18();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2752F96D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = OUTLINED_FUNCTION_160(*(a3 + 24));
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = a1;
  }

  else
  {
    v8 = sub_2753B6A18();
    v9 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2752F9788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = OUTLINED_FUNCTION_160(*(a4 + 24));
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = a1;
  }

  else
  {
    v10 = sub_2753B6A18();
    v11 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t FacetCollection<>.Traits.id.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_160(*(a1 + 24));
  sub_2753B69A8();
  v2 = sub_2753B6648();

  MEMORY[0x277C76100](0x7374696172742DLL, 0xE700000000000000);
  return v2;
}

uint64_t FacetCollection<>.Traits.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = OUTLINED_FUNCTION_160(*(a1 + 24));
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2, v6);
}

uint64_t FacetCollection<>.Traits.context.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  v6 = sub_2753B69B8();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 40);

  return v9(v2, a1, v7);
}

uint64_t sub_2752F9A64(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D650F0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_2752E546C;

  return MEMORY[0x2821CC418](a1, a2, WitnessTable);
}

uint64_t sub_2752F9B30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752F7284;

  return FacetCollection<>.Traits.value.getter(a1);
}

uint64_t sub_2752F9BC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FacetCollection<>.Traits.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FacetCollection<>.traits.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  v11 = *(a1 + 16);
  return sub_2752F8330(v9, a2, a3);
}

_SonicKit_MusicKit::ContentTraits sub_2752F9D90@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ContentTraits.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2752F9DD0@<X0>(uint64_t *a1@<X8>)
{
  result = ContentTraits.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2752F9E44()
{
  result = qword_2809C11E8;
  if (!qword_2809C11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C11E8);
  }

  return result;
}

unint64_t sub_2752F9E9C()
{
  result = qword_2809C11F0;
  if (!qword_2809C11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C11F0);
  }

  return result;
}

unint64_t sub_2752F9EF4()
{
  result = qword_2809C11F8;
  if (!qword_2809C11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C11F8);
  }

  return result;
}

unint64_t sub_2752F9F4C()
{
  result = qword_2809C1200[0];
  if (!qword_2809C1200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C1200);
  }

  return result;
}

uint64_t sub_2752F9FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = OUTLINED_FUNCTION_160(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_2752FA010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = OUTLINED_FUNCTION_160(*(a4 + 24));

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v7);
}

uint64_t getEnumTagSinglePayload for ContentTraits(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContentTraits(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t SongTransitionInfo.flexAnalysis.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SongTransitionInfo() + 20);
  v4 = sub_2753B67C8();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for SongTransitionInfo()
{
  result = qword_2809C1318;
  if (!qword_2809C1318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SongTransitionInfo.flexAnalysis.setter()
{
  v2 = *(OUTLINED_FUNCTION_13_0() + 20);
  v3 = sub_2753B67C8();
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t SongTransitionInfo.audioAnalysis.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SongTransitionInfo() + 24);
  v4 = sub_2753B6808();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SongTransitionInfo.audioAnalysis.setter()
{
  v2 = *(OUTLINED_FUNCTION_13_0() + 24);
  v3 = sub_2753B6808();
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t SongTransitionInfo.genres.getter()
{
  v1 = *(v0 + *(type metadata accessor for SongTransitionInfo() + 28));
}

uint64_t SongTransitionInfo.genres.setter()
{
  v2 = *(OUTLINED_FUNCTION_13_0() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SongTransitionInfo.spatialTimingInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SongTransitionInfo() + 32);

  return sub_2752FA478(v3, a1);
}

uint64_t sub_2752FA478(uint64_t a1, uint64_t a2)
{
  sub_2752FAE3C(0, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SongTransitionInfo.spatialTimingInformation.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_13_0() + 32);

  return sub_2752FA548(v0, v2);
}

uint64_t sub_2752FA548(uint64_t a1, uint64_t a2)
{
  sub_2752FAE3C(0, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SongTransitionInfo.supportsSmartTransitions.setter(char a1)
{
  result = type metadata accessor for SongTransitionInfo();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_2752FA6A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E4178656C66 && a2 == 0xEC00000073697379;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616E416F69647561 && a2 == 0xED0000736973796CLL;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000002753B8430 == a2;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000018 && 0x80000002753B8450 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_2753B7718();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2752FA8A8(unsigned __int8 a1)
{
  sub_2753B7798();
  MEMORY[0x277C76A80](a1);
  return sub_2753B77D8();
}

unint64_t sub_2752FA8F0(char a1)
{
  result = 0x6E6F697461727564;
  switch(a1)
  {
    case 1:
      result = 0x6C616E4178656C66;
      break;
    case 2:
      result = 0x616E416F69647561;
      break;
    case 3:
      result = 0x7365726E6567;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752FA9D4()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

uint64_t sub_2752FAA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752FA6A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752FAA48(uint64_t a1)
{
  v2 = sub_2752FADE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752FAA84(uint64_t a1)
{
  v2 = sub_2752FADE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SongTransitionInfo.encode(to:)(void *a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_8_0();
  sub_2752FBAF0(0, v5, v6, &type metadata for SongTransitionInfo.CodingKeys, MEMORY[0x277D84538]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752FADE8();
  sub_2753B7808();
  v17 = *v3;
  v38 = 0;
  sub_2753B7678();
  if (!v2)
  {
    v18 = type metadata accessor for SongTransitionInfo();
    v19 = v18[5];
    v37 = 1;
    sub_2753B67C8();
    OUTLINED_FUNCTION_10_0();
    sub_2752FB640(v20, v21);
    OUTLINED_FUNCTION_4_1();
    sub_2753B7698();
    v22 = v18[6];
    v36 = 2;
    sub_2753B6808();
    OUTLINED_FUNCTION_9_0();
    sub_2752FB640(v23, v24);
    OUTLINED_FUNCTION_4_1();
    sub_2753B7698();
    v32[1] = *(v3 + v18[7]);
    v35 = 3;
    OUTLINED_FUNCTION_1_1();
    sub_2752FAE3C(0, v25, v26, MEMORY[0x277D83940]);
    sub_2752FB590(&qword_2809C12B8, &qword_2809C12C0);
    OUTLINED_FUNCTION_4_1();
    sub_2753B7698();
    v27 = v18[8];
    v34 = 4;
    sub_2753B6818();
    OUTLINED_FUNCTION_7_0();
    sub_2752FB640(v28, v29);
    OUTLINED_FUNCTION_4_1();
    sub_2753B7638();
    v30 = *(v3 + v18[9]);
    v33 = 5;
    sub_2753B7668();
  }

  return (*(v10 + 8))(v15, v8);
}

unint64_t sub_2752FADE8()
{
  result = qword_2809C1298;
  if (!qword_2809C1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1298);
  }

  return result;
}

void sub_2752FAE3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SongTransitionInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  OUTLINED_FUNCTION_2_2();
  sub_2752FAE3C(0, v3, v4, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v7);
  v69 = &v68 - v8;
  v9 = sub_2753B6808();
  v10 = OUTLINED_FUNCTION_2_0(v9);
  v73 = v11;
  v74 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  v16 = v15 - v14;
  v17 = sub_2753B67C8();
  v18 = OUTLINED_FUNCTION_2_0(v17);
  v75 = v19;
  v76 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_8_0();
  sub_2752FBAF0(0, v25, v26, &type metadata for SongTransitionInfo.CodingKeys, MEMORY[0x277D844C8]);
  v28 = OUTLINED_FUNCTION_2_0(v27);
  v70 = v29;
  v71 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  v34 = &v68 - v33;
  v35 = type metadata accessor for SongTransitionInfo();
  v36 = OUTLINED_FUNCTION_9(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10();
  v41 = (v40 - v39);
  v78 = v42;
  v43 = v42[8];
  v44 = sub_2753B6818();
  v79 = v43;
  v45 = v41;
  __swift_storeEnumTagSinglePayload(&v41[v43], 1, 1, v44);
  v46 = a1[3];
  v47 = a1[4];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_2752FADE8();
  v72 = v34;
  v48 = v77;
  sub_2753B77F8();
  if (v48)
  {
    __swift_destroy_boxed_opaque_existential_1(v80);
    return sub_2752FB504(&v45[v79]);
  }

  else
  {
    v77 = v44;
    v49 = v16;
    v51 = v70;
    v50 = v71;
    v87 = 0;
    sub_2753B7598();
    *v45 = v52;
    v86 = 1;
    OUTLINED_FUNCTION_10_0();
    sub_2752FB640(v53, v54);
    v55 = v24;
    v56 = v76;
    OUTLINED_FUNCTION_11_0();
    v57 = v78;
    (*(v75 + 32))(&v45[v78[5]], v55, v56);
    v85 = 2;
    OUTLINED_FUNCTION_9_0();
    sub_2752FB640(v58, v59);
    v60 = v74;
    OUTLINED_FUNCTION_11_0();
    (*(v73 + 32))(&v45[v57[6]], v49, v60);
    OUTLINED_FUNCTION_1_1();
    sub_2752FAE3C(0, v61, v62, MEMORY[0x277D83940]);
    v84 = 3;
    sub_2752FB590(&qword_2809C12E8, &qword_2809C12F0);
    OUTLINED_FUNCTION_11_0();
    *&v45[v57[7]] = v81;
    v83 = 4;
    OUTLINED_FUNCTION_7_0();
    sub_2752FB640(v63, v64);
    v65 = v69;
    sub_2753B7558();
    sub_2752FA548(v65, &v45[v79]);
    v82 = 5;
    v66 = sub_2753B7588();
    (*(v51 + 8))(v72, v50);
    v45[v57[9]] = v66 & 1;
    sub_2752FB688(v45, v68);
    __swift_destroy_boxed_opaque_existential_1(v80);
    return sub_2752FB6EC(v45);
  }
}

uint64_t sub_2752FB504(uint64_t a1)
{
  sub_2752FAE3C(0, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2752FB590(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_1_1();
    sub_2752FAE3C(255, v5, v6, MEMORY[0x277D83940]);
    sub_2752FB640(a2, MEMORY[0x277CD8320]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2752FB640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2752FB688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongTransitionInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752FB6EC(uint64_t a1)
{
  v2 = type metadata accessor for SongTransitionInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FacetCollection<>.TransitionInfo.id.getter(uint64_t a1)
{
  sub_2752FBAF0(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v28 = v2;
  OUTLINED_FUNCTION_2_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v7);
  v9 = (&v28 - v8);
  sub_2752FBAF0(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  v11 = v10;
  OUTLINED_FUNCTION_2_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v19 = *(a1 + 16);
  OUTLINED_FUNCTION_160(*(a1 + 24));
  sub_2753B69A8();
  v20 = sub_2753B6648();
  v22 = v21;

  v33 = v20;
  v34 = v22;
  sub_2753B6988();
  sub_2753B6A58();
  (*(v13 + 8))(v18, v11);
  v23 = v28;
  if ((*(v4 + 88))(v9, v28) == *MEMORY[0x277D65178])
  {
    (*(v4 + 96))(v9, v23);
    sub_27535A340(*v9, &v29);

    v24 = v31 | (v32 << 16);
    if ((~v24 & 0xFE00FE) != 0)
    {
      v26 = v29;
      v25 = v30;
      if ((v24 & 0xE00000) != 0)
      {
        OUTLINED_FUNCTION_12_0();
      }

      else
      {
        v29 = 45;
        v30 = 0xE100000000000000;

        MEMORY[0x277C76100](v26, v25);
        OUTLINED_FUNCTION_12_0();

        MEMORY[0x277C76100](v29, v30);
      }
    }
  }

  else
  {
    (*(v4 + 8))(v9, v23);
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_2753B7398();

  v29 = v33;
  v30 = v34;
  MEMORY[0x277C76100](0x7469736E6172742DLL, 0xEF6F666E496E6F69);
  return v29;
}

unint64_t sub_2752FBA9C()
{
  result = qword_2809C1308;
  if (!qword_2809C1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1308);
  }

  return result;
}

void sub_2752FBAF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2752FBB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((~a7 & 0xFE00FE) != 0)
  {
    return sub_2752FBB6C(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_2752FBB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = (a7 >> 21) & 7;
  if (v8 <= 5)
  {
    if (((1 << v8) & 0x1A) == 0)
    {
    }
  }

  return result;
}

uint64_t FacetCollection<>.TransitionInfo.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = OUTLINED_FUNCTION_160(*(a1 + 24));
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2, v6);
}

uint64_t FacetCollection<>.TransitionInfo.context.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  v6 = sub_2753B69B8();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 40);

  return v9(v2, a1, v7);
}

uint64_t FacetCollection<>.TransitionInfo.builders.getter(uint64_t a1)
{
  v2 = v1;
  v4 = OUTLINED_FUNCTION_2_0(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  v11 = v10 - v9;
  v25 = v12;
  swift_getExtendedExistentialTypeMetadata();
  sub_2753B76C8();
  swift_allocObject();
  sub_2753B6FF8();
  v14 = v13;
  v15 = *(v6 + 16);
  v15(v11, v2, a1);
  v16 = *(a1 + 24);
  v21 = *(a1 + 16);
  v17 = type metadata accessor for FacetCollection<>.MusicKitTransitionInfoOffline();
  v24 = v17;
  v25 = &v24;
  swift_getWitnessTable();
  v18 = sub_2753B68B8();
  v14[3] = v18;
  WitnessTable = swift_getWitnessTable();
  v14[4] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v14);
  v23[3] = v17;
  v23[2] = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  v15(v11, v22, a1);
  v23[0] = type metadata accessor for FacetCollection<>.MusicKitTransitionInfoElement();
  v23[1] = v23;
  v14[8] = v18;
  v14[9] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v14 + 5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  return sub_2752E6688();
}

uint64_t sub_2752FBF58(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2752FC9C8, 0, 0);
}

uint64_t sub_2752FBF7C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2752FBFA0, 0, 0);
}

uint64_t sub_2752FBFA0()
{
  sub_2752FB688(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2752FC00C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D650F0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_2752E546C;

  return MEMORY[0x2821CC418](a1, a2, WitnessTable);
}

uint64_t sub_2752FC0D8(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D650F8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_2752F7284;

  return MEMORY[0x2821CC420](a1, a2, WitnessTable);
}

uint64_t sub_2752FC1A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FacetCollection<>.TransitionInfo.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FacetCollection<>.transitionInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_2_0(a1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10, v3, a1);
  v14 = *(a1 + 16);
  return sub_2752F8330(v12, a2, a3);
}

uint64_t sub_2752FC2DC(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_17_0();
  v6 = sub_2753B67C8();
  v7 = OUTLINED_FUNCTION_74(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_10:

    return __swift_getEnumTagSinglePayload(v4 + v10, v3, v9);
  }

  v11 = sub_2753B6808();
  v12 = OUTLINED_FUNCTION_74(v11);
  if (*(v13 + 84) == v3)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_10;
  }

  if (v3 != 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_2_2();
    sub_2752FAE3C(0, v16, v17, MEMORY[0x277D83D88]);
    v9 = v18;
    v10 = a3[8];
    goto LABEL_10;
  }

  v14 = *(v4 + a3[7]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2752FC418(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17_0();
  v8 = sub_2753B67C8();
  v9 = OUTLINED_FUNCTION_74(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = sub_2753B6808();
    result = OUTLINED_FUNCTION_74(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v12 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v5 + a4[7]) = (v4 - 1);
        return result;
      }

      OUTLINED_FUNCTION_2_2();
      sub_2752FAE3C(0, v16, v17, MEMORY[0x277D83D88]);
      v11 = v18;
      v12 = a4[8];
    }
  }

  return __swift_storeEnumTagSinglePayload(v5 + v12, v4, v4, v11);
}

void sub_2752FC53C()
{
  sub_2753B67C8();
  if (v0 <= 0x3F)
  {
    sub_2753B6808();
    if (v1 <= 0x3F)
    {
      sub_2752FAE3C(319, &qword_2809C12B0, MEMORY[0x277CD8320], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2752FAE3C(319, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2752FC67C()
{
  OUTLINED_FUNCTION_17_0();
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_160(*(v2 + 24));

  return __swift_getEnumTagSinglePayload(v1, v0, v4);
}

uint64_t sub_2752FC6D4()
{
  OUTLINED_FUNCTION_17_0();
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_160(*(v2 + 24));

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
}

uint64_t getEnumTagSinglePayload for SongTransitionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SongTransitionInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2752FC888);
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

unint64_t sub_2752FC8C4()
{
  result = qword_2809C13A8;
  if (!qword_2809C13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13A8);
  }

  return result;
}

unint64_t sub_2752FC91C()
{
  result = qword_2809C13B0;
  if (!qword_2809C13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13B0);
  }

  return result;
}

unint64_t sub_2752FC974()
{
  result = qword_2809C13B8;
  if (!qword_2809C13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_2753B75B8();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return sub_2752FBB58(v2, v1, v3, v4, v5, v6, v0);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return type metadata accessor for SongTransitionInfo();
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return sub_2753B68A8();
}

void sub_2752FCB30(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_15_0(a1);
}

uint64_t sub_2752FCBAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void sub_2752FCC4C(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_2752FCB20(a1);
}

void sub_2752FCC58(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_2752FCB28(a1);
}

void sub_2752FCC7C(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_2752FCB78(a1);
}

_SonicKit_MusicKit::AttributesMask sub_2752FCCB4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AttributesMask.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2752FCCF4@<X0>(uint64_t *a1@<X8>)
{
  result = AttributesMask.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t MusicContent.Sources.MusicKit.qualifier(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v0[2] = v1;
  v0[3] = v2;
  sub_2753B6288();
  v0[4] = sub_2753B6278();
  OUTLINED_FUNCTION_4_2();
  sub_2752FDA78(v3, 255, v4);
  v6 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_2752FCDEC, v6, v5);
}

uint64_t sub_2752FCDEC()
{
  v3 = v1[3];
  v2 = v1[4];

  if (*(v3 + 16))
  {
    switch(*(v1[3] + 64) >> 5)
    {
      case 1:
      case 3:
      case 4:
        goto LABEL_3;
      default:
        v8 = v1[2];
        OUTLINED_FUNCTION_0_2();
        sub_2752FD85C(0, &qword_2809C13C0, v9);
        *(v8 + 24) = v10;
        v11 = OUTLINED_FUNCTION_1_2(&qword_2809C13C8);
        OUTLINED_FUNCTION_16_1(v11);
        sub_2752FBA9C();
        sub_2753B6BE8();
        break;
    }
  }

  else
  {
LABEL_3:
    v4 = v1[2];
    OUTLINED_FUNCTION_5_1();
    sub_2752FD85C(0, &qword_2809C13D0, v5);
    *(v4 + 24) = v6;
    v7 = sub_2752FD1F8(&qword_2809C13D8, &qword_2809C13D0, v0);
    OUTLINED_FUNCTION_16_1(v7);
    sub_2752FBA9C();
    sub_2753B6A28();
  }

  OUTLINED_FUNCTION_19_0();

  return v12();
}

uint64_t sub_2752FD030(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  sub_2752FE570();
  result = swift_allocObject();
  *(result + 16) = xmmword_2753BE420;
  if (v4 > 0x1F)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = MEMORY[0x277D84F90];
    *(result + 32) = v2;
    *(result + 40) = v1;
    *(result + 48) = v3;
    *(result + 56) = v7;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 79) = 0;

    return v6;
  }

  return result;
}

uint64_t sub_2752FD0BC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *(a1 + 32);
  sub_2752FE570();
  result = swift_allocObject();
  *(result + 16) = xmmword_2753BE420;
  if ((v5 & 0xE0) == 0x40)
  {
    v7 = result;
    *(result + 32) = v2;
    *(result + 40) = v1;
    *(result + 48) = v4;
    *(result + 56) = v3;
    *(result + 64) = v5 & 0x1F;
    *(result + 72) = 0;
    *(result + 82) = 64;
    *(result + 80) = 2561;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2752FD16C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 32);
  sub_2752FE570();
  result = swift_allocObject();
  *(result + 16) = xmmword_2753BE420;
  if ((v3 & 0xE0) == 0xA0)
  {
    v5 = result;
    *(result + 32) = v2;
    *(result + 40) = v1;
    *(result + 48) = MEMORY[0x277D84F90];
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 82) = -96;
    *(result + 80) = 0;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2752FD1F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2752FD85C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MusicContent.Sources.MusicKit.requalifier(for:)()
{
  OUTLINED_FUNCTION_14_0();
  *(v0 + 16) = v1;
  sub_2753B6288();
  *(v0 + 24) = sub_2753B6278();
  OUTLINED_FUNCTION_4_2();
  sub_2752FDA78(v2, 255, v3);
  v5 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_2752FD2F4, v5, v4);
}

uint64_t sub_2752FD2F4()
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  OUTLINED_FUNCTION_5_1();
  sub_2752FD85C(0, &qword_2809C13D0, v4);
  *(v3 + 24) = v5;
  v6 = sub_2752FD1F8(&qword_2809C13E0, &qword_2809C13D0, v0);
  OUTLINED_FUNCTION_16_1(v6);
  sub_2752FBA9C();
  sub_2753B6A28();
  OUTLINED_FUNCTION_19_0();

  return v7();
}

uint64_t sub_2752FD3DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContent.Sources.MusicKit.qualifier(for:)();
}

uint64_t sub_2752FD47C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FD514;

  return MusicContent.Sources.MusicKit.requalifier(for:)();
}

uint64_t sub_2752FD514()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t FacetCollection<>.extractAdamIDForLogging()()
{
  v0 = 0x6E776F6E6B6E75;
  sub_2752FD85C(0, &qword_2809C1300, MEMORY[0x277D65180]);
  v2 = v1;
  v3 = OUTLINED_FUNCTION_2_0(v1);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = (&v23 - v8);
  sub_2752FD85C(0, &qword_2809C1310, MEMORY[0x277D65188]);
  v11 = v10;
  v12 = OUTLINED_FUNCTION_2_0(v10);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v23 - v17;
  sub_2753B6988();
  sub_2753B6A58();
  (*(v14 + 8))(v18, v11);
  if ((*(v5 + 88))(v9, v2) == *MEMORY[0x277D65178])
  {
    (*(v5 + 96))(v9, v2);
    sub_27535A340(*v9, &v24);

    v19 = v25 | (v26 << 16);
    if ((~v19 & 0xFE00FE) != 0)
    {
      v20 = v24;
      v21 = (v19 >> 21) & 7;
      if (v21 != 5 && v21)
      {
        OUTLINED_FUNCTION_11_1();
      }

      else
      {

        OUTLINED_FUNCTION_11_1();
        return v20;
      }
    }
  }

  else
  {
    (*(v5 + 8))(v9, v2);
  }

  return v0;
}

void sub_2752FD85C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2752FBA9C();
    v7 = a3(a1, &type metadata for MusicContent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2752FD8C4()
{
  result = qword_2809C13E8;
  if (!qword_2809C13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13E8);
  }

  return result;
}

unint64_t sub_2752FD91C()
{
  result = qword_2809C13F0;
  if (!qword_2809C13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13F0);
  }

  return result;
}

unint64_t sub_2752FD974()
{
  result = qword_2809C13F8;
  if (!qword_2809C13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13F8);
  }

  return result;
}

unint64_t sub_2752FD9CC()
{
  result = qword_2809C1400;
  if (!qword_2809C1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1400);
  }

  return result;
}

uint64_t sub_2752FDA20(uint64_t a1, uint64_t a2)
{
  result = sub_2752FDA78(&qword_2809C1408, a2, type metadata accessor for MusicContent.Sources.MusicKit);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2752FDA78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2752FDAE4(uint64_t a1, uint64_t a2)
{
  result = sub_2752FDA78(&qword_2809C1410, a2, type metadata accessor for MusicContent.Sources.MusicKit);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2752FDB54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 64))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2752FDBA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t dispatch thunk of MusicKitStorageOperations.hasMediaAPIAttributes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(OUTLINED_FUNCTION_8_1(a1, a2, a3) + 16);
  OUTLINED_FUNCTION_13_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_2_3(v8);

  return v11(v10);
}

uint64_t dispatch thunk of MusicKitStorageOperations.hasMediaAPIAttributes(containing:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(OUTLINED_FUNCTION_3_1(a1, a2, a3, a4) + 24);
  OUTLINED_FUNCTION_9_1();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10_1(v8);
  *v9 = v10;
  v9[1] = sub_2752FDE24;
  OUTLINED_FUNCTION_7_1();

  return v11();
}

uint64_t sub_2752FDE24()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  OUTLINED_FUNCTION_18_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of MusicKitStorageOperations.mediaAPIAttributes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(OUTLINED_FUNCTION_8_1(a1, a2, a3) + 32);
  OUTLINED_FUNCTION_13_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_2_3(v8);

  return v11(v10);
}

uint64_t sub_2752FE00C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_0();
  v6 = *(v5 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(a1, a2);
}

uint64_t dispatch thunk of MusicKitStorageOperations.storeMediaAPIAttributes(_:attributesMask:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 40);
  OUTLINED_FUNCTION_9_1();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_10_1(v16);
  *v17 = v18;
  v17[1] = sub_2752FE5C0;

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MusicKitStorageOperations.hasMediaAPITransitionInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(OUTLINED_FUNCTION_8_1(a1, a2, a3) + 48);
  OUTLINED_FUNCTION_13_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_2_3(v8);

  return v11(v10);
}

uint64_t dispatch thunk of MusicKitStorageOperations.mediaAPITransitionInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(OUTLINED_FUNCTION_3_1(a1, a2, a3, a4) + 56);
  OUTLINED_FUNCTION_9_1();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10_1(v8);
  *v9 = v10;
  v9[1] = sub_2752FD514;
  OUTLINED_FUNCTION_7_1();

  return v11();
}

uint64_t dispatch thunk of MusicKitStorageOperations.storeMediaAPITransitionInfo(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(OUTLINED_FUNCTION_3_1(a1, a2, a3, a4) + 64);
  OUTLINED_FUNCTION_9_1();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10_1(v8);
  *v9 = v10;
  v9[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_7_1();

  return v11();
}

void sub_2752FE570()
{
  if (!qword_2809C1418)
  {
    v0 = sub_2753B76C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1418);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_2(unint64_t *a1)
{

  return sub_2752FD1F8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_2752FBB58(v2, v0, v4, v3, v6, v5, v1);
}

uint64_t *OUTLINED_FUNCTION_16_1(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

uint64_t OUTLINED_FUNCTION_19_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  type metadata accessor for MediaAPIResourceRequest.Option();
  sub_2753B70B8();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_223();
  sub_2753B7038();
  sub_275314624();
  v4 = sub_2753B6C98();
  v5 = *(*(a1 - 8) + 8);
  v6 = OUTLINED_FUNCTION_96_0();
  result = v7(v6);
  *a2 = v4;
  return result;
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v3 = v2;
  v1[49] = v4;
  v1[50] = v5;
  v1[47] = v6;
  v1[48] = v2;
  v1[46] = v7;
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v8, v9, v10, MEMORY[0x277D64F00]);
  v1[51] = v11;
  OUTLINED_FUNCTION_75(v11);
  v13 = *(v12 + 64);
  v1[52] = OUTLINED_FUNCTION_138_0();
  v14 = *(v3 + 16);
  v1[53] = v14;
  v15 = *(*(v14 - 8) + 64);
  v1[54] = OUTLINED_FUNCTION_138_0();
  v16 = sub_2753B6AC8();
  v1[55] = v16;
  OUTLINED_FUNCTION_17_1(v16);
  v1[56] = v17;
  v19 = *(v18 + 64);
  v1[57] = OUTLINED_FUNCTION_138_0();
  sub_275316CAC(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v1[58] = v20;
  OUTLINED_FUNCTION_17_1(v20);
  v1[59] = v21;
  v23 = *(v22 + 64);
  v1[60] = OUTLINED_FUNCTION_138_0();
  sub_275316CAC(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  v1[61] = v24;
  OUTLINED_FUNCTION_17_1(v24);
  v1[62] = v25;
  v27 = *(v26 + 64) + 15;
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[65] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_75(AssociatedTypeWitness);
  v30 = *(v29 + 64);
  v1[66] = OUTLINED_FUNCTION_138_0();
  v31 = *(v3 + 24);
  v1[67] = v31;
  v32 = *(v31 + 8);
  OUTLINED_FUNCTION_99_0();
  v33 = sub_2753B69B8();
  v1[68] = v33;
  OUTLINED_FUNCTION_17_1(v33);
  v1[69] = v34;
  v36 = *(v35 + 64);
  v1[70] = OUTLINED_FUNCTION_138_0();
  v1[71] = *v0;
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_2752FEB1C()
{
  v224 = v0;
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[64];
  v7 = v0[60];
  v6 = v0[61];
  v8 = v0[59];
  v212 = v0[58];
  v9 = v0[49];
  v10 = v0[50];
  v11 = v0[47];
  sub_2753B6938();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_70_0();
  sub_2753B6988();
  OUTLINED_FUNCTION_156_0();
  sub_2753B6A58();
  v12 = (*(v8 + 88))(v7, v212);
  if (v12 == *MEMORY[0x277D65178])
  {
    v13 = v0[60];
    v14 = v0[58];
    v15 = OUTLINED_FUNCTION_126_0(v0[59]);
    v16(v15);
    v17 = *v13;
    if (*(*v13 + 16) == 1 && (*(v17 + 82) >> 5) >= 5u)
    {
      v78 = *(v17 + 80) | (*(v17 + 82) << 16);
      v79 = v0[70];
      v80 = v0[68];
      v82 = v0[56];
      v81 = v0[57];
      v83 = v0[55];
      v84 = *(v17 + 40);
      v85 = *(v17 + 48);
      v207 = *(v17 + 32);
      v208 = *(v17 + 56);
      v210 = *(v17 + 64);

      sub_2753B6978();
      *(v0 + 17) = *(v0 + 21);
      *(v0 + 149) = *(v0 + 181);
      sub_275314888((v0 + 17));
      v86 = *MEMORY[0x277D65198];
      v87 = sub_2753B6AB8();
      OUTLINED_FUNCTION_8_2(v87);
      (*(v88 + 104))(v81, v86);
      (*(v82 + 104))(v81, *MEMORY[0x277D651A0], v83);
      v89 = sub_2753B6AA8();
      v90 = v0[61];
      if ((v89 & 1) == 0)
      {
        v114 = v0[62];
        v115 = v0[56];
        v196 = v0[57];
        v201 = v0[64];
        v116 = v0[55];
        v205 = v0[48];
        v117 = v0[46];

        OUTLINED_FUNCTION_188(v118, v119, v120, v121, v122, v123, v124, v125, v190, v191, v193, v196, v201, v205, v207, v208, v210, *(&v210 + 1));
        (*(v115 + 8))(v197, v116);
        (*(v114 + 8))(v202, v90);
        *v117 = 0xD000000000000013;
        v117[1] = 0x80000002753B85D0;
        v126 = *MEMORY[0x277D65208];
        OUTLINED_FUNCTION_3_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_65_0();
        v127 = sub_2753B6C18();
        OUTLINED_FUNCTION_8_2(v127);
        v129 = *(v128 + 104);
        v130 = OUTLINED_FUNCTION_96_0();
LABEL_29:
        v132(v130, v131);
        v151 = v0[70];
        v152 = v0[68];
        v153 = v0[66];
        v155 = v0[63];
        v154 = v0[64];
        v156 = v0[60];
        v157 = v0[57];
        v158 = v0[54];
        v159 = v0[52];
        v160 = OUTLINED_FUNCTION_98_0(v0[69]);
        v161(v160);

        OUTLINED_FUNCTION_35_0();
        goto LABEL_30;
      }

      v91 = v0[67];
      v92 = v0[64];
      v93 = v0[53];
      v94 = v0[61];
      sub_2753B6A88();
      v95 = v0[37];
      v96 = v0[38];
      *&__src = v207;
      *(&__src + 1) = v84;
      *&v221 = v85;
      *(&v221 + 1) = v208;
      v222 = v210;
      BYTE2(v223[0]) = BYTE2(v78);
      LOWORD(v223[0]) = v78;

      sub_275319620(v95, v96, &__src, (v0 + 2));
      v199 = v0[3];
      v203 = v0[2];
      v97 = *(v0 + 3);
      v216 = *(v0 + 2);
      v217 = v97;
      *v218 = *(v0 + 4);
      *&v218[15] = *(v0 + 79);
      if (v199)
      {
        v98 = v0[70];
        v99 = v0[67];
        v100 = v0[53];
        v102 = v0[49];
        v101 = v0[50];

        OUTLINED_FUNCTION_188(v103, v104, v105, v106, v107, v108, v109, v110, v190, v191, v193, v195, v199, v203, v207, v208, v210, *(&v210 + 1));
        OUTLINED_FUNCTION_115();
        sub_2753104C4(v99, v111);
        v162 = v0[71];
        v163 = v0[70];
        v164 = v0[68];
        v165 = v0[67];
        v166 = v0[53];
        v167 = v221;
        *(v0 + 11) = __src;
        *(v0 + 13) = v167;
        *(v0 + 15) = v222;
        type metadata accessor for MediaAPIResourceRequest.Option();
        OUTLINED_FUNCTION_99_0();
        sub_2753B76C8();
        swift_allocObject();
        v168 = sub_2753B6FF8();
        OUTLINED_FUNCTION_137_0(v168, v169);
        v219 = sub_2752E6688();
        sub_2753B69A8();
        v170 = v0[40];
        v0[41] = v0[39];
        v0[42] = v170;
        OUTLINED_FUNCTION_99_0();
        sub_2753B70B8();
        sub_275314624();
        sub_2753B6D08();

        v171 = v0[44];
        if (v171)
        {
          v0[45] = v171;
          swift_getWitnessTable();
          sub_2753B7088();
        }

        v172 = v0[68];
        v173 = v0[67];
        v174 = v0[62];
        v209 = v0[61];
        v211 = v0[64];
        v175 = v0[56];
        v198 = v0[57];
        v176 = v0[54];
        v192 = v0[70];
        v194 = v0[55];
        v177 = v0[53];
        v215 = v0[48];
        v178 = v0[46];
        sub_275314944();
        v180 = (v178 + *(v179 + 48));
        v181 = *MEMORY[0x277D650C8];
        v182 = sub_2753B6898();
        OUTLINED_FUNCTION_8_2(v182);
        (*(v183 + 104))(v178, v181);
        v184 = *MEMORY[0x277D65140];
        v185 = sub_2753B6A38();
        OUTLINED_FUNCTION_8_2(v185);
        (*(v186 + 104))(v178, v184);
        *&__src = v204;
        *(&__src + 1) = v200;
        v221 = v216;
        v222 = v217;
        v223[0] = *v218;
        *(v223 + 15) = *&v218[15];
        sub_2753B6998();
        v180[3] = type metadata accessor for MediaAPIResourceRequest();
        v180[4] = OUTLINED_FUNCTION_22_0();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v180);
        sub_275319DD0(&__src, v0 + 11, v176, v177, boxed_opaque_existential_1);
        (*(v175 + 8))(v198, v194);
        (*(v174 + 8))(v211, v209);
        v148 = *MEMORY[0x277D65218];
        OUTLINED_FUNCTION_3_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_65_0();
        v188 = sub_2753B6C18();
        OUTLINED_FUNCTION_8_2(v188);
        v132 = *(v189 + 104);
        v130 = v178;
        goto LABEL_28;
      }

LABEL_37:
      __break(1u);
      JUMPOUT(0x2752FF984);
    }

    OUTLINED_FUNCTION_210();
    while (2)
    {
      if (v18 != 1)
      {
        OUTLINED_FUNCTION_125_0();
        v20 = *(v19 - 24);
        v21 = *(v19 - 16);
        v23 = *(v19 - 8);
        v22 = *v19;
        switch(v24)
        {
          case 0:
            v25 = 0;
            v26 = 0;
            v23 = *(v19 - 8);
            goto LABEL_25;
          case 1:
            v25 = *v19;
            v26 = 32;
            goto LABEL_25;
          case 2:
            v26 = *(v19 + 8) | 0x40;

            v25 = v22;
            goto LABEL_26;
          case 3:
            v25 = *v19;
            v26 = 96;
            goto LABEL_25;
          case 4:
            v25 = *v19;
            v26 = 0x80;
LABEL_25:
            v133 = *(v19 - 16);
LABEL_26:

            *&__src = v20;
            *(&__src + 1) = v21;
            *&v221 = v23;
            *(&v221 + 1) = v25;
            LOBYTE(v222) = v26;
            sub_27535DCC4(&v216);

            OUTLINED_FUNCTION_83_0();
            sub_2753147B0(v134, v135, v136, v25, v26);
            v137 = v216;
            if (v216 != 6)
            {
              v138 = v0[64];
              v139 = v0;
              v140 = v0[62];
              v141 = v139[61];
              v142 = v139[48];
              v143 = v139[46];

              sub_2753B6A88();
              v144 = *(v140 + 8);
              v145 = OUTLINED_FUNCTION_69_0();
              v146(v145);
              v0 = v139;
              v147 = v139[36];
              *v143 = v139[35];
              *(v143 + 8) = v147;
              *(v143 + 16) = v137;
              *(v143 + 24) = v17;
              v148 = *MEMORY[0x277D65210];
              OUTLINED_FUNCTION_3_2();
              swift_getWitnessTable();
              OUTLINED_FUNCTION_65_0();
              v149 = sub_2753B6C18();
              OUTLINED_FUNCTION_8_2(v149);
              v132 = *(v150 + 104);
              v130 = v143;
LABEL_28:
              v131 = v148;
              goto LABEL_29;
            }

            __break(1u);
            break;
          default:
            continue;
        }

        goto LABEL_37;
      }

      break;
    }

    v55 = v0[64];
    v56 = v0[61];
    v57 = v0[62];
    v59 = v0[51];
    v58 = v0[52];
    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v0 + 85) = 5;
    sub_2753B6298();
    OUTLINED_FUNCTION_163();
    v60 = sub_2753B62C8();
    v0[43] = v17;
    OUTLINED_FUNCTION_42_0(v60, &qword_2809C1450, &type metadata for MusicContent.QualifiedIdentifier);
    sub_27531480C();
    sub_2753B62B8();

    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v61, v62, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    sub_2753B62E8();
    swift_willThrow();
    v63 = *(v57 + 8);
    v64 = OUTLINED_FUNCTION_97_0();
    v65(v64);
LABEL_13:
    v66 = v0[70];
    v67 = v0[68];
    v68 = v0[66];
    v70 = v0[63];
    v69 = v0[64];
    v71 = v0[60];
    v72 = v0[57];
    v73 = v0[54];
    v74 = v0[52];
    v75 = OUTLINED_FUNCTION_105_0(v0[69]);
    v76(v75);

    OUTLINED_FUNCTION_19_0();
LABEL_30:

    return v77();
  }

  if (v12 == *MEMORY[0x277D65170])
  {
    v27 = v0[70];
    v28 = v0[68];
    v29 = v0[63];
    v213 = v0[64];
    v30 = v0[61];
    v31 = v0[62];
    v33 = v0[51];
    v32 = v0[52];
    (*(v0[59] + 8))(v0[60], v0[58]);
    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v0 + 84) = 19;
    sub_2753B6298();
    OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_171();
    sub_2753B6988();
    sub_2753B6A88();
    v34 = *(v31 + 8);
    v34(v29, v30);
    v35 = v0[32];
    v0[33] = v0[31];
    v0[34] = v35;
    sub_2753146CC();
    OUTLINED_FUNCTION_239();

    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v36, v37, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_79_0();
    sub_2753B62E8();
    swift_willThrow();
    v34(v213, v30);
    goto LABEL_13;
  }

  if (v12 == *MEMORY[0x277D65168])
  {
    v38 = v0[70];
    v39 = v0[68];
    v40 = v0[63];
    v214 = v0[64];
    v41 = v0[61];
    v42 = v0[62];
    v43 = v0[60];
    v44 = v0[58];
    v46 = v0[51];
    v45 = v0[52];
    v47 = OUTLINED_FUNCTION_126_0(v0[59]);
    v48(v47);
    v49 = v43[1];
    v206 = *v43;
    v50 = v43[3];

    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v0 + 83) = 6;
    sub_2753B6298();
    OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_171();
    sub_2753B6988();
    OUTLINED_FUNCTION_235();
    v51 = *(v42 + 8);
    v51(v40, v38);
    v52 = v0[26];
    v0[27] = v0[25];
    v0[28] = v52;
    sub_2753146CC();
    OUTLINED_FUNCTION_123_0();
    sub_2753B62B8();

    OUTLINED_FUNCTION_234();
    v0[29] = v206;
    v0[30] = v49;
    OUTLINED_FUNCTION_123_0();
    sub_2753B62B8();

    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v53, v54, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_79_0();
    sub_2753B62E8();
    swift_willThrow();
    (v51)(v214);
    goto LABEL_13;
  }

  v112 = v0[58];

  return sub_2753B7708();
}

uint64_t sub_2752FF99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a1;
  v6[27] = a3;
  sub_275316CAC(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v6[30] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  sub_275316CAC(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v6[32] = v10;
  v11 = *(v10 - 8);
  v6[33] = v11;
  v12 = *(v11 + 64) + 15;
  v6[34] = swift_task_alloc();
  v13 = *(a4 + 16);
  v6[35] = v13;
  v14 = *(v13 - 8);
  v6[36] = v14;
  v15 = *(v14 + 64) + 15;
  v6[37] = swift_task_alloc();
  sub_275316CAC(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  v6[38] = v16;
  v17 = *(v16 - 8);
  v6[39] = v17;
  v18 = *(v17 + 64) + 15;
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[42] = AssociatedTypeWitness;
  v20 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v21 = *(a4 + 24);
  v6[44] = v21;
  v22 = *(v21 + 8);
  v23 = sub_2753B69B8();
  v6[45] = v23;
  v24 = *(v23 - 8);
  v6[46] = v24;
  v25 = *(v24 + 64) + 15;
  v6[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2752FFCC0, 0, 0);
}

uint64_t sub_2752FFCC0()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[37];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[27];
  sub_2753B6938();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_70_0();
  sub_2753B6998();
  v0[48] = *(v3 + 32);
  v0[49] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v0[50] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v10, v11);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2752FFD9C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[44];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];

  v8 = OUTLINED_FUNCTION_79_0();
  v0[51] = v3(v8);
  v9 = OUTLINED_FUNCTION_39_0();
  v10(v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2752FFE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = v9[47];
  v11 = v9[44];
  v12 = v9[35];
  v14 = v9[28];
  v13 = v9[29];
  v15 = swift_task_alloc();
  v9[52] = v15;
  OUTLINED_FUNCTION_56_0(v15);
  OUTLINED_FUNCTION_38_0(dword_2753C2888);
  v30 = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v9[53] = v17;
  *v17 = v18;
  v17[1] = sub_2752FFF04;
  v19 = v9[51];
  v20 = v9[41];
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_241();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_2752FFF04()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[54] = v0;

  if (!v0)
  {
    v9 = v3[51];
    v10 = v3[52];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_27530000C()
{
  v129 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);
  sub_2753B6A58();
  v6 = *(v4 + 88);
  v7 = OUTLINED_FUNCTION_129_0();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D65178])
  {
    v10 = *(v0 + 272);
    v11 = *(v0 + 256);
    v12 = OUTLINED_FUNCTION_126_0(*(v0 + 264));
    v13(v12);
    v14 = *v10;
    if (*(*v10 + 16) == 1 && (*(v14 + 82) >> 5) >= 5u)
    {
      v67 = *(v14 + 80) | (*(v14 + 82) << 16);
      v110 = *(v0 + 360);
      v113 = *(v0 + 376);
      v115 = *(v0 + 312);
      v117 = *(v0 + 304);
      v121 = *(v0 + 328);
      v69 = *(v0 + 240);
      v68 = *(v0 + 248);
      v71 = *(v14 + 32);
      v70 = *(v14 + 40);
      v72 = *(v14 + 48);
      v73 = *(v14 + 56);
      v108 = *(v14 + 72);
      v109 = *(v14 + 64);

      sub_275314678();
      sub_2753B62D8();
      OUTLINED_FUNCTION_23_0();
      sub_2753B62C8();
      *(v0 + 70) = 13;
      sub_2753B6298();
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_171();
      *(v0 + 16) = v71;
      *(v0 + 24) = v70;
      *(v0 + 32) = v72;
      *(v0 + 40) = v73;
      *(v0 + 48) = v109;
      *(v0 + 56) = v108;
      *(v0 + 66) = BYTE2(v67);
      *(v0 + 64) = v67;
      sub_275317860();
      sub_2753B62B8();
      sub_2752FBB6C(v71, v70, v72, v73, v109, v108, v67);
      OUTLINED_FUNCTION_85_0();
      sub_2753B62C8();
      sub_2753B69A8();
      v74 = *(v0 + 176);
      *(v0 + 184) = *(v0 + 168);
      *(v0 + 192) = v74;
      sub_2753146CC();
      OUTLINED_FUNCTION_239();

      OUTLINED_FUNCTION_23_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_0_3();
      sub_275316CAC(0, v75, v76, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
      sub_275314720();
      OUTLINED_FUNCTION_9_2();
      swift_allocError();
      OUTLINED_FUNCTION_141_0();
      OUTLINED_FUNCTION_90_0();
      sub_2753B62E8();
      swift_willThrow();
      (*(v115 + 8))(v121, v117);
    }

    else
    {
      OUTLINED_FUNCTION_210();
      while (2)
      {
        if (v15 != 1)
        {
          OUTLINED_FUNCTION_125_0();
          v17 = *(v16 - 24);
          v18 = *(v16 - 16);
          v20 = *(v16 - 8);
          v19 = *v16;
          switch(v21)
          {
            case 0:
              v22 = 0;
              v23 = 0;
              v20 = *(v16 - 8);
              goto LABEL_22;
            case 1:
              v22 = *v16;
              v23 = 32;
              goto LABEL_22;
            case 2:
              v23 = *(v16 + 8) | 0x40;

              v22 = v19;
              goto LABEL_23;
            case 3:
              v22 = *v16;
              v23 = 96;
              goto LABEL_22;
            case 4:
              v22 = *v16;
              v23 = 0x80;
LABEL_22:
              v90 = *(v16 - 16);
LABEL_23:

              v124 = v17;
              v125 = v18;
              v126 = v20;
              v127 = v22;
              v128 = v23;
              sub_27535DCC4(&v123);

              OUTLINED_FUNCTION_83_0();
              sub_2753147B0(v91, v92, v93, v22, v23);
              v94 = v123;
              if (v123 == 6)
              {
                __break(1u);
                JUMPOUT(0x275300910);
              }

              v96 = *(v0 + 368);
              v95 = *(v0 + 376);
              v97 = *(v0 + 360);
              v98 = *(v0 + 328);
              v111 = *(v0 + 344);
              v114 = *(v0 + 320);
              v100 = *(v0 + 304);
              v99 = *(v0 + 312);
              v116 = *(v0 + 296);
              v118 = *(v0 + 272);
              v122 = *(v0 + 248);
              v101 = *(v0 + 208);

              sub_2753B6A88();
              (*(v99 + 8))(v98, v100);
              v102 = *(v0 + 160);
              *v101 = *(v0 + 152);
              *(v101 + 8) = v102;
              *(v101 + 16) = v94;
              *(v101 + 24) = v14;
              v103 = *(v96 + 8);
              v104 = OUTLINED_FUNCTION_90_0();
              v105(v104);

              OUTLINED_FUNCTION_35_0();
              goto LABEL_25;
            default:
              continue;
          }
        }

        break;
      }

      v53 = *(v0 + 328);
      v54 = *(v0 + 304);
      v55 = *(v0 + 312);
      v57 = *(v0 + 240);
      v56 = *(v0 + 248);
      sub_275314678();
      sub_2753B62D8();
      OUTLINED_FUNCTION_23_0();
      sub_2753B62C8();
      *(v0 + 69) = 5;
      sub_2753B6298();
      OUTLINED_FUNCTION_49_0();
      v58 = sub_2753B62C8();
      *(v0 + 200) = v14;
      OUTLINED_FUNCTION_42_0(v58, &qword_2809C1450, &type metadata for MusicContent.QualifiedIdentifier);
      sub_27531480C();
      sub_2753B62B8();

      OUTLINED_FUNCTION_23_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_0_3();
      v59 = OUTLINED_FUNCTION_221();
      sub_275316CAC(v59, v60, v61, v62, v63);
      sub_275314720();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_67_1();
      swift_allocError();
      OUTLINED_FUNCTION_141_0();
      sub_2753B62E8();
      swift_willThrow();
      v64 = *(v55 + 8);
      v65 = OUTLINED_FUNCTION_97_0();
      v66(v65);
    }

LABEL_14:
    v77 = *(v0 + 376);
    v78 = *(v0 + 360);
    v79 = *(v0 + 344);
    v81 = *(v0 + 320);
    v80 = *(v0 + 328);
    v82 = *(v0 + 296);
    v83 = *(v0 + 272);
    v84 = *(v0 + 248);
    v85 = OUTLINED_FUNCTION_98_0(*(v0 + 368));
    v86(v85);

    OUTLINED_FUNCTION_19_0();
LABEL_25:
    OUTLINED_FUNCTION_225();

    __asm { BRAA            X1, X16 }
  }

  if (v9 == *MEMORY[0x277D65170])
  {
    v24 = *(v0 + 376);
    v25 = *(v0 + 360);
    v119 = *(v0 + 328);
    v27 = *(v0 + 304);
    v26 = *(v0 + 312);
    v28 = *(v0 + 248);
    v29 = *(v0 + 240);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v0 + 68) = 19;
    sub_2753B6298();
    OUTLINED_FUNCTION_49_0();
    sub_2753B62C8();
    sub_2753B69A8();
    v30 = *(v0 + 128);
    *(v0 + 136) = *(v0 + 120);
    *(v0 + 144) = v30;
    sub_2753146CC();
    OUTLINED_FUNCTION_239();

    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    v31 = OUTLINED_FUNCTION_221();
    sub_275316CAC(v31, v32, v33, v34, v35);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_212();
    sub_2753B62E8();
    swift_willThrow();
    (*(v26 + 8))(v119, v27);
    goto LABEL_14;
  }

  if (v9 == *MEMORY[0x277D65168])
  {
    v36 = *(v0 + 376);
    v37 = *(v0 + 360);
    v38 = *(v0 + 320);
    v120 = *(v0 + 328);
    v39 = *(v0 + 304);
    v40 = *(v0 + 312);
    v41 = *(v0 + 272);
    v43 = *(v0 + 248);
    v42 = *(v0 + 256);
    v44 = *(v0 + 240);
    v45 = OUTLINED_FUNCTION_126_0(*(v0 + 264));
    v46(v45);
    v47 = v41[1];
    v112 = *v41;
    v48 = v41[3];

    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v0 + 67) = 6;
    sub_2753B6298();
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_171();
    sub_2753B6988();
    OUTLINED_FUNCTION_235();
    v49 = *(v40 + 8);
    v49(v38, v36);
    v50 = *(v0 + 80);
    *(v0 + 88) = *(v0 + 72);
    *(v0 + 96) = v50;
    sub_2753146CC();
    OUTLINED_FUNCTION_123_0();
    sub_2753B62B8();

    OUTLINED_FUNCTION_234();
    *(v0 + 104) = v112;
    *(v0 + 112) = v47;
    OUTLINED_FUNCTION_123_0();
    sub_2753B62B8();

    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v51, v52, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_79_0();
    sub_2753B62E8();
    swift_willThrow();
    (v49)(v120);
    goto LABEL_14;
  }

  v87 = *(v0 + 256);
  OUTLINED_FUNCTION_225();

  return sub_2753B7708();
}

uint64_t sub_275300924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_66_0();
  v11 = v10[51];
  v12 = v10[52];

  v13 = v10[54];
  v14 = v10[47];
  v15 = v10[45];
  v16 = v10[43];
  v18 = v10[40];
  v17 = v10[41];
  v19 = v10[37];
  v20 = v10[34];
  v21 = v10[31];
  v22 = OUTLINED_FUNCTION_105_0(v10[46]);
  v23(v22);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_179();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_2753009F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v6[8] = a6;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = a1;
  return MEMORY[0x2822009F8](sub_275300A1C, 0, 0);
}

uint64_t sub_275300A1C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_89_0();
  sub_2753B69A8();
  OUTLINED_FUNCTION_178();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 80) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_91_0(v1);

  return MusicContentStorage.Operations.registration(for:followRedirect:)();
}

uint64_t sub_275300AC0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_58_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    OUTLINED_FUNCTION_19_0();

    return v13();
  }
}

uint64_t sub_275300BDC()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v5;
  v1[6] = v2;
  v1[7] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v1[3] = v9;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_41_0(v10, v11, v12, v13);
  v1[10] = v14;
  OUTLINED_FUNCTION_75(v14);
  v16 = *(v15 + 64);
  v1[11] = OUTLINED_FUNCTION_138_0();
  v17 = *(v3 + 16);
  v18 = *(v3 + 24);
  v19 = type metadata accessor for MediaAPIResourceRequest();
  v1[12] = v19;
  OUTLINED_FUNCTION_82_0();
  v20 = sub_2753B72A8();
  v1[13] = v20;
  OUTLINED_FUNCTION_17_1(v20);
  v1[14] = v21;
  v23 = *(v22 + 64);
  v1[15] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_88_0();
  v1[16] = v24;
  v26 = *(v25 + 64);
  v1[17] = OUTLINED_FUNCTION_138_0();
  v27 = *(v19 - 8);
  v1[18] = v27;
  v28 = *(v27 + 64);
  v29 = OUTLINED_FUNCTION_138_0();
  v30 = *v0;
  v1[19] = v29;
  v1[20] = v30;
  v31 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_275300DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = *(v10 + 136);
  v12 = *(v10 + 120);
  v13 = *(v10 + 96);
  v14 = *(v10 + 56);
  v15 = *(v10 + 32);
  v16 = OUTLINED_FUNCTION_54_0(*(v10 + 128));
  v17(v16);
  v18 = OUTLINED_FUNCTION_59_0();
  if (v18)
  {
    v21 = *(v10 + 152);
    v22 = *(v10 + 160);
    v23 = *(v10 + 144);
    v24 = *(v10 + 120);
    v25 = *(v10 + 96);
    OUTLINED_FUNCTION_151_0();
    v26 = *(v23 + 32);
    v27 = OUTLINED_FUNCTION_96_0();
    v28(v27);
    *(v10 + 16) = v22;
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    *(v10 + 168) = v29;
    *v29 = v30;
    v29[1] = sub_275301000;
    v31 = *(v10 + 152);
    v32 = *(v10 + 64);
    v33 = *(v10 + 72);
    v34 = *(v10 + 40);
    v35 = *(v10 + 48);
    v36 = *(v10 + 24);
    OUTLINED_FUNCTION_111_0();

    return sub_2752FF99C(v37, v38, v39, v40, v41, v42);
  }

  else
  {
    v46 = *(v10 + 112);
    v45 = *(v10 + 120);
    v47 = *(v10 + 104);
    v49 = *(v10 + 80);
    v48 = *(v10 + 88);
    v50 = *(v10 + 56);
    v51 = *(v10 + 32);
    v52 = OUTLINED_FUNCTION_128_0(v18, v19, v20, *(v10 + 96));
    v53(v52);
    sub_275314678();
    OUTLINED_FUNCTION_124_0();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    *(v10 + 184) = 7;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_83_0();
    sub_2753B62A8();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_193(v54, v55, v56, v57, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_52_0();
    sub_2753B62E8();
    swift_willThrow();
    v58 = *(v10 + 152);
    v59 = *(v10 + 136);
    v60 = *(v10 + 120);
    v61 = *(v10 + 88);

    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_111_0();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10);
  }
}

uint64_t sub_275301000()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2753010FC()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = OUTLINED_FUNCTION_98_0(v0[18]);
  v7(v6);

  OUTLINED_FUNCTION_35_0();

  return v8();
}

uint64_t sub_275301194()
{
  OUTLINED_FUNCTION_3();
  (*(v0[18] + 8))(v0[19], v0[12]);
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[11];

  OUTLINED_FUNCTION_19_0();

  return v6();
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.merge(other:)(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *v4;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  OUTLINED_FUNCTION_83_0();
  type metadata accessor for MediaAPIResourceRequest.Option();
  OUTLINED_FUNCTION_223();
  sub_2753B70B8();
  sub_275314624();
  v11 = OUTLINED_FUNCTION_211();
  v12 = MEMORY[0x277C75FA0](v11);
  if (v12)
  {
  }

  else
  {
    MEMORY[0x28223BE20](v12);
    sub_2753B6CD8();

    result = sub_2753B6CB8();
  }

  *a1 = v8;
  *a2 = 0;
  return result;
}

uint64_t sub_275301360@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  type metadata accessor for MediaAPIResourceRequest.Option();
  result = sub_2753B7028();
  *a3 = result;
  return result;
}

uint64_t static FacetCollection<>.FullyQualifiedContentRegistrationElement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for MediaAPIResourceRequest.Option();
  OUTLINED_FUNCTION_82_0();
  sub_2753B70B8();
  sub_275314624();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_27();
  return sub_2753B6CF8() & 1;
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for MediaAPIResourceRequest.Option();
  OUTLINED_FUNCTION_82_0();
  sub_2753B70B8();
  sub_275314624();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_27();
  return sub_2753B6CE8();
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_2753B7798();
  FacetCollection<>.FullyQualifiedContentRegistrationElement.hash(into:)(v4, a1);
  return sub_2753B77D8();
}

uint64_t sub_275301594@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(a1, a3);
}

uint64_t sub_2753015A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_27530162C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FD514;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)();
}

uint64_t sub_2753016F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.value<A, B>(from:for:)();
}

uint64_t sub_2753017E0(uint64_t a1, uint64_t a2)
{
  sub_2753B7798();
  FacetCollection<>.FullyQualifiedContentRegistrationElement.hash(into:)(v4, a2);
  return sub_2753B77D8();
}

uint64_t sub_275301828(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static FacetCollection<>.FullyQualifiedContentRegistrationElement.== infix(_:_:)(a1, a2);
}

uint64_t FacetCollection<>.MusicKitMetadataElement.availability<A>(of:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_117_0();
  v0[34] = v2;
  v0[35] = v3;
  v0[32] = v4;
  v0[33] = v5;
  v0[31] = v6;
  v7 = sub_2753B6A38();
  v0[36] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v0[37] = v8;
  v10 = *(v9 + 64);
  v0[38] = OUTLINED_FUNCTION_138_0();
  v11 = sub_2753B6AC8();
  v0[39] = v11;
  OUTLINED_FUNCTION_17_1(v11);
  v0[40] = v12;
  v14 = *(v13 + 64);
  v0[41] = OUTLINED_FUNCTION_138_0();
  v0[42] = *(v1 + 16);
  v15 = *(v1 + 24);
  v0[43] = v15;
  OUTLINED_FUNCTION_95_0();
  v0[44] = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v16 = sub_2753B6C18();
  v0[45] = v16;
  OUTLINED_FUNCTION_17_1(v16);
  v0[46] = v17;
  v19 = *(v18 + 64);
  v0[47] = OUTLINED_FUNCTION_176();
  v0[48] = swift_task_alloc();
  OUTLINED_FUNCTION_2_1();
  v0[49] = v20;
  v22 = *(v21 + 64);
  v0[50] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_2_1();
  v0[51] = v23;
  v25 = *(v24 + 64);
  v0[52] = OUTLINED_FUNCTION_176();
  v0[53] = swift_task_alloc();
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[54] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_75(AssociatedTypeWitness);
  v28 = *(v27 + 64);
  v0[55] = OUTLINED_FUNCTION_138_0();
  v29 = *(v15 + 8);
  OUTLINED_FUNCTION_82_0();
  v30 = sub_2753B69B8();
  v0[56] = v30;
  OUTLINED_FUNCTION_17_1(v30);
  v0[57] = v31;
  v33 = *(v32 + 64);
  v0[58] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_275301AE0()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v1 = v0[58];
  v3 = v0[55];
  v2 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[43];
  v7 = v0[34];
  v8 = v0[35];
  v9 = v0[32];
  sub_2753B6938();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_70_0();
  sub_2753B6998();
  v0[59] = *(v6 + 32);
  v0[60] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v0[61] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v10, v11);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275301BBC()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];
  v4 = v0[53];
  v5 = v0[51];
  v7 = v0[42];
  v6 = v0[43];

  v8 = OUTLINED_FUNCTION_79_0();
  v0[62] = v3(v8);
  v9 = OUTLINED_FUNCTION_39_0();
  v10(v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275301C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = v9[58];
  v12 = v9[42];
  v11 = v9[43];
  v14 = v9[34];
  v13 = v9[35];
  v15 = swift_task_alloc();
  v9[63] = v15;
  OUTLINED_FUNCTION_56_0(v15);
  OUTLINED_FUNCTION_38_0(&unk_2753C1DF0);
  v28 = v16;
  v17 = swift_task_alloc();
  v9[64] = v17;
  *v17 = v9;
  v17[1] = sub_275301D20;
  v18 = v9[62];
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_241();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28);
}

uint64_t sub_275301D20()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 512);
  *v4 = *v1;
  v3[65] = v7;
  v3[66] = v8;
  v3[67] = v0;

  if (!v0)
  {
    v9 = v3[62];
    v10 = v3[63];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275301E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = v12[66];
  if (v13)
  {
    v14 = v12[33];
    v15 = v12[31];
    *v15 = v12[65];
    v15[1] = v13;
    v16 = *MEMORY[0x277D65210];
    OUTLINED_FUNCTION_106_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v17 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v17);
    (*(v18 + 104))(v15, v16);
    OUTLINED_FUNCTION_132_0();
    v20 = v12[47];
    v19 = v12[48];
    v21 = v12[41];
    v22 = v12[38];
    v24 = OUTLINED_FUNCTION_98_0(v23);
    v25(v24);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_100_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }

  else
  {
    v35 = v12[50];
    v37 = v12[42];
    v36 = v12[43];
    v38 = v12[34];
    v39 = v12[32];
    v40 = OUTLINED_FUNCTION_54_0(v12[49]);
    v41(v40);
    OUTLINED_FUNCTION_69_0();
    FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(v38, v42);
    v12[68] = a9;
    v12[30] = a9;
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v12[69] = v43;
    *v43 = v44;
    v43[1] = sub_275302018;
    v45 = v12[48];
    v46 = v12[44];
    v47 = v12[34];
    v48 = v12[35];
    v49 = v12[32];
    OUTLINED_FUNCTION_100_0();

    return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)();
  }
}

uint64_t sub_275302018()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 552);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 560) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_275302114()
{
  v172 = v0;
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = OUTLINED_FUNCTION_48_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_92_0();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D65210])
  {
    v10 = *(v0 + 376);
    v11 = *(v0 + 360);
    v12 = OUTLINED_FUNCTION_126_0(*(v0 + 368));
    v13(v12);
    v14 = *v10;
    v15 = v10[1];
    sub_27535A340(v10[3], v160);
    v16 = v163 | (v164 << 16);
    if ((~v16 & 0xFE00FE) == 0)
    {
      v17 = *(v0 + 544);
      v18 = *(v0 + 384);
      v19 = *(v0 + 360);
      v20 = *(v0 + 368);
      v21 = *(v0 + 264);
      v22 = *(v0 + 248);

      v23 = *(v20 + 8);
      v24 = OUTLINED_FUNCTION_90_0();
      v25(v24);
      OUTLINED_FUNCTION_142_0();
      *v22 = v26 | 2;
      v22[1] = 0x80000002753B86D0;
      v27 = *MEMORY[0x277D65208];
LABEL_13:
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      v94 = sub_2753B6C18();
      OUTLINED_FUNCTION_8_2(v94);
      v46 = *(v95 + 104);
      v47 = v22;
      goto LABEL_14;
    }

    v147 = v160[0];
    v151 = v160[1];
    v48 = v162;
    v157 = v161;
    v49 = *(v0 + 464);
    v50 = *(v0 + 448);
    v51 = *(v0 + 320);
    v52 = *(v0 + 328);
    v53 = *(v0 + 312);
    sub_2753B6978();
    *(v0 + 176) = *(v0 + 208);
    *(v0 + 189) = *(v0 + 221);
    sub_275314888(v0 + 176);
    v54 = *MEMORY[0x277D65198];
    v55 = sub_2753B6AB8();
    OUTLINED_FUNCTION_8_2(v55);
    (*(v56 + 104))(v52, v54);
    (*(v51 + 104))(v52, *MEMORY[0x277D651A0], v53);
    if ((sub_2753B6AA8() & 1) == 0)
    {
      v104 = *(v0 + 544);
      v105 = *(v0 + 368);
      v142 = *(v0 + 360);
      v145 = *(v0 + 384);
      v139 = *(v0 + 328);
      v106 = v48;
      v108 = *(v0 + 312);
      v107 = *(v0 + 320);
      v109 = *(v0 + 264);
      v110 = *(v0 + 248);

      sub_2752FBB58(v147, *(&v147 + 1), v151, *(&v151 + 1), v157, v106, v16);

      (*(v107 + 8))(v139, v108);
      (*(v105 + 8))(v145, v142);
      OUTLINED_FUNCTION_55_0();
      v111 = *MEMORY[0x277D65208];
      OUTLINED_FUNCTION_106_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      v112 = sub_2753B6C18();
      OUTLINED_FUNCTION_8_2(v112);
      v114 = *(v113 + 104);
      v47 = OUTLINED_FUNCTION_96_0();
      goto LABEL_15;
    }

    v140 = *(v0 + 336);
    v143 = *(v0 + 344);
    v168 = v147;
    v169 = v151;
    *&v170 = v157;
    *(&v170 + 1) = v48;
    BYTE2(v171[0]) = BYTE2(v16);
    LOWORD(v171[0]) = v16;

    sub_275315CA4(v147, *(&v147 + 1), v151, *(&v151 + 1), v157, v48, v16);
    result = sub_275319620(v14, v15, &v168, v0 + 16);
    v138 = *(v0 + 24);
    v141 = *(v0 + 16);
    v58 = *(v0 + 48);
    v165 = *(v0 + 32);
    v166 = v58;
    v167[0] = *(v0 + 64);
    *(v167 + 15) = *(v0 + 79);
    if (!v138)
    {
      __break(1u);
      return result;
    }

    v144 = *(v0 + 560);
    v59 = *(v0 + 544);
    v60 = *(v0 + 464);
    v62 = *(v0 + 336);
    v61 = *(v0 + 344);
    v63 = *(v0 + 272);
    v64 = *(v0 + 280);

    sub_2752FBB58(v147, *(&v147 + 1), v151, *(&v151 + 1), v157, v48, v16);

    sub_2753104C4(v61, &v168);
    if (v144)
    {
      v65 = *(v0 + 368);
      v154 = *(v0 + 360);
      v158 = *(v0 + 384);
      v66 = *(v0 + 336);
      v67 = *(v0 + 344);
      v68 = *(v0 + 320);
      v149 = *(v0 + 312);
      v152 = *(v0 + 328);
      type metadata accessor for MediaAPIResourceRequest.Identifier();
      OUTLINED_FUNCTION_223();
      v69 = sub_2753B72A8();
      OUTLINED_FUNCTION_9(v69);
      (*(v70 + 8))(v0 + 16);
      *(v0 + 83) = 4;
      sub_2753148DC();
      v71 = OUTLINED_FUNCTION_197();
      *(v71 + 16) = xmmword_2753BE420;
      *(v71 + 32) = v144;
      OUTLINED_FUNCTION_0_3();
      sub_275316CAC(0, v72, v73, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
      sub_275314720();
      OUTLINED_FUNCTION_67_1();
      swift_allocError();
      v74 = v144;
      v75 = sub_275314678();
      MEMORY[0x277C755D0](v0 + 83, 0xD00000000000005CLL, 0x80000002753B86F0, v71, &type metadata for MusicContentError, v75);
      swift_willThrow();

      (*(v68 + 8))(v152, v149);
      (*(v65 + 8))(v158, v154);
      OUTLINED_FUNCTION_132_0();
      v77 = *(v0 + 376);
      v76 = *(v0 + 384);
      v78 = *(v0 + 328);
      v79 = *(v0 + 304);
      v81 = OUTLINED_FUNCTION_98_0(v80);
      v82(v81);

      OUTLINED_FUNCTION_19_0();
LABEL_16:

      return v83();
    }

    v136 = *(v0 + 448);
    v137 = *(v0 + 464);
    v135 = *(v0 + 416);
    v153 = *(v0 + 360);
    v155 = *(v0 + 384);
    v116 = *(v0 + 336);
    v117 = *(v0 + 344);
    v118 = *(v0 + 320);
    v148 = *(v0 + 328);
    v150 = *(v0 + 368);
    v146 = *(v0 + 312);
    v120 = *(v0 + 288);
    v119 = *(v0 + 296);
    v159 = *(v0 + 264);
    v36 = *(v0 + 248);
    v121 = v168;
    v122 = v169;
    *(v0 + 120) = v170;
    *(v0 + 104) = v122;
    *(v0 + 88) = v121;
    sub_275314944();
    v124 = (v36 + *(v123 + 48));
    v125 = *MEMORY[0x277D650C8];
    v126 = sub_2753B6898();
    OUTLINED_FUNCTION_8_2(v126);
    (*(v127 + 104))(v36, v125);
    (*(v119 + 104))(v36, *MEMORY[0x277D65140], v120);
    *&v168 = v141;
    *(&v168 + 1) = v138;
    v169 = v165;
    v170 = v166;
    v171[0] = v167[0];
    *(v171 + 15) = *(v167 + 15);
    type metadata accessor for MediaAPIResourceRequest.Option();
    OUTLINED_FUNCTION_99_0();
    sub_2753B76C8();
    swift_allocObject();
    v128 = sub_2753B6FF8();
    OUTLINED_FUNCTION_137_0(v128, v129);
    sub_2752E6688();
    sub_2753B6998();
    v124[3] = type metadata accessor for MediaAPIResourceRequest();
    v124[4] = OUTLINED_FUNCTION_22_0();
    __swift_allocate_boxed_opaque_existential_1(v124);
    OUTLINED_FUNCTION_214();
    sub_275319DD0(v130, v131, v132, v133, v134);
    (*(v118 + 8))(v148, v146);
    (*(v150 + 8))(v155, v153);
    v27 = *MEMORY[0x277D65218];
LABEL_6:
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v44 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v44);
    v46 = *(v45 + 104);
    v47 = v36;
LABEL_14:
    v96 = v27;
LABEL_15:
    v46(v47, v96);
    OUTLINED_FUNCTION_132_0();
    v98 = *(v0 + 376);
    v97 = *(v0 + 384);
    v99 = *(v0 + 328);
    v100 = *(v0 + 304);
    v102 = OUTLINED_FUNCTION_98_0(v101);
    v103(v102);

    OUTLINED_FUNCTION_35_0();
    goto LABEL_16;
  }

  v27 = v9;
  if (v9 == *MEMORY[0x277D65218])
  {
    v28 = *(v0 + 544);
    v30 = *(v0 + 376);
    v29 = *(v0 + 384);
    v31 = *(v0 + 360);
    v32 = *(v0 + 368);
    v33 = *(v0 + 296);
    v34 = *(v0 + 304);
    v35 = *(v0 + 288);
    v156 = *(v0 + 264);
    v36 = *(v0 + 248);
    OUTLINED_FUNCTION_205();
    v37();

    v38 = *(v32 + 96);
    v32 += 96;
    v39 = OUTLINED_FUNCTION_107_0();
    v40(v39);
    sub_275314944();
    v42 = OUTLINED_FUNCTION_74_0(v41);
    (v32)(v42);
    sub_275315C8C((v30 + v31), v0 + 136);
    v43 = OUTLINED_FUNCTION_127_0();
    (v32)(v43);
    sub_275315C8C((v0 + 136), v36 + v28);
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D65208])
  {
    v84 = *(v0 + 544);
    v86 = *(v0 + 376);
    v85 = *(v0 + 384);
    v87 = *(v0 + 360);
    v88 = *(v0 + 368);
    v89 = *(v0 + 264);
    v22 = *(v0 + 248);

    v90 = *(v88 + 8);
    v91 = OUTLINED_FUNCTION_90_0();
    v90(v91);
    v92 = OUTLINED_FUNCTION_207();
    v90(v92);
    OUTLINED_FUNCTION_142_0();
    *v22 = v93;
    v22[1] = v86;
    goto LABEL_13;
  }

  v115 = *(v0 + 360);

  return sub_2753B7708();
}

uint64_t sub_275302AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = v12[62];
  v14 = v12[63];

  v36 = v12[67];
  v15 = v12[58];
  v17 = v12[55];
  v16 = v12[56];
  v19 = v12[52];
  v18 = v12[53];
  v20 = v12[50];
  v22 = v12[47];
  v21 = v12[48];
  v23 = v12[41];
  v24 = v12[38];
  v25 = OUTLINED_FUNCTION_105_0(v12[57]);
  v26(v25);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_100_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
}

uint64_t sub_275302B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = v12[68];

  v35 = v12[70];
  v14 = v12[58];
  v16 = v12[55];
  v15 = v12[56];
  v18 = v12[52];
  v17 = v12[53];
  v19 = v12[50];
  v21 = v12[47];
  v20 = v12[48];
  v22 = v12[41];
  v23 = v12[38];
  v24 = OUTLINED_FUNCTION_105_0(v12[57]);
  v25(v24);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_100_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_275302C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v6[8] = a6;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = a1;
  return MEMORY[0x2822009F8](sub_275302CA4, 0, 0);
}

uint64_t sub_275302CA4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_89_0();
  sub_2753B69A8();
  OUTLINED_FUNCTION_178();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_275302D4C;
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_75_0();

  return MusicContentStorage.Operations.mediaAPIAttributes(for:)();
}

uint64_t sub_275302D4C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_45_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[11] = v1;

  if (!v1)
  {
    v11 = v5[9];

    v5[12] = v0;
    v5[13] = v3;
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275302E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a2;
  sub_275316CAC(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v5[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = *(a3 + 16);
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v13 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v14 = *(a3 + 24);
  v5[20] = v14;
  v15 = *(v14 + 8);
  v16 = sub_2753B69B8();
  v5[21] = v16;
  v17 = *(v16 - 8);
  v5[22] = v17;
  v18 = *(v17 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275303068, 0, 0);
}

uint64_t sub_275303068()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[10];
  sub_2753B6938();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_70_0();
  sub_2753B6998();
  v0[24] = *(v3 + 32);
  v0[25] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v0[26] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v10, v11);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275303144()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];

  v8 = OUTLINED_FUNCTION_79_0();
  v0[27] = v3(v8);
  v9 = OUTLINED_FUNCTION_39_0();
  v10(v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2753031D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = v9[23];
  v11 = v9[20];
  v12 = v9[15];
  v14 = v9[11];
  v13 = v9[12];
  v15 = swift_task_alloc();
  v9[28] = v15;
  OUTLINED_FUNCTION_56_0(v15);
  OUTLINED_FUNCTION_38_0(&unk_2753C1DF0);
  v28 = v16;
  v17 = swift_task_alloc();
  v9[29] = v17;
  *v17 = v9;
  v17[1] = sub_2753032AC;
  v18 = v9[27];
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_241();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28);
}

uint64_t sub_2753032AC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  v8 = *(v7 + 232);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v3[30] = v11;
  v3[31] = v0;

  if (!v0)
  {
    v12 = v3[27];
    v13 = v3[28];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2753033BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  if (*(v10 + 240))
  {
    v11 = *(v10 + 24);
    v12 = *(v10 + 152);
    v13 = *(v10 + 136);
    v14 = *(v10 + 112);
    (*(*(v10 + 176) + 8))(*(v10 + 184), *(v10 + 168));

    v15 = *(v10 + 8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_111_0();

    return v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = *(v10 + 184);
    v26 = *(v10 + 168);
    v28 = *(v10 + 104);
    v27 = *(v10 + 112);
    sub_275314678();
    OUTLINED_FUNCTION_113_0();
    sub_2753B62D8();
    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    *(v10 + 256) = 8;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_156_0();
    sub_2753B69A8();
    v29 = *(v10 + 56);
    *(v10 + 64) = *(v10 + 48);
    *(v10 + 72) = v29;
    sub_2753146CC();
    OUTLINED_FUNCTION_115();
    sub_2753B62B8();

    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_198(v30, v31, v32, v33, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_71_0();
    sub_2753B62E8();
    swift_willThrow();
    v34 = *(v10 + 184);
    v35 = *(v10 + 168);
    v36 = *(v10 + 152);
    v37 = *(v10 + 136);
    v38 = *(v10 + 112);
    v39 = OUTLINED_FUNCTION_105_0(*(v10 + 176));
    v40(v39);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_111_0();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
  }
}

uint64_t sub_2753035E4()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[27];
  v2 = v0[28];

  v3 = v0[31];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[14];
  v9 = OUTLINED_FUNCTION_105_0(v0[22]);
  v10(v9);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_275303694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v6[8] = a6;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = a1;
  return MEMORY[0x2822009F8](sub_2753036BC, 0, 0);
}

uint64_t sub_2753036BC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_89_0();
  sub_2753B69A8();
  OUTLINED_FUNCTION_178();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_275303764;
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_75_0();

  return MusicContentStorage.Operations.mediaAPIAttributes(for:)();
}

uint64_t sub_275303764()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_45_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[11] = v1;

  if (!v1)
  {
    v11 = v5[9];

    v5[12] = v0;
    v5[13] = v3;
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t FacetCollection<>.MusicKitMetadataElement.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_184(v1, v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v8, v9, v10, MEMORY[0x277D64F00]);
  v0[8] = v11;
  OUTLINED_FUNCTION_75(v11);
  v13 = *(v12 + 64);
  v0[9] = OUTLINED_FUNCTION_138_0();
  v0[10] = OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_93_0();
  v14 = sub_2753B72A8();
  v0[11] = v14;
  OUTLINED_FUNCTION_17_1(v14);
  v0[12] = v15;
  v17 = *(v16 + 64);
  v0[13] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_87_0();
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_88_0();
  v0[16] = v21;
  v23 = *(v22 + 64);
  v0[17] = OUTLINED_FUNCTION_138_0();
  v24 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2753039F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = *(v10 + 112);
  v12 = *(v10 + 120);
  OUTLINED_FUNCTION_202();
  v13 = *(v10 + 40);
  v14 = *(v10 + 16);
  v16 = OUTLINED_FUNCTION_54_0(v15);
  v17(v16);
  v18 = OUTLINED_FUNCTION_59_0();
  if (v18)
  {
    v22 = *(v10 + 128);
    v21 = *(v10 + 136);
    OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_151_0();
    v23 = *(v22 + 32);
    v24 = OUTLINED_FUNCTION_96_0();
    v25(v24);
    v26 = swift_task_alloc();
    *(v10 + 144) = v26;
    *v26 = v10;
    OUTLINED_FUNCTION_158_0(v26);
    OUTLINED_FUNCTION_111_0();

    return sub_275302E74(v27, v28, v29, v30, v31);
  }

  else
  {
    v35 = *(v10 + 96);
    v34 = *(v10 + 104);
    v36 = *(v10 + 88);
    v38 = *(v10 + 64);
    v37 = *(v10 + 72);
    v39 = *(v10 + 40);
    v40 = *(v10 + 16);
    v41 = OUTLINED_FUNCTION_128_0(v18, v19, v20, *(v10 + 80));
    v42(v41);
    sub_275314678();
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    *(v10 + 176) = 7;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_83_0();
    sub_2753B62A8();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_193(v43, v44, v45, v46, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_52_0();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_229();

    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_111_0();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
  }
}

uint64_t sub_275303BD8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_45_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v2;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[19] = v1;

  if (!v1)
  {
    v5[20] = v0;
    v5[21] = v3;
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275303CE0()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = OUTLINED_FUNCTION_98_0(v0[16]);
  v7(v6);

  v8 = v0[1];
  v10 = v0[20];
  v9 = v0[21];

  return v8(v9, v10);
}

uint64_t sub_275303D84()
{
  OUTLINED_FUNCTION_3();
  (*(v0[16] + 8))(v0[17], v0[10]);
  OUTLINED_FUNCTION_185();

  OUTLINED_FUNCTION_19_0();

  return v1();
}

uint64_t sub_275303E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_275303EF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitMetadataElement.availability<A>(of:)();
}

uint64_t sub_275303FB8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_275317948;

  return FacetCollection<>.MusicKitMetadataElement.value<A, B>(from:for:)();
}

uint64_t FacetCollection<>.MusicKitRelatedContentElement.availability<A>(of:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_117_0();
  v0[35] = v2;
  v0[36] = v3;
  v0[33] = v4;
  v0[34] = v5;
  v0[32] = v6;
  v7 = sub_2753B6A38();
  v0[37] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v0[38] = v8;
  v10 = *(v9 + 64);
  v0[39] = OUTLINED_FUNCTION_138_0();
  v11 = sub_2753B6AC8();
  v0[40] = v11;
  OUTLINED_FUNCTION_17_1(v11);
  v0[41] = v12;
  v14 = *(v13 + 64);
  v0[42] = OUTLINED_FUNCTION_138_0();
  v0[43] = *(v1 + 16);
  v15 = *(v1 + 24);
  v0[44] = v15;
  OUTLINED_FUNCTION_95_0();
  v0[45] = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v16 = sub_2753B6C18();
  v0[46] = v16;
  OUTLINED_FUNCTION_17_1(v16);
  v0[47] = v17;
  v19 = *(v18 + 64);
  v0[48] = OUTLINED_FUNCTION_176();
  v0[49] = swift_task_alloc();
  OUTLINED_FUNCTION_2_1();
  v0[50] = v20;
  v22 = *(v21 + 64);
  v0[51] = OUTLINED_FUNCTION_176();
  v0[52] = swift_task_alloc();
  v23 = sub_2753B6A18();
  v0[53] = v23;
  OUTLINED_FUNCTION_17_1(v23);
  v0[54] = v24;
  v26 = *(v25 + 64);
  v0[55] = OUTLINED_FUNCTION_176();
  v0[56] = swift_task_alloc();
  OUTLINED_FUNCTION_2_1();
  v0[57] = v27;
  v29 = *(v28 + 64);
  v0[58] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_82_0();
  v30 = type metadata accessor for FacetCollection<>.RelatedContent();
  v0[59] = v30;
  OUTLINED_FUNCTION_17_1(v30);
  v0[60] = v31;
  v33 = *(v32 + 64);
  v0[61] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[62] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_75(AssociatedTypeWitness);
  v36 = *(v35 + 64);
  v0[63] = OUTLINED_FUNCTION_138_0();
  v37 = *(v15 + 8);
  OUTLINED_FUNCTION_82_0();
  v38 = sub_2753B69B8();
  v0[64] = v38;
  OUTLINED_FUNCTION_17_1(v38);
  v0[65] = v39;
  v41 = *(v40 + 64);
  v0[66] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v42, v43, v44);
}

uint64_t sub_2753043E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_177();
  v21 = v20[66];
  v22 = v20[63];
  v23 = v20[62];
  v71 = v20[64];
  v72 = v20[61];
  v25 = v20[58];
  v24 = v20[59];
  v26 = v20[57];
  v27 = v20[54];
  v74 = v20[56];
  v75 = v20[55];
  v73 = v20[53];
  v29 = v20[35];
  v28 = v20[36];
  v30 = v20[33];
  sub_2753B6938();
  OUTLINED_FUNCTION_33();
  swift_dynamicCast();
  v20[67] = *(v26 + 16);
  v20[68] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31 = OUTLINED_FUNCTION_165();
  v32(v31);
  OUTLINED_FUNCTION_150_0();
  (*(v27 + 16))(v74, v72 + *(v24 + 36), v73);
  sub_2753B69C8();
  if (qword_2809C06E0 != -1)
  {
    swift_once();
  }

  v34 = v20[54];
  v33 = v20[55];
  __swift_project_value_buffer(v20[53], qword_2809DAC90);
  v35 = sub_2752E94D0();
  v20[69] = *(v34 + 8);
  v20[70] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36 = OUTLINED_FUNCTION_96_0();
  v37(v36);
  if (v35)
  {
    v38 = v20[66];
    v39 = v20[64];
    v40 = v20[52];
    v41 = v20[44];
    sub_2753B6998();
    v20[71] = *(v41 + 32);
    v20[72] = (v41 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
    sub_2753B6288();
    v20[73] = OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_2_4();
    sub_275315BB8(v42, v43);
    OUTLINED_FUNCTION_102_0();
    sub_2753B70C8();
    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_148_0();

    return MEMORY[0x2822009F8](v44, v45, v46);
  }

  else
  {
    v48 = v20[56];
    v49 = v20[53];
    v50 = v20[34];
    v51 = v20[32];
    sub_2753B7398();
    v20[21] = 0;
    v20[22] = 0xE000000000000000;
    OUTLINED_FUNCTION_85_0();
    MEMORY[0x277C76100](0xD00000000000001DLL);
    sub_2753B7468();
    v52 = v20[22];
    *v51 = v20[21];
    v51[1] = v52;
    v53 = *MEMORY[0x277D65208];
    OUTLINED_FUNCTION_4_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v54 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v54);
    (*(v55 + 104))(v51, v53);
    OUTLINED_FUNCTION_36_0();
    v56 = OUTLINED_FUNCTION_114_0();
    v57(v56);
    v58 = OUTLINED_FUNCTION_162();
    v59(v58);
    v60 = OUTLINED_FUNCTION_73_0();
    v61(v60);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_148_0();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, v71, v72, v73, v74, v75, 0, 0xE000000000000000, a18, a19, a20);
  }
}

uint64_t sub_275304748()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[52];
  v5 = v0[50];
  v7 = v0[43];
  v6 = v0[44];

  v8 = OUTLINED_FUNCTION_79_0();
  v0[74] = v3(v8);
  v9 = OUTLINED_FUNCTION_39_0();
  v10(v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2753047DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = v10[66];
  v12 = v10[56];
  v14 = v10[43];
  v13 = v10[44];
  v16 = v10[35];
  v15 = v10[36];
  v17 = swift_task_alloc();
  v10[75] = v17;
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v15;
  v17[6] = v11;
  v17[7] = v12;
  OUTLINED_FUNCTION_38_0(&unk_2753C1E28);
  v30 = v18;
  v19 = swift_task_alloc();
  v10[76] = v19;
  *v19 = v10;
  v19[1] = sub_2753048C0;
  v20 = v10[74];
  OUTLINED_FUNCTION_111_0();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10);
}

uint64_t sub_2753048C0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 608);
  *v4 = *v1;
  v3[77] = v7;
  v3[78] = v0;

  if (!v0)
  {
    v8 = v3[75];
    v9 = v3[74];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2753049D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_181();
  v19 = v18[77];
  if (*(v19 + 16))
  {
    v20 = v18[34];
    v21 = v18[32];
    *v21 = v19;
    v22 = *MEMORY[0x277D65210];
    OUTLINED_FUNCTION_4_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v23 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v23);
    (*(v24 + 104))(v21, v22);
    OUTLINED_FUNCTION_36_0();
    v25 = OUTLINED_FUNCTION_114_0();
    v26(v25);
    v27 = OUTLINED_FUNCTION_162();
    v28(v27);
    v29 = OUTLINED_FUNCTION_73_0();
    v30(v29);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_131_0();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v40 = v18[68];
    v41 = v18[67];
    v42 = v18[66];
    v43 = v18[64];
    v44 = v18[58];
    v46 = v18[43];
    v45 = v18[44];
    v47 = v18[35];
    v48 = v18[33];
    v49 = OUTLINED_FUNCTION_211();
    v50(v49);
    OUTLINED_FUNCTION_101_0();
    FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(v47, v51);
    sub_2753B69A8();
    v52 = v18[23];
    v53 = v18[24];
    OUTLINED_FUNCTION_136_0();
    v18[79] = type metadata accessor for MediaAPIResourceRequest.Option();
    v18[80] = sub_2753B76C8();
    swift_allocObject();
    sub_2753B6FF8();
    *v54 = 4;
    v18[30] = sub_2752E6688();
    v18[25] = v52;
    v18[26] = v53;
    sub_2753B70B8();
    sub_275314624();
    sub_2753B6CD8();
    OUTLINED_FUNCTION_129_0();
    sub_2753B6D18();
    v18[31] = v18[29];

    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v18[81] = v55;
    *v55 = v56;
    v55[1] = sub_275304C8C;
    v57 = v18[49];
    v58 = v18[45];
    v59 = v18[35];
    v60 = v18[36];
    v61 = v18[33];
    OUTLINED_FUNCTION_131_0();

    return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)();
  }
}

uint64_t sub_275304C8C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 648);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[82] = v0;

  if (v0)
  {
    v9 = v3[77];

    v10 = v3[31];

    v11 = v3[29];
  }

  else
  {
    v12 = v3[31];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_275304DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v14 = *(v12 + 384);
  v13 = *(v12 + 392);
  v15 = *(v12 + 368);
  v16 = *(v12 + 376);
  v17 = OUTLINED_FUNCTION_48_0();
  v18(v17);
  v19 = OUTLINED_FUNCTION_92_0();
  v21 = v20(v19);
  if (v21 == *MEMORY[0x277D65210])
  {
    v22 = *(v12 + 384);
    v23 = *(v12 + 368);
    v24 = OUTLINED_FUNCTION_126_0(*(v12 + 376));
    v25(v24);
    v26 = *v22;
    v27 = v22[1];
    v28 = v22[3];
    v29 = *(v28 + 16);
    OUTLINED_FUNCTION_210();
    while (2)
    {
      if (v30 == 1)
      {
LABEL_26:
        v101 = *(v12 + 616);
        v102 = *(v12 + 232);

        v265 = 0;
        v266 = 0xE000000000000000;
        sub_2753B7398();
        v103 = v266;
        *(v12 + 216) = v265;
        *(v12 + 224) = v103;
        OUTLINED_FUNCTION_122_0();
        MEMORY[0x277C76100](v104 | 2, v105 | 0x8000000000000000);
        v106 = *(v28 + 16);
        OUTLINED_FUNCTION_210();
        while (2)
        {
          if (v107 == 1)
          {
            v116 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_125_0();
            v109 = *(v108 - 24);
            v110 = *(v108 - 16);
            v112 = *(v108 - 8);
            v111 = *v108;
            switch(v113)
            {
              case 0:
                v114 = 0;
                v115 = 0;
                v112 = *(v108 - 8);
                goto LABEL_39;
              case 1:
                v114 = *v108;
                v115 = 32;
                goto LABEL_39;
              case 2:
                v115 = *(v108 + 8) | 0x40;

                v114 = v111;
                goto LABEL_40;
              case 3:
                v114 = *v108;
                v115 = 96;
                goto LABEL_39;
              case 4:
                v114 = *v108;
                v115 = 0x80;
LABEL_39:
                v163 = *(v108 - 16);
LABEL_40:

                v265 = v109;
                v266 = v110;
                *&v267 = v112;
                *(&v267 + 1) = v114;
                LOBYTE(v268) = v115;
                sub_27535DCC4(&v262);

                v164 = OUTLINED_FUNCTION_101_0();
                sub_2753147B0(v164, v165, v112, v114, v115);
                v116 = v262;
                if (v262 == 6)
                {
                  goto LABEL_51;
                }

                break;
              default:
                continue;
            }
          }

          break;
        }

        v166 = *(v12 + 392);
        v167 = *(v12 + 368);
        v168 = *(v12 + 376);
        v169 = *(v12 + 272);
        v170 = *(v12 + 256);

        *(v12 + 133) = v116;
        sub_2753B7468();
        v171 = *(v12 + 216);
        v172 = *(v12 + 224);
        v173 = *(v168 + 8);
        v174 = OUTLINED_FUNCTION_69_0();
        v175(v174);
        *v170 = v171;
        v170[1] = v172;
        v40 = *MEMORY[0x277D65208];
        OUTLINED_FUNCTION_4_3();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_65_0();
        v176 = sub_2753B6C18();
        OUTLINED_FUNCTION_8_2(v176);
        v60 = *(v177 + 104);
        v61 = v170;
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_125_0();
      v32 = *(v31 - 24);
      v33 = *(v31 - 16);
      v35 = *(v31 - 8);
      v34 = *v31;
      v36 = v27;
      switch(v37)
      {
        case 0:
          v38 = 0;
          v39 = 0;
          v35 = *(v31 - 8);
          goto LABEL_17;
        case 1:
          v38 = *v31;
          v39 = 32;
          goto LABEL_17;
        case 2:
          v39 = *(v31 + 8) | 0x40;

          v38 = v34;
          goto LABEL_18;
        case 3:
          v38 = *v31;
          v39 = 96;
          goto LABEL_17;
        case 4:
          v38 = *v31;
          v39 = 0x80;
LABEL_17:
          v79 = *(v31 - 16);
LABEL_18:

          v265 = v32;
          v266 = v33;
          *&v267 = v35;
          *(&v267 + 1) = v38;
          LOBYTE(v268) = v39;
          sub_27535DCC4(&v262);

          v80 = OUTLINED_FUNCTION_212();
          sub_2753147B0(v80, v81, v35, v38, v39);
          v82 = v262;
          if (v262 == 6)
          {
            __break(1u);
LABEL_51:
            __break(1u);
          }

          else
          {

            v83 = v36;
            v84 = v26;
            switch(v82)
            {
              case 3:
LABEL_22:

                break;
              default:
                v85 = sub_2753B7718();

                if ((v85 & 1) == 0)
                {
                  switch(v82)
                  {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 5:
                      OUTLINED_FUNCTION_212();
                      v86 = sub_2753B7718();

                      if (v86)
                      {
                        goto LABEL_24;
                      }

                      goto LABEL_26;
                    case 4:
                      goto LABEL_22;
                    default:
                      JUMPOUT(0);
                  }
                }

                return result;
            }

LABEL_24:
            sub_27535A340(v28, v256);
            v87 = v259 | (v260 << 16);
            if ((~v87 & 0xFE00FE) == 0)
            {
              v88 = *(v12 + 616);
              v89 = *(v12 + 392);
              v90 = *(v12 + 368);
              v91 = *(v12 + 376);
              v92 = *(v12 + 272);
              v93 = *(v12 + 256);
              v94 = *(v12 + 232);

              v95 = *(v91 + 8);
              v96 = OUTLINED_FUNCTION_90_0();
              v97(v96);
              OUTLINED_FUNCTION_142_0();
              *v93 = v98 | 1;
              v93[1] = 0x80000002753B87D0;
              v40 = *MEMORY[0x277D65208];
              OUTLINED_FUNCTION_4_3();
              swift_getWitnessTable();
              OUTLINED_FUNCTION_65_0();
              v99 = sub_2753B6C18();
              OUTLINED_FUNCTION_8_2(v99);
              v60 = *(v100 + 104);
              v61 = v93;
              goto LABEL_43;
            }

            v251 = v256[0];
            v245 = v256[1];
            v117 = v258;
            v249 = v257;
            v118 = *(v12 + 528);
            v119 = *(v12 + 512);
            v121 = *(v12 + 328);
            v120 = *(v12 + 336);
            v122 = *(v12 + 320);
            sub_2753B6978();
            *(v12 + 104) = *(v12 + 136);
            *(v12 + 117) = *(v12 + 149);
            sub_275314888(v12 + 104);
            v123 = *MEMORY[0x277D65198];
            v124 = sub_2753B6AB8();
            OUTLINED_FUNCTION_8_2(v124);
            (*(v125 + 104))(v120, v123);
            (*(v121 + 104))(v120, *MEMORY[0x277D651A0], v122);
            if ((sub_2753B6AA8() & 1) == 0)
            {
              v152 = *(v12 + 616);
              v153 = *(v12 + 376);
              v238 = *(v12 + 368);
              v243 = *(v12 + 392);
              v154 = v117;
              v155 = *(v12 + 328);
              v233 = *(v12 + 320);
              v236 = *(v12 + 336);
              v156 = *(v12 + 272);
              v40 = *(v12 + 256);
              v157 = *(v12 + 232);

              sub_2752FBB58(v251, *(&v251 + 1), v245, *(&v245 + 1), v249, v154, v87);

              (*(v155 + 8))(v236, v233);
              (*(v153 + 8))(v243, v238);
              OUTLINED_FUNCTION_55_0();
              v158 = *MEMORY[0x277D65208];
              OUTLINED_FUNCTION_4_3();
              swift_getWitnessTable();
              OUTLINED_FUNCTION_65_0();
              v159 = sub_2753B6C18();
              OUTLINED_FUNCTION_8_2(v159);
              v161 = *(v160 + 104);
              v61 = OUTLINED_FUNCTION_96_0();
LABEL_44:
              v60(v61, v162);
              OUTLINED_FUNCTION_36_0();
              v247 = *(v12 + 408);
              v248 = *(v12 + 392);
              v178 = *(v12 + 384);
              v253 = *(v12 + 336);
              v255 = *(v12 + 312);
              v179(v40);
              v180 = OUTLINED_FUNCTION_162();
              v181(v180);
              v182 = OUTLINED_FUNCTION_73_0();
              v183(v182);

              OUTLINED_FUNCTION_35_0();
              goto LABEL_45;
            }

            v126 = *(v12 + 656);
            v127 = *(v12 + 528);
            v128 = *(v12 + 344);
            v129 = *(v12 + 280);
            v130 = *(v12 + 288);
            sub_2753104C4(*(v12 + 352), v261);
            if (v126)
            {
              v131 = v126;
              v132 = *(v12 + 616);
              v133 = v117;
              v134 = *(v12 + 376);
              v237 = *(v12 + 368);
              v241 = *(v12 + 392);
              v135 = *(v12 + 328);
              v232 = *(v12 + 320);
              v235 = *(v12 + 336);
              v136 = *(v12 + 232);

              sub_2752FBB58(v251, *(&v251 + 1), v245, *(&v245 + 1), v249, v133, v87);

              *(v12 + 134) = 4;
              sub_2753148DC();
              v137 = OUTLINED_FUNCTION_197();
              *(v137 + 16) = xmmword_2753BE420;
              *(v137 + 32) = v131;
              OUTLINED_FUNCTION_0_3();
              v138 = OUTLINED_FUNCTION_221();
              sub_275316CAC(v138, v139, v140, v141, v142);
              sub_275314720();
              OUTLINED_FUNCTION_102_0();
              OUTLINED_FUNCTION_67_1();
              swift_allocError();
              v143 = v131;
              sub_275314678();
              OUTLINED_FUNCTION_142_0();
              MEMORY[0x277C755D0](v12 + 134, v144 + 74, 0x80000002753B87F0, v137, &type metadata for MusicContentError);
              swift_willThrow();

              (*(v135 + 8))(v235, v232);
              (*(v134 + 8))(v241, v237);
              OUTLINED_FUNCTION_37_0();
              v242 = *(v12 + 408);
              v246 = *(v12 + 392);
              v145 = *(v12 + 384);
              v250 = *(v12 + 336);
              v252 = *(v12 + 312);
              v146(v131);
              v147 = OUTLINED_FUNCTION_167();
              v148(v147);
              v149 = *(v137 + 8);
              v150 = OUTLINED_FUNCTION_107_0();
              v151(v150);

              OUTLINED_FUNCTION_19_0();
LABEL_45:
              OUTLINED_FUNCTION_100_0();

              return v185(v184, v185, v186, v187, v188, v189, v190, v191, a9, a10, a11, a12);
            }

            v239 = *(v12 + 344);
            v244 = *(v12 + 352);
            v192 = v261[1];
            *(v12 + 16) = v261[0];
            *(v12 + 32) = v192;
            *(v12 + 48) = v261[2];
            v262 = v251;
            v263 = v245;
            *&v264[0] = v249;
            *(&v264[0] + 1) = v117;
            BYTE2(v264[1]) = BYTE2(v87);
            LOWORD(v264[1]) = v87;

            OUTLINED_FUNCTION_214();
            sub_275315CA4(v193, v194, v195, v196, v197, v117, v87);
            sub_275319620(v84, v83, &v262, &v265);
            v240 = v266;
            v262 = v267;
            v263 = v268;
            v264[0] = v269[0];
            *(v264 + 15) = *(v269 + 15);
            if (v266)
            {
              v198 = v117;
              v219 = *(v12 + 640);
              v220 = *(v12 + 632);
              v199 = *(v12 + 616);
              v221 = *(v12 + 408);
              v229 = *(v12 + 376);
              v230 = *(v12 + 368);
              v231 = *(v12 + 392);
              v224 = *(v12 + 352);
              v225 = *(v12 + 528);
              v222 = *(v12 + 344);
              v223 = *(v12 + 512);
              v226 = *(v12 + 328);
              v227 = *(v12 + 320);
              v228 = *(v12 + 336);
              v200 = *(v12 + 304);
              v218 = *(v12 + 296);
              v234 = *(v12 + 272);
              v201 = *(v12 + 256);
              v202 = *(v12 + 232);

              OUTLINED_FUNCTION_214();
              sub_2752FBB58(v203, v204, v205, v206, v207, v198, v87);

              sub_275314944();
              v209 = (v201 + *(v208 + 48));
              v210 = *MEMORY[0x277D650C8];
              v211 = sub_2753B6898();
              OUTLINED_FUNCTION_8_2(v211);
              (*(v212 + 104))(v201, v210);
              (*(v200 + 104))(v201, *MEMORY[0x277D65140], v218);
              OUTLINED_FUNCTION_119_0(v240, v218, v219);
              swift_allocObject();
              v213 = sub_2753B6FF8();
              OUTLINED_FUNCTION_137_0(v213, v214);
              sub_2752E6688();
              OUTLINED_FUNCTION_192();
              v209[3] = OUTLINED_FUNCTION_194();
              v209[4] = OUTLINED_FUNCTION_22_0();
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v209);
              sub_275319DD0(&v265, (v12 + 16), v198, v87, boxed_opaque_existential_1);
              (*(v226 + 8))(v228, v227);
              (*(v229 + 8))(v231, v230);
              v40 = *MEMORY[0x277D65218];
              OUTLINED_FUNCTION_4_3();
              swift_getWitnessTable();
              OUTLINED_FUNCTION_65_0();
              v216 = sub_2753B6C18();
              OUTLINED_FUNCTION_8_2(v216);
              v60 = *(v217 + 104);
              v61 = v201;
              goto LABEL_43;
            }
          }

          __break(1u);
          JUMPOUT(0x275305C68);
        default:
          continue;
      }
    }
  }

  v40 = v21;
  if (v21 == *MEMORY[0x277D65218])
  {
    v41 = *(v12 + 616);
    v43 = *(v12 + 384);
    v42 = *(v12 + 392);
    v44 = *(v12 + 368);
    v45 = *(v12 + 376);
    v46 = *(v12 + 304);
    v47 = *(v12 + 312);
    v48 = *(v12 + 296);
    v254 = *(v12 + 272);
    v49 = *(v12 + 256);

    OUTLINED_FUNCTION_205();
    v50(v42, v44);
    v51 = *(v12 + 232);

    v52 = *(v45 + 96);
    v45 += 96;
    v53 = OUTLINED_FUNCTION_107_0();
    v54(v53);
    sub_275314944();
    v56 = OUTLINED_FUNCTION_74_0(v55);
    (v45)(v56);
    sub_275315C8C((v43 + v44), v12 + 64);
    v57 = OUTLINED_FUNCTION_127_0();
    (v45)(v57);
    sub_275315C8C((v12 + 64), v49 + v42);
    OUTLINED_FUNCTION_4_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v58 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v58);
    v60 = *(v59 + 104);
    v61 = v49;
LABEL_43:
    v162 = v40;
    goto LABEL_44;
  }

  if (v21 == *MEMORY[0x277D65208])
  {
    v62 = *(v12 + 616);
    v64 = *(v12 + 384);
    v63 = *(v12 + 392);
    v65 = *(v12 + 368);
    v66 = *(v12 + 376);
    v67 = *(v12 + 272);
    v68 = *(v12 + 256);
    v69 = *(v12 + 232);

    v70 = *(v66 + 8);
    v71 = OUTLINED_FUNCTION_97_0();
    v70(v71);
    v72 = OUTLINED_FUNCTION_101_0();
    v70(v72);
    OUTLINED_FUNCTION_142_0();
    *v68 = v73;
    v68[1] = 0x80000002753B86B0;
    OUTLINED_FUNCTION_4_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v74 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v74);
    v60 = *(v75 + 104);
    v61 = v68;
    goto LABEL_43;
  }

  v76 = *(v12 + 368);
  OUTLINED_FUNCTION_100_0();

  return sub_2753B7708();
}

uint64_t sub_275305CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_177();
  v22 = v20[75];
  v23 = v20[74];

  v40 = v20[78];
  OUTLINED_FUNCTION_37_0();
  v24 = OUTLINED_FUNCTION_108_0();
  v25(v24);
  v26 = OUTLINED_FUNCTION_167();
  v27(v26);
  v28 = *(v21 + 8);
  v29 = OUTLINED_FUNCTION_107_0();
  v30(v29);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_148_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, v40, a18, a19, a20);
}

uint64_t sub_275305DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_177();
  v38 = *(v20 + 656);
  OUTLINED_FUNCTION_37_0();
  v22 = OUTLINED_FUNCTION_108_0();
  v23(v22);
  v24 = OUTLINED_FUNCTION_167();
  v25(v24);
  v26 = *(v21 + 8);
  v27 = OUTLINED_FUNCTION_107_0();
  v28(v27);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_148_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, v38, a18, a19, a20);
}

uint64_t sub_275305EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a5;
  v7[9] = a7;
  v7[6] = a3;
  v7[7] = a4;
  v7[4] = a1;
  v7[5] = a2;
  return MEMORY[0x2822009F8](sub_275305EE4, 0, 0);
}

uint64_t sub_275305EE4()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[8];
  v2 = v0[6];
  OUTLINED_FUNCTION_112_0(v0[9]);
  sub_2753B69B8();
  sub_2753B69A8();
  v3 = v0[2];
  v0[10] = v0[3];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_275305FA0;
  v5 = v0[7];
  v6 = v0[5];
  OUTLINED_FUNCTION_75_0();

  return MusicContentStorage.Operations.relatedContent(to:as:)();
}

uint64_t sub_275305FA0()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[12] = v0;

  if (!v0)
  {
    v11 = v5[10];

    v5[13] = v3;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2753060C4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_275306124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a2;
  sub_275316CAC(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v5[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = *(a3 + 16);
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = sub_2753B6A18();
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();
  v16 = *(a4 - 8);
  v5[17] = v16;
  v17 = *(v16 + 64) + 15;
  v5[18] = swift_task_alloc();
  v18 = *(a3 + 24);
  v5[19] = v18;
  v19 = type metadata accessor for FacetCollection<>.RelatedContent();
  v5[20] = v19;
  v20 = *(v19 - 8);
  v5[21] = v20;
  v21 = *(v20 + 64) + 15;
  v5[22] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[23] = AssociatedTypeWitness;
  v23 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v24 = *(v18 + 8);
  v25 = sub_2753B69B8();
  v5[25] = v25;
  v26 = *(v25 - 8);
  v5[26] = v26;
  v27 = *(v26 + 64) + 15;
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27530642C, 0, 0);
}

uint64_t sub_27530642C()
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_181();
  v1 = v0[27];
  v2 = v0[24];
  v21 = v0[23];
  v22 = v0[25];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v23 = v0[22];
  v24 = v0[14];
  v25 = v0[16];
  v26 = v0[13];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  sub_2753B6938();
  swift_dynamicCast();
  v11 = *(v5 + 16);
  v12 = OUTLINED_FUNCTION_165();
  v13(v12);
  OUTLINED_FUNCTION_150_0();
  (*(v7 + 16))(v25, v23 + *(v4 + 36), v24);
  sub_2753B6998();
  v0[28] = *(v3 + 32);
  v0[29] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v0[30] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v14, v15);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_131_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_275306578()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[19];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  v8 = OUTLINED_FUNCTION_79_0();
  v0[31] = v3(v8);
  v9 = OUTLINED_FUNCTION_39_0();
  v10(v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275306608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = v10[27];
  v12 = v10[19];
  v13 = v10[16];
  v14 = v10[11];
  v16 = v10[7];
  v15 = v10[8];
  v17 = swift_task_alloc();
  v10[32] = v17;
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v12;
  v17[5] = v15;
  v17[6] = v11;
  v17[7] = v13;
  OUTLINED_FUNCTION_38_0(&unk_2753C1E28);
  v30 = v18;
  v19 = swift_task_alloc();
  v10[33] = v19;
  *v19 = v10;
  v19[1] = sub_2753066F0;
  v20 = v10[31];
  OUTLINED_FUNCTION_111_0();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10);
}

uint64_t sub_2753066F0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 264);
  *v4 = *v1;
  v3[34] = v7;
  v3[35] = v0;

  if (!v0)
  {
    v8 = v3[31];
    v9 = v3[32];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_275306800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_226();
  if (*(*(v16 + 272) + 16))
  {
    v18 = *(v16 + 208);
    v17 = *(v16 + 216);
    v20 = *(v16 + 192);
    v19 = *(v16 + 200);
    v22 = *(v16 + 168);
    v21 = *(v16 + 176);
    v23 = *(v16 + 160);
    v24 = *(v16 + 144);
    v25 = *(v16 + 104);
    v71 = v25;
    v73 = *(v16 + 80);
    (*(*(v16 + 120) + 8))(*(v16 + 128), *(v16 + 112));
    v26 = *(v22 + 8);
    v27 = OUTLINED_FUNCTION_97_0();
    v28(v27);
    v29 = *(v18 + 8);
    v30 = OUTLINED_FUNCTION_96_0();
    v31(v30);

    v32 = *(v16 + 8);
    v33 = *(v16 + 272);
    OUTLINED_FUNCTION_175();

    return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, v71, v73, a13, a14, a15, a16);
  }

  else
  {
    v43 = *(v16 + 216);
    v44 = *(v16 + 200);
    v45 = *(v16 + 128);
    v46 = *(v16 + 112);
    v48 = *(v16 + 72);
    v47 = *(v16 + 80);

    sub_275314678();
    OUTLINED_FUNCTION_113_0();
    sub_2753B62D8();
    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    *(v16 + 288) = 9;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    sub_2753B69A8();
    v49 = *(v16 + 24);
    *(v16 + 32) = *(v16 + 16);
    *(v16 + 40) = v49;
    sub_2753146CC();
    OUTLINED_FUNCTION_115();
    sub_2753B62B8();

    sub_2753B62C8();
    sub_2753B62A8();
    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_198(v50, v51, v52, v53, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    v74 = swift_allocError();
    OUTLINED_FUNCTION_71_0();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_159_0();
    v54 = *(v16 + 104);
    v70 = v54;
    v72 = *(v16 + 80);
    (*(v55 + 8))(v49, *(v16 + 112));
    v56 = *(v44 + 8);
    v57 = OUTLINED_FUNCTION_107_0();
    v58(v57);
    v59 = *(v74 + 8);
    v60 = OUTLINED_FUNCTION_129_0();
    v61(v60);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_175();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, v70, v72, v74, a13, a14, a15, a16);
  }
}

uint64_t sub_275306B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v17 = v14[31];
  v18 = v14[32];

  v19 = v14[35];
  OUTLINED_FUNCTION_159_0();
  v37 = v14[13];
  v38 = v14[10];
  v39 = v20;
  (*(v21 + 8))(v15, v14[14]);
  v22 = *(v16 + 8);
  v23 = OUTLINED_FUNCTION_107_0();
  v24(v23);
  v25 = *(v18 + 8);
  v26 = OUTLINED_FUNCTION_129_0();
  v27(v26);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, a12, a13, a14);
}

uint64_t sub_275306C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a5;
  v7[9] = a7;
  v7[6] = a3;
  v7[7] = a4;
  v7[4] = a1;
  v7[5] = a2;
  return MEMORY[0x2822009F8](sub_275306C30, 0, 0);
}

uint64_t sub_275306C30()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[8];
  v2 = v0[6];
  OUTLINED_FUNCTION_112_0(v0[9]);
  sub_2753B69B8();
  sub_2753B69A8();
  v3 = v0[2];
  v0[10] = v0[3];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_275306CEC;
  v5 = v0[7];
  v6 = v0[5];
  OUTLINED_FUNCTION_75_0();

  return MusicContentStorage.Operations.relatedContent(to:as:)();
}

uint64_t sub_275306CEC()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[12] = v0;

  if (!v0)
  {
    v11 = v5[10];

    v5[13] = v3;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t FacetCollection<>.MusicKitRelatedContentElement.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_184(v1, v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v8, v9, v10, MEMORY[0x277D64F00]);
  v0[8] = v11;
  OUTLINED_FUNCTION_75(v11);
  v13 = *(v12 + 64);
  v0[9] = OUTLINED_FUNCTION_138_0();
  v0[10] = OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_93_0();
  v14 = sub_2753B72A8();
  v0[11] = v14;
  OUTLINED_FUNCTION_17_1(v14);
  v0[12] = v15;
  v17 = *(v16 + 64);
  v0[13] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_87_0();
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_88_0();
  v0[16] = v21;
  v23 = *(v22 + 64);
  v0[17] = OUTLINED_FUNCTION_138_0();
  v24 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_275306F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = v10[14];
  v12 = v10[15];
  OUTLINED_FUNCTION_202();
  v13 = v10[5];
  v14 = v10[2];
  v16 = OUTLINED_FUNCTION_54_0(v15);
  v17(v16);
  v18 = OUTLINED_FUNCTION_59_0();
  if (v18)
  {
    v22 = v10[16];
    v21 = v10[17];
    OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_151_0();
    v23 = *(v22 + 32);
    v24 = OUTLINED_FUNCTION_96_0();
    v25(v24);
    v26 = swift_task_alloc();
    v10[18] = v26;
    *v26 = v10;
    OUTLINED_FUNCTION_158_0(v26);
    OUTLINED_FUNCTION_111_0();

    return sub_275306124(v27, v28, v29, v30, v31);
  }

  else
  {
    v35 = v10[12];
    v34 = v10[13];
    v36 = v10[11];
    v38 = v10[8];
    v37 = v10[9];
    v39 = v10[5];
    v40 = v10[2];
    v41 = OUTLINED_FUNCTION_128_0(v18, v19, v20, v10[10]);
    v42(v41);
    sub_275314678();
    OUTLINED_FUNCTION_124_0();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_83_0();
    sub_2753B62A8();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_193(v43, v44, v45, v46, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_52_0();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_229();

    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_111_0();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
  }
}

uint64_t sub_275307168()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275307274()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = OUTLINED_FUNCTION_98_0(v0[16]);
  v7(v6);

  v8 = v0[1];
  v9 = v0[20];

  return v8(v9);
}

uint64_t sub_275307320()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_2753073AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitRelatedContentElement.availability<A>(of:)();
}

uint64_t sub_275307474(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_275317974;

  return FacetCollection<>.MusicKitRelatedContentElement.value<A, B>(from:for:)();
}

uint64_t FacetCollection<>.MusicKitTransitionInfoElement.availability<A>(of:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_117_0();
  v0[50] = v2;
  v0[51] = v3;
  v0[48] = v4;
  v0[49] = v5;
  v0[47] = v6;
  v7 = sub_2753B6A38();
  v0[52] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v0[53] = v8;
  v10 = *(v9 + 64);
  v0[54] = OUTLINED_FUNCTION_138_0();
  v0[55] = *(v1 + 16);
  v11 = *(v1 + 24);
  v0[56] = v11;
  OUTLINED_FUNCTION_95_0();
  v0[57] = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v12 = sub_2753B6C18();
  v0[58] = v12;
  OUTLINED_FUNCTION_17_1(v12);
  v0[59] = v13;
  v15 = *(v14 + 64);
  v0[60] = OUTLINED_FUNCTION_176();
  v0[61] = swift_task_alloc();
  OUTLINED_FUNCTION_2_1();
  v0[62] = v16;
  v18 = *(v17 + 64);
  v0[63] = OUTLINED_FUNCTION_138_0();
  v19 = type metadata accessor for SongTransitionInfo();
  OUTLINED_FUNCTION_75(v19);
  v21 = *(v20 + 64);
  v0[64] = OUTLINED_FUNCTION_138_0();
  v22 = sub_2753B6878();
  v0[65] = v22;
  OUTLINED_FUNCTION_17_1(v22);
  v0[66] = v23;
  v25 = *(v24 + 64);
  v0[67] = OUTLINED_FUNCTION_138_0();
  sub_2753169C4(0, &qword_2809C1480, MEMORY[0x277D85B28], MEMORY[0x277D64FF8], MEMORY[0x277D64FF0]);
  v0[68] = v26;
  OUTLINED_FUNCTION_17_1(v26);
  v0[69] = v27;
  v29 = *(v28 + 64);
  v0[70] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_2_1();
  v0[71] = v30;
  v32 = *(v31 + 64);
  v0[72] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[73] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_75(AssociatedTypeWitness);
  v35 = *(v34 + 64);
  v0[74] = OUTLINED_FUNCTION_138_0();
  v36 = *(v11 + 8);
  OUTLINED_FUNCTION_82_0();
  v37 = sub_2753B69B8();
  v0[75] = v37;
  OUTLINED_FUNCTION_17_1(v37);
  v0[76] = v38;
  v40 = *(v39 + 64) + 15;
  v0[77] = swift_task_alloc();
  v0[78] = swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_2753078A0()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v1 = v0[78];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[56];
  v7 = v0[50];
  v8 = v0[51];
  v9 = v0[48];
  sub_2753B6938();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_70_0();
  sub_2753B6998();
  v0[79] = *(v6 + 32);
  v0[80] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v0[81] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v10, v11);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275307988()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[72];
  v5 = v0[71];
  v7 = v0[55];
  v6 = v0[56];

  v8 = OUTLINED_FUNCTION_79_0();
  v0[82] = v3(v8);
  v9 = OUTLINED_FUNCTION_39_0();
  v10(v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275307A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = v9[78];
  v12 = v9[55];
  v11 = v9[56];
  v14 = v9[50];
  v13 = v9[51];
  v15 = swift_task_alloc();
  v9[83] = v15;
  OUTLINED_FUNCTION_56_0(v15);
  OUTLINED_FUNCTION_38_0(&unk_2753C1E60);
  v29 = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v9[84] = v17;
  *v17 = v18;
  v17[1] = sub_275307AF0;
  v19 = v9[82];
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_241();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29);
}

uint64_t sub_275307AF0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 672);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 680) = v0;

  if (!v0)
  {
    v9 = *(v3 + 656);
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_275307BF0()
{
  v105 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 600);
  v3 = *(v0 + 448);
  v4 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v4;
  v5 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v5;
  v6 = FacetCollection<>.extractAdamIDForLogging()();
  *(v0 + 688) = v6;
  *(v0 + 696) = v7;
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 112);
  *(v0 + 200) = *(v0 + 96);
  *(v0 + 216) = v10;
  *(v0 + 232) = *(v0 + 128);
  if (v8 >> 60 == 15)
  {
    v11 = *(v0 + 624);
    v12 = *(v0 + 600);
    v13 = *(v0 + 504);
    v15 = *(v0 + 440);
    v14 = *(v0 + 448);
    v16 = *(v0 + 400);
    v17 = *(v0 + 384);
    v18 = *(*(v0 + 496) + 16);
    v19 = OUTLINED_FUNCTION_211();
    v20(v19);
    OUTLINED_FUNCTION_101_0();
    FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(v16, v21);
    sub_2753B69A8();
    v22 = *(v0 + 288);
    v23 = *(v0 + 296);
    OUTLINED_FUNCTION_136_0();
    type metadata accessor for MediaAPIResourceRequest.Option();
    sub_2753B76C8();
    swift_allocObject();
    sub_2753B6FF8();
    *v24 = 3;
    *(v0 + 360) = sub_2752E6688();
    *(v0 + 304) = v22;
    *(v0 + 312) = v23;
    sub_2753B70B8();
    sub_275314624();
    sub_2753B6CD8();
    sub_2753B6D18();
    *(v0 + 368) = *(v0 + 352);

    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    *(v0 + 704) = v25;
    *v25 = v26;
    v25[1] = sub_27530821C;
    v27 = *(v0 + 488);
    v28 = *(v0 + 456);
    v29 = *(v0 + 400);
    v30 = *(v0 + 408);
    v31 = *(v0 + 384);

    return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)();
  }

  else
  {
    v33 = v7;
    v91 = v6;
    v95 = v9;
    v98 = v8;
    OUTLINED_FUNCTION_180();
    v34 = *(v0 + 608);
    v35 = *(v0 + 600);
    v36 = *(v0 + 560);
    v37 = *(v0 + 552);
    v38 = *(v0 + 544);
    v39 = *(v0 + 536);
    MEMORY[0x277C75B00]();
    OUTLINED_FUNCTION_76_0();
    sub_2753B6838();
    (*(v37 + 8))(v36, v38);
    v40 = *(v34 + 16);
    v41 = OUTLINED_FUNCTION_79_0();
    v42(v41);

    v43 = sub_2753B6858();
    v44 = sub_2753B7248();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 616);
    v47 = *(v0 + 608);
    v48 = *(v0 + 600);
    v49 = *(v0 + 536);
    v50 = *(v0 + 528);
    v51 = *(v0 + 520);
    if (v45)
    {
      v90 = v44;
      v52 = swift_slowAlloc();
      v101[0] = swift_slowAlloc();
      *v52 = 136446466;
      v53 = sub_275314A34(v91, v33, v101);
      v92 = v51;
      v54 = v53;

      *(v52 + 4) = v54;
      *(v52 + 12) = 2082;
      sub_2753B69A8();
      v55 = *(v47 + 8);
      v56 = OUTLINED_FUNCTION_69_0();
      v57(v56);
      v58 = *(v0 + 336);
      v59 = *(v0 + 344);
      sub_2753B6648();

      v60 = OUTLINED_FUNCTION_101_0();
      v63 = sub_275314A34(v60, v61, v62);

      *(v52 + 14) = v63;
      _os_log_impl(&dword_2752E3000, v43, v90, "[TransitionInfo] Found transition info in ContentSystem cache for adamID: %{public}s, contentID: %{public}s", v52, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_170();

      (*(v50 + 8))(v49, v92);
    }

    else
    {
      v64 = *(v47 + 8);
      v65 = OUTLINED_FUNCTION_69_0();
      v66(v65);

      (*(v50 + 8))(v49, v51);
    }

    v67 = *(v0 + 680);
    v68 = *(v0 + 512);
    v101[0] = v95;
    v101[1] = v98;
    v69 = *(v0 + 216);
    v102 = *(v0 + 200);
    v103 = v69;
    v104 = *(v0 + 232);
    sub_275308E04(v68);
    if (v67)
    {
      v70 = *(v0 + 664);
      sub_275316048(v0 + 80, &qword_2809C1488, &type metadata for TransitionInfoStorage);

      v71 = *(v0 + 624);
      v72 = *(v0 + 616);
      OUTLINED_FUNCTION_15_1();
      v93 = *(v0 + 488);
      v96 = *(v0 + 480);
      v99 = *(v0 + 432);
      v74 = OUTLINED_FUNCTION_98_0(v73);
      v75(v74);

      OUTLINED_FUNCTION_19_0();
    }

    else
    {
      v77 = *(v0 + 512);
      v78 = *(v0 + 392);
      v79 = *(v0 + 376);
      sub_275316048(v0 + 80, &qword_2809C1488, &type metadata for TransitionInfoStorage);
      OUTLINED_FUNCTION_31_0();
      v80 = OUTLINED_FUNCTION_69_0();
      sub_2753168D8(v80, v81, v82);
      v83 = *MEMORY[0x277D65210];
      OUTLINED_FUNCTION_30_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      v84 = sub_2753B6C18();
      OUTLINED_FUNCTION_8_2(v84);
      (*(v85 + 104))(v79, v83);
      v86 = *(v0 + 664);
      OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_15_1();
      v94 = *(v0 + 488);
      v97 = *(v0 + 480);
      v100 = *(v0 + 432);
      v88 = OUTLINED_FUNCTION_105_0(v87);
      v89(v88);

      OUTLINED_FUNCTION_35_0();
    }

    return v76();
  }
}

uint64_t sub_27530821C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 704);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[89] = v0;

  if (v0)
  {
    v9 = v3[87];

    v10 = v3[46];

    v11 = v3[44];
  }

  else
  {
    v12 = v3[46];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_275308334()
{
  v140 = v0;
  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 464);
  v6 = *(v0 + 472);
  v7 = OUTLINED_FUNCTION_48_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_92_0();
  v11 = v10(v9);
  if (v11 == *MEMORY[0x277D65210])
  {
    v12 = *(v0 + 480);
    v13 = *(v0 + 464);
    v14 = OUTLINED_FUNCTION_126_0(*(v0 + 472));
    v15(v14);
    v17 = *v12;
    v16 = *(v12 + 8);
    v18 = *(v12 + 16);
    sub_27535A340(*(v12 + 24), &v132);
    v19 = v138 | (v139 << 16);
    if ((~v19 & 0xFE00FE) == 0)
    {
      v20 = *(v0 + 696);
      v21 = *(v0 + 488);
      OUTLINED_FUNCTION_233();

      v22 = *(v2 + 8);
      v23 = OUTLINED_FUNCTION_97_0();
      v24(v23);
      OUTLINED_FUNCTION_47_0();
      *v1 = v25;
      v1[1] = v26;
      v27 = *MEMORY[0x277D65208];
LABEL_10:
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      v65 = sub_2753B6C18();
      OUTLINED_FUNCTION_8_2(v65);
      (*(v66 + 104))(v1, v27);
      goto LABEL_11;
    }

    v47 = v133;
    v49 = v134;
    v48 = v135;
    v50 = v136;
    v51 = v137;
    *(v0 + 144) = v132;
    *(v0 + 152) = v47;
    *(v0 + 160) = v49;
    *(v0 + 168) = v48;
    *(v0 + 176) = v50;
    *(v0 + 184) = v51;
    *(v0 + 194) = BYTE2(v19);
    *(v0 + 192) = v19;
    v52 = 1 << ((v19 >> 21) & 7);
    if ((v52 & 0x1A) != 0)
    {
      v132 = 0;
      v133 = 0xE000000000000000;
      sub_2753B7398();
      v53 = v133;
      *(v0 + 320) = v132;
      *(v0 + 328) = v53;
      OUTLINED_FUNCTION_122_0();
      MEMORY[0x277C76100](v54 + 10, v55 | 0x8000000000000000);
      *(v0 + 195) = 0x4030200u >> (8 * (((v19 >> 21) & 7) - 1));
      sub_2753B7468();
      MEMORY[0x277C76100](93, 0xE100000000000000);
      v56 = *(v0 + 320);
      v57 = *(v0 + 328);
      sub_2753B74A8();
      OUTLINED_FUNCTION_224();
      return;
    }

    if ((v52 & 0x21) != 0)
    {
      v122 = *(v0 + 712);
      v124 = v51;
      v119 = *(v0 + 688);
      v120 = *(v0 + 696);
      v73 = *(v0 + 448);
      v117 = *(v0 + 440);
      v118 = *(v0 + 624);
      v74 = *(v0 + 408);
      v115 = *(v0 + 400);
      v116 = *(v0 + 376);
      v75 = *(v0 + 352);

      sub_275309690(v118, v17, v16, v0 + 144, v119, v120, v116, v117, v115, v73);
      v76 = *(v0 + 696);
      if (v122)
      {
        v77 = *(v0 + 664);
        (*(*(v0 + 472) + 8))(*(v0 + 488), *(v0 + 464));

        v78 = OUTLINED_FUNCTION_133_0();
        sub_2752FBB58(v78, v79, v80, v81, v82, v124, v19);

        v83 = *(v0 + 624);
        v84 = *(v0 + 616);
        v85 = *(v0 + 600);
        v86 = *(v0 + 592);
        v87 = *(v0 + 576);
        v88 = *(v0 + 560);
        v89 = *(v0 + 536);
        v91 = *(v0 + 504);
        v90 = *(v0 + 512);
        v92 = *(v0 + 488);
        v128 = *(v0 + 480);
        v131 = *(v0 + 432);
        v93 = OUTLINED_FUNCTION_98_0(*(v0 + 608));
        v94(v93);

        OUTLINED_FUNCTION_19_0();
LABEL_12:
        OUTLINED_FUNCTION_224();

        __asm { BRAA            X1, X16 }
      }

      (*(*(v0 + 472) + 8))(*(v0 + 488), *(v0 + 464));

      v110 = OUTLINED_FUNCTION_133_0();
      sub_2752FBB58(v110, v111, v112, v113, v114, v124, v19);
    }

    else
    {
      v97 = *(v0 + 696);
      v98 = *(v0 + 472);
      v121 = *(v0 + 464);
      v123 = *(v0 + 488);
      v125 = *(v0 + 392);
      v99 = *(v0 + 376);
      v100 = *(v0 + 352);

      v101 = OUTLINED_FUNCTION_133_0();
      sub_2752FBB58(v101, v102, v103, v104, v105, v51, v19);
      (*(v98 + 8))(v123, v121);
      OUTLINED_FUNCTION_142_0();
      *v99 = v106;
      v99[1] = 0x80000002753B8900;
      v107 = *MEMORY[0x277D65208];
      OUTLINED_FUNCTION_30_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      v108 = sub_2753B6C18();
      OUTLINED_FUNCTION_8_2(v108);
      (*(v109 + 104))(v99, v107);
    }

LABEL_11:
    v67 = *(v0 + 664);
    OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_15_1();
    v126 = *(v0 + 488);
    v127 = *(v0 + 480);
    v130 = *(v0 + 432);
    v69 = OUTLINED_FUNCTION_105_0(v68);
    v70(v69);

    OUTLINED_FUNCTION_35_0();
    goto LABEL_12;
  }

  v27 = v11;
  if (v11 == *MEMORY[0x277D65218])
  {
    v28 = *(v0 + 696);
    v30 = *(v0 + 480);
    v29 = *(v0 + 488);
    v31 = *(v0 + 464);
    v32 = *(v0 + 472);
    v33 = *(v0 + 424);
    v34 = *(v0 + 432);
    v35 = *(v0 + 416);
    v129 = *(v0 + 392);
    v36 = *(v0 + 376);

    OUTLINED_FUNCTION_205();
    v37(v29, v31);
    v38 = *(v0 + 352);

    v39 = *(v32 + 96);
    v32 += 96;
    v40 = OUTLINED_FUNCTION_107_0();
    v41(v40);
    sub_275314944();
    v43 = OUTLINED_FUNCTION_74_0(v42);
    (v32)(v43);
    sub_275315C8C((v30 + v31), v0 + 248);
    v44 = OUTLINED_FUNCTION_127_0();
    (v32)(v44);
    sub_275315C8C((v0 + 248), v36 + v29);
    OUTLINED_FUNCTION_30_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v45 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v45);
    (*(v46 + 104))(v36, v27);
    goto LABEL_11;
  }

  if (v11 == *MEMORY[0x277D65208])
  {
    v58 = *(v0 + 696);
    v60 = *(v0 + 480);
    v59 = *(v0 + 488);
    OUTLINED_FUNCTION_233();

    v61 = *(v2 + 8);
    v62 = OUTLINED_FUNCTION_97_0();
    v61(v62);
    v63 = OUTLINED_FUNCTION_101_0();
    v61(v63);
    OUTLINED_FUNCTION_142_0();
    *v1 = v64;
    v1[1] = 0x80000002753B86B0;
    goto LABEL_10;
  }

  v95 = *(v0 + 464);
  OUTLINED_FUNCTION_224();

  sub_2753B7708();
}

uint64_t sub_275308A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = v14[83];
  v16 = v14[82];

  v17 = v14[85];
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_15_1();
  v18 = v14[61];
  v32 = v14[60];
  v33 = v14[54];
  v34 = v19;
  v21 = OUTLINED_FUNCTION_105_0(v20);
  v22(v21);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, a12, a13, a14);
}

uint64_t sub_275308B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = v14[83];

  v16 = v14[89];
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_15_1();
  v17 = v14[61];
  v31 = v14[60];
  v32 = v14[54];
  v33 = v18;
  v20 = OUTLINED_FUNCTION_105_0(v19);
  v21(v20);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, a12, a13, a14);
}

uint64_t sub_275308C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v6[8] = a6;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = a1;
  return MEMORY[0x2822009F8](sub_275308C48, 0, 0);
}

uint64_t sub_275308C48()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_89_0();
  sub_2753B69A8();
  OUTLINED_FUNCTION_178();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 80) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_91_0(v1);

  return MusicContentStorage.Operations.mediaAPITransitionInfo(for:)();
}

uint64_t sub_275308CE8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_58_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    OUTLINED_FUNCTION_19_0();

    return v13();
  }
}

uint64_t sub_275308E04@<X0>(double *a1@<X8>)
{
  v89 = a1;
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v2, v3, v4, MEMORY[0x277D64F00]);
  v101 = v5;
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  v100 = &v85 - v9;
  v95 = sub_2753B67C8();
  OUTLINED_FUNCTION_2_1();
  v91 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v96 = v15 - v14;
  v99 = sub_2753B6808();
  OUTLINED_FUNCTION_2_1();
  v94 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_6_0();
  sub_2753167D4(0, v23, v24, MEMORY[0x277D83D88]);
  v26 = OUTLINED_FUNCTION_75(v25);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v85 - v32;
  v34 = *v1;
  v35 = v1[1];
  v36 = v1[3];
  v97 = v1[2];
  v98 = v36;
  v37 = v1[4];
  v92 = v1[5];
  v93 = v37;
  v38 = v1[7];
  v90 = v1[6];
  v39 = sub_2753B5FF8();
  OUTLINED_FUNCTION_199(v39);
  swift_allocObject();
  sub_2753B5FE8();
  sub_275316E50();
  v40 = v102;
  sub_2753B5FD8();
  if (v40)
  {
  }

  v86 = v31;
  v87 = 0;
  v85 = v38;
  v88 = v22;
  v102 = v33;

  memcpy(v106, v107, 0x2F9uLL);
  if (v106[35])
  {
    sub_275316EA4(v106);
    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    v105[0] = 14;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    v42 = OUTLINED_FUNCTION_221();
    sub_275316CAC(v42, v43, v44, v45, v46);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_107_0();
    sub_2753B62E8();
    return swift_willThrow();
  }

  v47 = v106[34];
  v48 = sub_2753B6818();
  OUTLINED_FUNCTION_140_0();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
  memcpy(v105, &v106[76], sizeof(v105));
  if (sub_275316EF8(v105) == 1)
  {
    sub_275316EA4(v106);
    v52 = v87;
  }

  else
  {
    v101 = v47;
    v60 = sub_2753B6028();
    OUTLINED_FUNCTION_199(v60);
    swift_allocObject();
    memcpy(v104, &v106[76], sizeof(v104));
    sub_275316FE8(v104, v103);
    sub_2753B6018();
    memcpy(v103, v105, sizeof(v103));
    sub_275317044();
    v61 = v87;
    v62 = sub_2753B6008();
    v52 = v61;
    if (v61)
    {
      OUTLINED_FUNCTION_6_0();
      sub_275316AC4(v102, v64, v65);

      sub_275316EA4(v106);
      return sub_275316048(&v106[76], &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    }

    v69 = v62;
    v70 = v63;

    sub_275316048(&v106[76], &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    v71 = *(v39 + 48);
    v72 = *(v39 + 52);
    swift_allocObject();
    sub_2753B5FE8();
    sub_275315BB8(&qword_2809C12F8, MEMORY[0x277D2AC90]);
    v73 = v86;
    sub_2753B5FD8();
    OUTLINED_FUNCTION_6_0();
    sub_275316AC4(v102, v77, v78);

    sub_2752F2350(v69, v70);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v48);
    sub_275316C18(v73, v102);
    sub_275316EA4(v106);
    v47 = v101;
  }

  v53 = LOBYTE(v106[95]);
  v54 = LOBYTE(v106[95]) == 2;
  v55 = v39;
  v56 = *(v39 + 48);
  v57 = *(v39 + 52);
  swift_allocObject();
  sub_2753B5FE8();
  sub_275315BB8(&qword_2809C12E0, MEMORY[0x277D2AAB8]);
  sub_2753B5FD8();
  if (v52)
  {
    OUTLINED_FUNCTION_6_0();
    sub_275316AC4(v102, v58, v59);
  }

  LODWORD(v98) = v53;
  LODWORD(v100) = v54;

  v66 = *(v39 + 48);
  v67 = *(v39 + 52);
  swift_allocObject();
  sub_2753B5FE8();
  sub_275315BB8(&qword_2809C12D8, MEMORY[0x277D2A988]);
  v68 = v95;
  sub_2753B5FD8();
  v101 = v47;

  v74 = *(v55 + 48);
  v75 = *(v55 + 52);
  swift_allocObject();
  sub_2753B5FE8();
  sub_2753167D4(0, &qword_2809C12B0, MEMORY[0x277CD8320], MEMORY[0x277D83940]);
  sub_275316F10();
  sub_2753B5FD8();
  v76 = v99;
  v79 = v100 | v98;

  v80 = v68;
  v81 = v104[0];
  v82 = v101 / 1000.0;
  v83 = type metadata accessor for SongTransitionInfo();
  v84 = v89;
  (*(v91 + 32))(v89 + v83[5], v96, v80);
  (*(v94 + 32))(v84 + v83[6], v88, v76);
  result = sub_275316C18(v102, v84 + v83[8]);
  *v84 = v82;
  *(v84 + v83[7]) = v81;
  *(v84 + v83[9]) = v79 & 1;
  return result;
}

uint64_t sub_275309690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, unint64_t a6@<X7>, void *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v83 = a6;
  v77 = a5;
  v88 = a4;
  v89 = a2;
  v90 = a3;
  v12 = *(*(a8 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v87 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a10 + 8);
  v15 = sub_2753B69B8();
  v82 = *(v15 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v15);
  v81 = &v72 - v17;
  v18 = sub_2753B6878();
  v84 = *(v18 - 8);
  v85 = v18;
  v19 = *(v84 + 64);
  MEMORY[0x28223BE20](v18);
  v91 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753169C4(0, &qword_2809C1480, MEMORY[0x277D85B28], MEMORY[0x277D64FF8], MEMORY[0x277D64FF0]);
  v79 = *(v21 - 8);
  v80 = v21;
  v22 = *(v79 + 64);
  MEMORY[0x28223BE20](v21);
  v78 = &v72 - v23;
  v24 = sub_2753B6AC8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v15;
  sub_2753B6978();
  v101[0] = v93[0];
  *(v101 + 13) = *(v93 + 13);
  sub_275314888(v101);
  v29 = *MEMORY[0x277D65198];
  v30 = sub_2753B6AB8();
  (*(*(v30 - 8) + 104))(v28, v29, v30);
  (*(v25 + 104))(v28, *MEMORY[0x277D651A0], v24);
  if (sub_2753B6AA8())
  {
    v75 = v28;
    v76 = v24;
    v74 = a7;
    v31 = v92;
    sub_2753104C4(a10, v99);
    if (v31)
    {
      LOBYTE(v93[0]) = 4;
      sub_2753148DC();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_2753BE420;
      *(v32 + 32) = v31;
      sub_275316CAC(0, &qword_2809C1440, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
      sub_275314720();
      swift_allocError();
      v33 = v31;
      v34 = sub_275314678();
      MEMORY[0x277C755D0](v93, 0xD000000000000062, 0x80000002753B8DF0, v32, &type metadata for MusicContentError, v34);
      swift_willThrow();

      return (*(v25 + 8))(v75, v76);
    }

    else
    {
      v92 = 0;
      v100[0] = v99[0];
      v100[1] = v99[1];
      v100[2] = v99[2];
      v38 = v88;
      v39 = *(v88 + 16);
      v96 = *v88;
      v97 = v39;
      v98[0] = *(v88 + 32);
      *(v98 + 15) = *(v88 + 47);
      v40 = v90;

      sub_275317098(v38, v93);
      v41 = v89;
      v89 = a8;
      v90 = a10;
      result = sub_275319620(v41, v40, &v96, v93);
      v88 = *&v93[0];
      v96 = v93[1];
      v97 = v94;
      v98[0] = *v95;
      *(v98 + 15) = *&v95[15];
      v73 = *(&v93[0] + 1);
      if (*(&v93[0] + 1))
      {
        v42 = v78;
        MEMORY[0x277C75B00](result);
        v43 = v80;
        sub_2753B6838();
        (*(v79 + 8))(v42, v43);
        v44 = v81;
        v45 = v82;
        v46 = *(v82 + 16);
        v80 = a1;
        v47 = v86;
        v46(v81, a1, v86);
        v48 = v83;

        v49 = sub_2753B6858();
        v50 = sub_2753B7248();

        v51 = os_log_type_enabled(v49, v50);
        v72 = v25;
        if (v51)
        {
          v52 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v102 = v79;
          *v52 = 136446466;
          *(v52 + 4) = sub_275314A34(v77, v48, &v102);
          *(v52 + 12) = 2082;
          v53 = v50;
          sub_2753B69A8();
          (*(v45 + 8))(v44, v47);
          v54 = sub_2753B6648();
          v56 = v55;

          v57 = sub_275314A34(v54, v56, &v102);

          *(v52 + 14) = v57;
          _os_log_impl(&dword_2752E3000, v49, v53, "[TransitionInfo] Would need to make a MediaAPI request for adamID: %{public}s, contentID: %{public}s", v52, 0x16u);
          v58 = v79;
          swift_arrayDestroy();
          MEMORY[0x277C77190](v58, -1, -1);
          MEMORY[0x277C77190](v52, -1, -1);
        }

        else
        {
          (*(v45 + 8))(v44, v47);
        }

        (*(v84 + 8))(v91, v85);
        v59 = v74;
        sub_275314944();
        v61 = (v59 + *(v60 + 48));
        v62 = *MEMORY[0x277D650C8];
        v63 = sub_2753B6898();
        (*(*(v63 - 8) + 104))(v59, v62, v63);
        v64 = *MEMORY[0x277D65140];
        v65 = sub_2753B6A38();
        (*(*(v65 - 8) + 104))(v59, v64, v65);
        v66 = v89;
        *&v93[0] = v88;
        *(&v93[0] + 1) = v73;
        v93[1] = v96;
        v94 = v97;
        *v95 = v98[0];
        *&v95[15] = *(v98 + 15);
        type metadata accessor for MediaAPIResourceRequest.Option();
        sub_2753B76C8();
        swift_allocObject();
        sub_2753B6FF8();
        *v67 = 512;
        *(v67 + 2) = 3;
        sub_2752E6688();
        v68 = v87;
        sub_2753B6998();
        v61[3] = type metadata accessor for MediaAPIResourceRequest();
        v61[4] = swift_getWitnessTable();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
        sub_275319DD0(v93, v100, v68, v66, boxed_opaque_existential_1);
        (*(v72 + 8))(v75, v76);
        v70 = *MEMORY[0x277D65218];
        type metadata accessor for FacetCollection<>.MusicKitTransitionInfoElement();
        swift_getWitnessTable();
        v71 = sub_2753B6C18();
        return (*(*(v71 - 8) + 104))(v59, v70, v71);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    (*(v25 + 8))(v28, v24);
    *a7 = 0x6F7774656E206F4ELL;
    a7[1] = 0xEA00000000006B72;
    v36 = *MEMORY[0x277D65208];
    type metadata accessor for FacetCollection<>.MusicKitTransitionInfoElement();
    swift_getWitnessTable();
    v37 = sub_2753B6C18();
    return (*(*(v37 - 8) + 104))(a7, v36, v37);
  }

  return result;
}

uint64_t sub_27530A0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a1;
  v6[33] = a3;
  sub_275316CAC(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v6[36] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[37] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SongTransitionInfo() - 8) + 64) + 15;
  v6[38] = swift_task_alloc();
  v11 = *(a4 + 16);
  v6[39] = v11;
  v12 = *(v11 - 8);
  v6[40] = v12;
  v13 = *(v12 + 64) + 15;
  v6[41] = swift_task_alloc();
  v14 = sub_2753B6878();
  v6[42] = v14;
  v15 = *(v14 - 8);
  v6[43] = v15;
  v16 = *(v15 + 64) + 15;
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  sub_2753169C4(0, &qword_2809C1480, MEMORY[0x277D85B28], MEMORY[0x277D64FF8], MEMORY[0x277D64FF0]);
  v6[46] = v17;
  v18 = *(v17 - 8);
  v6[47] = v18;
  v19 = *(v18 + 64) + 15;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[50] = AssociatedTypeWitness;
  v21 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v6[51] = swift_task_alloc();
  v22 = *(a4 + 24);
  v6[52] = v22;
  v23 = *(v22 + 8);
  v24 = sub_2753B69B8();
  v6[53] = v24;
  v25 = *(v24 - 8);
  v6[54] = v25;
  v26 = *(v25 + 64) + 15;
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27530A400, 0, 0);
}

uint64_t sub_27530A400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_226();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[57];
  v29 = v24[53];
  v28 = v24[54];
  v30 = v24[51];
  v74 = v24[52];
  v32 = v24[49];
  v31 = v24[50];
  v33 = v24[46];
  v34 = v24[47];
  v76 = v24[45];
  v78 = v24[56];
  v35 = v24[34];
  v36 = v24[35];
  v37 = v24[33];
  sub_2753B6938();
  swift_dynamicCast();
  v38 = FacetCollection<>.extractAdamIDForLogging()();
  v40 = v39;
  v75 = v38;
  v24[58] = v38;
  v24[59] = v39;
  MEMORY[0x277C75B00]();
  OUTLINED_FUNCTION_76_0();
  sub_2753B6838();
  v41 = *(v34 + 8);
  v24[60] = v41;
  v24[61] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v32, v33);
  v42 = *(v28 + 16);
  v24[62] = v42;
  v24[63] = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42(v78, v27, v29);

  v43 = sub_2753B6858();
  v44 = sub_2753B7248();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = v24[56];
    v46 = v24[53];
    v47 = v24[54];
    v73 = v24[43];
    v77 = v24[42];
    v79 = v24[45];
    v48 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    *v48 = 136446466;
    *(v48 + 4) = sub_275314A34(v75, v40, &a13);
    *(v48 + 12) = 2082;
    sub_2753B69A8();
    v49 = *(v47 + 8);
    v50 = OUTLINED_FUNCTION_69_0();
    v49(v50);
    v51 = v24[30];
    v52 = v24[31];
    sub_2753B6648();

    v53 = OUTLINED_FUNCTION_101_0();
    v56 = sub_275314A34(v53, v54, v55);

    *(v48 + 14) = v56;
    _os_log_impl(&dword_2752E3000, v43, v44, "[TransitionInfo] Executed MediaAPI network request for transition info - adamID: %{public}s, contentID: %{public}s", v48, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_170();
    OUTLINED_FUNCTION_170();

    v57 = *(v73 + 8);
    v57(v79, v77);
  }

  else
  {
    v58 = v24[45];
    v59 = v24[42];
    v60 = v24[43];
    v49 = *(v24[54] + 8);
    (v49)(v24[56], v24[53]);

    v57 = *(v60 + 8);
    v61 = OUTLINED_FUNCTION_69_0();
    (v57)(v61);
  }

  v24[65] = v49;
  v24[64] = v57;
  v62 = v24[57];
  v64 = v24[52];
  v63 = v24[53];
  v65 = v24[41];
  sub_2753B6998();
  v24[66] = *(v64 + 32);
  v24[67] = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v24[68] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v66, v67);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2822009F8](v68, v69, v70);
}

uint64_t sub_27530A734()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[52];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];

  v8 = OUTLINED_FUNCTION_79_0();
  v0[69] = v3(v8);
  v9 = OUTLINED_FUNCTION_39_0();
  v10(v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_27530A7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = v9[57];
  v11 = v9[52];
  v12 = v9[39];
  v14 = v9[34];
  v13 = v9[35];
  v15 = swift_task_alloc();
  v9[70] = v15;
  OUTLINED_FUNCTION_56_0(v15);
  OUTLINED_FUNCTION_38_0(&unk_2753C1E60);
  v29 = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v9[71] = v17;
  *v17 = v18;
  v17[1] = sub_27530A8A0;
  v19 = v9[69];
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_241();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29);
}

uint64_t sub_27530A8A0()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[71];
  *v4 = *v1;
  v3[72] = v0;

  v6 = v2[69];
  if (v0)
  {
    v7 = v3[70];
    v8 = v3[59];
  }

  else
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_27530A9E0()
{
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 112) = v2;
  *(v0 + 128) = v3;
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 144) = v1;
  *(v0 + 160) = v2;
  *(v0 + 176) = v3;
  if (v4 >> 60 == 15)
  {
    v6 = *(v0 + 560);
    v7 = *(v0 + 472);
    v8 = *(v0 + 456);
    v9 = *(v0 + 424);
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);

    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v0 + 584) = 10;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    sub_2753B69A8();
    *(v0 + 208) = *(v0 + 192);
    *(v0 + 216) = *(v0 + 200);
    sub_2753146CC();
    sub_2753B62B8();

    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    v12 = OUTLINED_FUNCTION_222();
    sub_275316CAC(v12, v13, v14, v15, v16);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_101_0();
    sub_2753B62E8();
    swift_willThrow();
  }

  else
  {
    v79 = v5;
    v82 = v4;
    v72 = *(v0 + 496);
    v75 = *(v0 + 504);
    v18 = *(v0 + 480);
    v17 = *(v0 + 488);
    v19 = *(v0 + 472);
    v20 = *(v0 + 456);
    v21 = *(v0 + 440);
    v22 = *(v0 + 424);
    v23 = *(v0 + 384);
    v24 = *(v0 + 368);
    v25 = *(v0 + 352);
    MEMORY[0x277C75B00]();
    OUTLINED_FUNCTION_76_0();
    sub_2753B6838();
    v18(v23, v24);
    v26 = OUTLINED_FUNCTION_110_0();
    v72(v26);

    v27 = sub_2753B6858();
    v28 = sub_2753B7248();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 520);
    v31 = *(v0 + 512);
    v32 = *(v0 + 472);
    if (v29)
    {
      v33 = *(v0 + 464);
      v34 = *(v0 + 440);
      v66 = *(v0 + 432);
      v35 = *(v0 + 424);
      v70 = *(v0 + 344);
      v73 = *(v0 + 336);
      v76 = *(v0 + 352);
      v68 = *(v0 + 512);
      v36 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v36 = 136446466;
      v37 = sub_275314A34(v33, v32, v84);

      *(v36 + 4) = v37;
      *(v36 + 12) = 2082;
      sub_2753B69A8();
      v30(v34, v35);
      v38 = *(v0 + 224);
      v39 = *(v0 + 232);
      v40 = sub_2753B6648();
      v42 = v41;

      v43 = sub_275314A34(v40, v42, v84);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_2752E3000, v27, v28, "[TransitionInfo] Successfully retrieved transition info from MediaAPI for adamID: %{public}s, contentID: %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_170();

      v68(v76, v73);
    }

    else
    {
      v45 = *(v0 + 344);
      v44 = *(v0 + 352);
      v46 = *(v0 + 336);
      v47 = *(v0 + 432) + 8;
      v30(*(v0 + 440), *(v0 + 424));

      v48 = OUTLINED_FUNCTION_90_0();
      v31(v48);
    }

    v49 = *(v0 + 576);
    v50 = *(v0 + 304);
    v84[0] = v79;
    v84[1] = v82;
    v51 = *(v0 + 160);
    v85 = *(v0 + 144);
    v86 = v51;
    v87 = *(v0 + 176);
    sub_275308E04(v50);
    v6 = *(v0 + 560);
    if (!v49)
    {
      v55 = *(v0 + 520);
      v57 = *(v0 + 448);
      v56 = *(v0 + 456);
      v58 = *(v0 + 432);
      v59 = *(v0 + 440);
      v60 = *(v0 + 424);
      v67 = *(v0 + 408);
      v69 = *(v0 + 392);
      v71 = *(v0 + 384);
      v74 = *(v0 + 360);
      v78 = *(v0 + 352);
      v81 = *(v0 + 328);
      v61 = *(v0 + 304);
      v83 = *(v0 + 296);
      v62 = *(v0 + 256);
      sub_275316048(v0 + 80, &qword_2809C1488, &type metadata for TransitionInfoStorage);
      OUTLINED_FUNCTION_31_0();
      v63 = OUTLINED_FUNCTION_101_0();
      sub_2753168D8(v63, v64, v65);
      v55(v56, v60);

      OUTLINED_FUNCTION_35_0();
LABEL_9:
      OUTLINED_FUNCTION_225();

      __asm { BRAA            X1, X16 }
    }

    sub_275316048(v0 + 80, &qword_2809C1488, &type metadata for TransitionInfoStorage);
  }

  OUTLINED_FUNCTION_120_0();
  v77 = *(v0 + 304);
  v80 = *(v0 + 296);
  v52(v6);

  OUTLINED_FUNCTION_19_0();
  goto LABEL_9;
}

uint64_t sub_27530AF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v16 = v15[72];
  OUTLINED_FUNCTION_120_0();
  v28 = v15[38];
  v29 = v15[37];
  v30 = v17;
  v18(v14);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, a12, a13, a14);
}

uint64_t FacetCollection<>.MusicKitTransitionInfoElement.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_155_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_41_0(v9, v10, v11, v12);
  v0[9] = v13;
  OUTLINED_FUNCTION_75(v13);
  v15 = *(v14 + 64);
  v0[10] = OUTLINED_FUNCTION_138_0();
  v0[11] = OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_93_0();
  v16 = sub_2753B72A8();
  v0[12] = v16;
  OUTLINED_FUNCTION_17_1(v16);
  v0[13] = v17;
  v19 = *(v18 + 64);
  v0[14] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_87_0();
  v0[15] = v20;
  v22 = *(v21 + 64);
  v0[16] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_88_0();
  v0[17] = v23;
  v25 = *(v24 + 64);
  v0[18] = OUTLINED_FUNCTION_138_0();
  v26 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_27530B1C0()
{
  OUTLINED_FUNCTION_144_0();
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[6];
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_54_0(v0[15]);
  v7(v6);
  v8 = OUTLINED_FUNCTION_59_0();
  v9 = v0[11];
  if (!v8)
  {
    v29 = v0[13];
    v28 = v0[14];
    v30 = v0[12];
    v32 = v0[9];
    v31 = v0[10];
    v33 = v0[6];
    v34 = v0[3];
    OUTLINED_FUNCTION_140_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v9);
    (*(v29 + 8))(v28, v30);
    sub_275314678();
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_83_0();
    sub_2753B62A8();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_193(v38, v39, v40, v41, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_52_0();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_232();

    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_172();

    __asm { BRAA            X1, X16 }
  }

  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[14];
  v13 = OUTLINED_FUNCTION_213();
  __swift_storeEnumTagSinglePayload(v13, v14, 1, v9);
  v15 = *(v11 + 32);
  v16 = OUTLINED_FUNCTION_52_0();
  v17(v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[19] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_157_0(v18);
  OUTLINED_FUNCTION_172();

  return sub_27530A0B8(v20, v21, v22, v23, v24, v25);
}

uint64_t sub_27530B3CC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_27530B4D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_27530B55C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitTransitionInfoElement.availability<A>(of:)();
}

uint64_t sub_27530B624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitTransitionInfoElement.value<A, B>(from:for:)();
}

uint64_t FacetCollection<>.MusicKitTransitionInfoOffline.availability<A>(of:)()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  v0[9] = v3;
  v0[10] = v4;
  v0[7] = v5;
  v0[8] = v6;
  OUTLINED_FUNCTION_29_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v7 = sub_2753B6C18();
  v0[11] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_138_0();
  v0[14] = *(v2 + 16);
  v0[15] = *(v2 + 24);
  v0[16] = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v11 = sub_2753B6C18();
  v0[17] = v11;
  OUTLINED_FUNCTION_17_1(v11);
  v0[18] = v12;
  v14 = *(v13 + 64) + 15;
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  OUTLINED_FUNCTION_87_0();
  v0[21] = v15;
  v17 = *(v16 + 64);
  v0[22] = OUTLINED_FUNCTION_138_0();
  v18 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_27530B898()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0[22];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[8];
  v5 = v0[9];
  v6 = OUTLINED_FUNCTION_54_0(v0[21]);
  v7(v6);
  OUTLINED_FUNCTION_69_0();
  FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(v5, v8);
  v0[23] = v17;
  v0[5] = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[24] = v9;
  *v9 = v10;
  v9[1] = sub_27530B980;
  v11 = v0[20];
  v12 = v0[16];
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)();
}

uint64_t sub_27530B980()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_27530BA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_66_0();
  v12 = *(v10 + 152);
  v11 = *(v10 + 160);
  v13 = *(v10 + 136);
  v14 = *(v10 + 144);
  v15 = OUTLINED_FUNCTION_48_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_92_0();
  v19 = v18(v17);
  if (v19 == *MEMORY[0x277D65210])
  {
    v20 = *(v10 + 184);
    v22 = *(v10 + 144);
    v21 = *(v10 + 152);
    v23 = *(v10 + 136);

    v24 = *(v22 + 96);
    v25 = OUTLINED_FUNCTION_96_0();
    v26(v25);
    v27 = *(v21 + 8);
    v28 = *(v21 + 24);
    v29 = v28[2] + 1;
    v30 = v28;
    do
    {
      if (!--v29)
      {
        v61 = *(v10 + 160);
        v62 = *(v10 + 136);
        v63 = *(v10 + 144);
        v64 = *(v10 + 88);
        v65 = *(v10 + 96);
        v66 = *(v10 + 56);

        v67 = *(v63 + 8);
        v68 = OUTLINED_FUNCTION_90_0();
        v69(v68);
        OUTLINED_FUNCTION_47_0();
        *v66 = v70;
        v66[1] = v71;
        (*(v65 + 104))(v66, *MEMORY[0x277D65208], v64);
        goto LABEL_14;
      }

      v31 = v30 + 7;
      v32 = *(v30 + 82);
      v33 = *(v30 + 40);
      *(v10 + 274) = v32;
      *(v10 + 272) = v33;
      v30 = v31;
    }

    while (((v32 << 16) & 0xE00000) != 0);
    *(v10 + 208) = *(v31 - 3);
    *(v10 + 216) = *(v31 - 2);
    *(v10 + 224) = *(v31 - 1);
    *(v10 + 232) = *v31;
    *(v10 + 240) = v31[1];
    *(v10 + 248) = v31[2];

    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    *(v10 + 256) = v34;
    *v34 = v35;
    v34[1] = sub_27530BE0C;
    v36 = *(v10 + 112);
    v37 = *(v10 + 120);
    v38 = *(v10 + 104);
    v39 = *(v10 + 72);
    v40 = *(v10 + 80);
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_179();

    return sub_27530C1CC(v41, v42, v43, v44, v45, v46);
  }

  else
  {
    v49 = v19;
    if (v19 == *MEMORY[0x277D65218])
    {
      v50 = *(v10 + 184);
      v52 = *(v10 + 144);
      v51 = *(v10 + 152);
      v53 = *(v10 + 136);

      v54 = *(v52 + 96);
      v55 = OUTLINED_FUNCTION_96_0();
      v56(v55);
      sub_275314944();
      __swift_destroy_boxed_opaque_existential_1((v51 + *(v57 + 48)));
      v58 = sub_2753B6A38();
      OUTLINED_FUNCTION_9(v58);
      (*(v59 + 8))(v51);
      v60 = *(v52 + 8);
      v49 = *MEMORY[0x277D65208];
    }

    else
    {
      if (v19 != *MEMORY[0x277D65208])
      {
        v89 = *(v10 + 136);
        OUTLINED_FUNCTION_179();

        return sub_2753B7708();
      }

      v72 = *(v10 + 184);
      v74 = *(v10 + 144);
      v73 = *(v10 + 152);
      v75 = *(v10 + 136);

      v60 = *(v74 + 8);
      v76 = OUTLINED_FUNCTION_129_0();
      v60(v76);
    }

    v77 = *(v10 + 88);
    v78 = *(v10 + 96);
    v79 = *(v10 + 56);
    (v60)(*(v10 + 160), *(v10 + 136));
    OUTLINED_FUNCTION_142_0();
    *v79 = v80;
    v79[1] = 0x80000002753B86B0;
    (*(v78 + 104))(v79, v49, v77);
LABEL_14:
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_179();

    return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10);
  }
}

uint64_t sub_27530BE0C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_27530BF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = *(v10 + 160);
  v12 = *(v10 + 136);
  v13 = *(v10 + 144);
  v15 = *(v10 + 96);
  v14 = *(v10 + 104);
  v16 = *(v10 + 88);
  v17 = *(v10 + 56);
  sub_2752FBB6C(*(v10 + 208), *(v10 + 216), *(v10 + 224), *(v10 + 232), *(v10 + 240), *(v10 + 248), *(v10 + 272) | (*(v10 + 274) << 16));
  v18 = *(v13 + 8);
  v19 = OUTLINED_FUNCTION_96_0();
  v20(v19);
  v21 = *(v15 + 32);
  OUTLINED_FUNCTION_95_0();
  v22();
  OUTLINED_FUNCTION_187();

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_111_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_27530BFD8()
{
  OUTLINED_FUNCTION_3();
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[13];

  OUTLINED_FUNCTION_19_0();
  v7 = v0[25];

  return v6();
}

uint64_t sub_27530C064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_177();
  v21 = *(v20 + 264);
  v44 = *(v20 + 248);
  v22 = *(v20 + 224);
  v40 = *(v20 + 232);
  v41 = *(v20 + 240);
  v24 = *(v20 + 208);
  v23 = *(v20 + 216);
  v25 = *(v20 + 272) | (*(v20 + 274) << 16);
  v26 = *(v20 + 144);
  v42 = *(v20 + 136);
  v43 = *(v20 + 160);
  v27 = *(v20 + 96);
  v45 = *(v20 + 88);
  v28 = *(v20 + 56);
  sub_2753B7398();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x277C76100](0xD000000000000028);
  swift_getErrorValue();
  v29 = *(v20 + 16);
  v30 = *(v20 + 24);
  sub_2753B76E8();

  sub_2752FBB6C(v24, v23, v22, v40, v41, v44, v25);
  (*(v26 + 8))(v43, v42);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  (*(v27 + 104))(v28, *MEMORY[0x277D65208], v45);
  OUTLINED_FUNCTION_187();

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_148_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, v43, v44, v45, 0, 0xE000000000000000, a18, a19, a20);
}

uint64_t sub_27530C1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a4;
  v6[12] = a6;
  v6[9] = a2;
  v6[10] = a3;
  v6[8] = a1;
  v7 = sub_2753B6878();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  sub_2753169C4(0, &qword_2809C1480, MEMORY[0x277D85B28], MEMORY[0x277D64FF8], MEMORY[0x277D64FF0]);
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v13 = MEMORY[0x277D83D88];
  sub_2753167D4(0, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v16 = type metadata accessor for SongTransitionInfo();
  v6[20] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  sub_275316934();
  v19 = *(*(v18 - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  sub_2753169C4(0, &qword_2809C1840, MEMORY[0x277CD8320], MEMORY[0x277CD8310], MEMORY[0x277CD7C78]);
  v6[23] = v20;
  v21 = *(v20 - 8);
  v6[24] = v21;
  v22 = *(v21 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  sub_2753167D4(0, &qword_2809C1848, MEMORY[0x277D2AAB8], v13);
  v24 = *(*(v23 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v25 = sub_2753B6808();
  v6[28] = v25;
  v26 = *(v25 - 8);
  v6[29] = v26;
  v27 = *(v26 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  sub_2753167D4(0, &qword_2809C1850, MEMORY[0x277D2A988], v13);
  v29 = *(*(v28 - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v30 = sub_2753B67C8();
  v6[33] = v30;
  v31 = *(v30 - 8);
  v6[34] = v31;
  v32 = *(v31 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v33 = sub_2753B6768();
  v6[37] = v33;
  v34 = *(v33 - 8);
  v6[38] = v34;
  v35 = *(v34 + 64) + 15;
  v6[39] = swift_task_alloc();
  v36 = sub_2753B67A8();
  v6[40] = v36;
  v37 = *(v36 - 8);
  v6[41] = v37;
  v38 = *(v37 + 64) + 15;
  v6[42] = swift_task_alloc();
  sub_2753167D4(0, &qword_2809C1858, MEMORY[0x277D2A720], v13);
  v40 = *(*(v39 - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v41 = sub_2753B6798();
  v6[45] = v41;
  v42 = *(v41 - 8);
  v6[46] = v42;
  v43 = *(v42 + 64) + 15;
  v6[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27530C758, 0, 0);
}

uint64_t sub_27530C758()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[47];
  v3 = v0[9];
  v2 = v0[10];

  OUTLINED_FUNCTION_79_0();
  v4 = sub_2753B6888();
  v6 = v5;
  v0[48] = v4;
  v0[49] = v5;
  sub_275317784(0, &qword_2809C1860, MEMORY[0x277CD7E90], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2753BE420;
  *(inited + 32) = v4;
  *(inited + 40) = v6;

  sub_275314FD0(inited);
  sub_2753B6778();
  v8 = *(MEMORY[0x277D2A728] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[50] = v9;
  *v9 = v10;
  v9[1] = sub_27530C878;
  v11 = v0[47];
  v12 = v0[42];

  return MEMORY[0x282189978](v12);
}

uint64_t sub_27530C878()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 400);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 408) = v0;

  if (v0)
  {
    v9 = *(v3 + 392);
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_27530C978()
{
  v159 = v0;
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];
  v8 = v0[37];
  sub_2753B67B8();

  v9 = *(v6 + 8);
  v10 = OUTLINED_FUNCTION_115();
  v11(v10);
  v12 = OUTLINED_FUNCTION_90_0();
  sub_275316A30(v12, v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v8);
  v15 = v0[43];
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_12_2();
    v19 = v18;
LABEL_3:
    sub_275316AC4(v19, v16, v17);
    goto LABEL_6;
  }

  (*(v0[38] + 32))(v0[39], v0[43], v0[37]);
  v20 = sub_2753B6748();
  if (v21)
  {
    (*(v0[38] + 8))(v0[39], v0[37]);
    goto LABEL_6;
  }

  v54 = v0[32];
  v53 = v0[33];
  v55 = v0[39];
  sub_2753B6708();
  v56 = __swift_getEnumTagSinglePayload(v54, 1, v53);
  v57 = v0[39];
  if (v56 == 1)
  {
    v58 = v0[37];
    v59 = v0[32];
    v60 = OUTLINED_FUNCTION_98_0(v0[38]);
    v61(v60);
    v16 = &unk_2809C1850;
    v17 = MEMORY[0x277D2A988];
    v19 = v59;
    goto LABEL_3;
  }

  v63 = v0[27];
  v62 = v0[28];
  v64 = *(v0[34] + 32);
  v64(v0[36], v0[32], v0[33]);
  sub_2753B6718();
  v65 = __swift_getEnumTagSinglePayload(v63, 1, v62);
  v66 = v0[39];
  v67 = v0[27];
  if (v65 == 1)
  {
    v68 = v0[37];
    v69 = v0[38];
    (*(v0[34] + 8))(v0[36], v0[33]);
    v70 = *(v69 + 8);
    v71 = OUTLINED_FUNCTION_79_0();
    v72(v71);
    v16 = &unk_2809C1848;
    v17 = MEMORY[0x277D2AAB8];
    v19 = v67;
    goto LABEL_3;
  }

  v74 = v0[22];
  v73 = v0[23];
  v75 = *(v0[29] + 32);
  v75(v0[31], v0[27], v0[28]);
  sub_2753B6758();
  v76 = __swift_getEnumTagSinglePayload(v74, 1, v73);
  v77 = v0[34];
  v153 = v0[39];
  v156 = v0[33];
  if (v76 != 1)
  {
    v82 = v0[35];
    v119 = v0[36];
    v83 = v0[29];
    v150 = v0[30];
    v147 = v0[28];
    v118 = v0[26];
    v121 = v0[25];
    v128 = v64;
    v130 = v75;
    v85 = v0[23];
    v84 = v0[24];
    v87 = v0[21];
    v86 = v0[22];
    v124 = v0[19];
    v126 = v0[20];
    v138 = v0[16];
    v141 = v0[17];
    v132 = v0[18];
    v135 = v0[15];
    v144 = v0[10];
    v117 = v0[31];
    (*(v84 + 32))();
    (*(v77 + 16))(v82, v119, v156);
    (*(v83 + 16))(v150, v117, v147);
    (*(v84 + 16))(v121, v118, v85);
    sub_275316B88();
    v88 = sub_2753B6EA8();
    sub_2753B6728();
    v89 = sub_2753B6738();
    v90 = (v89 == 2) | v89;
    *v87 = v20;
    v128(v87 + v126[5], v82, v156);
    v130(v87 + v126[6], v150, v147);
    *(v87 + v126[7]) = v88;
    v91 = sub_275316C18(v124, v87 + v126[8]);
    *(v87 + v126[9]) = v90 & 1;
    MEMORY[0x277C75B00](v91);
    OUTLINED_FUNCTION_76_0();
    sub_2753B6838();
    (*(v141 + 8))(v132, v138);

    v92 = sub_2753B6858();
    v93 = sub_2753B7248();

    v94 = os_log_type_enabled(v92, v93);
    v96 = v0[46];
    v95 = v0[47];
    v154 = v0[44];
    v157 = v0[45];
    v97 = v0[38];
    v151 = v0[39];
    v145 = v0[36];
    v148 = v0[37];
    v98 = v0[34];
    v139 = v0[31];
    v142 = v0[33];
    v99 = v0[29];
    v133 = v0[26];
    v136 = v0[28];
    v100 = v0[24];
    v101 = v0[14];
    v129 = v0[15];
    v131 = v0[23];
    v127 = v0[13];
    if (v94)
    {
      v120 = v0[9];
      v122 = v0[10];
      v125 = v0[46];
      v102 = swift_slowAlloc();
      v123 = v95;
      v103 = swift_slowAlloc();
      v158 = v103;
      *v102 = 136446210;
      *(v102 + 4) = sub_275314A34(v120, v122, &v158);
      _os_log_impl(&dword_2752E3000, v92, v93, "[TransitionInfo] Found transition info from Download MusicKit request for adamID: %{public}s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_170();

      (*(v101 + 8))(v129, v127);
      (*(v100 + 8))(v133, v131);
      (*(v99 + 8))(v139, v136);
      (*(v98 + 8))(v145, v142);
      (*(v97 + 8))(v151, v148);
      OUTLINED_FUNCTION_12_2();
      sub_275316AC4(v154, v104, v105);
      (*(v125 + 8))(v123, v157);
    }

    else
    {

      (*(v101 + 8))(v129, v127);
      (*(v100 + 8))(v133, v131);
      (*(v99 + 8))(v139, v136);
      (*(v98 + 8))(v145, v142);
      (*(v97 + 8))(v151, v148);
      OUTLINED_FUNCTION_12_2();
      sub_275316AC4(v154, v106, v107);
      (*(v96 + 8))(v95, v157);
    }

    v108 = v0[21];
    v109 = v0[11];
    v110 = v0[12];
    v111 = v0[8];
    OUTLINED_FUNCTION_31_0();
    sub_2753168D8(v112, v111, v113);
    v114 = *MEMORY[0x277D65210];
    type metadata accessor for FacetCollection<>.MusicKitTransitionInfoOffline();
    OUTLINED_FUNCTION_29_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v115 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v115);
    (*(v116 + 104))(v111);
    goto LABEL_7;
  }

  v78 = v0[37];
  v79 = v0[38];
  v80 = v0[36];
  v81 = v0[22];
  (*(v0[29] + 8))(v0[31], v0[28]);
  (*(v77 + 8))(v80, v156);
  (*(v79 + 8))(v153, v78);
  sub_275316B2C(v81);
LABEL_6:
  v23 = v0[46];
  v22 = v0[47];
  v24 = v0[44];
  v25 = v0[45];
  v27 = v0[11];
  v26 = v0[12];
  v28 = v0[8];
  OUTLINED_FUNCTION_12_2();
  sub_275316AC4(v29, v30, v31);
  v32 = *(v23 + 8);
  v33 = OUTLINED_FUNCTION_129_0();
  v34(v33);
  *v28 = 0xD000000000000026;
  v28[1] = 0x80000002753B8D10;
  v35 = *MEMORY[0x277D65208];
  OUTLINED_FUNCTION_136_0();
  type metadata accessor for FacetCollection<>.MusicKitTransitionInfoOffline();
  OUTLINED_FUNCTION_29_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v36 = sub_2753B6C18();
  OUTLINED_FUNCTION_8_2(v36);
  v38 = *(v37 + 104);
  v39 = OUTLINED_FUNCTION_96_0();
  v40(v39);
LABEL_7:
  v41 = v0[47];
  v43 = v0[43];
  v42 = v0[44];
  v44 = v0[42];
  v45 = v0[39];
  v46 = v0[35];
  v47 = v0[36];
  v49 = v0[31];
  v48 = v0[32];
  v50 = v0[30];
  v134 = v0[27];
  v137 = v0[26];
  v140 = v0[25];
  v143 = v0[22];
  v146 = v0[21];
  v149 = v0[19];
  v152 = v0[18];
  v155 = v0[15];

  OUTLINED_FUNCTION_35_0();

  return v51();
}

uint64_t sub_27530D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_177();
  v21 = v20[44];
  v22 = v20[42];
  v23 = v20[43];
  v24 = v20[39];
  v26 = v20[35];
  v25 = v20[36];
  v28 = v20[31];
  v27 = v20[32];
  v39 = v20[30];
  v40 = v20[27];
  v41 = v20[26];
  v42 = v20[25];
  v43 = v20[22];
  v44 = v20[21];
  v45 = v20[19];
  v46 = v20[18];
  v47 = v20[15];
  (*(v20[46] + 8))(v20[47], v20[45]);

  OUTLINED_FUNCTION_19_0();
  v29 = v20[51];
  OUTLINED_FUNCTION_148_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, a18, a19, a20);
}

uint64_t FacetCollection<>.MusicKitTransitionInfoOffline.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_14_0();
  v0[2] = v1;
  v0[3] = v2;
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v3, v4, v5, MEMORY[0x277D64F00]);
  v0[4] = v6;
  OUTLINED_FUNCTION_75(v6);
  v8 = *(v7 + 64);
  v0[5] = OUTLINED_FUNCTION_138_0();
  v9 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_27530D42C()
{
  OUTLINED_FUNCTION_160_0();
  v12 = v1;
  OUTLINED_FUNCTION_66_0();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_275314678();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_24_0();
  sub_2753B62C8();
  *(v0 + 48) = 7;
  sub_2753B6298();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_83_0();
  sub_2753B62A8();
  OUTLINED_FUNCTION_24_0();
  sub_2753B62C8();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_193(v6, v7, v8, v9, MEMORY[0x277D64F08]);
  sub_275314720();
  OUTLINED_FUNCTION_25_0();
  swift_allocError();
  OUTLINED_FUNCTION_52_0();
  sub_2753B62E8();
  swift_willThrow();

  OUTLINED_FUNCTION_72_0();

  return v10();
}

uint64_t sub_27530D544()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_27530D5D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitTransitionInfoOffline.availability<A>(of:)();
}

uint64_t sub_27530D698()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitTransitionInfoOffline.value<A, B>(from:for:)();
}

uint64_t FacetCollection<>.MusicKitAssetElement.availability<A>(of:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_117_0();
  v0[646] = v2;
  v0[645] = v3;
  v0[644] = v4;
  v0[643] = v5;
  v0[642] = v6;
  v7 = sub_2753B6A38();
  v0[647] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v0[648] = v8;
  v10 = *(v9 + 64);
  v0[649] = OUTLINED_FUNCTION_138_0();
  v11 = sub_2753B6AC8();
  v0[650] = v11;
  OUTLINED_FUNCTION_17_1(v11);
  v0[651] = v12;
  v14 = *(v13 + 64);
  v0[652] = OUTLINED_FUNCTION_138_0();
  v0[653] = *(v1 + 16);
  v15 = *(v1 + 24);
  v0[654] = v15;
  OUTLINED_FUNCTION_95_0();
  v0[655] = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v16 = sub_2753B6C18();
  v0[656] = v16;
  OUTLINED_FUNCTION_17_1(v16);
  v0[657] = v17;
  v19 = *(v18 + 64);
  v0[658] = OUTLINED_FUNCTION_176();
  v0[659] = swift_task_alloc();
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v20, v21, v22, MEMORY[0x277D64F00]);
  v0[660] = v23;
  OUTLINED_FUNCTION_75(v23);
  v25 = *(v24 + 64);
  v0[661] = OUTLINED_FUNCTION_138_0();
  v26 = type metadata accessor for AssetRecipe(0);
  OUTLINED_FUNCTION_75(v26);
  v28 = *(v27 + 64);
  v0[662] = OUTLINED_FUNCTION_138_0();
  v29 = sub_2753B6DB8();
  v0[663] = v29;
  OUTLINED_FUNCTION_17_1(v29);
  v0[664] = v30;
  v32 = *(v31 + 64);
  v0[665] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_2_1();
  v0[666] = v33;
  v35 = *(v34 + 64);
  v0[667] = OUTLINED_FUNCTION_176();
  v0[668] = swift_task_alloc();
  OUTLINED_FUNCTION_2_1();
  v0[669] = v36;
  v38 = *(v37 + 64);
  v0[670] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_82_0();
  v39 = type metadata accessor for FacetCollection<>.Asset();
  v0[671] = v39;
  OUTLINED_FUNCTION_17_1(v39);
  v0[672] = v40;
  v42 = *(v41 + 64);
  v0[673] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[674] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_75(AssociatedTypeWitness);
  v45 = *(v44 + 64);
  v0[675] = OUTLINED_FUNCTION_138_0();
  v46 = *(v15 + 8);
  OUTLINED_FUNCTION_82_0();
  v47 = sub_2753B69B8();
  v0[676] = v47;
  OUTLINED_FUNCTION_17_1(v47);
  v0[677] = v48;
  v50 = *(v49 + 64);
  v0[678] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v51, v52, v53);
}

uint64_t sub_27530DB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_181();
  v19 = v18[678];
  v60 = v18[676];
  v20 = v18[675];
  v21 = v18[674];
  v22 = v18[673];
  v23 = v18[671];
  v24 = v18[670];
  v25 = v18[669];
  v26 = v18[646];
  v27 = v18[645];
  v28 = v18[643];
  sub_2753B6938();
  OUTLINED_FUNCTION_33();
  swift_dynamicCast();
  v18[679] = *(v25 + 16);
  v18[680] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v29 = OUTLINED_FUNCTION_165();
  v30(v29);
  OUTLINED_FUNCTION_150_0();
  if (*(v22 + *(v23 + 36)) == 3)
  {
    v31 = v18[678];
    v32 = v18[676];
    v33 = v18[668];
    v34 = v18[654];
    sub_2753B6998();
    v18[681] = *(v34 + 32);
    v18[682] = (v34 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
    sub_2753B6288();
    v18[683] = OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_2_4();
    sub_275315BB8(v35, v36);
    OUTLINED_FUNCTION_102_0();
    sub_2753B70C8();
    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_131_0();

    return MEMORY[0x2822009F8](v37, v38, v39);
  }

  else
  {
    v41 = v18[644];
    v42 = v18[642];
    *v42 = 0xD000000000000029;
    v42[1] = 0x80000002753B8950;
    v43 = *MEMORY[0x277D65208];
    OUTLINED_FUNCTION_7_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v44 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v44);
    (*(v45 + 104))(v42, v43);
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_139_0(v46);
    v47(v22);
    v48 = v42[1];
    v49 = OUTLINED_FUNCTION_90_0();
    v50(v49);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_131_0();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, v60, a16, a17, a18);
  }
}

uint64_t sub_27530DDA4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[683];
  v2 = v0[682];
  v3 = v0[681];
  v4 = v0[668];
  v5 = v0[666];
  v6 = v0[654];
  v7 = v0[653];

  v8 = OUTLINED_FUNCTION_79_0();
  v0[684] = v3(v8);
  v9 = OUTLINED_FUNCTION_39_0();
  v10(v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_27530DE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = v9[678];
  v11 = v9[654];
  v12 = v9[653];
  v13 = v9[646];
  v14 = v9[645];
  v15 = swift_task_alloc();
  v9[685] = v15;
  OUTLINED_FUNCTION_56_0(v15);
  OUTLINED_FUNCTION_38_0(&unk_2753C1DF0);
  v28 = v16;
  v17 = swift_task_alloc();
  v9[686] = v17;
  *v17 = v9;
  v17[1] = sub_27530DF18;
  v18 = v9[684];
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_241();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28);
}

uint64_t sub_27530DF18()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 5488);
  *v4 = *v1;
  v3[687] = v7;
  v3[688] = v8;
  v3[689] = v0;

  if (!v0)
  {
    v9 = v3[685];
    v10 = v3[684];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

unsigned __int8 *sub_27530E034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  if (*(v12 + 5504))
  {
    v13 = *(v12 + 5496);
    v14 = *(v12 + 5320);
    v15 = *(v12 + 5312);
    v16 = *(v12 + 5304);
    sub_2753B6DA8();
    OUTLINED_FUNCTION_213();
    sub_2753B6D98();
    v18 = v17;

    v19 = *(v15 + 8);
    v20 = OUTLINED_FUNCTION_101_0();
    v21(v20);
    if (v18 >> 60 == 15)
    {
      v22 = *(v12 + 5424);
      v23 = *(v12 + 5408);
      v24 = *(v12 + 5288);
      v25 = *(v12 + 5280);
      sub_275314678();
      OUTLINED_FUNCTION_113_0();
      sub_2753B62D8();
      OUTLINED_FUNCTION_33_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_231();
      OUTLINED_FUNCTION_122_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_156_0();
      sub_2753B69A8();
      v26 = *(v12 + 5016);
      *(v12 + 5024) = *(v12 + 5008);
      *(v12 + 5032) = v26;
      sub_2753146CC();
      sub_2753B62B8();

      OUTLINED_FUNCTION_33_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_198(v27, v28, v29, v30, MEMORY[0x277D64F08]);
      sub_275314720();
      OUTLINED_FUNCTION_9_2();
      swift_allocError();
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_71_0();
      sub_2753B62E8();
      swift_willThrow();
LABEL_90:
      v126 = *(v12 + 5424);
      v127 = *(v12 + 5416);
      v128 = *(v12 + 5408);
      v129 = *(v12 + 5400);
      v130 = *(v12 + 5384);
      v131 = *(v12 + 5368);
      v132 = *(v12 + 5360);
      v133 = *(v12 + 5344);
      v134 = *(v12 + 5336);
      v135 = *(v12 + 5320);
      v136 = *(v12 + 5296);
      v137 = *(v12 + 5288);
      OUTLINED_FUNCTION_139_0(*(v12 + 5376));
      v138(v130);
      v139 = *(v127 + 8);
      v140 = OUTLINED_FUNCTION_90_0();
      v141(v140);

      OUTLINED_FUNCTION_19_0();
      goto LABEL_91;
    }

    v55 = *(v12 + 5512);
    v56 = sub_2753B5FF8();
    OUTLINED_FUNCTION_199(v56);
    swift_allocObject();
    sub_2753B5FE8();
    sub_275315F0C();
    OUTLINED_FUNCTION_230();
    if (v55)
    {
      v57 = OUTLINED_FUNCTION_110_0();
      sub_275315F60(v57, v58);

      goto LABEL_90;
    }

    result = memcpy((v12 + 840), (v12 + 16), 0x338uLL);
    v59 = *(v12 + 840);
    v60 = *(v12 + 848);
    v61 = HIBYTE(v60) & 0xF;
    v62 = v59 & 0xFFFFFFFFFFFFLL;
    if ((v60 & 0x2000000000000000) != 0)
    {
      v63 = HIBYTE(v60) & 0xF;
    }

    else
    {
      v63 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (!v63)
    {
      goto LABEL_89;
    }

    if ((v60 & 0x1000000000000000) != 0)
    {
      v114 = *(v12 + 848);

      v115 = OUTLINED_FUNCTION_107_0();
      v65 = sub_27531518C(v115, v116, 10);
      v118 = v117;

      if (v118)
      {
        goto LABEL_89;
      }

LABEL_80:
      if (v65)
      {
        OUTLINED_FUNCTION_237((v12 + 3968));
        if (sub_275315FC8(v12 + 3968) == 1)
        {
          sub_275315F74(v12 + 840);
        }

        else
        {
          OUTLINED_FUNCTION_237((v12 + 2432));
          sub_275315FE0(v12 + 2432, v12 + 1664);
          sub_275315F74(v12 + 840);
          memcpy((v12 + 3200), (v12 + 3968), 0x2F9uLL);
          if (!sub_27531603C(v12 + 3200))
          {
            v100 = *(v12 + 5424);
            v87 = *(v12 + 5408);
            v101 = *(v12 + 5296);
            v102 = sub_275316098(v12 + 3200);
            memcpy(__dst, v102, 0x2F9uLL);
            sub_2753B6978();
            v154[0] = *(v12 + 4888);
            *(v154 + 13) = *(v12 + 4901);
            sub_27530FDEC(v65, v154, v101);
            v103 = *(v12 + 5296);
            v104 = *(v12 + 5152);
            v105 = *(v12 + 5136);
            OUTLINED_FUNCTION_227(v12 + 4952);
            v106 = OUTLINED_FUNCTION_110_0();
            sub_275315F60(v106, v107);
            sub_275316048(v12 + 888, qword_2809C1498, &type metadata for MediaAPI.Attributes);
            v108 = OUTLINED_FUNCTION_115();
            sub_2753168D8(v108, v109, v110);
            v111 = *MEMORY[0x277D65210];
            OUTLINED_FUNCTION_7_2();
            swift_getWitnessTable();
            OUTLINED_FUNCTION_65_0();
            v112 = sub_2753B6C18();
            OUTLINED_FUNCTION_8_2(v112);
            (*(v113 + 104))(v105, v111);
            goto LABEL_86;
          }

          sub_275316048(v12 + 888, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        }

        v81 = *(v12 + 5424);
        v82 = *(v12 + 5408);
        v83 = *(v12 + 5152);
        v84 = *(v12 + 5136);
        sub_2753B7398();

        __dst[0] = 0xD00000000000002ELL;
        __dst[1] = 0x80000002753B8A90;
        OUTLINED_FUNCTION_156_0();
        sub_2753B69A8();
        v85 = *(v12 + 5072);
        v86 = *(v12 + 5080);
        v87 = sub_2753B6648();
        v89 = v88;

        MEMORY[0x277C76100](v87, v89);

        v90 = OUTLINED_FUNCTION_110_0();
        sub_275315F60(v90, v91);
        *v84 = 0xD00000000000002ELL;
        v84[1] = 0x80000002753B8A90;
        v92 = *MEMORY[0x277D65208];
        OUTLINED_FUNCTION_7_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_65_0();
        v93 = sub_2753B6C18();
        OUTLINED_FUNCTION_8_2(v93);
        (*(v94 + 104))(v84, v92);
LABEL_86:
        OUTLINED_FUNCTION_27_0();
        v150 = *(v12 + 5272);
        v151 = *(v12 + 5264);
        v95 = *(v12 + 5216);
        v152 = *(v12 + 5192);
        (*(v96 + 8))(v87);
        v97 = *(v18 + 8);
        v98 = OUTLINED_FUNCTION_90_0();
        v99(v98);

        OUTLINED_FUNCTION_35_0();
LABEL_91:
        OUTLINED_FUNCTION_100_0();

        return v143(v142, v143, v144, v145, v146, v147, v148, v149, a9, a10, a11, a12);
      }

LABEL_89:
      v119 = *(v12 + 5288);
      v120 = v59;
      v121 = *(v12 + 5280);
      sub_275314678();
      OUTLINED_FUNCTION_206();
      sub_2753B62D8();
      OUTLINED_FUNCTION_33_0();
      sub_2753B62C8();
      *(v12 + 2427) = 16;
      sub_2753B6298();
      OUTLINED_FUNCTION_122_0();
      sub_2753B62C8();
      *(v12 + 5040) = v120;
      *(v12 + 5048) = v60;

      sub_2753B62B8();
      sub_275315F74(v12 + 840);

      OUTLINED_FUNCTION_33_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_0_3();
      sub_275316CAC(0, v122, v123, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
      sub_275314720();
      OUTLINED_FUNCTION_67_1();
      swift_allocError();
      sub_2753B62E8();
      swift_willThrow();
      v124 = OUTLINED_FUNCTION_110_0();
      sub_275315F60(v124, v125);
      goto LABEL_90;
    }

    if ((v60 & 0x2000000000000000) != 0)
    {
      __dst[0] = *(v12 + 840);
      __dst[1] = v60 & 0xFFFFFFFFFFFFFFLL;
      if (v59 == 43)
      {
        if (v61)
        {
          if (v61 != 1)
          {
            OUTLINED_FUNCTION_209();
            while (1)
            {
              OUTLINED_FUNCTION_34_0();
              if (!v67 & v66)
              {
                break;
              }

              OUTLINED_FUNCTION_46_0();
              if (!v67)
              {
                break;
              }

              v65 = v76 + v75;
              if (__OFADD__(v76, v75))
              {
                break;
              }

              OUTLINED_FUNCTION_109_0();
              if (v67)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_78;
        }

LABEL_98:
        __break(1u);
        return result;
      }

      if (v59 != 45)
      {
        if (v61)
        {
          while (1)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v67 & v66)
            {
              break;
            }

            OUTLINED_FUNCTION_46_0();
            if (!v67)
            {
              break;
            }

            v65 = v80 + v79;
            if (__OFADD__(v80, v79))
            {
              break;
            }

            OUTLINED_FUNCTION_109_0();
            if (v67)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_78;
      }

      if (v61)
      {
        if (v61 != 1)
        {
          OUTLINED_FUNCTION_209();
          while (1)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v67 & v66)
            {
              break;
            }

            OUTLINED_FUNCTION_46_0();
            if (!v67)
            {
              break;
            }

            v65 = v72 - v71;
            if (__OFSUB__(v72, v71))
            {
              break;
            }

            OUTLINED_FUNCTION_109_0();
            if (v67)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_78;
      }
    }

    else
    {
      if ((v59 & 0x1000000000000000) != 0)
      {
        result = ((v60 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_107_0();
        result = sub_2753B73F8();
      }

      v64 = *result;
      if (v64 == 43)
      {
        if (v62 >= 1)
        {
          if (v62 != 1)
          {
            v65 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_203();
              while (1)
              {
                OUTLINED_FUNCTION_34_0();
                if (!v67 & v66)
                {
                  goto LABEL_78;
                }

                OUTLINED_FUNCTION_46_0();
                if (!v67)
                {
                  goto LABEL_78;
                }

                v65 = v74 + v73;
                if (__OFADD__(v74, v73))
                {
                  goto LABEL_78;
                }

                OUTLINED_FUNCTION_109_0();
                if (v67)
                {
                  goto LABEL_79;
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_78;
        }

        goto LABEL_97;
      }

      if (v64 != 45)
      {
        if (v62)
        {
          v65 = 0;
          if (result)
          {
            while (1)
            {
              v77 = *result - 48;
              if (v77 > 9)
              {
                goto LABEL_78;
              }

              v78 = 10 * v65;
              if ((v65 * 10) >> 64 != (10 * v65) >> 63)
              {
                goto LABEL_78;
              }

              v65 = v78 + v77;
              if (__OFADD__(v78, v77))
              {
                goto LABEL_78;
              }

              ++result;
              if (!--v62)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_78:
        v65 = 0;
        v70 = 1;
LABEL_79:
        LOBYTE(v154[0]) = v70;
        if (v70)
        {
          goto LABEL_89;
        }

        goto LABEL_80;
      }

      if (v62 >= 1)
      {
        if (v62 != 1)
        {
          v65 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_203();
            while (1)
            {
              OUTLINED_FUNCTION_34_0();
              if (!v67 & v66)
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_46_0();
              if (!v67)
              {
                goto LABEL_78;
              }

              v65 = v69 - v68;
              if (__OFSUB__(v69, v68))
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_109_0();
              if (v67)
              {
                goto LABEL_79;
              }
            }
          }

LABEL_69:
          v70 = 0;
          goto LABEL_79;
        }

        goto LABEL_78;
      }

      __break(1u);
    }

    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v31 = *(v12 + 5440);
  v32 = *(v12 + 5432);
  v33 = *(v12 + 5424);
  v34 = *(v12 + 5408);
  v35 = *(v12 + 5360);
  v36 = *(v12 + 5232);
  v37 = *(v12 + 5224);
  v38 = *(v12 + 5160);
  v39 = *(v12 + 5144);
  v40 = OUTLINED_FUNCTION_211();
  v41(v40);
  OUTLINED_FUNCTION_101_0();
  FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(v38, v42);
  sub_2753B69A8();
  v43 = *(v12 + 5088);
  v44 = *(v12 + 5096);
  OUTLINED_FUNCTION_136_0();
  *(v12 + 5520) = type metadata accessor for MediaAPIResourceRequest.Option();
  *(v12 + 5528) = sub_2753B76C8();
  swift_allocObject();
  sub_2753B6FF8();
  *v45 = 2;
  *(v12 + 5112) = sub_2752E6688();
  *(v12 + 5056) = v43;
  *(v12 + 5064) = v44;
  sub_2753B70B8();
  sub_275314624();
  sub_2753B6CD8();
  sub_2753B6D18();
  *(v12 + 5104) = *(v12 + 5120);

  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v12 + 5536) = v46;
  *v46 = v47;
  v46[1] = sub_27530EBA4;
  v48 = *(v12 + 5272);
  v49 = *(v12 + 5240);
  v50 = *(v12 + 5168);
  v51 = *(v12 + 5160);
  v52 = *(v12 + 5144);
  OUTLINED_FUNCTION_100_0();

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)();
}

uint64_t sub_27530EBA4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 5536);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[693] = v0;

  v9 = v3[638];
  if (v0)
  {

    v10 = v3[640];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_27530ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = *(v12 + 5272);
  v14 = *(v12 + 5264);
  v15 = *(v12 + 5256);
  v16 = *(v12 + 5248);
  v17 = OUTLINED_FUNCTION_48_0();
  v18(v17);
  v19 = OUTLINED_FUNCTION_92_0();
  v21 = v20(v19);
  if (v21 == *MEMORY[0x277D65210])
  {
    v22 = *(v12 + 5264);
    v23 = *(v12 + 5248);
    v24 = OUTLINED_FUNCTION_126_0(*(v12 + 5256));
    v25(v24);
    v26 = *v22;
    v27 = v22[1];
    v28 = v22[3];
    sub_27535A340(v28, v189);
    v29 = v190 | (v191 << 16);
    if ((~v29 & 0xFE00FE) == 0)
    {
      v30 = *(v12 + 5272);
      v31 = *(v12 + 5256);
      v32 = *(v12 + 5248);
      v33 = *(v12 + 5152);
      v34 = *(v12 + 5136);
      v35 = *(v12 + 5120);

      v36 = *(v31 + 8);
      v37 = OUTLINED_FUNCTION_69_0();
      v38(v37);
      OUTLINED_FUNCTION_47_0();
      *v34 = v39;
      v34[1] = v40;
      v41 = *MEMORY[0x277D65208];
LABEL_11:
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      v96 = sub_2753B6C18();
      OUTLINED_FUNCTION_8_2(v96);
      v60 = *(v97 + 104);
      v61 = v34;
      goto LABEL_12;
    }

    v173 = v26;
    v184 = v27;
    v187 = v189[0];
    v177 = v189[2];
    v179 = v189[1];
    v176 = v189[3];
    v62 = v189[5];
    v182 = v189[4];
    v63 = *(v12 + 5424);
    v64 = *(v12 + 5408);
    v65 = *(v12 + 5216);
    v66 = *(v12 + 5208);
    v67 = *(v12 + 5200);
    sub_2753B6978();
    *(v12 + 4824) = *(v12 + 4856);
    *(v12 + 4837) = *(v12 + 4869);
    sub_275314888(v12 + 4824);
    v68 = *MEMORY[0x277D65198];
    v69 = sub_2753B6AB8();
    OUTLINED_FUNCTION_8_2(v69);
    (*(v70 + 104))(v65, v68);
    (*(v66 + 104))(v65, *MEMORY[0x277D651A0], v67);
    if ((sub_2753B6AA8() & 1) == 0)
    {
      v34 = v62;
      v113 = *(v12 + 5256);
      v170 = *(v12 + 5248);
      v175 = *(v12 + 5272);
      v114 = *(v12 + 5216);
      v115 = *(v12 + 5208);
      v116 = *(v12 + 5200);
      v117 = *(v12 + 5152);
      v118 = *(v12 + 5136);
      v119 = *(v12 + 5120);

      sub_2752FBB58(v187, v179, v177, v176, v182, v34, v29);

      (*(v115 + 8))(v114, v116);
      (*(v113 + 8))(v175, v170);
      OUTLINED_FUNCTION_55_0();
      v28 = *MEMORY[0x277D65208];
      OUTLINED_FUNCTION_7_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      v120 = sub_2753B6C18();
      OUTLINED_FUNCTION_8_2(v120);
      v122 = *(v121 + 104);
      v61 = OUTLINED_FUNCTION_96_0();
      goto LABEL_13;
    }

    v71 = v179;
    v72 = *(v12 + 5544);
    v73 = *(v12 + 5424);
    v74 = *(v12 + 5224);
    v75 = *(v12 + 5168);
    v76 = *(v12 + 5160);
    sub_2753104C4(*(v12 + 5232), v192);
    if (v72)
    {
      v169 = *(v12 + 5248);
      v174 = *(v12 + 5272);
      v165 = *(v12 + 5216);
      v166 = *(v12 + 5256);
      v162 = *(v12 + 5208);
      v164 = *(v12 + 5200);
      v77 = *(v12 + 5120);

      sub_2752FBB58(v187, v179, v177, v176, v182, v62, v29);
      *(v12 + 2425) = 4;
      sub_2753148DC();
      v78 = OUTLINED_FUNCTION_197();
      *(v78 + 16) = xmmword_2753BE420;
      *(v78 + 32) = v72;
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_198(v79, v80, v81, v82, MEMORY[0x277D64F08]);
      sub_275314720();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_67_1();
      swift_allocError();
      v83 = v72;
      sub_275314678();
      OUTLINED_FUNCTION_214();
      MEMORY[0x277C755D0]();
      swift_willThrow();

      (*(v162 + 8))(v165, v164);
      (*(v166 + 8))(v174, v169);
      OUTLINED_FUNCTION_28_0();
      v178 = *(v12 + 5272);
      v180 = *(v12 + 5264);
      v84 = *(v12 + 5216);
      v185 = *(v12 + 5192);
      (*(v85 + 8))(v71);
      v86 = OUTLINED_FUNCTION_73_0();
      v87(v86);

      OUTLINED_FUNCTION_19_0();
LABEL_14:
      OUTLINED_FUNCTION_100_0();

      return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12);
    }

    v167 = *(v12 + 5224);
    v171 = *(v12 + 5232);
    v125 = v192[1];
    *(v12 + 4736) = v192[0];
    *(v12 + 4752) = v125;
    *(v12 + 4768) = v192[2];
    *&v193 = v187;
    *(&v193 + 1) = v179;
    *&v194 = v177;
    *(&v194 + 1) = v176;
    *&v195[0] = v182;
    *(&v195[0] + 1) = v62;
    BYTE2(v195[1]) = BYTE2(v29);
    LOWORD(v195[1]) = v29;

    OUTLINED_FUNCTION_208();
    sub_275315CA4(v126, v127, v128, v129, v130, v62, v29);
    result = sub_275319620(v173, v184, &v193, &v196);
    v172 = v197;
    v193 = v198;
    v194 = v199;
    v195[0] = v200[0];
    *(v195 + 15) = *(v200 + 15);
    if (!v197)
    {
      __break(1u);
      return result;
    }

    v150 = *(v12 + 5528);
    v151 = *(v12 + 5520);
    v152 = *(v12 + 5336);
    v160 = *(v12 + 5256);
    v161 = *(v12 + 5248);
    v163 = *(v12 + 5272);
    v155 = *(v12 + 5232);
    v156 = *(v12 + 5424);
    v153 = *(v12 + 5224);
    v154 = *(v12 + 5408);
    v157 = *(v12 + 5208);
    v158 = *(v12 + 5200);
    v159 = *(v12 + 5216);
    v131 = *(v12 + 5184);
    v149 = *(v12 + 5176);
    v168 = *(v12 + 5152);
    v132 = *(v12 + 5136);
    v133 = *(v12 + 5120);

    OUTLINED_FUNCTION_208();
    sub_2752FBB58(v134, v135, v136, v137, v138, v62, v29);

    sub_275314944();
    v140 = (v132 + *(v139 + 48));
    v141 = *MEMORY[0x277D650C8];
    v142 = sub_2753B6898();
    OUTLINED_FUNCTION_8_2(v142);
    (*(v143 + 104))(v132, v141);
    v144 = *(v131 + 104);
    v34 = (v131 + 104);
    v144(v132, *MEMORY[0x277D65140], v149);
    OUTLINED_FUNCTION_119_0(v172, v149, v150);
    swift_allocObject();
    sub_2753B6FF8();
    *v145 = 512;
    sub_2752E6688();
    OUTLINED_FUNCTION_192();
    v140[3] = OUTLINED_FUNCTION_194();
    v140[4] = OUTLINED_FUNCTION_22_0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v140);
    sub_275319DD0(&v196, (v12 + 4736), v29, v34, boxed_opaque_existential_1);
    (*(v157 + 8))(v159, v158);
    (*(v160 + 8))(v163, v161);
    v41 = *MEMORY[0x277D65218];
    OUTLINED_FUNCTION_7_2();
    v28 = v168;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v147 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v147);
    v60 = *(v148 + 104);
    v61 = v132;
LABEL_12:
    v98 = v41;
LABEL_13:
    v60(v61, v98);
    OUTLINED_FUNCTION_27_0();
    v181 = *(v12 + 5272);
    v183 = *(v12 + 5264);
    v99 = *(v12 + 5216);
    v188 = *(v12 + 5192);
    (*(v100 + 8))(v34);
    v101 = *(v28 + 8);
    v102 = OUTLINED_FUNCTION_90_0();
    v103(v102);

    OUTLINED_FUNCTION_35_0();
    goto LABEL_14;
  }

  v41 = v21;
  if (v21 == *MEMORY[0x277D65218])
  {
    v42 = *(v12 + 5272);
    v43 = *(v12 + 5264);
    v44 = *(v12 + 5256);
    v45 = *(v12 + 5248);
    v34 = *(v12 + 5192);
    v46 = *(v12 + 5184);
    v47 = *(v12 + 5176);
    v186 = *(v12 + 5152);
    v28 = *(v12 + 5136);
    OUTLINED_FUNCTION_205();
    v48();
    v49 = *(v12 + 5120);

    v50 = *(v44 + 96);
    v51 = OUTLINED_FUNCTION_97_0();
    v52(v51);
    sub_275314944();
    v54 = v53;
    v55 = *(v53 + 48);
    v56 = *(v46 + 32);
    v56(v34, v43, v47);
    sub_275315C8C((v43 + v55), v12 + 4784);
    v57 = *(v54 + 48);
    v56(v28, v34, v47);
    sub_275315C8C((v12 + 4784), v28 + v57);
    OUTLINED_FUNCTION_7_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    v58 = sub_2753B6C18();
    OUTLINED_FUNCTION_8_2(v58);
    v60 = *(v59 + 104);
    v61 = v28;
    goto LABEL_12;
  }

  if (v21 == *MEMORY[0x277D65208])
  {
    v28 = *(v12 + 5272);
    v88 = *(v12 + 5264);
    v89 = *(v12 + 5256);
    v90 = *(v12 + 5248);
    v91 = *(v12 + 5152);
    v34 = *(v12 + 5136);
    v92 = *(v12 + 5120);

    v93 = *(v89 + 8);
    v94 = OUTLINED_FUNCTION_90_0();
    v93(v94);
    v95 = OUTLINED_FUNCTION_207();
    v93(v95);
    *v34 = 0xD000000000000010;
    v34[1] = v88;
    goto LABEL_11;
  }

  v123 = *(v12 + 5248);
  OUTLINED_FUNCTION_100_0();

  return sub_2753B7708();
}