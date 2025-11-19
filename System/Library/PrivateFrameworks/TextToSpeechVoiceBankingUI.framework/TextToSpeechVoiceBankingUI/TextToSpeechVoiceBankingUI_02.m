void sub_26EE3FED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26EE3FF38()
{
  result = qword_2806C7578;
  if (!qword_2806C7578)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2806C7578);
  }

  return result;
}

unint64_t sub_26EE3FF8C()
{
  result = qword_2806C7580;
  if (!qword_2806C7580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7588, &qword_26EF3E3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7518, &qword_26EF3E340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7528, &unk_26EF3E350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7530, &qword_26EF43ED0);
    sub_26EE3D2D8();
    sub_26EE12538();
    sub_26EE3C520();
    sub_26EE3C584();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7580);
  }

  return result;
}

uint64_t sub_26EE400C0()
{
  v1 = type metadata accessor for DeleteVoiceButton();
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v3 = sub_26EF38DBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v21 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + ((v2 + 32) & ~v2);
  sub_26EE05C9C(*v7, *(v7 + 8));
  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26EF3988C();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
    v10 = *(v7 + v8);
  }

  v11 = *(v7 + v1[6] + 8);

  v12 = v1[7];
  v13 = sub_26EF38AAC();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v7 + v12, 1, v13))
  {
    (*(v14 + 8))(v7 + v12, v13);
  }

  v15 = v1[8];
  if (!(*(v4 + 48))(v7 + v15, 1, v3))
  {
    (*(v4 + 8))(v7 + v15, v3);
  }

  v16 = v2 | v5;
  v17 = (((v2 + 32) & ~v2) + v20 + v5) & ~v5;
  v18 = *(v7 + v1[9] + 8);

  (*(v4 + 8))(v0 + v17, v3);

  return MEMORY[0x2821FE8E8](v0, v17 + v21, v16 | 7);
}

uint64_t sub_26EE4036C()
{
  v2 = *(type metadata accessor for DeleteVoiceButton() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38DBC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE05D7C;

  return sub_26EE3D918(v7, v8, v9, v0 + v3, v0 + v6);
}

size_t sub_26EE40498(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7598, &qword_26EF3E430);
  v10 = *(sub_26EF386AC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26EF386AC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26EE40670(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26EE4073C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26EE40D04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26EE4073C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26EE40848(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_26EF3B73C();
    a6 = v11;
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

uint64_t sub_26EE40848(uint64_t a1, unint64_t a2)
{
  v4 = sub_26EE40894(a1, a2);
  sub_26EE409C4(&unk_287EFD750);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26EE40894(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26EE40AB0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26EF3B73C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26EF3B18C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26EE40AB0(v10, 0);
        result = sub_26EF3B6FC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26EE409C4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26EE40B24(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26EE40AB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E50, &qword_26EF3FC20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26EE40B24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E50, &qword_26EF3FC20);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_26EE40C18()
{
  v1 = *(v0 + 16);
  v2 = sub_26EF3869C();
  v4 = v3;
  v5 = sub_26EF38A6C();
  if (v4)
  {
    if (v2 == v5 && v4 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_26EF3B82C();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_26EE40CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EE40D04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26EE40D74()
{
  v1 = type metadata accessor for DeleteVoiceButton();
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v21 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + ((v2 + 32) & ~v2);
  sub_26EE05C9C(*v7, *(v7 + 8));
  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26EF3988C();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
    v10 = *(v7 + v8);
  }

  v11 = *(v7 + v1[6] + 8);

  v12 = v1[7];
  if (!(*(v4 + 48))(v7 + v12, 1, v3))
  {
    (*(v4 + 8))(v7 + v12, v3);
  }

  v13 = v1[8];
  v14 = sub_26EF38DBC();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v7 + v13, 1, v14))
  {
    (*(v15 + 8))(v7 + v13, v14);
  }

  v16 = v2 | v5;
  v17 = (((v2 + 32) & ~v2) + v20 + v5) & ~v5;
  v18 = *(v7 + v1[9] + 8);

  (*(v4 + 8))(v0 + v17, v3);

  return MEMORY[0x2821FE8E8](v0, v17 + v21, v16 | 7);
}

uint64_t sub_26EE4103C()
{
  v2 = *(type metadata accessor for DeleteVoiceButton() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE15538;

  return sub_26EE3F178(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t VoiceBankingNavigationModel.itemPath.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

uint64_t VoiceBankingNavigationModel.itemPath.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t (*VoiceBankingNavigationModel.itemPath.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE44158;
}

uint64_t sub_26EE41378(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A8, &qword_26EF3E4A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A0, &qword_26EF3E4A0);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t VoiceBankingNavigationModel.$itemPath.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A8, &qword_26EF3E4A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A0, &qword_26EF3E4A0);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.$itemPath.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A8, &qword_26EF3E4A8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__itemPath;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A0, &qword_26EF3E4A0);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE4415C;
}

uint64_t VoiceBankingNavigationModel.columnVisibility.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
}

uint64_t sub_26EE4181C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
}

uint64_t sub_26EE41898(uint64_t a1, uint64_t *a2)
{
  v4 = sub_26EF3A34C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v14(v10, v13, v4);

  sub_26EF3953C();
  return (*(v5 + 8))(v13, v4);
}

uint64_t VoiceBankingNavigationModel.columnVisibility.setter(uint64_t a1)
{
  v2 = sub_26EF3A34C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v7, a1, v2);

  sub_26EF3953C();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.columnVisibility.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE44158;
}

uint64_t sub_26EE41C0C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B8, &qword_26EF3E500);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B0, &qword_26EF3E4F8);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t VoiceBankingNavigationModel.$columnVisibility.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B8, &qword_26EF3E500);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B0, &qword_26EF3E4F8);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.$columnVisibility.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B8, &qword_26EF3E500);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__columnVisibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B0, &qword_26EF3E4F8);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE4415C;
}

uint64_t (*VoiceBankingNavigationModel.presentManagerRootView.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE44158;
}

uint64_t sub_26EE42164(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t VoiceBankingNavigationModel.$presentManagerRootView.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.$presentManagerRootView.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentManagerRootView;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE4415C;
}

uint64_t sub_26EE425A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

uint64_t sub_26EE42624@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a2 = v5;
  return result;
}

uint64_t sub_26EE426B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t sub_26EE42738()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t (*VoiceBankingNavigationModel.presentVoiceRootView.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE42848;
}

uint64_t sub_26EE42884(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t VoiceBankingNavigationModel.$presentVoiceRootView.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.$presentVoiceRootView.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentVoiceRootView;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE42CB0;
}

uint64_t VoiceBankingNavigationModel.initialViewType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
}

uint64_t sub_26EE42D2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_26EE42DB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t VoiceBankingNavigationModel.initialViewType.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t (*VoiceBankingNavigationModel.initialViewType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE44158;
}

void sub_26EE42F5C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_26EE42FE0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_26EF394FC();
  return swift_endAccess();
}

uint64_t sub_26EE43074(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_26EF394FC();
  return swift_endAccess();
}

uint64_t sub_26EE430F0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75D0, &qword_26EF3E5F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t VoiceBankingNavigationModel.$initialViewType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75D0, &qword_26EF3E5F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.$initialViewType.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75D0, &qword_26EF3E5F8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__initialViewType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE4415C;
}

void sub_26EE4351C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_26EF3950C();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_26EF3950C();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t VoiceBankingNavigationModel.__allocating_init(itemPath:columnVisibility:)(uint64_t a1, char *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  VoiceBankingNavigationModel.init(itemPath:columnVisibility:)(a1, a2);
  return v7;
}

uint64_t VoiceBankingNavigationModel.init(itemPath:columnVisibility:)(uint64_t a1, char *a2)
{
  v36 = a2;
  v33 = a1;
  v3 = sub_26EF3A34C();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v32 = &v31 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v31, v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v31 - v19;
  v21 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentManagerRootView;
  LOBYTE(v38) = 0;
  sub_26EF394EC();
  v22 = *(v16 + 32);
  v22(v2 + v21, v20, v15);
  v23 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentVoiceRootView;
  LOBYTE(v38) = 0;
  sub_26EF394EC();
  v22(v2 + v23, v20, v15);
  v24 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__initialViewType;
  v38 = 0;
  v39 = 1;
  sub_26EF394EC();
  (*(v10 + 32))(v2 + v24, v14, v31);
  swift_beginAccess();
  v37 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C60, &qword_26EF3E450);
  sub_26EF394EC();
  swift_endAccess();
  v25 = v34;
  v26 = *(v34 + 16);
  v27 = v32;
  v28 = v36;
  v26(v32, v36, v3);
  swift_beginAccess();
  v26(v35, v27, v3);
  sub_26EF394EC();
  v29 = *(v25 + 8);
  v29(v27, v3);
  swift_endAccess();
  v29(v28, v3);
  return v2;
}

Swift::Void __swiftcall VoiceBankingNavigationModel.dismissSheet()()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26EF3953C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26EF3953C();
}

uint64_t VoiceBankingNavigationModel.deinit()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__itemPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A0, &qword_26EF3E4A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__columnVisibility;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B0, &qword_26EF3E4F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentManagerRootView;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentVoiceRootView, v6);
  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__initialViewType;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t VoiceBankingNavigationModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__itemPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A0, &qword_26EF3E4A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__columnVisibility;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B0, &qword_26EF3E4F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentManagerRootView;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentVoiceRootView, v6);
  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__initialViewType;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v10, v11);
}

uint64_t type metadata accessor for VoiceBankingNavigationModel()
{
  result = qword_2806CB6C0;
  if (!qword_2806CB6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26EE43EC4()
{
  sub_26EE44050();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_26EE440B4();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_26EE4410C(319, &qword_2806C75E8);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_26EE4410C(319, &qword_2806C75F0);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26EE44050()
{
  if (!qword_2806C75D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C60, &qword_26EF3E450);
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C75D8);
    }
  }
}

void sub_26EE440B4()
{
  if (!qword_2806C75E0)
  {
    sub_26EF3A34C();
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C75E0);
    }
  }
}

void sub_26EE4410C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26EF3954C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_26EE441B0()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  v1 = v0[2];
  v2 = v0[3];

  return v1;
}

uint64_t sub_26EE44240@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26EE4428C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t sub_26EE442F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[2] == a1 && v2[3] == a2;
  if (v5 || (v6 = v2[3], (sub_26EF3B82C() & 1) != 0))
  {
    v2[2] = a1;
    v2[3] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath, v9);
    v11 = v2;
    v12 = a1;
    v13 = a2;
    (*(*v2 + 392))(v10, sub_26EE44428);
  }
}

uint64_t sub_26EE44428()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

void (*sub_26EE44490(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel);
  sub_26EF3802C();

  v4[7] = sub_26EE44160();
  return sub_26EE445E0;
}

uint64_t sub_26EE4465C()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  return v0[4];
}

uint64_t sub_26EE446DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_26EE44770(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[4] != a1)
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath, v5);
    v7 = v1;
    v8 = a1;
    (*(*v1 + 392))(v6, sub_26EE44868);
  }

  return result;
}

uint64_t sub_26EE44868()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 32) = v1;
  return result;
}

void (*sub_26EE448B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel);
  sub_26EF3802C();

  v4[7] = sub_26EE4460C();
  return sub_26EE44A08;
}

float sub_26EE44A68()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  return v0[10];
}

uint64_t sub_26EE44B84(float a1)
{
  result = swift_beginAccess();
  if (v1[10] == a1)
  {
    v1[10] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath, v5);
    (*(*v1 + 392))(v6, sub_26EE44C8C);
  }

  return result;
}

uint64_t sub_26EE44C8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

void (*sub_26EE44CE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel);
  sub_26EF3802C();

  v4[7] = sub_26EE44A14();
  return sub_26EE44E30;
}

uint64_t sub_26EE44E8C()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  v1 = v0[6];
  v2 = v0[7];

  return v1;
}

uint64_t sub_26EE44F1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26EE44F70(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 304);

  return v4(v2, v3);
}

uint64_t sub_26EE44FE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[6] == a1 && v2[7] == a2;
  if (v5 || (v6 = v2[7], (sub_26EF3B82C() & 1) != 0))
  {
    v2[6] = a1;
    v2[7] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath, v9);
    v11 = v2;
    v12 = a1;
    v13 = a2;
    (*(*v2 + 392))(v10, sub_26EE45114);
  }
}

uint64_t sub_26EE45114()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

void (*sub_26EE4517C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel);
  sub_26EF3802C();

  v4[7] = sub_26EE44E3C();
  return sub_26EE452CC;
}

id sub_26EE45328()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  v1 = v0[8];

  return v1;
}

uint64_t sub_26EE453B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

void sub_26EE45468(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[8];
  sub_26EE1FAB8(0, &qword_2806C7600, 0x277CEFD30);
  v5 = v4;
  v6 = sub_26EF3B5AC();

  if (v6)
  {
    v7 = v2[8];
    v2[8] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath, v9);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 392))(v10, sub_26EE455AC);
  }
}

void sub_26EE455AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  v4 = v1;
}

void (*sub_26EE45608(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel);
  sub_26EF3802C();

  v4[7] = sub_26EE452D8();
  return sub_26EE45758;
}

void sub_26EE45764(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_26EF3801C();

  free(v1);
}

uint64_t sub_26EE457F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  sub_26EF3803C();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a7;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  *(v17 + 64) = a6;
  return v17;
}

uint64_t sub_26EE4588C()
{
  (*(*v0 + 296))();
  sub_26EF3B16C();

  v2 = (*(*v0 + 200))(v1);
  v3 = MEMORY[0x274383980](v2);
  (*(*v0 + 248))(v3);
  v4 = sub_26EF3B8AC();
  (*(*v0 + 152))(v4);
  sub_26EF3B16C();
}

uint64_t sub_26EE45B08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  v4 = sub_26EF3804C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_26EE45BBC()
{
  sub_26EF3B87C();
  (*(*v0 + 376))(v2);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE45C24@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 296))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26EE45D10()
{
  sub_26EF3B87C();
  (*(**v0 + 376))(v2);
  return sub_26EF3B8CC();
}

uint64_t AUParamView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v423 = a1;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7178, &qword_26EF3DD70);
  v369 = *(v370 - 8);
  v2 = *(v369 + 64);
  MEMORY[0x28223BE20](v370, v3);
  v368 = &v349 - v4;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7610, &qword_26EF3E748);
  v5 = *(*(v389 - 8) + 64);
  MEMORY[0x28223BE20](v389, v6);
  v371 = &v349 - v7;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7618, &qword_26EF3E750);
  v8 = *(*(v391 - 8) + 64);
  MEMORY[0x28223BE20](v391, v9);
  v392 = (&v349 - v10);
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7620, &qword_26EF3E758);
  v11 = *(*(v386 - 8) + 64);
  MEMORY[0x28223BE20](v386, v12);
  v387 = &v349 - v13;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7628, &qword_26EF3E760);
  v14 = *(*(v390 - 8) + 64);
  MEMORY[0x28223BE20](v390, v15);
  v388 = &v349 - v16;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7630, &qword_26EF3E768);
  v17 = *(*(v422 - 8) + 64);
  MEMORY[0x28223BE20](v422, v18);
  v393 = &v349 - v19;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7638, &qword_26EF3E770);
  v20 = *(*(v364 - 8) + 64);
  MEMORY[0x28223BE20](v364, v21);
  v365 = &v349 - v22;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7640, &qword_26EF3E778);
  v350 = *(v366 - 8);
  v23 = *(v350 + 64);
  MEMORY[0x28223BE20](v366, v24);
  v349 = &v349 - v25;
  v359 = sub_26EF3850C();
  v358 = *(v359 - 8);
  v26 = *(v358 + 64);
  MEMORY[0x28223BE20](v359, v27);
  v357 = &v349 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7648, &qword_26EF3E780);
  v372 = *(v373 - 8);
  v29 = *(v372 + 64);
  MEMORY[0x28223BE20](v373, v30);
  v363 = &v349 - v31;
  v361 = sub_26EF39E1C();
  v356 = *(v361 - 8);
  v32 = *(v356 + 64);
  MEMORY[0x28223BE20](v361, v33);
  v355 = &v349 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7650, &qword_26EF3E788);
  v354 = *(v360 - 8);
  v35 = *(v354 + 64);
  MEMORY[0x28223BE20](v360, v36);
  v353 = &v349 - v37;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7658, &qword_26EF3E790);
  v362 = *(v376 - 8);
  v38 = *(v362 + 64);
  MEMORY[0x28223BE20](v376, v39);
  v375 = &v349 - v40;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7660, &qword_26EF3E798);
  v41 = *(*(v385 - 8) + 64);
  MEMORY[0x28223BE20](v385, v42);
  v374 = &v349 - v43;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7668, &qword_26EF3E7A0);
  v44 = *(*(v378 - 8) + 64);
  MEMORY[0x28223BE20](v378, v45);
  v379 = &v349 - v46;
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7670, &qword_26EF3E7A8);
  v47 = *(*(v410 - 8) + 64);
  MEMORY[0x28223BE20](v410, v48);
  v380 = &v349 - v49;
  v50 = sub_26EF39E9C();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8, v52);
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7678, &qword_26EF3E7B0);
  v53 = *(*(v419 - 8) + 64);
  MEMORY[0x28223BE20](v419, v54);
  v421 = &v349 - v55;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7680, &qword_26EF3E7B8);
  v56 = *(*(v407 - 8) + 64);
  MEMORY[0x28223BE20](v407, v57);
  v409 = &v349 - v58;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7688, &qword_26EF3E7C0);
  v59 = *(*(v382 - 8) + 64);
  MEMORY[0x28223BE20](v382, v60);
  v383 = &v349 - v61;
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7690, &qword_26EF3E7C8);
  v62 = *(*(v408 - 8) + 64);
  MEMORY[0x28223BE20](v408, v63);
  v384 = &v349 - v64;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7698, &qword_26EF3E7D0);
  v65 = *(*(v420 - 8) + 64);
  MEMORY[0x28223BE20](v420, v66);
  v406 = &v349 - v67;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76A0, &qword_26EF3E7D8);
  v68 = *(*(v351 - 8) + 64);
  MEMORY[0x28223BE20](v351, v69);
  v352 = &v349 - v70;
  v71 = type metadata accessor for AUParamView(0);
  v412 = *(v71 - 8);
  v72 = *(v412 + 64);
  MEMORY[0x28223BE20](v71 - 8, v73);
  v416 = v74;
  v417 = &v349 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v415 = sub_26EF39F4C();
  v414 = *(v415 - 8);
  v75 = *(v414 + 64);
  MEMORY[0x28223BE20](v415, v76);
  v413 = &v349 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = sub_26EF3A2EC();
  v400 = *(v401 - 8);
  v78 = *(v400 + 64);
  MEMORY[0x28223BE20](v401, v79);
  v399 = &v349 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v82 = *(v81 - 8);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81, v84);
  v86 = &v349 - v85;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76A8, &qword_26EF3E7E0);
  v398 = *(v402 - 8);
  v87 = *(v398 + 64);
  MEMORY[0x28223BE20](v402, v88);
  v397 = &v349 - v89;
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76B0, &qword_26EF3E7E8);
  v404 = *(v405 - 8);
  v90 = *(v404 + 64);
  MEMORY[0x28223BE20](v405, v91);
  v403 = &v349 - v92;
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76B8, &qword_26EF3E7F0);
  v93 = *(*(v411 - 8) + 64);
  v95 = MEMORY[0x28223BE20](v411, v94);
  v418 = &v349 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x28223BE20](v95, v97);
  v394 = &v349 - v99;
  v101 = MEMORY[0x28223BE20](v98, v100);
  v395 = &v349 - v102;
  MEMORY[0x28223BE20](v101, v103);
  v396 = &v349 - v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76C0, &qword_26EF3E7F8);
  v106 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105 - 8, v107);
  v109 = &v349 - v108;
  v110 = sub_26EF384CC();
  v377 = *(v110 - 8);
  v111 = *(v377 + 64);
  v113 = MEMORY[0x28223BE20](v110, v112);
  v115 = &v349 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v113, v116);
  v118 = &v349 - v117;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76C8, &qword_26EF3E800);
  v119 = *(*(v381 - 8) + 64);
  MEMORY[0x28223BE20](v381, v120);
  v367 = &v349 - v121;
  v424 = v1;
  v122 = sub_26EF3AD9C();
  v123 = (*(*v434 + 344))(v122);

  v124 = [v123 unit];

  if (v124 <= 2)
  {
    if (v124)
    {
      if (v124 == 1)
      {
        v219 = sub_26EF3AD9C();
        v220 = (*(*v434 + 344))(v219);

        v221 = [v220 valueStrings];

        if (v221)
        {
          sub_26EF3B20C();

          v222 = sub_26EF3AD9C();
          v223 = (*(*v434 + 152))(v222);
          v225 = v224;

          v426 = v223;
          v427 = v225;
          sub_26EF3ADAC();
          swift_getKeyPath();
          sub_26EF3ADCC();

          v226 = (*(v82 + 8))(v86, v81);
          v430 = v434;
          v431 = v435;
          v432 = v436;
          MEMORY[0x28223BE20](v226, v227);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7748, &qword_26EF3E810);
          sub_26EE53338();
          v417 = sub_26EE12538();
          v228 = v353;
          sub_26EF3ABAC();

          v229 = v355;
          sub_26EF39E0C();
          v230 = sub_26EE154C8(&qword_2806C76F0, &qword_2806C7650, &qword_26EF3E788);
          v231 = v375;
          v232 = v360;
          v233 = v361;
          v418 = v230;
          sub_26EF3A69C();
          (*(v356 + 8))(v229, v233);
          (*(v354 + 8))(v228, v232);
          v234 = sub_26EF3AD9C();
          v235 = (*(*v434 + 344))(v234);

          v236 = v357;
          sub_26EF3B41C();

          v237 = sub_26EF384EC();
          v239 = v238;
          v240 = (*(v358 + 8))(v236, v359);
          if (v239)
          {
            v416 = &v349;
            MEMORY[0x28223BE20](v240, v241);
            v242 = sub_26EF3AD9C();
            v243 = (*(*v434 + 152))(v242);
            v244 = v233;
            v246 = v245;

            v434 = v243;
            v435 = v246;
            v434 = sub_26EF3A5DC();
            v435 = v247;
            LOBYTE(v436) = v248 & 1;
            v437 = v249;
            v430 = v237;
            v431 = v239;
            v430 = sub_26EF3A5DC();
            v431 = v250;
            LOBYTE(v432) = v251 & 1;
            v433 = v252;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7758, &qword_26EF3E818);
            v426 = v232;
            v427 = v244;
            v428 = v418;
            v429 = MEMORY[0x277CDDDA0];
            OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
            v426 = v376;
            v427 = OpaqueTypeConformance2;
            swift_getOpaqueTypeConformance2();
            v254 = v349;
            sub_26EF3AD5C();
            v255 = v350;
            v256 = v366;
            (*(v350 + 16))(v365, v254, v366);
            swift_storeEnumTagMultiPayload();
            sub_26EE526F4();
            v257 = v363;
            sub_26EF3A06C();
            (*(v255 + 8))(v254, v256);
            v258 = v393;
            v259 = v392;
            v260 = v388;
            v261 = v362;
          }

          else
          {
            v261 = v362;
            (*(v362 + 16))(v365, v231, v376);
            swift_storeEnumTagMultiPayload();
            sub_26EE526F4();
            v434 = v232;
            v435 = v233;
            v436 = v418;
            v437 = MEMORY[0x277CDDDA0];
            swift_getOpaqueTypeConformance2();
            v257 = v363;
            sub_26EF3A06C();
            v258 = v393;
            v259 = v392;
            v260 = v388;
          }

          v348 = v374;
          sub_26EE53400(v257, v374);
          (*(v372 + 56))(v348, 0, 1, v373);
          (*(v261 + 8))(v375, v376);
        }

        else
        {
          v348 = v374;
          (*(v372 + 56))(v374, 1, 1, v373);
          v258 = v393;
          v259 = v392;
          v260 = v388;
        }

        sub_26EE13B88(v348, v387, &qword_2806C7660, &qword_26EF3E798);
        swift_storeEnumTagMultiPayload();
        sub_26EE52554();
        sub_26EE52850();
        sub_26EF3A06C();
        sub_26EE13B88(v260, v259, &qword_2806C7628, &qword_26EF3E760);
        swift_storeEnumTagMultiPayload();
        sub_26EE524C8();
        sub_26EF3A06C();
        sub_26EE14578(v260, &qword_2806C7628, &qword_26EF3E760);
        sub_26EE13B88(v258, v421, &qword_2806C7630, &qword_26EF3E768);
        swift_storeEnumTagMultiPayload();
        sub_26EE52980();
        sub_26EE52D58();
        sub_26EF3A06C();
        sub_26EE14578(v258, &qword_2806C7630, &qword_26EF3E768);
        v216 = v348;
        v217 = &qword_2806C7660;
        v218 = &qword_26EF3E798;
        return sub_26EE14578(v216, v217, v218);
      }

      if (v124 == 2)
      {
        v125 = v424;
        v126 = v417;
        sub_26EE52DE4(v424, v417);
        sub_26EF3B2DC();
        v127 = sub_26EF3B2CC();
        v128 = (*(v412 + 80) + 32) & ~*(v412 + 80);
        v129 = swift_allocObject();
        v130 = MEMORY[0x277D85700];
        *(v129 + 16) = v127;
        *(v129 + 24) = v130;
        sub_26EE52E4C(v126, v129 + v128);
        sub_26EE52DE4(v125, v126);
        v131 = sub_26EF3B2CC();
        v132 = swift_allocObject();
        *(v132 + 16) = v131;
        *(v132 + 24) = v130;
        sub_26EE52E4C(v126, v132 + v128);
        sub_26EF3AC6C();
        MEMORY[0x28223BE20](v434, v435);
        v133 = v368;
        sub_26EF3ABCC();
        v134 = v413;
        sub_26EF39F0C();
        sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70);
        v135 = v371;
        v136 = v370;
        sub_26EF3A81C();
        (*(v414 + 8))(v134, v415);
        (*(v369 + 8))(v133, v136);
        sub_26EE13B88(v135, v387, &qword_2806C7610, &qword_26EF3E748);
        swift_storeEnumTagMultiPayload();
        sub_26EE52554();
        sub_26EE52850();
        v137 = v388;
        sub_26EF3A06C();
        sub_26EE13B88(v137, v392, &qword_2806C7628, &qword_26EF3E760);
        swift_storeEnumTagMultiPayload();
        sub_26EE524C8();
        v138 = v393;
        sub_26EF3A06C();
        sub_26EE14578(v137, &qword_2806C7628, &qword_26EF3E760);
        sub_26EE13B88(v138, v421, &qword_2806C7630, &qword_26EF3E768);
        swift_storeEnumTagMultiPayload();
        sub_26EE52980();
        sub_26EE52D58();
        sub_26EF3A06C();
        sub_26EE14578(v138, &qword_2806C7630, &qword_26EF3E768);
        return sub_26EE14578(v135, &qword_2806C7610, &qword_26EF3E748);
      }

      goto LABEL_21;
    }

    v143 = v424;
    sub_26EF3ADAC();
    swift_getKeyPath();
    sub_26EF3ADCC();

    (*(v82 + 8))(v86, v81);
    v144 = v434;
    v145 = v435;
    v146 = v436;
    v147 = sub_26EF3AD9C();
    v148 = (*(*v430 + 344))(v147);

    [v148 minValue];
    v150 = v149;

    v151 = sub_26EF3AD9C();
    v152 = (*(*v430 + 344))(v151);

    [v152 maxValue];
    v154 = v153;

    if (v150 <= v154)
    {
      MEMORY[0x28223BE20](v155, v156);
      v430 = v144;
      v431 = v145;
      v432 = v146;
      v426 = __PAIR64__(LODWORD(v154), LODWORD(v150));
      v425 = 1065353216;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7760, qword_26EF3E820);
      sub_26EE154C8(&qword_2806C7768, &qword_2806C7760, qword_26EF3E820);
      v157 = v397;
      sub_26EF3AD8C();
      v158 = v399;
      sub_26EF3A2CC();
      v159 = sub_26EE154C8(&qword_2806C7730, &qword_2806C76A8, &qword_26EF3E7E0);
      v160 = v403;
      v161 = v402;
      sub_26EF3A7DC();
      (*(v400 + 8))(v158, v401);
      (*(v398 + 8))(v157, v161);
      v162 = sub_26EF3AD9C();
      v163 = (*(*v434 + 152))(v162);
      v165 = v164;

      v434 = v163;
      v435 = v165;
      v430 = v161;
      v431 = v159;
      swift_getOpaqueTypeConformance2();
      sub_26EE12538();
      v166 = v405;
      sub_26EF3A78C();

      (*(v404 + 8))(v160, v166);
      sub_26EF39E8C();
      sub_26EF39E7C();
      v167 = sub_26EF3AD9C();
      v168 = (*(*v434 + 248))(v167);

      if ((LODWORD(v168) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v168 > -9.2234e18)
        {
          if (v168 < 9.2234e18)
          {
            v434 = v168;
            sub_26EF39E5C();
            sub_26EF39E7C();
            sub_26EF39EBC();
            v169 = v394;
            v170 = v418;
            sub_26EF39A6C();

            sub_26EE14578(v170, &qword_2806C76B8, &qword_26EF3E7F0);
            v171 = v413;
            sub_26EF39F0C();
            v172 = v395;
            sub_26EF39A8C();
            (*(v414 + 8))(v171, v415);
            sub_26EE14578(v169, &qword_2806C76B8, &qword_26EF3E7F0);
            v173 = v143;
            v174 = v417;
            sub_26EE52DE4(v173, v417);
            v175 = (*(v412 + 80) + 16) & ~*(v412 + 80);
            v176 = swift_allocObject();
            sub_26EE52E4C(v174, v176 + v175);
            v177 = v396;
            sub_26EF39AAC();

            sub_26EE14578(v172, &qword_2806C76B8, &qword_26EF3E7F0);
            sub_26EE13B88(v177, v383, &qword_2806C76B8, &qword_26EF3E7F0);
            swift_storeEnumTagMultiPayload();
            sub_26EE52A98();
            sub_26EE52BA8();
            v178 = v384;
            sub_26EF3A06C();
            v179 = &qword_2806C7690;
            v180 = &qword_26EF3E7C8;
            sub_26EE13B88(v178, v409, &qword_2806C7690, &qword_26EF3E7C8);
            swift_storeEnumTagMultiPayload();
            sub_26EE52A0C();
            sub_26EE52CD4();
            v181 = v406;
            sub_26EF3A06C();
            v182 = v178;
LABEL_30:
            sub_26EE14578(v182, v179, v180);
            sub_26EE13B88(v181, v421, &qword_2806C7698, &qword_26EF3E7D0);
            swift_storeEnumTagMultiPayload();
            sub_26EE52980();
            sub_26EE52D58();
            sub_26EF3A06C();
            sub_26EE14578(v181, &qword_2806C7698, &qword_26EF3E7D0);
            v216 = v177;
            v217 = &qword_2806C76B8;
            v218 = &qword_26EF3E7F0;
            return sub_26EE14578(v216, v217, v218);
          }

          goto LABEL_54;
        }

        goto LABEL_51;
      }

      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_46;
  }

  if (v124 == 3)
  {
    v183 = v424;
    sub_26EF3ADAC();
    swift_getKeyPath();
    sub_26EF3ADCC();

    (*(v82 + 8))(v86, v81);
    v184 = v434;
    v185 = v435;
    v186 = v436;
    v187 = sub_26EF3AD9C();
    v188 = (*(*v430 + 344))(v187);

    [v188 minValue];
    v190 = v189;

    v191 = sub_26EF3AD9C();
    v192 = (*(*v430 + 344))(v191);

    [v192 maxValue];
    v194 = v193;

    if (v190 > v194)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    MEMORY[0x28223BE20](v195, v196);
    v430 = v184;
    v431 = v185;
    v432 = v186;
    v426 = __PAIR64__(LODWORD(v194), LODWORD(v190));
    v425 = 1084227584;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7760, qword_26EF3E820);
    sub_26EE154C8(&qword_2806C7768, &qword_2806C7760, qword_26EF3E820);
    v197 = v397;
    sub_26EF3AD8C();
    v198 = v399;
    sub_26EF3A2CC();
    v199 = sub_26EE154C8(&qword_2806C7730, &qword_2806C76A8, &qword_26EF3E7E0);
    v200 = v403;
    v201 = v402;
    sub_26EF3A7DC();
    (*(v400 + 8))(v198, v401);
    (*(v398 + 8))(v197, v201);
    v202 = sub_26EF3AD9C();
    v203 = (*(*v434 + 152))(v202);
    v205 = v204;

    v434 = v203;
    v435 = v205;
    v430 = v201;
    v431 = v199;
    swift_getOpaqueTypeConformance2();
    sub_26EE12538();
    v206 = MEMORY[0x277D837D0];
    v207 = v405;
    sub_26EF3A78C();

    (*(v404 + 8))(v200, v207);
    v208 = sub_26EE17094();
    v209._object = 0xEE0054414D524F46;
    v210 = v208 & 1;
    v209._countAndFlagsBits = 0x5F544E4543524550;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v209, v210, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v211 = swift_allocObject();
    *(v211 + 16) = xmmword_26EF3C6B0;
    v212 = sub_26EF3AD9C();
    v213 = (*(*v434 + 248))(v212);

    if ((LODWORD(v213) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v213 <= -9.2234e18)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v213 >= 9.2234e18)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_29:
    v434 = v213;
    v288 = sub_26EF3B7FC();
    v290 = v289;
    *(v211 + 56) = v206;
    *(v211 + 64) = sub_26EE1EFBC();
    *(v211 + 32) = v288;
    *(v211 + 40) = v290;
    v291 = sub_26EF3B10C();
    v293 = v292;

    v434 = v291;
    v435 = v293;
    v294 = v394;
    v295 = v418;
    sub_26EF39A7C();

    sub_26EE14578(v295, &qword_2806C76B8, &qword_26EF3E7F0);
    v296 = v413;
    sub_26EF39F0C();
    v297 = v395;
    sub_26EF39A8C();
    (*(v414 + 8))(v296, v415);
    sub_26EE14578(v294, &qword_2806C76B8, &qword_26EF3E7F0);
    v298 = v417;
    sub_26EE52DE4(v183, v417);
    v299 = (*(v412 + 80) + 16) & ~*(v412 + 80);
    v300 = swift_allocObject();
    sub_26EE52E4C(v298, v300 + v299);
    v177 = v396;
    sub_26EF39AAC();

    sub_26EE14578(v297, &qword_2806C76B8, &qword_26EF3E7F0);
    sub_26EE13B88(v177, v379, &qword_2806C76B8, &qword_26EF3E7F0);
    swift_storeEnumTagMultiPayload();
    sub_26EE52BA8();
    v301 = v380;
    sub_26EF3A06C();
    v179 = &qword_2806C7670;
    v180 = &qword_26EF3E7A8;
    sub_26EE13B88(v301, v409, &qword_2806C7670, &qword_26EF3E7A8);
    swift_storeEnumTagMultiPayload();
    sub_26EE52A0C();
    sub_26EE52CD4();
    v181 = v406;
    sub_26EF3A06C();
    v182 = v301;
    goto LABEL_30;
  }

  if (v124 == 8)
  {
    v183 = v424;
    sub_26EF3ADAC();
    swift_getKeyPath();
    sub_26EF3ADCC();

    (*(v82 + 8))(v86, v81);
    v262 = v434;
    v263 = v435;
    v264 = v436;
    v265 = sub_26EF3AD9C();
    v266 = (*(*v430 + 344))(v265);

    [v266 minValue];
    v268 = v267;

    v269 = sub_26EF3AD9C();
    v270 = (*(*v430 + 344))(v269);

    [v270 maxValue];
    v272 = v271;

    if (v268 > v272)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    MEMORY[0x28223BE20](v273, v274);
    v430 = v262;
    v431 = v263;
    v432 = v264;
    v426 = __PAIR64__(LODWORD(v272), LODWORD(v268));
    v425 = 1101004800;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7760, qword_26EF3E820);
    sub_26EE154C8(&qword_2806C7768, &qword_2806C7760, qword_26EF3E820);
    v275 = v397;
    sub_26EF3AD8C();
    v276 = v399;
    sub_26EF3A2CC();
    v277 = sub_26EE154C8(&qword_2806C7730, &qword_2806C76A8, &qword_26EF3E7E0);
    v278 = v403;
    v279 = v402;
    sub_26EF3A7DC();
    (*(v400 + 8))(v276, v401);
    (*(v398 + 8))(v275, v279);
    v280 = sub_26EF3AD9C();
    v281 = (*(*v434 + 152))(v280);
    v283 = v282;

    v434 = v281;
    v435 = v283;
    v430 = v279;
    v431 = v277;
    swift_getOpaqueTypeConformance2();
    sub_26EE12538();
    v206 = MEMORY[0x277D837D0];
    v284 = v405;
    sub_26EF3A78C();

    (*(v404 + 8))(v278, v284);
    v285 = sub_26EE17094() & 1;
    v286._countAndFlagsBits = 0x414D524F465F5A48;
    v286._object = 0xE900000000000054;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v286, v285, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v211 = swift_allocObject();
    *(v211 + 16) = xmmword_26EF3C6B0;
    v287 = sub_26EF3AD9C();
    v213 = (*(*v434 + 248))(v287);

    if ((LODWORD(v213) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v213 <= -9.2234e18)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v213 >= 9.2234e18)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    goto LABEL_29;
  }

  if (v124 != 26)
  {
LABEL_21:
    v214 = v392;
    *v392 = 0;
    *(v214 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_26EE524C8();
    v215 = v393;
    sub_26EF3A06C();
    sub_26EE13B88(v215, v421, &qword_2806C7630, &qword_26EF3E768);
    swift_storeEnumTagMultiPayload();
    sub_26EE52980();
    sub_26EE52D58();
    sub_26EF3A06C();
    v216 = v215;
    v217 = &qword_2806C7630;
    v218 = &qword_26EF3E768;
    return sub_26EE14578(v216, v217, v218);
  }

  v140 = sub_26EF3AD9C();
  v141 = (*(*v434 + 344))(v140);

  v142 = [v141 unitName];

  if (v142)
  {
    sub_26EF3B0FC();
  }

  sub_26EF384BC();
  v302 = v377;
  if ((*(v377 + 48))(v109, 1, v110) == 1)
  {
    sub_26EE14578(v109, &qword_2806C76C0, &qword_26EF3E7F8);
    v303 = 1;
    v304 = v406;
    v305 = v367;
    goto LABEL_39;
  }

  (*(v302 + 32))(v118, v109, v110);
  (*(v302 + 16))(v115, v118, v110);
  if ((*(v302 + 88))(v115, v110) == *MEMORY[0x277D70370])
  {
    sub_26EF3ADAC();
    swift_getKeyPath();
    sub_26EF3ADCC();

    (*(v82 + 8))(v86, v81);
    v306 = v434;
    v307 = v435;
    v308 = v436;
    v309 = sub_26EF3AD9C();
    v310 = (*(*v430 + 344))(v309);

    [v310 minValue];
    v312 = v311;

    v313 = sub_26EF3AD9C();
    v314 = (*(*v430 + 344))(v313);

    [v314 maxValue];
    v316 = v315;

    if (v312 > v316)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    MEMORY[0x28223BE20](v317, v318);
    v430 = v306;
    v431 = v307;
    v432 = v308;
    v426 = __PAIR64__(LODWORD(v316), LODWORD(v312));
    v425 = 1092616192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7760, qword_26EF3E820);
    sub_26EE154C8(&qword_2806C7768, &qword_2806C7760, qword_26EF3E820);
    v319 = v397;
    sub_26EF3AD8C();
    v320 = v399;
    sub_26EF3A2CC();
    v321 = sub_26EE154C8(&qword_2806C7730, &qword_2806C76A8, &qword_26EF3E7E0);
    v322 = v403;
    v323 = v402;
    sub_26EF3A7DC();
    (*(v400 + 8))(v320, v401);
    (*(v398 + 8))(v319, v323);
    v324 = sub_26EF3AD9C();
    v325 = (*(*v434 + 152))(v324);
    v327 = v326;

    v434 = v325;
    v435 = v327;
    v430 = v323;
    v431 = v321;
    swift_getOpaqueTypeConformance2();
    sub_26EE12538();
    v328 = v405;
    sub_26EF3A78C();

    (*(v404 + 8))(v322, v328);
    v329 = sub_26EE17094() & 1;
    v330._countAndFlagsBits = 0x4D524F465F4D5057;
    v330._object = 0xEA00000000005441;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v330, v329, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v331 = swift_allocObject();
    *(v331 + 16) = xmmword_26EF3C6B0;
    v332 = sub_26EF3AD9C();
    v333 = (*(*v434 + 248))(v332);

    if ((LODWORD(v333) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v333 <= -9.2234e18)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v333 >= 9.2234e18)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v334 = MEMORY[0x277D83C10];
    *(v331 + 56) = MEMORY[0x277D83B88];
    *(v331 + 64) = v334;
    *(v331 + 32) = v333;
    v335 = sub_26EF3B0CC();
    v337 = v336;

    v434 = v335;
    v435 = v337;
    v338 = v394;
    v339 = v418;
    sub_26EF39A7C();

    sub_26EE14578(v339, &qword_2806C76B8, &qword_26EF3E7F0);
    v340 = v413;
    sub_26EF39F0C();
    v341 = v395;
    sub_26EF39A8C();
    (*(v414 + 8))(v340, v415);
    sub_26EE14578(v338, &qword_2806C76B8, &qword_26EF3E7F0);
    v342 = v417;
    sub_26EE52DE4(v424, v417);
    v343 = (*(v412 + 80) + 16) & ~*(v412 + 80);
    v344 = swift_allocObject();
    sub_26EE52E4C(v342, v344 + v343);
    v345 = v396;
    sub_26EF39AAC();

    sub_26EE14578(v341, &qword_2806C76B8, &qword_26EF3E7F0);
    sub_26EE13B88(v345, v352, &qword_2806C76B8, &qword_26EF3E7F0);
    swift_storeEnumTagMultiPayload();
    sub_26EE52BA8();
    v305 = v367;
    sub_26EF3A06C();
    sub_26EE14578(v345, &qword_2806C76B8, &qword_26EF3E7F0);
    (*(v377 + 8))(v118, v110);
    v303 = 0;
    v304 = v406;
LABEL_39:
    v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7720, &qword_26EF3E808);
    (*(*(v346 - 8) + 56))(v305, v303, 1, v346);
    sub_26EE13B88(v305, v383, &qword_2806C76C8, &qword_26EF3E800);
    swift_storeEnumTagMultiPayload();
    sub_26EE52A98();
    sub_26EE52BA8();
    v347 = v384;
    sub_26EF3A06C();
    sub_26EE13B88(v347, v409, &qword_2806C7690, &qword_26EF3E7C8);
    swift_storeEnumTagMultiPayload();
    sub_26EE52A0C();
    sub_26EE52CD4();
    sub_26EF3A06C();
    sub_26EE14578(v347, &qword_2806C7690, &qword_26EF3E7C8);
    sub_26EE13B88(v304, v421, &qword_2806C7698, &qword_26EF3E7D0);
    swift_storeEnumTagMultiPayload();
    sub_26EE52980();
    sub_26EE52D58();
    sub_26EF3A06C();
    sub_26EE14578(v304, &qword_2806C7698, &qword_26EF3E7D0);
    v216 = v305;
    v217 = &qword_2806C76C8;
    v218 = &qword_26EF3E800;
    return sub_26EE14578(v216, v217, v218);
  }

LABEL_61:
  result = sub_26EF3B78C();
  __break(1u);
  return result;
}

uint64_t sub_26EE49AC4(uint64_t a1)
{
  v2 = sub_26EF3A35C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CDE498])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v9 = v26;
    v10 = sub_26EF3AD9C();
    v11 = (*(*v26 + 344))(v10);

    [v11 maxValue];
    v13 = v12;

    v14 = sub_26EF3AD9C();
    v15 = (*(*v26 + 248))(v14);

    v17.n128_f32[0] = v15 + 10.0;
    if ((v15 + 10.0) >= v13)
    {
      v17.n128_f32[0] = v13;
    }

LABEL_8:
    (*(*v9 + 256))(v16, v17);
  }

  if (v8 == *MEMORY[0x277CDE490])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v9 = v26;
    v18 = sub_26EF3AD9C();
    v19 = (*(*v26 + 344))(v18);

    [v19 minValue];
    v21 = v20;

    v22 = sub_26EF3AD9C();
    v23 = (*(*v26 + 248))(v22);

    v17.n128_f32[0] = v23 + -10.0;
    if (v21 > (v23 + -10.0))
    {
      v17.n128_f32[0] = v21;
    }

    goto LABEL_8;
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_26EE49E1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF39E9C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v5 = sub_26EF3AD9C();
  v6 = (*(*v25 + 152))(v5);

  v26 = v6;
  sub_26EE12538();
  v7 = sub_26EF3A5DC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_26EF39E8C();
  sub_26EF39E7C();
  v14 = sub_26EF3AD9C();
  v15 = (*(*v26 + 248))(v14);

  if ((LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v15 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v15 < 9.2234e18)
  {
    sub_26EF39E5C();
    sub_26EF39E7C();
    sub_26EF39EBC();
    v17 = sub_26EF3A5CC();
    v19 = v18;
    v20 = v11 & 1;
    v24 = v11 & 1;
    v22 = v21 & 1;
    *a1 = v7;
    *(a1 + 8) = v9;
    *(a1 + 16) = v20;
    *(a1 + 24) = v13;
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    *(a1 + 48) = v21 & 1;
    *(a1 + 56) = v23;
    sub_26EE13B20(v7, v9, v20);

    sub_26EE13B20(v17, v19, v22);

    sub_26EE12ABC(v17, v19, v22);

    sub_26EE12ABC(v7, v9, v24);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26EE4A0E8(uint64_t a1)
{
  v2 = sub_26EF3A35C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CDE498])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v9 = v26;
    v10 = sub_26EF3AD9C();
    v11 = (*(*v26 + 344))(v10);

    [v11 maxValue];
    v13 = v12;

    v14 = sub_26EF3AD9C();
    v15 = (*(*v26 + 248))(v14);

    v17.n128_f32[0] = v15 + 1.0;
    if ((v15 + 1.0) >= v13)
    {
      v17.n128_f32[0] = v13;
    }

LABEL_8:
    (*(*v9 + 256))(v16, v17);
  }

  if (v8 == *MEMORY[0x277CDE490])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v9 = v26;
    v18 = sub_26EF3AD9C();
    v19 = (*(*v26 + 344))(v18);

    [v19 minValue];
    v21 = v20;

    v22 = sub_26EF3AD9C();
    v23 = (*(*v26 + 248))(v22);

    v17.n128_f32[0] = v23 + -1.0;
    if (v21 > (v23 + -1.0))
    {
      v17.n128_f32[0] = v21;
    }

    goto LABEL_8;
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_26EE4A440(uint64_t a1)
{
  v2 = sub_26EF3A35C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CDE498])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v9 = v26;
    v10 = sub_26EF3AD9C();
    v11 = (*(*v26 + 344))(v10);

    [v11 maxValue];
    v13 = v12;

    v14 = sub_26EF3AD9C();
    v15 = (*(*v26 + 248))(v14);

    v17.n128_f32[0] = v15 + 20.0;
    if ((v15 + 20.0) >= v13)
    {
      v17.n128_f32[0] = v13;
    }

LABEL_8:
    (*(*v9 + 256))(v16, v17);
  }

  if (v8 == *MEMORY[0x277CDE490])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v9 = v26;
    v18 = sub_26EF3AD9C();
    v19 = (*(*v26 + 344))(v18);

    [v19 minValue];
    v21 = v20;

    v22 = sub_26EF3AD9C();
    v23 = (*(*v26 + 248))(v22);

    v17.n128_f32[0] = v23 + -20.0;
    if (v21 > (v23 + -20.0))
    {
      v17.n128_f32[0] = v21;
    }

    goto LABEL_8;
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_26EE4A798(uint64_t a1)
{
  v2 = sub_26EF3A35C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CDE498])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v9 = v26;
    v10 = sub_26EF3AD9C();
    v11 = (*(*v26 + 344))(v10);

    [v11 maxValue];
    v13 = v12;

    v14 = sub_26EF3AD9C();
    v15 = (*(*v26 + 248))(v14);

    v17.n128_f32[0] = v15 + 5.0;
    if ((v15 + 5.0) >= v13)
    {
      v17.n128_f32[0] = v13;
    }

LABEL_8:
    (*(*v9 + 256))(v16, v17);
  }

  if (v8 == *MEMORY[0x277CDE490])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v9 = v26;
    v18 = sub_26EF3AD9C();
    v19 = (*(*v26 + 344))(v18);

    [v19 minValue];
    v21 = v20;

    v22 = sub_26EF3AD9C();
    v23 = (*(*v26 + 248))(v22);

    v17.n128_f32[0] = v23 + -5.0;
    if (v21 > (v23 + -5.0))
    {
      v17.n128_f32[0] = v21;
    }

    goto LABEL_8;
  }

  return (*(v3 + 8))(v7, v2);
}

float sub_26EE4AAF0@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  sub_26EE12538();

  v4 = sub_26EF3A5DC();
  result = v3;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = v3;
  *(a2 + 36) = 1;
  return result;
}

uint64_t TTSPerVoiceSettingsView.voiceIdentifier.getter()
{
  v1 = *(v0 + 8);
  v4[2] = *v0;
  v4[3] = v1;
  v5 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](v4, v2);
  return v4[0];
}

double sub_26EE4ABCC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  v9 = *(a1 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t sub_26EE4AC2C(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 1);
  v3 = *a1;
  v4 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  return sub_26EF3AC3C();
}

uint64_t TTSPerVoiceSettingsView.voiceIdentifier.setter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  return sub_26EF3AC3C();
}

uint64_t (*TTSPerVoiceSettingsView.voiceIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 96) = *v1;
  *(v3 + 104) = v6;
  v8 = v1[2];
  v7 = v1[3];
  v4[14] = v8;
  v4[15] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v8;
  v4[3] = v7;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0]();
  return sub_26EE4ADB0;
}

uint64_t TTSPerVoiceSettingsView.$voiceIdentifier.getter()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  sub_26EF3AC5C();
  return v2;
}

uint64_t TTSPerVoiceSettingsView.settings.getter()
{
  v1 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  MEMORY[0x274382CF0](&v4, v2);
  return v4;
}

void *sub_26EE4AE68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  result = MEMORY[0x274382CF0](&v6, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_26EE4AEC8(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v3 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  return sub_26EF3AC3C();
}

uint64_t TTSPerVoiceSettingsView.settings.setter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  return sub_26EF3AC3C();
}

uint64_t (*TTSPerVoiceSettingsView.settings.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[4];
  v6 = v1[5];
  *(v3 + 64) = v5;
  *(v3 + 72) = v6;
  v7 = v1[6];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  MEMORY[0x274382CF0]();
  return sub_26EE4B04C;
}

uint64_t TTSPerVoiceSettingsView.$settings.getter()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  sub_26EF3AC5C();
  return v2;
}

uint64_t TTSPerVoiceSettingsView.init(voiceIdentifier:settings:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t TTSPerVoiceSettingsView.body.getter()
{
  v1 = sub_26EF39B0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7780, &qword_26EF3E848);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15[-v11];
  v13 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v13;
  v17[2] = *(v0 + 32);
  v18 = *(v0 + 48);
  v16 = v17;
  sub_26EE54068();
  sub_26EF3A4EC();
  sub_26EF3AECC();
  sub_26EE154C8(&qword_2806C7790, &qword_2806C7780, &qword_26EF3E848);
  sub_26EE52938(&qword_2806C7798, MEMORY[0x277CDDAB8]);
  sub_26EF3A93C();
  (*(v2 + 8))(v6, v1);
  return (*(v8 + 8))(v12, v7);
}

__n128 sub_26EE4B310@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v22 = *a1;
  v23 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  sub_26EF3AC5C();
  sub_26EF3B2DC();
  sub_26EE55FA4(a1, &v22);
  v5 = sub_26EF3B2CC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = *(a1 + 16);
  *(v6 + 32) = *a1;
  *(v6 + 48) = v8;
  *(v6 + 64) = *(a1 + 32);
  *(v6 + 80) = *(a1 + 48);
  sub_26EE55FA4(a1, &v22);
  v9 = sub_26EF3B2CC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = *(a1 + 16);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a1 + 32);
  *(v10 + 80) = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7800, &qword_26EF3E8E8);
  sub_26EF3AC6C();
  TTSPerVoiceSettingsAUParamsView.init(voiceIdentifier:settings:)(v18, v19, v20, v21, v18, v19, v20, &v22);
  v12 = v33;
  *(a2 + 160) = v32;
  *(a2 + 176) = v12;
  *(a2 + 192) = v34;
  v13 = v29;
  *(a2 + 96) = v28;
  *(a2 + 112) = v13;
  v14 = v31;
  *(a2 + 128) = v30;
  *(a2 + 144) = v14;
  v15 = v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v15;
  v16 = v27;
  *(a2 + 64) = v26;
  *(a2 + 80) = v16;
  result = v23;
  *a2 = v22;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_26EE4B4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v6;
    v12 = *(a1 + 32);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_26EE51BEC(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    sub_26EE14578(a1, &qword_2806C79B0, &qword_26EF3EDC8);
    sub_26EE51258(a2, a3, v11);

    return sub_26EE14578(v11, &qword_2806C79B0, &qword_26EF3EDC8);
  }

  return result;
}

uint64_t TTSPerVoiceSettingsAUParamsView.init(voiceIdentifier:settings:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A0, &qword_26EF3E850);
  sub_26EF3AAEC();
  *(a8 + 56) = v17;
  sub_26EF3AAEC();
  *(a8 + 72) = v17;
  *(a8 + 80) = *(&v17 + 1);
  sub_26EE540BC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A8, &qword_26EF3E858);
  sub_26EF3AAEC();
  *(a8 + 88) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B0, &qword_26EF3E860);
  sub_26EF3AAEC();
  *(a8 + 104) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B8, &qword_26EF3E868);
  sub_26EF3AAEC();
  *(a8 + 120) = v17;
  sub_26EF3AAEC();
  *(a8 + 136) = v17;
  *(a8 + 144) = *(&v17 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77C0, &qword_26EF3E870);
  sub_26EF3AAEC();
  *(a8 + 152) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77C8, &qword_26EF3E878);
  sub_26EF3AAEC();
  *(a8 + 168) = v17;
  result = swift_getKeyPath();
  *(a8 + 184) = result;
  *(a8 + 192) = 0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_26EE4B7BC()
{
  v1 = sub_26EF39B0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7780, &qword_26EF3E848);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15[-v11];
  v13 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v13;
  v17[2] = *(v0 + 32);
  v18 = *(v0 + 48);
  v16 = v17;
  sub_26EE54068();
  sub_26EF3A4EC();
  sub_26EF3AECC();
  sub_26EE154C8(&qword_2806C7790, &qword_2806C7780, &qword_26EF3E848);
  sub_26EE52938(&qword_2806C7798, MEMORY[0x277CDDAB8]);
  sub_26EF3A93C();
  (*(v2 + 8))(v6, v1);
  return (*(v8 + 8))(v12, v7);
}

uint64_t TTSPerVoiceSettingsAUParamsView.voiceIdentifier.getter()
{
  v1 = *(v0 + 8);
  v4[2] = *v0;
  v4[3] = v1;
  v5 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](v4, v2);
  return v4[0];
}

uint64_t TTSPerVoiceSettingsAUParamsView.voiceIdentifier.setter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  return sub_26EF3AC3C();
}

uint64_t (*TTSPerVoiceSettingsAUParamsView.voiceIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 96) = *v1;
  *(v3 + 104) = v6;
  v8 = v1[2];
  v7 = v1[3];
  v4[14] = v8;
  v4[15] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v8;
  v4[3] = v7;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0]();
  return sub_26EE5647C;
}

void sub_26EE4BB84(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[16];
  v7 = v2[14];
  v2[5] = v3;
  v2[6] = v7;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    sub_26EF3AC3C();

    v8 = v2[9];
  }

  else
  {
    sub_26EF3AC3C();
  }

  free(v2);
}

uint64_t TTSPerVoiceSettingsAUParamsView.$voiceIdentifier.getter()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  sub_26EF3AC5C();
  return v2;
}

uint64_t TTSPerVoiceSettingsAUParamsView.settings.getter()
{
  v1 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  MEMORY[0x274382CF0](&v4, v2);
  return v4;
}

void *sub_26EE4BD10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  result = MEMORY[0x274382CF0](&v6, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_26EE4BD70(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v3 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  return sub_26EF3AC3C();
}

uint64_t TTSPerVoiceSettingsAUParamsView.settings.setter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  return sub_26EF3AC3C();
}

uint64_t (*TTSPerVoiceSettingsAUParamsView.settings.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[4];
  v6 = v1[5];
  *(v3 + 64) = v5;
  *(v3 + 72) = v6;
  v7 = v1[6];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  MEMORY[0x274382CF0]();
  return sub_26EE56480;
}

void sub_26EE4BEF4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v2[3] = *(*a1 + 64);
  v2[7] = v2[6];
  v4 = v2[10];
  v5 = v2[11];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_26EF3AC3C();

    v6 = v2[6];
  }

  else
  {
    sub_26EF3AC3C();
  }

  free(v2);
}

uint64_t TTSPerVoiceSettingsAUParamsView.$settings.getter()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  sub_26EF3AC5C();
  return v2;
}

double TTSPerVoiceSettingsAUParamsView.init(voiceIdentifier:settings:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A0, &qword_26EF3E850);
  sub_26EF3AAEC();
  *(a5 + 56) = v18;
  sub_26EF3AAEC();
  v10 = *(&v18 + 1);
  *(a5 + 72) = v18;
  *(a5 + 80) = v10;
  sub_26EE540BC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A8, &qword_26EF3E858);
  sub_26EF3AAEC();
  v11 = *(&v18 + 1);
  *(a5 + 88) = v18;
  *(a5 + 96) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B0, &qword_26EF3E860);
  sub_26EF3AAEC();
  v12 = *(&v18 + 1);
  *(a5 + 104) = v18;
  *(a5 + 112) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B8, &qword_26EF3E868);
  sub_26EF3AAEC();
  *(a5 + 120) = v18;
  sub_26EF3AAEC();
  v13 = *(&v18 + 1);
  *(a5 + 136) = v18;
  *(a5 + 144) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77C0, &qword_26EF3E870);
  sub_26EF3AAEC();
  *(a5 + 152) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77C8, &qword_26EF3E878);
  sub_26EF3AAEC();
  *(a5 + 168) = v18;
  *(a5 + 184) = swift_getKeyPath();
  *(a5 + 192) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77F8, &qword_26EF3E8E0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7800, &qword_26EF3E8E8);
  Binding.mapped<A>(_:set:)(sub_26EE4C2EC, 0, sub_26EE4C508, 0, v14, v15, &v18);

  result = *&v18;
  v17 = v19;
  *(a5 + 32) = v18;
  *(a5 + 48) = v17;
  return result;
}

void sub_26EE4C2EC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    sub_26EE4C31C(v3);
  }

  *a2 = v3;
}

void sub_26EE4C31C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7998, &qword_26EF3EDB8);
    v2 = sub_26EF3B7CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 4 * v15);

        v20 = sub_26EF3B35C();
        v21 = sub_26EE1FCF4(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t *sub_26EE4C508@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    v4 = 0;
LABEL_29:
    *a2 = v4;
    return result;
  }

  v4 = sub_26EE3A7E8(MEMORY[0x277D84F90]);
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (*(v3 + 48) + ((v9 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v3 + 16);

    if (v15 && (v16 = sub_26EE1FCF4(v14, v13), (v17 & 1) != 0))
    {
      [*(*(v3 + 56) + 8 * v16) floatValue];
      v24 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_26EE1FCF4(v14, v13);
      v27 = *(v4 + 16);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_31;
      }

      if (*(v4 + 24) < v30)
      {
        v36 = v26;
        sub_26EE39B10(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_26EE1FCF4(v14, v13);
        v32 = v31 & 1;
        v26 = v36;
        if ((v36 & 1) != v32)
        {
          goto LABEL_33;
        }

LABEL_21:
        v21 = v4;
        if (v26)
        {
          goto LABEL_22;
        }

        goto LABEL_25;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v39 = v25;
      v37 = v26;
      sub_26EE3A0C0();
      v25 = v39;
      v21 = v4;
      if (v37)
      {
LABEL_22:
        *(v21[7] + 4 * v25) = v24;

        goto LABEL_23;
      }

LABEL_25:
      v21[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v21[6] + 16 * v25);
      *v33 = v14;
      v33[1] = v13;
      *(v21[7] + 4 * v25) = v24;

      v34 = v21[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_32;
      }

      v21[2] = v35;
      v4 = v21;
    }

    else
    {
      v18 = sub_26EE1FCF4(v14, v13);
      if (v19)
      {
        v20 = v18;
        v21 = v4;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_26EE3A0C0();
          v21 = v4;
        }

        v22 = *(v21[6] + 16 * v20 + 8);

        sub_26EE39DB4(v20, v21);

LABEL_23:

        v4 = v21;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      goto LABEL_29;
    }

    v7 = *(v3 + 64 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_26EF3B86C();
  __break(1u);
  return result;
}

uint64_t sub_26EE4C808()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 160);
  v11 = *(v0 + 152);
  v12 = *(v0 + 176);
  v13 = *(v0 + 168);
  v14 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
  sub_26EF3AB0C();
  sub_26EE540BC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E0, &qword_26EF3E8C8);
  sub_26EF3AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
  sub_26EF3AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77F0, &qword_26EF3E8D8);
  sub_26EF3AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7808, &qword_26EF3E8F0);
  sub_26EF3AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7810, &qword_26EF3E8F8);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE4C9C4@<X0>(void *a1@<X8>)
{
  result = sub_26EF39C7C();
  *a1 = v3;
  return result;
}

uint64_t sub_26EE4CA18()
{
  v2 = sub_26EF383AC();
  *(v1 + 512) = v2;
  v3 = *(v2 - 8);
  *(v1 + 520) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 528) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7818, &qword_26EF44380) - 8) + 64) + 15;
  *(v1 + 536) = swift_task_alloc();
  v6 = sub_26EF383FC();
  *(v1 + 544) = v6;
  v7 = *(v6 - 8);
  *(v1 + 552) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 560) = swift_task_alloc();
  v9 = *(v0 + 176);
  *(v1 + 176) = *(v0 + 160);
  *(v1 + 192) = v9;
  *(v1 + 208) = *(v0 + 192);
  v10 = *(v0 + 112);
  *(v1 + 112) = *(v0 + 96);
  *(v1 + 128) = v10;
  v11 = *(v0 + 144);
  *(v1 + 144) = *(v0 + 128);
  *(v1 + 160) = v11;
  v12 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v12;
  v13 = *(v0 + 80);
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = v13;
  v14 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v14;
  sub_26EF3B2DC();
  *(v1 + 568) = sub_26EF3B2CC();
  v16 = sub_26EF3B29C();
  *(v1 + 576) = v16;
  *(v1 + 584) = v15;

  return MEMORY[0x2822009F8](sub_26EE4CBD8, v16, v15);
}

uint64_t sub_26EE4CBD8()
{
  v1 = *(v0 + 32);
  *(v0 + 216) = *(v0 + 16);
  *(v0 + 232) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](v2);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  *(v0 + 592) = v3;
  *(v0 + 600) = v4;
  if (v4)
  {
    sub_26EF380CC();
    *(v0 + 608) = sub_26EF380BC();
    v5 = *(MEMORY[0x277D70100] + 4);
    v14 = (*MEMORY[0x277D70100] + MEMORY[0x277D70100]);
    v6 = swift_task_alloc();
    *(v0 + 616) = v6;
    *v6 = v0;
    v6[1] = sub_26EE4CD40;
    v7 = *(v0 + 536);

    return v14(v7, v3, v4);
  }

  else
  {
    v9 = *(v0 + 568);

    v10 = *(v0 + 560);
    v11 = *(v0 + 536);
    v12 = *(v0 + 528);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_26EE4CD40()
{
  v1 = *v0;
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v7 = *v0;

  v4 = *(v1 + 584);
  v5 = *(v1 + 576);

  return MEMORY[0x2822009F8](sub_26EE4CE84, v5, v4);
}

uint64_t sub_26EE4CE84()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 600);
    v5 = *(v0 + 568);

    sub_26EE14578(v3, &qword_2806C7818, &qword_26EF44380);
    v6 = *(v0 + 560);
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v13 = *(v0 + 512);
    (*(v1 + 32))(*(v0 + 560), v3, v2);
    *(v0 + 296) = *(v0 + 152);
    *(v0 + 211) = 1;
    *(v0 + 624) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
    sub_26EF3AB0C();
    sub_26EF382FC();
    v14 = sub_26EF382CC();
    (*(v12 + 8))(v11, v13);
    v15 = *(v0 + 88);
    *(v0 + 264) = v15;
    *(v0 + 328) = v15;
    *(v0 + 210) = (v14 & 1) == 0;
    sub_26EF3AB0C();
    v16 = *(MEMORY[0x277D70280] + 4);
    v17 = swift_task_alloc();
    *(v0 + 632) = v17;
    *v17 = v0;
    v17[1] = sub_26EE4D0C8;
    v18 = *(v0 + 560);

    return MEMORY[0x2821D6E60]();
  }
}

uint64_t sub_26EE4D0C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 632);
  v10 = *v2;
  v3[80] = a1;
  v3[81] = v1;

  if (v1)
  {
    v5 = v3[75];

    v6 = v3[73];
    v7 = v3[72];
    v8 = sub_26EE4D6B0;
  }

  else
  {
    v6 = v3[73];
    v7 = v3[72];
    v8 = sub_26EE4D1F0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

id sub_26EE4D1F0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  *(v0 + 360) = *(v0 + 264);
  sub_26EF3AAFC();
  if ((*(v0 + 209) & 1) == 0 && v1 && (v3 = [v1 remoteProcessIdentifier], v3))
  {
    v4 = v3;
    result = [objc_opt_self() defaultManager];
    if (!result)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = [result containingAppForPlugInWithPid_];

    v8 = *(v0 + 648);
    if (v7)
    {
      v9 = sub_26EF3B0FC();
      v11 = v10;
      v12 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];

      *(v0 + 344) = *(v0 + 168);
      *(v0 + 496) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7808, &qword_26EF3E8F0);
      sub_26EF3AB0C();
      v13 = objc_allocWithZone(MEMORY[0x277CC1E70]);
      v14 = sub_26EE5117C(v9, v11, 0);
      if (v8)
      {
      }

      else if (v14)
      {
        *(v0 + 312) = *(v0 + 184);
        *(v0 + 504) = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7810, &qword_26EF3E8F8);
        sub_26EF3AB0C();
      }
    }
  }

  else
  {
    v15 = *(v0 + 648);
  }

  v16 = *(v0 + 640);
  *(v0 + 392) = *(v0 + 72);
  *(v0 + 456) = v16;
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
  result = sub_26EF3AB0C();
  if (!v1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = *(v0 + 568);
  v19 = v17;

  v20 = sub_26EF3B0BC();
  v21 = [v19 messageChannelFor_];

  v22 = [objc_allocWithZone(MEMORY[0x277D703C0]) initWithMessageChannel_];
  swift_unknownObjectRelease();
  v23 = *(v0 + 136);
  *(v0 + 408) = v23;
  *(v0 + 424) = v23;
  *(v0 + 472) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77F0, &qword_26EF3E8D8);
  sub_26EF3AB0C();
  *(v0 + 248) = *(v0 + 408);
  sub_26EF3AAFC();
  v24 = *(v0 + 464);
  if (v24)
  {
    v25 = *(v0 + 560);
    sub_26EF382BC();
    v26 = sub_26EF3B0BC();

    [v24 prewarmWithVoice_];
  }

  *(v0 + 440) = *(v0 + 408);
  sub_26EF3AAFC();
  v27 = *(v0 + 480);
  v28 = *(v0 + 600);
  if (v27)
  {
    v29 = *(v0 + 592);
    v30 = *(v0 + 600);
    v31 = sub_26EF3B0BC();

    v32 = [v27 defaultSettingsForVoice_];

    sub_26EE1FAB8(0, &qword_2806C7820, 0x277CCABB0);
    v33 = sub_26EF3B02C();
  }

  else
  {
    v34 = *(v0 + 600);

    v33 = sub_26EE540BC(MEMORY[0x277D84F90]);
  }

  v35 = *(v0 + 560);
  v36 = *(v0 + 552);
  v37 = *(v0 + 544);
  *(v0 + 376) = *(v0 + 104);
  *(v0 + 488) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E0, &qword_26EF3E8C8);
  sub_26EF3AB0C();
  *(swift_task_alloc() + 16) = v0 + 16;
  sub_26EF3AEAC();
  sub_26EF3992C();

  (*(v36 + 8))(v35, v37);
  v38 = *(v0 + 560);
  v39 = *(v0 + 536);
  v40 = *(v0 + 528);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_26EE4D6B0()
{
  v1 = v0[81];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];

  (*(v4 + 8))(v3, v5);

  v6 = v0[70];
  v7 = v0[67];
  v8 = v0[66];

  v9 = v0[1];

  return v9();
}

void sub_26EE4D768()
{
  v1 = v0[11];
  v69 = v0[10];
  v70 = v1;
  v71 = *(v0 + 192);
  v2 = v0[7];
  *&v65[16] = v0[6];
  v66 = v2;
  v3 = v0[9];
  v67 = v0[8];
  v68 = v3;
  v4 = v0[3];
  v62 = v0[2];
  v63 = v4;
  v5 = v0[5];
  v64 = v0[4];
  *v65 = v5;
  v6 = v0[1];
  v60 = *v0;
  v61 = v6;
  v46 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
  sub_26EF3AAFC();
  if (!aBlock[0])
  {
    return;
  }

  v7 = [aBlock[0] parameterTree];

  if (!v7)
  {
    return;
  }

  v8 = [v7 allParameters];

  sub_26EE1FAB8(0, &qword_2806C7600, 0x277CEFD30);
  v9 = sub_26EF3B20C();

  if (v9 >> 62)
  {
    v10 = sub_26EF3B79C();
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_30:

    v56 = v69;
    v57 = v70;
    v58 = v71;
    v52 = *&v65[16];
    v53 = v66;
    v54 = v67;
    v55 = v68;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v51 = *v65;
    v46 = v60;
    v47 = v61;
    sub_26EE4DE98();
    return;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_5:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v72 = v62;
    v73 = v63;
    while (1)
    {
      if (v12)
      {
        v21 = MEMORY[0x2743837E0](v11, v9);
      }

      else
      {
        v21 = *(v9 + 8 * v11 + 32);
      }

      v22 = v21;
      v46 = v72;
      *&v47 = v73;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
      MEMORY[0x274382CF0](aBlock, v23);
      v24 = aBlock[0];
      if (aBlock[0])
      {
        v25 = [v22 identifier];
        v26 = sub_26EF3B0FC();
        v28 = v27;

        if (v24[2])
        {
          v29 = sub_26EE1FCF4(v26, v28);
          v31 = v30;

          if (v31)
          {
            v32 = *(v24[7] + 8 * v29);

            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      v32 = 0;
LABEL_21:
      [v22 value];
      v34 = v33;
      sub_26EF384DC();
      if (v34 == v35)
      {
        if (v32)
        {
LABEL_8:
          [v32 floatValue];
        }

        else
        {
          v36 = [v22 identifier];
          v37 = sub_26EF3B0FC();
          v39 = v38;

          v46 = *&v65[8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E0, &qword_26EF3E8C8);
          sub_26EF3AAFC();
          v40 = aBlock[0];
          if (*(aBlock[0] + 2))
          {
            v41 = v12;
            v42 = sub_26EE1FCF4(v37, v39);
            v44 = v43;

            if (v44)
            {
              v45 = *(v40[7] + 8 * v42);

              [v45 floatValue];
            }

            else
            {
            }

            v12 = v41;
          }

          else
          {
          }
        }

        [v22 setValue_];
        goto LABEL_10;
      }

      if (v32)
      {
        goto LABEL_8;
      }

LABEL_10:
      ++v11;
      v13 = swift_allocObject();
      v14 = v70;
      *(v13 + 176) = v69;
      *(v13 + 192) = v14;
      *(v13 + 208) = v71;
      v15 = v66;
      *(v13 + 112) = *&v65[16];
      *(v13 + 128) = v15;
      v16 = v68;
      *(v13 + 144) = v67;
      *(v13 + 160) = v16;
      v17 = v63;
      *(v13 + 48) = v62;
      *(v13 + 64) = v17;
      v18 = *v65;
      *(v13 + 80) = v64;
      *(v13 + 96) = v18;
      v19 = v61;
      *(v13 + 16) = v60;
      *(v13 + 32) = v19;
      aBlock[4] = sub_26EE54230;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26EE4E6B0;
      aBlock[3] = &block_descriptor_0;
      v20 = _Block_copy(aBlock);
      sub_26EE5426C(&v60, &v46);

      [v22 tokenByAddingParameterObserver_];
      _Block_release(v20);

      if (v10 == v11)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
}

uint64_t sub_26EE4DC48()
{
  v2 = v0[7];
  v1 = v0[8];
  v14 = v0[13];
  v15 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
  result = sub_26EF3AAFC();
  if (!(v13 >> 62))
  {
    v4 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  result = sub_26EF3B79C();
  v4 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v12 = v4;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2743837E0](v5);
      }

      else
      {
        v6 = *(v13 + 8 * v5 + 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
      sub_26EF3AAFC();
      if (v13 && (v7 = [v13 parameterTree], v13, v7))
      {
        v8 = [v7 parameterWithAddress_];

        if (v8)
        {
          v9 = [v8 value];
          v10 = *(*v6 + 248);
          if (v11 != (v10)(v9))
          {
            v10();
            [v8 setValue_];
          }

          v4 = v12;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v5;
    }

    while (v4 != v5);
  }

  __break(1u);
  return result;
}

void sub_26EE4DE98()
{
  v54 = sub_26EF3850C();
  v1 = *(v54 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v54, v3);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v66 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
  sub_26EF3AAFC();
  v7 = v63;
  if (v63)
  {
    v8 = [v63 parameterTree];

    if (v8)
    {
      v9 = [v8 allParameters];

      sub_26EE1FAB8(0, &qword_2806C7600, 0x277CEFD30);
      v10 = sub_26EF3B20C();

      v11 = v10;
      if (v10 >> 62)
      {
        goto LABEL_46;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v11 = v49)
      {
        v13 = 0;
        v58 = v5;
        v59 = v11 & 0xC000000000000001;
        v50 = v11 + 32;
        v51 = v11 & 0xFFFFFFFFFFFFFF8;
        v52 = v1 + 1;
        v55 = i;
        v56 = v11;
        v57 = v6;
        while (1)
        {
          if (v59)
          {
            v15 = MEMORY[0x2743837E0](v13);
          }

          else
          {
            if (v13 >= *(v51 + 16))
            {
              goto LABEL_44;
            }

            v15 = *(v50 + 8 * v13);
          }

          v16 = v15;
          v17 = __OFADD__(v13, 1);
          v18 = v13 + 1;
          if (v17)
          {
            break;
          }

          v60 = v18;
          *&v66 = v5;
          *(&v66 + 1) = v6;
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
          sub_26EF3AAFC();
          v6 = v63;
          v61 = v19;
          v5 = v63 & 0xFFFFFFFFFFFFFF8;
          if (v63 >> 62)
          {
            v20 = sub_26EF3B79C();
          }

          else
          {
            v20 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v21 = -v20;
          v22 = 4;
          while (1)
          {
            if (v21 + v22 == 4)
            {

              v27 = v53;
              sub_26EF3B41C();
              v28 = sub_26EF384FC();
              v30 = v29;
              (*v52)(v27, v54);
              v31 = [v16 address];
              [v16 value];
              v33 = v32;
              v34 = [v16 identifier];
              v35 = sub_26EF3B0FC();
              v37 = v36;

              v38 = type metadata accessor for AUParameterViewModel(0);
              v39 = *(v38 + 48);
              v40 = *(v38 + 52);
              v41 = swift_allocObject();
              v1 = v16;
              sub_26EF3803C();
              *(v41 + 16) = v28;
              *(v41 + 24) = v30;
              *(v41 + 32) = v31;
              *(v41 + 40) = v33;
              *(v41 + 48) = v35;
              *(v41 + 56) = v37;
              *(v41 + 64) = v1;
              v6 = v57;
              v5 = v58;
              *&v66 = v58;
              *(&v66 + 1) = v57;

              v42 = sub_26EF3AAFC();
              MEMORY[0x2743832B0](v42);
              if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v48 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_26EF3B22C();
              }

              sub_26EF3B25C();
              v63 = v5;
              v64 = v6;
              v62 = v65;
              sub_26EF3AB0C();

              goto LABEL_7;
            }

            v1 = (v22 - 4);
            if ((v6 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x2743837E0](v22 - 4, v6);
              v23 = v24;
            }

            else
            {
              if (v1 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

              v23 = *(v6 + 8 * v22);
            }

            v25 = (*(*v23 + 200))(v24);
            v26 = [v16 address];

            if (v25 == v26)
            {
              break;
            }

            ++v22;
            if (__OFADD__(v1, 1))
            {
              goto LABEL_41;
            }
          }

          v6 = v57;
          v5 = v58;
          *&v66 = v58;
          *(&v66 + 1) = v57;
          sub_26EF3AAFC();
          if ((v63 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x2743837E0](v22 - 4, v63);
          }

          else
          {
            if (v1 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v43 = *(v63 + 8 * v22);
          }

          v45 = (*(*v43 + 248))(v44);

          [v16 value];
          if (v45 == v46)
          {

LABEL_7:
            v14 = v55;
            v11 = v56;
            goto LABEL_8;
          }

          *&v66 = v5;
          *(&v66 + 1) = v6;
          sub_26EF3AAFC();
          if ((v63 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x2743837E0](v22 - 4, v63);
          }

          else
          {
            if (v1 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v47 = *(v63 + 8 * v22);
          }

          v14 = v55;
          v1 = v56;

          (*(*v47 + 256))([v16 value]);

          v11 = v1;
LABEL_8:
          v13 = v60;
          if (v60 == v14)
          {
            goto LABEL_47;
          }
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v49 = v11;
        i = sub_26EF3B79C();
      }

LABEL_47:
    }
  }
}

uint64_t sub_26EE4E4C0(uint64_t a1, float a2)
{
  v15 = *(v2 + 112);
  v16 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
  sub_26EF3AAFC();
  if (v17 >> 62)
  {
LABEL_20:
    v5 = sub_26EF3B79C();
  }

  else
  {
    v5 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = -v5;
  v7 = 4;
  while (1)
  {
    if (v6 + v7 == 4)
    {
    }

    v8 = v7 - 4;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2743837E0](v7 - 4);
      v9 = v10;
    }

    else
    {
      if (v8 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v9 = *(v17 + 8 * v7);
    }

    v11 = (*(*v9 + 200))(v10);

    if (v11 == a1)
    {
      break;
    }

    ++v7;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_19;
    }
  }

  result = sub_26EF3AAFC();
  if ((v17 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x2743837E0](v7 - 4);
    goto LABEL_17;
  }

  if (v8 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v17 + 8 * v7);

LABEL_17:

    (*(*v13 + 256))(v14, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE4E6B0(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_26EE4E714()
{
  v35 = *(v0 + 40);
  v36 = *(v0 + 32);
  v1 = *(v0 + 48);
  v33 = *(v0 + 96);
  v34 = *(v0 + 88);
  v37 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
  sub_26EF3AAFC();
  if (!v38)
  {
    return;
  }

  v2 = [v38 parameterTree];

  if (!v2)
  {
    return;
  }

  v3 = [v2 allParameters];

  sub_26EE1FAB8(0, &qword_2806C7600, 0x277CEFD30);
  v4 = sub_26EF3B20C();

  if (v4 >> 62)
  {
    v5 = sub_26EF3B79C();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_26:

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_5:
  v6 = v5 - 1;
  if (v5 >= 1)
  {
    v7 = 0;
    if ((v4 & 0xC000000000000001) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    for (i = MEMORY[0x2743837E0](v7, v4); ; i = *(v4 + 8 * v7 + 32))
    {
      v9 = i;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
      MEMORY[0x274382CF0](&v38, v10);
      v11 = v38;
      if (v38)
      {
        v12 = [v9 identifier];
        v13 = sub_26EF3B0FC();
        v15 = v14;

        if (v11[2])
        {
          v16 = sub_26EE1FCF4(v13, v15);
          v18 = v17;

          if (v18)
          {
            v19 = *(v11[7] + 8 * v16);

            [v19 floatValue];
            v21 = v20;
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v22 = [v9 identifier];
      v23 = sub_26EF3B0FC();
      v25 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E0, &qword_26EF3E8C8);
      sub_26EF3AAFC();
      v26 = v38;
      if (*(v38 + 2))
      {
        v27 = sub_26EE1FCF4(v23, v25);
        v29 = v28;

        if (v29)
        {
          v30 = *(v26[7] + 8 * v27);

          [v30 floatValue];
          v21 = v31;

          v19 = 0;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v19 = 0;
      v21 = 0.0;
LABEL_20:
      [v9 value];
      if (*&v32 != v21)
      {
        *&v32 = v21;
        [v9 setValue_];
      }

      if (v6 == v7)
      {
        goto LABEL_26;
      }

      ++v7;
      if ((v4 & 0xC000000000000001) != 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      ;
    }
  }

  __break(1u);
}

void sub_26EE4EA6C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_26EE1FCF4(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_26EE1FAB8(0, &qword_2806C7820, 0x277CCABB0);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_26EF3B5AC();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t TTSPerVoiceSettingsAUParamsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7828, &qword_26EF3E910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7830, &qword_26EF3E918);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v66 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7838, &qword_26EF3E920);
  v13 = *(v12 - 8);
  v70 = v12;
  v71 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v67 = &v65 - v16;
  v17 = v1[11];
  v85 = v1[10];
  v86 = v17;
  v87 = *(v1 + 192);
  v18 = v1[7];
  v82[0] = v1[6];
  v82[1] = v18;
  v19 = v1[9];
  v83 = v1[8];
  v84 = v19;
  v20 = v1[3];
  v78 = v1[2];
  v79 = v20;
  v21 = v1[5];
  v80 = v1[4];
  v81 = v21;
  v22 = v1[1];
  v76 = *v1;
  v77 = v22;
  sub_26EE4F1E4(&v76, v6);
  v23 = swift_allocObject();
  v24 = v79;
  *(v23 + 48) = v78;
  *(v23 + 64) = v24;
  v25 = v82[1];
  *(v23 + 112) = v82[0];
  *(v23 + 128) = v25;
  v26 = v81;
  *(v23 + 80) = v80;
  *(v23 + 96) = v26;
  *(v23 + 208) = v87;
  v27 = v86;
  *(v23 + 176) = v85;
  *(v23 + 192) = v27;
  v28 = v84;
  *(v23 + 144) = v83;
  *(v23 + 160) = v28;
  v29 = v77;
  *(v23 + 16) = v76;
  *(v23 + 32) = v29;
  v30 = &v6[*(v2 + 36)];
  *v30 = 0;
  *(v30 + 1) = 0;
  *(v30 + 2) = sub_26EE547E8;
  *(v30 + 3) = v23;
  v75 = *(v82 + 8);
  sub_26EE5426C(&v76, &v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
  sub_26EF3AAFC();
  *&v75 = v73;
  v31 = swift_allocObject();
  v32 = v86;
  *(v31 + 176) = v85;
  *(v31 + 192) = v32;
  *(v31 + 208) = v87;
  v33 = v82[1];
  *(v31 + 112) = v82[0];
  *(v31 + 128) = v33;
  v34 = v84;
  *(v31 + 144) = v83;
  *(v31 + 160) = v34;
  v35 = v79;
  *(v31 + 48) = v78;
  *(v31 + 64) = v35;
  v36 = v81;
  *(v31 + 80) = v80;
  *(v31 + 96) = v36;
  v37 = v77;
  *(v31 + 16) = v76;
  *(v31 + 32) = v37;
  sub_26EE5426C(&v76, &v73);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B0, &qword_26EF3E860);
  v39 = sub_26EE54870();
  v40 = sub_26EE54D54();
  sub_26EF3A90C();

  sub_26EE14578(v6, &qword_2806C7828, &qword_26EF3E910);
  v73 = v76;
  v74 = v77;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](&v75, v41);
  v42 = swift_allocObject();
  v43 = v86;
  *(v42 + 176) = v85;
  *(v42 + 192) = v43;
  *(v42 + 208) = v87;
  v44 = v82[1];
  *(v42 + 112) = v82[0];
  *(v42 + 128) = v44;
  v45 = v84;
  *(v42 + 144) = v83;
  *(v42 + 160) = v45;
  v46 = v79;
  *(v42 + 48) = v78;
  *(v42 + 64) = v46;
  v47 = v81;
  *(v42 + 80) = v80;
  *(v42 + 96) = v47;
  v48 = v77;
  *(v42 + 16) = v76;
  *(v42 + 32) = v48;
  sub_26EE5426C(&v76, &v73);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78E0, &qword_26EF40680);
  *&v73 = v2;
  *(&v73 + 1) = v38;
  *&v74 = v39;
  *(&v74 + 1) = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = sub_26EE54E10();
  v52 = v67;
  v53 = v68;
  v54 = v66;
  sub_26EF3A90C();

  (*(v69 + 8))(v54, v53);
  v73 = v78;
  *&v74 = v79;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  MEMORY[0x274382CF0](&v75, v55);
  v56 = swift_allocObject();
  v57 = v86;
  *(v56 + 176) = v85;
  *(v56 + 192) = v57;
  *(v56 + 208) = v87;
  v58 = v82[1];
  *(v56 + 112) = v82[0];
  *(v56 + 128) = v58;
  v59 = v84;
  *(v56 + 144) = v83;
  *(v56 + 160) = v59;
  v60 = v79;
  *(v56 + 48) = v78;
  *(v56 + 64) = v60;
  v61 = v81;
  *(v56 + 80) = v80;
  *(v56 + 96) = v61;
  v62 = v77;
  *(v56 + 16) = v76;
  *(v56 + 32) = v62;
  sub_26EE5426C(&v76, &v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7800, &qword_26EF3E8E8);
  *&v73 = v53;
  *(&v73 + 1) = v49;
  *&v74 = OpaqueTypeConformance2;
  *(&v74 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  sub_26EE54EB0();
  v63 = v70;
  sub_26EF3A90C();

  return (*(v71 + 8))(v52, v63);
}

uint64_t sub_26EE4F1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = *(a1 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v131 != 1)
  {
    v127 = a2;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7880, &qword_26EF3E940);
    v42 = *(*(v126 - 8) + 64);
    MEMORY[0x28223BE20](v126, v43);
    v45 = &v114 - v44;
    v128 = *(a1 + 72);
    sub_26EF3AAFC();
    if (v131 == 1)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7890, &qword_26EF3E948);
      v125 = &v114;
      v47 = *(v46 - 8);
      v48 = *(v47 + 64);
      MEMORY[0x28223BE20](v46, v49);
      v51 = &v114 - v50;
      v128 = *(a1 + 104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
      sub_26EF3AAFC();
      KeyPath = swift_getKeyPath();
      v52 = swift_allocObject();
      v53 = *(a1 + 176);
      *(v52 + 176) = *(a1 + 160);
      *(v52 + 192) = v53;
      *(v52 + 208) = *(a1 + 192);
      v54 = *(a1 + 112);
      *(v52 + 112) = *(a1 + 96);
      *(v52 + 128) = v54;
      v55 = *(a1 + 144);
      *(v52 + 144) = *(a1 + 128);
      *(v52 + 160) = v55;
      v56 = *(a1 + 48);
      *(v52 + 48) = *(a1 + 32);
      *(v52 + 64) = v56;
      v57 = *(a1 + 80);
      *(v52 + 80) = *(a1 + 64);
      *(v52 + 96) = v57;
      v58 = *(a1 + 16);
      *(v52 + 16) = *a1;
      *(v52 + 32) = v58;
      sub_26EE5426C(a1, &v128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B0, &qword_26EF3E860);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7968, &qword_26EF3ED80);
      sub_26EE154C8(&qword_2806C7970, &qword_2806C77B0, &qword_26EF3E860);
      v59 = type metadata accessor for AUParamView(255);
      v60 = sub_26EE52938(&qword_2806C7898, type metadata accessor for AUParamView);
      *&v128 = v59;
      *(&v128 + 1) = MEMORY[0x277D83A90];
      v129 = v60;
      v130 = MEMORY[0x277D83AC0];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_26EF3ACEC();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7940, &qword_26EF3ED60);
      v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v61, v63);
      (*(v47 + 16))(&v114 - v64, v51, v46);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78A8, &qword_26EF3E950);
      sub_26EE54B08();
      sub_26EE54C00();
      sub_26EF3A06C();
      (*(v47 + 8))(v51, v46);
LABEL_14:
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7948, &qword_26EF3ED68);
      v108 = (*(*(v107 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v107, v109);
      sub_26EE13B88(v45, &v114 - v110, &qword_2806C7880, &qword_26EF3E940);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7950, &qword_26EF3ED70);
      v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7868, &unk_26EF41660);
      v112 = sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660);
      *&v128 = v111;
      *(&v128 + 1) = v112;
      swift_getOpaqueTypeConformance2();
      sub_26EE54A7C();
      sub_26EF3A06C();
      return sub_26EE14578(v45, &qword_2806C7880, &qword_26EF3E940);
    }

    KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78A8, &qword_26EF3E950);
    v65 = (*(*(KeyPath - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](KeyPath, v66);
    v68 = &v114 - v67;
    v128 = *(a1 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7808, &qword_26EF3E8F0);
    sub_26EF3AAFC();
    v69 = v131;
    if (v131)
    {
      v128 = *(a1 + 168);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7810, &qword_26EF3E8F8);
      sub_26EF3AAFC();
      v70 = v131;
      if (v131)
      {
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7938, &qword_26EF3ED58);
        v123 = &v114;
        v121 = *(v122 - 1);
        v71 = v121[8];
        MEMORY[0x28223BE20](v122, v72);
        v118 = &v114 - v73;
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78B0, &qword_26EF3E958);
        v120 = &v114;
        v119 = *(v117 - 1);
        v74 = *(v119 + 8);
        MEMORY[0x28223BE20](v117, v75);
        v77 = &v114 - v76;
        v78 = swift_allocObject();
        *(v78 + 16) = v70;
        MEMORY[0x28223BE20](v78, v79);
        *(&v114 - 4) = v69;
        *(&v114 - 3) = a1;
        OpaqueTypeConformance2 = v70;
        v116 = v70;
        v125 = &v114;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7958, &qword_26EF3ED78);
        sub_26EE154C8(&qword_2806C7960, &qword_2806C7958, &qword_26EF3ED78);
        sub_26EF3AB4C();
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78B8, &unk_26EF3E960);
        v115 = &v114;
        v81 = *(v80 - 8);
        v82 = *(v81 + 64);
        MEMORY[0x28223BE20](v80, v83);
        v85 = &v114 - v84;
        sub_26EF3A09C();
        sub_26EE154C8(&qword_2806C78C0, &qword_2806C78B0, &qword_26EF3E958);
        sub_26EE154C8(&qword_2806C78C8, &qword_2806C78B8, &unk_26EF3E960);
        v86 = v118;
        v87 = v69;
        v88 = v117;
        sub_26EF3A65C();

        (*(v81 + 8))(v85, v80);
        (*(v119 + 1))(v77, v88);
        v89 = v121;
        v90 = v122;
        (v121[4])(v68, v86, v122);
        (v89[7])(v68, 0, 1, v90);
LABEL_13:
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7940, &qword_26EF3ED60);
        v104 = (*(*(v103 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v103, v105);
        sub_26EE13B88(v68, &v114 - v106, &qword_2806C78A8, &qword_26EF3E950);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7890, &qword_26EF3E948);
        sub_26EE54B08();
        sub_26EE54C00();
        sub_26EF3A06C();
        sub_26EE14578(v68, &qword_2806C78A8, &qword_26EF3E950);
        goto LABEL_14;
      }
    }

    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7938, &qword_26EF3ED58);
    (*(*(v102 - 8) + 56))(v68, 1, 1, v102);
    goto LABEL_13;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7950, &qword_26EF3ED70);
  v126 = *(v4 - 8);
  v5 = *(v126 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v125 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = &v114;
  MEMORY[0x28223BE20](v7, v9);
  v122 = &v114 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7868, &unk_26EF41660);
  v121 = &v114;
  KeyPath = v11;
  v120 = *(v11 - 8);
  v12 = (v120[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v13);
  v119 = &v114 - v14;
  sub_26EF397DC();
  sub_26EF3B2DC();
  sub_26EE5426C(a1, &v128);
  v15 = sub_26EF3B2CC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  v18 = *(a1 + 176);
  *(v16 + 192) = *(a1 + 160);
  *(v16 + 208) = v18;
  *(v16 + 224) = *(a1 + 192);
  v19 = *(a1 + 112);
  *(v16 + 128) = *(a1 + 96);
  *(v16 + 144) = v19;
  v20 = *(a1 + 144);
  *(v16 + 160) = *(a1 + 128);
  *(v16 + 176) = v20;
  v21 = *(a1 + 48);
  *(v16 + 64) = *(a1 + 32);
  *(v16 + 80) = v21;
  v22 = *(a1 + 80);
  *(v16 + 96) = *(a1 + 64);
  *(v16 + 112) = v22;
  v23 = *(a1 + 16);
  *(v16 + 32) = *a1;
  *(v16 + 48) = v23;
  v118 = sub_26EF3B30C();
  v24 = *(v118 - 1);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v118, v26);
  v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v114 - v27;
  sub_26EF3B2EC();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v116 = sub_26EF39A1C();
    v117 = &v114;
    v115 = *(v116 - 1);
    v29 = v115[8];
    MEMORY[0x28223BE20](v116, v30);
    v127 = a2;
    v32 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v128 = 0;
    *(&v128 + 1) = 0xE000000000000000;
    sub_26EF3B70C();

    *&v128 = 0xD000000000000045;
    *(&v128 + 1) = 0x800000026EF45700;
    v131 = 364;
    v33 = sub_26EF3B7FC();
    MEMORY[0x274383240](v33);

    v114 = &v114;
    MEMORY[0x28223BE20](v34, v35);
    v36 = &v114 - v27;
    v37 = &v114 - v27;
    v38 = v118;
    (*(v24 + 16))(v36, v37, v118);
    sub_26EF39A0C();
    (*(v24 + 8))(v28, v38);
    v39 = v122;
    v40 = KeyPath;
    (v120[4])(v122, v119, KeyPath);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7910, &qword_26EF3E970);
    (v115[4])(&v39[*(v41 + 36)], v32, v116);
  }

  else
  {
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7918, qword_26EF3E978);
    v39 = v122;
    v92 = &v122[*(v91 + 36)];
    v93 = sub_26EF3990C();
    (*(v24 + 32))(&v92[*(v93 + 20)], &v114 - v27, v118);
    *v92 = &unk_26EF3ED90;
    *(v92 + 1) = v16;
    v40 = KeyPath;
    (v120[4])(v39, v119, KeyPath);
  }

  v94 = v126;
  v95 = v125;
  (*(v126 + 32))(v125, v39, v4);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7948, &qword_26EF3ED68);
  v97 = (*(*(v96 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96, v98);
  (*(v94 + 16))(&v114 - v99, v95, v4);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7880, &qword_26EF3E940);
  v100 = sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660);
  *&v128 = v40;
  *(&v128 + 1) = v100;
  swift_getOpaqueTypeConformance2();
  sub_26EE54A7C();
  sub_26EF3A06C();
  return (*(v94 + 8))(v95, v4);
}

uint64_t sub_26EE504AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 216) = sub_26EF3B2DC();
  *(v3 + 224) = sub_26EF3B2CC();
  v5 = *(a3 + 176);
  *(v3 + 176) = *(a3 + 160);
  *(v3 + 192) = v5;
  *(v3 + 208) = *(a3 + 192);
  v6 = *(a3 + 112);
  *(v3 + 112) = *(a3 + 96);
  *(v3 + 128) = v6;
  v7 = *(a3 + 144);
  *(v3 + 144) = *(a3 + 128);
  *(v3 + 160) = v7;
  v8 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v8;
  v9 = *(a3 + 80);
  *(v3 + 80) = *(a3 + 64);
  *(v3 + 96) = v9;
  v10 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v10;
  v11 = swift_task_alloc();
  *(v3 + 232) = v11;
  *v11 = v3;
  v11[1] = sub_26EE50590;

  return sub_26EE4CA18();
}

uint64_t sub_26EE50590()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v7 = *v0;

  v5 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE506CC, v5, v4);
}

uint64_t sub_26EE506CC()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EE5072C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AUParamView(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *a1;
  type metadata accessor for AUParameterViewModel(0);
  sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel);

  v10 = sub_26EF3ADBC();
  v21 = (*(*v9 + 248))(v10);
  v11 = swift_allocObject();
  v12 = *(a2 + 176);
  *(v11 + 176) = *(a2 + 160);
  *(v11 + 192) = v12;
  *(v11 + 208) = *(a2 + 192);
  v13 = *(a2 + 112);
  *(v11 + 112) = *(a2 + 96);
  *(v11 + 128) = v13;
  v14 = *(a2 + 144);
  *(v11 + 144) = *(a2 + 128);
  *(v11 + 160) = v14;
  v15 = *(a2 + 48);
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = v15;
  v16 = *(a2 + 80);
  *(v11 + 80) = *(a2 + 64);
  *(v11 + 96) = v16;
  v17 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v17;
  *(v11 + 216) = v9;

  sub_26EE5426C(a2, v20);
  sub_26EE52938(&qword_2806C7898, type metadata accessor for AUParamView);
  sub_26EF3A90C();

  return sub_26EE55F48(v8);
}

void sub_26EE50938(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_26EE509B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v54 = a4;
  v7 = sub_26EF39DDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7980, &qword_26EF3EDA0);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v49 - v19;
  v21 = *MEMORY[0x277D1B240];
  v22 = objc_opt_self();
  v23 = a1;
  v24 = [v22 imageDescriptorNamed_];
  v58 = *(a2 + 192);
  v25 = *(a2 + 184);
  v57 = v25;
  if (v58 == 1)
  {
    v26 = v25;
  }

  else
  {

    sub_26EF3B46C();
    v27 = a3;
    v28 = sub_26EF3A36C();
    sub_26EF3880C();

    a3 = v27;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(&v57, &qword_2806C7988, &qword_26EF3EDA8);
    (*(v8 + 8))(v12, v7);
    v26 = v55;
  }

  [v24 setScale_];
  [v24 setDrawBorder_];
  v29 = v20;
  v50 = v20;
  sub_26EF3868C();
  v30 = [a3 localizedName];
  *&v31 = COERCE_DOUBLE(sub_26EF3B0FC());
  v33 = v32;

  v55 = *&v31;
  v56 = v33;
  sub_26EE12538();
  v34 = sub_26EF3A5DC();
  v36 = v35;
  LOBYTE(v33) = v37;
  v39 = v38;
  v41 = v51;
  v40 = v52;
  v42 = *(v52 + 16);
  v43 = v29;
  v44 = v53;
  v42(v51, v43, v53);
  v45 = v54;
  v42(v54, v41, v44);
  v46 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7990, &qword_26EF3EDB0) + 48)];
  *v46 = v34;
  *(v46 + 1) = v36;
  LOBYTE(v33) = v33 & 1;
  v46[16] = v33;
  *(v46 + 3) = v39;
  sub_26EE13B20(v34, v36, v33);
  v47 = *(v40 + 8);

  v47(v50, v44);
  sub_26EE12ABC(v34, v36, v33);

  return (v47)(v41, v44);
}

uint64_t sub_26EE50D88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v19[-v5 - 8];
  v7 = sub_26EF3B30C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_26EF3B2DC();
  sub_26EE5426C(a1, v19);
  v8 = sub_26EF3B2CC();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = *(a1 + 176);
  *(v9 + 192) = *(a1 + 160);
  *(v9 + 208) = v11;
  *(v9 + 224) = *(a1 + 192);
  v12 = *(a1 + 112);
  *(v9 + 128) = *(a1 + 96);
  *(v9 + 144) = v12;
  v13 = *(a1 + 144);
  *(v9 + 160) = *(a1 + 128);
  *(v9 + 176) = v13;
  v14 = *(a1 + 48);
  *(v9 + 64) = *(a1 + 32);
  *(v9 + 80) = v14;
  v15 = *(a1 + 80);
  *(v9 + 96) = *(a1 + 64);
  *(v9 + 112) = v15;
  v16 = *(a1 + 16);
  *(v9 + 32) = *a1;
  *(v9 + 48) = v16;
  sub_26EE2C388(0, 0, v6, &unk_26EF3ED48, v9);
}

uint64_t sub_26EE50EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  sub_26EF3B2DC();
  v4[28] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[29] = v6;
  v4[30] = v5;

  return MEMORY[0x2822009F8](sub_26EE50F80, v6, v5);
}

uint64_t sub_26EE50F80()
{
  v1 = *(v0 + 216);
  sub_26EE4C808();
  *(v0 + 16) = *v1;
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 80) = v4;
  *(v0 + 32) = v2;
  *(v0 + 48) = v3;
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  v7 = *(v1 + 128);
  *(v0 + 128) = *(v1 + 112);
  *(v0 + 144) = v7;
  *(v0 + 96) = v5;
  *(v0 + 112) = v6;
  v8 = *(v1 + 144);
  v9 = *(v1 + 160);
  v10 = *(v1 + 176);
  *(v0 + 208) = *(v1 + 192);
  *(v0 + 176) = v9;
  *(v0 + 192) = v10;
  *(v0 + 160) = v8;
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_26EE51058;

  return sub_26EE4CA18();
}

uint64_t sub_26EE51058()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v6 = *v0;

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_26EE56488, v4, v3);
}

id sub_26EE5117C(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26EF3B0BC();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_26EF37D1C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

double sub_26EE51258@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26EE1FCF4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26EE51D7C();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 32) = *(v14 + 32);
    sub_26EE51880(v9, v12);
    *v4 = v12;
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

uint64_t sub_26EE5130C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79B8, &qword_26EF3EDD0);
  v41 = a2;
  result = sub_26EF3B7BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_26EE563E8(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26EE515DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7998, &qword_26EF3EDB8);
  v39 = a2;
  result = sub_26EF3B7BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26EE51880(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26EF3B6AC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_26EF3B87C();

      sub_26EF3B16C();
      v15 = sub_26EF3B8CC();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26EE51A3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26EF3B6AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26EF3B87C();

      sub_26EF3B16C();
      v13 = sub_26EF3B8CC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26EE51BEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26EE1FCF4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26EE5130C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26EE1FCF4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_26EF3B86C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26EE51D7C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_26EE5638C(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

void *sub_26EE51D7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79B8, &qword_26EF3EDD0);
  v2 = *v0;
  v3 = sub_26EF3B7AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_26EE563E8(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_26EE51F30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7998, &qword_26EF3EDB8);
  v2 = *v0;
  v3 = sub_26EF3B7AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26EE5209C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (result + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {
        v9 = *v6;

        v10 = __OFSUB__(v4--, 1);
        if (v10)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v11 = v2[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79E0, &unk_26EF3EE10);
        v14 = swift_allocObject();
        v15 = (_swift_stdlib_malloc_size(v14) - 32) / 24;
        v14[2] = v13;
        v14[3] = 2 * v15;
        v16 = v14 + 4;
        v17 = v2[3] >> 1;
        v5 = &v14[3 * v17 + 4];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (v2[2])
        {
          if (v14 != v2 || v16 >= &v2[3 * v17 + 4])
          {
            memmove(v16, v2 + 4, 24 * v17);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v14;
        v10 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v10)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v20 = v2[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v10 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v10)
    {
      goto LABEL_30;
    }

    v2[2] = v22;
  }

  return v2;
}

uint64_t sub_26EE5224C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 296))();
  v6 = v5;
  if (v4 == (*(*a2 + 296))() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_26EF3B82C();

    if ((v9 & 1) == 0)
    {
LABEL_13:
      v17 = 0;
      return v17 & 1;
    }
  }

  v11 = (*(*a1 + 200))(v10);
  if (v11 != (*(*a2 + 200))())
  {
    goto LABEL_13;
  }

  v12 = (*(*a1 + 248))();
  if (v12 != (*(*a2 + 248))())
  {
    goto LABEL_13;
  }

  v13 = (*(*a1 + 152))();
  v15 = v14;
  if (v13 == (*(*a2 + 152))() && v15 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_26EF3B82C();
  }

  return v17 & 1;
}

unint64_t sub_26EE524C8()
{
  result = qword_2806C76D0;
  if (!qword_2806C76D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7628, &qword_26EF3E760);
    sub_26EE52554();
    sub_26EE52850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C76D0);
  }

  return result;
}

unint64_t sub_26EE52554()
{
  result = qword_2806C76D8;
  if (!qword_2806C76D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7660, &qword_26EF3E798);
    sub_26EE525D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C76D8);
  }

  return result;
}

unint64_t sub_26EE525D8()
{
  result = qword_2806C76E0;
  if (!qword_2806C76E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7648, &qword_26EF3E780);
    sub_26EE526F4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7650, &qword_26EF3E788);
    sub_26EF39E1C();
    sub_26EE154C8(&qword_2806C76F0, &qword_2806C7650, &qword_26EF3E788);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C76E0);
  }

  return result;
}

unint64_t sub_26EE526F4()
{
  result = qword_2806C76E8;
  if (!qword_2806C76E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7640, &qword_26EF3E778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7658, &qword_26EF3E790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7650, &qword_26EF3E788);
    sub_26EF39E1C();
    sub_26EE154C8(&qword_2806C76F0, &qword_2806C7650, &qword_26EF3E788);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C76E8);
  }

  return result;
}

unint64_t sub_26EE52850()
{
  result = qword_2806C76F8;
  if (!qword_2806C76F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7610, &qword_26EF3E748);
    sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70);
    sub_26EE52938(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C76F8);
  }

  return result;
}

uint64_t sub_26EE52938(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26EE52980()
{
  result = qword_2806C7700;
  if (!qword_2806C7700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7698, &qword_26EF3E7D0);
    sub_26EE52A0C();
    sub_26EE52CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7700);
  }

  return result;
}

unint64_t sub_26EE52A0C()
{
  result = qword_2806C7708;
  if (!qword_2806C7708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7690, &qword_26EF3E7C8);
    sub_26EE52A98();
    sub_26EE52BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7708);
  }

  return result;
}

unint64_t sub_26EE52A98()
{
  result = qword_2806C7710;
  if (!qword_2806C7710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C76C8, &qword_26EF3E800);
    sub_26EE52B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7710);
  }

  return result;
}

unint64_t sub_26EE52B1C()
{
  result = qword_2806C7718;
  if (!qword_2806C7718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7720, &qword_26EF3E808);
    sub_26EE52BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7718);
  }

  return result;
}

unint64_t sub_26EE52BA8()
{
  result = qword_2806C7728;
  if (!qword_2806C7728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C76B8, &qword_26EF3E7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C76A8, &qword_26EF3E7E0);
    sub_26EE154C8(&qword_2806C7730, &qword_2806C76A8, &qword_26EF3E7E0);
    swift_getOpaqueTypeConformance2();
    sub_26EE52938(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7728);
  }

  return result;
}

unint64_t sub_26EE52CD4()
{
  result = qword_2806C7738;
  if (!qword_2806C7738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7670, &qword_26EF3E7A8);
    sub_26EE52BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7738);
  }

  return result;
}

unint64_t sub_26EE52D58()
{
  result = qword_2806C7740;
  if (!qword_2806C7740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7630, &qword_26EF3E768);
    sub_26EE524C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7740);
  }

  return result;
}

uint64_t sub_26EE52DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AUParamView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE52E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AUParamView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE52EB0@<X0>(BOOL *a1@<X8>)
{
  v2 = *(type metadata accessor for AUParamView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v4 = sub_26EF3AD9C();
  v5 = (*(*v7 + 248))(v4);

  *a1 = v5 == 1.0;
  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for AUParamView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE53064(unsigned __int8 *a1)
{
  v2 = *(type metadata accessor for AUParamView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  LODWORD(a1) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v4 = sub_26EF3AD9C();
  v5.n128_u64[0] = 0;
  if (a1)
  {
    v5.n128_f32[0] = 1.0;
  }

  (*(*v7 + 256))(v4, v5);
}

uint64_t sub_26EE53144@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v4 = sub_26EF3AD9C();
  (*(*v9 + 152))(v4);

  sub_26EE12538();
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_26EE531F8()
{
  sub_26EE5209C(*(v0 + 16));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79C8, &qword_26EF3EE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79D0, &qword_26EF3EE08);
  sub_26EE154C8(&qword_2806C79D8, &qword_2806C79C8, &qword_26EF3EE00);
  swift_getOpaqueTypeConformance2();
  return sub_26EF3ACEC();
}

unint64_t sub_26EE53338()
{
  result = qword_2806C7750;
  if (!qword_2806C7750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7748, &qword_26EF3E810);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7750);
  }

  return result;
}

uint64_t sub_26EE53400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7648, &qword_26EF3E780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE53470()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7658, &qword_26EF3E790);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7650, &qword_26EF3E788);
  sub_26EF39E1C();
  sub_26EE154C8(&qword_2806C76F0, &qword_2806C7650, &qword_26EF3E788);
  swift_getOpaqueTypeConformance2();
  return sub_26EF3A6BC();
}

uint64_t sub_26EE535BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v8 = sub_26EF3AD9C();
  v9 = (*(*v32 + 152))(v8);

  v33 = v9;
  sub_26EE12538();
  v10 = sub_26EF3A5DC();
  v12 = v11;
  v31 = v13;
  v15 = v14;
  v16 = sub_26EE17094() & 1;
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v16, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26EF3C6B0;
  v19 = sub_26EF3AD9C();
  v20 = (*(*v33 + 248))(v19);

  if ((LODWORD(v20) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v20 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v20 < 9.2234e18)
  {
    v22 = sub_26EF3B7FC();
    v24 = v23;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_26EE1EFBC();
    *(v18 + 32) = v22;
    *(v18 + 40) = v24;
    sub_26EF3B10C();

    v25 = sub_26EF3A5DC();
    v27 = v26;
    v29 = v28 & 1;
    *a3 = v10;
    *(a3 + 8) = v12;
    *(a3 + 16) = v31 & 1;
    *(a3 + 24) = v15;
    *(a3 + 32) = v25;
    *(a3 + 40) = v26;
    *(a3 + 48) = v28 & 1;
    *(a3 + 56) = v30;
    sub_26EE13B20(v10, v12, v31 & 1);

    sub_26EE13B20(v25, v27, v29);

    sub_26EE12ABC(v25, v27, v29);

    sub_26EE12ABC(v10, v12, v31 & 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(type metadata accessor for AUParamView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE5397C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AUParamView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_26EE53A20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v4 = sub_26EF3AD9C();
  v5 = (*(*v26 + 152))(v4);

  v27 = v5;
  sub_26EE12538();
  v6 = sub_26EF3A5DC();
  v8 = v7;
  v25 = v9;
  v11 = v10;
  v12 = sub_26EE17094() & 1;
  v13._countAndFlagsBits = 0x4D524F465F4D5057;
  v13._object = 0xEA00000000005441;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v13, v12, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26EF3C6B0;
  v15 = sub_26EF3AD9C();
  v16 = (*(*v27 + 248))(v15);

  if ((LODWORD(v16) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < 9.2234e18)
  {
    v18 = MEMORY[0x277D83C10];
    *(v14 + 56) = MEMORY[0x277D83B88];
    *(v14 + 64) = v18;
    *(v14 + 32) = v16;
    sub_26EF3B0CC();

    v19 = sub_26EF3A5DC();
    v21 = v20;
    v23 = v22 & 1;
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v25 & 1;
    *(a1 + 24) = v11;
    *(a1 + 32) = v19;
    *(a1 + 40) = v20;
    *(a1 + 48) = v22 & 1;
    *(a1 + 56) = v24;
    sub_26EE13B20(v6, v8, v25 & 1);

    sub_26EE13B20(v19, v21, v23);

    sub_26EE12ABC(v19, v21, v23);

    sub_26EE12ABC(v6, v8, v25 & 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26EE53CFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_26EF3A28C();

    return sub_26EF39ABC();
  }

  else
  {
    sub_26EF39B8C();
    swift_getWitnessTable();
    sub_26EF3A1AC();
    sub_26EF39ABC();
    sub_26EF3B5CC();
    swift_getWitnessTable();
    sub_26EF39B8C();
    swift_getWitnessTable();
    sub_26EF3A1AC();
    return sub_26EF39ABC();
  }
}

uint64_t sub_26EE53E60(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_26EF3A28C();
    sub_26EF39ABC();
  }

  else
  {
    sub_26EF39B8C();
    swift_getWitnessTable();
    sub_26EF3A1AC();
    sub_26EF39ABC();
    sub_26EF3B5CC();
    swift_getWitnessTable();
    sub_26EF39B8C();
    swift_getWitnessTable();
    sub_26EF3A1AC();
    sub_26EF39ABC();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_26EE54068()
{
  result = qword_2806C7788;
  if (!qword_2806C7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7788);
  }

  return result;
}

unint64_t sub_26EE540BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7998, &qword_26EF3EDB8);
    v3 = sub_26EF3B7CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26EE1FCF4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26EE541C0()
{
  v1 = *(v0 + 16);
  sub_26EE4D768();
  v3 = *(v1 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE54224(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26EE542A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79B8, &qword_26EF3EDD0);
    v3 = sub_26EF3B7CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26EE13B88(v4, &v16, &qword_2806C79C0, &qword_26EF3EDD8);
      v5 = v16;
      v6 = v17;
      result = sub_26EE1FCF4(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26EE543DC()
{
  v39 = v0[5];
  v40 = v0[4];
  v1 = v0[13];
  v2 = v0[14];
  v38 = v0[11];
  v37 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E0, &qword_26EF3E8C8);
  sub_26EF3AAFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
  sub_26EF3AAFC();
  isUniquelyReferenced_nonNull_native = v46;
  if (v46 >> 62)
  {
LABEL_33:
    v4 = sub_26EF3B79C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v43 = isUniquelyReferenced_nonNull_native;
      v44 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v41 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v42 = v4;
      do
      {
        if (v44)
        {
          v7 = MEMORY[0x2743837E0](v5, isUniquelyReferenced_nonNull_native);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            goto LABEL_31;
          }

          v7 = *(isUniquelyReferenced_nonNull_native + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v45 = v8;
        v9 = (*(*v7 + 296))();
        v11 = v10;
        v12 = (*(*v7 + 248))();
        v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        *&v14 = v12;
        v15 = [v13 initWithFloat_];
        if (!v15)
        {
          v25 = sub_26EE1FCF4(v9, v11);
          v27 = v26;

          if (v27)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_26EE51F30();
            }

            v6 = *(*(v46 + 48) + 16 * v25 + 8);

            sub_26EE51A3C(v25, v46);
          }

          goto LABEL_6;
        }

        v16 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = sub_26EE1FCF4(v9, v11);
        v19 = *(v46 + 16);
        v20 = (v17 & 1) == 0;
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_30;
        }

        v22 = v17;
        if (*(v46 + 24) >= v21)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v17 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            sub_26EE51F30();
            if ((v22 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          sub_26EE515DC(v21, isUniquelyReferenced_nonNull_native);
          v23 = sub_26EE1FCF4(v9, v11);
          if ((v22 & 1) != (v24 & 1))
          {
            result = sub_26EF3B86C();
            __break(1u);
            return result;
          }

          v18 = v23;
          if ((v22 & 1) == 0)
          {
LABEL_26:
            *(v46 + 8 * (v18 >> 6) + 64) |= 1 << v18;
            v30 = (*(v46 + 48) + 16 * v18);
            *v30 = v9;
            v30[1] = v11;
            *(*(v46 + 56) + 8 * v18) = v16;

            v31 = *(v46 + 16);
            v32 = __OFADD__(v31, 1);
            v33 = v31 + 1;
            if (v32)
            {
              goto LABEL_32;
            }

            *(v46 + 16) = v33;
            goto LABEL_28;
          }
        }

        v28 = *(v46 + 56);
        v29 = *(v28 + 8 * v18);
        *(v28 + 8 * v18) = v16;

LABEL_28:
        v4 = v42;
        isUniquelyReferenced_nonNull_native = v43;
LABEL_6:
        ++v5;
      }

      while (v45 != v4);
    }
  }

  sub_26EF3AAFC();
  sub_26EE4EA6C(v46, v46);
  v35 = v34;

  if (v35)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  return sub_26EF3AC3C();
}

uint64_t sub_26EE547E8()
{
  v2 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  return sub_26EE4C808();
}

unint64_t sub_26EE54870()
{
  result = qword_2806C7840;
  if (!qword_2806C7840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7828, &qword_26EF3E910);
    sub_26EE548FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7840);
  }

  return result;
}

unint64_t sub_26EE548FC()
{
  result = qword_2806C7848;
  if (!qword_2806C7848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7850, &qword_26EF3E928);
    sub_26EE54980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7848);
  }

  return result;
}

unint64_t sub_26EE54980()
{
  result = qword_2806C7858;
  if (!qword_2806C7858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7860, &unk_26EF3E930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7868, &unk_26EF41660);
    sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660);
    swift_getOpaqueTypeConformance2();
    sub_26EE54A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7858);
  }

  return result;
}

unint64_t sub_26EE54A7C()
{
  result = qword_2806C7878;
  if (!qword_2806C7878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7880, &qword_26EF3E940);
    sub_26EE54B08();
    sub_26EE54C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7878);
  }

  return result;
}

unint64_t sub_26EE54B08()
{
  result = qword_2806C7888;
  if (!qword_2806C7888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7890, &qword_26EF3E948);
    type metadata accessor for AUParamView(255);
    sub_26EE52938(&qword_2806C7898, type metadata accessor for AUParamView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7888);
  }

  return result;
}

unint64_t sub_26EE54C00()
{
  result = qword_2806C78A0;
  if (!qword_2806C78A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78A8, &qword_26EF3E950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78B0, &qword_26EF3E958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78B8, &unk_26EF3E960);
    sub_26EE154C8(&qword_2806C78C0, &qword_2806C78B0, &qword_26EF3E958);
    sub_26EE154C8(&qword_2806C78C8, &qword_2806C78B8, &unk_26EF3E960);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C78A0);
  }

  return result;
}

unint64_t sub_26EE54D54()
{
  result = qword_2806C78D0;
  if (!qword_2806C78D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C77B0, &qword_26EF3E860);
    sub_26EE52938(&qword_2806C78D8, type metadata accessor for AUParameterViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C78D0);
  }

  return result;
}

unint64_t sub_26EE54E10()
{
  result = qword_2806C78E8;
  if (!qword_2806C78E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78E0, &qword_26EF40680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C78E8);
  }

  return result;
}

unint64_t sub_26EE54EB0()
{
  result = qword_2806C78F0;
  if (!qword_2806C78F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7800, &qword_26EF3E8E8);
    sub_26EE56304(&qword_2806C78F8, &qword_2806C7900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C78F0);
  }

  return result;
}

uint64_t sub_26EE54F6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26EE1FAB8(255, &qword_2806C7820, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26EE54FC0(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_26EF39A1C();
  }

  else
  {
    sub_26EF3990C();
  }

  return sub_26EF39ABC();
}

uint64_t sub_26EE55028(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_26EF39A1C();
    sub_26EF39ABC();
    sub_26EE5511C();
  }

  else
  {
    sub_26EF3990C();
    sub_26EF39ABC();
    sub_26EE52938(&qword_2806C6708, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_26EE5511C()
{
  result = qword_2806C7908;
  if (!qword_2806C7908)
  {
    sub_26EF39A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7908);
  }

  return result;
}

uint64_t sub_26EE5520C()
{
  result = sub_26EF3804C();
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

uint64_t sub_26EE552E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26EE55374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26EE553F0()
{
  sub_26EE5545C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26EE5545C()
{
  if (!qword_2806C7920)
  {
    type metadata accessor for AUParameterViewModel(255);
    v0 = sub_26EF3ADDC();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C7920);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26EE554D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26EE55518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_26EE555C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
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

uint64_t sub_26EE5560C(uint64_t result, int a2, int a3)
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26EE55694()
{
  result = qword_2806C7928;
  if (!qword_2806C7928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7930, &unk_26EF3ED30);
    sub_26EE52980();
    sub_26EE52D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7928);
  }

  return result;
}

uint64_t sub_26EE55720()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7780, &qword_26EF3E848);
  sub_26EF39B0C();
  sub_26EE154C8(&qword_2806C7790, &qword_2806C7780, &qword_26EF3E848);
  sub_26EE52938(&qword_2806C7798, MEMORY[0x277CDDAB8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EE55800()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7838, &qword_26EF3E920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7800, &qword_26EF3E8E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7830, &qword_26EF3E918);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78E0, &qword_26EF40680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7828, &qword_26EF3E910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C77B0, &qword_26EF3E860);
  sub_26EE54870();
  sub_26EE54D54();
  swift_getOpaqueTypeConformance2();
  sub_26EE54E10();
  swift_getOpaqueTypeConformance2();
  sub_26EE54EB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EE55944()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE15538;

  return sub_26EE50EE8(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE559D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26EE55A0C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 bundleIdentifier];
    v5 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    v7[4] = CGSizeMake;
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_26EE50938;
    v7[3] = &block_descriptor_122;
    v6 = _Block_copy(v7);
    [v3 openApplicationWithBundleIdentifier:v4 usingConfiguration:v5 completionHandler:v6];
    _Block_release(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26EE55B34@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = sub_26EF39E4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7978, &qword_26EF3ED98);
  return sub_26EE509B0(v3, v4, v5, (a1 + *(v6 + 44)));
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);

  v8 = *(v0 + 96);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 120);

  v12 = *(v0 + 128);

  v13 = *(v0 + 144);

  v14 = *(v0 + 160);

  v15 = *(v0 + 176);

  v16 = *(v0 + 192);

  sub_26EE54224(*(v0 + 200), *(v0 + 208));

  return MEMORY[0x2821FE8E8](v0, 209, 7);
}

uint64_t objectdestroy_92Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  v8 = *(v0 + 96);

  v9 = *(v0 + 112);

  v10 = *(v0 + 120);

  v11 = *(v0 + 128);

  v12 = *(v0 + 136);

  v13 = *(v0 + 144);

  v14 = *(v0 + 160);

  v15 = *(v0 + 176);

  v16 = *(v0 + 192);

  v17 = *(v0 + 208);

  sub_26EE54224(*(v0 + 216), *(v0 + 224));

  return MEMORY[0x2821FE8E8](v0, 225, 7);
}

uint64_t sub_26EE55D70()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE05D7C;

  return sub_26EE504AC(v2, v3, v0 + 32);
}

uint64_t sub_26EE55E00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);

  v8 = *(v0 + 96);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 120);

  v12 = *(v0 + 128);

  v13 = *(v0 + 144);

  v14 = *(v0 + 160);

  v15 = *(v0 + 176);

  v16 = *(v0 + 192);

  sub_26EE54224(*(v0 + 200), *(v0 + 208));
  v17 = *(v0 + 216);

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_26EE55EE4()
{
  v12 = *(v0 + 176);
  v13 = *(v0 + 192);
  v14 = *(v0 + 208);
  v8 = *(v0 + 112);
  v9 = *(v0 + 128);
  v10 = *(v0 + 144);
  v11 = *(v0 + 160);
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  v6 = *(v0 + 80);
  v7 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return sub_26EE543DC();
}

uint64_t sub_26EE55F48(uint64_t a1)
{
  v2 = type metadata accessor for AUParamView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE55FE0@<X0>(void *a1@<X8>)
{
  v13 = *(v1 + 64);
  v14 = *(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  result = MEMORY[0x274382CF0](&v12, v3);
  v5 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v6 = *MEMORY[0x277D70438];
  v7 = sub_26EF3B0FC();
  if (!*(v5 + 16))
  {

    goto LABEL_7;
  }

  v9 = sub_26EE1FCF4(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_26EE563E8(*(v5 + 56) + 40 * v9, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A8, &qword_26EF3E858);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a1 = 0;
  }

  return result;
}

uint64_t objectdestroy_124Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26EE56154(uint64_t *a1)
{
  v2 = *a1;
  v11 = *(v1 + 64);
  *&v12 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  MEMORY[0x274382CF0](v14);
  if (v14[0])
  {
  }

  else
  {
    v3 = sub_26EE542A4(MEMORY[0x277D84F90]);
    v11 = *(v1 + 64);
    *&v12 = *(v1 + 80);
    v14[0] = v3;
    sub_26EF3AC3C();
  }

  v4 = TTSPerVoiceSettingsView.settings.modify(v14);
  if (!*v5)
  {
    return (v4)(v14, 0);
  }

  v6 = *MEMORY[0x277D70438];
  v7 = sub_26EF3B0FC();
  v9 = v8;
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A8, &qword_26EF3E858);
    sub_26EE56304(&qword_2806C79A0, &qword_2806C79A8);
    sub_26EF3B6BC();
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  sub_26EE4B4D8(&v11, v7, v9);
  return (v4)(v14, 0);
}

uint64_t sub_26EE56304(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C77A8, &qword_26EF3E858);
    sub_26EE54F6C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for VoiceInformationSection()
{
  result = qword_2806CBB40;
  if (!qword_2806CBB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE564D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70E8, &qword_26EF3DCA0);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v42 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v42 - v10;
  v12 = sub_26EF38DBC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A98, &qword_26EF3EF50);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v42 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AA0, &qword_26EF3EF58);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v32 = &v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v42 - v34;
  sub_26EE56948(&v42 - v34);
  v36 = type metadata accessor for VoiceInformationSection();
  sub_26EE13B88(a1 + *(v36 + 32), v11, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26EE14578(v11, &qword_2806C7088, &unk_26EF3E330);
LABEL_6:
    v38 = 1;
    goto LABEL_7;
  }

  (*(v13 + 32))(v17, v11, v12);
  if (sub_26EF38D8C() != 7)
  {
    (*(v13 + 8))(v17, v12);
    goto LABEL_6;
  }

  v37 = v42;
  sub_26EE5828C(v42);
  (*(v13 + 8))(v17, v12);
  sub_26EE14D98(v37, v26, &qword_2806C70E8, &qword_26EF3DCA0);
  v38 = 0;
LABEL_7:
  (*(v43 + 56))(v26, v38, 1, v44);
  sub_26EE13B88(v35, v32, &qword_2806C7AA0, &qword_26EF3EF58);
  sub_26EE13B88(v26, v23, &qword_2806C7A98, &qword_26EF3EF50);
  v39 = v45;
  sub_26EE13B88(v32, v45, &qword_2806C7AA0, &qword_26EF3EF58);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AA8, &qword_26EF3EF60);
  sub_26EE13B88(v23, v39 + *(v40 + 48), &qword_2806C7A98, &qword_26EF3EF50);
  sub_26EE14578(v26, &qword_2806C7A98, &qword_26EF3EF50);
  sub_26EE14578(v35, &qword_2806C7AA0, &qword_26EF3EF58);
  sub_26EE14578(v23, &qword_2806C7A98, &qword_26EF3EF50);
  return sub_26EE14578(v32, &qword_2806C7AA0, &qword_26EF3EF58);
}

uint64_t sub_26EE56948@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AB0, &qword_26EF3EF78);
  v2 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v3);
  v5 = v33 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AB8, &qword_26EF3EF80);
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v36, v8);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v33 - v14;
  v16 = sub_26EF38AAC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for VoiceInformationSection();
  sub_26EE13B88(v1 + *(v22 + 28), v15, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_26EE14578(v15, &qword_2806C7080, &unk_26EF3DBF0);
    return (*(v6 + 56))(v35, 1, 1, v36);
  }

  else
  {
    v24 = (*(v17 + 32))(v21, v15, v16);
    v33[4] = v33;
    MEMORY[0x28223BE20](v24, v25);
    v33[3] = &v33[-4];
    v33[-2] = v1;
    sub_26EE57AD4(v1, v5);
    v33[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AC0, &qword_26EF3EF88);
    v33[1] = sub_26EE5CDBC();
    v26 = type metadata accessor for RenameVoiceView();
    v27 = type metadata accessor for VoiceBankingSession();
    v28 = v35;
    v29 = v27;
    v30 = sub_26EE5CE6C(&qword_2806C7AE0, type metadata accessor for RenameVoiceView);
    v31 = sub_26EE5CE6C(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    v37 = v26;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    swift_getOpaqueTypeConformance2();
    sub_26EF3998C();
    v32 = v36;
    (*(v6 + 32))(v28, v10, v36);
    (*(v6 + 56))(v28, 0, 1, v32);
    return (*(v17 + 8))(v21, v16);
  }
}

uint64_t sub_26EE56DD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE56E4C()
{
  result = qword_2806C7A20;
  if (!qword_2806C7A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7A28, &qword_26EF3EE48);
    sub_26EE154C8(&qword_2806C7A30, &qword_2806C7A38, qword_26EF3EE50);
    sub_26EE3C584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7A20);
  }

  return result;
}

uint64_t sub_26EE56F04@<X0>(uint64_t a1@<X8>)
{
  v116 = a1;
  v2 = sub_26EF37FEC();
  v107 = *(v2 - 8);
  v108 = v2;
  v3 = *(v107 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v101 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v102 = &v97 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v109 = &v97 - v11;
  v12 = sub_26EF391EC();
  v105 = *(v12 - 8);
  v106 = v12;
  v13 = *(v105 + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v104 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v111 = &v97 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A58, &unk_26EF3EED0);
  v19 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112, v20);
  v114 = (&v97 - v21);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A38, qword_26EF3EE50);
  v22 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113, v23);
  v25 = &v97 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A18, &qword_26EF3EE40);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v115 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = &v97 - v34;
  v36 = sub_26EF38DBC();
  v37 = *(v36 - 8);
  v38 = *(v37 + 8);
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v97 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(type metadata accessor for VoiceInformationSection() + 32);
  v110 = v1;
  sub_26EE13B88(v1 + v42, v35, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v37 + 6))(v35, 1, v36) == 1)
  {
    sub_26EE14578(v35, &qword_2806C7088, &unk_26EF3E330);
    return (*(v27 + 56))(v116, 1, 1, v26);
  }

  v100 = v27;
  v103 = v26;
  v44 = *(v37 + 4);
  v99 = v36;
  v44(v41, v35, v36);
  v45 = sub_26EF38CFC();
  v46 = v116;
  if ((v45 & 1) == 0)
  {
    v51 = sub_26EF38D8C();
    v50 = v103;
    if (v51 == 7)
    {
      sub_26EF38D1C();
      v52 = v104;
      sub_26EF391BC();
      sub_26EE5CE6C(&qword_2806C7A60, MEMORY[0x277D70650]);
      v53 = v106;
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v119 == v117 && v120 == v118)
      {
        v54 = *(v105 + 8);
        v54(v52, v53);
        v54(v111, v53);

        goto LABEL_10;
      }

      LODWORD(v110) = sub_26EF3B82C();
      v55 = v41;
      v56 = v37;
      v57 = *(v105 + 8);
      v57(v52, v53);
      v57(v111, v53);
      v37 = v56;
      v41 = v55;

      if (v110)
      {
LABEL_10:
        sub_26EF38D3C();
        v58 = v109;
        sub_26EF37F3C();
        v59 = sub_26EF38D5C();
        MEMORY[0x28223BE20](v59, v60);
        *(&v97 - 2) = v58;
        v119 = sub_26EE58D88(sub_26EE5A9E8, (&v97 - 4), v61);

        sub_26EE5AA04(&v119);

        v62 = v119;
        v63 = sub_26EF37F2C();
        v65 = v64;
        if (v64)
        {
          v66 = v62[2];
          if (v66)
          {
            v111 = v37;
            v104 = v63;
            v67 = v107;
            v68 = v108;
            v69 = v62 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
            v70 = v102;
            v105 = *(v107 + 16);
            (v105)(v102, v69, v108);
            v98 = sub_26EF37F2C();
            v72 = v71;
            v106 = *(v67 + 8);
            v106(v70, v68);
            v110 = v72;
            if (v72)
            {
              if (v66 > v62[2])
              {
                __break(1u);

                __break(1u);
                return result;
              }

              v73 = v108;
              v74 = &v69[*(v107 + 72) * (v66 - 1)];
              v75 = v101;
              (v105)(v101, v74, v108);

              v76 = sub_26EF37F2C();
              v78 = v77;
              v106(v75, v73);
              if (v78)
              {
                v79 = sub_26EE17094();
                v80._object = 0x800000026EF45770;
                v81 = v79 & 1;
                v80._countAndFlagsBits = 0xD000000000000017;
                TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v80, v81, 0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
                v82 = swift_allocObject();
                *(v82 + 16) = xmmword_26EF3EE20;
                v83 = MEMORY[0x277D837D0];
                *(v82 + 56) = MEMORY[0x277D837D0];
                v84 = sub_26EE1EFBC();
                *(v82 + 32) = v104;
                *(v82 + 40) = v65;
                *(v82 + 96) = v83;
                *(v82 + 104) = v84;
                v85 = v98;
                *(v82 + 64) = v84;
                *(v82 + 72) = v85;
                *(v82 + 80) = v110;
                *(v82 + 136) = v83;
                *(v82 + 144) = v84;
                *(v82 + 112) = v76;
                *(v82 + 120) = v78;
                v86 = sub_26EF3B0CC();
                v88 = v87;

                v119 = v86;
                v120 = v88;
                sub_26EE12538();
                v78 = sub_26EF3A5DC();
                v72 = v89;
                v65 = (v90 & 1);
                v92 = v91;
                sub_26EE13B20(v78, v91, v90 & 1);
              }

              else
              {

                v92 = 0;
                v65 = 0;
                v72 = 0;
              }
            }

            else
            {

              v78 = 0;
              v92 = 0;
              v65 = 0;
            }

            v46 = v116;
            v37 = v111;
            goto LABEL_26;
          }

          v78 = 0;
          v92 = 0;
          v65 = 0;
        }

        else
        {

          v78 = 0;
          v92 = 0;
        }

        v72 = 0;
LABEL_26:
        v95 = v114;
        *v114 = v78;
        v95[1] = v92;
        v95[2] = v65;
        v95[3] = v72;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
        sub_26EE154C8(&qword_2806C7A30, &qword_2806C7A38, qword_26EF3EE50);
        sub_26EE3C584();
        v48 = v115;
        sub_26EF3A06C();
        sub_26EE5AAAC(v78, v92, v65, v72);
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A28, &qword_26EF3EE48);
        (*(*(v96 - 8) + 56))(v48, 0, 1, v96);
        (*(v107 + 8))(v109, v108);
        v94 = v100;
        v50 = v103;
        goto LABEL_18;
      }
    }

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A28, &qword_26EF3EE48);
    v48 = v115;
    (*(*(v93 - 8) + 56))(v115, 1, 1, v93);
    goto LABEL_17;
  }

  *v25 = sub_26EF39E4C();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A68, &unk_26EF3EEE0);
  sub_26EE58904(v41, v110, &v25[*(v47 + 44)]);
  sub_26EE13B88(v25, v114, &qword_2806C7A38, qword_26EF3EE50);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
  sub_26EE154C8(&qword_2806C7A30, &qword_2806C7A38, qword_26EF3EE50);
  sub_26EE3C584();
  v48 = v115;
  sub_26EF3A06C();
  sub_26EE14578(v25, &qword_2806C7A38, qword_26EF3EE50);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A28, &qword_26EF3EE48);
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  v50 = v103;
LABEL_17:
  v94 = v100;
LABEL_18:
  sub_26EE5A978(v48, v46);
  (*(v94 + 56))(v46, 0, 1, v50);
  return (*(v37 + 1))(v41, v99);
}

uint64_t sub_26EE57AD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = sub_26EF39DDC();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v32 - v11;
  v13 = sub_26EF37EDC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RenameVoiceView();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26EF38A7C();
  v25 = v24;
  v26 = MEMORY[0x274380B50]();
  sub_26EE777E8(v26);
  sub_26EE7784C(v12, v23, v25, v17, v22);
  v27 = *a1;
  if (*(a1 + 8) == 1)
  {
    v28 = v27;
  }

  else
  {
    v29 = *a1;

    sub_26EF3B46C();
    v30 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v27, 0);
    (*(v3 + 8))(v7, v33);
    v28 = v35;
  }

  type metadata accessor for VoiceBankingSession();
  sub_26EE5CE6C(&qword_2806C7AE0, type metadata accessor for RenameVoiceView);
  sub_26EE5CE6C(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3A67C();

  return sub_26EE5CEB4(v22);
}

uint64_t sub_26EE57DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v45 - v7;
  v9 = sub_26EF38AAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VoiceInformationSection();
  sub_26EE13B88(a1 + *(v15 + 28), v8, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_26EE14578(v8, &qword_2806C7080, &unk_26EF3DBF0);
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v53 = sub_26EF39E4C();
    v58 = 1;
    v24 = sub_26EE17094() & 1;
    v25._countAndFlagsBits = 0x454D414E5F4256;
    v25._object = 0xE700000000000000;
    v64 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v25, v24, 0);
    sub_26EE12538();
    v52 = v14;
    *&v46 = sub_26EF3A5DC();
    *&v45 = v26;
    LODWORD(v49) = v27;
    *&v47 = v28;
    v64._countAndFlagsBits = sub_26EF38A7C();
    v64._object = v29;
    v30 = sub_26EF3A5DC();
    v32 = v31;
    v34 = v33;
    v51 = v9;
    LODWORD(v64._countAndFlagsBits) = sub_26EF3A1DC();
    v35 = sub_26EF3A58C();
    v37 = v36;
    v50 = v10;
    v39 = v38;
    v41 = v40;
    sub_26EE12ABC(v30, v32, v34 & 1);

    LOBYTE(v30) = v49 & 1;
    LOBYTE(v64._countAndFlagsBits) = v30;
    LOBYTE(v59) = v49 & 1;
    v54[0] = 1;
    LOBYTE(v32) = v39 & 1;
    LOBYTE(v57[0]) = v39 & 1;
    LODWORD(v48) = 1;
    LODWORD(v49) = v39 & 1;
    v42 = v46;
    v43 = v45;
    sub_26EE13B20(v46, v45, v30);
    v44 = v47;

    sub_26EE13B20(v35, v37, v32);

    sub_26EE12ABC(v35, v37, v32);

    sub_26EE12ABC(v42, v43, v64._countAndFlagsBits);

    *(&v60 + 1) = v57[0];
    DWORD1(v60) = *(v57 + 3);
    *(&v61 + 9) = *v56;
    HIDWORD(v61) = *&v56[3];
    DWORD1(v63) = *&v55[3];
    *(&v63 + 1) = *v55;
    *&v59 = v42;
    *(&v59 + 1) = v43;
    v64._countAndFlagsBits = v42;
    v64._object = v43;
    LOBYTE(v60) = v30;
    *(&v60 + 1) = v44;
    *&v61 = 0;
    BYTE8(v61) = v48;
    *&v62 = v35;
    *(&v62 + 1) = v37;
    LOBYTE(v63) = v49;
    *(&v63 + 1) = v41;
    v65 = v30;
    *&v66[3] = *(v57 + 3);
    *v66 = v57[0];
    v67 = v44;
    v68 = 0;
    v69 = v48;
    *v70 = *v56;
    *&v70[3] = *&v56[3];
    v71 = v35;
    v72 = v37;
    v73 = v49;
    *&v74[3] = *&v55[3];
    *v74 = *v55;
    v75 = v41;
    sub_26EE13B88(&v59, v54, &qword_2806C7AE8, &qword_26EF3EF98);
    sub_26EE14578(&v64, &qword_2806C7AE8, &qword_26EF3EF98);
    v48 = v60;
    v49 = v59;
    v46 = v62;
    v47 = v61;
    v45 = v63;
    v18 = v58;
    result = (*(v50 + 8))(v52, v51);
    v23 = v45;
    v22 = v46;
    v21 = v47;
    v20 = v48;
    v19 = v49;
    v17 = v53;
  }

  *a2 = v17;
  *(a2 + 8) = 0;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 40) = v20;
  *(a2 + 56) = v21;
  *(a2 + 72) = v22;
  *(a2 + 88) = v23;
  return result;
}

uint64_t sub_26EE5828C@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for VoiceInformationSection();
  v63 = *(v2 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v64 = v5;
  v66 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v67 = v61 - v9;
  v10 = sub_26EF3873C();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v65 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = v61 - v17;
  v19 = sub_26EF38DBC();
  v20 = *(v19 - 8);
  v69 = v19;
  v70 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v68 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = v61 - v27;
  v29 = sub_26EF38AAC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v62 = v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = v61 - v35;
  sub_26EE13B88(v1 + *(v2 + 28), v28, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_26EE14578(v28, &qword_2806C7080, &unk_26EF3DBF0);
LABEL_8:
    v59 = 1;
    v57 = v72;
    v58 = v73;
    v53 = v71;
    return (*(v53 + 56))(v58, v59, 1, v57);
  }

  v37 = *(v30 + 32);
  v37(v36, v28, v29);
  sub_26EE13B88(v1 + *(v2 + 32), v18, &qword_2806C7088, &unk_26EF3E330);
  v38 = v69;
  if ((*(v70 + 48))(v18, 1, v69) == 1)
  {
    (*(v30 + 8))(v36, v29);
    sub_26EE14578(v18, &qword_2806C7088, &unk_26EF3E330);
    goto LABEL_8;
  }

  v39 = v1;
  v40 = v68;
  (*(v70 + 32))();
  if (sub_26EF38D8C() != 7)
  {
    (*(v70 + 8))(v40, v38);
    (*(v30 + 8))(v36, v29);
    goto LABEL_8;
  }

  v41 = sub_26EE17094() & 1;
  v42._countAndFlagsBits = 0x49564552505F4256;
  v42._object = 0xEA00000000005745;
  v43 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v42, v41, 0);
  v61[2] = v43._object;
  v61[3] = v43._countAndFlagsBits;
  v44 = sub_26EE59058();
  v61[0] = v45;
  v61[1] = v44;
  v46 = sub_26EF3961C();
  (*(*(v46 - 8) + 56))(v67, 1, 1, v46);
  v47 = v66;
  sub_26EE5C5D0(v39, v66);
  v48 = v62;
  (*(v30 + 16))(v62, v36, v29);
  v49 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v50 = (v64 + *(v30 + 80) + v49) & ~*(v30 + 80);
  v51 = swift_allocObject();
  sub_26EE5C86C(v47, v51 + v49);
  v37((v51 + v50), v48, v29);
  v52 = v65;
  sub_26EF3874C();
  (*(v70 + 8))(v68, v69);
  (*(v30 + 8))(v36, v29);
  v53 = v71;
  v54 = v73;
  v55 = v52;
  v56 = v72;
  (*(v71 + 32))(v73, v55, v72);
  v57 = v56;
  v58 = v54;
  v59 = 0;
  return (*(v53 + 56))(v58, v59, 1, v57);
}

uint64_t sub_26EE58904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v49 = a1;
  v50 = a3;
  v3 = sub_26EF3A2BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7868, &unk_26EF41660);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A70, &qword_26EF3EEF0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v47 - v23;
  sub_26EF397DC();
  sub_26EF3A2AC();
  sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660);
  sub_26EE5CE6C(&qword_2806C7A78, MEMORY[0x277CDE330]);
  sub_26EF3A63C();
  (*(v4 + 8))(v8, v3);
  (*(v10 + 8))(v14, v9);
  v25 = &v24[*(v16 + 44)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A80, &qword_26EF3EEF8) + 28);
  v27 = *MEMORY[0x277CDF440];
  v28 = sub_26EF396EC();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  KeyPath = swift_getKeyPath();
  v30 = v48;
  *v25 = KeyPath;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = *(*v31 + 88);
    v33 = *(v30 + 16);

    v32(v34);

    v51 = sub_26EF38D2C();
    v52 = v35;
    sub_26EE12538();
    v36 = sub_26EF3A5DC();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_26EE13B88(v24, v21, &qword_2806C7A70, &qword_26EF3EEF0);
    v43 = v50;
    sub_26EE13B88(v21, v50, &qword_2806C7A70, &qword_26EF3EEF0);
    v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A88, &unk_26EF3EF30) + 48);
    *v44 = v36;
    *(v44 + 8) = v38;
    *(v44 + 16) = v40 & 1;
    *(v44 + 24) = v42;
    sub_26EE13B20(v36, v38, v40 & 1);

    sub_26EE14578(v24, &qword_2806C7A70, &qword_26EF3EEF0);
    sub_26EE12ABC(v36, v38, v40 & 1);

    return sub_26EE14578(v21, &qword_2806C7A70, &qword_26EF3EEF0);
  }

  else
  {
    v46 = *(v30 + 24);
    type metadata accessor for VoiceBankingBatteryMonitor();
    sub_26EE5CE6C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE58D88(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v42 = sub_26EF37FEC();
  v7 = *(*(v42 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v42, v8);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = MEMORY[0x277D84F90];
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v3)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26EE5C2D8(0, *(v26 + 16) + 1, 1);
          v26 = v43;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_26EE5C2D8(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t sub_26EE59058()
{
  v1 = v0;
  v81 = sub_26EF37FEC();
  v79 = *(v81 - 8);
  v2 = *(v79 + 64);
  v4 = MEMORY[0x28223BE20](v81, v3);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v77 = &v69 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v80 = &v69 - v10;
  v11 = sub_26EF391EC();
  v78 = *(v11 - 1);
  v12 = *(v78 + 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v69 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v69 - v23;
  v25 = sub_26EF38DBC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for VoiceInformationSection();
  sub_26EE13B88(v1 + *(v31 + 32), v24, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    (*(v26 + 32))(v30, v24, v25);
    if (sub_26EF38CFC())
    {
      v32 = *(v1 + 16);
      if (v32)
      {
        v33 = *(*v32 + 88);

        v33(v34);

        v35 = sub_26EF38D2C();
        (*(v26 + 8))(v30, v25);
        return v35;
      }

LABEL_29:
      v68 = *(v1 + 24);
      type metadata accessor for VoiceBankingBatteryMonitor();
      sub_26EE5CE6C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor);
      sub_26EF39BFC();
      __break(1u);

      __break(1u);
      return result;
    }

    if (sub_26EF38D8C() == 7)
    {
      sub_26EF38D1C();
      sub_26EF391BC();
      sub_26EE5CE6C(&qword_2806C7A60, MEMORY[0x277D70650]);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v84[0] == v82 && v84[1] == v83)
      {
        v37 = *(v78 + 1);
        v37(v16, v11);
        v37(v19, v11);

        goto LABEL_12;
      }

      LODWORD(v75) = sub_26EF3B82C();
      v38 = *(v78 + 1);
      v38(v16, v11);
      v38(v19, v11);

      if (v75)
      {
LABEL_12:
        sub_26EF38D3C();
        v39 = v80;
        sub_26EF37F3C();
        v40 = sub_26EF38D5C();
        MEMORY[0x28223BE20](v40, v41);
        *(&v69 - 2) = v39;
        v84[0] = sub_26EE58D88(sub_26EE5CF10, (&v69 - 4), v42);

        sub_26EE5AA04(v84);

        v43 = v84[0];
        v44 = sub_26EF37F2C();
        if (v45)
        {
          v46 = v43[2];
          if (v46)
          {
            v75 = v45;
            v71 = v44;
            v47 = v79;
            v48 = *(v79 + 16);
            v49 = v77;
            v72 = v43 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
            v73 = v48;
            v1 = v81;
            (v48)(v77);
            v70 = sub_26EF37F2C();
            v51 = v50;
            v52 = *(v47 + 8);
            v11 = (v47 + 8);
            v77 = v11;
            v78 = v52;
            v52(v49, v1);
            v74 = v51;
            if (v51)
            {
              if (v46 > v43[2])
              {
                __break(1u);
                goto LABEL_29;
              }

              v53 = v79;
              v54 = v76;
              v55 = v81;
              v73(v76, &v72[*(v79 + 72) * (v46 - 1)], v81);

              v73 = sub_26EF37F2C();
              v57 = v56;
              v78(v54, v55);
              if (v57)
              {
                v58 = sub_26EE17094();
                v59._object = 0x800000026EF45770;
                v60 = v58 & 1;
                v59._countAndFlagsBits = 0xD000000000000017;
                TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v59, v60, 0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
                v61 = swift_allocObject();
                *(v61 + 16) = xmmword_26EF3EE20;
                v62 = MEMORY[0x277D837D0];
                *(v61 + 56) = MEMORY[0x277D837D0];
                v63 = sub_26EE1EFBC();
                v64 = v75;
                *(v61 + 32) = v71;
                *(v61 + 40) = v64;
                *(v61 + 96) = v62;
                *(v61 + 104) = v63;
                v65 = v70;
                *(v61 + 64) = v63;
                *(v61 + 72) = v65;
                v66 = v73;
                *(v61 + 80) = v74;
                *(v61 + 136) = v62;
                *(v61 + 144) = v63;
                *(v61 + 112) = v66;
                *(v61 + 120) = v57;
                v35 = sub_26EF3B0CC();

                (*(v26 + 8))(v30, v25);
                v78(v80, v81);
                return v35;
              }

              (*(v26 + 8))(v30, v25);

              v39 = v80;
              v67 = v81;
LABEL_23:
              (*(v53 + 8))(v39, v67);
              return 0;
            }

            (*(v26 + 8))(v30, v25);

            v39 = v80;
            v67 = v81;
LABEL_22:
            v53 = v79;
            goto LABEL_23;
          }

          (*(v26 + 8))(v30, v25);
        }

        else
        {
          (*(v26 + 8))(v30, v25);
        }

        v67 = v81;
        goto LABEL_22;
      }
    }

    (*(v26 + 8))(v30, v25);
    return 0;
  }

  sub_26EE14578(v24, &qword_2806C7088, &unk_26EF3E330);
  return 0;
}