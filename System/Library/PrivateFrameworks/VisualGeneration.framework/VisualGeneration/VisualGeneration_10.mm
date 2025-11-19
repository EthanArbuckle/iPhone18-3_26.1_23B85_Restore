uint64_t sub_19A3B4594(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19A3B47EC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_19A3B4834(uint64_t a1)
{
  v2 = type metadata accessor for EntityExtractor.NamedEntity.EntityData(0);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_19A57102C();
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = (a1 + 32);
  v29 = (v9 + 48);
  v30 = "nary8{_NSRange=QQ}16^B32";
  v26 = "kQPNamedEntityIdentifier";
  v27 = (v9 + 16);
  v28 = (v9 + 32);
  v14 = (v9 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = *v13;
    if (!*(*v13 + 16))
    {
      goto LABEL_21;
    }

    v17 = sub_19A31F6BC(0xD000000000000018, v30 | 0x8000000000000000);
    if ((v18 & 1) == 0 || (sub_19A334618(*(v16 + 56) + 32 * v17, v34), (swift_dynamicCast() & 1) == 0))
    {

LABEL_21:

      return 0;
    }

    sub_19A570FCC();

    if ((*v29)(v7, 1, v8) == 1)
    {
      break;
    }

    (*v28)(v11, v7, v8);
    if (!*(v16 + 16) || (v19 = sub_19A31F6BC(0xD000000000000018, v26 | 0x8000000000000000), (v20 & 1) == 0))
    {

LABEL_12:
      v21 = 0;
      goto LABEL_13;
    }

    sub_19A334618(*(v16 + 56) + 32 * v19, v34);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_12;
    }

    v21 = v33;
LABEL_13:
    (*v27)(v4, v11, v8);
    v4[*(v32 + 20)] = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_19A31E034(0, v15[2] + 1, 1, v15);
    }

    v23 = v15[2];
    v22 = v15[3];
    if (v23 >= v22 >> 1)
    {
      v15 = sub_19A31E034(v22 > 1, v23 + 1, 1, v15);
    }

    (*v14)(v11, v8);
    v15[2] = v23 + 1;
    sub_19A3B4C64(v4, v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23);
    ++v13;
    if (!--v12)
    {
      return v15;
    }
  }

  sub_19A2F3FA0(v7, &qword_1EAF9FD80);
  return 0;
}

uint64_t sub_19A3B4C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityExtractor.NamedEntity.EntityData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A3B4CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A3B4D48(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v8 = *i;
    v9 = *i;
    result = a1(&v9);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

double sub_19A3B4DCC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_19A57102C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_19A3B50A8();
  v17 = a1;
  v11 = sub_19A3B4D48(sub_19A3B51E4, v16, v10);
  v13 = v12;

  if (v11)
  {
    (*(v7 + 16))(v9, a2, v6);
    v14 = *(v13 + 24);
    v18[3] = v11;
    v18[4] = v13;
    __swift_allocate_boxed_opaque_existential_1(v18);
    v14(v9, v11, v13);
    sub_19A2F3EF0(v18, a3);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_19A3B4F44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA04B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19A57A9D0;
  v1 = type metadata accessor for ModelManagerDiffusionOperation(0);
  v2 = sub_19A3B5300(&qword_1EAF9F2D8, type metadata accessor for ModelManagerDiffusionOperation);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for InProcessDiffusionOperation(0);
  v4 = sub_19A3B5300(&qword_1EAF9F348, type metadata accessor for InProcessDiffusionOperation);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for InProcessWordCloudGeneratorOperation();
  v6 = sub_19A3B5300(&qword_1EAF9F2A0, type metadata accessor for InProcessWordCloudGeneratorOperation);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for InProcessUnsupportedArchitectureGeneratorOperation();
  result = sub_19A3B5300(&qword_1EAF9F250, type metadata accessor for InProcessUnsupportedArchitectureGeneratorOperation);
  *(v0 + 80) = v7;
  *(v0 + 88) = result;
  off_1EAF9F2C0 = v0;
  return result;
}

uint64_t sub_19A3B50A8()
{
  if (qword_1EAF9F2B8 != -1)
  {
    swift_once();
  }

  v0 = *(off_1EAF9F2C0 + 2);
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = off_1EAF9F2C0 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *v1;
    if ((*(*(*(v1 + 1) + 8) + 32))())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19A3226C0(0, *(v2 + 16) + 1, 1);
      }

      v4 = *(v2 + 16);
      v3 = *(v2 + 24);
      if (v4 >= v3 >> 1)
      {
        sub_19A3226C0((v3 > 1), v4 + 1, 1);
      }

      *(v2 + 16) = v4 + 1;
      *(v2 + 16 * v4 + 32) = v6;
    }

    v1 += 16;
    --v0;
  }

  while (v0);
  return v2;
}

uint64_t sub_19A3B5230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_19A2F3EF0(a3, v13);
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10 = (*(v9 + 16))(v8, v9);
  LOBYTE(v8) = v11;
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v4(v7, v10, v8 & 1);
}

uint64_t sub_19A3B5300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters()
{
  result = qword_1EAF9F220;
  if (!qword_1EAF9F220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A3B53BC()
{
  sub_19A3B5490(319, &qword_1EAF9F498, type metadata accessor for ModelManagerInterface);
  if (v0 <= 0x3F)
  {
    sub_19A3B12E0();
    if (v1 <= 0x3F)
    {
      sub_19A3B5490(319, &qword_1EAF9F8C8, MEMORY[0x1E6969770]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19A3B5490(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19A57378C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ImageGeneratingOperationProgress(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ImageGeneratingOperationProgress(uint64_t result, int a2, int a3)
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

uint64_t sub_19A3B5540(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_19A3B5588(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_19A3B55D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_19A3B5710(a1, &v12);
  if (v13)
  {
    sub_19A3355E8(&v12, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0180);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_19A576E20;
    *(v8 + 56) = a2;
    *(v8 + 64) = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v4, a2);
    sub_19A2F3EF0(v14, v8 + 72);
    a4[3] = &type metadata for RecipePreparationSequence;
    a4[4] = &off_1F0DAE3D0;
    *a4 = v8;
    return __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    sub_19A3B5780(&v12);
    a4[3] = a2;
    a4[4] = a3;
    v11 = __swift_allocate_boxed_opaque_existential_1(a4);
    return (*(*(a2 - 8) + 16))(v11, v4, a2);
  }
}

uint64_t sub_19A3B5710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A3B5780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A3B57F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for GenerationRecipe(0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3B588C, 0, 0);
}

uint64_t sub_19A3B588C()
{
  v1 = v0[4];
  sub_19A39AA50(v0[3], v0[2]);
  v2 = *(v1 + 16);
  v0[6] = v2;
  if (v2)
  {
    v3 = v0[4];
    v0[7] = 0;
    v4 = v3[7];
    v5 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
    v11 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_19A3B5A1C;
    v7 = v0[5];
    v8 = v0[2];

    return v11(v7, v8, v4, v5);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_19A3B5A1C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_19A3B5CF0;
  }

  else
  {
    v2 = sub_19A3B5B30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3B5B30()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[7] + 1;
  sub_19A3B5E10(v3);
  sub_19A3B5E6C(v2, v3);
  if (v4 == v1)
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[7];
    v0[7] = v7 + 1;
    v8 = (v0[4] + 40 * v7);
    v9 = v8[12];
    v10 = v8[13];
    __swift_project_boxed_opaque_existential_1(v8 + 9, v9);
    v14 = (*(v10 + 8) + **(v10 + 8));
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = sub_19A3B5A1C;
    v12 = v0[5];
    v13 = v0[2];

    return v14(v12, v13, v9, v10);
  }
}

uint64_t sub_19A3B5CF0()
{
  sub_19A3B5E10(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A3B5D60(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A2F759C;

  return sub_19A3B57F8(a1, a2, v6);
}

uint64_t sub_19A3B5E10(uint64_t a1)
{
  v2 = type metadata accessor for GenerationRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A3B5E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentTask.emojiDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentTask.clientProvidedEmojiDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentTask.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask_id;
  v4 = sub_19A57102C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentTask.isCancelled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

Swift::Void __swiftcall KeyboardEmojiGenerator.DescriptionAssignmentTask.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller), v1);
  (*(v2 + 16))(v1, v2);
}

unint64_t KeyboardEmojiGenerator.DescriptionAssignmentTask.description.getter()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8);
  v1 = sub_19A573EDC();
  MEMORY[0x19A900A50](v1);

  MEMORY[0x19A900A50](2238496, 0xE300000000000000);
  MEMORY[0x19A900A50](*(v0 + 16), *(v0 + 24));
  MEMORY[0x19A900A50](10530, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

uint64_t sub_19A3B6158(uint64_t a1, _OWORD *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v5 = sub_19A57102C();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  v6 = a2[1];
  *(v3 + 80) = *a2;
  *(v3 + 96) = v6;

  return MEMORY[0x1EEE6DFA0](sub_19A3B6224, 0, 0);
}

uint64_t sub_19A3B6224()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  (*(*(v0 + 64) + 16))(v1, v2 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask_id, *(v0 + 56));
  sub_19A36BC14(&qword_1ED8252D8);
  v3 = sub_19A573EDC();
  MEMORY[0x19A900A50](v3);

  MEMORY[0x19A900A50](58, 0xE100000000000000);
  *(v0 + 112) = 0x206B736154;
  *(v0 + 120) = 0xE500000000000000;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *(v4 + 16) = 0x206B736154;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = v2;
  *(v4 + 56) = v10;
  *(v4 + 40) = v11;
  *(v4 + 72) = v1;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *(v5 + 16) = 0x206B736154;
  *(v5 + 24) = 0xE500000000000000;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  v7 = type metadata accessor for DefinitionSession();
  *v6 = v0;
  v6[1] = sub_19A3B63F0;
  v8 = *(v0 + 40);

  return MEMORY[0x1EEE6DE18](v8, &unk_19A580E30, v4, sub_19A368918, v5, 0, 0, v7);
}

uint64_t sub_19A3B63F0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_19A3B65A8;
  }

  else
  {

    v2 = sub_19A3B6528;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3B6528()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A3B65A8()
{
  v51 = v0;
  v1 = *(v0 + 152);

  *(v0 + 32) = v1;
  v2 = (v0 + 32);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v6 = sub_19A5723FC();
    __swift_project_value_buffer(v6, qword_1ED82BCF0);

    sub_19A3B870C(v4, v5);
    v7 = sub_19A5723DC();
    v8 = sub_19A57355C();

    sub_19A3B8740(v4, v5);
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 120);
    if (v9)
    {
      v47 = v8;
      v11 = v5;
      v12 = v4;
      v13 = *(v0 + 112);
      v14 = *(v0 + 48);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v15 = 136446723;
      v17 = sub_19A31F114(v13, v10, &v48);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2081;
      *(v15 + 14) = sub_19A31F114(*(v14 + 16), *(v14 + 24), &v48);
      *(v15 + 22) = 2113;
      sub_19A3B8774();
      swift_allocError();
      *v18 = v12;
      *(v18 + 8) = v11;
      sub_19A3B870C(v12, v11);
      v4 = v12;
      v5 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v19;
      *v16 = v19;
      _os_log_impl(&dword_19A2DE000, v7, v47, "%{public}s rejected description %{private}s - %{private}@", v15, 0x20u);
      sub_19A3B86A4(v16);
      MEMORY[0x19A902C50](v16, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v46, -1, -1);
      MEMORY[0x19A902C50](v15, -1, -1);
    }

    else
    {
    }

    v34 = *(v0 + 80);
    if (v34 >= 2)
    {
      v35 = *(v0 + 48);
      if (v5)
      {
        sub_19A3B8774();
        v36 = swift_allocError();
        *v37 = v4;
        *(v37 + 8) = v5;
        v48 = v36;
        v49 = 0;
        v50 = 3;
        v38 = v4;
        v39 = v5;
      }

      else
      {
        v48 = v4;
        v49 = 0;
        v50 = 2;
        v38 = v4;
        v39 = 0;
      }

      sub_19A3B870C(v38, v39);
      sub_19A2E0A50(v34);
      v34(v35, &v48);
      sub_19A2E0A60(v34);
      sub_19A3B865C(v48, v49, v50);
    }

    sub_19A3B8774();
    swift_allocError();
    *v43 = v4;
    *(v43 + 8) = v5;
    swift_willThrow();
  }

  else
  {

    if (qword_1EAF9F200 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 152);
    v21 = sub_19A5723FC();
    __swift_project_value_buffer(v21, qword_1EAFCA1D0);
    v22 = v20;

    v23 = sub_19A5723DC();
    v24 = sub_19A57355C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 152);
      v27 = *(v0 + 112);
      v26 = *(v0 + 120);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48 = v30;
      *v28 = 136446466;
      v31 = sub_19A31F114(v27, v26, &v48);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2112;
      v32 = v25;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v33;
      *v29 = v33;
      _os_log_impl(&dword_19A2DE000, v23, v24, "%{public}s description rejected - %@", v28, 0x16u);
      sub_19A3B86A4(v29);
      MEMORY[0x19A902C50](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x19A902C50](v30, -1, -1);
      MEMORY[0x19A902C50](v28, -1, -1);
    }

    else
    {
    }

    v40 = *(v0 + 80);
    if (v40 >= 2)
    {
      v41 = *(v0 + 48);
      v48 = *(v0 + 152);
      v49 = 0;
      v50 = 3;
      v42 = v48;
      v40(v41, &v48);
      sub_19A3B865C(v48, v49, v50);
    }

    swift_willThrow();
  }

  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_19A3B6B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  type metadata accessor for DefinitionSession();
  v8[11] = swift_task_alloc();
  v8[12] = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  v8[13] = swift_task_alloc();
  v9 = sub_19A57102C();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3B6CC8, 0, 0);
}

uint64_t sub_19A3B6CC8()
{
  v68 = v0;
  if (qword_1EAF9F200 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  v0[17] = __swift_project_value_buffer(v1, qword_1EAFCA1D0);

  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v64.n128_u64[0] = v8;
    *v7 = 136446467;
    *(v7 + 4) = sub_19A31F114(v6, v4, &v64);
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_19A31F114(*(v5 + 16), *(v5 + 24), &v64);
    _os_log_impl(&dword_19A2DE000, v2, v3, "%{public}s assigning description %{private}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v8, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v9 = v0[6];
  if (v9 >= 2)
  {
    v10 = v0[5];
    v11 = *(v10 + 24);
    v64.n128_u64[0] = *(v10 + 16);
    v64.n128_u64[1] = v11;
    LOBYTE(v65) = 0;

    v9(v10, &v64);
    sub_19A3B865C(v64.n128_u64[0], v64.n128_u64[1], v65);
  }

  v12 = sub_19A57231C();
  v0[18] = v12;
  v13 = *(v12 - 8);
  v0[19] = v13;
  v0[20] = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[14];
  v17 = v0[10];
  v18 = sub_19A57236C();
  __swift_project_value_buffer(v18, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  (*(v15 + 16))(v14, v17, v16);

  v19 = sub_19A57234C();
  v20 = sub_19A57361C();

  v21 = sub_19A57376C();
  v23 = v0[15];
  v22 = v0[16];
  v24 = v0[14];
  if (v21)
  {
    v57 = v0[5];
    v25 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v64.n128_u64[0] = v60;
    *v25 = 136446467;
    sub_19A36BC14(&qword_1ED8252D8);
    v26 = sub_19A573EDC();
    v54 = v20;
    v28 = v27;
    (*(v23 + 8))(v22, v24);
    v29 = sub_19A31F114(v26, v28, &v64);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2081;
    *(v25 + 14) = sub_19A31F114(*(v57 + 16), *(v57 + 24), &v64);
    v30 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v19, v54, v30, "assignEmojiDescriptionTask", "%{public}s %{private}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v60, -1, -1);
    MEMORY[0x19A902C50](v25, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v22, v24);
  }

  swift_task_alloc();
  (*(v13 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[21] = sub_19A5723AC();

  sub_19A433224();
  v32 = v0[8];
  v31 = v0[9];
  if (v9 == 1)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    sub_19A2E0A50(v0[8]);
    v32 = v0[8];
    v31 = v0[9];
    v33 = v32;
    v34 = v31;
  }

  v0[22] = v33;
  v0[23] = v34;
  v35 = v0[12];
  v52 = v0[13];
  v51 = v35;
  v62 = v0[11];
  v36 = v0[6];
  v37 = v0[7];
  v55 = v37;
  v38 = v0[5];
  v39 = swift_allocObject();
  v0[24] = v39;
  v39[2] = v36;
  v39[3] = v37;
  v39[4] = v32;
  v39[5] = v31;
  v39[6] = v38;
  v40 = v38[2];
  v0[25] = v40;
  v41 = v38[3];
  v0[26] = v41;
  v58 = v38[5];
  v61 = v38[4];
  v50 = v38 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__assignmentOptions;
  v42 = *(v38 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__assignmentOptions + *(v35 + 32));
  v0[27] = v42;

  sub_19A2E0A50(v33);
  sub_19A3A6BDC(v36, v55, v32);

  sub_19A439A00(v40, v41, v61, v58, v42, &v64);
  v43 = v64;
  v0[28] = v64.n128_u64[1];
  v59 = v65;
  v56 = v66;
  v53 = v67;

  sub_19A3B88D4(v50, v52, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  v44 = sub_19A3B87D8(v52);
  v0[29] = v44;
  sub_19A3B88D4(v38 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__definitionSession, v62, type metadata accessor for DefinitionSession);
  v45 = *(v51 + 24);
  v46 = v50 + *(v51 + 68);
  v63 = *v46;
  v47 = *(v46 + 8);

  v48 = swift_task_alloc();
  v0[30] = v48;
  *v48 = v0;
  v48[1] = sub_19A3B74A8;
  v74 = v42;
  v75 = v44;
  v73 = v34;
  v71 = v39;
  v72 = v33;
  v70 = sub_19A3B87C8;

  return sub_19A4BB3CC(v43.n128_i64[0], v43.n128_i64[1], v59, v56, v53, v50 + v45, v63, v47);
}

uint64_t sub_19A3B74A8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 176);

  sub_19A2E0A60(v3);

  if (v0)
  {
    v4 = sub_19A3B792C;
  }

  else
  {
    v4 = sub_19A3B7670;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A3B7670()
{
  v25 = v0;
  v1 = v0[6];
  if (v1 >= 2 && (v0[29] & 8) == 0)
  {
    v3 = v0[5];
    v22 = 0;
    v23 = 0;
    v24 = 5;
    v1(v3, &v22);
  }

  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[25];
    v6 = v0[26];
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446467;
    *(v10 + 4) = sub_19A31F114(v9, v8, &v22);
    *(v10 + 12) = 2081;
    *(v10 + 14) = sub_19A31F114(v7, v6, &v22);
    _os_log_impl(&dword_19A2DE000, v4, v5, "%{public}s accepted description %{private}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v11, -1, -1);
    MEMORY[0x19A902C50](v10, -1, -1);
  }

  v12 = v0[6];
  if (v12 == 1 || !v1)
  {
    v16 = v0[22];

    sub_19A2E0A60(v16);
  }

  else
  {
    v13 = v0[26];
    v14 = v0[22];
    v15 = v0[5];
    v22 = v0[25];
    v23 = v13;
    v24 = 4;

    v12(v15, &v22);

    sub_19A2E0A60(v14);
    sub_19A3B865C(v22, v23, v24);
  }

  v17 = v0[20];
  v18 = v0[18];
  v19 = v0[19];
  sub_19A37A598(v0[11], v0[2]);
  sub_19A3B7A44("assignEmojiDescriptionTask", 26, 2);

  (*(v19 + 8))(v17, v18);

  v20 = v0[1];

  return v20();
}

uint64_t sub_19A3B792C()
{
  v1 = v0[22];
  v2 = v0[11];

  sub_19A2E0A60(v1);
  sub_19A3B893C(v2, type metadata accessor for DefinitionSession);
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[19];
  sub_19A3B7A44("assignEmojiDescriptionTask", 26, 2);

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_19A3B7A44(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_19A3B7D2C(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = type metadata accessor for Concept(0);
  v10 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAF9F200 != -1)
  {
    swift_once();
  }

  v13 = sub_19A5723FC();
  __swift_project_value_buffer(v13, qword_1EAFCA1D0);

  v14 = sub_19A5723DC();
  v15 = sub_19A57356C();

  if (os_log_type_enabled(v14, v15))
  {
    v40 = v15;
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    v39 = v16;
    *v16 = 136315138;
    v17 = a1[2];
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v33 = v14;
      v35 = a6;
      v36 = a3;
      v37 = a2;
      v42 = MEMORY[0x1E69E7CC0];
      sub_19A322580(0, v17, 0);
      v18 = v42;
      v19 = *(v10 + 80);
      v34 = a1;
      v20 = a1 + ((v19 + 32) & ~v19);
      v21 = *(v10 + 72);
      do
      {
        sub_19A3B88D4(v20, v12, type metadata accessor for Concept);
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_19A573ACC();
        v22 = v44;
        v23 = v45;
        sub_19A3B893C(v12, type metadata accessor for Concept);
        v42 = v18;
        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          sub_19A322580((v24 > 1), v25 + 1, 1);
          v18 = v42;
        }

        v18[2] = v25 + 1;
        v26 = &v18[2 * v25];
        v26[4] = v22;
        v26[5] = v23;
        v20 += v21;
        --v17;
      }

      while (v17);
      a2 = v37;
      a1 = v34;
      a6 = v35;
      v14 = v33;
    }

    v44 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A331C2C();
    v27 = sub_19A572BEC();
    v29 = v28;

    v30 = sub_19A31F114(v27, v29, &v43);

    v31 = v39;
    *(v39 + 1) = v30;
    _os_log_impl(&dword_19A2DE000, v14, v40, "description concepts %s", v31, 0xCu);
    v32 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x19A902C50](v32, -1, -1);
    MEMORY[0x19A902C50](v31, -1, -1);
  }

  if (a2 >= 2)
  {
    v44 = a1;
    v45 = 0;
    v46 = 1;

    a2(a6, &v44);
    sub_19A3B865C(v44, v45, v46);
  }
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentTask.deinit()
{

  v1 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A3B893C(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller);
  sub_19A3B893C(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__assignmentOptions, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  return v0;
}

uint64_t KeyboardEmojiGenerator.DescriptionAssignmentTask.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A3B893C(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller);
  sub_19A3B893C(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__assignmentOptions, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);

  return swift_deallocClassInstance();
}

uint64_t sub_19A3B8288@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask_id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A3B8304()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3) & 1;
}

uint64_t sub_19A3B8368()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator25DescriptionAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentTask()
{
  result = qword_1EAF9EA38;
  if (!qword_1EAF9EA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A3B8440()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DefinitionSession();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(319);
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_19A3B8570(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19A2F759C;

  return sub_19A3B6B94(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_19A3B865C(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_5;
  }

  if (a3 == 3)
  {

    return;
  }

  if (a3 == 4)
  {
LABEL_5:
  }
}

uint64_t sub_19A3B86A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_19A3B870C(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return result;
      }

      return result;
    }
  }

  if (a2 == 2 || a2 == 3)
  {
  }

  return result;
}

void sub_19A3B8740(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2 || a2 == 3)
  {
    goto LABEL_7;
  }
}

unint64_t sub_19A3B8774()
{
  result = qword_1EAFA1038;
  if (!qword_1EAFA1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1038);
  }

  return result;
}

uint64_t sub_19A3B87D8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  v5 = a1;
  v6 = a1[*(v4 + 36)];
  v7 = a1[*(v4 + 28)];
  if (v2 == 1)
  {
    v8 = v6 == 0;
    if (v3)
    {
      if (v6)
      {
        v9 = 15;
      }

      else
      {
        v9 = 11;
      }

      v10 = 3;
      if (!v8)
      {
        v10 = 7;
      }

      if (v7)
      {
        goto LABEL_26;
      }

LABEL_25:
      v9 = v10;
      goto LABEL_26;
    }

    if (v6)
    {
      v9 = 13;
    }

    else
    {
      v9 = 9;
    }

    v10 = 5;
    if (v8)
    {
      v10 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v11 = v6 == 0;
    if (v3)
    {
      if (v6)
      {
        v9 = 14;
      }

      else
      {
        v9 = 10;
      }

      v10 = 2;
      if (!v11)
      {
        v10 = 6;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v6)
      {
        v9 = 12;
      }

      else
      {
        v9 = 8;
      }

      v10 = 4;
      if (v11)
      {
        v10 = 0;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  sub_19A3B893C(v5, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  return v9;
}

uint64_t sub_19A3B88D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3B893C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_19A3B899C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_19A3B8A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 80) = *a5;
  *(v7 + 96) = *(a5 + 16);
  return MEMORY[0x1EEE6DFA0](sub_19A3B8A4C, 0, 0);
}

uint64_t sub_19A3B8A4C()
{
  v86 = v0;
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A57236C();
  __swift_project_value_buffer(v1, qword_1ED82BD30);
  v2 = sub_19A57231C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_19A57230C();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "calculateConditioning", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v9 = *(v0 + 96);
  v77 = *(v0 + 80);
  v79 = *(v0 + 48);
  v81 = *(v0 + 56);

  swift_task_alloc();
  v10 = *(v3 + 16);
  v10();
  sub_19A5723BC();
  swift_allocObject();
  *(v0 + 104) = sub_19A5723AC();
  v11 = *(v3 + 8);
  v11(v4, v2);

  v83 = v77;
  v84 = v9;
  v12 = sub_19A3C2E50(v79, v81, &v83);
  *(v0 + 112) = v12;
  v13 = v12;
  v75 = v11;
  v78 = v10;
  v82 = v2;
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *(v0 + 40);
  v17 = v0;
  v18 = *(v14 + 32);
  v19 = swift_task_alloc();
  v19[2] = v14;
  v19[3] = v16;
  v19[4] = v13;
  v19[5] = v15;
  os_unfair_lock_lock((v18 + 24));
  sub_19A3C31E8((v18 + 16), &v83);
  os_unfair_lock_unlock((v18 + 24));

  *(v17 + 120) = v83;
  v22 = v84;
  *(v17 + 224) = v84;
  *(v17 + 136) = v85;
  v23 = MEMORY[0x1E69E7CC0];
  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  v24 = v17;
  if (v22)
  {
LABEL_55:

    **(v24 + 32) = *(v24 + 136);
    sub_19A3BD63C("calculateConditioning", 21, 2);

    v71 = *(v24 + 8);
    v72 = *(v24 + 224);
    v73 = *(v24 + 120);
    v74 = *(v24 + 128);

    return v71(v73, v74, v23, v72);
  }

  v25 = v23;
  if (qword_1ED824050 != -1)
  {
LABEL_47:
    swift_once();
  }

  v26 = sub_19A5723FC();
  __swift_project_value_buffer(v26, qword_1ED82BCF0);

  v27 = sub_19A5723DC();
  LOBYTE(v28) = sub_19A57356C();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v24 + 48);
  v31 = v82;
  if (!v29)
  {

    goto LABEL_16;
  }

  v32 = swift_slowAlloc();
  *v32 = 67109376;
  *(v32 + 8) = 2048;
  if (v30 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19A573B4C())
  {
    *(v32 + 10) = i;

    _os_log_impl(&dword_19A2DE000, v27, v28, "calculateConditioning: imageProvidedPersonalization=%{BOOL}d;  conditioningImages.count=%ld", v32, 0x12u);
    MEMORY[0x19A902C50](v32, -1, -1);
LABEL_16:

    v28 = swift_task_alloc();
    sub_19A57230C();
    v34 = sub_19A57234C();
    v35 = sub_19A57361C();
    if (sub_19A57376C())
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v34, v35, v37, "calculateConditioning-nonPersonalized-only", "", v36, 2u);
      MEMORY[0x19A902C50](v36, -1, -1);
    }

    v38 = *(v24 + 48);

    v32 = swift_task_alloc();
    (v78)(v32, v28, v31);
    v27 = swift_allocObject();
    *(v24 + 152) = sub_19A5723AC();
    v75(v28, v31);

    v39 = v38 >> 62 ? sub_19A573B4C() : *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v24 + 160) = v39;
    v82 = v24;
    if (!v39)
    {
      break;
    }

    v40 = *(v24 + 48);
    *(v24 + 168) = v25;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x19A901520](0);
LABEL_24:
      v42 = v41;
      *(v24 + 176) = v41;
      *(v24 + 184) = 1;
      v43 = [objc_allocWithZone(MEMORY[0x1E69AE310]) init];
      *(v24 + 192) = v43;
      v44 = sub_19A3BD924();
      v63 = v24;
      v64 = *(v24 + 72);
      [v43 setVersion_];
      v65 = swift_task_alloc();
      *(v63 + 200) = v65;
      v65[2] = v64;
      v65[3] = v43;
      v65[4] = v42;
      v66 = swift_task_alloc();
      *(v63 + 208) = v66;
      v67 = sub_19A2F1600(0, &qword_1EAFA1078);
      *v66 = v63;
      v66[1] = sub_19A3B9534;

      return MEMORY[0x1EEE6DE38](v63 + 24, 0, 0, 0xD000000000000062, 0x800000019A5984C0, sub_19A3C3208, v65, v67);
    }

    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v41 = *(v40 + 32);
      goto LABEL_24;
    }

    __break(1u);
LABEL_51:
    ;
  }

  if (!(v25 >> 62))
  {
    v45 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

  v45 = sub_19A573B4C();
  if (!v45)
  {
LABEL_53:
    v23 = MEMORY[0x1E69E7CC0];
LABEL_54:

    sub_19A3BD63C("calculateConditioning-nonPersonalized-only", 42, 2);

    goto LABEL_55;
  }

LABEL_27:
  v46 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v76 = v45;
  v78 = MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8;
  v80 = MEMORY[0x1E69E7CC0] >> 62;
  while (1)
  {
    if (v80)
    {
      v47 = MEMORY[0x19A901520](v46, MEMORY[0x1E69E7CC0]);
      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v46 >= *(v78 + 16))
      {
        goto LABEL_46;
      }

      v47 = *(MEMORY[0x1E69E7CC0] + 8 * v46 + 32);
      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    v49 = v23;
    v25 = v47;
    v50 = [v47 embedding];
    v51 = [v50 shape];
    sub_19A2F1600(0, &qword_1ED823EA8);
    v52 = sub_19A57308C();

    v53 = sub_19A3BE4C4(v52);

    if (!v53)
    {
      break;
    }

    v54 = [v50 data];
    v55 = sub_19A570F2C();
    v57 = v56;

    v58 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_19A31D490(0, *(v49 + 2) + 1, 1, v49);
    }

    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    v61 = v58;
    if (v60 >= v59 >> 1)
    {
      v61 = sub_19A31D490((v59 > 1), v60 + 1, 1, v58);
    }

    *(v61 + 2) = v60 + 1;
    v23 = v61;
    v62 = &v61[24 * v60];
    *(v62 + 4) = v55;
    *(v62 + 5) = v57;
    *(v62 + 6) = v53;
    ++v46;
    v24 = v82;
    if (v48 == v76)
    {
      goto LABEL_54;
    }
  }

  v68 = *(v24 + 120);
  v69 = *(v24 + 128);

  sub_19A3C2D94();
  swift_allocError();
  *v70 = 0xD000000000000033;
  *(v70 + 8) = 0x800000019A598530;
  *(v70 + 16) = 0;
  *(v70 + 24) = 5;
  swift_willThrow();

  sub_19A3BD63C("calculateConditioning-nonPersonalized-only", 42, 2);

  sub_19A3BD63C("calculateConditioning", 21, 2);

  v20 = *(v82 + 8);

  return v20();
}

uint64_t sub_19A3B9534()
{
  *(*v1 + 216) = v0;

  if (v0)
  {

    v2 = sub_19A3B9C90;
  }

  else
  {

    v2 = sub_19A3B967C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3B967C()
{
  v1 = (v0 + 3);
  v2 = v0[3];
  MEMORY[0x19A900BE0]();
  if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v3 = v0[23];
    v4 = v0[24];
    v5 = v0[22];
    v6 = v0[20];
    sub_19A5730FC();

    v14 = v0[2];
    v53 = v14;
    if (v3 != v6)
    {
      break;
    }

    if (v14 >> 62)
    {
      v15 = sub_19A573B4C();
      v49 = v0;
      if (!v15)
      {
LABEL_35:
        v16 = MEMORY[0x1E69E7CC0];
LABEL_36:

        sub_19A3BD63C("calculateConditioning-nonPersonalized-only", 42, 2);

        *v49[4] = *(v49 + 17);
        sub_19A3BD63C("calculateConditioning", 21, 2);

        v45 = v49[1];
        v46 = *(v49 + 224);
        v47 = v49[15];
        v48 = v49[16];

        return v45(v47, v48, v16, v46);
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v49 = v0;
      if (!v15)
      {
        goto LABEL_35;
      }
    }

    v1 = 0;
    v51 = v14 & 0xFFFFFFFFFFFFFF8;
    v52 = v14 & 0xC000000000000001;
    v16 = MEMORY[0x1E69E7CC0];
    v50 = v15;
    while (1)
    {
      if (v52)
      {
        v17 = MEMORY[0x19A901520](v1, v14);
      }

      else
      {
        if (v1 >= *(v51 + 16))
        {
          goto LABEL_32;
        }

        v17 = *(v14 + 8 * v1 + 32);
      }

      v0 = v17;
      v18 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v19 = [v17 embedding];
      v20 = [v19 shape];
      sub_19A2F1600(0, &qword_1ED823EA8);
      v21 = sub_19A57308C();

      v22 = sub_19A3BE4C4(v21);

      if (!v22)
      {
        v34 = v49;
        v38 = v49[15];
        v37 = v49[16];

        sub_19A3C2D94();
        swift_allocError();
        *v42 = 0xD000000000000033;
        *(v42 + 8) = 0x800000019A598530;
        *(v42 + 16) = 0;
        *(v42 + 24) = 5;
        swift_willThrow();

        goto LABEL_28;
      }

      v23 = [v19 data];
      v24 = sub_19A570F2C();
      v26 = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_19A31D490(0, *(v16 + 2) + 1, 1, v16);
      }

      v28 = *(v16 + 2);
      v27 = *(v16 + 3);
      v2 = (v28 + 1);
      if (v28 >= v27 >> 1)
      {
        v16 = sub_19A31D490((v27 > 1), v28 + 1, 1, v16);
      }

      *(v16 + 2) = v2;
      v29 = &v16[24 * v28];
      *(v29 + 4) = v24;
      *(v29 + 5) = v26;
      *(v29 + 6) = v22;
      ++v1;
      v14 = v53;
      if (v18 == v50)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_19A5730AC();
  }

  v30 = v0[27];
  v31 = v0[23];
  v0[21] = v14;
  v32 = v0[6];
  if ((v32 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x19A901520](v31);
  }

  else
  {
    if (v31 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_41:
      __break(1u);
      return MEMORY[0x1EEE6DE38](v7, v32, v8, v9, v10, v11, v12, v13);
    }

    v7 = *(v32 + 8 * v31 + 32);
  }

  v33 = v7;
  v0[22] = v7;
  v0[23] = (v31 + 1);
  if (__OFADD__(v31, 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v34 = v0;
  v35 = [objc_allocWithZone(MEMORY[0x1E69AE310]) init];
  v0[24] = v35;
  v36 = sub_19A3BD924();
  if (!v30)
  {
    v39 = v0[9];
    [v35 setVersion_];
    v40 = swift_task_alloc();
    v34[25] = v40;
    v40[2] = v39;
    v40[3] = v35;
    v40[4] = v33;
    v41 = swift_task_alloc();
    v34[26] = v41;
    v13 = sub_19A2F1600(0, &qword_1EAFA1078);
    *v41 = v34;
    v41[1] = sub_19A3B9534;
    v11 = sub_19A3C3208;
    v9 = 0xD000000000000062;
    v10 = 0x800000019A5984C0;
    v7 = v1;
    v32 = 0;
    v8 = 0;
    v12 = v40;

    return MEMORY[0x1EEE6DE38](v7, v32, v8, v9, v10, v11, v12, v13);
  }

  v38 = v0[15];
  v37 = v0[16];

LABEL_28:
  sub_19A3BD63C("calculateConditioning-nonPersonalized-only", 42, 2);

  sub_19A3BD63C("calculateConditioning", 21, 2);

  v43 = v34[1];

  return v43();
}

uint64_t sub_19A3B9C90()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);

  sub_19A3BD63C("calculateConditioning-nonPersonalized-only", 42, 2);

  sub_19A3BD63C("calculateConditioning", 21, 2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19A3B9D6C(void *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v59 = a3;
  v61 = a2;
  v64 = a1;
  v5 = sub_19A570D4C();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v58 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v58 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v58 - v20;
  v22 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v23 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v24 = sub_19A572C9C();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  MEMORY[0x1EEE9AC00](v25);
  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 == 6)
      {
        goto LABEL_19;
      }

      sub_19A572C8C();
      sub_19A572C7C();
      sub_19A572C6C();
      sub_19A572C7C();
      sub_19A570D3C();
      v53 = v62;
      v52 = v63;
      (*(v62 + 16))(v19, v8, v63);
      v29 = sub_19A572D8C();
      v69 = v29;
      v70 = v54;
      v55 = sub_19A475CC8(v59);
      if (v56)
      {
        *&v65 = 8250;
        *(&v65 + 1) = 0xE200000000000000;
        MEMORY[0x19A900A50](v55);

        MEMORY[0x19A900A50](v65, *(&v65 + 1));

        v29 = v69;
      }

      (*(v53 + 8))(v8, v52);
    }

    else
    {
      if (a4 != 4)
      {
LABEL_19:
        sub_19A572C8C();
        sub_19A572C7C();
        sub_19A572C6C();
        sub_19A572C7C();
        sub_19A572CAC();
        sub_19A5710EC();
        return sub_19A572D7C();
      }

      v26 = v60;
      sub_19A570D2C();
      v28 = v62;
      v27 = v63;
      (*(v62 + 16))(v19, v26, v63);
      v29 = sub_19A572D8C();
      v72 = v29;
      v73 = v30;
      v68 = v64;
      v31 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0500);
      if (swift_dynamicCast())
      {
        sub_19A2EA460(&v65, &v69);
        __swift_project_boxed_opaque_existential_1(&v69, v71);
        v32 = sub_19A5709EC();
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_0Tm(&v69);
        if (v34)
        {
          v69 = 8250;
          v70 = 0xE200000000000000;
          MEMORY[0x19A900A50](v32, v34);

          MEMORY[0x19A900A50](v69, v70);

          v29 = v72;
        }
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
        sub_19A2F3FA0(&v65, &qword_1EAFA0508);
      }

      (*(v28 + 8))(v26, v27);
    }
  }

  else if (a4 > 1u)
  {
    if (a4 == 2)
    {
      sub_19A570D2C();
      v36 = v62;
      v35 = v63;
      (*(v62 + 16))(v19, v16, v63);
      v29 = sub_19A572D8C();
      v69 = v29;
      v70 = v37;
      v38 = sub_19A475CC8(v64);
      if (v39)
      {
        *&v65 = 8250;
        *(&v65 + 1) = 0xE200000000000000;
        MEMORY[0x19A900A50](v38);

        MEMORY[0x19A900A50](v65, *(&v65 + 1));

        v29 = v69;
      }

      (*(v36 + 8))(v16, v35);
    }

    else
    {
      sub_19A570D2C();
      v46 = v62;
      v45 = v63;
      (*(v62 + 16))(v19, v13, v63);
      v29 = sub_19A572D8C();
      v72 = v29;
      v73 = v47;
      v68 = v64;
      v48 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0500);
      if (swift_dynamicCast())
      {
        sub_19A2EA460(&v65, &v69);
        __swift_project_boxed_opaque_existential_1(&v69, v71);
        v49 = sub_19A5709EC();
        v51 = v50;
        __swift_destroy_boxed_opaque_existential_0Tm(&v69);
        if (v51)
        {
          v69 = 8250;
          v70 = 0xE200000000000000;
          MEMORY[0x19A900A50](v49, v51);

          MEMORY[0x19A900A50](v69, v70);

          v29 = v72;
        }
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
        sub_19A2F3FA0(&v65, &qword_1EAFA0508);
      }

      (*(v46 + 8))(v13, v45);
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_19;
    }

    sub_19A570D2C();
    v41 = v62;
    v40 = v63;
    (*(v62 + 16))(v19, v21, v63);
    v29 = sub_19A572D8C();
    v69 = v29;
    v70 = v42;
    v43 = sub_19A475CC8(v64);
    if (v44)
    {
      *&v65 = 8250;
      *(&v65 + 1) = 0xE200000000000000;
      MEMORY[0x19A900A50](v43);

      MEMORY[0x19A900A50](v65, *(&v65 + 1));

      v29 = v69;
    }

    (*(v41 + 8))(v21, v40);
  }

  return v29;
}

uint64_t sub_19A3BA638(void *a1)
{
  v2 = v1;
  v28[1] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1098);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  *(v2 + 32) = v4;
  v5 = sub_19A32FAB8(&unk_1F0DA7998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10A0);
  swift_arrayDestroy();
  *(v2 + 40) = v5;
  *(v2 + 16) = a1;
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v6 = a1;
  static AppleDiffusionResourceFactory.shared(reset:)(0);
  LOBYTE(v5) = AppleDiffusionResourceFactory.imageClipEncoderVersion.getter();

  *(v2 + 24) = v5;
  static AppleDiffusionResourceFactory.shared(reset:)(0);
  LOBYTE(v5) = AppleDiffusionResourceFactory.textClipEncoderVersion.getter();

  *(v2 + 25) = v5;
  v18 = sub_19A3C2BA4(*(v2 + 24), *(v2 + 25));
  v19 = objc_opt_self();
  v28[0] = 0;
  v20 = [v19 createForRevision:v18 error:v28];
  if (v20)
  {
    v21 = v20;
    v22 = v28[0];
    v23 = sub_19A57307C();
    [v21 setAdditionalLayerNames_];

    v17 = [objc_allocWithZone(MEMORY[0x1E6999160]) initWithConfiguration_];
    v16 = v17;
  }

  else
  {
    v26 = v28[0];
    v27 = sub_19A570D1C();

    swift_willThrow();
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v7 = sub_19A5723FC();
    __swift_project_value_buffer(v7, qword_1ED82BCF0);
    v8 = v27;
    v9 = sub_19A5723DC();
    v10 = sub_19A57355C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28[0] = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = sub_19A57405C();
      v15 = sub_19A31F114(v13, v14, v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_19A2DE000, v9, v10, "Unable to create CSUTextEncoder: %{public}s. Text encoding not available.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x19A902C50](v12, -1, -1);
      MEMORY[0x19A902C50](v11, -1, -1);
    }

    else
    {
    }

    v17 = 0;
  }

  v24 = *(v2 + 32);
  MEMORY[0x1EEE9AC00](v16);

  os_unfair_lock_lock((v24 + 24));
  sub_19A3C338C((v24 + 16));
  os_unfair_lock_unlock((v24 + 24));

  return v2;
}

uint64_t sub_19A3BADC8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for GenerationRecipe(0);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F50);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3BAEF4, 0, 0);
}

uint64_t sub_19A3BAEF4()
{
  v1 = *(sub_19A4AE77C() + 2);

  v2 = v0[10];
  v3 = v0[5];
  if (v1 && !*(*(v3 + v2[6]) + 16))
  {
    type metadata accessor for GeneratorError(0);
    sub_19A3C3344(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    v12 = (v3 + v2[5]);
    v13 = v12[1];
    *v14 = *v12;
    v14[1] = v13;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v11 = v0[1];
  }

  else
  {
    v4 = v0[12];
    v5 = v0[7];
    v6 = v0[8];
    sub_19A33546C(v3 + v2[8], v4, &unk_1EAFA2F50);
    LODWORD(v5) = (*(v6 + 48))(v4, 1, v5);
    sub_19A2F3FA0(v4, &unk_1EAFA2F50);
    if (v5 == 1)
    {
      sub_19A3A4420(v0[5], v0[11], type metadata accessor for GenerationRecipe);
      v7 = swift_task_alloc();
      v0[13] = v7;
      *v7 = v0;
      v7[1] = sub_19A3BB18C;
      v8 = v0[11];
      v9 = v0[9];

      return sub_19A3BB474(v9, (v0 + 2), v8);
    }

    sub_19A3A4420(v0[5], v0[4], type metadata accessor for GenerationRecipe);

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_19A3BB18C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_19A3BB3D8;
  }

  else
  {
    v2 = sub_19A3BB2A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3BB2A0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  v9 = *(v2 + 32);
  sub_19A2F3FA0(v1 + v9, &unk_1EAFA2F50);
  sub_19A3C2DE8(v3, v1 + v9, type metadata accessor for PipelineConfiguration.InputConditioning);
  (*(v4 + 56))(v1 + v9, 0, 1, v5);
  v10 = v1 + *(v2 + 36);
  *v10 = v8;
  *(v10 + 8) = v7;
  *(v10 + 16) = 0;
  sub_19A3C2DE8(v1, v6, type metadata accessor for GenerationRecipe);

  v11 = v0[1];

  return v11();
}

uint64_t sub_19A3BB3D8()
{
  sub_19A3C32E4(*(v0 + 88), type metadata accessor for GenerationRecipe);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A3BB474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for ResolvedTextPrompt(0);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v7 = sub_19A571BDC();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1050);
  v4[36] = swift_task_alloc();
  v4[37] = type metadata accessor for GenerationRecipe(0);
  v4[38] = swift_task_alloc();
  v8 = type metadata accessor for AugmentedPrompt();
  v4[39] = v8;
  v4[40] = *(v8 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3BB708, 0, 0);
}

uint64_t sub_19A3BB708()
{
  v85 = v0;
  sub_19A36C3E0(v0[44]);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[22];
  v3 = sub_19A5723FC();
  __swift_project_value_buffer(v3, qword_1ED82BCF0);
  sub_19A3A4420(v2, v1, type metadata accessor for GenerationRecipe);
  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[38];
  if (v6)
  {
    v8 = v0[37];
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    LODWORD(v8) = *(v7 + *(v8 + 68));
    sub_19A3C32E4(v7, type metadata accessor for GenerationRecipe);
    *(v9 + 4) = v8;
    _os_log_impl(&dword_19A2DE000, v4, v5, "Appending language tags to assembled prompt: %{BOOL}d", v9, 8u);
    MEMORY[0x19A902C50](v9, -1, -1);
  }

  else
  {
    sub_19A3C32E4(v0[38], type metadata accessor for GenerationRecipe);
  }

  v11 = v0[43];
  v10 = v0[44];

  sub_19A3A4420(v10, v11, type metadata accessor for AugmentedPrompt);
  v12 = sub_19A5723DC();
  v13 = sub_19A57356C();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[43];
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v84[0] = v17;
    *v16 = 136315138;
    sub_19A3C3344(&qword_1ED824968, type metadata accessor for AugmentedPrompt);
    v18 = sub_19A573EDC();
    v20 = v19;
    sub_19A3C32E4(v15, type metadata accessor for AugmentedPrompt);
    v21 = sub_19A31F114(v18, v20, v84);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_19A2DE000, v12, v13, "Beginning InputConditioning with assembled prompt: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x19A902C50](v17, -1, -1);
    MEMORY[0x19A902C50](v16, -1, -1);
  }

  else
  {

    sub_19A3C32E4(v15, type metadata accessor for AugmentedPrompt);
  }

  v22 = sub_19A39B584();
  v23 = *(v22 + 16);
  if (v23)
  {
    v84[0] = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v24 = 56;
    do
    {
      v25 = *(v22 + v24);
      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      v24 += 40;
      --v23;
    }

    while (v23);

    v26 = v84[0];
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v0[45] = v26;
  v28 = v0[36];
  v27 = v0[37];
  v29 = v0[22];
  v30 = sub_19A39D424();
  v0[46] = v30;
  v31 = (v29 + *(v27 + 56));
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = type metadata accessor for InputConditioner.PersonalizationConfiguration();
  v78 = *(*(v35 - 8) + 56);
  v79 = v35;
  v78(v28, 1, 1);
  v36 = *(v29 + *(v27 + 100));
  if ((!*(v36 + 16) || *(v0[22] + *(v0[37] + 20) + 52) != 1 || (*(v36 + 96) & 1) == 0) && !*v31)
  {
    v37 = sub_19A447F04()[2];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  v75 = v34;
  v76 = v33;
  v77 = v32;
  v81 = v30;
  v82 = v26;
  v38 = v0[37];
  v39 = v0[22];
  v40 = v39 + v38[15];
  v41 = *v40;
  v42 = *(v40 + 8);
  v43 = *(v40 + 16);
  v44 = *(v40 + 24);
  v80 = *(v40 + 32);
  v45 = v39 + v38[7];
  if (*(v45 + 8))
  {
LABEL_20:
    if ((v80 & 1) == 0)
    {
LABEL_31:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1068);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_19A57A9D0;
      v87.origin.x = v41;
      v87.origin.y = v42;
      v87.size.width = v43;
      v87.size.height = v44;
      *(v50 + 32) = CGRectGetMinX(v87);
      v88.origin.x = v41;
      v88.origin.y = v42;
      v88.size.width = v43;
      v88.size.height = v44;
      *(v50 + 40) = CGRectGetMinY(v88);
      v89.origin.x = v41;
      v89.origin.y = v42;
      v89.size.width = v43;
      v89.size.height = v44;
      *(v50 + 48) = CGRectGetMaxX(v89);
      v90.origin.x = v41;
      v90.origin.y = v42;
      v90.size.width = v43;
      v90.size.height = v44;
      *(v50 + 56) = CGRectGetMaxY(v90);
    }
  }

  else
  {
    v73 = *(v39 + v38[6]);
    v74 = *v45;
    v46 = (v73 + 32);
    v47 = *(v73 + 16);
    while (v47)
    {
      if (*v46 <= 1u && *v46)
      {

        goto LABEL_20;
      }

      v48 = sub_19A573F1C();

      ++v46;
      --v47;
      if (v48)
      {
        goto LABEL_20;
      }
    }

    if ((v80 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (*(v73 + 16))
    {
      v49 = *(v73 + 32);
    }

    else
    {
      v49 = 7;
    }

    v83 = v49;
    sub_19A39C154(v84);
    v72 = v84[0];

    sub_19A3BCD70(v74, &v83, v72);
  }

  if (sub_19A39BD48())
  {
    sub_19A3A2CDC();
    if (v51)
    {
      sub_19A571C0C();
      swift_allocObject();
      v52 = sub_19A571BFC();
      v53 = v0[36];
      v59 = v52;
      v60 = v0[37];
      v61 = v0[34];
      v62 = v0[35];
      v63 = v0[33];
      v64 = v0[22];
      sub_19A571BCC();
      sub_19A2F3FA0(v53, &qword_1EAFA1050);
      v65 = *(v79 + 20);
      (*(v61 + 32))(&v53[v65], v62, v63);
      (*(v61 + 56))(&v53[v65], 0, 1, v63);
      v66 = (v64 + *(v60 + 64));
      v67 = *v66;
      LOBYTE(v66) = *(v66 + 8);
      *v53 = v59;
      v68 = &v53[*(v79 + 24)];
      *v68 = v67;
      v68[8] = v66;
      (v78)(v53, 0, 1, v79);
      v30 = v81;
      v26 = v82;
      v33 = v76;
      v32 = v77;
      v34 = v75;
LABEL_38:
      v0[8] = v32;
      v0[9] = v33;
      v0[10] = v34;
      v69 = swift_task_alloc();
      v0[47] = v69;
      *v69 = v0;
      v69[1] = sub_19A3BC144;
      v70 = v0[44];
      v71 = v0[36];

      return sub_19A3B8A14((v0 + 14), v70, v26, v30, (v0 + 8), v71);
    }
  }

  v54 = v0[44];
  v55 = v0[36];

  sub_19A3C2D94();
  swift_allocError();
  *v56 = 0xD00000000000001FLL;
  *(v56 + 8) = 0x800000019A598450;
  *(v56 + 16) = 0;
  *(v56 + 24) = 7;
  swift_willThrow();
  sub_19A2F3FA0(v55, &qword_1EAFA1050);
  sub_19A3C32E4(v54, type metadata accessor for AugmentedPrompt);

  v57 = v0[1];

  return v57();
}

uint64_t sub_19A3BC144(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  *(v6 + 56) = v4;
  *(v6 + 48) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  *(v6 + 384) = a1;
  *(v6 + 392) = a2;
  *(v6 + 400) = a3;
  *(v6 + 408) = v4;

  if (v4)
  {
    v7 = sub_19A3BCAA8;
  }

  else
  {
    v7 = sub_19A3BC28C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_19A3BC28C()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 296);
  v4 = *(v0 + 176);
  *(v0 + 416) = *(v0 + 112);
  *(v0 + 432) = sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
  v5 = v2;
  sub_19A5726AC();
  v6 = v1;
  sub_19A5726AC();
  v7 = *(v4 + *(v3 + 80));
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = *(v0 + 320);
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v25 = MEMORY[0x1E69E7CC0];
    sub_19A322640(0, v8, 0);
    v9 = v25;
    v13 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v11 + 72);
    do
    {
      v15 = *(v0 + 336);
      v16 = *(v0 + 208);
      sub_19A3A4420(v13, v16, type metadata accessor for ResolvedTextPrompt);
      sub_19A3A4420(v16 + *(v12 + 20), v15, type metadata accessor for AugmentedPrompt);
      sub_19A3C32E4(v16, type metadata accessor for ResolvedTextPrompt);
      v18 = *(v25 + 16);
      v17 = *(v25 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_19A322640(v17 > 1, v18 + 1, 1);
      }

      v19 = *(v0 + 336);
      *(v25 + 16) = v18 + 1;
      sub_19A3C2DE8(v19, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, type metadata accessor for AugmentedPrompt);
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  if (!sub_19A39C230())
  {
    type metadata accessor for ImageGenerator();
  }

  sub_19A4CC0E4(v9);

  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 88) = 0;
  v20 = swift_task_alloc();
  *(v0 + 440) = v20;
  *v20 = v0;
  v20[1] = sub_19A3BC544;
  v21 = *(v0 + 328);
  v22 = *(v0 + 288);
  v23 = MEMORY[0x1E69E7CC0];

  return sub_19A3B8A14(v0 + 128, v21, v23, 0, v0 + 88, v22);
}

uint64_t sub_19A3BC544(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 448) = v2;

  if (v2)
  {

    v7 = sub_19A3BCBE0;
  }

  else
  {
    v8 = *(v6 + 48);
    *(v6 + 456) = a2;
    *(v6 + 464) = a1;
    *(v6 + 472) = v8;

    v7 = sub_19A3BC694;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_19A3BC694()
{
  v25 = *(v0 + 472);
  v1 = *(v0 + 456);
  v22 = *(v0 + 400);
  v23 = *(v0 + 416);
  v16 = *(v0 + 392);
  v17 = *(v0 + 384);
  v21 = *(v0 + 352);
  v24 = *(v0 + 424);
  v18 = *(v0 + 328);
  v19 = *(v0 + 288);
  v29 = *(v0 + 248);
  v30 = *(v0 + 256);
  v27 = *(v0 + 232);
  v28 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v20 = *(v0 + 168);
  v26 = *(v0 + 160);
  v15 = *(v0 + 464);
  sub_19A5726AC();
  v14 = v1;
  sub_19A5726AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19A576E20;
  v7 = *(v3 + 16);
  v7(v6 + v5, v28, v2);
  v7(v6 + v5 + v4, v30, v2);
  *(v0 + 144) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50);
  sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50);
  sub_19A5725EC();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_19A576E20;
  v9 = v8 + v5;
  v7(v9, v27, v2);
  v7(v9 + v4, v29, v2);
  *(v0 + 152) = v8;
  v10 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  sub_19A5725EC();

  v11 = *(v3 + 8);
  v11(v27, v2);
  v11(v28, v2);
  sub_19A3C32E4(v18, type metadata accessor for AugmentedPrompt);
  v11(v29, v2);
  v11(v30, v2);
  sub_19A2F3FA0(v19, &qword_1EAFA1050);
  sub_19A3C32E4(v21, type metadata accessor for AugmentedPrompt);
  *(v26 + *(v10 + 24)) = v22;
  *(v26 + *(v10 + 28)) = v25;
  *v20 = v23;
  v20[1] = v24;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_19A3BCAA8()
{
  v1 = v0[44];
  sub_19A2F3FA0(v0[36], &qword_1EAFA1050);
  sub_19A3C32E4(v1, type metadata accessor for AugmentedPrompt);

  v2 = v0[1];

  return v2();
}

uint64_t sub_19A3BCBE0()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 288);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);

  sub_19A3C32E4(v3, type metadata accessor for AugmentedPrompt);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_19A2F3FA0(v4, &qword_1EAFA1050);
  sub_19A3C32E4(v2, type metadata accessor for AugmentedPrompt);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_19A3BCD70(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3)
{
  if (a1 < 0)
  {
    goto LABEL_98;
  }

  v6 = a3;
  v4 = a1;
  LODWORD(v5) = *a2;
  v81 = a1 + 0x14057B7EF767814FLL;
  sub_19A475DE8();
  v83[1] = v81;
  v10 = sub_19A475DE8();
  if (v5 == 3)
  {
    v11 = &unk_1F0DA7B30;
  }

  else if (v5 == 2)
  {
    v11 = &unk_1F0DA7B90;
  }

  else
  {
    if (v5)
    {
      return 0;
    }

    v11 = &unk_1F0DA7AD0;
    if ((v6 & 0xFE) == 0)
    {
      v11 = &unk_1F0DA7A70;
    }
  }

  v9 = (v10 & 0xFFFFFFFFFFFFLL) / 2.81474977e14;
  v8 = sub_19A32FBC8(v11);
  if (!*(v8 + 16) || (v12 = sub_19A3355E4(0), (v13 & 1) == 0))
  {
    v15 = 0.0;
    if (v9 > 0.0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  v14 = *(*(v8 + 56) + 8 * v12);
  if (v9 <= v14)
  {
    goto LABEL_19;
  }

  v15 = v14 + 0.0;
LABEL_15:
  if (*(v8 + 16) && (v16 = sub_19A3355E4(1u), (v17 & 1) != 0))
  {
    v15 = v15 + *(*(v8 + 56) + 8 * v16);
    if (v9 <= v15)
    {
LABEL_18:
      v18 = 1;
      goto LABEL_20;
    }
  }

  else if (v9 <= v15)
  {
    goto LABEL_18;
  }

  if (*(v8 + 16) && (v35 = sub_19A3355E4(2u), (v36 & 1) != 0))
  {
    v37 = v15 + *(*(v8 + 56) + 8 * v35);
    if (v9 > v37)
    {
      if (!*(v8 + 16))
      {
        goto LABEL_88;
      }

      goto LABEL_84;
    }
  }

  else if (v9 > v15)
  {
    v37 = v15 + 0.0;
    if (!*(v8 + 16))
    {
      goto LABEL_88;
    }

LABEL_84:
    v69 = sub_19A3355E4(3u);
    if (v70)
    {
      if (v9 > v37 + *(*(v8 + 56) + 8 * v69))
      {
LABEL_89:

        return 0;
      }

      goto LABEL_86;
    }

LABEL_88:
    if (v9 > v37)
    {
      goto LABEL_89;
    }

LABEL_86:
    v18 = 3;
    goto LABEL_20;
  }

  v18 = 2;
LABEL_20:
  v19 = *(v3 + 40);
  if (*(v19 + 16) && (v20 = sub_19A3355E4(v18), (v21 & 1) != 0))
  {
    v7 = *(*(v19 + 56) + 8 * v20);
  }

  else
  {
    v7 = 0;
  }

  v22 = qword_1ED824050;

  if (v22 != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v23 = sub_19A5723FC();
    __swift_project_value_buffer(v23, qword_1ED82BCF0);

    v24 = sub_19A5723DC();
    v25 = sub_19A57356C();

    if (!os_log_type_enabled(v24, v25))
    {

      return v7;
    }

    v77 = v25;
    log = v24;
    v26 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v83[0] = v75;
    v76 = v26;
    *v26 = 136447490;
    v27 = *(v8 + 16);
    if (!v27)
    {
      break;
    }

    v71 = v7;
    v72 = v6;
    v73 = v5;
    v74 = v4;
    v82 = MEMORY[0x1E69E7CC0];
    sub_19A322580(0, v27, 0);
    v28 = v8 + 64;
    v7 = sub_19A57389C();
    v79 = v8 + 64;
    v80 = v8;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v8 + 32))
    {
      v5 = 1 << v7;
      if ((*(v28 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_91;
      }

      v4 = *(v8 + 36);
      v29 = *(*(v8 + 56) + 8 * v7);
      sub_19A573ACC();
      MEMORY[0x19A900A50](8250, 0xE200000000000000);
      v30 = v29 * 100.0;
      if (COERCE__INT64(fabs(v29 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_92;
      }

      if (v30 <= -9.22337204e18)
      {
        goto LABEL_93;
      }

      if (v30 >= 9.22337204e18)
      {
        goto LABEL_94;
      }

      v31 = sub_19A573EDC();
      MEMORY[0x19A900A50](v31);

      MEMORY[0x19A900A50](37, 0xE100000000000000);
      v6 = 0;
      v32 = *(v82 + 16);
      v33 = *(v82 + 24);
      if (v32 >= v33 >> 1)
      {
        sub_19A322580((v33 > 1), v32 + 1, 1);
      }

      *(v82 + 16) = v32 + 1;
      v34 = v82 + 16 * v32;
      *(v34 + 32) = 0;
      *(v34 + 40) = 0xE000000000000000;
      v8 = v80;
      if (v7 >= -(-1 << *(v80 + 32)))
      {
        goto LABEL_95;
      }

      v28 = v79;
      if ((*(v79 + 8 * (v7 >> 6)) & v5) == 0)
      {
        goto LABEL_96;
      }

      if (v4 != *(v80 + 36))
      {
        goto LABEL_97;
      }

      v7 = sub_19A5738BC();
      if (!--v27)
      {

        v4 = v74;
        v6 = v72;
        LODWORD(v5) = v73;
        v7 = v71;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

LABEL_50:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
  v38 = sub_19A572BEC();
  v40 = v39;

  v41 = sub_19A31F114(v38, v40, v83);

  *(v76 + 1) = v41;
  v42 = 0xE400000000000000;
  v43 = 2036490594;
  *(v76 + 6) = 2082;
  v44 = 0xE500000000000000;
  v45 = 0x746C756461;
  v46 = 0xE600000000000000;
  v47 = 0x726F696E6573;
  if (v6 != 4)
  {
    v47 = 4271950;
    v46 = 0xE300000000000000;
  }

  if (v6 != 3)
  {
    v45 = v47;
    v44 = v46;
  }

  v48 = 0xE500000000000000;
  v49 = 0x646C696863;
  if (v6 != 1)
  {
    v49 = 0x756441676E756F79;
    v48 = 0xEA0000000000746CLL;
  }

  if (v6)
  {
    v43 = v49;
    v42 = v48;
  }

  if (v6 <= 2u)
  {
    v50 = v43;
  }

  else
  {
    v50 = v45;
  }

  if (v6 <= 2u)
  {
    v51 = v42;
  }

  else
  {
    v51 = v44;
  }

  v52 = sub_19A31F114(v50, v51, v83);

  *(v76 + 14) = v52;
  *(v76 + 11) = 2082;
  v53 = 0xE90000000000006ELL;
  v54 = 0x6F6974616D696E61;
  v55 = 0x800000019A595400;
  v56 = 0xD000000000000013;
  if (v5 != 5)
  {
    v56 = 0x6C616E7265747865;
    v55 = 0xE800000000000000;
  }

  v57 = 0xE600000000000000;
  v58 = 0x686374656B73;
  if (v5 != 3)
  {
    v58 = 0x747241656E696CLL;
    v57 = 0xE700000000000000;
  }

  if (v5 <= 4)
  {
    v56 = v58;
    v55 = v57;
  }

  v59 = 0xE500000000000000;
  v60 = 0x696A6F6D65;
  if (v5 != 1)
  {
    v60 = 0x61727473756C6C69;
    v59 = 0xEC0000006E6F6974;
  }

  if (v5)
  {
    v54 = v60;
    v53 = v59;
  }

  if (v5 <= 2)
  {
    v61 = v54;
  }

  else
  {
    v61 = v56;
  }

  if (v5 <= 2)
  {
    v62 = v53;
  }

  else
  {
    v62 = v55;
  }

  v63 = sub_19A31F114(v61, v62, v83);

  *(v76 + 3) = v63;
  *(v76 + 16) = 2050;
  *(v76 + 34) = v9;
  *(v76 + 21) = 2050;
  *(v76 + 11) = v4;
  *(v76 + 26) = 2082;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1070);
  v64 = sub_19A57377C();
  v66 = v65;

  v67 = sub_19A31F114(v64, v66, v83);

  *(v76 + 54) = v67;
  _os_log_impl(&dword_19A2DE000, log, v77, "Face position weights: %{public}s for age: %{public}s, style: %{public}s randomValue: %{public}f, seed: %{public}ld, bounding box: %{public}s", v76, 0x3Eu);
  swift_arrayDestroy();
  MEMORY[0x19A902C50](v75, -1, -1);
  MEMORY[0x19A902C50](v76, -1, -1);

  return v7;
}

uint64_t sub_19A3BD63C(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A3BD924()
{
  v1 = *(v0 + 24);
  if (v1 == 2)
  {

    goto LABEL_6;
  }

  v2 = sub_19A573F1C();

  if (v2)
  {
LABEL_6:
    if (*(v0 + 25) && *(v0 + 25) == 1)
    {
    }

    else
    {
      v3 = sub_19A573F1C();

      if ((v3 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    return 5;
  }

  if (v1 == 3 || (sub_19A573F1C() & 1) != 0)
  {
    if (*(v0 + 25) && *(v0 + 25) == 1)
    {

      return 7;
    }

    v5 = sub_19A573F1C();

    if (v5)
    {
      return 7;
    }

    goto LABEL_19;
  }

  if (v1 <= 1 && (sub_19A573F1C() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!*(sub_19A3C2B2C() + 16))
  {

    goto LABEL_19;
  }

  sub_19A31FADC(*(v0 + 25));
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_19:
    sub_19A57395C();
    MEMORY[0x19A900A50](0xD00000000000003ALL, 0x800000019A598570);
    sub_19A573ACC();
    MEMORY[0x19A900A50](0xD000000000000018, 0x800000019A5985B0);
    sub_19A573ACC();
    sub_19A3C2D94();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0xE000000000000000;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    return swift_willThrow();
  }

  return 8;
}

void sub_19A3BDDB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1080);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19A576E00;
  *(v13 + 32) = a3;
  sub_19A2F1600(0, &qword_1EAF9F0A8);
  v14 = a3;
  v15 = sub_19A57307C();

  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v11, v7);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = sub_19A3C3214;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A3B899C;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);
  v19 = v14;

  [v12 performRequests:v15 onPixelBuffer:v21 withOrientation:1 andIdentifier:0 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_19A3BE018(int a1, id a2, int a3, id a4)
{
  if (a2)
  {
    v4 = a2;
    v5 = a2;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v6 = sub_19A5723FC();
    __swift_project_value_buffer(v6, qword_1ED82BCF0);
    v7 = v4;
    v8 = sub_19A5723DC();
    v9 = sub_19A57355C();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_19A2DE000, v8, v9, "MADImageEmbeddingRequest failed with error: %@", v10, 0xCu);
    sub_19A2F3FA0(v11, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v11, -1, -1);
    v14 = v10;
LABEL_11:
    MEMORY[0x19A902C50](v14, -1, -1);
LABEL_12:

    sub_19A3C2D94();
    swift_allocError();
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *v24 = v4;
    v25 = 3;
LABEL_13:
    *(v24 + 24) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1080);
    return sub_19A57315C();
  }

  v16 = [a4 error];
  if (v16)
  {
    v4 = v16;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v17 = sub_19A5723FC();
    __swift_project_value_buffer(v17, qword_1ED82BCF0);
    v18 = v4;
    v8 = sub_19A5723DC();
    v19 = sub_19A57355C();

    if (!os_log_type_enabled(v8, v19))
    {
      goto LABEL_12;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v18;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_19A2DE000, v8, v19, "MADImageEmbeddingRequest failed with error: %@", v20, 0xCu);
    sub_19A2F3FA0(v21, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v21, -1, -1);
    v14 = v20;
    goto LABEL_11;
  }

  v27 = [a4 embeddingResults];
  if (!v27)
  {
LABEL_23:
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v31 = sub_19A5723FC();
    __swift_project_value_buffer(v31, qword_1ED82BCF0);
    v32 = sub_19A5723DC();
    v33 = sub_19A57355C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_19A2DE000, v32, v33, "MADService had no errors on our MADImageEmbeddingRequest, but returned no values.", v34, 2u);
      MEMORY[0x19A902C50](v34, -1, -1);
    }

    sub_19A3C2D94();
    swift_allocError();
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *v24 = 0;
    v25 = 2;
    goto LABEL_13;
  }

  v28 = v27;
  sub_19A2F1600(0, &qword_1EAFA1078);
  v29 = sub_19A57308C();

  if (!(v29 >> 62))
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  result = sub_19A573B4C();
  if (!result)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_17:
  if ((v29 & 0xC000000000000001) != 0)
  {
    MEMORY[0x19A901520](0, v29);
    goto LABEL_20;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v29 + 32);
LABEL_20:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1080);
    return sub_19A57316C();
  }

  __break(1u);
  return result;
}

uint64_t sub_19A3BE4C4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19A573B4C())
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_19A3225A0(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_19A573B4C();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x19A901520](0, a1);
LABEL_10:
  v6 = v5;
  sub_19A5733CC();

  return 0;
}

void sub_19A3BE64C(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v148 = a4;
  v149 = a5;
  v9 = sub_19A570A9C();
  v151 = *(v9 - 8);
  v152 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v150 = v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1088);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v142 = v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v147 = (v133 - v14);
  v145 = sub_19A57102C();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v146 = v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1050);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v141 = v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v143 = v133 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v133 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v133 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v133 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = *a1;
  if (!*a1)
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v39 = sub_19A5723FC();
    __swift_project_value_buffer(v39, qword_1ED82BCF0);
    v40 = sub_19A5723DC();
    v41 = sub_19A57355C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_19A2DE000, v40, v41, "TextEncoder not available.", v42, 2u);
      MEMORY[0x19A902C50](v42, -1, -1);
    }

    sub_19A3C2D94();
    swift_allocError();
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    *v43 = 0;
    *(v43 + 24) = 1;
    swift_willThrow();
    return;
  }

  v153 = v133 - v33;
  v35 = v34;
  v36 = sub_19A3BFAB8(v32, v35, a2, a3, 1);
  if (v5)
  {

    return;
  }

  v44 = v38;
  v136 = v37;
  v137 = a2;
  v138 = 0;
  v139 = v35;
  v45 = v36;
  sub_19A3351B8(v32, v153, &qword_1EAF9FD80);
  v140 = v45;
  v46 = [v45 additionalLayers];
  v47 = sub_19A572AFC();

  strcpy(v154, "spatial_embed");
  HIWORD(v154[1]) = -4864;
  sub_19A5738EC();
  if (!*(v47 + 16) || (v48 = sub_19A31F918(&v155), (v49 & 1) == 0))
  {

    sub_19A3345C4(&v155);
    goto LABEL_33;
  }

  sub_19A334618(*(v47 + 56) + 32 * v48, v157);
  sub_19A3345C4(&v155);

  v50 = sub_19A2F1600(0, &qword_1ED823EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v57 = v140;
    sub_19A3C2D94();
    swift_allocError();
    *v79 = 0xD000000000000015;
    *(v79 + 8) = 0x800000019A5985D0;
    *(v79 + 16) = 0;
    *(v79 + 24) = 5;
    swift_willThrow();
    goto LABEL_34;
  }

  v135 = v50;
  v51 = v154[0];
  v158 = v154[0];
  v52 = [v140 &off_1E7517A20 + 3];
  v53 = sub_19A572AFC();

  strcpy(v154, "hidden_embed");
  BYTE5(v154[1]) = 0;
  HIWORD(v154[1]) = -5120;
  sub_19A5738EC();
  if (!*(v53 + 16) || (v54 = sub_19A31F918(&v155), (v55 & 1) == 0))
  {

    sub_19A3345C4(&v155);
    goto LABEL_37;
  }

  sub_19A334618(*(v53 + 56) + 32 * v54, v157);
  sub_19A3345C4(&v155);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v57 = v140;
    sub_19A3C2D94();
    swift_allocError();
    *v80 = 0xD000000000000019;
    *(v80 + 8) = 0x800000019A5985F0;
    *(v80 + 16) = 0;
    *(v80 + 24) = 5;
    swift_willThrow();

    goto LABEL_34;
  }

  v134 = v51;
  v135 = v154[0];
  v56 = &off_1E7517000;
  v57 = v140;
  if (v44)
  {
    goto LABEL_18;
  }

  sub_19A33546C(v148, v25, &qword_1EAFA1050);
  v58 = type metadata accessor for InputConditioner.PersonalizationConfiguration();
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  v133[1] = v59 + 48;
  if (v60(v25, 1, v58) != 1)
  {
    v133[0] = v60;

    sub_19A3C32E4(v25, type metadata accessor for InputConditioner.PersonalizationConfiguration);
    v83 = [v57 &selRef_enumerateParseResultsForString_options_withBlock_ + 4];
    if (v83)
    {
      v84 = v83;
      sub_19A2F1600(0, &qword_1EAF9F040);
      v85 = sub_19A57308C();

      if (v85 >> 62)
      {
        v86 = sub_19A573B4C();
      }

      else
      {
        v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v136 < v86)
      {
        if ((v85 & 0xC000000000000001) != 0)
        {
          v87 = v58;
          v88 = MEMORY[0x19A901520](v136, v85);
        }

        else
        {
          if (v136 < 0)
          {
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          if (v136 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v87 = v58;
          v88 = *(v85 + 8 * v136 + 32);
        }

        v89 = v88;

        v90 = [v89 rangeValue];
        v92 = v91;

        v93 = &v90[v92];
        if (!__OFADD__(v90, v92))
        {
          v94 = v93 - 1;
          if (!__OFSUB__(v93, 1))
          {
            if ((v94 & 0x8000000000000000) == 0)
            {
              if (!a3)
              {
                sub_19A33546C(v153, v29, &qword_1EAF9FD80);
                v104 = v144;
                v105 = v145;
                if ((*(v144 + 48))(v29, 1, v145) != 1)
                {
                  (*(v104 + 32))(v146, v29, v105);
                  v109 = v143;
                  sub_19A33546C(v148, v143, &qword_1EAFA1050);
                  v70 = v87;
                  if ((v133[0])(v109, 1, v87) == 1)
                  {
                    sub_19A2F3FA0(v143, &qword_1EAFA1050);
                    v110 = 0;
                    v111 = 1;
                    goto LABEL_72;
                  }

                  goto LABEL_71;
                }

                sub_19A2F3FA0(v29, &qword_1EAF9FD80);
                goto LABEL_60;
              }

              sub_19A33546C(v148, v23, &qword_1EAFA1050);
              if ((v133[0])(v23, 1, v87) == 1)
              {

                sub_19A2F3FA0(v23, &qword_1EAFA1050);
                v95 = sub_19A571BDC();
                v96 = v147;
                (*(*(v95 - 8) + 56))(v147, 1, 1, v95);
              }

              else
              {
                v96 = v147;
                sub_19A33546C(&v23[*(v87 + 20)], v147, &qword_1EAFA1088);

                sub_19A3C32E4(v23, type metadata accessor for InputConditioner.PersonalizationConfiguration);
              }

              v62 = v139;
              v106 = v138;
              sub_19A571BBC();
              sub_19A2F3FA0(v96, &qword_1EAFA1088);
              if (!v106)
              {
                v138 = 0;

                v61 = 1;
                goto LABEL_65;
              }

              sub_19A3C2D94();
              swift_allocError();
              *v107 = 0xD000000000000028;
              *(v107 + 8) = 0x800000019A5986A0;
              *(v107 + 16) = v106;
              *(v107 + 24) = 7;
              swift_willThrow();
              v108 = v106;

              sub_19A2F3FA0(v153, &qword_1EAF9FD80);
              return;
            }

            v155 = 0;
            v156 = 0xE000000000000000;
            sub_19A57395C();
            MEMORY[0x19A900A50](0xD00000000000001FLL, 0x800000019A5986D0);
            v157[0] = v136;
            v98 = sub_19A573EDC();
            MEMORY[0x19A900A50](v98);

            MEMORY[0x19A900A50](0xD000000000000020, 0x800000019A5986F0);
            v157[0] = v94;
            v99 = sub_19A573EDC();
            MEMORY[0x19A900A50](v99);

            MEMORY[0x19A900A50](0xD00000000000001DLL, 0x800000019A598720);
            v100 = v155;
            v101 = v156;
            sub_19A3C2D94();
            swift_allocError();
            *v102 = v100;
            *(v102 + 8) = v101;
            *(v102 + 16) = 0;
            *(v102 + 24) = 5;
            swift_willThrow();

            v103 = v140;
LABEL_80:

LABEL_35:
            sub_19A2F3FA0(v153, &qword_1EAF9FD80);
            return;
          }

LABEL_89:
          __break(1u);
          return;
        }

        goto LABEL_87;
      }

      v57 = v140;
    }

    sub_19A3C2D94();
    swift_allocError();
    *v97 = 0xD00000000000002ALL;
    *(v97 + 8) = 0x800000019A598610;
    *(v97 + 16) = 0;
    *(v97 + 24) = 5;
    swift_willThrow();

LABEL_34:

    goto LABEL_35;
  }

  sub_19A2F3FA0(v25, &qword_1EAFA1050);
LABEL_18:
  v61 = 0;
  v62 = v139;
  v63 = v152;
  while (1)
  {
    v64 = v150;
    sub_19A570A4C();
    v65 = sub_19A570A6C();
    (*(v151 + 8))(v64, v63);
    v66 = v140;
    v67 = [v140 v56[489]];
    if (!v67)
    {
      break;
    }

    v68 = v67;
    v151 = v65;
    LODWORD(v152) = v61;
    sub_19A2F1600(0, &qword_1EAF9F040);
    v69 = sub_19A57308C();

    v70 = v69 & 0xFFFFFFFFFFFFFF8;
    if (v69 >> 62)
    {
      v71 = sub_19A573B4C();
    }

    else
    {
      v71 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v72 = 0;
    v73 = 0;
    while (1)
    {
      if (v71 == v72)
      {

        sub_19A2F3FA0(v153, &qword_1EAF9FD80);
        LOBYTE(v61) = v152;
        v65 = v151;
        goto LABEL_40;
      }

      if ((v69 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x19A901520](v72, v69);
      }

      else
      {
        if (v72 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v74 = *(v69 + 8 * v72 + 32);
      }

      v75 = v74;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      [v74 rangeValue];
      v77 = v76;

      ++v72;
      v78 = __OFADD__(v73, v77);
      v73 += v77;
      if (v78)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v112 = v143 + *(v70 + 24);
    v110 = *v112;
    v111 = *(v112 + 8);
    sub_19A3C32E4(v143, type metadata accessor for InputConditioner.PersonalizationConfiguration);
LABEL_72:
    v113 = v138;
    v114 = sub_19A43B828(v146, v110, v111);
    v115 = v113;
    if (v113)
    {
      goto LABEL_79;
    }

    v116 = v114;
    if (!v114)
    {
      goto LABEL_78;
    }

    v147 = sub_19A43AC68();
    if (!v147)
    {

LABEL_78:
      sub_19A3C2D94();
      v115 = swift_allocError();
      *v129 = 0xD00000000000003DLL;
      *(v129 + 8) = 0x800000019A598660;
      *(v129 + 16) = 0;
      *(v129 + 24) = 7;
      swift_willThrow();
LABEL_79:
      sub_19A3C2D94();
      swift_allocError();
      *v130 = 0xD00000000000001FLL;
      *(v130 + 8) = 0x800000019A598640;
      *(v130 + 16) = v115;
      *(v130 + 24) = 7;
      swift_willThrow();
      v131 = v115;

      (*(v144 + 8))(v146, v145);
      v103 = v158;
      goto LABEL_80;
    }

    v117 = sub_19A43AF4C(1.0);
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v124 = v147;
    Width = CVPixelBufferGetWidth(v147);
    Height = CVPixelBufferGetHeight(v124);
    v159.origin.x = v117;
    v159.origin.y = v119;
    v159.size.width = v121;
    v159.size.height = v123;
    VNNormalizedRectForImageRect(v159, Width, Height);
    v127 = v141;
    sub_19A33546C(v148, v141, &qword_1EAFA1050);
    if ((v133[0])(v127, 1, v70) == 1)
    {
      sub_19A2F3FA0(v141, &qword_1EAFA1050);
      v128 = sub_19A571BDC();
      (*(*(v128 - 8) + 56))(v142, 1, 1, v128);
    }

    else
    {
      v132 = v141;
      sub_19A33546C(v141 + *(v70 + 20), v142, &qword_1EAFA1088);
      sub_19A3C32E4(v132, type metadata accessor for InputConditioner.PersonalizationConfiguration);
    }

    sub_19A571BAC();
    v138 = 0;

    sub_19A2F3FA0(v142, &qword_1EAFA1088);
    (*(v144 + 8))(v146, v145);
LABEL_60:
    v61 = 0;
    v62 = v139;
LABEL_65:
    v63 = v152;
    v56 = &off_1E7517000;
  }

  sub_19A2F3FA0(v153, &qword_1EAF9FD80);

  v73 = 0;
LABEL_40:
  v81 = v149;
  v82 = v135;
  *v149 = v158;
  v81[1] = v82;
  *(v81 + 16) = v61;
  v81[3] = v65;
  v81[4] = v73;
}

uint64_t sub_19A3BFAB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v270 = a5;
  v310 = a4;
  v273 = a2;
  v274 = a1;
  v314 = sub_19A57102C();
  v280 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v265 = &v254[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v272 = sub_19A57093C();
  v7 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v271 = &v254[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1090);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v292 = &v254[-v10];
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0770);
  v11 = MEMORY[0x1EEE9AC00](v294);
  v291 = &v254[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v290 = &v254[-v13];
  v295 = sub_19A570A9C();
  v305 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v299 = &v254[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v15 = MEMORY[0x1EEE9AC00](v298);
  v284 = &v254[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v300 = &v254[-v17];
  v286 = sub_19A570B4C();
  v312 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v285 = &v254[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v287 = sub_19A570B2C();
  v289 = *(v287 - 8);
  v19 = MEMORY[0x1EEE9AC00](v287);
  v316 = &v254[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v309 = &v254[-v21];
  v313 = sub_19A570B5C();
  v22 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v311 = &v254[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0768);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v254[-v25];
  v301 = sub_19A570B9C();
  v293 = *(v301 - 8);
  v27 = MEMORY[0x1EEE9AC00](v301);
  v29 = &v254[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x1EEE9AC00](v27);
  v296 = &v254[-v31];
  MEMORY[0x1EEE9AC00](v30);
  v302 = &v254[-v32];
  v33 = sub_19A570BEC();
  v279 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v297 = &v254[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v264 = &v254[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x1EEE9AC00](v36);
  v315 = &v254[-v39];
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v254[-v40];
  if (sub_19A4479B4())
  {
    v42 = v33;
    v43 = sub_19A447F04()[2];

    v44 = v43 | v310;
    v33 = v42;
    if (!v44)
    {
      v45 = 0x800000019A598770;
      sub_19A3C2D94();
      swift_allocError();
      *v46 = 0xD00000000000001ELL;
      *(v46 + 8) = 0x800000019A598770;
      *(v46 + 16) = 0;
      *(v46 + 24) = 5;
      swift_willThrow();
      return v45;
    }
  }

  v268 = v29;
  v320 = MEMORY[0x1E69E7CC0];
  v283 = v7;
  v48 = v280 + 56;
  v47 = *(v280 + 56);
  LODWORD(v275) = 1;
  v276 = v41;
  v261 = v47;
  v47(v41, 1, 1, v314);
  v49 = *(v279 + 16);
  v269 = v33;
  v49(v297, a3, v33);
  sub_19A570A5C();
  v50 = v311;
  sub_19A570B6C();
  v51 = v313;
  (*(v22 + 16))(v26, v50, v313);
  v52 = *(v24 + 36);
  v53 = sub_19A3C3344(&qword_1ED825310, MEMORY[0x1E69687C8]);
  sub_19A5733DC();
  v54 = (*(v22 + 8))(v50, v51);
  v277 = 0;
  ++v312;
  v307 = v289 + 32;
  v308 = v289 + 16;
  v311 = (v48 - 8);
  v303 = (v293 + 2);
  v304 = (v293 + 1);
  v288 = (v293 + 4);
  v293 = (v305 + 8);
  v267 = (v283 + 8);
  v260 = (v48 - 24);
  v259 = (v48 - 40);
  v280 = v48;
  v258 = (v48 - 48);
  v305 = v289 + 8;
  v54.n128_u64[0] = 136380675;
  v263 = v54;
  v54.n128_u64[0] = 136315395;
  v262 = v54;
  v54.n128_u64[0] = 136380931;
  v257 = v54;
  v54.n128_u64[0] = 136446210;
  v256 = v54;
  v289 = MEMORY[0x1E69E7CC0];
  v283 = MEMORY[0x1E69E7CC0];
  v55 = v287;
  v56 = v285;
  v278 = a3;
  v310 = v52;
  v306 = v26;
  while (2)
  {
    v57 = v286;
    while (1)
    {
      sub_19A57341C();
      sub_19A3C3344(&qword_1ED825320, MEMORY[0x1E69687B0]);
      v58 = sub_19A572C2C();
      (*v312)(v56, v57);
      if (v58)
      {
        sub_19A2F3FA0(v26, &qword_1EAFA0768);
        v64 = v296;
        sub_19A570BDC();
        v218 = sub_19A3C3344(&qword_1ED825308, MEMORY[0x1E69687E8]);
        v70 = v301;
        v219 = v302;
        v220 = sub_19A572C2C();
        v68 = *v304;
        (*v304)(v64, v70);
        v316 = v218;
        if ((v220 & 1) == 0)
        {
          v315 = v68;
          sub_19A570A4C();
          sub_19A570BDC();
          sub_19A3C3344(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
          if ((sub_19A572C1C() & 1) == 0)
          {
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

          v221 = v290;
          (*v303)(v290, v219, v70);
          v222 = v64;
          v223 = v294;
          v224 = *v288;
          (*v288)(v221 + *(v294 + 48), v222, v70);
          v225 = v70;
          v226 = v291;
          sub_19A33546C(v221, v291, &qword_1EAFA0770);
          v227 = *(v223 + 48);
          v228 = v300;
          (v224)(v300, v226, v225);
          v229 = &v226[v227];
          v230 = v315;
          v315(v229, v225);
          sub_19A3351B8(v221, v226, &qword_1EAFA0770);
          (v224)(v228 + *(v298 + 36), &v226[*(v223 + 48)], v225);
          v230(v226, v225);
          v231 = v299;
          sub_19A570ABC();
          sub_19A2F3FA0(v228, &qword_1EAFA0020);
          (*v293)(v231, v295);
          v232 = sub_19A572D9C();
          v234 = v233;
          if (qword_1ED824050 != -1)
          {
            swift_once();
          }

          v235 = sub_19A5723FC();
          __swift_project_value_buffer(v235, qword_1ED82BCF0);

          v236 = sub_19A5723DC();
          v237 = sub_19A57353C();

          if (os_log_type_enabled(v236, v237))
          {
            v238 = swift_slowAlloc();
            v239 = swift_slowAlloc();
            v318 = v239;
            *v238 = v263.n128_u32[0];
            *(v238 + 4) = sub_19A31F114(v232, v234, &v318);
            _os_log_impl(&dword_19A2DE000, v236, v237, "CalculateConditioning: added final text segment %{private}s", v238, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v239);
            MEMORY[0x19A902C50](v239, -1, -1);
            MEMORY[0x19A902C50](v238, -1, -1);
          }

          v64 = v296;
          v240 = [objc_allocWithZone(MEMORY[0x1E6999158]) init];
          v241 = sub_19A572CCC();

          [v240 setString_];

          MEMORY[0x19A900BE0]();
          if (*((v320 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v320 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19A5730AC();
          }

          sub_19A5730FC();
          v70 = v301;
          v68 = v315;
        }

        v242 = v299;
        sub_19A570A4C();
        sub_19A3C3344(&qword_1ED825328, MEMORY[0x1E6968678]);
        v243 = v295;
        sub_19A5733DC();
        v244 = v64;
        v245 = v268;
        sub_19A57341C();
        v246 = sub_19A572C2C();
        v68(v245, v70);
        v68(v244, v70);
        v64 = v302;
        (*v293)(v242, v243);
        if ((v246 & 1) == 0)
        {
LABEL_86:
          sub_19A2F1600(0, &qword_1EAF9F080);
          v249 = sub_19A57307C();
          v250 = v273;
          [v273 runOnInput:v249 error:0];

          v45 = [v250 inferenceOutputs];
          v68(v64, v70);
          (*(v279 + 8))(v297, v269);
          sub_19A3351B8(v276, v274, &qword_1EAF9FD80);

          return v45;
        }

        v247 = [objc_allocWithZone(MEMORY[0x1E6999158]) init];
        v248 = sub_19A572CCC();
        [v247 setString_];

        MEMORY[0x19A900BE0]();
        if (*((v320 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v320 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_85:
          sub_19A5730FC();
          goto LABEL_86;
        }

LABEL_92:
        sub_19A5730AC();
        goto LABEL_85;
      }

      v59 = sub_19A57345C();
      v60 = v53;
      v61 = v309;
      (*v308)(v309);
      v59(&v318, 0);
      sub_19A57342C();
      (*v307)(v316, v61, v55);
      sub_19A342038();
      v62 = v315;
      sub_19A570B3C();
      sub_19A378428();
      sub_19A570B3C();
      v63 = BYTE4(v318);
      v64 = *v311;
      if ((*v311)(v62, 1, v314) != 1 || (v63 & 1) == 0)
      {
        break;
      }

      sub_19A39A814();
      v65 = v316;
      sub_19A570B3C();
      if (BYTE4(v318) == 1)
      {
        (*v305)(v65, v55);
        sub_19A2F3FA0(v315, &qword_1EAF9FD80);
        v26 = v306;
      }

      else
      {
        LODWORD(v266) = v318;
        v66 = v300;
        sub_19A570B1C();
        v67 = *v303;
        v68 = v296;
        v69 = v301;
        (*v303)(v296, v66, v301);
        v70 = &qword_1EAFA0020;
        v64 = &unk_19A579C70;
        sub_19A2F3FA0(v66, &qword_1EAFA0020);
        v71 = sub_19A570B7C();
        v282 = *v304;
        v282(v68, v69);
        v281 = v67;
        if (v71)
        {
          sub_19A570A4C();
          v72 = v284;
          sub_19A570B1C();
          v67(v68, v72, v69);
          sub_19A2F3FA0(v72, &qword_1EAFA0020);
          sub_19A3C3344(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
          v73 = v302;
          result = sub_19A572C1C();
          if ((result & 1) == 0)
          {
            goto LABEL_95;
          }

          v75 = v290;
          v67(v290, v73, v69);
          v76 = v294;
          v77 = *v288;
          (*v288)(v75 + *(v294 + 48), v68, v69);
          v78 = v291;
          sub_19A33546C(v75, v291, &qword_1EAFA0770);
          v79 = *(v76 + 48);
          v80 = v300;
          (v77)(v300, v78, v301);
          v81 = v282;
          v282(&v78[v79], v301);
          v82 = v75;
          v83 = v301;
          sub_19A3351B8(v82, v78, &qword_1EAFA0770);
          (v77)(v80 + *(v298 + 36), &v78[*(v76 + 48)], v83);
          v84 = v83;
          v81(v78, v83);
          v85 = v299;
          sub_19A570ABC();
          v64 = &unk_19A579C70;
          sub_19A2F3FA0(v80, &qword_1EAFA0020);
          (*v293)(v85, v295);
          v86 = sub_19A572D9C();
          v88 = v87;
          v89 = [objc_allocWithZone(MEMORY[0x1E6999158]) init];
          v90 = sub_19A572CCC();
          [v89 setString_];

          MEMORY[0x19A900BE0]();
          if (*((v320 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v320 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19A5730AC();
          }

          sub_19A5730FC();
          if (qword_1ED824050 != -1)
          {
            swift_once();
          }

          v91 = sub_19A5723FC();
          __swift_project_value_buffer(v91, qword_1ED82BCF0);

          v92 = sub_19A5723DC();
          v93 = sub_19A57353C();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = v92;
            v96 = swift_slowAlloc();
            v318 = v96;
            *v94 = v263.n128_u32[0];
            v97 = sub_19A31F114(v86, v88, &v318);

            *(v94 + 4) = v97;
            _os_log_impl(&dword_19A2DE000, v95, v93, "CalculateConditioning: added text %{private}s", v94, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v96);
            MEMORY[0x19A902C50](v96, -1, -1);
            v69 = v301;
            MEMORY[0x19A902C50](v94, -1, -1);
          }

          else
          {

            v69 = v84;
          }

          v98 = v300;
          sub_19A570B1C();
          v99 = v302;
          v282(v302, v69);
          v100 = v99;
          v67 = v281;
          v281(v100, v98, v69);
          v70 = &qword_1EAFA0020;
          sub_19A2F3FA0(v98, &qword_1EAFA0020);
          v68 = v296;
        }

        sub_19A570A4C();
        v101 = v284;
        sub_19A570B1C();
        v67(v68, (v101 + *(v298 + 36)), v69);
        sub_19A2F3FA0(v101, &qword_1EAFA0020);
        sub_19A3C3344(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
        v102 = v302;
        if ((sub_19A572C1C() & 1) == 0)
        {
          goto LABEL_90;
        }

        v103 = v290;
        v67(v290, v102, v69);
        v104 = v294;
        v105 = *v288;
        (*v288)(v103 + *(v294 + 48), v68, v69);
        v106 = v105;
        v283 = v105;
        v107 = v291;
        v108 = v69;
        sub_19A33546C(v103, v291, &qword_1EAFA0770);
        v109 = *(v104 + 48);
        v110 = v300;
        v106(v300, v107, v108);
        v111 = &v107[v109];
        v112 = v282;
        v282(v111, v108);
        sub_19A3351B8(v103, v107, &qword_1EAFA0770);
        (v283)(v110 + *(v298 + 36), &v107[*(v104 + 48)], v108);
        v112(v107, v108);
        v113 = v299;
        sub_19A570ABC();
        sub_19A2F3FA0(v110, &qword_1EAFA0020);
        (*v293)(v113, v295);
        v114 = sub_19A572D9C();
        v116 = v115;
        v117 = [objc_allocWithZone(MEMORY[0x1E6999158]) init];
        v118 = sub_19A572CCC();
        [v117 setString_];

        MEMORY[0x19A900BE0]();
        if (*((v320 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v320 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19A5730AC();
        }

        sub_19A5730FC();
        v119 = v320;
        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        v283 = v119;
        v120 = sub_19A5723FC();
        __swift_project_value_buffer(v120, qword_1ED82BCF0);

        v121 = sub_19A5723DC();
        v122 = sub_19A57353C();

        v53 = v60;
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v255 = v122;
          v124 = v123;
          v125 = swift_slowAlloc();
          v318 = v125;
          *v124 = v262.n128_u32[0];
          v317 = v266;
          v126 = sub_19A572DAC();
          v128 = sub_19A31F114(v126, v127, &v318);

          *(v124 + 4) = v128;
          *(v124 + 12) = 2081;
          v129 = sub_19A31F114(v114, v116, &v318);

          *(v124 + 14) = v129;
          _os_log_impl(&dword_19A2DE000, v121, v255, "CalculateConditioning: added categor(ies) %s demographic text %{private}s", v124, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x19A902C50](v125, -1, -1);
          MEMORY[0x19A902C50](v124, -1, -1);
        }

        else
        {
        }

        v130 = v302;
        v55 = v287;
        v56 = v285;
        v131 = v300;
        v132 = v316;
        sub_19A570B1C();
        (*v305)(v132, v55);
        v133 = v301;
        v282(v130, v301);
        sub_19A2F3FA0(v315, &qword_1EAF9FD80);
        v281(v130, (v131 + *(v298 + 36)), v133);
        sub_19A2F3FA0(v131, &qword_1EAFA0020);
        v57 = v286;
        v26 = v306;
      }
    }

    v134 = v300;
    sub_19A570B1C();
    v68 = v296;
    v135 = v301;
    v281 = *v303;
    v281(v296, v134, v301);
    v70 = v135;
    sub_19A2F3FA0(v134, &qword_1EAFA0020);
    sub_19A3C3344(&qword_1ED825308, MEMORY[0x1E69687E8]);
    v136 = v302;
    LOBYTE(v135) = sub_19A572C2C();
    v282 = *v304;
    v282(v68, v70);
    if (v135)
    {
      goto LABEL_40;
    }

    sub_19A570A4C();
    v137 = v284;
    sub_19A570B1C();
    v138 = v281;
    v281(v68, v137, v70);
    sub_19A2F3FA0(v137, &qword_1EAFA0020);
    sub_19A3C3344(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
    result = sub_19A572C1C();
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_94;
    }

    v139 = v290;
    v138(v290, v136, v70);
    v140 = v294;
    v141 = *v288;
    (*v288)(v139 + *(v294 + 48), v68, v70);
    v142 = v141;
    v283 = v141;
    v143 = v291;
    sub_19A33546C(v139, v291, &qword_1EAFA0770);
    v144 = *(v140 + 48);
    v145 = v300;
    v142(v300, v143, v301);
    v146 = v282;
    v282(&v143[v144], v301);
    v70 = v301;
    sub_19A3351B8(v139, v143, &qword_1EAFA0770);
    (v283)(v145 + *(v298 + 36), &v143[*(v140 + 48)], v70);
    v146(v143, v70);
    v147 = v299;
    sub_19A570ABC();
    sub_19A2F3FA0(v145, &qword_1EAFA0020);
    (*v293)(v147, v295);
    v148 = sub_19A572D9C();
    v150 = v149;
    v151 = [objc_allocWithZone(MEMORY[0x1E6999158]) init];
    v152 = sub_19A572CCC();
    [v151 setString_];

    MEMORY[0x19A900BE0]();
    if (*((v320 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v320 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A5730AC();
    }

    sub_19A5730FC();
    v153 = v320;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v154 = sub_19A5723FC();
    __swift_project_value_buffer(v154, qword_1ED82BCF0);

    v155 = sub_19A5723DC();
    v156 = sub_19A57353C();

    v157 = os_log_type_enabled(v155, v156);
    v283 = v153;
    if (v157)
    {
      v158 = v155;
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v161 = v148;
      v162 = v160;
      v318 = v160;
      *v159 = v263.n128_u32[0];
      v163 = sub_19A31F114(v161, v150, &v318);

      *(v159 + 4) = v163;
      _os_log_impl(&dword_19A2DE000, v158, v156, "CalculateConditioning: added text %{private}s", v159, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v162);
      v70 = v301;
      MEMORY[0x19A902C50](v162, -1, -1);
      MEMORY[0x19A902C50](v159, -1, -1);
    }

    else
    {
    }

    v136 = v302;
    v164 = v300;
    sub_19A570B1C();
    v282(v136, v70);
    v281(v136, v164, v70);
    sub_19A2F3FA0(v164, &qword_1EAFA0020);
    v68 = v296;
LABEL_40:
    sub_19A570A4C();
    v165 = v284;
    sub_19A570B1C();
    v166 = v281;
    v281(v68, (v165 + *(v298 + 36)), v70);
    sub_19A2F3FA0(v165, &qword_1EAFA0020);
    sub_19A3C3344(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
    if ((sub_19A572C1C() & 1) == 0)
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v167 = v290;
    v166(v290, v136, v70);
    v168 = v294;
    v169 = *v288;
    (*v288)(v167 + *(v294 + 48), v68, v70);
    v266 = v169;
    v170 = v291;
    v171 = v70;
    sub_19A33546C(v167, v291, &qword_1EAFA0770);
    v172 = *(v168 + 48);
    v173 = v300;
    (v169)(v300, v170, v171);
    v174 = v282;
    v282(&v170[v172], v171);
    sub_19A3351B8(v167, v170, &qword_1EAFA0770);
    (v266)(v173 + *(v298 + 36), &v170[*(v294 + 48)], v171);
    v174(v170, v171);
    v175 = v299;
    sub_19A570ABC();
    sub_19A2F3FA0(v173, &qword_1EAFA0020);
    (*v293)(v175, v295);
    v176 = sub_19A572D9C();
    v178 = v177;
    v318 = sub_19A572DCC();
    v319 = v179;
    v180 = v271;
    sub_19A5708CC();
    sub_19A2F4450();
    v181 = sub_19A57380C();
    v183 = v182;
    (*v267)(v180, v272);

    if (v181 == 0x6E6F73726570 && v183 == 0xE600000000000000)
    {

      goto LABEL_45;
    }

    v184 = sub_19A573F1C();

    if ((v184 & 1) == 0)
    {

      v318 = 0;
      v319 = 0xE000000000000000;
      sub_19A57395C();

      v318 = 0xD000000000000023;
      v319 = 0x800000019A598740;
      MEMORY[0x19A900A50](v176, v178);

      MEMORY[0x19A900A50](34, 0xE100000000000000);
      v251 = v318;
      v252 = v319;
      sub_19A3C2D94();
      swift_allocError();
      *v253 = v251;
      *(v253 + 8) = v252;
      *(v253 + 16) = 0;
      *(v253 + 24) = 0;
      swift_willThrow();
      (*v305)(v316, v287);
      sub_19A2F3FA0(v306, &qword_1EAFA0768);
      v282(v302, v301);
      (*(v279 + 8))(v297, v269);
      v45 = &qword_1EAF9FD80;
      sub_19A2F3FA0(v276, &qword_1EAF9FD80);
      sub_19A2F3FA0(v315, &qword_1EAF9FD80);

      return v45;
    }

LABEL_45:
    v185 = v301;
    if (*(v289 + 2) >= v270)
    {

      v56 = v285;
      v53 = v60;
      v198 = v185;
      v26 = v306;
LABEL_72:
      v215 = v300;
      v216 = v316;
      sub_19A570B1C();
      v55 = v287;
      (*v305)(v216, v287);
      v217 = v302;
      v282(v302, v198);
      sub_19A2F3FA0(v315, &qword_1EAF9FD80);
      v281(v217, (v215 + *(v298 + 36)), v198);
      sub_19A2F3FA0(v215, &qword_1EAFA0020);
      continue;
    }

    break;
  }

  v186 = [objc_allocWithZone(MEMORY[0x1E6999158]) init];
  v187 = sub_19A572CCC();
  [v186 setString_];

  MEMORY[0x19A900BE0]();
  v188 = v314;
  v53 = v60;
  if (*((v320 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v320 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_19A5730AC();
  }

  v283 = v176;
  sub_19A5730FC();
  if (v320 >> 62)
  {
    result = sub_19A573B4C();
  }

  else
  {
    result = *((v320 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v306;
  if (!__OFSUB__(result, 1))
  {
    v277 = result - 1;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v189 = sub_19A5723FC();
    v190 = __swift_project_value_buffer(v189, qword_1ED82BCF0);

    v275 = v190;
    v191 = sub_19A5723DC();
    v192 = sub_19A57353C();

    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      v194 = v191;
      v195 = swift_slowAlloc();
      v318 = v195;
      *v193 = v257.n128_u32[0];
      v196 = v178;
      *(v193 + 4) = sub_19A31F114(v283, v178, &v318);
      *(v193 + 12) = 2048;
      *(v193 + 14) = v277;
      _os_log_impl(&dword_19A2DE000, v194, v192, "CalculateConditioning: added entity term %{private}s at index %ld", v193, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v195);
      MEMORY[0x19A902C50](v195, -1, -1);
      v197 = v193;
      v188 = v314;
      MEMORY[0x19A902C50](v197, -1, -1);
    }

    else
    {
      v196 = v178;
    }

    v199 = v276;
    v200 = v264;
    sub_19A33546C(v315, v264, &qword_1EAF9FD80);
    if ((v64)(v200, 1, v188) == 1)
    {
      sub_19A2F3FA0(v200, &qword_1EAF9FD80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v289 = sub_19A31CE20(0, *(v289 + 2) + 1, 1, v289);
      }

      v202 = *(v289 + 2);
      v201 = *(v289 + 3);
      v203 = v202 + 1;
      if (v202 >= v201 >> 1)
      {
        v289 = sub_19A31CE20((v201 > 1), v202 + 1, 1, v289);
      }
    }

    else
    {
      sub_19A2F3FA0(v199, &qword_1EAF9FD80);

      v204 = v265;
      (*v260)(v265, v200, v188);
      (*v259)(v199, v204, v188);
      v261(v199, 0, 1, v188);
      v283 = sub_19A570FDC();
      v196 = v205;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v289 = sub_19A31CE20(0, *(v289 + 2) + 1, 1, v289);
      }

      v202 = *(v289 + 2);
      v206 = *(v289 + 3);
      v203 = v202 + 1;
      if (v202 >= v206 >> 1)
      {
        v289 = sub_19A31CE20((v206 > 1), v202 + 1, 1, v289);
      }

      (*v258)(v265, v188);
    }

    v207 = v289;
    *(v289 + 2) = v203;
    v208 = &v207[16 * v202];
    *(v208 + 4) = v283;
    *(v208 + 5) = v196;
    v209 = [objc_allocWithZone(MEMORY[0x1E6999158]) init];
    v210 = sub_19A572CCC();
    [v209 setString_];

    MEMORY[0x19A900BE0]();
    if (*((v320 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v320 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A5730AC();
    }

    sub_19A5730FC();
    v283 = v320;
    v211 = sub_19A5723DC();
    v212 = sub_19A57353C();
    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v318 = v214;
      *v213 = v256.n128_u32[0];
      *(v213 + 4) = sub_19A31F114(0, 0xE000000000000000, &v318);
      _os_log_impl(&dword_19A2DE000, v211, v212, "CalculateConditioning: added empty separator text %{public}s", v213, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v214);
      MEMORY[0x19A902C50](v214, -1, -1);
      MEMORY[0x19A902C50](v213, -1, -1);
    }

    LODWORD(v275) = 0;
    v198 = v301;
    v56 = v285;
    goto LABEL_72;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_19A3C2940()
{
  result = sub_19A379CB0(&unk_1F0DA7830);
  qword_1EAFCA228 = result;
  return result;
}

uint64_t sub_19A3C2968()
{

  return swift_deallocClassInstance();
}

unint64_t sub_19A3C2A2C()
{
  result = qword_1EAF9F6C8;
  if (!qword_1EAF9F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F6C8);
  }

  return result;
}

uint64_t sub_19A3C2A80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return sub_19A3BADC8(a1, a2);
}

unint64_t sub_19A3C2B2C()
{
  v0 = sub_19A32F9CC(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19A33D0AC(8, 1, isUniquelyReferenced_nonNull_native);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_19A33D0AC(12, 2, v2);
  return v0;
}

uint64_t sub_19A3C2BA4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (qword_1EAF9F6B0 != -1)
  {
    swift_once();
  }

  if ((sub_19A41F0BC(a1, qword_1EAFCA228) & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = sub_19A3C2B2C();
  if (!*(v4 + 16) || (v5 = sub_19A31FADC(a2), (v6 & 1) == 0))
  {

LABEL_8:
    sub_19A57395C();
    MEMORY[0x19A900A50](0xD000000000000036, 0x800000019A598790);
    sub_19A573ACC();
    MEMORY[0x19A900A50](0xD000000000000018, 0x800000019A5985B0);
    sub_19A573ACC();
    v7 = 0;
    sub_19A3C2D94();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    swift_willThrow();
    return v7;
  }

  v7 = *(*(v4 + 56) + 8 * v5);

  return v7;
}

uint64_t type metadata accessor for InputConditioner.PersonalizationConfiguration()
{
  result = qword_1EAF9F6B8;
  if (!qword_1EAF9F6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_19A3C2D94()
{
  result = qword_1EAFA1058;
  if (!qword_1EAFA1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1058);
  }

  return result;
}

uint64_t sub_19A3C2DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3C2E50(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    v6 = a3[1];
    v7 = a3[2];
    sub_19A3A3778(*a3);
    v8 = qword_1ED824050;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_19A5723FC();
    __swift_project_value_buffer(v9, qword_1ED82BCF0);

    v10 = sub_19A5723DC();
    v11 = sub_19A57353C();
    sub_19A3A3810(v5);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315138;
      if (v7)
      {
        v14 = v6;
      }

      else
      {
        v14 = 7104878;
      }

      if (v7)
      {
        v15 = v7;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      v16 = sub_19A31F114(v14, v15, &v29);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_19A2DE000, v10, v11, "CalculateConditioning: added a character faceprint from filename %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x19A902C50](v13, -1, -1);
      MEMORY[0x19A902C50](v12, -1, -1);
    }

    sub_19A3A3810(v5);
    return v5;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    return 0;
  }

  v20 = a1;
  v21 = a2;
  v22 = sub_19A573B4C();
  a2 = v21;
  v23 = v22;
  a1 = v20;
  if (!v23)
  {
    return 0;
  }

LABEL_15:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = a2;
    v4 = MEMORY[0x19A901520](0, a1);
    if (!v17)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v17 = a2;
    v4 = *(a1 + 32);
    if (!v17)
    {
      goto LABEL_27;
    }
  }

  if (!*(v17 + 16))
  {
LABEL_27:
    v5 = 0;
    goto LABEL_28;
  }

  v5 = *(v17 + 64);
  if (v5)
  {
  }

  else
  {
    sub_19A571B9C();
    v18 = v4;
    v19 = sub_19A571B8C();
    if (v3)
    {

      return v5;
    }

    v5 = v19;
  }

LABEL_28:
  if (qword_1ED824050 != -1)
  {
LABEL_34:
    swift_once();
  }

  v24 = sub_19A5723FC();
  __swift_project_value_buffer(v24, qword_1ED82BCF0);
  v25 = sub_19A5723DC();
  v26 = sub_19A57353C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_19A2DE000, v25, v26, "CalculateConditioning: added a conditioning image", v27, 2u);
    MEMORY[0x19A902C50](v27, -1, -1);
  }

  return v5;
}

uint64_t sub_19A3C3214(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1080) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_19A3BE018(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19A3C32E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A3C3344(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_19A3C338C(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_19A3C33DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 25))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 24);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19A3C3424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

void sub_19A3C34AC()
{
  sub_19A571C0C();
  if (v0 <= 0x3F)
  {
    sub_19A3C3548();
    if (v1 <= 0x3F)
    {
      sub_19A3C35A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19A3C3548()
{
  if (!qword_1EAF9F1C0)
  {
    sub_19A571BDC();
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F1C0);
    }
  }
}

void sub_19A3C35A0()
{
  if (!qword_1ED825598)
  {
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED825598);
    }
  }
}

uint64_t dispatch thunk of SkinToneDirectiveSpecifying.skinToneDirective.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A33558C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SkinToneDirectiveSpecifying.specifySkinToneDirective(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A2F759C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SkinToneDirectiveSpecifying.dropSkinToneDirective()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return v7(a1, a2);
}

uint64_t sub_19A3C3960(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(a3(0) - 8);
  v10 = a4(&v12, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v5, a1);
  sub_19A2EA480();
  if (v10 != v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_19A3C3A48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 136) = a4;
  *(v5 + 96) = a3;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3C3AEC, 0, 0);
}

uint64_t sub_19A3C3AEC()
{
  v12 = v0;
  v1 = *(v0 + 104);
  if (*(v0 + 136) == 1)
  {
    v2 = *(v1 + 16);
    *(v0 + 120) = v2;

    return MEMORY[0x1EEE6DFA0](sub_19A3C3C58, v2, 0);
  }

  else
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = *(*(v1 + 24) + 24);
    v7 = swift_task_alloc();
    v7[2] = v3;
    v7[3] = v5;
    v7[4] = v4;
    os_unfair_lock_lock((v6 + 24));
    sub_19A379C40((v6 + 16), &v11);
    os_unfair_lock_unlock((v6 + 24));
    v8 = v11;

    v9 = *(v0 + 8);

    return v9(v8);
  }
}

uint64_t sub_19A3C3C58()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = OBJC_IVAR____TtC16VisualGeneration15EntityExtractor_locale;
  swift_beginAccess();
  sub_19A33546C(v2 + v5, v1, &qword_1EAF9FDC8);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CD0];
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  *(v7 + 24) = v6;

  sub_19A3B2800(v4, v3, v1, sub_19A3E3F84, v7);

  sub_19A2F3FA0(v1, &qword_1EAF9FDC8);
  swift_beginAccess();
  v0[16] = *(v6 + 16);

  return MEMORY[0x1EEE6DFA0](sub_19A3C3DDC, 0, 0);
}

uint64_t sub_19A3C3DDC()
{
  v18 = v0;
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v7 = sub_19A572CCC();
  [v6 setString_];

  v0[8] = MEMORY[0x1E69E7CC0];
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v1;
  v8[5] = v0 + 8;
  sub_19A5734AC();

  v0[9] = v0[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
  v9 = sub_19A572BEC();
  v11 = v10;

  v12 = *(*(v3 + 24) + 24);
  v13 = swift_task_alloc();
  v13[2] = v2;
  v13[3] = v9;
  v13[4] = v11;
  os_unfair_lock_lock((v12 + 24));
  sub_19A3E4070((v12 + 16), &v17);
  os_unfair_lock_unlock((v12 + 24));

  v14 = v17;

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_19A3C407C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = sub_19A57102C();
  v3[4] = v7;
  v3[5] = *(v7 - 8);
  v3[6] = swift_task_alloc();
  v8 = type metadata accessor for EntityExtractor.NamedEntity.EntityData(0);
  v3[7] = v8;
  v3[8] = *(v8 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v9 = type metadata accessor for Concept(0);
  v3[11] = v9;
  v3[12] = *(v9 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[15] = v10;
  *v10 = v3;
  v10[1] = sub_19A3C4260;

  return sub_19A3C55B0(a1, a2, a3);
}

uint64_t sub_19A3C4260(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A3C4360, 0, 0);
}

uint64_t sub_19A3C4360()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v92 = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v4 = v1 + 48;
    do
    {
      v4 += 24;

      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      --v2;
    }

    while (v2);
    v3 = v92;
  }

  v5 = sub_19A3E3138(v3);
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v5;
  v84 = v0[8];
  v81 = v0[7];
  v82 = v0[12];
  v10 = v0[5];

  v12 = *(v1 + 16);
  if (v12)
  {
    v69 = v7;
    v13 = 0;
    v89 = v9 + 56;
    v90 = (v10 + 16);
    v14 = (v10 + 8);
    v75 = -v12;
    v73 = MEMORY[0x1E69E7CC0];
    v15 = v6 + 48;
    v91 = v9;
    v76 = (v10 + 8);
    v77 = v8;
    v70 = v1;
    v74 = v10;
    v71 = v6 + 48;
    while (2)
    {
      v16 = (v15 + 24 * v13);
      v17 = v13 + 1;
      while (1)
      {
        if ((v17 - 1) >= *(v1 + 16))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          return result;
        }

        v85 = v17;
        v18 = *v16;

        result = sub_19A57348C();
        if (v19)
        {
          goto LABEL_59;
        }

        v20 = sub_19A572F9C();
        v86 = MEMORY[0x19A900970](v20);
        v22 = v21;

        type metadata accessor for EntityExtractor.NamedEntity();
        v23 = swift_dynamicCastClass();
        if (v23)
        {
          break;
        }

        if (*(v18 + 32) == 2)
        {
          v59 = *(v18 + 16);
          v58 = *(v18 + 24);
          v60 = swift_allocObject();
          v61 = MEMORY[0x1E69E7CC0];
          *(v60 + 40) = MEMORY[0x1E69E7CC0];
          *(v60 + 16) = v59;
          *(v60 + 24) = v58;
          v72 = v60;
          *(v60 + 32) = 2;

          v25 = v61;
          v24 = v61;
          v26 = *(v61 + 16);
          if (!v26)
          {
            goto LABEL_40;
          }

          goto LABEL_15;
        }

        v17 = v85 + 1;
        v16 += 3;
        if (v75 + v85 + 1 == 1)
        {
          goto LABEL_50;
        }
      }

      v72 = v23;
      v24 = *(v23 + 40);

      v25 = MEMORY[0x1E69E7CC0];
      v26 = *(v24 + 16);
      if (!v26)
      {
LABEL_40:
        v62 = v0[14];
        v63 = *(type metadata accessor for NamedEntityData(0) + 20);
        v64 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        (*(*(v64 - 8) + 56))(v62 + v63, 1, 1, v64);
        *v62 = v86;
        *(v69 + 8) = v22;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_19A31D108(0, v73[2] + 1, 1, v73);
        }

        v66 = v73[2];
        v65 = v73[3];
        if (v66 >= v65 >> 1)
        {
          v73 = sub_19A31D108(v65 > 1, v66 + 1, 1, v73);
        }

        v67 = v0[14];

        v73[2] = v66 + 1;
        result = sub_19A3E3DD8(v67, v73 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v66, type metadata accessor for Concept);
        goto LABEL_47;
      }

LABEL_15:
      v83 = v22;
      v93 = v25;

      v79 = v26;
      result = sub_19A322740(0, v26, 0);
      v27 = 0;
      v28 = v93;
      v78 = v24 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
      v80 = v24;
      do
      {
        if (v27 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_54;
        }

        v30 = v0[9];
        v29 = v0[10];
        sub_19A3E3C64(v78 + *(v84 + 72) * v27, v29, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        sub_19A3E3C64(v29, v30, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        v87 = v28;
        if (*(v9 + 2) && (sub_19A3E3F34(&qword_1EAF9FD60, MEMORY[0x1E69695A8]), v31 = sub_19A572B3C(), v32 = -1 << v9[32], v33 = v31 & ~v32, ((*&v89[(v33 >> 3) & 0xFFFFFFFFFFFFFF8] >> v33) & 1) != 0))
        {
          v34 = ~v32;
          v35 = *(v74 + 72);
          v36 = *(v74 + 16);
          do
          {
            v37 = v0[6];
            v38 = v0[4];
            v36(v37, *(v91 + 6) + v33 * v35, v38);
            sub_19A3E3F34(&qword_1EAF9FFB8, MEMORY[0x1E69695A8]);
            v39 = sub_19A572C2C();
            (*v14)(v37, v38);
            if (v39)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
          }

          while (((*&v89[(v33 >> 3) & 0xFFFFFFFFFFFFFF8] >> v33) & 1) != 0);
          v40 = v39 ^ 1;
        }

        else
        {
          v40 = 1;
        }

        v41 = v0[13];
        v42 = v0[9];
        v43 = v0[4];
        sub_19A3E3E40(v0[10], type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        *v41 = v86;
        *(v77 + 8) = v83;
        v44 = v41 + *(type metadata accessor for NamedEntityData(0) + 20);
        (*v90)(v44, v42, v43);
        LOBYTE(v43) = *(v42 + *(v81 + 20));

        sub_19A3E3E40(v42, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        v45 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        v44[*(v45 + 20)] = v43;
        v44[*(v45 + 24)] = v40 & 1;
        (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
        swift_storeEnumTagMultiPayload();
        v28 = v87;
        v47 = *(v87 + 16);
        v46 = *(v87 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_19A322740(v46 > 1, v47 + 1, 1);
          v28 = v87;
        }

        ++v27;
        v48 = v0[13];
        *(v28 + 16) = v47 + 1;
        result = sub_19A3E3DD8(v48, v28 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v47, type metadata accessor for Concept);
        v24 = v80;
        v9 = v91;
        v14 = v76;
      }

      while (v27 != v79);

      v88 = v28;
      v49 = *(v28 + 16);
      v50 = v73[2];
      v51 = v50 + v49;
      if (__OFADD__(v50, v49))
      {
        goto LABEL_55;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v53 = v73[3] >> 1, v53 < v51))
      {
        if (v50 <= v51)
        {
          v54 = v50 + v49;
        }

        else
        {
          v54 = v50;
        }

        v73 = sub_19A31D108(isUniquelyReferenced_nonNull_native, v54, 1, v73);
        v53 = v73[3] >> 1;
      }

      v1 = v70;
      result = v88;
      if (*(v88 + 16))
      {
        if (v53 - v73[2] < v49)
        {
          goto LABEL_57;
        }

        swift_arrayInitWithCopy();

        result = v72;
        if (v49)
        {
          v55 = v73[2];
          v56 = __OFADD__(v55, v49);
          v57 = v55 + v49;
          if (v56)
          {
            goto LABEL_58;
          }

          v73[2] = v57;
        }
      }

      else
      {

        result = v72;
        if (v49)
        {
          goto LABEL_56;
        }
      }

LABEL_47:
      v13 = v85;
      v15 = v71;
      if (v75 + v85)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

LABEL_50:

  v68 = v0[1];

  return v68(v73);
}

unint64_t sub_19A3C4CA0(unint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 56;
    v6 = MEMORY[0x1E69E7CC0];
    v23 = *(result + 16);
    v24 = a2;
    v21 = result + 56;
    while (1)
    {
      v22 = v6;
      v7 = (v5 + 32 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        if (__OFADD__(v8, 1))
        {
          goto LABEL_24;
        }

        v9 = *(v7 - 3);
        v10 = v9 - a2;
        if (__OFSUB__(v9, a2))
        {
          goto LABEL_25;
        }

        v11 = *(v7 - 2);
        v12 = v11 - a2;
        if (__OFSUB__(v11, a2))
        {
          goto LABEL_26;
        }

        v26 = v8 + 1;
        v14 = *(v7 - 1);
        v13 = *v7;
        sub_19A2F4450();

        sub_19A572E5C();

        result = sub_19A572E5C();
        v15 = a3[1];
        v16 = *a3 & 0xFFFFFFFFFFFFLL;
        if ((v15 & 0x2000000000000000) != 0)
        {
          v16 = HIBYTE(v15) & 0xF;
        }

        if (4 * v16 >= result >> 14)
        {
          break;
        }

        ++v8;
        v7 += 4;
        v3 = v23;
        a2 = v24;
        if (v26 == v23)
        {
          return v22;
        }
      }

      if (v12 < v10)
      {
        goto LABEL_27;
      }

      v6 = v22;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19A31E278(0, *(v22 + 16) + 1, 1, v22);
        v6 = result;
      }

      v5 = v21;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_19A31E278((v17 > 1), v18 + 1, 1, v6);
        v19 = v14;
        v6 = result;
      }

      else
      {
        v19 = v14;
      }

      *(v6 + 16) = v18 + 1;
      v20 = (v6 + 32 * v18);
      v20[4] = v10;
      v20[5] = v12;
      v20[6] = v19;
      v20[7] = v13;
      v3 = v23;
      a2 = v24;
      v4 = v26;
      if (v26 == v23)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_19A3C4EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_19A3355EC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_19A2F3FA0(v13, &qword_1EAFA0228);
}

uint64_t sub_19A3C4F5C(uint64_t a1)
{
  v2 = type metadata accessor for Concept(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    while (1)
    {
      sub_19A3E3C64(v13, v8, type metadata accessor for Concept);
      sub_19A3E3C64(v8, v6, type metadata accessor for Concept);
      v15 = swift_getEnumCaseMultiPayload() - 2;
      sub_19A3E3E40(v6, type metadata accessor for Concept);
      if (v15 <= 2)
      {
        break;
      }

      sub_19A3E3E40(v8, type metadata accessor for Concept);
      v13 += v14;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }

    sub_19A3E3DD8(v8, v11, type metadata accessor for Concept);
    v17 = 0;
    v16 = 1;
  }

  else
  {
LABEL_5:
    v16 = 0;
    v17 = 1;
  }

  (*(v3 + 56))(v11, v17, 1, v2);
  sub_19A2F3FA0(v11, &qword_1EAFA10A8);
  return v16;
}

uint64_t sub_19A3C519C(void *a1, unsigned __int8 a2)
{
  v4 = sub_19A570D4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  if (a2 > 1u)
  {
    sub_19A572C8C();
    sub_19A572C7C();
    if (a2 == 2)
    {
      v15 = sub_19A57102C();
    }

    else
    {
      v15 = type metadata accessor for Concept(0);
    }

    v14 = v15;
    goto LABEL_11;
  }

  if (!a2)
  {
    sub_19A572C8C();
    sub_19A572C7C();
    v14 = &type metadata for Ambiguity;
LABEL_11:
    MEMORY[0x19A900C30](a1, v14);
    sub_19A572C6C();

    sub_19A572C7C();
    sub_19A572CAC();
    sub_19A5710EC();
    return sub_19A572D7C();
  }

  sub_19A570D2C();
  (*(v5 + 16))(v8, v10, v4);
  v16 = sub_19A572D8C();
  v24 = v16;
  v25 = v17;
  v18 = sub_19A475CC8(a1);
  if (v19)
  {
    v22 = 8250;
    v23 = 0xE200000000000000;
    MEMORY[0x19A900A50](v18);

    MEMORY[0x19A900A50](v22, v23);

    v16 = v24;
  }

  (*(v5 + 8))(v10, v4);
  return v16;
}

uint64_t sub_19A3C5540()
{
  result = sub_19A572CCC();
  qword_1EAFCA248 = result;
  return result;
}

uint64_t sub_19A3C5578()
{
  result = sub_19A572CCC();
  qword_1EAFCA250 = result;
  return result;
}

uint64_t sub_19A3C55B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3C5650, 0, 0);
}

uint64_t sub_19A3C5650()
{
  v1 = swift_allocObject();
  v0[10] = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = sub_19A57231C();
  v0[11] = v2;
  v3 = *(v2 - 8);
  v0[12] = v3;
  v0[13] = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v4 = sub_19A57236C();
  __swift_project_value_buffer(v4, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "extractEntities", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v10 = v0[7];
  v9 = v0[8];

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v11 = 1;
  v0[14] = sub_19A5723AC();

  v12 = *(v9 + 16);
  v0[15] = v12;
  v13 = *(v10 + 16);
  v14 = sub_19A57112C();
  v15 = *(v14 - 8);
  if (v13)
  {
    (*(*(v14 - 8) + 16))(v0[9], v0[7] + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)), v14);
    v11 = 0;
  }

  (*(v15 + 56))(v0[9], v11, 1, v14);

  return MEMORY[0x1EEE6DFA0](sub_19A3C5934, v12, 0);
}

uint64_t sub_19A3C5934()
{
  v1 = v0[9];
  sub_19A3B2800(v0[5], v0[6], v1, sub_19A3E3F7C, v0[10]);

  sub_19A2F3FA0(v1, &qword_1EAF9FDC8);

  return MEMORY[0x1EEE6DFA0](sub_19A3C59E8, 0, 0);
}

uint64_t sub_19A3C59E8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  swift_beginAccess();
  v5 = *(v4 + 16);

  sub_19A3DF010("extractEntities", 15, 2);

  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_19A3C5AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_19A31E590(0, v8[2] + 1, 1, v8);
    *(a4 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_19A31E590((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[3 * v11];
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  *(a4 + 16) = v8;
  return swift_endAccess();
}

uint64_t sub_19A3C5BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1368) = v8;
  *(v9 + 1360) = v24;
  *(v9 + 1352) = v23;
  *(v9 + 1336) = v22;
  *(v9 + 2378) = v21;
  *(v9 + 1320) = v20;
  *(v9 + 1304) = v19;
  *(v9 + 1288) = v18;
  *(v9 + 1280) = a8;
  *(v9 + 1272) = a7;
  *(v9 + 2377) = a6;
  *(v9 + 1264) = a5;
  *(v9 + 1256) = a4;
  *(v9 + 1248) = a3;
  *(v9 + 1240) = a2;
  *(v9 + 1232) = a1;
  *(v9 + 1376) = sub_19A570A9C();
  *(v9 + 1384) = swift_task_alloc();
  sub_19A570C7C();
  *(v9 + 1392) = swift_task_alloc();
  *(v9 + 1400) = type metadata accessor for TextPrompt();
  *(v9 + 1408) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0);
  *(v9 + 1416) = v10;
  *(v9 + 1424) = *(v10 - 8);
  *(v9 + 1432) = swift_task_alloc();
  *(v9 + 1440) = swift_task_alloc();
  *(v9 + 1448) = swift_task_alloc();
  *(v9 + 1456) = swift_task_alloc();
  *(v9 + 1464) = swift_task_alloc();
  v11 = sub_19A57102C();
  *(v9 + 1472) = v11;
  *(v9 + 1480) = *(v11 - 8);
  *(v9 + 1488) = swift_task_alloc();
  *(v9 + 1496) = swift_task_alloc();
  type metadata accessor for NamedEntityData.NamedEntityType(0);
  *(v9 + 1504) = swift_task_alloc();
  *(v9 + 1512) = swift_task_alloc();
  *(v9 + 1520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10A8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = swift_task_alloc();
  *(v9 + 1544) = swift_task_alloc();
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  *(v9 + 1568) = swift_task_alloc();
  *(v9 + 1576) = type metadata accessor for NamedEntityData(0);
  *(v9 + 1584) = swift_task_alloc();
  *(v9 + 1592) = swift_task_alloc();
  *(v9 + 1600) = swift_task_alloc();
  *(v9 + 1608) = swift_task_alloc();
  v12 = type metadata accessor for EntityExtractor.NamedEntity.EntityData(0);
  *(v9 + 1616) = v12;
  *(v9 + 1624) = *(v12 - 8);
  *(v9 + 1632) = swift_task_alloc();
  *(v9 + 1640) = swift_task_alloc();
  v13 = type metadata accessor for Concept(0);
  *(v9 + 1648) = v13;
  *(v9 + 1656) = *(v13 - 8);
  *(v9 + 1664) = swift_task_alloc();
  *(v9 + 1672) = swift_task_alloc();
  *(v9 + 1680) = swift_task_alloc();
  *(v9 + 1688) = swift_task_alloc();
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  *(v9 + 1720) = swift_task_alloc();
  *(v9 + 1728) = swift_task_alloc();
  *(v9 + 1736) = swift_task_alloc();
  *(v9 + 1744) = swift_task_alloc();
  *(v9 + 1752) = swift_task_alloc();
  v14 = sub_19A57110C();
  *(v9 + 1760) = v14;
  *(v9 + 1768) = *(v14 - 8);
  *(v9 + 1776) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C38);
  *(v9 + 1784) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0760);
  *(v9 + 1792) = v15;
  *(v9 + 1800) = *(v15 - 8);
  *(v9 + 1808) = swift_task_alloc();
  *(v9 + 1816) = swift_task_alloc();
  *(v9 + 1824) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  *(v9 + 1848) = swift_task_alloc();
  *(v9 + 1856) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3C61D8, 0, 0);
}

uint64_t sub_19A3C61D8()
{
  v143 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1856);
  v2 = *(v0 + 1280);
  v3 = sub_19A5723FC();
  *(v0 + 1864) = __swift_project_value_buffer(v3, qword_1ED82BCF0);
  sub_19A33546C(v2, v1, &qword_1EAF9FD80);

  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1856);
  if (v6)
  {
    v8 = *(v0 + 1848);
    v9 = *(v0 + 1248);
    v10 = *(v0 + 1240);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v141 = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_19A31F114(v10, v9, &v141);
    *(v11 + 12) = 2080;
    sub_19A33546C(v7, v8, &qword_1EAF9FD80);
    v13 = sub_19A572DAC();
    v15 = v14;
    sub_19A2F3FA0(v7, &qword_1EAF9FD80);
    v16 = sub_19A31F114(v13, v15, &v141);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_19A2DE000, v4, v5, "Validating %{private}s supplementalUUID=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v12, -1, -1);
    MEMORY[0x19A902C50](v11, -1, -1);
  }

  else
  {

    sub_19A2F3FA0(v7, &qword_1EAF9FD80);
  }

  v17 = sub_19A57231C();
  *(v0 + 1872) = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  *(v0 + 1880) = v18;
  *(v0 + 1888) = *(v18 + 64);
  *(v0 + 1896) = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v20 = sub_19A57236C();
  *(v0 + 1904) = v20;
  *(v0 + 1912) = __swift_project_value_buffer(v20, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v21 = sub_19A57234C();
  v22 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v21, v22, v24, "validateText", "", v23, 2u);
    MEMORY[0x19A902C50](v23, -1, -1);
  }

  v25 = *(v0 + 1336);

  swift_task_alloc();
  v26 = *(v19 + 16);
  *(v0 + 1920) = v26;
  *(v0 + 1928) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v134 = v26;
  v26();
  *(v0 + 1936) = sub_19A5723BC();
  swift_allocObject();
  *(v0 + 1944) = sub_19A5723AC();

  if (!v25)
  {
LABEL_13:
    v137 = v25;
    v36 = *(v0 + 2377);
    v37 = *(v0 + 1248);
    v38 = *(v0 + 1240);
    v39 = swift_allocObject();
    *(v0 + 1952) = v39;

    v40 = sub_19A3871A0(v38, v37);
    v42 = v41;
    v44 = v43;
    v45 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v46 = sub_19A572CCC();
    v47 = [v45 initWithString_];

    *(v39 + 16) = v40;
    *(v39 + 24) = v42;
    *(v39 + 32) = v44;
    *(v39 + 40) = v47;
    *(v0 + 920) = v38;
    *(v0 + 928) = v37;

    if (v36)
    {
      v48 = *(v0 + 1248);
    }

    else
    {
      v49 = sub_19A572F9C();
      v50 = MEMORY[0x19A900970](v49);
      v48 = v51;

      *(v0 + 920) = v50;
      *(v0 + 928) = v48;
    }

    *(v0 + 1960) = v48;
    if (!v137)
    {
      v60 = 0;
      v61 = 0;
LABEL_33:
      *(v0 + 1976) = v61;
      *(v0 + 1968) = v60;
      v89 = *(v0 + 1320);
      v90 = *(v0 + 1352) & 2;
      if (v89 | v90)
      {
        v91 = sub_19A57234C();
        v92 = sub_19A57361C();
        if (sub_19A57376C())
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          v94 = sub_19A5722FC();
          _os_signpost_emit_with_name_impl(&dword_19A2DE000, v91, v92, v94, "scrubText", "", v93, 2u);
          MEMORY[0x19A902C50](v93, -1, -1);
        }

        swift_task_alloc();
        v134();
        swift_allocObject();
        *(v0 + 1984) = sub_19A5723AC();

        v95 = (v90 >> 1) | (2 * (v89 != 0));
        v96 = [*(v39 + 40) string];
        v97 = sub_19A572CFC();
        v99 = v98;

        *(v0 + 1992) = v99;
        v100 = swift_task_alloc();
        *(v0 + 2000) = v100;
        *v100 = v0;
        v100[1] = sub_19A3C74AC;
        v101 = *(v0 + 1360);

        return sub_19A46DC74(v97, v99, v95, v101);
      }

      else
      {

        *(v0 + 2379) = 0;
        v102 = MEMORY[0x1E69E7CC0];
        *(v0 + 2032) = MEMORY[0x1E69E7CC0];
        *(v0 + 2024) = 0;
        v103 = *(v0 + 1952);
        v104 = *(v0 + 1912);
        v105 = *(v0 + 1904);
        v106 = swift_allocObject();
        *(v0 + 2040) = v106;
        *(v106 + 16) = v102;
        v107 = v106 + 16;
        v140 = v105;
        v108 = *(v105 - 8);
        *(v0 + 2048) = v108[8];
        v109 = swift_task_alloc();
        v110 = v108[2];
        *(v0 + 2056) = v110;
        *(v0 + 2064) = (v108 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v136 = v109;
        v110(v109, v104, v105);
        v111 = swift_slowAlloc();
        *v111 = 0;
        v135 = sub_19A57234C();
        LOBYTE(v105) = sub_19A57361C();
        v112 = sub_19A5722FC();
        _os_signpost_emit_with_name_impl(&dword_19A2DE000, v135, v105, v112, "buildNounEmojiConcepts", "", v111, 2u);
        v113 = [*(v103 + 40) string];
        v114 = sub_19A572CFC();
        v116 = v115;

        v117 = swift_task_alloc();
        *(v117 + 16) = v107;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10B0);
        v118 = swift_allocObject();
        *(v118 + 16) = xmmword_19A576E10;
        v119 = *MEMORY[0x1E69779C8];
        *(v118 + 32) = *MEMORY[0x1E69779C8];
        v120 = objc_allocWithZone(MEMORY[0x1E6977A80]);
        type metadata accessor for NLTagScheme(0);
        v121 = v119;
        v122 = sub_19A57307C();

        v123 = [v120 initWithTagSchemes_];

        v124 = sub_19A572CCC();
        [v123 setString_];

        v125 = swift_task_alloc();
        v125[2] = v114;
        v125[3] = v116;
        v125[4] = sub_19A3E3884;
        v125[5] = v117;
        sub_19A57371C();

        LOBYTE(v124) = sub_19A57360C();
        v126 = sub_19A5722FC();
        _os_signpost_emit_with_name_impl(&dword_19A2DE000, v135, v124, v126, "buildNounEmojiConcepts", "", v111, 2u);

        MEMORY[0x19A902C50](v111, -1, -1);
        v127 = v108[1];
        *(v0 + 2072) = v127;
        *(v0 + 2080) = (v108 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v127(v136, v140);

        v128 = *(v0 + 920);
        *(v0 + 2088) = v128;
        v129 = *(v0 + 928);
        *(v0 + 2096) = v129;
        v130 = swift_task_alloc();
        *(v0 + 2104) = v130;
        *v130 = v0;
        v130[1] = sub_19A3C8088;
        v131 = *(v0 + 1344);

        return sub_19A3C55B0(v128, v129, v131);
      }
    }

    if (*(*(v0 + 1344) + 16))
    {
      v52 = *(v0 + 1784);
      v53 = *(v0 + 1776);
      v54 = *(v0 + 1768);
      v55 = *(v0 + 1760);
      sub_19A57112C();
      sub_19A57111C();
      sub_19A5710FC();
      (*(v54 + 8))(v53, v55);
      v56 = sub_19A57106C();
      v57 = *(v56 - 8);
      v58 = (*(v57 + 48))(v52, 1, v56);
      v59 = *(v0 + 1784);
      if (v58 == 1)
      {
        sub_19A2F3FA0(*(v0 + 1784), &qword_1EAFA0C38);
      }

      else
      {
        v60 = sub_19A57105C();
        v61 = v82;
        (*(v57 + 8))(v59, v56);
        if ((v60 != 28261 || v61 != 0xE200000000000000) && (sub_19A573F1C() & 1) == 0)
        {
LABEL_29:
          if ((*(v0 + 2377) & 1) == 0 && v61)
          {
            v83 = *(v0 + 1248);
            v84 = *(v0 + 1240);
            *(v0 + 984) = v84;
            *(v0 + 992) = v83;
            sub_19A2F4450();

            v85 = sub_19A572E6C();
            *(v0 + 968) = v84;
            v86 = v85;
            *(v0 + 976) = v83;
            result = sub_19A572E6C();
            v139 = result - v86;
            if (__OFSUB__(result, v86))
            {
              __break(1u);
              return result;
            }

            v87 = *(v39 + 40);
            v132 = *MEMORY[0x1E696A518];
            *(v0 + 952) = v60;
            *(v0 + 960) = v61;

            v88 = v87;
            [v88 addAttribute:v132 value:sub_19A57402C() range:{v86, v139}];
            swift_unknownObjectRelease();
          }

          goto LABEL_33;
        }
      }
    }

    v60 = 0;
    v61 = 0;
    goto LABEL_29;
  }

  v27 = *(v0 + 1336);
  v141 = 0x2829735C7C5E28;
  v142 = 0xE700000000000000;
  *(v0 + 1216) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
  v28 = sub_19A572BEC();
  MEMORY[0x19A900A50](v28);

  MEMORY[0x19A900A50](1935424041, 0xE400000000000000);
  sub_19A571ACC();
  v29 = *(v0 + 1808);
  v30 = *(v0 + 1800);
  v31 = *(v0 + 1792);
  v32 = *(v0 + 1248);
  *(v0 + 936) = *(v0 + 1240);
  *(v0 + 944) = v32;
  sub_19A571ABC();
  sub_19A3783B4();
  sub_19A2F12E4(&qword_1EAF9F1D0, &qword_1EAFA0760);
  sub_19A572BBC();
  v34 = v33;
  v133 = *(v30 + 8);
  v133(v29, v31);
  v35 = *(v0 + 1816);
  if (v34)
  {
    v133(*(v0 + 1816), *(v0 + 1792));
    goto LABEL_13;
  }

  v62 = *(v0 + 1248);
  v138 = *(v0 + 1792);
  v63 = *(v0 + 1240);
  v64 = sub_19A572F9C();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v141 = 0;
  v142 = 0xE000000000000000;

  sub_19A57395C();

  v141 = 0xD00000000000002ELL;
  v142 = 0x800000019A598A10;
  v71 = MEMORY[0x19A900970](v64, v66, v68, v70);
  v73 = v72;

  MEMORY[0x19A900A50](v71, v73);

  v74 = v141;
  v75 = v142;
  sub_19A3E3D84();
  swift_allocError();
  *v76 = v63;
  v76[1] = v62;
  v76[2] = v74;
  v76[3] = v75;
  v76[4] = 1879048192;
  swift_willThrow();
  v133(v35, v138);
  v77 = *(v0 + 1896);
  v78 = *(v0 + 1880);
  v79 = *(v0 + 1872);
  sub_19A3DF010("validateText", 12, 2);

  (*(v78 + 8))(v77, v79);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_19A3C74AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2008) = a1;
  *(v3 + 2016) = v1;

  if (v1)
  {

    v4 = sub_19A3DE6C8;
  }

  else
  {
    v4 = sub_19A3C75FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

unint64_t sub_19A3C75FC()
{
  v1 = *(v0 + 1976);
  if (v1)
  {
    v2 = *(v0 + 1968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0448);
    v3 = swift_allocObject();
    v4 = *MEMORY[0x1E696A518];
    *(v3 + 32) = *MEMORY[0x1E696A518];
    *(v3 + 16) = xmmword_19A576E10;
    *(v3 + 64) = MEMORY[0x1E69E6158];
    *(v3 + 40) = v2;
    *(v3 + 48) = v1;
    v5 = v4;
    v1 = sub_19A3306DC(v3);
    swift_setDeallocating();
    sub_19A2F3FA0(v3 + 32, &qword_1EAF9FF50);
    swift_deallocClassInstance();
  }

  v6 = *(v0 + 2016);
  v7 = *(v0 + 2008);
  sub_19A419EFC(v7, v1);

  sub_19A41A04C(v7);
  if (v6)
  {

    sub_19A3DF010("scrubText", 9, 2);

    v8 = *(v0 + 1896);
    v9 = *(v0 + 1880);
    v10 = *(v0 + 1872);
    sub_19A3DF010("validateText", 12, 2);

    (*(v9 + 8))(v8, v10);

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 2008);
  if (*(v0 + 2377))
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      sub_19A2F4450();
      v15 = (v13 + 56);
      while (1)
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v18 = *(v0 + 920);
        v19 = *(v0 + 928);
        *(v0 + 1096) = v18;
        *(v0 + 1104) = v19;
        swift_bridgeObjectRetain_n();

        v20 = sub_19A572E5C();
        *(v0 + 1080) = v18;
        *(v0 + 1088) = v19;
        result = sub_19A572E5C();
        if (result >> 14 < v20 >> 14)
        {
          break;
        }

        *(v0 + 1064) = v16;
        *(v0 + 1072) = v17;
        sub_19A3E3D30();
        sub_19A572E1C();

        v15 += 4;
        if (!--v14)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }
  }

  else
  {
    v21 = *(v0 + 1248);
    *(v0 + 1048) = *(v0 + 1240);
    *(v0 + 1056) = v21;
    sub_19A2F4450();
    v22 = sub_19A572E6C();
    v61 = sub_19A3C4CA0(v13, v22, (v0 + 920));
    v23 = *(v61 + 16);
    if (v23)
    {
      v24 = (v61 + 56);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v27 = *(v0 + 920);
        v28 = *(v0 + 928);
        *(v0 + 1032) = v27;
        *(v0 + 1040) = v28;
        swift_bridgeObjectRetain_n();

        v29 = sub_19A572E5C();
        *(v0 + 1016) = v27;
        *(v0 + 1024) = v28;
        result = sub_19A572E5C();
        if (result >> 14 < v29 >> 14)
        {
          goto LABEL_22;
        }

        *(v0 + 1000) = v25;
        *(v0 + 1008) = v26;
        sub_19A3E3D30();
        sub_19A572E1C();

        v24 += 4;
      }

      while (--v23);
    }
  }

LABEL_18:
  sub_19A3DF010("scrubText", 9, 2);

  v30 = *(v0 + 2008);
  *(v0 + 2379) = *(v0 + 1320) != 0;
  *(v0 + 2032) = v30;
  *(v0 + 2024) = 0;
  v31 = *(v0 + 1952);
  v32 = *(v0 + 1912);
  v33 = *(v0 + 1904);
  v34 = swift_allocObject();
  *(v0 + 2040) = v34;
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  v35 = v34 + 16;
  v63 = v33;
  v36 = *(v33 - 8);
  *(v0 + 2048) = v36[8];
  v37 = swift_task_alloc();
  v38 = v36[2];
  *(v0 + 2056) = v38;
  *(v0 + 2064) = (v36 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v62 = v37;
  v38(v37, v32, v33);
  v39 = swift_slowAlloc();
  *v39 = 0;
  v60 = sub_19A57234C();
  LOBYTE(v33) = sub_19A57361C();
  v40 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v60, v33, v40, "buildNounEmojiConcepts", "", v39, 2u);
  v41 = [*(v31 + 40) string];
  v42 = sub_19A572CFC();
  v44 = v43;

  v45 = swift_task_alloc();
  *(v45 + 16) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10B0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_19A576E10;
  v47 = *MEMORY[0x1E69779C8];
  *(v46 + 32) = *MEMORY[0x1E69779C8];
  v48 = objc_allocWithZone(MEMORY[0x1E6977A80]);
  type metadata accessor for NLTagScheme(0);
  v49 = v47;
  v50 = sub_19A57307C();

  v51 = [v48 initWithTagSchemes_];

  v52 = sub_19A572CCC();
  [v51 setString_];

  v53 = swift_task_alloc();
  v53[2] = v42;
  v53[3] = v44;
  v53[4] = sub_19A3E3884;
  v53[5] = v45;
  sub_19A57371C();

  LOBYTE(v52) = sub_19A57360C();
  v54 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v60, v52, v54, "buildNounEmojiConcepts", "", v39, 2u);

  MEMORY[0x19A902C50](v39, -1, -1);
  v55 = v36[1];
  *(v0 + 2072) = v55;
  *(v0 + 2080) = (v36 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v55(v62, v63);

  v56 = *(v0 + 920);
  *(v0 + 2088) = v56;
  v57 = *(v0 + 928);
  *(v0 + 2096) = v57;
  v58 = swift_task_alloc();
  *(v0 + 2104) = v58;
  *v58 = v0;
  v58[1] = sub_19A3C8088;
  v59 = *(v0 + 1344);

  return sub_19A3C55B0(v56, v57, v59);
}

uint64_t sub_19A3C8088(uint64_t a1)
{
  *(*v1 + 2112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A3C8188, 0, 0);
}

void sub_19A3C8188()
{
  v504 = v0;
  v3 = v0[169];
  if ((v3 & 8) == 0)
  {
    goto LABEL_25;
  }

  if ((v3 & 1) == 0 || (v4 = v0[264], (v5 = *(v4 + 16)) == 0))
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v6 = 0;
  v7 = -v5;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = *(v4 + 16);
    if (v6 > v9)
    {
      v9 = v6;
    }

    v10 = v4 + 48 + 24 * v6++;
    v11 = -v9;
    while (1)
    {
      if (v11 + v6 == 1)
      {
LABEL_243:
        __break(1u);
LABEL_244:
        v480 = v10;
        v351 = *(v1 + 1832);
        v352 = *(v1 + 1480);
        v353 = *(v1 + 1472);
        v354 = *(v1 + 1280);

        sub_19A33546C(v354, v351, &qword_1EAF9FD80);
        LOBYTE(v96) = 1;
        if ((*(v352 + 48))(v351, 1, v353) == 1)
        {
          sub_19A2F3FA0(*(v1 + 1832), &qword_1EAF9FD80);
          v355 = v1;
          v356 = &off_1E7517000;
        }

        else
        {
LABEL_256:
          v370 = *(v1 + 1952);
          v371 = *(v1 + 1488);
          (*(*(v1 + 1480) + 32))(v371, *(v1 + 1832), *(v1 + 1472));
          *(v1 + 2376) = v96;
          v372 = *(v370 + 40);

          v373 = v372;
          v374 = [v373 length];
          v375 = swift_task_alloc();
          *(v375 + 16) = v371;
          *(v375 + 24) = v474;
          v376 = swift_allocObject();
          *(v376 + 16) = sub_19A3E3CCC;
          *(v376 + 24) = v375;
          *(v1 + 288) = sub_19A3E4068;
          *(v1 + 296) = v376;
          *(v1 + 256) = MEMORY[0x1E69E9820];
          *(v1 + 264) = v2;
          *(v1 + 272) = sub_19A3C4EB0;
          *(v1 + 280) = &block_descriptor_52;
          v377 = _Block_copy((v1 + 256));

          [v373 enumerateAttribute:v472 inRange:0 options:v374 usingBlock:{0, v377}];

          _Block_release(v377);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
LABEL_320:
            __break(1u);
            return;
          }

          if (*v474 == 1)
          {
            v1 = v498;
            v379 = *(v498 + 1664);
            v380 = *(v498 + 1576);
            v381 = *(v498 + 1488);
            v382 = *(v498 + 1480);
            v383 = *(v498 + 1472);
            v384 = sub_19A572E7C();
            v385 = v379 + *(v380 + 20);
            (*(v382 + 16))(v385, v381, v383);
            v386 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
            v385[*(v386 + 20)] = 0;
            v385[*(v386 + 24)] = 0;
            (*(*(v386 - 8) + 56))(v385, 0, 1, v386);
            *v379 = 0x6E6F73726570;
            v379[1] = 0xE600000000000000;
            swift_storeEnumTagMultiPayload();
            swift_beginAccess();
            sub_19A340CA4(0x206E6F73726570, 0xE700000000000000, v379, 0, v384);
            if (v480)
            {
              v387 = *(v498 + 1664);
              v388 = *(v498 + 1488);
              v389 = *(v498 + 1480);
              v390 = *(v498 + 1472);
              swift_endAccess();

              sub_19A3E3E40(v387, type metadata accessor for Concept);
              (*(v389 + 8))(v388, v390);

              goto LABEL_33;
            }

            v405 = *(v498 + 1664);
            swift_endAccess();
            sub_19A3E3E40(v405, type metadata accessor for Concept);
            v480 = 0;
            v355 = v498;
          }

          else
          {
LABEL_262:
            v355 = v498;
          }

          v356 = &off_1E7517000;
          (*(v355[185] + 8))(v355[186], v355[184]);
        }

        v406 = *(v355[244] + 40);
        v407 = MEMORY[0x1E69E7CD0];
        v355[151] = MEMORY[0x1E69E7CD0];
        v355[153] = v407;

        v408 = v406;
        v409 = [v408 v356[477]];
        v410 = swift_task_alloc();
        *(v410 + 16) = v355 + 153;
        *(v410 + 24) = v355 + 151;
        v411 = swift_allocObject();
        *(v411 + 16) = sub_19A3E398C;
        *(v411 + 24) = v410;
        v355[18] = sub_19A3E4068;
        v355[19] = v411;
        v355[14] = MEMORY[0x1E69E9820];
        v355[15] = v2;
        v355[16] = sub_19A3C4EB0;
        v355[17] = &block_descriptor_30;
        v412 = _Block_copy(v355 + 14);

        [v408 enumerateAttribute:v472 inRange:0 options:v409 usingBlock:{0, v412}];
        _Block_release(v412);
        LOBYTE(v412) = swift_isEscapingClosureAtFileLocation();

        if ((v412 & 1) == 0)
        {
          v413 = v355[244];
          v414 = v355[176];
          v415 = v355[175];

          v500 = v355[151];
          v494 = v355[153];

          v486 = v413[2];
          v416 = v413[4];
          v417 = v413[5];
          v497 = v413[3];
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v418 = v417;
          v419 = [v418 string];
          sub_19A572CFC();

          sub_19A570C6C();
          v420 = v414 + *(v415 + 20);
          sub_19A570BFC();
          v421 = [v418 length];
          v422 = swift_task_alloc();
          *(v422 + 16) = v420;
          v423 = swift_allocObject();
          *(v423 + 16) = sub_19A3E3994;
          *(v423 + 24) = v422;
          v355[12] = sub_19A3E4068;
          v355[13] = v423;
          v355[8] = MEMORY[0x1E69E9820];
          v355[9] = v2;
          v355[10] = sub_19A3C4EB0;
          v355[11] = &block_descriptor_37;
          v424 = _Block_copy(v355 + 8);

          [v418 enumerateAttribute:v472 inRange:0 options:v421 usingBlock:{0, v424}];
          _Block_release(v424);
          LOBYTE(v424) = swift_isEscapingClosureAtFileLocation();

          if ((v424 & 1) == 0)
          {

            v425 = *MEMORY[0x1E696A518];
            v426 = [v418 length];
            v427 = swift_task_alloc();
            *(v427 + 16) = v420;
            v428 = swift_allocObject();
            *(v428 + 16) = sub_19A3E399C;
            *(v428 + 24) = v427;
            v355[42] = sub_19A3E4068;
            v355[43] = v428;
            v355[38] = MEMORY[0x1E69E9820];
            v355[39] = v2;
            v355[40] = sub_19A3C4EB0;
            v355[41] = &block_descriptor_44;
            v429 = _Block_copy(v355 + 38);

            [v418 enumerateAttribute:v425 inRange:0 options:v426 usingBlock:{0, v429}];
            _Block_release(v429);
            LOBYTE(v429) = swift_isEscapingClosureAtFileLocation();

            if ((v429 & 1) == 0)
            {
              v430 = v355[176];

              *v430 = v486;
              v430[1] = v497;
              v430[2] = v416;
              v431 = MEMORY[0x1E69E6158];
              v432 = v480;
              if (v476)
              {
                sub_19A570A4C();
                sub_19A3E3F34(&qword_1ED825330, MEMORY[0x1E6968678]);
                v433 = sub_19A572F7C();
                v355[52] = v431;
                v355[49] = v433;
                v355[50] = v434;
                sub_19A334618((v355 + 49), (v355 + 69));
                JSONValue.init(_:)(v355 + 69, &v501);
                if (v480)
                {
                  sub_19A3E3E40(*(v498 + 1408), type metadata accessor for TextPrompt);

                  __swift_destroy_boxed_opaque_existential_0Tm(v498 + 392);

                  goto LABEL_189;
                }

                v436 = v501;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v502 = v476;
                sub_19A33D400(v436, 0x65746E656D677561, 0xEF74706D6F725064, isUniquelyReferenced_nonNull_native);
                v435 = v502;
                __swift_destroy_boxed_opaque_existential_0Tm((v355 + 49));
              }

              else
              {
                v435 = 0;
              }

              v438 = v355[161];
              if (v438 > 1)
              {
                v439 = *(v498 + 2056);
                v440 = *(v498 + 1912);
                v441 = *(v498 + 1904);
                v483 = v441;
                v487 = *(v498 + 2072);
                v442 = swift_task_alloc();
                v439(v442, v440, v441);

                v443 = swift_slowAlloc();
                *v443 = 0;
                v444 = sub_19A57234C();
                v445 = sub_19A57361C();
                v446 = sub_19A5722FC();
                _os_signpost_emit_with_name_impl(&dword_19A2DE000, v444, v445, v446, "reportConcepts", "", v443, 2u);

                sub_19A3C3960(v447, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
                v438();

                v448 = sub_19A57360C();
                v449 = sub_19A5722FC();
                _os_signpost_emit_with_name_impl(&dword_19A2DE000, v444, v448, v449, "reportConcepts", "", v443, 2u);

                v432 = v480;

                MEMORY[0x19A902C50](v443, -1, -1);
                sub_19A2E0A60(v438);
                v487(v442, v483);
              }

              else
              {
              }

              if (v435)
              {
                v450 = sub_19A3C3960(v500, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
                v29 = v498;
                *(v498 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
                *(v498 + 520) = v450;
                sub_19A334618(v498 + 520, v498 + 488);
                JSONValue.init(_:)((v498 + 488), &v501);
                if (v432)
                {
                  sub_19A3E3E40(*(v498 + 1408), type metadata accessor for TextPrompt);

                  __swift_destroy_boxed_opaque_existential_0Tm(v498 + 520);

                  goto LABEL_194;
                }

                v451 = v501;
                v452 = swift_isUniquelyReferenced_nonNull_native();
                v502 = v435;
                sub_19A33D400(v451, 0xD000000000000012, 0x800000019A595740, v452);
                v435 = v502;
                __swift_destroy_boxed_opaque_existential_0Tm(v498 + 520);
                v432 = 0;
              }

              else
              {
              }

              if (*(v494 + 16))
              {
                v453 = sub_19A3C3960(v494, sub_19A31EFA0, MEMORY[0x1E69695A8], sub_19A32ED90);
                sub_19A3E39A4(v453);
                if (v432)
                {
                  v29 = v498;
                  sub_19A3E3E40(*(v498 + 1408), type metadata accessor for TextPrompt);

                  goto LABEL_235;
                }
              }

              if (v435)
              {
                v460 = *(v498 + 1320);
                if (v460)
                {
                  LOBYTE(v502) = v473;
                  v503 = v435;
                  v460(&v502);
                }
              }

              v461 = *(v498 + 1952);
              v462 = *(v498 + 1896);
              v463 = *(v498 + 1880);
              v469 = *(v498 + 1872);
              v464 = *(v498 + 1408);
              sub_19A3E3C64(v464, *(v498 + 1232), type metadata accessor for TextPrompt);
              v465 = [*(v461 + 40) string];
              v466 = sub_19A572CFC();
              v477 = v467;
              v478 = v466;

              sub_19A3E3E40(v464, type metadata accessor for TextPrompt);

              sub_19A3DF010("validateText", 12, 2);

              (*(v463 + 8))(v462, v469);

              v468 = *(v498 + 8);

              v468(v478, v477);
              return;
            }

            goto LABEL_319;
          }

LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
          goto LABEL_320;
        }

LABEL_317:
        __break(1u);
        goto LABEL_318;
      }

      type metadata accessor for EntityExtractor.NamedEntity();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        if (*(v12[5] + 16))
        {
          break;
        }
      }

      v10 += 24;
      ++v6;
      v0 = v498;
      if (v7 + v6 == 1)
      {
        goto LABEL_19;
      }
    }

    v14 = v12[2];
    v13 = v12[3];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_19A31CE20(0, *(v8 + 2) + 1, 1, v8);
    }

    v1 = *(v8 + 2);
    v15 = *(v8 + 3);
    if (v1 >= v15 >> 1)
    {
      v8 = sub_19A31CE20((v15 > 1), v1 + 1, 1, v8);
    }

    *(v8 + 2) = v1 + 1;
    v16 = &v8[16 * v1];
    *(v16 + 4) = v14;
    *(v16 + 5) = v13;
    v0 = v498;
  }

  while (v7 + v6);
LABEL_19:
  v17 = v0[262];
  v18 = v0[261];
  v19 = v0;
  v20 = sub_19A421AC4(v8);

  v21 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

LABEL_25:
    v30 = v0[253];
    goto LABEL_26;
  }

  v22 = v0[262];
  v23 = v0[261];
  v24 = v0[253];
  v25 = v0[168];
  v26 = *(v0[171] + 24);
  v27 = *(v26 + 16);
  v28 = swift_task_alloc();
  v28[2] = v26;
  v28[3] = v25;
  v28[4] = v23;
  v28[5] = v22;
  v28[6] = v20;
  os_unfair_lock_lock((v27 + 24));
  sub_19A332280((v27 + 16), &v502);
  if (v24)
  {
    os_unfair_lock_unlock((v27 + 24));

    v29 = v19;
    goto LABEL_236;
  }

  os_unfair_lock_unlock((v27 + 24));

  v232 = v502;

  if ((v232 & 1) == 0)
  {
    v29 = v498;

    sub_19A3E3CDC();
    swift_allocError();
    *v259 = 0;
    swift_willThrow();
    goto LABEL_194;
  }

  v30 = 0;
  v0 = v498;
LABEL_26:
  v31 = v0[264];
  v32 = *(v31 + 16);
  if (v32)
  {
    v502 = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v33 = v31 + 48;
    do
    {
      v33 += 24;

      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      --v32;
    }

    while (v32);
    v34 = v502;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v1 = v498;
  *(v498 + 2120) = sub_19A3E3138(v34);
  if (v30)
  {

LABEL_33:

    v29 = v1;
    goto LABEL_236;
  }

  v474 = (v498 + 2376);

  v35 = sub_19A57234C();
  v36 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v35, v36, v38, "buildEntityConcepts", "", v37, 2u);
    MEMORY[0x19A902C50](v37, -1, -1);
  }

  v39 = *(v498 + 1920);

  swift_task_alloc();
  v39();
  swift_allocObject();
  *(v498 + 2128) = sub_19A5723AC();

  v40 = *(v31 + 16);
  *(v498 + 2136) = v40;
  swift_beginAccess();
  v41 = v498;
  if (!v40)
  {
    v475 = 0;
    goto LABEL_182;
  }

  v475 = 0;
  v10 = 0;
  v472 = v498 + 632;
  v476 = v498 + 1752;
  v473 = 1;
  while (2)
  {
    *(v41 + 2144) = v475;
    while (2)
    {
      *(v41 + 2152) = v10;
      v45 = *(v41 + 2112);
      if (v10 >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_243;
      }

      v46 = *(v41 + 1952);
      v484 = v10;
      v47 = (v45 + 24 * v10);
      v48 = v47[4];
      *(v41 + 2160) = v48;
      v49 = v47[5];
      *(v41 + 2168) = v49;
      v50 = v47[6];
      *(v41 + 2176) = v50;
      v51 = *(v46 + 40);

      v52 = [v51 string];
      sub_19A572CFC();
      v53 = *(v46 + 40);
      v54 = v48;
      v55 = [v53 string];
      sub_19A572CFC();

      v495 = v49;
      sub_19A57348C();
      LOBYTE(v49) = v56;

      if (v49)
      {
        goto LABEL_306;
      }

      v57 = sub_19A572F9C();
      v66 = v58;
      v60 = v59;
      v62 = v61;

      v63 = MEMORY[0x19A900970](v57, v66, v60, v62);
      v65 = v64;

      *(v41 + 2184) = v63;
      *(v41 + 2192) = v65;
      LODWORD(v66) = *(v50 + 32);
      *(v41 + 2380) = v66;
      type metadata accessor for EntityExtractor.NamedEntity();
      v67 = swift_dynamicCastClass();
      v488 = v50;
      if (v67)
      {
        v68 = v67;

        v1 = v495;
      }

      else
      {
        v1 = v495;
        if (v66 == 2)
        {
          v69 = v54;
          v482 = v65;
          v70 = *(v488 + 16);
          v71 = *(v488 + 24);
          v68 = swift_allocObject();
          *(v68 + 40) = MEMORY[0x1E69E7CC0];
          *(v68 + 16) = v70;
          *(v68 + 24) = v71;
          v54 = v69;
          *(v68 + 32) = 2;
          v65 = v482;
        }

        else
        {
          v68 = 0;
        }
      }

      *(v41 + 2200) = v68;
      v72 = *(v41 + 2032);
      v73 = *(v72 + 16);
      if (v73)
      {
        v74 = v54 + v1;
        if (__OFADD__(v54, v1))
        {
          goto LABEL_247;
        }

        if (v74 < v54)
        {
          goto LABEL_248;
        }

        v75 = (v72 + 40);
        while (1)
        {
          v77 = *(v75 - 1);
          v76 = *v75;
          v78 = v77 < v74 && v54 < v76;
          v79 = !v78 || v77 == v76;
          if (!v79 && v54 != v74)
          {
            break;
          }

          v75 += 4;
          if (!--v73)
          {
            goto LABEL_65;
          }
        }

        v89 = v54;

LABEL_69:
        v90 = *(v41 + 2040);
        v91 = *(v498 + 1952);
        v92 = *(v498 + 1672);
        *v92 = v63;
        *(v92 + 8) = v65;
        *(v92 + 16) = v66;
        swift_storeEnumTagMultiPayload();
        v93 = *(v91 + 40);
        v41 = v498;

        v94 = v93;
        sub_19A340970(v92, v89, v1);

        v95 = swift_task_alloc();
        v499 = v89;
        *(v95 + 16) = v89;
        *(v95 + 24) = v1;
        swift_beginAccess();
        v96 = *(v90 + 16);
        v63 = v96 + 2;
        v97 = v96[2];
        if (v97)
        {
          v480 = v95;
          v42 = 0;
          v98 = 1;
          while (1)
          {
            v99 = *(v498 + 1424);
            v100 = (*(v99 + 80) + 32) & ~*(v99 + 80);
            v101 = *(v99 + 72);
            v514.location = v89;
            v514.length = v1;
            if (NSIntersectionRange(*(v96 + v100 + v101 * v42 + *(*(v498 + 1416) + 48)), v514).length > 0)
            {
              break;
            }

            ++v42;
            ++v98;
            if (v97 == v42)
            {
              v42 = *v63;
              v1 = *v63;
              goto LABEL_40;
            }
          }

          v1 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            __break(1u);
            goto LABEL_262;
          }

          v102 = *v63;
          if (v1 != *v63)
          {
            v66 = v100 + v101 * v98;
            do
            {
              if (v1 >= v102)
              {
                __break(1u);
                goto LABEL_206;
              }

              v515.location = v89;
              v515.length = v495;
              if (NSIntersectionRange(*(v96 + v66 + *(*(v41 + 1416) + 48)), v515).length <= 0)
              {
                if (v1 != v42)
                {
                  if ((v42 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_249;
                  }

                  v41 = *v63;
                  if (v42 >= *v63)
                  {
                    goto LABEL_250;
                  }

                  v482 = v42 * v101;
                  v63 = &qword_1EAF9FFE0;
                  sub_19A33546C(v96 + v100 + v42 * v101, *(v498 + 1448), &qword_1EAF9FFE0);
                  if (v1 >= v41)
                  {
                    goto LABEL_251;
                  }

                  sub_19A33546C(v96 + v66, *(v498 + 1440), &qword_1EAF9FFE0);
                  v41 = v498;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v96 = sub_19A32E604(v96);
                  }

                  sub_19A3E3898(*(v498 + 1440), v96 + v100 + v482);
                  if (v1 >= v96[2])
                  {
                    goto LABEL_252;
                  }

                  v103 = *(v498 + 2040);
                  sub_19A3E3898(*(v498 + 1448), v96 + v66);
                  *(v103 + 16) = v96;
                }

                ++v42;
              }

              ++v1;
              v63 = v96 + 2;
              v102 = v96[2];
              v66 += v101;
            }

            while (v1 != v102);
          }

          if (v1 < v42)
          {
            __break(1u);
            goto LABEL_256;
          }
        }

        else
        {
          v42 = 0;
          v1 = 0;
        }

LABEL_40:
        sub_19A46B010(v42, v1);
        swift_endAccess();

        v43 = (v498 + 1672);
LABEL_41:
        v10 = v484 + 1;
        v44 = *(v41 + 2136);
        sub_19A3E3E40(*v43, type metadata accessor for Concept);
        if (v484 + 1 == v44)
        {
          goto LABEL_182;
        }

        continue;
      }

      break;
    }

LABEL_65:
    if (!v68)
    {
      v89 = v54;
      goto LABEL_69;
    }

    if ((*(v41 + 1352) & 1) == 0)
    {
      v81 = v54;
      v82 = *(v41 + 1952);
      v83 = *(v41 + 1752);
      v84 = *(*(v41 + 1576) + 20);
      v85 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      v86 = v83 + v84;
      v41 = v498;
      (*(*(v85 - 8) + 56))(v86, 1, 1, v85);
      *v83 = v63;
      v83[1] = v65;
      swift_storeEnumTagMultiPayload();
      v87 = *(v82 + 40);

      v88 = v87;
      sub_19A340970(v83, v81, v1);

      v43 = (v498 + 1752);
      goto LABEL_41;
    }

    v499 = v54;
    v104 = *(v68 + 40);
    v482 = v65;
    if (*(v104 + 16) != 1)
    {

LABEL_96:
      v109 = *(v498 + 1840);
      v110 = *(v498 + 1480);
      v111 = *(v498 + 1472);
      sub_19A33546C(*(v498 + 1280), v109, &qword_1EAF9FD80);
      v112 = v109;
      v41 = v498;
      if ((*(v110 + 48))(v112, 1, v111) == 1)
      {
        sub_19A2F3FA0(*(v498 + 1840), &qword_1EAF9FD80);
        goto LABEL_100;
      }

      (*(*(v498 + 1480) + 32))(*(v498 + 1496), *(v498 + 1840), *(v498 + 1472));
      if (*(*(v68 + 40) + 16))
      {
        (*(*(v498 + 1480) + 8))(*(v498 + 1496), *(v498 + 1472));
LABEL_100:
        if (*(*(v68 + 40) + 16))
        {
          goto LABEL_253;
        }

        v113 = *(v498 + 2040);
        v114 = *(v498 + 1696);
        v115 = *(v498 + 1656);
        v116 = *(v498 + 1576);

        v117 = *(v116 + 20);
        v118 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        *(v498 + 2304) = v118;
        v119 = *(v118 - 8);
        *(v498 + 2312) = v119;
        (*(v119 + 56))(v114 + v117, 1, 1, v118);
        *v114 = v63;
        v114[1] = v482;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
        v120 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v121 = swift_allocObject();
        *(v498 + 2320) = v121;
        *(v121 + 16) = xmmword_19A576E10;
        sub_19A3E3C64(v114, v121 + v120, type metadata accessor for Concept);
        *(v498 + 1136) = v121;

        v1 = v495;
        v122 = sub_19A3DEBC0(v499, v495, v113);
        sub_19A47086C(v122);
        v123 = *(v498 + 1136);
        *(v498 + 2328) = v123;
        v124 = *(v123 + 16);
        if (v124 == 1)
        {
          if ((*(v498 + 1352) & 4) == 0 || (sub_19A3C4F5C(v123) & 1) == 0)
          {
            if (*(v121 + 16))
            {
              v1 = v498;
              v152 = *(v498 + 1752);
              v153 = *(*(v498 + 1952) + 40);
              sub_19A3E3C64(v121 + v120, v152, type metadata accessor for Concept);

              v154 = v153;

              sub_19A340970(v152, v499, v495);

              sub_19A3E3E40(v152, type metadata accessor for Concept);
LABEL_154:

              goto LABEL_155;
            }

LABEL_305:
            __break(1u);
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
            goto LABEL_311;
          }
        }

        else if (!v124)
        {

LABEL_155:

          v214 = *(v498 + 1696);

          v215 = v214;
          v41 = v498;
          sub_19A3E3E40(v215, type metadata accessor for Concept);
          v475 = *(v498 + 2144);
          goto LABEL_156;
        }

        if (*(v498 + 1288) != 1)
        {
          v142 = *(v498 + 1304);
          if (v142)
          {
            v391 = *(*(v498 + 1952) + 40);

            v392 = [v391 string];
            v393 = sub_19A572CFC();
            v395 = v394;

            *(v498 + 2336) = v395;
            *(v498 + 1120) = v123;
            v493 = (v142 + *v142);
            v396 = swift_task_alloc();
            *(v498 + 2344) = v396;
            *v396 = v498;
            v396[1] = sub_19A3D59D4;
            v397 = *(v498 + 1528);
            v398 = (v498 + 1120);
LABEL_264:
            v403 = v393;
            v404 = v395;
            goto LABEL_265;
          }
        }

        v143 = *(*(v498 + 1952) + 40);
        v144 = qword_1EAF9F838;

        v145 = v143;
        if (v144 != -1)
        {
          swift_once();
        }

        v146 = *(v498 + 1656);
        v147 = *(v498 + 1648);
        v148 = *(v498 + 1536);
        v149 = qword_1EAFCA248;
        *(v498 + 1112) = v123;
        swift_bridgeObjectRetain_n();
        v1 = sub_19A57402C();
        [v145 addAttribute:v149 value:v1 range:{v499, v495}];
        swift_unknownObjectRelease();

        (*(v146 + 56))(v148, 1, 1, v147);
        v150 = (*(v146 + 48))(*(v498 + 1536), 1, *(v498 + 1648));
        v151 = v498;
        if (v150 == 1)
        {

LABEL_153:
          sub_19A2F3FA0(*(v151 + 1536), &qword_1EAFA10A8);
          goto LABEL_154;
        }

        v171 = *(v498 + 2168);
        v1 = *(v498 + 2160);
        v172 = *(v498 + 2040);
        v173 = swift_task_alloc();
        v173[2] = v1;
        v173[3] = v171;
        v496 = v171;
        swift_beginAccess();
        v41 = *(v172 + 16);
        v174 = (v41 + 16);
        v175 = *(v41 + 16);
        if (!v175)
        {
          v176 = 0;
LABEL_152:
          v151 = v498;
          sub_19A46B010(v176, v175);
          swift_endAccess();

          goto LABEL_153;
        }

        v176 = 0;
        v177 = 1;
        v178 = v496;
        while (1)
        {
          v179 = *(v498 + 1424);
          v180 = (*(v179 + 80) + 32) & ~*(v179 + 80);
          v181 = *(v179 + 72);
          v516.location = v1;
          v516.length = v496;
          if (NSIntersectionRange(*(v41 + v180 + v181 * v176 + *(*(v498 + 1416) + 48)), v516).length > 0)
          {
            break;
          }

          ++v176;
          ++v177;
          if (v175 == v176)
          {
            v176 = *v174;
            v175 = *v174;
            goto LABEL_152;
          }
        }

        v175 = v176 + 1;
        if (__OFADD__(v176, 1))
        {
          goto LABEL_314;
        }

        v213 = *v174;
        if (v175 != *v174)
        {
          v499 = v1;
          v1 = v180 + v181 * v177;
          do
          {
            if (v175 >= v213)
            {
              goto LABEL_302;
            }

            v517.location = v499;
            v177 = v41 + v1;
            v517.length = v178;
            if (NSIntersectionRange(*(v41 + v1 + *(*(v498 + 1416) + 48)), v517).length <= 0)
            {
              if (v175 != v176)
              {
                if ((v176 & 0x8000000000000000) != 0)
                {
                  goto LABEL_307;
                }

                v231 = *v174;
                if (v176 >= *v174)
                {
                  goto LABEL_308;
                }

                v173 = v498;
                sub_19A33546C(v41 + v180 + v176 * v181, *(v498 + 1464), &qword_1EAF9FFE0);
                if (v175 >= v231)
                {
                  goto LABEL_309;
                }

                sub_19A33546C(v41 + v1, *(v498 + 1456), &qword_1EAF9FFE0);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v41 = sub_19A32E604(v41);
                }

                v177 = v498;
                sub_19A3E3898(*(v498 + 1456), v41 + v180 + v176 * v181);
                if (v175 >= *(v41 + 16))
                {
                  goto LABEL_310;
                }

                v230 = *(v498 + 2040);
                sub_19A3E3898(*(v498 + 1464), v41 + v1);
                *(v230 + 16) = v41;
                v178 = v496;
              }

              ++v176;
            }

            ++v175;
            v174 = (v41 + 16);
            v213 = *(v41 + 16);
            v1 += v181;
          }

          while (v175 != v213);
        }

        if (v175 >= v176)
        {
          goto LABEL_152;
        }

LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      v155 = *(v498 + 2120);
      v156 = *(v498 + 1720);
      v157 = *(v498 + 1656);
      v490 = *(v498 + 2040);
      v158 = *(v498 + 1576);
      v159 = *(v498 + 1496);
      v160 = *(v498 + 1480);
      v161 = *(v498 + 1472);

      LOBYTE(v155) = sub_19A41F408(v159, v155);
      v162 = v156 + *(v158 + 20);
      (*(v160 + 16))(v162, v159, v161);
      v163 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      *(v498 + 2256) = v163;
      v162[*(v163 + 20)] = 0;
      v162[*(v163 + 24)] = (v155 & 1) == 0;
      v164 = *(v163 - 8);
      *(v498 + 2264) = v164;
      (*(v164 + 56))(v162, 0, 1, v163);
      *v156 = v63;
      v156[1] = v482;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
      v165 = (*(v157 + 80) + 32) & ~*(v157 + 80);
      v166 = swift_allocObject();
      *(v498 + 2272) = v166;
      *(v166 + 16) = xmmword_19A576E10;
      v167 = v156;
      v1 = v495;
      sub_19A3E3C64(v167, v166 + v165, type metadata accessor for Concept);
      *(v498 + 1128) = v166;

      v168 = sub_19A3DEBC0(v499, v495, v490);
      sub_19A47086C(v168);
      v169 = *(v498 + 1128);
      *(v498 + 2280) = v169;
      v170 = *(v169 + 16);
      if (v170 == 1)
      {
        if ((*(v498 + 1352) & 4) == 0 || (sub_19A3C4F5C(v169) & 1) == 0)
        {

          if (!*(v166 + 16))
          {
LABEL_315:
            __break(1u);
            goto LABEL_316;
          }

          v1 = v498;
          v216 = *(v498 + 1752);
          v217 = *(*(v498 + 1952) + 40);
          sub_19A3E3C64(v166 + v165, v216, type metadata accessor for Concept);

          v218 = v217;

          sub_19A340970(v216, v499, v495);

          sub_19A3E3E40(v216, type metadata accessor for Concept);
          goto LABEL_164;
        }
      }

      else if (!v170)
      {

        v1 = v498;
        goto LABEL_164;
      }

      v204 = v498;
      if (*(v498 + 1288) != 1)
      {
        v205 = *(v498 + 1304);
        if (v205)
        {
LABEL_291:
          v454 = *(v204[244] + 40);

          v455 = [v454 string];
          v456 = sub_19A572CFC();
          v458 = v457;

          v204[286] = v458;
          v204[144] = v169;
          v493 = (v205 + *v205);
          v459 = swift_task_alloc();
          v204[287] = v459;
          *v459 = v204;
          v459[1] = sub_19A3D11E0;
          v397 = v204[193];
          v398 = v204 + 144;
          v403 = v456;
          v404 = v458;
LABEL_265:

          (v493)(v397, v403, v404, v499, v1, v398);
          return;
        }
      }

      v206 = *(*(v498 + 1952) + 40);
      v207 = qword_1EAF9F838;

      v208 = v206;
      if (v207 != -1)
      {
        swift_once();
      }

      v209 = *(v498 + 1656);
      v210 = *(v498 + 1648);
      v211 = *(v498 + 1552);
      v212 = qword_1EAFCA248;
      *(v498 + 1144) = v169;
      swift_bridgeObjectRetain_n();
      [v208 addAttribute:v212 value:sub_19A57402C() range:{v499, v495}];
      swift_unknownObjectRelease();

      (*(v209 + 56))(v211, 1, 1, v210);
      if ((*(v209 + 48))(*(v498 + 1552), 1, *(v498 + 1648)) == 1)
      {

        v475 = *(v498 + 2144);
      }

      else
      {
        v219 = *(v498 + 2168);
        v220 = *(v498 + 2160);
        v221 = *(v498 + 2144);
        v222 = *(v498 + 2040);
        v223 = swift_task_alloc();
        *(v223 + 16) = v220;
        *(v223 + 24) = v219;
        swift_beginAccess();
        v224 = sub_19A3E3548((v222 + 16), sub_19A3E3908, v223);
        if (v221)
        {
LABEL_298:

          swift_endAccess();
          return;
        }

        v225 = *(*(*(v498 + 2040) + 16) + 16);
        if (v225 < v224)
        {
LABEL_316:
          __break(1u);
          goto LABEL_317;
        }

        sub_19A46B010(v224, v225);
        swift_endAccess();

        v475 = 0;
      }

      v1 = v498;
      sub_19A2F3FA0(*(v498 + 1552), &qword_1EAFA10A8);
LABEL_164:

      v226 = *(v1 + 1720);
      v227 = *(v1 + 1496);
      v228 = *(v1 + 1480);
      v229 = *(v1 + 1472);

      sub_19A3E3E40(v226, type metadata accessor for Concept);
      (*(v228 + 8))(v227, v229);
      v41 = v1;
      goto LABEL_156;
    }

    v105 = *(v41 + 1640);
    v106 = *(v41 + 1616);
    v107 = *(*(v41 + 1624) + 80);
    sub_19A3E3C64(v104 + ((v107 + 32) & ~v107), v105, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
    if (*(v105 + *(v106 + 20)))
    {
      v108 = *(v41 + 1640);

      sub_19A3E3E40(v108, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      goto LABEL_96;
    }

    v125 = *(v41 + 2120);
    v126 = *(v41 + 1744);
    v485 = *(v41 + 1656);
    v489 = *(v41 + 2040);
    v127 = *(v41 + 1640);
    v128 = *(v41 + 1632);
    v129 = *(v41 + 1608);
    v130 = *(v41 + 1576);
    v131 = *(v41 + 1480);
    v470 = *(v41 + 1472);
    v471 = *(v41 + 1616);
    sub_19A3E3C64(v127, v128, type metadata accessor for EntityExtractor.NamedEntity.EntityData);

    LOBYTE(v125) = sub_19A41F408(v127, v125);
    *v129 = v63;
    v129[1] = v482;
    v132 = v129 + *(v130 + 20);
    (*(v131 + 16))(v132, v128, v470);
    LOBYTE(v131) = *(v128 + *(v471 + 20));
    sub_19A3E3E40(v128, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
    v133 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
    *(v41 + 2208) = v133;
    v132[*(v133 + 20)] = v131;
    v132[*(v133 + 24)] = (v125 & 1) == 0;
    v134 = *(v133 - 8);
    *(v41 + 2216) = v134;
    (*(v134 + 56))(v132, 0, 1, v133);
    v135 = v129;
    v1 = v495;
    sub_19A3E3C64(v135, v126, type metadata accessor for NamedEntityData);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
    v136 = (*(v485 + 80) + 32) & ~*(v485 + 80);
    v137 = swift_allocObject();
    *(v41 + 2224) = v137;
    *(v137 + 16) = xmmword_19A576E10;
    sub_19A3E3C64(v126, v137 + v136, type metadata accessor for Concept);
    *(v41 + 1168) = v137;

    v138 = sub_19A3DEBC0(v499, v495, v489);
    sub_19A47086C(v138);
    v139 = *(v41 + 1168);
    *(v41 + 2232) = v139;
    v140 = *(v139 + 16);
    if (v140 == 1)
    {
      if (*(v498 + 1352) & 4) != 0 && (sub_19A3C4F5C(v139))
      {
        goto LABEL_127;
      }

      if (*(v137 + 16))
      {
        v141 = v498;
        v191 = *(v498 + 1752);
        v192 = *(*(v498 + 1952) + 40);
        sub_19A3E3C64(v137 + v136, v191, type metadata accessor for Concept);

        v193 = v192;

        sub_19A340970(v191, v499, v495);

        sub_19A3E3E40(v191, type metadata accessor for Concept);
        goto LABEL_139;
      }

      goto LABEL_312;
    }

    if (!v140)
    {

      v141 = v498;
      goto LABEL_139;
    }

LABEL_127:
    if (*(v498 + 1288) != 1)
    {
      v182 = *(v498 + 1304);
      if (v182)
      {
        v399 = *(*(v498 + 1952) + 40);

        v400 = [v399 string];
        v393 = sub_19A572CFC();
        v395 = v401;

        *(v498 + 2240) = v395;
        *(v498 + 1184) = v139;
        v493 = (v182 + *v182);
        v402 = swift_task_alloc();
        *(v498 + 2248) = v402;
        *v402 = v498;
        v402[1] = sub_19A3CC9EC;
        v397 = *(v498 + 1560);
        v398 = (v498 + 1184);
        goto LABEL_264;
      }
    }

    v183 = *(v498 + 1952);

    v184 = *(v183 + 40);
    v185 = qword_1EAF9F838;

    v186 = v184;
    if (v185 != -1)
    {
      swift_once();
    }

    v187 = *(v498 + 1656);
    v188 = *(v498 + 1648);
    v189 = *(v498 + 1568);
    v190 = qword_1EAFCA248;
    *(v498 + 1176) = v139;
    swift_bridgeObjectRetain_n();
    v1 = sub_19A57402C();
    [v186 addAttribute:v190 value:v1 range:{v499, v495}];
    swift_unknownObjectRelease();

    (*(v187 + 56))(v189, 1, 1, v188);
    if ((*(v187 + 48))(*(v498 + 1568), 1, *(v498 + 1648)) == 1)
    {

      v475 = *(v498 + 2144);
      goto LABEL_138;
    }

    v194 = *(v498 + 2168);
    v195 = *(v498 + 2160);
    v196 = *(v498 + 2144);
    v197 = *(v498 + 2040);
    v198 = swift_task_alloc();
    *(v198 + 16) = v195;
    *(v198 + 24) = v194;
    swift_beginAccess();
    v199 = sub_19A3E3548((v197 + 16), sub_19A3E406C, v198);
    if (v196)
    {
      goto LABEL_298;
    }

    v200 = *(*(*(v498 + 2040) + 16) + 16);
    if (v200 < v199)
    {
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
      goto LABEL_315;
    }

    sub_19A46B010(v199, v200);
    swift_endAccess();

    v475 = 0;
LABEL_138:
    v141 = v498;
    sub_19A2F3FA0(*(v498 + 1568), &qword_1EAFA10A8);
LABEL_139:

    v201 = v141[218];
    v202 = v141[205];
    v203 = v141[201];

    sub_19A3E3E40(v201, type metadata accessor for Concept);
    sub_19A3E3E40(v203, type metadata accessor for NamedEntityData);
    sub_19A3E3E40(v202, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
    v41 = v141;
LABEL_156:
    v10 = *(v41 + 2152) + 1;
    if (v10 != *(v41 + 2136))
    {
      continue;
    }

    break;
  }

LABEL_182:
  v233 = *(v41 + 1952);

  sub_19A3DF010("buildEntityConcepts", 19, 2);

  *(v41 + 1192) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v205 = *(v233 + 32);
  v234 = *(v233 + 40);
  v235 = qword_1EAF9F838;

  v236 = v234;
  if (v235 != -1)
  {
    swift_once();
  }

  v237 = *(v41 + 1952);
  v169 = qword_1EAFCA248;
  v1 = [v236 length];
  v204 = swift_task_alloc();
  v204[2] = v41 + 1192;
  v204[3] = v237;
  v238 = swift_allocObject();
  *(v238 + 16) = sub_19A3E393C;
  *(v238 + 24) = v204;
  *(v41 + 240) = sub_19A3E3944;
  *(v41 + 248) = v238;
  *(v41 + 208) = MEMORY[0x1E69E9820];
  v2 = 1107296256;
  *(v41 + 216) = 1107296256;
  *(v41 + 224) = sub_19A3C4EB0;
  *(v41 + 232) = &block_descriptor_3;
  v239 = _Block_copy((v41 + 208));

  [v236 enumerateAttribute:v169 inRange:0 options:v1 usingBlock:{0, v239}];

  _Block_release(v239);
  LOBYTE(v239) = swift_isEscapingClosureAtFileLocation();

  if (v239)
  {
    __break(1u);
    goto LABEL_291;
  }

  if (*(*(v41 + 1192) + 16))
  {

    v240 = sub_19A5723DC();
    v241 = sub_19A57355C();
    if (os_log_type_enabled(v240, v241))
    {
      v242 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v502 = v243;
      *v242 = 136380675;
      swift_beginAccess();

      v245 = sub_19A3E501C(v244);
      v247 = v246;

      v248 = sub_19A31F114(v245, v247, &v502);

      *(v242 + 4) = v248;
      _os_log_impl(&dword_19A2DE000, v240, v241, "Unresolved ambiguities: %{private}s", v242, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v243);
      MEMORY[0x19A902C50](v243, -1, -1);
      MEMORY[0x19A902C50](v242, -1, -1);
    }

    swift_beginAccess();
    v249 = *(v498 + 1192);
    sub_19A3B8774();
    swift_allocError();
    *v250 = v249;
    *(v250 + 8) = 0;
    swift_willThrow();

LABEL_189:

    v29 = v498;
LABEL_194:

LABEL_235:

LABEL_236:
    v335 = v29[237];
    v336 = v29[235];
    v337 = v29[234];
    sub_19A3DF010("validateText", 12, 2);

    (*(v336 + 8))(v335, v337);

    v338 = v29[1];

    v338();
  }

  else
  {
    v251 = MEMORY[0x1E69E6158];
    v41 = v498;
    if (*(v498 + 2379) == 1)
    {
      v252 = *(v498 + 1952);
      LOBYTE(v501) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
      v253 = swift_allocObject();
      *(v253 + 32) = 0x74706D6F7270;
      *(v253 + 16) = xmmword_19A576E10;
      *(v253 + 40) = 0xE600000000000000;
      v254 = [*(v252 + 40) string];
      v255 = sub_19A572CFC();
      v257 = v256;

      *(v253 + 72) = v251;
      *(v253 + 48) = v255;
      *(v253 + 56) = v257;
      v258 = sub_19A330370(v253);
      swift_setDeallocating();
      sub_19A2F3FA0(v253 + 32, &qword_1EAFA2F00);
      swift_deallocClassInstance();
      sub_19A338028(&v501, v258, &v502);
      if (v475)
      {

        v29 = v498;
        goto LABEL_236;
      }

      v473 = v502;
      v260 = v503;

      v475 = 0;
    }

    else
    {
      v473 = 0;
      v260 = 0;
    }

    v174 = &unk_1EAFCA000;
    v173 = &off_1E7517000;
    v476 = v260;
    if (!(*(v498 + 1320) | *(v498 + 1352) & 2))
    {
      goto LABEL_212;
    }

    v181 = v498 + 16;
    v499 = v498 + 1160;
    v261 = *(v498 + 1952);
    *(v498 + 1160) = MEMORY[0x1E69E7CD0];
    v262 = *(v261 + 40);
    v263 = qword_1EAF9F840;

    v177 = v262;
    if (v263 != -1)
    {
      goto LABEL_303;
    }

    while (1)
    {
      v264 = v174[74];
      v265 = [v177 v173[477]];
      v266 = swift_task_alloc();
      *(v266 + 16) = v499;
      *(v266 + 24) = v261;
      v267 = swift_allocObject();
      *(v267 + 16) = sub_19A3E3CD4;
      *(v267 + 24) = v266;
      *(v41 + 48) = sub_19A3E4068;
      *(v41 + 56) = v267;
      *(v41 + 16) = MEMORY[0x1E69E9820];
      *(v41 + 24) = v2;
      *(v41 + 32) = sub_19A3C4EB0;
      *(v41 + 40) = &block_descriptor_59;
      v268 = _Block_copy(v181);

      [v177 enumerateAttribute:v264 inRange:0 options:v265 usingBlock:{0, v268}];

      _Block_release(v268);
      v269 = swift_isEscapingClosureAtFileLocation();

      if (v269)
      {
        __break(1u);
        goto LABEL_305;
      }

      v96 = v476;
      if (*(*v499 + 16))
      {
        v41 = v498;
        if (v476)
        {

          v271 = sub_19A3C3960(v270, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          *(v498 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
          *(v498 + 424) = v271;
          sub_19A334618(v498 + 424, v498 + 456);
          JSONValue.init(_:)((v498 + 456), &v501);
          if (v475)
          {

            __swift_destroy_boxed_opaque_existential_0Tm(v498 + 424);

            v29 = v498;

            goto LABEL_235;
          }

LABEL_206:
          v272 = v501;
          v273 = swift_isUniquelyReferenced_nonNull_native();
          v502 = v96;
          v274 = v272;
          v41 = v498;
          sub_19A33D400(v274, 0xD000000000000010, 0x800000019A5989F0, v273);
          v96 = v502;
          __swift_destroy_boxed_opaque_existential_0Tm(v498 + 424);
          v475 = 0;
        }

        if ((*(v41 + 1352) & 2) != 0)
        {

          v339 = sub_19A5723DC();
          v340 = sub_19A57355C();
          if (os_log_type_enabled(v339, v340))
          {
            v341 = swift_slowAlloc();
            v342 = swift_slowAlloc();
            v502 = v342;
            *v341 = 136380675;
            swift_beginAccess();

            v344 = sub_19A3E51D0(v343);
            v346 = v345;

            v347 = sub_19A31F114(v344, v346, &v502);

            *(v341 + 4) = v347;
            _os_log_impl(&dword_19A2DE000, v339, v340, "Disallowed concepts: %{private}s", v341, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v342);
            MEMORY[0x19A902C50](v342, -1, -1);
            MEMORY[0x19A902C50](v341, -1, -1);
          }

          swift_beginAccess();

          v349 = sub_19A3C3960(v348, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          sub_19A3B8774();
          swift_allocError();
          *v350 = v349;
          *(v350 + 8) = 3;
          swift_willThrow();

LABEL_234:

          v29 = v498;

          goto LABEL_235;
        }

        v275 = sub_19A5723DC();
        v276 = sub_19A57355C();
        if (os_log_type_enabled(v275, v276))
        {
          v277 = swift_slowAlloc();
          v278 = swift_slowAlloc();
          v502 = v278;
          *v277 = 136380675;
          swift_beginAccess();

          v280 = sub_19A3E51D0(v279);
          v282 = v281;

          v283 = sub_19A31F114(v280, v282, &v502);

          *(v277 + 4) = v283;
          _os_log_impl(&dword_19A2DE000, v275, v276, "Disallowed concepts: %{private}s", v277, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v278);
          MEMORY[0x19A902C50](v278, -1, -1);
          v284 = v277;
          v41 = v498;
          MEMORY[0x19A902C50](v284, -1, -1);
        }
      }

      else
      {

        v41 = v498;
      }

      v173 = &off_1E7517000;
      v174 = &unk_1EAFCA000;
      v476 = v96;
LABEL_212:
      v285 = (v41 + 160);
      v495 = v41 + 1200;
      v286 = *(v41 + 2040);
      swift_beginAccess();
      v287 = *(v286 + 16);
      v288 = *(v287 + 16);
      if (v288)
      {
        v491 = (v41 + 160);
        v289 = *(v41 + 1424);
        v290 = (*(v41 + 1432) + *(*(v41 + 1416) + 48));
        v291 = v287 + ((*(v289 + 80) + 32) & ~*(v289 + 80));
        v499 = *(v289 + 72);

        do
        {
          v292 = *(v41 + 1952);
          v293 = *(v41 + 1752);
          v294 = *(v41 + 1432);
          sub_19A33546C(v291, v294, &qword_1EAF9FFE0);
          v295 = *v290;
          v296 = v290[1];
          sub_19A3E3DD8(v294, v293, type metadata accessor for Concept);
          v297 = *(v292 + 40);

          v298 = v297;
          sub_19A340970(v293, v295, v296);
          v41 = v498;

          sub_19A3E3E40(v293, type metadata accessor for Concept);
          v291 += v499;
          --v288;
        }

        while (v288);

        v173 = &off_1E7517000;
        v174 = &unk_1EAFCA000;
        v285 = v491;
      }

      v299 = *(v41 + 1952);
      *(v41 + 1200) = MEMORY[0x1E69E7CC0];
      v177 = *(v299 + 24);
      v300 = *(v299 + 40);
      v1 = v41;
      v301 = qword_1EAF9F840;

      v302 = v300;
      if (v301 != -1)
      {
        swift_once();
      }

      v303 = v174[74];
      v174 = [v302 v173[477]];
      v181 = swift_task_alloc();
      *(v181 + 16) = v495;
      v173 = swift_allocObject();
      v173[2] = sub_19A3E3984;
      v173[3] = v181;
      *(v1 + 192) = sub_19A3E4068;
      *(v1 + 200) = v173;
      *(v1 + 160) = MEMORY[0x1E69E9820];
      *(v1 + 168) = v2;
      *(v1 + 176) = sub_19A3C4EB0;
      *(v1 + 184) = &block_descriptor_23_0;
      v41 = _Block_copy(v285);

      v472 = v303;
      [v302 enumerateAttribute:v303 inRange:0 options:v174 usingBlock:{0, v41}];

      _Block_release(v41);
      v304 = swift_isEscapingClosureAtFileLocation();

      if ((v304 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      swift_once();
      v261 = *(v41 + 1952);
    }

    v305 = *(v1 + 1952);

    v10 = v475;
    v306 = sub_19A474074(*(v1 + 1200));
    *(v1 + 1200) = v306;

    v63 = [*(v305 + 40) string];
    v499 = sub_19A572CFC();

    v307 = *(v306 + 16);
    v66 = MEMORY[0x1E69E6158];
    if (!v307)
    {
      goto LABEL_244;
    }

    v308 = (v306 + 16 * v307 + 24);
    v482 = v306;
    while (v307 <= *(v306 + 16))
    {
      v63 = *(v308 - 1);
      v309 = *v308;
      v310 = sub_19A57348C();
      if (v312)
      {
        v1 = v498;
      }

      else
      {
        v495 = v63;
        v313 = v66;
        v314 = v311;
        v315 = v310;

        v316 = sub_19A5723DC();
        v317 = sub_19A57353C();

        v492 = v314;
        if (os_log_type_enabled(v316, v317))
        {
          v481 = v10;
          v318 = swift_slowAlloc();
          v479 = swift_slowAlloc();
          v502 = v479;
          *v318 = 136380931;
          v41 = v315;
          v319 = sub_19A572F9C();
          v320 = MEMORY[0x19A900970](v319);
          v322 = v321;

          v323 = sub_19A31F114(v320, v322, &v502);

          *(v318 + 4) = v323;
          *(v318 + 12) = 2080;
          *(v318 + 14) = sub_19A31F114(0x6E6F73726570, 0xE600000000000000, &v502);
          _os_log_impl(&dword_19A2DE000, v316, v317, "Replacing named entity string %{private}s with %s", v318, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x19A902C50](v479, -1, -1);
          v10 = v481;
          v66 = MEMORY[0x1E69E6158];
          MEMORY[0x19A902C50](v318, -1, -1);
        }

        else
        {

          v66 = v313;
          v41 = v315;
        }

        v1 = v498;
        v324 = *(v498 + 1952);
        swift_beginAccess();
        v325 = [*(v324 + 40) mutableString];
        v326 = sub_19A572CCC();
        [v325 replaceCharactersInRange:v495 withString:{v309, v326}];

        *(v498 + 376) = v66;
        *(v498 + 384) = sub_19A2F4450();
        *(v498 + 352) = 0x6E6F73726570;
        *(v498 + 360) = 0xE600000000000000;
        v327 = *(v498 + 1952);
        if ((v41 ^ v492) >> 14)
        {
          v63 = (v327 + 16);
          v328 = sub_19A3859C0(v41, v492, (v498 + 352));
          v306 = v482;
          if (v10)
          {
LABEL_233:
            v331 = v330;
            v332 = v329;
            v333 = v328;
            sub_19A387988();
            swift_allocError();
            *v334 = v333;
            *(v334 + 8) = v332;
            *(v334 + 16) = v331;
            __swift_destroy_boxed_opaque_existential_0Tm(v498 + 352);
            swift_endAccess();

            goto LABEL_234;
          }
        }

        else
        {
          v63 = (v327 + 16);
          v328 = sub_19A384CAC((v498 + 352), v41);
          v306 = v482;
          if (v10)
          {
            goto LABEL_233;
          }
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v498 + 352);
        swift_endAccess();
        v10 = 0;
      }

      v308 -= 2;
      if (!--v307)
      {
        goto LABEL_244;
      }
    }

    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    v357 = *(v41 + 2120);
    v358 = *(v41 + 1352);

    v360 = v41;
    v361 = sub_19A3E2C08(v359, v63, v482, v357);
    v360[294] = v361;
    v360[295] = v475;

    v362 = swift_task_alloc();
    v360[296] = v362;
    *v362 = v360;
    v362[1] = sub_19A3DA250;
    v363 = v360[255];
    v364 = v360[244];
    v365 = *(v498 + 2378);
    v366 = v360[164];
    v367 = v360[163];
    v368 = v360[162];
    v369 = v360[161];
    v512 = v63;
    v513 = v482;
    v511 = v365;
    v510 = v66;
    v508 = v499;
    v509 = v495;
    v506 = v366;
    v507 = v364;

    sub_19A3DF2F8(v361, v499, v495, v363, (v358 & 4) != 0, v369, v368, v367);
  }
}