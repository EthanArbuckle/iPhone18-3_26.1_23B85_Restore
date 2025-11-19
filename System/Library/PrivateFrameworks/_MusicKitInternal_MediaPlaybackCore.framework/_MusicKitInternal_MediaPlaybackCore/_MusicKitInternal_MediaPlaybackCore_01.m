void *sub_2752BC854(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB28, &unk_2752BE438);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2752BC98C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_2752BC9B8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (v6 = sub_2752BD478(), result = OUTLINED_FUNCTION_8(v6), a1 + *(v8 + 72) * a2 <= a3))
  {
    sub_2752BD478();
    OUTLINED_FUNCTION_6_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_6_1();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_2752BCA6C()
{
  result = qword_2809BFB48;
  if (!qword_2809BFB48)
  {
    sub_2752BD118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BFB48);
  }

  return result;
}

double OUTLINED_FUNCTION_5_2()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

id sub_2752BCB00()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2752BCB5C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MPCReportingLyricsViewEvent.song.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 modelSong];
  v4 = sub_2752BD628();
  if (v3)
  {
    return sub_2752BD308();
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
}

uint64_t sub_2752BCC5C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFD20, &qword_2752BE860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_2752BCEE4(a1, &v10 - v6);
  v8 = *a2;
  return MPCReportingLyricsViewEvent.song.setter(v7);
}

uint64_t MPCReportingLyricsViewEvent.song.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2752BD5F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFD20, &qword_2752BE860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  sub_2752BCEE4(a1, &v16 - v11);
  v13 = sub_2752BD628();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2752BCF54(v12);
    v14 = 0;
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CD8180], v4);
    v14 = sub_2752BD2F8();
    (*(v5 + 8))(v8, v4);
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  [v2 setModelSong_];

  return sub_2752BCF54(a1);
}

uint64_t sub_2752BCEE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFD20, &qword_2752BE860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752BCF54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFD20, &qword_2752BE860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*MPCReportingLyricsViewEvent.song.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFD20, &qword_2752BE860) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  a1[2] = v4;
  MPCReportingLyricsViewEvent.song.getter(v4);
  return sub_2752BD058;
}

void sub_2752BD058(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_2752BCEE4(v3, v2);
    MPCReportingLyricsViewEvent.song.setter(v2);
    sub_2752BCF54(v3);
  }

  else
  {
    MPCReportingLyricsViewEvent.song.setter(v3);
  }

  free(v3);

  free(v2);
}