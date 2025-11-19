uint64_t sub_22FAF5D18()
{
  v1 = *(v0[31] + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[31];
  if (!isUniquelyReferenced_nonNull_native || (v6 = *(v5 + 3) >> 1, v6 <= v1))
  {
    isUniquelyReferenced_nonNull_native = sub_22FAC2350(isUniquelyReferenced_nonNull_native, v1 + 1, 1, v0[31]);
    v5 = isUniquelyReferenced_nonNull_native;
    v6 = *(isUniquelyReferenced_nonNull_native + 3) >> 1;
  }

  if (v6 <= *(v5 + 2))
  {
    __break(1u);
    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v3, v4);
  }

  v7 = v0[28];
  v8 = v0[30] + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7560);
  swift_arrayInitWithCopy();

  ++*(v5 + 2);
  if (v8 != v7)
  {
    ++v0[30];
    v0[31] = v5;
    v11 = v0[21];
    v0[32] = MEMORY[0x231908810]();
    isUniquelyReferenced_nonNull_native = sub_22FAF5B2C;
    v3 = v11;
    v4 = 0;

    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v3, v4);
  }

  v9 = v0[1];

  return v9(v5);
}

uint64_t sub_22FAF5EA0()
{
  v1 = v0[36];
  v2 = v0[29];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8);
  inited = swift_initStackObject();
  v0[37] = inited;
  *(inited + 16) = xmmword_22FCD1800;
  v7 = type metadata accessor for SocialGroupsFTETask();
  v8 = swift_allocObject();
  *(v8 + 56) = 0xD000000000000013;
  *(v8 + 64) = 0x800000022FCE33B0;

  sub_22FCC67E4();
  v9 = sub_22FCC67B4();
  v11 = v10;
  (*(v4 + 8))(v3, v5);
  *(v8 + 72) = v9;
  *(v8 + 80) = v11;
  *(v8 + 88) = 0;
  *(v8 + 96) = v2;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 104) = 3;
  *(v8 + 128) = 1;
  *(v8 + 40) = type metadata accessor for PhotoLibraryWorker();
  *(v8 + 48) = sub_22FB0FE94(&qword_281482350, type metadata accessor for PhotoLibraryWorker);
  *(v8 + 16) = v1;
  *(v8 + 136) = *(v1 + 112);
  *(inited + 56) = v7;
  *(inited + 64) = sub_22FB0FE94(&qword_28147FC30, type metadata accessor for SocialGroupsFTETask);
  *(inited + 32) = v8;

  return MEMORY[0x2822009F8](sub_22FAF608C, 0, 0);
}

uint64_t sub_22FAF608C()
{
  v1 = *(v0[35] + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[35];
  if (!isUniquelyReferenced_nonNull_native || (v6 = *(v5 + 3) >> 1, v6 <= v1))
  {
    isUniquelyReferenced_nonNull_native = sub_22FAC2350(isUniquelyReferenced_nonNull_native, v1 + 1, 1, v0[35]);
    v5 = isUniquelyReferenced_nonNull_native;
    v6 = *(isUniquelyReferenced_nonNull_native + 3) >> 1;
  }

  if (v6 <= *(v5 + 2))
  {
    __break(1u);
    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v3, v4);
  }

  v7 = v0[28];
  v8 = v0[34] + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7560);
  swift_arrayInitWithCopy();

  ++*(v5 + 2);
  if (v8 != v7)
  {
    v11 = v0[34] + 1;
    v0[34] = v11;
    v0[35] = v5;
    v12 = v0[21];
    v0[36] = *(v0[26] + 8 * v11 + 32);

    isUniquelyReferenced_nonNull_native = sub_22FAF5EA0;
    v3 = v12;
    v4 = 0;

    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v3, v4);
  }

  v9 = v0[1];

  return v9(v5);
}

uint64_t sub_22FAF6220(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = MEMORY[0x277D84F90];
  v2[4] = v1;
  v4 = sub_22FB0FE94(&unk_28147B9B0, type metadata accessor for GyroPosterGalleryFastPassActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for GyroPosterGalleryFastPassActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF639C;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF639C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_22FB0FFDC;
  }

  else
  {
    v4 = sub_22FAF64B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF64B0()
{
  v1 = v0[6];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[8] = v2;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231908810](0);
        goto LABEL_6;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v1 + 32);

LABEL_6:
        v0[9] = v3;
        v0[10] = 1;
        v4 = swift_task_alloc();
        v0[11] = v4;
        *v4 = v0;
        v4[1] = sub_22FAF6684;

        return sub_22FB5CAB0(v3);
      }

      __break(1u);
    }

LABEL_16:

    sub_22FA61CB0();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_16;
  }

  v2 = sub_22FCC92C4();
  v1 = v0[6];
  if (v2)
  {
    goto LABEL_3;
  }

  v6 = v0[3];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF6684(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    v5 = sub_22FB0FFE0;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_22FAF67D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FAF67D0()
{
  v1 = v0[10];
  v2 = v0[8];
  result = sub_22FA68214(v0[13]);
  v4 = v0[6];
  if (v1 == v2)
  {

    v5 = v0[3];
    v6 = v0[1];

    return v6(v5);
  }

  v7 = v0[10];
  if ((v4 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x231908810](v0[10]);
    v8 = result;
  }

  else
  {
    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v8 = *(v4 + 8 * v7 + 32);
  }

  v0[9] = v8;
  v0[10] = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_22FAF6684;

  return sub_22FB5CAB0(v8);
}

uint64_t sub_22FAF6920(uint64_t a1)
{
  v2[28] = v1;
  v4 = sub_22FCC67F4();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[26] = v1;
  v2[27] = MEMORY[0x277D84F90];
  v5 = sub_22FB0FE94(&qword_27DAD8408, type metadata accessor for PhotosSuggestionsFastPassActivityTaskSource);
  v6 = *(v5 + 40);
  v7 = type metadata accessor for PhotosSuggestionsFastPassActivityTaskSource();
  v10 = (v6 + *v6);
  v8 = swift_task_alloc();
  v2[32] = v8;
  *v8 = v2;
  v8[1] = sub_22FAF6AFC;

  return v10(a1, v7, v5);
}

uint64_t sub_22FAF6AFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_22FAF6DBC;
  }

  else
  {
    v4 = sub_22FAF6C10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF6C10()
{
  v1 = v0[33];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[35] = v2;
      v0[36] = 0;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231908810](0);
      }

      else
      {
      }

      v0[37] = v3;
      v4 = v0[28];

      return MEMORY[0x2822009F8](sub_22FAF6E20, v4, 0);
    }

    goto LABEL_13;
  }

  if (sub_22FCC92C4() <= 0)
  {
LABEL_13:

    sub_22FA61CB0();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  v2 = sub_22FCC92C4();
  if (v2)
  {
    if (v2 >= 1)
    {
      v1 = v0[33];
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_13;
  }

  v7 = v0[27];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_22FAF6DBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAF6E20()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  v24 = *(v0 + 232);
  v25 = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8);
  inited = swift_initStackObject();
  *(v0 + 304) = inited;
  *(inited + 16) = xmmword_22FCD17F0;
  v18 = [objc_allocWithZone(PHASuggestionGenerationTask) initForFastPass];
  v4 = *(*(v1 + 112) + 112);
  v22 = type metadata accessor for LegacyStorytellingWorker();
  *(v0 + 152) = v22;
  v21 = sub_22FB0FE94(&qword_28147EB60, type metadata accessor for LegacyStorytellingWorker);
  *(v0 + 160) = v21;
  *(v0 + 128) = v1;
  v23 = type metadata accessor for LegacyTask();
  v5 = swift_allocObject();

  v6 = v4;
  sub_22FCC67E4();
  v7 = sub_22FCC67B4();
  v9 = v8;
  v20 = *(v25 + 8);
  v20(v2, v24);
  *(v5 + 72) = v7;
  *(v5 + 80) = v9;
  *(v5 + 88) = 1;
  *(v5 + 16) = v18;
  sub_22FA2CF78((v0 + 128), v5 + 24);
  *(v5 + 64) = v6;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0;
  *(inited + 56) = v23;
  v19 = sub_22FB0FE94(&qword_281481AE0, type metadata accessor for LegacyTask);
  *(inited + 64) = v19;
  *(inited + 32) = v5;
  v17 = [objc_allocWithZone(PHAWallpaperSuggestionGenerationWeeklyTask) initWithGenerationOptions_];
  v10 = *(*(v1 + 112) + 112);
  *(v0 + 192) = v22;
  *(v0 + 200) = v21;
  *(v0 + 168) = v1;
  v11 = swift_allocObject();

  v12 = v10;
  sub_22FCC67E4();
  v13 = sub_22FCC67B4();
  v15 = v14;
  v20(v2, v24);
  *(v11 + 72) = v13;
  *(v11 + 80) = v15;
  *(v11 + 88) = 1;
  *(v11 + 16) = v17;
  sub_22FA2CF78((v0 + 168), v11 + 24);
  *(v11 + 64) = v12;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0;
  *(inited + 96) = v23;
  *(inited + 104) = v19;
  *(inited + 72) = v11;

  return MEMORY[0x2822009F8](sub_22FAF7100, 0, 0);
}

uint64_t sub_22FAF7100()
{
  v1 = v0[35];
  v2 = v0[36] + 1;
  sub_22FA68214(v0[38]);
  if (v2 == v1)
  {

    v3 = v0[27];

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    ++v0[36];
    if ((v0[33] & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x231908810]();
    }

    else
    {
    }

    v0[37] = v6;
    v7 = v0[28];

    return MEMORY[0x2822009F8](sub_22FAF6E20, v7, 0);
  }
}

uint64_t sub_22FAF7208(uint64_t a1)
{
  v2[13] = v1;
  v4 = sub_22FCC67F4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[11] = v1;
  v2[12] = MEMORY[0x277D84F90];
  v5 = sub_22FB0FE94(qword_28147B830, type metadata accessor for Spatial3DFeaturedPhotosFastPassActivityTaskSource);
  v6 = *(v5 + 40);
  v7 = type metadata accessor for Spatial3DFeaturedPhotosFastPassActivityTaskSource();
  v10 = (v6 + *v6);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_22FAF73E4;

  return v10(a1, v7, v5);
}

uint64_t sub_22FAF73E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_22FAF76A4;
  }

  else
  {
    v4 = sub_22FAF74F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF74F8()
{
  v1 = v0[18];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[20] = v2;
      v0[21] = 0;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231908810](0);
      }

      else
      {
      }

      v0[22] = v3;
      v4 = v0[13];

      return MEMORY[0x2822009F8](sub_22FAF7708, v4, 0);
    }

    goto LABEL_13;
  }

  if (sub_22FCC92C4() <= 0)
  {
LABEL_13:

    sub_22FA61CB0();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  v2 = sub_22FCC92C4();
  if (v2)
  {
    if (v2 >= 1)
    {
      v1 = v0[18];
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_13;
  }

  v7 = v0[12];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_22FAF76A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAF7708()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8);
  inited = swift_initStackObject();
  v0[23] = inited;
  *(inited + 16) = xmmword_22FCD1800;
  v6 = type metadata accessor for FeaturedPhotosWidgetSpatial3DGenerationTask();
  v7 = swift_allocObject();
  *(v7 + 96) = 0x40F5180000000000;
  *(v7 + 104) = 0xD00000000000002BLL;
  *(v7 + 112) = 0x800000022FCE33D0;

  sub_22FCC67E4();
  v8 = sub_22FCC67B4();
  v10 = v9;
  (*(v3 + 8))(v2, v4);
  *(v7 + 120) = v8;
  *(v7 + 128) = v10;
  *(v7 + 136) = xmmword_22FCD1F80;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = 1;
  *(v7 + 184) = 0;
  *(v7 + 40) = type metadata accessor for MomentGraphWorker();
  *(v7 + 48) = sub_22FB0FE94(&qword_281480230, type metadata accessor for MomentGraphWorker);
  *(v7 + 16) = v1;
  *(v7 + 176) = [*(*(v1 + 112) + 112) photoLibrary];
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0;
  *(v7 + 192) = 1;
  *(inited + 56) = v6;
  *(inited + 64) = sub_22FB0FE94(&unk_27DAD83B0, type metadata accessor for FeaturedPhotosWidgetSpatial3DGenerationTask);
  *(inited + 32) = v7;

  return MEMORY[0x2822009F8](sub_22FAF7920, 0, 0);
}

uint64_t sub_22FAF7920()
{
  v1 = v0[20];
  v2 = v0[21] + 1;
  sub_22FA68214(v0[23]);
  if (v2 == v1)
  {

    v3 = v0[12];

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    ++v0[21];
    if ((v0[18] & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x231908810]();
    }

    else
    {
    }

    v0[22] = v6;
    v7 = v0[13];

    return MEMORY[0x2822009F8](sub_22FAF7708, v7, 0);
  }
}

uint64_t sub_22FAF7A28(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = MEMORY[0x277D84F90];
  v2[4] = v1;
  v4 = sub_22FB0FE94(&qword_28147B770, type metadata accessor for MessagesFallbackBackdropFastPassActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for MessagesFallbackBackdropFastPassActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF7BA4;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF7BA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_22FB0FFDC;
  }

  else
  {
    v4 = sub_22FAF7CB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF7CB8()
{
  v1 = v0[6];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[8] = v2;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231908810](0);
        goto LABEL_6;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v1 + 32);

LABEL_6:
        v0[9] = v3;
        v0[10] = 1;
        v4 = swift_task_alloc();
        v0[11] = v4;
        *v4 = v0;
        v4[1] = sub_22FAF7E8C;

        return sub_22FA8E284(v3);
      }

      __break(1u);
    }

LABEL_16:

    sub_22FA61CB0();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_16;
  }

  v2 = sub_22FCC92C4();
  v1 = v0[6];
  if (v2)
  {
    goto LABEL_3;
  }

  v6 = v0[3];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF7E8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    v5 = sub_22FB0FFE0;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_22FAF7FD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FAF7FD8()
{
  v1 = v0[10];
  v2 = v0[8];
  result = sub_22FA68214(v0[13]);
  v4 = v0[6];
  if (v1 == v2)
  {

    v5 = v0[3];
    v6 = v0[1];

    return v6(v5);
  }

  v7 = v0[10];
  if ((v4 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x231908810](v0[10]);
    v8 = result;
  }

  else
  {
    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v8 = *(v4 + 8 * v7 + 32);
  }

  v0[9] = v8;
  v0[10] = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_22FAF7E8C;

  return sub_22FA8E284(v8);
}

uint64_t sub_22FAF8148()
{
  v0[7] = v0[8];
  type metadata accessor for ActivitySession();
  sub_22FB0FE94(&qword_281480D10, type metadata accessor for ActivitySession);

  sub_22FCC9324();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF27C8;

  return sub_22FAFA8BC((v0 + 2));
}

uint64_t sub_22FAF8270(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF7A28(a1);
}

uint64_t sub_22FAF8320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_22FA2D328(v2, v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v5 = (*(v4 + 16))(v3, v4);
      MEMORY[0x231907FA0](v5);

      MEMORY[0x231907FA0](32, 0xE100000000000000);

      __swift_destroy_boxed_opaque_existential_0(v7);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  v7[0] = 0xD000000000000011;
  v7[1] = 0x800000022FCE1620;
  MEMORY[0x231907FA0](0, 0xE000000000000000);

  return v7[0];
}

uint64_t sub_22FAF8460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_22FA2D328(v2, v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v5 = (*(v4 + 16))(v3, v4);
      MEMORY[0x231907FA0](v5);

      MEMORY[0x231907FA0](32, 0xE100000000000000);

      __swift_destroy_boxed_opaque_existential_0(v7);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  v7[0] = 0xD000000000000012;
  v7[1] = 0x800000022FCE1640;
  MEMORY[0x231907FA0](0, 0xE000000000000000);

  return v7[0];
}

uint64_t sub_22FAF85A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_22FA2D328(v2, v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v5 = (*(v4 + 16))(v3, v4);
      MEMORY[0x231907FA0](v5);

      MEMORY[0x231907FA0](32, 0xE100000000000000);

      __swift_destroy_boxed_opaque_existential_0(v7);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  v7[0] = 0xD000000000000018;
  v7[1] = 0x800000022FCE1660;
  MEMORY[0x231907FA0](0, 0xE000000000000000);

  return v7[0];
}

uint64_t sub_22FAF86E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_22FA2D328(v2, v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v5 = (*(v4 + 16))(v3, v4);
      MEMORY[0x231907FA0](v5);

      MEMORY[0x231907FA0](32, 0xE100000000000000);

      __swift_destroy_boxed_opaque_existential_0(v7);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  v7[0] = 0x6B726F5774736554;
  v7[1] = 0xEA00000000007265;
  MEMORY[0x231907FA0](0, 0xE000000000000000);

  return v7[0];
}

uint64_t sub_22FAF8820()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19[-v2 - 8];
  v4 = type metadata accessor for PhotoLibraryResource(0);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(v0 + 136);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + 32;
    v13 = (v6 + 56);
    v14 = 1;
    while (v11 < *(v9 + 16))
    {
      sub_22FA2D328(v12, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
      v15 = swift_dynamicCast();
      v16 = *v13;
      if (v15)
      {
        v16(v3, 0, 1, v4);
        sub_22FB0FD00(v3, v8, type metadata accessor for PhotoLibraryResource);
        v17 = *v8;
        result = sub_22FA64AB0(v8);
        if (v17)
        {
          return v14;
        }
      }

      else
      {
        v16(v3, 1, 1, v4);
        result = sub_22FA2B420(v3, &qword_27DAD8358);
      }

      ++v11;
      v12 += 40;
      if (v10 == v11)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_22FAF8A34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF1ED0(a1);
}

uint64_t sub_22FAF8AE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF0F70(a1);
}

uint64_t sub_22FAF8B94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF7208(a1);
}

uint64_t sub_22FAF8C44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_22FA86EA8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22FA2F7D8(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22FA86EA8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_22FAF8D58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  sub_22FA870FC(0, v2, 0);
  v3 = v19;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_22FA2D328(i, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7450);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_22FA2CF78(&v13, v18);
      sub_22FA2CF78(v18, v16);
      v19 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22FA870FC((v5 > 1), v6 + 1, 1);
        v3 = v19;
      }

      v7 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x28223BE20](v7);
      v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v9);
      *(&v14 + 1) = type metadata accessor for PhotoLibraryResource(0);
      v15 = sub_22FB0FE94(&qword_281481D58, type metadata accessor for PhotoLibraryResource);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
      sub_22FB0FD00(v9, boxed_opaque_existential_1, type metadata accessor for PhotoLibraryResource);
      *(v3 + 16) = v6 + 1;
      sub_22FA2CF78(&v13, v3 + 40 * v6 + 32);
      __swift_destroy_boxed_opaque_existential_0(v16);
      if (!--v2)
      {
        return v3;
      }
    }

    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_22FA2B420(&v13, &unk_27DAD8390);
    return 0;
  }

  return v3;
}

uint64_t sub_22FAF8FE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF29C8(a1);
}

uint64_t sub_22FAF9098(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA52F04;

  return sub_22FAEFFF8(a1);
}

uint64_t sub_22FAF9168()
{
  v0[7] = v0[8];
  type metadata accessor for ActivitySession();
  sub_22FB0FE94(&qword_281480D10, type metadata accessor for ActivitySession);

  sub_22FCC9324();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF9290;

  return sub_22FAF9558((v0 + 2));
}

uint64_t sub_22FAF9290(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = v1;

  sub_22FA3A7C4(v4 + 16);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FAF93E0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22FAF93F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF4EF8(a1);
}

uint64_t sub_22FAF94A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF07C0(a1);
}

uint64_t sub_22FAF9558(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22FCC65F4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAF9624, v1, 0);
}

uint64_t sub_22FAF9624()
{
  v1 = v0[9];
  v0[7] = MEMORY[0x277D84F90];
  v2 = *(*(v1 + 128) + 128);
  v0[14] = v2;

  return MEMORY[0x2822009F8](sub_22FAF96AC, v2, 0);
}

uint64_t sub_22FAF96AC()
{
  v1 = *(v0 + 72);
  *(v0 + 120) = sub_22FA62F5C(0);

  return MEMORY[0x2822009F8](sub_22FAF9728, v1, 0);
}

uint64_t sub_22FAF9728()
{
  v1 = sub_22FAF8D58(v0[15]);
  v0[16] = v1;

  if (!v1)
  {
    return sub_22FCC94D4();
  }

  v2 = *(v1 + 16);
  v0[17] = v2;
  if (v2)
  {
    v0[18] = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;
    result = objc_opt_self();
    v4 = MEMORY[0x277D84F90];
    v0[20] = 0;
    v0[21] = v4;
    v0[19] = result;
    v5 = v0[16];
    if (*(v5 + 16))
    {
      v6 = result;
      v7 = v0[12];
      v8 = v0[13];
      v9 = v0[10];
      v10 = v0[11];
      sub_22FA2D328(v5 + 32, (v0 + 2));
      v12 = v0[5];
      v11 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
      v25 = v8;
      (*(*(v11 + 8) + 32))(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350);
      v13 = swift_allocObject();
      v0[22] = v13;
      *(v13 + 16) = xmmword_22FCD17F0;
      v14 = *(v10 + 16);
      v14(v7, v8, v9);
      v15 = type metadata accessor for PhotoLibraryResource(0);
      *(v13 + 56) = v15;
      *(v13 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
      v14(boxed_opaque_existential_1 + *(v15 + 20), v7, v9);
      v17 = sub_22FCC6564();
      LOBYTE(v6) = [v6 isSystemPhotoLibraryURL_];

      v18 = *(v10 + 8);
      v18(v7, v9);
      *boxed_opaque_existential_1 = v6;
      v14(v7, v25, v9);
      v19 = type metadata accessor for MomentGraphResource();
      *(v13 + 96) = v19;
      *(v13 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource);
      v20 = __swift_allocate_boxed_opaque_existential_1((v13 + 72));
      *(v20 + *(v19 + 20)) = 1;
      sub_22FA7FB30(v20);
      v18(v7, v9);
      v18(v25, v9);
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      v21[1] = sub_22FAF9B68;
      v22 = v0[8];

      return sub_22FAFCE24(v13, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_22FB0F918();
    swift_allocError();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0;
    *(v23 + 56) = 2;
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }

  return result;
}

uint64_t sub_22FAF9B68(uint64_t a1)
{
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = sub_22FAFA280;
  }

  else
  {

    v6 = sub_22FAF9CA0;
    v5 = a1;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FAF9CA0()
{
  v1 = *(v0 + 72);
  *(v0 + 208) = [*(*(*(*(v0 + 192) + 112) + 120) + 112) isReadyForAnalysis];

  return MEMORY[0x2822009F8](sub_22FAF9D24, v1, 0);
}

uint64_t sub_22FAF9D24()
{
  v34 = v0;
  if ((*(v0 + 208) & 1) != 0 || *(*(v0 + 72) + 136) == 1)
  {

    MEMORY[0x231908070](v1);
    if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22FCC8C64();
    }

    sub_22FCC8C84();

    v2 = (v0 + 56);
  }

  else
  {

    v28 = sub_22FCC8664();
    v29 = sub_22FCC8F34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v30 = 136315138;

      *(v30 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, &v33);
      _os_log_impl(&dword_22FA28000, v28, v29, "Skipping worker %s: Not ready for analysis", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23190A000](v31, -1, -1);
      MEMORY[0x23190A000](v30, -1, -1);
    }

    else
    {
    }

    v2 = (v0 + 168);
  }

  v3 = *v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 160) + 1;
  result = __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (v5 == v4)
  {

    sub_22FAFCD8C((v0 + 56), type metadata accessor for MomentGraphWorker, sub_22FB089FC, sub_22FB074E4);
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8(v7);
  }

  else
  {
    v9 = *(v0 + 160) + 1;
    *(v0 + 160) = v9;
    *(v0 + 168) = v3;
    v10 = *(v0 + 128);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = *(v0 + 152);
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      sub_22FA2D328(v10 + 40 * v9 + 32, v0 + 16);
      v17 = *(v0 + 40);
      v16 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
      v32 = v13;
      (*(*(v16 + 8) + 32))(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350);
      v18 = swift_allocObject();
      *(v0 + 176) = v18;
      *(v18 + 16) = xmmword_22FCD17F0;
      v19 = *(v15 + 16);
      v19(v12, v13, v14);
      v20 = type metadata accessor for PhotoLibraryResource(0);
      *(v18 + 56) = v20;
      *(v18 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
      v19(boxed_opaque_existential_1 + *(v20 + 20), v12, v14);
      v22 = sub_22FCC6564();
      LOBYTE(v11) = [v11 isSystemPhotoLibraryURL_];

      v23 = *(v15 + 8);
      v23(v12, v14);
      *boxed_opaque_existential_1 = v11;
      v19(v12, v32, v14);
      v24 = type metadata accessor for MomentGraphResource();
      *(v18 + 96) = v24;
      *(v18 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource);
      v25 = __swift_allocate_boxed_opaque_existential_1((v18 + 72));
      *(v25 + *(v24 + 20)) = 1;
      sub_22FA7FB30(v25);
      v23(v12, v14);
      v23(v32, v14);
      v26 = swift_task_alloc();
      *(v0 + 184) = v26;
      *v26 = v0;
      v26[1] = sub_22FAF9B68;
      v27 = *(v0 + 64);

      return sub_22FAFCE24(v18, v27);
    }
  }

  return result;
}

uint64_t sub_22FAFA280()
{
  v47 = v0;
  v1 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = v0[25];
  if (*v1)
  {

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v3 = v0[1];

    return v3();
  }

  else
  {

    v5 = v2;
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F14();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[25];
    v10 = v0[22];
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v46[0] = v13;
      *v11 = 136446722;
      *(v11 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, v46);
      *(v11 + 12) = 2082;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
      v15 = MEMORY[0x2319080B0](v10, v14);
      v17 = v16;

      v18 = sub_22FA2F600(v15, v17, v46);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2114;
      v19 = v9;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v20;
      *v12 = v20;
      _os_log_impl(&dword_22FA28000, v6, v7, "Error instantiating worker of class %{public}s for resources %{public}s: %{public}@", v11, 0x20u);
      sub_22FA2B420(v12, &unk_27DAD7B10);
      MEMORY[0x23190A000](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v13, -1, -1);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    else
    {
    }

    v21 = v0[21];
    v22 = v0[17];
    v23 = v0[20] + 1;
    result = __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    if (v23 == v22)
    {

      sub_22FAFCD8C(v0 + 7, type metadata accessor for MomentGraphWorker, sub_22FB089FC, sub_22FB074E4);
      v24 = v0[7];

      v25 = v0[1];

      return v25(v24);
    }

    else
    {
      v26 = v0[20] + 1;
      v0[20] = v26;
      v0[21] = v21;
      v27 = v0[16];
      if (v26 >= *(v27 + 16))
      {
        __break(1u);
      }

      else
      {
        v28 = v0[19];
        v29 = v0[12];
        v30 = v0[13];
        v31 = v0[10];
        v32 = v0[11];
        sub_22FA2D328(v27 + 40 * v26 + 32, (v0 + 2));
        v34 = v0[5];
        v33 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v34);
        v45 = v30;
        (*(*(v33 + 8) + 32))(v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350);
        v35 = swift_allocObject();
        v0[22] = v35;
        *(v35 + 16) = xmmword_22FCD17F0;
        v36 = *(v32 + 16);
        v36(v29, v30, v31);
        v37 = type metadata accessor for PhotoLibraryResource(0);
        *(v35 + 56) = v37;
        *(v35 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v35 + 32));
        v36(boxed_opaque_existential_1 + *(v37 + 20), v29, v31);
        v39 = sub_22FCC6564();
        LOBYTE(v28) = [v28 isSystemPhotoLibraryURL_];

        v40 = *(v32 + 8);
        v40(v29, v31);
        *boxed_opaque_existential_1 = v28;
        v36(v29, v45, v31);
        v41 = type metadata accessor for MomentGraphResource();
        *(v35 + 96) = v41;
        *(v35 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource);
        v42 = __swift_allocate_boxed_opaque_existential_1((v35 + 72));
        *(v42 + *(v41 + 20)) = 1;
        sub_22FA7FB30(v42);
        v40(v29, v31);
        v40(v45, v31);
        v43 = swift_task_alloc();
        v0[23] = v43;
        *v43 = v0;
        v43[1] = sub_22FAF9B68;
        v44 = v0[8];

        return sub_22FAFCE24(v35, v44);
      }
    }
  }

  return result;
}

uint64_t sub_22FAFA8BC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22FCC65F4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAFA988, v1, 0);
}

uint64_t sub_22FAFA988()
{
  v1 = v0[9];
  v0[7] = MEMORY[0x277D84F90];
  v2 = *(*(v1 + 128) + 128);
  v0[14] = v2;

  return MEMORY[0x2822009F8](sub_22FAFAA10, v2, 0);
}

uint64_t sub_22FAFAA10()
{
  v1 = *(v0 + 72);
  *(v0 + 120) = sub_22FA62F5C(0);

  return MEMORY[0x2822009F8](sub_22FAFAA8C, v1, 0);
}

uint64_t sub_22FAFAA8C()
{
  v1 = sub_22FAF8D58(v0[15]);
  v0[16] = v1;

  if (!v1)
  {
    return sub_22FCC94D4();
  }

  v2 = *(v1 + 16);
  v0[17] = v2;
  if (v2)
  {
    result = objc_opt_self();
    v4 = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;
    v0[18] = result;
    v0[19] = v4;
    v5 = MEMORY[0x277D84F90];
    v0[20] = 0;
    v0[21] = v5;
    v6 = v0[16];
    if (*(v6 + 16))
    {
      v8 = v0[12];
      v7 = v0[13];
      v9 = v0[10];
      v10 = v0[11];
      v23 = result;
      sub_22FA2D328(v6 + 32, (v0 + 2));
      v12 = v0[5];
      v11 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
      (*(*(v11 + 8) + 32))(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350);
      v13 = swift_allocObject();
      v0[22] = v13;
      *(v13 + 16) = xmmword_22FCD1800;
      v14 = *(v10 + 16);
      v14(v8, v7, v9);
      v15 = type metadata accessor for PhotoLibraryResource(0);
      *(v13 + 56) = v15;
      *(v13 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
      v14(boxed_opaque_existential_1 + *(v15 + 20), v8, v9);
      v17 = sub_22FCC6564();
      LOBYTE(v14) = [v23 isSystemPhotoLibraryURL_];

      v18 = *(v10 + 8);
      v18(v8, v9);
      *boxed_opaque_existential_1 = v14;
      v18(v7, v9);
      v19 = swift_task_alloc();
      v0[23] = v19;
      *v19 = v0;
      v19[1] = sub_22FAFAE20;
      v20 = v0[8];

      return sub_22FAFE728(v13, v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_22FB0F918();
    swift_allocError();
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0;
    *(v21 + 56) = 2;
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }

  return result;
}

uint64_t sub_22FAFAE20(uint64_t a1)
{
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = sub_22FAFB490;
  }

  else
  {

    v6 = sub_22FAFAF58;
    v5 = a1;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FAFAF58()
{
  v1 = *(v0 + 72);
  *(v0 + 208) = [*(*(*(v0 + 192) + 112) + 112) isReadyForAnalysis];

  return MEMORY[0x2822009F8](sub_22FAFAFD8, v1, 0);
}

uint64_t sub_22FAFAFD8()
{
  v31 = v0;
  if ((*(v0 + 208) & 1) != 0 || *(*(v0 + 72) + 136) == 1)
  {

    MEMORY[0x231908070](v1);
    if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22FCC8C64();
    }

    sub_22FCC8C84();

    v2 = (v0 + 56);
  }

  else
  {

    v25 = sub_22FCC8664();
    v26 = sub_22FCC8F34();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136315138;

      *(v27 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, &v30);
      _os_log_impl(&dword_22FA28000, v25, v26, "Skipping worker %s: Not ready for analysis", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23190A000](v28, -1, -1);
      MEMORY[0x23190A000](v27, -1, -1);
    }

    else
    {
    }

    v2 = (v0 + 168);
  }

  v3 = *v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 160) + 1;
  result = __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (v5 == v4)
  {

    sub_22FAFCD8C((v0 + 56), type metadata accessor for PhotoLibraryWorker, sub_22FB09D38, sub_22FB07BEC);
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8(v7);
  }

  else
  {
    v9 = *(v0 + 160) + 1;
    *(v0 + 160) = v9;
    *(v0 + 168) = v3;
    v10 = *(v0 + 128);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v29 = *(v0 + 144);
      v12 = *(v0 + 96);
      v11 = *(v0 + 104);
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);
      sub_22FA2D328(v10 + 40 * v9 + 32, v0 + 16);
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v16);
      (*(*(v15 + 8) + 32))(v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350);
      v17 = swift_allocObject();
      *(v0 + 176) = v17;
      *(v17 + 16) = xmmword_22FCD1800;
      v18 = *(v14 + 16);
      v18(v12, v11, v13);
      v19 = type metadata accessor for PhotoLibraryResource(0);
      *(v17 + 56) = v19;
      *(v17 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
      v18(boxed_opaque_existential_1 + *(v19 + 20), v12, v13);
      v21 = sub_22FCC6564();
      LOBYTE(v18) = [v29 isSystemPhotoLibraryURL_];

      v22 = *(v14 + 8);
      v22(v12, v13);
      *boxed_opaque_existential_1 = v18;
      v22(v11, v13);
      v23 = swift_task_alloc();
      *(v0 + 184) = v23;
      *v23 = v0;
      v23[1] = sub_22FAFAE20;
      v24 = *(v0 + 64);

      return sub_22FAFE728(v17, v24);
    }
  }

  return result;
}

uint64_t sub_22FAFB490()
{
  v44 = v0;
  v1 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = v0[25];
  if (*v1)
  {

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v3 = v0[1];

    return v3();
  }

  else
  {

    v5 = v2;
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F14();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[25];
    v10 = v0[22];
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v43[0] = v13;
      *v11 = 136446722;
      *(v11 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, v43);
      *(v11 + 12) = 2082;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
      v15 = MEMORY[0x2319080B0](v10, v14);
      v17 = v16;

      v18 = sub_22FA2F600(v15, v17, v43);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2114;
      v19 = v9;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v20;
      *v12 = v20;
      _os_log_impl(&dword_22FA28000, v6, v7, "Error instantiating worker of class %{public}s for resources %{public}s: %{public}@", v11, 0x20u);
      sub_22FA2B420(v12, &unk_27DAD7B10);
      MEMORY[0x23190A000](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v13, -1, -1);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    else
    {
    }

    v21 = v0[21];
    v22 = v0[17];
    v23 = v0[20] + 1;
    result = __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    if (v23 == v22)
    {

      sub_22FAFCD8C(v0 + 7, type metadata accessor for PhotoLibraryWorker, sub_22FB09D38, sub_22FB07BEC);
      v24 = v0[7];

      v25 = v0[1];

      return v25(v24);
    }

    else
    {
      v26 = v0[20] + 1;
      v0[20] = v26;
      v0[21] = v21;
      v27 = v0[16];
      if (v26 >= *(v27 + 16))
      {
        __break(1u);
      }

      else
      {
        v42 = v0[18];
        v29 = v0[12];
        v28 = v0[13];
        v30 = v0[10];
        v31 = v0[11];
        sub_22FA2D328(v27 + 40 * v26 + 32, (v0 + 2));
        v33 = v0[5];
        v32 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v33);
        (*(*(v32 + 8) + 32))(v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350);
        v34 = swift_allocObject();
        v0[22] = v34;
        *(v34 + 16) = xmmword_22FCD1800;
        v35 = *(v31 + 16);
        v35(v29, v28, v30);
        v36 = type metadata accessor for PhotoLibraryResource(0);
        *(v34 + 56) = v36;
        *(v34 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v34 + 32));
        v35(boxed_opaque_existential_1 + *(v36 + 20), v29, v30);
        v38 = sub_22FCC6564();
        LOBYTE(v35) = [v42 isSystemPhotoLibraryURL_];

        v39 = *(v31 + 8);
        v39(v29, v30);
        *boxed_opaque_existential_1 = v35;
        v39(v28, v30);
        v40 = swift_task_alloc();
        v0[23] = v40;
        *v40 = v0;
        v40[1] = sub_22FAFAE20;
        v41 = v0[8];

        return sub_22FAFE728(v34, v41);
      }
    }
  }

  return result;
}

uint64_t sub_22FAFBA28(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22FCC65F4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAFBAF4, v1, 0);
}

uint64_t sub_22FAFBAF4()
{
  v1 = v0[9];
  v0[7] = MEMORY[0x277D84F90];
  v2 = *(*(v1 + 128) + 128);
  v0[14] = v2;

  return MEMORY[0x2822009F8](sub_22FAFBB7C, v2, 0);
}

uint64_t sub_22FAFBB7C()
{
  v1 = *(v0 + 72);
  *(v0 + 120) = sub_22FA62F5C(0);

  return MEMORY[0x2822009F8](sub_22FAFBBF8, v1, 0);
}

uint64_t sub_22FAFBBF8()
{
  v1 = sub_22FAF8D58(v0[15]);
  v0[16] = v1;

  if (!v1)
  {
    return sub_22FCC94D4();
  }

  v2 = *(v1 + 16);
  v0[17] = v2;
  if (v2)
  {
    v0[18] = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;
    result = objc_opt_self();
    v4 = MEMORY[0x277D84F90];
    v0[20] = 0;
    v0[21] = v4;
    v0[19] = result;
    v5 = v0[16];
    if (*(v5 + 16))
    {
      v6 = result;
      v7 = v0[12];
      v8 = v0[13];
      v9 = v0[10];
      v10 = v0[11];
      sub_22FA2D328(v5 + 32, (v0 + 2));
      v12 = v0[5];
      v11 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
      v25 = v8;
      (*(*(v11 + 8) + 32))(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350);
      v13 = swift_allocObject();
      v0[22] = v13;
      *(v13 + 16) = xmmword_22FCD17F0;
      v14 = *(v10 + 16);
      v14(v7, v8, v9);
      v15 = type metadata accessor for PhotoLibraryResource(0);
      *(v13 + 56) = v15;
      *(v13 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
      v14(boxed_opaque_existential_1 + *(v15 + 20), v7, v9);
      v17 = sub_22FCC6564();
      LOBYTE(v6) = [v6 isSystemPhotoLibraryURL_];

      v18 = *(v10 + 8);
      v18(v7, v9);
      *boxed_opaque_existential_1 = v6;
      v14(v7, v25, v9);
      v19 = type metadata accessor for MomentGraphResource();
      *(v13 + 96) = v19;
      *(v13 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource);
      v20 = __swift_allocate_boxed_opaque_existential_1((v13 + 72));
      *(v20 + *(v19 + 20)) = 1;
      sub_22FA7FB30(v20);
      v18(v7, v9);
      v18(v25, v9);
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      v21[1] = sub_22FAFC038;
      v22 = v0[8];

      return sub_22FAFFD68(v13, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_22FB0F918();
    swift_allocError();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0;
    *(v23 + 56) = 2;
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }

  return result;
}

uint64_t sub_22FAFC038(uint64_t a1)
{
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = sub_22FAFC750;
  }

  else
  {

    v6 = sub_22FAFC170;
    v5 = a1;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FAFC170()
{
  v1 = *(v0 + 72);
  *(v0 + 208) = [*(*(*(*(v0 + 192) + 112) + 120) + 112) isReadyForAnalysis];

  return MEMORY[0x2822009F8](sub_22FAFC1F4, v1, 0);
}

uint64_t sub_22FAFC1F4()
{
  v34 = v0;
  if ((*(v0 + 208) & 1) != 0 || *(*(v0 + 72) + 136) == 1)
  {

    MEMORY[0x231908070](v1);
    if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22FCC8C64();
    }

    sub_22FCC8C84();

    v2 = (v0 + 56);
  }

  else
  {

    v28 = sub_22FCC8664();
    v29 = sub_22FCC8F34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v30 = 136315138;

      *(v30 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, &v33);
      _os_log_impl(&dword_22FA28000, v28, v29, "Skipping worker %s: Not ready for analysis", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23190A000](v31, -1, -1);
      MEMORY[0x23190A000](v30, -1, -1);
    }

    else
    {
    }

    v2 = (v0 + 168);
  }

  v3 = *v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 160) + 1;
  result = __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (v5 == v4)
  {

    sub_22FAFCD8C((v0 + 56), type metadata accessor for LegacyStorytellingWorker, sub_22FB0B074, sub_22FB082F4);
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8(v7);
  }

  else
  {
    v9 = *(v0 + 160) + 1;
    *(v0 + 160) = v9;
    *(v0 + 168) = v3;
    v10 = *(v0 + 128);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = *(v0 + 152);
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      sub_22FA2D328(v10 + 40 * v9 + 32, v0 + 16);
      v17 = *(v0 + 40);
      v16 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
      v32 = v13;
      (*(*(v16 + 8) + 32))(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350);
      v18 = swift_allocObject();
      *(v0 + 176) = v18;
      *(v18 + 16) = xmmword_22FCD17F0;
      v19 = *(v15 + 16);
      v19(v12, v13, v14);
      v20 = type metadata accessor for PhotoLibraryResource(0);
      *(v18 + 56) = v20;
      *(v18 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
      v19(boxed_opaque_existential_1 + *(v20 + 20), v12, v14);
      v22 = sub_22FCC6564();
      LOBYTE(v11) = [v11 isSystemPhotoLibraryURL_];

      v23 = *(v15 + 8);
      v23(v12, v14);
      *boxed_opaque_existential_1 = v11;
      v19(v12, v32, v14);
      v24 = type metadata accessor for MomentGraphResource();
      *(v18 + 96) = v24;
      *(v18 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource);
      v25 = __swift_allocate_boxed_opaque_existential_1((v18 + 72));
      *(v25 + *(v24 + 20)) = 1;
      sub_22FA7FB30(v25);
      v23(v12, v14);
      v23(v32, v14);
      v26 = swift_task_alloc();
      *(v0 + 184) = v26;
      *v26 = v0;
      v26[1] = sub_22FAFC038;
      v27 = *(v0 + 64);

      return sub_22FAFFD68(v18, v27);
    }
  }

  return result;
}

uint64_t sub_22FAFC750()
{
  v47 = v0;
  v1 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = v0[25];
  if (*v1)
  {

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v3 = v0[1];

    return v3();
  }

  else
  {

    v5 = v2;
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F14();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[25];
    v10 = v0[22];
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v46[0] = v13;
      *v11 = 136446722;
      *(v11 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, v46);
      *(v11 + 12) = 2082;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
      v15 = MEMORY[0x2319080B0](v10, v14);
      v17 = v16;

      v18 = sub_22FA2F600(v15, v17, v46);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2114;
      v19 = v9;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v20;
      *v12 = v20;
      _os_log_impl(&dword_22FA28000, v6, v7, "Error instantiating worker of class %{public}s for resources %{public}s: %{public}@", v11, 0x20u);
      sub_22FA2B420(v12, &unk_27DAD7B10);
      MEMORY[0x23190A000](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v13, -1, -1);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    else
    {
    }

    v21 = v0[21];
    v22 = v0[17];
    v23 = v0[20] + 1;
    result = __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    if (v23 == v22)
    {

      sub_22FAFCD8C(v0 + 7, type metadata accessor for LegacyStorytellingWorker, sub_22FB0B074, sub_22FB082F4);
      v24 = v0[7];

      v25 = v0[1];

      return v25(v24);
    }

    else
    {
      v26 = v0[20] + 1;
      v0[20] = v26;
      v0[21] = v21;
      v27 = v0[16];
      if (v26 >= *(v27 + 16))
      {
        __break(1u);
      }

      else
      {
        v28 = v0[19];
        v29 = v0[12];
        v30 = v0[13];
        v31 = v0[10];
        v32 = v0[11];
        sub_22FA2D328(v27 + 40 * v26 + 32, (v0 + 2));
        v34 = v0[5];
        v33 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v34);
        v45 = v30;
        (*(*(v33 + 8) + 32))(v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350);
        v35 = swift_allocObject();
        v0[22] = v35;
        *(v35 + 16) = xmmword_22FCD17F0;
        v36 = *(v32 + 16);
        v36(v29, v30, v31);
        v37 = type metadata accessor for PhotoLibraryResource(0);
        *(v35 + 56) = v37;
        *(v35 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v35 + 32));
        v36(boxed_opaque_existential_1 + *(v37 + 20), v29, v31);
        v39 = sub_22FCC6564();
        LOBYTE(v28) = [v28 isSystemPhotoLibraryURL_];

        v40 = *(v32 + 8);
        v40(v29, v31);
        *boxed_opaque_existential_1 = v28;
        v36(v29, v45, v31);
        v41 = type metadata accessor for MomentGraphResource();
        *(v35 + 96) = v41;
        *(v35 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource);
        v42 = __swift_allocate_boxed_opaque_existential_1((v35 + 72));
        *(v42 + *(v41 + 20)) = 1;
        sub_22FA7FB30(v42);
        v40(v29, v31);
        v40(v45, v31);
        v43 = swift_task_alloc();
        v0[23] = v43;
        *v43 = v0;
        v43[1] = sub_22FAFC038;
        v44 = v0[8];

        return sub_22FAFFD68(v35, v44);
      }
    }
  }

  return result;
}

uint64_t sub_22FAFCD8C(unint64_t *a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
  {
    v8 = sub_22FB0735C(v8);
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
  v11[1] = v9;
  result = sub_22FB073C0(v11, a2, a3, a4);
  *a1 = v8;
  return result;
}

uint64_t sub_22FAFCE24(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  v3[70] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v3[71] = swift_task_alloc();
  v3[72] = type metadata accessor for MomentGraphWorker();

  return MEMORY[0x2822009F8](sub_22FAFCEFC, v2, 0);
}

uint64_t sub_22FAFCEFC()
{
  v2 = v0[69];
  v3 = *(v2 + 144);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = v0[68];
    v5 = sub_22FAF8320(v0[67]);
    v7 = v6;
    v0[73] = v5;
    v0[74] = v6;
    sub_22FA728C0(v4, (v0 + 23));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    v10 = sub_22FA2DB54(v5, v7);
    v12 = *(v9 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v1 = v11;
      if (*(v9 + 24) < v15)
      {
        sub_22FA6BB98(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_22FA2DB54(v5, v7);
        if ((v1 & 1) != (v16 & 1))
        {

          return sub_22FCC9774();
        }

LABEL_12:
        *(v2 + 120) = v9;
        if (v1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v47 = v10;
    sub_22FA701B4();
    v10 = v47;
    *(v2 + 120) = v9;
    if (v1)
    {
LABEL_14:
      v22 = v0[69];
      sub_22FB04F78((v0 + 18), (v0 + 23));
      sub_22FA3A7C4((v0 + 18));
      swift_endAccess();
      swift_beginAccess();
      v23 = *(v22 + 112);
      if (*(v23 + 16))
      {

        v24 = sub_22FA2DB54(v5, v7);
        if (v25)
        {
          v26 = *(*(v23 + 56) + 8 * v24);
          v0[79] = v26;

          v27 = swift_task_alloc();
          v0[80] = v27;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
          v0[81] = v28;
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
          *v27 = v0;
          v27[1] = sub_22FAFDCB8;
          v30 = MEMORY[0x277D84950];
          v31 = v0 + 38;
          v32 = v26;
          v33 = v28;
LABEL_19:

          return MEMORY[0x282200430](v31, v32, v33, v29, v30);
        }
      }

      v34 = v0[74];
      v35 = v0[73];
      v36 = v0[71];
      v37 = v0[70];
      v38 = v0[69];
      v39 = v0[67];
      v40 = sub_22FCC8D14();
      (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
      v41 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory);
      v42 = swift_allocObject();
      v42[2] = v38;
      v42[3] = v41;
      v42[4] = v35;
      v42[5] = v34;
      v42[6] = v39;
      v42[7] = v38;
      v42[8] = v37;
      swift_retain_n();

      v43 = sub_22FB22FC0(0, 0, v36, &unk_22FCD6178, v42);
      v0[75] = v43;
      swift_beginAccess();

      v44 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v38 + 112);
      *(v38 + 112) = 0x8000000000000000;
      sub_22FB25980(v43, v35, v34, v44);

      *(v38 + 112) = v48;
      swift_endAccess();
      v45 = swift_task_alloc();
      v0[76] = v45;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
      v0[77] = v46;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
      *v45 = v0;
      v45[1] = sub_22FAFD478;
      v30 = MEMORY[0x277D84950];
      v31 = v0 + 28;
      v32 = v43;
      v33 = v46;
      goto LABEL_19;
    }

LABEL_13:
    sub_22FC4C51C(v10, v5, v7, MEMORY[0x277D84FA0], v9);

    goto LABEL_14;
  }

  v19 = *(v3 + 16);
  v18 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v20 = v19;
  *(v20 + 8) = v18;
  *(v20 + 16) = 0;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_22FAFD478()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 552);
  if (v0)
  {
    v4 = sub_22FAFDA64;
  }

  else
  {
    v4 = sub_22FAFD5A4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FAFD5A4()
{
  v33 = v0;
  sub_22FA2D328((v0 + 28), (v0 + 33));
  if (swift_dynamicCast())
  {
    v1 = v0[65];

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[74];
    if (v4)
    {
      v6 = v0[73];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;

      *(v7 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, v32);
      *(v7 + 12) = 2082;
      v9 = sub_22FA2F600(v6, v5, v32);

      *(v7 + 14) = v9;
      _os_log_impl(&dword_22FA28000, v2, v3, "Successfully instantiated worker %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 28));

    v29 = v0[1];

    return v29(v1);
  }

  else
  {
    v10 = v0[72];
    sub_22FB0F918();
    v11 = swift_allocError();
    v13 = v12;
    sub_22FA2D328((v0 + 28), v12);
    v14 = sub_22FB0FE94(&qword_281480230, type metadata accessor for MomentGraphWorker);
    *(v13 + 40) = v10;
    *(v13 + 48) = v14;
    *(v13 + 56) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 28));
    v15 = v0[74];
    v16 = v0[73];
    swift_beginAccess();
    sub_22FB0410C(v16, v15, sub_22FA701A0);
    swift_endAccess();

    v17 = v11;
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[74];
    if (v20)
    {
      v22 = v0[73];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v23 = 136446466;
      v26 = sub_22FA2F600(v22, v21, v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2114;
      v27 = v11;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      _os_log_impl(&dword_22FA28000, v18, v19, "Failed to instantiate worker for %{public}s: %{public}@", v23, 0x16u);
      sub_22FA2B420(v24, &unk_27DAD7B10);
      MEMORY[0x23190A000](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    else
    {
    }

    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22FAFDA64()
{
  v19 = v0;
  v1 = v0[78];
  v2 = v0[74];
  v3 = v0[73];
  swift_beginAccess();
  sub_22FB0410C(v3, v2, sub_22FA701A0);
  swift_endAccess();

  v4 = v1;
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F14();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[74];
  if (v7)
  {
    v9 = v0[73];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136446466;
    v13 = sub_22FA2F600(v9, v8, &v18);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2114;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    _os_log_impl(&dword_22FA28000, v5, v6, "Failed to instantiate worker for %{public}s: %{public}@", v10, 0x16u);
    sub_22FA2B420(v11, &unk_27DAD7B10);
    MEMORY[0x23190A000](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190A000](v12, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FAFDCB8()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);

    v4 = sub_22FAFE6BC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 552);
    v4 = sub_22FAFDDE0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22FAFDDE0()
{
  v54 = v0;
  sub_22FA2D328(v0 + 304, v0 + 344);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 528);
    v2 = [*(*(*(v1 + 112) + 120) + 112) unavailabilityReason];
    if (v2)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 592);
        v6 = *(v0 + 584);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v53[0] = v8;
        *v7 = 136446466;

        *(v7 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, v53);
        *(v7 + 12) = 2082;
        *(v7 + 14) = sub_22FA2F600(v6, v5, v53);
        _os_log_impl(&dword_22FA28000, v3, v4, "Unable to reuse worker %{public}s for %{public}s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v8, -1, -1);
        MEMORY[0x23190A000](v7, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 304);
      v37 = *(v0 + 592);
      v38 = *(v0 + 584);
      v39 = *(v0 + 568);
      v40 = *(v0 + 560);
      v41 = *(v0 + 552);
      v42 = *(v0 + 536);
      v43 = sub_22FCC8D14();
      (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
      v44 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory);
      v45 = swift_allocObject();
      v45[2] = v41;
      v45[3] = v44;
      v45[4] = v38;
      v45[5] = v37;
      v45[6] = v42;
      v45[7] = v41;
      v45[8] = v40;
      swift_retain_n();

      v46 = sub_22FB22FC0(0, 0, v39, &unk_22FCD6178, v45);
      *(v0 + 600) = v46;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = *(v41 + 112);
      *(v41 + 112) = 0x8000000000000000;
      sub_22FB25980(v46, v38, v37, isUniquelyReferenced_nonNull_native);

      *(v41 + 112) = v53[0];
      swift_endAccess();
      v48 = swift_task_alloc();
      *(v0 + 608) = v48;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
      *(v0 + 616) = v49;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
      *v48 = v0;
      v48[1] = sub_22FAFD478;
      v51 = MEMORY[0x277D84950];

      return MEMORY[0x282200430](v0 + 224, v46, v49, v50, v51);
    }

    else
    {

      v29 = sub_22FCC8664();
      v30 = sub_22FCC8F34();

      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 592);
      if (v31)
      {
        v33 = *(v0 + 584);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v53[0] = v35;
        *v34 = 136446466;

        *(v34 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, v53);
        *(v34 + 12) = 2082;
        v36 = sub_22FA2F600(v33, v32, v53);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_22FA28000, v29, v30, "Successfully reusing worker %{public}s for %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v35, -1, -1);
        MEMORY[0x23190A000](v34, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 304);

      v52 = *(v0 + 8);

      return v52(v1);
    }
  }

  else
  {
    v9 = *(v0 + 576);
    sub_22FA2D328(v0 + 304, v0 + 16);
    v10 = sub_22FB0FE94(&qword_281480230, type metadata accessor for MomentGraphWorker);
    *(v0 + 56) = v9;
    *(v0 + 64) = v10;
    *(v0 + 72) = 0;
    sub_22FA2D328(v0 + 304, v0 + 384);
    sub_22FB0FA48(v0 + 16, v0 + 80);

    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 592);
    if (v13)
    {
      v15 = *(v0 + 584);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v53[0] = v18;
      *v16 = 136446722;
      __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
      v19 = sub_22FCC96C4();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0(v0 + 384);
      v22 = sub_22FA2F600(v19, v21, v53);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2082;
      v23 = sub_22FA2F600(v15, v14, v53);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2114;
      sub_22FB0F918();
      swift_allocError();
      sub_22FB0FA48(v0 + 80, v24);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      sub_22FB0FAA4(v0 + 80);
      *(v16 + 24) = v25;
      *v17 = v25;
      _os_log_impl(&dword_22FA28000, v11, v12, "Failed to reuse worker %{public}s for %{public}s: %{public}@", v16, 0x20u);
      sub_22FA2B420(v17, &unk_27DAD7B10);
      MEMORY[0x23190A000](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v18, -1, -1);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    else
    {

      sub_22FB0FAA4(v0 + 80);
      __swift_destroy_boxed_opaque_existential_0(v0 + 384);
    }

    sub_22FB0F918();
    swift_allocError();
    sub_22FB0FA48(v0 + 16, v26);
    swift_willThrow();

    sub_22FB0FAA4(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0(v0 + 304);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_22FAFE6BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAFE728(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  v3[70] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v3[71] = swift_task_alloc();
  v3[72] = type metadata accessor for PhotoLibraryWorker();

  return MEMORY[0x2822009F8](sub_22FAFE800, v2, 0);
}

uint64_t sub_22FAFE800()
{
  v2 = v0[69];
  v3 = *(v2 + 144);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = v0[68];
    v5 = sub_22FAF8460(v0[67]);
    v7 = v6;
    v0[73] = v5;
    v0[74] = v6;
    sub_22FA728C0(v4, (v0 + 23));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    v10 = sub_22FA2DB54(v5, v7);
    v12 = *(v9 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v1 = v11;
      if (*(v9 + 24) < v15)
      {
        sub_22FA6BB98(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_22FA2DB54(v5, v7);
        if ((v1 & 1) != (v16 & 1))
        {

          return sub_22FCC9774();
        }

LABEL_12:
        *(v2 + 120) = v9;
        if (v1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v47 = v10;
    sub_22FA701B4();
    v10 = v47;
    *(v2 + 120) = v9;
    if (v1)
    {
LABEL_14:
      v22 = v0[69];
      sub_22FB04F78((v0 + 18), (v0 + 23));
      sub_22FA3A7C4((v0 + 18));
      swift_endAccess();
      swift_beginAccess();
      v23 = *(v22 + 112);
      if (*(v23 + 16))
      {

        v24 = sub_22FA2DB54(v5, v7);
        if (v25)
        {
          v26 = *(*(v23 + 56) + 8 * v24);
          v0[79] = v26;

          v27 = swift_task_alloc();
          v0[80] = v27;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
          v0[81] = v28;
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
          *v27 = v0;
          v27[1] = sub_22FAFF368;
          v30 = MEMORY[0x277D84950];
          v31 = v0 + 38;
          v32 = v26;
          v33 = v28;
LABEL_19:

          return MEMORY[0x282200430](v31, v32, v33, v29, v30);
        }
      }

      v34 = v0[74];
      v35 = v0[73];
      v36 = v0[71];
      v37 = v0[70];
      v38 = v0[69];
      v39 = v0[67];
      v40 = sub_22FCC8D14();
      (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
      v41 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory);
      v42 = swift_allocObject();
      v42[2] = v38;
      v42[3] = v41;
      v42[4] = v35;
      v42[5] = v34;
      v42[6] = v39;
      v42[7] = v38;
      v42[8] = v37;
      swift_retain_n();

      v43 = sub_22FB22FC0(0, 0, v36, &unk_22FCD61E8, v42);
      v0[75] = v43;
      swift_beginAccess();

      v44 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v38 + 112);
      *(v38 + 112) = 0x8000000000000000;
      sub_22FB25980(v43, v35, v34, v44);

      *(v38 + 112) = v48;
      swift_endAccess();
      v45 = swift_task_alloc();
      v0[76] = v45;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
      v0[77] = v46;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
      *v45 = v0;
      v45[1] = sub_22FAFED7C;
      v30 = MEMORY[0x277D84950];
      v31 = v0 + 28;
      v32 = v43;
      v33 = v46;
      goto LABEL_19;
    }

LABEL_13:
    sub_22FC4C51C(v10, v5, v7, MEMORY[0x277D84FA0], v9);

    goto LABEL_14;
  }

  v19 = *(v3 + 16);
  v18 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v20 = v19;
  *(v20 + 8) = v18;
  *(v20 + 16) = 0;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_22FAFED7C()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 552);
  if (v0)
  {
    v4 = sub_22FB0FFE8;
  }

  else
  {
    v4 = sub_22FAFEEA8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FAFEEA8()
{
  v33 = v0;
  sub_22FA2D328((v0 + 28), (v0 + 33));
  if (swift_dynamicCast())
  {
    v1 = v0[65];

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[74];
    if (v4)
    {
      v6 = v0[73];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;

      *(v7 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, v32);
      *(v7 + 12) = 2082;
      v9 = sub_22FA2F600(v6, v5, v32);

      *(v7 + 14) = v9;
      _os_log_impl(&dword_22FA28000, v2, v3, "Successfully instantiated worker %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 28));

    v29 = v0[1];

    return v29(v1);
  }

  else
  {
    v10 = v0[72];
    sub_22FB0F918();
    v11 = swift_allocError();
    v13 = v12;
    sub_22FA2D328((v0 + 28), v12);
    v14 = sub_22FB0FE94(&qword_281482350, type metadata accessor for PhotoLibraryWorker);
    *(v13 + 40) = v10;
    *(v13 + 48) = v14;
    *(v13 + 56) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 28));
    v15 = v0[74];
    v16 = v0[73];
    swift_beginAccess();
    sub_22FB0410C(v16, v15, sub_22FA701A0);
    swift_endAccess();

    v17 = v11;
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[74];
    if (v20)
    {
      v22 = v0[73];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v23 = 136446466;
      v26 = sub_22FA2F600(v22, v21, v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2114;
      v27 = v11;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      _os_log_impl(&dword_22FA28000, v18, v19, "Failed to instantiate worker for %{public}s: %{public}@", v23, 0x16u);
      sub_22FA2B420(v24, &unk_27DAD7B10);
      MEMORY[0x23190A000](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    else
    {
    }

    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22FAFF368()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);

    v4 = sub_22FB0FFD8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 552);
    v4 = sub_22FAFF490;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22FAFF490()
{
  v54 = v0;
  sub_22FA2D328(v0 + 304, v0 + 344);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 528);
    v2 = [*(*(v1 + 112) + 112) unavailabilityReason];
    if (v2)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 592);
        v6 = *(v0 + 584);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v53[0] = v8;
        *v7 = 136446466;

        *(v7 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, v53);
        *(v7 + 12) = 2082;
        *(v7 + 14) = sub_22FA2F600(v6, v5, v53);
        _os_log_impl(&dword_22FA28000, v3, v4, "Unable to reuse worker %{public}s for %{public}s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v8, -1, -1);
        MEMORY[0x23190A000](v7, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 304);
      v37 = *(v0 + 592);
      v38 = *(v0 + 584);
      v39 = *(v0 + 568);
      v40 = *(v0 + 560);
      v41 = *(v0 + 552);
      v42 = *(v0 + 536);
      v43 = sub_22FCC8D14();
      (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
      v44 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory);
      v45 = swift_allocObject();
      v45[2] = v41;
      v45[3] = v44;
      v45[4] = v38;
      v45[5] = v37;
      v45[6] = v42;
      v45[7] = v41;
      v45[8] = v40;
      swift_retain_n();

      v46 = sub_22FB22FC0(0, 0, v39, &unk_22FCD61E8, v45);
      *(v0 + 600) = v46;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = *(v41 + 112);
      *(v41 + 112) = 0x8000000000000000;
      sub_22FB25980(v46, v38, v37, isUniquelyReferenced_nonNull_native);

      *(v41 + 112) = v53[0];
      swift_endAccess();
      v48 = swift_task_alloc();
      *(v0 + 608) = v48;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
      *(v0 + 616) = v49;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
      *v48 = v0;
      v48[1] = sub_22FAFED7C;
      v51 = MEMORY[0x277D84950];

      return MEMORY[0x282200430](v0 + 224, v46, v49, v50, v51);
    }

    else
    {

      v29 = sub_22FCC8664();
      v30 = sub_22FCC8F34();

      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 592);
      if (v31)
      {
        v33 = *(v0 + 584);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v53[0] = v35;
        *v34 = 136446466;

        *(v34 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, v53);
        *(v34 + 12) = 2082;
        v36 = sub_22FA2F600(v33, v32, v53);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_22FA28000, v29, v30, "Successfully reusing worker %{public}s for %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v35, -1, -1);
        MEMORY[0x23190A000](v34, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 304);

      v52 = *(v0 + 8);

      return v52(v1);
    }
  }

  else
  {
    v9 = *(v0 + 576);
    sub_22FA2D328(v0 + 304, v0 + 16);
    v10 = sub_22FB0FE94(&qword_281482350, type metadata accessor for PhotoLibraryWorker);
    *(v0 + 56) = v9;
    *(v0 + 64) = v10;
    *(v0 + 72) = 0;
    sub_22FA2D328(v0 + 304, v0 + 384);
    sub_22FB0FA48(v0 + 16, v0 + 80);

    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 592);
    if (v13)
    {
      v15 = *(v0 + 584);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v53[0] = v18;
      *v16 = 136446722;
      __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
      v19 = sub_22FCC96C4();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0(v0 + 384);
      v22 = sub_22FA2F600(v19, v21, v53);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2082;
      v23 = sub_22FA2F600(v15, v14, v53);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2114;
      sub_22FB0F918();
      swift_allocError();
      sub_22FB0FA48(v0 + 80, v24);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      sub_22FB0FAA4(v0 + 80);
      *(v16 + 24) = v25;
      *v17 = v25;
      _os_log_impl(&dword_22FA28000, v11, v12, "Failed to reuse worker %{public}s for %{public}s: %{public}@", v16, 0x20u);
      sub_22FA2B420(v17, &unk_27DAD7B10);
      MEMORY[0x23190A000](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v18, -1, -1);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    else
    {

      sub_22FB0FAA4(v0 + 80);
      __swift_destroy_boxed_opaque_existential_0(v0 + 384);
    }

    sub_22FB0F918();
    swift_allocError();
    sub_22FB0FA48(v0 + 16, v26);
    swift_willThrow();

    sub_22FB0FAA4(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0(v0 + 304);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_22FAFFD68(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  v3[70] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v3[71] = swift_task_alloc();
  v3[72] = type metadata accessor for LegacyStorytellingWorker();

  return MEMORY[0x2822009F8](sub_22FAFFE40, v2, 0);
}

uint64_t sub_22FAFFE40()
{
  v2 = v0[69];
  v3 = *(v2 + 144);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = v0[68];
    v5 = sub_22FAF85A0(v0[67]);
    v7 = v6;
    v0[73] = v5;
    v0[74] = v6;
    sub_22FA728C0(v4, (v0 + 23));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    v10 = sub_22FA2DB54(v5, v7);
    v12 = *(v9 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v1 = v11;
      if (*(v9 + 24) < v15)
      {
        sub_22FA6BB98(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_22FA2DB54(v5, v7);
        if ((v1 & 1) != (v16 & 1))
        {

          return sub_22FCC9774();
        }

LABEL_12:
        *(v2 + 120) = v9;
        if (v1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v47 = v10;
    sub_22FA701B4();
    v10 = v47;
    *(v2 + 120) = v9;
    if (v1)
    {
LABEL_14:
      v22 = v0[69];
      sub_22FB04F78((v0 + 18), (v0 + 23));
      sub_22FA3A7C4((v0 + 18));
      swift_endAccess();
      swift_beginAccess();
      v23 = *(v22 + 112);
      if (*(v23 + 16))
      {

        v24 = sub_22FA2DB54(v5, v7);
        if (v25)
        {
          v26 = *(*(v23 + 56) + 8 * v24);
          v0[79] = v26;

          v27 = swift_task_alloc();
          v0[80] = v27;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
          v0[81] = v28;
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
          *v27 = v0;
          v27[1] = sub_22FB009A8;
          v30 = MEMORY[0x277D84950];
          v31 = v0 + 38;
          v32 = v26;
          v33 = v28;
LABEL_19:

          return MEMORY[0x282200430](v31, v32, v33, v29, v30);
        }
      }

      v34 = v0[74];
      v35 = v0[73];
      v36 = v0[71];
      v37 = v0[70];
      v38 = v0[69];
      v39 = v0[67];
      v40 = sub_22FCC8D14();
      (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
      v41 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory);
      v42 = swift_allocObject();
      v42[2] = v38;
      v42[3] = v41;
      v42[4] = v35;
      v42[5] = v34;
      v42[6] = v39;
      v42[7] = v38;
      v42[8] = v37;
      swift_retain_n();

      v43 = sub_22FB22FC0(0, 0, v36, &unk_22FCD6378, v42);
      v0[75] = v43;
      swift_beginAccess();

      v44 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v38 + 112);
      *(v38 + 112) = 0x8000000000000000;
      sub_22FB25980(v43, v35, v34, v44);

      *(v38 + 112) = v48;
      swift_endAccess();
      v45 = swift_task_alloc();
      v0[76] = v45;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
      v0[77] = v46;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
      *v45 = v0;
      v45[1] = sub_22FB003BC;
      v30 = MEMORY[0x277D84950];
      v31 = v0 + 28;
      v32 = v43;
      v33 = v46;
      goto LABEL_19;
    }

LABEL_13:
    sub_22FC4C51C(v10, v5, v7, MEMORY[0x277D84FA0], v9);

    goto LABEL_14;
  }

  v19 = *(v3 + 16);
  v18 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v20 = v19;
  *(v20 + 8) = v18;
  *(v20 + 16) = 0;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_22FB003BC()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 552);
  if (v0)
  {
    v4 = sub_22FB0FFE8;
  }

  else
  {
    v4 = sub_22FB004E8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB004E8()
{
  v33 = v0;
  sub_22FA2D328((v0 + 28), (v0 + 33));
  if (swift_dynamicCast())
  {
    v1 = v0[65];

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[74];
    if (v4)
    {
      v6 = v0[73];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;

      *(v7 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, v32);
      *(v7 + 12) = 2082;
      v9 = sub_22FA2F600(v6, v5, v32);

      *(v7 + 14) = v9;
      _os_log_impl(&dword_22FA28000, v2, v3, "Successfully instantiated worker %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 28));

    v29 = v0[1];

    return v29(v1);
  }

  else
  {
    v10 = v0[72];
    sub_22FB0F918();
    v11 = swift_allocError();
    v13 = v12;
    sub_22FA2D328((v0 + 28), v12);
    v14 = sub_22FB0FE94(&qword_28147EB60, type metadata accessor for LegacyStorytellingWorker);
    *(v13 + 40) = v10;
    *(v13 + 48) = v14;
    *(v13 + 56) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 28));
    v15 = v0[74];
    v16 = v0[73];
    swift_beginAccess();
    sub_22FB0410C(v16, v15, sub_22FA701A0);
    swift_endAccess();

    v17 = v11;
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[74];
    if (v20)
    {
      v22 = v0[73];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v23 = 136446466;
      v26 = sub_22FA2F600(v22, v21, v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2114;
      v27 = v11;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      _os_log_impl(&dword_22FA28000, v18, v19, "Failed to instantiate worker for %{public}s: %{public}@", v23, 0x16u);
      sub_22FA2B420(v24, &unk_27DAD7B10);
      MEMORY[0x23190A000](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    else
    {
    }

    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22FB009A8()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);

    v4 = sub_22FB0FFD8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 552);
    v4 = sub_22FB00AD0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22FB00AD0()
{
  v54 = v0;
  sub_22FA2D328(v0 + 304, v0 + 344);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 528);
    v2 = [*(*(*(v1 + 112) + 120) + 112) unavailabilityReason];
    if (v2)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 592);
        v6 = *(v0 + 584);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v53[0] = v8;
        *v7 = 136446466;

        *(v7 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, v53);
        *(v7 + 12) = 2082;
        *(v7 + 14) = sub_22FA2F600(v6, v5, v53);
        _os_log_impl(&dword_22FA28000, v3, v4, "Unable to reuse worker %{public}s for %{public}s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v8, -1, -1);
        MEMORY[0x23190A000](v7, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 304);
      v37 = *(v0 + 592);
      v38 = *(v0 + 584);
      v39 = *(v0 + 568);
      v40 = *(v0 + 560);
      v41 = *(v0 + 552);
      v42 = *(v0 + 536);
      v43 = sub_22FCC8D14();
      (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
      v44 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory);
      v45 = swift_allocObject();
      v45[2] = v41;
      v45[3] = v44;
      v45[4] = v38;
      v45[5] = v37;
      v45[6] = v42;
      v45[7] = v41;
      v45[8] = v40;
      swift_retain_n();

      v46 = sub_22FB22FC0(0, 0, v39, &unk_22FCD6378, v45);
      *(v0 + 600) = v46;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = *(v41 + 112);
      *(v41 + 112) = 0x8000000000000000;
      sub_22FB25980(v46, v38, v37, isUniquelyReferenced_nonNull_native);

      *(v41 + 112) = v53[0];
      swift_endAccess();
      v48 = swift_task_alloc();
      *(v0 + 608) = v48;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
      *(v0 + 616) = v49;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
      *v48 = v0;
      v48[1] = sub_22FB003BC;
      v51 = MEMORY[0x277D84950];

      return MEMORY[0x282200430](v0 + 224, v46, v49, v50, v51);
    }

    else
    {

      v29 = sub_22FCC8664();
      v30 = sub_22FCC8F34();

      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 592);
      if (v31)
      {
        v33 = *(v0 + 584);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v53[0] = v35;
        *v34 = 136446466;

        *(v34 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, v53);
        *(v34 + 12) = 2082;
        v36 = sub_22FA2F600(v33, v32, v53);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_22FA28000, v29, v30, "Successfully reusing worker %{public}s for %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v35, -1, -1);
        MEMORY[0x23190A000](v34, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 304);

      v52 = *(v0 + 8);

      return v52(v1);
    }
  }

  else
  {
    v9 = *(v0 + 576);
    sub_22FA2D328(v0 + 304, v0 + 16);
    v10 = sub_22FB0FE94(&qword_28147EB60, type metadata accessor for LegacyStorytellingWorker);
    *(v0 + 56) = v9;
    *(v0 + 64) = v10;
    *(v0 + 72) = 0;
    sub_22FA2D328(v0 + 304, v0 + 384);
    sub_22FB0FA48(v0 + 16, v0 + 80);

    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 592);
    if (v13)
    {
      v15 = *(v0 + 584);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v53[0] = v18;
      *v16 = 136446722;
      __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
      v19 = sub_22FCC96C4();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0(v0 + 384);
      v22 = sub_22FA2F600(v19, v21, v53);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2082;
      v23 = sub_22FA2F600(v15, v14, v53);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2114;
      sub_22FB0F918();
      swift_allocError();
      sub_22FB0FA48(v0 + 80, v24);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      sub_22FB0FAA4(v0 + 80);
      *(v16 + 24) = v25;
      *v17 = v25;
      _os_log_impl(&dword_22FA28000, v11, v12, "Failed to reuse worker %{public}s for %{public}s: %{public}@", v16, 0x20u);
      sub_22FA2B420(v17, &unk_27DAD7B10);
      MEMORY[0x23190A000](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v18, -1, -1);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    else
    {

      sub_22FB0FAA4(v0 + 80);
      __swift_destroy_boxed_opaque_existential_0(v0 + 384);
    }

    sub_22FB0F918();
    swift_allocError();
    sub_22FB0FA48(v0 + 16, v26);
    swift_willThrow();

    sub_22FB0FAA4(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0(v0 + 304);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_22FB013AC(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  v3[70] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v3[71] = swift_task_alloc();
  v3[72] = type metadata accessor for TestWorker();

  return MEMORY[0x2822009F8](sub_22FB01484, v2, 0);
}

uint64_t sub_22FB01484()
{
  v2 = v0[69];
  v3 = *(v2 + 144);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = v0[68];
    v5 = sub_22FAF86E0(v0[67]);
    v7 = v6;
    v0[73] = v5;
    v0[74] = v6;
    sub_22FA728C0(v4, (v0 + 23));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    v10 = sub_22FA2DB54(v5, v7);
    v12 = *(v9 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v1 = v11;
      if (*(v9 + 24) < v15)
      {
        sub_22FA6BB98(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_22FA2DB54(v5, v7);
        if ((v1 & 1) != (v16 & 1))
        {

          return sub_22FCC9774();
        }

LABEL_12:
        *(v2 + 120) = v9;
        if (v1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v45 = v10;
    sub_22FA701B4();
    v10 = v45;
    *(v2 + 120) = v9;
    if (v1)
    {
LABEL_14:
      v22 = v0[69];
      sub_22FB04F78((v0 + 18), (v0 + 23));
      sub_22FA3A7C4((v0 + 18));
      swift_endAccess();
      swift_beginAccess();
      v23 = *(v22 + 112);
      if (*(v23 + 16))
      {

        v24 = sub_22FA2DB54(v5, v7);
        if (v25)
        {
          v26 = *(*(v23 + 56) + 8 * v24);
          v0[79] = v26;

          v27 = swift_task_alloc();
          v0[80] = v27;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
          v0[81] = v28;
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
          *v27 = v0;
          v27[1] = sub_22FB01FE4;
          v30 = MEMORY[0x277D84950];
          v31 = v0 + 38;
          v32 = v26;
          v33 = v28;
LABEL_19:

          return MEMORY[0x282200430](v31, v32, v33, v29, v30);
        }
      }

      v34 = v0[71];
      v35 = v0[70];
      v36 = v0[69];
      v37 = v0[67];
      v38 = sub_22FCC8D14();
      (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
      v39 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory);
      v40 = swift_allocObject();
      v40[2] = v36;
      v40[3] = v39;
      v40[4] = v5;
      v40[5] = v7;
      v40[6] = v37;
      v40[7] = v36;
      v40[8] = v35;
      swift_retain_n();

      v41 = sub_22FB22FC0(0, 0, v34, &unk_22FCD63D8, v40);
      v0[75] = v41;
      swift_beginAccess();

      v42 = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v22 + 112);
      *(v22 + 112) = 0x8000000000000000;
      sub_22FB25980(v41, v5, v7, v42);

      *(v22 + 112) = v46;
      swift_endAccess();
      v43 = swift_task_alloc();
      v0[76] = v43;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
      v0[77] = v44;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
      *v43 = v0;
      v43[1] = sub_22FB019F8;
      v30 = MEMORY[0x277D84950];
      v31 = v0 + 28;
      v32 = v41;
      v33 = v44;
      goto LABEL_19;
    }

LABEL_13:
    sub_22FC4C51C(v10, v5, v7, MEMORY[0x277D84FA0], v9);

    goto LABEL_14;
  }

  v19 = *(v3 + 16);
  v18 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v20 = v19;
  *(v20 + 8) = v18;
  *(v20 + 16) = 0;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_22FB019F8()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 552);
  if (v0)
  {
    v4 = sub_22FB0FFE8;
  }

  else
  {
    v4 = sub_22FB01B24;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB01B24()
{
  v33 = v0;
  sub_22FA2D328((v0 + 28), (v0 + 33));
  if (swift_dynamicCast())
  {
    v1 = v0[65];

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[74];
    if (v4)
    {
      v6 = v0[73];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;

      *(v7 + 4) = sub_22FA2F600(0x6B726F5774736554, 0xEA00000000007265, v32);
      *(v7 + 12) = 2082;
      v9 = sub_22FA2F600(v6, v5, v32);

      *(v7 + 14) = v9;
      _os_log_impl(&dword_22FA28000, v2, v3, "Successfully instantiated worker %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 28));

    v29 = v0[1];

    return v29(v1);
  }

  else
  {
    v10 = v0[72];
    sub_22FB0F918();
    v11 = swift_allocError();
    v13 = v12;
    sub_22FA2D328((v0 + 28), v12);
    v14 = sub_22FB0FE94(&qword_27DAD8250, type metadata accessor for TestWorker);
    *(v13 + 40) = v10;
    *(v13 + 48) = v14;
    *(v13 + 56) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 28));
    v15 = v0[74];
    v16 = v0[73];
    swift_beginAccess();
    sub_22FB0410C(v16, v15, sub_22FA701A0);
    swift_endAccess();

    v17 = v11;
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[74];
    if (v20)
    {
      v22 = v0[73];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v23 = 136446466;
      v26 = sub_22FA2F600(v22, v21, v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2114;
      v27 = v11;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      _os_log_impl(&dword_22FA28000, v18, v19, "Failed to instantiate worker for %{public}s: %{public}@", v23, 0x16u);
      sub_22FA2B420(v24, &unk_27DAD7B10);
      MEMORY[0x23190A000](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    else
    {
    }

    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22FB01FE4()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);

    v4 = sub_22FB0FFD8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 552);
    v4 = sub_22FB0210C;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22FB0210C()
{
  v32 = v0;
  sub_22FA2D328(v0 + 304, v0 + 344);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 528);

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 592);
    if (v4)
    {
      v6 = *(v0 + 584);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31[0] = v8;
      *v7 = 136446466;

      *(v7 + 4) = sub_22FA2F600(0x6B726F5774736554, 0xEA00000000007265, v31);
      *(v7 + 12) = 2082;
      v9 = sub_22FA2F600(v6, v5, v31);

      *(v7 + 14) = v9;
      _os_log_impl(&dword_22FA28000, v2, v3, "Successfully reusing worker %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 304);

    v27 = *(v0 + 8);

    return v27(v1);
  }

  else
  {
    v10 = *(v0 + 576);
    sub_22FA2D328(v0 + 304, v0 + 16);
    v11 = sub_22FB0FE94(&qword_27DAD8250, type metadata accessor for TestWorker);
    *(v0 + 56) = v10;
    *(v0 + 64) = v11;
    *(v0 + 72) = 0;
    sub_22FA2D328(v0 + 304, v0 + 384);
    sub_22FB0FA48(v0 + 16, v0 + 80);

    v12 = sub_22FCC8664();
    v13 = sub_22FCC8F14();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 592);
    if (v14)
    {
      v16 = *(v0 + 584);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31[0] = v19;
      *v17 = 136446722;
      __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
      v20 = sub_22FCC96C4();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_0(v0 + 384);
      v23 = sub_22FA2F600(v20, v22, v31);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2082;
      v24 = sub_22FA2F600(v16, v15, v31);

      *(v17 + 14) = v24;
      *(v17 + 22) = 2114;
      sub_22FB0F918();
      swift_allocError();
      sub_22FB0FA48(v0 + 80, v25);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      sub_22FB0FAA4(v0 + 80);
      *(v17 + 24) = v26;
      *v18 = v26;
      _os_log_impl(&dword_22FA28000, v12, v13, "Failed to reuse worker %{public}s for %{public}s: %{public}@", v17, 0x20u);
      sub_22FA2B420(v18, &unk_27DAD7B10);
      MEMORY[0x23190A000](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v19, -1, -1);
      MEMORY[0x23190A000](v17, -1, -1);
    }

    else
    {

      sub_22FB0FAA4(v0 + 80);
      __swift_destroy_boxed_opaque_existential_0(v0 + 384);
    }

    sub_22FB0F918();
    swift_allocError();
    sub_22FB0FA48(v0 + 16, v29);
    swift_willThrow();

    sub_22FB0FAA4(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0(v0 + 304);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_22FB02628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FB02650, a7, 0);
}

uint64_t sub_22FB02650()
{
  v1 = v0[2];
  v2 = type metadata accessor for MomentGraphWorker();
  v0[7] = v2;
  *(v1 + 24) = v2;
  *(v1 + 32) = sub_22FB0FE94(&qword_281480230, type metadata accessor for MomentGraphWorker);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22FB0273C;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_22FC15630(v5, v6, v4);
}

uint64_t sub_22FB0273C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);
    v6 = sub_22FB02908;
  }

  else
  {
    *(v4 + 80) = a1;
    v6 = sub_22FB02870;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FB02870()
{
  v1 = v0[10];
  v2 = v0[2];
  swift_allocObject();
  v3 = sub_22FA903F0(v1);

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB02908()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB0296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FB02994, a7, 0);
}

uint64_t sub_22FB02994()
{
  v1 = v0[2];
  v2 = *(v0[6] + 128);
  *(v1 + 24) = type metadata accessor for PhotoLibraryWorker();
  *(v1 + 32) = sub_22FB0FE94(&qword_281482350, type metadata accessor for PhotoLibraryWorker);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22FB02A80;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_22FB03180(v6, v4, v5, v2);
}

uint64_t sub_22FB02A80(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v4 + 48);

    return MEMORY[0x2822009F8](sub_22FB0FFF0, v6, 0);
  }

  else
  {
    **(v4 + 16) = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_22FB02BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FB02BFC, a7, 0);
}

uint64_t sub_22FB02BFC()
{
  v1 = v0[2];
  v2 = type metadata accessor for LegacyStorytellingWorker();
  v0[7] = v2;
  *(v1 + 24) = v2;
  *(v1 + 32) = sub_22FB0FE94(&qword_28147EB60, type metadata accessor for LegacyStorytellingWorker);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22FB02CE8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_22FC15630(v5, v6, v4);
}

uint64_t sub_22FB02CE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);
    v6 = sub_22FB0FFEC;
  }

  else
  {
    *(v4 + 80) = a1;
    v6 = sub_22FB02E1C;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FB02E1C()
{
  v1 = v0[10];
  v2 = v0[2];
  swift_allocObject();
  v3 = sub_22FBBEEEC(v1);

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB02EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FB02EDC, a7, 0);
}

uint64_t sub_22FB02EDC()
{
  v1 = v0[2];
  v2 = *(v0[6] + 128);
  *(v1 + 24) = type metadata accessor for TestWorker();
  *(v1 + 32) = sub_22FB0FE94(&qword_27DAD8250, type metadata accessor for TestWorker);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22FB02FC8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_22FB035E8(v6, v4, v5, v2);
}

uint64_t sub_22FB02FC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v4 + 48);

    return MEMORY[0x2822009F8](sub_22FB0311C, v6, 0);
  }

  else
  {
    **(v4 + 16) = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_22FB0311C()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB03180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22FB031F8, a4, 0);
}

uint64_t sub_22FB031F8()
{
  sub_22FC1C560(*(v0 + 112), v0 + 16);
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(*(v3 + 8) + 16))(v2);
  v6 = v5;
  *(v0 + 136) = v5;
  sub_22FA2D328(v0 + 16, v0 + 56);
  v7 = swift_allocObject();
  *(v0 + 144) = v7;
  *(v7 + 16) = v1;
  sub_22FA2CF78((v0 + 56), v7 + 24);

  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_22FB033A0;
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);

  return sub_22FC16B78(v4, v6, v9, v10, &unk_22FCDCD80, v7);
}

uint64_t sub_22FB033A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = *(v4 + 120);
    v6 = sub_22FB0FFC8;
  }

  else
  {
    v7 = *(v4 + 120);

    *(v4 + 168) = a1;
    v6 = sub_22FB034F0;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FB034F0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2822009F8](sub_22FB03558, 0, 0);
}

uint64_t sub_22FB03558()
{
  v1 = *(v0 + 168);
  type metadata accessor for PhotoLibraryWorker();
  swift_allocObject();
  v2 = sub_22FBB5304(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22FB035E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22FB03660, a4, 0);
}

uint64_t sub_22FB03660()
{
  sub_22FC1C560(*(v0 + 112), v0 + 16);
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(*(v3 + 8) + 16))(v2);
  v6 = v5;
  *(v0 + 136) = v5;
  sub_22FA2D328(v0 + 16, v0 + 56);
  v7 = swift_allocObject();
  *(v0 + 144) = v7;
  *(v7 + 16) = v1;
  sub_22FA2CF78((v0 + 56), v7 + 24);

  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_22FB03808;
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);

  return sub_22FC16B78(v4, v6, v9, v10, &unk_22FCD63E8, v7);
}

uint64_t sub_22FB03808(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = *(v4 + 120);
    v6 = sub_22FB03A50;
  }

  else
  {
    v7 = *(v4 + 120);

    *(v4 + 168) = a1;
    v6 = sub_22FB03958;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FB03958()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2822009F8](sub_22FB039C0, 0, 0);
}

uint64_t sub_22FB039C0()
{
  v1 = *(v0 + 168);
  type metadata accessor for TestWorker();
  swift_allocObject();
  v2 = sub_22FACB5D8(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22FB03A50()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB03AC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF1720(a1);
}

uint64_t sub_22FB03B74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF6220(a1);
}

uint64_t sub_22FB03C24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF30C8(a1);
}

uint64_t sub_22FB03CD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF3FD8(a1);
}

uint64_t sub_22FB03D84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF387C(a1);
}

uint64_t sub_22FB03E34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF6920(a1);
}

uint64_t sub_22FB03F04()
{
  v0[7] = v0[8];
  type metadata accessor for ActivitySession();
  sub_22FB0FE94(&qword_281480D10, type metadata accessor for ActivitySession);

  sub_22FCC9324();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF27C8;

  return sub_22FAFBA28((v0 + 2));
}

uint64_t sub_22FB0402C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF47E0(a1);
}

uint64_t sub_22FB0410C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3;
  v6 = sub_22FA2DB54(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_22FB04A60(v8, v10);
  *v5 = v10;
  return v11;
}

double sub_22FB04248@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v8 = v5;
  v10 = sub_22FA2DB54(a1, a2);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v5;
    v16 = *v8;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v14 = v16;
    }

    a3(*(v14 + 56) + 40 * v12, a5);
    sub_22FB04734(v12, v14);
    *v8 = v14;
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22FB04324(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_22FA2DB54(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22FA720E8();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_22FB04A60(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_22FB04400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_22FA2DB54(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_22FB0FD00(v19 + *(v27 + 72) * v16, a7, a4);
    sub_22FB04C10(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

unint64_t sub_22FB04584(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FCC9284() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22FCC9834();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_22FCC7FF4() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

uint64_t sub_22FB04734(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FCC9284() + 1) & ~v5;
    do
    {
      sub_22FCC9844();

      sub_22FCC8B14();
      v11 = sub_22FCC9894();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22FB048F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FCC9284() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_22FCC9834();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22FB04A60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FCC9284() + 1) & ~v5;
    do
    {
      sub_22FCC9844();

      sub_22FCC8B14();
      v9 = sub_22FCC9894();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22FB04C10(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22FCC9284() + 1) & ~v6;
    while (1)
    {
      sub_22FCC9844();

      sub_22FCC8B14();
      v11 = sub_22FCC9894();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22FB04E04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22FCC9844();
  sub_22FCC8B14();
  v8 = sub_22FCC9894();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22FCC9704() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22FB05FC4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22FB04F78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22FCC9304();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_22FA728C0(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x231908770](v16, a2);
      sub_22FA3A7C4(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_22FA3A7C4(a2);
    sub_22FA728C0(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22FA728C0(a2, v16);
    v15 = *v3;
    sub_22FB06144(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_22FB050C4(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_22FCC9834();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_22FB062BC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22FB051C8(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_22FCC92D4();

    if (v16)
    {

      sub_22FA3A77C(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_22FCC92C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_22FB0543C(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_22FB05D20(v27 + 1, a5);
        }

        v28 = v15;
        sub_22FB05F40(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_22FA3A77C(0, a3);
    v18 = sub_22FCC9174();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_22FCC9184();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_22FB063DC(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22FB0543C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_22FCC9354();
    v20 = v7;
    sub_22FCC92B4();
    if (sub_22FCC92E4())
    {
      sub_22FA3A77C(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_22FB05D20(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_22FCC9174();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_22FCC92E4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_22FB0563C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F98);
  result = sub_22FCC9344();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_22FB0589C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8380);
  result = sub_22FCC9344();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = sub_22FCC9304();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_22FB05AFC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD84A0);
  result = sub_22FCC9344();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_22FCC9834();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_22FB05D20(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_22FCC9344();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_22FCC9174();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_22FB05F40(uint64_t a1, uint64_t a2)
{
  sub_22FCC9174();
  result = sub_22FCC92A4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22FB05FC4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22FB0563C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22FB0656C();
      goto LABEL_16;
    }

    sub_22FB06AC0();
  }

  v10 = *v4;
  sub_22FCC9844();
  sub_22FCC8B14();
  result = sub_22FCC9894();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22FCC9704();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22FCC9764();
  __break(1u);
  return result;
}

uint64_t sub_22FB06144(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22FB0589C();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_22FB066C8();
      goto LABEL_12;
    }

    sub_22FB06CF8();
  }

  v9 = *v3;
  result = sub_22FCC9304();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_22FA728C0(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x231908770](v19, v6);
      result = sub_22FA3A7C4(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22FCC9764();
  __break(1u);
  return result;
}

uint64_t sub_22FB062BC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22FB05AFC();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22FB06840();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22FB06F24();
  }

  v8 = *v3;
  result = sub_22FCC9834();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22FCC9764();
  __break(1u);
  return result;
}

void sub_22FB063DC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_22FB05D20(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_22FB06980(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_22FB07114(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_22FCC9174();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_22FA3A77C(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_22FCC9184();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22FCC9764();
  __break(1u);
}

void *sub_22FB0656C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F98);
  v2 = *v0;
  v3 = sub_22FCC9334();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22FB066C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8380);
  v2 = *v0;
  v3 = sub_22FCC9334();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_22FA728C0(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22FB06840()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD84A0);
  v2 = *v0;
  v3 = sub_22FCC9334();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_22FB06980(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_22FCC9334();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FB06AC0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F98);
  result = sub_22FCC9344();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_22FCC9844();

      sub_22FCC8B14();
      result = sub_22FCC9894();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_22FB06CF8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8380);
  result = sub_22FCC9344();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_22FA728C0(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = sub_22FCC9304();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_22FB06F24()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD84A0);
  result = sub_22FCC9344();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_22FCC9834();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22FB07114(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_22FCC9344();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_22FCC9174();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_22FB0735C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22FCC92C4();
  }

  return sub_22FCC93C4();
}

uint64_t sub_22FB073C0(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_22FCC96B4();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_22FCC8C74();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_22FB074E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = &v65 - v11;
  v12 = type metadata accessor for PhotoLibraryResource(0);
  v13 = MEMORY[0x28223BE20](v12);
  v78 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v79 = &v65 - v17;
  v66 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = (v16 + 56);
    v73 = 0x800000022FCE1620;
    v80 = (v16 + 56);
    v68 = v10;
    v70 = v18;
LABEL_7:
    result = *(v18 + 8 * a3);
    v67 = a3;
    while (1)
    {
      v74 = a3 - 1;
      v75 = a3;
      v20 = *(v18 + 8 * (a3 - 1));
      v21 = *(result + 136);
      v22 = *(v21 + 16);
      v76 = result;
      v77 = v20;
      if (v22)
      {
        break;
      }

      v28 = 0;
LABEL_18:
      v32 = *(v20 + 136);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = 0;
        v35 = v32 + 32;
        while (v34 < *(v32 + 16))
        {
          sub_22FA2D328(v35, &v83);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
          v36 = swift_dynamicCast();
          v37 = *v19;
          if (v36)
          {
            v37(v10, 0, 1, v12);
            v38 = v12;
            v39 = v78;
            sub_22FB0FD00(v10, v78, type metadata accessor for PhotoLibraryResource);
            v40 = *v39;
            v41 = v39;
            v12 = v38;
            v19 = v80;
            result = sub_22FA64AB0(v41);
            if (v40)
            {
              if (v28)
              {
                goto LABEL_29;
              }

              goto LABEL_5;
            }
          }

          else
          {
            v37(v10, 1, 1, v12);
            result = sub_22FA2B420(v10, &qword_27DAD8358);
          }

          ++v34;
          v35 += 40;
          if (v33 == v34)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_46;
      }

LABEL_27:
      if (v28)
      {

        v18 = v70;
        v42 = v75;
      }

      else
      {
LABEL_29:
        v43 = *(v76 + 136);
        v44 = *(v43 + 16);
        if (v44)
        {
          v45 = 0;
          v46 = v43 + 32;
          v47 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v46, &v83);
            v81 = 32;
            v82 = 0xE100000000000000;
            v49 = v85;
            v48 = v86;
            __swift_project_boxed_opaque_existential_1(&v83, v85);
            v50 = (*(v48 + 16))(v49, v48);
            MEMORY[0x231907FA0](v50);

            v52 = v81;
            v51 = v82;
            v81 = v45;
            v82 = v47;

            MEMORY[0x231907FA0](v52, v51);

            v45 = v81;
            v47 = v82;
            __swift_destroy_boxed_opaque_existential_0(&v83);
            v46 += 40;
            --v44;
          }

          while (v44);
        }

        else
        {
          v45 = 0;
          v47 = 0xE000000000000000;
        }

        v83 = 0xD000000000000011;
        v84 = v73;
        MEMORY[0x231907FA0](v45, v47);

        v71 = v83;
        v72 = v84;
        v53 = *(v77 + 136);
        v54 = *(v53 + 16);
        v55 = 0;
        if (v54)
        {
          v56 = v53 + 32;
          v57 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v56, &v83);
            v81 = 32;
            v82 = 0xE100000000000000;
            v58 = v85;
            v59 = v86;
            __swift_project_boxed_opaque_existential_1(&v83, v85);
            v60 = (*(v59 + 16))(v58, v59);
            MEMORY[0x231907FA0](v60);

            v62 = v81;
            v61 = v82;
            v81 = v55;
            v82 = v57;

            MEMORY[0x231907FA0](v62, v61);

            v55 = v81;
            v57 = v82;
            __swift_destroy_boxed_opaque_existential_0(&v83);
            v56 += 40;
            --v54;
          }

          while (v54);
        }

        else
        {
          v57 = 0xE000000000000000;
        }

        v83 = 0xD000000000000011;
        v84 = v73;
        MEMORY[0x231907FA0](v55, v57);

        if (v71 == v83 && v72 == v84)
        {

          v10 = v68;
LABEL_5:
          v18 = v70;
LABEL_6:
          a3 = v67 + 1;
          if (v67 + 1 == v66)
          {
            return result;
          }

          goto LABEL_7;
        }

        v63 = sub_22FCC9704();

        v10 = v68;
        v18 = v70;
        v42 = v75;
        if ((v63 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (!v18)
      {
        goto LABEL_47;
      }

      result = *(v18 + 8 * v42);
      v64 = v74;
      *(v18 + 8 * v42) = *(v18 + 8 * v74);
      *(v18 + 8 * v64) = result;
      a3 = v64;
      if (v64 == v69)
      {
        goto LABEL_6;
      }
    }

    v23 = v21 + 32;

    v24 = 0;
    while (v24 < *(v21 + 16))
    {
      sub_22FA2D328(v23, &v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
      v25 = v87;
      v26 = swift_dynamicCast();
      v27 = *v19;
      if (v26)
      {
        v28 = 1;
        v27(v25, 0, 1, v12);
        v29 = v79;
        sub_22FB0FD00(v25, v79, type metadata accessor for PhotoLibraryResource);
        v30 = *v29;
        v31 = v29;
        v19 = v80;
        result = sub_22FA64AB0(v31);
        if (v30)
        {
          v20 = v77;
          goto LABEL_18;
        }
      }

      else
      {
        v27(v25, 1, 1, v12);
        result = sub_22FA2B420(v25, &qword_27DAD8358);
      }

      ++v24;
      v23 += 40;
      if (v22 == v24)
      {
        v28 = 0;
        v20 = v77;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FB07BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = &v65 - v11;
  v12 = type metadata accessor for PhotoLibraryResource(0);
  v13 = MEMORY[0x28223BE20](v12);
  v78 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v79 = &v65 - v17;
  v66 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = (v16 + 56);
    v73 = 0x800000022FCE1640;
    v80 = (v16 + 56);
    v68 = v10;
    v70 = v18;
LABEL_7:
    result = *(v18 + 8 * a3);
    v67 = a3;
    while (1)
    {
      v74 = a3 - 1;
      v75 = a3;
      v20 = *(v18 + 8 * (a3 - 1));
      v21 = *(result + 136);
      v22 = *(v21 + 16);
      v76 = result;
      v77 = v20;
      if (v22)
      {
        break;
      }

      v28 = 0;
LABEL_18:
      v32 = *(v20 + 136);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = 0;
        v35 = v32 + 32;
        while (v34 < *(v32 + 16))
        {
          sub_22FA2D328(v35, &v83);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
          v36 = swift_dynamicCast();
          v37 = *v19;
          if (v36)
          {
            v37(v10, 0, 1, v12);
            v38 = v12;
            v39 = v78;
            sub_22FB0FD00(v10, v78, type metadata accessor for PhotoLibraryResource);
            v40 = *v39;
            v41 = v39;
            v12 = v38;
            v19 = v80;
            result = sub_22FA64AB0(v41);
            if (v40)
            {
              if (v28)
              {
                goto LABEL_29;
              }

              goto LABEL_5;
            }
          }

          else
          {
            v37(v10, 1, 1, v12);
            result = sub_22FA2B420(v10, &qword_27DAD8358);
          }

          ++v34;
          v35 += 40;
          if (v33 == v34)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_46;
      }

LABEL_27:
      if (v28)
      {

        v18 = v70;
        v42 = v75;
      }

      else
      {
LABEL_29:
        v43 = *(v76 + 136);
        v44 = *(v43 + 16);
        if (v44)
        {
          v45 = 0;
          v46 = v43 + 32;
          v47 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v46, &v83);
            v81 = 32;
            v82 = 0xE100000000000000;
            v49 = v85;
            v48 = v86;
            __swift_project_boxed_opaque_existential_1(&v83, v85);
            v50 = (*(v48 + 16))(v49, v48);
            MEMORY[0x231907FA0](v50);

            v52 = v81;
            v51 = v82;
            v81 = v45;
            v82 = v47;

            MEMORY[0x231907FA0](v52, v51);

            v45 = v81;
            v47 = v82;
            __swift_destroy_boxed_opaque_existential_0(&v83);
            v46 += 40;
            --v44;
          }

          while (v44);
        }

        else
        {
          v45 = 0;
          v47 = 0xE000000000000000;
        }

        v83 = 0xD000000000000012;
        v84 = v73;
        MEMORY[0x231907FA0](v45, v47);

        v71 = v83;
        v72 = v84;
        v53 = *(v77 + 136);
        v54 = *(v53 + 16);
        v55 = 0;
        if (v54)
        {
          v56 = v53 + 32;
          v57 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v56, &v83);
            v81 = 32;
            v82 = 0xE100000000000000;
            v58 = v85;
            v59 = v86;
            __swift_project_boxed_opaque_existential_1(&v83, v85);
            v60 = (*(v59 + 16))(v58, v59);
            MEMORY[0x231907FA0](v60);

            v62 = v81;
            v61 = v82;
            v81 = v55;
            v82 = v57;

            MEMORY[0x231907FA0](v62, v61);

            v55 = v81;
            v57 = v82;
            __swift_destroy_boxed_opaque_existential_0(&v83);
            v56 += 40;
            --v54;
          }

          while (v54);
        }

        else
        {
          v57 = 0xE000000000000000;
        }

        v83 = 0xD000000000000012;
        v84 = v73;
        MEMORY[0x231907FA0](v55, v57);

        if (v71 == v83 && v72 == v84)
        {

          v10 = v68;
LABEL_5:
          v18 = v70;
LABEL_6:
          a3 = v67 + 1;
          if (v67 + 1 == v66)
          {
            return result;
          }

          goto LABEL_7;
        }

        v63 = sub_22FCC9704();

        v10 = v68;
        v18 = v70;
        v42 = v75;
        if ((v63 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (!v18)
      {
        goto LABEL_47;
      }

      result = *(v18 + 8 * v42);
      v64 = v74;
      *(v18 + 8 * v42) = *(v18 + 8 * v74);
      *(v18 + 8 * v64) = result;
      a3 = v64;
      if (v64 == v69)
      {
        goto LABEL_6;
      }
    }

    v23 = v21 + 32;

    v24 = 0;
    while (v24 < *(v21 + 16))
    {
      sub_22FA2D328(v23, &v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
      v25 = v87;
      v26 = swift_dynamicCast();
      v27 = *v19;
      if (v26)
      {
        v28 = 1;
        v27(v25, 0, 1, v12);
        v29 = v79;
        sub_22FB0FD00(v25, v79, type metadata accessor for PhotoLibraryResource);
        v30 = *v29;
        v31 = v29;
        v19 = v80;
        result = sub_22FA64AB0(v31);
        if (v30)
        {
          v20 = v77;
          goto LABEL_18;
        }
      }

      else
      {
        v27(v25, 1, 1, v12);
        result = sub_22FA2B420(v25, &qword_27DAD8358);
      }

      ++v24;
      v23 += 40;
      if (v22 == v24)
      {
        v28 = 0;
        v20 = v77;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FB082F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = &v65 - v11;
  v12 = type metadata accessor for PhotoLibraryResource(0);
  v13 = MEMORY[0x28223BE20](v12);
  v78 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v79 = &v65 - v17;
  v66 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = (v16 + 56);
    v73 = 0x800000022FCE1660;
    v80 = (v16 + 56);
    v68 = v10;
    v70 = v18;
LABEL_7:
    result = *(v18 + 8 * a3);
    v67 = a3;
    while (1)
    {
      v74 = a3 - 1;
      v75 = a3;
      v20 = *(v18 + 8 * (a3 - 1));
      v21 = *(result + 136);
      v22 = *(v21 + 16);
      v76 = result;
      v77 = v20;
      if (v22)
      {
        break;
      }

      v28 = 0;
LABEL_18:
      v32 = *(v20 + 136);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = 0;
        v35 = v32 + 32;
        while (v34 < *(v32 + 16))
        {
          sub_22FA2D328(v35, &v83);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
          v36 = swift_dynamicCast();
          v37 = *v19;
          if (v36)
          {
            v37(v10, 0, 1, v12);
            v38 = v12;
            v39 = v78;
            sub_22FB0FD00(v10, v78, type metadata accessor for PhotoLibraryResource);
            v40 = *v39;
            v41 = v39;
            v12 = v38;
            v19 = v80;
            result = sub_22FA64AB0(v41);
            if (v40)
            {
              if (v28)
              {
                goto LABEL_29;
              }

              goto LABEL_5;
            }
          }

          else
          {
            v37(v10, 1, 1, v12);
            result = sub_22FA2B420(v10, &qword_27DAD8358);
          }

          ++v34;
          v35 += 40;
          if (v33 == v34)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_46;
      }

LABEL_27:
      if (v28)
      {

        v18 = v70;
        v42 = v75;
      }

      else
      {
LABEL_29:
        v43 = *(v76 + 136);
        v44 = *(v43 + 16);
        if (v44)
        {
          v45 = 0;
          v46 = v43 + 32;
          v47 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v46, &v83);
            v81 = 32;
            v82 = 0xE100000000000000;
            v49 = v85;
            v48 = v86;
            __swift_project_boxed_opaque_existential_1(&v83, v85);
            v50 = (*(v48 + 16))(v49, v48);
            MEMORY[0x231907FA0](v50);

            v52 = v81;
            v51 = v82;
            v81 = v45;
            v82 = v47;

            MEMORY[0x231907FA0](v52, v51);

            v45 = v81;
            v47 = v82;
            __swift_destroy_boxed_opaque_existential_0(&v83);
            v46 += 40;
            --v44;
          }

          while (v44);
        }

        else
        {
          v45 = 0;
          v47 = 0xE000000000000000;
        }

        v83 = 0xD000000000000018;
        v84 = v73;
        MEMORY[0x231907FA0](v45, v47);

        v71 = v83;
        v72 = v84;
        v53 = *(v77 + 136);
        v54 = *(v53 + 16);
        v55 = 0;
        if (v54)
        {
          v56 = v53 + 32;
          v57 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v56, &v83);
            v81 = 32;
            v82 = 0xE100000000000000;
            v58 = v85;
            v59 = v86;
            __swift_project_boxed_opaque_existential_1(&v83, v85);
            v60 = (*(v59 + 16))(v58, v59);
            MEMORY[0x231907FA0](v60);

            v62 = v81;
            v61 = v82;
            v81 = v55;
            v82 = v57;

            MEMORY[0x231907FA0](v62, v61);

            v55 = v81;
            v57 = v82;
            __swift_destroy_boxed_opaque_existential_0(&v83);
            v56 += 40;
            --v54;
          }

          while (v54);
        }

        else
        {
          v57 = 0xE000000000000000;
        }

        v83 = 0xD000000000000018;
        v84 = v73;
        MEMORY[0x231907FA0](v55, v57);

        if (v71 == v83 && v72 == v84)
        {

          v10 = v68;
LABEL_5:
          v18 = v70;
LABEL_6:
          a3 = v67 + 1;
          if (v67 + 1 == v66)
          {
            return result;
          }

          goto LABEL_7;
        }

        v63 = sub_22FCC9704();

        v10 = v68;
        v18 = v70;
        v42 = v75;
        if ((v63 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (!v18)
      {
        goto LABEL_47;
      }

      result = *(v18 + 8 * v42);
      v64 = v74;
      *(v18 + 8 * v42) = *(v18 + 8 * v74);
      *(v18 + 8 * v64) = result;
      a3 = v64;
      if (v64 == v69)
      {
        goto LABEL_6;
      }
    }

    v23 = v21 + 32;

    v24 = 0;
    while (v24 < *(v21 + 16))
    {
      sub_22FA2D328(v23, &v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
      v25 = v87;
      v26 = swift_dynamicCast();
      v27 = *v19;
      if (v26)
      {
        v28 = 1;
        v27(v25, 0, 1, v12);
        v29 = v79;
        sub_22FB0FD00(v25, v79, type metadata accessor for PhotoLibraryResource);
        v30 = *v29;
        v31 = v29;
        v19 = v80;
        result = sub_22FA64AB0(v31);
        if (v30)
        {
          v20 = v77;
          goto LABEL_18;
        }
      }

      else
      {
        v27(v25, 1, 1, v12);
        result = sub_22FA2B420(v25, &qword_27DAD8358);
      }

      ++v24;
      v23 += 40;
      if (v22 == v24)
      {
        v28 = 0;
        v20 = v77;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FB089FC(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v189 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v212 = &v187 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v187 - v13;
  MEMORY[0x28223BE20](v12);
  v210 = &v187 - v15;
  v16 = type metadata accessor for PhotoLibraryResource(0);
  v17 = MEMORY[0x28223BE20](v16);
  v207 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v208 = &v187 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v205 = &v187 - v22;
  result = MEMORY[0x28223BE20](v21);
  v206 = &v187 - v25;
  v196 = a3;
  v26 = a3[1];
  if (v26 >= 1)
  {
    v209 = v14;
    v211 = v9;
    v188 = a4;
    i = 0;
    v28 = (v24 + 56);
    v201 = 0x800000022FCE1620;
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      v30 = i;
      v31 = i + 1;
      v200 = v29;
      v202 = i + 1;
      if ((i + 1) < v26)
      {
        v195 = v26;
        v32 = v29;
        v33 = *v196;
        v34 = *(*v196 + 8 * v31);
        v193 = v30;
        v192 = v33;
        v35 = *(v33 + 8 * v30);

        v36 = sub_22FAF8820() & 1;
        v37 = sub_22FAF8820() & 1;
        if (v36 == v37)
        {
          v38 = sub_22FAF8320(*(v34 + 136));
          v40 = v39;
          if (v38 == sub_22FAF8320(*(v35 + 136)) && v40 == v41)
          {
            LODWORD(v194) = 0;
          }

          else
          {
            LODWORD(v194) = sub_22FCC9704();
          }

          a4 = v210;
        }

        else
        {

          LODWORD(v194) = v37 < v36;
          a4 = v210;
        }

        v187 = 8 * v193;
        v43 = 8 * v193 + 8;
        v29 = v32;
        v44 = v195;
        do
        {
          v47 = v202;
          v46 = v43;
          if (++v202 >= v44)
          {
            break;
          }

          v199 = v43;
          v49 = *(v192 + 8 * (v47 + 1));
          v198 = v47;
          v50 = *(v192 + 8 * v47);
          v51 = *(v49 + 136);
          v52 = *(v51 + 16);
          v203 = v49;
          v204 = v50;
          if (v52)
          {
            v30 = v51 + 32;

            for (i = 0; i != v52; ++i)
            {
              if (i >= *(v51 + 16))
              {
                goto LABEL_184;
              }

              sub_22FA2D328(v30, &v215);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
              v53 = swift_dynamicCast();
              v54 = *v28;
              if (v53)
              {
                v55 = a4;
                a4 = 1;
                v54(v55, 0, 1, v16);
                v56 = v206;
                sub_22FB0FD00(v55, v206, type metadata accessor for PhotoLibraryResource);
                LOBYTE(v55) = *v56;
                sub_22FA64AB0(v56);
                if (v55)
                {
                  v50 = v204;
                  goto LABEL_29;
                }
              }

              else
              {
                v54(a4, 1, 1, v16);
                sub_22FA2B420(a4, &qword_27DAD8358);
              }

              v30 += 40;
              a4 = v210;
            }

            a4 = 0;
            v50 = v204;
          }

          else
          {

            a4 = 0;
          }

LABEL_29:
          v57 = *(v50 + 136);
          v58 = *(v57 + 16);
          if (v58)
          {
            i = 0;
            v30 = v57 + 32;
            do
            {
              if (i >= *(v57 + 16))
              {
                goto LABEL_185;
              }

              sub_22FA2D328(v30, &v215);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
              v59 = v209;
              v60 = swift_dynamicCast();
              v61 = *v28;
              if (v60)
              {
                v61(v59, 0, 1, v16);
                v62 = v205;
                sub_22FB0FD00(v59, v205, type metadata accessor for PhotoLibraryResource);
                v63 = *v62;
                sub_22FA64AB0(v62);
                if (v63)
                {
                  v64 = v203;
                  if ((a4 & 1) == 0)
                  {
                    v65 = 0;
                    v46 = v199;
                    v47 = v198;
                    goto LABEL_40;
                  }

LABEL_42:
                  v66 = *(v64 + 136);
                  v67 = *(v66 + 16);
                  if (v67)
                  {
                    v68 = 0;
                    v69 = v66 + 32;
                    v70 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v69, &v215);
                      v213 = 32;
                      v214 = 0xE100000000000000;
                      v72 = v217;
                      v71 = v218;
                      __swift_project_boxed_opaque_existential_1(&v215, v217);
                      v73 = (*(v71 + 16))(v72, v71);
                      MEMORY[0x231907FA0](v73);

                      v74 = v213;
                      v75 = v214;
                      v213 = v68;
                      v214 = v70;

                      MEMORY[0x231907FA0](v74, v75);

                      v68 = v213;
                      v70 = v214;
                      __swift_destroy_boxed_opaque_existential_0(&v215);
                      v69 += 40;
                      --v67;
                    }

                    while (v67);
                  }

                  else
                  {
                    v68 = 0;
                    v70 = 0xE000000000000000;
                  }

                  v215 = 0xD000000000000011;
                  v216 = v201;
                  MEMORY[0x231907FA0](v68, v70);

                  v191 = v216;
                  v76 = *(v204 + 136);
                  v77 = *(v76 + 16);
                  v190 = v215;
                  v78 = 0;
                  if (v77)
                  {
                    v79 = v76 + 32;
                    v80 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v79, &v215);
                      v213 = 32;
                      v214 = 0xE100000000000000;
                      v81 = v217;
                      v82 = v218;
                      __swift_project_boxed_opaque_existential_1(&v215, v217);
                      v83 = (*(v82 + 16))(v81, v82);
                      MEMORY[0x231907FA0](v83);

                      v84 = v213;
                      v85 = v214;
                      v213 = v78;
                      v214 = v80;

                      MEMORY[0x231907FA0](v84, v85);

                      v78 = v213;
                      v80 = v214;
                      __swift_destroy_boxed_opaque_existential_0(&v215);
                      v79 += 40;
                      --v77;
                    }

                    while (v77);
                  }

                  else
                  {
                    v80 = 0xE000000000000000;
                  }

                  v215 = 0xD000000000000011;
                  v216 = v201;
                  MEMORY[0x231907FA0](v78, v80);

                  if (v190 == v215 && v191 == v216)
                  {
                    v45 = 0;
                  }

                  else
                  {
                    v45 = sub_22FCC9704();
                  }

                  v46 = v199;
                  v47 = v198;

                  goto LABEL_17;
                }
              }

              else
              {
                v61(v59, 1, 1, v16);
                sub_22FA2B420(v59, &qword_27DAD8358);
              }

              ++i;
              v30 += 40;
            }

            while (v58 != i);
          }

          if ((a4 & 1) == 0)
          {
            v64 = v203;
            goto LABEL_42;
          }

          v65 = 1;
          v46 = v199;
          v47 = v198;
LABEL_40:

          v45 = a4 & v65;
LABEL_17:
          v48 = v194 ^ v45;
          v43 = v46 + 8;
          a4 = v210;
          v29 = v200;
          v44 = v195;
        }

        while ((v48 & 1) == 0);
        if (v194)
        {
          v30 = v193;
          if (v202 < v193)
          {
            goto LABEL_207;
          }

          if (v193 < v202)
          {
            v86 = v193;
            v87 = v187;
            do
            {
              if (v86 != v47)
              {
                v89 = *v196;
                if (!*v196)
                {
                  goto LABEL_211;
                }

                v90 = *(v89 + v87);
                *(v89 + v87) = *(v89 + v46);
                *(v89 + v46) = v90;
              }

              ++v86;
              v46 -= 8;
              v87 += 8;
            }

            while (v86 < v47--);
          }
        }

        else
        {
          v30 = v193;
        }
      }

      v91 = v196[1];
      i = v202;
      if (v202 >= v91)
      {
        goto LABEL_75;
      }

      if (__OFSUB__(v202, v30))
      {
        goto LABEL_203;
      }

      if (v202 - v30 >= v188)
      {
        i = v202;
LABEL_75:
        if (i < v30)
        {
          goto LABEL_202;
        }

        goto LABEL_76;
      }

      v92 = v30 + v188;
      if (__OFADD__(v30, v188))
      {
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
        goto LABEL_210;
      }

      if (v92 >= v91)
      {
        v92 = v196[1];
      }

      if (v92 < v30)
      {
        goto LABEL_206;
      }

      i = v202;
      if (v202 == v92)
      {
        goto LABEL_75;
      }

      v193 = v30;
      v93 = *v196;
      v94 = v202;
      v191 = v92;
      v192 = v93;
      while (2)
      {
        v143 = *(v93 + 8 * v94);
        v202 = v94;
        v144 = v94;
        while (1)
        {
          v199 = v144;
          v198 = v144 - 1;
          v145 = *(v93 + 8 * (v144 - 1));
          v146 = *(v143 + 136);
          v147 = *(v146 + 16);
          v203 = v143;
          v204 = v145;
          if (v147)
          {
            v30 = v146 + 32;

            i = 0;
            while (i < *(v146 + 16))
            {
              sub_22FA2D328(v30, &v215);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
              v148 = v212;
              v149 = swift_dynamicCast();
              v150 = *v28;
              if (v149)
              {
                a4 = 1;
                v150(v148, 0, 1, v16);
                v151 = v208;
                sub_22FB0FD00(v148, v208, type metadata accessor for PhotoLibraryResource);
                v152 = *v151;
                sub_22FA64AB0(v151);
                if (v152)
                {
                  v145 = v204;
                  goto LABEL_139;
                }
              }

              else
              {
                v150(v148, 1, 1, v16);
                sub_22FA2B420(v148, &qword_27DAD8358);
              }

              ++i;
              v30 += 40;
              if (v147 == i)
              {
                a4 = 0;
                v145 = v204;
                goto LABEL_139;
              }
            }

            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          a4 = 0;
LABEL_139:
          v153 = *(v145 + 136);
          v154 = *(v153 + 16);
          if (v154)
          {
            break;
          }

LABEL_148:
          if ((a4 & 1) == 0)
          {
            goto LABEL_150;
          }

          v160 = v199;
          v29 = v200;
          v93 = v192;
LABEL_163:
          if (!v93)
          {
            goto LABEL_208;
          }

          v143 = *(v93 + 8 * v160);
          v181 = v198;
          *(v93 + 8 * v160) = *(v93 + 8 * v198);
          *(v93 + 8 * v181) = v143;
          v144 = v181;
          if (v181 == v193)
          {
            goto LABEL_127;
          }
        }

        i = 0;
        v30 = v153 + 32;
        while (1)
        {
          if (i >= *(v153 + 16))
          {
            goto LABEL_183;
          }

          sub_22FA2D328(v30, &v215);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
          v155 = v211;
          v156 = swift_dynamicCast();
          v157 = *v28;
          if (v156)
          {
            break;
          }

          v157(v155, 1, 1, v16);
          sub_22FA2B420(v155, &qword_27DAD8358);
LABEL_142:
          ++i;
          v30 += 40;
          if (v154 == i)
          {
            goto LABEL_148;
          }
        }

        v157(v155, 0, 1, v16);
        v158 = v207;
        sub_22FB0FD00(v155, v207, type metadata accessor for PhotoLibraryResource);
        v159 = *v158;
        sub_22FA64AB0(v158);
        if ((v159 & 1) == 0)
        {
          goto LABEL_142;
        }

        if ((a4 & 1) == 0)
        {

LABEL_126:
          v29 = v200;
          v93 = v192;
          goto LABEL_127;
        }

LABEL_150:
        v161 = *(v203 + 136);
        v162 = *(v161 + 16);
        if (v162)
        {
          v163 = 0;
          v164 = v161 + 32;
          v165 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v164, &v215);
            v213 = 32;
            v214 = 0xE100000000000000;
            v166 = v217;
            v167 = v218;
            __swift_project_boxed_opaque_existential_1(&v215, v217);
            v168 = (*(v167 + 16))(v166, v167);
            MEMORY[0x231907FA0](v168);

            v169 = v213;
            v170 = v214;
            v213 = v163;
            v214 = v165;

            MEMORY[0x231907FA0](v169, v170);

            v163 = v213;
            v165 = v214;
            __swift_destroy_boxed_opaque_existential_0(&v215);
            v164 += 40;
            --v162;
          }

          while (v162);
        }

        else
        {
          v163 = 0;
          v165 = 0xE000000000000000;
        }

        v215 = 0xD000000000000011;
        v216 = v201;
        MEMORY[0x231907FA0](v163, v165);

        v195 = v216;
        v171 = *(v204 + 136);
        v172 = *(v171 + 16);
        v194 = v215;
        v173 = 0;
        if (v172)
        {
          v174 = v171 + 32;
          v175 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v174, &v215);
            v213 = 32;
            v214 = 0xE100000000000000;
            v176 = v217;
            v177 = v218;
            __swift_project_boxed_opaque_existential_1(&v215, v217);
            v178 = (*(v177 + 16))(v176, v177);
            MEMORY[0x231907FA0](v178);

            v179 = v213;
            v180 = v214;
            v213 = v173;
            v214 = v175;

            MEMORY[0x231907FA0](v179, v180);

            v173 = v213;
            v175 = v214;
            __swift_destroy_boxed_opaque_existential_0(&v215);
            v174 += 40;
            --v172;
          }

          while (v172);
        }

        else
        {
          v175 = 0xE000000000000000;
        }

        v215 = 0xD000000000000011;
        v216 = v201;
        a4 = &v215;
        MEMORY[0x231907FA0](v173, v175);

        if (v194 == v215 && v195 == v216)
        {

          goto LABEL_126;
        }

        a4 = sub_22FCC9704();

        v160 = v199;
        v29 = v200;
        v93 = v192;
        if (a4)
        {
          goto LABEL_163;
        }

LABEL_127:
        v94 = v202 + 1;
        if (v202 + 1 != v191)
        {
          continue;
        }

        break;
      }

      i = v191;
      v30 = v193;
      if (v191 < v193)
      {
        goto LABEL_202;
      }

LABEL_76:
      v95 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      v96 = v30;
      if (result)
      {
        v29 = v95;
      }

      else
      {
        result = sub_22FAC21FC(0, *(v95 + 16) + 1, 1, v95);
        v29 = result;
      }

      v98 = *(v29 + 16);
      v97 = *(v29 + 24);
      a4 = v98 + 1;
      if (v98 >= v97 >> 1)
      {
        result = sub_22FAC21FC((v97 > 1), v98 + 1, 1, v29);
        v29 = result;
      }

      *(v29 + 16) = a4;
      v99 = v29 + 16 * v98;
      *(v99 + 32) = v96;
      *(v99 + 40) = i;
      v100 = *v189;
      if (!*v189)
      {
        goto LABEL_212;
      }

      if (v98)
      {
        while (2)
        {
          v30 = a4 - 1;
          if (a4 >= 4)
          {
            v105 = v29 + 32 + 16 * a4;
            v106 = *(v105 - 64);
            v107 = *(v105 - 56);
            v111 = __OFSUB__(v107, v106);
            v108 = v107 - v106;
            if (v111)
            {
              goto LABEL_189;
            }

            v110 = *(v105 - 48);
            v109 = *(v105 - 40);
            v111 = __OFSUB__(v109, v110);
            v103 = v109 - v110;
            v104 = v111;
            if (v111)
            {
              goto LABEL_190;
            }

            v112 = (v29 + 16 * a4);
            v114 = *v112;
            v113 = v112[1];
            v111 = __OFSUB__(v113, v114);
            v115 = v113 - v114;
            if (v111)
            {
              goto LABEL_192;
            }

            v111 = __OFADD__(v103, v115);
            v116 = v103 + v115;
            if (v111)
            {
              goto LABEL_195;
            }

            if (v116 >= v108)
            {
              v134 = (v29 + 32 + 16 * v30);
              v136 = *v134;
              v135 = v134[1];
              v111 = __OFSUB__(v135, v136);
              v137 = v135 - v136;
              if (v111)
              {
                goto LABEL_201;
              }

              if (v103 < v137)
              {
                v30 = a4 - 2;
              }
            }

            else
            {
LABEL_95:
              if (v104)
              {
                goto LABEL_191;
              }

              v117 = (v29 + 16 * a4);
              v119 = *v117;
              v118 = v117[1];
              v120 = __OFSUB__(v118, v119);
              v121 = v118 - v119;
              v122 = v120;
              if (v120)
              {
                goto LABEL_194;
              }

              v123 = (v29 + 32 + 16 * v30);
              v125 = *v123;
              v124 = v123[1];
              v111 = __OFSUB__(v124, v125);
              v126 = v124 - v125;
              if (v111)
              {
                goto LABEL_197;
              }

              if (__OFADD__(v121, v126))
              {
                goto LABEL_198;
              }

              if (v121 + v126 < v103)
              {
                goto LABEL_109;
              }

              if (v103 < v126)
              {
                v30 = a4 - 2;
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v101 = *(v29 + 32);
              v102 = *(v29 + 40);
              v111 = __OFSUB__(v102, v101);
              v103 = v102 - v101;
              v104 = v111;
              goto LABEL_95;
            }

            v127 = (v29 + 16 * a4);
            v129 = *v127;
            v128 = v127[1];
            v111 = __OFSUB__(v128, v129);
            v121 = v128 - v129;
            v122 = v111;
LABEL_109:
            if (v122)
            {
              goto LABEL_193;
            }

            v130 = v29 + 16 * v30;
            v132 = *(v130 + 32);
            v131 = *(v130 + 40);
            v111 = __OFSUB__(v131, v132);
            v133 = v131 - v132;
            if (v111)
            {
              goto LABEL_196;
            }

            if (v133 < v121)
            {
              break;
            }
          }

          v138 = v30 - 1;
          if (v30 - 1 >= a4)
          {
            goto LABEL_186;
          }

          if (!*v196)
          {
            goto LABEL_209;
          }

          v139 = v29;
          a4 = *(v29 + 32 + 16 * v138);
          v140 = *(v29 + 32 + 16 * v30 + 8);
          v141 = v197;
          sub_22FB0C3B0((*v196 + 8 * a4), (*v196 + 8 * *(v29 + 32 + 16 * v30)), (*v196 + 8 * v140), v100);
          v197 = v141;
          if (v141)
          {
          }

          if (v140 < a4)
          {
            goto LABEL_187;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v139 = sub_22FB0EF2C(v139);
          }

          if (v138 >= *(v139 + 2))
          {
            goto LABEL_188;
          }

          v142 = &v139[16 * v138];
          *(v142 + 4) = a4;
          *(v142 + 5) = v140;
          v219 = v139;
          result = sub_22FB0EEA0(v30);
          v29 = v219;
          a4 = *(v219 + 16);
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v26 = v196[1];
      if (i >= v26)
      {
        goto LABEL_170;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_170:
  v30 = *v189;
  if (!*v189)
  {
    goto LABEL_213;
  }

  a4 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  i = v197;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = a4;
  }

  else
  {
LABEL_204:
    result = sub_22FB0EF2C(a4);
  }

  v219 = result;
  a4 = *(result + 16);
  if (a4 < 2)
  {
  }

  while (*v196)
  {
    v183 = *(result + 16 * a4);
    v184 = result;
    v185 = *(result + 16 * (a4 - 1) + 40);
    sub_22FB0C3B0((*v196 + 8 * v183), (*v196 + 8 * *(result + 16 * (a4 - 1) + 32)), (*v196 + 8 * v185), v30);
    if (i)
    {
    }

    if (v185 < v183)
    {
      goto LABEL_199;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = sub_22FB0EF2C(v184);
    }

    if (a4 - 2 >= *(v184 + 2))
    {
      goto LABEL_200;
    }

    v186 = &v184[16 * a4];
    *v186 = v183;
    *(v186 + 1) = v185;
    v219 = v184;
    sub_22FB0EEA0(a4 - 1);
    result = v219;
    a4 = *(v219 + 16);
    if (a4 <= 1)
    {
    }
  }

LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
  return result;
}

uint64_t sub_22FB09D38(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v189 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v212 = &v187 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v187 - v13;
  MEMORY[0x28223BE20](v12);
  v210 = &v187 - v15;
  v16 = type metadata accessor for PhotoLibraryResource(0);
  v17 = MEMORY[0x28223BE20](v16);
  v207 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v208 = &v187 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v205 = &v187 - v22;
  result = MEMORY[0x28223BE20](v21);
  v206 = &v187 - v25;
  v196 = a3;
  v26 = a3[1];
  if (v26 >= 1)
  {
    v209 = v14;
    v211 = v9;
    v188 = a4;
    i = 0;
    v28 = (v24 + 56);
    v201 = 0x800000022FCE1640;
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      v30 = i;
      v31 = i + 1;
      v200 = v29;
      v202 = i + 1;
      if ((i + 1) < v26)
      {
        v195 = v26;
        v32 = v29;
        v33 = *v196;
        v34 = *(*v196 + 8 * v31);
        v193 = v30;
        v192 = v33;
        v35 = *(v33 + 8 * v30);

        v36 = sub_22FAF8820() & 1;
        v37 = sub_22FAF8820() & 1;
        if (v36 == v37)
        {
          v38 = sub_22FAF8460(*(v34 + 136));
          v40 = v39;
          if (v38 == sub_22FAF8460(*(v35 + 136)) && v40 == v41)
          {
            LODWORD(v194) = 0;
          }

          else
          {
            LODWORD(v194) = sub_22FCC9704();
          }

          a4 = v210;
        }

        else
        {

          LODWORD(v194) = v37 < v36;
          a4 = v210;
        }

        v187 = 8 * v193;
        v43 = 8 * v193 + 8;
        v29 = v32;
        v44 = v195;
        do
        {
          v47 = v202;
          v46 = v43;
          if (++v202 >= v44)
          {
            break;
          }

          v199 = v43;
          v49 = *(v192 + 8 * (v47 + 1));
          v198 = v47;
          v50 = *(v192 + 8 * v47);
          v51 = *(v49 + 136);
          v52 = *(v51 + 16);
          v203 = v49;
          v204 = v50;
          if (v52)
          {
            v30 = v51 + 32;

            for (i = 0; i != v52; ++i)
            {
              if (i >= *(v51 + 16))
              {
                goto LABEL_184;
              }

              sub_22FA2D328(v30, &v215);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
              v53 = swift_dynamicCast();
              v54 = *v28;
              if (v53)
              {
                v55 = a4;
                a4 = 1;
                v54(v55, 0, 1, v16);
                v56 = v206;
                sub_22FB0FD00(v55, v206, type metadata accessor for PhotoLibraryResource);
                LOBYTE(v55) = *v56;
                sub_22FA64AB0(v56);
                if (v55)
                {
                  v50 = v204;
                  goto LABEL_29;
                }
              }

              else
              {
                v54(a4, 1, 1, v16);
                sub_22FA2B420(a4, &qword_27DAD8358);
              }

              v30 += 40;
              a4 = v210;
            }

            a4 = 0;
            v50 = v204;
          }

          else
          {

            a4 = 0;
          }

LABEL_29:
          v57 = *(v50 + 136);
          v58 = *(v57 + 16);
          if (v58)
          {
            i = 0;
            v30 = v57 + 32;
            do
            {
              if (i >= *(v57 + 16))
              {
                goto LABEL_185;
              }

              sub_22FA2D328(v30, &v215);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
              v59 = v209;
              v60 = swift_dynamicCast();
              v61 = *v28;
              if (v60)
              {
                v61(v59, 0, 1, v16);
                v62 = v205;
                sub_22FB0FD00(v59, v205, type metadata accessor for PhotoLibraryResource);
                v63 = *v62;
                sub_22FA64AB0(v62);
                if (v63)
                {
                  v64 = v203;
                  if ((a4 & 1) == 0)
                  {
                    v65 = 0;
                    v46 = v199;
                    v47 = v198;
                    goto LABEL_40;
                  }

LABEL_42:
                  v66 = *(v64 + 136);
                  v67 = *(v66 + 16);
                  if (v67)
                  {
                    v68 = 0;
                    v69 = v66 + 32;
                    v70 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v69, &v215);
                      v213 = 32;
                      v214 = 0xE100000000000000;
                      v72 = v217;
                      v71 = v218;
                      __swift_project_boxed_opaque_existential_1(&v215, v217);
                      v73 = (*(v71 + 16))(v72, v71);
                      MEMORY[0x231907FA0](v73);

                      v74 = v213;
                      v75 = v214;
                      v213 = v68;
                      v214 = v70;

                      MEMORY[0x231907FA0](v74, v75);

                      v68 = v213;
                      v70 = v214;
                      __swift_destroy_boxed_opaque_existential_0(&v215);
                      v69 += 40;
                      --v67;
                    }

                    while (v67);
                  }

                  else
                  {
                    v68 = 0;
                    v70 = 0xE000000000000000;
                  }

                  v215 = 0xD000000000000012;
                  v216 = v201;
                  MEMORY[0x231907FA0](v68, v70);

                  v191 = v216;
                  v76 = *(v204 + 136);
                  v77 = *(v76 + 16);
                  v190 = v215;
                  v78 = 0;
                  if (v77)
                  {
                    v79 = v76 + 32;
                    v80 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v79, &v215);
                      v213 = 32;
                      v214 = 0xE100000000000000;
                      v81 = v217;
                      v82 = v218;
                      __swift_project_boxed_opaque_existential_1(&v215, v217);
                      v83 = (*(v82 + 16))(v81, v82);
                      MEMORY[0x231907FA0](v83);

                      v84 = v213;
                      v85 = v214;
                      v213 = v78;
                      v214 = v80;

                      MEMORY[0x231907FA0](v84, v85);

                      v78 = v213;
                      v80 = v214;
                      __swift_destroy_boxed_opaque_existential_0(&v215);
                      v79 += 40;
                      --v77;
                    }

                    while (v77);
                  }

                  else
                  {
                    v80 = 0xE000000000000000;
                  }

                  v215 = 0xD000000000000012;
                  v216 = v201;
                  MEMORY[0x231907FA0](v78, v80);

                  if (v190 == v215 && v191 == v216)
                  {
                    v45 = 0;
                  }

                  else
                  {
                    v45 = sub_22FCC9704();
                  }

                  v46 = v199;
                  v47 = v198;

                  goto LABEL_17;
                }
              }

              else
              {
                v61(v59, 1, 1, v16);
                sub_22FA2B420(v59, &qword_27DAD8358);
              }

              ++i;
              v30 += 40;
            }

            while (v58 != i);
          }

          if ((a4 & 1) == 0)
          {
            v64 = v203;
            goto LABEL_42;
          }

          v65 = 1;
          v46 = v199;
          v47 = v198;
LABEL_40:

          v45 = a4 & v65;
LABEL_17:
          v48 = v194 ^ v45;
          v43 = v46 + 8;
          a4 = v210;
          v29 = v200;
          v44 = v195;
        }

        while ((v48 & 1) == 0);
        if (v194)
        {
          v30 = v193;
          if (v202 < v193)
          {
            goto LABEL_207;
          }

          if (v193 < v202)
          {
            v86 = v193;
            v87 = v187;
            do
            {
              if (v86 != v47)
              {
                v89 = *v196;
                if (!*v196)
                {
                  goto LABEL_211;
                }

                v90 = *(v89 + v87);
                *(v89 + v87) = *(v89 + v46);
                *(v89 + v46) = v90;
              }

              ++v86;
              v46 -= 8;
              v87 += 8;
            }

            while (v86 < v47--);
          }
        }

        else
        {
          v30 = v193;
        }
      }

      v91 = v196[1];
      i = v202;
      if (v202 >= v91)
      {
        goto LABEL_75;
      }

      if (__OFSUB__(v202, v30))
      {
        goto LABEL_203;
      }

      if (v202 - v30 >= v188)
      {
        i = v202;
LABEL_75:
        if (i < v30)
        {
          goto LABEL_202;
        }

        goto LABEL_76;
      }

      v92 = v30 + v188;
      if (__OFADD__(v30, v188))
      {
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
        goto LABEL_210;
      }

      if (v92 >= v91)
      {
        v92 = v196[1];
      }

      if (v92 < v30)
      {
        goto LABEL_206;
      }

      i = v202;
      if (v202 == v92)
      {
        goto LABEL_75;
      }

      v193 = v30;
      v93 = *v196;
      v94 = v202;
      v191 = v92;
      v192 = v93;
      while (2)
      {
        v143 = *(v93 + 8 * v94);
        v202 = v94;
        v144 = v94;
        while (1)
        {
          v199 = v144;
          v198 = v144 - 1;
          v145 = *(v93 + 8 * (v144 - 1));
          v146 = *(v143 + 136);
          v147 = *(v146 + 16);
          v203 = v143;
          v204 = v145;
          if (v147)
          {
            v30 = v146 + 32;

            i = 0;
            while (i < *(v146 + 16))
            {
              sub_22FA2D328(v30, &v215);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
              v148 = v212;
              v149 = swift_dynamicCast();
              v150 = *v28;
              if (v149)
              {
                a4 = 1;
                v150(v148, 0, 1, v16);
                v151 = v208;
                sub_22FB0FD00(v148, v208, type metadata accessor for PhotoLibraryResource);
                v152 = *v151;
                sub_22FA64AB0(v151);
                if (v152)
                {
                  v145 = v204;
                  goto LABEL_139;
                }
              }

              else
              {
                v150(v148, 1, 1, v16);
                sub_22FA2B420(v148, &qword_27DAD8358);
              }

              ++i;
              v30 += 40;
              if (v147 == i)
              {
                a4 = 0;
                v145 = v204;
                goto LABEL_139;
              }
            }

            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          a4 = 0;
LABEL_139:
          v153 = *(v145 + 136);
          v154 = *(v153 + 16);
          if (v154)
          {
            break;
          }

LABEL_148:
          if ((a4 & 1) == 0)
          {
            goto LABEL_150;
          }

          v160 = v199;
          v29 = v200;
          v93 = v192;
LABEL_163:
          if (!v93)
          {
            goto LABEL_208;
          }

          v143 = *(v93 + 8 * v160);
          v181 = v198;
          *(v93 + 8 * v160) = *(v93 + 8 * v198);
          *(v93 + 8 * v181) = v143;
          v144 = v181;
          if (v181 == v193)
          {
            goto LABEL_127;
          }
        }

        i = 0;
        v30 = v153 + 32;
        while (1)
        {
          if (i >= *(v153 + 16))
          {
            goto LABEL_183;
          }

          sub_22FA2D328(v30, &v215);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
          v155 = v211;
          v156 = swift_dynamicCast();
          v157 = *v28;
          if (v156)
          {
            break;
          }

          v157(v155, 1, 1, v16);
          sub_22FA2B420(v155, &qword_27DAD8358);
LABEL_142:
          ++i;
          v30 += 40;
          if (v154 == i)
          {
            goto LABEL_148;
          }
        }

        v157(v155, 0, 1, v16);
        v158 = v207;
        sub_22FB0FD00(v155, v207, type metadata accessor for PhotoLibraryResource);
        v159 = *v158;
        sub_22FA64AB0(v158);
        if ((v159 & 1) == 0)
        {
          goto LABEL_142;
        }

        if ((a4 & 1) == 0)
        {

LABEL_126:
          v29 = v200;
          v93 = v192;
          goto LABEL_127;
        }

LABEL_150:
        v161 = *(v203 + 136);
        v162 = *(v161 + 16);
        if (v162)
        {
          v163 = 0;
          v164 = v161 + 32;
          v165 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v164, &v215);
            v213 = 32;
            v214 = 0xE100000000000000;
            v166 = v217;
            v167 = v218;
            __swift_project_boxed_opaque_existential_1(&v215, v217);
            v168 = (*(v167 + 16))(v166, v167);
            MEMORY[0x231907FA0](v168);

            v169 = v213;
            v170 = v214;
            v213 = v163;
            v214 = v165;

            MEMORY[0x231907FA0](v169, v170);

            v163 = v213;
            v165 = v214;
            __swift_destroy_boxed_opaque_existential_0(&v215);
            v164 += 40;
            --v162;
          }

          while (v162);
        }

        else
        {
          v163 = 0;
          v165 = 0xE000000000000000;
        }

        v215 = 0xD000000000000012;
        v216 = v201;
        MEMORY[0x231907FA0](v163, v165);

        v195 = v216;
        v171 = *(v204 + 136);
        v172 = *(v171 + 16);
        v194 = v215;
        v173 = 0;
        if (v172)
        {
          v174 = v171 + 32;
          v175 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v174, &v215);
            v213 = 32;
            v214 = 0xE100000000000000;
            v176 = v217;
            v177 = v218;
            __swift_project_boxed_opaque_existential_1(&v215, v217);
            v178 = (*(v177 + 16))(v176, v177);
            MEMORY[0x231907FA0](v178);

            v179 = v213;
            v180 = v214;
            v213 = v173;
            v214 = v175;

            MEMORY[0x231907FA0](v179, v180);

            v173 = v213;
            v175 = v214;
            __swift_destroy_boxed_opaque_existential_0(&v215);
            v174 += 40;
            --v172;
          }

          while (v172);
        }

        else
        {
          v175 = 0xE000000000000000;
        }

        v215 = 0xD000000000000012;
        v216 = v201;
        a4 = &v215;
        MEMORY[0x231907FA0](v173, v175);

        if (v194 == v215 && v195 == v216)
        {

          goto LABEL_126;
        }

        a4 = sub_22FCC9704();

        v160 = v199;
        v29 = v200;
        v93 = v192;
        if (a4)
        {
          goto LABEL_163;
        }

LABEL_127:
        v94 = v202 + 1;
        if (v202 + 1 != v191)
        {
          continue;
        }

        break;
      }

      i = v191;
      v30 = v193;
      if (v191 < v193)
      {
        goto LABEL_202;
      }

LABEL_76:
      v95 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      v96 = v30;
      if (result)
      {
        v29 = v95;
      }

      else
      {
        result = sub_22FAC21FC(0, *(v95 + 16) + 1, 1, v95);
        v29 = result;
      }

      v98 = *(v29 + 16);
      v97 = *(v29 + 24);
      a4 = v98 + 1;
      if (v98 >= v97 >> 1)
      {
        result = sub_22FAC21FC((v97 > 1), v98 + 1, 1, v29);
        v29 = result;
      }

      *(v29 + 16) = a4;
      v99 = v29 + 16 * v98;
      *(v99 + 32) = v96;
      *(v99 + 40) = i;
      v100 = *v189;
      if (!*v189)
      {
        goto LABEL_212;
      }

      if (v98)
      {
        while (2)
        {
          v30 = a4 - 1;
          if (a4 >= 4)
          {
            v105 = v29 + 32 + 16 * a4;
            v106 = *(v105 - 64);
            v107 = *(v105 - 56);
            v111 = __OFSUB__(v107, v106);
            v108 = v107 - v106;
            if (v111)
            {
              goto LABEL_189;
            }

            v110 = *(v105 - 48);
            v109 = *(v105 - 40);
            v111 = __OFSUB__(v109, v110);
            v103 = v109 - v110;
            v104 = v111;
            if (v111)
            {
              goto LABEL_190;
            }

            v112 = (v29 + 16 * a4);
            v114 = *v112;
            v113 = v112[1];
            v111 = __OFSUB__(v113, v114);
            v115 = v113 - v114;
            if (v111)
            {
              goto LABEL_192;
            }

            v111 = __OFADD__(v103, v115);
            v116 = v103 + v115;
            if (v111)
            {
              goto LABEL_195;
            }

            if (v116 >= v108)
            {
              v134 = (v29 + 32 + 16 * v30);
              v136 = *v134;
              v135 = v134[1];
              v111 = __OFSUB__(v135, v136);
              v137 = v135 - v136;
              if (v111)
              {
                goto LABEL_201;
              }

              if (v103 < v137)
              {
                v30 = a4 - 2;
              }
            }

            else
            {
LABEL_95:
              if (v104)
              {
                goto LABEL_191;
              }

              v117 = (v29 + 16 * a4);
              v119 = *v117;
              v118 = v117[1];
              v120 = __OFSUB__(v118, v119);
              v121 = v118 - v119;
              v122 = v120;
              if (v120)
              {
                goto LABEL_194;
              }

              v123 = (v29 + 32 + 16 * v30);
              v125 = *v123;
              v124 = v123[1];
              v111 = __OFSUB__(v124, v125);
              v126 = v124 - v125;
              if (v111)
              {
                goto LABEL_197;
              }

              if (__OFADD__(v121, v126))
              {
                goto LABEL_198;
              }

              if (v121 + v126 < v103)
              {
                goto LABEL_109;
              }

              if (v103 < v126)
              {
                v30 = a4 - 2;
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v101 = *(v29 + 32);
              v102 = *(v29 + 40);
              v111 = __OFSUB__(v102, v101);
              v103 = v102 - v101;
              v104 = v111;
              goto LABEL_95;
            }

            v127 = (v29 + 16 * a4);
            v129 = *v127;
            v128 = v127[1];
            v111 = __OFSUB__(v128, v129);
            v121 = v128 - v129;
            v122 = v111;
LABEL_109:
            if (v122)
            {
              goto LABEL_193;
            }

            v130 = v29 + 16 * v30;
            v132 = *(v130 + 32);
            v131 = *(v130 + 40);
            v111 = __OFSUB__(v131, v132);
            v133 = v131 - v132;
            if (v111)
            {
              goto LABEL_196;
            }

            if (v133 < v121)
            {
              break;
            }
          }

          v138 = v30 - 1;
          if (v30 - 1 >= a4)
          {
            goto LABEL_186;
          }

          if (!*v196)
          {
            goto LABEL_209;
          }

          v139 = v29;
          a4 = *(v29 + 32 + 16 * v138);
          v140 = *(v29 + 32 + 16 * v30 + 8);
          v141 = v197;
          sub_22FB0D200((*v196 + 8 * a4), (*v196 + 8 * *(v29 + 32 + 16 * v30)), (*v196 + 8 * v140), v100);
          v197 = v141;
          if (v141)
          {
          }

          if (v140 < a4)
          {
            goto LABEL_187;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v139 = sub_22FB0EF2C(v139);
          }

          if (v138 >= *(v139 + 2))
          {
            goto LABEL_188;
          }

          v142 = &v139[16 * v138];
          *(v142 + 4) = a4;
          *(v142 + 5) = v140;
          v219 = v139;
          result = sub_22FB0EEA0(v30);
          v29 = v219;
          a4 = *(v219 + 16);
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v26 = v196[1];
      if (i >= v26)
      {
        goto LABEL_170;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_170:
  v30 = *v189;
  if (!*v189)
  {
    goto LABEL_213;
  }

  a4 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  i = v197;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = a4;
  }

  else
  {
LABEL_204:
    result = sub_22FB0EF2C(a4);
  }

  v219 = result;
  a4 = *(result + 16);
  if (a4 < 2)
  {
  }

  while (*v196)
  {
    v183 = *(result + 16 * a4);
    v184 = result;
    v185 = *(result + 16 * (a4 - 1) + 40);
    sub_22FB0D200((*v196 + 8 * v183), (*v196 + 8 * *(result + 16 * (a4 - 1) + 32)), (*v196 + 8 * v185), v30);
    if (i)
    {
    }

    if (v185 < v183)
    {
      goto LABEL_199;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = sub_22FB0EF2C(v184);
    }

    if (a4 - 2 >= *(v184 + 2))
    {
      goto LABEL_200;
    }

    v186 = &v184[16 * a4];
    *v186 = v183;
    *(v186 + 1) = v185;
    v219 = v184;
    sub_22FB0EEA0(a4 - 1);
    result = v219;
    a4 = *(v219 + 16);
    if (a4 <= 1)
    {
    }
  }

LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
  return result;
}