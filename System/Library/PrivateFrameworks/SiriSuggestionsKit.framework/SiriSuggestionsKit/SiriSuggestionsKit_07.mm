uint64_t sub_1BF93EDE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BF93EE3C()
{
  result = type metadata accessor for ActionIdentifier();
  if (v1 <= 0x3F)
  {
    result = sub_1BF93EEE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BF93EEE8()
{
  result = qword_1EDBF0540;
  if (!qword_1EDBF0540)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDBF0540);
  }

  return result;
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

uint64_t sub_1BF93EF44(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BF93EF84(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BF93EFFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1BF93F03C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1BF93F0C4()
{
  sub_1BF93F148();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionIdentifier();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BF93F148()
{
  if (!qword_1EDBF0588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8878, &unk_1BF9BC920);
    v0 = sub_1BF9B4E08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF0588);
    }
  }
}

uint64_t sub_1BF93F208()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = sub_1BF8F5C60;

  return sub_1BF93D418(v2, v0 + 16);
}

uint64_t sub_1BF93F2FC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A68, &unk_1BF9C1A60);
  result = sub_1BF9B5458();
  v6 = result;
  v7 = 0;
  v26 = a3;
  v27 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v24 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(*(v26 + 48) + 8 * v18);
      v29 = *(*(v26 + 56) + 8 * v18);

      a1(&v28, &v29);

      if (v3)
      {
        break;
      }

      *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v27;
      v20 = v28;
      *(v27[6] + 8 * v18) = v19;
      *(v27[7] + 8 * v18) = v20;
      v21 = v27[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_17;
      }

      v27[2] = v23;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v27;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF93F4D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BF93F640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t TargetOwnerDefinition.getSafeSuggestionsRepo()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DelegateOwnedSuggestionsRepository();
  (*(a2 + 16))(v14, a1, a2);
  (*(v7 + 16))(v10, v3, a1);
  result = sub_1BF940090(v10, v14, v11, a1, *(a2 + 8));
  a3[3] = v11;
  a3[4] = &protocol witness table for DelegateOwnedSuggestionsRepository;
  *a3 = result;
  return result;
}

uint64_t DelegateOwnedSuggestionsRepository.getPooledSuggestions()()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  return (*(*(v2 + 8) + 16))(v1);
}

uint64_t DelegateOwnedSuggestionsRepository.getOwner()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t DelegateOwnedSuggestionsRepository.description.getter()
{
  sub_1BF8D2004(v0 + 56, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A80, &qword_1BF9C1B10);
  return sub_1BF9B4B08();
}

uint64_t DelegateOwnedSuggestionsRepository.getAdditionalIntentTypes()()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  return (*(*(v2 + 8) + 32))(v1);
}

uint64_t DelegateOwnedSuggestionsRepository.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t DelegateOwnedSuggestionsRepository.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1BF93FA5C()
{
  type metadata accessor for NoOpTargetOwnerDefinition();
  swift_allocObject();
  result = sub_1BF93FAF4();
  qword_1EBDE9A78 = result;
  return result;
}

uint64_t static NoOpTargetOwnerDefinition.Instance.getter()
{
  if (qword_1EBDE81C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BF93FAF4()
{
  type metadata accessor for NoOpSuggestionsRepository();
  *(v0 + 16) = swift_initStaticObject();
  type metadata accessor for NoOpSuggestionFilter();
  *(v0 + 24) = swift_initStaticObject();
  return v0;
}

uint64_t NoOpTargetOwnerDefinition.getSuggestionsRepo()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[3] = type metadata accessor for NoOpSuggestionsRepository();
  a1[4] = &protocol witness table for NoOpSuggestionsRepository;
  *a1 = v3;
}

uint64_t NoOpTargetOwnerDefinition.getSuggestionsFilter()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  a1[3] = type metadata accessor for NoOpSuggestionFilter();
  a1[4] = &protocol witness table for NoOpSuggestionFilter;
  *a1 = v3;
}

uint64_t NoOpTargetOwnerDefinition.getOwner()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDBF4B40 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDBF4B48;
  a1[3] = type metadata accessor for DefaultOwner();
  a1[4] = sub_1BF93A93C();
  *a1 = v2;
}

uint64_t NoOpTargetOwnerDefinition.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t NoOpTargetOwnerDefinition.__deallocating_deinit()
{
  NoOpTargetOwnerDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *DefaultTargetOwnerDefinition.__allocating_init(suggestions:resolvers:owner:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1BF8D2004(a3, v14);
  v6 = type metadata accessor for NoOpSuggestionFilter();
  inited = swift_initStaticObject();
  sub_1BF8D2004(v14, v13);
  v8 = swift_allocObject();
  v8[16] = v6;
  v8[17] = &protocol witness table for NoOpSuggestionFilter;
  v8[13] = inited;
  v8[7] = a2;
  v9 = type metadata accessor for DefaultSuggestionsRepository();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = a1;
  *(v10 + 24) = v11;
  v8[5] = v9;
  v8[6] = &protocol witness table for DefaultSuggestionsRepository;
  v8[2] = v10;
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_1BF8C2C9C(v13, (v8 + 8));
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v8;
}

void *DefaultTargetOwnerDefinition.__allocating_init(suggestions:resolvers:owner:filter:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_1BF940138(a1, a2, a3, v14, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

uint64_t *DefaultTargetOwnerDefinition.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  return v0;
}

uint64_t DefaultTargetOwnerDefinition.__deallocating_deinit()
{
  DefaultTargetOwnerDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t sub_1BF940090(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a4);
  v9 = swift_allocObject();
  sub_1BF8C2C9C(&v11, v9 + 16);
  sub_1BF8C2C9C(a2, v9 + 56);
  return v9;
}

void *sub_1BF940138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(v12 + 32))(&v24 - v17, v19, v20);
  sub_1BF8D2004(a3, v25);
  v21 = swift_allocObject();
  (*(v12 + 16))(v16, v18, a6);
  v22 = sub_1BF94039C(a1, a2, v25, v16, MEMORY[0x1E69E7CC0], v21, a6, a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v12 + 8))(v18, a6);
  return v22;
}

void *sub_1BF94039C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  a6[16] = a7;
  a6[17] = a8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a6 + 13);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1Tm, a4, a7);
  a6[7] = a2;
  v16 = type metadata accessor for DefaultSuggestionsRepository();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a5;
  a6[5] = v16;
  a6[6] = &protocol witness table for DefaultSuggestionsRepository;
  a6[2] = v17;
  sub_1BF8C2C9C(a3, (a6 + 8));
  return a6;
}

uint64_t Context.setIntentQuery(_:)()
{
  OUTLINED_FUNCTION_7();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v5 = *(*(v2 + 8) + 8);
  v7 = sub_1BF9B4E28();
  v1[23] = v7;
  v1[24] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BF9404E8, v7, v6);
}

uint64_t sub_1BF9404E8()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = OUTLINED_FUNCTION_88();
  Context.getTargetOwner()(v5, v6, v7);
  v8 = v0[5];
  v9 = v0[6];
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_59_4(*(v9 + 8));
  OUTLINED_FUNCTION_11(v8);
  (*(v10 + 16))();
  v0[15] = type metadata accessor for SiriSuggestions.IntentQuery(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_16_9();
  sub_1BF943A54(v4, v11, v12);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_58_3(v0 + 7, v13, 0xED00007972657551, v0 + 12);
  OUTLINED_FUNCTION_27_3(v0 + 12);
  v14 = *(v1 + 16);
  v15 = OUTLINED_FUNCTION_88();
  v0[25] = v16(v15);
  v0[26] = v17;
  v0[27] = swift_getObjectType();
  OUTLINED_FUNCTION_45_4();
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v18 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1BF940628()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[19];
  GenerationContext.addIntentQuery(_:)();
  swift_unknownObjectRelease();
  v5 = v0[23];
  v6 = v0[24];

  return MEMORY[0x1EEE6DFA0](sub_1BF940698, v5, v6);
}

uint64_t sub_1BF940698()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 152);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  *(v0 + 144) = v4;
  sub_1BF9439F0(v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *v5 = v0;
  v5[1] = sub_1BF94074C;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);

  return Context.setIntentType(_:)();
}

uint64_t sub_1BF94074C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = v1[28];
  *v3 = *v0;

  sub_1BF8F5A94(v1[16], v1[17], *(v2 + 144));
  v5 = v1[24];
  v6 = v1[23];

  return MEMORY[0x1EEE6DFA0](sub_1BF940898, v6, v5);
}

Swift::Void __swiftcall Context.setSuggestionParameters(from:)(Swift::OpaquePointer from)
{
  Context.getTargetOwner()(v1, v2, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v10[3] = v4;
  v10[4] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v10);
  OUTLINED_FUNCTION_11(v4);
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_47_2();
  v8();
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A88, &qword_1BF9C1CF0);
  v9[0] = from._rawValue;

  OUTLINED_FUNCTION_58_3(v10, 0xD000000000000012, 0x80000001BF9CC840, v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t Context.setIntent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  OUTLINED_FUNCTION_72(v5);
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  OUTLINED_FUNCTION_45_4();
  v9 = sub_1BF9B4E28();
  v4[21] = v9;
  v4[22] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BF940ACC, v9, v8);
}

uint64_t sub_1BF940ACC()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = OUTLINED_FUNCTION_88();
  Context.getTargetOwner()(v5, v6, v7);
  v8 = v0[5];
  v9 = v0[6];
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_59_4(*(v9 + 8));
  OUTLINED_FUNCTION_11(v8);
  (*(v10 + 16))();
  v0[15] = type metadata accessor for SiriSuggestions.Intent(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_15_13();
  sub_1BF943A54(v4, v11, v12);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_58_3(v0 + 7, v13, 0xE800000000000000, v0 + 12);
  OUTLINED_FUNCTION_27_3(v0 + 12);
  v14 = *(v1 + 16);
  v15 = OUTLINED_FUNCTION_88();
  v0[23] = v16(v15);
  v0[24] = v17;
  v0[25] = swift_getObjectType();
  OUTLINED_FUNCTION_45_4();
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v18 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1BF940C00()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[16];
  GenerationContext.addIntent(_:)();
  swift_unknownObjectRelease();
  v5 = v0[21];
  v6 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1BF940C70, v5, v6);
}

uint64_t sub_1BF940C70()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[20];
  v2 = v0[16];
  SiriSuggestions.Intent.getIntentQuery()();
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1BF940D10;
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];

  return Context.setIntentQuery(_:)();
}

uint64_t sub_1BF940D10()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_0_16();
  sub_1BF944BC8(v2, v5);

  OUTLINED_FUNCTION_77();

  return v6();
}

id Intent.migrateToV2()()
{
  v2 = OUTLINED_FUNCTION_31_8();
  if (v3)
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v6 = v2;

    *v0 = v6;
    v0[1] = v5;
    v0[2] = v4;
    type metadata accessor for SiriSuggestions.AppIntent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SiriSuggestions.Intent(0);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v0 = v2;
    v8 = v2;
    type metadata accessor for SiriSuggestions.Intent(0);
    swift_storeEnumTagMultiPayload();

    return v8;
  }
}

uint64_t ActionIdentifier.description.getter()
{
  v0 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v6 = v5 - v4;
  v7 = type metadata accessor for ActionIdentifier();
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_17();
  v14 = OUTLINED_FUNCTION_36_6();
  sub_1BF943A54(v14, v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BF944EC4(v13, v6, type metadata accessor for SiriSuggestions.IntentQuery);
      MEMORY[0x1BFB5DE90](0x7551746E65746E69, 0xEC00000028797265);
      sub_1BF9B5378();
      MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
      v18 = 0;
      OUTLINED_FUNCTION_0_16();
      sub_1BF944BC8(v6, v19);
    }

    else
    {
      v23 = *(v13 + 8);
      v24 = *(v13 + 16);
      v25 = *(v13 + 24);
      v26 = *(v13 + 32);
      v27 = *(v13 + 40);
      v32[0] = *v13;
      v32[1] = v23;
      v32[2] = v24;
      v32[3] = v25;
      v32[4] = v26;
      v33 = v27;
      v28 = IntentType.description.getter();
      MEMORY[0x1BFB5DE90](v28);

      MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
      v29 = OUTLINED_FUNCTION_36();
      sub_1BF8F5AAC(v29, v30, v24, v25, v26, v27);
      return 0x6449646E65746E69;
    }
  }

  else
  {
    v20 = *v13;
    v21 = *(v13 + 8);
    sub_1BF9B5288();

    strcpy(v32, "suggestionId(");
    HIWORD(v32[1]) = -4864;
    v22 = OUTLINED_FUNCTION_36();
    MEMORY[0x1BFB5DE90](v22);

    MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
    return v32[0];
  }

  return v18;
}

BOOL static ActionIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v5 = OUTLINED_FUNCTION_72(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  v11 = type metadata accessor for ActionIdentifier();
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v67 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (v67 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A90, &unk_1BF9C1D00);
  OUTLINED_FUNCTION_72(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_9();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v67 - v28;
  v30 = v67 + *(v27 + 56) - v28;
  sub_1BF943A54(a1, v67 - v28, type metadata accessor for ActionIdentifier);
  sub_1BF943A54(a2, v30, type metadata accessor for ActionIdentifier);
  OUTLINED_FUNCTION_36();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_17();
    sub_1BF943A54(v29, v22, v37);
    v39 = *v22;
    v38 = v22[1];
    OUTLINED_FUNCTION_49_2();
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_16:
      sub_1BF8DFBF0(v29, &qword_1EBDE9A90, &unk_1BF9C1D00);
      return 0;
    }

    if (v39 == *v30 && v38 == *(v30 + 1))
    {
      v65 = *(v30 + 1);
    }

    else
    {
      OUTLINED_FUNCTION_36_6();
      v64 = sub_1BF9B56D8();

      if ((v64 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_1_17();
    sub_1BF943A54(v29, v17, v40);
    v42 = *v17;
    v41 = *(v17 + 1);
    v44 = *(v17 + 2);
    v43 = *(v17 + 3);
    v45 = *(v17 + 4);
    v46 = v17[40];
    OUTLINED_FUNCTION_49_2();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1BF8F5AAC(v42, v41, v44, v43, v45, v46);
      goto LABEL_16;
    }

    v47 = v45;
    v48 = v43;
    v49 = v44;
    v50 = v41;
    v51 = v42;
    v52 = *v30;
    v53 = *(v30 + 1);
    v55 = *(v30 + 2);
    v54 = *(v30 + 3);
    v56 = *(v30 + 4);
    v57 = v30[40];
    v67[1] = v51;
    v67[2] = v50;
    v70 = v51;
    v71 = v50;
    v67[3] = v49;
    v67[4] = v48;
    v72 = v49;
    v73 = v48;
    v67[5] = v47;
    v74 = v47;
    v68 = v46;
    v75 = v46;
    v58 = IntentType.toString()();
    v69 = v52;
    v70 = v52;
    v71 = v53;
    v72 = v55;
    v73 = v54;
    v74 = v56;
    v75 = v57;
    v59 = IntentType.toString()();
    if (v58._countAndFlagsBits != v59._countAndFlagsBits || v58._object != v59._object)
    {
      OUTLINED_FUNCTION_49_2();
      v61 = sub_1BF9B56D8();

      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_55_3();
      if (v61)
      {
        goto LABEL_26;
      }

LABEL_23:
      OUTLINED_FUNCTION_5_13();
      return 0;
    }

    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_55_3();
LABEL_26:
    OUTLINED_FUNCTION_5_13();
    return 1;
  }

  OUTLINED_FUNCTION_1_17();
  sub_1BF943A54(v29, v20, v32);
  OUTLINED_FUNCTION_49_2();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_16();
    sub_1BF944BC8(v20, v62);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_3_18();
  sub_1BF944EC4(v30, v10, v33);
  v34 = OUTLINED_FUNCTION_36_6();
  v36 = static SiriSuggestions.IntentQuery.== infix(_:_:)(v34, v35);
  sub_1BF944BC8(v10, type metadata accessor for SiriSuggestions.IntentQuery);
  sub_1BF944BC8(v20, type metadata accessor for SiriSuggestions.IntentQuery);
  OUTLINED_FUNCTION_5_13();
  return v36;
}

void Intent.getType()()
{
  v2 = OUTLINED_FUNCTION_31_8();
  if (v3)
  {
    v17 = v2;
    v18 = *(v1 + 8);
    v19 = *(v1 + 16);
    if (v3 == 1)
    {
      LOBYTE(v20) = 1;
    }

    else
    {
      LOBYTE(v20) = 2;
    }

    v4 = sub_1BF9415EC(v2, *(v1 + 8), *(v1 + 16), &v21);
    OUTLINED_FUNCTION_53_4(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18, v19, v20, v12, v21, v22);
    *(v0 + 40) = 2;
  }

  else
  {
    v13 = [v2 typeName];
    v14 = sub_1BF9B4AA8();
    v16 = v15;

    *v0 = v14;
    *(v0 + 8) = v16;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 16) = 0;
    *(v0 + 40) = 0;
  }
}

uint64_t sub_1BF9415EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v51 = a4;
  type metadata accessor for AppIntentFilter.Builder();
  swift_initStackObject();
  sub_1BF988CD4();
  v7 = [a1 identifier];
  v8 = sub_1BF9B4AA8();
  v10 = v9;

  v11 = sub_1BF988720(v8, v10);

  if (a3)
  {
    v12 = sub_1BF9886D8(a2, a3);

    v11 = v12;
  }

  v13 = [a1 parameters];
  sub_1BF8BE93C(0, &qword_1EBDE9650, 0x1E69AC948);
  v14 = sub_1BF9B4D08();

  v55 = v14;
  result = sub_1BF965210(v14);
  v54 = result;
  if (result)
  {
    if (v54 >= 1)
    {
      v17 = 0;
      v53 = v55 & 0xC000000000000001;
      v18 = 0x1E80F9000uLL;
      *&v16 = 136315394;
      v52 = v16;
      while (1)
      {
        if (v53)
        {
          v19 = MEMORY[0x1BFB5E5E0](v17, v55);
        }

        else
        {
          v19 = *(v55 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = [v19 identifier];
        v22 = sub_1BF9B4AA8();
        v24 = v23;

        v25 = [v20 *(v18 + 3544)];
        if (v25)
        {
          v26 = v25;
          ObjectType = swift_getObjectType();
          v62 = &protocol witness table for LNValue;
          *&v60 = v26;
          swift_beginAccess();
          sub_1BF8C2C9C(&v60, v56);
          v27 = v57;
          v28 = v58;
          v29 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
          v30 = *(*(v27 - 8) + 64);
          MEMORY[0x1EEE9AC00](v29);
          v32 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v33 + 16))(v32);
          v34 = v26;

          v35 = v27;
          v18 = 0x1E80F9000;
          sub_1BF93790C(v32, v22, v24, (v11 + 48), v35, v28);
          __swift_destroy_boxed_opaque_existential_1(v56);

          swift_endAccess();
        }

        else
        {
          if (qword_1EDBF5568 != -1)
          {
            swift_once();
          }

          v36 = sub_1BF9B47C8();
          __swift_project_value_buffer(v36, qword_1EDBF5570);

          v37 = v20;
          v34 = sub_1BF9B47A8();
          v38 = sub_1BF9B5038();

          if (os_log_type_enabled(v34, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v56[0] = v40;
            *v39 = v52;
            v41 = sub_1BF8DE810(v22, v24, v56);

            *(v39 + 4) = v41;
            *(v39 + 12) = 2080;
            v42 = [v37 value];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 value];
              sub_1BF9B51C8();
              swift_unknownObjectRelease();
              __swift_project_boxed_opaque_existential_1(&v60, ObjectType);
              DynamicType = swift_getDynamicType();
              __swift_destroy_boxed_opaque_existential_1(&v60);
              v59 = DynamicType;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AF0, &qword_1BF9C22C8);
              v46 = sub_1BF9B4B08();
              v48 = v47;
            }

            else
            {
              v46 = 0x756C61566F4E2323;
              v48 = 0xEE00232374655365;
            }

            v49 = sub_1BF8DE810(v46, v48, v56);

            *(v39 + 14) = v49;
            _os_log_impl(&dword_1BF8B8000, v34, v38, "Excluding parameter %s in IntentType as it does not conform to DisplayRepresentable - type: %s", v39, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB5F320](v40, -1, -1);
            MEMORY[0x1BFB5F320](v39, -1, -1);

            v18 = 0x1E80F9000;
            goto LABEL_18;
          }
        }

LABEL_18:
        if (v54 == ++v17)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    sub_1BF9888CC(v51);
  }

  return result;
}

SiriSuggestionsKit::AppIdDetails_optional __swiftcall Intent.getAppIdDetails()()
{
  v2 = OUTLINED_FUNCTION_31_8();
  if (v3)
  {
    v11 = *(v1 + 8);
    Intent.getType()();
    IntentType.getAppIdDetails()();
    sub_1BF8F5AAC(v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v4 = sub_1BF944D50(v2);
    if (v5)
    {
      v8 = v4;
      v9 = v5;
      v4 = sub_1BF9B4C08();
      if (v4)
      {
        v10 = 0;
      }

      else
      {
        v10 = 2;
      }

      *v0 = v8;
      *(v0 + 8) = v9;
      *(v0 + 16) = v10;
    }

    else
    {
      *v0 = 0;
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
    }
  }

  result.value.appId._object = v5;
  result.value.appId._countAndFlagsBits = v4;
  result.is_nil = v7;
  result.value.party = v6;
  return result;
}

void Intent.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B20, &qword_1BF9B8638);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF8DF5A8();
  sub_1BF9B5868();
  if (!v0)
  {
    v12 = sub_1BF9B5568();
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      if (v13)
      {
        sub_1BF8D8230();
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v15 = v24;
          v25 = *(v7 + 8);
          swift_unknownObjectRetain();
          v26 = OUTLINED_FUNCTION_26();
          v25(v26);
          swift_unknownObjectRelease();
          v20 = v33;
          v19 = v32;
          goto LABEL_12;
        }
      }

      else
      {
        sub_1BF8D7F58();
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          v16 = *(v7 + 8);
          v17 = OUTLINED_FUNCTION_26();
          v18(v17);
          v19 = 0;
          v20 = 0;
LABEL_12:
          *v4 = v15;
          *(v4 + 8) = v19;
          *(v4 + 16) = v20;
          *(v4 + 24) = v13;
          goto LABEL_9;
        }
      }

      swift_unknownObjectRelease();
      v27 = sub_1BF9B5308();
      swift_allocError();
      v29 = v28;
      sub_1BF9B54B8();
      sub_1BF9B52F8();
      v30 = *MEMORY[0x1E69E6B00];
      OUTLINED_FUNCTION_11(v27);
      (*(v31 + 104))(v29);
    }

    else
    {

      sub_1BF944DAC();
      swift_allocError();
    }

    swift_willThrow();
    v21 = *(v7 + 8);
    v22 = OUTLINED_FUNCTION_26();
    v23(v22);
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_37();
}

void Intent.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B18, &qword_1BF9B8630);
  OUTLINED_FUNCTION_1(v21);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = *v0;
  v17 = *(v0 + 8);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF8DF5A8();
  sub_1BF9B5898();
  if (v12)
  {
    v19 = &type metadata for Intent.TransportAppIntent;
    v14 = sub_1BF944E00();
    v18[0] = v10;
    v18[1] = v17;
    v20 = v14;
    v18[2] = v11;
  }

  else
  {
    v19 = &type metadata for NSCodingAdaptor;
    v20 = sub_1BF920C90();
    v18[0] = v10;
  }

  v15 = v10;
  sub_1BF8DA4AC();
  (*(v4 + 8))(v9, v21);
  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_37();
}

void sub_1BF9420EC()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AD8, &qword_1BF9C22B8);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v13 = *v0;
  v12 = v0[1];
  v15[1] = v0[2];
  v15[2] = v12;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF9455BC();
  swift_unknownObjectRetain();
  sub_1BF9B5898();
  v17 = 0;
  sub_1BF920C90();
  sub_1BF9B5638();
  swift_unknownObjectRelease();
  if (!v1)
  {
    v16 = 1;
    sub_1BF9B55F8();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_37();
}

void sub_1BF942268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AE8, &qword_1BF9C22C0);
  OUTLINED_FUNCTION_1(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1BF9455BC();
  sub_1BF9B5868();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1BF920BE8();
    sub_1BF9B5558();
    v22 = sub_1BF9B5518();
    v24 = v23;
    v25 = *(v17 + 8);
    v26 = OUTLINED_FUNCTION_22();
    v27(v26);
    *v14 = a10;
    v14[1] = v22;
    v14[2] = v24;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1(v12);

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF94244C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E496E69 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
    if (v6 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E65746E49707061 && a2 == 0xEB00000000325674)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_70();

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

uint64_t sub_1BF942544(char a1)
{
  if (a1)
  {
    return 0x6E65746E49707061;
  }

  else
  {
    return 0x746E65746E496E69;
  }
}

uint64_t sub_1BF9425A8(uint64_t a1)
{
  v2 = sub_1BF9455BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9425E4(uint64_t a1)
{
  v2 = sub_1BF9455BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF942658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF94244C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF942680(uint64_t a1)
{
  v2 = sub_1BF8DF5A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9426BC(uint64_t a1)
{
  v2 = sub_1BF8DF5A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Intent.IntentDecodingErrors.hashValue.getter()
{
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](0);
  return sub_1BF9B57E8();
}

uint64_t Intent.description.getter()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    v2 = *(v0 + 8);
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_57_4();

    OUTLINED_FUNCTION_20_10();
    v8 = [v1 identifier];
    v9 = sub_1BF9B4AA8();
    v11 = v10;

    MEMORY[0x1BFB5DE90](v9, v11);

    MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
    v12 = OUTLINED_FUNCTION_36();
    MEMORY[0x1BFB5DE90](v12);
  }

  else
  {
    v14 = 0x6E65746E496E692ELL;
    v4 = [v1 typeName];
    v5 = sub_1BF9B4AA8();
    v7 = v6;

    MEMORY[0x1BFB5DE90](v5, v7);
  }

  return v14;
}

uint64_t static Intent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
      v25 = OUTLINED_FUNCTION_4_16();
      sub_1BF90DA94(v25, v26, v27, 0);
      v28 = OUTLINED_FUNCTION_2_19();
      sub_1BF90DA94(v28, v29, v30, 0);
      v17 = sub_1BF9B50B8();
      v31 = OUTLINED_FUNCTION_2_19();
      sub_1BF90D8B8(v31, v32, v33, 0);
      v21 = OUTLINED_FUNCTION_4_16();
      v24 = 0;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v5 != 1)
  {
    if (v9 == 2)
    {
      sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
      v34 = OUTLINED_FUNCTION_4_16();
      sub_1BF90DA94(v34, v35, v36, 2);
      v37 = OUTLINED_FUNCTION_2_19();
      sub_1BF90DA94(v37, v38, v39, 2);
      if (sub_1BF9B50B8())
      {
        if (v2 != v7 || v4 != v8)
        {
          OUTLINED_FUNCTION_19_0();
          v17 = sub_1BF9B56D8();
          v41 = OUTLINED_FUNCTION_2_19();
          sub_1BF90D8B8(v41, v42, v43, 2);
          v21 = OUTLINED_FUNCTION_4_16();
          v24 = 2;
          goto LABEL_19;
        }

        v71 = OUTLINED_FUNCTION_2_19();
        sub_1BF90D8B8(v71, v72, v73, 2);
        OUTLINED_FUNCTION_47_2();
        sub_1BF90D8B8(v74, v75, v76, 2);
        return 1;
      }

      v62 = OUTLINED_FUNCTION_2_19();
      sub_1BF90D8B8(v62, v63, v64, 2);
      v54 = OUTLINED_FUNCTION_4_16();
      v57 = 2;
LABEL_21:
      sub_1BF90D8B8(v54, v55, v56, v57);
      return 0;
    }

LABEL_20:
    v45 = OUTLINED_FUNCTION_4_16();
    sub_1BF90DA94(v45, v46, v47, v9);
    v48 = OUTLINED_FUNCTION_2_19();
    sub_1BF90DA94(v48, v49, v50, v5);
    v51 = OUTLINED_FUNCTION_2_19();
    sub_1BF90D8B8(v51, v52, v53, v5);
    v54 = OUTLINED_FUNCTION_4_16();
    v57 = v9;
    goto LABEL_21;
  }

  if (v9 != 1)
  {
    goto LABEL_20;
  }

  sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
  v10 = OUTLINED_FUNCTION_4_16();
  sub_1BF90DA94(v10, v11, v12, 1);
  v13 = OUTLINED_FUNCTION_2_19();
  sub_1BF90DA94(v13, v14, v15, 1);
  if ((sub_1BF9B50B8() & 1) == 0)
  {
    v59 = OUTLINED_FUNCTION_2_19();
    sub_1BF90D8B8(v59, v60, v61, 1);
    v54 = OUTLINED_FUNCTION_4_16();
    v57 = 1;
    goto LABEL_21;
  }

  if (v2 != v7 || v4 != v8)
  {
    OUTLINED_FUNCTION_19_0();
    v17 = sub_1BF9B56D8();
    v18 = OUTLINED_FUNCTION_2_19();
    sub_1BF90D8B8(v18, v19, v20, 1);
    v21 = OUTLINED_FUNCTION_4_16();
    v24 = 1;
LABEL_19:
    sub_1BF90D8B8(v21, v22, v23, v24);
    return v17 & 1;
  }

  v58 = 1;
  v65 = OUTLINED_FUNCTION_2_19();
  sub_1BF90D8B8(v65, v66, v67, 1);
  OUTLINED_FUNCTION_47_2();
  sub_1BF90D8B8(v68, v69, v70, 1);
  return v58;
}

uint64_t Context.getIntentParameter(name:)()
{
  OUTLINED_FUNCTION_26_7();
  v3 = v2;
  Context.getTargetOwner()(v4, v5, v13);
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v12[3] = v6;
  v12[4] = *(v7 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_11(v6);
  (*(v8 + 16))();
  OUTLINED_FUNCTION_19_0();
  v9 = sub_1BF942CAC();
  Context.getParam(for:key:)(v12, v9, v10, v1, v0, v3);

  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t Context.getIntentType()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Context.getTargetOwner()(a1, a2, v24);
  v6 = v25;
  v7 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v23[3] = v6;
  v23[4] = *(v7 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v23);
  OUTLINED_FUNCTION_11(v6);
  v9 = *(v8 + 16);
  OUTLINED_FUNCTION_47_2();
  v10();
  OUTLINED_FUNCTION_6_11();
  v18 = OUTLINED_FUNCTION_44_4(v11, v12, 0xEC00000065707954, v13, v14, v15, v16, v17, v23[0]);
  Context.getParam(for:key:)(v18, v19, v20, a1, a2, v21);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (!v28)
  {
    result = sub_1BF8DFBF0(v27, &qword_1EBDE9208, &unk_1BF9C2A50);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_43_4();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_1BF942E44()
{
  OUTLINED_FUNCTION_26_7();
  v5 = v4;
  Context.getTargetOwner()(v6, v7, v28);
  v8 = v29;
  v9 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v27[3] = v8;
  v27[4] = *(v9 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v27);
  OUTLINED_FUNCTION_11(v8);
  (*(v10 + 16))();
  OUTLINED_FUNCTION_6_11();
  v19 = OUTLINED_FUNCTION_44_4(v11, v12, v13, v14, v15, v16, v17, v18, v27[0]);
  Context.getParam(for:key:)(v19, v20, v1, v3, v2, v21);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (v32)
  {
    v22 = v0(0);
    OUTLINED_FUNCTION_43_4();
    v23 = swift_dynamicCast() ^ 1;
    v24 = v5;
    v25 = v22;
  }

  else
  {
    sub_1BF8DFBF0(v31, &qword_1EBDE9208, &unk_1BF9C2A50);
    v25 = v0(0);
    v24 = v5;
    v23 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v24, v23, 1, v25);
}

Swift::String_optional __swiftcall Context.getIntentTitleFallback()()
{
  v2 = v1;
  v3 = v0;
  Context.getTargetOwner()(v0, v1, v31);
  v4 = v32;
  v5 = __swift_project_boxed_opaque_existential_1(v31, v32);
  OUTLINED_FUNCTION_41_3(v5, v6, v7, v8, v9, v10, v11, v12, v30[0], v30[1], v30[2], v30[3], v30[4]);
  OUTLINED_FUNCTION_11(v4);
  v14 = (*(v13 + 16))();
  v22 = OUTLINED_FUNCTION_44_4(v14, v15, v16, v17, v18, v19, v20, v21, v30[0]);
  Context.getParam(for:key:)(v22, 0xD000000000000015, v23 | 0x8000000000000000, v3, v2, v24);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  if (v34)
  {
    OUTLINED_FUNCTION_43_4();
    v25 = swift_dynamicCast();
    v26 = v25 == 0;
    if (v25)
    {
      v27 = v31[0];
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = 0;
    }

    else
    {
      v28 = v31[1];
    }
  }

  else
  {
    sub_1BF8DFBF0(v33, &qword_1EBDE9208, &unk_1BF9C2A50);
    v27 = 0;
    v28 = 0;
  }

  result.value._object = v28;
  result.value._countAndFlagsBits = v27;
  return result;
}

uint64_t Context.getIntentType()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AA8, &qword_1BF9C1D10);
  v3 = OUTLINED_FUNCTION_72(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - v9;
  Context.getIntentQuery()();
  sub_1BF944E54(v10, v8);
  v11 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    v12 = OUTLINED_FUNCTION_36_6();
    sub_1BF8DFBF0(v12, v13, &qword_1BF9C1D10);
    result = sub_1BF8DFBF0(v8, &qword_1EBDE9AA8, &qword_1BF9C1D10);
    v15 = 0;
    v16 = 0uLL;
    v17 = -1;
    v18 = 0uLL;
  }

  else
  {
    SiriSuggestions.IntentQuery.toV1Representation()(v20);
    sub_1BF8DFBF0(v10, &qword_1EBDE9AA8, &qword_1BF9C1D10);
    OUTLINED_FUNCTION_0_16();
    result = sub_1BF944BC8(v8, v19);
    v16 = v20[0];
    v18 = v20[1];
    v15 = v21;
    v17 = v22;
  }

  *a1 = v16;
  *(a1 + 16) = v18;
  *(a1 + 32) = v15;
  *(a1 + 40) = v17;
  return result;
}

Swift::OpaquePointer_optional __swiftcall Context.getSuggestionParameters()()
{
  v2 = v1;
  v3 = v0;
  Context.getTargetOwner()(v0, v1, v28);
  v4 = v29;
  v5 = __swift_project_boxed_opaque_existential_1(v28, v29);
  OUTLINED_FUNCTION_41_3(v5, v6, v7, v8, v9, v10, v11, v12, v27[0], v27[1], v27[2], v27[3], v27[4]);
  OUTLINED_FUNCTION_11(v4);
  v14 = (*(v13 + 16))();
  v22 = OUTLINED_FUNCTION_44_4(v14, v15, v16, v17, v18, v19, v20, v21, v27[0]);
  Context.getParam(for:key:)(v22, 0xD000000000000012, v23 | 0x8000000000000000, v3, v2, v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A88, &qword_1BF9C1CF0);
    OUTLINED_FUNCTION_43_4();
    if (swift_dynamicCast())
    {
      v26 = v28[0];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    sub_1BF8DFBF0(v30, &qword_1EBDE9208, &unk_1BF9C2A50);
    v26 = 0;
  }

  result.value._rawValue = v26;
  result.is_nil = v25;
  return result;
}

uint64_t Context.setIntentParam(name:value:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Context.getTargetOwner()(a4, a5, v19);
  v8 = v20;
  v9 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v18[3] = v8;
  v18[4] = *(v9 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v18);
  OUTLINED_FUNCTION_11(v8);
  (*(v10 + 16))();
  OUTLINED_FUNCTION_22();
  v11 = sub_1BF942CAC();
  v13 = v12;
  v14 = a3[3];
  __swift_project_boxed_opaque_existential_1(a3, v14);
  v17[3] = v14;
  __swift_allocate_boxed_opaque_existential_1Tm(v17);
  OUTLINED_FUNCTION_11(v14);
  (*(v15 + 16))();
  Context.setParam(for:key:value:)(v18, v11, v13, v17, a4, a5);

  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t GenerationContext.addIntent(_:)()
{
  v1 = OUTLINED_FUNCTION_48_2();
  v2 = type metadata accessor for SiriSuggestions.Intent(v1);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_17();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_36();
  v9 = GenerationContext.getIntents()(v7, v8);
  OUTLINED_FUNCTION_15_13();
  v10 = OUTLINED_FUNCTION_22();
  sub_1BF943A54(v10, v11, v12);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = *(v9 + 16);
    v20 = OUTLINED_FUNCTION_28_0();
    sub_1BF8DDBD4(v20, v21, v22, v9);
    v9 = v23;
  }

  v13 = *(v9 + 24);
  if (*(v9 + 16) >= v13 >> 1)
  {
    v24 = OUTLINED_FUNCTION_34_5(v13);
    sub_1BF8DDBD4(v24, v25, v26, v27);
  }

  OUTLINED_FUNCTION_23_10();
  sub_1BF944EC4(v6, v14, type metadata accessor for SiriSuggestions.Intent);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB0, &qword_1BF9C1D18);
  v16 = OUTLINED_FUNCTION_21_9(v15);
  v17(v16);
  OUTLINED_FUNCTION_51_3();
  sub_1BF9326D8();
  return v0(v28, 0);
}

uint64_t GenerationContext.addIntentQuery(_:)()
{
  v1 = OUTLINED_FUNCTION_48_2();
  v2 = type metadata accessor for SiriSuggestions.IntentQuery(v1);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_17();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_36();
  v9 = GenerationContext.getIntentQueries()(v7, v8);
  OUTLINED_FUNCTION_16_9();
  v10 = OUTLINED_FUNCTION_22();
  sub_1BF943A54(v10, v11, v12);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = *(v9 + 16);
    v21 = OUTLINED_FUNCTION_28_0();
    sub_1BF8DDAE0(v21, v22, v23, v9);
    v9 = v24;
  }

  v13 = *(v9 + 24);
  if (*(v9 + 16) >= v13 >> 1)
  {
    v25 = OUTLINED_FUNCTION_34_5(v13);
    sub_1BF8DDAE0(v25, v26, v27, v28);
  }

  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_3_18();
  sub_1BF944EC4(v6, v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB8, &qword_1BF9C1D20);
  v17 = OUTLINED_FUNCTION_21_9(v16);
  v18(v17);
  OUTLINED_FUNCTION_51_3();
  sub_1BF9326D8();
  return v0(v29, 0);
}

uint64_t Context.setIntentType(_:)()
{
  OUTLINED_FUNCTION_7();
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  *(v1 + 128) = v3;
  *(v1 + 152) = *v4;
  *(v1 + 192) = *(v4 + 16);
  v5 = *(*(v2 + 8) + 8);
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v6 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF943810()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 192);
  v7 = OUTLINED_FUNCTION_22();
  Context.getTargetOwner()(v7, v8, v9);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  *(v0 + 80) = v10;
  OUTLINED_FUNCTION_59_4(*(v11 + 8));
  OUTLINED_FUNCTION_11(v10);
  (*(v12 + 16))();
  *(v0 + 120) = &type metadata for SiriSuggestions.IntentType;
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  *(v0 + 112) = v6;
  v13 = OUTLINED_FUNCTION_88();
  sub_1BF9439F0(v13, v14, v6);
  OUTLINED_FUNCTION_6_11();
  Context.setParam(for:key:value:)((v0 + 56), v15, 0xEC00000065707954, (v0 + 96), v5, v4);
  OUTLINED_FUNCTION_27_3((v0 + 96));
  v16 = *(v4 + 16);
  v17 = OUTLINED_FUNCTION_22();
  v19 = v18(v17);
  v21 = v20;
  *(v0 + 168) = v19;
  *(v0 + 176) = v20;
  *(v0 + 184) = swift_getObjectType();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = v6;
  v22 = *(*(v21 + 8) + 8);
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v23 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1BF943988()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 168);
  GenerationContext.addIntentType(_:)(v0 + 16, *(v0 + 184), *(v0 + 176));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_77();

  return v2();
}

uint64_t sub_1BF9439F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t type metadata accessor for ActionIdentifier()
{
  result = qword_1EDBF3290;
  if (!qword_1EDBF3290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF943A54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_43();
  v8(v7);
  return a2;
}

uint64_t GenerationContext.addIntentType(_:)(uint64_t a1, uint64_t (*a2)(void *, void), uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = GenerationContext.getIntentTypes()(a2, a3);
  sub_1BF9439F0(v5, v6, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = *(v8 + 16);
    OUTLINED_FUNCTION_28_0();
    sub_1BF8DDB20();
    v8 = v13;
  }

  v9 = *(v8 + 16);
  if (v9 >= *(v8 + 24) >> 1)
  {
    sub_1BF8DDB20();
    v8 = v14;
  }

  *(v8 + 16) = v9 + 1;
  v10 = v8 + 24 * v9;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  v15[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AC0, &qword_1BF9C1D28);
  v15[4] = v8;
  (*(*(a3 + 8) + 32))(v15, a2);
  OUTLINED_FUNCTION_51_3();
  sub_1BF9326D8();
  return a2(v15, 0);
}

uint64_t Context.setIntentTitleFallback(_:)()
{
  OUTLINED_FUNCTION_7();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[16] = v5;
  v6 = *(*(v2 + 8) + 8);
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v7 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF943C78()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = OUTLINED_FUNCTION_88();
  Context.getTargetOwner()(v6, v7, v8);
  v9 = v0[5];
  v10 = v0[6];
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_59_4(*(v10 + 8));
  OUTLINED_FUNCTION_11(v9);
  (*(v11 + 16))();
  v0[15] = MEMORY[0x1E69E6158];
  v0[12] = v5;
  v0[13] = v4;

  OUTLINED_FUNCTION_58_3(v0 + 7, 0xD000000000000015, 0x80000001BF9CC860, v0 + 12);
  OUTLINED_FUNCTION_27_3(v0 + 12);
  OUTLINED_FUNCTION_77();

  return v12();
}

uint64_t Context.setIntentType(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  v6 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  OUTLINED_FUNCTION_72(v6);
  v8 = *(v7 + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v9 = *(a1 + 16);
  *(v4 + 48) = *a1;
  *(v4 + 64) = v9;
  *(v4 + 80) = *(a1 + 32);
  *(v4 + 112) = *(a1 + 40);
  OUTLINED_FUNCTION_45_4();
  v11 = sub_1BF9B4E28();
  *(v4 + 88) = v11;
  *(v4 + 96) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BF943E50, v11, v10);
}

uint64_t sub_1BF943E50()
{
  OUTLINED_FUNCTION_45();
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  v9 = *(v0 + 80);
  v10 = *(v0 + 112);
  IntentType.toV2Reprensentation()(*(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1BF943F08;
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return Context.setIntentQuery(_:)();
}

uint64_t sub_1BF943F08()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BF94401C, v6, v5);
}

uint64_t sub_1BF94401C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_0_16();
  sub_1BF944BC8(v1, v2);

  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t GenerationContext.getIntentTypes()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_9(a1, a2);
  v3();
  OUTLINED_FUNCTION_29_4();
  sub_1BF925088(0xD000000000000016, v4, v2, v5);

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AC0, &qword_1BF9C1D28);
    if (OUTLINED_FUNCTION_25_7())
    {
      return v7;
    }
  }

  else
  {
    sub_1BF8DFBF0(v8, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t GenerationContext.getIntents()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_9(a1, a2);
  v3();
  OUTLINED_FUNCTION_29_4();
  sub_1BF925088(0xD000000000000012, v4, v2, v5);

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB0, &qword_1BF9C1D18);
    if (OUTLINED_FUNCTION_25_7())
    {
      return v7;
    }
  }

  else
  {
    sub_1BF8DFBF0(v8, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t GenerationContext.getIntentQueries()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_9(a1, a2);
  v3();
  OUTLINED_FUNCTION_29_4();
  sub_1BF925088(0xD000000000000017, v4, v2, v5);

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB8, &qword_1BF9C1D20);
    if (OUTLINED_FUNCTION_25_7())
    {
      return v7;
    }
  }

  else
  {
    sub_1BF8DFBF0(v8, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t static ActionIdentifier.< infix(_:_:)()
{
  v0 = ActionIdentifier.description.getter();
  v2 = v1;
  if (v0 == ActionIdentifier.description.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_88();
    v5 = sub_1BF9B56D8();
  }

  return v5 & 1;
}

void ActionIdentifier.hash(into:)()
{
  v0 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v1 = OUTLINED_FUNCTION_72(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v6 = v5 - v4;
  v7 = type metadata accessor for ActionIdentifier();
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_17();
  v14 = OUTLINED_FUNCTION_36_6();
  sub_1BF943A54(v14, v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v20 = *v13;
    v21 = *(v13 + 8);
    MEMORY[0x1BFB5EAC0](0);
    OUTLINED_FUNCTION_36();
    sub_1BF9B4B48();

    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v22 = *v13;
    v23 = *(v13 + 8);
    v24 = *(v13 + 16);
    v25 = *(v13 + 24);
    v26 = *(v13 + 32);
    v27 = *(v13 + 40);
    MEMORY[0x1BFB5EAC0](2);
    IntentType.toString()();
    OUTLINED_FUNCTION_29();

    sub_1BF8F5AAC(v22, v23, v24, v25, v26, v27);
    return;
  }

  OUTLINED_FUNCTION_3_18();
  sub_1BF944EC4(v13, v6, v18);
  MEMORY[0x1BFB5EAC0](1);
  v19 = *(v6 + 8);
  if (!*(v6 + 24))
  {
    if (!*(v6 + 16))
    {
      sub_1BF9B57C8();
      goto LABEL_11;
    }

    sub_1BF9B57C8();
    goto LABEL_10;
  }

  if (*(v6 + 24) != 1)
  {
LABEL_10:
    sub_1BF9B4B48();
    goto LABEL_11;
  }

  v29 = *(v6 + 8);
  v30 = *(v6 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9B4B08();
  OUTLINED_FUNCTION_29();

LABEL_11:
  OUTLINED_FUNCTION_0_16();
  sub_1BF944BC8(v6, v28);
}

uint64_t ActionIdentifier.hashValue.getter()
{
  sub_1BF9B57A8();
  ActionIdentifier.hash(into:)();
  return sub_1BF9B57E8();
}

uint64_t sub_1BF944584()
{
  sub_1BF9B57A8();
  ActionIdentifier.hash(into:)();
  return sub_1BF9B57E8();
}

id SuggestionsIntent.intentName.getter()
{
  v1 = OUTLINED_FUNCTION_42_5();
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  v7 = *(v0 + 56);
  *(v3 + 40) = v7;
  return sub_1BF944F20(v1, v2, v4, v5, v6, v7);
}

uint64_t SuggestionsIntent.verb.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_43();
}

__n128 SuggestionsIntent.__allocating_init(intentName:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
  v4 = sub_1BF9B4988();
  OUTLINED_FUNCTION_17_1();
  v5 = swift_allocObject();
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  result = *a1;
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 80) = v4;
  return result;
}

uint64_t SuggestionsIntent.__allocating_init(intentName:verb:intentProps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_26();
  SuggestionsIntent.init(intentName:verb:intentProps:)(v7, v8, a3, a4);
  return v6;
}

uint64_t SuggestionsIntent.init(intentName:verb:intentProps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  v7 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  *(v4 + 80) = a4;
  return v4;
}

double sub_1BF94474C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1BF9447F4(v8);
  v4 = v9;
  v5 = v10;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

double sub_1BF944798(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a1 + 40);
  v9[0] = *a1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v10 = v7;
  sub_1BF944F20(v9[0], v2, v3, v4, v5, v7);
  *&result = sub_1BF94484C(v9).n128_u64[0];
  return result;
}

id sub_1BF9447F4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_42_5();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v1 + 56);
  *(a1 + 40) = v8;
  return sub_1BF944F20(v3, v4, v5, v6, v7, v8);
}

__n128 sub_1BF94484C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_42_5();
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  v7 = *(v1 + 56);
  *(v1 + 56) = v4;
  sub_1BF8F5AAC(v5, v8, v9, v10, v11, v7);
  return result;
}

uint64_t SuggestionsIntentBuilder.__allocating_init(intentName:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1();
  v2 = swift_allocObject();
  SuggestionsIntentBuilder.init(intentName:)(a1);
  return v2;
}

uint64_t SuggestionsIntentBuilder.init(intentName:)(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
  *(v1 + 80) = sub_1BF9B4988();
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return v1;
}

uint64_t sub_1BF9449BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1BF944A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF8D7914(a3, v4);
  swift_beginAccess();

  sub_1BF9328C4();
  swift_endAccess();
}

uint64_t sub_1BF944A88()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  swift_beginAccess();
  v9 = *(v0 + 80);
  type metadata accessor for SuggestionsIntent();
  v10 = swift_allocObject();
  *(v10 + 64) = v7;
  *(v10 + 72) = v6;
  *(v10 + 16) = v1;
  *(v10 + 24) = v2;
  *(v10 + 32) = v3;
  *(v10 + 40) = v4;
  *(v10 + 48) = v5;
  *(v10 + 56) = v8;
  *(v10 + 80) = v9;
  v11 = OUTLINED_FUNCTION_36();
  sub_1BF944F20(v11, v12, v3, v4, v5, v8);

  return v10;
}

uint64_t sub_1BF944B68()
{
  v1 = OUTLINED_FUNCTION_42_5();
  sub_1BF8F5AAC(v1, v2, v3, v4, v5, *(v0 + 56));
  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  return v0;
}

uint64_t SuggestionsIntentBuilder.__deallocating_deinit()
{
  SuggestionsIntentBuilder.deinit();
  v0 = OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF944BC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF944C50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1BF944CC4(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x1EEE69430](v2 > 1);
  }

  return result;
}

uint64_t sub_1BF944D08(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1BF944D50(void *a1)
{
  v1 = [a1 launchId];
  if (v1)
  {
    v2 = v1;
    sub_1BF9B4AA8();
    OUTLINED_FUNCTION_51_3();
  }

  return OUTLINED_FUNCTION_43();
}

unint64_t sub_1BF944DAC()
{
  result = qword_1EBDE9A98;
  if (!qword_1EBDE9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9A98);
  }

  return result;
}

unint64_t sub_1BF944E00()
{
  result = qword_1EBDE9AA0;
  if (!qword_1EBDE9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9AA0);
  }

  return result;
}

uint64_t sub_1BF944E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AA8, &qword_1BF9C1D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF944EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_43();
  v8(v7);
  return a2;
}

id sub_1BF944F20(id result, id a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 4:
      goto LABEL_3;
    case 1:

      result = result;
      break;
    case 2:
    case 3:

LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BF944FE8()
{
  result = qword_1EBDE9AC8;
  if (!qword_1EBDE9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9AC8);
  }

  return result;
}

unint64_t sub_1BF94503C()
{
  result = qword_1EDBF32A0;
  if (!qword_1EDBF32A0)
  {
    type metadata accessor for ActionIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32A0);
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

uint64_t sub_1BF9450B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t sub_1BF9450F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

_BYTE *storeEnumTagSinglePayload for Intent.IntentDecodingErrors(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF945200()
{
  result = type metadata accessor for SiriSuggestions.IntentQuery(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Intent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9454B8()
{
  result = qword_1EBDE9AD0;
  if (!qword_1EBDE9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9AD0);
  }

  return result;
}

unint64_t sub_1BF945510()
{
  result = qword_1EDBF4120;
  if (!qword_1EDBF4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4120);
  }

  return result;
}

unint64_t sub_1BF945568()
{
  result = qword_1EDBF4128;
  if (!qword_1EDBF4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4128);
  }

  return result;
}

unint64_t sub_1BF9455BC()
{
  result = qword_1EBDE9AE0;
  if (!qword_1EBDE9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9AE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Intent.TransportAppIntent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9456F0()
{
  result = qword_1EBDE9AF8;
  if (!qword_1EBDE9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9AF8);
  }

  return result;
}

unint64_t sub_1BF945748()
{
  result = qword_1EBDE9B00;
  if (!qword_1EBDE9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9B00);
  }

  return result;
}

unint64_t sub_1BF9457A0()
{
  result = qword_1EBDE9B08;
  if (!qword_1EBDE9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9B08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{
  *(v3 - 72) = a1;
  *(v3 - 96) = v2;
  v4 = *(*(v1 + 8) + 32);
  return v3 - 128;
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_31_8()
{
  result = *v0;
  v2 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_3(void *a1, uint64_t a2, uint64_t a3, void *a4)
{

  return Context.setParam(for:key:value:)(a1, a2, a3, a4, v5, v4);
}

uint64_t static AsyncAwaitUtils.run<A, B>(elements:timeoutBehaviour:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 24) = a1;
  *(v6 + 64) = *a2;
  *(v6 + 80) = *(a2 + 16);
  return OUTLINED_FUNCTION_1_18(sub_1BF9458F4, 0);
}

uint64_t sub_1BF9458F4()
{
  OUTLINED_FUNCTION_45();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_87_0();
  sub_1BF9B4E08();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = *(v0 + 32);
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v6;
  *(v7 + 40) = v4;
  *(v7 + 48) = v2;
  *(v7 + 56) = v1;
  *(v7 + 64) = v8;
  v9 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 96) = v10;
  *v10 = v11;
  v10[1] = sub_1BF945A0C;
  OUTLINED_FUNCTION_99_0();

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1BF945A0C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF945B28()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_77();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t Sequence.asyncMap<A>(_:)()
{
  OUTLINED_FUNCTION_65();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = *(*(v4 - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_53_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[10] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_1(AssociatedTypeWitness);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_87_0();
  v12 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_72(v12);
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_2_0();
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_53_5();
  v18 = swift_getAssociatedTypeWitness();
  v1[16] = v18;
  OUTLINED_FUNCTION_10_11(v18);
  v1[17] = v19;
  v21 = *(v20 + 64);
  v1[18] = OUTLINED_FUNCTION_63_1();
  v22 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1BF945D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v11 = v10[18];
  v13 = v10[14];
  v12 = v10[15];
  v15 = v10[7];
  v14 = v10[8];
  v17 = v10[5];
  v16 = v10[6];
  v10[2] = sub_1BF9B4938();
  v18 = *(v13 + 16);
  v19 = OUTLINED_FUNCTION_36();
  v20(v19);
  OUTLINED_FUNCTION_68_2();
  sub_1BF9B4C68();
  v21 = v10[18];
  v22 = v10[16];
  v23 = v10[13];
  v24 = v10[10];
  v25 = v10[7];
  v26 = v10[5];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_19_11();
  if (v28)
  {
    v29 = v10[18];
    v31 = v10[15];
    v30 = v10[16];
    v33 = v10[12];
    v32 = v10[13];
    v34 = v10[9];
    v35 = OUTLINED_FUNCTION_57_5(v10[17]);
    v36(v35);
    OUTLINED_FUNCTION_107_0();

    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_56_4();
  }

  else
  {
    v37 = v10[12];
    v38 = v10[13];
    v39 = v10[10];
    OUTLINED_FUNCTION_78_2(v10[11]);
    v40();
    OUTLINED_FUNCTION_4_17();
    a9 = v41;
    v42 = *(v21 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v10[19] = v43;
    *v43 = v44;
    OUTLINED_FUNCTION_27_4(v43);
    OUTLINED_FUNCTION_56_4();
  }

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

uint64_t sub_1BF945EE4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (v0)
  {
    v9 = *(v3 + 16);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF945FE4()
{
  OUTLINED_FUNCTION_45();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  sub_1BF9B4E08();
  sub_1BF9B4DC8();
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_36();
  v8(v7);
  v9 = v0[18];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[5];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_19_11();
  if (v16)
  {
    v17 = v0[18];
    v19 = v0[15];
    v18 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[9];
    v23 = OUTLINED_FUNCTION_57_5(v0[17]);
    v24(v23);
    OUTLINED_FUNCTION_107_0();

    v34 = OUTLINED_FUNCTION_21_10();
  }

  else
  {
    v26 = v0[12];
    v27 = v0[13];
    v28 = v0[10];
    OUTLINED_FUNCTION_78_2(v0[11]);
    v29();
    OUTLINED_FUNCTION_4_17();
    v36 = v30;
    v31 = *(v9 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[19] = v32;
    *v32 = v33;
    v34 = OUTLINED_FUNCTION_27_4();
    v25 = v36;
  }

  return v25(v34);
}

uint64_t sub_1BF946198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v12 = v10[17];
  v11 = v10[18];
  v14 = v10[15];
  v13 = v10[16];
  v15 = v10[13];
  v16 = v10[9];
  (*(v10[11] + 8))(v10[12], v10[10]);
  (*(v12 + 8))(v11, v13);

  OUTLINED_FUNCTION_77();
  v17 = v10[20];
  OUTLINED_FUNCTION_56_4();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1BF94625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25[-1] - v11;
  v26[0] = a4;
  v26[1] = a5;
  sub_1BF9502F0(a3, &v25[-1] - v11, &qword_1EBDE8E28, &qword_1BF9BD200);
  v13 = sub_1BF9B4EB8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF8DFBF0(v12, &qword_1EBDE8E28, &qword_1BF9BD200);
  }

  else
  {
    sub_1BF9B4EA8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BF9B4E28();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BF9B4B18();
      v21 = *(v20 + 16);
      sub_1BF94EC08(v20 + 32, v26, v25);

      v22 = v25[0];
      sub_1BF8DFBF0(a3, &qword_1EBDE8E28, &qword_1BF9BD200);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF8DFBF0(a3, &qword_1EBDE8E28, &qword_1BF9BD200);
  if (v19 | v17)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v17;
    v25[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1BF9464C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v16;
  v8[16] = v17;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = sub_1BF9B4E08();
  v8[19] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  v10 = sub_1BF9B4F28();
  v8[20] = v10;
  v11 = *(v10 - 8);
  v8[21] = v11;
  v12 = *(v11 + 64) + 15;
  v8[22] = swift_task_alloc();
  v13 = *(v16 - 8);
  v8[23] = v13;
  v8[24] = *(v13 + 64);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF946670, 0, 0);
}

uint64_t sub_1BF946670()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[9];
  v0[2] = sub_1BF9B4D78();
  OUTLINED_FUNCTION_88();
  v4 = sub_1BF9B4D18();
  v57 = v4;
  OUTLINED_FUNCTION_88();
  if (v4 != sub_1BF9B4DD8())
  {
    v44 = v0[24];
    v45 = (v0[23] + 16);
    v46 = v0[23];
    do
    {
      v20 = v0[15];
      v21 = v0[9];
      OUTLINED_FUNCTION_88();
      v22 = sub_1BF9B4D98();
      sub_1BF9B4D38();
      if (v22)
      {
        v23 = v46;
        (*(v46 + 16))(v0[26], v0[9] + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v4, v0[15]);
      }

      else
      {
        v38 = v0[15];
        v39 = v0[9];
        v12 = sub_1BF9B52C8();
        v23 = v46;
        if (v44 != 8)
        {
          __break(1u);
          return MEMORY[0x1EEE6DAD8](v12, v13, v14, v15, v16, v17, v18, v19);
        }

        v40 = v12;
        v41 = v0[26];
        v42 = v0[15];
        v0[3] = v40;
        (*v45)(v41, (v0 + 3), v42);
        swift_unknownObjectRelease();
      }

      v24 = v0[26];
      v47 = v0[25];
      v53 = v0[18];
      v54 = v0[19];
      v51 = v0[14];
      v52 = v0[17];
      v49 = v0[24];
      v50 = v0[13];
      v26 = v0[11];
      v25 = v0[12];
      v27 = v0[10];
      v48 = *(v0 + 15);
      v28 = v0[15];
      v55 = v0[8];
      v56 = v0[9];
      sub_1BF9B4DE8();
      sub_1BF9B4EB8();
      OUTLINED_FUNCTION_37_0();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      v33 = *(v23 + 32);
      v34 = OUTLINED_FUNCTION_80_1();
      v33(v34);
      v35 = (*(v23 + 80) + 88) & ~*(v23 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = v48;
      *(v36 + 48) = v27;
      *(v36 + 56) = v26;
      *(v36 + 64) = v25;
      *(v36 + 72) = v50;
      *(v36 + 80) = v51;
      (v33)(v36 + v35, v47, v28);
      sub_1BF8BCED4(v27, v26);
      v37 = sub_1BF9B4F38();

      sub_1BF9477C0(v52, &unk_1BF9C2710, v36, v37);
      sub_1BF8DFBF0(v52, &qword_1EBDE8E28, &qword_1BF9BD200);
      v4 = v57;
    }

    while (v57 != sub_1BF9B4DD8());
  }

  v5 = v0[22];
  v6 = v0[18];
  v7 = v0[19];
  v8 = *v0[8];
  v0[27] = swift_checkMetadataState();
  sub_1BF9B4F08();
  v9 = *(MEMORY[0x1E69E8710] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[28] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_31_9(v10);
  OUTLINED_FUNCTION_44_5();

  return MEMORY[0x1EEE6DAD8](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1BF9469C0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 16);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF946ABC()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[27];
    v0[6] = v1;
    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    sub_1BF9B4DB8();
    v3 = *(MEMORY[0x1E69E8710] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[28] = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_31_9();
    OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_114();

    return MEMORY[0x1EEE6DAD8](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v14 = v0[25];
    v15 = v0[26];
    v16 = v0[17];
    v17 = v0[7];
    (*(v0[21] + 8))(v0[22], v0[20]);
    *v17 = v0[2];

    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_114();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_1BF946BFC()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[17];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v4 = v0[5];

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_114();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BF946C9C()
{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_70_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v1[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_40_1();

  return sub_1BF9464C0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BF946D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v13;
  v8[12] = v14;
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[4] = a1;
  v9 = *(v13 - 8);
  v8[13] = v9;
  v8[14] = *(v9 + 64);
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF946E20, 0, 0);
}

uint64_t sub_1BF946E20()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 104);
    v4 = *(v0 + 64);
    v19 = v4;
    v20 = *(v0 + 88);
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = *(v0 + 88);
    (*(v3 + 16))(v2, *(v0 + 80), v7);
    v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
    v9 = swift_allocObject();
    *(v0 + 128) = v9;
    *(v9 + 16) = v20;
    *(v9 + 32) = v19;
    (*(v3 + 32))(v9 + v8, v2, v7);
    sub_1BF8BCED4(v6, v1);
    v10 = *(MEMORY[0x1E69D3548] + 4);

    v11 = swift_task_alloc();
    *(v0 + 136) = v11;
    sub_1BF9B4E08();
    OUTLINED_FUNCTION_72_2();
    *v11 = v12;
    v11[1] = sub_1BF9470A0;
    v13.n128_u64[0] = v6;

    return MEMORY[0x1EEE40F70](v0 + 16, &unk_1BF9C2720, v9, v13);
  }

  else
  {
    v21 = (*(v0 + 64) + **(v0 + 64));
    v14 = *(*(v0 + 64) + 4);
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_1BF9471A0;
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);

    return v21(v16);
  }
}

uint64_t sub_1BF9470A0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (!v0)
  {
    v9 = *(v3 + 128);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF9471A0()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 152);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 120);

    OUTLINED_FUNCTION_41_4();

    return v12();
  }

  else
  {
    *(v5 + 160) = v3;
    v14 = OUTLINED_FUNCTION_47_4();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }
}

uint64_t sub_1BF9472C8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 56);
  sub_1BF8BFFE0(*(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 120);
  **(v0 + 32) = *(v0 + 16);

  OUTLINED_FUNCTION_11_1();

  return v3();
}

uint64_t sub_1BF947338()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 120);
  **(v0 + 32) = *(v0 + 160);

  OUTLINED_FUNCTION_11_1();

  return v2();
}

uint64_t sub_1BF94739C()
{
  OUTLINED_FUNCTION_45();
  v32 = v0;
  v1 = *(v0 + 128);

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v2 = *(v0 + 144);
  v3 = sub_1BF9B47C8();
  __swift_project_value_buffer(v3, qword_1EDBF5570);
  v4 = v2;
  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5048();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 144);
    v8 = OUTLINED_FUNCTION_109();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    *(v0 + 24) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
    v11 = sub_1BF9B4B08();
    v13 = sub_1BF8DE810(v11, v12, &v31);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_75_2();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_39_6();
    OUTLINED_FUNCTION_87();
  }

  v19 = *(v0 + 144);
  v20 = *(v0 + 80);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v23 = *(v0 + 40);

  v22(v20);

  OUTLINED_FUNCTION_51_4();
  sub_1BF8BFFE0(v24, v25);
  OUTLINED_FUNCTION_51_4();
  sub_1BF8BFFE0(v26, v27);
  v28 = *(v0 + 120);
  **(v0 + 32) = v21;

  OUTLINED_FUNCTION_11_1();

  return v29();
}

uint64_t sub_1BF947578(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1BF947674;

  return v9(a4);
}

uint64_t sub_1BF947674()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_41_4();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = OUTLINED_FUNCTION_47_4();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1BF947794()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_11_1();
  return v1();
}

uint64_t sub_1BF9477C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v23 - v11;
  sub_1BF9502F0(a1, v23 - v11, &qword_1EBDE8E28, &qword_1BF9BD200);
  v13 = sub_1BF9B4EB8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1BF8DFBF0(v12, &qword_1EBDE8E28, &qword_1BF9BD200);
  }

  else
  {
    sub_1BF9B4EA8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a3 + 16))
  {
    v14 = *(a3 + 24);
    v15 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1BF9B4E28();
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t static AsyncAwaitUtils.runStableOrder<A, B>(elements:timeoutBehaviour:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 56) = a1;
  *(v6 + 96) = *a2;
  *(v6 + 112) = *(a2 + 16);
  return OUTLINED_FUNCTION_1_18(sub_1BF9479C4, 0);
}

uint64_t sub_1BF9479C4()
{
  OUTLINED_FUNCTION_41_1();
  v1 = *(v0 + 112);
  v13 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  *(v0 + 24) = *(v0 + 56);
  OUTLINED_FUNCTION_86_1();
  v4 = sub_1BF9B4E08();
  OUTLINED_FUNCTION_2_1();
  WitnessTable = swift_getWitnessTable();
  v12 = *(v0 + 64);
  MEMORY[0x1BFB5DFA0](v4, WitnessTable);
  v6 = *(v0 + 16);
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_1BF9B4E08();
  OUTLINED_FUNCTION_99_0();
  swift_getTupleTypeMetadata2();
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  *(v7 + 32) = v6;
  *(v7 + 40) = v13;
  *(v7 + 56) = v1;
  *(v7 + 64) = v12;
  OUTLINED_FUNCTION_87_0();
  *(v0 + 144) = sub_1BF9B4E08();
  v8 = *(MEMORY[0x1E69E87D8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 152) = v9;
  *v9 = v10;
  v9[1] = sub_1BF947B54;
  OUTLINED_FUNCTION_99_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1BF947B54()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1[19];
  v3 = v1[17];
  v4 = v1[15];
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1BF947C70()
{
  OUTLINED_FUNCTION_83_0();
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];
  v9 = v0[16];
  v0[5] = v0[4];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  OUTLINED_FUNCTION_37_4();
  swift_getWitnessTable();
  v5 = sub_1BF9B4CA8();

  v0[6] = v5;
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  swift_getWitnessTable();
  sub_1BF9B4CB8();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_61_3();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1BF947DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v18;
  v8[20] = v19;
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200) - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[22] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v8[23] = v11;
  v8[24] = *(v11 + 64);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  sub_1BF9B4E08();
  v8[27] = swift_getTupleTypeMetadata2();
  v12 = sub_1BF9B4E88();
  v8[28] = v12;
  v13 = *(v12 - 8);
  v8[29] = v13;
  v14 = *(v13 + 64) + 15;
  v8[30] = swift_task_alloc();
  v15 = *(*(sub_1BF9B50F8() - 8) + 64) + 15;
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF947FC0, 0, 0);
}

uint64_t sub_1BF947FC0()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v35 = v0[22];
  v4 = v0[19];
  v5 = v0[13];
  v0[32] = swift_checkMetadataState();
  v6 = sub_1BF9B4D78();
  v0[10] = v5;
  v0[9] = v6;
  sub_1BF9B4E08();

  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_4();
  sub_1BF9B5438();
  sub_1BF9B5408();
  v34 = v4 - 8;
  v33 = v2 + 7;
  OUTLINED_FUNCTION_51_4();
  sub_1BF9B5428();
  for (i = v3; ; (*(i + 8))(v39, v13))
  {
    v8 = v0[31];
    v9 = v0[22];
    sub_1BF9B5418();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      break;
    }

    v10 = v0[31];
    v12 = v0[25];
    v11 = v0[26];
    v13 = v0[22];
    v38 = v0[21];
    v40 = v0[17];
    v41 = v0[18];
    v14 = v0[15];
    v37 = v0[16];
    v15 = v0[14];
    v42 = v0[12];
    v16 = *(v35 + 48);
    v36 = *(v0 + 19);
    *v11 = *v10;
    v39 = v11;
    (*(*v34 + 32))(v11 + v16, &v10[v16], v36);
    sub_1BF9B4EB8();
    OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    (*(i + 16))(v12, v11, v13);
    v21 = (*(i + 80) + 72) & ~*(i + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = v36;
    *(v22 + 48) = v15;
    *(v22 + 56) = v14;
    *(v22 + 64) = v37;
    (*(i + 32))(v22 + v21, v12, v13);
    v23 = (v22 + ((v33 + v21) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v40;
    v23[1] = v41;
    sub_1BF8BCED4(v15, v14);
    v24 = sub_1BF9B4E98();

    sub_1BF94922C(v38, &unk_1BF9C26E0, v22, v24);
    sub_1BF8DFBF0(v38, &qword_1EBDE8E28, &qword_1BF9BD200);
  }

  v25 = v0[30];
  v26 = v0[12];
  v27 = v0[2];

  v28 = *v26;
  sub_1BF9B4E68();
  v29 = *(MEMORY[0x1E69E8588] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[33] = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_32_7(v30);
  OUTLINED_FUNCTION_44_5();

  return MEMORY[0x1EEE6D8A8]();
}

uint64_t sub_1BF948320()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 264);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF948404()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[32];
    v0[7] = v0[5];
    v0[8] = v1;
    sub_1BF9B4E08();
    sub_1BF9B4DC8();
    v3 = *(MEMORY[0x1E69E8588] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[33] = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_32_7();
    OUTLINED_FUNCTION_44_5();

    return MEMORY[0x1EEE6D8A8]();
  }

  else
  {
    v6 = v0[31];
    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[21];
    v10 = v0[11];
    (*(v0[29] + 8))(v0[30], v0[28]);
    *v10 = v0[9];

    OUTLINED_FUNCTION_77();

    return v11();
  }
}

uint64_t sub_1BF94854C()
{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_70_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v1[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_40_1();

  return sub_1BF947DBC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BF9485FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v14;
  v8[13] = v15;
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[5] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[14] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v8[15] = v10;
  v8[16] = *(v10 + 64);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF9486F4, 0, 0);
}

uint64_t sub_1BF9486F4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);
    v32 = *(v0 + 96);
    v33 = *(v0 + 80);
    v7 = *(v0 + 72);
    v34 = *(v0 + 88);
    v35 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = *(v5 + 16);
    *(v0 + 144) = v9;
    *(v0 + 152) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v7, v4);
    v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v11 = (v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v0 + 160) = v12;
    *(v12 + 16) = v32;
    *(v12 + 24) = v6;
    (*(v5 + 32))(v12 + v10, v3, v4);
    v13 = (v12 + v11);
    *v13 = v33;
    v13[1] = v34;
    sub_1BF8BCED4(v8, v1);
    v14 = *(MEMORY[0x1E69D3548] + 4);

    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    sub_1BF9B4E08();
    OUTLINED_FUNCTION_99_0();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_72_2();
    *v15 = v16;
    v15[1] = sub_1BF9489A0;
    v17.n128_u64[0] = v8;

    return MEMORY[0x1EEE40F70](v0 + 16, &unk_1BF9C2700, v12, v17);
  }

  else
  {
    v18 = *(v0 + 136);
    v19 = *(v0 + 112);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v0 + 40);
    v23 = OUTLINED_FUNCTION_94_0(*(v0 + 120));
    v24(v23);
    v25 = *v18;
    *(v0 + 200) = *(v19 + 48);
    OUTLINED_FUNCTION_20_11(v25);
    v36 = v26;
    v27 = *(v20 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 184) = v28;
    *v28 = v29;
    v28[1] = sub_1BF948AA0;
    v30 = *(v0 + 88);

    return v36(v21 + v19);
  }
}

uint64_t sub_1BF9489A0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (!v0)
  {
    v9 = *(v3 + 160);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF948AA0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_15_14();
  *v2 = v1;
  v4 = *(v3 + 184);
  *v2 = *v0;
  *(v1 + 192) = v5;

  v6 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF948B8C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 200);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  *(*(v0 + 40) + 8) = *(v0 + 192);
  (*(*(v3 - 8) + 8))(v2 + v1);
  v4 = *(v0 + 136);

  OUTLINED_FUNCTION_77();

  return v5();
}

uint64_t sub_1BF948C28()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[8];
  v2 = v0[5];
  sub_1BF8BFFE0(v0[6], v0[7]);
  v3 = v0[3];
  *v2 = v0[2];
  v2[1] = v3;
  v4 = v0[17];

  OUTLINED_FUNCTION_77();

  return v5();
}

void sub_1BF948C94()
{
  OUTLINED_FUNCTION_83_0();
  v35 = v0;
  v1 = *(v0 + 160);

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v2 = *(v0 + 176);
  v3 = sub_1BF9B47C8();
  __swift_project_value_buffer(v3, qword_1EDBF5570);
  v4 = v2;
  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5048();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 176);
    v8 = OUTLINED_FUNCTION_109();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    *(v0 + 32) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
    v11 = sub_1BF9B4B08();
    v13 = sub_1BF8DE810(v11, v12, &v34);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_75_2();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_39_6();
    OUTLINED_FUNCTION_87();
  }

  v19 = *(v0 + 176);
  v20 = *(v0 + 152);
  v21 = *(v0 + 136);
  v22 = *(v0 + 112);
  v23 = *(v0 + 96);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  v27 = *(v0 + 48);
  v26 = *(v0 + 56);
  v28 = *(v0 + 40);
  (*(v0 + 144))(v21, v24, v22);
  v33 = *(v22 + 48);
  *v28 = *v21;
  v29 = *(v22 + 48);

  v26(v24 + v29);

  sub_1BF8BFFE0(v27, v26);
  sub_1BF8BFFE0(v27, v26);
  v28[1] = v25;
  (*(*(v23 - 8) + 8))(&v21[v33], v23);
  v30 = *(v0 + 136);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_61_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BF948ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5[7] = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF948FB8, 0, 0);
}

uint64_t sub_1BF948FB8()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = OUTLINED_FUNCTION_94_0(*(v0 + 64));
  v7(v6);
  v8 = *v1;
  *(v0 + 96) = *(v2 + 48);
  OUTLINED_FUNCTION_20_11(v8);
  v9 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v10;
  *v10 = v11;
  v10[1] = sub_1BF9490A4;
  v12 = *(v0 + 40);
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_114();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1BF9490A4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_15_14();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF949190()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  *(*(v0 + 16) + 8) = *(v0 + 88);
  (*(*(v3 - 8) + 8))(v2 + v1);

  OUTLINED_FUNCTION_11_1();

  return v4();
}

uint64_t sub_1BF94922C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v24 - v12;
  sub_1BF9502F0(a1, v24 - v12, &qword_1EBDE8E28, &qword_1BF9BD200);
  v14 = sub_1BF9B4EB8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1BF8DFBF0(v13, &qword_1EBDE8E28, &qword_1BF9BD200);
  }

  else
  {
    sub_1BF9B4EA8();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  if (*(a3 + 16))
  {
    v15 = *(a3 + 24);
    v16 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_1BF9B4E28();
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = *v5;
  v21 = swift_allocObject();
  v21[2] = *(a4 + 16);
  v21[3] = a2;
  v21[4] = a3;
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

uint64_t TimeoutBehaviour.init(timeout:timeoutFallbackCallback:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

uint64_t _sSq18SiriSuggestionsKitE8asyncMapyqd_0_Sgqd_0_xYaqd__YKXEYaqd__YKs5ErrorRd__Ri_d_0_r0_lF()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v1[8] = v0;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[4] = v7;
  v1[5] = v2;
  v1[2] = v8;
  v1[3] = v9;
  v10 = *(v5 - 8);
  v1[10] = v10;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_63_1();
  v12 = *(v3 - 8);
  v1[12] = v12;
  v13 = *(v12 + 64);
  v1[13] = OUTLINED_FUNCTION_63_1();
  v1[14] = *(v3 + 16);
  OUTLINED_FUNCTION_2_0();
  v1[15] = v14;
  v16 = *(v15 + 64);
  v1[16] = OUTLINED_FUNCTION_63_1();
  v17 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BF9495A8()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1 = v0[13];
  v2 = v0[14];
  (*(v0[12] + 16))(v1, v0[8], v0[5]);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[13];
    v4 = v0[5];
    v5 = v0[16];
    v6 = v0[11];
    v7 = v0[7];
    v8 = v0[2];
    v9 = OUTLINED_FUNCTION_57_5(v0[12]);
    v10(v9);
    OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);

    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_114();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v23 = v0[16];
    v24 = v0[13];
    v25 = v0[14];
    OUTLINED_FUNCTION_78_2(v0[15]);
    v26();
    OUTLINED_FUNCTION_4_17();
    v27 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[17] = v28;
    *v28 = v29;
    v28[1] = sub_1BF949748;
    v30 = v0[16];
    v31 = v0[11];
    v32 = v0[4];
    v33 = v0[2];
    OUTLINED_FUNCTION_114();

    return v37(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1BF949748()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF949844()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[7];
  v6 = v0[2];
  v7 = OUTLINED_FUNCTION_57_5(v0[15]);
  v8(v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_114();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1BF9498EC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  v8 = OUTLINED_FUNCTION_57_5(v0[15]);
  v9(v8);
  (*(v5 + 32))(v6, v4, v7);

  OUTLINED_FUNCTION_77();

  return v10();
}

uint64_t Sequence.asyncCompactMap<A>(_:)()
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  OUTLINED_FUNCTION_86_1();
  sub_1BF9B50F8();
  OUTLINED_FUNCTION_72_2();
  v0[7] = v5;
  *v4 = v6;
  v4[1] = sub_1BF949A74;
  OUTLINED_FUNCTION_56_4();

  return Sequence.asyncMap<A>(_:)();
}

uint64_t sub_1BF949A74()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41_4();

    return v11();
  }

  else
  {
    *(v5 + 72) = v3;
    v13 = OUTLINED_FUNCTION_47_4();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1BF949B98()
{
  OUTLINED_FUNCTION_41_1();
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  *(v0 + 16) = *(v0 + 72);
  v4 = swift_task_alloc();
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  OUTLINED_FUNCTION_53_5();
  sub_1BF9B4E08();
  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  sub_1BF9B4C88();
  OUTLINED_FUNCTION_3_14();

  v6 = OUTLINED_FUNCTION_5();

  return v7(v6);
}

uint64_t sub_1BF949CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1BF949C88(a1, a2);
}

uint64_t Sequence.asyncFlatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_1_18(sub_1BF949D40, 0);
}

uint64_t sub_1BF949D40()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  sub_1BF9B4E08();
  OUTLINED_FUNCTION_72_2();
  *(v0 + 88) = v6;
  *v5 = v7;
  v5[1] = sub_1BF949E34;
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);

  return Sequence.asyncMap<A>(_:)();
}

uint64_t sub_1BF949E34()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  v5[12] = v0;

  if (!v0)
  {
    v11 = v5[9];
    v5[13] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BF949F48()
{
  OUTLINED_FUNCTION_41_1();
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 104);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v3;
  OUTLINED_FUNCTION_53_5();
  sub_1BF9B4E08();
  OUTLINED_FUNCTION_37_4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BF9B4CB8();
  OUTLINED_FUNCTION_3_14();

  v5 = OUTLINED_FUNCTION_5();

  return v6(v5);
}

uint64_t sub_1BF94A050()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_77();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_1BF94A0AC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BF94A1A4;

  return v8(a2);
}

uint64_t sub_1BF94A1A4()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  OUTLINED_FUNCTION_41_4();

  return v11();
}

uint64_t sub_1BF94A294()
{
  OUTLINED_FUNCTION_45();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_15_0(v10);
  *v11 = v12;
  v11[1] = sub_1BF8BC644;

  return sub_1BF94A0AC(v4, v2, v8);
}

uint64_t Sequence.asyncFilter(_:)()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[8] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_1(AssociatedTypeWitness);
  v1[9] = v7;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_87_0();
  v10 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_72(v10);
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_2_0();
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_59_5();
  v16 = swift_getAssociatedTypeWitness();
  v1[15] = v16;
  OUTLINED_FUNCTION_10_11(v16);
  v1[16] = v17;
  v19 = *(v18 + 64);
  v1[17] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_114();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1BF94A538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v11 = v10[17];
  v13 = v10[13];
  v12 = v10[14];
  v15 = v10[7];
  v14 = v10[8];
  v17 = v10[5];
  v16 = v10[6];
  v10[2] = sub_1BF9B4938();
  v18 = *(v13 + 16);
  v19 = OUTLINED_FUNCTION_36();
  v20(v19);
  OUTLINED_FUNCTION_68_2();
  sub_1BF9B4C68();
  v21 = v10[17];
  v22 = v10[15];
  v23 = v10[12];
  v24 = v10[8];
  v26 = v10[5];
  v25 = v10[6];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_19_11();
  if (v28)
  {
    v29 = v10[17];
    v31 = v10[14];
    v30 = v10[15];
    v33 = v10[11];
    v32 = v10[12];
    v34 = v10[10];
    v35 = OUTLINED_FUNCTION_57_5(v10[16]);
    v36(v35);
    OUTLINED_FUNCTION_107_0();

    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_56_4();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
  }

  else
  {
    v46 = v10[11];
    v47 = v10[12];
    v48 = v10[8];
    OUTLINED_FUNCTION_78_2(v10[9]);
    v49();
    OUTLINED_FUNCTION_23_11();
    v61 = v50;
    v51 = *(v21 + 4);
    v52 = swift_task_alloc();
    v10[18] = v52;
    *v52 = v10;
    OUTLINED_FUNCTION_26_9(v52);
    OUTLINED_FUNCTION_56_4();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, v61, a10);
  }
}

uint64_t sub_1BF94A6E0()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 152) = v0;

  if (v0)
  {
    v11 = *(v5 + 16);
  }

  else
  {
    *(v5 + 160) = v3 & 1;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BF94A7F8()
{
  OUTLINED_FUNCTION_45();
  if (*(v0 + 160))
  {
    (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 64));
    OUTLINED_FUNCTION_87_0();
    sub_1BF9B4E08();
    sub_1BF9B4DC8();
  }

  (*(*(v0 + 72) + 8))(*(v0 + 88), *(v0 + 64));
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_19_11();
  if (v8)
  {
    v9 = *(v0 + 136);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    v15 = OUTLINED_FUNCTION_57_5(*(v0 + 128));
    v16(v15);
    OUTLINED_FUNCTION_107_0();

    v17 = OUTLINED_FUNCTION_21_10();

    return v18(v17);
  }

  else
  {
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    v22 = *(v0 + 64);
    OUTLINED_FUNCTION_78_2(*(v0 + 72));
    v23();
    OUTLINED_FUNCTION_23_11();
    v28 = v24;
    v25 = *(v1 + 4);
    v26 = swift_task_alloc();
    *(v0 + 144) = v26;
    *v26 = v0;
    v27 = OUTLINED_FUNCTION_26_9();

    return v28(v27);
  }
}

uint64_t sub_1BF94A9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v12 = v10[16];
  v11 = v10[17];
  v14 = v10[14];
  v13 = v10[15];
  v15 = v10[12];
  v16 = v10[10];
  (*(v10[9] + 8))(v10[11], v10[8]);
  (*(v12 + 8))(v11, v13);

  OUTLINED_FUNCTION_77();
  v17 = v10[19];
  OUTLINED_FUNCTION_56_4();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1BF94AA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BF9B4518();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for SingleAccessProcessor.ProcessedTask() + 28);
  v8 = type metadata accessor for SingleAccessProcessor.LoadingTask();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_1BF94AB58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_101_0();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_101_0();
  v7 = *(v6 + 80);
  v8 = OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_13(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t sub_1BF94ABF0(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_101_0();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_101_0();
  v7 = *(v6 + 80);
  v8 = OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_13(v8);
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t (*sub_1BF94AC90())()
{
  OUTLINED_FUNCTION_20_6();
  v1 = *(v0 + 96);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SingleAccessProcessor.__allocating_init(processorName:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_88();
  SingleAccessProcessor.init(processorName:)(v4, v5);
  return v3;
}

uint64_t *SingleAccessProcessor.init(processorName:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_20_6();
  v7 = *(v6 + 96);
  v8 = *(v5 + 80);
  type metadata accessor for SingleAccessProcessor.ProcessedTask();
  OUTLINED_FUNCTION_37_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_20_6();
  v14 = (v2 + *(v13 + 104));
  *v14 = a1;
  v14[1] = a2;
  return v2;
}

uint64_t sub_1BF94ADF4()
{
  OUTLINED_FUNCTION_65();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  OUTLINED_FUNCTION_20_6();
  v1[11] = v6;
  v7 = *v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9B10, &qword_1BF9C2450);
  v1[12] = v8;
  OUTLINED_FUNCTION_72(v8);
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_63_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9998, &qword_1BF9C07C0);
  OUTLINED_FUNCTION_72(v11);
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_108_0();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  OUTLINED_FUNCTION_72(v14);
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_63_1();
  v1[18] = *(v7 + 80);
  OUTLINED_FUNCTION_59_5();
  v17 = type metadata accessor for SingleAccessProcessor.LoadingTask();
  v1[19] = v17;
  OUTLINED_FUNCTION_10_11(v17);
  v1[20] = v18;
  v20 = *(v19 + 64);
  v1[21] = OUTLINED_FUNCTION_108_0();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_2_0();
  v1[24] = v21;
  v23 = *(v22 + 64);
  v1[25] = OUTLINED_FUNCTION_108_0();
  v1[26] = swift_task_alloc();
  v24 = type metadata accessor for SingleAccessProcessor.ProcessedTask();
  v1[27] = v24;
  OUTLINED_FUNCTION_59_5();
  v25 = sub_1BF9B50F8();
  v1[28] = v25;
  OUTLINED_FUNCTION_10_11(v25);
  v1[29] = v26;
  v28 = *(v27 + 64);
  v1[30] = OUTLINED_FUNCTION_108_0();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v29 = *(v24 - 8);
  v1[35] = v29;
  v30 = *(v29 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v31 = sub_1BF9B4518();
  v1[38] = v31;
  OUTLINED_FUNCTION_10_11(v31);
  v1[39] = v32;
  v34 = *(v33 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF94B144, v0, 0);
}

uint64_t sub_1BF94B144()
{
  v122 = v0;
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[10];
  v5 = v0[7];
  v6 = sub_1BF9B47C8();
  v0[42] = __swift_project_value_buffer(v6, qword_1EDBF5570);
  v0[43] = *(v2 + 16);
  v0[44] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_51_4();
  v120 = v7;
  v7();

  v8 = sub_1BF9B47A8();
  v9 = sub_1BF9B5038();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[41];
  v13 = v0[38];
  v12 = v0[39];
  if (v10)
  {
    v14 = v0[10];
    v15 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *v15 = 136315394;
    OUTLINED_FUNCTION_9_11();
    sub_1BF94EE98(v16, 255, v17);
    v18 = sub_1BF9B5668();
    v20 = v19;
    log = v8;
    v23 = *(v12 + 8);
    v22 = v12 + 8;
    v21 = v23;
    v23(v11, v13);
    v24 = sub_1BF8DE810(v18, v20, &v121);

    *(v15 + 4) = v24;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1BF8DE810(*(v14 + *(*v14 + 104)), *(v14 + *(*v14 + 104) + 8), &v121);
    _os_log_impl(&dword_1BF8B8000, log, v9, "single access processor called for %s in %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    v25 = *(v12 + 8);
    v22 = v12 + 8;
    v21 = v25;
    v25(v11, v13);
  }

  v0[45] = v21;
  v26 = v0[34];
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_19_11();
  if (v27)
  {
    v28 = v0[34];
    v29 = v0[28];
    v30 = v0[29];
LABEL_11:
    (*(v30 + 8))(v28, v29);
    goto LABEL_15;
  }

  v31 = v0[38];
  v22 = v0[7];
  (*(v0[35] + 32))(v0[37], v0[34], v0[27]);
  OUTLINED_FUNCTION_9_11();
  sub_1BF94EE98(v32, 255, v33);
  OUTLINED_FUNCTION_80_1();
  v34 = sub_1BF9B4A88();
  if (v34)
  {
    v28 = v0[37];
    v30 = v0[35];
    v29 = v0[27];
    goto LABEL_11;
  }

  v35 = sub_1BF9B47A8();
  v36 = sub_1BF9B5038();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1BF8B8000, v35, v36, "single access processor needs updating because the generation ids do not match", v37, 2u);
    OUTLINED_FUNCTION_39_6();
  }

  v38 = v0[37];
  v39 = v0[35];
  v22 = v0[27];
  v40 = v0[10];

  sub_1BF94CABC();
  v41 = *(v39 + 8);
  v42 = OUTLINED_FUNCTION_80_1();
  v43(v42);
LABEL_15:
  v44 = v0[33];
  OUTLINED_FUNCTION_88_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v22);
  v46 = v0[33];
  v47 = v0[28];
  v48 = v0[29];
  if (EnumTagSinglePayload)
  {
    v49 = *(v48 + 8);
    v50 = OUTLINED_FUNCTION_42_2();
    v49(v50);
  }

  else
  {
    v22 = v0[23];
    v51 = OUTLINED_FUNCTION_65_3(v0[27]);
    v52(v51);
    v49 = *(v48 + 8);
    v53 = OUTLINED_FUNCTION_42_2();
    v49(v53);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = *(v0[24] + 32);
      v54(v0[26], v0[23], v0[18]);
      v55 = sub_1BF9B47A8();
      v56 = sub_1BF9B5038();
      if (os_log_type_enabled(v55, v56))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_75_2();
        _os_log_impl(v57, v58, v59, v60, v61, 2u);
        OUTLINED_FUNCTION_87();
      }

      v62 = v0[26];
      v63 = v0[18];
      v64 = v0[10];
      v66 = v0[6];
      v65 = v0[7];

      v54(v66, v62, v63);
      v67 = OUTLINED_FUNCTION_68_2();
      sub_1BF94C6FC(v67, v68);
      OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_55_4();

      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_104_0();

      __asm { BRAA            X1, X16 }
    }

    (*(v0[20] + 8))(v0[23], v0[19]);
  }

  v0[46] = v49;
  v71 = v0[32];
  OUTLINED_FUNCTION_88_0();
  v72 = __swift_getEnumTagSinglePayload(v71, 1, v22);
  v73 = v0[32];
  v74 = v0[28];
  v75 = v0[29];
  if (v72)
  {
    v76 = OUTLINED_FUNCTION_42_2();
    v49(v76);
LABEL_28:
    v83 = v0[40];
    v84 = v0[31];
    v85 = v0[21];
    v86 = v0[18];
    v115 = v0[38];
    loga = v0[19];
    v87 = v0[17];
    v88 = v0[9];
    v118 = v0[27];
    v119 = v0[10];
    v89 = v0[7];
    v90 = v0[8];
    sub_1BF9B4EB8();
    OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
    v95 = swift_allocObject();
    v95[2] = 0;
    v95[3] = 0;
    v95[4] = v86;
    v95[5] = v90;
    v95[6] = v88;

    v96 = OUTLINED_FUNCTION_46_2();
    v99 = sub_1BF94625C(v96, v97, v87, v98, v95);
    v0[50] = v99;
    (v120)(v83, v89, v115);
    *v85 = v99;
    swift_storeEnumTagMultiPayload();
    sub_1BF94AA8C(v83, v85, v84);
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v118);

    sub_1BF94ABF0(v84);
    v100 = *(MEMORY[0x1E69E86A8] + 4);
    v101 = swift_task_alloc();
    v0[51] = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
    OUTLINED_FUNCTION_72_2();
    *v101 = v102;
    v101[1] = sub_1BF94BC4C;
    v103 = v0[25];
    v104 = v0[18];
    goto LABEL_29;
  }

  v77 = v0[22];
  v78 = OUTLINED_FUNCTION_65_3(v0[27]);
  v79(v78);
  v80 = OUTLINED_FUNCTION_42_2();
  v49(v80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v82 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[20] + 8))(v82, v0[19]);
    goto LABEL_28;
  }

  v0[47] = *v82;
  v106 = sub_1BF9B47A8();
  v107 = sub_1BF9B5038();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_1BF8B8000, v106, v107, "single access processor has an inprogress task for generationId. Awaiting for results to return.", v108, 2u);
    OUTLINED_FUNCTION_39_6();
  }

  v109 = *(MEMORY[0x1E69E86A8] + 4);
  v110 = swift_task_alloc();
  v0[48] = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_72_2();
  *v110 = v111;
  v110[1] = sub_1BF94B9E4;
  v112 = v0[18];
  v113 = v0[6];
LABEL_29:
  OUTLINED_FUNCTION_104_0();

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_1BF94B9E4()
{
  OUTLINED_FUNCTION_65();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *(v2 + 384);
  *v4 = *v1;
  *(v3 + 392) = v0;

  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_1BF94C348;
  }

  else
  {
    v7 = sub_1BF94BB04;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1BF94BB04()
{
  v1 = v0[47];
  v2 = v0[10];
  v3 = v0[7];

  v4 = OUTLINED_FUNCTION_43();
  sub_1BF94C6FC(v4, v5);
  OUTLINED_FUNCTION_13_8();
  v8 = v0[21];
  v9 = v0[17];
  v10 = v0[16];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];

  OUTLINED_FUNCTION_11_1();

  return v6();
}

uint64_t sub_1BF94BC4C()
{
  OUTLINED_FUNCTION_65();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *(v2 + 408);
  *v4 = *v1;
  *(v3 + 416) = v0;

  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_1BF94C57C;
  }

  else
  {
    v7 = sub_1BF94BD6C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

void sub_1BF94BD6C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 128);
  v6 = *(v0 + 80);
  (*(v0 + 344))(v5, *(v0 + 56), v2);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v2);
  sub_1BF94AB58(v3);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  v8 = *(v0 + 368);
  if (EnumTagSinglePayload)
  {
    v9 = *(v0 + 232) + 8;
    (v8)(*(v0 + 240), *(v0 + 224));
    v10 = 1;
  }

  else
  {
    v78 = *(v0 + 344);
    v79 = *(v0 + 352);
    v11 = *(v0 + 304);
    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = *(v0 + 120);
    v19 = *(v13 + 16);
    v20 = OUTLINED_FUNCTION_36();
    v21(v20);
    v22 = OUTLINED_FUNCTION_80_1();
    v8(v22);
    v78(v18, v12, v11);
    (*(v13 + 8))(v12, v17);
    v10 = 0;
  }

  v23 = *(v0 + 304);
  v25 = *(v0 + 120);
  v24 = *(v0 + 128);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  __swift_storeEnumTagSinglePayload(v25, v10, 1, v23);
  v28 = *(v27 + 48);
  sub_1BF9502F0(v24, v26, &qword_1EBDE9998, &qword_1BF9C07C0);
  sub_1BF9502F0(v25, v26 + v28, &qword_1EBDE9998, &qword_1BF9C07C0);
  v29 = __swift_getEnumTagSinglePayload(v26, 1, v23);
  v30 = *(v0 + 304);
  if (v29 == 1)
  {
    v31 = *(v0 + 128);
    sub_1BF8DFBF0(*(v0 + 120), &qword_1EBDE9998, &qword_1BF9C07C0);
    v32 = OUTLINED_FUNCTION_80_1();
    sub_1BF8DFBF0(v32, v33, &qword_1BF9C07C0);
    if (__swift_getEnumTagSinglePayload(v26 + v28, 1, v30) == 1)
    {
      sub_1BF8DFBF0(*(v0 + 104), &qword_1EBDE9998, &qword_1BF9C07C0);
LABEL_14:
      v61 = *(v0 + 216);
      v62 = *(v0 + 80);
      v63 = sub_1BF94AC90();
      v65 = v64;
      v66 = __swift_getEnumTagSinglePayload(v64, 1, v61);
      v67 = *(v0 + 400);
      if (!v66)
      {
        v69 = *(v0 + 192);
        v68 = *(v0 + 200);
        v70 = *(v0 + 144);
        v71 = *(*(v0 + 216) + 28);
        (*(*(v0 + 160) + 8))(v65 + v71, *(v0 + 152));
        (*(v69 + 16))(v65 + v71, v68, v70);
        swift_storeEnumTagMultiPayload();
      }

      (v63)(v0 + 16, 0);

      goto LABEL_17;
    }
  }

  else
  {
    sub_1BF9502F0(*(v0 + 104), *(v0 + 112), &qword_1EBDE9998, &qword_1BF9C07C0);
    v34 = __swift_getEnumTagSinglePayload(v26 + v28, 1, v30);
    v35 = *(v0 + 360);
    if (v34 != 1)
    {
      v51 = *(v0 + 320);
      v52 = *(v0 + 304);
      v54 = *(v0 + 120);
      v53 = *(v0 + 128);
      v55 = *(v0 + 112);
      v80 = *(v0 + 104);
      (*(*(v0 + 312) + 32))(v51, v26 + v28, v52);
      OUTLINED_FUNCTION_9_11();
      sub_1BF94EE98(v56, 255, v57);
      v58 = sub_1BF9B4A88();
      v35(v51, v52);
      sub_1BF8DFBF0(v54, &qword_1EBDE9998, &qword_1BF9C07C0);
      v59 = OUTLINED_FUNCTION_68_2();
      sub_1BF8DFBF0(v59, v60, &qword_1BF9C07C0);
      v35(v55, v52);
      sub_1BF8DFBF0(v80, &qword_1EBDE9998, &qword_1BF9C07C0);
      if (v58)
      {
        goto LABEL_14;
      }

LABEL_10:
      v40 = *(v0 + 336);
      v41 = sub_1BF9B47A8();
      v42 = sub_1BF9B5048();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 400);
      if (v43)
      {
        v45 = *(v0 + 88);
        v46 = OUTLINED_FUNCTION_109();
        v47 = swift_slowAlloc();
        v81 = v47;
        *v46 = 136315138;
        v48 = sub_1BF9B58D8();
        v50 = sub_1BF8DE810(v48, v49, &v81);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_1BF8B8000, v41, v42, "%s: Detected race condition that means a previous long running request might have accidentally overwriten the value of a subsequent request", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_39_6();
      }

LABEL_17:
      v72 = *(v0 + 80);
      v73 = *(v0 + 56);
      (*(*(v0 + 192) + 32))(*(v0 + 48), *(v0 + 200), *(v0 + 144));
      v74 = OUTLINED_FUNCTION_43();
      sub_1BF94C6FC(v74, v75);
      OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_55_4();

      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_104_0();

      __asm { BRAA            X1, X16 }
    }

    v36 = *(v0 + 304);
    v37 = *(v0 + 312);
    v38 = *(v0 + 128);
    v39 = *(v0 + 112);
    sub_1BF8DFBF0(*(v0 + 120), &qword_1EBDE9998, &qword_1BF9C07C0);
    sub_1BF8DFBF0(v38, &qword_1EBDE9998, &qword_1BF9C07C0);
    v35(v39, v36);
  }

  sub_1BF8DFBF0(*(v0 + 104), &qword_1EBDE9B10, &qword_1BF9C2450);
  goto LABEL_10;
}

uint64_t sub_1BF94C348()
{
  v1 = v0[49];
  v2 = v0[42];
  v3 = v1;
  v4 = sub_1BF9B47A8();
  v5 = sub_1BF9B5048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[49];
    v7 = OUTLINED_FUNCTION_109();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BF8B8000, v4, v5, "Caught exception when using SingleAccessProcessor. %@", v7, 0xCu);
    sub_1BF8DFBF0(v8, &qword_1EBDE9468, &unk_1BF9C2470);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_39_6();
  }

  v11 = v0[49];

  swift_willThrow();
  v27 = v0[49];
  v12 = v0[47];
  OUTLINED_FUNCTION_79_1();
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[15];
  v25 = v0[14];
  v26 = v0[13];
  v13 = v0[10];
  v14 = v0[7];

  sub_1BF94C6FC(v14, v13);

  OUTLINED_FUNCTION_77();

  return v15();
}

uint64_t sub_1BF94C57C()
{
  v16 = v0[52];
  v1 = v0[50];
  OUTLINED_FUNCTION_79_1();
  v6 = v0[26];
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[22];
  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[16];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  sub_1BF94C6FC(v3, v2);

  OUTLINED_FUNCTION_77();

  return v4();
}

void sub_1BF94C6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF9B4518();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v9 = sub_1BF9B47C8();
  __swift_project_value_buffer(v9, qword_1EDBF5570);
  (*(v5 + 16))(v8, a1, v4);

  v10 = sub_1BF9B47A8();
  v11 = sub_1BF9B5038();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315394;
    sub_1BF94EE98(qword_1EBDE9B20, 255, MEMORY[0x1E69695A8]);
    v14 = sub_1BF9B5668();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_1BF8DE810(v14, v16, &v19);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1BF8DE810(*(a2 + *(*a2 + 104)), *(a2 + *(*a2 + 104) + 8), &v19);
    _os_log_impl(&dword_1BF8B8000, v10, v11, "single access processor finished for %s in %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5F320](v13, -1, -1);
    MEMORY[0x1BFB5F320](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BF94C9C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1BF8BC564;

  return v9(a1);
}

uint64_t sub_1BF94CABC()
{
  OUTLINED_FUNCTION_20_6();
  v1 = *(v0 + 80);
  v2 = type metadata accessor for SingleAccessProcessor.ProcessedTask();
  OUTLINED_FUNCTION_59_5();
  v3 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_72(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_37_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
  return sub_1BF94ABF0(v8);
}

uint64_t sub_1BF94CB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_20_6();
  v5[7] = v6;
  return OUTLINED_FUNCTION_1_18(sub_1BF94CBA8, v4);
}

uint64_t sub_1BF94CBA8()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_allocObject();
  v0[8] = v4;
  v4[2] = *(v1 + 80);
  v4[3] = v3;
  v4[4] = v2;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[9] = v5;
  *v5 = v6;
  v5[1] = sub_1BF94CC94;
  v7 = v0[6];
  v8 = v0[2];
  v9 = v0[3];

  return sub_1BF94ADF4();
}

uint64_t sub_1BF94CC94()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    v9 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1BF94CDB4, v9, 0);
  }

  else
  {
    v10 = v3[8];

    OUTLINED_FUNCTION_77();

    return v11();
  }
}

uint64_t sub_1BF94CDB4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  return swift_unexpectedError();
}

uint64_t sub_1BF94CE1C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF94CF14;

  return v7(a1);
}

uint64_t sub_1BF94CF14()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_11_1();

  return v5();
}

uint64_t SingleAccessProcessor.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(v0 + v1);
  OUTLINED_FUNCTION_20_6();
  v6 = *(v0 + *(v5 + 104) + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SingleAccessProcessor.__deallocating_deinit()
{
  SingleAccessProcessor.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BF94D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_1_18(sub_1BF94D0E4, v6);
}

uint64_t sub_1BF94D0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v12 = v10[7];
  v11 = v10[8];
  v14 = v10[5];
  v13 = v10[6];
  OUTLINED_FUNCTION_38_5();
  sub_1BF94EE98(v15, v16, v17);
  v18 = swift_task_alloc();
  OUTLINED_FUNCTION_73_1(v18);
  v19 = *(MEMORY[0x1E69E88D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v10[10] = v20;
  *v20 = v21;
  v20[1] = sub_1BF94D1D8;
  v22 = v10[7];
  v23 = v10[2];
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DDE0](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_1BF94D1D8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_77();

  return v6();
}

uint64_t sub_1BF94D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v37 = a2;
  v38 = a3;
  v9 = sub_1BF9B4E58();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  OUTLINED_FUNCTION_72(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  v35 = &v34 - v21;
  sub_1BF9B4EB8();
  OUTLINED_FUNCTION_37_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  (*(v12 + 16))(v16, v36, v9);
  v26 = (*(v12 + 80) + 96) & ~*(v12 + 80);
  v27 = swift_allocObject();
  v28 = OUTLINED_FUNCTION_71_2(v27);
  *(v28 + 10) = v29;
  *(v28 + 11) = a4;
  (*(v12 + 32))(&v28[v26], v16, v9);

  sub_1BF8C731C(a5);

  v30 = OUTLINED_FUNCTION_46_2();
  return sub_1BF939C48(v30, v31, v35, v32, v27);
}

uint64_t sub_1BF94D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v16;
  *(v8 + 72) = v17;
  *(v8 + 48) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v9 = *(v17 - 8);
  *(v8 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v11 = *(MEMORY[0x1E69E86C0] + 4);
  v12 = swift_task_alloc();
  *(v8 + 104) = v12;
  *v12 = v8;
  v12[1] = sub_1BF94D5DC;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1BF94D5DC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF94D6C0()
{
  OUTLINED_FUNCTION_65();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 24);

    v3 = OUTLINED_FUNCTION_43();

    return MEMORY[0x1EEE6DFA0](v3, v4, 0);
  }

  else
  {
    OUTLINED_FUNCTION_0_17(*(v0 + 48));
    v12 = v5;
    v7 = *(v6 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 128) = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_33_5(v8);

    return v12(v10);
  }
}

uint64_t sub_1BF94D7D8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  if (*(v0 + 112) == *(v0 + 32))
  {
    v3 = *(v0 + 24);
    sub_1BF8C732C(v2);
    OUTLINED_FUNCTION_0_17(*(v0 + 48));
    v5 = *(v4 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 128) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_33_5(v6);
  }

  else
  {
    v8 = *(v0 + 16);
    v15 = v2 + *v2;
    v9 = v2[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 120) = v10;
    *v10 = v11;
    v10[1] = sub_1BF94D928;
    v12 = *(v0 + 96);
  }

  OUTLINED_FUNCTION_85_1();

  return v13();
}

uint64_t sub_1BF94D928()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF94DA0C()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v4 = *(v1 + 24);
  sub_1BF8C732C(*(v1 + 16));
  v5 = OUTLINED_FUNCTION_50_4();
  v6(v5);
  OUTLINED_FUNCTION_53_5();
  sub_1BF9B4E58();
  OUTLINED_FUNCTION_96_0();
  sub_1BF9B4E48();
  (*(v3 + 8))(v0, v2);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_114();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1BF94DAC4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF94DBA8()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_50_4();
  v4(v3);
  OUTLINED_FUNCTION_53_5();
  sub_1BF9B4E58();
  OUTLINED_FUNCTION_96_0();
  sub_1BF9B4E48();
  (*(v2 + 8))(v0, v1);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_114();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BF94DC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_1_18(sub_1BF94DC80, v6);
}

uint64_t sub_1BF94DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v12 = v10[7];
  v11 = v10[8];
  v14 = v10[5];
  v13 = v10[6];
  OUTLINED_FUNCTION_38_5();
  sub_1BF94EE98(v15, v16, v17);
  v18 = swift_task_alloc();
  OUTLINED_FUNCTION_73_1(v18);
  v19 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v10[10] = v20;
  *v20 = v21;
  v20[1] = sub_1BF94DD74;
  v22 = v10[7];
  v23 = v10[2];
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DE38](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_1BF94DD74()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[8];

    return MEMORY[0x1EEE6DFA0](sub_1BF8E9798, v9, 0);
  }

  else
  {
    v10 = v3[9];

    OUTLINED_FUNCTION_77();

    return v11();
  }
}

uint64_t sub_1BF94DE94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 120);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    *(a2 + 120) = v9;
    v18 = *(a2 + 112);

    v20 = a8(v19, v9, a3, a4, a5, a6, v17, a7);

    v21 = *(a2 + 112);
    *(a2 + 112) = v20;
  }

  return result;
}

uint64_t sub_1BF94DF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a4;
  v39 = a2;
  v40 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  v9 = sub_1BF9B4E58();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  OUTLINED_FUNCTION_72(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  v37 = &v36 - v21;
  sub_1BF9B4EB8();
  OUTLINED_FUNCTION_37_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = v9;
  (*(v12 + 16))(v16, a7, v9);
  v27 = (*(v12 + 80) + 96) & ~*(v12 + 80);
  v28 = swift_allocObject();
  v29 = OUTLINED_FUNCTION_71_2(v28);
  v30 = v38;
  *(v29 + 10) = v31;
  *(v29 + 11) = v30;
  (*(v12 + 32))(&v29[v27], v16, v26);

  sub_1BF8C731C(a5);

  v32 = OUTLINED_FUNCTION_46_2();
  return sub_1BF939C48(v32, v33, v37, v34, v28);
}

uint64_t sub_1BF94E15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v16;
  *(v8 + 80) = v17;
  *(v8 + 56) = v15;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  v9 = *(v17 - 8);
  *(v8 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  v11 = *(MEMORY[0x1E69E86C0] + 4);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  *v12 = v8;
  v12[1] = sub_1BF94E290;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1BF94E290()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF94E374()
{
  OUTLINED_FUNCTION_65();
  if (*(v0 + 24))
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 32);

    v3 = OUTLINED_FUNCTION_43();

    return MEMORY[0x1EEE6DFA0](v3, v4, 0);
  }

  else
  {
    OUTLINED_FUNCTION_0_17(*(v0 + 56));
    v12 = v5;
    v7 = *(v6 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 160) = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_34_6(v8);

    return v12(v10);
  }
}

uint64_t sub_1BF94E48C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  if (*(v0 + 136) == *(v0 + 40))
  {
    v3 = *(v0 + 32);
    sub_1BF8C732C(v2);
    OUTLINED_FUNCTION_0_17(*(v0 + 56));
    v5 = *(v4 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 160) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_34_6(v6);
  }

  else
  {
    v8 = *(v0 + 24);
    v15 = v2 + *v2;
    v9 = v2[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 144) = v10;
    *v10 = v11;
    v10[1] = sub_1BF94E5DC;
    v12 = *(v0 + 112);
  }

  OUTLINED_FUNCTION_85_1();

  return v13();
}

uint64_t sub_1BF94E5DC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_15_14();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF94E6D8()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1 = v0[4];
  sub_1BF8C732C(v0[3]);
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = OUTLINED_FUNCTION_97();
  v9(v8);
  v10 = OUTLINED_FUNCTION_82_1();
  v11(v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_86_1();
  sub_1BF9B4E58();
  sub_1BF9B4E48();
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_36();
  v14(v13);
  OUTLINED_FUNCTION_106_0();

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_114();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1BF94E7C8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_15_14();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF94E8C4()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v7 = OUTLINED_FUNCTION_97();
  v8(v7);
  v9 = OUTLINED_FUNCTION_82_1();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_86_1();
  sub_1BF9B4E58();
  sub_1BF9B4E48();
  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_36();
  v13(v12);
  OUTLINED_FUNCTION_106_0();

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_114();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1BF94E9B0()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[4];
  sub_1BF8C732C(v0[3]);
  v3 = v0[9];
  v2 = v0[10];
  v0[2] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_59_5();
  sub_1BF9B4E58();
  OUTLINED_FUNCTION_96_0();
  sub_1BF9B4E38();
  OUTLINED_FUNCTION_106_0();

  OUTLINED_FUNCTION_77();

  return v4();
}

uint64_t sub_1BF94EA6C()
{
  OUTLINED_FUNCTION_65();
  v2 = v0[9];
  v1 = v0[10];
  v0[2] = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_59_5();
  sub_1BF9B4E58();
  OUTLINED_FUNCTION_96_0();
  sub_1BF9B4E38();
  OUTLINED_FUNCTION_106_0();

  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t SequentialProcessor.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1BF94EB54()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_61_1();
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_0(v6);
  *v7 = v8;
  v7[1] = sub_1BF8BC644;
  v9 = OUTLINED_FUNCTION_58_4();

  return sub_1BF94C9C4(v9, v1, v2, v4);
}

uint64_t sub_1BF94EC08@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF94ECC4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF95084C;

  return v7(a1);
}

uint64_t sub_1BF94EDBC(void (*a1)(void))
{
  a1();

  return sub_1BF9B58D8();
}

uint64_t sub_1BF94EDF8()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_61_1();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0(v3);
  *v4 = v5;
  v4[1] = sub_1BF8BC644;
  v6 = OUTLINED_FUNCTION_58_4();

  return sub_1BF94CE1C(v6, v1);
}

uint64_t sub_1BF94EE98(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for AsyncAwaitUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF94F008()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF94F044(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1BF94F084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF94F0DC(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for SingleAccessProcessor.ProcessedTask();
  result = sub_1BF9B50F8();
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

uint64_t dispatch thunk of SingleAccessProcessor.runThrowing(forGenerationId:processor:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_20_6();
  v1 = *(v0 + 144);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_8(v4);

  return v7(v6);
}

uint64_t dispatch thunk of SingleAccessProcessor.run(forGenerationId:processor:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_20_6();
  v1 = *(v0 + 160);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_8(v4);

  return v7(v6);
}

uint64_t dispatch thunk of Processor.process(_:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_43_5();
  v1 = *(v0 + 32);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_8(v4);

  return v7(v6);
}

uint64_t dispatch thunk of SequentialProcessor.run<A>(_:onOutdated:)()
{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_48_3();
  v1 = *(v0 + 160);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_45_5(v4);

  return v7(v6);
}

{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_48_3();
  v1 = *(v0 + 176);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_45_5(v4);

  return v7(v6);
}

uint64_t sub_1BF94F74C(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  result = sub_1BF9B4ED8();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF94F7EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1BF94F910(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1BF94FAD4(uint64_t a1)
{
  result = sub_1BF9B4518();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = type metadata accessor for SingleAccessProcessor.LoadingTask();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF94FB5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BF9B4518();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(*(v6 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_27;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v7 < 0xFE)
      {
        v21 = *(((a1 + v12) & ~v11) + v9);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v6);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
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

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_1BF94FD8C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1BF9B4518();
  v9 = *(*(v8 - 8) + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(*(v8 - 8) + 84);
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(*(v8 - 8) + 64) + v13;
  v15 = v11 + 1;
  v16 = (v14 & ~v13) + v11 + 1;
  v17 = 8 * v16;
  if (a3 <= v12)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v12 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 < 0xFE)
          {
            v24 = (&a1[v14] & ~v13);
            if (a2 > 0xFE)
            {
              if (v15 <= 3)
              {
                v25 = ~(-1 << (8 * v15));
              }

              else
              {
                v25 = -1;
              }

              if (v11 != -1)
              {
                v26 = v25 & (a2 - 255);
                if (v15 <= 3)
                {
                  v27 = v11 + 1;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v15);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }

            else
            {
              v24[v11] = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v8);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v12 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1BF9500C4()
{
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_83_0();
  v2 = v1;
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  v4 = sub_1BF9B4E58();
  OUTLINED_FUNCTION_72(v4);
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_84_0();
  v7 = v0[10];
  v20 = v0[9];
  v8 = v0[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_61_3();

  return sub_1BF94E15C(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1BF9501E4()
{
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_83_0();
  v2 = v1;
  v3 = v0[4];
  OUTLINED_FUNCTION_86_1();
  v4 = sub_1BF9B4E58();
  OUTLINED_FUNCTION_72(v4);
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_84_0();
  v7 = v0[10];
  v20 = v0[9];
  v8 = v0[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_61_3();

  return sub_1BF94D4C0(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1BF9502F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

uint64_t sub_1BF95034C()
{
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_83_0();
  v2 = v0[4];
  v25 = v0[5];
  v3 = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_10_11(v3);
  v6 = v0[3];
  v24 = v0[2];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = (v0 + ((*(v5 + 64) + ((*(v4 + 80) + 72) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1BF8BC564;
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_61_3();

  return sub_1BF9485FC(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1BF950490()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_61_1();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_0(v2);
  *v3 = v4;
  v3[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_114();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BF95053C()
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_10_11(TupleTypeMetadata2);
  v7 = (v0 + ((*(v6 + 64) + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1BF8BC564;
  OUTLINED_FUNCTION_56_4();

  return sub_1BF948ED8(v11, v12, v13, v14, v15);
}

uint64_t sub_1BF95066C()
{
  OUTLINED_FUNCTION_41_1();
  v22 = v0[5];
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0 + ((*(*(v0[4] - 8) + 80) + 88) & ~*(*(v0[4] - 8) + 80));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_0(v9);
  *v10 = v11;
  v10[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_40_1();

  return sub_1BF946D4C(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1BF950774()
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_61_1();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_0(v5);
  *v6 = v7;
  v6[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_56_4();

  return sub_1BF947578(v8, v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t result)
{
  *(result + 8) = sub_1BF9469C0;
  v2 = *(v1 + 176);
  v3 = *(v1 + 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_67_3(uint64_t a1)
{

  return MEMORY[0x1EEE69DA8](v1, a1);
}

void *OUTLINED_FUNCTION_71_2(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v4;
  result[5] = v3;
  result[6] = v2;
  result[7] = v1;
  v6 = *(v5 - 104);
  result[8] = *(v5 - 96);
  result[9] = v6;
  v7 = *(v5 - 88);
  return result;
}

__n128 OUTLINED_FUNCTION_73_1(__n128 *a1)
{
  *(v2 + 72) = a1;
  result = *(v2 + 24);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v1;
  a1[2] = result;
  a1[3].n128_u64[0] = v5;
  a1[3].n128_u64[1] = v4;
  return result;
}

void OUTLINED_FUNCTION_84_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
}

uint64_t OUTLINED_FUNCTION_88_0()
{
  v3 = *(v1 + 216);
  v4 = *(v1 + 80);

  return sub_1BF94AB58(v0);
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_92_0()
{
  type metadata accessor for SingleAccessProcessor.ProcessedTask();

  return sub_1BF9B50F8();
}

uint64_t OUTLINED_FUNCTION_106_0()
{
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
}

uint64_t OUTLINED_FUNCTION_107_0()
{
  v2 = *(v0 + 16);
}

uint64_t sub_1BF950B70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9090B8;

  return NoOpGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

uint64_t sub_1BF950DF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BF9B47C8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1BF9B47B8();
}

uint64_t sub_1BF950E8C()
{
  sub_1BF9547E8();
  result = sub_1BF9B50D8();
  qword_1EDBF5670 = result;
  return result;
}

id static Logger.log.getter()
{
  if (qword_1EDBF57E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBF5670;

  return v1;
}

uint64_t static Logger.makeSignpostID(log:)(void *a1)
{
  v1 = a1;

  return sub_1BF9B4788();
}

uint64_t static Logger.begin(_:_:log:telemetry:)()
{
  OUTLINED_FUNCTION_18_10();
  sub_1BF9B5078();
  OUTLINED_FUNCTION_31_10();
  return OUTLINED_FUNCTION_29_5(v0, &dword_1BF8B8000);
}

uint64_t static Logger.end(_:_:log:telemetry:)()
{
  OUTLINED_FUNCTION_18_10();
  sub_1BF9B5068();
  OUTLINED_FUNCTION_31_10();
  return OUTLINED_FUNCTION_29_5(v0, &dword_1BF8B8000);
}

uint64_t static Logger.withSignpost<A>(name:log:completion:)(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v24 = a3;
  v23[0] = a1;
  v23[1] = a2;
  v8 = sub_1BF9B4798();
  v9 = OUTLINED_FUNCTION_2_5(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BF9B50C8();
  if ((v16 & 1) == 0)
  {
    return a5(v16, v17);
  }

  v18 = a4;
  sub_1BF9B4788();
  sub_1BF9B5078();
  OUTLINED_FUNCTION_25_8();
  v20 = OUTLINED_FUNCTION_38_6(v19, &dword_1BF8B8000);
  (a5)(v20);
  sub_1BF9B5068();
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_38_6(v21, &dword_1BF8B8000);
  return (*(v11 + 8))(v15, v5);
}

uint64_t sub_1BF9512EC(uint64_t a1, uint64_t a2)
{
  sub_1BF8EE390(a1, &v20, &qword_1EBDE9208, &unk_1BF9C2A50);
  if (!v21)
  {
    sub_1BF8EE3F8(&v20, &qword_1EBDE9208, &unk_1BF9C2A50);
    return 7104878;
  }

  sub_1BF8C192C(&v20, v22);
  sub_1BF8C187C(v22, &v20);
  *&v20 = sub_1BF9B4B08();
  *(&v20 + 1) = v3;
  sub_1BF904C28();
  v4 = sub_1BF9B5188();
  v6 = v5;

  *&v20 = v4;
  *(&v20 + 1) = v6;
  v7 = sub_1BF9B5188();
  v9 = v8;

  result = sub_1BF9B4B58();
  if (result <= a2)
  {
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v7;
  }

  if (a2 + 0x4000000000000000 >= 0)
  {
    v11 = 2 * a2 / 3;

    v12 = sub_1BF9A9210(v11);
    v13 = MEMORY[0x1BFB5DE30](v12);
    v15 = v14;

    *&v20 = v13;
    *(&v20 + 1) = v15;
    MEMORY[0x1BFB5DE90](3026478, 0xE300000000000000);
    v16 = sub_1BF951538(a2 - v11 - 3, v7, v9);
    v17 = MEMORY[0x1BFB5DE30](v16);
    v19 = v18;

    MEMORY[0x1BFB5DE90](v17, v19);

    v7 = v20;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF951538(unint64_t result, uint64_t a2, unint64_t a3)
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

    result = sub_1BF9B4B78();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_1BF9B4C58();

      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_1BF951610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_35_6();
  a33 = v34;
  a34 = v38;
  if (*(v36 + 16))
  {
    v39 = v36;
    v53 = v35;
    v54 = v37;
    OUTLINED_FUNCTION_28_8(MEMORY[0x1E69E7CC0]);
    v47 = a22;
    do
    {
      OUTLINED_FUNCTION_37_5(v40, v41, v42, v43, v44, v45, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CB0, &unk_1BF9C2890);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1BF9B6380;
      OUTLINED_FUNCTION_27_5(v48, MEMORY[0x1E69E6158]);
      sub_1BF8EE390(v49, v50, &qword_1EBDE9208, &unk_1BF9C2A50);

      sub_1BF8EE3F8(&a16, &qword_1EBDE9CA8, &qword_1BF9C2888);
      OUTLINED_FUNCTION_34_7();
      if (v51)
      {
        OUTLINED_FUNCTION_30_6();
        v47 = a22;
      }

      OUTLINED_FUNCTION_26_10();
    }

    while (!v52);
    sub_1BF9519F4(v53, v39, v54, v47);
  }

  OUTLINED_FUNCTION_36_7();
}

void sub_1BF951740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_35_6();
  a33 = v34;
  a34 = v38;
  if (*(v36 + 16))
  {
    v39 = v36;
    v53 = v35;
    v54 = v37;
    OUTLINED_FUNCTION_28_8(MEMORY[0x1E69E7CC0]);
    v47 = a22;
    do
    {
      OUTLINED_FUNCTION_37_5(v40, v41, v42, v43, v44, v45, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CB0, &unk_1BF9C2890);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1BF9B6380;
      OUTLINED_FUNCTION_27_5(v48, MEMORY[0x1E69E6158]);
      sub_1BF8EE390(v49, v50, &qword_1EBDE9208, &unk_1BF9C2A50);

      sub_1BF8EE3F8(&a16, &qword_1EBDE9CA8, &qword_1BF9C2888);
      OUTLINED_FUNCTION_34_7();
      if (v51)
      {
        OUTLINED_FUNCTION_30_6();
        v47 = a22;
      }

      OUTLINED_FUNCTION_26_10();
    }

    while (!v52);
    sub_1BF9519F4(v53, v39, v54, v47);
  }

  OUTLINED_FUNCTION_36_7();
}

void Logger.toTable<A>(columnNames:elements:maxColumnWidth:transform:)()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v15 = v7;
  v9 = sub_1BF9B4E08();
  OUTLINED_FUNCTION_11_14();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1BF9B5008();
  if ((v11 & 1) == 0)
  {
    v14[7] = v0;
    v15 = v8;
    MEMORY[0x1EEE9AC00](v11);
    v14[2] = v2;
    v14[3] = v6;
    v14[4] = v4;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AF0, &qword_1BF9C27E0);
    sub_1BF9094A0(sub_1BF9519B4, v14, v9, v12, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);
    Logger.toTable<A>(columnNames:elements:maxColumnWidth:rows:)();
  }

  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF9519B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = v3();
  *a1 = result;
  return result;
}

void sub_1BF9519F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a1 + 16);

  if (v9)
  {
    v11 = sub_1BF986FC4(a1);
    v12 = *(a4 + 16);
    v79 = a4;
    if (swift_isUniquelyReferenced_nonNull_native() && v12 < *(a4 + 24) >> 1)
    {
      v69 = a4;
    }

    else
    {
      sub_1BF8DCD08();
      v69 = v13;
      v79 = v13;
    }

    v10 = sub_1BF9543E8(0, 0, 1, v11);
  }

  else
  {
    v69 = a4;
  }

  v78 = 0;
  MEMORY[0x1EEE9AC00](v10);
  v67[2] = &v78;
  v67[3] = v5;
  v67[4] = a3;
  v14 = sub_1BF92433C(sub_1BF954894, v67, v69);
  v15 = v78;
  if (v78 < 0)
  {
    goto LABEL_59;
  }

  v16 = v14;
  v17 = MEMORY[0x1E69E7CC0];
  if (v78)
  {
    v17 = sub_1BF9B4D88();
    *(v17 + 16) = v15;
    bzero((v17 + 32), 8 * v15);
  }

  v72 = *(v16 + 16);
  if (v72)
  {
    v70 = v15;
    v71 = v16;
    v18 = 0;
    v73 = v16 + 32;
    v19 = v17 + 32;
    while (2)
    {
      if (v18 >= *(v16 + 16))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v20 = *(v73 + 8 * v18++);
      v21 = *(v20 + 16);

      v22 = 0;
      v23 = (v20 + 40);
      while (v21 != v22)
      {
        if (v22 >= *(v20 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:

          goto LABEL_41;
        }

        if (v22 >= *(v17 + 16))
        {
          goto LABEL_50;
        }

        v24 = *(v23 - 1);
        v25 = *v23;
        v26 = *(v19 + 8 * v22);

        v27 = sub_1BF9B4B58();

        if (v22 >= *(v17 + 16))
        {
          goto LABEL_51;
        }

        if (v27 <= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        *(v19 + 8 * v22) = v28;
        v23 += 2;
        ++v22;
      }

      v16 = v71;
      if (v18 != v72)
      {
        continue;
      }

      break;
    }

    v29 = *(v71 + 16);
    v30 = v70;
    if (v29)
    {
      v77 = MEMORY[0x1E69E7CC0];
      sub_1BF8D01C0();
      v31 = 0;
      v21 = v77;
      v32 = v30 - 1;
      v68 = v29;
      v74 = v17;
      while (!__OFADD__(v31, 1))
      {
        v70 = v31 + 1;
        v72 = v21;
        v33 = *(v73 + 8 * v31);
        v75 = 0;
        v76 = 0xE000000000000000;
        v34 = *(v33 + 16);

        v35 = 0;
        v36 = (v33 + 40);
        while (v34 != v35)
        {
          if (v35 >= *(v33 + 16))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v38 = *(v36 - 1);
          v37 = *v36;

          MEMORY[0x1BFB5DE90](v38, v37);
          if (v35 < v32)
          {
            if (v35 >= *(v17 + 16))
            {
              goto LABEL_54;
            }

            v39 = v19;
            v40 = *(v19 + 8 * v35);
            v41 = sub_1BF9B4B58();

            if (__OFSUB__(v40, v41))
            {
              goto LABEL_55;
            }

            if (__OFADD__(v40 - v41, 2))
            {
              goto LABEL_56;
            }

            v42 = sub_1BF9B4C28();
            MEMORY[0x1BFB5DE90](v42);
            v19 = v39;
            v17 = v74;
          }

          v36 += 2;
          ++v35;
        }

        v43 = v75;
        v44 = v76;
        v21 = v72;
        v77 = v72;
        v45 = *(v72 + 16);
        if (v45 >= *(v72 + 24) >> 1)
        {
          sub_1BF8D01C0();
          v21 = v77;
        }

        *(v21 + 16) = v45 + 1;
        v46 = v21 + 16 * v45;
        *(v46 + 32) = v43;
        *(v46 + 40) = v44;
        v31 = v70;
        if (v70 == v68)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_58;
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v47 = *(v69 + 16);
  if (!v47)
  {
    goto LABEL_60;
  }

  v48 = 0;
  v49 = 0;
  v50 = v69 + 40;
  v51 = v47 - 1;
  do
  {
    if (v51 == v49)
    {
      goto LABEL_48;
    }

    v52 = *(*v50 + 16);
    v53 = *(*(v50 - 8) + 16);
    ++v49;
    v48 += 16;
    v50 += 8;
  }

  while (v52 == v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1BF9C27D0;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD000000000000028, 0x80000001BF9CCD10);
  v77 = v49 - 1;
  v55 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v55);

  MEMORY[0x1BFB5DE90](0x20646E6120, 0xE500000000000000);
  v77 = v49;
  v56 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v56);

  MEMORY[0x1BFB5DE90](0xD000000000000026, 0x80000001BF9CCD40);
  v57 = v76;
  *(v54 + 32) = v75;
  *(v54 + 40) = v57;
  v77 = v49 - 1;
  v75 = sub_1BF9B5668();
  v76 = v58;
  MEMORY[0x1BFB5DE90](8250, 0xE200000000000000);
  if (v49 > *(v21 + 16))
  {
    goto LABEL_61;
  }

  v59 = v21 + v48;
  v60 = *(v21 + v48 + 16);
  v61 = *(v21 + v48 + 24);

  MEMORY[0x1BFB5DE90](v60, v61);

  v62 = v76;
  *(v54 + 48) = v75;
  *(v54 + 56) = v62;
  v77 = v49;
  v75 = sub_1BF9B5668();
  v76 = v63;
  MEMORY[0x1BFB5DE90](8250, 0xE200000000000000);
  if (v49 < *(v21 + 16))
  {
    v64 = *(v59 + 32);
    v65 = *(v59 + 40);

    MEMORY[0x1BFB5DE90](v64, v65);

    v66 = v76;
    *(v54 + 64) = v75;
    *(v54 + 72) = v66;
LABEL_48:

    return;
  }

LABEL_62:
  __break(1u);
}

void Logger.toTable<A>(columnNames:elements:maxColumnWidth:rows:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v6 + 16);

  if (v8)
  {
    v10 = sub_1BF986FC4(v7);
    v11 = *(v3 + 16);
    v82 = v3;
    if (swift_isUniquelyReferenced_nonNull_native() && v11 < *(v3 + 24) >> 1)
    {
      v72 = v3;
    }

    else
    {
      sub_1BF8DCD08();
      v72 = v12;
      v82 = v12;
    }

    v9 = sub_1BF9543E8(0, 0, 1, v10);
  }

  else
  {
    v72 = v3;
  }

  v81 = 0;
  MEMORY[0x1EEE9AC00](v9);
  v70[2] = &v81;
  v70[3] = v1;
  v70[4] = v5;
  v13 = sub_1BF92433C(sub_1BF954520, v70, v72);
  v14 = v81;
  if (v81 < 0)
  {
    goto LABEL_59;
  }

  v15 = v13;
  v16 = MEMORY[0x1E69E7CC0];
  if (v81)
  {
    v16 = sub_1BF9B4D88();
    *(v16 + 16) = v14;
    bzero((v16 + 32), 8 * v14);
  }

  v75 = *(v15 + 16);
  if (v75)
  {
    v73 = v14;
    v74 = v15;
    v17 = 0;
    v76 = v15 + 32;
    v18 = v16 + 32;
    while (2)
    {
      if (v17 >= *(v15 + 16))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v19 = *(v76 + 8 * v17++);
      v20 = *(v19 + 16);

      v21 = 0;
      v22 = (v19 + 40);
      while (v20 != v21)
      {
        if (v21 >= *(v19 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:

          goto LABEL_41;
        }

        if (v21 >= *(v16 + 16))
        {
          goto LABEL_50;
        }

        v23 = *(v22 - 1);
        v24 = *v22;
        v25 = *(v18 + 8 * v21);

        v26 = sub_1BF9B4B58();

        if (v21 >= *(v16 + 16))
        {
          goto LABEL_51;
        }

        if (v26 <= v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        *(v18 + 8 * v21) = v27;
        v22 += 2;
        ++v21;
      }

      v15 = v74;
      if (v17 != v75)
      {
        continue;
      }

      break;
    }

    v28 = *(v74 + 16);
    v29 = v73;
    if (v28)
    {
      v80 = MEMORY[0x1E69E7CC0];
      sub_1BF8D01C0();
      v30 = 0;
      v20 = v80;
      v31 = v29 - 1;
      v71 = v28;
      v77 = v16;
      while (!__OFADD__(v30, 1))
      {
        v73 = v30 + 1;
        v75 = v20;
        v32 = *(v76 + 8 * v30);
        v78 = 0;
        v79 = 0xE000000000000000;
        v33 = *(v32 + 16);

        v34 = 0;
        v35 = (v32 + 40);
        while (v33 != v34)
        {
          if (v34 >= *(v32 + 16))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v37 = *(v35 - 1);
          v36 = *v35;

          MEMORY[0x1BFB5DE90](v37, v36);
          if (v34 < v31)
          {
            if (v34 >= *(v16 + 16))
            {
              goto LABEL_54;
            }

            v38 = v18;
            v39 = *(v18 + 8 * v34);
            v40 = sub_1BF9B4B58();

            if (__OFSUB__(v39, v40))
            {
              goto LABEL_55;
            }

            if (__OFADD__(v39 - v40, 2))
            {
              goto LABEL_56;
            }

            v41 = sub_1BF9B4C28();
            MEMORY[0x1BFB5DE90](v41);
            v18 = v38;
            v16 = v77;
          }

          v35 += 2;
          ++v34;
        }

        v42 = v78;
        v43 = v79;
        v20 = v75;
        v80 = v75;
        v44 = *(v75 + 16);
        if (v44 >= *(v75 + 24) >> 1)
        {
          sub_1BF8D01C0();
          v20 = v80;
        }

        *(v20 + 16) = v44 + 1;
        v45 = v20 + 16 * v44;
        *(v45 + 32) = v42;
        *(v45 + 40) = v43;
        v30 = v73;
        if (v73 == v71)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_58;
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v46 = *(v72 + 16);
  if (!v46)
  {
    goto LABEL_60;
  }

  v47 = 0;
  v48 = 0;
  v49 = v72 + 40;
  v50 = v46 - 1;
  do
  {
    if (v50 == v48)
    {
      goto LABEL_48;
    }

    v51 = *(*v49 + 16);
    v52 = *(*(v49 - 8) + 16);
    ++v48;
    v47 += 16;
    v49 += 8;
  }

  while (v51 == v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1BF9C27D0;
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD000000000000028, 0x80000001BF9CCD10);
  v80 = v48 - 1;
  OUTLINED_FUNCTION_24();
  v54 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v54);

  MEMORY[0x1BFB5DE90](0x20646E6120, 0xE500000000000000);
  v80 = v48;
  OUTLINED_FUNCTION_24();
  v55 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v55);

  MEMORY[0x1BFB5DE90](0xD000000000000026, 0x80000001BF9CCD40);
  v56 = v79;
  *(v53 + 32) = v78;
  *(v53 + 40) = v56;
  v80 = v48 - 1;
  OUTLINED_FUNCTION_24();
  v57 = sub_1BF9B5668();
  OUTLINED_FUNCTION_44_6(v57, v58);
  if (v48 > *(v20 + 16))
  {
    goto LABEL_61;
  }

  v59 = v20 + v47;
  v60 = *(v20 + v47 + 16);
  v61 = *(v20 + v47 + 24);

  v62 = OUTLINED_FUNCTION_24();
  MEMORY[0x1BFB5DE90](v62);

  v63 = v79;
  *(v53 + 48) = v78;
  *(v53 + 56) = v63;
  v80 = v48;
  v64 = sub_1BF9B5668();
  OUTLINED_FUNCTION_44_6(v64, v65);
  if (v48 < *(v20 + 16))
  {
    v66 = *(v59 + 32);
    v67 = *(v59 + 40);

    v68 = OUTLINED_FUNCTION_24();
    MEMORY[0x1BFB5DE90](v68);

    v69 = v79;
    *(v53 + 64) = v78;
    *(v53 + 72) = v69;
LABEL_48:

    OUTLINED_FUNCTION_64();
    return;
  }

LABEL_62:
  __break(1u);
}

uint64_t sub_1BF952628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (*(*a1 + 16) > *a2)
  {
    v7 = *(*a1 + 16);
  }

  *a2 = v7;
  v9[2] = a3;
  v9[3] = a4;
  result = sub_1BF924688(sub_1BF9547A8, v9, v6);
  *a5 = result;
  return result;
}

uint64_t Logger.getDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, unint64_t a2)
{
  Logger.toTable<A>(columnNames:elements:maxColumnWidth:transform:)();
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {

    v5 = OUTLINED_FUNCTION_13_9();
    MEMORY[0x1BFB5DE90](v5);
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  OUTLINED_FUNCTION_13_9();
  v7 = sub_1BF9B4A78();
  v9 = v8;

  MEMORY[0x1BFB5DE90](v7, v9);

  return v6;
}

void Logger.getDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)()
{
  OUTLINED_FUNCTION_35_6();
  v1 = v0;
  v3 = v2;

  swift_getTupleTypeMetadata2();
  sub_1BF9B49D8();
  OUTLINED_FUNCTION_10_12();
  swift_getWitnessTable();
  sub_1BF9B4E18();
  Logger.toTable<A>(columnNames:elements:maxColumnWidth:transform:)();

  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {

    v5 = OUTLINED_FUNCTION_15_15();
    MEMORY[0x1BFB5DE90](v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  OUTLINED_FUNCTION_15_15();
  v6 = sub_1BF9B4A78();
  v8 = v7;

  MEMORY[0x1BFB5DE90](v6, v8);

  OUTLINED_FUNCTION_36_7();
}

void sub_1BF952A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void))
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_19_12(v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_1BF9B47C8();
  v30 = OUTLINED_FUNCTION_2_5(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = OUTLINED_FUNCTION_12_12(v33, v50);
  v35(v34);

  v36 = sub_1BF9B47A8();
  v37 = a21();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_109();
    v51 = OUTLINED_FUNCTION_35_4();
    v52 = v51;
    *v38 = 136315138;
    v39 = OUTLINED_FUNCTION_20_12();
    v40 = v37;
    v42 = Logger.getDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)(v39, v41);
    v44 = v43;
    v45 = OUTLINED_FUNCTION_14_9();
    v46(v45);
    v47 = sub_1BF8DE810(v42, v44, &v52);

    *(v38 + 4) = v47;
    _os_log_impl(&dword_1BF8B8000, v36, v40, "%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    v48 = OUTLINED_FUNCTION_14_9();
    v49(v48);
  }

  OUTLINED_FUNCTION_64();
}

void sub_1BF952C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(void))
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_19_12(v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_1BF9B47C8();
  v32 = OUTLINED_FUNCTION_2_5(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = OUTLINED_FUNCTION_12_12(v35, v50);
  v37(v36);

  v38 = sub_1BF9B47A8();
  v39 = a23();

  if (os_log_type_enabled(v38, v39))
  {
    v52 = v39;
    v40 = OUTLINED_FUNCTION_109();
    v51 = OUTLINED_FUNCTION_35_4();
    v53 = v51;
    *v40 = 136315138;
    OUTLINED_FUNCTION_20_12();
    Logger.getDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)();
    v42 = v41;
    v44 = v43;
    v45 = OUTLINED_FUNCTION_14_9();
    v46(v45);
    v47 = sub_1BF8DE810(v42, v44, &v53);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_1BF8B8000, v38, v52, "%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    v48 = OUTLINED_FUNCTION_14_9();
    v49(v48);
  }

  OUTLINED_FUNCTION_64();
}

uint64_t Logger.toAsyncTable<A>(columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = OUTLINED_FUNCTION_4_0();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BF952E64()
{
  *(v0 + 16) = *(v0 + 40);
  v1 = *(v0 + 72);
  sub_1BF9B4E08();
  OUTLINED_FUNCTION_11_14();
  swift_getWitnessTable();
  if (sub_1BF9B5008())
  {
    v2 = *(v0 + 8);

    return v2(&unk_1F3EF5F00);
  }

  else
  {
    v4 = *(v0 + 72);
    *(v0 + 24) = *(v0 + 40);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    v6 = *(v0 + 56);
    *(v5 + 16) = v4;
    *(v5 + 24) = v6;
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AF0, &qword_1BF9C27E0);
    swift_getWitnessTable();
    *v7 = v0;
    v7[1] = sub_1BF953004;

    return Sequence.asyncMap<A>(_:)();
  }
}

void sub_1BF953004(uint64_t a1)
{
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  v6 = *(v4 + 96);
  v7 = *v2;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v1)
  {
  }

  else
  {
    v9 = *(v5 + 88);
    *(v5 + 104) = a1;

    MEMORY[0x1EEE6DFA0](sub_1BF95313C, 0, 0);
  }
}

uint64_t sub_1BF95313C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[4];
  Logger.toTable<A>(columnNames:elements:maxColumnWidth:rows:)();

  v5 = OUTLINED_FUNCTION_5();

  return v6(v5);
}

uint64_t sub_1BF9531B0(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BF9532A8;

  return v8(a2);
}

uint64_t sub_1BF9532A8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t Logger.getAsyncDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)()
{
  OUTLINED_FUNCTION_45();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v0[5] = v13;
  v0[6] = v14;
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = sub_1BF953488;

  return Logger.toAsyncTable<A>(columnNames:elements:maxColumnWidth:transform:)(v12, v10, v8, v6, v4, v2);
}

uint64_t sub_1BF953488()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  v5 = *(v4 + 56);
  v6 = *v0;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BF953568()
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  v2 = v0[5];
  v1 = v0[6];
  OUTLINED_FUNCTION_33_6();
  if (v5)
  {
    v22 = v4;
    v23 = v3;

    v6 = OUTLINED_FUNCTION_13_9();
    MEMORY[0x1BFB5DE90](v6);
    v8 = v22;
    v7 = v23;
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v0[4] = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  OUTLINED_FUNCTION_15_15();
  v9 = sub_1BF9B4A78();
  v11 = v10;

  MEMORY[0x1BFB5DE90](v9, v11);

  v12 = v0[1];
  OUTLINED_FUNCTION_100();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20, v8, v7);
}

uint64_t Logger.getAsyncDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = v15;
  v9[16] = v8;
  v9[13] = a8;
  v9[14] = v14;
  v9[11] = a6;
  v9[12] = a7;
  v9[9] = a4;
  v9[10] = a5;
  v9[7] = a2;
  v9[8] = a3;
  v9[6] = a1;
  v10 = OUTLINED_FUNCTION_4_0();
  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF9536AC()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 72);

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1BF9B49D8();
  OUTLINED_FUNCTION_10_12();
  swift_getWitnessTable();
  v12 = *(v0 + 88);
  v5 = sub_1BF9B4E18();
  *(v0 + 136) = v5;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  *(v6 + 32) = v1;
  *(v6 + 40) = v12;
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_1BF953820;
  v8 = *(v0 + 128);
  v9 = *(v0 + 80);
  v10 = *(v0 + 64);

  return Logger.toAsyncTable<A>(columnNames:elements:maxColumnWidth:transform:)(v10, v5, v9, &unk_1BF9C2818, v6, TupleTypeMetadata2);
}

uint64_t sub_1BF953820()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  v5 = v4[19];
  v6 = v4[18];
  v7 = v4[17];
  v8 = *v0;
  OUTLINED_FUNCTION_3();
  *v9 = v8;

  v10 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF953938()
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  v2 = v0[6];
  v1 = v0[7];
  OUTLINED_FUNCTION_33_6();
  if (v5)
  {
    v22 = v4;
    v23 = v3;

    v6 = OUTLINED_FUNCTION_13_9();
    MEMORY[0x1BFB5DE90](v6);
    v8 = v22;
    v7 = v23;
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v0[5] = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  OUTLINED_FUNCTION_15_15();
  v9 = sub_1BF9B4A78();
  v11 = v10;

  MEMORY[0x1BFB5DE90](v9, v11);

  v12 = v0[1];
  OUTLINED_FUNCTION_100();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20, v8, v7);
}

uint64_t sub_1BF953A38(uint64_t a1, int *a2)
{
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BF8EFA40;

  return v9(a1, a1 + v5);
}

uint64_t Logger.asyncDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)()
{
  OUTLINED_FUNCTION_1_19();
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32_8(v2);
  *v3 = v4;
  v3[1] = sub_1BF953C20;
  OUTLINED_FUNCTION_0_18();

  return Logger.getAsyncDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)();
}

uint64_t sub_1BF953C20()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  OUTLINED_FUNCTION_5_14(v3, v4);
  v6 = *(v5 + 48);
  v7 = *v0;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v10 + 56) = v9;

  v11 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t Logger.asyncDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_19();
  *(v9 + 40) = v8;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32_8(v10);
  *v11 = v12;
  v11[1] = sub_1BF953DBC;
  v13 = OUTLINED_FUNCTION_0_18();

  return Logger.getAsyncDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(v13, v14, v15, v16, v17, v18, a7, a8);
}

uint64_t sub_1BF953DBC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  OUTLINED_FUNCTION_5_14(v3, v4);
  v6 = *(v5 + 48);
  v7 = *v0;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v10 + 56) = v9;

  v11 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BF953E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  v11 = v10[7];
  v12 = v10[5];

  v13 = sub_1BF9B47A8();
  v14 = sub_1BF9B5038();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v10[7];
  if (v15)
  {
    v17 = v10[3];
    v18 = OUTLINED_FUNCTION_109();
    a10 = OUTLINED_FUNCTION_35_4();
    v19 = OUTLINED_FUNCTION_43_6(4.8149e-34, a10);

    *(v18 + 4) = v19;
    OUTLINED_FUNCTION_42_7(&dword_1BF8B8000, v20, v21, "%s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {
  }

  v22 = v10[1];
  OUTLINED_FUNCTION_100();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t Logger.asyncInfoTable<A>(title:columnNames:elements:maxColumnWidth:transform:)()
{
  OUTLINED_FUNCTION_1_19();
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32_8(v2);
  *v3 = v4;
  v3[1] = sub_1BF954064;
  OUTLINED_FUNCTION_0_18();

  return Logger.getAsyncDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)();
}

uint64_t sub_1BF954064()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  OUTLINED_FUNCTION_5_14(v3, v4);
  v6 = *(v5 + 48);
  v7 = *v0;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v10 + 56) = v9;

  v11 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t Logger.asyncInfoTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_19();
  *(v9 + 40) = v8;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32_8(v10);
  *v11 = v12;
  v11[1] = sub_1BF954200;
  v13 = OUTLINED_FUNCTION_0_18();

  return Logger.getAsyncDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(v13, v14, v15, v16, v17, v18, a7, a8);
}

uint64_t sub_1BF954200()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  OUTLINED_FUNCTION_5_14(v3, v4);
  v6 = *(v5 + 48);
  v7 = *v0;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v10 + 56) = v9;

  v11 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BF9542DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  v11 = v10[7];
  v12 = v10[5];

  v13 = sub_1BF9B47A8();
  v14 = sub_1BF9B5028();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v10[7];
  if (v15)
  {
    v17 = v10[3];
    v18 = OUTLINED_FUNCTION_109();
    a10 = OUTLINED_FUNCTION_35_4();
    v19 = OUTLINED_FUNCTION_43_6(4.8149e-34, a10);

    *(v18 + 4) = v19;
    OUTLINED_FUNCTION_42_7(&dword_1BF8B8000, v20, v21, "%s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {
  }

  v22 = v10[1];
  OUTLINED_FUNCTION_100();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_1BF9543E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = *v4;
  v11 = *v4 + 32;
  v12 = v11 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AF0, &qword_1BF9C27E0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v5);
  v14 = a3 - v5;
  if (v13)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v10 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BF958C60((v11 + 8 * a2), v15 - a2, (v12 + 8 * a3));
  v16 = *(v10 + 16);
  v13 = __OFADD__(v16, v14);
  v17 = v16 + v14;
  if (v13)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v10 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    v18 = v10 + 8 * v9;
    *(v18 + 32) = a4;
    if (v18 + 40 < (v12 + 8 * a3))
    {

      __break(1u);
    }
  }

  return result;
}